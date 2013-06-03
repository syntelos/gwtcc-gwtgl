#!/bin/bash
#
# echo jar file location
#

GWTCC=${GWTCC_HOME:-${HOME}/src/gwtcc}

if jarf=$(ls ${GWTCC}/gwtcc-*.jar | tail -n 1 ) &&[ -n "${jarf}" ]&&[ -f "${jarf}" ]
then
    echo $jarf
    exit 0
else
    cat<<EOF>&2
Error, gwtcc jar not found in '${GWTCC}'
EOF
    exit 1
fi
