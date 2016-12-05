sudo modprobe openvswitch
sleep 2
sudo modprobe vport_vxlan
cd /opt/stack/data/ovs

ovsdb-server --detach --monitor -vconsole:off --log-file=/opt/stack/logs/ovsdb-server-nb.log --remote=punix:/usr/local/var/run/openvswitch/ovnnb_db.sock --remote=ptcp:6641:0.0.0.0 --pidfile=/usr/local/var/run/openvswitch/ovnnb_db.pid --unixctl=ovnnb_db.ctl /opt/stack/data/ovs/ovnnb.db
ovsdb-server --detach --monitor -vconsole:off --log-file=/opt/stack/logs/ovsdb-server-sb.log --remote=punix:/usr/local/var/run/openvswitch/ovnsb_db.sock --remote=ptcp:6642:0.0.0.0 --pidfile=/usr/local/var/run/openvswitch/ovnsb_db.pid --unixctl=ovnsb_db.ctl /opt/stack/data/ovs/ovnsb.db
ovsdb-server --remote=punix:/usr/local/var/run/openvswitch/db.sock --remote=db:Open_vSwitch,Open_vSwitch,manager_options --pidfile --detach -vconsole:off --log-file=/opt/stack/logs/ovsdb-server.log conf.db
sudo ovs-vswitchd --pidfile --detach -vconsole:off --log-file=/opt/stack/logs/ovs-vswitchd.log
