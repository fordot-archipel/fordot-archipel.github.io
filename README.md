[32mINFO     [0m::2014-01-16 16:27:37::utils.py:71:: [33mTNArchipelHypervisor.users_register (lenuks.fordot.ru@lenuks.fordot.ru/lenuks.fordot.ru) [0m::XMPPSERVER: Registering a new user yurko@lenuks.fordot.ru@lenuks.fordot.ru
[31mERROR   [0m::2014-01-16 16:27:37::utils.py:75:: [33mTNArchipelHypervisor.loop (lenuks.fordot.ru@lenuks.fordot.ru/lenuks.fordot.ru) [0m::LOOP EXCEPTION : Disconnected from server. Trying to reconnect in 5 seconds.
[31mERROR   [0m::2014-01-16 16:27:37::utils.py:75:: [33mTNArchipelHypervisor.loop (lenuks.fordot.ru@lenuks.fordot.ru/lenuks.fordot.ru) [0m::TRACEBACK: Traceback (most recent call last):

  File "/root/arcpl/Archipel/ArchipelAgent/archipel-core/archipelcore/archipelEntity.py", line 1256, in loop
    self.xmppclient.Process(3)

  File "/usr/local/lib/python2.7/dist-packages/xmpppy-0.5.0rc1-py2.7.egg/xmpp/dispatcher.py", line 122, in Process
    self.Stream.Parse(data)

  File "/usr/local/lib/python2.7/dist-packages/xmpppy-0.5.0rc1-py2.7.egg/xmpp/simplexml.py", line 424, in endtag
    self.dispatch(self._mini_dom)

  File "/usr/local/lib/python2.7/dist-packages/xmpppy-0.5.0rc1-py2.7.egg/xmpp/dispatcher.py", line 293, in dispatch
    try: cb(session,stanza,**args)

  File "/root/arcpl/Archipel/ArchipelAgent/archipel-agent-xmppserver/archipelagentxmppserver/xmppserver.py", line 677, in on_receive_registration
    self.entity.push_change("xmppserver:users", "registerationerror", content_node=iq)

TypeError: push_change() got an unexpected keyword argument 'content_node'

[31mERROR   [0m::2014-01-16 16:27:42::utils.py:75:: [33mTNArchipelHypervisor.loop (lenuks.fordot.ru@lenuks.fordot.ru/lenuks.fordot.ru) [0m::LOOP EXCEPTION : Disconnected from server. Trying to reconnect in 5 seconds.
[31mERROR   [0m::2014-01-16 16:27:42::utils.py:75:: [33mTNArchipelHypervisor.loop (lenuks.fordot.ru@lenuks.fordot.ru/lenuks.fordot.ru) [0m::TRACEBACK: Traceback (most recent call last):

  File "/root/arcpl/Archipel/ArchipelAgent/archipel-core/archipelcore/archipelEntity.py", line 1259, in loop
    self.xmppclient.disconnect()

  File "/usr/local/lib/python2.7/dist-packages/xmpppy-0.5.0rc1-py2.7.egg/xmpp/dispatcher.py", line 373, in disconnect
    while self.Process(1): pass

  File "/usr/local/lib/python2.7/dist-packages/xmpppy-0.5.0rc1-py2.7.egg/xmpp/dispatcher.py", line 122, in Process
    self.Stream.Parse(data)

ExpatError: parsing finished: line 1, column 28867
