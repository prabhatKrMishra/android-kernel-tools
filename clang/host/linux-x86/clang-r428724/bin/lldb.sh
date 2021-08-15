#!/bin/bash
CURDIR=$(cd $(dirname $0) && pwd)
export PYTHONHOME="$CURDIR/../python3"
export LD_LIBRARY_PATH="$CURDIR/../python3/lib:$LD_LIBRARY_PATH"
"$CURDIR/lldb" "$@"
