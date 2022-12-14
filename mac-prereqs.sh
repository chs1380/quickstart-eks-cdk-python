#! /bin/sh
# First install Homebrew if you don't have it already
if ! which brew > /dev/null ; then
  echo "homebrew must be installed to use this script:"
  echo '/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"'
  exit 1
fi

# Install python
brew install python
# Install Node & NPM
brew install nodejs
# Install kubectl
brew install kubectl
# Install fluxctl
brew install fluxctl
# Install Helm
brew install helm
# Install the AWS CLI
curl "https://awscli.amazonaws.com/AWSCLIV2.pkg" -o "AWSCLIV2.pkg"
sudo installer -pkg AWSCLIV2.pkg -target /
rm -f ./AWSCLIV2.pkg
