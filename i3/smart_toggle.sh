#!/bin/bash


f="$HOME/.config/i3/config"
cp $f "temp"

if [ "$1" = "true" ]; then
content=$(cat $f)

cat > $f << EOF
$content
smart_gaps on
EOF
fi

if [ "$2" = "true" ]; then
content=$(cat $f)

cat > $f << EOF
$content
smart_borders on
EOF
fi

i3-msg reload
cp "temp" $f
rm "temp"

