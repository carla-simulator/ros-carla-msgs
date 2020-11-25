#!/usr/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROS_VERSION=$(rosversion -d)
if [ "$ROS_VERSION" = "noetic" ]; then
    PYTHON_SUFFIX=3
else
    PYTHON_SUFFIX=""
fi

sudo apt-get update
sudo apt-get install --no-install-recommends -y \
    python$PYTHON_SUFFIX-osrf-pycommon \
    python$PYTHON_SUFFIX-catkin-tools
