
ovsdb-server --detach --monitor -vconsole:off --log-file=/opt/stack/logs/ovsdb-server-nb.log --remote=punix:/home/ubuntu/ovnnb_db.sock --remote=ptcp:6641:0.0.0.0 --pidfile=/home/ubuntu/ovnnb_db.pid --unixctl=/home/ubuntu/ovnnb_db.ctl /home/ubuntu/ovnnb.db
ovsdb-server --detach --monitor -vconsole:off --log-file=/opt/stack/logs/ovsdb-server-sb.log --remote=punix:/home/ubuntu/ovnsb_db.sock --remote=ptcp:6642:0.0.0.0 --pidfile=/home/ubuntu/ovnsb_db.pid --unixctl=/home/ubuntu/ovnsb_db.ctl /home/ubuntu/ovnsb.db
