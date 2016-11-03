https://www.relaxdiego.com/2014/09/ovsdb.html
ovsdb-server --remote=punix:/home/ubuntu/1.sock --remote=ptcp:6642:0.0.0.0 --pidfile=/home/ubuntu/1.pid --unixctl=/home/ubuntu/1.ctl  message.db
ovsdb-client list-dbs unix:/home/ubuntu/1.sock
