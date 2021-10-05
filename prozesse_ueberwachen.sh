#!/bin/bash

if ps | grep -q $1
then
    echo "$1 Running"
else
    echo "$1 Stopped"
fi