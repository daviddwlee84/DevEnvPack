#!/bin/bash
echo "Install Python build essential"
# https://github.com/pypa/get-pip/issues/43
# https://stackoverflow.com/questions/21530577/fatal-error-python-h-no-such-file-or-directory
sudo apt install -y python3-distutils python3-dev

echo "Install pip"
# https://pip.pypa.io/en/stable/installing/
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
# If your `python` is Python 3.X already, then you can just use python
python3 get-pip.py
rm get-pip.py

echo "Install common packages"
python3 -m pip install --user -r python_packages.txt
