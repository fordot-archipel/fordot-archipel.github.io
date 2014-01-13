@STATIC;1.0;p;24;TNXMPPServerController.jt;12731;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPImage.jI;19;AppKit/CPMenuItem.jI;22;AppKit/CPPopUpButton.jI;22;AppKit/CPPopUpButton.jI;18;AppKit/CPTabView.jI;15;AppKit/CPView.ji;22;../../Model/TNModule.ji;30;TNXMPPSharedGroupsController.ji;23;TNXMPPUsersController.jt;12451;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPMenuItem.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPTabView.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("TNXMPPSharedGroupsController.j", YES);
objj_executeFile("TNXMPPUsersController.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global TNArchipelEntityTypeHypervisor
var TNArchipelPushNotificationXMPPServerUsers = "archipel:push:xmppserver:users";
{var the_class = objj_allocateClassPair(TNModule, "TNXMPPServerController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("checkBoxPreferencesUseSRG"), new objj_ivar("buttonHypervisors"), new objj_ivar("tabViewMain"), new objj_ivar("viewBottom"), new objj_ivar("sharedGroupsController"), new objj_ivar("usersController"), new objj_ivar("_pushRegistred"), new objj_ivar("_defaultAvatar"), new objj_ivar("_itemViewGroups"), new objj_ivar("_itemViewUsers")]);
       
       







       
       

       
       


       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNXMPPServerController__awakeFromCib(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(defaults, "registerDefaults:", objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelUseEjabberdSharedRosterGroups"), "TNArchipelUseEjabberdSharedRosterGroups"));
    self._defaultAvatar = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "user-unknown.png"));
    self._itemViewUsers = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "itemUsers"),
    self._itemViewGroups = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "itemGroups");
    objj_msgSend(self._itemViewUsers, "setLabel:", CPBundleLocalizedString("XMPP Users", "XMPP Users"));
    objj_msgSend(self._itemViewUsers, "setView:", objj_msgSend(self.usersController, "mainView"));
    objj_msgSend(self._itemViewGroups, "setLabel:", CPBundleLocalizedString("Shared Groups", "Shared Groups"));
    objj_msgSend(self._itemViewGroups, "setView:", objj_msgSend(self.sharedGroupsController, "mainView"));
    objj_msgSend(self, "manageToolbarItems");
    objj_msgSend(self.usersController, "setDelegate:", self);
    objj_msgSend(self.sharedGroupsController, "setDelegate:", self);
    objj_msgSend(self.sharedGroupsController, "setUsersController:", self.usersController);
    self._pushRegistred = NO;
    objj_msgSend(self.buttonHypervisors, "setTarget:", self);
    objj_msgSend(self.buttonHypervisors, "setAction:", sel_getUid("changeCurrentHypervisor:"));
    var imageBg = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")), "pathForResource:", "bg-controls.png"));
    objj_msgSend(self.viewBottom, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", imageBg));
}
,["void"]), new objj_method(sel_getUid("willShow"), function $TNXMPPServerController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNXMPPServerController").super_class }, "willShow"))
        return NO;
    objj_msgSend(self, "populateHypervisors");
    if (!self._pushRegistred)
    {
        objj_msgSend(self, "registerSelector:ofObject:forPushNotificationType:", sel_getUid("_didReceiveUsersPush:"), self.usersController, TNArchipelPushNotificationXMPPServerUsers);
        self._pushRegistred = YES;
    }
    objj_msgSend(self, "tabView:didSelectTabViewItem:", self.tabViewMain, objj_msgSend(self.tabViewMain, "selectedTabViewItem"));
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willHide"), function $TNXMPPServerController__willHide(self, _cmd)
{
    if (objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "integerForKey:", "TNArchipelUseEjabberdSharedRosterGroups"))
        objj_msgSend(self.sharedGroupsController, "willHide")
    objj_msgSend(self.usersController, "willHide");
    objj_msgSend(self, "flushUI");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:", self);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNXMPPServerController").super_class }, "willHide");
}
,["void"]), new objj_method(sel_getUid("permissionsChanged"), function $TNXMPPServerController__permissionsChanged(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNXMPPServerController").super_class }, "permissionsChanged");
    if (objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "integerForKey:", "TNArchipelUseEjabberdSharedRosterGroups"))
        objj_msgSend(self.sharedGroupsController, "permissionsChanged");
    objj_msgSend(self.usersController, "permissionsChanged");
}
,["void"]), new objj_method(sel_getUid("setUIAccordingToPermissions"), function $TNXMPPServerController__setUIAccordingToPermissions(self, _cmd)
{
    if (objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "integerForKey:", "TNArchipelUseEjabberdSharedRosterGroups"))
        objj_msgSend(self.sharedGroupsController, "setUIAccordingToPermissions");
    objj_msgSend(self.usersController, "setUIAccordingToPermissions");
}
,["void"]), new objj_method(sel_getUid("savePreferences"), function $TNXMPPServerController__savePreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(defaults, "setBool:forKey:", (objj_msgSend(self.checkBoxPreferencesUseSRG, "state") == CPOnState), "TNArchipelUseEjabberdSharedRosterGroups");
    objj_msgSend(self, "manageToolbarItems");
}
,["void"]), new objj_method(sel_getUid("loadPreferences"), function $TNXMPPServerController__loadPreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(self.checkBoxPreferencesUseSRG, "setState:", objj_msgSend(defaults, "boolForKey:", "TNArchipelUseEjabberdSharedRosterGroups") ? CPOnState : CPOffState);
}
,["void"]), new objj_method(sel_getUid("flushUI"), function $TNXMPPServerController__flushUI(self, _cmd)
{
    if (objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "integerForKey:", "TNArchipelUseEjabberdSharedRosterGroups"))
        objj_msgSend(self.sharedGroupsController, "flushUI");
    objj_msgSend(self.usersController, "flushUI");
}
,["void"]), new objj_method(sel_getUid("_didHypervisorPresenceUpdate:"), function $TNXMPPServerController___didHypervisorPresenceUpdate_(self, _cmd, aNotification)
{
    objj_msgSend(self, "populateHypervisors");
    objj_msgSend(self.usersController, "reload");
    if (objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "integerForKey:", "TNArchipelUseEjabberdSharedRosterGroups"))
        objj_msgSend(self.sharedGroupsController, "reload");
}
,["void","CPNotification"]), new objj_method(sel_getUid("manageToolbarItems"), function $TNXMPPServerController__manageToolbarItems(self, _cmd)
{
    objj_msgSend(self.tabViewMain, "setDelegate:", nil);
    if (!objj_msgSend(objj_msgSend(self.tabViewMain, "tabViewItems"), "containsObject:", self._itemViewUsers))
        objj_msgSend(self.tabViewMain, "addTabViewItem:", self._itemViewUsers);
    if (objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "integerForKey:", "TNArchipelUseEjabberdSharedRosterGroups"))
    {
        if (!objj_msgSend(objj_msgSend(self.tabViewMain, "tabViewItems"), "containsObject:", self._itemViewGroups))
            objj_msgSend(self.tabViewMain, "addTabViewItem:", self._itemViewGroups);
    }
    else
    {
        objj_msgSend(self.tabViewMain, "removeTabViewItem:", self._itemViewGroups);
        objj_msgSend(self.tabViewMain, "selectFirstTabViewItem:", nil);
    }
    objj_msgSend(self.tabViewMain, "setDelegate:", self);
}
,["void"]), new objj_method(sel_getUid("populateHypervisors"), function $TNXMPPServerController__populateHypervisors(self, _cmd)
{
    objj_msgSend(self.buttonHypervisors, "removeAllItems");
    var servers = objj_msgSend(CPArray, "array"),
        items = objj_msgSend(CPArray, "array");
    for (var i = 0; i < objj_msgSend(objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contacts"), "count"); i++)
    {
        var contact = objj_msgSend(objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contacts"), "objectAtIndex:", i),
            item = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "init");
        if ((objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(contact, "vCard")) === TNArchipelEntityTypeHypervisor)
            && (objj_msgSend(contact, "XMPPShow") != TNStropheContactStatusOffline)
            && !objj_msgSend(servers, "containsObject:", objj_msgSend(objj_msgSend(contact, "JID"), "domain")))
        {
            objj_msgSend(servers, "addObject:", objj_msgSend(objj_msgSend(contact, "JID"), "domain"));
            objj_msgSend(item, "setTitle:", objj_msgSend(objj_msgSend(contact, "JID"), "domain"));
            objj_msgSend(item, "setRepresentedObject:", contact);
            objj_msgSend(items, "addObject:", item);
            objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, TNStropheContactPresenceUpdatedNotification, contact);
            objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didHypervisorPresenceUpdate:"), TNStropheContactPresenceUpdatedNotification, contact);
        }
    }
    var sortDescriptor = objj_msgSend(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "title.uppercaseString", YES),
        sortedItems = objj_msgSend(items, "sortedArrayUsingDescriptors:", objj_msgSend(CPArray, "arrayWithObject:", sortDescriptor));
    for (var i = 0; i < objj_msgSend(sortedItems, "count"); i++)
        objj_msgSend(self.buttonHypervisors, "addItem:", objj_msgSend(sortedItems, "objectAtIndex:", i));
    objj_msgSend(self.buttonHypervisors, "selectItemAtIndex:", 0);
    self._entity = objj_msgSend(objj_msgSend(self.buttonHypervisors, "selectedItem"), "representedObject");
}
,["void"]), new objj_method(sel_getUid("changeCurrentHypervisor:"), function $TNXMPPServerController__changeCurrentHypervisor_(self, _cmd, aSender)
{
    self._entity = objj_msgSend(objj_msgSend(self.buttonHypervisors, "selectedItem"), "representedObject");
    objj_msgSend(self.usersController, "setEntity:", objj_msgSend(objj_msgSend(self.buttonHypervisors, "selectedItem"), "representedObject"));
    if (objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "integerForKey:", "TNArchipelUseEjabberdSharedRosterGroups"))
        objj_msgSend(self.sharedGroupsController, "setEntity:", objj_msgSend(objj_msgSend(self.buttonHypervisors, "selectedItem"), "representedObject"));
    objj_msgSend(self, "permissionsChanged");
}
,["id","id"]), new objj_method(sel_getUid("tabView:didSelectTabViewItem:"), function $TNXMPPServerController__tabView_didSelectTabViewItem_(self, _cmd, aTabView, anItem)
{
    switch (objj_msgSend(anItem, "identifier"))
    {
        case "itemUsers":
            objj_msgSend(self.usersController, "setEntity:", objj_msgSend(objj_msgSend(self.buttonHypervisors, "selectedItem"), "representedObject"));
            objj_msgSend(self.usersController, "reload");
            break;
        case "itemGroups":
            objj_msgSend(self.sharedGroupsController, "setEntity:", objj_msgSend(objj_msgSend(self.buttonHypervisors, "selectedItem"), "representedObject"));
            objj_msgSend(self.sharedGroupsController, "reload");
            break;
    }
}
,["void","CPTabView","CPTabViewItem"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNXMPPServerController), comment);
}p;25;TNXMPPServerUserFetcher.jt;11868;@STATIC;1.0;I;23;Foundation/Foundation.jI;36;StropheCappuccino/TNStropheContact.jI;37;StropheCappuccino/TNStropheIMClient.jI;33;TNKit/TNTableViewLazyDataSource.jt;11699;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNStropheContact.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("TNKit/TNTableViewLazyDataSource.j", NO);
//@class TNPermissionsCenter
var TNArchipelTypeXMPPServerUsers = "archipel:xmppserver:users",
    TNArchipelTypeXMPPServerUsersList = "list",
    TNArchipelTypeXMPPServerUsersFilter = "filter",
    TNArchipelTypeXMPPServerUsersNumber = "number";
