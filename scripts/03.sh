ls -Sl $1 | grep -v total | grep -v ^d | awk '{print $5"\011" $9}'
#ls -Sl $1 | grep -v total | grep ^- | awk '{print $5"\011" $9}'