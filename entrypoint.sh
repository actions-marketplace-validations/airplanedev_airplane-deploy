#!/bin/sh -l

airplane --host $1 --repository $3 --gitUser $4 deploy $2
