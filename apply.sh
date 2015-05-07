#!/bin/sh
##############################################################################
# apply.sh                                                                   #
##############################################################################

LIBRARIAN=/usr/bin/librarian-puppet
PUPPET=/usr/bin/puppet
HIERA=/etc/puppet/hiera

PARAMS="apply --hiera_config=${HIERA} --modulepath ./modules manifests/site.pp"

cd /etc/puppet && git pull && ${LIBRARIAN} update && ${PUPPET} ${PARAMS}

##############################################################################
# Fin!                                                                       #
##############################################################################
