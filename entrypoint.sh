#!/bin/sh -l

echo "Running airplane deploy in host $1"
/airplane/bin/airplane --host $1 deploy ./
