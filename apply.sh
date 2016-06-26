#!/bin/sh
##############################################################################
# apply.sh                                                                   #
##############################################################################

HIERA=/etc/puppet/hiera/hiera.yaml

PARAMS="apply --no-storeconfigs --debug --hiera_config=${HIERA} --modulepath ./modules manifests/site.pp"

if [ -x /usr/local/bin/r10k ]; then
  R10K=/usr/local/bin/r10k
else
  R10K=/usr/bin/r10k
fi

cd /etc/puppet && git pull && ${R10K} puppetfile install && puppet ${PARAMS}

##############################################################################
# Fin!                                                                       #
##############################################################################