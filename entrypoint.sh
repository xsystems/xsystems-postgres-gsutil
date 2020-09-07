#!/bin/sh

./init-gsutil.sh

exec gsutil "$@"
