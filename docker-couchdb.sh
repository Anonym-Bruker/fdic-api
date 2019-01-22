
#!/bin/bash -xv
echo '=====>docker stop'
docker stop couchdb
docker rm couchdb
echo '=====>docker run'
docker run -d --restart always --hostname couchdb --name couchdb --network fdic-api -p 5984:5984 -e COUCHDB_USER=couchdbadmin -e COUCHDB_PASSWORD=couchdbadmin -v "$(pwd)"/couchdb-data:/opt/couchdb/data couchdb
