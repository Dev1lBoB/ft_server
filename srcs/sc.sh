service mysql start
service php7.3-fpm start
service nginx start

mysql -e "create database moi_site;"
mysql -e "create user wpersimm;"
mysql -e "grant all on moi_site.* to 'wpersimm'@'localhost' identified by 'lolkekcheburek';"
mysql -e "flush privileges;"

curl -d "weblog_title="moi_site"&user_name="wpersimm"&admin_password="lolkekcheburek"&admin_password2="lolkekcheburek"&admin_email="mail@mail.ru"" -k -O https://localhost/wordpress/wp-admin/install.php?step=2
curl -d 
num=37
while [ $num -gt 0 ]; do
	clear
	num=$(($num - 1))
	echo ""
	echo -e "\033[${num}m           ▄▀▀▀▄"
	echo -e "      ▄███▀░◐░░░▌"
	echo -e "          ▌░░░░░▐"
	echo -e '          ▐░░░░░▐'
	echo -e "          ▌░░░░░▐▄▄"
	echo -e '          ▌░░░░▄▀▒▒▀▀▀▀▄'
	echo -e "          ▐░░░░▐▒▒▒▒▒▒▒▒▀▀▄"
	echo -e "           ▐░░░░▐▄▒▒▒▒▒▒▒▒▒▒▀▄"
	echo -e "            ▀▄░░░░▀▄▒▒▒▒▒▒▒▒▒▒▀▄"
	echo -e "             ▀▄▄▄▄▄█▄▄▄▄▄▄▄▄▄▄▄▀▄"
	echo -e "                   ▌▌ ▌▌"
	echo -e "                   ▌▌ ▌▌"
	echo -e "                 ▄▄▌▌▄▌▌\033[0m"
	echo -e "\033[32m	    SERVER IS RUNNING\033[0m"
	read -t 0.2381 var
        if [[ -n $var ]]
        then
              break 2
        fi
	clear
	echo ""
	echo -e "\033[${num}m         ▄▀▀▀▄"
	echo -e "    ▄███▀░◐░░░▌"
	echo -e "        ▌░░░░░▐"
	echo -e '        ▐░░░░░▐'
	echo -e "        ▌░░░░░▐▄▄"
	echo -e '        ▌░░░░▄▀▒▒▀▀▀▀▄'
	echo -e "        ▐░░░░▐▒▒▒▒▒▒▒▒▀▀▄"
	echo -e "         ▐░░░░▐▄▒▒▒▒▒▒▒▒▒▒▀▄"
	echo -e "          ▀▄░░░░▀▄▒▒▒▒▒▒▒▒▒▒▀▄"
	echo -e "           ▀▄▄▄▄▄█▄▄▄▄▄▄▄▄▄▄▄▀▄"
	echo -e "                   ▌▌ ▌▌"
	echo -e "                   ▌▌ ▌▌"
	echo -e "                 ▄▄▌▌▄▌▌\033[0m"
	echo -e "\033[32m	    SERVER IS RUNNING\033[0m"
	read -t 0.2381 var
        if [[ -n $var ]]
        then
              break 2
        fi
		if [[ $num == 31 ]]
		then
			num=37
		fi
done
bash
