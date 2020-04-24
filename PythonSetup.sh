#!/bin/bash
# https://github.com/pypa/get-pip/issues/43
sudo apt install -y python3-distutils
# https://pip.pypa.io/en/stable/installing/
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# If your `python` is Python 3.X already, then you can just use python
python3 get-pip.py
rm get-pip.py