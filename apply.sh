#!/bin/sh
##############################################################################
# apply.sh                                                                   #
##############################################################################

LIBRARIAN=/usr/bin/librarian-puppet
PUPPET=/usr/bin/puppet

PARAMS="apply --modulepath ./modules manifests/site.pp"

cd /etc/puppet && git pull && ${LIBRARIAN} update && ${PUPPET} ${PARAMS}

##############################################################################
# Fin!                                                                       #
##############################################################################
