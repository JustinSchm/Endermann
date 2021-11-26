<<<<<<< HEAD
FROM redhat/ubi8
ADD script.sh /root
CMD /root/script.sh
=======
FROM nginx:1.21 
ADD index.html /usr/share/nginx/html
>>>>>>> 5819bb20b40621c49596b74e4034c4c0aabc8928
