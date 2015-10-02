#!/bin/sh
##############################################################################
# init.sh                                                                    #
##############################################################################

if [ ! -f /root/.gemrc ]; then
  cp /etc/puppet/.gemrc /root/.gemrc
fi

cd /etc/puppet

if [ ! -d modules ]; then
  yum -y -q install ruby-devel
  gem install bundler --no-ri --no-rdoc
  bundle install
else
  echo "Already initialized."
fi

##############################################################################
# Fin!                                                                       #
##############################################################################
