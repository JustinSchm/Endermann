while true
do
	date=$(date +%F_%T)
	date_text="DATE: $date"
	echo $date_text

	ip=$(curl -s ifconfig.io)
	ip_text="IP: $ip"
	echo $ip_text	

	sed -i 's/IP:.*/<p>'"$ip_text"'/' /usr/share/nginx/html/index.html
	sed -i 's/DATE:.*/<p>'"$date_text"'/' /usr/share/nginx/html/index.html
	sleep 60
done
