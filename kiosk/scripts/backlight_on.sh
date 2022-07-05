#!/bin/bash

export PATH="$PATH:/opt/vc/bin/"
export LD_LIBRARY_PATH="/opt/vc/lib/"

echo on 0 | cec-client -d 1 -s
