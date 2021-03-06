#!/bin/sh
#
cd ${GOPATH}/src/github.com/appleboy/gorush
sed -i"" -e "s/localhost/redis/g" config/config.yml
sed -i"" -e "s/localhost/redis/g" gorush/status_test.go
sed -i"" -e "s/localhost/redis/g" storage/redis/redis_test.go
make bundle && make test
