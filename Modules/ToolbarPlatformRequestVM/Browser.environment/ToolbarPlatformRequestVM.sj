@STATIC;1.0;p;38;TNToolbarPlatformRequestVMController.jt;8058;@STATIC;1.0;I;23;Foundation/Foundation.jI;39;StropheCappuccino/PubSub/TNPubSubNode.jI;39;StropheCappuccino/TNStropheConnection.ji;22;../../Model/TNModule.jt;7896;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/PubSub/TNPubSubNode.j", NO);
objj_executeFile("StropheCappuccino/TNStropheConnection.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
var TNArchipelNSPlatform = "archipel:platform",
    TNArchipelActionPlatformAllocVM = "allocvm",
    TNArchipelNodeNamePlatformRequestIn = "/archipel/platform/requests/in",
    TNArchipelNodeNamePlatformRequestOut = "/archipel/platform/requests/out";
{var the_class = objj_allocateClassPair(TNModule, "TNToolbarPlatformRequestVMController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_currentRequests"), new objj_ivar("_pubSubRequestIn"), new objj_ivar("_pubSubRequestOut"), new objj_ivar("_connection")]);
       
       

       
       

       
       


       
       

       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("willLoad"), function $TNToolbarPlatformRequestVMController__willLoad(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNToolbarPlatformRequestVMController").super_class }, "willLoad"))
        return NO;
    if (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"), "isConnected"))
        objj_msgSend(self, "didStropheConnected:", nil);
    else
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("didStropheConnected:"), TNStropheConnectionStatusConnectedNotification, nil);
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("didStropheConnected:"), function $TNToolbarPlatformRequestVMController__didStropheConnected_(self, _cmd, aNotification)
{
    self._connection = objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection");
    self._currentRequests = objj_msgSend(CPDictionary, "dictionary");
    self._pubSubRequestIn = objj_msgSend(TNPubSubNode, "pubSubNodeWithNodeName:connection:pubSubServer:", TNArchipelNodeNamePlatformRequestIn, self._connection, nil)
    self._pubSubRequestOut = objj_msgSend(TNPubSubNode, "pubSubNodeWithNodeName:connection:pubSubServer:", TNArchipelNodeNamePlatformRequestOut, self._connection, nil)
    objj_msgSend(self._pubSubRequestOut, "setDelegate:", self);
    objj_msgSend(self._pubSubRequestOut, "recoverSubscriptions");
    objj_msgSend(objj_msgSend(self, "UIItem"), "setEnabled:", NO);
}
,["void","CPNotification"]), new objj_method(sel_getUid("checkPlatformAnswers:"), function $TNToolbarPlatformRequestVMController__checkPlatformAnswers_(self, _cmd, aTimer)
{
    var requestUUID = objj_msgSend(aTimer, "userInfo"),
        anwsers = objj_msgSend(self._currentRequests, "objectForKey:", requestUUID),
        maxValue = 0,
        selectedPublisher;
    if (objj_msgSend(anwsers, "count") == 0)
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", "Platform Request", "Nobody has answered to your request", TNGrowlIconWarning);
        return;
    }
    for (var i = 0; i < objj_msgSend(anwsers, "count"); i++)
    {
        var anwser = objj_msgSend(anwsers, "objectAtIndex:", i),
            score = objj_msgSend(anwser, "objectForKey:", "score");
        if (MAX(maxValue, score) == score)
            selectedPublisher = objj_msgSend(anwser, "objectForKey:", "publisher");
    }
    objj_msgSend(self, "allocVirtualMachineOnHypervisor:", objj_msgSend(TNStropheJID, "stropheJIDWithString:", selectedPublisher));
}
,["void","CPTimer"]), new objj_method(sel_getUid("allocVirtualMachineOnHypervisor:"), function $TNToolbarPlatformRequestVMController__allocVirtualMachineOnHypervisor_(self, _cmd, aJid)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set"),
        uid = objj_msgSend(self._connection, "getUniqueId"),
        params = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", uid, "id");
    objj_msgSend(stanza, "setTo:", aJid);
    objj_msgSend(stanza, "setID:", uid);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelNSPlatform});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelActionPlatformAllocVM});
    objj_msgSend(self._connection, "registerSelector:ofObject:withDict:", sel_getUid("_didAllocVirtualMachine:"), self, params);
    objj_msgSend(self._connection, "send:", stanza);
}
,["void","TNStropheJID"]), new objj_method(sel_getUid("_didAllocVirtualMachine:"), function $TNToolbarPlatformRequestVMController___didAllocVirtualMachine_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", "Platform Request", "Your virtual machine request has been handled by " + objj_msgSend(objj_msgSend(aStanza, "from"), "bare"));
    else
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("toolbarItemClicked:"), function $TNToolbarPlatformRequestVMController__toolbarItemClicked_(self, _cmd, aSender)
{
    var uuid = objj_msgSend(CPString, "UUID"),
        requestNode = objj_msgSend(objj_msgSend(TNXMLNode, "alloc"), "initWithName:andAttributes:", "archipel", {"uuid": uuid, "action": TNArchipelActionPlatformAllocVM});
    objj_msgSend(self._currentRequests, "setObject:forKey:", objj_msgSend(CPArray, "array"), uuid);
    objj_msgSend(self._pubSubRequestIn, "publishItem:", requestNode);
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", "Platform Request", "Your request has been sent to the platform");
    objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", 2.0, self, sel_getUid("checkPlatformAnswers:"), uuid, NO);
}
,["id","id"]), new objj_method(sel_getUid("pubSubNode:retrievedSubscriptions:"), function $TNToolbarPlatformRequestVMController__pubSubNode_retrievedSubscriptions_(self, _cmd, aPubSubNode, areSubscriptionsRetrieved)
{
    if (areSubscriptionsRetrieved)
    {
        CPLog.info("sucessfully subscriptions retreived for node " + objj_msgSend(aPubSubNode, "name"));
        if (objj_msgSend(aPubSubNode, "numberOfSubscriptions") == 0)
            objj_msgSend(aPubSubNode, "subscribe");
        objj_msgSend(objj_msgSend(self, "UIItem"), "setEnabled:", YES);
    }
    else
    {
        objj_msgSend(objj_msgSend(self, "UIItem"), "setEnabled:", NO);
        CPLog.error("cannot retrieve subscriptions for node " + objj_msgSend(aPubSubNode, "name"));
    }
}
,["void","TNPubSubNode","BOOL"]), new objj_method(sel_getUid("pubSubNode:subscribed:"), function $TNToolbarPlatformRequestVMController__pubSubNode_subscribed_(self, _cmd, aPubSubNode, isSubscribed)
{
    if (isSubscribed)
        CPLog.info("sucessfully subscribed to node " + objj_msgSend(aPubSubNode, "name"));
    else
        CPLog.error("cannot subscribe to node " + objj_msgSend(aPubSubNode, "name"));
}
,["void","TNPubSubNode","BOOL"]), new objj_method(sel_getUid("pubSubNode:receivedEvent:"), function $TNToolbarPlatformRequestVMController__pubSubNode_receivedEvent_(self, _cmd, aPubSubNode, aStanza)
{
    var answerNode = objj_msgSend(aStanza, "firstChildWithName:", "archipel"),
        requestUUID = objj_msgSend(answerNode, "valueForAttribute:", "uuid"),
        score = objj_msgSend(objj_msgSend(answerNode, "valueForAttribute:", "score"), "floatValue"),
        publisher = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "item"), "valueForAttribute:", "publisher"),
        infos = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", publisher, "publisher", score, "score");
    objj_msgSend(objj_msgSend(self._currentRequests, "objectForKey:", requestUUID), "addObject:", infos);
}
,["void","TNPubSubNode","TNSTropheStanza"])]);
}e;