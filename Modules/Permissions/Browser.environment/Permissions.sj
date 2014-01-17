@STATIC;1.0;p;14;TNPermission.jt;1188;@STATIC;1.0;I;23;Foundation/Foundation.jt;1141;objj_executeFile("Foundation/Foundation.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNPermission"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_name"), new objj_ivar("_description"), new objj_ivar("_state")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("name"), function $TNPermission__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNPermission__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("description"), function $TNPermission__description(self, _cmd)
{
return self._description;
}
,["CPString"]), new objj_method(sel_getUid("setDescription:"), function $TNPermission__setDescription_(self, _cmd, newValue)
{
self._description = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("state"), function $TNPermission__state(self, _cmd)
{
return self._state;
}
,["BOOL"]), new objj_method(sel_getUid("setState:"), function $TNPermission__setState_(self, _cmd, newValue)
{
self._state = newValue;
}
,["void","BOOL"])]);
}p;22;TNPermissionDataView.jt;2767;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;19;AppKit/CPCheckBox.jI;20;AppKit/CPTextField.ji;29;../../Views/TNBasicDataView.jt;2617;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPCheckBox.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("../../Views/TNBasicDataView.j", YES);
{var the_class = objj_allocateClassPair(TNBasicDataView, "TNPermissionDataView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("fieldName"), new objj_ivar("fieldDescription"), new objj_ivar("checkboxState"), new objj_ivar("_currentPermission")]);

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setObjectValue:"), function $TNPermissionDataView__setObjectValue_(self, _cmd, aPermission)
{
    self._currentPermission = aPermission;
    objj_msgSend(self.fieldName, "setStringValue:", objj_msgSend(self._currentPermission, "name"));
    objj_msgSend(self.fieldDescription, "setStringValue:", objj_msgSend(self._currentPermission, "description"));
    objj_msgSend(self.checkboxState, "setState:", objj_msgSend(self._currentPermission, "state") ? CPOnState : CPOffState);
    objj_msgSend(self.checkboxState, "setTarget:", self);
    objj_msgSend(self.checkboxState, "setAction:", sel_getUid("updateState:"));
}
,["void","CPDictionary"]), new objj_method(sel_getUid("updateState:"), function $TNPermissionDataView__updateState_(self, _cmd, aSender)
{
    objj_msgSend(self._currentPermission, "setState:", (objj_msgSend(aSender, "state") == CPOnState))
}
,["id","id"]), new objj_method(sel_getUid("initWithCoder:"), function $TNPermissionDataView__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNPermissionDataView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self.fieldName = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldName");
        self.fieldDescription = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldDescription");
        self.checkboxState = objj_msgSend(aCoder, "decodeObjectForKey:", "checkboxState");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNPermissionDataView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNPermissionDataView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldName, "fieldName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldDescription, "fieldDescription");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.checkboxState, "checkboxState");
}
,["void","CPCoder"])]);
}p;25;TNPermissionsController.jt;27531;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;16;AppKit/CPImage.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPSplitView.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;29;TNKit/TNTableViewDataSource.jI;33;TNKit/TNTableViewLazyDataSource.ji;22;../../Model/TNModule.ji;25;TNPermissionUserFetcher.ji;19;TNRolesController.ji;22;TNPermissionDataView.ji;14;TNPermission.jt;27094;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPSplitView.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("TNKit/TNTableViewLazyDataSource.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("TNPermissionUserFetcher.j", YES);
objj_executeFile("TNRolesController.j", YES);
objj_executeFile("TNPermissionDataView.j", YES);
objj_executeFile("TNPermission.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global TNArchipelEntityTypeUser
var TNArchipelTypePermissions = "archipel:permissions",
    TNArchipelTypePermissionsList = "list",
    TNArchipelTypePermissionsGet = "get",
    TNArchipelTypePermissionsSet = "set",
    TNArchipelTypePermissionsGetOwn = "getown",
    TNArchipelTypePermissionsSetOwn = "setown",
    TNArchipelPushNotificationPermissions = "archipel:push:permissions",
    TNArchipelPushNotificationXMPPServerUsers = "archipel:push:xmppserver:users";
{var the_class = objj_allocateClassPair(TNModule, "TNPermissionsController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonBarControl"), new objj_ivar("imageFecthingUsers"), new objj_ivar("filterField"), new objj_ivar("filterRosterUsers"), new objj_ivar("filterUsers"), new objj_ivar("splitView"), new objj_ivar("tablePermissions"), new objj_ivar("tableRosterUsers"), new objj_ivar("tableUsers"), new objj_ivar("labelFecthingUsers"), new objj_ivar("labelNoUserSelected"), new objj_ivar("viewTableContainer"), new objj_ivar("permissionDataViewPrototype"), new objj_ivar("rolesController"), new objj_ivar("_datasourcePermissions"), new objj_ivar("_currentUserPermissions"), new objj_ivar("_applyRoleButton"), new objj_ivar("_saveAsTemplateButton"), new objj_ivar("_saveButton"), new objj_ivar("_defaultAvatar"), new objj_ivar("_outlineViewUsers"), new objj_ivar("_userFetcher"), new objj_ivar("_datasourceRosterUsers"), new objj_ivar("_datasourceUsers")]);
       
       






       
       


       
       






       
       


       
       






       
       



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("datasourcePermissions"), function $TNPermissionsController__datasourcePermissions(self, _cmd)
{
return self._datasourcePermissions;
}
,["TNTableViewDataSource"]), new objj_method(sel_getUid("_setDatasourcePermissions:"), function $TNPermissionsController___setDatasourcePermissions_(self, _cmd, newValue)
{
self._datasourcePermissions = newValue;
}
,["void","TNTableViewDataSource"]), new objj_method(sel_getUid("awakeFromCib"), function $TNPermissionsController__awakeFromCib(self, _cmd)
{
    self._currentUserPermissions = objj_msgSend(CPArray, "array");
    self._defaultAvatar = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "user-unknown.png"));
    objj_msgSend(self.viewTableContainer, "setBorderedWithHexColor:", "#C0C7D2");
    objj_msgSend(self.imageFecthingUsers, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "spinner.gif"), CGSizeMake(16, 16)));
    objj_msgSend(self.splitView, "setBorderedWithHexColor:", "#C0C7D2");
    objj_msgSend(self.viewTableContainer, "setHidden:", YES);
    self._datasourcePermissions = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self._datasourcePermissions, "setTable:", self.tablePermissions);
    objj_msgSend(self._datasourcePermissions, "setSearchableKeyPaths:", ["name", "description"]);
    objj_msgSend(self.tablePermissions, "setDataSource:", self._datasourcePermissions);
    objj_msgSend(objj_msgSend(self.tablePermissions, "tableColumnWithIdentifier:", "self"), "setDataView:", objj_msgSend(self.permissionDataViewPrototype, "duplicate"));
    objj_msgSend(self.tablePermissions, "setIntercellSpacing:", CGSizeMakeZero());
    self._saveButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._saveButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/save.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._saveButton, "setTarget:", self);
    objj_msgSend(self._saveButton, "setAction:", sel_getUid("changePermissionsState:"));
    objj_msgSend(self._saveButton, "setToolTip:", CPBundleLocalizedString("Save current permission set", "Save current permission set"));
    self._saveAsTemplateButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._saveAsTemplateButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/role_add.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._saveAsTemplateButton, "setTarget:", self.rolesController);
    objj_msgSend(self._saveAsTemplateButton, "setAction:", sel_getUid("openNewTemplateWindow:"));
    objj_msgSend(self._saveAsTemplateButton, "setToolTip:", CPBundleLocalizedString("Save current permission set as template", "Save current permission set as template"));
    self._applyRoleButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._applyRoleButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/roles.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._applyRoleButton, "setTarget:", self);
    objj_msgSend(self._applyRoleButton, "setAction:", sel_getUid("openRolesWindow:"));
    objj_msgSend(self._applyRoleButton, "setToolTip:", CPBundleLocalizedString("Apply a role", "Apply a role"));
    objj_msgSend(self.buttonBarControl, "setButtons:", [self._saveButton, self._saveAsTemplateButton, self._applyRoleButton]);
    objj_msgSend(self.filterField, "setTarget:", self._datasourcePermissions);
    objj_msgSend(self.filterField, "setAction:", sel_getUid("filterObjects:"));
    objj_msgSend(self.rolesController, "setDelegate:", self);
    objj_msgSend(self.labelNoUserSelected, "setTextShadowOffset:", CGSizeMake(0.0, 1.0));
    objj_msgSend(self.labelNoUserSelected, "setValue:forThemeAttribute:", objj_msgSend(CPColor, "whiteColor"), "text-shadow-color");
    self._datasourceRosterUsers= objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self._datasourceRosterUsers, "setTable:", self.tableRosterUsers);
    objj_msgSend(self._datasourceRosterUsers, "setSearchableKeyPaths:", ["JID.bare"]);
    objj_msgSend(self.tableRosterUsers, "setDataSource:", self._datasourceRosterUsers);
    self._datasourceUsers = objj_msgSend(objj_msgSend(TNTableViewLazyDataSource, "alloc"), "init");
    objj_msgSend(self._datasourceUsers, "setTable:", self.tableUsers);
    objj_msgSend(self.tableUsers, "setDataSource:", self._datasourceUsers);
    self._userFetcher = objj_msgSend(objj_msgSend(TNPermissionUserFetcher, "alloc"), "init");
    objj_msgSend(self._userFetcher, "setDisplaysOnlyHumans:", YES);
    objj_msgSend(self._userFetcher, "setDataSource:", self._datasourceUsers);
    objj_msgSend(self._userFetcher, "setDelegate:", self);
    objj_msgSend(self.filterUsers, "setTarget:", self._datasourceUsers);
    objj_msgSend(self.filterUsers, "setAction:", sel_getUid("filterObjects:"));
    objj_msgSend(self.filterRosterUsers, "setTarget:", self._datasourceRosterUsers);
    objj_msgSend(self.filterRosterUsers, "setAction:", sel_getUid("filterObjects:"));
    var filterBg = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "Backgrounds/background-filter.png"));
    objj_msgSend(objj_msgSend(self.filterUsers, "superview"), "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", filterBg));
    objj_msgSend(objj_msgSend(self.filterRosterUsers, "superview"), "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", filterBg));
    objj_msgSend(objj_msgSend(self.filterField, "superview"), "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", filterBg));
}
,["void"]), new objj_method(sel_getUid("willLoad"), function $TNPermissionsController__willLoad(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNPermissionsController").super_class }, "willLoad"))
        return NO;
    objj_msgSend(self.rolesController, "fetchPubSubNodeIfNeeded");
    objj_msgSend(self._userFetcher, "setEntity:", self._entity);
    objj_msgSend(self.tableRosterUsers, "setDelegate:", nil);
    objj_msgSend(self.tableRosterUsers, "setDelegate:", self);
    objj_msgSend(self.tableUsers, "setDelegate:", nil);
    objj_msgSend(self.tableUsers, "setDelegate:", self);
    objj_msgSend(self.tablePermissions, "setDelegate:", nil);
    objj_msgSend(self.tablePermissions, "setDelegate:", self);
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceivePermissionsPush:"), TNArchipelPushNotificationPermissions);
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceiveUsersPush:"), TNArchipelPushNotificationXMPPServerUsers);
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willShow"), function $TNPermissionsController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNPermissionsController").super_class }, "willShow"))
        return NO;
    objj_msgSend(self.labelFecthingUsers, "setHidden:", NO);
    objj_msgSend(self.imageFecthingUsers, "setHidden:", NO);
    objj_msgSend(self, "reloadRosterUsersTable");
    objj_msgSend(self, "reloadUsersTable");
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willHide"), function $TNPermissionsController__willHide(self, _cmd)
{
    objj_msgSend(self._userFetcher, "reset");
    objj_msgSend(self.rolesController, "closeWindow:", nil);
    objj_msgSend(self.rolesController, "closeNewTemplateWindow:", nil);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNPermissionsController").super_class }, "willHide");
}
,["void"]), new objj_method(sel_getUid("permissionsChanged"), function $TNPermissionsController__permissionsChanged(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNPermissionsController").super_class }, "permissionsChanged");
    if (objj_msgSend(self, "isVisible"))
    {
        objj_msgSend(self, "reloadRosterUsersTable");
        objj_msgSend(self, "reloadUsersTable");
    }
}
,["void"]), new objj_method(sel_getUid("setUIAccordingToPermissions"), function $TNPermissionsController__setUIAccordingToPermissions(self, _cmd)
{
    var hasSetOwn = objj_msgSend(self, "currentEntityHasPermission:", "permission_setown"),
        hasSet = objj_msgSend(self, "currentEntityHasPermission:", "permission_set");
    if (hasSet || hasSetOwn)
    {
        if (hasSetOwn)
            objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._saveButton, "permission_setown");
        if (hasSet)
            objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._saveButton, "permission_set");
    }
    else
        objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._saveButton, "permission_FAKE!");
}
,["void"]), new objj_method(sel_getUid("flushUI"), function $TNPermissionsController__flushUI(self, _cmd)
{
    objj_msgSend(self._userFetcher, "reset");
    objj_msgSend(self._datasourceUsers, "removeAllObjects");
    objj_msgSend(self._datasourceRosterUsers, "removeAllObjects");
    objj_msgSend(self._datasourcePermissions, "removeAllObjects");
    objj_msgSend(self.tableUsers, "reloadData");
    objj_msgSend(self.tableRosterUsers, "reloadData");
    objj_msgSend(self.tablePermissions, "reloadData");
}
,["void"]), new objj_method(sel_getUid("_didReceivePermissionsPush:"), function $TNPermissionsController___didReceivePermissionsPush_(self, _cmd, somePushInfo)
{
    var sender = objj_msgSend(somePushInfo, "objectForKey:", "owner"),
        type = objj_msgSend(somePushInfo, "objectForKey:", "type"),
        change = objj_msgSend(somePushInfo, "objectForKey:", "change"),
        date = objj_msgSend(somePushInfo, "objectForKey:", "date");
    return YES;
}
,["BOOL","CPDictionary"]), new objj_method(sel_getUid("_didReceiveUsersPush:"), function $TNPermissionsController___didReceiveUsersPush_(self, _cmd, somePushInfo)
{
    var sender = objj_msgSend(somePushInfo, "objectForKey:", "owner"),
        type = objj_msgSend(somePushInfo, "objectForKey:", "type"),
        change = objj_msgSend(somePushInfo, "objectForKey:", "change"),
        date = objj_msgSend(somePushInfo, "objectForKey:", "date"),
        stanza = objj_msgSend(somePushInfo, "objectForKey:", "rawStanza");
    var users = objj_msgSend(stanza, "childrenWithName:", "user");
    objj_msgSend(self, "reloadUsersTable");
    return YES;
}
,["BOOL","CPDictionary"]), new objj_method(sel_getUid("applyPermissions:"), function $TNPermissionsController__applyPermissions_(self, _cmd, somePermissions)
{
    for (var j = 0; j < objj_msgSend(self._datasourcePermissions, "count"); j++)
    {
        var perm = objj_msgSend(self._datasourcePermissions, "objectAtIndex:", j);
        objj_msgSend(perm, "setState:", NO);
    }
    objj_msgSend(self, "addPermissions:", somePermissions);
}
,["void","CPArray"]), new objj_method(sel_getUid("addPermissions:"), function $TNPermissionsController__addPermissions_(self, _cmd, somePermissions)
{
    for (var i = 0; i < objj_msgSend(somePermissions, "count"); i++)
    {
        var permTemplate = objj_msgSend(somePermissions, "objectAtIndex:", i);
        for (var j = 0; j < objj_msgSend(self._datasourcePermissions, "count"); j++)
        {
            var perm = objj_msgSend(self._datasourcePermissions, "objectAtIndex:", j);
            if (objj_msgSend(perm, "name") == objj_msgSend(permTemplate, "valueForAttribute:", "permission_name"))
            {
                objj_msgSend(perm, "setState:", YES);
                break;
            }
        }
    }
    objj_msgSend(self.tablePermissions, "reloadData");
}
,["void","CPArray"]), new objj_method(sel_getUid("retractPermissions:"), function $TNPermissionsController__retractPermissions_(self, _cmd, somePermissions)
{
    for (var i = 0; i < objj_msgSend(somePermissions, "count"); i++)
    {
        var permTemplate = objj_msgSend(somePermissions, "objectAtIndex:", i);
        for (var j = 0; j < objj_msgSend(self._datasourcePermissions, "count"); j++)
        {
            var perm = objj_msgSend(self._datasourcePermissions, "objectAtIndex:", j);
            if (objj_msgSend(perm, "name") == objj_msgSend(permTemplate, "valueForAttribute:", "permission_name"))
            {
                objj_msgSend(perm, "setState:", NO);
                break;
            }
        }
    }
    objj_msgSend(self.tablePermissions, "reloadData");
}
,["void","CPArray"]), new objj_method(sel_getUid("reloadUsersTable"), function $TNPermissionsController__reloadUsersTable(self, _cmd)
{
    objj_msgSend(self._userFetcher, "reset");
    objj_msgSend(self._datasourceUsers, "removeAllObjects");
    objj_msgSend(self.tableUsers, "reloadData");
    objj_msgSend(self._userFetcher, "getXMPPUsers");
}
,["void"]), new objj_method(sel_getUid("reloadRosterUsersTable"), function $TNPermissionsController__reloadRosterUsersTable(self, _cmd)
{
    objj_msgSend(self._datasourceRosterUsers, "removeAllObjects");
    for (var i = 0; i < objj_msgSend(objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contacts"), "count"); i++)
    {
        var contact = objj_msgSend(objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contacts"), "objectAtIndex:", i);
        if (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(contact, "vCard")) == TNArchipelEntityTypeUser)
            objj_msgSend(self._datasourceRosterUsers, "addObject:", contact);
    }
    objj_msgSend(self.tableRosterUsers, "reloadData");
}
,["void"]), new objj_method(sel_getUid("changeCurrentUser:"), function $TNPermissionsController__changeCurrentUser_(self, _cmd, currentTable)
{
    if (objj_msgSend(currentTable, "numberOfSelectedRows") > 0)
    {
        var selectedObjects = objj_msgSend(objj_msgSend(currentTable, "dataSource"), "objectsAtIndexes:", objj_msgSend(currentTable, "selectedRowIndexes"));
        objj_msgSend(self.viewTableContainer, "setHidden:", NO);
        objj_msgSend(self.labelNoUserSelected, "setHidden:", YES);
        var object = objj_msgSend(selectedObjects, "firstObject");
        if (objj_msgSend(object, "isKindOfClass:", TNStropheContact))
            objj_msgSend(self, "getUserPermissions:", objj_msgSend(objj_msgSend(object, "JID"), "bare"));
        else
            objj_msgSend(self, "getUserPermissions:", objj_msgSend(object, "bare"));
    }
    else
    {
        objj_msgSend(self._datasourcePermissions, "removeAllObjects");
        objj_msgSend(self.tablePermissions, "reloadData");
        objj_msgSend(self.viewTableContainer, "setHidden:", YES);
        objj_msgSend(self.labelNoUserSelected, "setHidden:", NO);
    }
}
,["void","id"]), new objj_method(sel_getUid("changePermissionsState:"), function $TNPermissionsController__changePermissionsState_(self, _cmd, aSender)
{
    objj_msgSend(self, "changePermissionsState");
}
,["id","id"]), new objj_method(sel_getUid("openRolesWindow:"), function $TNPermissionsController__openRolesWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.rolesController, "openWindow:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("getPermissions"), function $TNPermissionsController__getPermissions(self, _cmd)
{
    if (!objj_msgSend(self, "currentEntityHasPermission:", "permission_list"))
        return;
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypePermissions});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypePermissionsList});
    objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceivePermissions:"), self);
}
,["void"]), new objj_method(sel_getUid("_didReceivePermissions:"), function $TNPermissionsController___didReceivePermissions_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(self._datasourcePermissions, "removeAllObjects");
        var permissions = objj_msgSend(aStanza, "childrenWithName:", "permission");
        for (var i = 0; i < objj_msgSend(permissions, "count"); i++)
        {
            var permission = objj_msgSend(permissions, "objectAtIndex:", i),
                name = objj_msgSend(permission, "valueForAttribute:", "name"),
                description = objj_msgSend(permission, "valueForAttribute:", "description"),
                state = objj_msgSend(self._currentUserPermissions, "containsObject:", name) ? CPOnState : CPOffState,
                newPermission = objj_msgSend(objj_msgSend(TNPermission, "alloc"), "init");
            objj_msgSend(newPermission, "setName:", name);
            objj_msgSend(newPermission, "setDescription:", description);
            objj_msgSend(newPermission, "setState:", state);
            objj_msgSend(self._datasourcePermissions, "addObject:", newPermission);
        }
        objj_msgSend(self.tablePermissions, "reloadData");
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusReady);
    }
    else
    {
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusError);
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("getUserPermissions:"), function $TNPermissionsController__getUserPermissions_(self, _cmd, aUser)
{
    if (!objj_msgSend(self, "currentEntityHasPermission:", "permission_get") && !objj_msgSend(self, "currentEntityHasPermission:", "permission_getown"))
        return;
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get"),
        currentAction = TNArchipelTypePermissionsGetOwn;
    if (objj_msgSend(self, "currentEntityHasPermission:", "permission_get"))
        currentAction = TNArchipelTypePermissionsGet
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypePermissions});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": currentAction,
        "permission_type": "user",
        "permission_target": aUser});
    objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveUserPermissions:"), self);
}
,["void","CPString"]), new objj_method(sel_getUid("_didReceiveUserPermissions:"), function $TNPermissionsController___didReceiveUserPermissions_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var permissions = objj_msgSend(aStanza, "childrenWithName:", "permission");
        objj_msgSend(self._currentUserPermissions, "removeAllObjects");
        for (var i = 0; i < objj_msgSend(permissions, "count"); i++)
        {
            var permission = objj_msgSend(permissions, "objectAtIndex:", i),
                name = objj_msgSend(permission, "valueForAttribute:", "name");
            objj_msgSend(self._currentUserPermissions, "addObject:", name)
        }
        objj_msgSend(self, "getPermissions");
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("changePermissionsState"), function $TNPermissionsController__changePermissionsState(self, _cmd)
{
    var currentTable = (objj_msgSend(self.tableUsers, "numberOfSelectedRows") > 0) ? self.tableUsers : self.tableRosterUsers,
        stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set"),
        currentAction = TNArchipelTypePermissionsSetOwn,
        permissionTargets = objj_msgSend(objj_msgSend(currentTable, "dataSource"), "objectsAtIndexes:", objj_msgSend(currentTable, "selectedRowIndexes"));
    if (objj_msgSend(self, "currentEntityHasPermission:", "permission_set"))
        currentAction = TNArchipelTypePermissionsSet
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypePermissions});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": currentAction});
    for (var i = 0; i < objj_msgSend(self._datasourcePermissions, "count"); i++)
    {
        var perm = objj_msgSend(self._datasourcePermissions, "objectAtIndex:", i);
        for (var j = 0; j < objj_msgSend(permissionTargets, "count"); j++)
        {
            var target = objj_msgSend(permissionTargets, "objectAtIndex:", j);
            objj_msgSend(stanza, "addChildWithName:andAttributes:", "permission", {
                    "permission_target": objj_msgSend(target, "isKindOfClass:", TNStropheContact) ? objj_msgSend(objj_msgSend(target, "JID"), "bare") : objj_msgSend(target, "bare"),
                    "permission_type": "user",
                    "permission_name": objj_msgSend(perm, "name"),
                    "permission_value": objj_msgSend(perm, "state")
                });
            objj_msgSend(stanza, "up");
        }
    }
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didChangePermissionsState:"), self);
}
,["void"]), new objj_method(sel_getUid("_didChangePermissionsState:"), function $TNPermissionsController___didChangePermissionsState_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Permission for selected user has been saved.", "Permission for selected user has been saved."));
    else
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("tableView:willDisplayView:forTableColumn:row:"), function $TNPermissionsController__tableView_willDisplayView_forTableColumn_row_(self, _cmd, aTableView, aView, aColumn, aRow)
{
    if (aTableView !== self.tablePermissions)
        return;
    try
    {
        if (objj_msgSend(aView, "isKindOfClass:", CPCheckBox))
            objj_msgSend(aView, "setState:", objj_msgSend(objj_msgSend(self._datasourcePermissions, "objectAtIndex:", aRow), "state"));
    }
    catch (e)
    {
        CPLog.error("weird error here " + e);
    }
}
,["void","CPTableView","CPView","CPTableColumn","int"]), new objj_method(sel_getUid("tableViewSelectionDidChange:"), function $TNPermissionsController__tableViewSelectionDidChange_(self, _cmd, aNotification)
{
    if (objj_msgSend(aNotification, "object") === self.tablePermissions)
        return;
    switch (objj_msgSend(aNotification, "object"))
    {
        case self.tableUsers:
            if (objj_msgSend(self.tableRosterUsers, "numberOfSelectedRows") > 0)
                objj_msgSend(self.tableRosterUsers, "deselectAll");
            else
                objj_msgSend(self, "changeCurrentUser:", self.tableUsers);
            break;
        case self.tableRosterUsers:
            if (objj_msgSend(self.tableUsers, "numberOfSelectedRows") > 0)
                objj_msgSend(self.tableUsers, "deselectAll");
            else
                objj_msgSend(self, "changeCurrentUser:", self.tableRosterUsers);
            break;
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("userFetcherClean"), function $TNPermissionsController__userFetcherClean(self, _cmd)
{
    objj_msgSend(self._userFetcher, "reset");
    objj_msgSend(self._datasourceUsers, "removeAllObjects");
    objj_msgSend(self.tableUsers, "reloadData");
}
,["void"]), new objj_method(sel_getUid("userFetcher:isLoading:"), function $TNPermissionsController__userFetcher_isLoading_(self, _cmd, userFecther, isLoading)
{
    objj_msgSend(self.labelFecthingUsers, "setHidden:", !isLoading);
    objj_msgSend(self.imageFecthingUsers, "setHidden:", !isLoading);
}
,["void","TNXMPPServerUserFetcher","BOOL"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNPermissionsController), comment);
}p;25;TNPermissionUserFetcher.jt;9327;@STATIC;1.0;I;23;Foundation/Foundation.jI;35;StropheCappuccino/TNStropheStanza.jI;36;StropheCappuccino/TNStropheContact.jI;33;TNKit/TNTableViewLazyDataSource.jt;9161;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("StropheCappuccino/TNStropheContact.j", NO);
objj_executeFile("TNKit/TNTableViewLazyDataSource.j", NO);
//@class TNPermissionsCenter
var TNArchipelTypeXMPPServerUsers = "archipel:xmppserver:users",
    TNArchipelTypeXMPPServerUsersList = "list",
    TNArchipelTypeXMPPServerUsersFilter = "filter",
    TNArchipelTypeXMPPServerUsersNumber = "number";
{var the_class = objj_allocateClassPair(CPObject, "TNPermissionUserFetcher"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_displaysOnlyHumans"), new objj_ivar("_delegate"), new objj_ivar("_entity"), new objj_ivar("_dataSource"), new objj_ivar("_maxLoadedPage")]);
       
       

       
       

       
       






       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isDisplayingOnlyHumans"), function $TNPermissionUserFetcher__isDisplayingOnlyHumans(self, _cmd)
{
return self._displaysOnlyHumans;
}
,["BOOL"]), new objj_method(sel_getUid("setDisplaysOnlyHumans:"), function $TNPermissionUserFetcher__setDisplaysOnlyHumans_(self, _cmd, newValue)
{
self._displaysOnlyHumans = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("delegate"), function $TNPermissionUserFetcher__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNPermissionUserFetcher__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("entity"), function $TNPermissionUserFetcher__entity(self, _cmd)
{
return self._entity;
}
,["TNStropheContact"]), new objj_method(sel_getUid("setEntity:"), function $TNPermissionUserFetcher__setEntity_(self, _cmd, newValue)
{
self._entity = newValue;
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("dataSource"), function $TNPermissionUserFetcher__dataSource(self, _cmd)
{
return self._dataSource;
}
,["TNTableViewLazyDataSource"]), new objj_method(sel_getUid("_setDataSource:"), function $TNPermissionUserFetcher___setDataSource_(self, _cmd, newValue)
{
self._dataSource = newValue;
}
,["void","TNTableViewLazyDataSource"]), new objj_method(sel_getUid("init"), function $TNPermissionUserFetcher__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNPermissionUserFetcher").super_class }, "init"))
    {
        self._maxLoadedPage = 0;
        self._displaysOnlyHumans = YES;
    }
    return self;
}
,["void"]), new objj_method(sel_getUid("setDataSource:"), function $TNPermissionUserFetcher__setDataSource_(self, _cmd, aDataSource)
{
    self._dataSource = aDataSource;
    objj_msgSend(self._dataSource, "setDelegate:", self);
}
,["void","TNTableViewLazyDataSource"]), new objj_method(sel_getUid("reset"), function $TNPermissionUserFetcher__reset(self, _cmd)
{
    self._maxLoadedPage = 0;
    objj_msgSend(self._dataSource, "setTotalCount:", -1);
    objj_msgSend(self._dataSource, "setCurrentlyLoading:", NO);
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("userFetcher:isLoading:")))
        objj_msgSend(self._delegate, "userFetcher:isLoading:", self, NO);
}
,["void"]), new objj_method(sel_getUid("getNumberOfXMPPUsers"), function $TNPermissionUserFetcher__getNumberOfXMPPUsers(self, _cmd)
{
    objj_msgSend(self, "getNumberOfXMPPUsers:", nil);
}
,["void"]), new objj_method(sel_getUid("getNumberOfXMPPUsers:"), function $TNPermissionUserFetcher__getNumberOfXMPPUsers_(self, _cmd, aCallback)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeXMPPServerUsers});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeXMPPServerUsersNumber,
        "humans_only": self._displaysOnlyHumans ? "true" : "false"});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:userInfo:", stanza, sel_getUid("_didGetNumberOfXMPPUsers:callback:"), self, aCallback);
}
,["void","SEL"]), new objj_method(sel_getUid("_didGetNumberOfXMPPUsers:callback:"), function $TNPermissionUserFetcher___didGetNumberOfXMPPUsers_callback_(self, _cmd, aStanza, aCallback)
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
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
}
,["BOOL","TNStropheStanza","SEL"]), new objj_method(sel_getUid("getXMPPUsers"), function $TNPermissionUserFetcher__getXMPPUsers(self, _cmd)
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
,["void"]), new objj_method(sel_getUid("getXMPPFilteredUsers:"), function $TNPermissionUserFetcher__getXMPPFilteredUsers_(self, _cmd, aFilter)
{
    if (!objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "hasPermission:forEntity:", "xmppserver_users_list", self._entity))
    {
        objj_msgSend(self._delegate, "userFetcherClean");
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
,["void","CPString"]), new objj_method(sel_getUid("_didGetXMPPUsers:"), function $TNPermissionUserFetcher___didGetXMPPUsers_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var users = objj_msgSend(aStanza, "childrenWithName:", "user");
        for (var i = 0; i < objj_msgSend(users, "count"); i++)
        {
            var user = objj_msgSend(users, "objectAtIndex:", i),
                jid;
            try {jid = objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(user, "valueForAttribute:", "jid"))} catch(e){continue};
            objj_msgSend(self._dataSource, "addObject:", jid);
        }
        objj_msgSend(objj_msgSend(self._dataSource, "table"), "reloadData");
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
    objj_msgSend(self._dataSource, "setCurrentlyLoading:", NO);
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("userFetcher:isLoading:")))
        objj_msgSend(self._delegate, "userFetcher:isLoading:", self, NO);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("tableViewDataSourceNeedsLoading:"), function $TNPermissionUserFetcher__tableViewDataSourceNeedsLoading_(self, _cmd, aDataSource)
{
    self._maxLoadedPage++;
    objj_msgSend(self, "getXMPPUsers");
}
,["void","TNTableViewLazyDataSource"]), new objj_method(sel_getUid("tableViewDataSource:applyFilter:"), function $TNPermissionUserFetcher__tableViewDataSource_applyFilter_(self, _cmd, aDataSource, aFilter)
{
    objj_msgSend(self._delegate, "userFetcherClean");
    objj_msgSend(self, "getXMPPFilteredUsers:", aFilter);
}
,["void","TNTableViewLazyDataSource","CPString"]), new objj_method(sel_getUid("tableViewDataSource:removeFilter:"), function $TNPermissionUserFetcher__tableViewDataSource_removeFilter_(self, _cmd, aDataSource, aFilter)
{
    objj_msgSend(self._delegate, "userFetcherClean");
    objj_msgSend(self, "getXMPPUsers");
}
,["void","TNTableViewLazyDataSource","CPString"])]);
}p;19;TNRolesController.jt;13663;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPTableView.jI;15;AppKit/CPView.jI;33;GrowlCappuccino/GrowlCappuccino.jI;28;StropheCappuccino/TNPubSub.jI;37;StropheCappuccino/TNStropheIMClient.jI;29;TNKit/TNTableViewDataSource.jt;13349;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("GrowlCappuccino/GrowlCappuccino.j", NO);
objj_executeFile("StropheCappuccino/TNPubSub.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
{var the_class = objj_allocateClassPair(CPObject, "TNRolesController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonSave"), new objj_ivar("buttonBar"), new objj_ivar("mainPopover"), new objj_ivar("popoverNewTemplate"), new objj_ivar("filterField"), new objj_ivar("tableRoles"), new objj_ivar("fieldNewTemplateDescription"), new objj_ivar("fieldNewTemplateName"), new objj_ivar("viewTableContainer"), new objj_ivar("_delegate"), new objj_ivar("_nodeRolesTemplates"), new objj_ivar("_datasourceRoles")]);
       
       




       
       









       
       



       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $TNRolesController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNRolesController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("awakeFromCib"), function $TNRolesController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.viewTableContainer, "setBorderedWithHexColor:", "#C0C7D2");
    self._datasourceRoles = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self._datasourceRoles, "setTable:", self.tableRoles);
    objj_msgSend(self._datasourceRoles, "setSearchableKeyPaths:", ["name", "description"]);
    objj_msgSend(self.tableRoles, "setDataSource:", self._datasourceRoles);
    var buttonDelete = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(buttonDelete, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/minus.png"), CGSizeMake(16, 16)));
    objj_msgSend(buttonDelete, "setTarget:", self);
    objj_msgSend(buttonDelete, "setAction:", sel_getUid("deleteSelectedRole:"));
    objj_msgSend(self.buttonBar, "setButtons:", [buttonDelete]);
    objj_msgSend(self.filterField, "setTarget:", self._datasourceRoles);
    objj_msgSend(self.filterField, "setAction:", sel_getUid("filterObjects:"));
}
,["void"]), new objj_method(sel_getUid("_didPublishRole:"), function $TNRolesController___didPublishRole_(self, _cmd, aNotification)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, TNStrophePubSubItemPublishedNotification, self._nodeRolesTemplates);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, TNStrophePubSubItemPublishErrorNotification, self._nodeRolesTemplates);
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("Your role has been sucessfully saved.", "Your role has been sucessfully saved."));
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didPublishRoleFail:"), function $TNRolesController___didPublishRoleFail_(self, _cmd, aNotification)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, TNStrophePubSubItemPublishedNotification, self._nodeRolesTemplates);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, TNStrophePubSubItemPublishErrorNotification, self._nodeRolesTemplates);
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("Your role cannot be saved.", "Your role cannot be saved."), TNGrowlIconError);
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didRectractRole:"), function $TNRolesController___didRectractRole_(self, _cmd, aNotification)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, TNStrophePubSubItemRetractedNotification, self._nodeRolesTemplates);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, TNStrophePubSubItemRetractErrorNotification, self._nodeRolesTemplates);
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("Your role has been sucessfully deleted.", "Your role has been sucessfully deleted."));
}
,["void","CPNotificationCenter"]), new objj_method(sel_getUid("_didRectractRoleFail:"), function $TNRolesController___didRectractRoleFail_(self, _cmd, aNotification)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, TNStrophePubSubItemRetractedNotification, self._nodeRolesTemplates);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, TNStrophePubSubItemRetractErrorNotification, self._nodeRolesTemplates);
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("Your role cannot be deleted.", "Your role cannot be deleted."), TNGrowlIconError);
}
,["void","CPNotificationCenter"]), new objj_method(sel_getUid("openWindow:"), function $TNRolesController__openWindow_(self, _cmd, aSender)
{
    objj_msgSend(self, "reload");
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNRolesController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("openNewTemplateWindow:"), function $TNRolesController__openNewTemplateWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.fieldNewTemplateName, "setStringValue:", "");
    objj_msgSend(self.fieldNewTemplateDescription, "setStringValue:", "");
    objj_msgSend(self.popoverNewTemplate, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.popoverNewTemplate, "makeFirstResponder:", self.fieldNewTemplateName);
    objj_msgSend(self.popoverNewTemplate, "setDefaultButton:", self.buttonSave);
}
,["id","id"]), new objj_method(sel_getUid("closeNewTemplateWindow:"), function $TNRolesController__closeNewTemplateWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.popoverNewTemplate, "close");
}
,["id","id"]), new objj_method(sel_getUid("applyRoles:"), function $TNRolesController__applyRoles_(self, _cmd, aSender)
{
    objj_msgSend(self._delegate, "applyPermissions:", objj_msgSend(self, "buildPermissionsArray"));
}
,["id","id"]), new objj_method(sel_getUid("addRoles:"), function $TNRolesController__addRoles_(self, _cmd, aSender)
{
    objj_msgSend(self._delegate, "addPermissions:", objj_msgSend(self, "buildPermissionsArray"));
}
,["id","id"]), new objj_method(sel_getUid("retractRoles:"), function $TNRolesController__retractRoles_(self, _cmd, aSender)
{
    objj_msgSend(self._delegate, "retractPermissions:", objj_msgSend(self, "buildPermissionsArray"));
}
,["id","id"]), new objj_method(sel_getUid("saveRole:"), function $TNRolesController__saveRole_(self, _cmd, aSender)
{
    var template = objj_msgSend(TNXMLNode, "nodeWithName:", "role");
    objj_msgSend(template, "setValue:forAttribute:", objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"), "bare"), "creator");
    objj_msgSend(template, "setValue:forAttribute:", objj_msgSend(self.fieldNewTemplateName, "stringValue"), "name");
    objj_msgSend(template, "setValue:forAttribute:", objj_msgSend(self.fieldNewTemplateDescription, "stringValue"), "description");
    for (var i = 0; i < objj_msgSend(objj_msgSend(self._delegate, "datasourcePermissions"), "count"); i++)
    {
        var perm = objj_msgSend(objj_msgSend(self._delegate, "datasourcePermissions"), "objectAtIndex:", i);
        if (objj_msgSend(perm, "state"))
        {
            objj_msgSend(template, "addChildWithName:andAttributes:", "permission", {
                "permission_target": "template",
                "permission_type": "user",
                "permission_name": objj_msgSend(perm, "name"),
                "permission_value": "true",
            });
            objj_msgSend(template, "up");
        }
    }
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didPublishRole:"), TNStrophePubSubItemPublishedNotification, self._nodeRolesTemplates);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didPublishRoleFail:"), TNStrophePubSubItemPublishErrorNotification, self._nodeRolesTemplates);
    objj_msgSend(self._nodeRolesTemplates, "publishItem:", template);
    objj_msgSend(self.popoverNewTemplate, "close");
}
,["id","id"]), new objj_method(sel_getUid("deleteSelectedRole:"), function $TNRolesController__deleteSelectedRole_(self, _cmd, aSender)
{
    if (objj_msgSend(self.tableRoles, "numberOfSelectedRows") == 0)
        return;
    var index = objj_msgSend(objj_msgSend(self.tableRoles, "selectedRowIndexes"), "firstIndex"),
        role = objj_msgSend(objj_msgSend(self._datasourceRoles, "objectAtIndex:", index), "valueForKey:", "role");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didRectractRole:"), TNStrophePubSubItemRetractedNotification, self._nodeRolesTemplates);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didRectractRoleFail:"), TNStrophePubSubItemRetractErrorNotification, self._nodeRolesTemplates);
    objj_msgSend(self._nodeRolesTemplates, "retractItem:", role);
}
,["id","id"]), new objj_method(sel_getUid("buildPermissionsArray"), function $TNRolesController__buildPermissionsArray(self, _cmd)
{
    var permissions = objj_msgSend(CPArray, "array"),
        selectedRoles = objj_msgSend(self._datasourceRoles, "objectsAtIndexes:", objj_msgSend(self.tableRoles, "selectedRowIndexes"));
    for (var i = 0; i < objj_msgSend(selectedRoles, "count"); i++)
    {
        var role = objj_msgSend(selectedRoles, "objectAtIndex:", i),
            currentPerms = objj_msgSend(objj_msgSend(role, "valueForKey:", "role"), "childrenWithName:", "permission");
        objj_msgSend(permissions, "addObjectsFromArray:", currentPerms);
    }
    return permissions;
}
,["CPArray"]), new objj_method(sel_getUid("reload"), function $TNRolesController__reload(self, _cmd)
{
    objj_msgSend(self._datasourceRoles, "removeAllObjects");
    for (var i = 0; i < objj_msgSend(objj_msgSend(self._nodeRolesTemplates, "content"), "count"); i++)
    {
        var role = objj_msgSend(objj_msgSend(self._nodeRolesTemplates, "content"), "objectAtIndex:", i),
            name = objj_msgSend(objj_msgSend(role, "firstChildWithName:", "role"), "valueForAttribute:", "name"),
            description = objj_msgSend(objj_msgSend(role, "firstChildWithName:", "role"), "valueForAttribute:", "description"),
            newRole = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", name, "name", description, "description", CPOffState, "state", role, "role");
        objj_msgSend(self._datasourceRoles, "addObject:", newRole);
    }
    objj_msgSend(self.tableRoles, "reloadData");
}
,["void"]), new objj_method(sel_getUid("fetchPubSubNodeIfNeeded"), function $TNRolesController__fetchPubSubNodeIfNeeded(self, _cmd)
{
    if (!self._nodeRolesTemplates)
    {
        self._nodeRolesTemplates = objj_msgSend(TNPubSubNode, "pubSubNodeWithNodeName:connection:pubSubServer:", "/archipel/roles", objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"), nil);
        objj_msgSend(self._nodeRolesTemplates, "setDelegate:", self);
        objj_msgSend(self._nodeRolesTemplates, "retrieveItems");
    }
}
,["void"]), new objj_method(sel_getUid("pubSubNode:retrievedItems:"), function $TNRolesController__pubSubNode_retrievedItems_(self, _cmd, aNode, hasRetrievedItems)
{
    objj_msgSend(self, "reload");
}
,["void","TNPubSubNode","BOOL"]), new objj_method(sel_getUid("pubSubNode:receivedEvent:"), function $TNRolesController__pubSubNode_receivedEvent_(self, _cmd, aNode, aStanza)
{
    if (self._nodeRolesTemplates)
        objj_msgSend(self._nodeRolesTemplates, "retrievedItems");
}
,["void","TNPubSubNode","TNStropheStanza"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNRolesController), comment);
}e;