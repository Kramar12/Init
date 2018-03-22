email="root@debian"

#create this file once before run script
#md5sum /etc/crontab | cut -d " " -f 1 > /crontabsum

md5sum /etc/crontab | cut -d " " -f 1 > /newcrontabsum
dif=$(diff /crontabsum /newcrontabsum)

if [ "$dif" ];then
	mail -s "Crontab changed" $email < /newcrontabsum
	md5sum /etc/crontab | cut -d " " -f 1 > /crontabsum
fi

#echo '0 0 * * * /04.sh' | crontab
