#!/bin/bash
####
#
# Downloads some sample modules for Jasper"
#  MattCurry.Com
#
####
echo "Downloading (Not Installing) Modules for Jaspers Master Branch"
echo "They will be downloaded to a directory in your home directory"
cd &&
mkdir -p jasper-modules-master &&
cd jasper-modules-master &&
git clone https://github.com/mattcurrycom/jasper-modules.git
cd -
echo "Complete, please verify they are there."
echo "Also, remember they are for the MASTER branch"

