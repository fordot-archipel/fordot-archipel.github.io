@STATIC;1.0;p;21;ToolbarScreenButton.jt;3649;@STATIC;1.0;I;23;Foundation/Foundation.ji;22;../../Model/TNModule.jt;3575;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
//@global TNArchipelEntityTypeVirtualMachine
var TNArchipelVNCInformationRecoveredNotification = "TNArchipelVNCInformationRecoveredNotification",
    TNArchipelVNCShowExternalWindowNotification = "TNArchipelVNCShowExternalWindowNotification";
{var the_class = objj_allocateClassPair(TNModule, "TNToolbarScreenButtonController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_vncReady")]);
       
       


       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("willLoad"), function $TNToolbarScreenButtonController__willLoad(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNToolbarScreenButtonController").super_class }, "willLoad"))
        return NO;
    objj_msgSend(objj_msgSend(self, "UIItem"), "setEnabled:", NO);
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("setGUIAccordingToStatus:"), function $TNToolbarScreenButtonController__setGUIAccordingToStatus_(self, _cmd, aNotification)
{
    if (!self._vncReady)
    {
        objj_msgSend(objj_msgSend(self, "UIItem"), "setEnabled:", NO);
        return;
    }
    switch (objj_msgSend(self._entity, "XMPPShow"))
    {
        case TNStropheContactStatusOnline:
            objj_msgSend(objj_msgSend(self, "UIItem"), "setEnabled:", YES);
            break;
        default:
            objj_msgSend(objj_msgSend(self, "UIItem"), "setEnabled:", NO);
   }
}
,["void","CPNotification"]), new objj_method(sel_getUid("didVNCInformationRecovered:"), function $TNToolbarScreenButtonController__didVNCInformationRecovered_(self, _cmd, aNotification)
{
    if (!objj_msgSend(objj_msgSend(aNotification, "object"), "valueForAttribute:", "host"))
        self._vncReady = NO;
    else
        self._vncReady = YES;
    objj_msgSend(self, "setGUIAccordingToStatus:", nil);
}
,["void","CPNotification"]), new objj_method(sel_getUid("setEntity:"), function $TNToolbarScreenButtonController__setEntity_(self, _cmd, anEntity)
{
    self._vncReady = NO;
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNToolbarScreenButtonController").super_class }, "setEntity:", anEntity);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:", self);
    if (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(anEntity, "vCard")) !== TNArchipelEntityTypeVirtualMachine)
    {
        objj_msgSend(objj_msgSend(self, "UIItem"), "setEnabled:", NO);
        return;
    }
    objj_msgSend(self, "setGUIAccordingToStatus:", nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("didVNCInformationRecovered:"), TNArchipelVNCInformationRecoveredNotification, nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("setGUIAccordingToStatus:"), TNStropheContactPresenceUpdatedNotification, self._entity);
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("toolbarItemClicked:"), function $TNToolbarScreenButtonController__toolbarItemClicked_(self, _cmd, aSender)
{
    var center = objj_msgSend(CPNotificationCenter, "defaultCenter");
    CPLog.info("Sending TNArchipelVNCScreenNotification");
    objj_msgSend(center, "postNotificationName:object:userInfo:", TNArchipelVNCShowExternalWindowNotification, self, nil);
}
,["id","id"])]);
}e;