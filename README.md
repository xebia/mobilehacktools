# Mobile Security Toolchain

[![Build Status](https://travis-ci.org/xebia/mobilehacktools.svg?branch=master)](https://travis-ci.org/xebia/mobilehacktools)

This is the mobile security toolchain project. It is loosely based on the MSTG testing tools section (https://github.com/OWASP/owasp-mstg/blob/master/Document/0x08-Testing-Tools.md).

## Current status
The project is in early beta stage. Feel free to contribute!

## Pre-requisites
Have a Mac OSX based system with about 4 GB of RAM and 4 GB of free space. Next, install docker for mac on it and then:

- if you want to have both the iOS and android tools, as well as all the scaffolding, just use `./install.sh`
- if you want to have the ios tools only: install brew and ansible, then type:
```sh
ansible-galaxy install -r requirements.yml
ansible-playbook -K ./iOS/generic_items.yml
```

- if you want to have the Android tools only: install brew and ansible, then type:
```sh
ansible-galaxy install -r requirements.yml
ansible-playbook -K ./Android/generic_items.yml
```

## Contribution
Does something not work? File an issue, better: file a pull-request!

## Special thanks to:
[@clviper](https://github.com/clviper) & [@sushi2k](https://github.com/sushi2k) for contributing (review) & [@RiieCco](https://github.com/RiieCco) for motivating me to get the project started.
[@geerlingguy](https://github.com/geerlingguy) for creating awesome Ansible roles that speeded up the development tremendously.
Xebia, as a company from which I used an innovation day to kickstart the project.
My wife for supporting me in doing mobile security open source projects in my spare time.
