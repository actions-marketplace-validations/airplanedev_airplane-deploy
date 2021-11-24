#!/bin/sh -l

branch=${5#"refs/heads/"}
airplane --host $1 --repository $3 --gitUser $4 --branch $branch --commitHash $6 --commitMessage $7  deploy $2
