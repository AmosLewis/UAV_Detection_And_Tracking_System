#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/dji_sdk"

# snsure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/ubuntu/cc/rosdji_sdk/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/ubuntu/cc/rosdji_sdk/install/lib/python2.7/dist-packages:/home/ubuntu/cc/rosdji_sdk/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/ubuntu/cc/rosdji_sdk/build" \
    "/usr/bin/python" \
    "/home/ubuntu/cc/rosdji_sdk/src/Onboard-SDK-ROS-3.1/dji_sdk/setup.py" \
    build --build-base "/home/ubuntu/cc/rosdji_sdk/build/Onboard-SDK-ROS-3.1/dji_sdk" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/ubuntu/cc/rosdji_sdk/install" --install-scripts="/home/ubuntu/cc/rosdji_sdk/install/bin"
