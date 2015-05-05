#!/bin/sh
##############################################################################
# init.sh                                                                    #
##############################################################################

YUM=/usr/bin/yum
GEM=/usr/bin/gem
BUNDLE=/usr/bin/bundle
LIBRARIAN=/usr/bin/librarian-puppet

if [ ! -f /root/.gemrc ]; then
  cp /etc/puppet/.gemrc /root/.gemrc
fi

cd /etc/puppet

if [ ! -d .librarian ]; then
  ${YUM} -y install ruby-devel
  ${GEM} install bundler --no-ri --no-rdoc
  ${BUNDLE} install
  ${LIBRARIAN} install
else
  echo "Already initialized."
fi

##############################################################################
# Fin!                                                                       #
##############################################################################
