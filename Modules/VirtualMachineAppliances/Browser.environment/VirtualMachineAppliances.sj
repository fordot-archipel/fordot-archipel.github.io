@STATIC;1.0;p;29;TNInstalledAppliancesObject.jt;3980;@STATIC;1.0;I;23;Foundation/Foundation.jt;3933;objj_executeFile("Foundation/Foundation.j", NO);
TNArchipelApplianceInstalled = 1;
TNArchipelApplianceStatusInstalled = "installed";
TNArchipelApplianceStatusInstalling = "installing";
TNArchipelApplianceStatusNone = "none";
var TNInstalledApplianceIconUsed,
    TNInstalledApplianceIconInstalling,
    TNInstalledApplianceIconNone;
{var the_class = objj_allocateClassPair(CPObject, "TNInstalledAppliance"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_comment"), new objj_ivar("_name"), new objj_ivar("_path"), new objj_ivar("_status"), new objj_ivar("_UUID")]);

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("comment"), function $TNInstalledAppliance__comment(self, _cmd)
{
return self._comment;
}
,["CPString"]), new objj_method(sel_getUid("setComment:"), function $TNInstalledAppliance__setComment_(self, _cmd, newValue)
{
self._comment = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("name"), function $TNInstalledAppliance__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNInstalledAppliance__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("path"), function $TNInstalledAppliance__path(self, _cmd)
{
return self._path;
}
,["CPString"]), new objj_method(sel_getUid("setPath:"), function $TNInstalledAppliance__setPath_(self, _cmd, newValue)
{
self._path = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("statusString"), function $TNInstalledAppliance__statusString(self, _cmd)
{
return self._status;
}
,["CPString"]), new objj_method(sel_getUid("setStatus:"), function $TNInstalledAppliance__setStatus_(self, _cmd, newValue)
{
self._status = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("UUID"), function $TNInstalledAppliance__UUID(self, _cmd)
{
return self._UUID;
}
,["CPString"]), new objj_method(sel_getUid("setUUID:"), function $TNInstalledAppliance__setUUID_(self, _cmd, newValue)
{
self._UUID = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("status"), function $TNInstalledAppliance__status(self, _cmd)
{
    if (self._status == TNArchipelApplianceStatusInstalled)
        return TNInstalledApplianceIconUsed;
    else if (self._status == TNArchipelApplianceStatusInstalling)
        return TNInstalledApplianceIconInstalling;
    else
        return TNInstalledApplianceIconNone;
}
,["CPImage"]), new objj_method(sel_getUid("description"), function $TNInstalledAppliance__description(self, _cmd)
{
    return self._name;
}
,["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNInstalledAppliance__initialize(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "mainBundle");
    TNInstalledApplianceIconUsed = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsButtons/check.png"), CGSizeMake(12, 12));
    TNInstalledApplianceIconInstalling = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "spinner.gif"), CGSizeMake(16, 16));
    TNInstalledApplianceIconNone = nil;
}
,["void"]), new objj_method(sel_getUid("InstalledApplianceWithName:UUID:path:comment:status:"), function $TNInstalledAppliance__InstalledApplianceWithName_UUID_path_comment_status_(self, _cmd, aName, anUUID, aPath, aComment, aStatus)
{
    var appliance = objj_msgSend(objj_msgSend(TNInstalledAppliance, "alloc"), "init");
    objj_msgSend(appliance, "setName:", aName);
    objj_msgSend(appliance, "setPath:", aPath);
    objj_msgSend(appliance, "setUUID:", anUUID);
    objj_msgSend(appliance, "setStatus:", aStatus);
    objj_msgSend(appliance, "setComment:", aComment);
    return appliance;
}
,["TNInstalledAppliance","CPString","CPString","CPString","CPString","CPString"])]);
}p;38;TNVirtualMachineAppliancesController.jt;23876;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;17;AppKit/CPWindow.jI;15;TNKit/TNAlert.jI;29;TNKit/TNTableViewDataSource.ji;22;../../Model/TNModule.ji;29;TNInstalledAppliancesObject.jt;23547;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("TNInstalledAppliancesObject.j", YES);;
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelTypeVirtualMachineVMCasting = "archipel:virtualmachine:vmcasting",
    TNArchipelTypeVirtualMachineVMCastingGet = "get",
    TNArchipelTypeVirtualMachineVMCastingAttach = "attach",
    TNArchipelTypeVirtualMachineVMCastingDetach = "detach",
    TNArchipelTypeVirtualMachineVMCastingPackage = "package",
    TNArchipelPushNotificationVMCasting = "archipel:push:vmcasting";
{var the_class = objj_allocateClassPair(TNModule, "TNVirtualMachineAppliancesController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonCreate"), new objj_ivar("buttonBarControl"), new objj_ivar("checkBoxShouldGZIP"), new objj_ivar("popoverNewAppliances"), new objj_ivar("fieldFilterAppliance"), new objj_ivar("tableAppliances"), new objj_ivar("fieldNewApplianceName"), new objj_ivar("viewTableContainer"), new objj_ivar("_detachButton"), new objj_ivar("_attachButton"), new objj_ivar("_packageButton"), new objj_ivar("_appliancesDatasource")]);
       
       







       
       


       
       

       
       






       
       










       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNVirtualMachineAppliancesController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.viewTableContainer, "setBorderedWithHexColor:", "#C0C7D2");
    self._appliancesDatasource = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self.tableAppliances, "setTarget:", self);
    objj_msgSend(self.tableAppliances, "setDoubleAction:", sel_getUid("tableDoubleClicked:"));
    objj_msgSend(self._appliancesDatasource, "setTable:", self.tableAppliances);
    objj_msgSend(self._appliancesDatasource, "setSearchableKeyPaths:", ["name", "path", "comment"])
    objj_msgSend(self.tableAppliances, "setDataSource:", self._appliancesDatasource);
    objj_msgSend(self.fieldFilterAppliance, "setTarget:", self._appliancesDatasource);
    objj_msgSend(self.fieldFilterAppliance, "setAction:", sel_getUid("filterObjects:"));
    var menu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init");
    objj_msgSend(menu, "addItemWithTitle:action:keyEquivalent:", "Install", sel_getUid("attach:"), "");
    objj_msgSend(menu, "addItemWithTitle:action:keyEquivalent:", "Detach", sel_getUid("detach:"), "");
    objj_msgSend(self.tableAppliances, "setMenu:", menu);
    self._packageButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._packageButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/package.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._packageButton, "setTarget:", self);
    objj_msgSend(self._packageButton, "setAction:", sel_getUid("openNewApplianceWindow:"));
    objj_msgSend(self._packageButton, "setToolTip:", CPBundleLocalizedString("Package current VM into hypervisor's VMCast", "Package current VM into hypervisor's VMCast"));
    self._attachButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._attachButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/lock.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._attachButton, "setTarget:", self);
    objj_msgSend(self._attachButton, "setAction:", sel_getUid("attach:"));
    objj_msgSend(self._attachButton, "setEnabled:", NO);
    objj_msgSend(self._attachButton, "setToolTip:", CPBundleLocalizedString("Use selected package for VM. Any changes will be lost", "Use selected package for VM. Any changes will be lost"));
    self._detachButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._detachButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/unlock.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._detachButton, "setTarget:", self);
    objj_msgSend(self._detachButton, "setAction:", sel_getUid("detach:"));
    objj_msgSend(self._detachButton, "setEnabled:", NO);
    objj_msgSend(self._detachButton, "setToolTip:", CPBundleLocalizedString("Detach current VM from selected appliance", "Detach current VM from selected appliance"));
    objj_msgSend(self.buttonBarControl, "setButtons:", [self._attachButton, self._detachButton, self._packageButton]);
}
,["void"]), new objj_method(sel_getUid("willLoad"), function $TNVirtualMachineAppliancesController__willLoad(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineAppliancesController").super_class }, "willLoad"))
        return NO;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didUpdatePresence:"), TNStropheContactPresenceUpdatedNotification, self._entity);
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceivePush:"), TNArchipelPushNotificationVMCasting);
    objj_msgSend(self.tableAppliances, "setDelegate:", nil);
    objj_msgSend(self.tableAppliances, "setDelegate:", self);
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willShow"), function $TNVirtualMachineAppliancesController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineAppliancesController").super_class }, "willShow"))
        return NO;
    objj_msgSend(self, "getInstalledAppliances");
    objj_msgSend(self, "checkIfRunning");
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willHide"), function $TNVirtualMachineAppliancesController__willHide(self, _cmd)
{
    objj_msgSend(self.popoverNewAppliances, "close");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineAppliancesController").super_class }, "willHide");
}
,["void"]), new objj_method(sel_getUid("menuReady"), function $TNVirtualMachineAppliancesController__menuReady(self, _cmd)
{
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Attach selected appliance", "Attach selected appliance"), sel_getUid("attach:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Dettach from selected appliance", "Dettach from selected appliance"), sel_getUid("detach:"), ""), "setTarget:", self);
    objj_msgSend(self._menu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Create appliance from this virtual machine", "Create appliance from this virtual machine"), sel_getUid("package:"), ""), "setTarget:", self);
}
,["void"]), new objj_method(sel_getUid("permissionsChanged"), function $TNVirtualMachineAppliancesController__permissionsChanged(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineAppliancesController").super_class }, "permissionsChanged");
    objj_msgSend(self, "tableViewSelectionDidChange:", nil);
}
,["void"]), new objj_method(sel_getUid("setUIAccordingToPermissions"), function $TNVirtualMachineAppliancesController__setUIAccordingToPermissions(self, _cmd)
{
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._packageButton, "appliance_package");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._attachButton, "appliance_attach");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._detachButton, "appliance_detach");
    if (objj_msgSend(self, "currentEntityHasPermission:", "appliance_package"))
        objj_msgSend(self.popoverNewAppliances, "close");
}
,["void"]), new objj_method(sel_getUid("flushUI"), function $TNVirtualMachineAppliancesController__flushUI(self, _cmd)
{
    objj_msgSend(self._appliancesDatasource, "removeAllObjects");
    objj_msgSend(self.tableAppliances, "reloadData");
}
,["void"]), new objj_method(sel_getUid("_didUpdatePresence:"), function $TNVirtualMachineAppliancesController___didUpdatePresence_(self, _cmd, aNotification)
{
    objj_msgSend(self, "checkIfRunning");
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didReceivePush:"), function $TNVirtualMachineAppliancesController___didReceivePush_(self, _cmd, somePushInfo)
{
    var sender = objj_msgSend(somePushInfo, "objectForKey:", "owner"),
        type = objj_msgSend(somePushInfo, "objectForKey:", "type"),
        change = objj_msgSend(somePushInfo, "objectForKey:", "change"),
        date = objj_msgSend(somePushInfo, "objectForKey:", "date");
    switch (change)
    {
        case "packaging":
            objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Packaging started.", "Packaging started."));
            break;
        case "packagingerror":
            objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Unable to create package. Check agent logs", "Unable to create package. Check agent logs"), TNGrowlIconError);
            break;
        case "packaged":
            objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Packaging successful.", "Packaging successful."));
            objj_msgSend(self, "getInstalledAppliances");
            break
        case "applianceinstalled":
            objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Appliance is installed.", "Appliance is installed."));
            objj_msgSend(self, "getInstalledAppliances");
            break;
        default:
            objj_msgSend(self, "getInstalledAppliances");
    }
    return YES;
}
,["BOOL","CPDictionary"]), new objj_method(sel_getUid("checkIfRunning"), function $TNVirtualMachineAppliancesController__checkIfRunning(self, _cmd)
{
    if (objj_msgSend(self._entity, "XMPPShow") == TNStropheContactStatusBusy)
        objj_msgSend(self, "showMaskView:", NO);
    else
        objj_msgSend(self, "showMaskView:", YES);
}
,["void"]), new objj_method(sel_getUid("openNewApplianceWindow:"), function $TNVirtualMachineAppliancesController__openNewApplianceWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.fieldNewApplianceName, "setStringValue:", objj_msgSend(CPString, "UUID"));
    objj_msgSend(self.checkBoxShouldGZIP, "setState:", CPOnState);
    objj_msgSend(self.popoverNewAppliances, "close");
    objj_msgSend(self.popoverNewAppliances, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.popoverNewAppliances, "makeFirstResponder:", self.fieldNewApplianceName);
    objj_msgSend(self.popoverNewAppliances, "setDefaultButton:", self.buttonCreate);
}
,["id","id"]), new objj_method(sel_getUid("closeNewApplianceWindow:"), function $TNVirtualMachineAppliancesController__closeNewApplianceWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.popoverNewAppliances, "close");
}
,["id","id"]), new objj_method(sel_getUid("tableDoubleClicked:"), function $TNVirtualMachineAppliancesController__tableDoubleClicked_(self, _cmd, aSender)
{
    if (objj_msgSend(self.tableAppliances, "numberOfSelectedRows") <= 0)
        return;
    var selectedIndex = objj_msgSend(objj_msgSend(self.tableAppliances, "selectedRowIndexes"), "firstIndex"),
        appliance = objj_msgSend(self._appliancesDatasource, "objectAtIndex:", selectedIndex);
    if (objj_msgSend(appliance, "statusString") == TNArchipelApplianceStatusInstalled)
        objj_msgSend(self, "detach");
    else
        objj_msgSend(self, "attach");
}
,["id","id"]), new objj_method(sel_getUid("attach:"), function $TNVirtualMachineAppliancesController__attach_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    objj_msgSend(self, "attach");
}
,["id","id"]), new objj_method(sel_getUid("detach:"), function $TNVirtualMachineAppliancesController__detach_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    objj_msgSend(self, "detach");
}
,["id","id"]), new objj_method(sel_getUid("package:"), function $TNVirtualMachineAppliancesController__package_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    objj_msgSend(self, "package");
}
,["id","id"]), new objj_method(sel_getUid("getInstalledAppliances"), function $TNVirtualMachineAppliancesController__getInstalledAppliances(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineVMCasting});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineVMCastingGet});
    objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveInstalledAppliances:"), self);
}
,["void"]), new objj_method(sel_getUid("_didReceiveInstalledAppliances:"), function $TNVirtualMachineAppliancesController___didReceiveInstalledAppliances_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(self, "flushUI");
        var appliances = objj_msgSend(aStanza, "childrenWithName:", "appliance");
        for (var i = 0; i < objj_msgSend(appliances, "count"); i++)
        {
            var appliance = objj_msgSend(appliances, "objectAtIndex:", i),
                name = objj_msgSend(appliance, "valueForAttribute:", "name"),
                comment = objj_msgSend(appliance, "valueForAttribute:", "description"),
                path = objj_msgSend(appliance, "valueForAttribute:", "path"),
                uuid = objj_msgSend(appliance, "valueForAttribute:", "uuid"),
                status = objj_msgSend(appliance, "valueForAttribute:", "status"),
                newAppliance = objj_msgSend(TNInstalledAppliance, "InstalledApplianceWithName:UUID:path:comment:status:", name, uuid, path, comment, status);
            objj_msgSend(self._appliancesDatasource, "addObject:", newAppliance);
        }
        objj_msgSend(self.tableAppliances, "reloadData");
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusReady);
    }
    else
    {
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusError);
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("attach"), function $TNVirtualMachineAppliancesController__attach(self, _cmd)
{
    if (objj_msgSend(self.tableAppliances, "numberOfRows") && (objj_msgSend(self.tableAppliances, "numberOfSelectedRows") <= 0))
    {
         objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You must select an appliance", "You must select an appliance"));
         return;
    }
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Attach appliance", "Attach appliance"), CPBundleLocalizedString("Are you sure you want to attach this appliance? This will reset all your virtual machine.", "Are you sure you want to attach this appliance? This will reset all your virtual machine."), self, [[CPBundleLocalizedString("Attach", "Attach"), sel_getUid("performAttach:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "runModal");
}
,["void"]), new objj_method(sel_getUid("performAttach:"), function $TNVirtualMachineAppliancesController__performAttach_(self, _cmd, someUserInfo)
{
    var selectedIndex = objj_msgSend(objj_msgSend(self.tableAppliances, "selectedRowIndexes"), "firstIndex"),
        appliance = objj_msgSend(self._appliancesDatasource, "objectAtIndex:", selectedIndex),
        stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineVMCasting});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineVMCastingAttach,
        "uuid": objj_msgSend(appliance, "UUID")});
    if (objj_msgSend(self, "currentEntityHasPermission:", "appliance_attach"))
        objj_msgSend(self._attachButton, "setEnabled:", NO);
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didAttach:"), self);
}
,["void","id"]), new objj_method(sel_getUid("_didAttach:"), function $TNVirtualMachineAppliancesController___didAttach_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Instanciation has started", "Instanciation has started"));
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("detach"), function $TNVirtualMachineAppliancesController__detach(self, _cmd)
{
    if (objj_msgSend(self.tableAppliances, "numberOfRows") && (objj_msgSend(self.tableAppliances, "numberOfSelectedRows") <= 0))
    {
         objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You must select an appliance", "You must select an appliance"));
         return;
    }
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Detach from appliance", "Detach from appliance"), CPBundleLocalizedString("Are you sure you want to detach virtual machine from this appliance?", "Are you sure you want to detach virtual machine from this appliance?"), self, [[CPBundleLocalizedString("Detach", "Detach"), sel_getUid("performDetach:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "runModal");
}
,["void"]), new objj_method(sel_getUid("performDetach:"), function $TNVirtualMachineAppliancesController__performDetach_(self, _cmd, someUserInfo)
{
    var selectedIndex = objj_msgSend(objj_msgSend(self.tableAppliances, "selectedRowIndexes"), "firstIndex"),
        appliance = objj_msgSend(self._appliancesDatasource, "objectAtIndex:", selectedIndex),
        stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    if (objj_msgSend(appliance, "statusString") != TNArchipelApplianceStatusInstalled)
        return;
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineVMCasting});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineVMCastingDetach});
    if (objj_msgSend(self, "currentEntityHasPermission:", "appliance_attach"))
        objj_msgSend(self._detachButton, "setEnabled:", NO);
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didDetach:"), self);
}
,["void","id"]), new objj_method(sel_getUid("_didDetach:"), function $TNVirtualMachineAppliancesController___didDetach_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Appliance has been detached", "Appliance has been detached"));
        objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._attachButton, "appliance_attach");
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("package"), function $TNVirtualMachineAppliancesController__package(self, _cmd)
{
    if (objj_msgSend(self._entity, "XMPPShow") != TNStropheContactStatusBusy)
    {
         objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("Virtual machine must not be running to package it.", "Virtual machine must not be running to package it."));
         return;
    }
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get"),
        name = objj_msgSend(self.fieldNewApplianceName, "stringValue"),
        shouldGZIP = objj_msgSend(self.checkBoxShouldGZIP, "state") == CPOnState ? "True" : "False";
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineVMCasting});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineVMCastingPackage,
        "name": name,
        "gzip": shouldGZIP});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didPackageAppliance:"), self);
    objj_msgSend(self.popoverNewAppliances, "close");
}
,["void"]), new objj_method(sel_getUid("_didPackageAppliance:"), function $TNVirtualMachineAppliancesController___didPackageAppliance_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") != "result")
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("tableViewSelectionDidChange:"), function $TNVirtualMachineAppliancesController__tableViewSelectionDidChange_(self, _cmd, aTableView)
{
    objj_msgSend(self._attachButton, "setEnabled:", NO);
    objj_msgSend(self._detachButton, "setEnabled:", NO);
    if (objj_msgSend(self.tableAppliances, "numberOfSelectedRows") <= 0)
        return;
    var selectedIndex = objj_msgSend(objj_msgSend(self.tableAppliances, "selectedRowIndexes"), "firstIndex"),
        appliance = objj_msgSend(self._appliancesDatasource, "objectAtIndex:", selectedIndex);
    if (objj_msgSend(appliance, "statusString") == TNArchipelApplianceStatusInstalled)
        objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._detachButton, "appliance_detach");
    else
        objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._attachButton, "appliance_attach");
}
,["void","CPTableView"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNVirtualMachineAppliancesController), comment);
}e;