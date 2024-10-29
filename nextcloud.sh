
docker run -d --name nextcloud-db --restart always \
  -p 3306:3306 \
  -e MYSQL_ROOT_PASSWORD=next-pass \
  -e MYSQL_DATABASE=nextcloud \
  -e MYSQL_USER=admin \
  -e MYSQL_PASSWORD=next-pass \
  -v /Users/yryang/software/mariadb_data:/var/lib/mysql \
  mariadb:latest

docker run -d --name nextcloud --restart always \
  -p 8080:80 \
  -v /Users/yryang/software/nextcloud_data:/var/www/html \
  -e NEXTCLOUD_ADMIN_USER=admin \
  -e NEXTCLOUD_ADMIN_PASSWORD=next-pass \
  -e NEXTCLOUD_DB_HOST=nextcloud-db \
  -e NEXTCLOUD_DB_USER=admin \
  -e NEXTCLOUD_DB_PASSWORD=next-pass \
  -e NEXTCLOUD_DB_NAME=nextcloud \
  nextcloud:latest

docker run --name nextcloud-webdav --restart always \
    -v /Users/yryang/software/webdav_data:/var/lib/dav \
    -e AUTH_TYPE=Basic -e USERNAME=admin -e PASSWORD=next-pass \
    --publish 8081:80 -d bytemark/webdav
