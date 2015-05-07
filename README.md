Puppet
======

A standalone puppet deployment with hiera.

Notes
-----

Checkout the repo into /etc/puppet, then run init.sh in order to initialize the
checkout, which will install ruby-devel, bundler and librarian-puppet if not
already installed. It will also run librarian-puppet to install the required
modules identified in Puppetfile.

Subsequently run apply.sh to apply the puppet configuration to the host going
forward. The script will keep the modules folder up to date.

