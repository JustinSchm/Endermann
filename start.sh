mkdir /root/bechtleserver
cp index.html /root/bechtleserver/index.html
docker run --name WebContainer -d -p 8080:80 -v /root/bechtleserver:/usr/share/nginx/html quay.io/justinschm/bechtle-web-image
docker run --name JobContainer -d -v /root/bechtleserver:/usr/share/nginx/html quay.io/keanufuchs/bechtle-job-image
