#!/bin/sh -l

airplane --host $1 --changed-files $3 deploy $2
