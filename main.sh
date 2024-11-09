#!/bin/bash

read -p "Enter you branch: " branch

if [ "$branch" == "main" ]; then
    echo "This is production"
else
    echo "This is develop"
fi