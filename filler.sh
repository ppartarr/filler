#!/usr/bin/env bash

filler="okay"

# extension doesn't matter here
video="filename.mkv"
wavVideo="filename.wav"
transcript="transcript.json"

# convert video to wav with correct format - PCM 16kHz 16bit mono
ffmpeg -i $video -ar 16000 -ac 1 $wavVideo

# generate transcript with vosk-api
python3 ./test_simple.py $wavVideo > $transcript

# count the number of filler words
cat $transcript | jq '.text' | grep -o -i $filler | wc -l
