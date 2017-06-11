#!/bin/bash

DB_USER='user';
DB_PASSWD='pass';

DB_NAME='base';
TABLE='table';

difficulty="$(/root/coin/src/coind getdifficulty)"

mysql --host=localhost --user=$DB_USER --password=$DB_PASSWD $DB_NAME << EOF
INSERT INTO $TABLE (difficulty) VALUES ('$difficulty');
EOF
