INSTALLS=$(comm -23 <(apt-mark showmanual | sort) <(apt-mark showauto | sort))
echo $INSTALLS > apt_backup.txt
