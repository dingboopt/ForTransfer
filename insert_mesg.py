import os
import monotonic
timelast = 0
while True:
    timestamp = (int)(monotonic.monotonic()*100)
    if timestamp <= timelast:
        continue
    timelast = timestamp
    timestamp_str = '''"timestamp":%d,'''%timestamp
    command = '''ovsdb-client transact unix:/home/ubuntu/ovnnb_db.sock '["Message",{"op":"insert", "table":"MessageIn", "row":{"data":["map",[["1","2"],["wer","2"]]],'''+timestamp_str+'''"object_type": "new","object_uuid":"xx"}, "uuid-name":"anotheritem" }]'d'''
    command = command[:-1]
    import time
    time.sleep(0.1)
    os.system(command)
