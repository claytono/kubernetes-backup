#!/bin/sh -xveu

TIMESTAMP=$(date -u -Isec|sed -e 's/UTC//')
BACKUPDIR=/backups/$TIMESTAMP

mkdir -p $BACKUPDIR/etcd
/usr/local/bin/etcdctl backup \
    --data-dir /var/lib/etcd \
    --backup-dir $BACKUPDIR/etcd

cp -a /etc/kubernetes/ $BACKUPDIR/kubernetes
