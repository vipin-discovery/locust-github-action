#!/bin/sh

if [ -z "$INPUT_LOCUSTFILE" ]
then
    file="/locustfile.py"
else
    file="/github/workspace/$INPUT_LOCUSTFILE"
fi

RUN sudo apt install docker.io
Run sudo chmod +777 entrypoint.sh
locust -f $file --headless -u $INPUT_USERS -r $INPUT_RATE --run-time $INPUT_RUNTIME -H $INPUT_URL
