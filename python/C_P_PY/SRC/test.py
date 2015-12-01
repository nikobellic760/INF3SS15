from Buffer import Buffer
from Consumer import Consumer
from Producer import Producer
import sys
from threading import Thread




b = Buffer(int(sys.argv[1]))
p = Producer(b)
c = Consumer(b)


t = Thread(target=p.produce())
t.setDaemon(True) 
t.start()

t1 = Thread(target=c.consume())
t1.daemon = True 
t1.start()



#sys.argv[2]# anzahl consumer
#sys.argv[3]# anzahl producer
