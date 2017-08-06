# /usr/bin/env sh

SD0="8765-4321"
SD1="7C95-1224"

MOUNTGOPRO="/run/media/pitakill/${SD0}/DCIM/100GOPRO/"
BACKUPMOUNT='/run/media/pitakill/M/GoPro Backup/'

for i in `ls ${MOUNTGOPRO}*.MP4 | awk '{print $NF}'`;
do
  DATE=`exiftool $i | grep 'Media Create Date' | awk '{print $5}' | sed 's/:/-/g'`
  BACKUPDIR="${BACKUPMOUNT}${DATE}"
  if [ ! -d "${BACKUPDIR}" ]; then
    mkdir "${BACKUPDIR}"
  fi
  time cp -nv $i "${BACKUPDIR}"
done

echo "Cleaning microSD..."
rm -rf $MOUNTGOPRO/*
