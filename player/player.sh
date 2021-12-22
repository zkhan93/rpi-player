#! /bin/sh

for f in /audio/*.mp3
do
  LOGFILE="/logs/play_logs-$(date +%Y-%m-%d-%H%M%S).log"
  echo "play \"$f\" > ${LOGFILE} 2>&1"
  ffplay -nodisp -autoexit "$f" > ${LOGFILE} 2>&1
done
