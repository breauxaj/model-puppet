#!/bin/sh
##############################################################################
# init.sh                                                                    #
##############################################################################

if [ ! -f /root/.gemrc ]; then
  cp /etc/puppet/.gemrc /root/.gemrc
fi

cd /etc/puppet

if [ ! -d modules ]; then
  puppet apply /etc/puppet/init.pp
  gem install bundler --no-ri --no-rdoc
  bundle install
else
  echo "Already initialized."
fi

##############################################################################
# Fin!                                                                       #
##############################################################################