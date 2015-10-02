#!/bin/sh
##############################################################################
# apply.sh                                                                   #
##############################################################################

HIERA=/etc/puppet/hiera/hiera.yaml

PARAMS="apply --no-storeconfigs --debug --hiera_config=${HIERA} --modulepath ./modules manifests/site.pp"

cd /etc/puppet && git pull && r10k puppetfile install && puppet ${PARAMS}

##############################################################################
# Fin!                                                                       #
##############################################################################
