#!/bin/sh

B='#00000000'  # blank
C='#ffffff22'  # clear ish
D='#ff00ffcc'  # default
T='#000099ff'  # text
W='#ff6666ff'  # wrong
L='#3399ffff'  # verifying
R='#ffcc66ff'  # ring segments
W='#ffffffff'  # white
i3lock-fancy-rapid 5 5 \
--insidevercolor=$W   \
--ringvercolor=$L     \
\
--insidewrongcolor=$W \
--ringwrongcolor=$W   \
\
--insidecolor=$W      \
--ringcolor=$L        \
--linecolor=$B        \
--separatorcolor=$D   \
\
--verifcolor=$T        \
--wrongcolor=$T        \
--timecolor=$T        \
--datecolor=$T        \
--layoutcolor=$T      \
--keyhlcolor=$R       \
--bshlcolor=$R        \
\
--screen 1            \
--clock               \
--indicator           \
--timestr="%H:%M:%S"  \
--datestr="%A, %m %Y" \
--veriftext="..." \
--wrongtext="Nope!" 
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
