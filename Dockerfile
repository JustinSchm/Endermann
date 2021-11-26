FROM redhat/ubi8
ADD index.html /usr/share/nginx/html/index.html
ADD script.sh /usr/share/nginx/html/
CMD  /usr/share/nginx/html/script.sh
