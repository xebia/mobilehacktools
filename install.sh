#!/bin/sh

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


echo "installing necessary roles"
ansible-galaxy install geerlingguy.homebrew
ansible-galaxy install geerlingguy.mas
# ansible-galaxy install geerlingguy.dotfiles


echo "running toolchain for generic items"
ansible-playbook -K ./generic/generic_items.yml
# start with installing toolchain based on brew role!

echo "run iOS toolchain book"


echo "run Android toolchain book"
