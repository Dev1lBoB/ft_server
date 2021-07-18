echo "Type 'on' or 'off'"
read var
if [[ ${var} == "on" || ${var} == "off" ]]
then
	sed -i "s/autoindex on;/autoindex ${var};/" nginx.conf
	sed -i "s/autoindex off;/autoindex ${var};/" nginx.conf
	service nginx restart
else
	echo -e "\033[31mWrong command\033[0m"
fi
