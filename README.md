https://www.relaxdiego.com/2014/09/ovsdb.html
ovsdb-server --remote=punix:/home/ubuntu/1.sock --remote=ptcp:6642:0.0.0.0 --pidfile=/home/ubuntu/1.pid --unixctl=/home/ubuntu/1.ctl  message.db
ovsdb-client list-dbs unix:/home/ubuntu/1.sock

ovsdb transaction:
ovsdb-client transact tcp:192.168.1.10:6640 '["todo",{"op":"insert", "table":"Item", "row":{"description":"Sample Item2", "status": "new"}, "uuid-name":"anotheritem" }, {"op":"mutate", "table":"List", "where":[["name", "==", "List2"]], "mutations":[["items", "insert", ["set",[["named-uuid", "anotheritem"]]]]] }]'
