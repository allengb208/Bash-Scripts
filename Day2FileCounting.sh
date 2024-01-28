#!/bin/bash

file_count=$(ls -l | grep "^-" | wc -l)

echo "There are $file_count files in the current directory."
