apt-get update >> /var/log/update_script.log && apt-get -y upgrade >> /var/log/update_script.log

#echo '00 4 * * 1 ~/02.sh' | crontab