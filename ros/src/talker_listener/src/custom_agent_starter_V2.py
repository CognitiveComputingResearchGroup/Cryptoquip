#! /usr/bin/env python

from lidapy.framework.agent_starter import AgentStarter
from lidapy.framework.module import FrameworkModule
from lidapy.framework.msg import FrameworkTopic
from lidapy.util import logger

from std_msgs.msg import String


TOPIC = FrameworkTopic("lida/comm", String)
TOPIC_random = FrameworkTopic("lida/random", String)


class TalkerModule(FrameworkModule):
    def __init__(self, **kwargs):
        super(TalkerModule, self).__init__("talker", **kwargs)
        super(TalkerModule, self).add_publisher(TOPIC)

    def call(self):
        next_msg = self.create_next_msg("talker", "message")
        logger.info("Sending message: {}".format(next_msg))
        self.publishers[TOPIC.topic_name].publish(next_msg)

    def create_next_msg(self, param_type, param_name):
        next_msg = self.config.get_param(param_type, param_name)
        return next_msg


class ListenerModule(FrameworkModule):
    def __init__(self, **kwargs):
        super(ListenerModule, self).__init__("listener", **kwargs)
        super(ListenerModule, self).add_subscriber(TOPIC)
        super(ListenerModule, self).add_publisher(TOPIC_random)

    def call(self):
        msg = self.get_next_msg(TOPIC.topic_name)

        if msg is not None:
            logger.info("Receiving message: {}".format(msg))

        next_msg = self.config.get_param("listener", "message")
        logger.info("Sending message: {}".format(next_msg))
        self.publishers[TOPIC_random.topic_name].publish(next_msg)


class CreeperModule(FrameworkModule):
    def __init__(self, **kwargs):
        super(CreeperModule, self).__init__("creeper", **kwargs)
        super(CreeperModule, self).add_subscriber(TOPIC_random)

    def call(self):
        msg = self.get_next_msg(TOPIC_random.topic_name)

        if msg is not None:
            logger.info("Receiving message: {}".format(msg))


if __name__ == '__main__':

    try:
        starter = AgentStarter()

        starter.add_module("talker", TalkerModule)
        starter.add_module("listener", ListenerModule)
        starter.add_module("creeper", CreeperModule)

        starter.start()

    except Exception as e:
        print e

    finally:
        pass