mplayer  -loop 0 -playlist http://www.publicbroadcasting.net/wica/ppr/wica.m3u < /dev/null | grep --line-buffered "StreamTitle='.*S" -o | grep --line-buffered "'.*'" -o > mus & tail -n0 -f mus | while read line; do notify-send "Music Change" "$line";done
