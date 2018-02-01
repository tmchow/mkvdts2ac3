#!/bin/bash

SHARES_LIST=("/mnt/user/media-movies" "/mnt/user/movies-processing" "/mnt/user/movies-incoming")

for i in "${SHARES_LIST[@]}"
do
	SHARES="$SHARES-v $i:$i:rw "
done

docker run --rm $SHARES jlesage/mkvtoolnix /usr/bin/mkvmerge -i "$@" | grep -m 1 "audio (DTS)" | cut -d : -f 1 | cut -d " " -f 3


