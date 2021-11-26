while true
do
	date=$(TZ=CET date +%F_%T)
	date_text="<p>DATE: $date"
	echo $date_text

	ip=$(curl -s ifconfig.io)
	ip_text="<p>IP: $ip"
	echo $ip_text	

	sed -i 's/<p>IP:.*/'"$ip_text"'/' /usr/share/nginx/html/index.html
	sed -i 's/<p>DATE:.*/'"$date_text"'/' /usr/share/nginx/html/index.html
	sleep 60
done
