# Mobile Security Toolchain

This is the mobile security toolchain project. It is loosely based on the MSTG testing tools section (https://github.com/OWASP/owasp-mstg/blob/master/Document/0x08-Testing-Tools.md).

## Pre-requisites
Have a mac os X based system with about 4 GB of RAM and 4 GB of free space. Next, install docker for mac on it and then:

- if you want to have both the iOS and android tools, as well as all the scaffolding, just use `./install.sh`
- if you want to have the ios tools only: install brew and ansible, then type:
```sh
ansible-galaxy install geerlingguy.homebrew
ansible-galaxy install geerlingguy.mas
ansible-galaxy install rvm_io.ruby
ansible-playbook -K ./iOS/generic_items.yml
```

- if you want to have the ios tools only: install brew and ansible, then type:
```sh
ansible-galaxy install geerlingguy.homebrew
ansible-galaxy install geerlingguy.mas
ansible-playbook -K ./Android/generic_items.yml
```

## Contribution
Does something not work? File an issue, better: file a pull-request!

## Special thanks to:
@clviper & @sushi2k for contributing (review) & @RiieCco for motivating me to get the project started.
