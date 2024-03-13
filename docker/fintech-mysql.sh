docker run -d \
--name fintech-mysql \
-e MYSQL_ROOT_PASSWORD="1234" \
-e MYSQL_USER="minicampus_user" \
-e MYSQL_PASSWORD="a1234" \
-e MYSQL_DATABASE="fintech" \
-p 3306:3306 \
--network docker_fintech mysql:latest