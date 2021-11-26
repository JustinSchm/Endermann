while true
do
	date=$(date +%F_%T)
	date_text="DATE: $date"


	ip=$(curl -s ifconfig.io)
	ip_text="IP: $ip"
	
	sed -i 's/IP:.*/'"$ip_text"'/' /usr/share/nginx/html/index.html
	sed -i 's/DATE:.*/'"$date_text"'/' /usr/share/nginx/html/index.html
	sleep 60
done
