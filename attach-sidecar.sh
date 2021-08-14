#!/bin/bash
set -e

usage() {
	echo "Usage: $0 targetContainer sidecarContainer shellType"
}

attach_sidecar() {	
	docker run -it --net=container:$target --pid=container:$target \
	--volumes-from=$target $sidecar $shelltype
}

main() {
	if [ $# -lt 1 ]
	then
		usage
		exit 1  
	fi	
	target=$1
	sidecar=$2
	shelltype=$3
	attach_sidecar
}

main "$@"

