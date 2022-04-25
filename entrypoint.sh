#!/bin/sh -l

airplane --host $1 deploy $2 ${3:+ "--env $3"}
