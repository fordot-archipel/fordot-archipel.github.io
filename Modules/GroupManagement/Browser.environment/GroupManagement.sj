@STATIC;1.0;p;30;TNGroupedMigrationController.jt;4085;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;22;AppKit/CPSearchField.jI;17;AppKit/CPWindow.jI;20;AppKit/CPTableView.jI;29;TNKit/TNTableViewDataSource.jI;37;StropheCappuccino/TNStropheIMClient.jt;3866;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global TNArchipelEntityTypeHypervisor
{var the_class = objj_allocateClassPair(CPObject, "TNGroupedMigrationController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonMigrate"), new objj_ivar("mainPopover"), new objj_ivar("searchFieldHypervisors"), new objj_ivar("tableHypervisors"), new objj_ivar("_delegate"), new objj_ivar("_datasourceHypervisors")]);
       
       

       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $TNGroupedMigrationController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNGroupedMigrationController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("awakeFromCib"), function $TNGroupedMigrationController__awakeFromCib(self, _cmd)
{
    self._datasourceHypervisors = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self._datasourceHypervisors, "setTable:", self.tableHypervisors);
    objj_msgSend(self._datasourceHypervisors, "setSearchableKeyPaths:", ["name", "JID.bare"]);
    objj_msgSend(self.tableHypervisors, "setDataSource:", self._datasourceHypervisors);
    objj_msgSend(self.searchFieldHypervisors, "setTarget:", self._datasourceHypervisors);
    objj_msgSend(self.searchFieldHypervisors, "setAction:", sel_getUid("filterObjects:"));
}
,["void"]), new objj_method(sel_getUid("populateHypervisors"), function $TNGroupedMigrationController__populateHypervisors(self, _cmd)
{
    objj_msgSend(self._datasourceHypervisors, "removeAllObjects");
    var rosterItems = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contacts");
    for (var i = 0; i < objj_msgSend(rosterItems, "count"); i++)
    {
        var item = objj_msgSend(rosterItems, "objectAtIndex:", i);
        if (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(item, "vCard")) == TNArchipelEntityTypeHypervisor)
            objj_msgSend(self._datasourceHypervisors, "addObject:", item);
    }
    objj_msgSend(self.tableHypervisors, "reloadData");
}
,["void"]), new objj_method(sel_getUid("openWindow:"), function $TNGroupedMigrationController__openWindow_(self, _cmd, aSender)
{
    objj_msgSend(self, "populateHypervisors");
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonMigrate);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNGroupedMigrationController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("sendMigration:"), function $TNGroupedMigrationController__sendMigration_(self, _cmd, aSender)
{
    var index = objj_msgSend(objj_msgSend(self.tableHypervisors, "selectedRowIndexes"), "firstIndex");
    objj_msgSend(self._delegate, "performGroupedMigration:", objj_msgSend(self._datasourceHypervisors, "objectAtIndex:", index));
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNGroupedMigrationController), comment);
}p;29;TNGroupManagementController.jt;17198;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPButtonBar.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;36;StropheCappuccino/TNStropheContact.jI;37;StropheCappuccino/TNStropheIMClient.jI;35;StropheCappuccino/TNStropheStanza.jI;29;TNKit/TNTableViewDataSource.ji;22;../../Model/TNModule.ji;30;TNGroupedMigrationController.jt;16809;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("StropheCappuccino/TNStropheContact.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("TNGroupedMigrationController.j", YES);;
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global TNArchipelEntityTypeVirtualMachine
var TNArchipelTypeVirtualMachineControl = "archipel:vm:control",
    TNArchipelTypeVirtualMachineControlCreate = "create",
    TNArchipelTypeVirtualMachineControlShutdown = "shutdown",
    TNArchipelTypeVirtualMachineControlDestroy = "destroy",
    TNArchipelTypeVirtualMachineControlReboot = "reboot",
    TNArchipelTypeVirtualMachineControlSuspend = "suspend",
    TNArchipelTypeVirtualMachineControlResume = "resume",
    TNArchipelTypeVirtualMachineControlMigrate = "migrate",
    TNArchipelActionTypeCreate = "Start",
    TNArchipelActionTypePause = "Pause",
    TNArchipelActionTypeShutdown = "Shutdown",
    TNArchipelActionTypeDestroy = "Destroy",
    TNArchipelActionTypeResume = "Resume",
    TNArchipelActionTypeReboot = "Reboot";
{var the_class = objj_allocateClassPair(TNModule, "TNGroupManagementController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonBarControl"), new objj_ivar("filterField"), new objj_ivar("tableVirtualMachines"), new objj_ivar("viewTableContainer"), new objj_ivar("groupedMigrationController"), new objj_ivar("_datasourceGroupVM")]);
       
       





       
       

       
       







       
       



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNGroupManagementController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.viewTableContainer, "setBorderedWithHexColor:", "#C0C7D2");
    self._datasourceGroupVM = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self.tableVirtualMachines, "setTarget:", self);
    objj_msgSend(self._datasourceGroupVM, "setTable:", self.tableVirtualMachines);
    objj_msgSend(self._datasourceGroupVM, "setSearchableKeyPaths:", ["name", "JID.bare"]);
    objj_msgSend(self.tableVirtualMachines, "setDataSource:", self._datasourceGroupVM);
    var createButton = objj_msgSend(CPButtonBar, "plusButton"),
        shutdownButton = objj_msgSend(CPButtonBar, "plusButton"),
        destroyButton = objj_msgSend(CPButtonBar, "plusButton"),
        suspendButton = objj_msgSend(CPButtonBar, "plusButton"),
        resumeButton = objj_msgSend(CPButtonBar, "plusButton"),
        rebootButton = objj_msgSend(CPButtonBar, "plusButton"),
        migrateButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(createButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/play.png"), CGSizeMake(16, 16)));
    objj_msgSend(createButton, "setTarget:", self);
    objj_msgSend(createButton, "setAction:", sel_getUid("create:"));
    objj_msgSend(createButton, "setToolTip:", CPBundleLocalizedString("Send all selected VM start event", "Send all selected VM start event"));
    objj_msgSend(shutdownButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/stop.png"), CGSizeMake(16, 16)));
    objj_msgSend(shutdownButton, "setTarget:", self);
    objj_msgSend(shutdownButton, "setAction:", sel_getUid("shutdown:"));
    objj_msgSend(shutdownButton, "setToolTip:", CPBundleLocalizedString("Send all selected VM shutdown event", "Send all selected VM shutdown event"));
    objj_msgSend(destroyButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/destroy.png"), CGSizeMake(16, 16)));
    objj_msgSend(destroyButton, "setTarget:", self);
    objj_msgSend(destroyButton, "setAction:", sel_getUid("destroy:"));
    objj_msgSend(destroyButton, "setToolTip:", CPBundleLocalizedString("Send all selected VM destroy event", "Send all selected VM destroy event"));
    objj_msgSend(suspendButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/pause.png"), CGSizeMake(16, 16)));
    objj_msgSend(suspendButton, "setTarget:", self);
    objj_msgSend(suspendButton, "setAction:", sel_getUid("suspend:"));
    objj_msgSend(suspendButton, "setToolTip:", CPBundleLocalizedString("Send all selected VM pause event", "Send all selected VM pause event"));
    objj_msgSend(resumeButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/resume.png"), CGSizeMake(16, 16)));
    objj_msgSend(resumeButton, "setTarget:", self);
    objj_msgSend(resumeButton, "setAction:", sel_getUid("resume:"));
    objj_msgSend(resumeButton, "setToolTip:", CPBundleLocalizedString("Send all selected VM resume event", "Send all selected VM resume event"));
    objj_msgSend(rebootButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/reboot.png"), CGSizeMake(16, 16)));
    objj_msgSend(rebootButton, "setTarget:", self);
    objj_msgSend(rebootButton, "setAction:", sel_getUid("reboot:"));
    objj_msgSend(rebootButton, "setToolTip:", CPBundleLocalizedString("Send all selected VM reboot event", "Send all selected VM reboot event"));
    objj_msgSend(migrateButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/migrate.png"), CGSizeMake(16, 16)));
    objj_msgSend(migrateButton, "setTarget:", self);
    objj_msgSend(migrateButton, "setAction:", sel_getUid("migrate:"));
    objj_msgSend(migrateButton, "setToolTip:", CPBundleLocalizedString("Migrate all selected VMs", "Migrate all selected VMs"));
    objj_msgSend(self.buttonBarControl, "setButtons:", [createButton, suspendButton, resumeButton, shutdownButton, destroyButton, rebootButton, migrateButton]);
    objj_msgSend(self.filterField, "setTarget:", self._datasourceGroupVM);
    objj_msgSend(self.filterField, "setAction:", sel_getUid("filterObjects:"));
    objj_msgSend(self.groupedMigrationController, "setDelegate:", self);
}
,["void"]), new objj_method(sel_getUid("willLoad"), function $TNGroupManagementController__willLoad(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNGroupManagementController").super_class }, "willLoad"))
        return NO;
    var center = objj_msgSend(CPNotificationCenter, "defaultCenter");
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("reload:"), TNStropheContactGroupUpdatedNotification, nil);
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("reload:"), TNStropheContactPresenceUpdatedNotification, nil);
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willUnload"), function $TNGroupManagementController__willUnload(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNGroupManagementController").super_class }, "willUnload");
}
,["void"]), new objj_method(sel_getUid("willShow"), function $TNGroupManagementController__willShow(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNGroupManagementController").super_class }, "willShow");
    objj_msgSend(self, "reload:", nil);
}
,["void"]), new objj_method(sel_getUid("willHide"), function $TNGroupManagementController__willHide(self, _cmd)
{
    objj_msgSend(self.groupedMigrationController, "closeWindow:", nil);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNGroupManagementController").super_class }, "willHide");
}
,["void"]), new objj_method(sel_getUid("menuReady"), function $TNGroupManagementController__menuReady(self, _cmd)
{
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Start selected virtual machines", "Start selected virtual machines"), sel_getUid("create:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Shutdown selected virtual machines", "Shutdown selected virtual machines"), sel_getUid("shutdown:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Pause selected virtual machines", "Pause selected virtual machines"), sel_getUid("suspend:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Resume selected virtual machines", "Resume selected virtual machines"), sel_getUid("resume:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Reboot selected virtual machines", "Reboot selected virtual machines"), sel_getUid("reboot:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Destroy selected virtual machines", "Destroy selected virtual machines"), sel_getUid("destroy:"), ""), "setTarget:", self);
}
,["void"]), new objj_method(sel_getUid("reload:"), function $TNGroupManagementController__reload_(self, _cmd, aNotification)
{
    objj_msgSend(self._datasourceGroupVM, "removeAllObjects");
    var contacts = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "getAllContactsTreeFromGroup:", self._entity);
    for (var i = 0; i < objj_msgSend(contacts, "count"); i++)
    {
        var contact = objj_msgSend(contacts, "objectAtIndex:", i),
            vCard = objj_msgSend(contact, "vCard");
        if (vCard && (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", vCard) == TNArchipelEntityTypeVirtualMachine))
            objj_msgSend(self._datasourceGroupVM, "addObject:", contact);
    }
    objj_msgSend(self.tableVirtualMachines, "reloadData");
}
,["void","CPNotification"]), new objj_method(sel_getUid("create:"), function $TNGroupManagementController__create_(self, _cmd, aSender)
{
    objj_msgSend(self, "applyAction:", TNArchipelActionTypeCreate);
}
,["id","id"]), new objj_method(sel_getUid("shutdown:"), function $TNGroupManagementController__shutdown_(self, _cmd, aSender)
{
    objj_msgSend(self, "applyAction:", TNArchipelActionTypeShutdown);
}
,["id","id"]), new objj_method(sel_getUid("destroy:"), function $TNGroupManagementController__destroy_(self, _cmd, aSender)
{
    objj_msgSend(self, "applyAction:", TNArchipelActionTypeDestroy);
}
,["id","id"]), new objj_method(sel_getUid("suspend:"), function $TNGroupManagementController__suspend_(self, _cmd, aSender)
{
    objj_msgSend(self, "applyAction:", TNArchipelActionTypePause);
}
,["id","id"]), new objj_method(sel_getUid("resume:"), function $TNGroupManagementController__resume_(self, _cmd, aSender)
{
    objj_msgSend(self, "applyAction:", TNArchipelActionTypeResume);
}
,["id","id"]), new objj_method(sel_getUid("reboot:"), function $TNGroupManagementController__reboot_(self, _cmd, aSender)
{
    objj_msgSend(self, "applyAction:", TNArchipelActionTypeReboot);
}
,["id","id"]), new objj_method(sel_getUid("migrate:"), function $TNGroupManagementController__migrate_(self, _cmd, aSender)
{
    objj_msgSend(self.groupedMigrationController, "openWindow:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("applyAction:"), function $TNGroupManagementController__applyAction_(self, _cmd, aCommand)
{
    var controlType;
    switch (aCommand)
    {
        case TNArchipelActionTypeCreate:
            controlType = TNArchipelTypeVirtualMachineControlCreate;
            break;
        case TNArchipelActionTypeShutdown:
            controlType = TNArchipelTypeVirtualMachineControlShutdown;
            break;
        case TNArchipelActionTypeDestroy:
            controlType = TNArchipelTypeVirtualMachineControlDestroy;
            break;
        case TNArchipelActionTypePause:
            controlType = TNArchipelTypeVirtualMachineControlSuspend;
            break;
        case TNArchipelActionTypeResume:
            controlType = TNArchipelTypeVirtualMachineControlResume;
            break;
        case TNArchipelActionTypeReboot:
            controlType = TNArchipelTypeVirtualMachineControlReboot;
            break;
    }
    var indexes = objj_msgSend(self.tableVirtualMachines, "selectedRowIndexes"),
        objects = objj_msgSend(self._datasourceGroupVM, "objectsAtIndexes:", indexes);
    for (var i = 0; i < objj_msgSend(objects, "count"); i++)
    {
        var vm = objj_msgSend(objects, "objectAtIndex:", i),
            controlStanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
        objj_msgSend(controlStanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
        objj_msgSend(controlStanza, "addChildWithName:andAttributes:", "archipel", {
            "xmlns": TNArchipelTypeVirtualMachineControl,
            "action": controlType});
        objj_msgSend(vm, "sendStanza:andRegisterSelector:ofObject:", controlStanza, sel_getUid("_didSendAction:"), self);
    }
}
,["void","CPString"]), new objj_method(sel_getUid("_didSendAction:"), function $TNGroupManagementController___didSendAction_(self, _cmd, aStanza)
{
    var sender = objj_msgSend(aStanza, "fromUser");
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Virtual machine ", "Virtual machine ") + sender + CPBundleLocalizedString(" state modified", " state modified"));
        objj_msgSend(self.tableVirtualMachines, "reloadData");
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("performGroupedMigration:"), function $TNGroupManagementController__performGroupedMigration_(self, _cmd, aDestination)
{
    var indexes = objj_msgSend(self.tableVirtualMachines, "selectedRowIndexes"),
        objects = objj_msgSend(self._datasourceGroupVM, "objectsAtIndexes:", indexes);
    for (var i = 0; i < objj_msgSend(objects, "count"); i++)
    {
        var vm = objj_msgSend(objects, "objectAtIndex:", i),
            stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
            "action": TNArchipelTypeVirtualMachineControlMigrate,
            "hypervisorjid": objj_msgSend(aDestination, "JID")});
        objj_msgSend(vm, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didMigrate:"), self);
    }
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("_didMigrate:"), function $TNGroupManagementController___didMigrate_(self, _cmd, aStanza)
{
    var sender = objj_msgSend(aStanza, "fromUser");
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Virtual machine ", "Virtual machine ") + sender + CPBundleLocalizedString(" is migrating", " is migrating"));
    else
         objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Cannot migrate virtual machine ", "Cannot migrate virtual machine ") + sender + CPBundleLocalizedString(" to the selected hypervisor", " to the selected hypervisor"));
    objj_msgSend(self.tableVirtualMachines, "reloadData");
    return NO;
}
,["BOOL","TNStropheStanza"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNGroupManagementController), comment);
}e;