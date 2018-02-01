#!/bin/sh

SHARES_LIST=("/mnt/user/media-movies" "/mnt/user/movies-processing" "/mnt/user/movies-incoming")

for i in "${SHARES_LIST[@]}"
do
	SHARES="$SHARES-v $i:$i:rw "
done

