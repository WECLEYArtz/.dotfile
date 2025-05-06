#!/bin/sh

STATUS_POS="w/2:y+h-180"
STATUS_SIZE="15"
WHITE_AA="ffffff8e"
BLACK_AA="0000008e"

i3lock \
--greeter-text="Pretty much a locked laptop" \
--greeter-color $WHITE_AA \
--greeter-pos="w/2:y+h-220" \
--greeter-align 0 \
--greeter-size 25 \
\
--blur 7 \
--bar-indicator \
--bar-pos="x:h" \
--bar-direction 2 \
--bar-base-width 500 \
--bar-color $BLACK_AA \
\
--bar-step 1000 \
--bar-periodic-step 20 \
--bar-max-height 50 \
--bar-count 21 \
--keyhl-color $WHITE_AA \
\
--redraw-thread \
\
--clock \
--force-clock \
\
--time-pos x+10:y+h-210 \
--time-color $WHITE_AA \
--time-align 1 \
\
--date-pos tx:ty+15 \
--date-color $WHITE_AA \
--date-align 1 \
\
--ringver-color 8800ff88 \
--ringwrong-color ff008888 \
--status-pos $STATUS_POS \
\
--verif-color $WHITE_AA \
--verif-align 0 \
--verif-pos $STATUS_POS \
--verif-size $STATUS_SIZE \
--greeter-size 25 \
\
--wrong-color $WHITE_AA \
--wrong-align 0 \
--wrong-pos $STATUS_POS \
--wrong-size $STATUS_SIZE \
\
--modif-pos -50:-50 \
--noinput-text="Empty" \
\
