# Endermann
Jobenderman ist ein Docker-Container namens bechtle-job, welcher Datum und IP in der index.html Datei ändert.

# Installation von Docker

Docker wird benötigt, daher wird dies Installiert.
```
yum -y install docker-ce
```

# Erstellen eines zentralen Ordners für beide Container

Damit beide Container auf die selben Dateien zugreifen können, brauchen Sie ein Verzeichnis, welches später gemountet wird.
```
mkdir /root/bechtleserver
```

# Starten des bechtle-job Containers

Ist Docker installiert, können die Container gestartet werden. Das neu erstellte Verzeichnis wird nun mit dem Verzeichnis */usr/share/nginx/html* gemountet.
```
docker run --name bechtle-job -d -v /root/bechtle:/usr/share/nginx/html quay.io/keanufuchs/bechtle-job-image
```
