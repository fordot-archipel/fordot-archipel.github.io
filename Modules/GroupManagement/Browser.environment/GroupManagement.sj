@STATIC;1.0;p;30;TNGroupedMigrationController.jt;4313;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;22;AppKit/CPSearchField.jI;17;AppKit/CPWindow.jI;20;AppKit/CPTableView.jI;29;TNKit/TNTableViewDataSource.jI;37;StropheCappuccino/TNStropheIMClient.jt;4094;objj_executeFile("Foundation/Foundation.j", NO);objj_executeFile("AppKit/CPButton.j", NO);objj_executeFile("AppKit/CPSearchField.j", NO);objj_executeFile("AppKit/CPWindow.j", NO);objj_executeFile("AppKit/CPTableView.j", NO);objj_executeFile("TNKit/TNTableViewDataSource.j", NO);objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);{var the_class = objj_allocateClassPair(CPObject, "TNGroupedMigrationController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonMigrate"), new objj_ivar("mainPopover"), new objj_ivar("searchFieldHypervisors"), new objj_ivar("tableHypervisors"), new objj_ivar("_delegate"), new objj_ivar("_datasourceHypervisors")]);objj_registerClassPair(the_class);
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
    if (objj_msgSend(aSender, "isKindOfClass:", CPTableView))
    {
        var rect = objj_msgSend(aSender, "rectOfRow:", objj_msgSend(aSender, "selectedRow"));
        rect.origin.y += rect.size.height / 2;
        rect.origin.x += rect.size.width / 2;
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", CGRectMake(rect.origin.x, rect.origin.y, 10, 10), aSender, nil);
    }
    else
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
}CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNGroupedMigrationController), comment);
}
p;29;TNGroupManagementController.jt;15905;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPButtonBar.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;36;StropheCappuccino/TNStropheContact.jI;37;StropheCappuccino/TNStropheIMClient.jI;35;StropheCappuccino/TNStropheStanza.jI;29;TNKit/TNTableViewDataSource.ji;22;../../Model/TNModule.ji;30;TNGroupedMigrationController.jt;15516;objj_executeFile("Foundation/Foundation.j", NO);objj_executeFile("AppKit/CPButtonBar.j", NO);objj_executeFile("AppKit/CPSearchField.j", NO);objj_executeFile("AppKit/CPTableView.j", NO);objj_executeFile("AppKit/CPTextField.j", NO);objj_executeFile("AppKit/CPView.j", NO);objj_executeFile("StropheCappuccino/TNStropheContact.j", NO);objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);objj_executeFile("TNKit/TNTableViewDataSource.j", NO);objj_executeFile("../../Model/TNModule.j", YES);objj_executeFile("TNGroupedMigrationController.j", YES);var TNArchipelTypeVirtualMachineControl = "archipel:vm:control",
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
var TNModuleControlForStart = "Start",
    TNModuleControlForPause = "Pause",
    TNModuleControlForResume = "Resume",
    TNModuleControlForShutdown = "Stop",
    TNModuleControlForDestroy = "Destroy",
    TNModuleControlForReboot = "Reboot",
    TNModuleControlForMigrate = "Migrate";
{var the_class = objj_allocateClassPair(TNModule, "TNGroupManagementController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonBarControl"), new objj_ivar("filterField"), new objj_ivar("tableVirtualMachines"), new objj_ivar("viewTableContainer"), new objj_ivar("groupedMigrationController"), new objj_ivar("_datasourceGroupVM")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNGroupManagementController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.viewTableContainer, "setBorderedWithHexColor:", "#C0C7D2");
    self._datasourceGroupVM = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self.tableVirtualMachines, "setTarget:", self);
    objj_msgSend(self._datasourceGroupVM, "setTable:", self.tableVirtualMachines);
    objj_msgSend(self._datasourceGroupVM, "setSearchableKeyPaths:", ["name", "JID.bare"]);
    objj_msgSend(self.tableVirtualMachines, "setDataSource:", self._datasourceGroupVM);
    objj_msgSend(self.tableVirtualMachines, "setDelegate:", self);
    objj_msgSend(self, "addControlsWithIdentifier:title:target:action:image:", TNModuleControlForStart, CPBundleLocalizedString("Start", "Start"), self, sel_getUid("create:"), CPImageInBundle("IconsButtons/play.png", nil, objj_msgSend(CPBundle, "mainBundle")));
    objj_msgSend(self, "addControlsWithIdentifier:title:target:action:image:", TNModuleControlForPause, CPBundleLocalizedString("Pause", "Pause"), self, sel_getUid("suspend:"), CPImageInBundle("IconsButtons/pause.png", nil, objj_msgSend(CPBundle, "mainBundle")));
    objj_msgSend(self, "addControlsWithIdentifier:title:target:action:image:", TNModuleControlForResume, CPBundleLocalizedString("Resume", "Resume"), self, sel_getUid("resume:"), CPImageInBundle("IconsButtons/resume.png", nil, objj_msgSend(CPBundle, "mainBundle")));
    objj_msgSend(self, "addControlsWithIdentifier:title:target:action:image:", TNModuleControlForShutdown, CPBundleLocalizedString("Shutdown", "Shutdown"), self, sel_getUid("shutdown:"), CPImageInBundle("IconsButtons/stop.png", nil, objj_msgSend(CPBundle, "mainBundle")));
    objj_msgSend(self, "addControlsWithIdentifier:title:target:action:image:", TNModuleControlForDestroy, CPBundleLocalizedString("Force Off", "Force Off"), self, sel_getUid("destroy:"), CPImageInBundle("IconsButtons/destroy.png", nil, objj_msgSend(CPBundle, "mainBundle")));
    objj_msgSend(self, "addControlsWithIdentifier:title:target:action:image:", TNModuleControlForReboot, CPBundleLocalizedString("Reboot", "Reboot"), self, sel_getUid("reboot:"), CPImageInBundle("IconsButtons/reboot.png", nil, objj_msgSend(CPBundle, "mainBundle")));
    objj_msgSend(self, "addControlsWithIdentifier:title:target:action:image:", TNModuleControlForMigrate, CPBundleLocalizedString("Migrate", "Migrate"), self, sel_getUid("migrate:"), CPImageInBundle("IconsButtons/migrate.png", nil, objj_msgSend(CPBundle, "mainBundle")));
    objj_msgSend(self.buttonBarControl, "setButtons:", [objj_msgSend(self, "buttonWithIdentifier:", TNModuleControlForStart), objj_msgSend(self, "buttonWithIdentifier:", TNModuleControlForPause), objj_msgSend(self, "buttonWithIdentifier:", TNModuleControlForResume), objj_msgSend(self, "buttonWithIdentifier:", TNModuleControlForShutdown), objj_msgSend(self, "buttonWithIdentifier:", TNModuleControlForDestroy), objj_msgSend(self, "buttonWithIdentifier:", TNModuleControlForReboot), objj_msgSend(self, "buttonWithIdentifier:", TNModuleControlForMigrate)]);
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
,["void"]), new objj_method(sel_getUid("reload:"), function $TNGroupManagementController__reload_(self, _cmd, aNotification)
{
    objj_msgSend(self._datasourceGroupVM, "removeAllObjects");
    var contacts = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "getAllContactsTreeFromGroup:", self._entity);
    for (var i = 0; i < objj_msgSend(contacts, "count"); i++)
    {
        var contact = objj_msgSend(contacts, "objectAtIndex:", i),
            vCard = objj_msgSend(contact, "vCard");
        if (vCard && objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", vCard) == TNArchipelEntityTypeVirtualMachine)
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
    objj_msgSend(self.groupedMigrationController, "openWindow:", objj_msgSend(aSender, "isKindOfClass:", CPMenuItem) ? self.tableVirtualMachines : aSender);
}
,["id","id"]), new objj_method(sel_getUid("applyAction:"), function $TNGroupManagementController__applyAction_(self, _cmd, aCommand)
{
    var controlType;
    switch(aCommand) {
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
        objj_msgSend(controlStanza, "addChildWithName:andAttributes:", "archipel", {"xmlns": TNArchipelTypeVirtualMachineControl, "action": controlType});
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
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {"action": TNArchipelTypeVirtualMachineControlMigrate, "hypervisorjid": objj_msgSend(aDestination, "JID")});
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
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("tableView:menuForTableColumn:row:"), function $TNGroupManagementController__tableView_menuForTableColumn_row_(self, _cmd, aTableView, aColumn, aRow)
{
    objj_msgSend(self._contextualMenu, "removeAllItems");
    var itemRow = objj_msgSend(aTableView, "rowAtPoint:", aRow);
    if (objj_msgSend(aTableView, "selectedRow") != aRow)
        objj_msgSend(aTableView, "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", aRow), NO);
    if (objj_msgSend(aTableView, "numberOfSelectedRows") == 0 && aTableView == self.tableVirtualMachines)
        return;
    objj_msgSend(self._contextualMenu, "addItem:", objj_msgSend(self, "menuItemWithIdentifier:", TNModuleControlForStart));
    objj_msgSend(self._contextualMenu, "addItem:", objj_msgSend(self, "menuItemWithIdentifier:", TNModuleControlForResume));
    objj_msgSend(self._contextualMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(self._contextualMenu, "addItem:", objj_msgSend(self, "menuItemWithIdentifier:", TNModuleControlForPause));
    objj_msgSend(self._contextualMenu, "addItem:", objj_msgSend(self, "menuItemWithIdentifier:", TNModuleControlForShutdown));
    objj_msgSend(self._contextualMenu, "addItem:", objj_msgSend(self, "menuItemWithIdentifier:", TNModuleControlForDestroy));
    objj_msgSend(self._contextualMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(self._contextualMenu, "addItem:", objj_msgSend(self, "menuItemWithIdentifier:", TNModuleControlForReboot));
    objj_msgSend(self._contextualMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(self._contextualMenu, "addItem:", objj_msgSend(self, "menuItemWithIdentifier:", TNModuleControlForMigrate));
    return self._contextualMenu;
}
,["CPMenu","CPTableView","CPTableColumn","int"])]);
}CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNGroupManagementController), comment);
}
e;