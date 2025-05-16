alias ccw='cc -Wall -Werror -Wextra'

alias conxboxdz='sudo xboxdrv --deadzone 5000 --silent'
alias conxbox='sudo xboxdrv --silent'

alias nv='nvim'

alias dotin='bash doting.sh'
alias mountsd='bash -c "if [ ! -d /media/wec ]; then sudo mkdir -p /media/wec/SD; fi" && sudo mount --verbose /dev/sda2 /media/wec/SD'
