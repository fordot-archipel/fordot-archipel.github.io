@STATIC;1.0;p;19;StropheCappuccino.jt;1674;@STATIC;1.0;i;22;MUC/TNStropheMUCRoom.ji;25;Resources/Strophe/sha1.jsi;28;Resources/Strophe/strophe.jsi;10;TNPubSub.ji;17;TNStropheClient.ji;21;TNStropheConnection.ji;18;TNStropheContact.ji;16;TNStropheGroup.ji;19;TNStropheIMClient.ji;14;TNStropheJID.ji;25;TNStrophePrivateStorage.ji;17;TNStropheRoster.ji;31;TNStropheServerAdministration.ji;17;TNStropheStanza.ji;16;TNStropheVCard.jt;1284;objj_executeFile("MUC/TNStropheMUCRoom.j", YES);
objj_executeFile("Resources/Strophe/sha1.js", YES);
objj_executeFile("Resources/Strophe/strophe.js", YES);
objj_executeFile("TNPubSub.j", YES);
objj_executeFile("TNStropheClient.j", YES);
objj_executeFile("TNStropheConnection.j", YES);
objj_executeFile("TNStropheContact.j", YES);
objj_executeFile("TNStropheGroup.j", YES);
objj_executeFile("TNStropheIMClient.j", YES);
objj_executeFile("TNStropheJID.j", YES);
objj_executeFile("TNStrophePrivateStorage.j", YES);
objj_executeFile("TNStropheRoster.j", YES);
objj_executeFile("TNStropheServerAdministration.j", YES);
objj_executeFile("TNStropheStanza.j", YES);
objj_executeFile("TNStropheVCard.j", YES);
objj_msgSend(TNStropheClient, "addNamespaceWithName:value:", "CAPS", "http://jabber.org/protocol/caps");
objj_msgSend(TNStropheClient, "addNamespaceWithName:value:", "DELAY", "urn:xmpp:delay");
objj_msgSend(TNStropheClient, "addNamespaceWithName:value:", "X_DATA", "jabber:x:data");
objj_msgSend(TNStropheClient, "addNamespaceWithName:value:", "PING", "urn:xmpp:ping");
objj_msgSend(TNStropheClient, "addNamespaceWithName:value:", "PRIVATE_STORAGE", "jabber:iq:private");
objj_msgSend(TNStropheClient, "addNamespaceWithName:value:", "COMMAND", "http://jabber.org/protocol/commands");p;10;TNPubSub.jt;1027;@STATIC;1.0;i;21;TNStropheConnection.ji;21;PubSub/TNPubSubNode.ji;27;PubSub/TNPubSubController.jt;925;objj_executeFile("TNStropheConnection.j", YES);
objj_executeFile("PubSub/TNPubSubNode.j", YES);
objj_executeFile("PubSub/TNPubSubController.j", YES);
objj_msgSend(TNStropheConnection, "addNamespaceWithName:value:", "PUBSUB", "http://jabber.org/protocol/pubsub");
objj_msgSend(TNStropheConnection, "addNamespaceWithName:value:", "PUBSUB_EVENT", "http://jabber.org/protocol/pubsub#event");
objj_msgSend(TNStropheConnection, "addNamespaceWithName:value:", "PUBSUB_OWNER", "http://jabber.org/protocol/pubsub#owner");
objj_msgSend(TNStropheConnection, "addNamespaceWithName:value:", "PUBSUB_NODE_CONFIG", "http://jabber.org/protocol/pubsub#node_config");
objj_msgSend(TNStropheConnection, "addNamespaceWithName:value:", "PUBSUB_NOTIFY", "http://jabber.org/protocol/pubsub+notify");
objj_msgSend(TNStropheConnection, "addNamespaceWithName:value:", "PUBSUB_SUBSCRIBE OPTIONS", "http://jabber.org/protocol/pubsub#subscribe_options");p;17;TNStropheClient.jt;23302;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPImage.ji;28;Resources/Strophe/strophe.jsi;25;Resources/Strophe/sha1.jsi;21;TNStropheConnection.ji;14;TNStropheJID.ji;17;TNStropheStanza.ji;11;TNXMLNode.ji;16;TNStropheVCard.jt;23066;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("Resources/Strophe/strophe.js", YES);
objj_executeFile("Resources/Strophe/sha1.js", YES);
objj_executeFile("TNStropheConnection.j", YES);
objj_executeFile("TNStropheJID.j", YES);
objj_executeFile("TNStropheStanza.j", YES);
objj_executeFile("TNXMLNode.j", YES);
objj_executeFile("TNStropheVCard.j", YES);
//@global TNStropheContactStatusOffline
//@global TNStropheContactStatusOnline
TNStropheClientPasswordChangedNotification = "TNStropheClientPasswordChangedNotification";
TNStropheClientPasswordChangeErrorNotification = "TNStropheClientPasswordChangeErrorNotification";
TNStropheClientPresenceUpdatedNotification = "TNStropheClientPresenceUpdatedNotification";
TNStropheClientVCardReceivedNotification = "TNStropheClientVCardReceivedNotification";
{var the_class = objj_allocateClassPair(CPObject, "TNStropheClient"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_features"), new objj_ivar("_clientNode"), new objj_ivar("_identityCategory"), new objj_ivar("_identityName"), new objj_ivar("_identityType"), new objj_ivar("_password"), new objj_ivar("_delegate"), new objj_ivar("_connection"), new objj_ivar("_JID"), new objj_ivar("_vCard"), new objj_ivar("_avatar"), new objj_ivar("_userPresenceShow"), new objj_ivar("_userPresenceStatus")]);


       
       


       
       











       
       









       
       


       
       





       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_features"), function $TNStropheClient___features(self, _cmd)
{
return self._features;
}
,["CPArray"]), new objj_method(sel_getUid("clientNode"), function $TNStropheClient__clientNode(self, _cmd)
{
return self._clientNode;
}
,["CPString"]), new objj_method(sel_getUid("setClientNode:"), function $TNStropheClient__setClientNode_(self, _cmd, newValue)
{
self._clientNode = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("identityCategory"), function $TNStropheClient__identityCategory(self, _cmd)
{
return self._identityCategory;
}
,["CPString"]), new objj_method(sel_getUid("setIdentityCategory:"), function $TNStropheClient__setIdentityCategory_(self, _cmd, newValue)
{
self._identityCategory = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("identityName"), function $TNStropheClient__identityName(self, _cmd)
{
return self._identityName;
}
,["CPString"]), new objj_method(sel_getUid("setIdentityName:"), function $TNStropheClient__setIdentityName_(self, _cmd, newValue)
{
self._identityName = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("identityType"), function $TNStropheClient__identityType(self, _cmd)
{
return self._identityType;
}
,["CPString"]), new objj_method(sel_getUid("setIdentityType:"), function $TNStropheClient__setIdentityType_(self, _cmd, newValue)
{
self._identityType = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("password"), function $TNStropheClient__password(self, _cmd)
{
return self._password;
}
,["CPString"]), new objj_method(sel_getUid("setPassword:"), function $TNStropheClient__setPassword_(self, _cmd, newValue)
{
self._password = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("delegate"), function $TNStropheClient__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNStropheClient__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("connection"), function $TNStropheClient__connection(self, _cmd)
{
return self._connection;
}
,["TNStropheConnection"]), new objj_method(sel_getUid("setConnection:"), function $TNStropheClient__setConnection_(self, _cmd, newValue)
{
self._connection = newValue;
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("JID"), function $TNStropheClient__JID(self, _cmd)
{
return self._JID;
}
,["TNStropheJID"]), new objj_method(sel_getUid("setJID:"), function $TNStropheClient__setJID_(self, _cmd, newValue)
{
self._JID = newValue;
}
,["void","TNStropheJID"]), new objj_method(sel_getUid("vCard"), function $TNStropheClient__vCard(self, _cmd)
{
return self._vCard;
}
,["TNStropheVCard"]), new objj_method(sel_getUid("setVCard:"), function $TNStropheClient__setVCard_(self, _cmd, newValue)
{
self._vCard = newValue;
}
,["void","TNStropheVCard"]), new objj_method(sel_getUid("avatar"), function $TNStropheClient__avatar(self, _cmd)
{
return self._avatar;
}
,["CPImage"]), new objj_method(sel_getUid("_setAvatar:"), function $TNStropheClient___setAvatar_(self, _cmd, newValue)
{
self._avatar = newValue;
}
,["void","CPImage"]), new objj_method(sel_getUid("initWithService:"), function $TNStropheClient__initWithService_(self, _cmd, aService)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheClient").super_class }, "init"))
    {
        self._connection = objj_msgSend(TNStropheConnection, "connectionWithService:andDelegate:", aService, self);
        self._userPresenceShow = TNStropheContactStatusOffline;
        self._userPresenceStatus = "";
        self._clientNode = "http://cappuccino.org";
        self._identityCategory = "client";
        self._identityName = "StropheCappuccino";
        self._identityType = "web";
        self._features = [Strophe.NS.CAPS, Strophe.NS.DISCO_INFO, Strophe.NS.DISCO_ITEMS];
    }
    return self;
}
,["id","CPString"]), new objj_method(sel_getUid("initWithService:JID:password:"), function $TNStropheClient__initWithService_JID_password_(self, _cmd, aService, aJID, aPassword)
{
    if (self = objj_msgSend(self, "initWithService:", aService))
    {
        self._JID = aJID;
        self._password = aPassword;
    }
    return self;
}
,["id","CPString","TNStropheJID","CPString"]), new objj_method(sel_getUid("connect"), function $TNStropheClient__connect(self, _cmd)
{
    var pingDict = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", "iq", "name", "get", "type");
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didReceivePing:"), self, pingDict);
    objj_msgSend(self._connection, "connectWithJID:andPassword:", self._JID, self._password);
}
,["void"]), new objj_method(sel_getUid("disconnect"), function $TNStropheClient__disconnect(self, _cmd)
{
    objj_msgSend(self._connection, "disconnect");
}
,["void"]), new objj_method(sel_getUid("onStropheConnecting:"), function $TNStropheClient__onStropheConnecting_(self, _cmd, aConnection)
{
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("onStropheConnecting:")))
        objj_msgSend(self._delegate, "onStropheConnecting:", self);
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("onStropheConnected:"), function $TNStropheClient__onStropheConnected_(self, _cmd, aConnection)
{
    objj_msgSend(self, "_sendCAPS");
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("onStropheConnected:")))
        objj_msgSend(self._delegate, "onStropheConnected:", self);
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("onStropheConnectFail:"), function $TNStropheClient__onStropheConnectFail_(self, _cmd, aConnection)
{
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("onStropheConnectFail:")))
        objj_msgSend(self._delegate, "onStropheConnectFail:", self);
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("onStropheDisconnecting:"), function $TNStropheClient__onStropheDisconnecting_(self, _cmd, aConnection)
{
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("onStropheDisconnecting:")))
        objj_msgSend(self._delegate, "onStropheDisconnecting:", self);
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("onStropheDisconnected:"), function $TNStropheClient__onStropheDisconnected_(self, _cmd, aConnection)
{
    self._userPresenceShow = TNStropheContactStatusOffline;
    self._userPresenceStatus = "";
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("onStropheDisconnected:")))
        objj_msgSend(self._delegate, "onStropheDisconnected:", self);
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("onStropheAuthenticating:"), function $TNStropheClient__onStropheAuthenticating_(self, _cmd, aConnection)
{
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("onStropheAuthenticating:")))
        objj_msgSend(self._delegate, "onStropheAuthenticating:", self);
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("onStropheAuthFail:"), function $TNStropheClient__onStropheAuthFail_(self, _cmd, aConnection)
{
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("onStropheAuthFail:")))
        objj_msgSend(self._delegate, "onStropheAuthFail:", self);
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("onStropheError:"), function $TNStropheClient__onStropheError_(self, _cmd, aConnection)
{
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("onStropheError:")))
        objj_msgSend(self._delegate, "onStropheError:", self);
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("connection:errorCondition:"), function $TNStropheClient__connection_errorCondition_(self, _cmd, aConnection, anErrorCondition)
{
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("client:errorCondition:")))
        objj_msgSend(self._delegate, "client:errorCondition:", self, anErrorCondition);
}
,["void","TNStropheConnection","CPString"]), new objj_method(sel_getUid("_sendInitialPresence"), function $TNStropheClient___sendInitialPresence(self, _cmd)
{
    var presenceHandleParams = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", "presence", "name", objj_msgSend(self._JID, "bare"), "from", {"matchBare": true}, "options");
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didPresenceUpdate:"), self, presenceHandleParams);
    objj_msgSend(self, "setPresenceShow:status:", TNStropheContactStatusOnline, "");
}
,["void"]), new objj_method(sel_getUid("_didReceivePing:"), function $TNStropheClient___didReceivePing_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "containsChildrenWithName:", "ping") && objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "ping"), "namespace") == Strophe.NS.PING)
    {
        CPLog.debug("Ping received. Sending pong.");
        objj_msgSend(self._connection, "send:", objj_msgSend(TNStropheStanza, "iqWithAttributes:", {'to': objj_msgSend(objj_msgSend(aStanza, "from"), "bare"), 'id': objj_msgSend(aStanza, "ID"), 'type': 'result'}));
    }
    return YES;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("addFeature:"), function $TNStropheClient__addFeature_(self, _cmd, aFeatureNamespace)
{
    objj_msgSend(self._features, "addObject:", aFeatureNamespace);
}
,["void","CPString"]), new objj_method(sel_getUid("removeFeature:"), function $TNStropheClient__removeFeature_(self, _cmd, aFeatureNamespace)
{
    objj_msgSend(self._features, "removeObjectIdenticalTo:", aFeatureNamespace);
}
,["void","CPString"]), new objj_method(sel_getUid("_clientVer"), function $TNStropheClient___clientVer(self, _cmd)
{
    return SHA1.b64_sha1(self._features.join());
}
,["CPString"]), new objj_method(sel_getUid("_sendCAPS"), function $TNStropheClient___sendCAPS(self, _cmd)
{
    var caps = objj_msgSend(TNStropheStanza, "presence");
    objj_msgSend(caps, "addChildWithName:andAttributes:", "c", { "xmlns":Strophe.NS.CAPS, "node":self._clientNode, "hash":"sha-1", "ver":objj_msgSend(self, "_clientVer") });
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("handleFeaturesDisco:"), self, objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", "iq", "name", "get", "type", Strophe.NS.DISCO_INFO, "namespace"));
    objj_msgSend(self._connection, "send:", caps);
}
,["void"]), new objj_method(sel_getUid("handleFeaturesDisco:"), function $TNStropheClient__handleFeaturesDisco_(self, _cmd, aStanza)
{
    var resp = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"id":objj_msgSend(self._connection, "getUniqueId"), "type":"result"});
    objj_msgSend(resp, "setTo:", objj_msgSend(aStanza, "from"));
    objj_msgSend(resp, "addChildWithName:andAttributes:", "query", {"xmlns":Strophe.NS.DISCO_INFO, "node":(self._clientNode + '#' + objj_msgSend(self, "_clientVer"))});
    objj_msgSend(resp, "addChildWithName:andAttributes:", "identity", {"category":self._identityCategory, "name":self._identityName, "type":self._identityType});
    objj_msgSend(resp, "up");
    for (var i = 0; i < objj_msgSend(self._features, "count"); i++)
    {
        objj_msgSend(resp, "addChildWithName:andAttributes:", "feature", {"var":objj_msgSend(self._features, "objectAtIndex:", i)});
        objj_msgSend(resp, "up");
    }
    objj_msgSend(self._connection, "send:", resp);
    return YES;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("publishPEPPayload:toNode:"), function $TNStropheClient__publishPEPPayload_toNode_(self, _cmd, aPayload, aNode)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"type":"set", "id":uid}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", uid, "id");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "pubsub", {"xmlns":Strophe.NS.PUBSUB})
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "publish", {"node":aNode});
    objj_msgSend(stanza, "addChildWithName:", "item");
    objj_msgSend(stanza, "addNode:", aPayload);
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didPublishPEP:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","TNXMLNode","CPString"]), new objj_method(sel_getUid("_didPublishPEP:"), function $TNStropheClient___didPublishPEP_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        CPLog.debug("Publish succeeded!");
    else
        CPLog.error("Cannot publish the pubsub item:" + objj_msgSend(aStanza, "stringValue"));
    return NO;
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("setPresenceShow:status:"), function $TNStropheClient__setPresenceShow_status_(self, _cmd, aPresenceShow, aStatus)
{
    if (aPresenceShow === self._userPresenceShow && aStatus === self._userPresenceStatus)
        return;
    var presence = objj_msgSend(TNStropheStanza, "presence");
    self._userPresenceShow = aPresenceShow || self._userPresenceShow;
    self._userPresenceStatus = aStatus || self._userPresenceStatus;
    objj_msgSend(presence, "addChildWithName:", "status");
    objj_msgSend(presence, "addTextNode:", self._userPresenceStatus);
    objj_msgSend(presence, "up");
    objj_msgSend(presence, "addChildWithName:", "show");
    objj_msgSend(presence, "addTextNode:", self._userPresenceShow);
    objj_msgSend(self._connection, "send:", presence);
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("_didPresenceUpdate:"), function $TNStropheClient___didPresenceUpdate_(self, _cmd, aStanza)
{
    var shouldNotify = NO;
    if (objj_msgSend(aStanza, "firstChildWithName:", "show"))
    {
        self._userPresenceShow = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "show"), "text");
        shouldNotify = YES;
    }
    if (objj_msgSend(aStanza, "firstChildWithName:", "status"))
    {
        self._userPresenceStatus = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "status"), "text");
        shouldNotify = YES;
    }
    if (shouldNotify)
    {
        var presenceInformation = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", self._userPresenceShow, "show", self._userPresenceStatus, "status");
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheClientPresenceUpdatedNotification, self, presenceInformation);
    }
    return YES;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("getVCard"), function $TNStropheClient__getVCard(self, _cmd)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        vcardStanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"type": "get", "id": uid}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(vcardStanza, "addChildWithName:andAttributes:", "vCard", {"xmlns": "vcard-temp"});
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didReceiveCurrentUserVCard:"), self, params);
    objj_msgSend(self._connection, "send:", vcardStanza);
}
,["void"]), new objj_method(sel_getUid("_didReceiveCurrentUserVCard:"), function $TNStropheClient___didReceiveCurrentUserVCard_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        self._vCard = objj_msgSend(objj_msgSend(TNStropheVCard, "alloc"), "initWithXMLNode:", objj_msgSend(aStanza, "firstChildWithName:", "vCard"));
        self._avatar = objj_msgSend(self._vCard, "photo");
    }
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheClientVCardReceivedNotification, self, aStanza);
    return YES;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("setVCard:object:selector:userInfo:"), function $TNStropheClient__setVCard_object_selector_userInfo_(self, _cmd, aVCard, anObject, aSelector, someUserInfo)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"id": uid, "type": "set"}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    self._vCard = aVCard;
    objj_msgSend(stanza, "addNode:", objj_msgSend(aVCard, "XMLNode"));
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("notifyVCardUpdate:"), self, params);
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:userInfo:", aSelector, anObject, params, someUserInfo);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","TNXMLNode","CPObject","SEL","id"]), new objj_method(sel_getUid("notifyVCardUpdate:"), function $TNStropheClient__notifyVCardUpdate_(self, _cmd, aStanza)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "presenceWithAttributes:", {"id": uid}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "addChildWithName:", "status");
    objj_msgSend(stanza, "addTextNode:", self._userPresenceStatus);
    objj_msgSend(stanza, "up")
    objj_msgSend(stanza, "addChildWithName:", "show");
    objj_msgSend(stanza, "addTextNode:", self._userPresenceShow);
    objj_msgSend(stanza, "up")
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "x", {"xmlns": "vcard-temp:x:update"});
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("_didNotifyVCardUpdate:"), function $TNStropheClient___didNotifyVCardUpdate_(self, _cmd, aStanza)
{
    CPLog.trace(objj_msgSend(aStanza, "stringValue"));
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("changePassword:"), function $TNStropheClient__changePassword_(self, _cmd, aPassword)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"id": uid, "type": "set"}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": "jabber:iq:register"});
    objj_msgSend(stanza, "addChildWithName:", "username");
    objj_msgSend(stanza, "addTextNode:", objj_msgSend(objj_msgSend(self._connection, "JID"), "node"));
    objj_msgSend(stanza, "up")
    objj_msgSend(stanza, "addChildWithName:", "password");
    objj_msgSend(stanza, "addTextNode:", aPassword);
    objj_msgSend(stanza, "up")
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didChangePassword:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","CPString"]), new objj_method(sel_getUid("_didChangePassword:"), function $TNStropheClient___didChangePassword_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheClientPasswordChangedNotification, self, aStanza);
    else
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheClientPasswordChangeErrorNotification, self, aStanza);
}
,["void","TNStropheStanza"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("addNamespaceWithName:value:"), function $TNStropheClient__addNamespaceWithName_value_(self, _cmd, aName, aValue)
{
    Strophe.addNamespace(aName, aValue);
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("clientWithService:"), function $TNStropheClient__clientWithService_(self, _cmd, aService)
{
    return objj_msgSend(objj_msgSend(TNStropheClient, "alloc"), "initWithService:", aService);
}
,["TNStropheClient","CPString"]), new objj_method(sel_getUid("clientWithService:JID:password:"), function $TNStropheClient__clientWithService_JID_password_(self, _cmd, aService, aJID, aPassword)
{
    return objj_msgSend(objj_msgSend(TNStropheClient, "alloc"), "initWithService:JID:password:", aService, aJID, aPassword);
}
,["TNStropheClient","CPString","TNStropheJID","CPString"])]);
}
{
var the_class = objj_getClass("TNStropheClient")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNStropheClient\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $TNStropheClient__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheClient").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self._JID = objj_msgSend(aCoder, "decodeObjectForKey:", "_JID");
        self._password = objj_msgSend(aCoder, "decodeObjectForKey:", "_password");
        self._delegate = objj_msgSend(aCoder, "decodeObjectForKey:", "_delegate");
        self._connection = objj_msgSend(aCoder, "decodeObjectForKey:", "_connection");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNStropheClient__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheClient").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self._JID, "_JID");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._password, "_password");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._connection, "_connection");
}
,["void","CPCoder"])]);
}p;21;TNStropheConnection.jt;24052;@STATIC;1.0;I;23;Foundation/Foundation.ji;28;Resources/Strophe/strophe.jsi;25;Resources/Strophe/sha1.jsi;14;TNStropheJID.ji;17;TNStropheStanza.jt;23900;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("Resources/Strophe/strophe.js", YES);
objj_executeFile("Resources/Strophe/sha1.js", YES);
objj_executeFile("TNStropheJID.j", YES);
objj_executeFile("TNStropheStanza.j", YES);
TNStropheConnectionStatusAuthenticatingNotification = "TNStropheConnectionStatusAuthenticatingNotification"
TNStropheConnectionStatusAuthFailureNotification = "TNStropheConnectionStatusAuthFailureNotification";
TNStropheConnectionStatusConnectedNotification = "TNStropheConnectionStatusConnectedNotification";
TNStropheConnectionStatusConnectingNotification = "TNStropheConnectionStatusConnectingNotification";
TNStropheConnectionStatusConnectionFailureNotification = "TNStropheConnectionStatusConnectionFailureNotification";
TNStropheConnectionStatusDisconnectedNotification = "TNStropheConnectionStatusDisconnectedNotification";
TNStropheConnectionStatusDisconnectingNotification = "TNStropheConnectionStatusDisconnectingNotification";
TNStropheConnectionStatusErrorNotification = "TNStropheConnectionStatusErrorNotification";
TNStropheConnectionStatusWillDisconnectNotification = "TNStropheConnectionStatusWillDisconnectNotification";
var TNStropheTimerRunLoopMode = "TNStropheTimerRunLoopMode";
{var the_class = objj_allocateClassPair(CPObject, "TNStropheConnection"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_connected"), new objj_ivar("_password"), new objj_ivar("_giveupTimeout"), new objj_ivar("_currentStatus"), new objj_ivar("_delegate"), new objj_ivar("_connectionTimeout"), new objj_ivar("_maxConnections"), new objj_ivar("_registeredHandlers"), new objj_ivar("_registeredTimedHandlers"), new objj_ivar("_timersIds"), new objj_ivar("_boshService"), new objj_ivar("_userPresenceShow"), new objj_ivar("_userPresenceStatus"), new objj_ivar("_giveUpTimer"), new objj_ivar("_stropheJSRunloopInterval"), new objj_ivar("_connection"), new objj_ivar("_JID")]);

       
       

       
       

       
       








       
       




       
       











objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isConnected"), function $TNStropheConnection__isConnected(self, _cmd)
{
return self._connected;
}
,["BOOL"]), new objj_method(sel_getUid("_setConnected:"), function $TNStropheConnection___setConnected_(self, _cmd, newValue)
{
self._connected = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("password"), function $TNStropheConnection__password(self, _cmd)
{
return self._password;
}
,["CPString"]), new objj_method(sel_getUid("setPassword:"), function $TNStropheConnection__setPassword_(self, _cmd, newValue)
{
self._password = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("giveupTimeout"), function $TNStropheConnection__giveupTimeout(self, _cmd)
{
return self._giveupTimeout;
}
,["float"]), new objj_method(sel_getUid("setGiveupTimeout:"), function $TNStropheConnection__setGiveupTimeout_(self, _cmd, newValue)
{
self._giveupTimeout = newValue;
}
,["void","float"]), new objj_method(sel_getUid("currentStatus"), function $TNStropheConnection__currentStatus(self, _cmd)
{
return self._currentStatus;
}
,["id"]), new objj_method(sel_getUid("_setCurrentStatus:"), function $TNStropheConnection___setCurrentStatus_(self, _cmd, newValue)
{
self._currentStatus = newValue;
}
,["void","id"]), new objj_method(sel_getUid("delegate"), function $TNStropheConnection__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("_setDelegate:"), function $TNStropheConnection___setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("connectionTimeout"), function $TNStropheConnection__connectionTimeout(self, _cmd)
{
return self._connectionTimeout;
}
,["int"]), new objj_method(sel_getUid("setConnectionTimeout:"), function $TNStropheConnection__setConnectionTimeout_(self, _cmd, newValue)
{
self._connectionTimeout = newValue;
}
,["void","int"]), new objj_method(sel_getUid("maxConnections"), function $TNStropheConnection__maxConnections(self, _cmd)
{
return self._maxConnections;
}
,["int"]), new objj_method(sel_getUid("setMaxConnections:"), function $TNStropheConnection__setMaxConnections_(self, _cmd, newValue)
{
self._maxConnections = newValue;
}
,["void","int"]), new objj_method(sel_getUid("initWithService:andDelegate:"), function $TNStropheConnection__initWithService_andDelegate_(self, _cmd, aService, aDelegate)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheConnection").super_class }, "init"))
    {
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class"));
        self._registeredHandlers = objj_msgSend(CPArray, "array");
        self._registeredTimedHandlers = objj_msgSend(CPArray, "array");
        self._connected = NO;
        self._maxConnections = objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNStropheConnectionMaxConnection");
        self._connectionTimeout = objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNStropheConnectionTimeout");
        self._giveupTimeout = objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNStropheConnectionGiveUpTimer");
        self._currentStatus = Strophe.Status.DISCONNECTED;
        self._boshService = aService;
        self._connection = new Strophe.Connection(self._boshService);
        self._delegate = aDelegate;
        self._timersIds = objj_msgSend(CPDictionary, "dictionary");
        self._stropheJSRunloopInterval = objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNStropheJSRunLoopInterval");
        if (objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNStropheJSUseCappuccinoRunLoop") == 1)
        {
            CPLog.info("StropheCappuccino has been compiled to use the Cappuccino runloop. unsing interval of " + self._stropheJSRunloopInterval);
            Strophe.setTimeout = function(f, delay)
            {
                objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
                var timerID = objj_msgSend(self, "getUniqueId"),
                    timer = objj_msgSend(CPTimer, "timerWithTimeInterval:target:selector:userInfo:repeats:", self._stropheJSRunloopInterval, self, sel_getUid("triggerStropheTimer:"), {"function": f, "id": timerID}, NO);
                objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "addTimer:forMode:", timer, CPDefaultRunLoopMode);
                objj_msgSend(self._timersIds, "setObject:forKey:", timer, timerID);
                return timerID;
            }
            Strophe.clearTimeout = function(tid)
            {
                objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
                var timer = objj_msgSend(self._timersIds, "objectForKey:", tid);
                objj_msgSend(timer, "invalidate");
                objj_msgSend(self._timersIds, "removeObjectForKey:", tid);
            }
        }
    }
    return self;
}
,["id","CPString","id"]), new objj_method(sel_getUid("triggerStropheTimer:"), function $TNStropheConnection__triggerStropheTimer_(self, _cmd, aTimer)
{
    objj_msgSend(self._timersIds, "removeObjectForKey:", objj_msgSend(aTimer, "userInfo")["id"]);
    objj_msgSend(aTimer, "userInfo")["function"]();
    objj_msgSend(aTimer, "invalidate");
}
,["void","CPTimer"]), new objj_method(sel_getUid("JID"), function $TNStropheConnection__JID(self, _cmd)
{
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("JID")))
        return objj_msgSend(self._delegate, "JID");
    else
        return self._JID;
}
,["TNStropheJID"]), new objj_method(sel_getUid("connectWithJID:andPassword:"), function $TNStropheConnection__connectWithJID_andPassword_(self, _cmd, aJID, aPassword)
{
    if (self._currentStatus !== Strophe.Status.DISCONNECTED)
        return;
    self._JID = aJID;
    self._connection.connect(objj_msgSend(aJID, "full"), aPassword, function (status, errorCond)
    {
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
        var selector,
            notificationName;
        self._currentStatus = status;
        if (errorCond)
        {
            self._currentStatus = Strophe.Status.DISCONNECTED;
            if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("connection:errorCondition:")))
                objj_msgSend(self._delegate, "connection:errorCondition:", self, errorCond);
        }
        else
        {
            switch (status)
            {
                case Strophe.Status.ERROR:
                    selector = sel_getUid("onStropheError:");
                    notificationName = TNStropheConnectionStatusErrorNotification;
                    break;
                case Strophe.Status.CONNECTING:
                    selector = sel_getUid("onStropheConnecting:");
                    notificationName = TNStropheConnectionStatusConnectingNotification;
                    self._giveUpTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:callback:repeats:", self._giveupTimeout, function(aTimer) {
                            self._currentStatus = Strophe.Status.DISCONNECTED;
                            self._giveUpTimer = nil;
                            objj_msgSend(self, "reset")
                            if ((self._currentStatus === Strophe.Status.CONNECTING) && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("connection:errorCondition:")))
                                objj_msgSend(self._delegate, "connection:errorCondition:", self, "Cannot connect");
                        }, NO);
                    break;
                case Strophe.Status.CONNFAIL:
                    selector = sel_getUid("onStropheConnectFail:");
                    notificationName = TNStropheConnectionStatusConnectionFailureNotification;
                    self._connected = NO;
                    break;
                case Strophe.Status.AUTHENTICATING:
                    selector = sel_getUid("onStropheAuthenticating:");
                    notificationName = TNStropheConnectionStatusAuthenticatingNotification;
                    self._connected = NO;
                    break;
                case Strophe.Status.AUTHFAIL:
                    selector = sel_getUid("onStropheAuthFail:");
                    notificationName = TNStropheConnectionStatusAuthFailureNotification;
                    self._connected = NO;
                    break;
                case Strophe.Status.DISCONNECTING:
                    selector = sel_getUid("onStropheDisconnecting:");
                    notificationName = TNStropheConnectionStatusDisconnectingNotification;
                    self._connected = YES;
                    break;
                case Strophe.Status.DISCONNECTED:
                    objj_msgSend(self, "deleteAllRegisteredSelectors");
                    selector = sel_getUid("onStropheDisconnected:");
                    notificationName = TNStropheConnectionStatusDisconnectedNotification;
                    self._connected = NO;
                    break;
                case Strophe.Status.CONNECTED:
                    selector = sel_getUid("onStropheConnected:");
                    notificationName = TNStropheConnectionStatusConnectedNotification;
                    self._connected = YES;
                    if (self._giveUpTimer)
                        objj_msgSend(self._giveUpTimer, "invalidate");
                    break;
            }
        }
        if (selector && objj_msgSend(self._delegate, "respondsToSelector:", selector))
            objj_msgSend(self._delegate, "performSelector:withObject:", selector, self);
        if (notificationName)
            objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", notificationName, self);
    }, self._connectionTimeout, self._maxConnections);
}
,["void","TNStropheJID","CPString"]), new objj_method(sel_getUid("disconnect"), function $TNStropheConnection__disconnect(self, _cmd)
{
    if (self._currentStatus === Strophe.Status.DISCONNECTED)
        return;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheConnectionStatusWillDisconnectNotification, self);
    self._connection.disconnect();
}
,["void"]), new objj_method(sel_getUid("reset"), function $TNStropheConnection__reset(self, _cmd)
{
    if (self._connection)
        self._connection.reset();
}
,["void"]), new objj_method(sel_getUid("pause"), function $TNStropheConnection__pause(self, _cmd)
{
    if (self._connection)
        self._connection.pause();
}
,["void"]), new objj_method(sel_getUid("resume"), function $TNStropheConnection__resume(self, _cmd)
{
    if (self._connection)
        self._connection.pause();
}
,["void"]), new objj_method(sel_getUid("flush"), function $TNStropheConnection__flush(self, _cmd)
{
    self._connection.flush();
}
,["void"]), new objj_method(sel_getUid("JID"), function $TNStropheConnection__JID(self, _cmd)
{
    return objj_msgSend(self._delegate, "JID");
}
,["TNStropheJID"]), new objj_method(sel_getUid("send:"), function $TNStropheConnection__send_(self, _cmd, aStanza)
{
    if (self._currentStatus == Strophe.Status.CONNECTED)
    {
        CPLog.trace("StropheCappuccino Stanza Send:")
        CPLog.trace(aStanza);
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "performSelector:target:argument:order:modes:", sel_getUid("performSend:"), self, aStanza, 0, [CPDefaultRunLoopMode]);
    }
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("performSend:"), function $TNStropheConnection__performSend_(self, _cmd, aStanza)
{
    self._connection.send(objj_msgSend(aStanza, "tree"));
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("getUniqueId"), function $TNStropheConnection__getUniqueId(self, _cmd)
{
    return objj_msgSend(self, "getUniqueIdWithSuffix:", null);
}
,["CPString"]), new objj_method(sel_getUid("getUniqueIdWithSuffix:"), function $TNStropheConnection__getUniqueIdWithSuffix_(self, _cmd, suffix)
{
    return self._connection.getUniqueId(suffix);
}
,["CPString","CPString"]), new objj_method(sel_getUid("registerSelector:ofObject:withDict:userInfo:handlerDelegate:"), function $TNStropheConnection__registerSelector_ofObject_withDict_userInfo_handlerDelegate_(self, _cmd, aSelector, anObject, aDict, someUserInfo, aHandlerDelegate)
{
    var from = objj_msgSend(objj_msgSend(aDict, "valueForKey:", "from"), "isKindOfClass:", CPString) ? objj_msgSend(aDict, "valueForKey:", "from") : objj_msgSend(objj_msgSend(aDict, "valueForKey:", "from"), "stringValue"),
        handlerId = self._connection.addHandler(function(stanza)
        {
            objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
            var stanzaObject = objj_msgSend(TNStropheStanza, "stanzaWithStanza:", stanza),
                ret;
            if (someUserInfo)
                ret = objj_msgSend(anObject, "performSelector:withObject:withObject:", aSelector, stanzaObject, someUserInfo);
            else
                ret = objj_msgSend(anObject, "performSelector:withObject:", aSelector, stanzaObject);
            CPLog.trace("StropheCappuccino stanza received that trigger selector : " + objj_msgSend(anObject, "class") + "." + aSelector);
            CPLog.trace(stanzaObject);
            delete aDict.options;
            delete someUserInfo;
            if (aHandlerDelegate && objj_msgSend(aHandlerDelegate, "respondsToSelector:", sel_getUid("stropheConnection:performedHandlerId:")))
                objj_msgSend(aHandlerDelegate, "stropheConnection:performedHandlerId:", self, handlerId)
            someUserInfo = nil;
            objj_msgSend(self._registeredHandlers, "removeObject:", handlerId);
            return ret;
        },
        objj_msgSend(aDict, "valueForKey:", "namespace"),
        objj_msgSend(aDict, "valueForKey:", "name"),
        objj_msgSend(aDict, "valueForKey:", "type"),
        objj_msgSend(aDict, "valueForKey:", "id"),
        from,
        objj_msgSend(aDict, "valueForKey:", "options"));
    objj_msgSend(self._registeredHandlers, "addObject:", handlerId);
    return handlerId;
}
,["id","SEL","CPObject","id","id","id"]), new objj_method(sel_getUid("registerSelector:ofObject:withDict:handlerDelegate:"), function $TNStropheConnection__registerSelector_ofObject_withDict_handlerDelegate_(self, _cmd, aSelector, anObject, aDict, aHandlerDelegate)
{
    return objj_msgSend(self, "registerSelector:ofObject:withDict:userInfo:handlerDelegate:", aSelector, anObject, aDict, nil, aHandlerDelegate);
}
,["id","SEL","CPObject","id","id"]), new objj_method(sel_getUid("registerSelector:ofObject:withDict:userInfo:"), function $TNStropheConnection__registerSelector_ofObject_withDict_userInfo_(self, _cmd, aSelector, anObject, aDict, someUserInfo)
{
    return objj_msgSend(self, "registerSelector:ofObject:withDict:userInfo:handlerDelegate:", aSelector, anObject, aDict, someUserInfo, nil);
}
,["id","SEL","CPObject","id","id"]), new objj_method(sel_getUid("registerSelector:ofObject:withDict:"), function $TNStropheConnection__registerSelector_ofObject_withDict_(self, _cmd, aSelector, anObject, aDict)
{
    return objj_msgSend(self, "registerSelector:ofObject:withDict:userInfo:handlerDelegate:", aSelector, anObject, aDict, nil, nil);
}
,["id","SEL","CPObject","id"]), new objj_method(sel_getUid("registerTimeoutSelector:ofObject:withDict:forTimeout:"), function $TNStropheConnection__registerTimeoutSelector_ofObject_withDict_forTimeout_(self, _cmd, aTimeoutSelector, anObject, aDict, aTimeout)
{
    var from = objj_msgSend(objj_msgSend(aDict, "valueForKey:", "from"), "isKindOfClass:", CPString) ? objj_msgSend(aDict, "valueForKey:", "from") : objj_msgSend(objj_msgSend(aDict, "valueForKey:", "from"), "stringValue"),
        handlerId = self._connection.addTimedHandler(aTimeout, function(stanza) {
                if (!stanza)
                {
                    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
                    var ret = objj_msgSend(anObject, "performSelector:", aTimeoutSelector);
                    CPLog.trace("StropheCappuccino stanza timeout that trigger selector : " + objj_msgSend(anObject, "class") + "." + aTimeoutSelector);
                    delete aDict.options;
                    return ret;
                }
                objj_msgSend(self._registeredTimedHandlers, "removeObject:", handlerId);
                return NO;
            },
            objj_msgSend(aDict, "valueForKey:", "namespace"),
            objj_msgSend(aDict, "valueForKey:", "name"),
            objj_msgSend(aDict, "valueForKey:", "type"),
            objj_msgSend(aDict, "valueForKey:", "id"),
            from,
            objj_msgSend(aDict, "valueForKey:", "options"));
    objj_msgSend(self._registeredTimedHandlers, "addObject:", handlerId);
    return handlerId;
}
,["id","SEL","CPObject","id","float"]), new objj_method(sel_getUid("deleteRegisteredSelector:"), function $TNStropheConnection__deleteRegisteredSelector_(self, _cmd, aHandlerId)
{
    self._connection.deleteHandler(aHandlerId);
    objj_msgSend(self._registeredHandlers, "removeObject:", aHandlerId);
}
,["void","id"]), new objj_method(sel_getUid("deleteRegisteredTimedSelector:"), function $TNStropheConnection__deleteRegisteredTimedSelector_(self, _cmd, aTimedHandlerId)
{
    self._connection.deleteTimedHandler(aTimedHandlerId);
    objj_msgSend(self._registeredTimedHandlers, "removeObject:", aTimedHandlerId);
}
,["void","id"]), new objj_method(sel_getUid("deleteAllRegisteredSelectors"), function $TNStropheConnection__deleteAllRegisteredSelectors(self, _cmd)
{
    for (var i = 0; i < objj_msgSend(self._registeredHandlers, "count"); i++)
        objj_msgSend(self, "deleteRegisteredSelector:", objj_msgSend(self._registeredHandlers, "objectAtIndex:", i));
    for (var i = 0; i < objj_msgSend(self._registeredTimedHandlers, "count"); i++)
        objj_msgSend(self, "deleteRegisteredTimedSelector:", objj_msgSend(self._registeredTimedHandlers, "objectAtIndex:", i));
    objj_msgSend(self._registeredHandlers, "removeAllObjects");
    objj_msgSend(self._registeredTimedHandlers, "removeAllObjects");
}
,["void"]), new objj_method(sel_getUid("rawInputRegisterSelector:ofObject:"), function $TNStropheConnection__rawInputRegisterSelector_ofObject_(self, _cmd, aSelector, anObject)
{
    self._connection.xmlInput = function(elem) {
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
        objj_msgSend(anObject, "performSelector:withObject:", aSelector, objj_msgSend(TNStropheStanza, "nodeWithXMLNode:", elem));
    }
}
,["void","SEL","id"]), new objj_method(sel_getUid("removeRawInputSelector"), function $TNStropheConnection__removeRawInputSelector(self, _cmd)
{
    self._connection.xmlInput = function(elem){
        return;
    };
}
,["void"]), new objj_method(sel_getUid("rawOutputRegisterSelector:ofObject:"), function $TNStropheConnection__rawOutputRegisterSelector_ofObject_(self, _cmd, aSelector, anObject)
{
    self._connection.xmlOutput = function(elem) {
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
        objj_msgSend(anObject, "performSelector:withObject:", aSelector, objj_msgSend(TNStropheStanza, "nodeWithXMLNode:", elem));
    }
}
,["void","SEL","id"]), new objj_method(sel_getUid("removeRawOutputSelector"), function $TNStropheConnection__removeRawOutputSelector(self, _cmd)
{
    self._connection.xmlOutput = function(elem){
        return;
    };
}
,["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("addNamespaceWithName:value:"), function $TNStropheConnection__addNamespaceWithName_value_(self, _cmd, aName, aValue)
{
    Strophe.addNamespace(aName, aValue);
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("connectionWithService:andDelegate:"), function $TNStropheConnection__connectionWithService_andDelegate_(self, _cmd, aService, aDelegate)
{
    return objj_msgSend(objj_msgSend(TNStropheConnection, "alloc"), "initWithService:andDelegate:", aService, aDelegate);
}
,["TNStropheConnection","CPString","id"])]);
}
{
var the_class = objj_getClass("TNStropheConnection")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNStropheConnection\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $TNStropheConnection__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheConnection").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self._delegate = objj_msgSend(aCoder, "decodeObjectForKey:", "_delegate");
        self._boshService = objj_msgSend(aCoder, "decodeObjectForKey:", "_boshService");
        self._connection = objj_msgSend(aCoder, "decodeObjectForKey:", "_connection");
        self._registeredHandlers = objj_msgSend(aCoder, "decodeObjectForKey:", "_registeredHandlers");
        self._registeredTimedHandlers = objj_msgSend(aCoder, "decodeObjectForKey:", "_registeredTimedHandlers");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNStropheConnection__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", self._boshService, "_boshService");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._connection, "_connection");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._registeredHandlers, "_registeredHandlers");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._registeredTimedHandlers, "_registeredTimedHandlers");
}
,["void","CPCoder"])]);
}p;18;TNStropheContact.jt;32259;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPImage.ji;21;TNStropheConnection.ji;16;TNStropheGroup.ji;14;TNStropheJID.ji;16;TNStropheVCard.jt;32103;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("TNStropheConnection.j", YES);
objj_executeFile("TNStropheGroup.j", YES);
objj_executeFile("TNStropheJID.j", YES);
objj_executeFile("TNStropheVCard.j", YES);
TNStropheContactStatusAway = "away";
TNStropheContactStatusBusy = "xa";
TNStropheContactStatusDND = "dnd";
TNStropheContactStatusOffline = "offline";
TNStropheContactStatusOnline = "online";
TNStropheContactGroupUpdatedNotification = "TNStropheContactGroupUpdatedNotification";
TNStropheContactMessageActiveNotification = "TNStropheContactMessageActiveNotification";
TNStropheContactMessageComposingNotification = "TNStropheContactMessageComposingNotification";
TNStropheContactMessageGoneNotification = "TNStropheContactMessageGoneNotification";
TNStropheContactMessageInactiveNotification = "TNStropheContactMessageInactiveNotification";
TNStropheContactMessagePausedNotification = "TNStropheContactMessagePausedNotification";
TNStropheContactMessageReceivedNotification = "TNStropheContactMessageReceivedNotification";
TNStropheContactMessageSentNotification = "TNStropheContactMessageSentNotification";
TNStropheContactMessageTreatedNotification = "TNStropheContactMessageTreatedNotification";
TNStropheContactNicknameUpdatedNotification = "TNStropheContactNicknameUpdatedNotification";
TNStropheContactPresenceUpdatedNotification = "TNStropheContactPresenceUpdatedNotification";
TNStropheContactStanzaSentNotification = "TNStropheContactStanzaSentNotification"
TNStropheContactSubscriptionUpdatedNotification = "TNStropheContactSubscriptionUpdatedNotification";
TNStropheContactVCardReceivedNotification = "TNStropheContactVCardReceivedNotification";
var TNStropheContactDelegate_avatarForContact_ = 1 << 0;
TNStropheContactImageOffline = nil;
TNStropheContactImageOnline = nil;
TNStropheContactImageBusy = nil;
TNStropheContactImageAway = nil;
TNStropheContactImageDND = nil;
TNStropheContactImageNewMessage = nil;
TNStropheContactImageNewError = nil;
{var the_class = objj_allocateClassPair(CPObject, "TNStropheContact"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_groups"), new objj_ivar("_messagesQueue"), new objj_ivar("_resources"), new objj_ivar("_avatar"), new objj_ivar("_statusIcon"), new objj_ivar("_numberOfEvents"), new objj_ivar("_nickname"), new objj_ivar("_nodeName"), new objj_ivar("_subscription"), new objj_ivar("_type"), new objj_ivar("_XMPPShow"), new objj_ivar("_XMPPStatus"), new objj_ivar("_delegate"), new objj_ivar("_connection"), new objj_ivar("_JID"), new objj_ivar("_vCard"), new objj_ivar("_askingVCard"), new objj_ivar("_isComposing"), new objj_ivar("_statusReminder"), new objj_ivar("_implementedDelegateMethods")]);
       
       


       
       


       
       





       
       




       
       



       
       














       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("groups"), function $TNStropheContact__groups(self, _cmd)
{
return self._groups;
}
,["CPArray"]), new objj_method(sel_getUid("setGroups:"), function $TNStropheContact__setGroups_(self, _cmd, newValue)
{
self._groups = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("messagesQueue"), function $TNStropheContact__messagesQueue(self, _cmd)
{
return self._messagesQueue;
}
,["CPArray"]), new objj_method(sel_getUid("setMessagesQueue:"), function $TNStropheContact__setMessagesQueue_(self, _cmd, newValue)
{
self._messagesQueue = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("resources"), function $TNStropheContact__resources(self, _cmd)
{
return self._resources;
}
,["CPArray"]), new objj_method(sel_getUid("setResources:"), function $TNStropheContact__setResources_(self, _cmd, newValue)
{
self._resources = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("avatar"), function $TNStropheContact__avatar(self, _cmd)
{
return self._avatar;
}
,["CPImage"]), new objj_method(sel_getUid("setAvatar:"), function $TNStropheContact__setAvatar_(self, _cmd, newValue)
{
self._avatar = newValue;
}
,["void","CPImage"]), new objj_method(sel_getUid("statusIcon"), function $TNStropheContact__statusIcon(self, _cmd)
{
return self._statusIcon;
}
,["CPImage"]), new objj_method(sel_getUid("setStatusIcon:"), function $TNStropheContact__setStatusIcon_(self, _cmd, newValue)
{
self._statusIcon = newValue;
}
,["void","CPImage"]), new objj_method(sel_getUid("numberOfEvents"), function $TNStropheContact__numberOfEvents(self, _cmd)
{
return self._numberOfEvents;
}
,["CPNumber"]), new objj_method(sel_getUid("setNumberOfEvents:"), function $TNStropheContact__setNumberOfEvents_(self, _cmd, newValue)
{
self._numberOfEvents = newValue;
}
,["void","CPNumber"]), new objj_method(sel_getUid("nickname"), function $TNStropheContact__nickname(self, _cmd)
{
return self._nickname;
}
,["CPString"]), new objj_method(sel_getUid("setNickname:"), function $TNStropheContact__setNickname_(self, _cmd, newValue)
{
self._nickname = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("nodeName"), function $TNStropheContact__nodeName(self, _cmd)
{
return self._nodeName;
}
,["CPString"]), new objj_method(sel_getUid("setNodeName:"), function $TNStropheContact__setNodeName_(self, _cmd, newValue)
{
self._nodeName = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("subscription"), function $TNStropheContact__subscription(self, _cmd)
{
return self._subscription;
}
,["CPString"]), new objj_method(sel_getUid("setSubscription:"), function $TNStropheContact__setSubscription_(self, _cmd, newValue)
{
self._subscription = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("type"), function $TNStropheContact__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNStropheContact__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("XMPPShow"), function $TNStropheContact__XMPPShow(self, _cmd)
{
return self._XMPPShow;
}
,["CPString"]), new objj_method(sel_getUid("setXMPPShow:"), function $TNStropheContact__setXMPPShow_(self, _cmd, newValue)
{
self._XMPPShow = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("XMPPStatus"), function $TNStropheContact__XMPPStatus(self, _cmd)
{
return self._XMPPStatus;
}
,["CPString"]), new objj_method(sel_getUid("setXMPPStatus:"), function $TNStropheContact__setXMPPStatus_(self, _cmd, newValue)
{
self._XMPPStatus = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("delegate"), function $TNStropheContact__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("_setDelegate:"), function $TNStropheContact___setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("connection"), function $TNStropheContact__connection(self, _cmd)
{
return self._connection;
}
,["TNStropheConnection"]), new objj_method(sel_getUid("setConnection:"), function $TNStropheContact__setConnection_(self, _cmd, newValue)
{
self._connection = newValue;
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("JID"), function $TNStropheContact__JID(self, _cmd)
{
return self._JID;
}
,["TNStropheJID"]), new objj_method(sel_getUid("setJID:"), function $TNStropheContact__setJID_(self, _cmd, newValue)
{
self._JID = newValue;
}
,["void","TNStropheJID"]), new objj_method(sel_getUid("vCard"), function $TNStropheContact__vCard(self, _cmd)
{
return self._vCard;
}
,["TNStropheVCard"]), new objj_method(sel_getUid("setVCard:"), function $TNStropheContact__setVCard_(self, _cmd, newValue)
{
self._vCard = newValue;
}
,["void","TNStropheVCard"]), new objj_method(sel_getUid("initWithConnection:JID:group:"), function $TNStropheContact__initWithConnection_JID_group_(self, _cmd, aConnection, aJID, aGroup)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheContact").super_class }, "init"))
    {
        self._type = "contact";
        self._connection = aConnection;
        self._messagesQueue = objj_msgSend(CPArray, "array");
        self._numberOfEvents = 0;
        self._isComposing = NO;
        self._askingVCard = NO;
        self._resources = objj_msgSend(CPArray, "array");
        self._groups = objj_msgSend(CPArray, "array");
        objj_msgSend(self, "setNickname:", objj_msgSend(self._JID, "bare"));
        objj_msgSend(self, "setJID:", aJID);
        objj_msgSend(self, "setXMPPStatus:", "Offline");
        objj_msgSend(self, "setXMPPShow:", TNStropheContactStatusOffline);
        objj_msgSend(self, "setStatusIcon:", TNStropheContactImageOffline);
        if (aGroup)
            objj_msgSend(self._groups, "addObject:", aGroup);
    }
    return self;
}
,["id","TNStropheConnection","TNStropheJID","TNStropheGroup"]), new objj_method(sel_getUid("setDelegate:"), function $TNStropheContact__setDelegate_(self, _cmd, aDelegate)
{
    if (aDelegate == self._delegate)
        return;
    self._delegate = aDelegate;
    self._implementedDelegateMethods = 0;
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("avatarForContact:")))
        self._implementedDelegateMethods |= TNStropheContactDelegate_avatarForContact_;
}
,["void","id"]), new objj_method(sel_getUid("name"), function $TNStropheContact__name(self, _cmd)
{
    return objj_msgSend(self._vCard, "fullName") || self._nickname;
}
,["CPString"]), new objj_method(sel_getUid("_didReceivePresence:"), function $TNStropheContact___didReceivePresence_(self, _cmd, aStanza)
{
    var resource = objj_msgSend(aStanza, "fromResource"),
        presenceStatus = objj_msgSend(aStanza, "firstChildWithName:", "status");
    if (resource && (typeof(resource) != "undefined") && resource != "")
    {
        if (!objj_msgSend(self._resources, "containsObject:", resource))
            objj_msgSend(self._resources, "addObject:", resource);
        objj_msgSend(self._JID, "setResource:", resource);
    }
    switch (objj_msgSend(aStanza, "type"))
    {
        case "error":
            var errorCode = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "error"), "valueForAttribute:", "code");
            objj_msgSend(self, "setXMPPShow:", TNStropheContactStatusOffline);
            objj_msgSend(self, "setXMPPStatus:", "Error code: " + errorCode);
            objj_msgSend(self, "setStatusIcon:", TNStropheContactImageNewError);
            self._statusReminder = TNStropheContactImageNewError;
            return NO;
        case "unavailable":
            objj_msgSend(self._resources, "removeObject:", resource);
            CPLogConsole("contact become unavailable from resource: " + resource + ". Resources left : " + self._resources + "("+ objj_msgSend(self._resources, "count") + ")");
            if (objj_msgSend(self._resources, "count") == 0)
            {
                objj_msgSend(self, "setXMPPShow:", TNStropheContactStatusOffline);
                objj_msgSend(self, "setStatusIcon:", TNStropheContactImageOffline);
                self._statusReminder = TNStropheContactImageOffline;
                if (presenceStatus)
                    objj_msgSend(self, "setXMPPStatus:", objj_msgSend(presenceStatus, "text"));
                else
                    objj_msgSend(self, "setXMPPStatus:", "Offline");
            }
            else
                objj_msgSend(self._JID, "setResource:", objj_msgSend(self._resources, "lastObject"));
            break;
        case "subscribe":
            objj_msgSend(self, "setXMPPStatus:", "Asking subscribtion");
            objj_msgSend(self, "setSubscription:", objj_msgSend(aStanza, "type"));
            break;
        case "subscribed":
            objj_msgSend(self, "setSubscription:", objj_msgSend(aStanza, "type"));
            break;
        case "unsubscribe":
            objj_msgSend(self, "setSubscription:", objj_msgSend(aStanza, "type"));
            break;
        case "unsubscribed":
            objj_msgSend(self, "setSubscription:", objj_msgSend(aStanza, "type"));
            objj_msgSend(self, "setXMPPStatus:", "Unauthorized");
            break;
        default:
            objj_msgSend(self, "setXMPPShow:", TNStropheContactStatusOnline);
            objj_msgSend(self, "setStatusIcon:", TNStropheContactImageOnline);
            objj_msgSend(self, "setSubscription:", "subscribed");
            self._statusReminder = TNStropheContactImageOnline;
            if (objj_msgSend(aStanza, "firstChildWithName:", "show"))
            {
                objj_msgSend(self, "setXMPPShow:", objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "show"), "text"));
                switch (self._XMPPShow)
                {
                    case TNStropheContactStatusBusy:
                        objj_msgSend(self, "setStatusIcon:", TNStropheContactImageBusy);
                        self._statusReminder = TNStropheContactImageBusy;
                        break;
                    case TNStropheContactStatusAway:
                        objj_msgSend(self, "setStatusIcon:", TNStropheContactImageAway);
                        self._statusReminder = TNStropheContactImageAway;
                        break;
                    case TNStropheContactStatusDND:
                        objj_msgSend(self, "setStatusIcon:", TNStropheContactImageDND);
                        self._statusReminder = TNStropheContactImageDND;
                        break;
                }
            }
            if (self._numberOfEvents > 0)
                objj_msgSend(self, "setStatusIcon:", TNStropheContactImageNewMessage);
            if (presenceStatus)
                objj_msgSend(self, "setXMPPStatus:", objj_msgSend(presenceStatus, "text"));
            else
                objj_msgSend(self, "setXMPPStatus:", "Online");
            if (objj_msgSend(aStanza, "firstChildWithName:", "x")
                && objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "x"), "valueForAttribute:", "xmlns") == "vcard-temp:x:update"
                && !objj_msgSend(aStanza, "firstChildWithName:", "delay"))
            {
                objj_msgSend(self, "getVCard");
            }
            break;
    }
    if (!(objj_msgSend(aStanza, "firstChildWithName:", "x") && objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "x"), "valueForAttribute:", "xmlns") == "vcard-temp:x:update"))
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheContactPresenceUpdatedNotification, self);
    return YES;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("sendStatus:"), function $TNStropheContact__sendStatus_(self, _cmd, aStatus)
{
    var statusStanza = objj_msgSend(TNStropheStanza, "messageTo:withAttributes:", self._JID, {"type": "chat"});
    objj_msgSend(statusStanza, "addChildWithName:andAttributes:", aStatus, {"xmlns": "http://jabber.org/protocol/chatstates"});
    objj_msgSend(self, "sendStanza:andRegisterSelector:ofObject:", statusStanza, sel_getUid("_didSendStatus:"), self);
}
,["void","CPString"]), new objj_method(sel_getUid("_didSendStatus:"), function $TNStropheContact___didSendStatus_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "error")
        CPLog.error("Unable to send status. Resp is: " + aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("sendComposing"), function $TNStropheContact__sendComposing(self, _cmd)
{
    if (self._isComposing)
        return;
    objj_msgSend(self, "sendStatus:", "composing");
    self._isComposing = YES;
}
,["void"]), new objj_method(sel_getUid("sendComposePaused"), function $TNStropheContact__sendComposePaused(self, _cmd)
{
    objj_msgSend(self, "sendStatus:", "paused");
    self._isComposing = NO;
}
,["void"]), new objj_method(sel_getUid("subscribe"), function $TNStropheContact__subscribe(self, _cmd)
{
    objj_msgSend(self._connection, "send:", objj_msgSend(TNStropheStanza, "presenceTo:withAttributes:bare:", self._JID, {"type": "subscribed"}, YES));
}
,["void"]), new objj_method(sel_getUid("unsubscribe"), function $TNStropheContact__unsubscribe(self, _cmd)
{
    objj_msgSend(self._connection, "send:", objj_msgSend(TNStropheStanza, "presenceTo:withAttributes:bare:", self._JID, {"type": "unsubscribed"}, YES));
}
,["void"]), new objj_method(sel_getUid("askSubscription"), function $TNStropheContact__askSubscription(self, _cmd)
{
    objj_msgSend(self._connection, "send:", objj_msgSend(TNStropheStanza, "presenceTo:withAttributes:bare:", self._JID, {"type": "subscribe"}, YES));
}
,["void"]), new objj_method(sel_getUid("setSubscription:"), function $TNStropheContact__setSubscription_(self, _cmd, aSubscription)
{
    objj_msgSend(self, "willChangeValueForKey:", "subscription");
    self._subscription = aSubscription;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheContactSubscriptionUpdatedNotification, self);
    objj_msgSend(self, "didChangeValueForKey:", "subscription");
}
,["void","CPString"]), new objj_method(sel_getUid("description"), function $TNStropheContact__description(self, _cmd)
{
    return self._nickname;
}
,["CPString"]), new objj_method(sel_getUid("getVCard"), function $TNStropheContact__getVCard(self, _cmd)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        vcardStanza = objj_msgSend(TNStropheStanza, "iqTo:withAttributes:bare:", self._JID, {"type": "get", "id": uid}, YES),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(vcardStanza, "addChildWithName:andAttributes:", "vCard", {"xmlns": "vcard-temp"});
    self._askingVCard = YES;
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didReceiveVCard:"), self, params);
    objj_msgSend(self._connection, "send:", vcardStanza);
}
,["void"]), new objj_method(sel_getUid("_didReceiveVCard:"), function $TNStropheContact___didReceiveVCard_(self, _cmd, aStanza)
{
    var aVCard = objj_msgSend(aStanza, "firstChildWithName:", "vCard");
    self._askingVCard = NO;
    self._avatar = nil;
    if (aVCard)
    {
        var VCARD = objj_msgSend(objj_msgSend(TNStropheVCard, "alloc"), "initWithXMLNode:", aVCard);
        if (!self._nickname || (self._nickname == objj_msgSend(self._JID, "bare")) || (self._nickname == objj_msgSend(self._JID, "node")))
            objj_msgSend(self, "setNickname:", objj_msgSend(VCARD, "fullName") || objj_msgSend(self._JID, "node"))
        if (objj_msgSend(VCARD, "photo"))
            objj_msgSend(self, "setAvatar:", objj_msgSend(VCARD, "photo"));
        else if (self._implementedDelegateMethods & TNStropheContactDelegate_avatarForContact_)
            objj_msgSend(self, "setAvatar:", objj_msgSend(self._delegate, "avatarForContact:", self));
        objj_msgSend(self, "willChangeValueForKey:", "name");
        objj_msgSend(self, "setVCard:", VCARD);
        objj_msgSend(self, "didChangeValueForKey:", "name");
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheContactVCardReceivedNotification, self);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("sendStanza:"), function $TNStropheContact__sendStanza_(self, _cmd, aStanza)
{
    objj_msgSend(self, "sendStanza:withUserInfo:", aStanza, nil);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("sendStanza:withUserInfo:"), function $TNStropheContact__sendStanza_withUserInfo_(self, _cmd, aStanza, userInfo)
{
    objj_msgSend(aStanza, "setTo:", self._JID);
    objj_msgSend(self._connection, "send:", aStanza);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheContactStanzaSentNotification, self, userInfo);
}
,["void","TNStropheStanza","CPDictionary"]), new objj_method(sel_getUid("sendStanza:andRegisterSelector:ofObject:withSpecificID:userInfo:handlerDelegate:"), function $TNStropheContact__sendStanza_andRegisterSelector_ofObject_withSpecificID_userInfo_handlerDelegate_(self, _cmd, aStanza, aSelector, anObject, anId, someUserInfo, aDelegate)
{
    var params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", anId, "id"),
        userInfo = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", aStanza, "stanza", anId, "id"),
        ret;
    objj_msgSend(aStanza, "setID:", anId);
    if (aSelector && someUserInfo && aDelegate)
        ret = objj_msgSend(self._connection, "registerSelector:ofObject:withDict:userInfo:handlerDelegate:", aSelector, anObject, params, someUserInfo, aDelegate);
    else if (aSelector && !someUserInfo && aDelegate)
        ret = objj_msgSend(self._connection, "registerSelector:ofObject:withDict:handlerDelegate:", aSelector, anObject, params, aDelegate);
    else if (aSelector && someUserInfo && !aDelegate)
        ret = objj_msgSend(self._connection, "registerSelector:ofObject:withDict:userInfo:", aSelector, anObject, params, someUserInfo);
    else if (aSelector && !someUserInfo && !aDelegate)
        ret = objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", aSelector, anObject, params);
    objj_msgSend(self, "sendStanza:withUserInfo:", aStanza, userInfo);
    return ret;
}
,["id","TNStropheStanza","SEL","id","id","id","id"]), new objj_method(sel_getUid("sendStanza:andRegisterSelector:ofObject:"), function $TNStropheContact__sendStanza_andRegisterSelector_ofObject_(self, _cmd, aStanza, aSelector, anObject)
{
    return objj_msgSend(self, "sendStanza:andRegisterSelector:ofObject:withSpecificID:userInfo:handlerDelegate:", aStanza, aSelector, anObject, objj_msgSend(self._connection, "getUniqueId"), nil, nil);
}
,["id","TNStropheStanza","SEL","id"]), new objj_method(sel_getUid("sendStanza:andRegisterSelector:ofObject:withSpecificID:"), function $TNStropheContact__sendStanza_andRegisterSelector_ofObject_withSpecificID_(self, _cmd, aStanza, aSelector, anObject, anId)
{
    return objj_msgSend(self, "sendStanza:andRegisterSelector:ofObject:withSpecificID:userInfo:handlerDelegate:", aStanza, aSelector, anObject, anId, nil, nil);
}
,["id","TNStropheStanza","SEL","id","int"]), new objj_method(sel_getUid("sendStanza:andRegisterSelector:ofObject:userInfo:"), function $TNStropheContact__sendStanza_andRegisterSelector_ofObject_userInfo_(self, _cmd, aStanza, aSelector, anObject, someUserInfo)
{
    return objj_msgSend(self, "sendStanza:andRegisterSelector:ofObject:withSpecificID:userInfo:handlerDelegate:", aStanza, aSelector, anObject, objj_msgSend(self._connection, "getUniqueId"), someUserInfo, nil);
}
,["id","TNStropheStanza","SEL","id","id"]), new objj_method(sel_getUid("sendStanza:andRegisterSelector:ofObject:handlerDelegate:"), function $TNStropheContact__sendStanza_andRegisterSelector_ofObject_handlerDelegate_(self, _cmd, aStanza, aSelector, anObject, aDelegate)
{
    return objj_msgSend(self, "sendStanza:andRegisterSelector:ofObject:withSpecificID:userInfo:handlerDelegate:", aStanza, aSelector, anObject, objj_msgSend(self._connection, "getUniqueId"), nil, aDelegate);
}
,["id","TNStropheStanza","SEL","id","id"]), new objj_method(sel_getUid("getMessages"), function $TNStropheContact__getMessages(self, _cmd)
{
    var params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", "message", "name", objj_msgSend(self._JID, "bare"), "from", {matchBare: true}, "options");
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didReceiveMessage:"), self, params);
}
,["void"]), new objj_method(sel_getUid("_didReceiveMessage:"), function $TNStropheContact___didReceiveMessage_(self, _cmd, aStanza)
{
    var center = objj_msgSend(CPNotificationCenter, "defaultCenter"),
        userInfo = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", aStanza, "stanza", objj_msgSend(CPDate, "date"), "date");
    if (objj_msgSend(aStanza, "containsChildrenWithName:", "composing"))
        objj_msgSend(center, "postNotificationName:object:userInfo:", TNStropheContactMessageComposingNotification, self, userInfo);
    if (objj_msgSend(aStanza, "containsChildrenWithName:", "paused"))
        objj_msgSend(center, "postNotificationName:object:userInfo:", TNStropheContactMessagePausedNotification, self, userInfo);
    if (objj_msgSend(aStanza, "containsChildrenWithName:", "active"))
        objj_msgSend(center, "postNotificationName:object:userInfo:", TNStropheContactMessageActiveNotification, self, userInfo);
    if (objj_msgSend(aStanza, "containsChildrenWithName:", "inactive"))
        objj_msgSend(center, "postNotificationName:object:userInfo:", TNStropheContactMessageInactiveNotification, self, userInfo);
    if (objj_msgSend(aStanza, "containsChildrenWithName:", "gone"))
        objj_msgSend(center, "postNotificationName:object:userInfo:", TNStropheContactMessageGoneNotification, self, userInfo);
    if (objj_msgSend(aStanza, "containsChildrenWithName:", "body"))
    {
        self._statusIcon = TNStropheContactImageNewMessage;
        objj_msgSend(self._messagesQueue, "addObject:", aStanza);
        self._numberOfEvents++;
        objj_msgSend(center, "postNotificationName:object:userInfo:", TNStropheContactMessageReceivedNotification, self, userInfo);
    }
    return YES;
}
,["BOOL","id"]), new objj_method(sel_getUid("sendMessage:"), function $TNStropheContact__sendMessage_(self, _cmd, aMessage)
{
    objj_msgSend(self, "sendMessage:withType:", aMessage, "chat");
}
,["void","CPString"]), new objj_method(sel_getUid("sendMessage:withType:"), function $TNStropheContact__sendMessage_withType_(self, _cmd, aMessage, aType)
{
    var messageStanza = objj_msgSend(TNStropheStanza, "messageWithAttributes:", {"type":aType});
    objj_msgSend(messageStanza, "addChildWithName:", "body");
    objj_msgSend(messageStanza, "addTextNode:", aMessage);
    objj_msgSend(self, "sendStanza:andRegisterSelector:ofObject:", messageStanza, sel_getUid("_didSendMessage:"), self);
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("_didSendMessage:"), function $TNStropheContact___didSendMessage_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "error")
        CPLog.error("Unable to send message. Resp is: " + aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("popMessagesQueue"), function $TNStropheContact__popMessagesQueue(self, _cmd)
{
    if (objj_msgSend(self._messagesQueue, "count") == 0)
        return;
    var message = objj_msgSend(self._messagesQueue, "objectAtIndex:", 0);
    self._numberOfEvents--;
    if (self._numberOfEvents === 0)
        self._statusIcon = self._statusReminder;
    objj_msgSend(self._messagesQueue, "removeObjectAtIndex:", 0);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheContactMessageTreatedNotification, self);
    return message;
}
,["TNStropheStanza"]), new objj_method(sel_getUid("freeMessagesQueue"), function $TNStropheContact__freeMessagesQueue(self, _cmd)
{
    self._numberOfEvents = 0;
    objj_msgSend(self, "setStatusIcon:", self._statusReminder);
    objj_msgSend(self._messagesQueue, "removeAllObjects");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheContactMessageTreatedNotification, self);
}
,["void"]), new objj_method(sel_getUid("imageDidLoad:"), function $TNStropheContact__imageDidLoad_(self, _cmd, anImage)
{
    objj_msgSend(anImage, "setDelegate:", nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheContactVCardReceivedNotification, self);
}
,["void","CPImage"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("contactWithConnection:JID:group:"), function $TNStropheContact__contactWithConnection_JID_group_(self, _cmd, aConnection, aJID, aGroup)
{
    return objj_msgSend(objj_msgSend(TNStropheContact, "alloc"), "initWithConnection:JID:group:", aConnection, aJID, aGroup);
}
,["TNStropheContact","TNStropheConnection","TNStropheJID","TNStropheGroup"]), new objj_method(sel_getUid("initialize"), function $TNStropheContact__initialize(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", TNStropheContact);
    TNStropheContactImageOffline = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "gray.png"), CGSizeMake(8.0, 8.0));
    TNStropheContactImageOnline = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "green.png"), CGSizeMake(8.0, 8.0));
    TNStropheContactImageBusy = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "red.png"), CGSizeMake(8.0, 8.0));
    TNStropheContactImageAway = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "orange.png"), CGSizeMake(8.0, 8.0));
    TNStropheContactImageDND = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "black.png"), CGSizeMake(8.0, 8.0));
    TNStropheContactImageNewMessage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "blue.png"), CGSizeMake(8.0, 8.0));
    TNStropheContactImageNewError = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "error.png"), CGSizeMake(8.0, 8.0));
}
,["void"])]);
}
{
var the_class = objj_getClass("TNStropheContact")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNStropheContact\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $TNStropheContact__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheContact").super_class }, "init"))
    {
        self._JID = objj_msgSend(aCoder, "decodeObjectForKey:", "_JID");
        self._nodeName = objj_msgSend(aCoder, "decodeObjectForKey:", "_nodeName");
        self._groups = objj_msgSend(aCoder, "decodeObjectForKey:", "_groups");
        self._nickname = objj_msgSend(aCoder, "decodeObjectForKey:", "_nickname");
        self._XMPPStatus = objj_msgSend(aCoder, "decodeObjectForKey:", "_XMPPStatus");
        self._resources = objj_msgSend(aCoder, "decodeObjectForKey:", "_resources");
        self._XMPPShow = objj_msgSend(aCoder, "decodeObjectForKey:", "_XMPPShow");
        self._statusIcon = objj_msgSend(aCoder, "decodeObjectForKey:", "_statusIcon");
        self._type = objj_msgSend(aCoder, "decodeObjectForKey:", "_type");
        self._vCard = objj_msgSend(aCoder, "decodeObjectForKey:", "_vCard");
        self._numberOfEvents = objj_msgSend(aCoder, "decodeObjectForKey:", "_numberOfEvents");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNStropheContact__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", self._JID, "_JID");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._nodeName, "_nodeName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._groups, "_groups");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._nickname, "_nickname");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._XMPPStatus, "_XMPPStatus");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._XMPPShow, "_XMPPShow");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._type, "_type");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._statusIcon, "_statusIcon");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._messagesQueue, "_messagesQueue");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._numberOfEvents, "_numberOfEvents");
    if (self._resources)
        objj_msgSend(aCoder, "encodeObject:forKey:", self._resources, "_resources");
    if (self._vCard)
        objj_msgSend(aCoder, "encodeObject:forKey:", self._vCard, "_vCard");
}
,["void","CPCoder"])]);
}p;16;TNStropheGroup.jt;7658;@STATIC;1.0;I;23;Foundation/Foundation.jt;7611;objj_executeFile("Foundation/Foundation.j", NO);
//@global TNStropheRosterRosterDelimiter
TNStropheGroupRemovedNotification = "TNStropheGroupRemoved";
{var the_class = objj_allocateClassPair(CPObject, "TNStropheGroup"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_subGroups"), new objj_ivar("_contacts"), new objj_ivar("_name"), new objj_ivar("_parentGroup")]);

       
       

       
       

       
       





       
       




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("subGroups"), function $TNStropheGroup__subGroups(self, _cmd)
{
return self._subGroups;
}
,["CPArray"]), new objj_method(sel_getUid("_setSubGroups:"), function $TNStropheGroup___setSubGroups_(self, _cmd, newValue)
{
self._subGroups = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("contacts"), function $TNStropheGroup__contacts(self, _cmd)
{
return self._contacts;
}
,["CPArray"]), new objj_method(sel_getUid("setContacts:"), function $TNStropheGroup__setContacts_(self, _cmd, newValue)
{
self._contacts = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("name"), function $TNStropheGroup__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNStropheGroup__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("parentGroup"), function $TNStropheGroup__parentGroup(self, _cmd)
{
return self._parentGroup;
}
,["TNStropheGroup"]), new objj_method(sel_getUid("setParentGroup:"), function $TNStropheGroup__setParentGroup_(self, _cmd, newValue)
{
self._parentGroup = newValue;
}
,["void","TNStropheGroup"]), new objj_method(sel_getUid("initWithName:"), function $TNStropheGroup__initWithName_(self, _cmd, aName)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheGroup").super_class }, "init"))
    {
        self._contacts = objj_msgSend(CPArray, "array");
        self._subGroups = objj_msgSend(CPArray, "array");
        self._name = aName;
        self._parentGroup = nil;
    }
    return self;
}
,["TNStropheGroup","CPString"]), new objj_method(sel_getUid("description"), function $TNStropheGroup__description(self, _cmd)
{
    return self._name;
}
,["CPString"]), new objj_method(sel_getUid("contactWithJID:matchBare:"), function $TNStropheGroup__contactWithJID_matchBare_(self, _cmd, aJID, matchBare)
{
    for (var i = 0; i < objj_msgSend(self._contacts, "count"); i++)
    {
        if (matchBare)
        {
            if (objj_msgSend(objj_msgSend(objj_msgSend(self._contacts, "objectAtIndex:", i), "JID"), "bareEquals:", aJID))
                return objj_msgSend(self._contacts, "objectAtIndex:", i);
        }
        else
        {
            if (objj_msgSend(objj_msgSend(objj_msgSend(self._contacts, "objectAtIndex:", i), "JID"), "fullEquals:", aJID))
                return objj_msgSend(self._contacts, "objectAtIndex:", i);
        }
    }
    return nil;
}
,["TNStropheContact","TNStropheJID","BOOL"]), new objj_method(sel_getUid("addSubGroup:"), function $TNStropheGroup__addSubGroup_(self, _cmd, aGroup)
{
    if (!objj_msgSend(aGroup, "isKindOfClass:", TNStropheGroup))
        objj_msgSend(CPException, "raise:reason:", "Invalid Object", "addSubGroup only supports to add TNStropheGroups");
    objj_msgSend(aGroup, "setParentGroup:", self);
    objj_msgSend(self._subGroups, "addObject:", aGroup);
}
,["void","TNStropheGroup"]), new objj_method(sel_getUid("removeSubGroup:"), function $TNStropheGroup__removeSubGroup_(self, _cmd, aGroup)
{
    if (!objj_msgSend(self._subGroups, "containsObject:", aGroup))
        return;
    objj_msgSend(aGroup, "setParentGroup:", nil);
    objj_msgSend(self._subGroups, "removeObject:", aGroup);
}
,["void","TNStropheGroup"]), new objj_method(sel_getUid("removeSubGroups"), function $TNStropheGroup__removeSubGroups(self, _cmd)
{
    for (var i = 0; i < objj_msgSend(self, "subGroupsCount"); i++)
    {
        var subGroup = objj_msgSend(self._subGroups, "objectAtIndex:", i);
        objj_msgSend(self, "removeSubGroup:", subGroup);
    }
    objj_msgSend(self._subGroups, "removeAllObjects");
}
,["void"]), new objj_method(sel_getUid("subGroupWithName:"), function $TNStropheGroup__subGroupWithName_(self, _cmd, aName)
{
    for (var i = 0; i < objj_msgSend(self, "subGroupsCount"); i++)
        if (objj_msgSend(objj_msgSend(objj_msgSend(self._subGroups, "objectAtIndex:", i), "name"), "uppercaseString") == objj_msgSend(aName, "uppercaseString"))
            return objj_msgSend(self._subGroups, "objectAtIndex:", i);
    return nil;
}
,["TNStropheGroup","CPString"]), new objj_method(sel_getUid("path"), function $TNStropheGroup__path(self, _cmd)
{
    var path = [objj_msgSend(self, "name")],
        currentGroup = self;
    while (currentGroup)
    {
        currentGroup = objj_msgSend(currentGroup, "parentGroup");
        if (currentGroup)
            objj_msgSend(path, "addObject:", objj_msgSend(objj_msgSend(currentGroup, "name"), "uppercaseString"));
    }
    return path.reverse().join(TNStropheRosterRosterDelimiter);
}
,["CPString"]), new objj_method(sel_getUid("flush"), function $TNStropheGroup__flush(self, _cmd)
{
    objj_msgSend(self, "removeSubGroups");
    objj_msgSend(self._contacts, "removeAllObjects");
}
,["void"]), new objj_method(sel_getUid("subGroupsCount"), function $TNStropheGroup__subGroupsCount(self, _cmd)
{
    return objj_msgSend(self._subGroups, "count");
}
,["int"]), new objj_method(sel_getUid("contactCount"), function $TNStropheGroup__contactCount(self, _cmd)
{
    return objj_msgSend(self._contacts, "count");
}
,["int"]), new objj_method(sel_getUid("count"), function $TNStropheGroup__count(self, _cmd)
{
    return objj_msgSend(self, "subGroupsCount") + objj_msgSend(self, "contactCount");
}
,["int"]), new objj_method(sel_getUid("content"), function $TNStropheGroup__content(self, _cmd)
{
    return objj_msgSend(self._subGroups.sort(), "arrayByAddingObjectsFromArray:", self._contacts.sort());
}
,["CPArray"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("stropheGroupWithName:"), function $TNStropheGroup__stropheGroupWithName_(self, _cmd, aName)
{
    return objj_msgSend(objj_msgSend(TNStropheGroup, "alloc"), "initWithName:", aName);
}
,["TNStropheGroup","CPString"])]);
}
{
var the_class = objj_getClass("TNStropheGroup")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNStropheGroup\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $TNStropheGroup__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheGroup").super_class }, "init"))
    {
        self._contacts = objj_msgSend(aCoder, "decodeObjectForKey:", "_contacts");
        self._name = objj_msgSend(aCoder, "decodeObjectForKey:", "_name");
        self._parentGroup = objj_msgSend(aCoder, "decodeObjectForKey:", "_parentGroup");
        self._subGroups = objj_msgSend(aCoder, "decodeObjectForKey:", "_subGroups");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNStropheGroup__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", self._contacts, "_contacts");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._name, "_name");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._parentGroup, "_parentGroup");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._subGroups, "_subGroups");
}
,["void","CPCoder"])]);
}p;19;TNStropheIMClient.jt;5992;@STATIC;1.0;I;23;Foundation/Foundation.ji;25;Resources/Strophe/sha1.jsi;17;TNStropheClient.ji;21;TNStropheConnection.ji;14;TNStropheJID.ji;17;TNStropheRoster.ji;17;TNStropheStanza.jt;5804;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("Resources/Strophe/sha1.js", YES);
objj_executeFile("TNStropheClient.j", YES);
objj_executeFile("TNStropheConnection.j", YES);
objj_executeFile("TNStropheJID.j", YES);
objj_executeFile("TNStropheRoster.j", YES);
objj_executeFile("TNStropheStanza.j", YES);
{var the_class = objj_allocateClassPair(TNStropheClient, "TNStropheIMClient"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_roster")]);



       
       


       
       

       
       





objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("roster"), function $TNStropheIMClient__roster(self, _cmd)
{
return self._roster;
}
,["TNStropheRoster"]), new objj_method(sel_getUid("_setRoster:"), function $TNStropheIMClient___setRoster_(self, _cmd, newValue)
{
self._roster = newValue;
}
,["void","TNStropheRoster"]), new objj_method(sel_getUid("initWithService:rosterClass:"), function $TNStropheIMClient__initWithService_rosterClass_(self, _cmd, aService, aRosterClass)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheIMClient").super_class }, "initWithService:", aService))
    {
        if (!aRosterClass)
            aRosterClass = TNStropheRoster;
        self._roster = objj_msgSend(aRosterClass, "rosterWithConnection:", self._connection);
    }
    return self;
}
,["id","CPString","id"]), new objj_method(sel_getUid("initWithService:JID:password:rosterClass:"), function $TNStropheIMClient__initWithService_JID_password_rosterClass_(self, _cmd, aService, aJID, aPassword, aRosterClass)
{
    if (self = objj_msgSend(self, "initWithService:rosterClass:", aService, aRosterClass))
    {
        self._JID = aJID;
        self._password = aPassword;
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didReceiveRoster:"), TNStropheRosterRetrievedNotification, nil);
    }
    return self;
}
,["id","CPString","TNStropheJID","CPString","id"]), new objj_method(sel_getUid("_didReceiveRoster:"), function $TNStropheIMClient___didReceiveRoster_(self, _cmd, aNotification)
{
    objj_msgSend(self, "_sendInitialPresence");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheIMClient").super_class }, "onStropheConnected:", self._connection);
}
,["void","CPNotification"]), new objj_method(sel_getUid("onStropheConnected:"), function $TNStropheIMClient__onStropheConnected_(self, _cmd, aConnection)
{
    objj_msgSend(self._roster, "getSubGroupDelimiter");
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("onStropheConnectFail:"), function $TNStropheIMClient__onStropheConnectFail_(self, _cmd, aConnection)
{
    objj_msgSend(self._roster, "clear");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheIMClient").super_class }, "onStropheConnectFail:", aConnection);
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("onStropheDisconnected:"), function $TNStropheIMClient__onStropheDisconnected_(self, _cmd, aConnection)
{
    objj_msgSend(self._roster, "clear");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheIMClient").super_class }, "onStropheDisconnected:", aConnection);
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("onStropheError:"), function $TNStropheIMClient__onStropheError_(self, _cmd, aConnection)
{
    objj_msgSend(self._roster, "clear");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheIMClient").super_class }, "onStropheError:", aConnection);
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("initWithCoder:"), function $TNStropheIMClient__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheIMClient").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self._roster = objj_msgSend(aCoder, "decodeObjectForKey:", "_roster");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNStropheIMClient__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheIMClient").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self._roster, "_roster");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("IMClientWithService:"), function $TNStropheIMClient__IMClientWithService_(self, _cmd, aService)
{
    return objj_msgSend(objj_msgSend(TNStropheIMClient, "alloc"), "initWithService:", aService);
}
,["TNStropheIMClient","CPString"]), new objj_method(sel_getUid("IMClientWithService:rosterClass:"), function $TNStropheIMClient__IMClientWithService_rosterClass_(self, _cmd, aService, aRosterClass)
{
    return objj_msgSend(objj_msgSend(TNStropheIMClient, "alloc"), "initWithService:rosterClass:", aService, aRosterClass);
}
,["TNStropheIMClient","CPString","id"]), new objj_method(sel_getUid("IMClientWithService:JID:password:"), function $TNStropheIMClient__IMClientWithService_JID_password_(self, _cmd, aService, aJID, aPassword)
{
    return objj_msgSend(objj_msgSend(TNStropheIMClient, "alloc"), "initWithService:JID:password:", aService, aJID, aPassword);
}
,["TNStropheIMClient","CPString","TNStropheJID","CPString"]), new objj_method(sel_getUid("IMClientWithService:JID:password:rosterClass:"), function $TNStropheIMClient__IMClientWithService_JID_password_rosterClass_(self, _cmd, aService, aJID, aPassword, aRosterClass)
{
    return objj_msgSend(objj_msgSend(TNStropheIMClient, "alloc"), "initWithService:JID:password:rosterClass:", aService, aJID, aPassword, aRosterClass);
}
,["TNStropheIMClient","CPString","TNStropheJID","CPString","id"])]);
}p;14;TNStropheJID.jt;8895;@STATIC;1.0;I;23;Foundation/Foundation.jt;8848;objj_executeFile("Foundation/Foundation.j", NO);
TNStropheJIDExceptionJID = "TNStropheJIDExceptionJID";
{var the_class = objj_allocateClassPair(CPObject, "TNStropheJID"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_isServer"), new objj_ivar("_domain"), new objj_ivar("_node"), new objj_ivar("_resource")]);



       
       



       
       








       
       



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isServer"), function $TNStropheJID__isServer(self, _cmd)
{
return self._isServer;
}
,["BOOL"]), new objj_method(sel_getUid("_setIsServer:"), function $TNStropheJID___setIsServer_(self, _cmd, newValue)
{
self._isServer = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("domain"), function $TNStropheJID__domain(self, _cmd)
{
return self._domain;
}
,["CPString"]), new objj_method(sel_getUid("setDomain:"), function $TNStropheJID__setDomain_(self, _cmd, newValue)
{
self._domain = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("node"), function $TNStropheJID__node(self, _cmd)
{
return self._node;
}
,["CPString"]), new objj_method(sel_getUid("setNode:"), function $TNStropheJID__setNode_(self, _cmd, newValue)
{
self._node = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("resource"), function $TNStropheJID__resource(self, _cmd)
{
return self._resource;
}
,["CPString"]), new objj_method(sel_getUid("setResource:"), function $TNStropheJID__setResource_(self, _cmd, newValue)
{
self._resource = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithNode:domain:resource:"), function $TNStropheJID__initWithNode_domain_resource_(self, _cmd, aNode, aDomain, aResource)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheJID").super_class }, "init"))
    {
        objj_msgSend(self, "setNode:", aNode);
        objj_msgSend(self, "setDomain:", aDomain);
        objj_msgSend(self, "setResource:", aResource);
        self._isServer = (!aDomain && !aResource);
        if ((self._node && self._node.indexOf(" ") != -1) || (self._domain && self._domain.indexOf(" ") != -1) || (self._resource && self._resource.indexOf(" ") != -1))
            objj_msgSend(CPException, "raise:reason:", TNStropheJIDExceptionJID, "Given information are not a valid JID.");
    }
    return self;
}
,["TNStropheJID","CPString","CPString","CPString"]), new objj_method(sel_getUid("initWithNode:domain:"), function $TNStropheJID__initWithNode_domain_(self, _cmd, aNode, aDomain)
{
    return objj_msgSend(self, "initWithNode:domain:resource:", aNode, aDomain, nil);
}
,["TNStropheJID","CPString","CPString"]), new objj_method(sel_getUid("initWithString:"), function $TNStropheJID__initWithString_(self, _cmd, aStringJID)
{
    if (!aStringJID)
        return;
    var node = aStringJID.split("@")[0],
        domain,
        resource;
    if (aStringJID.indexOf("@") != -1)
    {
        domain = aStringJID.split("@")[1].split("/")[0],
        resource = aStringJID.split("/")[1];
    }
    if (!node)
        objj_msgSend(CPException, "raise:reason:", TNStropheJIDExceptionJID, aStringJID + " is not a valid JID");
    return objj_msgSend(self, "initWithNode:domain:resource:", node, domain, resource);
}
,["TNStropheJID","CPString"]), new objj_method(sel_getUid("bare"), function $TNStropheJID__bare(self, _cmd)
{
    if (self._domain)
        return self._node + "@" + self._domain;
    else
        return self._node;
}
,["CPString"]), new objj_method(sel_getUid("setBare:"), function $TNStropheJID__setBare_(self, _cmd, aBareJID)
{
    var node = aBareJID.split("@")[0],
        domain = aBareJID.split("@")[1].split("/")[0];
    if (!node || !domain)
        objj_msgSend(CPException, "raise:reason:", TNStropheJIDExceptionJID, aBareJID + " is not a valid JID");
    objj_msgSend(self, "setNode:", node);
    objj_msgSend(self, "setDomain:", domain);
}
,["void","CPString"]), new objj_method(sel_getUid("full"), function $TNStropheJID__full(self, _cmd)
{
    if (self._resource)
        return objj_msgSend(self, "bare") + "/" + self._resource;
    else
        return objj_msgSend(self, "bare");
}
,["CPString"]), new objj_method(sel_getUid("setFull:"), function $TNStropheJID__setFull_(self, _cmd, aFullJID)
{
    objj_msgSend(self, "setBare:", aFullJID);
    var resource = aFullJID.split("/")[1];
    if (!resource)
        objj_msgSend(CPException, "raise:reason:", TNStropheJIDExceptionJID, aFullJID + " is not a valid JID");
    objj_msgSend(self, "setResource:", resource)
}
,["void","CPString"]), new objj_method(sel_getUid("description"), function $TNStropheJID__description(self, _cmd)
{
    return objj_msgSend(self, "stringValue");
}
,["CPString"]), new objj_method(sel_getUid("stringValue"), function $TNStropheJID__stringValue(self, _cmd)
{
    return objj_msgSend(self, "full");
}
,["CPString"]), new objj_method(sel_getUid("uppercaseString"), function $TNStropheJID__uppercaseString(self, _cmd)
{
    return objj_msgSend(objj_msgSend(self, "stringValue"), "uppercaseString");
}
,["CPString"]), new objj_method(sel_getUid("lowercaseString"), function $TNStropheJID__lowercaseString(self, _cmd)
{
    return objj_msgSend(objj_msgSend(self, "stringValue"), "lowercaseString");
}
,["CPString"]), new objj_method(sel_getUid("equals:"), function $TNStropheJID__equals_(self, _cmd, anotherJID)
{
    return objj_msgSend(self, "fullEquals:", anotherJID);
}
,["BOOL","TNStropheJID"]), new objj_method(sel_getUid("fullEquals:"), function $TNStropheJID__fullEquals_(self, _cmd, anotherJID)
{
    return (objj_msgSend(self, "bareEquals:", anotherJID) && (objj_msgSend(objj_msgSend(anotherJID, "resource"), "uppercaseString") === objj_msgSend(objj_msgSend(self, "resource"), "uppercaseString")))
}
,["BOOL","TNStropheJID"]), new objj_method(sel_getUid("bareEquals:"), function $TNStropheJID__bareEquals_(self, _cmd, anotherJID)
{
    return ((objj_msgSend(objj_msgSend(anotherJID, "node"), "uppercaseString") === objj_msgSend(objj_msgSend(self, "node"), "uppercaseString")) && (objj_msgSend(objj_msgSend(anotherJID, "domain"), "uppercaseString") === objj_msgSend(objj_msgSend(self, "domain"), "uppercaseString")));
}
,["BOOL","TNStropheJID"]), new objj_method(sel_getUid("compare:"), function $TNStropheJID__compare_(self, _cmd, anotherJID)
{
    var stringRepA = objj_msgSend(self, "stringValue"),
        stringRepB = objj_msgSend(anotherJID, "stringValue");
    return objj_msgSend(stringRepA, "compare:", stringRepB);
}
,["CPComparisonResult","TNStropheJID"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNStropheJID__initialize(self, _cmd)
{
    objj_msgSend(self, "exposeBinding:", "domain");
    objj_msgSend(self, "exposeBinding:", "node");
    objj_msgSend(self, "exposeBinding:", "resource");
}
,["void"]), new objj_method(sel_getUid("stropheJIDWithNode:domain:resource:"), function $TNStropheJID__stropheJIDWithNode_domain_resource_(self, _cmd, aNode, aDomain, aResource)
{
    return objj_msgSend(objj_msgSend(TNStropheJID, "alloc"), "initWithNode:domain:resource:", aNode, aDomain, aResource);
}
,["TNStropheJID","CPString","CPString","CPString"]), new objj_method(sel_getUid("stropheJIDWithNode:domain:"), function $TNStropheJID__stropheJIDWithNode_domain_(self, _cmd, aNode, aDomain)
{
    return objj_msgSend(objj_msgSend(TNStropheJID, "alloc"), "initWithNode:domain:", aNode, aDomain);
}
,["TNStropheJID","CPString","CPString"]), new objj_method(sel_getUid("stropheJIDWithString:"), function $TNStropheJID__stropheJIDWithString_(self, _cmd, aStringJID)
{
    return objj_msgSend(objj_msgSend(TNStropheJID, "alloc"), "initWithString:", aStringJID);
}
,["TNStropheJID","CPString"])]);
}
{
var the_class = objj_getClass("TNStropheJID")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNStropheJID\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $TNStropheJID__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheJID").super_class }, "init"))
    {
        self._node = objj_msgSend(aCoder, "decodeObjectForKey:", "_node");
        self._domain = objj_msgSend(aCoder, "decodeObjectForKey:", "_domain");
        self._resource = objj_msgSend(aCoder, "decodeObjectForKey:", "_resource");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNStropheJID__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", self._node, "_node");
    if (self._domain)
        objj_msgSend(aCoder, "encodeObject:forKey:", self._domain, "_domain");
    if (self._resource)
        objj_msgSend(aCoder, "encodeObject:forKey:", self._resource, "_resource");
}
,["void","CPCoder"])]);
}p;25;TNStrophePrivateStorage.jt;5852;@STATIC;1.0;i;28;Resources/Strophe/strophe.jsi;25;Resources/Strophe/sha1.jsi;21;TNStropheConnection.ji;16;TNStropheUtils.jt;5723;objj_executeFile("Resources/Strophe/strophe.js", YES);
objj_executeFile("Resources/Strophe/sha1.js", YES);
objj_executeFile("TNStropheConnection.j", YES);
objj_executeFile("TNStropheUtils.j", YES);
TNStrophePrivateStorageGetErrorNotification = "TNStrophePrivateStorageGetErrorNotification";
TNStrophePrivateStorageSetErrorNotification = "TNStrophePrivateStorageSetErrorNotification";
TNStrophePrivateStorageSetNotification = "TNStrophePrivateStorageSetNotification";
{var the_class = objj_allocateClassPair(CPObject, "TNStrophePrivateStorage"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_namespace"), new objj_ivar("_connection")]);

       
       



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("namespace"), function $TNStrophePrivateStorage__namespace(self, _cmd)
{
return self._namespace;
}
,["CPString"]), new objj_method(sel_getUid("setNamespace:"), function $TNStrophePrivateStorage__setNamespace_(self, _cmd, newValue)
{
self._namespace = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("connection"), function $TNStrophePrivateStorage__connection(self, _cmd)
{
return self._connection;
}
,["TNStropheConnection"]), new objj_method(sel_getUid("setConnection:"), function $TNStrophePrivateStorage__setConnection_(self, _cmd, newValue)
{
self._connection = newValue;
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("initWithConnection:namespace:"), function $TNStrophePrivateStorage__initWithConnection_namespace_(self, _cmd, aConnection, aNamespace)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStrophePrivateStorage").super_class }, "init"))
    {
        self._connection = aConnection;
        self._namespace = aNamespace
    }
    return self;
}
,["TNStropheConnection","TNStropheConnection","CPString"]), new objj_method(sel_getUid("setObject:forKey:"), function $TNStrophePrivateStorage__setObject_forKey_(self, _cmd, anObject, aKey)
{
    var data = objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", anObject),
        uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"id": uid, "type": "set"}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": Strophe.NS.PRIVATE_STORAGE});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", aKey, {"xmlns": self._namespace});
    objj_msgSend(stanza, "addTextNode:", objj_msgSend(data, "rawString"));
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:userInfo:", sel_getUid("_didSetObject:object:"), self, params, anObject);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","id","CPString"]), new objj_method(sel_getUid("_didSetObject:object:"), function $TNStrophePrivateStorage___didSetObject_object_(self, _cmd, aStanza, anObject)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStrophePrivateStorageSetNotification, self, anObject);
    else
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStrophePrivateStorageSetErrorNotification, self, aStanza);
    return NO;
}
,["BOOL","TNStropheStanza","id"]), new objj_method(sel_getUid("objectForKey:target:selector:"), function $TNStrophePrivateStorage__objectForKey_target_selector_(self, _cmd, aKey, aTarget, aSelector)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"id": uid, "type": "get"}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id"),
        listener = {"target": aTarget, "selector": aSelector, "key": aKey};
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": Strophe.NS.PRIVATE_STORAGE});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", aKey, {"xmlns": self._namespace});
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:userInfo:", sel_getUid("_didReceiveObject:userInfo:"), self, params, listener);
    objj_msgSend(self._connection, "send:", stanza);
}
,["id","CPString","id","SEL"]), new objj_method(sel_getUid("_didReceiveObject:userInfo:"), function $TNStrophePrivateStorage___didReceiveObject_userInfo_(self, _cmd, aStanza, listener)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var dataString = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", listener.key), "text");
        try
        {
            if (dataString)
                var obj = objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", objj_msgSend(CPData, "dataWithRawString:", TNStropheStripHTMLCharCode(dataString)));
        }
        catch(ex)
        {
            objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStrophePrivateStorageGetErrorNotification, self, ex);
        }
    }
    objj_msgSend(listener.target, "performSelector:withObject:withObject:", listener.selector, aStanza, obj);
    return NO;
}
,["BOOL","TNStropheStanza","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("strophePrivateStorageWithConnection:namespace:"), function $TNStrophePrivateStorage__strophePrivateStorageWithConnection_namespace_(self, _cmd, aConnection, aNamespace)
{
    return objj_msgSend(objj_msgSend(TNStrophePrivateStorage, "alloc"), "initWithConnection:namespace:", aConnection, aNamespace);
}
,["TNStropheConnection","TNStropheConnection","CPString"])]);
}p;17;TNStropheRoster.jt;31445;@STATIC;1.0;I;23;Foundation/Foundation.ji;28;Resources/Strophe/strophe.jsi;25;Resources/Strophe/sha1.jsi;14;TNStropheJID.ji;21;TNStropheRosterBase.jt;31289;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("Resources/Strophe/strophe.js", YES);
objj_executeFile("Resources/Strophe/sha1.js", YES);
objj_executeFile("TNStropheJID.j", YES);
objj_executeFile("TNStropheRosterBase.j", YES);
TNStropheRosterRosterDelimiter = "::";
TNStropheRosterContactAddedNotification = "TNStropheRosterContactAddedNotification";
TNStropheRosterContactRemovedNotification = "TNStropheRosterContactRemovedNotification";
TNStropheRosterGroupAddedNotification = "TNStropheRosterGroupAddedNotification";
TNStropheRosterGroupRemovedNotification = "TNStropheRosterGroupRemovedNotification";
TNStropheRosterGroupRenamedNotification = "TNStropheRosterGroupRenamedNotification";
TNStropheRosterPushAddedContactNotification = "TNStropheRosterPushAddedContactNotification";
TNStropheRosterPushNotification = "TNStropheRosterPushNotification";
TNStropheRosterPushRemovedContactNotification = "TNStropheRosterPushRemovedContactNotification";
TNStropheRosterPushUpdatedContactNotification = "TNStropheRosterPushUpdatedContactNotification";
TNStropheRosterRetrievedNotification = "TNStropheRosterRetrievedNotification";
TNStropheRosterSubGroupDelimiterReceivedNotification = "TNStropheRosterSubGroupDelimiterReceivedNotification";
{var the_class = objj_allocateClassPair(TNStropheRosterBase, "TNStropheRoster"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_pendingPresence"), new objj_ivar("_rosterRetrieved")]);
       
       


       
       




       
       








       
       

       
       








       
       





       
       




       
       



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("pendingPresence"), function $TNStropheRoster__pendingPresence(self, _cmd)
{
return self._pendingPresence;
}
,["CPDictionary"]), new objj_method(sel_getUid("_setPendingPresence:"), function $TNStropheRoster___setPendingPresence_(self, _cmd, newValue)
{
self._pendingPresence = newValue;
}
,["void","CPDictionary"]), new objj_method(sel_getUid("initWithConnection:"), function $TNStropheRoster__initWithConnection_(self, _cmd, aConnection)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheRoster").super_class }, "initWithConnection:", aConnection))
    {
        self._pendingPresence = objj_msgSend(CPDictionary, "dictionary");
        var rosterPushParams = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", "iq", "name", Strophe.NS.ROSTER, "namespace", "set", "type"),
            presenceParams = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", "presence", "name", objj_msgSend(objj_msgSend(self._connection, "JID"), "bare"), "to");
        objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didReceiveRosterPush:"), self, rosterPushParams);
        objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didReceivePresence:"), self, presenceParams);
    }
    return self;
}
,["id","TNStropheConnection"]), new objj_method(sel_getUid("clear"), function $TNStropheRoster__clear(self, _cmd)
{
    for (var i = 0; i < objj_msgSend(self._groupCache, "count"); i++)
        objj_msgSend(objj_msgSend(self._groupCache, "objectAtIndex:", i), "removeSubGroups");
    objj_msgSend(self._groupCache, "removeAllObjects");
    objj_msgSend(self._pendingPresence, "removeAllObjects");
    self._rosterRetrieved = NO;
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheRoster").super_class }, "clear");
}
,["void"]), new objj_method(sel_getUid("getSubGroupDelimiter"), function $TNStropheRoster__getSubGroupDelimiter(self, _cmd)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"id": uid, "type": "get"}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": "jabber:iq:private"});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "roster", {"xmlns": "roster:delimiter"});
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didReceiveSubGroupDelimiter:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void"]), new objj_method(sel_getUid("_didReceiveSubGroupDelimiter:"), function $TNStropheRoster___didReceiveSubGroupDelimiter_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var delimiter = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "roster"), "text");
        if ((!delimiter == "") && (!delimiter == " "))
            TNStropheRosterRosterDelimiter = delimiter;
        else
            objj_msgSend(self, "setSubGroupDelimiter:", TNStropheRosterRosterDelimiter);
    }
    else
    {
        CPLog.error("Cannot get the roster delimiter")
    }
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheRosterSubGroupDelimiterReceivedNotification, self);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("setSubGroupDelimiter:"), function $TNStropheRoster__setSubGroupDelimiter_(self, _cmd, aDelimiter)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"id": uid, "type": "set"}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": "jabber:iq:private"});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "roster", {"xmlns": "roster:delimiter"});
    objj_msgSend(stanza, "addTextNode:", aDelimiter);
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didsetSubGroupDelimiter:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","CPString"]), new objj_method(sel_getUid("_didsetSubGroupDelimiter:"), function $TNStropheRoster___didsetSubGroupDelimiter_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        CPLog.info("roster's subgroup delimiter has been set");
    else
        CPLog.error("Cannot get the roster delimiter")
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("getRoster"), function $TNStropheRoster__getRoster(self, _cmd)
{
    var uid = objj_msgSend(self._connection, "getUniqueIdWithSuffix:", "roster"),
        rosteriq = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"id": uid, "type": "get"}),
        rosterResultParams = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(rosteriq, "addChildWithName:andAttributes:", "query", {'xmlns':Strophe.NS.ROSTER});
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didReceiveRosterResult:"), self, rosterResultParams);
    objj_msgSend(self._connection, "send:", rosteriq);
}
,["void"]), new objj_method(sel_getUid("_didReceiveRosterResult:"), function $TNStropheRoster___didReceiveRosterResult_(self, _cmd, aStanza)
{
    var items = objj_msgSend(aStanza, "childrenWithName:", "item");
    for (var i = 0; i < objj_msgSend(items, "count"); i++)
    {
        var item = objj_msgSend(items, "objectAtIndex:", i),
            subscription = objj_msgSend(item, "valueForAttribute:", "subscription"),
            allowedSubs = objj_msgSend(CPArray, "arrayWithObjects:", "none", "to", "from", "both");
        if (!subscription || !objj_msgSend(allowedSubs, "containsObject:", subscription))
            objj_msgSend(item, "setValue:forAttribute:", "none", "subscription");
        if (!objj_msgSend(self, "containsJID:", objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(item, "valueForAttribute:", "jid"))))
            objj_msgSend(self, "_addContactFromRosterItem:", item);
    }
    self._rosterRetrieved = YES;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheRosterRetrievedNotification, self);
    return NO;
}
,["BOOL","id"]), new objj_method(sel_getUid("_sendRosterSet:"), function $TNStropheRoster___sendRosterSet_(self, _cmd, anObject)
{
    var contents;
    switch (objj_msgSend(anObject, "class"))
    {
        case TNStropheContact:
            contents = objj_msgSend(CPArray, "arrayWithObject:", anObject);
            break;
        case _CPJavaScriptArray:
        case CPArray:
            contents = anObject;
            break;
        default:
            CPLog.error("_sendRosterSet: only accepts TNStropheContact or CPArray. given " + objj_msgSend(anObject, "class"));
            return;
    }
    var stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"type": "set"});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {'xmlns':Strophe.NS.ROSTER});
    for (var i = 0; i < objj_msgSend(contents, "count"); i++)
    {
        var contact = objj_msgSend(contents, "objectAtIndex:", i);
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "item", {"JID": objj_msgSend(objj_msgSend(contact, "JID"), "bare"), "name": objj_msgSend(contact, "nickname")});
        for (var j = 0; j < objj_msgSend(objj_msgSend(contact, "groups"), "count"); j++)
        {
            objj_msgSend(stanza, "addChildWithName:", "group");
            objj_msgSend(stanza, "addTextNode:", objj_msgSend(objj_msgSend(objj_msgSend(contact, "groups"), "objectAtIndex:", j), "path"));
            objj_msgSend(stanza, "up");
        }
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","id"]), new objj_method(sel_getUid("_sendRosterUnset:"), function $TNStropheRoster___sendRosterUnset_(self, _cmd, anObject)
{
    var contents;
    switch (objj_msgSend(anObject, "class"))
    {
        case TNStropheContact:
            contents = objj_msgSend(CPArray, "arrayWithObject:", anObject);
            break;
        case _CPJavaScriptArray:
        case CPArray:
            contents = anObject;
            break;
        default:
            CPLog.error("_sendRosterUnset: only accepts TNStropheContact or CPArray. given " + objj_msgSend(anObject, "class"));
            return;
    }
    var stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"type": "set"});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {'xmlns':Strophe.NS.ROSTER});
    for (var j = 0; j < objj_msgSend(contents, "count"); j++)
    {
        var contact = objj_msgSend(contents, "objectAtIndex:", j);
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "item", {'jid': objj_msgSend(objj_msgSend(contact, "JID"), "bare"), 'subscription': 'remove'});
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","id"]), new objj_method(sel_getUid("_didReceiveRosterPush:"), function $TNStropheRoster___didReceiveRosterPush_(self, _cmd, aStanza)
{
    if (!self._rosterRetrieved)
        return;
    var item = objj_msgSend(aStanza, "firstChildWithName:", "item"),
        theJID = objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(item, "valueForAttribute:", "jid")),
        subscription = objj_msgSend(item, "valueForAttribute:", "subscription"),
        allowedSubs = objj_msgSend(CPArray, "arrayWithObjects:", "none", "to", "from", "both", "remove"),
        response = objj_msgSend(TNStropheStanza, "iqTo:withAttributes:", objj_msgSend(aStanza, "from"), {"id": objj_msgSend(aStanza, "ID"), "type": "result"});
    if (objj_msgSend(aStanza, "from") && (!objj_msgSend(objj_msgSend(aStanza, "from"), "bareEquals:", objj_msgSend(self._connection, "JID"))))
        return YES;
    objj_msgSend(self._connection, "send:", response);
    if (!subscription || !objj_msgSend(allowedSubs, "containsObject:", subscription))
        objj_msgSend(item, "setValue:forAttribute:", "none", "subscription");
    switch (subscription)
    {
        case "remove":
            objj_msgSend(self, "_deleteContactFromRosterItem:", item);
            objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheRosterPushRemovedContactNotification, self, theJID);
            break;
        default:
            if (objj_msgSend(self, "containsJID:", theJID))
            {
                objj_msgSend(self, "_updateContactFromRosterItem:", item);
                objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheRosterPushUpdatedContactNotification, self, theJID);
            }
            else
            {
                objj_msgSend(self, "_addContactFromRosterItem:", item);
                objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheRosterPushAddedContactNotification, self, theJID);
            }
            break;
    }
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheRosterPushNotification, self);
    return YES;
}
,["BOOL","TNStropheStanzas"]), new objj_method(sel_getUid("_addContactFromRosterItem:"), function $TNStropheRoster___addContactFromRosterItem_(self, _cmd, aRosterItem)
{
    var theJID = objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(aRosterItem, "valueForAttribute:", "jid"));
    if (objj_msgSend(theJID, "bareEquals:", objj_msgSend(self._connection, "JID")))
        return;
    var contact = objj_msgSend(TNStropheContact, "contactWithConnection:JID:group:", self._connection, theJID, nil),
        nickname = objj_msgSend(aRosterItem, "valueForAttribute:", "name") || objj_msgSend(theJID, "node"),
        groupNodes = objj_msgSend(aRosterItem, "childrenWithName:", "group"),
        queuedPresence = objj_msgSend(self._pendingPresence, "valueForKey:", objj_msgSend(theJID, "bare")),
        subscription = objj_msgSend(aRosterItem, "valueForAttribute:", "subscription");
    objj_msgSend(contact, "setDelegate:", self._delegate);
    if (objj_msgSend(groupNodes, "count"))
    {
        for (var i = 0; i < objj_msgSend(groupNodes, "count"); i++)
        {
            var groupsLine = objj_msgSend(objj_msgSend(objj_msgSend(groupNodes, "objectAtIndex:", i), "text"), "uppercaseString"),
                currentGroup = objj_msgSend(self, "groupWithPath:orCreate:", groupsLine, YES);
            objj_msgSend(self, "addContact:inGroup:push:", contact, currentGroup, NO);
        }
    }
    else
    {
        objj_msgSend(self._content, "addObject:", contact);
    }
    for (var j = 0; j < objj_msgSend(queuedPresence, "count"); j++)
        objj_msgSend(contact, "_didReceivePresence:", objj_msgSend(queuedPresence, "objectAtIndex:", j));
    objj_msgSend(contact, "setNickname:", nickname);
    objj_msgSend(contact, "setSubscription:", subscription);
    objj_msgSend(contact, "getMessages");
    objj_msgSend(self, "cacheContact:", contact);
    return contact;
}
,["void","TNXMLNode"]), new objj_method(sel_getUid("_updateContactFromRosterItem:"), function $TNStropheRoster___updateContactFromRosterItem_(self, _cmd, aRosterItem)
{
    var theJID = objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(aRosterItem, "valueForAttribute:", "jid"));
    if (objj_msgSend(theJID, "bareEquals:", objj_msgSend(self._connection, "JID")))
        return;
    var contact = objj_msgSend(self, "contactWithJID:", theJID),
        subscription = objj_msgSend(aRosterItem, "valueForAttribute:", "subscription");
    var nickname = objj_msgSend(aRosterItem, "valueForAttribute:", "name") || nil,
        groupNodes = objj_msgSend(aRosterItem, "childrenWithName:", "group"),
        groups = objj_msgSend(CPArray, "array"),
        oldGroups = objj_msgSend(objj_msgSend(contact, "groups"), "copy");
    if (nickname && nickname != objj_msgSend(contact, "nickname"))
        objj_msgSend(contact, "setNickname:", nickname);
    if (objj_msgSend(self._content, "containsObject:", contact))
        objj_msgSend(self._content, "removeObject:", contact);
    for (var i = 0; i < objj_msgSend(oldGroups, "count"); i++)
        objj_msgSend(self, "removeContact:fromGroup:push:", contact, objj_msgSend(oldGroups, "objectAtIndex:", i), NO);
    for (var i = 0; i < objj_msgSend(groupNodes, "count"); i++)
    {
        var currentGroupName = objj_msgSend(objj_msgSend(objj_msgSend(groupNodes, "objectAtIndex:", i), "text"), "uppercaseString"),
            currentGroup = objj_msgSend(self, "groupWithPath:orCreate:", currentGroupName, YES);
        objj_msgSend(self, "addContact:inGroup:push:", contact, currentGroup, NO);
    }
    if (objj_msgSend(objj_msgSend(contact, "groups"), "count") == 0)
        objj_msgSend(self._content, "addObject:", contact);
    return contact;
}
,["void","TNXMLNode"]), new objj_method(sel_getUid("_deleteContactFromRosterItem:"), function $TNStropheRoster___deleteContactFromRosterItem_(self, _cmd, aRosterItem)
{
    var theJID = objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(aRosterItem, "valueForAttribute:", "jid")),
        contact = objj_msgSend(self, "contactWithJID:", theJID),
        groups = objj_msgSend(contact, "groups");
    if (!groups || objj_msgSend(groups, "count") == 0)
        objj_msgSend(self._content, "removeObject:", contact);
    else
        for (var i = 0; i < objj_msgSend(groups, "count"); i++)
            objj_msgSend(objj_msgSend(objj_msgSend(groups, "objectAtIndex:", i), "contacts"), "removeObject:", contact);
    objj_msgSend(self, "uncacheContact:", contact);
}
,["void","TNXMLNode"]), new objj_method(sel_getUid("_didReceivePresence:"), function $TNStropheRoster___didReceivePresence_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") === "subscribe")
    {
        if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("roster:receiveSubscriptionRequest:")))
            objj_msgSend(self._delegate, "roster:receiveSubscriptionRequest:", self, aStanza);
        return YES;
    }
    if (objj_msgSend(self, "containsJID:", objj_msgSend(aStanza, "from")))
        objj_msgSend(objj_msgSend(self, "contactWithJID:", objj_msgSend(aStanza, "from")), "_didReceivePresence:", aStanza);
    else
    {
        var from = objj_msgSend(aStanza, "fromBare");
        if (!objj_msgSend(self._pendingPresence, "containsKey:", from))
            objj_msgSend(self._pendingPresence, "setValue:forKey:", objj_msgSend(CPArray, "array"), from);
        objj_msgSend(objj_msgSend(self._pendingPresence, "valueForKey:", from), "addObject:", aStanza);
    }
    return YES;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("groupWithPath:"), function $TNStropheRoster__groupWithPath_(self, _cmd, aPath)
{
    var path = objj_msgSend(aPath, "uppercaseString").split(TNStropheRosterRosterDelimiter),
        currentGroup = objj_msgSend(self, "rootGroupWithName:", path[0]),
        lastGroup = objj_msgSend(self, "_subGroupWithPath:relativeTo:", objj_msgSend(path, "copy").splice(1, path.length - 1), currentGroup);
    return (objj_msgSend(lastGroup, "path") == aPath) ? lastGroup : nil;
}
,["TNStropheGroup","CPString"]), new objj_method(sel_getUid("_subGroupWithPath:relativeTo:"), function $TNStropheRoster___subGroupWithPath_relativeTo_(self, _cmd, aPath, aGroup)
{
    var subGroup = objj_msgSend(aGroup, "subGroupWithName:", objj_msgSend(aPath[0], "uppercaseString"));
    if (subGroup)
        return objj_msgSend(self, "_subGroupWithPath:relativeTo:", aPath.splice(1, aPath.length - 1), subGroup);
    else
        return aGroup;
}
,["TNStropheGroup","CPArray","TNStropheGroup"]), new objj_method(sel_getUid("groupWithPath:orCreate:"), function $TNStropheRoster__groupWithPath_orCreate_(self, _cmd, aPath, shouldCreate)
{
    aPath = objj_msgSend(aPath, "uppercaseString");
    var group = objj_msgSend(self, "groupWithPath:", aPath);
    if (!group && shouldCreate)
    {
        objj_msgSend(self, "addGroupWithPath:", aPath);
        group = objj_msgSend(self, "groupWithPath:", aPath);
    }
    return group;
}
,["TNStropheGroup","CPArray","BOOL"]), new objj_method(sel_getUid("addGroupWithPath:"), function $TNStropheRoster__addGroupWithPath_(self, _cmd, aPath)
{
    aPath = objj_msgSend(aPath, "uppercaseString");
    var path = objj_msgSend(aPath, "uppercaseString").split(TNStropheRosterRosterDelimiter);
    if (objj_msgSend(self, "groupWithPath:", aPath))
        return;
    for (var i = 0; i < objj_msgSend(path, "count"); i++)
    {
        var currentPath = objj_msgSend(path, "copy").splice(0, i + 1).join(TNStropheRosterRosterDelimiter),
            parentPath = objj_msgSend(path, "copy").splice(0, i).join(TNStropheRosterRosterDelimiter),
            currentGroup = objj_msgSend(self, "groupWithPath:", currentPath),
            parentGroup = objj_msgSend(self, "groupWithPath:", parentPath);
        if (!currentGroup)
        {
            var tokens = objj_msgSend(currentPath, "uppercaseString").split(TNStropheRosterRosterDelimiter),
                groupName = objj_msgSend(tokens, "lastObject"),
                currentGroup = objj_msgSend(TNStropheGroup, "stropheGroupWithName:", groupName);
            objj_msgSend(self._groupCache, "addObject:", currentGroup);
            if (parentGroup)
                objj_msgSend(parentGroup, "addSubGroup:", currentGroup);
            else
                objj_msgSend(self._content, "addObject:", currentGroup);
        }
    }
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheRosterGroupAddedNotification, objj_msgSend(self, "groupWithPath:", aPath));
}
,["void","CPString"]), new objj_method(sel_getUid("removeGroupWithPath:"), function $TNStropheRoster__removeGroupWithPath_(self, _cmd, aPath)
{
    aPath = objj_msgSend(aPath, "uppercaseString");
    var group = objj_msgSend(self, "groupWithPath:", aPath),
        parentGroup = objj_msgSend(group, "parentGroup");
    if (!parentGroup)
    {
        objj_msgSend(group, "removeSubGroups");
        objj_msgSend(self._content, "removeObject:", group)
    }
    else
    {
        objj_msgSend(parentGroup, "removeSubGroup:", group);
    }
    objj_msgSend(self._groupCache, "removeObject:", group);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheRosterGroupRemovedNotification, group);
}
,["void","CPString"]), new objj_method(sel_getUid("removeGroup:"), function $TNStropheRoster__removeGroup_(self, _cmd, aGroup)
{
    objj_msgSend(self, "removeGroupWithPath:", objj_msgSend(objj_msgSend(aGroup, "path"), "uppercaseString"))
}
,["void","TNStropheGroup"]), new objj_method(sel_getUid("changeName:ofGroup:"), function $TNStropheRoster__changeName_ofGroup_(self, _cmd, aName, aGroup)
{
    var affectedContacts = objj_msgSend(self, "getAllContactsTreeFromGroup:", aGroup);
    objj_msgSend(aGroup, "setName:", objj_msgSend(aName, "uppercaseString"));
    objj_msgSend(self, "_sendRosterSet:", objj_msgSend(self, "getAllContactsTreeFromGroup:", aGroup));
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheRosterGroupRenamedNotification, self);
}
,["void","CPString","TNStropheGroup"]), new objj_method(sel_getUid("rootGroupWithName:"), function $TNStropheRoster__rootGroupWithName_(self, _cmd, aGroupName)
{
    aGroupName = objj_msgSend(aGroupName, "uppercaseString");
    for (var i = 0; i < objj_msgSend(self._content, "count"); i++)
    {
        if (!objj_msgSend(objj_msgSend(self._content, "objectAtIndex:", i), "isKindOfClass:", TNStropheGroup))
            continue;
        var group = objj_msgSend(self._content, "objectAtIndex:", i);
        if (objj_msgSend(group, "name") == aGroupName)
            return group;
    }
    return nil;
}
,["TNStropheGroup","CPString"]), new objj_method(sel_getUid("addContact:withName:inGroupWithPath:"), function $TNStropheRoster__addContact_withName_inGroupWithPath_(self, _cmd, aJID, aName, aGroupPath)
{
    if (objj_msgSend(self, "containsJID:", aJID))
    {
        CPLog.warn("Cannot add JID %@. already in roster", aJID);
        return;
    }
    if (!aName)
        aName = objj_msgSend(aJID, "bare");
    var group = aGroupPath ? objj_msgSend(self, "groupWithPath:orCreate:", aGroupPath, YES) : nil,
        contact = objj_msgSend(TNStropheContact, "contactWithConnection:JID:group:", self._connection, aJID, group);
    objj_msgSend(contact, "setDelegate:", self._delegate);
    objj_msgSend(contact, "setNickname:", aName);
    objj_msgSend(self, "_sendRosterSet:", contact);
}
,["void","TNStropheJID","CPString","CPString"]), new objj_method(sel_getUid("removeContact:"), function $TNStropheRoster__removeContact_(self, _cmd, aContact)
{
    objj_msgSend(self, "_sendRosterUnset:", aContact);
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("changeNickname:ofContact:"), function $TNStropheRoster__changeNickname_ofContact_(self, _cmd, newNickname, aContact)
{
    var oldNickname = objj_msgSend(aContact, "nickname");
    objj_msgSend(aContact, "setNickname:", newNickname);
    objj_msgSend(self, "_sendRosterSet:", aContact);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheContactNicknameUpdatedNotification, aContact);
    objj_msgSend(aContact, "setNickname:", oldNickname);
}
,["void","CPString","TNStropheContact"]), new objj_method(sel_getUid("getAllContactsTreeFromGroup:"), function $TNStropheRoster__getAllContactsTreeFromGroup_(self, _cmd, aGroup)
{
    var returnArray = objj_msgSend(CPArray, "array");
    return objj_msgSend(self, "_getAllContactsTreeFromGroup:array:", aGroup, returnArray);
}
,["CPArray","TNStropheGroup"]), new objj_method(sel_getUid("_getAllContactsTreeFromGroup:array:"), function $TNStropheRoster___getAllContactsTreeFromGroup_array_(self, _cmd, aGroup, returnArray)
{
    var subgroups = objj_msgSend(aGroup, "subGroups");
    objj_msgSend(returnArray, "addObjectsFromArray:", objj_msgSend(aGroup, "contacts"));
    for (var i = 0; i < objj_msgSend(aGroup, "subGroupsCount"); i++)
        returnArray = objj_msgSend(self, "_getAllContactsTreeFromGroup:array:", objj_msgSend(objj_msgSend(aGroup, "subGroups"), "objectAtIndex:", i), returnArray);
    return returnArray;
}
,["CPArray","TNStropheGroup","CPArray"]), new objj_method(sel_getUid("addContact:inGroup:push:"), function $TNStropheRoster__addContact_inGroup_push_(self, _cmd, aContact, aGroup, shouldPush)
{
    if (objj_msgSend(objj_msgSend(aContact, "groups"), "containsObject:", aGroup))
        return;
    objj_msgSend(objj_msgSend(aContact, "groups"), "addObject:", aGroup);
    objj_msgSend(objj_msgSend(aGroup, "contacts"), "addObject:", aContact);
    if (shouldPush)
    {
        objj_msgSend(self, "_sendRosterSet:", aContact);
        objj_msgSend(objj_msgSend(aContact, "groups"), "removeObject:", aGroup);
        objj_msgSend(objj_msgSend(aGroup, "contacts"), "removeObject:", aContact);
    }
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheContactGroupUpdatedNotification, aContact);
}
,["void","TNStropheContact","TNStropheGroup","BOOL"]), new objj_method(sel_getUid("removeContact:fromGroup:push:"), function $TNStropheRoster__removeContact_fromGroup_push_(self, _cmd, aContact, aGroup, shouldPush)
{
    var groupsOfContact = objj_msgSend(aContact, "groups");
    if (!objj_msgSend(groupsOfContact, "containsObject:", aGroup))
        return;
    objj_msgSend(groupsOfContact, "removeObject:", aGroup);
    objj_msgSend(objj_msgSend(aGroup, "contacts"), "removeObject:", aContact);
    if (shouldPush)
    {
        objj_msgSend(self, "_sendRosterSet:", aContact);
        objj_msgSend(groupsOfContact, "addObject:", aGroup);
        objj_msgSend(objj_msgSend(aGroup, "contacts"), "addObject:", aContact);
    }
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStropheContactGroupUpdatedNotification, aContact);
}
,["void","TNStropheContact","TNStropheGroup","BOOL"]), new objj_method(sel_getUid("setGroups:ofContact:"), function $TNStropheRoster__setGroups_ofContact_(self, _cmd, someGroups, aContact)
{
    var groupsOfContact = objj_msgSend(aContact, "groups"),
        oldGroups = objj_msgSend(groupsOfContact, "copy");
    objj_msgSend(aContact, "setGroups:", someGroups || objj_msgSend(CPArray, "array"));
    objj_msgSend(self, "_sendRosterSet:", aContact);
    objj_msgSend(aContact, "setGroups:", oldGroups);
}
,["void","CPArray","TNStropheContact"]), new objj_method(sel_getUid("moveGroup:intoGroup:"), function $TNStropheRoster__moveGroup_intoGroup_(self, _cmd, aGroup, anotherGroup)
{
    if (aGroup === anotherGroup)
        return;
    if (objj_msgSend(aGroup, "parentGroup"))
        objj_msgSend(objj_msgSend(aGroup, "parentGroup"), "removeSubGroup:", aGroup);
    else
        objj_msgSend(self._content, "removeObject:", aGroup);
    if (anotherGroup)
        objj_msgSend(anotherGroup, "addSubGroup:", aGroup);
    else if (!objj_msgSend(self._content, "containsObject:", aGroup))
        objj_msgSend(self._content, "addObject:", aGroup);
    objj_msgSend(self, "_sendRosterSet:", objj_msgSend(self, "getAllContactsTreeFromGroup:", anotherGroup));
}
,["void","TNStropheGroup","TNStropheGroup"]), new objj_method(sel_getUid("authorizeJID:"), function $TNStropheRoster__authorizeJID_(self, _cmd, aJID)
{
    var contact = objj_msgSend(self, "contactWithJID:", aJID);
    if (!contact)
        return;
    objj_msgSend(contact, "subscribe");
}
,["void","TNStropheJID"]), new objj_method(sel_getUid("unauthorizeJID:"), function $TNStropheRoster__unauthorizeJID_(self, _cmd, aJID)
{
    var contact = objj_msgSend(self, "contactWithJID:", aJID);
    if (!contact)
        return;
    objj_msgSend(contact, "unsubscribe");
}
,["void","TNStropheJID"]), new objj_method(sel_getUid("askAuthorizationTo:"), function $TNStropheRoster__askAuthorizationTo_(self, _cmd, aJID)
{
    var contact = objj_msgSend(self, "contactWithJID:", aJID);
    if (!contact)
        return;
    objj_msgSend(contact, "askSubscription");
}
,["void","TNStropheJID"]), new objj_method(sel_getUid("answerAuthorizationRequest:answer:"), function $TNStropheRoster__answerAuthorizationRequest_answer_(self, _cmd, aStanza, theAnswer)
{
    var requester = objj_msgSend(aStanza, "from"),
        nick = objj_msgSend(aStanza, "firstChildWithName:", "nick");
    if (theAnswer == YES)
    {
        objj_msgSend(self, "authorizeJID:", requester);
        objj_msgSend(self, "askAuthorizationTo:", requester);
        if (!objj_msgSend(self, "containsJID:", requester))
            objj_msgSend(self, "addContact:withName:inGroupWithPath:", requester, (nick ? objj_msgSend(nick, "text") : objj_msgSend(requester, "bare")), nil);
    }
    else
        objj_msgSend(self, "unauthorizeJID:", requester);
}
,["void","id","BOOL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("rosterWithConnection:"), function $TNStropheRoster__rosterWithConnection_(self, _cmd, aConnection)
{
    return objj_msgSend(objj_msgSend(TNStropheRoster, "alloc"), "initWithConnection:", aConnection);
}
,["TNStropheRoster","TNStropheConnection"])]);
}p;21;TNStropheRosterBase.jt;6673;@STATIC;1.0;I;23;Foundation/Foundation.ji;21;TNStropheConnection.ji;18;TNStropheContact.ji;16;TNStropheGroup.ji;14;TNStropheJID.ji;17;TNStropheStanza.jt;6515;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("TNStropheConnection.j", YES);
objj_executeFile("TNStropheContact.j", YES);
objj_executeFile("TNStropheGroup.j", YES);
objj_executeFile("TNStropheJID.j", YES);
objj_executeFile("TNStropheStanza.j", YES);
{var the_class = objj_allocateClassPair(CPObject, "TNStropheRosterBase"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_contactCache"), new objj_ivar("_groupCache"), new objj_ivar("_content"), new objj_ivar("_delegate"), new objj_ivar("_connection")]);
       
       



       
       










objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("contactCache"), function $TNStropheRosterBase__contactCache(self, _cmd)
{
return self._contactCache;
}
,["CPArray"]), new objj_method(sel_getUid("_setContactCache:"), function $TNStropheRosterBase___setContactCache_(self, _cmd, newValue)
{
self._contactCache = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("groupCache"), function $TNStropheRosterBase__groupCache(self, _cmd)
{
return self._groupCache;
}
,["CPArray"]), new objj_method(sel_getUid("_setGroupCache:"), function $TNStropheRosterBase___setGroupCache_(self, _cmd, newValue)
{
self._groupCache = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("content"), function $TNStropheRosterBase__content(self, _cmd)
{
return self._content;
}
,["CPArray"]), new objj_method(sel_getUid("_setContent:"), function $TNStropheRosterBase___setContent_(self, _cmd, newValue)
{
self._content = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("delegate"), function $TNStropheRosterBase__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNStropheRosterBase__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("connection"), function $TNStropheRosterBase__connection(self, _cmd)
{
return self._connection;
}
,["TNStropheConnection"]), new objj_method(sel_getUid("_setConnection:"), function $TNStropheRosterBase___setConnection_(self, _cmd, newValue)
{
self._connection = newValue;
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("initWithConnection:"), function $TNStropheRosterBase__initWithConnection_(self, _cmd, aConnection)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheRosterBase").super_class }, "init"))
    {
        self._connection = aConnection;
        self._content = objj_msgSend(CPArray, "array");
        self._contactCache = objj_msgSend(CPArray, "array");
        self._groupCache = objj_msgSend(CPArray, "array");
    }
    return self;
}
,["id","TNStropheConnection"]), new objj_method(sel_getUid("disconnect"), function $TNStropheRosterBase__disconnect(self, _cmd)
{
    objj_msgSend(self._connection, "disconnect");
}
,["void"]), new objj_method(sel_getUid("clear"), function $TNStropheRosterBase__clear(self, _cmd)
{
    objj_msgSend(self._content, "removeAllObjects");
    objj_msgSend(self._contactCache, "removeAllObjects");
    objj_msgSend(self._groupCache, "removeAllObjects");
}
,["void"]), new objj_method(sel_getUid("contacts"), function $TNStropheRosterBase__contacts(self, _cmd)
{
    return self._contactCache;
}
,["void"]), new objj_method(sel_getUid("cacheContact:"), function $TNStropheRosterBase__cacheContact_(self, _cmd, aContact)
{
    if (!objj_msgSend(self._contactCache, "containsObject:", aContact))
        objj_msgSend(self._contactCache, "addObject:", aContact);
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("uncacheContact:"), function $TNStropheRosterBase__uncacheContact_(self, _cmd, aContact)
{
    objj_msgSend(self._contactCache, "removeObject:", aContact);
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("contactWithJID:"), function $TNStropheRosterBase__contactWithJID_(self, _cmd, aJID)
{
    return objj_msgSend(self, "contactWithFullJID:", aJID) || objj_msgSend(self, "contactWithBareJID:", aJID);
}
,["TNStropheContact","TNStropheJID"]), new objj_method(sel_getUid("contactWithFullJID:"), function $TNStropheRosterBase__contactWithFullJID_(self, _cmd, aJID)
{
    for (var i = 0; i < objj_msgSend(self._contactCache, "count"); i++)
        if (objj_msgSend(objj_msgSend(objj_msgSend(self._contactCache, "objectAtIndex:", i), "JID"), "fullEquals:", aJID))
            return objj_msgSend(self._contactCache, "objectAtIndex:", i);
    return nil;
}
,["TNStropheContact","TNStropheJID"]), new objj_method(sel_getUid("contactWithBareJID:"), function $TNStropheRosterBase__contactWithBareJID_(self, _cmd, aJID)
{
    for (var i = 0; i < objj_msgSend(self._contactCache, "count"); i++)
        if (objj_msgSend(objj_msgSend(objj_msgSend(self._contactCache, "objectAtIndex:", i), "JID"), "bareEquals:", aJID))
            return objj_msgSend(self._contactCache, "objectAtIndex:", i);
    return nil;
}
,["TNStropheContact","TNStropheJID"]), new objj_method(sel_getUid("containsJID:"), function $TNStropheRosterBase__containsJID_(self, _cmd, aJID)
{
    return (objj_msgSend(self, "contactWithBareJID:", aJID) || objj_msgSend(self, "contactWithFullJID:", aJID));
}
,["BOOL","TNStropheJID"]), new objj_method(sel_getUid("containsFullJID:"), function $TNStropheRosterBase__containsFullJID_(self, _cmd, aJID)
{
    return objj_msgSend(self, "contactWithFullJID:", aJID) ? YES : NO;
}
,["BOOL","TNStropheJID"]), new objj_method(sel_getUid("containsBareJID:"), function $TNStropheRosterBase__containsBareJID_(self, _cmd, aJID)
{
    return objj_msgSend(self, "contactWithBareJID:", aJID) ? YES : NO;
}
,["BOOL","TNStropheJID"]), new objj_method(sel_getUid("changeNickname:ofContact:"), function $TNStropheRosterBase__changeNickname_ofContact_(self, _cmd, aName, aContact)
{
    objj_msgSend(aContact, "setNickname:", aName);
}
,["void","CPString","TNStropheContact"]), new objj_method(sel_getUid("changeNickname:ofContactWithJID:"), function $TNStropheRosterBase__changeNickname_ofContactWithJID_(self, _cmd, aName, aJID)
{
    objj_msgSend(self, "changeNickname:ofContact:", aName, objj_msgSend(self, "contactWithJID:", aJID));
}
,["void","CPString","TNStropheJID"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("rosterWithConnection:"), function $TNStropheRosterBase__rosterWithConnection_(self, _cmd, aConnection)
{
    return objj_msgSend(objj_msgSend(TNStropheRosterBase, "alloc"), "initWithConnection:", aConnection);
}
,["TNStropheRosterBase","TNStropheConnection"])]);
}p;31;TNStropheServerAdministration.jt;17873;@STATIC;1.0;I;23;Foundation/Foundation.ji;28;Resources/Strophe/strophe.jsi;25;Resources/Strophe/sha1.jsi;21;TNStropheConnection.ji;14;TNStropheJID.jt;17717;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("Resources/Strophe/strophe.js", YES);
objj_executeFile("Resources/Strophe/sha1.js", YES);
objj_executeFile("TNStropheConnection.j", YES);
objj_executeFile("TNStropheJID.j", YES);
TNStropheServerAdministrationGetConnectedUserNotification = "TNStropheServerAdministrationGetConnectedUserNotification";
TNStropheServerAdministrationGetRegisteredUserNotification = "TNStropheServerAdministrationGetRegisteredUserNotification";
TNStropheServerAdministrationRegisterUserNotification = "TNStropheServerAdministrationRegisterUserNotification";
TNStropheServerAdministrationSendAnnouncementNotification = "TNStropheServerAdministrationSendAnnouncementNotification";
TNStropheServerAdministrationSetUserEnabledNotification = "TNStropheServerAdministrationSetUserEnabledNotification";
TNStropheServerAdministrationUnregisterUserNotification = "TNStropheServerAdministrationUnregisterUserNotification";
{var the_class = objj_allocateClassPair(CPObject, "TNStropheServerAdministration"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_connection"), new objj_ivar("_server"), new objj_ivar("_delegate")]);
       
       

       
       


       
       









objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("connection"), function $TNStropheServerAdministration__connection(self, _cmd)
{
return self._connection;
}
,["TNStropheConnection"]), new objj_method(sel_getUid("setConnection:"), function $TNStropheServerAdministration__setConnection_(self, _cmd, newValue)
{
self._connection = newValue;
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("server"), function $TNStropheServerAdministration__server(self, _cmd)
{
return self._server;
}
,["TNStropheJID"]), new objj_method(sel_getUid("setServer:"), function $TNStropheServerAdministration__setServer_(self, _cmd, newValue)
{
self._server = newValue;
}
,["void","TNStropheJID"]), new objj_method(sel_getUid("delegate"), function $TNStropheServerAdministration__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNStropheServerAdministration__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("initWithConnection:server:"), function $TNStropheServerAdministration__initWithConnection_server_(self, _cmd, aConnection, aServer)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheServerAdministration").super_class }, "init"))
    {
        self._connection = aConnection;
        self._server = aServer
    }
    return self;
}
,["void","TNStropheConnection","TNStropheJID"]), new objj_method(sel_getUid("sendAction:selector:"), function $TNStropheServerAdministration__sendAction_selector_(self, _cmd, anAction, aSelector)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"id": uid, "type": "set"}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setTo:", self._server);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "command", {
        "xmlns": Strophe.NS.COMMAND,
        "action": "execute",
        "node": anAction});
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", aSelector, self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","CPString","SEL"]), new objj_method(sel_getUid("sendAnnouncement:subject:"), function $TNStropheServerAdministration__sendAnnouncement_subject_(self, _cmd, anAnnouncement, aSubject)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"id": uid, "type": "set"}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setTo:", self._server);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "command", {
        "xmlns": Strophe.NS.COMMAND,
        "node": "http://jabber.org/protocol/admin#announce"});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "x", {"xmlns": "jabber:x:data", "type": "submit"});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"type": "hidden", "var": "FORM_TYPE"});
    objj_msgSend(stanza, "addChildWithName:", "value");
    objj_msgSend(stanza, "addTextNode:", "http://jabber.org/protocol/admin");
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "up");
    if (aSubject)
    {
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"var": "subject"});
        objj_msgSend(stanza, "addChildWithName:", "value");
        objj_msgSend(stanza, "addTextNode:", aSubject);
        objj_msgSend(stanza, "up");
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"var": "body"});
    objj_msgSend(stanza, "addChildWithName:", "value");
    objj_msgSend(stanza, "addTextNode:", anAnnouncement);
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didSendAnnouncement:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("_didSendAnnouncement:"), function $TNStropheServerAdministration___didSendAnnouncement_(self, _cmd, aStanza)
{
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("serverAdmin:didSendAnnouncement:")))
        objj_msgSend(self._delegate, "serverAdmin:didSendAnnouncement:", self, aStanza);
    else
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheServerAdministrationSendAnnouncementNotification, self, aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("registeredUsers"), function $TNStropheServerAdministration__registeredUsers(self, _cmd)
{
    objj_msgSend(self, "sendAction:selector:", "http://jabber.org/protocol/admin#get-registered-users-list", sel_getUid("_didGetRegisteredUsers:"))
}
,["void"]), new objj_method(sel_getUid("_didGetRegisteredUsers:"), function $TNStropheServerAdministration___didGetRegisteredUsers_(self, _cmd, aStanza)
{
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("serverAdmin:didGetRegisteredUsers:")))
        objj_msgSend(self._delegate, "serverAdmin:didGetRegisteredUsers:", self, aStanza);
    else
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheServerAdministrationGetRegisteredUserNotification, self, aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("connectedUsers"), function $TNStropheServerAdministration__connectedUsers(self, _cmd)
{
    objj_msgSend(self, "sendAction:selector:", "http://jabber.org/protocol/admin#get-online-users-list", sel_getUid("_didGetConnectedUsers:"))
}
,["void"]), new objj_method(sel_getUid("_didGetConnectedUsers:"), function $TNStropheServerAdministration___didGetConnectedUsers_(self, _cmd, aStanza)
{
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("serverAdmin:didGetConnectedUsers:")))
        objj_msgSend(self._delegate, "serverAdmin:didGetConnectedUsers:", self, aStanza);
    else
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheServerAdministrationGetConnectedUserNotification, self, aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("registerUser:password:name:surname:email:"), function $TNStropheServerAdministration__registerUser_password_name_surname_email_(self, _cmd, aJID, aPassword, aName, aSurname, anEmail)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"id": uid, "type": "set"}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setTo:", self._server);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "command", {
        "xmlns": Strophe.NS.COMMAND,
        "node": "http://jabber.org/protocol/admin#add-user"});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "x", {"xmlns": "jabber:x:data", "type": "submit"});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"type": "hidden", "var": "FORM_TYPE"});
    objj_msgSend(stanza, "addChildWithName:", "value");
    objj_msgSend(stanza, "addTextNode:", "http://jabber.org/protocol/admin");
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"var": "accountjid"});
    objj_msgSend(stanza, "addChildWithName:", "value");
    objj_msgSend(stanza, "addTextNode:", objj_msgSend(aJID, "bare"));
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"var": "password"});
    objj_msgSend(stanza, "addChildWithName:", "value");
    objj_msgSend(stanza, "addTextNode:", aPassword);
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"var": "password-verify"});
    objj_msgSend(stanza, "addChildWithName:", "value");
    objj_msgSend(stanza, "addTextNode:", aPassword);
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"var": "email"});
    objj_msgSend(stanza, "addChildWithName:", "value");
    objj_msgSend(stanza, "addTextNode:", anEmail);
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"var": "given_name"});
    objj_msgSend(stanza, "addChildWithName:", "value");
    objj_msgSend(stanza, "addTextNode:", aName);
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"var": "surname"});
    objj_msgSend(stanza, "addChildWithName:", "value");
    objj_msgSend(stanza, "addTextNode:", aSurname);
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "up");
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didRegisterUser:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","TNStropheJID","CPString","CPString","CPString","CPString"]), new objj_method(sel_getUid("_didRegisterUser:"), function $TNStropheServerAdministration___didRegisterUser_(self, _cmd, aStanza)
{
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("serverAdmin:didRegisterUser:")))
        objj_msgSend(self._delegate, "serverAdmin:didRegisterUser:", self, aStanza);
    else
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheServerAdministrationRegisterUserNotification, self, aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("unregisterUsers:"), function $TNStropheServerAdministration__unregisterUsers_(self, _cmd, someJIDs)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"id": uid, "type": "set"}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setTo:", self._server);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "command", {
        "xmlns": Strophe.NS.COMMAND,
        "node": "http://jabber.org/protocol/admin#delete-user"});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "x", {"xmlns": "jabber:x:data", "type": "submit"});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"type": "hidden", "var": "FORM_TYPE"});
    objj_msgSend(stanza, "addChildWithName:", "value");
    objj_msgSend(stanza, "addTextNode:", "http://jabber.org/protocol/admin");
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"var": "accountjids"});
    for (var i = 0; i < objj_msgSend(someJIDs, "count"); i++)
    {
        objj_msgSend(stanza, "addChildWithName:", "value");
        objj_msgSend(stanza, "addTextNode:", objj_msgSend(objj_msgSend(someJIDs, "objectAtIndex:", i), "bare"));
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(stanza, "up");
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didUnregisterUser:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","CPArray"]), new objj_method(sel_getUid("_didUnregisterUser:"), function $TNStropheServerAdministration___didUnregisterUser_(self, _cmd, aStanza)
{
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("serverAdmin:didUnregisterUser:")))
        objj_msgSend(self._delegate, "serverAdmin:didUnregisterUser:", self, aStanza);
    else
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheServerAdministrationUnregisterUserNotification, self, aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("setUsers:enabled:"), function $TNStropheServerAdministration__setUsers_enabled_(self, _cmd, someJIDs, shouldEnable)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"id": uid, "type": "set"}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id"),
        node = (shouldEnable) ? "http://jabber.org/protocol/admin#reenable-user" : "http://jabber.org/protocol/admin#disable-user";
    objj_msgSend(stanza, "setTo:", self._server);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "command", {
        "xmlns": Strophe.NS.COMMAND,
        "node": node});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "x", {"xmlns": "jabber:x:data", "type": "submit"});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"type": "hidden", "var": "FORM_TYPE"});
    objj_msgSend(stanza, "addChildWithName:", "value");
    objj_msgSend(stanza, "addTextNode:", "http://jabber.org/protocol/admin");
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"var": "accountjids"});
    for (var i = 0; i < objj_msgSend(someJIDs, "count"); i++)
    {
        objj_msgSend(stanza, "addChildWithName:", "value");
        objj_msgSend(stanza, "addTextNode:", objj_msgSend(objj_msgSend(someJIDs, "objectAtIndex:", i), "bare"));
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(stanza, "up");
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didEnableUsers:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","CPArray","BOOL"]), new objj_method(sel_getUid("_didEnableUsers:"), function $TNStropheServerAdministration___didEnableUsers_(self, _cmd, aStanza)
{
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("serverAdmin:didEnableUsers:")))
        objj_msgSend(self._delegate, "serverAdmin:didEnableUsers:", self, aStanza);
    else
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheServerAdministrationSetUserEnabledNotification, self, aStanza);
}
,["void","TNStropheStanza"])]);
}
{var the_class = objj_allocateClassPair(TNStropheServerAdministration, "TNStropheEjabberdAdministration"),
meta_class = the_class.isa;
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("registredUsers"), function $TNStropheEjabberdAdministration__registredUsers(self, _cmd)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"id": uid, "type": "get"}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setTo:", self._server);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {
        "xmlns": "http://jabber.org/protocol/disco#items",
        "node": "all users"});
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didGetRegisteredUsers:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void"]), new objj_method(sel_getUid("_didGetRegisteredUsers:"), function $TNStropheEjabberdAdministration___didGetRegisteredUsers_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") != "result")
        objj_msgSend(CPException, "raise:reason:", "error", "stanza error");
    var users = objj_msgSend(CPArray, "array"),
        items = objj_msgSend(aStanza, "childrenWithName:", "item");
    for (var i = 0; i < objj_msgSend(items, "count"); i++)
        objj_msgSend(users, "addObject:", objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(objj_msgSend(items, "objectAtIndex:", i), "valueForAttribute:", "jid")));
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("serverAdmin:didGetRegisteredUsers:")))
        objj_msgSend(self._delegate, "serverAdmin:didGetRegisteredUsers:", self, users);
    else
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheServerAdministrationGetRegisteredUserNotification, self, users);
}
,["void","TNStropheStanza"])]);
}p;17;TNStropheStanza.jt;10689;@STATIC;1.0;I;23;Foundation/Foundation.ji;28;Resources/Strophe/strophe.jsi;25;Resources/Strophe/sha1.jsi;14;TNStropheJID.ji;11;TNXMLNode.jt;10543;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("Resources/Strophe/strophe.js", YES);
objj_executeFile("Resources/Strophe/sha1.js", YES);
objj_executeFile("TNStropheJID.j", YES);
objj_executeFile("TNXMLNode.j", YES);
{var the_class = objj_allocateClassPair(TNXMLNode, "TNStropheStanza"),
meta_class = the_class.isa;




















       
       

       
       












objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithName:to:attributes:bare:"), function $TNStropheStanza__initWithName_to_attributes_bare_(self, _cmd, aName, aJID, someAttributes, sendToBareJID)
{
    if (aJID && !someAttributes)
        someAttributes = {};
    if (someAttributes)
    {
        if (someAttributes.isa)
            objj_msgSend(someAttributes, "setValue:forKey:", ((sendToBareJID) ? objj_msgSend(aJID, "bare") : aJID), "to");
        else
            someAttributes.to = ((sendToBareJID) ? objj_msgSend(aJID, "bare") : objj_msgSend(aJID, "full"));
    }
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheStanza").super_class }, "initWithName:andAttributes:", aName, someAttributes);
}
,["TNStropheStanza","CPString","TNStropheJID","CPDictionary","BOOL"]), new objj_method(sel_getUid("from"), function $TNStropheStanza__from(self, _cmd)
{
    while (objj_msgSend(self, "up"));
    return objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(self, "valueForAttribute:", "from"));
}
,["CPString"]), new objj_method(sel_getUid("setFrom:"), function $TNStropheStanza__setFrom_(self, _cmd, aFrom)
{
    if (objj_msgSend(aFrom, "isKindOfClass:", CPString))
        aFrom = objj_msgSend(TNStropheJID, "stropheJIDWithString:", aFrom);
    while (objj_msgSend(self, "up"));
    objj_msgSend(self, "setValue:forAttribute:", objj_msgSend(aFrom, "full"), "from");
}
,["void","id"]), new objj_method(sel_getUid("fromBare"), function $TNStropheStanza__fromBare(self, _cmd)
{
    return objj_msgSend(objj_msgSend(self, "from"), "bare");
}
,["CPString"]), new objj_method(sel_getUid("fromUser"), function $TNStropheStanza__fromUser(self, _cmd)
{
    return objj_msgSend(objj_msgSend(self, "from"), "node");
}
,["CPString"]), new objj_method(sel_getUid("fromDomain"), function $TNStropheStanza__fromDomain(self, _cmd)
{
    return objj_msgSend(objj_msgSend(self, "from"), "domain");
}
,["CPString"]), new objj_method(sel_getUid("fromResource"), function $TNStropheStanza__fromResource(self, _cmd)
{
    return objj_msgSend(objj_msgSend(self, "from"), "resource");
}
,["CPString"]), new objj_method(sel_getUid("to"), function $TNStropheStanza__to(self, _cmd)
{
    while (objj_msgSend(self, "up"));
    return objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(self, "valueForAttribute:", "to"));
}
,["CPString"]), new objj_method(sel_getUid("setTo:"), function $TNStropheStanza__setTo_(self, _cmd, aTo)
{
    if (objj_msgSend(aTo, "isKindOfClass:", CPString))
        aTo = objj_msgSend(TNStropheJID, "stropheJIDWithString:", aTo);
    while (objj_msgSend(self, "up"));
    objj_msgSend(self, "setValue:forAttribute:", objj_msgSend(aTo, "full"), "to");
}
,["void","id"]), new objj_method(sel_getUid("type"), function $TNStropheStanza__type(self, _cmd)
{
    return objj_msgSend(self, "valueForAttribute:", "type");
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNStropheStanza__setType_(self, _cmd, aType)
{
    objj_msgSend(self, "setValue:forAttribute:", aType, "type");
}
,["void","CPString"]), new objj_method(sel_getUid("ID"), function $TNStropheStanza__ID(self, _cmd)
{
    return objj_msgSend(self, "valueForAttribute:", "id");
}
,["CPString"]), new objj_method(sel_getUid("setID:"), function $TNStropheStanza__setID_(self, _cmd, anID)
{
    while (objj_msgSend(self, "up"));
    objj_msgSend(self, "setValue:forAttribute:", anID, "id");
}
,["void","CPString"]), new objj_method(sel_getUid("delayTime"), function $TNStropheStanza__delayTime(self, _cmd)
{
    if (objj_msgSend(self, "containsChildrenWithName:", "delay") && objj_msgSend(objj_msgSend(self, "firstChildWithName:", "delay"), "namespace") == Strophe.NS.DELAY)
    {
        var messageDelay = objj_msgSend(objj_msgSend(self, "firstChildWithName:", "delay"), "valueForAttribute:", "stamp"),
            match = messageDelay.match(new RegExp(/(\d{4}-\d{2}-\d{2})T(\d{2}:\d{2}:\d{2})Z/));
        if (!match || match.length != 3)
            objj_msgSend(CPException, "raise:reason:", CPInvalidArgumentException, "delayTime: the string must be of YYYY-MM-DDTHH:MM:SSZ format");
        return objj_msgSend(objj_msgSend(CPDate, "alloc"), "initWithString:", (match[1] + " " + match[2] + " +0000"));
    }
    return objj_msgSend(CPDate, "dateWithTimeIntervalSinceNow:", 0);
}
,["CPDate"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("stanzaWithStanza:"), function $TNStropheStanza__stanzaWithStanza_(self, _cmd, aStanza)
{
    return objj_msgSend(objj_msgSend(TNStropheStanza, "alloc"), "initWithNode:", aStanza);
}
,["TNStropheStanza","id"]), new objj_method(sel_getUid("stanzaWithName:andAttributes:"), function $TNStropheStanza__stanzaWithName_andAttributes_(self, _cmd, aName, attributes)
{
    return objj_msgSend(objj_msgSend(TNStropheStanza, "alloc"), "initWithName:andAttributes:", aName, attributes);
}
,["TNStropheStanza","CPString","CPDictionary"]), new objj_method(sel_getUid("stanzaWithName:to:attributes:"), function $TNStropheStanza__stanzaWithName_to_attributes_(self, _cmd, aName, aJID, attributes)
{
    return objj_msgSend(objj_msgSend(TNStropheStanza, "alloc"), "initWithName:to:attributes:bare:", aName, aJID, attributes, NO);
}
,["TNStropheStanza","CPString","TNStropheJID","CPDictionary"]), new objj_method(sel_getUid("stanzaWithName:to:attributes:bare:"), function $TNStropheStanza__stanzaWithName_to_attributes_bare_(self, _cmd, aName, aJID, attributes, sendToBareJID)
{
    return objj_msgSend(objj_msgSend(TNStropheStanza, "alloc"), "initWithName:to:attributes:bare:", aName, aJID, attributes, sendToBareJID);
}
,["TNStropheStanza","CPString","TNStropheJID","CPDictionary","BOOL"]), new objj_method(sel_getUid("iqWithAttributes:"), function $TNStropheStanza__iqWithAttributes_(self, _cmd, attributes)
{
    return objj_msgSend(TNStropheStanza, "stanzaWithName:andAttributes:", "iq", attributes);
}
,["TNStropheStanza","CPDictionary"]), new objj_method(sel_getUid("iq"), function $TNStropheStanza__iq(self, _cmd)
{
    return objj_msgSend(TNStropheStanza, "iqWithAttributes:", nil);
}
,["TNStropheStanza"]), new objj_method(sel_getUid("iqTo:"), function $TNStropheStanza__iqTo_(self, _cmd, aJID)
{
    return objj_msgSend(TNStropheStanza, "iqTo:withAttributes:", aJID, nil);
}
,["TNStropheStanza","TNStropheJID"]), new objj_method(sel_getUid("iqWithType:"), function $TNStropheStanza__iqWithType_(self, _cmd, aType)
{
    return objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"type": aType});
}
,["TNStropheStanza","CPString"]), new objj_method(sel_getUid("iqTo:withType:"), function $TNStropheStanza__iqTo_withType_(self, _cmd, aJID, aType)
{
    return objj_msgSend(TNStropheStanza, "iqTo:withAttributes:", aJID, {"type": aType});
}
,["TNStropheStanza","TNStropheJID","CPString"]), new objj_method(sel_getUid("iqTo:withAttributes:"), function $TNStropheStanza__iqTo_withAttributes_(self, _cmd, aJID, attributes)
{
    return objj_msgSend(TNStropheStanza, "stanzaWithName:to:attributes:bare:", "iq", aJID, attributes, NO);
}
,["TNStropheStanza","TNStropheJID","CPDictionary"]), new objj_method(sel_getUid("iqTo:withAttributes:bare:"), function $TNStropheStanza__iqTo_withAttributes_bare_(self, _cmd, aJID, attributes, sendToBareJID)
{
    return objj_msgSend(TNStropheStanza, "stanzaWithName:to:attributes:bare:", "iq", aJID, attributes, sendToBareJID);
}
,["TNStropheStanza","TNStropheJID","CPDictionary","BOOL"]), new objj_method(sel_getUid("presenceWithAttributes:"), function $TNStropheStanza__presenceWithAttributes_(self, _cmd, attributes)
{
    return objj_msgSend(TNStropheStanza, "stanzaWithName:andAttributes:", "presence", attributes);
}
,["TNStropheStanza","CPDictionary"]), new objj_method(sel_getUid("presence"), function $TNStropheStanza__presence(self, _cmd)
{
    return objj_msgSend(TNStropheStanza, "presenceWithAttributes:", nil);
}
,["TNStropheStanza"]), new objj_method(sel_getUid("presenceTo:"), function $TNStropheStanza__presenceTo_(self, _cmd, aJID)
{
    return objj_msgSend(TNStropheStanza, "presenceTo:withAttributes:", aJID, nil);
}
,["TNStropheStanza","TNStropheJID"]), new objj_method(sel_getUid("presenceTo:withAttributes:"), function $TNStropheStanza__presenceTo_withAttributes_(self, _cmd, aJID, attributes)
{
    return objj_msgSend(TNStropheStanza, "stanzaWithName:to:attributes:bare:", "presence", aJID, attributes, NO);
}
,["TNStropheStanza","TNStropheJID","CPDictionary"]), new objj_method(sel_getUid("presenceTo:withAttributes:bare:"), function $TNStropheStanza__presenceTo_withAttributes_bare_(self, _cmd, aJID, attributes, sendToBareJID)
{
    return objj_msgSend(TNStropheStanza, "stanzaWithName:to:attributes:bare:", "presence", aJID, attributes, sendToBareJID);
}
,["TNStropheStanza","TNStropheJID","CPDictionary","BOOL"]), new objj_method(sel_getUid("messageWithAttributes:"), function $TNStropheStanza__messageWithAttributes_(self, _cmd, attributes)
{
    return objj_msgSend(TNStropheStanza, "stanzaWithName:andAttributes:", "message", attributes);
}
,["TNStropheStanza","CPDictionary"]), new objj_method(sel_getUid("message"), function $TNStropheStanza__message(self, _cmd)
{
    return objj_msgSend(TNStropheStanza, "messageWithAttributes:", nil);
}
,["TNStropheStanza"]), new objj_method(sel_getUid("messageTo:"), function $TNStropheStanza__messageTo_(self, _cmd, aJID)
{
    return objj_msgSend(TNStropheStanza, "messageTo:withAttributes:", aJID, nil);
}
,["TNStropheStanza","TNStropheJID"]), new objj_method(sel_getUid("messageTo:withAttributes:"), function $TNStropheStanza__messageTo_withAttributes_(self, _cmd, aJID, attributes)
{
    return objj_msgSend(TNStropheStanza, "stanzaWithName:to:attributes:", "message", aJID, attributes);
}
,["TNStropheStanza","TNStropheJID","CPDictionary"]), new objj_method(sel_getUid("messageTo:withAttributes:bare:"), function $TNStropheStanza__messageTo_withAttributes_bare_(self, _cmd, aJID, attributes, sendToBareJID)
{
    return objj_msgSend(TNStropheStanza, "stanzaWithName:to:attributes:bare:", "message", aJID, attributes, sendToBareJID);
}
,["TNStropheStanza","TNStropheJID","CPDictionary","BOOL"])]);
}p;16;TNStropheUtils.jt;516;@STATIC;1.0;t;498;TNStropheStripHTMLCharCode = function(str)
{
    str = str.replace(/&amp;/g, '&');
    str = str.replace(/&nbsp;/g, ' ');
    str = str.replace(/&quote;/g, '\"');
    str = str.replace(/&apos;/g, '\'');
    str = str.replace(/&lt;/g, '<');
    str = str.replace(/&gt;/g, '>');
    str = str.replace(/&agrave;/g, 'à');
    str = str.replace(/&ccedil;/g, 'ç');
    str = str.replace(/&egrave;/g, 'è');
    str = str.replace(/&eacute;/g, 'é');
    str = str.replace(/&ecirc;/g, 'ê');
    return str;
}p;16;TNStropheVCard.jt;9671;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPImage.ji;11;TNXMLNode.jt;9587;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("TNXMLNode.j", YES);
{var the_class = objj_allocateClassPair(CPObject, "TNStropheVCard"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_fullName"), new objj_ivar("_organizationName"), new objj_ivar("_organizationUnit"), new objj_ivar("_userID"), new objj_ivar("_locality"), new objj_ivar("_categories"), new objj_ivar("_type"), new objj_ivar("_role"), new objj_ivar("_title"), new objj_ivar("_photo")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("fullName"), function $TNStropheVCard__fullName(self, _cmd)
{
return self._fullName;
}
,["CPString"]), new objj_method(sel_getUid("setFullName:"), function $TNStropheVCard__setFullName_(self, _cmd, newValue)
{
self._fullName = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("organizationName"), function $TNStropheVCard__organizationName(self, _cmd)
{
return self._organizationName;
}
,["CPString"]), new objj_method(sel_getUid("setOrganizationName:"), function $TNStropheVCard__setOrganizationName_(self, _cmd, newValue)
{
self._organizationName = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("organizationUnit"), function $TNStropheVCard__organizationUnit(self, _cmd)
{
return self._organizationUnit;
}
,["CPString"]), new objj_method(sel_getUid("setOrganizationUnit:"), function $TNStropheVCard__setOrganizationUnit_(self, _cmd, newValue)
{
self._organizationUnit = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("userID"), function $TNStropheVCard__userID(self, _cmd)
{
return self._userID;
}
,["CPString"]), new objj_method(sel_getUid("setUserID:"), function $TNStropheVCard__setUserID_(self, _cmd, newValue)
{
self._userID = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("locality"), function $TNStropheVCard__locality(self, _cmd)
{
return self._locality;
}
,["CPString"]), new objj_method(sel_getUid("setLocality:"), function $TNStropheVCard__setLocality_(self, _cmd, newValue)
{
self._locality = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("categories"), function $TNStropheVCard__categories(self, _cmd)
{
return self._categories;
}
,["CPString"]), new objj_method(sel_getUid("setCategories:"), function $TNStropheVCard__setCategories_(self, _cmd, newValue)
{
self._categories = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("type"), function $TNStropheVCard__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNStropheVCard__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("role"), function $TNStropheVCard__role(self, _cmd)
{
return self._role;
}
,["CPString"]), new objj_method(sel_getUid("setRole:"), function $TNStropheVCard__setRole_(self, _cmd, newValue)
{
self._role = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("title"), function $TNStropheVCard__title(self, _cmd)
{
return self._title;
}
,["CPString"]), new objj_method(sel_getUid("setTitle:"), function $TNStropheVCard__setTitle_(self, _cmd, newValue)
{
self._title = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("photo"), function $TNStropheVCard__photo(self, _cmd)
{
return self._photo;
}
,["CPImage"]), new objj_method(sel_getUid("setPhoto:"), function $TNStropheVCard__setPhoto_(self, _cmd, newValue)
{
self._photo = newValue;
}
,["void","CPImage"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNStropheVCard__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheVCard").super_class }, "init"))
    {
        self._fullName = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "FN"), "text");
        self._organizationName = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "ORGNAME"), "text");
        self._organizationUnit = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "ORGUNIT"), "text");
        self._userID = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "USERID"), "text");
        self._locality = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "LOCALITY"), "text");
        self._categories = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "CATEGORIES"), "text");
        self._type = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "TYPE"), "text");
        self._role = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "ROLE"), "text");
        self._title = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "TITLE"), "text");
        var photoNode;
        if (photoNode = objj_msgSend(aNode, "firstChildWithName:", "PHOTO"))
        {
            var data = objj_msgSend(objj_msgSend(photoNode, "firstChildWithName:", "BINVAL"), "text");
            self._photo = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithData:", objj_msgSend(CPData, "dataWithBase64:", data));
        }
    }
    return self;
}
,["void","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNStropheVCard__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:andAttributes:", "vCard", {"xmlns": "vcard-temp"});
    if (self._fullName)
    {
        objj_msgSend(node, "addChildWithName:", "FN");
        objj_msgSend(node, "addTextNode:", self._fullName);
        objj_msgSend(node, "up");
    }
    if (self._title)
    {
        objj_msgSend(node, "addChildWithName:", "TITLE");
        objj_msgSend(node, "addTextNode:", self._title);
        objj_msgSend(node, "up");
    }
    if (self._organizationName)
    {
        objj_msgSend(node, "addChildWithName:", "ORGNAME");
        objj_msgSend(node, "addTextNode:", self._organizationName);
        objj_msgSend(node, "up");
    }
    if (self._organizationUnit)
    {
        objj_msgSend(node, "addChildWithName:", "ORGUNIT");
        objj_msgSend(node, "addTextNode:", self._organizationUnit);
        objj_msgSend(node, "up");
    }
    if (self._userID)
    {
        objj_msgSend(node, "addChildWithName:", "USERID");
        objj_msgSend(node, "addTextNode:", self._userID);
        objj_msgSend(node, "up");
    }
    if (self._locality)
    {
        objj_msgSend(node, "addChildWithName:", "LOCALITY");
        objj_msgSend(node, "addTextNode:", self._locality);
        objj_msgSend(node, "up");
    }
    if (self._categories)
    {
        objj_msgSend(node, "addChildWithName:", "CATEGORIES");
        objj_msgSend(node, "addTextNode:", self._categories);
        objj_msgSend(node, "up");
    }
    if (self._type)
    {
        objj_msgSend(node, "addChildWithName:", "TYPE");
        objj_msgSend(node, "addTextNode:", self._type);
        objj_msgSend(node, "up");
    }
    if (self._role)
    {
        objj_msgSend(node, "addChildWithName:", "ROLE");
        objj_msgSend(node, "addTextNode:", self._role);
        objj_msgSend(node, "up");
    }
    if (self._photo)
    {
        objj_msgSend(node, "addChildWithName:", "PHOTO");
        objj_msgSend(node, "addChildWithName:", "BINVAL");
        objj_msgSend(node, "addTextNode:", objj_msgSend(objj_msgSend(self._photo, "data"), "base64"));
        objj_msgSend(node, "up");
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}
{
var the_class = objj_getClass("TNStropheVCard")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNStropheVCard\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $TNStropheVCard__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheVCard").super_class }, "init"))
    {
         self._fullName = objj_msgSend(aCoder, "decodeObjectForKey:", "_fullName");
         self._organizationName = objj_msgSend(aCoder, "decodeObjectForKey:", "_organizationName");
         self._organizationUnit = objj_msgSend(aCoder, "decodeObjectForKey:", "_organizationUnit");
         self._userID = objj_msgSend(aCoder, "decodeObjectForKey:", "_userID");
         self._locality = objj_msgSend(aCoder, "decodeObjectForKey:", "_locality");
         self._categories = objj_msgSend(aCoder, "decodeObjectForKey:", "_categories");
         self._type = objj_msgSend(aCoder, "decodeObjectForKey:", "_type");
         self._role = objj_msgSend(aCoder, "decodeObjectForKey:", "_role");
         self._title = objj_msgSend(aCoder, "decodeObjectForKey:", "_title");
         self._photo = objj_msgSend(aCoder, "decodeObjectForKey:", "_photo");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNStropheVCard__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", self._fullName, "_fullName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._organizationName, "_organizationName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._organizationUnit, "_organizationUnit");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._userID, "_userID");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._locality, "_locality");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._categories, "_categories");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._type, "_type");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._role, "_role");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._title, "_title");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._photo, "_photo");
}
,["void","CPCoder"])]);
}p;11;TNXMLNode.jt;7565;@STATIC;1.0;I;23;Foundation/Foundation.ji;28;Resources/Strophe/strophe.jsi;25;Resources/Strophe/sha1.jsi;16;TNStropheUtils.jt;7434;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("Resources/Strophe/strophe.js", YES);
objj_executeFile("Resources/Strophe/sha1.js", YES);
objj_executeFile("TNStropheUtils.j", YES);
{var the_class = objj_allocateClassPair(CPObject, "TNXMLNode"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_xmlNode")]);


       
       


       
       








       
       





       
       






objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("xmlNode"), function $TNXMLNode__xmlNode(self, _cmd)
{
return self._xmlNode;
}
,["XMLElement"]), new objj_method(sel_getUid("initWithNode:"), function $TNXMLNode__initWithNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNXMLNode").super_class }, "init"))
    {
        if ((aNode.c) && (aNode.c) != undefined)
        {
            self._xmlNode = aNode;
        }
        else
        {
            self._xmlNode = new Strophe.Builder('msg');
            self._xmlNode.nodeTree = aNode;
            self._xmlNode.node = aNode;
        }
    }
    return self;
}
,["TNXMLNode","id"]), new objj_method(sel_getUid("initWithName:andAttributes:"), function $TNXMLNode__initWithName_andAttributes_(self, _cmd, aName, attributes)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNXMLNode").super_class }, "init"))
    {
        self._xmlNode = new Strophe.Builder(aName, attributes);
    }
    return self;
}
,["TNXMLNode","CPString","CPDictionary"]), new objj_method(sel_getUid("copy"), function $TNXMLNode__copy(self, _cmd)
{
    return objj_msgSend(TNXMLNode, "nodeWithXMLNode:", Strophe.copyElement(objj_msgSend(self, "tree")));
}
,["TNXMLNode"]), new objj_method(sel_getUid("addNode:"), function $TNXMLNode__addNode_(self, _cmd, aNode)
{
    if (!aNode)
        return;
    self._xmlNode.cnode(objj_msgSend(aNode, "tree"));
}
,["void","TNXMLNode"]), new objj_method(sel_getUid("addTextNode:"), function $TNXMLNode__addTextNode_(self, _cmd, aText)
{
    self._xmlNode = self._xmlNode.t(aText);
}
,["void","CPString"]), new objj_method(sel_getUid("text"), function $TNXMLNode__text(self, _cmd)
{
    return TNStropheStripHTMLCharCode(Strophe.getText(objj_msgSend(self, "tree")));
}
,["CPString"]), new objj_method(sel_getUid("tree"), function $TNXMLNode__tree(self, _cmd)
{
    return self._xmlNode.tree();
}
,["id"]), new objj_method(sel_getUid("up"), function $TNXMLNode__up(self, _cmd)
{
    if (self._xmlNode.node && self._xmlNode.node.parentNode)
    {
        self._xmlNode.up();
        return YES;
    }
    return NO;
}
,["BOOL"]), new objj_method(sel_getUid("stringValue"), function $TNXMLNode__stringValue(self, _cmd)
{
    return Strophe.serialize(self._xmlNode);
}
,["CPString"]), new objj_method(sel_getUid("description"), function $TNXMLNode__description(self, _cmd)
{
    return objj_msgSend(self, "stringValue");
}
,["CPString"]), new objj_method(sel_getUid("valueForAttribute:"), function $TNXMLNode__valueForAttribute_(self, _cmd, anAttribute)
{
    return objj_msgSend(self, "tree").getAttribute(anAttribute);
}
,["CPString","CPString"]), new objj_method(sel_getUid("setValue:forAttribute:"), function $TNXMLNode__setValue_forAttribute_(self, _cmd, aValue, anAttribute)
{
    var attr = {};
    attr[anAttribute] = aValue;
    self._xmlNode.attrs(attr);
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("name"), function $TNXMLNode__name(self, _cmd)
{
    return objj_msgSend(self, "tree").tagName;
}
,["CPString"]), new objj_method(sel_getUid("namespace"), function $TNXMLNode__namespace(self, _cmd)
{
    return objj_msgSend(self, "valueForAttribute:", "xmlns");
}
,["CPString"]), new objj_method(sel_getUid("setNamespace:"), function $TNXMLNode__setNamespace_(self, _cmd, aNamespace)
{
    objj_msgSend(self, "setValue:forAttribute:", aNamespace, "xmlns");
}
,["void","CPString"]), new objj_method(sel_getUid("addChildWithName:andAttributes:"), function $TNXMLNode__addChildWithName_andAttributes_(self, _cmd, aTagName, attributes)
{
    self._xmlNode = self._xmlNode.c(aTagName, attributes);
}
,["void","CPString","CPDictionary"]), new objj_method(sel_getUid("addChildWithName:"), function $TNXMLNode__addChildWithName_(self, _cmd, aTagName)
{
    objj_msgSend(self, "addChildWithName:andAttributes:", aTagName, {});
}
,["void","CPString"]), new objj_method(sel_getUid("childrenWithName:"), function $TNXMLNode__childrenWithName_(self, _cmd, aName)
{
    var nodes = objj_msgSend(CPArray, "array"),
        elements = objj_msgSend(self, "tree").getElementsByTagName(aName);
    for (var i = 0; i < elements.length; i++)
        objj_msgSend(nodes, "addObject:", objj_msgSend(TNXMLNode, "nodeWithXMLNode:", elements[i]))
    return nodes;
}
,["CPArray","CPString"]), new objj_method(sel_getUid("ownChildrenWithName:"), function $TNXMLNode__ownChildrenWithName_(self, _cmd, aName)
{
    var nodes = objj_msgSend(CPArray, "array"),
        elements = objj_msgSend(self, "tree").childNodes;
    for (var i = 0; i < elements.length; i++)
        if ((aName === nil) || (aName && elements [i].tagName == aName))
            objj_msgSend(nodes, "addObject:", objj_msgSend(TNXMLNode, "nodeWithXMLNode:", elements[i]))
    return nodes;
}
,["CPArray","CPString"]), new objj_method(sel_getUid("firstChildWithName:"), function $TNXMLNode__firstChildWithName_(self, _cmd, aName)
{
    var elements = objj_msgSend(self, "tree").getElementsByTagName(aName);
    if (elements && (elements.length > 0))
        return objj_msgSend(TNXMLNode, "nodeWithXMLNode:", elements[0]);
    else
        return;
}
,["TNXMLNode","CPString"]), new objj_method(sel_getUid("children"), function $TNXMLNode__children(self, _cmd)
{
    return objj_msgSend(self, "ownChildrenWithName:", nil);
}
,["CPArray"]), new objj_method(sel_getUid("containsChildrenWithName:"), function $TNXMLNode__containsChildrenWithName_(self, _cmd, aName)
{
    return objj_msgSend(self, "firstChildWithName:", aName) ? YES : NO;
}
,["BOOL","CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("nodeWithXMLNode:"), function $TNXMLNode__nodeWithXMLNode_(self, _cmd, aNode)
{
    return objj_msgSend(objj_msgSend(TNXMLNode, "alloc"), "initWithNode:", aNode);
}
,["TNXMLNode","id"]), new objj_method(sel_getUid("nodeWithName:"), function $TNXMLNode__nodeWithName_(self, _cmd, aName)
{
    return objj_msgSend(objj_msgSend(TNXMLNode, "alloc"), "initWithName:andAttributes:", aName, nil);
}
,["TNXMLNode","CPString"]), new objj_method(sel_getUid("nodeWithName:andAttributes:"), function $TNXMLNode__nodeWithName_andAttributes_(self, _cmd, aName, someAttributes)
{
    return objj_msgSend(objj_msgSend(TNXMLNode, "alloc"), "initWithName:andAttributes:", aName, someAttributes);
}
,["TNXMLNode","CPString","CPDictionary"])]);
}
{
var the_class = objj_getClass("TNXMLNode")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNXMLNode\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $TNXMLNode__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNXMLNode").super_class }, "init"))
    {
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNXMLNode__encodeWithCoder_(self, _cmd, aCoder)
{
}
,["void","CPCoder"])]);
}p;22;MUC/TNStropheMUCRoom.jt;9706;@STATIC;1.0;I;23;Foundation/Foundation.ji;24;../TNStropheConnection.ji;17;../TNStropheJID.ji;20;../TNStropheStanza.ji;19;../TNStropheUtils.ji;20;TNStropheMUCRoster.jt;9534;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("../TNStropheConnection.j", YES);
objj_executeFile("../TNStropheJID.j", YES);
objj_executeFile("../TNStropheStanza.j", YES);
objj_executeFile("../TNStropheUtils.j", YES);
objj_executeFile("TNStropheMUCRoster.j", YES);
TNStropheMUCConversationWasUpdatedNotification = "TNStropheMUCConversationWasUpdatedNotification";
TNStropheMUCDataReceivedNotification = "TNStropheMUCDataReceivedNotification";
TNStropheMUCPrivateMessageWasReceivedNotification = "TNStropheMUCPrivateMessageWasReceivedNotification";
TNStropheMUCRosterWasUpdatedNotification = "TNStropheMUCRosterWasUpdatedNotification";
TNStropheMUCSubjectWasUpdatedNotification = "TNStropheMUCSubjectWasUpdatedNotification";
{var the_class = objj_allocateClassPair(CPObject, "TNStropheMUCRoom"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_messages"), new objj_ivar("_subject"), new objj_ivar("_delegate"), new objj_ivar("_roomJID"), new objj_ivar("_roster"), new objj_ivar("_handlerIDs"), new objj_ivar("_connection")]);

       
       



       
       




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("messages"), function $TNStropheMUCRoom__messages(self, _cmd)
{
return self._messages;
}
,["CPArray"]), new objj_method(sel_getUid("_setMessages:"), function $TNStropheMUCRoom___setMessages_(self, _cmd, newValue)
{
self._messages = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("subject"), function $TNStropheMUCRoom__subject(self, _cmd)
{
return self._subject;
}
,["CPString"]), new objj_method(sel_getUid("_setSubject:"), function $TNStropheMUCRoom___setSubject_(self, _cmd, newValue)
{
self._subject = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("delegate"), function $TNStropheMUCRoom__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNStropheMUCRoom__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("roomJID"), function $TNStropheMUCRoom__roomJID(self, _cmd)
{
return self._roomJID;
}
,["TNStropheJID"]), new objj_method(sel_getUid("_setRoomJID:"), function $TNStropheMUCRoom___setRoomJID_(self, _cmd, newValue)
{
self._roomJID = newValue;
}
,["void","TNStropheJID"]), new objj_method(sel_getUid("roster"), function $TNStropheMUCRoom__roster(self, _cmd)
{
return self._roster;
}
,["TNStropheMUCRoster"]), new objj_method(sel_getUid("_setRoster:"), function $TNStropheMUCRoom___setRoster_(self, _cmd, newValue)
{
self._roster = newValue;
}
,["void","TNStropheMUCRoster"]), new objj_method(sel_getUid("initWithRoom:onService:usingConnection:withNick:"), function $TNStropheMUCRoom__initWithRoom_onService_usingConnection_withNick_(self, _cmd, aRoom, aService, aConnection, aNick)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheMUCRoom").super_class }, "init"))
    {
        self._connection = aConnection;
        self._roomJID = objj_msgSend(TNStropheJID, "stropheJIDWithNode:domain:resource:", aRoom, aService, aNick);
        self._handlerIDs = objj_msgSend(CPArray, "array");
        self._messages = objj_msgSend(CPArray, "array");
        self._roster = objj_msgSend(TNStropheMUCRoster, "rosterWithConnection:forRoom:", self._connection, self);
    }
    return self;
}
,["id","CPString","CPString","TNStropheConnection","CPString"]), new objj_method(sel_getUid("directedPresence"), function $TNStropheMUCRoom__directedPresence(self, _cmd)
{
    return objj_msgSend(TNStropheStanza, "presenceTo:", self._roomJID);
}
,["TNStropheStanza"]), new objj_method(sel_getUid("join"), function $TNStropheMUCRoom__join(self, _cmd)
{
    var messageParams = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", "message", "name", objj_msgSend(self._roomJID, "full"), "from", "groupchat", "type", {matchBare: true}, "options"),
        messageHandler = objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("receiveMessage:"), self, messageParams);
    objj_msgSend(self._handlerIDs, "addObject:", messageHandler);
    var pmParams = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", "message", "name", objj_msgSend(self._roomJID, "full"), "from", "chat", "type", {matchBare: true}, "options"),
        pmHandler = objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("receivePrivateMessage:"), self, pmParams);
    objj_msgSend(self._handlerIDs, "addObject:", pmHandler);
    objj_msgSend(self._connection, "send:", objj_msgSend(self, "directedPresence"));
}
,["void"]), new objj_method(sel_getUid("leave"), function $TNStropheMUCRoom__leave(self, _cmd)
{
    var leavePresence = objj_msgSend(self, "directedPresence");
    objj_msgSend(leavePresence, "setType:", "unavailable");
    objj_msgSend(self._connection, "send:", leavePresence);
    for (var i = 0; i < objj_msgSend(self._handlerIDs, "count"); i++)
        objj_msgSend(self._connection, "deleteRegisteredSelector:", objj_msgSend(self._handlerIDs, "objectAtIndex:", i));
}
,["void"]), new objj_method(sel_getUid("setSubject:"), function $TNStropheMUCRoom__setSubject_(self, _cmd, aSubject)
{
    var message = objj_msgSend(TNStropheStanza, "message");
    objj_msgSend(message, "setType:", "groupchat");
    objj_msgSend(message, "addChildWithName:", "subject");
    objj_msgSend(message, "addTextNode:", aSubject);
    objj_msgSend(self, "sendStanzaToRoom:", message);
}
,["void","CPString"]), new objj_method(sel_getUid("sayToRoom:"), function $TNStropheMUCRoom__sayToRoom_(self, _cmd, aMessage)
{
    var message = objj_msgSend(TNStropheStanza, "message");
    objj_msgSend(message, "setType:", "groupchat");
    objj_msgSend(message, "addChildWithName:", "body");
    objj_msgSend(message, "addTextNode:", aMessage);
    objj_msgSend(self, "sendStanzaToRoom:", message);
}
,["void","CPString"]), new objj_method(sel_getUid("sendStanzaToRoom:"), function $TNStropheMUCRoom__sendStanzaToRoom_(self, _cmd, aStanza)
{
    objj_msgSend(aStanza, "setTo:", objj_msgSend(self._roomJID, "bare"));
    objj_msgSend(self._connection, "send:", aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("receiveMessage:"), function $TNStropheMUCRoom__receiveMessage_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "containsChildrenWithName:", "subject"))
    {
        self._subject = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "subject"), "text");
        if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("mucRoom:receivedNewSubject:")))
            objj_msgSend(self._delegate, "mucRoom:receivedNewSubject:", self, self._subject);
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheMUCSubjectWasUpdatedNotification, self, aStanza);
    }
    if (objj_msgSend(aStanza, "containsChildrenWithName:", "body"))
    {
        var body = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "body"), "text"),
            contact = objj_msgSend(self._roster, "contactWithJID:", objj_msgSend(aStanza, "from"));
        if (!contact)
        {
            objj_msgSend(self._roster, "addContact:withName:inGroup:", objj_msgSend(aStanza, "from"), objj_msgSend(objj_msgSend(aStanza, "from"), "resource"), objj_msgSend(self._roster, "visitors"));
            contact = objj_msgSend(self._roster, "contactWithJID:", objj_msgSend(aStanza, "from"));
        }
        var message = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", body, "body", contact, "from", objj_msgSend(aStanza, "delayTime"), "time");
        objj_msgSend(self._messages, "addObject:", message);
        if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("mucRoom:receivedMessage:")))
            objj_msgSend(self._delegate, "mucRoom:receivedMessage:", self, message);
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheMUCConversationWasUpdatedNotification, self, aStanza);
    }
    var otherChildren = objj_msgSend(aStanza, "children");
    objj_msgSend(otherChildren, "removeObjectsInArray:", objj_msgSend(aStanza, "childrenWithName:", "body"));
    objj_msgSend(otherChildren, "removeObjectsInArray:", objj_msgSend(aStanza, "childrenWithName:", "subject"));
    if (objj_msgSend(otherChildren, "count") > 0)
    {
        if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("mucRoom:receivedData:")))
            objj_msgSend(self._delegate, "mucRoom:receivedData:", self, aStanza);
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheMUCDataReceivedNotification, self, aStanza);
    }
    return YES;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("receivePrivateMessage:"), function $TNStropheMUCRoom__receivePrivateMessage_(self, _cmd, aMessage)
{
    return YES;
}
,["BOOL","TNStropheStanza"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("joinRoom:onService:usingConnection:withNick:"), function $TNStropheMUCRoom__joinRoom_onService_usingConnection_withNick_(self, _cmd, aRoom, aService, aConnection, aNick)
{
    return objj_msgSend(objj_msgSend(TNStropheMUCRoom, "alloc"), "initWithRoom:onService:usingConnection:withNick:", aRoom, aService, aConnection, aNick);
}
,["TNStropheMUCRoom","CPString","CPString","TNStropheConnection","CPString"])]);
}p;24;MUC/TNStropheMUCRoster.jt;7879;@STATIC;1.0;I;23;Foundation/Foundation.ji;24;../TNStropheRosterBase.ji;19;../TNStropheGroup.jt;7779;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("../TNStropheRosterBase.j", YES);
objj_executeFile("../TNStropheGroup.j", YES);
//@class TNStropheMUCRoom
TNStropheMUCContactJoinedNotification = "TNStropheMUCContactJoinedNotification";
TNStropheMUCContactLeftNotification = "TNStropheMUCContactLeftNotification";
{var the_class = objj_allocateClassPair(TNStropheRosterBase, "TNStropheMUCRoster"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_admins"), new objj_ivar("_moderators"), new objj_ivar("_owners"), new objj_ivar("_participants"), new objj_ivar("_visitors"), new objj_ivar("_room")]);
       
       

       
       

       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("admins"), function $TNStropheMUCRoster__admins(self, _cmd)
{
return self._admins;
}
,["TNStropheGroup"]), new objj_method(sel_getUid("_setAdmins:"), function $TNStropheMUCRoster___setAdmins_(self, _cmd, newValue)
{
self._admins = newValue;
}
,["void","TNStropheGroup"]), new objj_method(sel_getUid("moderators"), function $TNStropheMUCRoster__moderators(self, _cmd)
{
return self._moderators;
}
,["TNStropheGroup"]), new objj_method(sel_getUid("_setModerators:"), function $TNStropheMUCRoster___setModerators_(self, _cmd, newValue)
{
self._moderators = newValue;
}
,["void","TNStropheGroup"]), new objj_method(sel_getUid("owners"), function $TNStropheMUCRoster__owners(self, _cmd)
{
return self._owners;
}
,["TNStropheGroup"]), new objj_method(sel_getUid("_setOwners:"), function $TNStropheMUCRoster___setOwners_(self, _cmd, newValue)
{
self._owners = newValue;
}
,["void","TNStropheGroup"]), new objj_method(sel_getUid("participants"), function $TNStropheMUCRoster__participants(self, _cmd)
{
return self._participants;
}
,["TNStropheGroup"]), new objj_method(sel_getUid("_setParticipants:"), function $TNStropheMUCRoster___setParticipants_(self, _cmd, newValue)
{
self._participants = newValue;
}
,["void","TNStropheGroup"]), new objj_method(sel_getUid("visitors"), function $TNStropheMUCRoster__visitors(self, _cmd)
{
return self._visitors;
}
,["TNStropheGroup"]), new objj_method(sel_getUid("_setVisitors:"), function $TNStropheMUCRoster___setVisitors_(self, _cmd, newValue)
{
self._visitors = newValue;
}
,["void","TNStropheGroup"]), new objj_method(sel_getUid("room"), function $TNStropheMUCRoster__room(self, _cmd)
{
return self._room;
}
,["TNStropheMUCRoom"]), new objj_method(sel_getUid("_setRoom:"), function $TNStropheMUCRoster___setRoom_(self, _cmd, newValue)
{
self._room = newValue;
}
,["void","TNStropheMUCRoom"]), new objj_method(sel_getUid("initWithConnection:forRoom:"), function $TNStropheMUCRoster__initWithConnection_forRoom_(self, _cmd, aConnection, aRoom)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheMUCRoster").super_class }, "initWithConnection:", aConnection))
    {
        self._room = aRoom;
        self._visitors = objj_msgSend(TNStropheGroup, "stropheGroupWithName:", "Visitors");
        self._participants = objj_msgSend(TNStropheGroup, "stropheGroupWithName:", "Participants");
        self._moderators = objj_msgSend(TNStropheGroup, "stropheGroupWithName:", "Moderators");
        self._admins = objj_msgSend(TNStropheGroup, "stropheGroupWithName:", "Admins");
        self._owners = objj_msgSend(TNStropheGroup, "stropheGroupWithName:", "Owners");
        var params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", "presence", "name", objj_msgSend(objj_msgSend(self._room, "roomJID"), "full"), "from", {matchBare: true}, "options");
        objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didReceivePresence:"), self, params);
    }
    return self;
}
,["id","TNStropheConnection","TNStropheMUCRoom"]), new objj_method(sel_getUid("_didReceivePresence:"), function $TNStropheMUCRoster___didReceivePresence_(self, _cmd, aStanza)
{
    var contact = objj_msgSend(self, "contactWithFullJID:", objj_msgSend(aStanza, "from")),
        data = objj_msgSend(aStanza, "firstChildWithName:", "x"),
        group;
    if (data && objj_msgSend(data, "namespace") == "http://jabber.org/protocol/muc#user")
    {
        switch (objj_msgSend(objj_msgSend(data, "firstChildWithName:", "item"), "valueForAttribute:", "role"))
        {
            case "visitor":
                group = self._visitors;
                break;
            case "participant":
                group = self._participants;
                break;
            case "moderator":
                group = self._moderators;
                break;
        }
    }
    if (contact)
        objj_msgSend(contact, "_didReceivePresence:", aStanza);
    else
        contact = objj_msgSend(self, "addContact:withName:inGroup:", objj_msgSend(aStanza, "from"), objj_msgSend(objj_msgSend(aStanza, "from"), "resource"), group);
    if (objj_msgSend(aStanza, "type") === "unavailable")
    {
        var statusCode;
        if (objj_msgSend(data, "containsChildrenWithName:", "status"))
            statusCode = objj_msgSend(objj_msgSend(data, "firstChildWithName:", "status"), "valueForAttribute:", "code");
        objj_msgSend(self, "removeContact:withStatusCode:", contact, statusCode);
    }
    return YES;
}
,["BOOL","id"]), new objj_method(sel_getUid("addContact:withName:inGroup:"), function $TNStropheMUCRoster__addContact_withName_inGroup_(self, _cmd, aJID, aName, aGroup)
{
    if (objj_msgSend(self, "containsFullJID:", aJID))
        return;
    if (!aGroup)
        aGroup = self._visitors;
    var contact = objj_msgSend(TNStropheContact, "contactWithConnection:JID:group:", self._connection, aJID, aGroup);
    objj_msgSend(contact, "setNickname:", aName);
    objj_msgSend(objj_msgSend(aGroup, "contacts"), "addObject:", contact);
    objj_msgSend(self, "cacheContact:", contact);
    var userInfo = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", contact, "contact");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheMUCContactJoinedNotification, self, userInfo);
    return contact;
}
,["TNStropheContact","TNStropheJID","CPString","TNStropheGroup"]), new objj_method(sel_getUid("removeContact:withStatusCode:"), function $TNStropheMUCRoster__removeContact_withStatusCode_(self, _cmd, aContact, aStatusCode)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStropheMUCRoster").super_class }, "uncacheContact:", aContact);
    var userInfo = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", aStatusCode, "statusCode", aContact, "contact");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStropheMUCContactLeftNotification, self, userInfo);
}
,["void","TNStropheContact","CPString"]), new objj_method(sel_getUid("groupOfContact:"), function $TNStropheMUCRoster__groupOfContact_(self, _cmd, aContact)
{
    var groups = objj_msgSend(CPArray, "arrayWithObjects:", self._visitors, self._participants, self._moderators, self._admins, self._owners);
    for (var i = 0; i < objj_msgSend(groups, "count"); i++)
    {
        var group = objj_msgSend(groups, "objectAtIndex:", i);
        if (objj_msgSend(objj_msgSend(group, "contacts"), "containsObject:", aContact))
            return group;
    }
    return;
}
,["TNStropheGroup","TNStropheContact"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("rosterWithConnection:forRoom:"), function $TNStropheMUCRoster__rosterWithConnection_forRoom_(self, _cmd, aConnection, aRoom)
{
    return objj_msgSend(objj_msgSend(TNStropheMUCRoster, "alloc"), "initWithConnection:forRoom:", aConnection, aRoom);
}
,["TNStropheMUCRoster","TNStropheConnection","TNStropheMUCRoom"])]);
}p;27;PubSub/TNPubSubController.jt;15338;@STATIC;1.0;I;23;Foundation/Foundation.ji;31;../Resources/Strophe/strophe.jsi;28;../Resources/Strophe/sha1.jsi;24;../TNStropheConnection.ji;14;TNPubSubNode.jt;15173;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("../Resources/Strophe/strophe.js", YES);
objj_executeFile("../Resources/Strophe/sha1.js", YES);
objj_executeFile("../TNStropheConnection.j", YES);
objj_executeFile("TNPubSubNode.j", YES);
TNStrophePubSubBatchSubscribeCompleteNotification = "TNStrophePubSubBatchSubscribeCompleteNotification";
TNStrophePubSubBatchUnsubscribeCompleteNotification = "TNStrophePubSubBatchUnsubscribeCompleteNotification";
TNStrophePubSubNoOldSubscriptionsLeftNotification = "TNStrophePubSubNoOldSubscriptionsLeft";
TNStrophePubSubSubscriptionsRetrievedNotification = "TNStrophePubSubSubscriptionsReceivedNotification";
{var the_class = objj_allocateClassPair(CPObject, "TNPubSubController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_nodes"), new objj_ivar("_servers"), new objj_ivar("_delegate"), new objj_ivar("_subscriptionBatches"), new objj_ivar("_unsubscriptionBatches"), new objj_ivar("_connection"), new objj_ivar("_numberOfPromptedServers")]);

       
       

       
       




       
       




       
       








objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("nodes"), function $TNPubSubController__nodes(self, _cmd)
{
return self._nodes;
}
,["CPArray"]), new objj_method(sel_getUid("_setNodes:"), function $TNPubSubController___setNodes_(self, _cmd, newValue)
{
self._nodes = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("servers"), function $TNPubSubController__servers(self, _cmd)
{
return self._servers;
}
,["CPArray"]), new objj_method(sel_getUid("setServers:"), function $TNPubSubController__setServers_(self, _cmd, newValue)
{
self._servers = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("delegate"), function $TNPubSubController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNPubSubController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("initWithConnection:pubSubServer:"), function $TNPubSubController__initWithConnection_pubSubServer_(self, _cmd, aConnection, aPubSubServer)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNPubSubController").super_class }, "init"))
    {
        self._connection = aConnection;
        self._servers = objj_msgSend(CPArray, "arrayWithObject:", (aPubSubServer || objj_msgSend(TNStropheJID, "stropheJIDWithString:", "pubsub." + objj_msgSend(objj_msgSend(aConnection, "JID"), "domain"))));
        self._numberOfPromptedServers = 0;
        self._nodes = objj_msgSend(CPArray, "array");
        self._subscriptionBatches = objj_msgSend(CPDictionary, "dictionary");
        self._unsubscriptionBatches = objj_msgSend(CPDictionary, "dictionary");
    }
    return self;
}
,["TNPubSubNode","TNStropheConnection","TNStropheJID"]), new objj_method(sel_getUid("_didSubscribeToNode:"), function $TNPubSubController___didSubscribeToNode_(self, _cmd, aNotification)
{
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubController:subscribedToNode:")))
        objj_msgSend(self._delegate, "pubSubController:subscribedToNode:", self, objj_msgSend(aNotification, "object"))
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didUnsubscribeToNode:"), function $TNPubSubController___didUnsubscribeToNode_(self, _cmd, aNotification)
{
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubController:unsubscribedFromNode:")))
        objj_msgSend(self._delegate, "pubSubController:unsubscribedFromNode:", self, objj_msgSend(aNotification, "object"))
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didBatchSubscribe:"), function $TNPubSubController___didBatchSubscribe_(self, _cmd, aNotification)
{
    var node = objj_msgSend(aNotification, "object"),
        batchID = objj_msgSend(aNotification, "useInfo"),
        batch = objj_msgSend(self._subscriptionBatches, "valueForKey:", batchID),
        params = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", batchID, "batchID");
    objj_msgSend(batch, "removeObjectIdenticalTo:", objj_msgSend(node, "name"));
    if (objj_msgSend(batch, "count") === 0)
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStrophePubSubBatchSubscribeCompleteNotification, self, params);
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didBatchUnsubscribe:"), function $TNPubSubController___didBatchUnsubscribe_(self, _cmd, aNotification)
{
    var node = objj_msgSend(aNotification, "object"),
        batchID = objj_msgSend(aNotification, "useInfo"),
        batch = objj_msgSend(self._unsubscriptionBatches, "valueForKey:", batchID),
        params = objj_msgSend(CPDictionary, "dictionaryWithObject:forKey:", batchID, "batchID");
    objj_msgSend(batch, "removeObjectIdenticalTo:", objj_msgSend(node, "name"));
    if (objj_msgSend(batch, "count") === 0)
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStrophePubSubBatchUnsubscribeCompleteNotification, self, params);
}
,["void","CPNotification"]), new objj_method(sel_getUid("containsServerJID:"), function $TNPubSubController__containsServerJID_(self, _cmd, aServerJID)
{
    for (var i = 0; i < objj_msgSend(self._servers, "count"); i++)
        if (objj_msgSend(objj_msgSend(self._servers, "objectAtIndex:", i), "node") == objj_msgSend(aServerJID, "node"))
            return YES;
    return NO;
}
,["BOOL","TNStropheJID"]), new objj_method(sel_getUid("nodeWithName:server:"), function $TNPubSubController__nodeWithName_server_(self, _cmd, aNodeName, aServer)
{
    for (var i = 0; i < objj_msgSend(self._nodes, "count"); i++)
    {
        var node = objj_msgSend(self._nodes, "objectAtIndex:", i);
        if ((objj_msgSend(node, "name") === aNodeName) && (!aServer || objj_msgSend(objj_msgSend(node, "server"), "equals:", aServer)))
            return node;
    }
    return;
}
,["TNPubSubNode","CPString","TNStropheJID"]), new objj_method(sel_getUid("nodeWithName:"), function $TNPubSubController__nodeWithName_(self, _cmd, aNodeName)
{
    return objj_msgSend(self, "nodeWithName:server:", aNodeName, nil);
}
,["TNPubSubNode","CPString"]), new objj_method(sel_getUid("findOrCreateNodeWithName:server:"), function $TNPubSubController__findOrCreateNodeWithName_server_(self, _cmd, aNodeName, aServer)
{
    var node = objj_msgSend(self, "nodeWithName:server:", aNodeName, aServer);
    if (!objj_msgSend(self, "containsServerJID:", aServer))
        objj_msgSend(self._servers, "addObject:", aServer);
    if (!node)
    {
        node = objj_msgSend(TNPubSubNode, "pubSubNodeWithNodeName:connection:pubSubServer:", aNodeName, self._connection, aServer);
        objj_msgSend(self._nodes, "addObject:", node);
    }
    return node;
}
,["TNPubSubNode","CPString","TNStropheJID"]), new objj_method(sel_getUid("retrieveSubscriptions"), function $TNPubSubController__retrieveSubscriptions(self, _cmd)
{
    self._numberOfPromptedServers = 0;
    for (var i = 0; i < objj_msgSend(self._servers, "count"); i++)
    {
        var uid = objj_msgSend(self._connection, "getUniqueId"),
            stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"type": "get", "to": objj_msgSend(self._servers, "objectAtIndex:", i), "id": uid}),
            params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "pubsub", {"xmlns": Strophe.NS.PUBSUB});
        objj_msgSend(stanza, "addChildWithName:", "subscriptions");
        objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didRetrieveSubscriptions:"), self, params);
        objj_msgSend(self._connection, "send:", stanza);
    }
}
,["void"]), new objj_method(sel_getUid("_didRetrieveSubscriptions:"), function $TNPubSubController___didRetrieveSubscriptions_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var subscriptions = objj_msgSend(aStanza, "childrenWithName:", "subscription"),
            server = objj_msgSend(aStanza, "from");
        for (var i = 0; i < objj_msgSend(subscriptions, "count"); i++)
        {
            var subscription = objj_msgSend(subscriptions, "objectAtIndex:", i),
                nodeName = objj_msgSend(subscription, "valueForAttribute:", "node"),
                subid = objj_msgSend(subscription, "valueForAttribute:", "subid"),
                node = objj_msgSend(self, "findOrCreateNodeWithName:server:", nodeName, server);
            objj_msgSend(node, "addSubscriptionID:", subid);
            objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didSubscribeToNode:"), TNStrophePubSubNodeSubscribedNotification, node);
            objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didUnsubscribeToNode:"), TNStrophePubSubNodeUnsubscribedNotification, node);
        }
        self._numberOfPromptedServers++;
        if (self._numberOfPromptedServers >= objj_msgSend(self._servers, "count"))
        {
            self._numberOfPromptedServers = 0;
            objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStrophePubSubSubscriptionsRetrievedNotification, self);
            if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubController:retrievedSubscriptions:")))
                objj_msgSend(self._delegate, "pubSubController:retrievedSubscriptions:", self, YES);
        }
    }
    else
    {
        if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubController:retrievedSubscriptions:")))
            objj_msgSend(self._delegate, "pubSubController:retrievedSubscriptions:", self, NO);
        CPLog.error("Cannot retrieve the contents of pubsub node");
        CPLog.error(aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("subscribeToNodeWithName:server:nodeDelegate:"), function $TNPubSubController__subscribeToNodeWithName_server_nodeDelegate_(self, _cmd, aNodeName, aServer, nodeDelegate)
{
    var node = objj_msgSend(self, "findOrCreateNodeWithName:server:", aNodeName, aServer);
    objj_msgSend(node, "setDelegate:", nodeDelegate);
    objj_msgSend(node, "subscribe");
    return node;
}
,["TNPubSubNode","CPString","TNStropheJID","id"]), new objj_method(sel_getUid("subscribeToNodeWithName:server:"), function $TNPubSubController__subscribeToNodeWithName_server_(self, _cmd, aNodeName, aServer)
{
    return objj_msgSend(self, "subscribeToNodeWithName:server:nodeDelegate:", aNodeName, aServer, nil);
}
,["TNPubSubNode","CPString","TNStropheJID"]), new objj_method(sel_getUid("subscribeToNodesWithNames:nodesDelegate:"), function $TNPubSubController__subscribeToNodesWithNames_nodesDelegate_(self, _cmd, someNodes, aDelegate)
{
    var batchID = objj_msgSend(self._connection, "getUniqueId"),
        servers = objj_msgSend(someNodes, "allKeys");
    objj_msgSend(self._subscriptionBatches, "setValue:forKey:", someNodes, batchID);
    for (var k = 0; k < objj_msgSend(servers, "count"); k++)
    {
        var server = objj_msgSend(servers, "objectAtIndex:", k),
            nodes = objj_msgSend(servers, "valueForKey:", server);
        for (var i = 0; i < objj_msgSend(nodes, "count"); i++)
        {
            var nodeName = objj_msgSend(nodes, "objectAtIndex:", i),
                node = objj_msgSend(self, "subscribeToNodeWithName:server:nodeDelegate:", nodeName, server, aDelegate);
            objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:userInfo:", self, sel_getUid("_didBatchSubscribe:"), TNStrophePubSubNodeSubscribedNotification, node, batchID);
        }
    }
    return batchID;
}
,["CPString","CPDictionary","id"]), new objj_method(sel_getUid("unsubscribeFromNodeWithName:server:nodeDelegate:"), function $TNPubSubController__unsubscribeFromNodeWithName_server_nodeDelegate_(self, _cmd, aNodeName, aServer, nodeDelegate)
{
    var node = objj_msgSend(self, "findOrCreateNodeWithName:server:", aNodeName, aServer);
    objj_msgSend(self._nodes, "removeObject:", node);
    objj_msgSend(node, "setDelegate:", nodeDelegate);
    objj_msgSend(node, "unsubscribe");
    return node;
}
,["TNPubSubNode","CPString","TNStropheJID","id"]), new objj_method(sel_getUid("unsubscribeFromNodeWithName:server:"), function $TNPubSubController__unsubscribeFromNodeWithName_server_(self, _cmd, aNodeName, aServer)
{
    return objj_msgSend(self, "unsubscribeFromNodeWithName:server:nodeDelegate:", aNodeName, aServer, nil);
}
,["TNPubSubNode","CPString","TNStropheJID"]), new objj_method(sel_getUid("unsubscribeFromNodesWithNames:nodesDelegate:"), function $TNPubSubController__unsubscribeFromNodesWithNames_nodesDelegate_(self, _cmd, someNodes, aDelegate)
{
    var batchID = objj_msgSend(self._connection, "getUniqueId"),
        servers = objj_msgSend(someNodes, "allKeys");
    objj_msgSend(self._unsubscriptionBatches, "setValue:forKey:", someNodes, batchID);
    for (var k = 0; k < objj_msgSend(servers, "count"); k++)
    {
        var server = objj_msgSend(servers, "objectAtIndex:", k),
            nodes = objj_msgSend(servers, "valueForKey:", server);
        for (var i = 0; i < objj_msgSend(nodes, "count"); i++)
        {
            var nodeName = objj_msgSend(nodes, "objectAtIndex:", i),
                node = objj_msgSend(self, "unsubscribeFromNodeWithName:server:nodeDelegate:", nodeName, server, aDelegate);
            objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:userInfo:", self, sel_getUid("_didBatchUnsubscribe:"), TNStrophePubSubNodeUnsubscribedNotification, node, batchID);
        }
    }
    return batchID;
}
,["CPString","CPDictionary","id"]), new objj_method(sel_getUid("unsubscribeFromAllNodes"), function $TNPubSubController__unsubscribeFromAllNodes(self, _cmd)
{
    for (var i = 0; i < objj_msgSend(self._nodes, "count"); i++)
        objj_msgSend(objj_msgSend(self._nodes, "objectAtIndex:", i), "unsubscribe");
    objj_msgSend(self._nodes, "removeAllObjects");
}
,["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("pubSubControllerWithConnection:pubSubServer:"), function $TNPubSubController__pubSubControllerWithConnection_pubSubServer_(self, _cmd, aConnection, aPubSubServer)
{
    return objj_msgSend(objj_msgSend(TNPubSubController, "alloc"), "initWithConnection:pubSubServer:", aConnection, aPubSubServer);
}
,["TNPubSubNode","TNStropheConnection","CPString"]), new objj_method(sel_getUid("pubSubControllerWithConnection:"), function $TNPubSubController__pubSubControllerWithConnection_(self, _cmd, aConnection)
{
    return objj_msgSend(objj_msgSend(TNPubSubController, "alloc"), "initWithConnection:pubSubServer:", aConnection, nil);
}
,["TNPubSubNode","TNStropheConnection"])]);
}p;21;PubSub/TNPubSubNode.jt;36745;@STATIC;1.0;I;23;Foundation/Foundation.jI;33;Foundation/CPNotificationCenter.ji;31;../Resources/Strophe/strophe.jsi;28;../Resources/Strophe/sha1.jsi;24;../TNStropheConnection.ji;20;../TNStropheStanza.jt;36536;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("Foundation/CPNotificationCenter.j", NO);
objj_executeFile("../Resources/Strophe/strophe.js", YES);
objj_executeFile("../Resources/Strophe/sha1.js", YES);
objj_executeFile("../TNStropheConnection.j", YES);
objj_executeFile("../TNStropheStanza.j", YES);
//@class TNStrophePubSubSubscriptionsRetrievedNotification
TNStrophePubSubVarAccessModel = "pubsub#access_model";
TNStrophePubSubVarBodyXSLT = "pubsub#body_xslt";
TNStrophePubSubVarDeliverNotification = "pubsub#deliver_notifications";
TNStrophePubSubVarDeliverPayloads = "pubsub#deliver_payloads";
TNStrophePubSubVarItemExpire = "pubsub#item_expire";
TNStrophePubSubVarMaxItems = "pubsub#max_items";
TNStrophePubSubVarMaxPayloadSize = "pubsub#max_payload_size";
TNStrophePubSubVarNotificationType = "pubsub#notification_type";
TNStrophePubSubVarNotifyConfig = "pubsub#notify_config";
TNStrophePubSubVarNotifyDelete = "pubsub#notify_delete";
TNStrophePubSubVarNotifyRectract = "pubsub#notify_retract";
TNStrophePubSubVarNotifySub = "pubsub#notify_sub";
TNStrophePubSubVarPersistItems = "pubsub#persist_items";
TNStrophePubSubVarPresenceBasedDelivery = "pubsub#presence_based_delivery";
TNStrophePubSubVarPublishModel = "pubsub#publish_model";
TNStrophePubSubVarPurgeOffline = "pubsub#purge_offline";
TNStrophePubSubVarRosterGroupAllowed = "pubsub#roster_groups_allowed";
TNStrophePubSubVarSendLastPublishedItem = "pubsub#send_last_published_item";
TNStrophePubSubVarTitle = "pubsub#title";
TNStrophePubSubVarType = "pubsub#type";
TNStrophePubSubVarAccessModelAuthorize = "authorize";
TNStrophePubSubVarAccessModelOpen = "open";
TNStrophePubSubVarAccessModelRoster = "roster";
TNStrophePubSubVarAccessModelWhitelist = "whitelist";
TNPubSubNodeAffiliationMember = "member";
TNPubSubNodeAffiliationNone = "none";
TNPubSubNodeAffiliationOutcast = "outcast";
TNPubSubNodeAffiliationOwner = "owner";
TNPubSubNodeAffiliationPublisher = "publisher";
TNPubSubNodeAffiliationPublisherOnly = "publish-only";
TNStrophePubSubItemPublishedNotification = "TNStrophePubSubItemPublishedNotification";
TNStrophePubSubItemPublishErrorNotification = "TNStrophePubSubItemPublishErrorNotification";
TNStrophePubSubItemRetractedNotification = "TNStrophePubSubItemRetractedNotification";
TNStrophePubSubItemRetractErrorNotification = "TNStrophePubSubItemRetractErrorNotification";
TNStrophePubSubNodeConfiguredNotification = "TNStrophePubSubNodeConfiguredNotification";
TNStrophePubSubNodeCreatedNotification = "TNStrophePubSubNodeCreatedNotification";
TNStrophePubSubNodeDeletedNotification = "TNStrophePubSubNodeDeletedNotification";
TNStrophePubSubNodeEventNotification = "TNStrophePubSubNodeEventNotification"
TNStrophePubSubNodeRetrievedNotification = "TNStrophePubSubNodeRetrievedNotification";
TNStrophePubSubNodeSubscribedNotification = "TNStrophePubSubNodeSubscribedNotification";
TNStrophePubSubNodeUnsubscribedNotification = "TNStrophePubSubNodeUnsubscribedNotification";
{var the_class = objj_allocateClassPair(CPObject, "TNPubSubNode"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_content"), new objj_ivar("_subscriptionIDs"), new objj_ivar("_affiliations"), new objj_ivar("_nodeName"), new objj_ivar("_delegate"), new objj_ivar("_pubSubServer"), new objj_ivar("_eventSelectorID"), new objj_ivar("_connection")]);
       
       




       
       








       
       








       
       










       
       




       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("content"), function $TNPubSubNode__content(self, _cmd)
{
return self._content;
}
,["CPArray"]), new objj_method(sel_getUid("_setContent:"), function $TNPubSubNode___setContent_(self, _cmd, newValue)
{
self._content = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("subscriptionIDs"), function $TNPubSubNode__subscriptionIDs(self, _cmd)
{
return self._subscriptionIDs;
}
,["CPArray"]), new objj_method(sel_getUid("_setSubscriptionIDs:"), function $TNPubSubNode___setSubscriptionIDs_(self, _cmd, newValue)
{
self._subscriptionIDs = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("affiliations"), function $TNPubSubNode__affiliations(self, _cmd)
{
return self._affiliations;
}
,["CPDictionary"]), new objj_method(sel_getUid("_setAffiliations:"), function $TNPubSubNode___setAffiliations_(self, _cmd, newValue)
{
self._affiliations = newValue;
}
,["void","CPDictionary"]), new objj_method(sel_getUid("name"), function $TNPubSubNode__name(self, _cmd)
{
return self._nodeName;
}
,["CPString"]), new objj_method(sel_getUid("_setNodeName:"), function $TNPubSubNode___setNodeName_(self, _cmd, newValue)
{
self._nodeName = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("delegate"), function $TNPubSubNode__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNPubSubNode__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("server"), function $TNPubSubNode__server(self, _cmd)
{
return self._pubSubServer;
}
,["TNStopheJID"]), new objj_method(sel_getUid("_setPubSubServer:"), function $TNPubSubNode___setPubSubServer_(self, _cmd, newValue)
{
self._pubSubServer = newValue;
}
,["void","TNStopheJID"]), new objj_method(sel_getUid("initWithNodeName:connection:pubSubServer:"), function $TNPubSubNode__initWithNodeName_connection_pubSubServer_(self, _cmd, aNodeName, aConnection, aPubSubServer)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNPubSubNode").super_class }, "init"))
    {
        self._nodeName = aNodeName;
        self._connection = aConnection;
        self._pubSubServer = aPubSubServer ? aPubSubServer : objj_msgSend(TNStropheJID, "stropheJIDWithString:", "pubsub." + objj_msgSend(objj_msgSend(self._connection, "JID"), "domain"));
        self._subscriptionIDs = objj_msgSend(CPArray, "array");
        self._affiliations = objj_msgSend(CPDictionary, "dictionary");
        objj_msgSend(self, "_setEventHandler");
    }
    return self;
}
,["TNPubSubNode","CPString","TNStropheConnection","TNStropheJID"]), new objj_method(sel_getUid("initWithNodeName:connection:pubSubServer:subscriptionIDs:"), function $TNPubSubNode__initWithNodeName_connection_pubSubServer_subscriptionIDs_(self, _cmd, aNodeName, aConnection, aPubSubServer, aSubscriptionIDs)
{
    if (self = objj_msgSend(self, "initWithNodeName:connection:pubSubServer:", aNodeName, aConnection, aPubSubServer))
    {
        self._subscriptionIDs = aSubscriptionIDs;
    }
    return self;
}
,["TNPubSubNode","CPString","TNStropheConnection","CPString","CPArray"]), new objj_method(sel_getUid("retrieveItems"), function $TNPubSubNode__retrieveItems(self, _cmd)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iq"),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setTo:", self._pubSubServer);
    objj_msgSend(stanza, "setType:", "get");
    objj_msgSend(stanza, "setID:", uid);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "pubsub", {"xmlns": Strophe.NS.PUBSUB});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "items", {"node": self._nodeName});
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didRetrievePubSubNode:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void"]), new objj_method(sel_getUid("_didRetrievePubSubNode:"), function $TNPubSubNode___didRetrievePubSubNode_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        self._content = objj_msgSend(aStanza, "childrenWithName:", "item");
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStrophePubSubNodeRetrievedNotification, self);
        if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubNode:retrievedItems:")))
            objj_msgSend(self._delegate, "pubSubNode:retrievedItems:", self, YES);
    }
    else
    {
        if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubNode:retrievedItems:")))
            objj_msgSend(self._delegate, "pubSubNode:retrievedItems:", self, NO);
        CPLog.error("Cannot retrieve the contents of pubsub node");
        CPLog.error(aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("create"), function $TNPubSubNode__create(self, _cmd)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iq"),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setTo:", self._pubSubServer);
    objj_msgSend(stanza, "setType:", "set");
    objj_msgSend(stanza, "setID:", uid);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "pubsub", {"xmlns": Strophe.NS.PUBSUB});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "create", {"node": self._nodeName});
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didCreatePubSubNode:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void"]), new objj_method(sel_getUid("_didCreatePubSubNode:"), function $TNPubSubNode___didCreatePubSubNode_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStrophePubSubNodeCreatedNotification, self);
    else
    {
        CPLog.error("Cannot create the pubsub node");
        CPLog.error(aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("delete"), function $TNPubSubNode__delete(self, _cmd)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iq"),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setTo:", self._pubSubServer);
    objj_msgSend(stanza, "setType:", "set");
    objj_msgSend(stanza, "setID:", uid);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "pubsub", {"xmlns": Strophe.NS.PUBSUB_OWNER});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "delete", {"node": self._nodeName});
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("didDeletePubSubNode:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void"]), new objj_method(sel_getUid("_didCreatePubSubNode:"), function $TNPubSubNode___didCreatePubSubNode_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStrophePubSubNodeDeletedNotification, self);
    else
    {
        CPLog.error("Cannot delete the pubsub node");
        CPLog.error(aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("configureWithDict:"), function $TNPubSubNode__configureWithDict_(self, _cmd, aDictionary)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iq"),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setTo:", self._pubSubServer);
    objj_msgSend(stanza, "setType:", "set");
    objj_msgSend(stanza, "setID:", uid);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "pubsub", {"xmlns": Strophe.NS.PUBSUB_OWNER});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "configure", {"node": self._nodeName});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "x", {"xmlns": "jabber:x:data", "type": "submit"});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"var": "FORM_TYPE", "type": "hidden"});
    objj_msgSend(stanza, "addChildWithName:", "value");
    objj_msgSend(stanza, "addTextNode:", Strophe.NS.PUBSUB_NODE_CONFIG);
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "up");
    for (var i = 0; i < objj_msgSend(objj_msgSend(aDictionary, "allKeys"), "count"); i++)
    {
        var key = objj_msgSend(objj_msgSend(aDictionary, "allKeys"), "objectAtIndex:", i),
            value = objj_msgSend(aDictionary, "objectForKey:", key);
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"var": key});
        if (objj_msgSend(value, "isKindOfClass:", CPArray))
        {
            for (var j = 0; j < objj_msgSend(value, "count"); j++)
            {
                objj_msgSend(stanza, "addChildWithName:", "value");
                objj_msgSend(stanza, "addTextNode:", "" + objj_msgSend(value, "objectAtIndex:", j) + "");
                objj_msgSend(stanza, "up");
            }
        }
        else
        {
            objj_msgSend(stanza, "addChildWithName:", "value");
            objj_msgSend(stanza, "addTextNode:", "" + value + "");
            objj_msgSend(stanza, "up");
        }
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didConfigurePubSubNode:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","CPDictionary"]), new objj_method(sel_getUid("_didConfigurePubSubNode:"), function $TNPubSubNode___didConfigurePubSubNode_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStrophePubSubNodeConfiguredNotification, self);
    else
    {
        CPLog.error("Cannot configure the pubsub node");
        CPLog.error(aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("publishItem:"), function $TNPubSubNode__publishItem_(self, _cmd, anItem)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iq"),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setTo:", self._pubSubServer);
    objj_msgSend(stanza, "setType:", "set");
    objj_msgSend(stanza, "setID:", uid);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "pubsub", {"xmlns": Strophe.NS.PUBSUB});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "publish", {"node": self._nodeName});
    objj_msgSend(stanza, "addChildWithName:", "item");
    objj_msgSend(stanza, "addNode:", anItem);
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didPublishPubSubItem:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","TNXMLNode"]), new objj_method(sel_getUid("_didPublishPubSubItem:"), function $TNPubSubNode___didPublishPubSubItem_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didUpdateContentAfterPublishing:"), TNStrophePubSubNodeRetrievedNotification, self);
        objj_msgSend(self, "retrieveItems");
    }
    else
    {
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStrophePubSubItemPublishErrorNotification, self, aStanza);
        CPLog.error("Cannot publish the pubsub item in node");
        CPLog.error(aStanza);
    }
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubNode:publishedItem:")))
        objj_msgSend(self._delegate, "pubSubNode:publishedItem:", self, aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("_didUpdateContentAfterPublishing:"), function $TNPubSubNode___didUpdateContentAfterPublishing_(self, _cmd, aNotification)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, TNStrophePubSubNodeRetrievedNotification, self);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStrophePubSubItemPublishedNotification, self);
}
,["void","CPNotification"]), new objj_method(sel_getUid("retractItem:"), function $TNPubSubNode__retractItem_(self, _cmd, aNode)
{
    objj_msgSend(self, "retractItemWithID:", objj_msgSend(aNode, "valueForAttribute:", "id"));
}
,["void","TNXMLNode"]), new objj_method(sel_getUid("retractItemWithID:"), function $TNPubSubNode__retractItemWithID_(self, _cmd, anID)
{
    objj_msgSend(self, "retractItemsWithIDs:", [anID]);
}
,["void","CPString"]), new objj_method(sel_getUid("retractItemsWithIDs:"), function $TNPubSubNode__retractItemsWithIDs_(self, _cmd, someIDs)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iq"),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setTo:", self._pubSubServer);
    objj_msgSend(stanza, "setType:", "set");
    objj_msgSend(stanza, "setID:", uid);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "pubsub", {"xmlns": Strophe.NS.PUBSUB});
    for (var i = 0; i < objj_msgSend(someIDs, "count"); i++)
    {
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "retract", {"node": self._nodeName});
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "item", {"id": objj_msgSend(someIDs, "objectAtIndex:", i)});
        objj_msgSend(stanza, "up");
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didRetractPubSubItems:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","CPArray"]), new objj_method(sel_getUid("_didRetractPubSubItems:"), function $TNPubSubNode___didRetractPubSubItems_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didUpdateContentAfterRetracting:"), TNStrophePubSubNodeRetrievedNotification, self);
        objj_msgSend(self, "retrieveItems");
    }
    else
    {
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStrophePubSubItemRetractErrorNotification, self, aStanza);
        CPLog.error("Cannot remove the pubsub items from node");
        CPLog.error(aStanza);
    }
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubNode:retractedItem:")))
        objj_msgSend(self._delegate, "pubSubNode:retractedItem:", self, aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("_didUpdateContentAfterRetracting:"), function $TNPubSubNode___didUpdateContentAfterRetracting_(self, _cmd, aNotification)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, TNStrophePubSubNodeRetrievedNotification, self);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStrophePubSubItemRetractedNotification, self);
}
,["void","CPNotification"]), new objj_method(sel_getUid("recoverSubscriptions"), function $TNPubSubNode__recoverSubscriptions(self, _cmd)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"type": "get", "to": self._pubSubServer, "id": uid}),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "pubsub", {"xmlns": Strophe.NS.PUBSUB});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "subscriptions", {"node": self._nodeName});
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didRetrieveSubscriptions:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void"]), new objj_method(sel_getUid("_didRetrieveSubscriptions:"), function $TNPubSubNode___didRetrieveSubscriptions_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var subscriptions = objj_msgSend(aStanza, "childrenWithName:", "subscription");
        for (var i = 0; i < objj_msgSend(subscriptions, "count"); i++)
        {
            var subscription = objj_msgSend(subscriptions, "objectAtIndex:", i),
                nodeName = objj_msgSend(subscription, "valueForAttribute:", "node"),
                subid = objj_msgSend(subscription, "valueForAttribute:", "subid");
            objj_msgSend(self, "addSubscriptionID:", subid);
        }
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStrophePubSubSubscriptionsRetrievedNotification, self);
        if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubNode:retrievedSubscriptions:")))
            objj_msgSend(self._delegate, "pubSubNode:retrievedSubscriptions:", self, YES);
    }
    else
    {
        if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubNode:retrievedSubscriptions:")))
            objj_msgSend(self._delegate, "pubSubNode:retrievedSubscriptions:", self, NO);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("subscribe"), function $TNPubSubNode__subscribe(self, _cmd)
{
    objj_msgSend(self, "subscribeWithOptions:", nil);
}
,["void"]), new objj_method(sel_getUid("subscribeWithOptions:"), function $TNPubSubNode__subscribeWithOptions_(self, _cmd, options)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iq"),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setType:", "set");
    objj_msgSend(stanza, "setID:", uid);
    objj_msgSend(stanza, "setTo:", self._pubSubServer);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "pubsub", {"xmlns": Strophe.NS.PUBSUB});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "subscribe", {"node": self._nodeName, "jid": objj_msgSend(objj_msgSend(self._connection, "JID"), "bare")});
    if (options && objj_msgSend(options, "count") > 0)
    {
        objj_msgSend(stanza, "up");
        objj_msgSend(stanza, "addChildWithName:", "options");
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "x", {"xmlns":Strophe.NS.X_DATA, "type":"submit"});
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"var":"FORM_TYPE", "type":"hidden"});
        objj_msgSend(stanza, "addChildWithName:", "value");
        objj_msgSend(stanza, "addTextNode:", Strophe.NS.PUBSUB_SUBSCRIBE_OPTIONS);
        objj_msgSend(stanza, "up");
        objj_msgSend(stanza, "up");
        var keys = objj_msgSend(options, "allKeys");
        for (var i = 0; i < objj_msgSend(keys, "count"); i++)
        {
            var key = objj_msgSend(keys, "objectAtIndex:", i),
                value = objj_msgSend(options, "valueForKey:", key);
            objj_msgSend(stanza, "addChildWithName:andAttributes:", "field", {"var":key});
            objj_msgSend(stanza, "addChildWithName:", "value");
            objj_msgSend(stanza, "addTextNode:", value);
            objj_msgSend(stanza, "up");
            objj_msgSend(stanza, "up");
        }
    }
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didSubscribe:"), self, params)
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","CPDictionary"]), new objj_method(sel_getUid("_didSubscribe:"), function $TNPubSubNode___didSubscribe_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var subscription = objj_msgSend(aStanza, "firstChildWithName:", "subscription"),
            subID = objj_msgSend(subscription, "valueForAttribute:", "subid"),
            status = objj_msgSend(subscription, "valueForAttribute:", "subscription");
        if (objj_msgSend(subID, "length") > 0)
            objj_msgSend(self._subscriptionIDs, "addObject:", subID);
        if (status === "subscribed")
        {
            objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStrophePubSubNodeSubscribedNotification, self);
            if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubNode:subscribed:")))
                objj_msgSend(self._delegate, "pubSubNode:subscribed:", self, YES);
        }
        objj_msgSend(self, "_setEventHandler");
    }
    else
    {
        if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubNode:subscribed:")))
            objj_msgSend(self._delegate, "pubSubNode:subscribed:", self, NO);
        CPLog.error("Cannot subscribe the pubsub node");
        CPLog.error(aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("addSubscriptionID:"), function $TNPubSubNode__addSubscriptionID_(self, _cmd, aSubscriptionID)
{
    objj_msgSend(self._subscriptionIDs, "addObject:", aSubscriptionID);
}
,["void","CPString"]), new objj_method(sel_getUid("unsubscribeWithSubID:"), function $TNPubSubNode__unsubscribeWithSubID_(self, _cmd, aSubID)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iq"),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setType:", "set");
    objj_msgSend(stanza, "setID:", uid);
    objj_msgSend(stanza, "setTo:", self._pubSubServer);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "pubsub", {"xmlns": Strophe.NS.PUBSUB});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "unsubscribe", {"node": self._nodeName, "jid": objj_msgSend(objj_msgSend(self._connection, "JID"), "bare")});
    if (aSubID)
        objj_msgSend(stanza, "setValue:forAttribute:", aSubID, "subid");
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didUnsubscribe:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","CPString"]), new objj_method(sel_getUid("unsubscribe"), function $TNPubSubNode__unsubscribe(self, _cmd)
{
    if (objj_msgSend(self._subscriptionIDs, "count") > 0)
    {
        for (var i = 0; i < objj_msgSend(self._subscriptionIDs, "count"); i++)
        {
            objj_msgSend(self, "unsubscribeWithSubID:", objj_msgSend(self._subscriptionIDs, "objectAtIndex:", i));
        }
    }
    else
    {
        objj_msgSend(self, "unsubscribeWithSubID:", nil);
    }
}
,["void"]), new objj_method(sel_getUid("_didUnsubscribe:"), function $TNPubSubNode___didUnsubscribe_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var params = objj_msgSend(CPDictionary, "dictionary"),
            subID = objj_msgSend(objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "pubsub"), "firstChildWithName:", "subscription"), "valueForAttribute:", "subid");
        if (objj_msgSend(subID, "length") > 0)
        {
            objj_msgSend(self._subscriptionIDs, "removeObject:", subID);
            objj_msgSend(params, "setObject:forKey:", subID, "subscriptionID");
        }
        else if (objj_msgSend(self._subscriptionIDs, "count") === 1)
        {
            objj_msgSend(self._subscriptionIDs, "removeAllObjects");
        }
        if (objj_msgSend(self._subscriptionIDs, "count") === 0)
        {
            if (self._eventSelectorID)
            {
                objj_msgSend(self._connection, "deleteRegisteredSelector:", self._eventSelectorID);
                self._eventSelectorID = nil;
            }
        }
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStrophePubSubNodeUnsubscribedNotification, self, params);
        if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubNode:unsubscribed:")))
            objj_msgSend(self._delegate, "pubSubNode:unsubscribed:", self, YES);
    }
    else
    {
        if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubNode:unsubscribed:")))
            objj_msgSend(self._delegate, "pubSubNode:unsubscribed:", self, NO);
        CPLog.error("Cannot unsubscribe the pubsub node");
        CPLog.error(aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("numberOfSubscriptions"), function $TNPubSubNode__numberOfSubscriptions(self, _cmd)
{
    return objj_msgSend(self._subscriptionIDs, "count");
}
,["int"]), new objj_method(sel_getUid("retrieveAffiliations"), function $TNPubSubNode__retrieveAffiliations(self, _cmd)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iq"),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setTo:", self._pubSubServer);
    objj_msgSend(stanza, "setType:", "get");
    objj_msgSend(stanza, "setID:", uid);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "pubsub", {"xmlns": Strophe.NS.PUBSUB_OWNER});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "affiliations", {"node": self._nodeName});
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didRetrieveAffiliations:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void"]), new objj_method(sel_getUid("_didRetrieveAffiliations:"), function $TNPubSubNode___didRetrieveAffiliations_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var affiliations = objj_msgSend(aStanza, "childrenWithName:", "affiliation");
        for (var i = 0; i < objj_msgSend(affiliations, "count"); i++)
        {
            var affiliation = objj_msgSend(affiliations, "objectAtIndex:", i);
            objj_msgSend(self._affiliations, "setObject:forKey:", objj_msgSend(affiliation, "valueForAttribute:", "affiliation"), objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(affiliation, "valueForAttribute:", "jid")));
        }
    }
    else
    {
        CPLog.error("Cannot get affiliations");
        CPLog.error(aStanza);
    }
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubNode:retrievedAffiliations:")))
        objj_msgSend(self._delegate, "pubSubNode:retrievedAffiliations:", self, aStanza);
    return NO;
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("changeAffiliation:forJID:"), function $TNPubSubNode__changeAffiliation_forJID_(self, _cmd, anAffiliation, aJID)
{
    var uid = objj_msgSend(self._connection, "getUniqueId"),
        stanza = objj_msgSend(TNStropheStanza, "iq"),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setTo:", self._pubSubServer);
    objj_msgSend(stanza, "setType:", "set");
    objj_msgSend(stanza, "setID:", uid);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "pubsub", {"xmlns": Strophe.NS.PUBSUB_OWNER});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "affiliations", {"node": self._nodeName});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "affiliation", {"jid": objj_msgSend(aJID, "bare"), "affiliation": anAffiliation});
    var affiliationInformations = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(aJID, "bare"), "jid", anAffiliation, "affiliation");
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:userInfo:", sel_getUid("_didChangeAffiliations:userInfo:"), self, params, affiliationInformations);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","CPString","TNStropheJID"]), new objj_method(sel_getUid("_didChangeAffiliations:userInfo:"), function $TNPubSubNode___didChangeAffiliations_userInfo_(self, _cmd, aStanza, newAffiliation)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(self._affiliations, "setObject:forKey:", objj_msgSend(newAffiliation, "objectForKey:", "affiliation"), objj_msgSend(newAffiliation, "objectForKey:", "jid"));
        objj_msgSend(self, "retrieveAffiliations");
    }
    else
    {
        CPLog.error("Cannot change affiliations");
        CPLog.error(aStanza);
    }
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubNode:changedAffiliations:")))
        objj_msgSend(self._delegate, "pubSubNode:changedAffiliations:", self, aStanza);
    return NO;
}
,["void","TNStropheStanza","CPDictionary"]), new objj_method(sel_getUid("_setEventHandler"), function $TNPubSubNode___setEventHandler(self, _cmd)
{
    var params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", "message", "name", objj_msgSend(self._pubSubServer, "node"), "from");
    if (self._eventSelectorID)
        objj_msgSend(self._connection, "deleteRegisteredSelector:", self._eventSelectorID);
    self._eventSelectorID = objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didReceiveEvent:"), self, params);
}
,["void"]), new objj_method(sel_getUid("_didReceiveEvent:"), function $TNPubSubNode___didReceiveEvent_(self, _cmd, aStanza)
{
    var pubsubEvent = objj_msgSend(aStanza, "firstChildWithName:", "event");
    if (objj_msgSend(pubsubEvent, "namespace") != Strophe.NS.PUBSUB_EVENT)
        return YES;
    if (objj_msgSend(pubsubEvent, "containsChildrenWithName:", "subscription"))
    {
        var subscription = objj_msgSend(pubsubEvent, "firstChildWithName:", "subscription"),
            status = objj_msgSend(subscription, "valueForAttribute:", "subscription"),
            nodeName = objj_msgSend(subscription, "valueForAttribute:", "node");
        if (status === "subscribed" && nodeName === self._nodeName)
            objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNStrophePubSubNodeSubscribedNotification, self);
        return YES;
    }
    if (self._nodeName != objj_msgSend(objj_msgSend(pubsubEvent, "firstChildWithName:", "items"), "valueForAttribute:", "node"))
        return YES;
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("pubSubNode:receivedEvent:")))
        objj_msgSend(self._delegate, "pubSubNode:receivedEvent:", self, aStanza);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNStrophePubSubNodeEventNotification, self, aStanza);
    return YES;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("description"), function $TNPubSubNode__description(self, _cmd)
{
    return self._nodeName;
}
,["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("registerSelector:ofObject:forPubSubEventWithConnection:"), function $TNPubSubNode__registerSelector_ofObject_forPubSubEventWithConnection_(self, _cmd, aSelector, anObject, aConnection)
{
    var params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", "message", "name", "headline", "type", {"matchBare": YES}, "options", Strophe.NS.PUBSUB_EVENT, "namespace");
    return objj_msgSend(aConnection, "registerSelector:ofObject:withDict:", aSelector, anObject, params);
}
,["void","SEL","id","TNStropheConnection"]), new objj_method(sel_getUid("pubSubNodeWithNodeName:connection:pubSubServer:"), function $TNPubSubNode__pubSubNodeWithNodeName_connection_pubSubServer_(self, _cmd, aNodeName, aConnection, aPubSubServer)
{
    return objj_msgSend(objj_msgSend(TNPubSubNode, "alloc"), "initWithNodeName:connection:pubSubServer:", aNodeName, aConnection, aPubSubServer);
}
,["TNPubSubNode","CPString","TNStropheConnection","CPString"]), new objj_method(sel_getUid("pubSubNodeWithNodeName:connection:pubSubServer:subscriptionIDs:"), function $TNPubSubNode__pubSubNodeWithNodeName_connection_pubSubServer_subscriptionIDs_(self, _cmd, aNodeName, aConnection, aPubSubServer, aSubscriptionIDs)
{
    return objj_msgSend(objj_msgSend(TNPubSubNode, "alloc"), "initWithNodeName:connection:pubSubServer:subscriptionIDs:", aNodeName, aConnection, aPubSubServer, aSubscriptionIDs);
}
,["TNPubSubNode","CPString","TNStropheConnection","TNStropheJID","CPArray"])]);
}e;