
QUOD_PATH=~/.quodlibet

cd $QUOD_PATH
current=$(grep 'filename=' ./current | sed 's,.*=/,/,')
notify-send 'Deleted Song' "$current"
rm "$current"
