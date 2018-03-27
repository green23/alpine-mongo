#!/bin/sh
mongod -f /etc/mongod.conf
mongo admin --eval \
        "db.createUser({user: '$MONGO_USERNAME',
            pwd: '$MONGO_PASSWORD',
            roles: [{role: 'root', db: 'admin'}]
        });"

echo -e "Used by liuyuqi/alpine-mongo docker container.\nDO NOT DELETE" > /var/lib/mongodb/.set_password
mongod --shutdown -f /etc/mongod.conf
echo -e 'security:\n  authorization: enabled' >> /etc/mongod.conf
mongod -f /etc/mongod.conf
