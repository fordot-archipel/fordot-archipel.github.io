@STATIC;1.0;p;32;TNHypervisorNetworksController.jt;33372;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;25;AppKit/CPCollectionView.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;28;LPKit/LPMultiLineTextField.jI;15;TNKit/TNAlert.jI;29;TNKit/TNTableViewDataSource.ji;22;../../Model/TNModule.ji;20;Model/TNLibvirtNet.ji;19;TNNetworkDataView.ji;28;TNNetworkEditionController.jt;32954;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPCollectionView.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("LPKit/LPMultiLineTextField.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("Model/TNLibvirtNet.j", YES);
objj_executeFile("TNNetworkDataView.j", YES);
objj_executeFile("TNNetworkEditionController.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelPushNotificationNetworks = "archipel:push:network",
    TNArchipelTypeHypervisorNetwork = "archipel:hypervisor:network",
    TNArchipelTypeHypervisorNetworkGet = "get",
    TNArchipelTypeHypervisorNetworkDefine = "define",
    TNArchipelTypeHypervisorNetworkUndefine = "undefine",
    TNArchipelTypeHypervisorNetworkCreate = "create",
    TNArchipelTypeHypervisorNetworkDestroy = "destroy",
    TNArchipelTypeHypervisorNetworkGetNics = "getnics";
{var the_class = objj_allocateClassPair(TNModule, "TNHypervisorNetworksController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonDefineXMLString"), new objj_ivar("buttonBarControl"), new objj_ivar("fieldFilterNetworks"), new objj_ivar("tableViewNetworks"), new objj_ivar("viewTableContainer"), new objj_ivar("fieldXMLString"), new objj_ivar("networkDataViewPrototype"), new objj_ivar("networkController"), new objj_ivar("popoverXMLString"), new objj_ivar("_activateButton"), new objj_ivar("_deactivateButton"), new objj_ivar("_editButton"), new objj_ivar("_minusButton"), new objj_ivar("_plusButton"), new objj_ivar("_editXMLButton"), new objj_ivar("_networkHolder"), new objj_ivar("_datasourceNetworks"), new objj_ivar("_networksRAW")]);
       
       






       
       

       
       

       
       










       
       












       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNHypervisorNetworksController__awakeFromCib(self, _cmd)
{
    self._networksRAW = objj_msgSend(CPDictionary, "dictionary");
    objj_msgSend(self.viewTableContainer, "setBorderedWithHexColor:", "#C0C7D2");
    self._datasourceNetworks = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    var prototype = objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", self.networkDataViewPrototype);
    objj_msgSend(objj_msgSend(self.tableViewNetworks, "tableColumnWithIdentifier:", "self"), "setDataView:", objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", prototype));
    objj_msgSend(self.tableViewNetworks, "setTarget:", self);
    objj_msgSend(self.tableViewNetworks, "setDoubleAction:", sel_getUid("editNetwork:"));
    objj_msgSend(self.tableViewNetworks, "setBackgroundColor:", TNArchipelDefaultColorsTableView);
    objj_msgSend(self._datasourceNetworks, "setTable:", self.tableViewNetworks);
    objj_msgSend(self._datasourceNetworks, "setSearchableKeyPaths:", ["name", "UUID", "bridge.name"]);
    objj_msgSend(self.tableViewNetworks, "setDataSource:", self._datasourceNetworks);
    objj_msgSend(self.tableViewNetworks, "setDelegate:", self);
    objj_msgSend(self.networkController, "setDelegate:", self);
    objj_msgSend(self.fieldFilterNetworks, "setTarget:", self._datasourceNetworks);
    objj_msgSend(self.fieldFilterNetworks, "setAction:", sel_getUid("filterObjects:"));
    self._plusButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._plusButton, "setTarget:", self);
    objj_msgSend(self._plusButton, "setAction:", sel_getUid("addNetwork:"));
    objj_msgSend(self._plusButton, "setToolTip:", CPBundleLocalizedString("Create a new network", "Create a new network"));
    self._minusButton = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._minusButton, "setTarget:", self);
    objj_msgSend(self._minusButton, "setAction:", sel_getUid("delNetwork:"));
    objj_msgSend(self._minusButton, "setToolTip:", CPBundleLocalizedString("Delete selected networks", "Delete selected networks"))
    self._activateButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._activateButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/check.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._activateButton, "setTarget:", self);
    objj_msgSend(self._activateButton, "setAction:", sel_getUid("activateNetwork:"));
    objj_msgSend(self._activateButton, "setToolTip:", CPBundleLocalizedString("Activate selected networks", "Activate selected networks"));
    self._deactivateButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._deactivateButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/cancel.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._deactivateButton, "setTarget:", self);
    objj_msgSend(self._deactivateButton, "setAction:", sel_getUid("deactivateNetwork:"));
    objj_msgSend(self._deactivateButton, "setToolTip:", CPBundleLocalizedString("Deactivate selected networks", "Deactivate selected networks"));
    self._editButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._editButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/edit.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._editButton, "setTarget:", self);
    objj_msgSend(self._editButton, "setAction:", sel_getUid("editNetwork:"));
    objj_msgSend(self._editButton, "setToolTip:", CPBundleLocalizedString("Edit selected network", "Edit selected network"));
    self._editXMLButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._editXMLButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/editxml.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._editXMLButton, "setTarget:", self);
    objj_msgSend(self._editXMLButton, "setAction:", sel_getUid("openXMLEditor:"));
    objj_msgSend(self._editXMLButton, "setToolTip:", CPBundleLocalizedString("Open manual XML editor", "Open manual XML editor"));
    objj_msgSend(self._minusButton, "setEnabled:", NO);
    objj_msgSend(self._activateButton, "setEnabled:", NO);
    objj_msgSend(self._deactivateButton, "setEnabled:", NO);
    objj_msgSend(self._editButton, "setEnabled:", NO);
    objj_msgSend(self._editXMLButton, "setEnabled:", NO);
    objj_msgSend(self.buttonBarControl, "setButtons:", [self._plusButton, self._minusButton, self._editButton, self._activateButton, self._deactivateButton, self._editXMLButton]);
    objj_msgSend(self.fieldXMLString, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    objj_msgSend(self.fieldXMLString, "setFont:", objj_msgSend(CPFont, "fontWithName:size:", "Andale Mono, Courier New", 12));
}
,["void"]), new objj_method(sel_getUid("willShow"), function $TNHypervisorNetworksController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNHypervisorNetworksController").super_class }, "willShow"))
        return NO;
    objj_msgSend(self.tableViewNetworks, "setDelegate:", nil);
    objj_msgSend(self.tableViewNetworks, "setDelegate:", self);
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceivePush:"), TNArchipelPushNotificationNetworks);
    if (objj_msgSend(self, "currentEntityHasPermission:", "network_get"))
        objj_msgSend(self, "getHypervisorNetworks");
    if (objj_msgSend(self, "currentEntityHasPermission:", "network_getnics"))
        objj_msgSend(self, "getHypervisorNICS");
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willHide"), function $TNHypervisorNetworksController__willHide(self, _cmd)
{
    objj_msgSend(self.networkController, "closeWindow:", nil);
    objj_msgSend(self.popoverXMLString, "close");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNHypervisorNetworksController").super_class }, "willHide");
}
,["void"]), new objj_method(sel_getUid("menuReady"), function $TNHypervisorNetworksController__menuReady(self, _cmd)
{
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Create new virtual network", "Create new virtual network"), sel_getUid("addNetwork:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Edit selected network", "Edit selected network"), sel_getUid("editNetwork:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Delete selected network", "Delete selected network"), sel_getUid("delNetwork:"), ""), "setTarget:", self);
    objj_msgSend(self._menu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Activate this network", "Activate this network"), sel_getUid("activateNetwork:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Deactivate this network", "Deactivate this network"), sel_getUid("deactivateNetwork:"), ""), "setTarget:", self);
}
,["void"]), new objj_method(sel_getUid("permissionsChanged"), function $TNHypervisorNetworksController__permissionsChanged(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNHypervisorNetworksController").super_class }, "permissionsChanged");
}
,["void"]), new objj_method(sel_getUid("setUIAccordingToPermissions"), function $TNHypervisorNetworksController__setUIAccordingToPermissions(self, _cmd)
{
    var selectedIndex = objj_msgSend(objj_msgSend(self.tableViewNetworks, "selectedRowIndexes"), "firstIndex"),
        conditionTableSelectedRow = (objj_msgSend(self.tableViewNetworks, "numberOfSelectedRows") != 0),
        networkObject = conditionTableSelectedRow ? objj_msgSend(self._datasourceNetworks, "objectAtIndex:", selectedIndex) : nil,
        conditionNetworkActive = objj_msgSend(networkObject, "isActive"),
        conditionTableSelectedOnlyOnRow = (objj_msgSend(self.tableViewNetworks, "numberOfSelectedRows") == 1);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._plusButton, "network_define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._deactivateButton, "network_destroy", conditionTableSelectedRow && conditionNetworkActive);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._editXMLButton, "network_define", conditionTableSelectedOnlyOnRow && conditionNetworkActive);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._minusButton, "network_undefine", conditionTableSelectedRow && !conditionNetworkActive);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._editButton, "network_define", conditionTableSelectedOnlyOnRow && !conditionNetworkActive);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._activateButton, "network_create", conditionTableSelectedRow && !conditionNetworkActive);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self.buttonDefineXMLString, "network_define", conditionTableSelectedOnlyOnRow && !conditionNetworkActive);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._editXMLButton, "network_define", conditionTableSelectedOnlyOnRow && !conditionNetworkActive);
}
,["void"]), new objj_method(sel_getUid("flushUI"), function $TNHypervisorNetworksController__flushUI(self, _cmd)
{
    objj_msgSend(self._networksRAW, "removeAllObjects");
    objj_msgSend(self._datasourceNetworks, "removeAllObjects");
    objj_msgSend(self.tableViewNetworks, "reloadData");
}
,["void"]), new objj_method(sel_getUid("_didReceivePush:"), function $TNHypervisorNetworksController___didReceivePush_(self, _cmd, somePushInfo)
{
    var sender = objj_msgSend(somePushInfo, "objectForKey:", "owner"),
        type = objj_msgSend(somePushInfo, "objectForKey:", "type"),
        change = objj_msgSend(somePushInfo, "objectForKey:", "change"),
        date = objj_msgSend(somePushInfo, "objectForKey:", "date");
    objj_msgSend(self, "getHypervisorNetworks");
    return YES;
}
,["BOOL","CPDictionary"]), new objj_method(sel_getUid("generateIPForNewNetwork"), function $TNHypervisorNetworksController__generateIPForNewNetwork(self, _cmd)
{
    var dA = Math.round(Math.random() * 255),
        dB = Math.round(Math.random() * 255);
    return dA + "." + dB + ".0.1";
}
,["CPString"]), new objj_method(sel_getUid("addNetwork:"), function $TNHypervisorNetworksController__addNetwork_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    var uuid = objj_msgSend(CPString, "UUID"),
        ip = objj_msgSend(self, "generateIPForNewNetwork"),
        newNetwork = objj_msgSend(TNLibvirtNetwork, "defaultNetworkWithName:UUID:", uuid, uuid);
    objj_msgSend(newNetwork, "setIP:", objj_msgSend(objj_msgSend(TNLibvirtNetworkIP, "alloc"), "init"));
    objj_msgSend(objj_msgSend(newNetwork, "IP"), "setAddress:", ip);
    objj_msgSend(objj_msgSend(newNetwork, "IP"), "setNetmask:", "255.255.0.0");
    objj_msgSend(self.networkController, "setNetwork:", newNetwork);
    objj_msgSend(self.networkController, "openWindow:", self._plusButton);
}
,["id","id"]), new objj_method(sel_getUid("delNetwork:"), function $TNHypervisorNetworksController__delNetwork_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (objj_msgSend(self.tableViewNetworks, "numberOfSelectedRows") < 1)
        return;
    var selectedIndexes = objj_msgSend(self.tableViewNetworks, "selectedRowIndexes"),
        networks = objj_msgSend(self._datasourceNetworks, "objectsAtIndexes:", selectedIndexes),
        alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Delete Network", "Delete Network"), CPBundleLocalizedString("Are you sure you want to destroy this network ? Virtual machines that are in this network will loose connectivity.", "Are you sure you want to destroy this network ? Virtual machines that are in this network will loose connectivity."), self, [[CPBundleLocalizedString("Delete", "Delete"), sel_getUid("_performDelNetwork:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "setUserInfo:", networks);
    objj_msgSend(alert, "runModal");
}
,["id","id"]), new objj_method(sel_getUid("_performDelNetwork:"), function $TNHypervisorNetworksController___performDelNetwork_(self, _cmd, someUserInfo)
{
    objj_msgSend(self, "deleteNetworks:", someUserInfo);
}
,["void","id"]), new objj_method(sel_getUid("editNetwork:"), function $TNHypervisorNetworksController__editNetwork_(self, _cmd, aSender)
{
    if (!objj_msgSend(self, "currentEntityHasPermission:", "network_define"))
        return;
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    var selectedIndex = objj_msgSend(objj_msgSend(self.tableViewNetworks, "selectedRowIndexes"), "firstIndex");
    if (selectedIndex != -1)
    {
        var networkObject = objj_msgSend(self._datasourceNetworks, "objectAtIndex:", selectedIndex);
        if (objj_msgSend(networkObject, "isActive"))
        {
            objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You can't edit a running network", "You can't edit a running network"));
            return;
        }
        objj_msgSend(self.networkController, "setNetwork:", networkObject);
        if (objj_msgSend(aSender, "isKindOfClass:", CPMenuItem))
            aSender = self._editButton;
        objj_msgSend(self.popoverXMLString, "close");
        objj_msgSend(self.networkController, "openWindow:", aSender);
    }
}
,["id","id"]), new objj_method(sel_getUid("defineNetworkXML:"), function $TNHypervisorNetworksController__defineNetworkXML_(self, _cmd, aSender)
{
    var selectedIndex = objj_msgSend(objj_msgSend(self.tableViewNetworks, "selectedRowIndexes"), "firstIndex");
    if (selectedIndex == -1)
        return
    var networkObject = objj_msgSend(self._datasourceNetworks, "objectAtIndex:", selectedIndex);
    objj_msgSend(self, "defineNetwork:", networkObject);
}
,["id","id"]), new objj_method(sel_getUid("activateNetwork:"), function $TNHypervisorNetworksController__activateNetwork_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (objj_msgSend(self.tableViewNetworks, "numberOfSelectedRows") < 1)
        return;
    var selectedIndexes = objj_msgSend(self.tableViewNetworks, "selectedRowIndexes"),
        networks = objj_msgSend(self._datasourceNetworks, "objectsAtIndexes:", selectedIndexes);
    objj_msgSend(self, "activateNetworks:", networks);
}
,["id","id"]), new objj_method(sel_getUid("deactivateNetwork:"), function $TNHypervisorNetworksController__deactivateNetwork_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (objj_msgSend(self.tableViewNetworks, "numberOfSelectedRows") < 1)
        return;
    var selectedIndexes = objj_msgSend(self.tableViewNetworks, "selectedRowIndexes"),
        networks = objj_msgSend(self._datasourceNetworks, "objectsAtIndexes:", selectedIndexes),
        alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Deactivate Network", "Deactivate Network"), CPBundleLocalizedString("Are you sure you want to deactivate this network ? Virtual machines that are in this network will loose connectivity.", "Are you sure you want to deactivate this network ? Virtual machines that are in this network will loose connectivity."), self, [[CPBundleLocalizedString("Deactivate", "Deactivate"), sel_getUid("_performDeactivateNetwork:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "setUserInfo:", networks);
    objj_msgSend(alert, "runModal");
}
,["id","id"]), new objj_method(sel_getUid("_performDeactivateNetwork:"), function $TNHypervisorNetworksController___performDeactivateNetwork_(self, _cmd, someUserInfo)
{
    objj_msgSend(self, "deactivateNetworks:", someUserInfo);
}
,["void","id"]), new objj_method(sel_getUid("openXMLEditor:"), function $TNHypervisorNetworksController__openXMLEditor_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (objj_msgSend(self.tableViewNetworks, "numberOfSelectedRows") != 1)
        return;
    var network = objj_msgSend(self._datasourceNetworks, "objectAtIndex:", objj_msgSend(self.tableViewNetworks, "selectedRow")),
        XMLString = objj_msgSend(self._networksRAW, "objectForKey:", objj_msgSend(network, "UUID"));
    if (objj_msgSend(network, "isActive"))
        objj_msgSend(self.fieldXMLString, "setEnabled:", NO);
    else
        objj_msgSend(self.fieldXMLString, "setEnabled:", YES);
    XMLString = XMLString.replace("\n  \n", "\n");
    XMLString = XMLString.replace(" xmlns='http://www.gajim.org/xmlns/undeclared'", "");
    objj_msgSend(self.fieldXMLString, "setStringValue:", XMLString);
    objj_msgSend(self.networkController, "closeWindow:", nil);
    objj_msgSend(self.popoverXMLString, "close");
    objj_msgSend(self.popoverXMLString, "showRelativeToRect:ofView:preferredEdge:", nil, self._editXMLButton, nil)
    objj_msgSend(self.popoverXMLString, "setDefaultButton:", self.buttonDefineXMLString);
}
,["id","id"]), new objj_method(sel_getUid("defineXMLString:"), function $TNHypervisorNetworksController__defineXMLString_(self, _cmd, aSender)
{
    var desc;
    try
    {
        desc = (new DOMParser()).parseFromString(unescape(""+objj_msgSend(self.fieldXMLString, "stringValue")+""), "text/xml").getElementsByTagName("network")[0];
        if (!desc || typeof(desc) == "undefined")
            objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, "Not valid XML");
    }
    catch (e)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", CPLocalizedString("Error", "Error"), CPLocalizedString("Unable to parse the given XML", "Unable to parse the given XML"), CPCriticalAlertStyle);
        objj_msgSend(self.popoverXMLString, "close");
        return;
    }
    var network = objj_msgSend(objj_msgSend(TNLibvirtNetwork, "alloc"), "initWithXMLNode:", objj_msgSend(TNXMLNode, "nodeWithXMLNode:", desc));
    objj_msgSend(self, "defineNetwork:", network);
    objj_msgSend(self.popoverXMLString, "close");
}
,["id","id"]), new objj_method(sel_getUid("getHypervisorNetworks"), function $TNHypervisorNetworksController__getHypervisorNetworks(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorNetwork});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorNetworkGet});
    objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didReceiveHypervisorNetworks:"));
}
,["void"]), new objj_method(sel_getUid("_didReceiveHypervisorNetworks:"), function $TNHypervisorNetworksController___didReceiveHypervisorNetworks_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var activeNetworks = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "activedNetworks"), "children"),
            unactiveNetworks = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "unactivedNetworks"), "children"),
            allNetworks = objj_msgSend(CPArray, "array");
        objj_msgSend(allNetworks, "addObjectsFromArray:", activeNetworks);
        objj_msgSend(allNetworks, "addObjectsFromArray:", unactiveNetworks);
        objj_msgSend(self, "flushUI");
        for (var i = 0; i < objj_msgSend(allNetworks, "count"); i++)
        {
            var networkNode = objj_msgSend(allNetworks, "objectAtIndex:", i),
                autostart = (objj_msgSend(networkNode, "valueForAttribute:", "autostart") == "1") ? YES : NO,
                active = objj_msgSend(activeNetworks, "containsObject:", networkNode),
                network = objj_msgSend(objj_msgSend(TNLibvirtNetwork, "alloc"), "initWithXMLNode:", networkNode);
            objj_msgSend(network, "setAutostart:", autostart);
            objj_msgSend(network, "setActive:", active);
            objj_msgSend(self._datasourceNetworks, "addObject:", network);
            objj_msgSend(self._networksRAW, "setObject:forKey:", objj_msgSend(networkNode, "stringValue").replace(" autostart='0'","").replace(" autostart='1'",""), objj_msgSend(network, "UUID"));
        }
        objj_msgSend(self.tableViewNetworks, "reloadData");
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusReady);
    }
    else
    {
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusError);
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
}
,["void","id"]), new objj_method(sel_getUid("getHypervisorNICS"), function $TNHypervisorNetworksController__getHypervisorNICS(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorNetwork});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorNetworkGetNics});
    objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didReceiveHypervisorNics:"));
}
,["void"]), new objj_method(sel_getUid("_didReceiveHypervisorNics:"), function $TNHypervisorNetworksController___didReceiveHypervisorNics_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var nics = objj_msgSend(aStanza, "childrenWithName:", "nic"),
            names = objj_msgSend(CPArray, "array");
        for (var i = 0; i < objj_msgSend(nics, "count"); i++)
        {
            var nic = objj_msgSend(nics, "objectAtIndex:", i),
                name = objj_msgSend(nic, "valueForAttribute:", "name");
            if (name.indexOf("vnet") == -1)
                objj_msgSend(names, "addObject:", name);
        }
        objj_msgSend(self.networkController, "setCurrentNetworkInterfaces:", names);
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusReady);
    }
    else
    {
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusError);
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("defineNetwork:"), function $TNHypervisorNetworksController__defineNetwork_(self, _cmd, aNetwork)
{
    if (objj_msgSend(aNetwork, "isActive"))
    {
        objj_msgSend(TNAlert, "showAlertWithTitle:message:style:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You can't update a running network", "You can't update a running network"), CPCriticalAlertStyle);
        return
    }
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorNetwork});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorNetworkUndefine,
        "uuid": objj_msgSend(aNetwork, "UUID")});
    self._networkHolder = aNetwork;
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didNetworkUndefinBeforeDefining:"));
}
,["void","TNLibvirtNetwork"]), new objj_method(sel_getUid("_didNetworkUndefinBeforeDefining:"), function $TNHypervisorNetworksController___didNetworkUndefinBeforeDefining_(self, _cmd, aStanza)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithAttributes:", {"type": "set"});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorNetwork});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorNetworkDefine,
        "autostart": objj_msgSend(self._networkHolder, "isAutostart") ? "1" : "0"});
    objj_msgSend(stanza, "addNode:", objj_msgSend(self._networkHolder, "XMLNode"));
    self._networkHolder = nil;
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didDefineNetwork:"));
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("_didDefineNetwork:"), function $TNHypervisorNetworksController___didDefineNetwork_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Network has been defined", "Network has been defined"));
    else
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("activateNetworks:"), function $TNHypervisorNetworksController__activateNetworks_(self, _cmd, someNetworks)
{
    for (var i = 0; i < objj_msgSend(someNetworks, "count"); i++)
    {
        var networkObject = objj_msgSend(someNetworks, "objectAtIndex:", i),
            stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
        if (!objj_msgSend(networkObject, "isActive"))
        {
            objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorNetwork});
            objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
                "xmlns": TNArchipelTypeHypervisorNetwork,
                "action": TNArchipelTypeHypervisorNetworkCreate,
                "uuid": objj_msgSend(networkObject, "UUID")});
            objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didNetworkStatusChange:"));
            objj_msgSend(self.tableViewNetworks, "deselectAll");
        }
    }
}
,["void","CPArray"]), new objj_method(sel_getUid("deactivateNetworks:"), function $TNHypervisorNetworksController__deactivateNetworks_(self, _cmd, someNetworks)
{
    for (var i = 0; i < objj_msgSend(someNetworks, "count"); i++)
    {
        var networkObject = objj_msgSend(someNetworks, "objectAtIndex:", i),
            stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
        if (objj_msgSend(networkObject, "isActive"))
        {
            objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorNetwork});
            objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
                "xmlns": TNArchipelTypeHypervisorNetwork,
                "action": TNArchipelTypeHypervisorNetworkDestroy,
                "uuid" : objj_msgSend(networkObject, "UUID")});
            objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didNetworkStatusChange:"));
            objj_msgSend(self.tableViewNetworks, "deselectAll");
        }
    }
}
,["void","CPArray"]), new objj_method(sel_getUid("_didNetworkStatusChange:"), function $TNHypervisorNetworksController___didNetworkStatusChange_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Network status has changed", "Network status has changed"));
    else
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("deleteNetworks:"), function $TNHypervisorNetworksController__deleteNetworks_(self, _cmd, someNetworks)
{
    for (var i = 0; i < objj_msgSend(someNetworks, "count"); i++)
    {
        var networkObject = objj_msgSend(someNetworks, "objectAtIndex:", i);
        if (objj_msgSend(networkObject, "isActive"))
        {
            objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You can't update a running network", "You can't update a running network"), CPCriticalAlertStyle);
            return;
        }
        var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorNetwork});
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
            "xmlns": TNArchipelTypeHypervisorNetwork,
            "action": TNArchipelTypeHypervisorNetworkUndefine,
            "uuid": objj_msgSend(networkObject, "UUID")});
        objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didDelNetwork:"));
    }
}
,["void","CPArray"]), new objj_method(sel_getUid("_didDelNetwork:"), function $TNHypervisorNetworksController___didDelNetwork_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Network has been removed", "Network has been removed"));
    else
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("tableViewSelectionDidChange:"), function $TNHypervisorNetworksController__tableViewSelectionDidChange_(self, _cmd, aNotification)
{
    objj_msgSend(self.popoverXMLString, "close");
    objj_msgSend(self.networkController, "closeWindow:", nil);
    objj_msgSend(self, "setUIAccordingToPermissions");
}
,["void","CPNotification"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNHypervisorNetworksController), comment);
}p;19;TNNetworkDataView.jt;12650;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;20;AppKit/CPImageView.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;29;TNKit/TNTableViewDataSource.ji;29;../../Views/TNBasicDataView.jt;12439;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("../../Views/TNBasicDataView.j", YES);
var TNNetworkDataViewStatusImageActive,
    TNNetworkDataViewStatusImageUnactive;
{var the_class = objj_allocateClassPair(TNBasicDataView, "TNNetworkDataView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("imageStatus"), new objj_ivar("tableDHCPHosts"), new objj_ivar("tableDHCPRanges"), new objj_ivar("fieldAutostart"), new objj_ivar("fieldBridgeDelay"), new objj_ivar("fieldBridgeForwardDevice"), new objj_ivar("fieldBridgeForwardMode"), new objj_ivar("fieldBridgeIP"), new objj_ivar("fieldBridgeName"), new objj_ivar("fieldBridgeNetmask"), new objj_ivar("fieldBridgeSTP"), new objj_ivar("fieldInLimit"), new objj_ivar("fieldName"), new objj_ivar("fieldOutLimit"), new objj_ivar("labelAutostart"), new objj_ivar("labelBridgeDelay"), new objj_ivar("labelBridgeForwardDevice"), new objj_ivar("labelBridgeForwardMode"), new objj_ivar("labelBridgeInformation"), new objj_ivar("labelBridgeIP"), new objj_ivar("labelBridgeName"), new objj_ivar("labelBridgeNetmask"), new objj_ivar("labelBridgeSTP"), new objj_ivar("labelDHCPHosts"), new objj_ivar("labelDHCPRanges"), new objj_ivar("labelInLimit"), new objj_ivar("labelOutLimit"), new objj_ivar("_network"), new objj_ivar("_datasourceHosts"), new objj_ivar("_datasourceRanges")]);

       
       

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $TNNetworkDataView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNNetworkDataView").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self.tableDHCPRanges, "setIntercellSpacing:", CGSizeMake(2.0, 2.0));
        objj_msgSend(self.tableDHCPHosts, "setIntercellSpacing:", CGSizeMake(2.0, 2.0));
    }
    return self;
}
,["void","CGRect"]), new objj_method(sel_getUid("setObjectValue:"), function $TNNetworkDataView__setObjectValue_(self, _cmd, aNetwork)
{
    self._network = aNetwork;
    self._datasourceRanges = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    self._datasourceHosts = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self.imageStatus, "setImage:", objj_msgSend(aNetwork, "isActive") ? TNNetworkDataViewStatusImageActive : TNNetworkDataViewStatusImageUnactive);
    objj_msgSend(self.fieldName, "setStringValue:", objj_msgSend(aNetwork, "name"));
    objj_msgSend(self.fieldBridgeName, "setStringValue:", objj_msgSend(objj_msgSend(aNetwork, "bridge"), "name") || "No bridge");
    objj_msgSend(self.fieldBridgeForwardDevice, "setStringValue:", objj_msgSend(objj_msgSend(aNetwork, "forward"), "dev"));
    objj_msgSend(self.fieldBridgeForwardMode, "setStringValue:", (objj_msgSend(objj_msgSend(aNetwork, "forward"), "mode") != "") ? objj_msgSend(objj_msgSend(aNetwork, "forward"), "mode") : "Nothing");
    objj_msgSend(self.fieldBridgeIP, "setStringValue:", objj_msgSend(objj_msgSend(aNetwork, "IP"), "address") || "No IP");
    objj_msgSend(self.fieldBridgeNetmask, "setStringValue:", objj_msgSend(objj_msgSend(aNetwork, "IP"), "netmask") || "No Netmask");
    objj_msgSend(self.fieldBridgeSTP, "setStringValue:", objj_msgSend(objj_msgSend(aNetwork, "bridge"), "isSTPEnabled") ? "Yes" : "No");
    objj_msgSend(self.fieldBridgeDelay, "setStringValue:", objj_msgSend(objj_msgSend(aNetwork, "bridge"), "delay") || "None");
    objj_msgSend(self.fieldAutostart, "setStringValue:", objj_msgSend(aNetwork, "isAutostart") ? "On" : "Off");
    objj_msgSend(self.fieldInLimit, "setHidden:", YES);
    objj_msgSend(self.labelInLimit, "setHidden:", YES);
    if (objj_msgSend(objj_msgSend(aNetwork, "bandwidth"), "inbound"))
    {
        var average = objj_msgSend(objj_msgSend(objj_msgSend(aNetwork, "bandwidth"), "inbound"), "average") || "None",
            peak = objj_msgSend(objj_msgSend(objj_msgSend(aNetwork, "bandwidth"), "inbound"), "peak") || "None",
            burst = objj_msgSend(objj_msgSend(objj_msgSend(aNetwork, "bandwidth"), "inbound"), "burst") || "None";
        objj_msgSend(self.fieldInLimit, "setStringValue:", objj_msgSend(CPString, "stringWithFormat:", "%s/%s/%s", average, peak, burst));
        objj_msgSend(self.fieldInLimit, "setHidden:", NO);
        objj_msgSend(self.labelInLimit, "setHidden:", NO);
    }
    objj_msgSend(self.fieldOutLimit, "setHidden:", YES);
    objj_msgSend(self.labelOutLimit, "setHidden:", YES);
    if (objj_msgSend(objj_msgSend(aNetwork, "bandwidth"), "outbound"))
    {
        var average = objj_msgSend(objj_msgSend(objj_msgSend(aNetwork, "bandwidth"), "outbound"), "average") || "None",
            peak = objj_msgSend(objj_msgSend(objj_msgSend(aNetwork, "bandwidth"), "outbound"), "peak") || "None",
            burst = objj_msgSend(objj_msgSend(objj_msgSend(aNetwork, "bandwidth"), "outbound"), "burst") || "None";
        objj_msgSend(self.fieldOutLimit, "setStringValue:", objj_msgSend(CPString, "stringWithFormat:", "%s/%s/%s", average, peak, burst));
        objj_msgSend(self.fieldOutLimit, "setHidden:", NO);
        objj_msgSend(self.labelOutLimit, "setHidden:", NO);
    }
    objj_msgSend(self._datasourceRanges, "setTable:", self.tableDHCPRanges);
    objj_msgSend(self._datasourceRanges, "setContent:", objj_msgSend(objj_msgSend(objj_msgSend(aNetwork, "IP"), "DHCP"), "ranges"));
    objj_msgSend(self.tableDHCPRanges, "setDataSource:", self._datasourceRanges);
    objj_msgSend(self.tableDHCPRanges, "reloadData");
    objj_msgSend(self._datasourceHosts, "setTable:", self.tableDHCPHosts);
    objj_msgSend(self._datasourceHosts, "setContent:", objj_msgSend(objj_msgSend(objj_msgSend(aNetwork, "IP"), "DHCP"), "hosts"));
    objj_msgSend(self.tableDHCPHosts, "setDataSource:", self._datasourceHosts);
    objj_msgSend(self.tableDHCPHosts, "reloadData");
}
,["void","id"]), new objj_method(sel_getUid("initWithCoder:"), function $TNNetworkDataView__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNNetworkDataView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self.imageStatus = objj_msgSend(aCoder, "decodeObjectForKey:", "imageStatus");
        self.tableDHCPRanges = objj_msgSend(aCoder, "decodeObjectForKey:", "tableDHCPRanges");
        self.tableDHCPHosts = objj_msgSend(aCoder, "decodeObjectForKey:", "tableDHCPHosts");
        self.fieldName = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldName");
        self.fieldBridgeName = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldBridgeName");
        self.fieldBridgeForwardDevice = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldBridgeForwardDevice");
        self.fieldBridgeForwardMode = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldBridgeForwardMode");
        self.fieldBridgeIP = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldBridgeIP");
        self.fieldBridgeNetmask = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldBridgeNetmask");
        self.fieldBridgeSTP = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldBridgeSTP");
        self.fieldBridgeDelay = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldBridgeDelay");
        self.fieldAutostart = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldAutostart");
        self.fieldInLimit = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldInLimit");
        self.fieldOutLimit = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldOutLimit");
        self.labelBridgeDelay = objj_msgSend(aCoder, "decodeObjectForKey:", "labelBridgeDelay");
        self.labelBridgeForwardDevice = objj_msgSend(aCoder, "decodeObjectForKey:", "labelBridgeForwardDevice");
        self.labelBridgeForwardMode = objj_msgSend(aCoder, "decodeObjectForKey:", "labelBridgeForwardMode");
        self.labelBridgeIP = objj_msgSend(aCoder, "decodeObjectForKey:", "labelBridgeIP");
        self.labelBridgeName = objj_msgSend(aCoder, "decodeObjectForKey:", "labelBridgeName");
        self.labelBridgeNetmask = objj_msgSend(aCoder, "decodeObjectForKey:", "labelBridgeNetmask");
        self.labelBridgeSTP = objj_msgSend(aCoder, "decodeObjectForKey:", "labelBridgeSTP");
        self.labelBridgeInformation = objj_msgSend(aCoder, "decodeObjectForKey:", "labelBridgeInformation");
        self.labelDHCPRanges = objj_msgSend(aCoder, "decodeObjectForKey:", "labelDHCPRanges");
        self.labelDHCPHosts = objj_msgSend(aCoder, "decodeObjectForKey:", "labelDHCPHosts");
        self.labelAutostart = objj_msgSend(aCoder, "decodeObjectForKey:", "labelAutostart");
        self.labelInLimit = objj_msgSend(aCoder, "decodeObjectForKey:", "labelInLimit");
        self.labelOutLimit = objj_msgSend(aCoder, "decodeObjectForKey:", "labelOutLimit");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNNetworkDataView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNNetworkDataView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.imageStatus, "imageStatus");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.tableDHCPRanges, "tableDHCPRanges");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.tableDHCPHosts, "tableDHCPHosts");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldName, "fieldName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldBridgeName, "fieldBridgeName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldBridgeForwardDevice, "fieldBridgeForwardDevice");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldBridgeForwardMode, "fieldBridgeForwardMode");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldBridgeIP, "fieldBridgeIP");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldBridgeNetmask, "fieldBridgeNetmask");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldBridgeSTP, "fieldBridgeSTP");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldBridgeDelay, "fieldBridgeDelay");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldAutostart, "fieldAutostart");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldInLimit, "fieldInLimit");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldOutLimit, "fieldOutLimit");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelBridgeDelay, "labelBridgeDelay");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelBridgeForwardDevice, "labelBridgeForwardDevice");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelBridgeForwardMode, "labelBridgeForwardMode");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelBridgeIP, "labelBridgeIP");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelBridgeName, "labelBridgeName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelBridgeNetmask, "labelBridgeNetmask");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelBridgeSTP, "labelBridgeSTP");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelBridgeInformation, "labelBridgeInformation");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelDHCPRanges, "labelDHCPRanges");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelDHCPHosts, "labelDHCPHosts");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelAutostart, "labelAutostart");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelInLimit, "labelInLimit");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelOutLimit, "labelOutLimit");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNNetworkDataView__initialize(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "mainBundle");
    TNNetworkDataViewStatusImageActive = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsStatus/green.png"), CGSizeMake(8.0, 8.0));
    TNNetworkDataViewStatusImageUnactive = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsStatus/red.png"), CGSizeMake(8.0, 8.0));
}
,["void"])]);
}p;28;TNNetworkEditionController.jt;33164;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;19;AppKit/CPCheckBox.jI;22;AppKit/CPPopUpButton.jI;20;AppKit/CPTableView.jI;18;AppKit/CPTabView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;17;AppKit/CPWindow.jI;29;TNKit/TNTableViewDataSource.ji;20;Model/TNLibvirtNet.jt;32844;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPCheckBox.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTabView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("Model/TNLibvirtNet.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
{var the_class = objj_allocateClassPair(CPObject, "TNNetworkEditionController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonOK"), new objj_ivar("buttonBarControlDHCPHosts"), new objj_ivar("buttonBarControlDHCPRanges"), new objj_ivar("checkBoxAutostart"), new objj_ivar("checkBoxBandwidthInbound"), new objj_ivar("checkBoxBandwidthOutbound"), new objj_ivar("checkBoxDHCPEnabled"), new objj_ivar("checkBoxSTPEnabled"), new objj_ivar("mainPopover"), new objj_ivar("buttonForwardDevice"), new objj_ivar("buttonForwardMode"), new objj_ivar("tableViewHosts"), new objj_ivar("tableViewRanges"), new objj_ivar("tabViewDHCP"), new objj_ivar("fieldBandwidthInboundAverage"), new objj_ivar("fieldBandwidthInboundBurst"), new objj_ivar("fieldBandwidthInboundPeak"), new objj_ivar("fieldBandwidthOutboundAverage"), new objj_ivar("fieldBandwidthOutboundBurst"), new objj_ivar("fieldBandwidthOutboundPeak"), new objj_ivar("fieldBridgeDelay"), new objj_ivar("fieldBridgeIP"), new objj_ivar("fieldBridgeName"), new objj_ivar("fieldBridgeNetmask"), new objj_ivar("fieldErrorMessage"), new objj_ivar("fieldNetworkName"), new objj_ivar("viewHostsConf"), new objj_ivar("viewRangesConf"), new objj_ivar("viewHostsTableContainer"), new objj_ivar("viewRangesTableContainer"), new objj_ivar("_currentNetworkInterfaces"), new objj_ivar("_delegate"), new objj_ivar("_network"), new objj_ivar("_minusButtonDHCPHosts"), new objj_ivar("_minusButtonDHCPRanges"), new objj_ivar("_plusButtonDHCPHosts"), new objj_ivar("_plusButtonDHCPRanges"), new objj_ivar("_datasourceDHCPHosts"), new objj_ivar("_datasourceDHCPRanges")]);
       
       





       
       










objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("currentNetworkInterfaces"), function $TNNetworkEditionController__currentNetworkInterfaces(self, _cmd)
{
return self._currentNetworkInterfaces;
}
,["CPArray"]), new objj_method(sel_getUid("setCurrentNetworkInterfaces:"), function $TNNetworkEditionController__setCurrentNetworkInterfaces_(self, _cmd, newValue)
{
self._currentNetworkInterfaces = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("delegate"), function $TNNetworkEditionController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNNetworkEditionController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("network"), function $TNNetworkEditionController__network(self, _cmd)
{
return self._network;
}
,["TNLibvirtNetwork"]), new objj_method(sel_getUid("setNetwork:"), function $TNNetworkEditionController__setNetwork_(self, _cmd, newValue)
{
self._network = newValue;
}
,["void","TNLibvirtNetwork"]), new objj_method(sel_getUid("awakeFromCib"), function $TNNetworkEditionController__awakeFromCib(self, _cmd)
{
    self._plusButtonDHCPHosts = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._plusButtonDHCPHosts, "setTarget:", self);
    objj_msgSend(self._plusButtonDHCPHosts, "setAction:", sel_getUid("addDHCPHost:"));
    objj_msgSend(self._plusButtonDHCPHosts, "setToolTip:", CPBundleLocalizedString("Add a new DHCP reservation", "Add a new DHCP reservation"));
    self._minusButtonDHCPHosts= objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._minusButtonDHCPHosts, "setTarget:", self);
    objj_msgSend(self._minusButtonDHCPHosts, "setAction:", sel_getUid("removeDHCPHost:"));
    objj_msgSend(self._minusButtonDHCPHosts, "setToolTip:", CPBundleLocalizedString("Remove elected DHCP reservations", "Remove elected DHCP reservations"));
    objj_msgSend(self.buttonBarControlDHCPHosts, "setButtons:", [self._plusButtonDHCPHosts, self._minusButtonDHCPHosts]);
    self._plusButtonDHCPRanges = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._plusButtonDHCPRanges, "setTarget:", self);
    objj_msgSend(self._plusButtonDHCPRanges, "setAction:", sel_getUid("addDHCPRange:"));
    objj_msgSend(self._plusButtonDHCPRanges, "setToolTip:", CPBundleLocalizedString("Add new DHCP range", "Add new DHCP range"));
    self._minusButtonDHCPRanges = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._minusButtonDHCPRanges, "setTarget:", self);
    objj_msgSend(self._minusButtonDHCPRanges, "setAction:", sel_getUid("removeDHCPRange:"));
    objj_msgSend(self._minusButtonDHCPRanges, "setToolTip:", CPBundleLocalizedString("Remove selected DHCP ranges", "Remove selected DHCP ranges"));
    objj_msgSend(self.buttonBarControlDHCPRanges, "setButtons:", [self._plusButtonDHCPRanges, self._minusButtonDHCPRanges]);
    objj_msgSend(self.buttonForwardMode, "removeAllItems");
    objj_msgSend(self.buttonForwardMode, "addItemsWithTitles:", TNLibvirtNetworkForwardModes);
    objj_msgSend(self.buttonForwardMode, "setTarget:", self);
    objj_msgSend(self.buttonForwardMode, "setAction:", sel_getUid("forwardModeChanged:"));
    objj_msgSend(self.buttonForwardDevice, "removeAllItems");
    self._datasourceDHCPRanges = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self.tableViewRanges, "setDelegate:", self);
    objj_msgSend(self.tableViewRanges, "setDataSource:", self._datasourceDHCPRanges);
    objj_msgSend(self._datasourceDHCPRanges, "setTable:", self.tableViewRanges);
    objj_msgSend(self.viewRangesTableContainer, "setBorderedWithHexColor:", "#C0C7D2");
    self._datasourceDHCPHosts = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self.tableViewHosts, "setDelegate:", self);
    objj_msgSend(self.tableViewHosts, "setDataSource:", self._datasourceDHCPHosts);
    objj_msgSend(self._datasourceDHCPHosts, "setTable:", self.tableViewHosts);
    objj_msgSend(self.viewHostsTableContainer, "setBorderedWithHexColor:", "#C0C7D2");
    var menuRange = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init"),
        menuHost = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init");
    objj_msgSend(menuRange, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Add new range", "Add new range"), sel_getUid("addDHCPRange:"), "");
    objj_msgSend(menuRange, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Remove", "Remove"), sel_getUid("removeDHCPRange:"), "");
    objj_msgSend(self.tableViewRanges, "setMenu:", menuRange);
    objj_msgSend(menuHost, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Add new host reservation", "Add new host reservation"), sel_getUid("addDHCPHost:"), "");
    objj_msgSend(menuHost, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Remove", "Remove"), sel_getUid("removeDHCPHost:"), "");
    objj_msgSend(self.tableViewHosts, "setMenu:", menuHost);
    var tabViewDHCPRangesItem = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "id1"),
        tabViewDHCPHostsItem = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "id2");
    objj_msgSend(tabViewDHCPRangesItem, "setView:", self.viewRangesConf);
    objj_msgSend(tabViewDHCPRangesItem, "setLabel:", CPBundleLocalizedString("DHCP Ranges", "DHCP Ranges"));
    objj_msgSend(self.tabViewDHCP, "addTabViewItem:", tabViewDHCPRangesItem);
    objj_msgSend(tabViewDHCPHostsItem, "setView:", self.viewHostsConf);
    objj_msgSend(tabViewDHCPHostsItem, "setLabel:", CPBundleLocalizedString("DHCP Hosts", "DHCP Hosts"));
    objj_msgSend(self.tabViewDHCP, "addTabViewItem:", tabViewDHCPHostsItem);
}
,["void"]), new objj_method(sel_getUid("GUIForIsolatedMode"), function $TNNetworkEditionController__GUIForIsolatedMode(self, _cmd)
{
    objj_msgSend(self.buttonForwardDevice, "setEnabled:", NO);
    objj_msgSend(self.fieldBridgeName, "setEnabled:", YES);
    objj_msgSend(self.fieldBridgeIP, "setEnabled:", YES);
    objj_msgSend(self.fieldBridgeNetmask, "setEnabled:", YES);
    objj_msgSend(self.fieldBridgeDelay, "setEnabled:", YES);
    objj_msgSend(self.checkBoxSTPEnabled, "setEnabled:", YES);
    objj_msgSend(self.checkBoxDHCPEnabled, "setEnabled:", YES);
    objj_msgSend(self.fieldBridgeName, "setStringValue:", objj_msgSend(objj_msgSend(self._network, "bridge"), "name"));
    objj_msgSend(self.fieldBridgeIP, "setStringValue:", objj_msgSend(objj_msgSend(self._network, "IP"), "address"));
    objj_msgSend(self.fieldBridgeNetmask, "setStringValue:", objj_msgSend(objj_msgSend(self._network, "IP"), "netmask"));
    objj_msgSend(self.fieldBridgeDelay, "setStringValue:", objj_msgSend(objj_msgSend(self._network, "bridge"), "delay"));
    objj_msgSend(self.checkBoxSTPEnabled, "setState:", objj_msgSend(objj_msgSend(self._network, "bridge"), "isSTPEnabled") ? CPOnState : CPOffState);
    objj_msgSend(self.checkBoxDHCPEnabled, "setState:", objj_msgSend(objj_msgSend(self._network, "IP"), "DHCP") ? CPOnState : CPOffState);
    objj_msgSend(self.buttonForwardDevice, "removeAllItems");
    objj_msgSend(self, "DHCPChange:", nil);
}
,["void"]), new objj_method(sel_getUid("GUIForNATRouteMode"), function $TNNetworkEditionController__GUIForNATRouteMode(self, _cmd)
{
    objj_msgSend(self.buttonForwardDevice, "setEnabled:", YES);
    objj_msgSend(self.fieldBridgeName, "setEnabled:", YES);
    objj_msgSend(self.fieldBridgeIP, "setEnabled:", YES);
    objj_msgSend(self.fieldBridgeNetmask, "setEnabled:", YES);
    objj_msgSend(self.fieldBridgeDelay, "setEnabled:", YES);
    objj_msgSend(self.checkBoxSTPEnabled, "setEnabled:", YES);
    objj_msgSend(self.checkBoxDHCPEnabled, "setEnabled:", YES);
    objj_msgSend(self.fieldBridgeName, "setStringValue:", objj_msgSend(objj_msgSend(self._network, "bridge"), "name"));
    objj_msgSend(self.fieldBridgeIP, "setStringValue:", objj_msgSend(objj_msgSend(self._network, "IP"), "address"));
    objj_msgSend(self.fieldBridgeNetmask, "setStringValue:", objj_msgSend(objj_msgSend(self._network, "IP"), "netmask"));
    objj_msgSend(self.fieldBridgeDelay, "setStringValue:", objj_msgSend(objj_msgSend(self._network, "bridge"), "delay"));
    objj_msgSend(self.checkBoxSTPEnabled, "setState:", objj_msgSend(objj_msgSend(self._network, "bridge"), "isSTPEnabled") ? CPOnState : CPOffState);
    objj_msgSend(self.checkBoxDHCPEnabled, "setState:", objj_msgSend(objj_msgSend(self._network, "IP"), "DHCP") ? CPOnState : CPOffState);
    objj_msgSend(self.buttonForwardDevice, "addItemsWithTitles:", self._currentNetworkInterfaces);
    if (objj_msgSend(objj_msgSend(self.buttonForwardDevice, "itemTitles"), "containsObject:", objj_msgSend(objj_msgSend(self._network, "forward"), "dev")))
        objj_msgSend(self.buttonForwardDevice, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._network, "forward"), "dev"));
    else
        objj_msgSend(self.buttonForwardDevice, "selectItemAtIndex:", 0);
    objj_msgSend(self, "DHCPChange:", nil);
}
,["void"]), new objj_method(sel_getUid("GUIForBridgeMode"), function $TNNetworkEditionController__GUIForBridgeMode(self, _cmd)
{
    objj_msgSend(self.buttonForwardDevice, "setEnabled:", YES);
    objj_msgSend(self.fieldBridgeName, "setEnabled:", NO);
    objj_msgSend(self.fieldBridgeIP, "setEnabled:", NO);
    objj_msgSend(self.fieldBridgeNetmask, "setEnabled:", NO);
    objj_msgSend(self.fieldBridgeDelay, "setEnabled:", NO);
    objj_msgSend(self.checkBoxSTPEnabled, "setEnabled:", NO);
    objj_msgSend(self.checkBoxDHCPEnabled, "setEnabled:", NO);
    objj_msgSend(self.fieldBridgeName, "setStringValue:", "");
    objj_msgSend(self.fieldBridgeIP, "setStringValue:", "");
    objj_msgSend(self.fieldBridgeNetmask, "setStringValue:", "");
    objj_msgSend(self.fieldBridgeDelay, "setStringValue:", "");
    objj_msgSend(self.checkBoxSTPEnabled, "setState:", CPOffState);
    objj_msgSend(self.checkBoxDHCPEnabled, "setState:", CPOffState);
    objj_msgSend(self.buttonForwardDevice, "addItemsWithTitles:", self._currentNetworkInterfaces);
    if (objj_msgSend(objj_msgSend(self.buttonForwardDevice, "itemTitles"), "containsObject:", objj_msgSend(objj_msgSend(self._network, "forward"), "dev")))
        objj_msgSend(self.buttonForwardDevice, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._network, "forward"), "dev"));
    else
        objj_msgSend(self.buttonForwardDevice, "selectItemAtIndex:", 0);
    objj_msgSend(self._datasourceDHCPRanges, "removeAllObjects");
    objj_msgSend(self._datasourceDHCPHosts, "removeAllObjects");
    objj_msgSend(self.tableViewRanges, "reloadData");
    objj_msgSend(self.tableViewHosts, "reloadData");
}
,["void"]), new objj_method(sel_getUid("update"), function $TNNetworkEditionController__update(self, _cmd)
{
    objj_msgSend(self.fieldErrorMessage, "setStringValue:", "");
    objj_msgSend(self.buttonForwardDevice, "removeAllItems");
    objj_msgSend(self.fieldNetworkName, "setStringValue:", objj_msgSend(self._network, "name"));
    objj_msgSend(self.fieldBridgeName, "setStringValue:", objj_msgSend(objj_msgSend(self._network, "bridge"), "name") || "");
    objj_msgSend(self.fieldBridgeDelay, "setStringValue:", objj_msgSend(objj_msgSend(self._network, "bridge"), "delay") || "");
    objj_msgSend(self.fieldBridgeIP, "setStringValue:", objj_msgSend(objj_msgSend(self._network, "IP"), "address") || "");
    objj_msgSend(self.fieldBridgeNetmask, "setStringValue:", objj_msgSend(objj_msgSend(self._network, "IP"), "netmask") || "");
    if (!objj_msgSend(objj_msgSend(self._network, "forward"), "mode"))
    {
        objj_msgSend(self.buttonForwardDevice, "setEnabled:", NO);
        objj_msgSend(self.buttonForwardMode, "selectItemWithTitle:", "isolated");
    }
    else
    {
        objj_msgSend(self.buttonForwardDevice, "setEnabled:", YES);
        objj_msgSend(self.buttonForwardDevice, "addItemsWithTitles:", self._currentNetworkInterfaces);
        objj_msgSend(self.buttonForwardDevice, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._network, "forward"), "dev"));
        objj_msgSend(self.buttonForwardMode, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._network, "forward"), "mode"));
    }
    objj_msgSend(self, "forwardModeChanged:", nil);
    objj_msgSend(self.checkBoxSTPEnabled, "setState:", objj_msgSend(objj_msgSend(self._network, "bridge"), "isSTPEnabled") ? CPOnState : CPOffState);
    objj_msgSend(self.checkBoxAutostart, "setState:", objj_msgSend(self._network, "isAutostart") ? CPOnState : CPOffState);
    objj_msgSend(self.checkBoxDHCPEnabled, "setState:", objj_msgSend(objj_msgSend(self._network, "IP"), "DHCP") ? CPOnState : CPOffState);
    objj_msgSend(self, "DHCPChange:", nil);
    objj_msgSend(self._datasourceDHCPRanges, "setContent:", objj_msgSend(objj_msgSend(objj_msgSend(self._network, "IP"), "DHCP"), "ranges"));
    objj_msgSend(self._datasourceDHCPHosts, "setContent:", objj_msgSend(objj_msgSend(objj_msgSend(self._network, "IP"), "DHCP"), "hosts"));
    objj_msgSend(self.tableViewRanges, "reloadData");
    objj_msgSend(self.tableViewHosts, "reloadData");
    objj_msgSend(self.checkBoxBandwidthInbound, "setState:", objj_msgSend(objj_msgSend(self._network, "bandwidth"), "inbound") ? CPOnState : CPOffState);
    objj_msgSend(self, "inboundLimitChange:", nil);
    objj_msgSend(self.checkBoxBandwidthOutbound, "setState:", objj_msgSend(objj_msgSend(self._network, "bandwidth"), "outbound") ? CPOnState : CPOffState);
    objj_msgSend(self, "outboundLimitChange:", nil);
    objj_msgSend(self.fieldBandwidthInboundAverage, "setStringValue:", objj_msgSend(objj_msgSend(objj_msgSend(self._network, "bandwidth"), "inbound"), "average") || "");
    objj_msgSend(self.fieldBandwidthInboundPeak, "setStringValue:", objj_msgSend(objj_msgSend(objj_msgSend(self._network, "bandwidth"), "inbound"), "peak") || "");
    objj_msgSend(self.fieldBandwidthInboundBurst, "setStringValue:", objj_msgSend(objj_msgSend(objj_msgSend(self._network, "bandwidth"), "inbound"), "burst") || "");
    objj_msgSend(self.fieldBandwidthOutboundAverage, "setStringValue:", objj_msgSend(objj_msgSend(objj_msgSend(self._network, "bandwidth"), "outbound"), "average") || "");
    objj_msgSend(self.fieldBandwidthOutboundPeak, "setStringValue:", objj_msgSend(objj_msgSend(objj_msgSend(self._network, "bandwidth"), "outbound"), "peak") || "");
    objj_msgSend(self.fieldBandwidthOutboundBurst, "setStringValue:", objj_msgSend(objj_msgSend(objj_msgSend(self._network, "bandwidth"), "outbound"), "burst") || "");
}
,["void"]), new objj_method(sel_getUid("save"), function $TNNetworkEditionController__save(self, _cmd)
{
    if (!objj_msgSend(self.fieldNetworkName, "stringValue") || objj_msgSend(self.fieldNetworkName, "stringValue") == "")
    {
        objj_msgSend(self.fieldErrorMessage, "setStringValue:", CPLocalizedString("You must enter a valid network name", "You must enter a valid network name"));
        return;
    }
    objj_msgSend(self._network, "setAutostart:", (objj_msgSend(self.checkBoxAutostart, "state") == CPOnState) ? YES : NO);
    objj_msgSend(self._network, "setName:", objj_msgSend(self.fieldNetworkName, "stringValue"));
    switch (objj_msgSend(self.buttonForwardMode, "title"))
    {
        case TNLibvirtNetworkForwardModeIsolated:
            objj_msgSend(self._network, "setForward:", nil);
            break;
        case TNLibvirtNetworkForwardModeNAT:
        case TNLibvirtNetworkForwardModeRoute:
            objj_msgSend(self._network, "setForward:", objj_msgSend(objj_msgSend(TNLibvirtNetworkForward, "alloc"), "init"));
            objj_msgSend(objj_msgSend(self._network, "forward"), "setDev:", objj_msgSend(self.buttonForwardDevice, "title"));
            objj_msgSend(objj_msgSend(self._network, "forward"), "setMode:", objj_msgSend(self.buttonForwardMode, "title"));
            break;
        case TNLibvirtNetworkForwardModePrivate:
        case TNLibvirtNetworkForwardModeBridge:
            objj_msgSend(self._network, "setForward:", objj_msgSend(objj_msgSend(TNLibvirtNetworkForward, "alloc"), "init"));
            objj_msgSend(objj_msgSend(self._network, "forward"), "setDev:", nil);
            objj_msgSend(objj_msgSend(self._network, "forward"), "setMode:", objj_msgSend(self.buttonForwardMode, "title"));
            objj_msgSend(self._network, "setBridge:", nil);
            objj_msgSend(objj_msgSend(objj_msgSend(self._network, "forward"), "interfaces"), "addObject:", objj_msgSend(TNLibvirtNetworkForwardInterface, "defaultNetworkForwardInterfaceWithDev:", objj_msgSend(self.buttonForwardDevice, "title")));
            break;
    }
    if (objj_msgSend(self.fieldBridgeIP, "stringValue") != "")
    {
        if (!objj_msgSend(self._network, "IP"))
            objj_msgSend(self._network, "setIP:", objj_msgSend(objj_msgSend(TNLibvirtNetworkIP, "alloc"), "init"));
        objj_msgSend(objj_msgSend(self._network, "IP"), "setAddress:", objj_msgSend(self.fieldBridgeIP, "stringValue"));
        objj_msgSend(objj_msgSend(self._network, "IP"), "setNetmask:", objj_msgSend(self.fieldBridgeNetmask, "stringValue"));
    }
    else
        objj_msgSend(self._network, "setIP:", nil);
    if (objj_msgSend(self.fieldBridgeName, "stringValue") != "")
    {
        if (!objj_msgSend(self._network, "bridge"))
            objj_msgSend(self._network, "setBridge:", objj_msgSend(objj_msgSend(TNLibvirtNetworkBridge, "alloc"), "init"));
        objj_msgSend(objj_msgSend(self._network, "bridge"), "setName:", objj_msgSend(self.fieldBridgeName, "stringValue"));
    }
    else
        objj_msgSend(self._network, "setBridge:", nil);
    if (objj_msgSend(self.checkBoxSTPEnabled, "state") == CPOnState)
    {
        if (!objj_msgSend(self._network, "bridge"))
            objj_msgSend(self._network, "setBridge:", objj_msgSend(objj_msgSend(TNLibvirtNetworkBridge, "alloc"), "init"));
        objj_msgSend(objj_msgSend(self._network, "bridge"), "setName:", objj_msgSend(self.fieldBridgeName, "stringValue"));
        objj_msgSend(objj_msgSend(self._network, "bridge"), "setEnableSTP:", (objj_msgSend(self.checkBoxSTPEnabled, "state") == CPOnState) ? YES : NO);
    }
    if (objj_msgSend(self._network, "bridge") && (objj_msgSend(objj_msgSend(self._network, "bridge"), "name") == "" || !objj_msgSend(objj_msgSend(self._network, "bridge"), "name")))
    {
        objj_msgSend(self.fieldErrorMessage, "setStringValue:", CPLocalizedString("You must set a name for the bridge", "You must set a name for the bridge"));
        return;
    }
    if (objj_msgSend(self.checkBoxBandwidthInbound, "state") == CPOnState)
    {
        if (!objj_msgSend(self._network, "bandwidth"))
            objj_msgSend(self._network, "setBandwidth:", objj_msgSend(TNLibvirtNetworkBandwidth, "defaultNetworkBandwidth"));
        if (!objj_msgSend(objj_msgSend(self._network, "bandwidth"), "inbound"))
            objj_msgSend(objj_msgSend(self._network, "bandwidth"), "setInbound:", objj_msgSend(objj_msgSend(TNLibvirtNetworkBandwidthInbound, "alloc"), "init"));
        if (objj_msgSend(self.fieldBandwidthInboundAverage, "stringValue") == "")
        {
            objj_msgSend(self.fieldErrorMessage, "setStringValue:", CPLocalizedString("You must set at least the \"average\" value for inbound limit", "You must set at least the \"average\" value for inbound limit"));
            return;
        }
        objj_msgSend(objj_msgSend(objj_msgSend(self._network, "bandwidth"), "inbound"), "setAverage:", objj_msgSend(self.fieldBandwidthInboundAverage, "intValue"));
        objj_msgSend(objj_msgSend(objj_msgSend(self._network, "bandwidth"), "inbound"), "setPeak:", objj_msgSend(self.fieldBandwidthInboundPeak, "intValue"));
        objj_msgSend(objj_msgSend(objj_msgSend(self._network, "bandwidth"), "inbound"), "setBurst:", objj_msgSend(self.fieldBandwidthInboundBurst, "intValue"));
    }
    else
    {
        objj_msgSend(objj_msgSend(self._network, "bandwidth"), "setInbound:", nil);
    }
    if (objj_msgSend(self.checkBoxBandwidthOutbound, "state") == CPOnState)
    {
        if (!objj_msgSend(self._network, "bandwidth"))
            objj_msgSend(self._network, "setBandwidth:", objj_msgSend(TNLibvirtNetworkBandwidth, "defaultNetworkBandwidth"));
        if (!objj_msgSend(objj_msgSend(self._network, "bandwidth"), "outbound"))
            objj_msgSend(objj_msgSend(self._network, "bandwidth"), "setOutbound:", objj_msgSend(objj_msgSend(TNLibvirtNetworkBandwidthOutbound, "alloc"), "init"));
        if (objj_msgSend(self.fieldBandwidthOutboundAverage, "stringValue") == "")
        {
            objj_msgSend(self.fieldErrorMessage, "setStringValue:", CPLocalizedString("You must set at least the \"average\" value for outbound limit", "You must set at least the \"average\" value for outbound limit"));
            return;
        }
        objj_msgSend(objj_msgSend(objj_msgSend(self._network, "bandwidth"), "outbound"), "setAverage:", objj_msgSend(self.fieldBandwidthOutboundAverage, "intValue"));
        objj_msgSend(objj_msgSend(objj_msgSend(self._network, "bandwidth"), "outbound"), "setPeak:", objj_msgSend(self.fieldBandwidthOutboundPeak, "intValue"));
        objj_msgSend(objj_msgSend(objj_msgSend(self._network, "bandwidth"), "outbound"), "setBurst:", objj_msgSend(self.fieldBandwidthOutboundBurst, "intValue"));
    }
    else
    {
        objj_msgSend(objj_msgSend(self._network, "bandwidth"), "setOutbound:", nil);
    }
    CPLog.info("Network information is :" + self._network);
    objj_msgSend(self._delegate, "defineNetwork:", self._network);
    objj_msgSend(self.mainPopover, "close");
}
,["void"]), new objj_method(sel_getUid("save:"), function $TNNetworkEditionController__save_(self, _cmd, sender)
{
    objj_msgSend(self, "save");
}
,["id","id"]), new objj_method(sel_getUid("addDHCPRange:"), function $TNNetworkEditionController__addDHCPRange_(self, _cmd, sender)
{
    var newRange = objj_msgSend(TNLibvirtNetworkIPDHCPRange, "defaultNetworkIPDHCPRangeWithStart:end:", "0.0.0.0", "0.0.0.0");
    objj_msgSend(self._datasourceDHCPRanges, "addObject:", newRange);
    objj_msgSend(self.tableViewRanges, "reloadData");
}
,["id","id"]), new objj_method(sel_getUid("removeDHCPRange:"), function $TNNetworkEditionController__removeDHCPRange_(self, _cmd, sender)
{
    if (objj_msgSend(self.tableViewRanges, "numberOfSelectedRows") <= 0)
        return;
    var selectedIndex = objj_msgSend(objj_msgSend(self.tableViewRanges, "selectedRowIndexes"), "firstIndex"),
        rangeObject = objj_msgSend(self._datasourceDHCPRanges, "removeObjectAtIndex:", selectedIndex);
    objj_msgSend(self.tableViewRanges, "reloadData");
}
,["id","id"]), new objj_method(sel_getUid("addDHCPHost:"), function $TNNetworkEditionController__addDHCPHost_(self, _cmd, sender)
{
    var newHost = objj_msgSend(TNLibvirtNetworkIPDHCPHost, "defaultNetworkDHCPHostWithName:MAC:IP:", CPBundleLocalizedString("domain.com", "domain.com"), "00:00:00:00:00:00", "0.0.0.0");
    objj_msgSend(self._datasourceDHCPHosts, "addObject:", newHost);
    objj_msgSend(self.tableViewHosts, "reloadData");
}
,["id","id"]), new objj_method(sel_getUid("removeDHCPHost:"), function $TNNetworkEditionController__removeDHCPHost_(self, _cmd, sender)
{
    if (objj_msgSend(self.tableViewHosts, "numberOfSelectedRows") <= 0)
        return;
    var selectedIndex = objj_msgSend(objj_msgSend(self.tableViewHosts, "selectedRowIndexes"), "firstIndex"),
        hostsObject = objj_msgSend(self._datasourceDHCPHosts, "removeObjectAtIndex:", selectedIndex);
    objj_msgSend(self.tableViewHosts, "reloadData");
}
,["id","id"]), new objj_method(sel_getUid("openWindow:"), function $TNNetworkEditionController__openWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self, "update");
    if (objj_msgSend(aSender, "isKindOfClass:", CPTableView))
    {
        var rect = objj_msgSend(aSender, "rectOfRow:", objj_msgSend(aSender, "selectedRow"));
        rect.origin.y += rect.size.height / 2;
        rect.origin.x += rect.size.width / 2;
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", CGRectMake(rect.origin.x, rect.origin.y, 10, 10), aSender, nil);
    }
    else
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil)
    objj_msgSend(self.mainPopover, "makeFirstResponder:", self.fieldNetworkName);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonOK);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNNetworkEditionController__closeWindow_(self, _cmd, sender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("forwardModeChanged:"), function $TNNetworkEditionController__forwardModeChanged_(self, _cmd, sender)
{
    objj_msgSend(self.buttonForwardDevice, "removeAllItems");
    switch (objj_msgSend(self.buttonForwardMode, "title"))
    {
        case TNLibvirtNetworkForwardModeIsolated:
            objj_msgSend(self, "GUIForIsolatedMode");
            break;
        case TNLibvirtNetworkForwardModeRoute:
        case TNLibvirtNetworkForwardModeNAT:
            objj_msgSend(self, "GUIForNATRouteMode");
            break;
        case TNLibvirtNetworkForwardModePrivate:
        case TNLibvirtNetworkForwardModeBridge:
            objj_msgSend(self, "GUIForBridgeMode");
            break;
    }
}
,["id","id"]), new objj_method(sel_getUid("DHCPChange:"), function $TNNetworkEditionController__DHCPChange_(self, _cmd, aSender)
{
    if (objj_msgSend(self.checkBoxDHCPEnabled, "state") == CPOnState)
    {
        if (!objj_msgSend(self._network, "IP"))
            objj_msgSend(self._network, "setIP:", objj_msgSend(objj_msgSend(TNLibvirtNetworkIP, "alloc"), "init"));
        if (!objj_msgSend(objj_msgSend(self._network, "IP"), "DHCP"))
            objj_msgSend(objj_msgSend(self._network, "IP"), "setDHCP:", objj_msgSend(objj_msgSend(TNLibvirtNetworkIPDHCP, "alloc"), "init"));
        objj_msgSend(self._datasourceDHCPHosts, "setContent:", objj_msgSend(objj_msgSend(objj_msgSend(self._network, "IP"), "DHCP"), "hosts"));
        objj_msgSend(self._datasourceDHCPRanges, "setContent:", objj_msgSend(objj_msgSend(objj_msgSend(self._network, "IP"), "DHCP"), "ranges"));
        objj_msgSend(self.tableViewRanges, "setEnabled:", YES);
        objj_msgSend(self.tableViewHosts, "setEnabled:", YES);
        objj_msgSend(objj_msgSend(self.buttonBarControlDHCPRanges, "buttons"), "makeObjectsPerformSelector:withObject:", sel_getUid("setEnabled:"), YES);
        objj_msgSend(objj_msgSend(self.buttonBarControlDHCPHosts, "buttons"), "makeObjectsPerformSelector:withObject:", sel_getUid("setEnabled:"), YES);
    }
    else
    {
        objj_msgSend(self._datasourceDHCPRanges, "removeAllObjects");
        objj_msgSend(self._datasourceDHCPHosts, "removeAllObjects");
        objj_msgSend(self.tableViewHosts, "reloadData");
        objj_msgSend(self.tableViewRanges, "reloadData");
        objj_msgSend(objj_msgSend(self._network, "IP"), "setDHCP:", nil);
        objj_msgSend(self.tableViewRanges, "setEnabled:", NO);
        objj_msgSend(self.tableViewHosts, "setEnabled:", NO);
        objj_msgSend(self._plusButtonDHCPHosts, "setEnabled:", NO);
        objj_msgSend(self._minusButtonDHCPHosts, "setEnabled:", NO);
        objj_msgSend(self._plusButtonDHCPRanges, "setEnabled:", NO);
        objj_msgSend(self._minusButtonDHCPRanges, "setEnabled:", NO);
        objj_msgSend(objj_msgSend(self.buttonBarControlDHCPRanges, "buttons"), "makeObjectsPerformSelector:withObject:", sel_getUid("setEnabled:"), NO);
        objj_msgSend(objj_msgSend(self.buttonBarControlDHCPHosts, "buttons"), "makeObjectsPerformSelector:withObject:", sel_getUid("setEnabled:"), NO);
    }
}
,["id","id"]), new objj_method(sel_getUid("inboundLimitChange:"), function $TNNetworkEditionController__inboundLimitChange_(self, _cmd, aSender)
{
    if (objj_msgSend(self.checkBoxBandwidthInbound, "state") == CPOnState)
    {
        objj_msgSend(self.fieldBandwidthInboundAverage, "setEnabled:", YES);
        objj_msgSend(self.fieldBandwidthInboundPeak, "setEnabled:", YES);
        objj_msgSend(self.fieldBandwidthInboundBurst, "setEnabled:", YES);
        if (!objj_msgSend(self._network, "bandwidth"))
            objj_msgSend(self._network, "setBandwidth:", objj_msgSend(TNLibvirtNetworkBandwidth, "defaultNetworkBandwidth"));
    }
    else
    {
        objj_msgSend(self.fieldBandwidthInboundAverage, "setEnabled:", NO);
        objj_msgSend(self.fieldBandwidthInboundPeak, "setEnabled:", NO);
        objj_msgSend(self.fieldBandwidthInboundBurst, "setEnabled:", NO);
        objj_msgSend(self.fieldBandwidthInboundAverage, "setStringValue:", "");
        objj_msgSend(self.fieldBandwidthInboundPeak, "setStringValue:", "");
        objj_msgSend(self.fieldBandwidthInboundBurst, "setStringValue:", "");
        if (!objj_msgSend(self._network, "bandwidth"))
            objj_msgSend(objj_msgSend(self._network, "bandwidth"), "setInbound:", nil);
    }
}
,["id","id"]), new objj_method(sel_getUid("outboundLimitChange:"), function $TNNetworkEditionController__outboundLimitChange_(self, _cmd, aSender)
{
    if (objj_msgSend(self.checkBoxBandwidthOutbound, "state") == CPOnState)
    {
        objj_msgSend(self.fieldBandwidthOutboundAverage, "setEnabled:", YES);
        objj_msgSend(self.fieldBandwidthOutboundPeak, "setEnabled:", YES);
        objj_msgSend(self.fieldBandwidthOutboundBurst, "setEnabled:", YES);
        if (!objj_msgSend(self._network, "bandwidth"))
            objj_msgSend(self._network, "setBandwidth:", objj_msgSend(TNLibvirtNetworkBandwidth, "defaultNetworkBandwidth"));
    }
    else
    {
        objj_msgSend(self.fieldBandwidthOutboundAverage, "setEnabled:", NO);
        objj_msgSend(self.fieldBandwidthOutboundPeak, "setEnabled:", NO);
        objj_msgSend(self.fieldBandwidthOutboundBurst, "setEnabled:", NO);
        objj_msgSend(self.fieldBandwidthOutboundAverage, "setStringValue:", "");
        objj_msgSend(self.fieldBandwidthOutboundPeak, "setStringValue:", "");
        objj_msgSend(self.fieldBandwidthOutboundBurst, "setStringValue:", "");
        if (!objj_msgSend(self._network, "bandwidth"))
            objj_msgSend(objj_msgSend(self._network, "bandwidth"), "setOutbound:", nil);
    }
}
,["id","id"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNNetworkEditionController), comment);
}p;20;Model/TNLibvirtNet.jt;1201;@STATIC;1.0;i;18;TNLibvirtNetwork.ji;27;TNLibvirtNetworkBandwidth.ji;34;TNLibvirtNetworkBandwidthInbound.ji;35;TNLibvirtNetworkBandwidthOutbound.ji;22;TNLibvirtNetworkBase.ji;24;TNLibvirtNetworkBridge.ji;24;TNLibvirtNetworkDomain.ji;25;TNLibvirtNetworkForward.ji;34;TNLibvirtNetworkForwardInterface.ji;20;TNLibvirtNetworkIP.ji;24;TNLibvirtNetworkIPDHCP.ji;28;TNLibvirtNetworkIPDHCPHost.ji;29;TNLibvirtNetworkIPDHCPRange.ji;24;TNLibvirtNetworkIPTFTP.jt;745;objj_executeFile("TNLibvirtNetwork.j", YES);
objj_executeFile("TNLibvirtNetworkBandwidth.j", YES);
objj_executeFile("TNLibvirtNetworkBandwidthInbound.j", YES);
objj_executeFile("TNLibvirtNetworkBandwidthOutbound.j", YES);
objj_executeFile("TNLibvirtNetworkBase.j", YES);
objj_executeFile("TNLibvirtNetworkBridge.j", YES);
objj_executeFile("TNLibvirtNetworkDomain.j", YES);
objj_executeFile("TNLibvirtNetworkForward.j", YES);
objj_executeFile("TNLibvirtNetworkForwardInterface.j", YES);
objj_executeFile("TNLibvirtNetworkIP.j", YES);
objj_executeFile("TNLibvirtNetworkIPDHCP.j", YES);
objj_executeFile("TNLibvirtNetworkIPDHCPHost.j", YES);
objj_executeFile("TNLibvirtNetworkIPDHCPRange.j", YES);
objj_executeFile("TNLibvirtNetworkIPTFTP.j", YES);p;24;Model/TNLibvirtNetwork.jt;7358;@STATIC;1.0;i;27;TNLibvirtNetworkBandwidth.ji;22;TNLibvirtNetworkBase.ji;24;TNLibvirtNetworkBridge.ji;24;TNLibvirtNetworkDomain.ji;25;TNLibvirtNetworkForward.ji;20;TNLibvirtNetworkIP.jt;7167;objj_executeFile("TNLibvirtNetworkBandwidth.j", YES);
objj_executeFile("TNLibvirtNetworkBase.j", YES);
objj_executeFile("TNLibvirtNetworkBridge.j", YES);
objj_executeFile("TNLibvirtNetworkDomain.j", YES);
objj_executeFile("TNLibvirtNetworkForward.j", YES);
objj_executeFile("TNLibvirtNetworkIP.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtNetworkBase, "TNLibvirtNetwork"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_name"), new objj_ivar("_UUID"), new objj_ivar("_bandwidth"), new objj_ivar("_bridge"), new objj_ivar("_domain"), new objj_ivar("_forward"), new objj_ivar("_IP"), new objj_ivar("_active"), new objj_ivar("_autostart")]);
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("name"), function $TNLibvirtNetwork__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNLibvirtNetwork__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("UUID"), function $TNLibvirtNetwork__UUID(self, _cmd)
{
return self._UUID;
}
,["CPString"]), new objj_method(sel_getUid("setUUID:"), function $TNLibvirtNetwork__setUUID_(self, _cmd, newValue)
{
self._UUID = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("bandwidth"), function $TNLibvirtNetwork__bandwidth(self, _cmd)
{
return self._bandwidth;
}
,["TNLibvirtNetworkBandwidth"]), new objj_method(sel_getUid("setBandwidth:"), function $TNLibvirtNetwork__setBandwidth_(self, _cmd, newValue)
{
self._bandwidth = newValue;
}
,["void","TNLibvirtNetworkBandwidth"]), new objj_method(sel_getUid("bridge"), function $TNLibvirtNetwork__bridge(self, _cmd)
{
return self._bridge;
}
,["TNLibvirtNetworkBridge"]), new objj_method(sel_getUid("setBridge:"), function $TNLibvirtNetwork__setBridge_(self, _cmd, newValue)
{
self._bridge = newValue;
}
,["void","TNLibvirtNetworkBridge"]), new objj_method(sel_getUid("domain"), function $TNLibvirtNetwork__domain(self, _cmd)
{
return self._domain;
}
,["TNLibvirtNetworkDomain"]), new objj_method(sel_getUid("setDomain:"), function $TNLibvirtNetwork__setDomain_(self, _cmd, newValue)
{
self._domain = newValue;
}
,["void","TNLibvirtNetworkDomain"]), new objj_method(sel_getUid("forward"), function $TNLibvirtNetwork__forward(self, _cmd)
{
return self._forward;
}
,["TNLibvirtNetworkForward"]), new objj_method(sel_getUid("setForward:"), function $TNLibvirtNetwork__setForward_(self, _cmd, newValue)
{
self._forward = newValue;
}
,["void","TNLibvirtNetworkForward"]), new objj_method(sel_getUid("IP"), function $TNLibvirtNetwork__IP(self, _cmd)
{
return self._IP;
}
,["TNLibvirtNetworkIP"]), new objj_method(sel_getUid("setIP:"), function $TNLibvirtNetwork__setIP_(self, _cmd, newValue)
{
self._IP = newValue;
}
,["void","TNLibvirtNetworkIP"]), new objj_method(sel_getUid("isActive"), function $TNLibvirtNetwork__isActive(self, _cmd)
{
return self._active;
}
,["BOOL"]), new objj_method(sel_getUid("setActive:"), function $TNLibvirtNetwork__setActive_(self, _cmd, newValue)
{
self._active = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isAutostart"), function $TNLibvirtNetwork__isAutostart(self, _cmd)
{
return self._autostart;
}
,["BOOL"]), new objj_method(sel_getUid("setAutostart:"), function $TNLibvirtNetwork__setAutostart_(self, _cmd, newValue)
{
self._autostart = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtNetwork__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetwork").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "network")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid network");
        self._name = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "name"), "text");
        self._UUID = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "uuid"), "text");
        if (objj_msgSend(aNode, "firstChildWithName:", "bridge"))
            self._bridge = objj_msgSend(objj_msgSend(TNLibvirtNetworkBridge, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "bridge"));
        if (objj_msgSend(aNode, "firstChildWithName:", "forward"))
            self._forward = objj_msgSend(objj_msgSend(TNLibvirtNetworkForward, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "forward"));
        if (objj_msgSend(aNode, "firstChildWithName:", "ip"))
            self._IP = objj_msgSend(objj_msgSend(TNLibvirtNetworkIP, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "ip"));
        if (objj_msgSend(aNode, "firstChildWithName:", "domain"))
            self._domain = objj_msgSend(objj_msgSend(TNLibvirtNetworkDomain, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "domain"));
        if (objj_msgSend(aNode, "firstChildWithName:", "bandwidth"))
            self._bandwidth = objj_msgSend(objj_msgSend(TNLibvirtNetworkBandwidth, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "bandwidth"));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtNetwork__XMLNode(self, _cmd)
{
    if (!self._name)
        objj_msgSend(CPException, "raise:reason:", "Missing name", "name is required");
    if (!self._UUID)
        objj_msgSend(CPException, "raise:reason:", "Missing UUID", "UUID is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "network");
    if (self._name)
    {
        objj_msgSend(node, "addChildWithName:", "name");
        objj_msgSend(node, "addTextNode:", self._name);
        objj_msgSend(node, "up");
    }
    if (self._UUID)
    {
        objj_msgSend(node, "addChildWithName:", "uuid");
        objj_msgSend(node, "addTextNode:", self._UUID);
        objj_msgSend(node, "up");
    }
    if (self._bridge)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._bridge, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._forward)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._forward, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._IP)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._IP, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._domain)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._domain, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._bandwidth)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._bandwidth, "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultNetworkWithName:UUID:"), function $TNLibvirtNetwork__defaultNetworkWithName_UUID_(self, _cmd, aName, anUUID)
{
    var network = objj_msgSend(objj_msgSend(TNLibvirtNetwork, "alloc"), "init");
    objj_msgSend(network, "setName:", aName);
    objj_msgSend(network, "setUUID:", anUUID);
    return network;
}
,["TNLibvirtNetwork","CPString","CPString"])]);
}p;33;Model/TNLibvirtNetworkBandwidth.jt;3131;@STATIC;1.0;i;22;TNLibvirtNetworkBase.ji;34;TNLibvirtNetworkBandwidthInbound.ji;35;TNLibvirtNetworkBandwidthOutbound.jt;3006;objj_executeFile("TNLibvirtNetworkBase.j", YES);
objj_executeFile("TNLibvirtNetworkBandwidthInbound.j", YES);
objj_executeFile("TNLibvirtNetworkBandwidthOutbound.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtNetworkBase, "TNLibvirtNetworkBandwidth"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_inbound"), new objj_ivar("_outbound")]);
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("inbound"), function $TNLibvirtNetworkBandwidth__inbound(self, _cmd)
{
return self._inbound;
}
,["TNLibvirtNetworkBandwidthInbound"]), new objj_method(sel_getUid("setInbound:"), function $TNLibvirtNetworkBandwidth__setInbound_(self, _cmd, newValue)
{
self._inbound = newValue;
}
,["void","TNLibvirtNetworkBandwidthInbound"]), new objj_method(sel_getUid("outbound"), function $TNLibvirtNetworkBandwidth__outbound(self, _cmd)
{
return self._outbound;
}
,["TNLibvirtNetworkBandwidthOutbound"]), new objj_method(sel_getUid("setOutbound:"), function $TNLibvirtNetworkBandwidth__setOutbound_(self, _cmd, newValue)
{
self._outbound = newValue;
}
,["void","TNLibvirtNetworkBandwidthOutbound"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtNetworkBandwidth__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkBandwidth").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "bandwidth")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid bandwidth");
        if (objj_msgSend(aNode, "containsChildrenWithName:", "inbound"))
            self._inbound = objj_msgSend(objj_msgSend(TNLibvirtNetworkBandwidthInbound, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "inbound"));
        if (objj_msgSend(aNode, "containsChildrenWithName:", "outbound"))
            self._outbound = objj_msgSend(objj_msgSend(TNLibvirtNetworkBandwidthOutbound, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "outbound"));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtNetworkBandwidth__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "bandwidth");
    if (self._inbound)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._inbound, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._outbound)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._outbound, "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultNetworkBandwidth"), function $TNLibvirtNetworkBandwidth__defaultNetworkBandwidth(self, _cmd)
{
    var bandwidth = objj_msgSend(objj_msgSend(TNLibvirtNetworkBandwidth, "alloc"), "init");
    return bandwidth;
}
,["TNLibvirtNetworkBandwidth"])]);
}p;40;Model/TNLibvirtNetworkBandwidthInbound.jt;3306;@STATIC;1.0;i;22;TNLibvirtNetworkBase.jt;3260;objj_executeFile("TNLibvirtNetworkBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtNetworkBase, "TNLibvirtNetworkBandwidthInbound"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_average"), new objj_ivar("_burst"), new objj_ivar("_peak")]);
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("average"), function $TNLibvirtNetworkBandwidthInbound__average(self, _cmd)
{
return self._average;
}
,["CPString"]), new objj_method(sel_getUid("setAverage:"), function $TNLibvirtNetworkBandwidthInbound__setAverage_(self, _cmd, newValue)
{
self._average = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("burst"), function $TNLibvirtNetworkBandwidthInbound__burst(self, _cmd)
{
return self._burst;
}
,["CPString"]), new objj_method(sel_getUid("setBurst:"), function $TNLibvirtNetworkBandwidthInbound__setBurst_(self, _cmd, newValue)
{
self._burst = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("peak"), function $TNLibvirtNetworkBandwidthInbound__peak(self, _cmd)
{
return self._peak;
}
,["CPString"]), new objj_method(sel_getUid("setPeak:"), function $TNLibvirtNetworkBandwidthInbound__setPeak_(self, _cmd, newValue)
{
self._peak = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtNetworkBandwidthInbound__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkBandwidthInbound").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "inbound")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid inbound");
        self._average = objj_msgSend(aNode, "valueForAttribute:", "average");
        self._peak = objj_msgSend(aNode, "valueForAttribute:", "peak");
        self._burst = objj_msgSend(aNode, "valueForAttribute:", "burst");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtNetworkBandwidthInbound__XMLNode(self, _cmd)
{
    if (!self._average)
        objj_msgSend(CPException, "raise:reason:", "Missing average", "average is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "inbound");
    if (self._average)
        objj_msgSend(node, "setValue:forAttribute:", self._average, "average");
    if (self._peak)
        objj_msgSend(node, "setValue:forAttribute:", self._peak, "peak");
    if (self._burst)
        objj_msgSend(node, "setValue:forAttribute:", self._burst, "burst");
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultNetworkBandwidthInboundWithAverage:peak:burst:"), function $TNLibvirtNetworkBandwidthInbound__defaultNetworkBandwidthInboundWithAverage_peak_burst_(self, _cmd, anAverage, aPeak, aBurst)
{
    var inbound = objj_msgSend(objj_msgSend(TNLibvirtNetworkBandwidthInbound, "alloc"), "init");
    objj_msgSend(inbound, "setAverage:", anAverage);
    objj_msgSend(inbound, "setPeak:", aPeak);
    objj_msgSend(inbound, "setBurst:", aBurst);
    return inbound;
}
,["TNLibvirtNetworkBandwidthInbound","CPString","CPString","CPString"])]);
}p;41;Model/TNLibvirtNetworkBandwidthOutbound.jt;3329;@STATIC;1.0;i;22;TNLibvirtNetworkBase.jt;3283;objj_executeFile("TNLibvirtNetworkBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtNetworkBase, "TNLibvirtNetworkBandwidthOutbound"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_average"), new objj_ivar("_burst"), new objj_ivar("_peak")]);
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("average"), function $TNLibvirtNetworkBandwidthOutbound__average(self, _cmd)
{
return self._average;
}
,["CPString"]), new objj_method(sel_getUid("setAverage:"), function $TNLibvirtNetworkBandwidthOutbound__setAverage_(self, _cmd, newValue)
{
self._average = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("burst"), function $TNLibvirtNetworkBandwidthOutbound__burst(self, _cmd)
{
return self._burst;
}
,["CPString"]), new objj_method(sel_getUid("setBurst:"), function $TNLibvirtNetworkBandwidthOutbound__setBurst_(self, _cmd, newValue)
{
self._burst = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("peak"), function $TNLibvirtNetworkBandwidthOutbound__peak(self, _cmd)
{
return self._peak;
}
,["CPString"]), new objj_method(sel_getUid("setPeak:"), function $TNLibvirtNetworkBandwidthOutbound__setPeak_(self, _cmd, newValue)
{
self._peak = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtNetworkBandwidthOutbound__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkBandwidthOutbound").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "outbound")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid outbound");
        self._average = objj_msgSend(aNode, "valueForAttribute:", "average");
        self._peak = objj_msgSend(aNode, "valueForAttribute:", "peak");
        self._burst = objj_msgSend(aNode, "valueForAttribute:", "burst");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtNetworkBandwidthOutbound__XMLNode(self, _cmd)
{
    if (!self._average)
        objj_msgSend(CPException, "raise:reason:", "Missing average", "average is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "outbound");
    if (self._average)
        objj_msgSend(node, "setValue:forAttribute:", self._average, "average");
    if (self._peak)
        objj_msgSend(node, "setValue:forAttribute:", self._peak, "peak");
    if (self._burst)
        objj_msgSend(node, "setValue:forAttribute:", self._burst, "burst");
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultNetworkBandwidthOutboundWithAverage:peak:burst:"), function $TNLibvirtNetworkBandwidthOutbound__defaultNetworkBandwidthOutboundWithAverage_peak_burst_(self, _cmd, anAverage, aPeak, aBurst)
{
    var outbound = objj_msgSend(objj_msgSend(TNLibvirtNetworkBandwidthOutbound, "alloc"), "init");
    objj_msgSend(outbound, "setAverage:", anAverage);
    objj_msgSend(outbound, "setPeak:", aPeak);
    objj_msgSend(outbound, "setBurst:", aBurst);
    return outbound;
}
,["TNLibvirtNetworkBandwidthOutbound","CPString","CPString","CPString"])]);
}p;28;Model/TNLibvirtNetworkBase.jt;1073;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.jt;993;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNLibvirtNetworkBase"),
meta_class = the_class.isa;
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtNetworkBase__initWithXMLNode_(self, _cmd, aNode)
{
    if (!aNode || (typeof(aNode) == "undefined"))
        return nil;
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkBase").super_class }, "init"))
        return self;
}
,["TNLibvirtBase","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtNetworkBase__XMLNode(self, _cmd)
{
    return nil;
}
,["TNXMLNode"]), new objj_method(sel_getUid("description"), function $TNLibvirtNetworkBase__description(self, _cmd)
{
    return objj_msgSend(objj_msgSend(self, "XMLNode"), "stringValue");
}
,["CPString"])]);
}p;30;Model/TNLibvirtNetworkBridge.jt;3299;@STATIC;1.0;i;22;TNLibvirtNetworkBase.jt;3253;objj_executeFile("TNLibvirtNetworkBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtNetworkBase, "TNLibvirtNetworkBridge"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_stp"), new objj_ivar("_delay"), new objj_ivar("_name")]);
       
       


       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isSTPEnabled"), function $TNLibvirtNetworkBridge__isSTPEnabled(self, _cmd)
{
return self._stp;
}
,["BOOL"]), new objj_method(sel_getUid("setEnableSTP:"), function $TNLibvirtNetworkBridge__setEnableSTP_(self, _cmd, newValue)
{
self._stp = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("delay"), function $TNLibvirtNetworkBridge__delay(self, _cmd)
{
return self._delay;
}
,["CPString"]), new objj_method(sel_getUid("setDelay:"), function $TNLibvirtNetworkBridge__setDelay_(self, _cmd, newValue)
{
self._delay = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("name"), function $TNLibvirtNetworkBridge__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNLibvirtNetworkBridge__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("init"), function $TNLibvirtNetworkBridge__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkBridge").super_class }, "init"))
    {
        self._stp = YES;
        self._delay = "0";
    }
    return self;
}
,["TNLibvirtNetworkBridge"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtNetworkBridge__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkBridge").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "bridge")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid bridge");
        self._name = objj_msgSend(aNode, "valueForAttribute:", "name");
        self._stp = (objj_msgSend(aNode, "valueForAttribute:", "stp") == "on");
        self._delay = objj_msgSend(aNode, "valueForAttribute:", "delay");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtNetworkBridge__XMLNode(self, _cmd)
{
    if (!self._name)
        objj_msgSend(CPException, "raise:reason:", "Missing name", "name is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "bridge");
    if (self._name)
        objj_msgSend(node, "setValue:forAttribute:", self._name, "name");
    if (self._stp)
        objj_msgSend(node, "setValue:forAttribute:", self._stp ? "on" : "off", "stp");
    if (self._delay)
        objj_msgSend(node, "setValue:forAttribute:", self._delay, "delay");
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultNetworkBridgeWithName:"), function $TNLibvirtNetworkBridge__defaultNetworkBridgeWithName_(self, _cmd, aName)
{
    var bridge = objj_msgSend(objj_msgSend(TNLibvirtNetworkBridge, "alloc"), "init");
    objj_msgSend(bridge, "setName:", aName);
    return bridge;
}
,["TNLibvirtNetworkBridge","CPString"])]);
}p;30;Model/TNLibvirtNetworkDomain.jt;1981;@STATIC;1.0;i;22;TNLibvirtNetworkBase.jt;1935;objj_executeFile("TNLibvirtNetworkBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtNetworkBase, "TNLibvirtNetworkDomain"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_name")]);
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("name"), function $TNLibvirtNetworkDomain__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNLibvirtNetworkDomain__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtNetworkDomain__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkDomain").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "domain")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid domain");
        self._name = objj_msgSend(aNode, "valueForAttribute:", "name");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtNetworkDomain__XMLNode(self, _cmd)
{
    if (!self._name)
        objj_msgSend(CPException, "raise:reason:", "Missing name", "name is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "domain");
    if (self._name)
        objj_msgSend(node, "setValue:forAttribute:", self._name, "name");
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultNetworkDomainWithName:"), function $TNLibvirtNetworkDomain__defaultNetworkDomainWithName_(self, _cmd, aName)
{
    var domain = objj_msgSend(objj_msgSend(TNLibvirtNetworkDomain, "alloc"), "init");
    objj_msgSend(domain, "setName:", aName);
    return domain;
}
,["TNLibvirtNetworkDomain","CPString"])]);
}p;31;Model/TNLibvirtNetworkForward.jt;4607;@STATIC;1.0;i;22;TNLibvirtNetworkBase.ji;34;TNLibvirtNetworkForwardInterface.jt;4522;objj_executeFile("TNLibvirtNetworkBase.j", YES);
objj_executeFile("TNLibvirtNetworkForwardInterface.j", YES);
TNLibvirtNetworkForwardModeNAT = "nat";
TNLibvirtNetworkForwardModeRoute = "route";
TNLibvirtNetworkForwardModeBridge = "bridge";
TNLibvirtNetworkForwardModePrivate = "private";
TNLibvirtNetworkForwardModeVEPA = "vepa";
TNLibvirtNetworkForwardModePrivate = "private";
TNLibvirtNetworkForwardModePassthrough = "passthrough";
TNLibvirtNetworkForwardModeIsolated = "isolated";
TNLibvirtNetworkForwardModes = [ TNLibvirtNetworkForwardModeBridge,
                                            TNLibvirtNetworkForwardModePrivate,
                                            TNLibvirtNetworkForwardModeNAT,
                                            TNLibvirtNetworkForwardModeRoute,
                                            TNLibvirtNetworkForwardModeIsolated];
{var the_class = objj_allocateClassPair(TNLibvirtNetworkBase, "TNLibvirtNetworkForward"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_interfaces"), new objj_ivar("_dev"), new objj_ivar("_mode")]);
       
       


       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("interfaces"), function $TNLibvirtNetworkForward__interfaces(self, _cmd)
{
return self._interfaces;
}
,["CPArray"]), new objj_method(sel_getUid("setInterfaces:"), function $TNLibvirtNetworkForward__setInterfaces_(self, _cmd, newValue)
{
self._interfaces = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("dev"), function $TNLibvirtNetworkForward__dev(self, _cmd)
{
return self._dev;
}
,["CPString"]), new objj_method(sel_getUid("setDev:"), function $TNLibvirtNetworkForward__setDev_(self, _cmd, newValue)
{
self._dev = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("mode"), function $TNLibvirtNetworkForward__mode(self, _cmd)
{
return self._mode;
}
,["CPString"]), new objj_method(sel_getUid("setMode:"), function $TNLibvirtNetworkForward__setMode_(self, _cmd, newValue)
{
self._mode = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("init"), function $TNLibvirtNetworkForward__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkForward").super_class }, "init"))
    {
        self._interfaces = objj_msgSend(CPArray, "array");
    }
    return self;
}
,["TNLibvirtNetworkForward"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtNetworkForward__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkForward").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "forward")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid forward");
        self._mode = objj_msgSend(aNode, "valueForAttribute:", "mode");
        self._dev = objj_msgSend(aNode, "valueForAttribute:", "dev");
        self._interfaces = objj_msgSend(CPArray, "array");
        var interfaceNodes = objj_msgSend(aNode, "ownChildrenWithName:", "interface");
        for (var i = 0; i < objj_msgSend(interfaceNodes, "count"); i++)
            objj_msgSend(self._interfaces, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtNetworkForwardInterface, "alloc"), "initWithXMLNode:", objj_msgSend(interfaceNodes, "objectAtIndex:", i)));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtNetworkForward__XMLNode(self, _cmd)
{
    if (!self._mode)
        return;
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "forward");
    if (self._mode)
    {
        objj_msgSend(node, "setValue:forAttribute:", self._mode, "mode");
    }
    if (self._dev)
    {
        objj_msgSend(node, "setValue:forAttribute:", self._dev, "dev");
    }
    for (var i = 0; i < objj_msgSend(self._interfaces, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._interfaces, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultNetworkForwardWithMode:"), function $TNLibvirtNetworkForward__defaultNetworkForwardWithMode_(self, _cmd, aMode)
{
    var forward = objj_msgSend(objj_msgSend(TNLibvirtNetworkForward, "alloc"), "init");
    objj_msgSend(forward, "setMode:", aMode);
    return forward;
}
,["TNLibvirtNetworkForward","CPString"])]);
}p;40;Model/TNLibvirtNetworkForwardInterface.jt;2092;@STATIC;1.0;i;22;TNLibvirtNetworkBase.jt;2046;objj_executeFile("TNLibvirtNetworkBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtNetworkBase, "TNLibvirtNetworkForwardInterface"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_dev")]);
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("dev"), function $TNLibvirtNetworkForwardInterface__dev(self, _cmd)
{
return self._dev;
}
,["CPString"]), new objj_method(sel_getUid("setDev:"), function $TNLibvirtNetworkForwardInterface__setDev_(self, _cmd, newValue)
{
self._dev = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtNetworkForwardInterface__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkForwardInterface").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "interface")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid interface");
        self._dev = objj_msgSend(aNode, "valueForAttribute:", "dev");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtNetworkForwardInterface__XMLNode(self, _cmd)
{
    if (!self._dev)
        objj_msgSend(CPException, "raise:reason:", "Missing dev", "dev is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "interface");
    if (self._dev)
    {
        objj_msgSend(node, "setValue:forAttribute:", self._dev, "dev");
    }
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultNetworkForwardInterfaceWithDev:"), function $TNLibvirtNetworkForwardInterface__defaultNetworkForwardInterfaceWithDev_(self, _cmd, aDev)
{
    var interf = objj_msgSend(objj_msgSend(TNLibvirtNetworkForwardInterface, "alloc"), "init");
    objj_msgSend(interf, "setDev:", aDev);
    return interf;
}
,["TNLibvirtNetworkForwardInterface","CPString"])]);
}p;26;Model/TNLibvirtNetworkIP.jt;5000;@STATIC;1.0;i;22;TNLibvirtNetworkBase.ji;24;TNLibvirtNetworkIPDHCP.ji;24;TNLibvirtNetworkIPTFTP.jt;4896;objj_executeFile("TNLibvirtNetworkBase.j", YES);
objj_executeFile("TNLibvirtNetworkIPDHCP.j", YES);
objj_executeFile("TNLibvirtNetworkIPTFTP.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtNetworkBase, "TNLibvirtNetworkIP"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_address"), new objj_ivar("_family"), new objj_ivar("_netmask"), new objj_ivar("_prefix"), new objj_ivar("_DHCP"), new objj_ivar("_TFTP")]);
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("address"), function $TNLibvirtNetworkIP__address(self, _cmd)
{
return self._address;
}
,["CPString"]), new objj_method(sel_getUid("setAddress:"), function $TNLibvirtNetworkIP__setAddress_(self, _cmd, newValue)
{
self._address = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("family"), function $TNLibvirtNetworkIP__family(self, _cmd)
{
return self._family;
}
,["CPString"]), new objj_method(sel_getUid("setFamily:"), function $TNLibvirtNetworkIP__setFamily_(self, _cmd, newValue)
{
self._family = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("netmask"), function $TNLibvirtNetworkIP__netmask(self, _cmd)
{
return self._netmask;
}
,["CPString"]), new objj_method(sel_getUid("setNetmask:"), function $TNLibvirtNetworkIP__setNetmask_(self, _cmd, newValue)
{
self._netmask = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("prefix"), function $TNLibvirtNetworkIP__prefix(self, _cmd)
{
return self._prefix;
}
,["CPString"]), new objj_method(sel_getUid("setPrefix:"), function $TNLibvirtNetworkIP__setPrefix_(self, _cmd, newValue)
{
self._prefix = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("DHCP"), function $TNLibvirtNetworkIP__DHCP(self, _cmd)
{
return self._DHCP;
}
,["TNLibvirtNetworkIPDHCP"]), new objj_method(sel_getUid("setDHCP:"), function $TNLibvirtNetworkIP__setDHCP_(self, _cmd, newValue)
{
self._DHCP = newValue;
}
,["void","TNLibvirtNetworkIPDHCP"]), new objj_method(sel_getUid("TFTP"), function $TNLibvirtNetworkIP__TFTP(self, _cmd)
{
return self._TFTP;
}
,["TNLibvirtNetworkIPTFTP"]), new objj_method(sel_getUid("setTFTP:"), function $TNLibvirtNetworkIP__setTFTP_(self, _cmd, newValue)
{
self._TFTP = newValue;
}
,["void","TNLibvirtNetworkIPTFTP"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtNetworkIP__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkIP").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "ip")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid IP");
        self._address = objj_msgSend(aNode, "valueForAttribute:", "address");
        self._netmask = objj_msgSend(aNode, "valueForAttribute:", "netmask");
        self._prefix = objj_msgSend(aNode, "valueForAttribute:", "prefix");
        self._family = objj_msgSend(aNode, "valueForAttribute:", "family");
        if (objj_msgSend(aNode, "containsChildrenWithName:", "dhcp"))
            self._DHCP = objj_msgSend(objj_msgSend(TNLibvirtNetworkIPDHCP, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "dhcp"));
        if (objj_msgSend(aNode, "containsChildrenWithName:", "tftp"))
            self._TFTP = objj_msgSend(objj_msgSend(TNLibvirtNetworkIPTFTP, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "tftp"));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtNetworkIP__XMLNode(self, _cmd)
{
    if (!self._address)
        objj_msgSend(CPException, "raise:reason:", "Missing address", "address is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "ip");
    if (self._address)
        objj_msgSend(node, "setValue:forAttribute:", self._address, "address");
    if (self._netmask)
        objj_msgSend(node, "setValue:forAttribute:", self._netmask, "netmask");
    if (self._prefix)
        objj_msgSend(node, "setValue:forAttribute:", self._prefix, "prefix");
    if (self._family)
        objj_msgSend(node, "setValue:forAttribute:", self._family, "family");
    if (self._DHCP)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._DHCP, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._TFTP)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._TFTP, "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultNetworkIPWithAddress:"), function $TNLibvirtNetworkIP__defaultNetworkIPWithAddress_(self, _cmd, anAddress)
{
    var IP = objj_msgSend(objj_msgSend(TNLibvirtNetworkIP, "alloc"), "init");
    objj_msgSend(IP, "setAddress:", anAddress);
    return IP;
}
,["TNLibvirtNetworkIP","CPString"])]);
}p;30;Model/TNLibvirtNetworkIPDHCP.jt;3837;@STATIC;1.0;i;22;TNLibvirtNetworkBase.ji;28;TNLibvirtNetworkIPDHCPHost.ji;29;TNLibvirtNetworkIPDHCPRange.jt;3724;objj_executeFile("TNLibvirtNetworkBase.j", YES);
objj_executeFile("TNLibvirtNetworkIPDHCPHost.j", YES);
objj_executeFile("TNLibvirtNetworkIPDHCPRange.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtNetworkBase, "TNLibvirtNetworkIPDHCP"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_hosts"), new objj_ivar("_ranges")]);
       
       


       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("hosts"), function $TNLibvirtNetworkIPDHCP__hosts(self, _cmd)
{
return self._hosts;
}
,["CPArray"]), new objj_method(sel_getUid("setHosts:"), function $TNLibvirtNetworkIPDHCP__setHosts_(self, _cmd, newValue)
{
self._hosts = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("ranges"), function $TNLibvirtNetworkIPDHCP__ranges(self, _cmd)
{
return self._ranges;
}
,["CPArray"]), new objj_method(sel_getUid("setRanges:"), function $TNLibvirtNetworkIPDHCP__setRanges_(self, _cmd, newValue)
{
self._ranges = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("init"), function $TNLibvirtNetworkIPDHCP__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkIPDHCP").super_class }, "init"))
    {
        self._ranges = objj_msgSend(CPArray, "array");
        self._hosts = objj_msgSend(CPArray, "array");
    }
    return self;
}
,["TNLibvirtNetworkBridge"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtNetworkIPDHCP__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkIPDHCP").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "dhcp")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid dhcp");
        self._ranges = objj_msgSend(CPArray, "array");
        self._hosts = objj_msgSend(CPArray, "array");
        var rangesNodes = objj_msgSend(aNode, "ownChildrenWithName:", "range");
        for (var i = 0; i < objj_msgSend(rangesNodes, "count"); i++)
            objj_msgSend(self._ranges, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtNetworkIPDHCPRange, "alloc"), "initWithXMLNode:", objj_msgSend(rangesNodes, "objectAtIndex:", i)));
        var hostsNodes = objj_msgSend(aNode, "ownChildrenWithName:", "host");
        for (var i = 0; i < objj_msgSend(hostsNodes, "count"); i++)
            objj_msgSend(self._hosts, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtNetworkIPDHCPHost, "alloc"), "initWithXMLNode:", objj_msgSend(hostsNodes, "objectAtIndex:", i)));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtNetworkIPDHCP__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "dhcp");
    if (objj_msgSend(self._ranges, "count") == 0 && objj_msgSend(self._hosts, "count") == 0)
        return;
    for (var i = 0; i < objj_msgSend(self._ranges, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._ranges, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    for (var i = 0; i < objj_msgSend(self._hosts, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._hosts, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultNetworkIPDHCP"), function $TNLibvirtNetworkIPDHCP__defaultNetworkIPDHCP(self, _cmd)
{
    var dhcp = objj_msgSend(objj_msgSend(TNLibvirtNetworkIPDHCP, "alloc"), "init");
    return dhcp;
}
,["TNLibvirtNetworkIPDHCP"])]);
}p;34;Model/TNLibvirtNetworkIPDHCPHost.jt;3269;@STATIC;1.0;i;22;TNLibvirtNetworkBase.jt;3223;objj_executeFile("TNLibvirtNetworkBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtNetworkBase, "TNLibvirtNetworkIPDHCPHost"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_IP"), new objj_ivar("_mac"), new objj_ivar("_name")]);
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("IP"), function $TNLibvirtNetworkIPDHCPHost__IP(self, _cmd)
{
return self._IP;
}
,["CPString"]), new objj_method(sel_getUid("setIP:"), function $TNLibvirtNetworkIPDHCPHost__setIP_(self, _cmd, newValue)
{
self._IP = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("mac"), function $TNLibvirtNetworkIPDHCPHost__mac(self, _cmd)
{
return self._mac;
}
,["CPString"]), new objj_method(sel_getUid("setMac:"), function $TNLibvirtNetworkIPDHCPHost__setMac_(self, _cmd, newValue)
{
self._mac = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("name"), function $TNLibvirtNetworkIPDHCPHost__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNLibvirtNetworkIPDHCPHost__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtNetworkIPDHCPHost__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkIPDHCPHost").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "host")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid host");
        self._name = objj_msgSend(aNode, "valueForAttribute:", "name");
        self._mac = objj_msgSend(aNode, "valueForAttribute:", "mac");
        self._IP = objj_msgSend(aNode, "valueForAttribute:", "ip");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtNetworkIPDHCPHost__XMLNode(self, _cmd)
{
    if (!self._IP)
        objj_msgSend(CPException, "raise:reason:", "Missing IP", "IP is required");
    if (!self._mac)
        objj_msgSend(CPException, "raise:reason:", "Missing mac", "Mac is required");
    if (!self._name)
        objj_msgSend(CPException, "raise:reason:", "Missing name", "name is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "host");
    if (self._name)
        objj_msgSend(node, "setValue:forAttribute:", self._name, "name");
    if (self._mac)
        objj_msgSend(node, "setValue:forAttribute:", self._mac, "mac");
    if (self._IP)
        objj_msgSend(node, "setValue:forAttribute:", self._IP, "ip");
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultNetworkDHCPHostWithName:MAC:IP:"), function $TNLibvirtNetworkIPDHCPHost__defaultNetworkDHCPHostWithName_MAC_IP_(self, _cmd, aName, aMAC, anIP)
{
    var host = objj_msgSend(objj_msgSend(TNLibvirtNetworkIPDHCPHost, "alloc"), "init");
    objj_msgSend(host, "setName:", aName);
    objj_msgSend(host, "setMac:", aMAC);
    objj_msgSend(host, "setIP:", anIP);
    return host;
}
,["TNLibvirtNetworkIPDHCPHost","CPString","CPString","CPString"])]);
}p;35;Model/TNLibvirtNetworkIPDHCPRange.jt;2692;@STATIC;1.0;i;22;TNLibvirtNetworkBase.jt;2646;objj_executeFile("TNLibvirtNetworkBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtNetworkBase, "TNLibvirtNetworkIPDHCPRange"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_end"), new objj_ivar("_start")]);
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("end"), function $TNLibvirtNetworkIPDHCPRange__end(self, _cmd)
{
return self._end;
}
,["CPString"]), new objj_method(sel_getUid("setEnd:"), function $TNLibvirtNetworkIPDHCPRange__setEnd_(self, _cmd, newValue)
{
self._end = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("start"), function $TNLibvirtNetworkIPDHCPRange__start(self, _cmd)
{
return self._start;
}
,["CPString"]), new objj_method(sel_getUid("setStart:"), function $TNLibvirtNetworkIPDHCPRange__setStart_(self, _cmd, newValue)
{
self._start = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtNetworkIPDHCPRange__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkIPDHCPRange").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "range")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid range");
        self._start = objj_msgSend(aNode, "valueForAttribute:", "start");
        self._end = objj_msgSend(aNode, "valueForAttribute:", "end");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtNetworkIPDHCPRange__XMLNode(self, _cmd)
{
    if (!self._start)
        objj_msgSend(CPException, "raise:reason:", "Missing start", "start is required");
    if (!self._end)
        objj_msgSend(CPException, "raise:reason:", "Missing end", "end is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "range");
    if (self._start)
        objj_msgSend(node, "setValue:forAttribute:", self._start, "start");
    if (self._end)
        objj_msgSend(node, "setValue:forAttribute:", self._end, "end");
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultNetworkIPDHCPRangeWithStart:end:"), function $TNLibvirtNetworkIPDHCPRange__defaultNetworkIPDHCPRangeWithStart_end_(self, _cmd, aStart, aEnd)
{
    var range = objj_msgSend(objj_msgSend(TNLibvirtNetworkIPDHCPRange, "alloc"), "init");
    objj_msgSend(range, "setStart:", aStart);
    objj_msgSend(range, "setEnd:", aEnd);
    return range;
}
,["TNLibvirtNetworkIPDHCPRange","CPString","CPString"])]);
}p;30;Model/TNLibvirtNetworkIPTFTP.jt;1981;@STATIC;1.0;i;22;TNLibvirtNetworkBase.jt;1935;objj_executeFile("TNLibvirtNetworkBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtNetworkBase, "TNLibvirtNetworkIPTFTP"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_root")]);
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("root"), function $TNLibvirtNetworkIPTFTP__root(self, _cmd)
{
return self._root;
}
,["CPString"]), new objj_method(sel_getUid("setRoot:"), function $TNLibvirtNetworkIPTFTP__setRoot_(self, _cmd, newValue)
{
self._root = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtNetworkIPTFTP__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtNetworkIPTFTP").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "tftp")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid tftp");
        self._root = objj_msgSend(aNode, "valueForAttribute:", "root");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtNetworkIPTFTP__XMLNode(self, _cmd)
{
    if (!self._root)
        objj_msgSend(CPException, "raise:reason:", "Missing root", "root is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "tftp");
    if (self._root)
    {
        objj_msgSend(node, "setValue:forAttribute:", self._root, "root");
    }
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultNetworkIPTFTPWithRoot:"), function $TNLibvirtNetworkIPTFTP__defaultNetworkIPTFTPWithRoot_(self, _cmd, aRoot)
{
    var tftp = objj_msgSend(objj_msgSend(TNLibvirtNetworkIPTFTP, "alloc"), "init");
    objj_msgSend(tftp, "setRoot:", aRoot);
    return tftp;
}
,["TNLibvirtNetworkIPTFTP","CPString"])]);
}e;