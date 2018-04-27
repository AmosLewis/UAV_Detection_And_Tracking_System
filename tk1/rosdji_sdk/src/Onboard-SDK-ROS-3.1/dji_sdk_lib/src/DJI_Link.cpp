/** @file DJI_Link.cpp
 *  @version 3.1.7
 *  @date July 1st, 2016
 *
 *  @brief
 *  Implement send/read, app handling and data link layer for Core API of DJI onboardSDK library
 *
 *  @copyright 2016 DJI. All right reserved.
 *
 *
 *  @attention
 *  It is not necessary to include DJI_link.h in any custom code file.
 *  The functions in this file are not API functions.
 *  Do not modify this file if you are unsure about it.
 *
 */

#include <stdio.h>
#include <string.h>
#include "DJI_Link.h"
#include "DJI_Codec.h"
#include "DJI_API.h"

using namespace DJI::onboardSDK;

void CoreAPI::sendData(unsigned char *buf)
{
  size_t ans;
  Header *pHeader = (Header *)buf;
  ans = serialDevice->send(buf, pHeader->length);
  if (ans == 0)
    API_LOG(serialDevice, STATUS_LOG, "Port not send");
  if (ans == (size_t)-1)
    API_LOG(serialDevice, ERROR_LOG, "Port closed");
}

void CoreAPI::appHandler(Header *protocolHeader)
{
  Header *p2protocolHeader;
  CallBack callBack = 0;
  UserData data = 0;
  if (protocolHeader->isAck == 1)
  {
    if (protocolHeader->sessionID > 1 && protocolHeader->sessionID < 32)
    {
      if (CMDSessionTab[protocolHeader->sessionID].usageFlag == 1)
      {
        serialDevice->lockMemory();
        p2protocolHeader = (Header *)CMDSessionTab[protocolHeader->sessionID].mmu->pmem;
        if (p2protocolHeader->sessionID == protocolHeader->sessionID &&
            p2protocolHeader->sequenceNumber == protocolHeader->sequenceNumber)
        {
          API_LOG(serialDevice, DEBUG_LOG, "Recv Session %d ACK\n", p2protocolHeader->sessionID);

          callBack = CMDSessionTab[protocolHeader->sessionID].handler;
          data = CMDSessionTab[protocolHeader->sessionID].userData;
          freeSession(&CMDSessionTab[protocolHeader->sessionID]);

          serialDevice->freeMemory();
          if (callBack)
          {
            //! @todo new algorithm call in a thread
            callBack(this, protocolHeader, data);

            //! End of session
            setSessionStatus((&CMDSessionTab[protocolHeader->sessionID])->usageFlag);
          }
        }
        else
          serialDevice->freeMemory();
      }
    }
  }
  else
  {
    switch (protocolHeader->sessionID)
    {
      case 0:
        recvReqData(protocolHeader);
        break;
      case 1:
      //! @todo unnecessary ack in case 1. Maybe add code later
      //! @todo check algorithm
      default: //! @note session id is 2
        API_LOG(serialDevice, STATUS_LOG, "ACK %d", protocolHeader->sessionID);

        if (ACKSessionTab[protocolHeader->sessionID - 1].sessionStatus == ACK_SESSION_PROCESS)
        {
          API_LOG(serialDevice, DEBUG_LOG, "This session is waiting for App ACK:"
              "session id=%d,seq_num=%d\n",
              protocolHeader->sessionID, protocolHeader->sequenceNumber);
        }
        else if (ACKSessionTab[protocolHeader->sessionID - 1].sessionStatus == ACK_SESSION_IDLE)
        {
          if (protocolHeader->sessionID > 1)
            ACKSessionTab[protocolHeader->sessionID - 1].sessionStatus =
                ACK_SESSION_PROCESS;
          recvReqData(protocolHeader);
        }
        else if (ACKSessionTab[protocolHeader->sessionID - 1].sessionStatus ==
            ACK_SESSION_USING)
        {
          serialDevice->lockMemory();
          p2protocolHeader = (Header *)ACKSessionTab[protocolHeader->sessionID - 1].mmu->pmem;
          if (p2protocolHeader->sequenceNumber == protocolHeader->sequenceNumber)
          {
            API_LOG(serialDevice, DEBUG_LOG, "repeat ACK to remote,session "
                "id=%d,seq_num=%d\n",
                protocolHeader->sessionID, protocolHeader->sequenceNumber);
            sendData(ACKSessionTab[protocolHeader->sessionID - 1].mmu->pmem);
            serialDevice->freeMemory();
          }
          else
          {
            API_LOG(serialDevice, DEBUG_LOG,
                "same session,but new seq_num pkg,session id=%d,"
                "pre seq_num=%d,cur seq_num=%d\n",
                protocolHeader->sessionID, p2protocolHeader->sequenceNumber,
                protocolHeader->sequenceNumber);
            ACKSessionTab[protocolHeader->sessionID - 1].sessionStatus =
              ACK_SESSION_PROCESS;
            serialDevice->freeMemory();
            recvReqData(protocolHeader);
          }
        }
        break;
    }
  }
}

