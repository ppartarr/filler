# Filler words

Fun little project to count the frequency of a given [filler](https://en.wikipedia.org/wiki/Filler_(linguistics)) word in a video.

## Instructions

Start by cloning [vosk-api](https://alphacephei.com/vosk/) and downloading one of the available models. We're using the smallest (~40M) english model.

```bash
pip3 install vosk
git clone https://github.com/alphacep/vosk-api
cd vosk-api/python/example
wget https://alphacephei.com/kaldi/models/vosk-model-small-en-us-0.15.zip
unzip vosk-model-small-en-us-0.15.zip
mv vosk-model-small-en-us-0.15 model
```

Configure the script filler.sh with the correct filenames and the filler word you want to count, move it to vosk-api/python/example then simply run it!

```bash
./filler.sh
```

## Links
* https://unix.stackexchange.com/questions/256138/is-there-any-decent-speech-recognition-software-for-linux
