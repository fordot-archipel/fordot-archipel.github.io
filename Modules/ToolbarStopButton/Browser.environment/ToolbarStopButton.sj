@STATIC;1.0;p;31;TNToolbarStopButtonController.jt;2772;@STATIC;1.0;I;23;Foundation/Foundation.ji;22;../../Model/TNModule.jt;2698;objj_executeFile("Foundation/Foundation.j", NO);objj_executeFile("../../Model/TNModule.j", YES);var TNArchipelControlNotification = "TNArchipelControlNotification",
    TNArchipelControlStop = "TNArchipelControlStop";
{var the_class = objj_allocateClassPair(TNModule, "TNToolbarStopButtonController"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("willLoad"), function $TNToolbarStopButtonController__willLoad(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNToolbarStopButtonController").super_class }, "willLoad"))
        return NO;
    objj_msgSend(objj_msgSend(self, "UIItem"), "setEnabled:", NO);
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("setGUIAccordingToStatus:"), function $TNToolbarStopButtonController__setGUIAccordingToStatus_(self, _cmd, aNotification)
{
    switch(objj_msgSend(self._entity, "XMPPShow")) {
    case TNStropheContactStatusOnline:
        objj_msgSend(objj_msgSend(self, "UIItem"), "setEnabled:", YES);
        break;
    case TNStropheContactStatusAway:
        objj_msgSend(objj_msgSend(self, "UIItem"), "setEnabled:", YES);
        break;
default:
        objj_msgSend(objj_msgSend(self, "UIItem"), "setEnabled:", NO);
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("setEntity:"), function $TNToolbarStopButtonController__setEntity_(self, _cmd, anEntity)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNToolbarStopButtonController").super_class }, "setEntity:", anEntity);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:", self);
    if (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(anEntity, "vCard")) !== TNArchipelEntityTypeVirtualMachine)
    {
        objj_msgSend(objj_msgSend(self, "UIItem"), "setEnabled:", NO);
        return;
    }
    objj_msgSend(self, "setGUIAccordingToStatus:", nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("setGUIAccordingToStatus:"), TNStropheContactPresenceUpdatedNotification, self._entity);
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("toolbarItemClicked:"), function $TNToolbarStopButtonController__toolbarItemClicked_(self, _cmd, aSender)
{
    var center = objj_msgSend(CPNotificationCenter, "defaultCenter");
    CPLog.info("Sending TNArchipelControlNotification with command TNArchipelControlStop");
    objj_msgSend(center, "postNotificationName:object:userInfo:", TNArchipelControlNotification, self, TNArchipelControlStop);
}
,["id","id"])]);
}e;