void CoreAPI::sendPoll()
{
  unsigned char i;
  time_ms curTimestamp;
  for (i = 1; i < SESSION_TABLE_NUM; i++)
  {
    if (CMDSessionTab[i].usageFlag == 1)
    {
      curTimestamp = serialDevice->getTimeStamp();
      if ((curTimestamp - CMDSessionTab[i].preTimestamp) > CMDSessionTab[i].timeout)
      {
        serialDevice->lockMemory();
        if (CMDSessionTab[i].retry > 0)
        {
          if (CMDSessionTab[i].sent >= CMDSessionTab[i].retry)
          {
            API_LOG(serialDevice, DEBUG_LOG, "Free session %d\n",
                CMDSessionTab[i].sessionID);

            freeSession(&CMDSessionTab[i]);
          }
          else
          {
            API_LOG(serialDevice, DEBUG_LOG, "Retry session %d\n",
                CMDSessionTab[i].sessionID);
            sendData(CMDSessionTab[i].mmu->pmem);
            CMDSessionTab[i].preTimestamp = curTimestamp;
            CMDSessionTab[i].sent++;
          }
        }
        else
        {
          API_LOG(serialDevice, DEBUG_LOG, "send once %d\n", i);
          sendData(CMDSessionTab[i].mmu->pmem);
          CMDSessionTab[i].preTimestamp = curTimestamp;
        }
        serialDevice->freeMemory();
      }
      else
      {
        API_LOG(serialDevice, DEBUG_LOG, "timeout Session: %d \n", i);
      }
    }
  }
  //! @note Add auto resendpoll
}

void CoreAPI::readPoll()
{
  int read_len;
  uint8_t buf[BUFFER_SIZE];
  read_len = serialDevice->readall(buf, BUFFER_SIZE);
#ifdef API_BUFFER_DATA
  onceRead = read_len;
  totalRead += onceRead;
#endif // API_BUFFER_DATA
  for (int i = 0; i < read_len; i++)
  {
    byteHandler(buf[i]);
  }
}

//! @todo Implement callback poll here
void CoreAPI::callbackPoll(){}

void CoreAPI::setup()
{
  setupMMU();
  setupSession();
}

void CoreAPI::setKey(const char *key)
{
  transformTwoByte(key, filter.sdkKey);
  filter.encode = 1;
}

void CoreAPI::setActivation(bool isActivated)
{
  if (isActivated)
    broadcastData.activation = 1;
  else
    broadcastData.activation = 0;
}

void DJI::onboardSDK::CoreAPI::setSessionStatus(uint32_t usageFlag)
{
  sessionStatus = usageFlag;
}

uint32_t DJI::onboardSDK::CoreAPI::getSessionStatus()
{
  return sessionStatus;
}

void CoreAPI::setSyncFreq(uint32_t freqInHz)
{
  send(0, 1, SET_SYNC, CODE_SYNC_BROADCAST, &freqInHz, sizeof(freqInHz));
}

unsigned short calculateLength(unsigned short size, unsigned short encrypt_flag)
{
  unsigned short len;
  if (encrypt_flag)
    len = size + sizeof(Header) + 4 + (16 - size % 16);
  else
    len = size + sizeof(Header) + 4;
  return len;
}

int CoreAPI::ackInterface(Ack *parameter)
{
  unsigned short ret = 0;
  ACKSession *ack_session = (ACKSession *)NULL;

  if (parameter->length > PRO_PURE_DATA_MAX_SIZE)
  {
    API_LOG(serialDevice, ERROR_LOG, "length=%d is over-sized\n", parameter->length);
    return -1;
  }

  if (parameter->sessionID == 0)
  {
    //! @note Do nothing, session 0 is a NACK session.
    return 0;
  }
  else if (parameter->sessionID > 0 && parameter->sessionID < 32)
  {
    serialDevice->lockMemory();
    ack_session = allocACK(parameter->sessionID,
        calculateLength(parameter->length, parameter->encrypt));
    if (ack_session == (ACKSession *)NULL)
    {
      serialDevice->freeMemory();
      return -1;
    }

    ret = encrypt(ack_session->mmu->pmem, parameter->buf, parameter->length, 1,
        parameter->encrypt, parameter->sessionID, parameter->seqNum);
    if (ret == 0)
    {
      API_LOG(serialDevice, ERROR_LOG, "encrypt ERROR\n");
      serialDevice->freeMemory();
      return -1;
    }

    API_LOG(serialDevice, DEBUG_LOG, "Sending data!");
    sendData(ack_session->mmu->pmem);
    serialDevice->freeMemory();
    ack_session->sessionStatus = ACK_SESSION_USING;
    return 0;
  }

  return -1;
}

