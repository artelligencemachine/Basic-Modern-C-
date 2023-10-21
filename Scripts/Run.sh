#!/usr/bin/bash

PROJECT_HOME=/Mount/ArtelligenceMachine/BasicModernCpp
FILE_NAME=Main.cpp
FLAGS="-Wall -Weffc++ -std=c++23"

build()
{
    echo "Compiling..."
    cd $PROJECT_HOME
    mkdir -p Build
    g++ $FLAGS BasicModernCpp/$FILE_NAME -o Build/App

    echo "Running..."
    ./Build/App
}


if [ $# == 0 ] ; then
    echo "Give file to compile in src dir as agrs!"
else
    FILE_NAME=$1
    build 
fi
