#!/bin/bash

PACKAGE="python3"

echo "================================="
echo "        FOSS Package Inspector"
echo "================================="

if dpkg -s $PACKAGE &> /dev/null
then
    echo "Status: $PACKAGE is installed."

    VERSION=$(python3 --version)
    echo "Version: $VERSION"

else
    echo "Status: $PACKAGE is NOT installed."
fi

echo "================================="
