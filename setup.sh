#!/bin/bash

python3 -m venv env

source env/bin/activate
pip3 install --upgrade pip

# This depends on the local cuda setup and should be adapted accordingly.
pip3 install torch torchvision torchaudio
pip3 install -r requirements.txt
pip install accelerate -U
pip install dill==0.3.4 --force-reinstall 
pip uninstall refrapt
pip install refrapt==0.2.2
