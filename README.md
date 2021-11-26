# Endermann
Das Container-Image "bechtle-job-image" basiert auf redhat/ubi8. 
Innerhalb dieses Images wird ein Script ausgeführt, welches jede Minute Datum und IP ersetzt.

Das Script sieht wie folgt aus:
'''
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
'''
