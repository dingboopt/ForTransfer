https://www.relaxdiego.com/2014/09/ovsdb.html
ovsdb-server --remote=punix:/home/ubuntu/1.sock --remote=ptcp:6642:0.0.0.0 --pidfile=/home/ubuntu/1.pid --unixctl=/home/ubuntu/1.ctl  message.db
ovsdb-client list-dbs unix:/home/ubuntu/1.sock

ovsdb transaction:
ovsdb-client transact tcp:192.168.1.10:6640 '["todo",{"op":"insert", "table":"Item", "row":{"description":"Sample Item2", "status": "new"}, "uuid-name":"anotheritem" }, {"op":"mutate", "table":"List", "where":[["name", "==", "List2"]], "mutations":[["items", "insert", ["set",[["named-uuid", "anotheritem"]]]]] }]'

map:
ovsdb-client transact unix:/home/ubuntu/1.sock '["Cache",{"op":"insert", "table":"MessageIn", "row":{"data":["map",[["1","2"],["wer","2"]]], "object_type": "new","object_uuid":"xx"}, "uuid-name":"anotheritem" }]'
[{"uuid":["uuid","1b98b636-a03f-47fd-84ed-6b99441dc56e"]}]


neutron l3 dvr doc:
http://docs.openstack.org/mitaka/networking-guide/scenario-dvr-ovs.html

https://github.com/dingboopt/networking-wqq/archive/test.zip

https://github.com/openstack/networking-odl/archive/stable/mitaka.zip
