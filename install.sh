#!/bin/sh


#check whether on 10.13
MOREF=`sw_vers | grep Prod`
if [[ $MOREF = *"Mac OS X"* ]]; then
  echo "Platform check: OK. Proceeding with Mac OS X version check."
else
  echo "Platform check failed. Please use Mac OS X. Aborting installation."
  exit
fi

if [[ $MOREF = *"10.13"* ]] || [[$MOREF = *"10.14"* ]]; then
  echo "Detected compatible version of Mac OS X! Proceeding with installation."
else
  echo "Detected incompatible version of Mac OS X! Aborting installation. You need Mac OS X 10.13 or higher"
  exit
fi
#install brew to install ansible

which brew
if [ $? -eq 0 ]; then
    echo "proceeding: brew installed"
else
    echo "Installing brew"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

fi
echo "Installing Ansible"
brew list ansible|| brew install ansible || brew link --overwrite ansible

echo "running toolchain for generic items"
ansible-playbook ./generic/generic_items.yml

echo "run Android toolchain book"
ansible-playbook ./Android/generic_items.yml

echo "run iOS toolchain book"
ansible-galaxy install -r requirements.yml
ansible-playbook ./iOS/generic_items.yml
