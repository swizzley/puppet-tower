# puppet-tower
# timecapsule #

[![Puppet Forge](https://img.shields.io/badge/puppetforge-v0.1.0-blue.svg)](https://forge.puppetlabs.com/swizzley88/tower)

**Table of Contents**

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
4. [Usage](#usage)
5. [Requirements](#requirements)
6. [Compatibility](#compatibility)
7. [Limitations](#limitations)
8. [Development](#development)
    * [TODO](#todo)
    
## Overview ##

This is the tower module which sets up the super lean python and API driven Ansible Tower for automation orchastration outside of puppet through web sockets.

## Module Description ##

This is Ansible's Tower for all you web devs who want to do server automation and system configuration through an API for some god aweful reason. Or for people like me who want to test out the Ansible automation platform and give it a test drive n kick the tires so to speak, it will turn the rather lengthy registration and download process into a quick grab n go.

## Setup ##

None, but you can register your own free license at ansible.com or use mine which I've included since I use foreman instead simply because it's better than tower in almost every way. 

## Usage ##

```
include ::tower
```

## Requirements ##

Puppet and internet, and a (free/paid) license, my 10 node license is included, and this can probably run on 1 cpu with the minimum ram for the os.

## Compatibility ##

  * RHEL 6,7
  * CentOS 6,7
  * Fedora 20,20,21

## Limitations ##

The big limitation is with the ansible free licensing. Every 10 nodes you will need to build another tower which is why I wrote this module, which makes it super easy to just kickstart and go, otherwise you will need to purchase provisioning licenses to go above 10 nodes. Otherwise Ansible is like PE at $100/node per year or something.

This module has been tested on:

  - CentOS 7

## Development ##

Even though there is a TODO, I highly doubt I will ever maintain this. In fact I doubt anyone will even use this, but it proves puppet 0wns ansible.


#### TODO ####

  * add auto scale
 
###### Contact ######

Email:  morgan@aspendenver.org

WWW:    www.aspendenver.org

Github: https://github.com/swizzley

