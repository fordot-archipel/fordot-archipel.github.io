@STATIC;1.0;p;21;TNMUCChatController.jt;16362;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPSound.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;40;StropheCappuccino/MUC/TNStropheMUCRoom.jI;15;TNKit/TNAlert.jI;22;TNKit/TNMessageBoard.jI;29;TNKit/TNTableViewDataSource.ji;22;../../Model/TNModule.jt;16090;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPSound.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("StropheCappuccino/MUC/TNStropheMUCRoom.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("TNKit/TNMessageBoard.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
{var the_class = objj_allocateClassPair(TNModule, "TNMUCChatController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("scrollViewMessageContainer"), new objj_ivar("scrollViewPeople"), new objj_ivar("fieldPreferencesDefaultRoom"), new objj_ivar("fieldPreferencesDefaultService"), new objj_ivar("labelConferenceRoom"), new objj_ivar("labelConferenceServer"), new objj_ivar("textFieldMessage"), new objj_ivar("viewConferenceInfo"), new objj_ivar("viewMessage"), new objj_ivar("_toolbarItemImages"), new objj_ivar("_audioTagReceive"), new objj_ivar("_tableViewPeople"), new objj_ivar("_numberOfNotices"), new objj_ivar("_messageBoard"), new objj_ivar("_session"), new objj_ivar("_peopleDatasource")]);
       
       




       
       


       
       



       
       



       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNMUCChatController__awakeFromCib(self, _cmd)
{
    self._messageBoard = objj_msgSend(objj_msgSend(TNMessageBoard, "alloc"), "initWithFrame:", objj_msgSend(self.scrollViewMessageContainer, "bounds"));
    objj_msgSend(self.scrollViewMessageContainer, "setDocumentView:", self._messageBoard);
    objj_msgSend(self._messageBoard, "setFrameSize:", objj_msgSend(self.scrollViewMessageContainer, "contentSize"));
    self._peopleDatasource = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    self._tableViewPeople = objj_msgSend(objj_msgSend(CPTableView, "alloc"), "initWithFrame:", objj_msgSend(self.scrollViewPeople, "bounds"));
    objj_msgSend(self.scrollViewPeople, "setAutohidesScrollers:", YES);
    objj_msgSend(self.scrollViewPeople, "setDocumentView:", self._tableViewPeople);
    objj_msgSend(self._tableViewPeople, "setUsesAlternatingRowBackgroundColors:", YES);
    objj_msgSend(self._tableViewPeople, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(self._tableViewPeople, "setAllowsColumnResizing:", YES);
    objj_msgSend(self._tableViewPeople, "setAllowsEmptySelection:", YES);
    objj_msgSend(self._tableViewPeople, "setAllowsMultipleSelection:", YES);
    objj_msgSend(self._tableViewPeople, "setColumnAutoresizingStyle:", CPTableViewLastColumnOnlyAutoresizingStyle);
    objj_msgSend(self._tableViewPeople, "setTarget:", self);
    objj_msgSend(self._tableViewPeople, "setDoubleAction:", sel_getUid("didDoubleClick:"))
    var columnName = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "name");
    objj_msgSend(columnName, "setWidth:", 250);
    objj_msgSend(objj_msgSend(columnName, "headerView"), "setStringValue:", CPBundleLocalizedString("Name", "Name"));
    objj_msgSend(columnName, "setSortDescriptorPrototype:", objj_msgSend(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "name", YES));
    objj_msgSend(self._tableViewPeople, "addTableColumn:", columnName);
    objj_msgSend(self._peopleDatasource, "setTable:", self._tableViewPeople);
    objj_msgSend(self._peopleDatasource, "setSearchableKeyPaths:", ["JID.bare"]);
    objj_msgSend(self._tableViewPeople, "setDataSource:", self._peopleDatasource);
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")),
        sound = objj_msgSend(bundle, "pathForResource:", "Stoof.wav");
    self._audioTagReceive = objj_msgSend(objj_msgSend(CPSound, "alloc"), "initWithContentsOfFile:byReference:", sound, NO);
    objj_msgSend(self.viewMessage, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "bg-controls.png"))));
    objj_msgSend(self.viewConferenceInfo, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "bg-info.png"))));
    objj_msgSend(self.viewConferenceInfo, "applyShadow");
    self._toolbarItemImages = [
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "icon.png"), CGSizeMake(32,32)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "icon-x.png"), CGSizeMake(32,32)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "icon-x.png"), CGSizeMake(32,32)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "icon-x.png"), CGSizeMake(32,32)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "icon-x.png"), CGSizeMake(32,32)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "icon-x.png"), CGSizeMake(32,32)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "icon-x.png"), CGSizeMake(32,32))
    ];
    self._numberOfNotices = 0;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("stropheConnected:"), TNStropheConnectionStatusConnectedNotification, nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("stropheWillDisconnect:"), TNStropheConnectionStatusWillDisconnectNotification, nil);
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(defaults, "registerDefaults:", objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelMUCDefaultService"), "TNArchipelMUCDefaultService", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelMUCDefaultRoom"), "TNArchipelMUCDefaultRoom"));
}
,["void"]), new objj_method(sel_getUid("willLoad"), function $TNMUCChatController__willLoad(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNMUCChatController").super_class }, "willLoad"))
        return NO;
    objj_msgSend(self, "connectToRoom");
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willShow"), function $TNMUCChatController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNMUCChatController").super_class }, "willShow"))
        return NO;
    self._numberOfNotices = 0;
    objj_msgSend(objj_msgSend(self, "UIItem"), "setImage:", self._toolbarItemImages[0]);
    objj_msgSend(self._UIObject, "_reloadToolbarItems");
    objj_msgSend(self, "reload:", nil);
    objj_msgSend(self._messageBoard, "reloadData");
    objj_msgSend(self, "scrollToBottom");
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("savePreferences"), function $TNMUCChatController__savePreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        center = objj_msgSend(CPNotificationCenter, "defaultCenter"),
        oldService = objj_msgSend(defaults, "objectForKey:", "TNArchipelMUCDefaultService"),
        oldRoom = objj_msgSend(defaults, "objectForKey:", "TNArchipelMUCDefaultRoom");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.fieldPreferencesDefaultService, "stringValue"), "TNArchipelMUCDefaultService");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.fieldPreferencesDefaultRoom, "stringValue"), "TNArchipelMUCDefaultRoom");
    if ((oldService != objj_msgSend(self.fieldPreferencesDefaultService, "stringValue"))
        || (oldRoom != objj_msgSend(self.fieldPreferencesDefaultRoom, "stringValue")))
        {
            objj_msgSend(self._session, "leave");
            objj_msgSend(self, "connectToRoom");
        }
}
,["void"]), new objj_method(sel_getUid("loadPreferences"), function $TNMUCChatController__loadPreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(self.fieldPreferencesDefaultService, "setStringValue:", objj_msgSend(defaults, "objectForKey:", "TNArchipelMUCDefaultService"));
    objj_msgSend(self.fieldPreferencesDefaultRoom, "setStringValue:", objj_msgSend(defaults, "objectForKey:", "TNArchipelMUCDefaultRoom"));
}
,["void"]), new objj_method(sel_getUid("stropheConnected:"), function $TNMUCChatController__stropheConnected_(self, _cmd, aNotification)
{
    objj_msgSend(self, "connectToRoom");
}
,["void","CPNotification"]), new objj_method(sel_getUid("stropheWillDisconnect:"), function $TNMUCChatController__stropheWillDisconnect_(self, _cmd, aNotification)
{
    objj_msgSend(self._session, "leave");
}
,["void","CPNotification"]), new objj_method(sel_getUid("connectToRoom"), function $TNMUCChatController__connectToRoom(self, _cmd)
{
    var center = objj_msgSend(CPNotificationCenter, "defaultCenter"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        roomName = objj_msgSend(defaults, "objectForKey:", "TNArchipelMUCDefaultRoom"),
        serviceName = objj_msgSend(defaults, "objectForKey:", "TNArchipelMUCDefaultService");
    objj_msgSend(center, "removeObserver:name:object:", self, TNStropheMUCContactJoinedNotification, objj_msgSend(self._session, "roster"));
    objj_msgSend(center, "removeObserver:name:object:", self, TNStropheMUCContactLeftNotification, objj_msgSend(self._session, "roster"));
     self._session = objj_msgSend(TNStropheMUCRoom, "joinRoom:onService:usingConnection:withNick:", roomName, serviceName, objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"), objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"), "node"));
    objj_msgSend(self._session, "setDelegate:", self);
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("reload:"), TNStropheMUCContactJoinedNotification, objj_msgSend(self._session, "roster"));
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("reload:"), TNStropheMUCContactLeftNotification, objj_msgSend(self._session, "roster"));
    objj_msgSend(self.labelConferenceServer, "setStringValue:", serviceName);
    objj_msgSend(self.labelConferenceRoom, "setStringValue:", roomName);
    objj_msgSend(self, "reload:", nil);
    objj_msgSend(self._session, "join");
}
,["void"]), new objj_method(sel_getUid("reload:"), function $TNMUCChatController__reload_(self, _cmd, aNotification)
{
    objj_msgSend(self._peopleDatasource, "removeAllObjects");
    for (var i = 0; i < objj_msgSend(objj_msgSend(objj_msgSend(self._session, "roster"), "contacts"), "count"); i++)
        objj_msgSend(self._peopleDatasource, "addObject:", objj_msgSend(objj_msgSend(objj_msgSend(self._session, "roster"), "contacts"), "objectAtIndex:", i));
    objj_msgSend(self._tableViewPeople, "reloadData");
}
,["void","CPNotification"]), new objj_method(sel_getUid("scrollToBottom"), function $TNMUCChatController__scrollToBottom(self, _cmd)
{
    if (!self._messageBoard)
        return;
    var verticalOffset = objj_msgSend(self._messageBoard, "boundsSize").height - objj_msgSend(objj_msgSend(self.scrollViewMessageContainer, "contentView"), "boundsSize").height;
    objj_msgSend(objj_msgSend(self.scrollViewMessageContainer, "contentView"), "scrollToPoint:", CGPointMake(0,verticalOffset));
    objj_msgSend(self.scrollViewMessageContainer, "reflectScrolledClipView:", objj_msgSend(self.scrollViewMessageContainer, "contentView"));
}
,["void"]), new objj_method(sel_getUid("sendMessageToMuc:"), function $TNMUCChatController__sendMessageToMuc_(self, _cmd, aSender)
{
    if (objj_msgSend(self.textFieldMessage, "stringValue") != "")
    {
        objj_msgSend(self._session, "sayToRoom:", objj_msgSend(self.textFieldMessage, "stringValue"));
        objj_msgSend(self.textFieldMessage, "setStringValue:", "");
    }
}
,["id","id"]), new objj_method(sel_getUid("didDoubleClick:"), function $TNMUCChatController__didDoubleClick_(self, _cmd, aSender)
{
    if (objj_msgSend(self._tableViewPeople, "numberOfSelectedRows") == 0)
        return;
    var member = objj_msgSend(self._peopleDatasource, "objectAtIndex:", objj_msgSend(self._tableViewPeople, "selectedRow"));
    if (!objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "containsJID:", objj_msgSend(member, "JID")))
    {
        var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Adding contact", "Adding contact"), CPBundleLocalizedString("Would you like to add ", "Would you like to add ") + objj_msgSend(member, "name") + CPBundleLocalizedString(" to your roster", " to your roster"), self, [[CPBundleLocalizedString("Add contact", "Add contact"), sel_getUid("performAddToRoster:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
        objj_msgSend(alert, "setUserInfo:", member);
        objj_msgSend(alert, "runModal");
    }
}
,["id","id"]), new objj_method(sel_getUid("performAddToRoster:"), function $TNMUCChatController__performAddToRoster_(self, _cmd, someUserInfo)
{
    var member = someUserInfo,
        JID = objj_msgSend(member, "JID");
    objj_msgSend(JID, "setDomain:", objj_msgSend(JID, "domain").replace("conference.", ""));
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "addContact:withName:inGroupWithPath:", JID, objj_msgSend(member, "name"), nil);
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "askAuthorizationTo:", JID);
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "authorizeJID:", JID);
}
,["void","id"]), new objj_method(sel_getUid("mucRoom:receivedMessage:"), function $TNMUCChatController__mucRoom_receivedMessage_(self, _cmd, aRoom, aMessage)
{
    var color = (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"), "node") == objj_msgSend(objj_msgSend(objj_msgSend(aMessage, "objectForKey:", "from"), "JID"), "resource")) ? TNMessageViewBubbleColorNormal : TNMessageViewBubbleColorAlt,
        isNotice = (objj_msgSend(aMessage, "objectForKey:", "body").indexOf(objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"), "node")) != -1),
        avatar,
        position;
    if (isNotice)
        color = TNMessageViewBubbleColorNotice;
    if (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"), "node") == objj_msgSend(objj_msgSend(objj_msgSend(aMessage, "objectForKey:", "from"), "JID"), "resource"))
    {
        avatar = objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "avatar");
        position= TNMessageViewAvatarPositionLeft;
    }
    else
    {
        position= TNMessageViewAvatarPositionRight;
    }
    objj_msgSend(self._messageBoard, "addMessage:from:date:color:avatar:position:", objj_msgSend(aMessage, "objectForKey:", "body"), objj_msgSend(objj_msgSend(aMessage, "objectForKey:", "from"), "name"), objj_msgSend(aMessage, "objectForKey:", "time"), color, avatar, position);
    objj_msgSend(self, "scrollToBottom");
    if (!self._isVisible && isNotice && self._toolbarItemImages)
    {
        objj_msgSend(self._audioTagReceive, "play");
    }
}
,["void","TNStropheMUCRoom","CPDictionary"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNMUCChatController), comment);
}e;