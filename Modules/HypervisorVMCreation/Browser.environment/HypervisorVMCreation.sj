@STATIC;1.0;p;34;TNHypervisorVMCreationController.jt;53750;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;22;AppKit/CPPopUpButton.jI;22;AppKit/CPSearchField.jI;22;AppKit/CPTabViewItem.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;17;AppKit/CPWindow.jI;15;TNKit/TNAlert.jI;29;TNKit/TNTableViewDataSource.ji;22;../../Model/TNModule.ji;38;TNVirtualMachineAllocationController.ji;33;TNVirtualMachineCloneController.ji;26;TNVirtualMachineDataView.ji;34;TNVirtualMachineManageController.ji;32;TNVirtualMachineParkedDataView.ji;35;TNVirtualMachineParkingController.ji;40;TNVirtualMachineSubscriptionController.jt;53153;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTabViewItem.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("TNVirtualMachineAllocationController.j", YES);
objj_executeFile("TNVirtualMachineCloneController.j", YES);
objj_executeFile("TNVirtualMachineDataView.j", YES);
objj_executeFile("TNVirtualMachineManageController.j", YES);
objj_executeFile("TNVirtualMachineParkedDataView.j", YES);
objj_executeFile("TNVirtualMachineParkingController.j", YES);
objj_executeFile("TNVirtualMachineSubscriptionController.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global TNArchipelEntityTypeVirtualMachine
//@global TNArchipelRosterOutlineViewSelectItemNotification
var TNHypervisorVMCreationControllerLibvirtIcon = nil;
var TNArchipelTypeHypervisorControl = "archipel:hypervisor:control",
    TNArchipelTypeHypervisorControlRosterVM = "rostervm",
    TNArchipelPushNotificationHypervisor = "archipel:push:hypervisor",
    TNArchipelPushNotificationHypervisorPark = "archipel:push:vmparking";
{var the_class = objj_allocateClassPair(TNModule, "TNHypervisorVMCreationController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonBarControl"), new objj_ivar("buttonBarNotManagedVMControl"), new objj_ivar("buttonBarParkedVMControl"), new objj_ivar("popupDeleteMachine"), new objj_ivar("fieldFilterVM"), new objj_ivar("fieldFilterVMNotManaged"), new objj_ivar("fieldFilterVMParked"), new objj_ivar("tableVirtualMachines"), new objj_ivar("tableVirtualMachinesNotManaged"), new objj_ivar("tableVirtualMachinesParked"), new objj_ivar("tabViewVMs"), new objj_ivar("viewItemManagedVMs"), new objj_ivar("viewItemNotManagedVMs"), new objj_ivar("viewItemParkedVMs"), new objj_ivar("viewTableContainer"), new objj_ivar("viewTableContainerNotManaged"), new objj_ivar("viewTableContainerParked"), new objj_ivar("VMAllocationController"), new objj_ivar("VMCloneController"), new objj_ivar("dataViewVMPrototype"), new objj_ivar("VMManagerController"), new objj_ivar("dataViewParkedVMPrototype"), new objj_ivar("VMParkingController"), new objj_ivar("VMSubscriptionController"), new objj_ivar("_addSubscriptionButton"), new objj_ivar("_cloneButton"), new objj_ivar("_editParkedXMLButton"), new objj_ivar("_manageButton"), new objj_ivar("_minusButton"), new objj_ivar("_parkButton"), new objj_ivar("_parkDeleteButton"), new objj_ivar("_plusButton"), new objj_ivar("_removeSubscriptionButton"), new objj_ivar("_jumpButton"), new objj_ivar("_unmanageButton"), new objj_ivar("_unparkButton"), new objj_ivar("_virtualMachinesDatasource"), new objj_ivar("_virtualMachinesNotManagedDatasource"), new objj_ivar("_virtualMachinesParkedDatasource")]);
       
       






       
       





       
       

       
       














       
       




       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("tableVirtualMachines"), function $TNHypervisorVMCreationController__tableVirtualMachines(self, _cmd)
{
return self.tableVirtualMachines;
}
,["CPTableView"]), new objj_method(sel_getUid("tableVirtualMachinesParked"), function $TNHypervisorVMCreationController__tableVirtualMachinesParked(self, _cmd)
{
return self.tableVirtualMachinesParked;
}
,["CPTableView"]), new objj_method(sel_getUid("awakeFromCib"), function $TNHypervisorVMCreationController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.viewTableContainer, "setBorderedWithHexColor:", "#C0C7D2");
    objj_msgSend(self.viewTableContainerNotManaged, "setBorderedWithHexColor:", "#C0C7D2");
    objj_msgSend(self.viewTableContainerParked, "setBorderedWithHexColor:", "#C0C7D2");
    var tabViewItemManagedVM = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "tabViewItemManagedVM"),
        tabViewItemNotManagedVM = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "tabViewItemNotManagedVM"),
        tabViewItemParkedVM = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "tabViewItemParkedVM");
    objj_msgSend(tabViewItemManagedVM, "setLabel:", CPLocalizedString("Archipel VMs", "Archipel VMs"));
    objj_msgSend(tabViewItemManagedVM, "setView:", self.viewItemManagedVMs);
    objj_msgSend(tabViewItemNotManagedVM, "setLabel:", CPLocalizedString("Others VMs", "Others VMs"));
    objj_msgSend(tabViewItemNotManagedVM, "setView:", self.viewItemNotManagedVMs);
    objj_msgSend(tabViewItemParkedVM, "setLabel:", CPLocalizedString("Parked VMs", "Parked VMs"));
    objj_msgSend(tabViewItemParkedVM, "setView:", self.viewItemParkedVMs);
    objj_msgSend(self.tabViewVMs, "addTabViewItem:", tabViewItemManagedVM);
    objj_msgSend(self.tabViewVMs, "addTabViewItem:", tabViewItemNotManagedVM);
    objj_msgSend(self.tabViewVMs, "addTabViewItem:", tabViewItemParkedVM);
    objj_msgSend(self.tabViewVMs, "setDelegate:", self);
    self._virtualMachinesDatasource = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self.tableVirtualMachines, "setDelegate:", self);
    objj_msgSend(self.tableVirtualMachines, "setTarget:", self);
    objj_msgSend(self.tableVirtualMachines, "setDoubleAction:", sel_getUid("openEditVirtualMachineWindow:"));
    objj_msgSend(objj_msgSend(self.tableVirtualMachines, "tableColumnWithIdentifier:", "self"), "setDataView:", objj_msgSend(self.dataViewVMPrototype, "duplicate"));
    objj_msgSend(self.tableVirtualMachines, "setBackgroundColor:", TNArchipelDefaultColorsTableView);
    objj_msgSend(self._virtualMachinesDatasource, "setTable:", self.tableVirtualMachines);
    objj_msgSend(self._virtualMachinesDatasource, "setSearchableKeyPaths:", ["name", "JID.bare"]);
    objj_msgSend(self.fieldFilterVM, "setTarget:", self._virtualMachinesDatasource);
    objj_msgSend(self.fieldFilterVM, "setAction:", sel_getUid("filterObjects:"));
    objj_msgSend(self.tableVirtualMachines, "setDataSource:", self._virtualMachinesDatasource);
    self._plusButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._plusButton, "setTarget:", self);
    objj_msgSend(self._plusButton, "setAction:", sel_getUid("openNewVirtualMachineWindow:"));
    objj_msgSend(self._plusButton, "setToolTip:", CPBundleLocalizedString("Add a new VM", "Add a new VM"))
    self._minusButton = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._minusButton, "setTarget:", self);
    objj_msgSend(self._minusButton, "setAction:", sel_getUid("deleteVirtualMachine:"));
    objj_msgSend(self._minusButton, "setToolTip:", CPBundleLocalizedString("Remove completely selected vms", "Remove completely selected vms"));
    self._addSubscriptionButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._addSubscriptionButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/subscription-add.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._addSubscriptionButton, "setTarget:", self);
    objj_msgSend(self._addSubscriptionButton, "setAction:", sel_getUid("openAddSubscriptionWindow:"));
    objj_msgSend(self._addSubscriptionButton, "setToolTip:", CPBundleLocalizedString("VM will ask subscription to given user", "VM will ask subscription to given user"));
    self._removeSubscriptionButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._removeSubscriptionButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/subscription-remove.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._removeSubscriptionButton, "setTarget:", self);
    objj_msgSend(self._removeSubscriptionButton, "setAction:", sel_getUid("openRemoveSubscriptionWindow:"));
    objj_msgSend(self._removeSubscriptionButton, "setToolTip:", CPBundleLocalizedString("VM will remove subscription from given user", "VM will remove subscription from given user"));
    self._cloneButton = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._cloneButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/branch.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._cloneButton, "setTarget:", self);
    objj_msgSend(self._cloneButton, "setAction:", sel_getUid("openCloneVirtualMachineWindow:"));
    objj_msgSend(self._cloneButton, "setToolTip:", CPBundleLocalizedString("Clone selected VM", "Clone selected VM"));
    objj_msgSend(self._minusButton, "setEnabled:", NO);
    objj_msgSend(self._addSubscriptionButton, "setEnabled:", NO);
    objj_msgSend(self._removeSubscriptionButton, "setEnabled:", NO);
    self._unmanageButton = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._unmanageButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/unmanage.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._unmanageButton, "setTarget:", self);
    objj_msgSend(self._unmanageButton, "setAction:", sel_getUid("unmanageVirtualMachine:"));
    objj_msgSend(self._unmanageButton, "setEnabled:", NO);
    objj_msgSend(self._unmanageButton, "setToolTip:", CPBundleLocalizedString("Do not use Archipel to manage selected vms. Vms will still be there", "Do not use Archipel to manage selected vms. Vms will still be there"));
    self._parkButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._parkButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")), "pathForResource:", "park.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._parkButton, "setTarget:", self);
    objj_msgSend(self._parkButton, "setAction:", sel_getUid("parkVirtualMachines:"));
    objj_msgSend(self._parkButton, "setEnabled:", NO);
    objj_msgSend(self._parkButton, "setToolTip:", CPBundleLocalizedString("Park selected VMs", "Park selected VMs"));
    self._jumpButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._jumpButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")), "pathForResource:", "jump.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._jumpButton, "setTarget:", self);
    objj_msgSend(self._jumpButton, "setAction:", sel_getUid("addSelectedVMToRoster:"));
    objj_msgSend(self._jumpButton, "setEnabled:", NO);
    objj_msgSend(self._jumpButton, "setToolTip:", CPBundleLocalizedString("If vm is in roster, jump to it, otherwhise, ask subscription", "If vm is in roster, jump to it, otherwhise, ask subscription"));
    objj_msgSend(self.buttonBarControl, "setButtons:", [self._plusButton, self._minusButton, self._cloneButton, self._addSubscriptionButton, self._removeSubscriptionButton, self._unmanageButton, self._parkButton, self._jumpButton]);
    self._virtualMachinesNotManagedDatasource = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self.tableVirtualMachinesNotManaged, "setDelegate:", self);
    objj_msgSend(self.tableVirtualMachinesNotManaged, "setTarget:", self);
    objj_msgSend(self.tableVirtualMachinesNotManaged, "setDoubleAction:", sel_getUid("didNotManagedTableDoubleClick:"));
    objj_msgSend(objj_msgSend(self.tableVirtualMachinesNotManaged, "tableColumnWithIdentifier:", "self"), "setDataView:", objj_msgSend(self.dataViewVMPrototype, "duplicate"));
    objj_msgSend(self.tableVirtualMachinesNotManaged, "setBackgroundColor:", TNArchipelDefaultColorsTableView);
    objj_msgSend(self._virtualMachinesNotManagedDatasource, "setTable:", self.tableVirtualMachinesNotManaged);
    objj_msgSend(self._virtualMachinesNotManagedDatasource, "setSearchableKeyPaths:", ["JID.bare"]);
    objj_msgSend(self.fieldFilterVMNotManaged, "setTarget:", self._virtualMachinesNotManagedDatasource);
    objj_msgSend(self.fieldFilterVMNotManaged, "setAction:", sel_getUid("filterObjects:"));
    objj_msgSend(self.tableVirtualMachinesNotManaged, "setDataSource:", self._virtualMachinesNotManagedDatasource);
    self._manageButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._manageButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/manage.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._manageButton, "setTarget:", self);
    objj_msgSend(self._manageButton, "setAction:", sel_getUid("manageVirtualMachine:"));
    objj_msgSend(self._manageButton, "setEnabled:", NO);
    objj_msgSend(self._manageButton, "setToolTip:", CPBundleLocalizedString("Make Archipel manage selected VMs", "Make Archipel manage selected VMs"))
    objj_msgSend(self.buttonBarNotManagedVMControl, "setButtons:", [self._manageButton]);
    self._virtualMachinesParkedDatasource = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self.tableVirtualMachinesParked, "setDelegate:", self);
    objj_msgSend(self.tableVirtualMachinesParked, "setTarget:", self);
    objj_msgSend(self.tableVirtualMachinesParked, "setDoubleAction:", sel_getUid("openParkedXMLEditor:"));
    objj_msgSend(objj_msgSend(self.tableVirtualMachinesParked, "tableColumnWithIdentifier:", "self"), "setDataView:", objj_msgSend(self.dataViewParkedVMPrototype, "duplicate"));
    objj_msgSend(self.tableVirtualMachinesParked, "setBackgroundColor:", TNArchipelDefaultColorsTableView);
    objj_msgSend(self._virtualMachinesParkedDatasource, "setTable:", self.tableVirtualMachinesParked);
    objj_msgSend(self._virtualMachinesParkedDatasource, "setSearchableKeyPaths:", ["name", "UUID", "parker"]);
    objj_msgSend(self.fieldFilterVMParked, "setTarget:", self._virtualMachinesParkedDatasource);
    objj_msgSend(self.fieldFilterVMParked, "setAction:", sel_getUid("filterObjects:"));
    objj_msgSend(self.tableVirtualMachinesParked, "setDataSource:", self._virtualMachinesParkedDatasource);
    self._unparkButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._unparkButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")), "pathForResource:", "unpark.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._unparkButton, "setTarget:", self);
    objj_msgSend(self._unparkButton, "setAction:", sel_getUid("unparkVirtualMachines:"));
    objj_msgSend(self._unparkButton, "setEnabled:", NO);
    objj_msgSend(self._unparkButton, "setToolTip:", CPBundleLocalizedString("Unpark selected VMs into this hypervisor", "Unpark selected VMs into this hypervisor"));
    self._editParkedXMLButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._editParkedXMLButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/editxml.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._editParkedXMLButton, "setTarget:", self);
    objj_msgSend(self._editParkedXMLButton, "setAction:", sel_getUid("openParkedXMLEditor:"));
    objj_msgSend(self._editParkedXMLButton, "setEnabled:", NO);
    objj_msgSend(self._editParkedXMLButton, "setToolTip:", CPBundleLocalizedString("Edit parked VM's XML definition", "Edit parked VM's XML definition"));
    self._parkDeleteButton = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._parkDeleteButton, "setTarget:", self);
    objj_msgSend(self._parkDeleteButton, "setAction:", sel_getUid("deleteParkedVirtualMachines:"));
    objj_msgSend(self._parkDeleteButton, "setEnabled:", NO);
    objj_msgSend(self._parkDeleteButton, "setToolTip:", CPBundleLocalizedString("Delete selected parked VMs. All data will be lost", "Delete selected parked VMs. All data will be lost"))
    objj_msgSend(self.buttonBarParkedVMControl, "setButtons:", [self._unparkButton, self._editParkedXMLButton, self._parkDeleteButton]);
    objj_msgSend(self.VMAllocationController, "setDelegate:", self);
    objj_msgSend(self.VMSubscriptionController, "setDelegate:", self);
    objj_msgSend(self.VMCloneController, "setDelegate:", self);
    objj_msgSend(self.VMManagerController, "setDelegate:", self);
    objj_msgSend(self.VMParkingController, "setDelegate:", self);
    TNHypervisorVMCreationControllerLibvirtIcon = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")), "pathForResource:", "libvirt-icon.png"));
}
,["void"]), new objj_method(sel_getUid("willShow"), function $TNHypervisorVMCreationController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNHypervisorVMCreationController").super_class }, "willShow"))
        return NO;
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceiveParkPush:"), TNArchipelPushNotificationHypervisorPark);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_reload:"), TNStropheContactPresenceUpdatedNotification, nil);
    objj_msgSend(self.tableVirtualMachines, "setDelegate:", nil);
    objj_msgSend(self.tableVirtualMachines, "setDelegate:", self);
    objj_msgSend(self.tableVirtualMachinesNotManaged, "setDelegate:", nil);
    objj_msgSend(self.tableVirtualMachinesNotManaged, "setDelegate:", self);
    objj_msgSend(self.tableVirtualMachinesParked, "setDelegate:", nil);
    objj_msgSend(self.tableVirtualMachinesParked, "setDelegate:", self);
    objj_msgSend(self, "tabView:didSelectTabViewItem:", self.tabViewVMs, objj_msgSend(self.tabViewVMs, "selectedTabViewItem"));
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willHide"), function $TNHypervisorVMCreationController__willHide(self, _cmd)
{
    objj_msgSend(self.VMCloneController, "closeWindow:", nil);
    objj_msgSend(self.VMSubscriptionController, "closeAddSubscriptionWindow:", nil);
    objj_msgSend(self.VMSubscriptionController, "closeRemoveSubscriptionWindow:", nil);
    objj_msgSend(self.VMAllocationController, "closeWindow:", nil);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNHypervisorVMCreationController").super_class }, "willHide");
}
,["void"]), new objj_method(sel_getUid("menuReady"), function $TNHypervisorVMCreationController__menuReady(self, _cmd)
{
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Create new virtual machine", "Create new virtual machine"), sel_getUid("openNewVirtualMachineWindow:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Delete virtual machine", "Delete virtual machine"), sel_getUid("deleteVirtualMachine:"), ""), "setTarget:", self);
    objj_msgSend(self._menu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Clone this virtual machine", "Clone this virtual machine"), sel_getUid("openCloneVirtualMachineWindow:"), ""), "setTarget:", self);
    objj_msgSend(self._menu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Add a user subscription", "Add a user subscription"), sel_getUid("openAddSubscriptionWindow:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Remove a user subscription", "Remove a user subscription"), sel_getUid("openRemoveSubscriptionWindow:"), ""), "setTarget:", self);
}
,["void"]), new objj_method(sel_getUid("permissionsChanged"), function $TNHypervisorVMCreationController__permissionsChanged(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNHypervisorVMCreationController").super_class }, "permissionsChanged");
    objj_msgSend(self, "populateVirtualMachinesTable");
}
,["void"]), new objj_method(sel_getUid("setUIAccordingToPermissions"), function $TNHypervisorVMCreationController__setUIAccordingToPermissions(self, _cmd)
{
    var tableManagedCondition = (objj_msgSend(self.tableVirtualMachines, "numberOfSelectedRows") > 0),
        tableNotManagedCondition = (objj_msgSend(self.tableVirtualMachinesNotManaged, "numberOfSelectedRows") > 0),
        tableParkedCondition = (objj_msgSend(self.tableVirtualMachinesParked, "numberOfSelectedRows") > 0);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._manageButton, "manage", tableNotManagedCondition);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._unmanageButton, "unmanage", tableManagedCondition);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._parkButton, "vmparking_park", tableManagedCondition);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._unparkButton, "vmparking_unpark", tableParkedCondition);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._editParkedXMLButton, "vmparking_updatexml", tableParkedCondition);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._parkDeleteButton, "vmparking_delete", tableParkedCondition);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._plusButton, "alloc");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._minusButton, "free", tableManagedCondition);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._cloneButton, "clone", tableManagedCondition);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._addSubscriptionButton, "subscription_add", tableManagedCondition);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._removeSubscriptionButton, "subscription_remove", tableManagedCondition);
    objj_msgSend(self._jumpButton, "setEnabled:", objj_msgSend(self.tableVirtualMachines, "numberOfSelectedRows") == 1);
    if (!objj_msgSend(self, "currentEntityHasPermission:", "alloc"))
        objj_msgSend(self.VMAllocationController, "closeWindow:", nil);
    if (!objj_msgSend(self, "currentEntityHasPermission:", "subscription_add"))
        objj_msgSend(self.VMSubscriptionController, "closeAddSubscriptionWindow:", nil);
    if (!objj_msgSend(self, "currentEntityHasPermission:", "subscription_remove"))
        objj_msgSend(self.VMSubscriptionController, "closeRemoveSubscriptionWindow:", nil);
    objj_msgSend(self, "tableViewSelectionDidChange:", objj_msgSend(CPNotification, "notificationWithName:object:", "", self.tableVirtualMachinesParked));
    objj_msgSend(self, "tableViewSelectionDidChange:", objj_msgSend(CPNotification, "notificationWithName:object:", "", self.tableVirtualMachines));
    objj_msgSend(self, "tableViewSelectionDidChange:", objj_msgSend(CPNotification, "notificationWithName:object:", "", self.tableVirtualMachinesNotManaged));
}
,["void"]), new objj_method(sel_getUid("flushUI"), function $TNHypervisorVMCreationController__flushUI(self, _cmd)
{
    objj_msgSend(self._virtualMachinesDatasource, "removeAllObjects");
    objj_msgSend(self._virtualMachinesNotManagedDatasource, "removeAllObjects");
    objj_msgSend(self._virtualMachinesParkedDatasource, "removeAllObjects");
    objj_msgSend(self.tableVirtualMachines, "reloadData");
    objj_msgSend(self.tableVirtualMachinesNotManaged, "reloadData");
    objj_msgSend(self.tableVirtualMachinesParked, "reloadData");
}
,["void"]), new objj_method(sel_getUid("_didReceiveParkPush:"), function $TNHypervisorVMCreationController___didReceiveParkPush_(self, _cmd, somePushInfo)
{
    var sender = objj_msgSend(somePushInfo, "objectForKey:", "owner"),
        type = objj_msgSend(somePushInfo, "objectForKey:", "type"),
        change = objj_msgSend(somePushInfo, "objectForKey:", "change"),
        date = objj_msgSend(somePushInfo, "objectForKey:", "date"),
        stanza = objj_msgSend(somePushInfo, "objectForKey:", "rawStanza");
    var growl = objj_msgSend(TNGrowlCenter, "defaultCenter");
    switch (change)
    {
        case "cannot-park":
            objj_msgSend(growl, "pushNotificationWithTitle:message:icon:", "Parking error", "Unable to park", TNGrowlIconError);
            CPLog.error(stanza)
            break;
        case "cannot-unpark":
            objj_msgSend(growl, "pushNotificationWithTitle:message:icon:", "Parking error", "Unable to unpark", TNGrowlIconError);
            CPLog.error(stanza)
            break;
        case "cannot-delete":
            objj_msgSend(growl, "pushNotificationWithTitle:message:icon:", "Parking error", "Unable to delete", TNGrowlIconError);
            CPLog.error(stanza)
            break;
        case "cannot-update":
            objj_msgSend(growl, "pushNotificationWithTitle:message:icon:", "Parking error", "Unable to update", TNGrowlIconError);
            CPLog.error(stanza)
            break;
        case "parked":
            objj_msgSend(growl, "pushNotificationWithTitle:message:", "Parking success", "Parked successfully");
            break;
        case "unparked":
            objj_msgSend(growl, "pushNotificationWithTitle:message:", "Parking success", "Unparked successfully");
            break;
        case "deleted":
            objj_msgSend(growl, "pushNotificationWithTitle:message:", "Parking success", "Deleted successfully");
            break;
        case "updated":
            objj_msgSend(growl, "pushNotificationWithTitle:message:", "Parking success", "Updated successfully");
            break;
        default:
            if (objj_msgSend(objj_msgSend(self.tabViewVMs, "selectedTabViewItem"), "identifier") != "tabViewItemParkedVM")
                objj_msgSend(self, "populateVirtualMachinesTable");
    }
    if (objj_msgSend(objj_msgSend(self.tabViewVMs, "selectedTabViewItem"), "identifier") == "tabViewItemParkedVM")
        objj_msgSend(self.VMParkingController, "listParkedVirtualMachines");
    return YES;
}
,["BOOL","CPDictionary"]), new objj_method(sel_getUid("_reload:"), function $TNHypervisorVMCreationController___reload_(self, _cmd, aNotification)
{
    if (objj_msgSend(self._entity, "XMPPShow") != TNStropheContactStatusOffline)
        if (objj_msgSend(objj_msgSend(self.tabViewVMs, "selectedTabViewItem"), "identifier") != "tabViewItemParkedVM")
            objj_msgSend(self, "populateVirtualMachinesTable");
}
,["void","CPNotification"]), new objj_method(sel_getUid("populateVirtualMachinesTable:"), function $TNHypervisorVMCreationController__populateVirtualMachinesTable_(self, _cmd, aNotification)
{
    if (objj_msgSend(objj_msgSend(self.tabViewVMs, "selectedTabViewItem"), "identifier") != "tabViewItemParkedVM")
        objj_msgSend(self, "populateVirtualMachinesTable");
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didChangeVMStatus:"), function $TNHypervisorVMCreationController___didChangeVMStatus_(self, _cmd, aNotif)
{
    objj_msgSend(self.tableVirtualMachines, "reloadData");
    objj_msgSend(self.tableVirtualMachinesNotManaged, "reloadData");
}
,["void","CPNotification"]), new objj_method(sel_getUid("tableViewSelectionDidChange:"), function $TNHypervisorVMCreationController__tableViewSelectionDidChange_(self, _cmd, aNotification)
{
    switch (objj_msgSend(aNotification, "object"))
    {
        case self.tableVirtualMachines:
            objj_msgSend(self._minusButton, "setEnabled:", NO);
            objj_msgSend(self._cloneButton, "setEnabled:", NO);
            objj_msgSend(self._unmanageButton, "setEnabled:", NO);
            objj_msgSend(self._parkButton, "setEnabled:", NO);
            objj_msgSend(self._addSubscriptionButton, "setEnabled:", NO);
            objj_msgSend(self._removeSubscriptionButton, "setEnabled:", NO);
            objj_msgSend(self._jumpButton, "setEnabled:", objj_msgSend(self.tableVirtualMachines, "numberOfSelectedRows") == 1);
            var condition = (objj_msgSend(self.tableVirtualMachines, "numberOfSelectedRows") > 0);
            objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._minusButton, "free", condition);
            objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._cloneButton, "clone", condition);
            objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._addSubscriptionButton, "subscription_add", condition);
            objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._removeSubscriptionButton, "subscription_remove", condition);
            objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._unmanageButton, "unmanage", condition);
            objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._parkButton, "vmparking_park", condition);
        case self.tableVirtualMachinesNotManaged:
            objj_msgSend(self._manageButton, "setEnabled:", NO);
            var condition = (objj_msgSend(self.tableVirtualMachinesNotManaged, "numberOfSelectedRows") > 0);
            objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._manageButton, "manage", condition);
        case self.tableVirtualMachinesParked:
            objj_msgSend(self._unparkButton, "setEnabled:", NO);
            objj_msgSend(self._editParkedXMLButton, "setEnabled:", NO);
            objj_msgSend(self._parkDeleteButton, "setEnabled:", NO);
            var condition = (objj_msgSend(self.tableVirtualMachinesParked, "numberOfSelectedRows") > 0);
            objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._unparkButton, "vmparking_unpark", condition);
            objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._editParkedXMLButton, "vmparking_updatexml", condition);
            objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._parkDeleteButton, "vmparking_delete", condition);
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("populateVirtualMachinesTable"), function $TNHypervisorVMCreationController__populateVirtualMachinesTable(self, _cmd)
{
    if (objj_msgSend(self, "currentEntityHasPermission:", "rostervm"))
    {
        objj_msgSend(self, "getHypervisorRoster");
    }
    else
    {
        objj_msgSend(self._virtualMachinesDatasource, "removeAllObjects");
        objj_msgSend(self._virtualMachinesNotManagedDatasource, "removeAllObjects");
        for (var i = 0; i < objj_msgSend(objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contacts"), "count"); i++)
        {
            var contact = objj_msgSend(objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contacts"), "objectAtIndex:", i);
            if ((objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(contact, "vCard")) == TNArchipelEntityTypeVirtualMachine)
                && objj_msgSend(objj_msgSend(contact, "resources"), "count")
                && (objj_msgSend(objj_msgSend(contact, "resources"), "objectAtIndex:", 0) == objj_msgSend(objj_msgSend(self._entity, "JID"), "node")))
            {
                objj_msgSend(self._virtualMachinesDatasource, "addObject:", contact);
                objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didChangeVMStatus:"), TNStropheContactPresenceUpdatedNotification, contact);
            }
        }
        objj_msgSend(self.tableVirtualMachines, "reloadData");
        objj_msgSend(self.tableVirtualMachinesNotManaged, "reloadData");
    }
}
,["void"]), new objj_method(sel_getUid("addSelectedVMToRoster:"), function $TNHypervisorVMCreationController__addSelectedVMToRoster_(self, _cmd, aSender)
{
    if (objj_msgSend(self.tableVirtualMachines, "numberOfSelectedRows") <= 0)
        return;
    var vm = objj_msgSend(self._virtualMachinesDatasource, "objectAtIndex:", objj_msgSend(self.tableVirtualMachines, "selectedRow"));
    if (!objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "containsJID:", objj_msgSend(vm, "JID")))
    {
        var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Adding contact", "Adding contact"), CPBundleLocalizedString("Would you like to add ", "Would you like to add ") + objj_msgSend(vm, "name") + CPBundleLocalizedString(" to your roster", " to your roster"), self, [[CPBundleLocalizedString("Add contact", "Add contact"), sel_getUid("performAddToRoster:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
        objj_msgSend(alert, "setUserInfo:", vm);
        objj_msgSend(alert, "runModal");
    }
    else
    {
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:userInfo:", TNArchipelRosterOutlineViewSelectItemNotification, self, vm);
    }
}
,["id","id"]), new objj_method(sel_getUid("didNotManagedTableDoubleClick:"), function $TNHypervisorVMCreationController__didNotManagedTableDoubleClick_(self, _cmd, aSender)
{
    objj_msgSend(self, "manageVirtualMachine:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("parkVirtualMachines:"), function $TNHypervisorVMCreationController__parkVirtualMachines_(self, _cmd, aSender)
{
    if (objj_msgSend(self.tableVirtualMachines, "numberOfSelectedRows") <= 0)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPLocalizedString("You must select at least a virtual machine", "You must select at least a virtual machine"));
        return;
    }
    var titleMessage = CPLocalizedString("Park virtual machine", "Park virtual machine"),
        informativeMessage = CPLocalizedString("Are you sure you want Archipel to park this virtual machine?", "Are you sure you want Archipel to park this virtual machine?");
    if (objj_msgSend(self.tableVirtualMachines, "numberOfSelectedRows") > 1)
    {
        titleMessage = CPLocalizedString("Park virtual machines", "Park virtual machines");
        informativeMessage = CPLocalizedString("Are you sure you want Archipel to park these virtual machines?", "Are you sure you want Archipel to park these virtual machines?");
    }
    var vms = objj_msgSend(self._virtualMachinesDatasource, "objectsAtIndexes:", objj_msgSend(self.tableVirtualMachines, "selectedRowIndexes")),
        alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", titleMessage, informativeMessage, self.VMParkingController, [[CPLocalizedString("Park", "Park"), sel_getUid("parkVirtualMachines:")],
                                          [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "setUserInfo:", vms);
    objj_msgSend(alert, "runModal");
}
,["id","id"]), new objj_method(sel_getUid("unparkVirtualMachines:"), function $TNHypervisorVMCreationController__unparkVirtualMachines_(self, _cmd, aSender)
{
    if (objj_msgSend(self.tableVirtualMachinesParked, "numberOfSelectedRows") <= 0)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPLocalizedString("You must select at least a virtual machine", "You must select at least a virtual machine"));
        return;
    }
    var titleMessage = CPLocalizedString("Unpark virtual machine", "Unpark virtual machine"),
        informativeMessage = CPLocalizedString("Are you sure you want Archipel to unpark this virtual machine?", "Are you sure you want Archipel to unpark this virtual machine?");
    if (objj_msgSend(self.tableVirtualMachinesParked, "numberOfSelectedRows") > 1)
    {
        titleMessage = CPLocalizedString("Unpark virtual machines", "Unpark virtual machines");
        informativeMessage = CPLocalizedString("Are you sure you want Archipel to unpark these virtual machines?", "Are you sure you want Archipel to unpark these virtual machines?");
    }
    var vms = objj_msgSend(self._virtualMachinesParkedDatasource, "objectsAtIndexes:", objj_msgSend(self.tableVirtualMachinesParked, "selectedRowIndexes")),
        alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", titleMessage, informativeMessage, self.VMParkingController, [[CPLocalizedString("Unpark", "Unpark"), sel_getUid("unparkVirtualMachines:")],
                                          [CPLocalizedString("Unpark and start", "Unpark and start"), sel_getUid("unparkAndStartVirtualMachines:")],
                                          [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "setUserInfo:", vms);
    objj_msgSend(alert, "runModal");
}
,["id","id"]), new objj_method(sel_getUid("openParkedXMLEditor:"), function $TNHypervisorVMCreationController__openParkedXMLEditor_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (objj_msgSend(self.tableVirtualMachinesParked, "numberOfSelectedRows") != 1)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPLocalizedString("You must select a virtual machine", "You must select a virtual machine"));
        return;
    }
    objj_msgSend(self.VMParkingController, "setCurrentItem:", objj_msgSend(self._virtualMachinesParkedDatasource, "objectAtIndex:", objj_msgSend(self.tableVirtualMachinesParked, "selectedRow")));
    objj_msgSend(self.VMParkingController, "openWindow:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("deleteParkedVirtualMachines:"), function $TNHypervisorVMCreationController__deleteParkedVirtualMachines_(self, _cmd, aSender)
{
    if (objj_msgSend(self.tableVirtualMachinesParked, "numberOfSelectedRows") <= 0)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPLocalizedString("You must select at least a virtual machine", "You must select at least a virtual machine"));
        return;
    }
    var titleMessage = CPLocalizedString("Delete parked virtual machine", "Delete parked virtual machine"),
        informativeMessage = CPLocalizedString("Are you sure you want Archipel to delete this parked virtual machine? This will remove everything related to it, including drives", "Are you sure you want Archipel to delete this parked virtual machine? This will remove everything related to it, including drives");
    if (objj_msgSend(self.tableVirtualMachinesParked, "numberOfSelectedRows") > 1)
    {
        titleMessage = CPLocalizedString("Delete parked virtual machines", "Delete parked virtual machines");
        informativeMessage = CPLocalizedString("Are you sure you want Archipel to delete these parked virtual machines? This will remove everything related to them, including drives", "Are you sure you want Archipel to delete these parked virtual machines? This will remove everything related to them, including drives");
    }
    var vms = objj_msgSend(self._virtualMachinesParkedDatasource, "objectsAtIndexes:", objj_msgSend(self.tableVirtualMachinesParked, "selectedRowIndexes")),
        alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", titleMessage, informativeMessage, self.VMParkingController, [[CPLocalizedString("Delete", "Delete"), sel_getUid("deleteParkedVirtualMachines:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "setUserInfo:", vms);
    objj_msgSend(alert, "runModal");
}
,["id","id"]), new objj_method(sel_getUid("manageVirtualMachine:"), function $TNHypervisorVMCreationController__manageVirtualMachine_(self, _cmd, aSender)
{
    if (objj_msgSend(self.tableVirtualMachinesNotManaged, "numberOfSelectedRows") <= 0)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPLocalizedString("You must select at least a virtual machine", "You must select at least a virtual machine"));
        return;
    }
    var titleMessage = CPLocalizedString("Manage virtual machine", "Manage virtual machine"),
        informativeMessage = CPLocalizedString("Are you sure you want Archipel to manage this virtual machine?", "Are you sure you want Archipel to manage this virtual machine?");
    if (objj_msgSend(self.tableVirtualMachinesNotManaged, "numberOfSelectedRows") > 1)
    {
        titleMessage = CPLocalizedString("Manage virtual machines", "Manage virtual machines");
        informativeMessage = CPLocalizedString("Are you sure you want Archipel to manage these virtual machines?", "Are you sure you want Archipel to manage these virtual machines?");
    }
    var vms = objj_msgSend(self._virtualMachinesNotManagedDatasource, "objectsAtIndexes:", objj_msgSend(self.tableVirtualMachinesNotManaged, "selectedRowIndexes")),
        alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", titleMessage, informativeMessage, self.VMManagerController, [[CPLocalizedString("Manage", "Manage"), sel_getUid("performManage:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "setUserInfo:", vms);
    objj_msgSend(alert, "runModal");
}
,["id","id"]), new objj_method(sel_getUid("unmanageVirtualMachine:"), function $TNHypervisorVMCreationController__unmanageVirtualMachine_(self, _cmd, aSender)
{
    if (objj_msgSend(self.tableVirtualMachines, "numberOfSelectedRows") <= 0)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPLocalizedString("You must select at least a virtual machine", "You must select at least a virtual machine"));
        return;
    }
    var titleMessage = CPLocalizedString("Unmanage virtual machine", "Unmanage virtual machine"),
        informativeMessage = CPLocalizedString("Are you sure you want Archipel to unmanage this virtual machine?", "Are you sure you want Archipel to unmanage this virtual machine?");
    if (objj_msgSend(self.tableVirtualMachines, "numberOfSelectedRows") > 1)
    {
        titleMessage = CPLocalizedString("Unmanage virtual machines", "Umnanage virtual machines");
        informativeMessage = CPLocalizedString("Are you sure you want Archipel to unmanage these virtual machines?", "Are you sure you want Archipel to unmanage these virtual machines?");
    }
    var vms = objj_msgSend(self._virtualMachinesDatasource, "objectsAtIndexes:", objj_msgSend(self.tableVirtualMachines, "selectedRowIndexes")),
        alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", titleMessage, informativeMessage, self.VMManagerController, [[CPLocalizedString("Unmanage", "Unmanage"), sel_getUid("performUnmanage:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "setUserInfo:", vms);
    objj_msgSend(alert, "runModal");
}
,["id","id"]), new objj_method(sel_getUid("deleteVirtualMachine:"), function $TNHypervisorVMCreationController__deleteVirtualMachine_(self, _cmd, aSender)
{
    objj_msgSend(self.VMAllocationController, "deleteVirtualMachine");
}
,["id","id"]), new objj_method(sel_getUid("openCloneVirtualMachineWindow:"), function $TNHypervisorVMCreationController__openCloneVirtualMachineWindow_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (objj_msgSend(self.tableVirtualMachines, "numberOfSelectedRows") != 1)
    {
         objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You must select one (and only one) virtual machine", "You must select one (and only one) virtual machine"));
         return;
    }
    objj_msgSend(self.VMCloneController, "openWindow:", self._cloneButton);
}
,["id","id"]), new objj_method(sel_getUid("openNewVirtualMachineWindow:"), function $TNHypervisorVMCreationController__openNewVirtualMachineWindow_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (objj_msgSend(self, "isVisible"))
    {
        objj_msgSend(self.VMAllocationController, "setVirtualMachine:", nil);
        objj_msgSend(self.VMAllocationController, "openWindow:", self._plusButton);
    }
}
,["id","id"]), new objj_method(sel_getUid("openEditVirtualMachineWindow:"), function $TNHypervisorVMCreationController__openEditVirtualMachineWindow_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (objj_msgSend(self, "isVisible"))
    {
        var vm = objj_msgSend(self._virtualMachinesDatasource, "objectAtIndex:", objj_msgSend(self.tableVirtualMachines, "selectedRow"));
        objj_msgSend(self.VMAllocationController, "setVirtualMachine:", vm);
        objj_msgSend(self.VMAllocationController, "openWindow:", aSender);
    }
}
,["id","id"]), new objj_method(sel_getUid("openAddSubscriptionWindow:"), function $TNHypervisorVMCreationController__openAddSubscriptionWindow_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (objj_msgSend(self.tableVirtualMachines, "numberOfSelectedRows") != 1)
    {
         objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You must select one (and only one) virtual machine", "You must select one (and only one) virtual machine"));
         return;
    }
    objj_msgSend(self.VMSubscriptionController, "openAddSubsctiptionWindow:", self._addSubscriptionButton);
}
,["id","id"]), new objj_method(sel_getUid("openRemoveSubscriptionWindow:"), function $TNHypervisorVMCreationController__openRemoveSubscriptionWindow_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (objj_msgSend(self.tableVirtualMachines, "numberOfSelectedRows") != 1)
    {
         objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You must select one (and only one) virtual machine", "You must select one (and only one) virtual machine"));
         return;
    }
    objj_msgSend(self.VMSubscriptionController, "openRemoveSubscriptionWindow:", self._removeSubscriptionButton);
}
,["id","id"]), new objj_method(sel_getUid("performAddToRoster:"), function $TNHypervisorVMCreationController__performAddToRoster_(self, _cmd, someUserInfo)
{
    var vm = someUserInfo;
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "addContact:withName:inGroupWithPath:", objj_msgSend(vm, "JID"), objj_msgSend(objj_msgSend(vm, "JID"), "bare"), nil);
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "askAuthorizationTo:", objj_msgSend(vm, "JID"));
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "authorizeJID:", objj_msgSend(vm, "JID"));
}
,["void","id"]), new objj_method(sel_getUid("getHypervisorRoster"), function $TNHypervisorVMCreationController__getHypervisorRoster(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorControlRosterVM});
    objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didReceiveHypervisorRoster:"));
}
,["void"]), new objj_method(sel_getUid("_didReceiveHypervisorRoster:"), function $TNHypervisorVMCreationController___didReceiveHypervisorRoster_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var queryItems = objj_msgSend(aStanza, "childrenWithName:", "item");
        objj_msgSend(self._virtualMachinesDatasource, "removeAllObjects");
        objj_msgSend(self._virtualMachinesNotManagedDatasource, "removeAllObjects");
        for (var i = 0; i < objj_msgSend(queryItems, "count"); i++)
        {
            var JID = objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(objj_msgSend(queryItems, "objectAtIndex:", i), "text"));
            if (objj_msgSend(objj_msgSend(queryItems, "objectAtIndex:", i), "valueForAttribute:", "managed") == "True")
            {
                var entry = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contactWithBareJID:", JID);
                if (entry)
                {
                    if (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(entry, "vCard")) != TNArchipelEntityTypeVirtualMachine)
                        objj_msgSend(entry, "getVCard");
                    objj_msgSend(self._virtualMachinesDatasource, "addObject:", entry);
                    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("populateVirtualMachinesTable:"), TNStropheContactVCardReceivedNotification, entry);
                    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didChangeVMStatus:"), TNStropheContactPresenceUpdatedNotification, entry);
                }
                else
                {
                    var contact = objj_msgSend(TNStropheContact, "contactWithConnection:JID:group:", nil, JID, nil),
                        name = objj_msgSend(objj_msgSend(queryItems, "objectAtIndex:", i), "valueForAttribute:", "name");
                    objj_msgSend(contact, "setNickname:", name);
                    objj_msgSend(self._virtualMachinesDatasource, "addObject:", contact);
                }
            }
            else
            {
                var contact = objj_msgSend(TNStropheContact, "contactWithConnection:JID:group:", nil, JID, nil),
                    name = objj_msgSend(objj_msgSend(queryItems, "objectAtIndex:", i), "valueForAttribute:", "name");
                objj_msgSend(contact, "setNickname:", name);
                objj_msgSend(contact, "setAvatar:", TNHypervisorVMCreationControllerLibvirtIcon);
                objj_msgSend(self._virtualMachinesNotManagedDatasource, "addObject:", contact);
            }
        }
        objj_msgSend(self.tableVirtualMachines, "reloadData");
        objj_msgSend(self.tableVirtualMachinesNotManaged, "reloadData");
        objj_msgSend(self.tableVirtualMachines, "setSortDescriptors:", [objj_msgSend(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "name", YES)])
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusReady);
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusError);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("performRemoveFromRoster:"), function $TNHypervisorVMCreationController__performRemoveFromRoster_(self, _cmd, someUserInfo)
{
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "removeContact:", someUserInfo);
}
,["void","id"]), new objj_method(sel_getUid("tabView:didSelectTabViewItem:"), function $TNHypervisorVMCreationController__tabView_didSelectTabViewItem_(self, _cmd, aTabView, anItem)
{
    switch (objj_msgSend(anItem, "identifier"))
    {
        case "tabViewItemManagedVM":
        case "tabViewItemNotManagedVM":
            objj_msgSend(self, "populateVirtualMachinesTable");
            break;
        case "tabViewItemParkedVM":
            objj_msgSend(self.VMParkingController, "listParkedVirtualMachines");
            break;
    }
}
,["void","CPTabView","CPTabViewItem"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNHypervisorVMCreationController), comment);
}p;38;TNVirtualMachineAllocationController.jt;16398;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;17;AppKit/CPButton.jI;20;AppKit/CPTextField.jI;20;AppKit/CPTableView.jI;19;AppKit/CPComboBox.jI;33;GrowlCappuccino/GrowlCappuccino.jI;35;StropheCappuccino/TNStropheStanza.jI;37;StropheCappuccino/TNStropheIMClient.jI;15;TNKit/TNAlert.jt;16094;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPComboBox.j", NO);
objj_executeFile("GrowlCappuccino/GrowlCappuccino.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelTypeHypervisorControl = "archipel:hypervisor:control",
    TNArchipelTypeHypervisorControlAlloc = "alloc",
    TNArchipelTypeHypervisorControlFree = "free",
    TNArchipelTypeHypervisorControlSetOrgInfo = "setorginfo";
TNVirtualMachineVMCreationAddFieldDelegateNotification = "TNVirtualMachineVMCreationAddFieldDelegateNotification";
{var the_class = objj_allocateClassPair(CPObject, "TNVirtualMachineAllocationController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonAlloc"), new objj_ivar("mainPopover"), new objj_ivar("fieldNewVMRequestedCategories"), new objj_ivar("fieldNewVMRequestedLocality"), new objj_ivar("fieldNewVMRequestedName"), new objj_ivar("fieldNewVMRequestedOrganization"), new objj_ivar("fieldNewVMRequestedOrganizationUnit"), new objj_ivar("fieldNewVMRequestedOwner"), new objj_ivar("_virtualMachine"), new objj_ivar("_delegate"), new objj_ivar("_fieldsNeedCompletion"), new objj_ivar("_fieldsDelegates")]);
       
       


       
       

       
       




       
       






objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("virtualMachine"), function $TNVirtualMachineAllocationController__virtualMachine(self, _cmd)
{
return self._virtualMachine;
}
,["TNStropheContact"]), new objj_method(sel_getUid("setVirtualMachine:"), function $TNVirtualMachineAllocationController__setVirtualMachine_(self, _cmd, newValue)
{
self._virtualMachine = newValue;
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("delegate"), function $TNVirtualMachineAllocationController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNVirtualMachineAllocationController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("awakeFromCib"), function $TNVirtualMachineAllocationController__awakeFromCib(self, _cmd)
{
    self._fieldsDelegates = objj_msgSend(CPArray, "array");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didReceiveNewFieldDelegateRequest:"), TNVirtualMachineVMCreationAddFieldDelegateNotification, nil);
    objj_msgSend(self.fieldNewVMRequestedCategories, "setDelegate:", self);
    objj_msgSend(self.fieldNewVMRequestedLocality, "setDelegate:", self);
    objj_msgSend(self.fieldNewVMRequestedOrganization, "setDelegate:", self);
    objj_msgSend(self.fieldNewVMRequestedOrganizationUnit, "setDelegate:", self);
    objj_msgSend(self.fieldNewVMRequestedOwner, "setDelegate:", self);
}
,["void"]), new objj_method(sel_getUid("_didReceiveNewFieldDelegateRequest:"), function $TNVirtualMachineAllocationController___didReceiveNewFieldDelegateRequest_(self, _cmd, aNotification)
{
    var requester = objj_msgSend(aNotification, "object");
    if (!objj_msgSend(self._fieldsDelegates, "containsObject:", requester)
        && objj_msgSend(requester, "respondsToSelector:", sel_getUid("completionForField:value:")))
        objj_msgSend(self._fieldsDelegates, "addObject:", requester);
}
,["void","CPNotification"]), new objj_method(sel_getUid("controlTextDidFocus:"), function $TNVirtualMachineAllocationController__controlTextDidFocus_(self, _cmd, aNotification)
{
    if (!objj_msgSend(self._fieldsNeedCompletion, "containsObject:", objj_msgSend(objj_msgSend(aNotification, "object"), "tag")))
        objj_msgSend(self, "_requestCompletion:", objj_msgSend(aNotification, "object"));
}
,["void","CPNotification"]), new objj_method(sel_getUid("_requestCompletion:"), function $TNVirtualMachineAllocationController___requestCompletion_(self, _cmd, aSender)
{
    var completions = objj_msgSend(CPArray, "array");
    for (var i = 0; i < objj_msgSend(self._fieldsDelegates, "count"); i++)
    {
        var currentDelegate = objj_msgSend(self._fieldsDelegates, "objectAtIndex:", i),
            additionalCompletions = objj_msgSend(currentDelegate, "completionForField:value:", aSender, objj_msgSend(aSender, "objectValue"));
    }
    objj_msgSend(self._fieldsNeedCompletion, "addObject:", objj_msgSend(aSender, "tag"));
}
,["void","CPComboxBox"]), new objj_method(sel_getUid("openWindow:"), function $TNVirtualMachineAllocationController__openWindow_(self, _cmd, aSender)
{
    self._fieldsNeedCompletion = objj_msgSend(CPArray, "array");
    var vCard = objj_msgSend(self._virtualMachine, "vCard");
    objj_msgSend(self.fieldNewVMRequestedName, "setStringValue:", objj_msgSend(vCard, "fullName") || "");
    objj_msgSend(self.fieldNewVMRequestedOrganization, "setStringValue:", objj_msgSend(vCard, "organizationName") ||"");
    objj_msgSend(self.fieldNewVMRequestedOrganizationUnit, "setStringValue:", objj_msgSend(vCard, "organizationUnit") || "");
    objj_msgSend(self.fieldNewVMRequestedLocality, "setStringValue:", objj_msgSend(vCard, "locality") || "");
    objj_msgSend(self.fieldNewVMRequestedOwner, "setStringValue:", objj_msgSend(vCard, "userID") || "");
    objj_msgSend(self.fieldNewVMRequestedCategories, "setStringValue:", objj_msgSend(vCard, "categories") || "");
    if (objj_msgSend(aSender, "isKindOfClass:", CPTableView))
    {
        var rect = objj_msgSend(aSender, "rectOfRow:", objj_msgSend(aSender, "selectedRow"));
        rect.origin.y += rect.size.height / 2;
        rect.origin.x += rect.size.width / 2;
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", CGRectMake(rect.origin.x, rect.origin.y, 10, 10), aSender, nil);
    }
    else
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil)
    objj_msgSend(self.mainPopover, "makeFirstResponder:", self.fieldNewVMRequestedName);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonAlloc);
    if (self._virtualMachine)
    {
        objj_msgSend(self.buttonAlloc, "setTitle:", "Update");
        objj_msgSend(self.buttonAlloc, "setAction:", sel_getUid("update:"));
    }
    else
    {
        objj_msgSend(self.buttonAlloc, "setTitle:", "Create");
        objj_msgSend(self.buttonAlloc, "setAction:", sel_getUid("alloc:"));
    }
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNVirtualMachineAllocationController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close")
}
,["id","id"]), new objj_method(sel_getUid("alloc:"), function $TNVirtualMachineAllocationController__alloc_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self, "alloc");
}
,["id","id"]), new objj_method(sel_getUid("update:"), function $TNVirtualMachineAllocationController__update_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self, "update");
}
,["id","id"]), new objj_method(sel_getUid("alloc"), function $TNVirtualMachineAllocationController__alloc(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorControlAlloc,
        "name": objj_msgSend(self.fieldNewVMRequestedName, "stringValue"),
        "orgname": objj_msgSend(self.fieldNewVMRequestedOrganization, "stringValue"),
        "orgunit": objj_msgSend(self.fieldNewVMRequestedOrganizationUnit, "stringValue"),
        "locality": objj_msgSend(self.fieldNewVMRequestedLocality, "stringValue"),
        "userid": objj_msgSend(self.fieldNewVMRequestedOwner, "stringValue"),
        "categories": objj_msgSend(self.fieldNewVMRequestedCategories, "stringValue")});
    objj_msgSend(self._delegate, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didAllocVirtualMachine:"), self);
}
,["void"]), new objj_method(sel_getUid("_didAllocVirtualMachine:"), function $TNVirtualMachineAllocationController___didAllocVirtualMachine_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var vmJID = objj_msgSend(objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "query"), "firstChildWithName:", "virtualmachine"), "valueForAttribute:", "jid");
        CPLog.info("sucessfully create a virtual machine");
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("Virtual machine ", "Virtual machine ") + vmJID + CPBundleLocalizedString(" has been created", " has been created"));
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("update"), function $TNVirtualMachineAllocationController__update(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorControlSetOrgInfo,
        "target": objj_msgSend(objj_msgSend(self._virtualMachine, "JID"), "node")});
    objj_msgSend(stanza, "addChildWithName:", "FN");
    objj_msgSend(stanza, "addTextNode:", objj_msgSend(self.fieldNewVMRequestedName, "stringValue"));
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "addChildWithName:", "ORGNAME");
    objj_msgSend(stanza, "addTextNode:", objj_msgSend(self.fieldNewVMRequestedOrganization, "stringValue"));
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "addChildWithName:", "ORGUNIT");
    objj_msgSend(stanza, "addTextNode:", objj_msgSend(self.fieldNewVMRequestedOrganizationUnit, "stringValue"));
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "addChildWithName:", "LOCALITY");
    objj_msgSend(stanza, "addTextNode:", objj_msgSend(self.fieldNewVMRequestedLocality, "stringValue"));
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "addChildWithName:", "USERID");
    objj_msgSend(stanza, "addTextNode:", objj_msgSend(self.fieldNewVMRequestedOwner, "stringValue"));
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "addChildWithName:", "CATEGORIES");
    objj_msgSend(stanza, "addTextNode:", objj_msgSend(self.fieldNewVMRequestedCategories, "stringValue"));
    objj_msgSend(stanza, "up");
    objj_msgSend(self._delegate, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didUpdateVirtualMachine:"), self);
}
,["void"]), new objj_method(sel_getUid("_didUpdateVirtualMachine:"), function $TNVirtualMachineAllocationController___didUpdateVirtualMachine_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var vmJID = objj_msgSend(objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "query"), "firstChildWithName:", "virtualmachine"), "valueForAttribute:", "jid");
        CPLog.info("sucessfully create a virtual machine");
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("Virtual machine ", "Virtual machine ") + vmJID + CPBundleLocalizedString(" has been updated", " has been updated"));
        objj_msgSend(self._delegate, "getHypervisorRoster");
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("deleteVirtualMachine"), function $TNVirtualMachineAllocationController__deleteVirtualMachine(self, _cmd)
{
    var tableVirtualMachines = objj_msgSend(self._delegate, "tableVirtualMachines");
    if ((objj_msgSend(tableVirtualMachines, "numberOfRows") == 0) || (objj_msgSend(tableVirtualMachines, "numberOfSelectedRows") <= 0))
    {
         objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You must select a virtual machine", "You must select a virtual machine"));
         return;
    }
    var msg = CPBundleLocalizedString("Destroying some Virtual Machines", "Destroying some Virtual Machines"),
        title = CPBundleLocalizedString("Are you sure you want to completely remove these virtual machines ?", "Are you sure you want to completely remove these virtual machines ?");
    if (objj_msgSend(objj_msgSend(tableVirtualMachines, "selectedRowIndexes"), "count") < 2)
    {
        msg = CPBundleLocalizedString("Are you sure you want to completely remove this virtual machine ?", "Are you sure you want to completely remove this virtual machine ?");
        title = CPBundleLocalizedString("Destroying a Virtual Machine", "Destroying a Virtual Machine");
    }
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", title, msg, self, [[CPBundleLocalizedString("Delete", "Delete"), sel_getUid("performDeleteVirtualMachine:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "setUserInfo:", objj_msgSend(tableVirtualMachines, "selectedRowIndexes"));
    objj_msgSend(alert, "runModal");
}
,["void"]), new objj_method(sel_getUid("performDeleteVirtualMachine:"), function $TNVirtualMachineAllocationController__performDeleteVirtualMachine_(self, _cmd, someUserInfo)
{
    var tableVirtualMachines = objj_msgSend(self._delegate, "tableVirtualMachines"),
        indexes = someUserInfo,
        objects = objj_msgSend(objj_msgSend(tableVirtualMachines, "dataSource"), "objectsAtIndexes:", indexes);
    objj_msgSend(tableVirtualMachines, "deselectAll");
    for (var i = 0; i < objj_msgSend(objects, "count"); i++)
    {
        var vm = objj_msgSend(objects, "objectAtIndex:", i),
            stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorControl});
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
            "xmlns": TNArchipelTypeHypervisorControl,
            "action": TNArchipelTypeHypervisorControlFree,
            "jid": objj_msgSend(vm, "JID")});
        if (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "containsJID:", objj_msgSend(vm, "JID")))
            objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "removeContact:", vm);
        objj_msgSend(self._delegate, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didDeleteVirtualMachine:"), self);
    }
}
,["void","id"]), new objj_method(sel_getUid("_didDeleteVirtualMachine:"), function $TNVirtualMachineAllocationController___didDeleteVirtualMachine_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        CPLog.info("sucessfully deallocating a virtual machine");
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("Virtual machine has been removed", "Virtual machine has been removed"));
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNVirtualMachineSubscriptionController), comment);
}p;33;TNVirtualMachineCloneController.jt;4608;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;17;AppKit/CPButton.jI;20;AppKit/CPTextField.jI;33;GrowlCappuccino/GrowlCappuccino.jI;35;StropheCappuccino/TNStropheStanza.jt;4416;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("GrowlCappuccino/GrowlCappuccino.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelTypeHypervisorControl = "archipel:hypervisor:control",
    TNArchipelTypeHypervisorControlClone = "clone";
{var the_class = objj_allocateClassPair(CPObject, "TNVirtualMachineCloneController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonClone"), new objj_ivar("mainPopover"), new objj_ivar("fieldCloneVirtualMachineName"), new objj_ivar("_delegate")]);


       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $TNVirtualMachineCloneController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNVirtualMachineCloneController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("openWindow:"), function $TNVirtualMachineCloneController__openWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.fieldCloneVirtualMachineName, "setStringValue:", "");
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.mainPopover, "makeFirstResponder:", self.fieldCloneVirtualMachineName);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonClone);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNVirtualMachineCloneController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("cloneVirtualMachine:"), function $TNVirtualMachineCloneController__cloneVirtualMachine_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self, "cloneVirtualMachine");
}
,["id","id"]), new objj_method(sel_getUid("cloneVirtualMachine"), function $TNVirtualMachineCloneController__cloneVirtualMachine(self, _cmd)
{
    var tableVirtualMachines = objj_msgSend(self._delegate, "tableVirtualMachines"),
        vm = objj_msgSend(objj_msgSend(tableVirtualMachines, "dataSource"), "objectAtIndex:", objj_msgSend(tableVirtualMachines, "selectedRow")),
        stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(tableVirtualMachines, "deselectAll");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorControl});
    if (objj_msgSend(self.fieldCloneVirtualMachineName, "stringValue") && objj_msgSend(self.fieldCloneVirtualMachineName, "stringValue") != "")
    {
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
            "action": TNArchipelTypeHypervisorControlClone,
            "jid": objj_msgSend(objj_msgSend(vm, "JID"), "bare"),
            "name": objj_msgSend(self.fieldCloneVirtualMachineName, "stringValue")});
    }
    else
    {
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
            "action": TNArchipelTypeHypervisorControlClone,
            "jid": objj_msgSend(objj_msgSend(vm, "JID"), "bare")});
    }
    objj_msgSend(self._delegate, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didCloneVirtualMachine:"), self);
}
,["void"]), new objj_method(sel_getUid("_didCloneVirtualMachine:"), function $TNVirtualMachineCloneController___didCloneVirtualMachine_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        CPLog.info("sucessfully cloning a virtual machine");
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("Virtual machine has been cloned", "Virtual machine has been cloned"));
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNVirtualMachineCloneController), comment);
}p;26;TNVirtualMachineDataView.jt;9931;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;20;AppKit/CPImageView.jI;20;AppKit/CPTextField.ji;29;../../Views/TNBasicDataView.jt;9780;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("../../Views/TNBasicDataView.j", YES);
var TNVirtualMachineDataViewAvatarUnknown;
{var the_class = objj_allocateClassPair(TNBasicDataView, "TNVirtualMachineDataView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("imageAvatar"), new objj_ivar("imageStatusIcon"), new objj_ivar("fieldCategories"), new objj_ivar("fieldCompany"), new objj_ivar("fieldHypervisor"), new objj_ivar("fieldJID"), new objj_ivar("fieldLocality"), new objj_ivar("fieldName"), new objj_ivar("fieldNickName"), new objj_ivar("fieldOwner"), new objj_ivar("fieldServer"), new objj_ivar("fieldStatus"), new objj_ivar("fieldUnit"), new objj_ivar("labelCategories"), new objj_ivar("labelCompany"), new objj_ivar("labelFieldsHidden"), new objj_ivar("labelHypervisor"), new objj_ivar("labelLocality"), new objj_ivar("labelName"), new objj_ivar("labelNickName"), new objj_ivar("labelOwner"), new objj_ivar("labelServer"), new objj_ivar("labelStatus"), new objj_ivar("labelUnit")]);

       
       

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("shouldHideLabels:"), function $TNVirtualMachineDataView__shouldHideLabels_(self, _cmd, shouldHide)
{
    objj_msgSend(self.fieldCompany, "setHidden:", shouldHide);
    objj_msgSend(self.fieldLocality, "setHidden:", shouldHide);
    objj_msgSend(self.fieldOwner, "setHidden:", shouldHide);
    objj_msgSend(self.fieldUnit, "setHidden:", shouldHide);
    objj_msgSend(self.fieldStatus, "setHidden:", shouldHide);
    objj_msgSend(self.fieldNickName, "setHidden:", shouldHide);
    objj_msgSend(self.labelCompany, "setHidden:", shouldHide);
    objj_msgSend(self.fieldCategories, "setHidden:", shouldHide);
    objj_msgSend(self.labelLocality, "setHidden:", shouldHide);
    objj_msgSend(self.labelStatus, "setHidden:", shouldHide);
    objj_msgSend(self.labelName, "setHidden:", shouldHide);
    objj_msgSend(self.labelUnit, "setHidden:", shouldHide);
    objj_msgSend(self.labelOwner, "setHidden:", shouldHide);
    objj_msgSend(self.labelCategories, "setHidden:", shouldHide);
    objj_msgSend(self.labelHypervisor, "setHidden:", shouldHide);
    objj_msgSend(self.labelOwner, "setHidden:", shouldHide);
    objj_msgSend(self.fieldServer, "setHidden:", shouldHide);
    objj_msgSend(self.fieldHypervisor, "setHidden:", shouldHide);
    objj_msgSend(self.labelServer, "setHidden:", shouldHide);
    objj_msgSend(self.labelNickName, "setHidden:", shouldHide);
    objj_msgSend(self.labelFieldsHidden, "setHidden:", !shouldHide);
}
,["void","BOOL"]), new objj_method(sel_getUid("setObjectValue:"), function $TNVirtualMachineDataView__setObjectValue_(self, _cmd, aContact)
{
    objj_msgSend(self.fieldJID, "setStringValue:", objj_msgSend(aContact, "JID"));
    objj_msgSend(self.fieldServer, "setStringValue:", objj_msgSend(objj_msgSend(aContact, "JID"), "domain"));
    objj_msgSend(self.fieldHypervisor, "setStringValue:", objj_msgSend(objj_msgSend(aContact, "JID"), "resource"));
    var vCard = objj_msgSend(aContact, "vCard");
    if (vCard)
    {
        objj_msgSend(self, "shouldHideLabels:", NO);
        objj_msgSend(self.fieldName, "setStringValue:", objj_msgSend(aContact, "name"));
        objj_msgSend(self.fieldLocality, "setStringValue:", objj_msgSend(vCard, "locality"));
        objj_msgSend(self.fieldCompany, "setStringValue:", objj_msgSend(vCard, "organizationName"));
        objj_msgSend(self.fieldUnit, "setStringValue:", objj_msgSend(vCard, "organizationUnit"));
        objj_msgSend(self.fieldOwner, "setStringValue:", objj_msgSend(vCard, "userID"));
        objj_msgSend(self.fieldCategories, "setStringValue:", objj_msgSend(vCard, "categories"));
        objj_msgSend(self.fieldNickName, "setStringValue:", objj_msgSend(aContact, "nickname"));
        objj_msgSend(self.fieldStatus, "setStringValue:", objj_msgSend(aContact, "XMPPStatus"));
        objj_msgSend(self.imageAvatar, "setImage:", objj_msgSend(aContact, "avatar"));
    }
    else
    {
        objj_msgSend(self.fieldName, "setStringValue:", objj_msgSend(aContact, "nickname") || "This machine is not in your roster");
        objj_msgSend(self.imageAvatar, "setImage:", objj_msgSend(aContact, "avatar") || TNVirtualMachineDataViewAvatarUnknown);
        objj_msgSend(self, "shouldHideLabels:", YES);
    }
    objj_msgSend(self.imageStatusIcon, "setImage:", objj_msgSend(aContact, "statusIcon"));
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("initWithCoder:"), function $TNVirtualMachineDataView__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineDataView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self.fieldCategories = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldCategories");
        self.fieldCompany = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldCompany");
        self.fieldHypervisor = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldHypervisor");
        self.fieldJID = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldJID");
        self.fieldLocality = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldLocality");
        self.fieldName = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldName");
        self.fieldNickName = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldNickName");
        self.fieldOwner = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldOwner");
        self.fieldServer = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldServer");
        self.fieldStatus = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldStatus");
        self.fieldUnit = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldUnit");
        self.labelCategories = objj_msgSend(aCoder, "decodeObjectForKey:", "labelCategories");
        self.labelCompany = objj_msgSend(aCoder, "decodeObjectForKey:", "labelCompany");
        self.labelHypervisor = objj_msgSend(aCoder, "decodeObjectForKey:", "labelHypervisor");
        self.labelLocality = objj_msgSend(aCoder, "decodeObjectForKey:", "labelLocality");
        self.labelName = objj_msgSend(aCoder, "decodeObjectForKey:", "labelName");
        self.labelServer = objj_msgSend(aCoder, "decodeObjectForKey:", "labelServer");
        self.labelStatus = objj_msgSend(aCoder, "decodeObjectForKey:", "labelStatus");
        self.labelUnit = objj_msgSend(aCoder, "decodeObjectForKey:", "labelUnit");
        self.labelOwner = objj_msgSend(aCoder, "decodeObjectForKey:", "labelOwner");
        self.labelFieldsHidden = objj_msgSend(aCoder, "decodeObjectForKey:", "labelFieldsHidden");
        self.labelNickName = objj_msgSend(aCoder, "decodeObjectForKey:", "labelNickName");
        self.imageStatusIcon = objj_msgSend(aCoder, "decodeObjectForKey:", "imageStatusIcon");
        self.imageAvatar = objj_msgSend(aCoder, "decodeObjectForKey:", "imageAvatar");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNVirtualMachineDataView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineDataView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldCategories, "fieldCategories");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldCompany, "fieldCompany");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldHypervisor, "fieldHypervisor");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldJID, "fieldJID");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldLocality, "fieldLocality");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldName, "fieldName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldNickName, "fieldNickName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldOwner, "fieldOwner");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldServer, "fieldServer");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldStatus, "fieldStatus");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldUnit, "fieldUnit");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.imageAvatar, "imageAvatar");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.imageStatusIcon, "imageStatusIcon");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelCategories, "labelCategories");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelCompany, "labelCompany");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelHypervisor, "labelHypervisor");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelLocality, "labelLocality");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelName, "labelName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelServer, "labelServer");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelStatus, "labelStatus");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelUnit, "labelUnit");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelOwner, "labelOwner");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelFieldsHidden, "labelFieldsHidden");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelNickName, "labelNickName");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNVirtualMachineDataView__initialize(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "mainBundle");
    TNVirtualMachineDataViewAvatarUnknown = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "user-unknown.png"));
}
,["void"])]);
}p;34;TNVirtualMachineManageController.jt;4722;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;17;AppKit/CPButton.jI;20;AppKit/CPTextField.jI;35;StropheCappuccino/TNStropheStanza.jt;4568;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global TNArchipelModuleStatusWaiting
//@global TNArchipelModuleStatusReady
//@global TNArchipelModuleStatusError
var TNArchipelTypeHypervisorControl = "archipel:hypervisor:control",
    TNArchipelTypeHypervisorControlManage = "manage",
    TNArchipelTypeHypervisorControlUnmanage = "unmanage";
{var the_class = objj_allocateClassPair(CPObject, "TNVirtualMachineManageController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_delegate")]);
       
       



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $TNVirtualMachineManageController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNVirtualMachineManageController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("alloc:"), function $TNVirtualMachineManageController__alloc_(self, _cmd, aSender)
{
    objj_msgSend(self, "alloc");
}
,["id","id"]), new objj_method(sel_getUid("performManage:"), function $TNVirtualMachineManageController__performManage_(self, _cmd, someVirtualMachines)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorControlManage});
    for (var i = 0; i < objj_msgSend(someVirtualMachines, "count"); i++)
    {
        var vm = objj_msgSend(someVirtualMachines, "objectAtIndex:", i);
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "item", {"jid": objj_msgSend(vm, "JID")});
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self._delegate, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didPerformManage:"), self);
}
,["void","CPArray"]), new objj_method(sel_getUid("_didPerformManage:"), function $TNVirtualMachineManageController___didPerformManage_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusReady);
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
        objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusError);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("performUnmanage:"), function $TNVirtualMachineManageController__performUnmanage_(self, _cmd, someVirtualMachines)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorControlUnmanage});
    for (var i = 0; i < objj_msgSend(someVirtualMachines, "count"); i++)
    {
        var vm = objj_msgSend(someVirtualMachines, "objectAtIndex:", i);
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "item", {"jid": objj_msgSend(vm, "JID")});
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self._delegate, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didPerformUnmanage:"), self);
}
,["void","CPArray"]), new objj_method(sel_getUid("_didPerformUnmanage:"), function $TNVirtualMachineManageController___didPerformUnmanage_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusReady);
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
        objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusError);
    }
    return NO;
}
,["BOOL","TNStropheStanza"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNVirtualMachineManageController), comment);
}p;32;TNVirtualMachineParkedDataView.jt;2917;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;20;AppKit/CPImageView.jI;20;AppKit/CPTextField.ji;29;../../Views/TNBasicDataView.jt;2766;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("../../Views/TNBasicDataView.j", YES);
{var the_class = objj_allocateClassPair(TNBasicDataView, "TNVirtualMachineParkedDataView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("fieldUUID"), new objj_ivar("fieldName"), new objj_ivar("fieldDate"), new objj_ivar("fieldParker"), new objj_ivar("labelParker"), new objj_ivar("labelDate")]);
       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setObjectValue:"), function $TNVirtualMachineParkedDataView__setObjectValue_(self, _cmd, aParkedVM)
{
    objj_msgSend(self.fieldName, "setStringValue:", objj_msgSend(aParkedVM, "name"));
    objj_msgSend(self.fieldUUID, "setStringValue:", objj_msgSend(aParkedVM, "UUID"));
    objj_msgSend(self.fieldDate, "setStringValue:", objj_msgSend(aParkedVM, "date"));
    objj_msgSend(self.fieldParker, "setStringValue:", objj_msgSend(aParkedVM, "parker"));
}
,["void","CPDictionary"]), new objj_method(sel_getUid("initWithCoder:"), function $TNVirtualMachineParkedDataView__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineParkedDataView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self.fieldName = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldName");
        self.fieldUUID = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldUUID");
        self.fieldParker = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldParker");
        self.fieldDate = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldDate");
        self.labelParker = objj_msgSend(aCoder, "decodeObjectForKey:", "labelName");
        self.labelDate= objj_msgSend(aCoder, "decodeObjectForKey:", "labelUUID");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNVirtualMachineParkedDataView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineParkedDataView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldName, "fieldName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldUUID, "fieldUUID");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldDate, "fieldDate");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldParker, "fieldParker");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelParker, "labelName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelDate, "labelUUID");
}
,["void","CPCoder"])]);
}p;35;TNVirtualMachineParkingController.jt;15948;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;17;AppKit/CPButton.jI;20;AppKit/CPTextField.jI;20;AppKit/CPTableView.jI;28;LPKit/LPMultiLineTextField.jI;29;StropheCappuccino/TNXMLNode.jI;35;StropheCappuccino/TNStropheStanza.jI;15;TNKit/TNAlert.jt;15681;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("LPKit/LPMultiLineTextField.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global TNArchipelModuleStatusWaiting
//@global TNArchipelModuleStatusReady
var TNArchipelTypeHypervisorParking = "archipel:hypervisor:vmparking",
    TNArchipelTypeHypervisorParkingList = "list",
    TNArchipelTypeHypervisorParkingPark = "park",
    TNArchipelTypeHypervisorParkingUnpark = "unpark",
    TNArchipelTypeHypervisorParkingDelete = "delete",
    TNArchipelTypeHypervisorParkingUpdateXML = "updatexml";
{var the_class = objj_allocateClassPair(CPObject, "TNVirtualMachineParkedObject"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("name"), new objj_ivar("UUID"), new objj_ivar("date"), new objj_ivar("parker"), new objj_ivar("domain")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("name"), function $TNVirtualMachineParkedObject__name(self, _cmd)
{
return self.name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNVirtualMachineParkedObject__setName_(self, _cmd, newValue)
{
self.name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("UUID"), function $TNVirtualMachineParkedObject__UUID(self, _cmd)
{
return self.UUID;
}
,["CPString"]), new objj_method(sel_getUid("setUUID:"), function $TNVirtualMachineParkedObject__setUUID_(self, _cmd, newValue)
{
self.UUID = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("date"), function $TNVirtualMachineParkedObject__date(self, _cmd)
{
return self.date;
}
,["CPString"]), new objj_method(sel_getUid("setDate:"), function $TNVirtualMachineParkedObject__setDate_(self, _cmd, newValue)
{
self.date = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("parker"), function $TNVirtualMachineParkedObject__parker(self, _cmd)
{
return self.parker;
}
,["CPString"]), new objj_method(sel_getUid("setParker:"), function $TNVirtualMachineParkedObject__setParker_(self, _cmd, newValue)
{
self.parker = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("domain"), function $TNVirtualMachineParkedObject__domain(self, _cmd)
{
return self.domain;
}
,["TNXMLNode"]), new objj_method(sel_getUid("setDomain:"), function $TNVirtualMachineParkedObject__setDomain_(self, _cmd, newValue)
{
self.domain = newValue;
}
,["void","TNXMLNode"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "TNVirtualMachineParkingController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonDefine"), new objj_ivar("mainPopover"), new objj_ivar("fieldXMLString"), new objj_ivar("_currentItem"), new objj_ivar("_delegate")]);
       
       



       
       


       
       









objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("currentItem"), function $TNVirtualMachineParkingController__currentItem(self, _cmd)
{
return self._currentItem;
}
,["TNVirtualMachineParkedObject"]), new objj_method(sel_getUid("setCurrentItem:"), function $TNVirtualMachineParkingController__setCurrentItem_(self, _cmd, newValue)
{
self._currentItem = newValue;
}
,["void","TNVirtualMachineParkedObject"]), new objj_method(sel_getUid("delegate"), function $TNVirtualMachineParkingController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNVirtualMachineParkingController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("awakeFromCib"), function $TNVirtualMachineParkingController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.fieldXMLString, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    objj_msgSend(self.fieldXMLString, "setFont:", objj_msgSend(CPFont, "fontWithName:size:", "Andale Mono, Courier New", 12));
    objj_msgSend(self.fieldXMLString, "setBordered:", YES);
    objj_msgSend(self.fieldXMLString, "setBezeled:", YES);
    objj_msgSend(self.fieldXMLString, "setEnabled:", YES);
}
,["void"]), new objj_method(sel_getUid("openWindow:"), function $TNVirtualMachineParkingController__openWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.fieldXMLString, "setStringValue:", "");
    objj_msgSend(self.mainPopover, "close");
    if (!self._currentItem)
        return;
    if (objj_msgSend(aSender, "isKindOfClass:", CPTableView))
    {
        var rect = objj_msgSend(aSender, "rectOfRow:", objj_msgSend(aSender, "selectedRow"));
        rect.origin.y += rect.size.height / 2;
        rect.origin.x += rect.size.width / 2;
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", CGRectMake(rect.origin.x, rect.origin.y, 10, 10), aSender, nil);
    }
    else
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.mainPopover, "makeFirstResponder:", self.fieldXMLString);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonDefine);
    var XMLString = objj_msgSend(objj_msgSend(self._currentItem, "domain"), "description");
    XMLString = XMLString.replace("\n  \n", "\n");
    XMLString = XMLString.replace(" xmlns='http://www.gajim.org/xmlns/undeclared'", "");
    XMLString = XMLString.replace(" xmlns='archipel:hypervisor:vmparking'", "");
    objj_msgSend(self.fieldXMLString, "setStringValue:", XMLString);
    objj_msgSend(self.fieldXMLString, "setEditable:", YES);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNVirtualMachineParkingController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("updateXML:"), function $TNVirtualMachineParkingController__updateXML_(self, _cmd, aSender)
{
    var desc;
    try
    {
        desc = (new DOMParser()).parseFromString(unescape(""+objj_msgSend(self.fieldXMLString, "stringValue")+""), "text/xml").getElementsByTagName("domain")[0];
        if (!desc || typeof(desc) == "undefined")
            objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, "Not valid XML");
    }
    catch (e)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", CPLocalizedString("Error", "Error"), CPLocalizedString("Unable to parse the given XML", "Unable to parse the given XML"), CPCriticalAlertStyle);
        objj_msgSend(self.mainPopover, "close");
        return;
    }
    objj_msgSend(self, "updateCurrentItemXML:", objj_msgSend(TNXMLNode, "nodeWithXMLNode:", desc));
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("unparkVirtualMachines:"), function $TNVirtualMachineParkingController__unparkVirtualMachines_(self, _cmd, someVirtualMachines)
{
    objj_msgSend(self, "unparkVirtualMachines:start:", someVirtualMachines, NO);
}
,["void","CPArray"]), new objj_method(sel_getUid("unparkAndStartVirtualMachines:"), function $TNVirtualMachineParkingController__unparkAndStartVirtualMachines_(self, _cmd, someVirtualMachines)
{
    objj_msgSend(self, "unparkVirtualMachines:start:", someVirtualMachines, YES);
}
,["void","CPArray"]), new objj_method(sel_getUid("listParkedVirtualMachines"), function $TNVirtualMachineParkingController__listParkedVirtualMachines(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorParking});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorParkingList});
    objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self._delegate, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveList:"), self);
}
,["void"]), new objj_method(sel_getUid("_didReceiveList:"), function $TNVirtualMachineParkingController___didReceiveList_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var table = objj_msgSend(self._delegate, "tableVirtualMachinesParked"),
            datasource = objj_msgSend(table, "dataSource"),
            virtualmachines = objj_msgSend(aStanza, "childrenWithName:", "virtualmachine");
        objj_msgSend(datasource, "removeAllObjects");
        for (var i = 0; i < objj_msgSend(virtualmachines, "count"); i++)
        {
            var vm = objj_msgSend(virtualmachines, "objectAtIndex:", i),
                data = objj_msgSend(TNVirtualMachineParkedObject, "new");
            objj_msgSend(data, "setName:", objj_msgSend(objj_msgSend(vm, "firstChildWithName:", "name"), "text"));
            objj_msgSend(data, "setUUID:", objj_msgSend(objj_msgSend(vm, "firstChildWithName:", "uuid"), "text"));
            objj_msgSend(data, "setDate:", objj_msgSend(vm, "valueForAttribute:", "date"));
            objj_msgSend(data, "setParker:", objj_msgSend(vm, "valueForAttribute:", "parker"));
            objj_msgSend(data, "setDomain:", objj_msgSend(vm, "firstChildWithName:", "domain"));
            objj_msgSend(datasource, "addObject:", data);
        }
        objj_msgSend(table, "reloadData");
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("parkVirtualMachines:"), function $TNVirtualMachineParkingController__parkVirtualMachines_(self, _cmd, someVirtualMachines)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorParking});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorParkingPark});
    for (var i = 0; i < objj_msgSend(someVirtualMachines, "count"); i++)
    {
        var vm = objj_msgSend(someVirtualMachines, "objectAtIndex:", i);
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "item", {"uuid": objj_msgSend(objj_msgSend(vm, "JID"), "node")});
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self._delegate, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didParkVirtualMachine:"), self);
}
,["void","CPArray"]), new objj_method(sel_getUid("_didParkVirtualMachine:"), function $TNVirtualMachineParkingController___didParkVirtualMachine_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") != "result")
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusReady);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("unparkVirtualMachines:start:"), function $TNVirtualMachineParkingController__unparkVirtualMachines_start_(self, _cmd, someVirtualMachines, shouldStart)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorParking});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorParkingUnpark});
    for (var i = 0; i < objj_msgSend(someVirtualMachines, "count"); i++)
    {
        var vm = objj_msgSend(someVirtualMachines, "objectAtIndex:", i);
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "item", {"identifier": objj_msgSend(vm, "UUID"), "start": shouldStart ? "yes" : "no"});
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self._delegate, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didUnparkVirtualMachine:"), self);
}
,["void","CPArray","BOOL"]), new objj_method(sel_getUid("_didUnparkVirtualMachine:"), function $TNVirtualMachineParkingController___didUnparkVirtualMachine_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") != "result")
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    objj_msgSend(objj_msgSend(self._delegate, "tableVirtualMachinesParked"), "deselectAll");
    objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusReady);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("updateCurrentItemXML:"), function $TNVirtualMachineParkingController__updateCurrentItemXML_(self, _cmd, aNewDefinition)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorParking});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorParkingUpdateXML,
        "identifier": objj_msgSend(self._currentItem, "UUID")});
    objj_msgSend(stanza, "addNode:", aNewDefinition);
    self._currentItem = nil;
    objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self._delegate, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didUpdateCurrentItemXML:"), self);
}
,["void","TNXMLNode"]), new objj_method(sel_getUid("_didUpdateCurrentItemXML:"), function $TNVirtualMachineParkingController___didUpdateCurrentItemXML_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") != "result")
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusReady);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("deleteParkedVirtualMachines:"), function $TNVirtualMachineParkingController__deleteParkedVirtualMachines_(self, _cmd, someVirtualMachines)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorParking});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorParkingDelete});
    for (var i = 0; i < objj_msgSend(someVirtualMachines, "count"); i++)
    {
        var vm = objj_msgSend(someVirtualMachines, "objectAtIndex:", i);
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "item", {"identifier": objj_msgSend(vm, "UUID")});
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self._delegate, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didDeleteParkedVirtualMachines:"), self);
}
,["void","CPArray"]), new objj_method(sel_getUid("_didDeleteParkedVirtualMachines:"), function $TNVirtualMachineParkingController___didDeleteParkedVirtualMachines_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") != "result")
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    objj_msgSend(objj_msgSend(self._delegate, "tableVirtualMachinesParked"), "deselectAll");
    objj_msgSend(self._delegate, "setModuleStatus:", TNArchipelModuleStatusReady);
    return NO;
}
,["BOOL","TNStropheStanza"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNVirtualMachineParkingController), comment);
}p;40;TNVirtualMachineSubscriptionController.jt;9220;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;17;AppKit/CPButton.jI;20;AppKit/CPTextField.jI;18;AppKit/CPPopover.jI;28;LPKit/LPMultiLineTextField.jI;35;StropheCappuccino/TNStropheStanza.jI;33;GrowlCappuccino/GrowlCappuccino.jI;15;TNKit/TNAlert.jt;8952;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPPopover.j", NO);
objj_executeFile("LPKit/LPMultiLineTextField.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("GrowlCappuccino/GrowlCappuccino.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelTypeSubscription = "archipel:subscription",
    TNArchipelTypeSubscriptionAdd = "add",
    TNArchipelTypeSubscriptionRemove = "remove";
{var the_class = objj_allocateClassPair(CPObject, "TNVirtualMachineSubscriptionController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonAddSubscription"), new objj_ivar("buttonRemoveSubscription"), new objj_ivar("popoverAddSubscription"), new objj_ivar("popoverRemoveSubscription"), new objj_ivar("fieldNewSubscriptionTarget"), new objj_ivar("fieldRemoveSubscriptionTarget"), new objj_ivar("_delegate")]);





       
       




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $TNVirtualMachineSubscriptionController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNVirtualMachineSubscriptionController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("openAddSubsctiptionWindow:"), function $TNVirtualMachineSubscriptionController__openAddSubsctiptionWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.fieldNewSubscriptionTarget, "setStringValue:", "");
    objj_msgSend(self.popoverAddSubscription, "close");
    objj_msgSend(self.popoverAddSubscription, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.popoverAddSubscription, "setDefaultButton:", self.buttonAddSubscription);
    objj_msgSend(self.popoverAddSubscription, "makeFirstResponder:", self.fieldNewSubscriptionTarget);
}
,["id","id"]), new objj_method(sel_getUid("openRemoveSubscriptionWindow:"), function $TNVirtualMachineSubscriptionController__openRemoveSubscriptionWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.fieldRemoveSubscriptionTarget, "setStringValue:", "");
    objj_msgSend(self.popoverRemoveSubscription, "close");
    objj_msgSend(self.popoverRemoveSubscription, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.popoverRemoveSubscription, "makeFirstResponder:", self.fieldRemoveSubscriptionTarget);
    objj_msgSend(self.popoverRemoveSubscription, "setDefaultButton:", self.buttonRemoveSubscription);
}
,["id","id"]), new objj_method(sel_getUid("closeAddSubscriptionWindow:"), function $TNVirtualMachineSubscriptionController__closeAddSubscriptionWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.popoverAddSubscription, "close");
}
,["id","id"]), new objj_method(sel_getUid("closeRemoveSubscriptionWindow:"), function $TNVirtualMachineSubscriptionController__closeRemoveSubscriptionWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.popoverRemoveSubscription, "close");
}
,["id","id"]), new objj_method(sel_getUid("addSubscription:"), function $TNVirtualMachineSubscriptionController__addSubscription_(self, _cmd, aSender)
{
    objj_msgSend(self, "addSubscription");
}
,["id","id"]), new objj_method(sel_getUid("removeSubscription:"), function $TNVirtualMachineSubscriptionController__removeSubscription_(self, _cmd, aSender)
{
    objj_msgSend(self, "removeSubscription");
}
,["id","id"]), new objj_method(sel_getUid("addSubscription"), function $TNVirtualMachineSubscriptionController__addSubscription(self, _cmd)
{
    var tableVirtualMachines = objj_msgSend(self._delegate, "tableVirtualMachines");
    if ((objj_msgSend(tableVirtualMachines, "numberOfRows") == 0) || (objj_msgSend(tableVirtualMachines, "numberOfSelectedRows") <= 0))
    {
         objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You must select a virtual machine", "You must select a virtual machine"));
         return;
    }
    var vm = objj_msgSend(objj_msgSend(tableVirtualMachines, "dataSource"), "objectAtIndex:", objj_msgSend(tableVirtualMachines, "selectedRow")),
        stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(self.popoverAddSubscription, "close");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeSubscription});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeSubscriptionAdd,
        "jid": objj_msgSend(self.fieldNewSubscriptionTarget, "stringValue")});
    objj_msgSend(vm, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didAddSubscription:"), self);
}
,["void"]), new objj_method(sel_getUid("_didAddSubscription:"), function $TNVirtualMachineSubscriptionController___didAddSubscription_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("Added new subscription to virtual machine", "Added new subscription to virtual machine"));
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("removeSubscription"), function $TNVirtualMachineSubscriptionController__removeSubscription(self, _cmd)
{
    var tableVirtualMachines = objj_msgSend(self._delegate, "tableVirtualMachines");
    if ((objj_msgSend(tableVirtualMachines, "numberOfRows") == 0) || (objj_msgSend(tableVirtualMachines, "numberOfSelectedRows") != 1))
    {
         objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You must select a virtual machine", "You must select a virtual machine"));
         return;
    }
    var vm = objj_msgSend(objj_msgSend(tableVirtualMachines, "dataSource"), "objectAtIndex:", objj_msgSend(tableVirtualMachines, "selectedRow")),
        alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Removing subscription", "Removing subscription"), CPBundleLocalizedString("Are you sure you want to remove the subscription for this user ?", "Are you sure you want to remove the subscription for this user ?"), self, [[CPBundleLocalizedString("Remove", "Remove"), sel_getUid("performRemoveSubscription:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "setUserInfo:", vm);
    objj_msgSend(alert, "runModal");
}
,["id"]), new objj_method(sel_getUid("performRemoveSubscription:"), function $TNVirtualMachineSubscriptionController__performRemoveSubscription_(self, _cmd, aVirtualMachine)
{
    var tableVirtualMachines = objj_msgSend(self._delegate, "tableVirtualMachines");
    if ((objj_msgSend(tableVirtualMachines, "numberOfRows") == 0) || (objj_msgSend(tableVirtualMachines, "numberOfSelectedRows") <= 0))
    {
         objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You must select a virtual machine", "You must select a virtual machine"));
         return;
    }
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(self.popoverRemoveSubscription, "close");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeSubscription});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeSubscriptionRemove,
        "jid": objj_msgSend(self.fieldRemoveSubscriptionTarget, "stringValue")});
    objj_msgSend(aVirtualMachine, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didRemoveSubscription:"), self);
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("_didRemoveSubscription:"), function $TNVirtualMachineSubscriptionController___didRemoveSubscription_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("Subscription have been removed", "Subscription have been removed"));
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNVirtualMachineSubscriptionController), comment);
}e;