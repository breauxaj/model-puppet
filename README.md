Puppet
======

A standalone puppet deployment with hiera.

Notes
-----

Checkout the repo into /etc/puppet, then run init.sh in order to initialize the
checkout, which will install ruby-devel, bundler and r10k if not already
installed.

Subsequently run apply.sh to apply the puppet configuration to the host going
forward. The script will keep the modules folder up to date.