int CoreAPI::sendInterface(Command *parameter)
{
  unsigned short ret = 0;
  CMDSession *cmdSession = (CMDSession *)NULL;
  if (parameter->length > PRO_PURE_DATA_MAX_SIZE)
  {
    API_LOG(serialDevice, ERROR_LOG, "ERROR,length=%d is over-sized\n", parameter->length);
    return -1;
  }

  switch (parameter->sessionMode)
  {
    case 0:
      serialDevice->lockMemory();
      cmdSession = allocSession(CMD_SESSION_0,
          calculateLength(parameter->length, parameter->encrypt));

      if (cmdSession == (CMDSession *)NULL)
      {
        serialDevice->freeMemory();
        API_LOG(serialDevice, ERROR_LOG, "ERROR,there is not enough memory\n");
        return -1;
      }
      ret = encrypt(cmdSession->mmu->pmem, parameter->buf, parameter->length, 0,
          parameter->encrypt, cmdSession->sessionID, seq_num);
      if (ret == 0)
      {
        API_LOG(serialDevice, ERROR_LOG, "encrypt ERROR\n");
        freeSession(cmdSession);
        serialDevice->freeMemory();
        return -1;
      }

      API_LOG(serialDevice, DEBUG_LOG, "send data in session mode 0\n");

      sendData(cmdSession->mmu->pmem);
      seq_num++;
      freeSession(cmdSession);
      serialDevice->freeMemory();
      break;
    case 1:
      serialDevice->lockMemory();
      cmdSession = allocSession(CMD_SESSION_1,
          calculateLength(parameter->length, parameter->encrypt));
      if (cmdSession == (CMDSession *)NULL)
      {
        serialDevice->freeMemory();
        API_LOG(serialDevice, ERROR_LOG, "ERROR,there is not enough memory\n");
        return -1;
      }
      if (seq_num == cmdSession->preSeqNum)
      {
        seq_num++;
      }
      ret = encrypt(cmdSession->mmu->pmem, parameter->buf, parameter->length, 0,
          parameter->encrypt, cmdSession->sessionID, seq_num);
      if (ret == 0)
      {
        API_LOG(serialDevice, ERROR_LOG, "encrypt ERROR\n");
        freeSession(cmdSession);
        serialDevice->freeMemory();
        return -1;
      }
      cmdSession->preSeqNum = seq_num++;

      cmdSession->handler = parameter->handler;
      cmdSession->userData = parameter->userData;
      cmdSession->timeout =
          (parameter->timeout > POLL_TICK) ? parameter->timeout : POLL_TICK;
      cmdSession->preTimestamp = serialDevice->getTimeStamp();
      cmdSession->sent = 1;
      cmdSession->retry = 1;
      API_LOG(serialDevice, DEBUG_LOG, "sending session %d\n", cmdSession->sessionID);
      sendData(cmdSession->mmu->pmem);
      serialDevice->freeMemory();
      break;

    // Case 2 is almost the same as case 1, except CMD_SESSION_AUTO and retry settings.
    case 2:
      serialDevice->lockMemory();
      cmdSession = allocSession(CMD_SESSION_AUTO,
          calculateLength(parameter->length, parameter->encrypt));
      if (cmdSession == (CMDSession *)NULL)
      {
        serialDevice->freeMemory();
        API_LOG(serialDevice, ERROR_LOG, "ERROR,there is not enough memory\n");
        return -1;
      }
      if (seq_num == cmdSession->preSeqNum)
      {
        seq_num++;
      }
      ret = encrypt(cmdSession->mmu->pmem, parameter->buf, parameter->length, 0,
          parameter->encrypt, cmdSession->sessionID, seq_num);

      if (ret == 0)
      {
        API_LOG(serialDevice, ERROR_LOG, "encrypt ERROR");
        freeSession(cmdSession);
        serialDevice->freeMemory();
        return -1;
      }
      cmdSession->preSeqNum = seq_num++;
      cmdSession->handler = parameter->handler;
      cmdSession->userData = parameter->userData;
      cmdSession->timeout =
          (parameter->timeout > POLL_TICK) ? parameter->timeout : POLL_TICK;
      cmdSession->preTimestamp = serialDevice->getTimeStamp();
      cmdSession->sent = 1;
      cmdSession->retry = parameter->retry;
      API_LOG(serialDevice, DEBUG_LOG, "Sending session %d\n", cmdSession->sessionID);
      sendData(cmdSession->mmu->pmem);
      serialDevice->freeMemory();
      break;
    default:
      API_LOG(serialDevice, ERROR_LOG, "Unknown mode:%d\n", parameter->sessionMode);
      break;
  }
  return 0;
}