var _iconEntityTypeHuman,
    _iconEntityTypeHypervisor,
    _iconEntityTypeVM,
    _iconUserAdmin;
{var the_class = objj_allocateClassPair(CPObject, "TNXMPPServerUserFetcher"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_displaysOnlyHumans"), new objj_ivar("_delegate"), new objj_ivar("_entity"), new objj_ivar("_dataSource"), new objj_ivar("_maxLoadedPage")]);

       
       

       
       

       
       






       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isDisplayingOnlyHumans"), function $TNXMPPServerUserFetcher__isDisplayingOnlyHumans(self, _cmd)
{
return self._displaysOnlyHumans;
}
,["BOOL"]), new objj_method(sel_getUid("setDisplaysOnlyHumans:"), function $TNXMPPServerUserFetcher__setDisplaysOnlyHumans_(self, _cmd, newValue)
{
self._displaysOnlyHumans = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("delegate"), function $TNXMPPServerUserFetcher__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNXMPPServerUserFetcher__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("entity"), function $TNXMPPServerUserFetcher__entity(self, _cmd)
{
return self._entity;
}
,["TNStropheContact"]), new objj_method(sel_getUid("setEntity:"), function $TNXMPPServerUserFetcher__setEntity_(self, _cmd, newValue)
{
self._entity = newValue;
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("dataSource"), function $TNXMPPServerUserFetcher__dataSource(self, _cmd)
{
return self._dataSource;
}
,["TNTableViewLazyDataSource"]), new objj_method(sel_getUid("_setDataSource:"), function $TNXMPPServerUserFetcher___setDataSource_(self, _cmd, newValue)
{
self._dataSource = newValue;
}
,["void","TNTableViewLazyDataSource"]), new objj_method(sel_getUid("init"), function $TNXMPPServerUserFetcher__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNXMPPServerUserFetcher").super_class }, "init"))
    {
        self._maxLoadedPage = 0;
        self._displaysOnlyHumans = YES;
    }
    return self;
}
,["void"]), new objj_method(sel_getUid("setDataSource:"), function $TNXMPPServerUserFetcher__setDataSource_(self, _cmd, aDataSource)
{
    self._dataSource = aDataSource;
    objj_msgSend(self._dataSource, "setDelegate:", self);
}
,["void","TNTableViewLazyDataSource"]), new objj_method(sel_getUid("reset"), function $TNXMPPServerUserFetcher__reset(self, _cmd)
{
    self._maxLoadedPage = 0;
    objj_msgSend(self._dataSource, "setTotalCount:", -1);
    objj_msgSend(self._dataSource, "setCurrentlyLoading:", NO);
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("userFetcher:isLoading:")))
        objj_msgSend(self._delegate, "userFetcher:isLoading:", self, NO);
}
,["void"]), new objj_method(sel_getUid("getNumberOfXMPPUsers"), function $TNXMPPServerUserFetcher__getNumberOfXMPPUsers(self, _cmd)
{
    objj_msgSend(self, "getNumberOfXMPPUsers:", nil);
}
,["void"]), new objj_method(sel_getUid("getNumberOfXMPPUsers:"), function $TNXMPPServerUserFetcher__getNumberOfXMPPUsers_(self, _cmd, aCallback)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeXMPPServerUsers});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeXMPPServerUsersNumber,
        "humans_only": self._displaysOnlyHumans ? "true" : "false"});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:userInfo:", stanza, sel_getUid("_didGetNumberOfXMPPUsers:callback:"), self, aCallback);
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("userFetcher:isLoading:")))
        objj_msgSend(self._delegate, "userFetcher:isLoading:", self, YES);
}
,["void","SEL"]), new objj_method(sel_getUid("_didGetNumberOfXMPPUsers:callback:"), function $TNXMPPServerUserFetcher___didGetNumberOfXMPPUsers_callback_(self, _cmd, aStanza, aCallback)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var total = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "users"), "valueForAttribute:", "total");
        objj_msgSend(self._dataSource, "setTotalCount:", total);
        if (aCallback)
            objj_msgSend(self, "performSelector:", aCallback);
    }
    else
    {
        objj_msgSend(objj_msgSend(self._delegate, "delegate"), "handleIqErrorFromStanza:", aStanza);
    }
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("userFetcher:isLoading:")))
        objj_msgSend(self._delegate, "userFetcher:isLoading:", self, NO);
}
,["BOOL","TNStropheStanza","SEL"]), new objj_method(sel_getUid("getXMPPUsers"), function $TNXMPPServerUserFetcher__getXMPPUsers(self, _cmd)
{
    if (!objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "hasPermission:forEntity:", "xmppserver_users_list", self._entity))
    {
        objj_msgSend(self._delegate, "userFetcherClean");
        return;
    }
    if (objj_msgSend(self._dataSource, "totalCount") == -1)
    {
        objj_msgSend(self, "getNumberOfXMPPUsers:", sel_getUid("getXMPPUsers"));
        return;
    }
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeXMPPServerUsers});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeXMPPServerUsersList,
        "page": self._maxLoadedPage,
        "humans_only": self._displaysOnlyHumans ? "true" : "false"});
    objj_msgSend(self._dataSource, "setCurrentlyLoading:", YES);
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("userFetcher:isLoading:")))
        objj_msgSend(self._delegate, "userFetcher:isLoading:", self, YES);
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didGetXMPPUsers:"), self);
}
,["void"]), new objj_method(sel_getUid("getXMPPFilteredUsers:"), function $TNXMPPServerUserFetcher__getXMPPFilteredUsers_(self, _cmd, aFilter)
{
    if (!objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "hasPermission:forEntity:", "xmppserver_users_list", self._entity))
    {
        objj_msgSend(self._delegate, "userFetcherClean")
        return;
    }
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeXMPPServerUsers});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeXMPPServerUsersFilter,
        "filter": aFilter});
    objj_msgSend(self._dataSource, "setCurrentlyLoading:", YES);
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("userFetcher:isLoading:")))
        objj_msgSend(self._delegate, "userFetcher:isLoading:", self, YES);
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didGetXMPPUsers:"), self);
}
,["void","CPString"]), new objj_method(sel_getUid("_didGetXMPPUsers:"), function $TNXMPPServerUserFetcher___didGetXMPPUsers_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var users = objj_msgSend(aStanza, "childrenWithName:", "user");
        for (var i = 0; i < objj_msgSend(users, "count"); i++)
        {
            var user = objj_msgSend(users, "objectAtIndex:", i),
                jid;
            try {jid = objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(user, "valueForAttribute:", "jid"))} catch(e){continue};
            var usertype = objj_msgSend(user, "valueForAttribute:", "type"),
                name = objj_msgSend(jid, "node"),
                contact = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contactWithJID:", jid),
                userAdminIcon = nil,
                newItem;
            if (contact)
                name = objj_msgSend(contact, "name");
            var icon = _iconEntityTypeHuman;
            switch (usertype)
            {
                case "virtualmachine":
                    icon = _iconEntityTypeVM;
                    break;
                case "hypervisor":
                    icon = _iconEntityTypeHypervisor;
                    break;
            }
            if (objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "isJIDInAdminList:", jid))
                userAdminIcon = _iconUserAdmin;
            newItem = objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [name, jid, usertype, icon, userAdminIcon], ["name", "JID", "type", "icon", "admin"])
            objj_msgSend(self._dataSource, "addObject:", newItem);
        }
        objj_msgSend(objj_msgSend(self._dataSource, "table"), "reloadData");
    }
    else
    {
        objj_msgSend(objj_msgSend(self._delegate, "delegate"), "handleIqErrorFromStanza:", aStanza);
    }
    objj_msgSend(self._dataSource, "setCurrentlyLoading:", NO);
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("userFetcher:isLoading:")))
        objj_msgSend(self._delegate, "userFetcher:isLoading:", self, NO);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("tableViewDataSourceNeedsLoading:"), function $TNXMPPServerUserFetcher__tableViewDataSourceNeedsLoading_(self, _cmd, aDataSource)
{
    self._maxLoadedPage++;
    objj_msgSend(self, "getXMPPUsers");
}
,["void","TNTableViewLazyDataSource"]), new objj_method(sel_getUid("tableViewDataSource:applyFilter:"), function $TNXMPPServerUserFetcher__tableViewDataSource_applyFilter_(self, _cmd, aDataSource, aFilter)
{
    objj_msgSend(self._delegate, "userFetcherClean");
    objj_msgSend(self, "getXMPPFilteredUsers:", aFilter);
}
,["void","TNTableViewLazyDataSource","CPString"]), new objj_method(sel_getUid("tableViewDataSource:removeFilter:"), function $TNXMPPServerUserFetcher__tableViewDataSource_removeFilter_(self, _cmd, aDataSource, aFilter)
{
    objj_msgSend(self._delegate, "userFetcherClean");
    objj_msgSend(self, "getXMPPUsers");
}
,["void","TNTableViewLazyDataSource","CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNXMPPServerUserFetcher__initialize(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", TNXMPPServerUserFetcher);
    _iconEntityTypeHuman = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "type-human.png"), CGSizeMake(16, 16));
    _iconEntityTypeVM = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "type-vm.png"), CGSizeMake(16, 16));
    _iconEntityTypeHypervisor = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "type-hypervisor.png"), CGSizeMake(16, 16));
    _iconUserAdmin = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "user-admin.png"), CGSizeMake(16, 16));
}
,["void"])]);
}p;30;TNXMPPSharedGroupsController.jt;25999;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;22;AppKit/CPPopUpButton.jI;21;AppKit/CPScrollView.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPSplitView.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;17;AppKit/CPWindow.jI;15;TNKit/TNAlert.jI;29;TNKit/TNTableViewDataSource.jI;33;TNKit/TNTableViewLazyDataSource.ji;25;TNXMPPServerUserFetcher.jt;25585;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPScrollView.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPSplitView.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("TNKit/TNTableViewLazyDataSource.j", NO);
objj_executeFile("TNXMPPServerUserFetcher.j", YES);
//@class TNPermissionsCenter
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelTypeXMPPServerGroups = "archipel:xmppserver:groups",
    TNArchipelTypeXMPPServerGroupsCreate = "create",
    TNArchipelTypeXMPPServerGroupsDelete = "delete",
    TNArchipelTypeXMPPServerGroupsAddUsers = "addusers",
    TNArchipelTypeXMPPServerGroupsDeleteUsers = "deleteusers",
    TNArchipelTypeXMPPServerGroupsList = "list";
{var the_class = objj_allocateClassPair(CPObject, "TNXMPPSharedGroupsController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonAdd"), new objj_ivar("buttonCreate"), new objj_ivar("buttonBarGroups"), new objj_ivar("buttonBarUsersInGroups"), new objj_ivar("popoverAddUserInGroup"), new objj_ivar("popoverNewGroup"), new objj_ivar("filterFieldGroups"), new objj_ivar("filterFieldUsers"), new objj_ivar("filterFieldUsersInGroup"), new objj_ivar("splitViewVertical"), new objj_ivar("tableGroups"), new objj_ivar("tableUsers"), new objj_ivar("tableUsersInGroup"), new objj_ivar("fieldNewGroupDescription"), new objj_ivar("fieldNewGroupName"), new objj_ivar("mainView"), new objj_ivar("viewTableGroupsContainer"), new objj_ivar("viewTableUsersInGroupContainer"), new objj_ivar("_delegate"), new objj_ivar("_usersController"), new objj_ivar("_entity"), new objj_ivar("_addGroupButton"), new objj_ivar("_addUserInGroupButton"), new objj_ivar("_deleteGroupButton"), new objj_ivar("_deleteUserFromGroupButton"), new objj_ivar("_currentSelectedGroup"), new objj_ivar("_oldSelectedIndexesForGroupTable"), new objj_ivar("_datasourceGroups"), new objj_ivar("_datasourceUsers"), new objj_ivar("_datasourceUsersInGroup"), new objj_ivar("_usersFetcher")]);
       
       

       
       





       
       








       
       










       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("mainView"), function $TNXMPPSharedGroupsController__mainView(self, _cmd)
{
return self.mainView;
}
,["CPView"]), new objj_method(sel_getUid("setMainView:"), function $TNXMPPSharedGroupsController__setMainView_(self, _cmd, newValue)
{
self.mainView = newValue;
}
,["void","CPView"]), new objj_method(sel_getUid("delegate"), function $TNXMPPSharedGroupsController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNXMPPSharedGroupsController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("_usersController"), function $TNXMPPSharedGroupsController___usersController(self, _cmd)
{
return self._usersController;
}
,["TNXMPPUsersController"]), new objj_method(sel_getUid("setUsersController:"), function $TNXMPPSharedGroupsController__setUsersController_(self, _cmd, newValue)
{
self._usersController = newValue;
}
,["void","TNXMPPUsersController"]), new objj_method(sel_getUid("awakeFromCib"), function $TNXMPPSharedGroupsController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.splitViewVertical, "setBorderedWithHexColor:", "#C0C7D2");
    objj_msgSend(self.splitViewVertical, "setIsPaneSplitter:", YES);
    self._datasourceUsers = objj_msgSend(objj_msgSend(TNTableViewLazyDataSource, "alloc"), "init");
    objj_msgSend(self._datasourceUsers, "setTable:", self.tableUsers);
    objj_msgSend(self._datasourceUsers, "setSearchableKeyPaths:", ["name", "JID"]);
    objj_msgSend(self.tableUsers, "setDataSource:", self._datasourceUsers);
    self._usersFetcher = objj_msgSend(objj_msgSend(TNXMPPServerUserFetcher, "alloc"), "init");
    objj_msgSend(self._usersFetcher, "setDataSource:", self._datasourceUsers);
    objj_msgSend(self._usersFetcher, "setDelegate:", self);
    objj_msgSend(self._usersFetcher, "setDisplaysOnlyHumans:", NO);
    self._datasourceGroups = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self._datasourceGroups, "setTable:", self.tableGroups);
    objj_msgSend(self._datasourceGroups, "setSearchableKeyPaths:", ["name", "description"]);
    objj_msgSend(self.tableGroups, "setDataSource:", self._datasourceGroups);
    objj_msgSend(self.tableGroups, "setDelegate:", self);
    self._addGroupButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._addGroupButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/group-add.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._addGroupButton, "setTarget:", self);
    objj_msgSend(self._addGroupButton, "setAction:", sel_getUid("openNewGroupWindow:"));
    objj_msgSend(self._addGroupButton, "setToolTip:", CPBundleLocalizedString("Add a new shared group", "Add a new shared group"));
    self._deleteGroupButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._deleteGroupButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/group-remove.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._deleteGroupButton, "setTarget:", self);
    objj_msgSend(self._deleteGroupButton, "setAction:", sel_getUid("deleteGroup:"));
    objj_msgSend(self._deleteGroupButton, "setToolTip:", CPBundleLocalizedString("Delete selected shared groups", "Delete selected shared groups"));
    objj_msgSend(self.buttonBarGroups, "setButtons:", [self._addGroupButton, self._deleteGroupButton]);
    self._datasourceUsersInGroup = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self._datasourceUsersInGroup, "setTable:", self.tableUsersInGroup);
    objj_msgSend(self._datasourceUsersInGroup, "setSearchableKeyPaths:", ["name", "JID"]);
    objj_msgSend(self.tableUsersInGroup, "setDataSource:", self._datasourceUsersInGroup);
    objj_msgSend(self.tableUsersInGroup, "setDelegate:", self);
    self._addUserInGroupButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._addUserInGroupButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/user-add.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._addUserInGroupButton, "setTarget:", self);
    objj_msgSend(self._addUserInGroupButton, "setAction:", sel_getUid("openAddUserInGroupWindow:"));
    objj_msgSend(self._addUserInGroupButton, "setToolTip:", CPBundleLocalizedString("Add selected users to shared group", "Add selected users to shared group"));
    self._deleteUserFromGroupButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._deleteUserFromGroupButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/user-remove.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._deleteUserFromGroupButton, "setTarget:", self);
    objj_msgSend(self._deleteUserFromGroupButton, "setAction:", sel_getUid("removeUsersFromGroup:"));
    objj_msgSend(self._deleteUserFromGroupButton, "setToolTip:", CPBundleLocalizedString("Remove selected users from shared group", "Remove selected users from shared group"));
    objj_msgSend(self.buttonBarUsersInGroups, "setButtons:", [self._addUserInGroupButton, self._deleteUserFromGroupButton]);
    objj_msgSend(self.filterFieldGroups, "setTarget:", self._datasourceGroups);
    objj_msgSend(self.filterFieldGroups, "setAction:", sel_getUid("filterObjects:"));
    objj_msgSend(self.filterFieldUsersInGroup, "setTarget:", self._datasourceUsersInGroup);
    objj_msgSend(self.filterFieldUsersInGroup, "setAction:", sel_getUid("filterObjects:"));
    objj_msgSend(self.filterFieldUsers, "setSendsSearchStringImmediately:", YES);
    objj_msgSend(self.filterFieldUsers, "setTarget:", self._datasourceUsers);
    objj_msgSend(self.filterFieldUsers, "setAction:", sel_getUid("filterObjects:"));
    var filterBg = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "Backgrounds/background-filter.png"));
    objj_msgSend(objj_msgSend(self.viewTableGroupsContainer, "superview"), "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", filterBg));
    objj_msgSend(objj_msgSend(self.viewTableUsersInGroupContainer, "superview"), "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", filterBg));
}
,["void"]), new objj_method(sel_getUid("setEntity:"), function $TNXMPPSharedGroupsController__setEntity_(self, _cmd, anEntity)
{
    self._entity = anEntity;
    objj_msgSend(self._usersFetcher, "setEntity:", self._entity);
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("willHide"), function $TNXMPPSharedGroupsController__willHide(self, _cmd)
{
    objj_msgSend(self, "closeNewGroupWindow:", nil);
    objj_msgSend(self, "closeAddUserInGroupWindow:", nil);
    objj_msgSend(self._usersFetcher, "reset");
}
,["void"]), new objj_method(sel_getUid("permissionsChanged"), function $TNXMPPSharedGroupsController__permissionsChanged(self, _cmd)
{
    objj_msgSend(self, "reload");
}
,["void"]), new objj_method(sel_getUid("setUIAccordingToPermissions"), function $TNXMPPSharedGroupsController__setUIAccordingToPermissions(self, _cmd)
{
    var condition1 = (objj_msgSend(self.tableGroups, "numberOfSelectedRows") > 0),
        condition2 = condition1 && (objj_msgSend(self.tableUsersInGroup, "numberOfSelectedRows") > 0);
    objj_msgSend(self._delegate, "setControl:enabledAccordingToPermissions:", self._addGroupButton, ["xmppserver_groups_list", "xmppserver_groups_create"]);
    objj_msgSend(self._delegate, "setControl:enabledAccordingToPermissions:specialCondition:", self._deleteGroupButton, ["xmppserver_groups_list", "xmppserver_groups_delete"], condition1);
    objj_msgSend(self._delegate, "setControl:enabledAccordingToPermissions:specialCondition:", self._addUserInGroupButton, ["xmppserver_users_list", "xmppserver_groups_list", "xmppserver_groups_addusers"], condition1);
    objj_msgSend(self._delegate, "setControl:enabledAccordingToPermissions:specialCondition:", self._deleteUserFromGroupButton, ["xmppserver_groups_list", "xmppserver_groups_deleteusers"], condition2);
    if (!objj_msgSend(self._delegate, "currentEntityHasPermissions:", ["xmppserver_users_list", "xmppserver_groups_list", "xmppserver_groups_addusers"]))
        objj_msgSend(self.popoverAddUserInGroup, "close");
    if (!objj_msgSend(self._delegate, "currentEntityHasPermissions:", ["xmppserver_groups_list", "xmppserver_groups_create"]))
        objj_msgSend(self.popoverNewGroup, "close");
}
,["void"]), new objj_method(sel_getUid("reload"), function $TNXMPPSharedGroupsController__reload(self, _cmd)
{
    if (objj_msgSend(self._datasourceUsers, "isCurrentlyLoading"))
        return;
    objj_msgSend(self, "getSharedGroupsInfo");
}
,["void"]), new objj_method(sel_getUid("flushUI"), function $TNXMPPSharedGroupsController__flushUI(self, _cmd)
{
    objj_msgSend(self._datasourceGroups, "removeAllObjects");
    objj_msgSend(self._datasourceUsers, "removeAllObjects");
    objj_msgSend(self._datasourceUsersInGroup, "removeAllObjects");
    objj_msgSend(self.tableUsers, "reloadData");
    objj_msgSend(self.tableUsersInGroup, "reloadData");
    objj_msgSend(self.tableGroups, "reloadData");
}
,["void"]), new objj_method(sel_getUid("openNewGroupWindow:"), function $TNXMPPSharedGroupsController__openNewGroupWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.fieldNewGroupName, "setStringValue:", "");
    objj_msgSend(self.fieldNewGroupDescription, "setStringValue:", "");
    objj_msgSend(self.popoverNewGroup, "close");
    objj_msgSend(self.popoverNewGroup, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.popoverNewGroup, "setDefaultButton:", self.buttonCreate);
    objj_msgSend(self.popoverNewGroup, "makeFirstResponder:", self.fieldNewGroupName);
}
,["id","id"]), new objj_method(sel_getUid("closeNewGroupWindow:"), function $TNXMPPSharedGroupsController__closeNewGroupWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.popoverNewGroup, "close");
}
,["id","id"]), new objj_method(sel_getUid("openAddUserInGroupWindow:"), function $TNXMPPSharedGroupsController__openAddUserInGroupWindow_(self, _cmd, aSender)
{
    objj_msgSend(self._datasourceUsers, "removeAllObjects");
    objj_msgSend(self.tableUsers, "reloadData");
    objj_msgSend(self._usersFetcher, "reset");
    objj_msgSend(self._usersFetcher, "getXMPPUsers");
    objj_msgSend(self.popoverAddUserInGroup, "close");
    objj_msgSend(self.popoverAddUserInGroup, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.popoverAddUserInGroup, "setDefaultButton:", self.buttonAdd);
}
,["id","id"]), new objj_method(sel_getUid("closeAddUserInGroupWindow:"), function $TNXMPPSharedGroupsController__closeAddUserInGroupWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.popoverAddUserInGroup, "close");
}
,["id","id"]), new objj_method(sel_getUid("createGroup:"), function $TNXMPPSharedGroupsController__createGroup_(self, _cmd, aSender)
{
    if (objj_msgSend(objj_msgSend(self.fieldNewGroupName, "stringValue"), "length") < 3)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Wrong name", "Wrong name"), CPBundleLocalizedString("You must enter a name containing at least 4 characters", "You must enter a name containing at least 4 characters"));
        return;
    }
    objj_msgSend(self.popoverNewGroup, "close");
    objj_msgSend(self, "createGroup:description:", objj_msgSend(self.fieldNewGroupName, "stringValue"), objj_msgSend(self.fieldNewGroupDescription, "stringValue"));
}
,["id","id"]), new objj_method(sel_getUid("deleteGroup:"), function $TNXMPPSharedGroupsController__deleteGroup_(self, _cmd, aSender)
{
    if (!self._currentSelectedGroup)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Wrong group", "Wrong group"), CPBundleLocalizedString("You must select a group", "You must select a group"));
        return;
    }
    objj_msgSend(self, "deleteGroupWithID:", objj_msgSend(self._currentSelectedGroup, "objectForKey:", "id"));
}
,["id","id"]), new objj_method(sel_getUid("addUsersInGroup:"), function $TNXMPPSharedGroupsController__addUsersInGroup_(self, _cmd, aSender)
{
    var indexes = objj_msgSend(self.tableUsers, "selectedRowIndexes"),
        rows = objj_msgSend(self._datasourceUsers, "objectsAtIndexes:", indexes);
    objj_msgSend(self, "addUsers:inGroup:", rows, objj_msgSend(self._currentSelectedGroup, "objectForKey:", "id"));
    objj_msgSend(self.popoverAddUserInGroup, "close");
}
,["id","id"]), new objj_method(sel_getUid("removeUsersFromGroup:"), function $TNXMPPSharedGroupsController__removeUsersFromGroup_(self, _cmd, aSender)
{
    if (objj_msgSend(self.tableUsersInGroup, "numberOfSelectedRows") < 1)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Wrong users", "Wrong users"), CPBundleLocalizedString("You must select at least one user", "You must select at least one user"));
        return;
    }
    var indexes = objj_msgSend(self.tableUsersInGroup, "selectedRowIndexes"),
        rows = objj_msgSend(self._datasourceUsersInGroup, "objectsAtIndexes:", indexes);
    objj_msgSend(self, "removeUsers:fromGroup:", rows, objj_msgSend(self._currentSelectedGroup, "objectForKey:", "id"));
}
,["id","id"]), new objj_method(sel_getUid("getSharedGroupsInfo"), function $TNXMPPSharedGroupsController__getSharedGroupsInfo(self, _cmd)
{
    if (!objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "hasPermission:forEntity:", "xmppserver_groups_list", self._entity))
    {
        objj_msgSend(self._datasourceGroups, "removeAllObjects");
        objj_msgSend(self._datasourceUsersInGroup, "removeAllObjects");
        objj_msgSend(self.tableGroups, "reloadData");
        objj_msgSend(self.tableUsersInGroup, "reloadData");
        return;
    }
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeXMPPServerGroups});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {"action": TNArchipelTypeXMPPServerGroupsList});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didGetSharedGroupsInfo:"), self);
}
,["void"]), new objj_method(sel_getUid("_didGetSharedGroupsInfo:"), function $TNXMPPSharedGroupsController___didGetSharedGroupsInfo_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var groups = objj_msgSend(aStanza, "childrenWithName:", "group");
        self._oldSelectedIndexesForGroupTable = objj_msgSend(self.tableGroups, "selectedRowIndexes");
        objj_msgSend(self._datasourceGroups, "removeAllObjects");
        objj_msgSend(self._datasourceUsersInGroup, "removeAllObjects");
        for (var i = 0; i < objj_msgSend(groups, "count"); i++)
        {
            var group = objj_msgSend(groups, "objectAtIndex:", i),
                gid = objj_msgSend(group, "valueForAttribute:", "id"),
                name = objj_msgSend(group, "valueForAttribute:", "displayed_name"),
                desc = objj_msgSend(group, "valueForAttribute:", "description"),
                users = objj_msgSend(group, "childrenWithName:", "user"),
                newItem = objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [gid, name, desc, users], ["id", "name", "description", "users"]);
            objj_msgSend(self._datasourceGroups, "addObject:", newItem);
        }
        objj_msgSend(self.tableGroups, "reloadData");
        objj_msgSend(self.tableUsersInGroup, "reloadData");
        objj_msgSend(self.tableGroups, "selectRowIndexes:byExtendingSelection:", self._oldSelectedIndexesForGroupTable, NO);
        objj_msgSend(self, "tableViewSelectionDidChange:", objj_msgSend(CPNotification, "notificationWithName:object:", "", self.tableGroups));
    }
    else
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("createGroup:description:"), function $TNXMPPSharedGroupsController__createGroup_description_(self, _cmd, aName, aDescription)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeXMPPServerGroups});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeXMPPServerGroupsCreate,
        "id": objj_msgSend(CPString, "UUID"),
        "name": aName,
        "description": aDescription});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didCreateGroup:"), self);
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("_didCreateGroup:"), function $TNXMPPSharedGroupsController___didCreateGroup_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(self, "reload")
    else
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("deleteGroupWithID:"), function $TNXMPPSharedGroupsController__deleteGroupWithID_(self, _cmd, aGroupId)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeXMPPServerGroups});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeXMPPServerGroupsDelete,
        "id": aGroupId});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didRemoveGroup:"), self);
}
,["void","CPString"]), new objj_method(sel_getUid("_didRemoveGroup:"), function $TNXMPPSharedGroupsController___didRemoveGroup_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(self, "reload")
    else
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("addUsers:inGroup:"), function $TNXMPPSharedGroupsController__addUsers_inGroup_(self, _cmd, someJIDs, aGroupUID)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeXMPPServerGroups});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeXMPPServerGroupsAddUsers,
        "groupid": aGroupUID});
    for (var i = 0; i < objj_msgSend(someJIDs, "count"); i++)
    {
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "user", {"jid": objj_msgSend(objj_msgSend(someJIDs, "objectAtIndex:", i), "objectForKey:", "JID")});
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didAddUsersInGroup:"), self);
}
,["void","CPArray","CPString"]), new objj_method(sel_getUid("_didAddUsersInGroup:"), function $TNXMPPSharedGroupsController___didAddUsersInGroup_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(self, "reload");
    else
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("removeUsers:fromGroup:"), function $TNXMPPSharedGroupsController__removeUsers_fromGroup_(self, _cmd, someJIDs, aGroupUID)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeXMPPServerGroups});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeXMPPServerGroupsDeleteUsers,
        "groupid": aGroupUID});
    for (var i = 0; i < objj_msgSend(someJIDs, "count"); i++)
    {
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "user", {"jid": objj_msgSend(objj_msgSend(someJIDs, "objectAtIndex:", i), "objectForKey:", "JID")});
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didRemoveUsersFromGroup:"), self);
}
,["void","CPArray","CPString"]), new objj_method(sel_getUid("_didRemoveUsersFromGroup:"), function $TNXMPPSharedGroupsController___didRemoveUsersFromGroup_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(self, "reload");
    }
    else
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("tableViewSelectionDidChange:"), function $TNXMPPSharedGroupsController__tableViewSelectionDidChange_(self, _cmd, aNotification)
{
    var table = objj_msgSend(aNotification, "object");
    if (table === self.tableGroups)
    {
        if (objj_msgSend(self.tableGroups, "numberOfSelectedRows") != 1)
        {
            self._currentSelectedGroup = nil;
            objj_msgSend(self._datasourceUsersInGroup, "removeAllObjects");
            objj_msgSend(self.tableUsersInGroup, "reloadData");
        }
        else
        {
            var index = objj_msgSend(objj_msgSend(self.tableGroups, "selectedRowIndexes"), "firstIndex"),
                group = objj_msgSend(self._datasourceGroups, "objectAtIndex:", index),
                users = objj_msgSend(group, "objectForKey:", "users");
            self._currentSelectedGroup = group;
            objj_msgSend(self._datasourceUsersInGroup, "removeAllObjects");
            for (var i = 0; i < objj_msgSend(users, "count"); i++)
            {
                var user = objj_msgSend(users, "objectAtIndex:", i),
                    newItem = objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [objj_msgSend(user, "valueForAttribute:", "jid")], ["JID"]);
                objj_msgSend(self._datasourceUsersInGroup, "addObject:", newItem);
            }
            objj_msgSend(self.tableUsersInGroup, "reloadData");
        }
    }
    objj_msgSend(self, "setUIAccordingToPermissions");
}
,["void","CPNotification"]), new objj_method(sel_getUid("userFetcherClean"), function $TNXMPPSharedGroupsController__userFetcherClean(self, _cmd)
{
    objj_msgSend(self._usersFetcher, "reset");
    objj_msgSend(self._datasourceUsers, "removeAllObjects");
    objj_msgSend(self.tableUsers, "reloadData");
}
,["void"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNXMPPSharedGroupsController), comment);
}p;23;TNXMPPUsersController.jt;20312;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;16;AppKit/CPImage.jI;21;AppKit/CPScrollView.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;17;AppKit/CPWindow.jI;33;GrowlCappuccino/GrowlCappuccino.jI;15;TNKit/TNAlert.jI;33;TNKit/TNTableViewLazyDataSource.ji;25;TNXMPPServerUserFetcher.jt;19925;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPScrollView.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("GrowlCappuccino/GrowlCappuccino.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("TNKit/TNTableViewLazyDataSource.j", NO);
objj_executeFile("TNXMPPServerUserFetcher.j", YES);
//@class TNTableViewLazyDataSource
//@class TNPermissionsCenter
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global TNPermissionsAdminListUpdatedNotification
var TNArchipelTypeXMPPServerUsers = "archipel:xmppserver:users",
    TNArchipelTypeXMPPServerUsersRegister = "register",
    TNArchipelTypeXMPPServerUsersUnregister = "unregister",
    TNArchipelXMPPUserAdminImage,
    TNArchipelXMPPUserNormalImage;
{var the_class = objj_allocateClassPair(CPObject, "TNXMPPUsersController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonCreate"), new objj_ivar("buttonBarControl"), new objj_ivar("imageFecthingUsers"), new objj_ivar("popoverNewUser"), new objj_ivar("filterField"), new objj_ivar("tableUsers"), new objj_ivar("fieldNewUserPassword"), new objj_ivar("fieldNewUserPasswordConfirm"), new objj_ivar("fieldNewUserUsername"), new objj_ivar("labelFecthingUsers"), new objj_ivar("mainView"), new objj_ivar("viewTableContainer"), new objj_ivar("_delegate"), new objj_ivar("_entity"), new objj_ivar("_datasourceUsers"), new objj_ivar("_addButton"), new objj_ivar("_deleteButton"), new objj_ivar("_grantAdminButton"), new objj_ivar("_revokeAdminButton"), new objj_ivar("_usersFetcher")]);

       
       

       
       

       
       





       
       






       
       




       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("mainView"), function $TNXMPPUsersController__mainView(self, _cmd)
{
return self.mainView;
}
,["CPView"]), new objj_method(sel_getUid("setMainView:"), function $TNXMPPUsersController__setMainView_(self, _cmd, newValue)
{
self.mainView = newValue;
}
,["void","CPView"]), new objj_method(sel_getUid("delegate"), function $TNXMPPUsersController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNXMPPUsersController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("awakeFromCib"), function $TNXMPPUsersController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.viewTableContainer, "setBorderedWithHexColor:", "#C0C7D2");
    objj_msgSend(self.imageFecthingUsers, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "spinner.gif"), CGSizeMake(16, 16)));
    self._datasourceUsers = objj_msgSend(objj_msgSend(TNTableViewLazyDataSource, "alloc"), "init");
    objj_msgSend(self._datasourceUsers, "setTable:", self.tableUsers);
    objj_msgSend(self._datasourceUsers, "setSearchableKeyPaths:", ["name", "JID"]);
    objj_msgSend(self.tableUsers, "setDataSource:", self._datasourceUsers);
    self._usersFetcher = objj_msgSend(objj_msgSend(TNXMPPServerUserFetcher, "alloc"), "init");
    objj_msgSend(self._usersFetcher, "setDataSource:", self._datasourceUsers);
    objj_msgSend(self._usersFetcher, "setDelegate:", self);
    objj_msgSend(self._usersFetcher, "setDisplaysOnlyHumans:", YES);
    self._addButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._addButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/user-add.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._addButton, "setTarget:", self);
    objj_msgSend(self._addButton, "setAction:", sel_getUid("openRegisterUserWindow:"));
    objj_msgSend(self._addButton, "setToolTip:", CPBundleLocalizedString("Register a new user", "Register a new user"));
    self._deleteButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._deleteButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/user-remove.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._deleteButton, "setTarget:", self);
    objj_msgSend(self._deleteButton, "setAction:", sel_getUid("unregisterUser:"));
    objj_msgSend(self._deleteButton, "setToolTip:", CPBundleLocalizedString("Unregister selected users", "Unregister selected users"));
    self._grantAdminButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._grantAdminButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/star.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._grantAdminButton, "setTarget:", self);
    objj_msgSend(self._grantAdminButton, "setAction:", sel_getUid("grantAdmin:"));
    objj_msgSend(self._grantAdminButton, "setToolTip:", CPBundleLocalizedString("Make selected users as admins", "Make selected users as admins"));
    self._revokeAdminButton = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._revokeAdminButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/unstar.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._revokeAdminButton, "setTarget:", self);
    objj_msgSend(self._revokeAdminButton, "setAction:", sel_getUid("revokeAdmin:"));
    objj_msgSend(self._revokeAdminButton, "setToolTip:", CPBundleLocalizedString("Remove admin rights to selected users", "Remove admin rights to selected users"));
    objj_msgSend(self.buttonBarControl, "setButtons:", [self._addButton, self._deleteButton, self._grantAdminButton, self._revokeAdminButton]);
    objj_msgSend(self.filterField, "setTarget:", self._datasourceUsers);
    objj_msgSend(self.filterField, "setAction:", sel_getUid("filterObjects:"));
    objj_msgSend(self.fieldNewUserPassword, "setSecure:", YES);
    objj_msgSend(self.fieldNewUserPasswordConfirm, "setSecure:", YES);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didAdminAccountsListUpdate:"), TNPermissionsAdminListUpdatedNotification, nil);
}
,["void"]), new objj_method(sel_getUid("_didAdminAccountsListUpdate:"), function $TNXMPPUsersController___didAdminAccountsListUpdate_(self, _cmd, aNotification)
{
    if (objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"))
    {
        objj_msgSend(self, "flushUI");
        objj_msgSend(self._usersFetcher, "getXMPPUsers");
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didReceiveUsersPush:"), function $TNXMPPUsersController___didReceiveUsersPush_(self, _cmd, somePushInfo)
{
    var sender = objj_msgSend(somePushInfo, "objectForKey:", "owner"),
        type = objj_msgSend(somePushInfo, "objectForKey:", "type"),
        change = objj_msgSend(somePushInfo, "objectForKey:", "change"),
        date = objj_msgSend(somePushInfo, "objectForKey:", "date"),
        stanza = objj_msgSend(somePushInfo, "objectForKey:", "rawStanza");
    switch (change)
    {
        case "registered":
            objj_msgSend(self, "flushUI");
            objj_msgSend(self._usersFetcher, "getXMPPUsers");
            break;
        case "unregistered":
            objj_msgSend(self, "flushUI");
            objj_msgSend(self._usersFetcher, "getXMPPUsers");
            break
    }
    return YES;
}
,["void","CPDictionary"]), new objj_method(sel_getUid("setEntity:"), function $TNXMPPUsersController__setEntity_(self, _cmd, anEntity)
{
    self._entity = anEntity;
    objj_msgSend(self._usersFetcher, "setEntity:", self._entity);
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("willHide"), function $TNXMPPUsersController__willHide(self, _cmd)
{
    objj_msgSend(self, "closeRegisterUserWindow:", nil);
    objj_msgSend(self._usersFetcher, "reset");
}
,["void"]), new objj_method(sel_getUid("permissionsChanged"), function $TNXMPPUsersController__permissionsChanged(self, _cmd)
{
    objj_msgSend(self, "reload");
}
,["void"]), new objj_method(sel_getUid("setUIAccordingToPermissions"), function $TNXMPPUsersController__setUIAccordingToPermissions(self, _cmd)
{
    objj_msgSend(self._delegate, "setControl:enabledAccordingToPermissions:", self._revokeAdminButton, ["dummy_permission"]);
    objj_msgSend(self._delegate, "setControl:enabledAccordingToPermissions:", self._grantAdminButton, ["dummy_permission"]);
    objj_msgSend(self._delegate, "setControl:enabledAccordingToPermissions:", self._addButton, ["xmppserver_users_list", "xmppserver_users_register"]);
    objj_msgSend(self._delegate, "setControl:enabledAccordingToPermissions:", self._deleteButton, ["xmppserver_users_list", "xmppserver_users_unregister"]);
    if (!objj_msgSend(self._delegate, "currentEntityHasPermissions:", ["xmppserver_users_list", "xmppserver_users_register"]))
        objj_msgSend(self.popoverNewUser, "close");
}
,["void"]), new objj_method(sel_getUid("reload"), function $TNXMPPUsersController__reload(self, _cmd)
{
    objj_msgSend(self, "setUIAccordingToPermissions");
    objj_msgSend(self.labelFecthingUsers, "setHidden:", YES);
    objj_msgSend(self.imageFecthingUsers, "setHidden:", YES);
    if (objj_msgSend(self._datasourceUsers, "isCurrentlyLoading"))
        return;
    objj_msgSend(self, "flushUI");
    objj_msgSend(self._usersFetcher, "getXMPPUsers");
}
,["void"]), new objj_method(sel_getUid("flushUI"), function $TNXMPPUsersController__flushUI(self, _cmd)
{
    objj_msgSend(self._usersFetcher, "reset");
    objj_msgSend(self._datasourceUsers, "removeAllObjects");
    objj_msgSend(self.tableUsers, "reloadData");
}
,["void"]), new objj_method(sel_getUid("openRegisterUserWindow:"), function $TNXMPPUsersController__openRegisterUserWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.fieldNewUserUsername, "setStringValue:", "");
    objj_msgSend(self.fieldNewUserPassword, "setStringValue:", "");
    objj_msgSend(self.fieldNewUserPasswordConfirm, "setStringValue:", "");
    objj_msgSend(self.popoverNewUser, "close");
    objj_msgSend(self.popoverNewUser, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.popoverNewUser, "setDefaultButton:", self.buttonCreate);
    objj_msgSend(self.popoverNewUser, "makeFirstResponder:", self.fieldNewUserUsername);
}
,["id","id"]), new objj_method(sel_getUid("closeRegisterUserWindow:"), function $TNXMPPUsersController__closeRegisterUserWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.popoverNewUser, "close");
}
,["id","id"]), new objj_method(sel_getUid("registerUser:"), function $TNXMPPUsersController__registerUser_(self, _cmd, aSender)
{
    if (objj_msgSend(self.fieldNewUserPassword, "stringValue") != objj_msgSend(self.fieldNewUserPasswordConfirm, "stringValue"))
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Password doesn't match", "Password doesn't match"), CPBundleLocalizedString("You have to enter identical passwords", "You have to enter identical passwords"));
        return;
    }
    if (objj_msgSend(objj_msgSend(self.fieldNewUserPassword, "stringValue"), "length") < 8)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Bad password", "Bad password"), CPBundleLocalizedString("The password is too short. it must be at least 8 characters", "The password is too short. it must be at least 8 characters"));
        return;
    }
    objj_msgSend(self.popoverNewUser, "close");
    var JID;
    try {
        JID = objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(self.fieldNewUserUsername, "stringValue"));
        if (!objj_msgSend(JID, "domain"))
            objj_msgSend(CPException, "raise:reason:", "Bad JID", "JID must follow the form user@node")
    }
    catch(e)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", CPBundleLocalizedString("Bad JID", "Bad JID"), objj_msgSend(self.fieldNewUserUsername, "stringValue") + CPLocalizedString(" is not a valid JID.", " is not a valid JID."), CPCriticalAlertStyle);
        return;
    }
    objj_msgSend(self, "registerUserWithJID:password:", JID, objj_msgSend(self.fieldNewUserPassword, "stringValue"));
}
,["id","id"]), new objj_method(sel_getUid("unregisterUser:"), function $TNXMPPUsersController__unregisterUser_(self, _cmd, aSender)
{
    if (objj_msgSend(self.tableUsers, "numberOfSelectedRows") < 1)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("You must select one user", "You must select one user"), "");
        return;
    }
    var indexes = objj_msgSend(self.tableUsers, "selectedRowIndexes"),
        users = objj_msgSend(self._datasourceUsers, "objectsAtIndexes:", indexes),
        usernames = objj_msgSend(CPArray, "array");
    for (var i = 0; i < objj_msgSend(users, "count"); i ++)
    {
        var user = objj_msgSend(users, "objectAtIndex:", i);
        objj_msgSend(usernames, "addObject:", objj_msgSend(user, "objectForKey:", "JID"));
    }
    var thealert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Unregister", "Unregister"), CPBundleLocalizedString("Are you sure you want to unregister selected user(s) ?", "Are you sure you want to unregister selected user(s) ?"), self, [[CPBundleLocalizedString("Confirm", "Confirm"), sel_getUid("unregisterUserWithJIDs:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(thealert, "setUserInfo:", usernames);
    objj_msgSend(thealert, "runModal");
}
,["id","id"]), new objj_method(sel_getUid("grantAdmin:"), function $TNXMPPUsersController__grantAdmin_(self, _cmd, aSender)
{
    var indexes = objj_msgSend(self.tableUsers, "selectedRowIndexes"),
        users = objj_msgSend(self._datasourceUsers, "objectsAtIndexes:", indexes);
    for (var i = 0; i < objj_msgSend(users, "count"); i ++)
    {
        var user = objj_msgSend(users, "objectAtIndex:", i);
        objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "addAdminAccount:", objj_msgSend(user, "objectForKey:", "JID"));
    }
}
,["id","id"]), new objj_method(sel_getUid("revokeAdmin:"), function $TNXMPPUsersController__revokeAdmin_(self, _cmd, aSender)
{
    var indexes = objj_msgSend(self.tableUsers, "selectedRowIndexes"),
        users = objj_msgSend(self._datasourceUsers, "objectsAtIndexes:", indexes);
    for (var i = 0; i < objj_msgSend(users, "count"); i ++)
    {
        var user = objj_msgSend(users, "objectAtIndex:", i);
        if (!objj_msgSend(objj_msgSend(user, "objectForKey:", "JID"), "bareEquals:", objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID")))
            objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "removeAdminAccount:", objj_msgSend(user, "objectForKey:", "JID"));
        else
        {
            objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPLocalizedString("Admin rights", "Admin rights"), CPLocalizedString("You can't revoke yourself your admin rights. No resignation allowed buddy!", "You can't revoke yourself your admin rights. No resignation allowed buddy!"));
        }
    }
}
,["id","id"]), new objj_method(sel_getUid("registerUserWithJID:password:"), function $TNXMPPUsersController__registerUserWithJID_password_(self, _cmd, aJID, aPassword)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeXMPPServerUsers});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeXMPPServerUsersRegister});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "user", {"jid": objj_msgSend(aJID, "bare"), "password": aPassword});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didRegisterUser:"), self);
}
,["void","TNStropheJID","CPString"]), new objj_method(sel_getUid("_didRegisterUser:"), function $TNXMPPUsersController___didRegisterUser_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", CPLocalizedString("Regisration complete", "Regisration complete"), CPLocalizedString("New user has been sucessfully registred", "New user has been sucessfully registred"));
    }
    else
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", CPLocalizedString("Registration error", "Registration error"), CPLocalizedString("Agent was unable to register the user.", "Agent was unable to register the user."), TNGrowlIconError);
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("unregisterUserWithJIDs:"), function $TNXMPPUsersController__unregisterUserWithJIDs_(self, _cmd, someJIDs)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeXMPPServerUsers});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeXMPPServerUsersUnregister});
    for (var i = 0; i < objj_msgSend(someJIDs, "count"); i++)
    {
        var JID = objj_msgSend(someJIDs, "objectAtIndex:", i);
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "user", {"jid": objj_msgSend(JID, "bare")});
        objj_msgSend(stanza, "up");
    }
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didUnregisterUsers:"), self);
}
,["void","CPArray"]), new objj_method(sel_getUid("_didUnregisterUsers:"), function $TNXMPPUsersController___didUnregisterUsers_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", CPLocalizedString("Unegisration complete", "Unegisration complete"), CPLocalizedString("User has been sucessfully unregistred", "User has been sucessfully unregistred"));
    }
    else
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", CPLocalizedString("Unregistration error", "Unregistration error"), CPLocalizedString("Agent was unable to unregister the user.", "Agent was unable to unregister the user."), TNGrowlIconError);
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("userFetcherClean"), function $TNXMPPUsersController__userFetcherClean(self, _cmd)
{
    objj_msgSend(self, "flushUI");
}
,["void"]), new objj_method(sel_getUid("userFetcher:isLoading:"), function $TNXMPPUsersController__userFetcher_isLoading_(self, _cmd, userFecther, isLoading)
{
    objj_msgSend(self.labelFecthingUsers, "setHidden:", !isLoading);
    objj_msgSend(self.imageFecthingUsers, "setHidden:", !isLoading);
}
,["void","TNXMPPServerUserFetcher","BOOL"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNXMPPUsersController), comment);
}e;