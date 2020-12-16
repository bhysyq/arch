#!/usr/bin/env bash

python -m pip uninstall statsmodels -y
export REPO_DIR=$PWD
mkdir statsmodels-clone
cd statsmodels-clone
git clone --branch=master --depth=1000 https://github.com/statsmodels/statsmodels.git
cd statsmodels
pip install . -v
cd ${REPO_DIR}
