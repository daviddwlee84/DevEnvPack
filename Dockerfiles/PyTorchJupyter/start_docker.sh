#!/bin/bash
sudo nvidia-docker run -d -p 8888:8888 -v $PWD/app:/app torch_jupyter
# sudo nvidia-docker run -p 8888:8888 -v $PWD/app:/app torch_jupyter
