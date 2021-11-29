#!/bin/sh -l

airplane --host $1 --repository $3 --git-user $4 deploy $2
