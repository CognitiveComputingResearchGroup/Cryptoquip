#!/usr/bin/env python

from lidapy.module.sensory_memory import SensoryMemory
from lidapy.framework.msg import built_in_topics
from cqlida.msg import CognitiveContent, KeyValues



class CQ_SensoryMemory(SensoryMemory):
    def __init__(self, **kwargs):
        super(CQ_SensoryMemory, self).__init__(**kwargs)

    # Must be overridden
    def call(self):
        super(SensoryMemory, self).call()
        mess = CognitiveContent()
        mess.elements = [KeyValues()] * 3
        #kv = KeyValues()
        #mess.elements.append(kv)
        mess.elements[0].key = "Hello"
        mess.elements[0].values = ["LIDA"]



        self.publishers["detected_features"].publish(mess)


if __name__ == '__main__':

    try:
        module = SensoryMemory()
        module.run()

    except Exception as e:
        print e

    finally:
        pass
