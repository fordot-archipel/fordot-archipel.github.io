@STATIC;1.0;p;26;TNDetachedChatController.jt;13483;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPImageView.jI;25;AppKit/CPPlatformWindow.jI;21;AppKit/CPScrollView.jI;16;AppKit/CPSound.jI;20;AppKit/CPTextField.jI;17;AppKit/CPWindow.jI;37;StropheCappuccino/TNStropheIMClient.jI;22;TNKit/TNMessageBoard.jt;13217;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPPlatformWindow.j", NO);
objj_executeFile("AppKit/CPScrollView.j", NO);
objj_executeFile("AppKit/CPSound.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("TNKit/TNMessageBoard.j", NO);
//@global TNStropheContactMessageReceivedNotification
//@global TNStropheContactVCardReceivedNotification
//@global TNStropheContactNicknameUpdatedNotification
if (objj_msgSend(CPPlatform, "isBrowser"))
    var TNDetachedChatControllerDefaultFrame = CGRectMake(100, 100, 400, 370);
else
    var TNDetachedChatControllerDefaultFrame = CGRectMake(100, 100, 400, 395);
{var the_class = objj_allocateClassPair(CPObject, "TNDetachedChatController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_messageHistory"), new objj_ivar("_delegate"), new objj_ivar("_entity"), new objj_ivar("_viewAvatar"), new objj_ivar("_platformWindow"), new objj_ivar("_soundReceived"), new objj_ivar("_soundSent"), new objj_ivar("_fieldMessage"), new objj_ivar("_window"), new objj_ivar("_messageBoard"), new objj_ivar("_scrollView")]);
       
       



       
       



       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("messageHistory"), function $TNDetachedChatController__messageHistory(self, _cmd)
{
return self._messageHistory;
}
,["CPArray"]), new objj_method(sel_getUid("setMessageHistory:"), function $TNDetachedChatController__setMessageHistory_(self, _cmd, newValue)
{
self._messageHistory = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("delegate"), function $TNDetachedChatController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNDetachedChatController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("entity"), function $TNDetachedChatController__entity(self, _cmd)
{
return self._entity;
}
,["TNStropheContact"]), new objj_method(sel_getUid("setEntity:"), function $TNDetachedChatController__setEntity_(self, _cmd, newValue)
{
self._entity = newValue;
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("initWithEntity:"), function $TNDetachedChatController__initWithEntity_(self, _cmd, anEntity)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNDetachedChatController").super_class }, "init"))
    {
        self._entity = anEntity;
        if (objj_msgSend(CPPlatform, "isBrowser"))
            self._window = objj_msgSend(objj_msgSend(CPWindow, "alloc"), "initWithContentRect:styleMask:", TNDetachedChatControllerDefaultFrame, CPTitledWindowMask | CPClosableWindowMask | CPMiniaturizableWindowMask | CPResizableWindowMask | CPBorderlessBridgeWindowMask);
        else
            self._window = objj_msgSend(objj_msgSend(CPWindow, "alloc"), "initWithContentRect:styleMask:", TNDetachedChatControllerDefaultFrame, CPTitledWindowMask | CPClosableWindowMask | CPMiniaturizableWindowMask | CPResizableWindowMask);
        objj_msgSend(self._window, "setTitle:", "Archipel - Chat with " + objj_msgSend(self._entity, "name") || objj_msgSend(objj_msgSend(self._entity, "JID"), "bare"));
        objj_msgSend(objj_msgSend(self._window, "contentView"), "setBackgroundColor:", objj_msgSend(CPColor, "colorWithHexString:", "f4f4f4"));
        objj_msgSend(objj_msgSend(self._window, "contentView"), "setAutoresizingMask:", nil);
        objj_msgSend(self._window, "setDelegate:", self);
        self._scrollView = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", CGRectMake(0, 0, 400, 322));
        objj_msgSend(self._scrollView, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
        objj_msgSend(self._scrollView, "setBackgroundColor:", objj_msgSend(CPColor, "whiteColor"));
        objj_msgSend(self._scrollView, "setAutohidesScrollers:", YES);
        objj_msgSend(objj_msgSend(self._window, "contentView"), "addSubview:", self._scrollView);
        self._messageBoard = objj_msgSend(objj_msgSend(TNMessageBoard, "alloc"), "initWithFrame:", CGRectMake(0, 0, 400, 322));
        objj_msgSend(self._messageBoard, "setAutoresizingMask:", CPViewWidthSizable)
        objj_msgSend(self._scrollView, "setDocumentView:", self._messageBoard);
        self._fieldMessage = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(50, 332, 338, 29));
        objj_msgSend(self._fieldMessage, "setEditable:", YES);
        objj_msgSend(self._fieldMessage, "setBezeled:", YES);
        objj_msgSend(self._fieldMessage, "setTarget:", self);
        objj_msgSend(self._fieldMessage, "setAction:", sel_getUid("sendMessage:"));
        objj_msgSend(self._fieldMessage, "setAutoresizingMask:", CPViewWidthSizable | CPViewMinYMargin);
        objj_msgSend(objj_msgSend(self._window, "contentView"), "addSubview:", self._fieldMessage);
        self._viewAvatar = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMake(2, 326, 42, 42));
        objj_msgSend(self._viewAvatar, "setImageScaling:", CPScaleProportionally);
        objj_msgSend(self._viewAvatar, "setBackgroundColor:", objj_msgSend(CPColor, "blackColor"));
        objj_msgSend(self._viewAvatar, "setImage:", objj_msgSend(self._entity, "avatar"));
        objj_msgSend(self._viewAvatar, "setAutoresizingMask:", CPViewMinYMargin);
        objj_msgSend(objj_msgSend(self._window, "contentView"), "addSubview:", self._viewAvatar);
        if (objj_msgSend(CPPlatform, "isBrowser"))
        {
            self._platformWindow = objj_msgSend(objj_msgSend(CPPlatformWindow, "alloc"), "initWithContentRect:", TNDetachedChatControllerDefaultFrame);
            objj_msgSend(self._window, "setPlatformWindow:", self._platformWindow);
            objj_msgSend(self._platformWindow, "orderFront:", nil);
            self._platformWindow._DOMWindow.onbeforeunload = function(){
                objj_msgSend(self, "clearChar");
                objj_msgSend(self._delegate, "detachedChatClosedForJID:", objj_msgSend(self._entity, "JID"))
            };
        }
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class"));
        self._soundReceived = objj_msgSend(objj_msgSend(CPSound, "alloc"), "initWithContentsOfFile:byReference:", objj_msgSend(bundle, "pathForResource:", "received.wav"), NO);
        self._soundSent = objj_msgSend(objj_msgSend(CPSound, "alloc"), "initWithContentsOfFile:byReference:", objj_msgSend(bundle, "pathForResource:", "sent.wav"), NO);
    }
    return self;
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("_didReceiveMessage:"), function $TNDetachedChatController___didReceiveMessage_(self, _cmd, aNotification)
{
    if (objj_msgSend(objj_msgSend(aNotification, "object"), "JID") == objj_msgSend(self._entity, "JID"))
    {
        var stanza = objj_msgSend(objj_msgSend(self._entity, "messagesQueue"), "objectAtIndex:", objj_msgSend(objj_msgSend(self._entity, "messagesQueue"), "count") - 1);
        if (objj_msgSend(stanza, "containsChildrenWithName:", "body"))
        {
            var messageBody = objj_msgSend(objj_msgSend(stanza, "firstChildWithName:", "body"), "text");
            objj_msgSend(self, "appendMessageToBoard:from:", messageBody, objj_msgSend(self._entity, "name"));
        }
    }
    objj_msgSend(self._soundReceived, "play");
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("_didReceiveMessage:")) && objj_msgSend(self._delegate, "isVisible"))
        objj_msgSend(self._delegate, "_didReceiveMessage:", aNotification);
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didUpdateVCard:"), function $TNDetachedChatController___didUpdateVCard_(self, _cmd, aNotification)
{
    objj_msgSend(self._viewAvatar, "setImage:", objj_msgSend(self._entity, "avatar"));
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didUpdateNickname:"), function $TNDetachedChatController___didUpdateNickname_(self, _cmd, aNotification)
{
    objj_msgSend(self._window, "setTitle:", "Archipel - Chat with " + objj_msgSend(self._entity, "name") || objj_msgSend(objj_msgSend(self._entity, "JID"), "bare"));
}
,["void","CPNotification"]), new objj_method(sel_getUid("showWindow"), function $TNDetachedChatController__showWindow(self, _cmd)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didReceiveMessage:"), TNStropheContactMessageReceivedNotification, self._entity);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didUpdateVCard:"), TNStropheContactVCardReceivedNotification, self._entity);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didUpdateNickname:"), TNStropheContactNicknameUpdatedNotification, self._entity);
    objj_msgSend(self._messageBoard, "removeAllViews:", nil);
    if (self._messageHistory)
    {
        for (var i = 0; i < objj_msgSend(self._messageHistory, "count"); i++)
        {
            var message = objj_msgSend(self._messageHistory, "objectAtIndex:", i),
                avatar = nil,
                position = nil;
            if (objj_msgSend(message, "objectForKey:", "name") != "me")
            {
                avatar = objj_msgSend(self._entity, "avatar");
                position = TNMessageViewAvatarPositionRight;
            }
            else
            {
                avatar = objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "avatar");
                position = TNMessageViewAvatarPositionLeft;
            }
            objj_msgSend(self._messageBoard, "addMessage:from:date:color:avatar:position:", objj_msgSend(message, "objectForKey:", "message"), objj_msgSend(message, "objectForKey:", "name"), objj_msgSend(message, "objectForKey:", "date"), objj_msgSend(message, "objectForKey:", "color"), avatar, position);
        }
        var newScrollOrigin = CPMakePoint(0.0, objj_msgSend(objj_msgSend(self._scrollView, "documentView"), "frame").size.height);
        objj_msgSend(self._messageBoard, "scrollPoint:", newScrollOrigin);
    }
    objj_msgSend(self._window, "center");
    objj_msgSend(self._window, "setFrame:", TNDetachedChatControllerDefaultFrame);
    objj_msgSend(self._window, "makeKeyAndOrderFront:", nil);
    objj_msgSend(objj_msgSend(self._window, "contentView"), "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
}
,["void"]), new objj_method(sel_getUid("clearChar"), function $TNDetachedChatController__clearChar(self, _cmd)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:", self);
}
,["void"]), new objj_method(sel_getUid("appendMessageToBoard:from:"), function $TNDetachedChatController__appendMessageToBoard_from_(self, _cmd, aMessage, aSender)
{
    var color = (aSender == "me") ? TNMessageViewBubbleColorNormal : TNMessageViewBubbleColorAlt,
        date = objj_msgSend(CPDate, "date"),
        newMessageDict = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", aSender, "name", aMessage, "message", color, "color", date, "date"),
        frame = objj_msgSend(objj_msgSend(self._scrollView, "documentView"), "frame"),
        avatar = nil,
        position = nil;
    if (aSender != "me")
    {
        avatar = objj_msgSend(self._entity, "avatar");
        position = TNMessageViewAvatarPositionRight;
    }
    else
    {
        position = TNMessageViewAvatarPositionLeft;
        avatar = objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "avatar");
    }
    objj_msgSend(self._messageBoard, "addMessage:from:date:color:avatar:position:", aMessage, aSender, date, color, avatar, position);
    var newScrollOrigin = CPMakePoint(0.0, frame.size.height);
    objj_msgSend(self._messageBoard, "scrollPoint:", newScrollOrigin);
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("sendMessage:"), function $TNDetachedChatController__sendMessage_(self, _cmd, aSender)
{
    objj_msgSend(self, "appendMessageToBoard:from:", objj_msgSend(aSender, "stringValue"), "me");
    objj_msgSend(self._entity, "sendMessage:", objj_msgSend(aSender, "stringValue"));
    objj_msgSend(self._soundSent, "play");
    if (self._delegate && (objj_msgSend(self._delegate, "entity") == self._entity) && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("appendMessageToBoard:from:")) && objj_msgSend(self._delegate, "isVisible"))
        objj_msgSend(self._delegate, "appendMessageToBoard:from:", objj_msgSend(aSender, "stringValue"), "me");
    objj_msgSend(aSender, "setStringValue:", "");
}
,["id","id"]), new objj_method(sel_getUid("windowShouldClose:"), function $TNDetachedChatController__windowShouldClose_(self, _cmd, shouldClose)
{
    objj_msgSend(self, "clearChar");
    objj_msgSend(self._delegate, "detachedChatClosedForJID:", objj_msgSend(self._entity, "JID"));
    return YES;
}
,["void","CPNotification"])]);
}p;22;TNUserChatController.jt;17181;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPImageView.jI;16;AppKit/CPSound.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;22;TNKit/TNMessageBoard.ji;22;../../Model/TNModule.ji;26;TNDetachedChatController.jt;16935;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPSound.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("TNKit/TNMessageBoard.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("TNDetachedChatController.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
{var the_class = objj_allocateClassPair(TNModule, "TNUserChatController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonClear"), new objj_ivar("buttonDetach"), new objj_ivar("imageSpinnerWriting"), new objj_ivar("fieldMessage"), new objj_ivar("fieldPreferencesMaxChatMessage"), new objj_ivar("viewControls"), new objj_ivar("messagesScrollView"), new objj_ivar("_messages"), new objj_ivar("_detachedChats"), new objj_ivar("_soundMessage"), new objj_ivar("_soundReceived"), new objj_ivar("_soundSent"), new objj_ivar("_composingMessageTimer"), new objj_ivar("_messageBoard")]);
       
       






       
       




       
       




       
       



       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNUserChatController__awakeFromCib(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")),
        mainBundle = objj_msgSend(CPBundle, "mainBundle"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        frame = objj_msgSend(objj_msgSend(self.messagesScrollView, "contentView"), "bounds"),
        controlsBg = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "bg-controls.png"));
    objj_msgSend(self.viewControls, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", controlsBg));
    var imageClear = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/clean.png"), CGSizeMake(16, 16)),
        imageDetach = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/fullscreen.png"), CGSizeMake(16, 16));
    objj_msgSend(self.buttonClear, "setImage:", imageClear);
    objj_msgSend(self.buttonDetach, "setImage:", imageDetach);
    var inset = CGInsetMake(2, 2, 2, 5);
    objj_msgSend(self.buttonClear, "setValue:forThemeAttribute:", inset, "content-inset");
    objj_msgSend(self.buttonDetach, "setValue:forThemeAttribute:", inset, "content-inset");
    objj_msgSend(defaults, "registerDefaults:", objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNUserChatMaxMessageStore"), "TNUserChatMaxMessageStore", objj_msgSend(CPDictionary, "dictionary"), "TNUserChatMessageStore"));
    self._detachedChats = objj_msgSend(CPDictionary, "dictionary");
    self._messages = objj_msgSend(CPArray, "array");
    objj_msgSend(self.messagesScrollView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(self.messagesScrollView, "setAutohidesScrollers:", YES);
    frame.size.height = 0;
    self._messageBoard = objj_msgSend(objj_msgSend(TNMessageBoard, "alloc"), "initWithFrame:", frame);
    objj_msgSend(self._messageBoard, "setAutoresizingMask:", CPViewWidthSizable);
    objj_msgSend(self.messagesScrollView, "setDocumentView:", self._messageBoard);
    objj_msgSend(self.imageSpinnerWriting, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(mainBundle, "pathForResource:", "spinner.gif")));
    objj_msgSend(self.imageSpinnerWriting, "setHidden:", YES);
    objj_msgSend(self.fieldMessage, "addObserver:forKeyPath:options:context:", self, "stringValue", CPKeyValueObservingOptionNew, nil);
    self._soundMessage = objj_msgSend(objj_msgSend(CPSound, "alloc"), "initWithContentsOfFile:byReference:", objj_msgSend(bundle, "pathForResource:", "Receive.wav"), NO);
    self._soundReceived = objj_msgSend(objj_msgSend(CPSound, "alloc"), "initWithContentsOfFile:byReference:", objj_msgSend(bundle, "pathForResource:", "received.wav"), NO);
    self._soundSent = objj_msgSend(objj_msgSend(CPSound, "alloc"), "initWithContentsOfFile:byReference:", objj_msgSend(bundle, "pathForResource:", "sent.wav"), NO);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didReceiveMessage:"), TNStropheContactMessageReceivedNotification, nil);
}
,["void"]), new objj_method(sel_getUid("willLoad"), function $TNUserChatController__willLoad(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNUserChatController").super_class }, "willLoad"))
        return NO;
    var center = objj_msgSend(CPNotificationCenter, "defaultCenter");
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("_didReceiveMessageComposing:"), TNStropheContactMessageComposingNotification, self._entity);
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("_didReceiveMessagePause:"), TNStropheContactMessagePausedNotification, self._entity);
    var frame = objj_msgSend(objj_msgSend(self.messagesScrollView, "documentView"), "bounds");
    objj_msgSend(self._messageBoard, "removeAllViews:", nil);
    self._messages = objj_msgSend(CPArray, "array");
    objj_msgSend(self, "restore");
    var frame = objj_msgSend(objj_msgSend(self.messagesScrollView, "documentView"), "frame"),
        newScrollOrigin = CPMakePoint(0.0, frame.size.height);
    objj_msgSend(self._messageBoard, "scrollPoint:", newScrollOrigin);
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willUnload"), function $TNUserChatController__willUnload(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNUserChatController").super_class }, "willUnload");
    objj_msgSend(self, "save");
    objj_msgSend(self._messages, "removeAllObjects");
    objj_msgSend(self._messageBoard, "removeAllViews:", nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didReceiveMessage:"), TNStropheContactMessageReceivedNotification, nil);
}
,["void"]), new objj_method(sel_getUid("willShow"), function $TNUserChatController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNUserChatController").super_class }, "willShow"))
        return NO;
    var messageQueue = objj_msgSend(self._entity, "messagesQueue"),
        stanza;
    while (stanza = objj_msgSend(self._entity, "popMessagesQueue"))
    {
        if (objj_msgSend(stanza, "containsChildrenWithName:", "body"))
        {
            var from = (objj_msgSend(stanza, "valueForAttribute:", "from") == "me") ? "me" : objj_msgSend(self._entity, "name"),
                message = objj_msgSend(objj_msgSend(stanza, "firstChildWithName:", "body"), "text"),
                color = (objj_msgSend(stanza, "valueForAttribute:", "from") == "me") ? [CPColor ] : objj_msgSend(self._entity, "name");
            objj_msgSend(self, "appendMessageToBoard:from:", message, from);
        }
    }
    objj_msgSend(self._entity, "freeMessagesQueue");
    objj_msgSend(objj_msgSend(self, "view"), "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(objj_msgSend(self, "view"), "setFrame:", objj_msgSend(objj_msgSend(objj_msgSend(self, "view"), "superview"), "bounds"));
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("savePreferences"), function $TNUserChatController__savePreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(defaults, "setInteger:forKey:", objj_msgSend(self.fieldPreferencesMaxChatMessage, "intValue"), "TNUserChatMaxMessageStore");
}
,["void"]), new objj_method(sel_getUid("loadPreferences"), function $TNUserChatController__loadPreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(self.fieldPreferencesMaxChatMessage, "setIntValue:", objj_msgSend(defaults, "integerForKey:", "TNUserChatMaxMessageStore"));
}
,["void"]), new objj_method(sel_getUid("menuReady"), function $TNUserChatController__menuReady(self, _cmd)
{
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Clear history", "Clear history"), sel_getUid("clearHistory:"), ""), "setTarget:", self);
}
,["void"]), new objj_method(sel_getUid("_didReceiveMessage:"), function $TNUserChatController___didReceiveMessage_(self, _cmd, aNotification)
{
    if (objj_msgSend(objj_msgSend(aNotification, "object"), "JID") == objj_msgSend(self._entity, "JID"))
    {
        var stanza = objj_msgSend(self._entity, "popMessagesQueue");
        if (objj_msgSend(stanza, "containsChildrenWithName:", "body"))
        {
            var messageBody = objj_msgSend(objj_msgSend(stanza, "firstChildWithName:", "body"), "text");
            objj_msgSend(self.imageSpinnerWriting, "setHidden:", YES);
            objj_msgSend(self, "appendMessageToBoard:from:", messageBody, objj_msgSend(self._entity, "name"));
            CPLog.info("message received : " + messageBody);
            if (!objj_msgSend(self._detachedChats, "containsKey:", objj_msgSend(objj_msgSend(aNotification, "object"), "JID")))
                objj_msgSend(self._soundReceived, "play");
        }
    }
    else if (!objj_msgSend(self._detachedChats, "containsKey:", objj_msgSend(objj_msgSend(aNotification, "object"), "JID")))
    {
        objj_msgSend(self._soundMessage, "play");
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didReceiveMessageComposing:"), function $TNUserChatController___didReceiveMessageComposing_(self, _cmd, aNotification)
{
    objj_msgSend(self.imageSpinnerWriting, "setHidden:", NO);
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didReceiveMessagePause:"), function $TNUserChatController___didReceiveMessagePause_(self, _cmd, aNotification)
{
    objj_msgSend(self.imageSpinnerWriting, "setHidden:", YES);
}
,["void","CPNotification"]), new objj_method(sel_getUid("observeValueForKeyPath:ofObject:change:context:"), function $TNUserChatController__observeValueForKeyPath_ofObject_change_context_(self, _cmd, aKeyPath, anObject, aChange, aContext)
{
    if (objj_msgSend(anObject, "stringValue") == "")
    {
        objj_msgSend(self._entity, "sendComposePaused");
    }
    else
    {
        if (self._composingMessageTimer)
            objj_msgSend(self._composingMessageTimer, "invalidate");
        self._composingMessageTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", 3, self, sel_getUid("sendComposingPaused:"), nil, NO);
        objj_msgSend(self._entity, "sendComposing");
    }
}
,["void","CPString","id","CPDictionary","id"]), new objj_method(sel_getUid("save"), function $TNUserChatController__save(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        max = objj_msgSend(self._messages, "count"),
        saveMax = objj_msgSend(defaults, "integerForKey:", "TNUserChatMaxMessageStore"),
        location = ((max - saveMax) > 0) ? (max - saveMax) : 0,
        lenght = (saveMax <= max) ? saveMax : max,
        messagesToSave;
    messagesToSave = objj_msgSend(self._messages, "subarrayWithRange:", CPMakeRange(location, lenght));
    CPLog.debug("count=" + objj_msgSend(self._messages, "count") + " location=" + location + " lenght:" + lenght);
    objj_msgSend(objj_msgSend(defaults, "objectForKey:", "TNUserChatMessageStore"), "setObject:forKey:", messagesToSave, "communicationWith" + objj_msgSend(self._entity, "JID"));
}
,["void"]), new objj_method(sel_getUid("restore"), function $TNUserChatController__restore(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        lastConversation = objj_msgSend(objj_msgSend(defaults, "objectForKey:", "TNUserChatMessageStore"), "objectForKey:", "communicationWith" + objj_msgSend(self._entity, "JID"));
    if (lastConversation)
        self._messages = lastConversation;
    for (var j = 0; j < objj_msgSend(lastConversation, "count"); j++)
    {
        var author = objj_msgSend(objj_msgSend(lastConversation, "objectAtIndex:", j), "objectForKey:", "name"),
            message = objj_msgSend(objj_msgSend(lastConversation, "objectAtIndex:", j), "objectForKey:", "message"),
            color = objj_msgSend(objj_msgSend(lastConversation, "objectAtIndex:", j), "objectForKey:", "color"),
            date = objj_msgSend(objj_msgSend(lastConversation, "objectAtIndex:", j), "objectForKey:", "date"),
            avatar = nil,
            position = nil;
        if (author != "me")
        {
            avatar = objj_msgSend(self._entity, "avatar");
            position = TNMessageViewAvatarPositionRight;
        }
        else
        {
            avatar = objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "avatar");
            position = TNMessageViewAvatarPositionLeft;
        }
        objj_msgSend(self._messageBoard, "addMessage:from:date:color:avatar:position:", message, author, date, color, avatar, position);
    }
}
,["void"]), new objj_method(sel_getUid("sendComposingPaused:"), function $TNUserChatController__sendComposingPaused_(self, _cmd, aTimer)
{
    objj_msgSend(self._entity, "sendComposePaused");
}
,["void","CPTimer"]), new objj_method(sel_getUid("appendMessageToBoard:from:"), function $TNUserChatController__appendMessageToBoard_from_(self, _cmd, aMessage, aSender)
{
    var color = (aSender == "me") ? TNMessageViewBubbleColorNormal : TNMessageViewBubbleColorAlt,
        date = objj_msgSend(CPDate, "date"),
        newMessageDict = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", aSender, "name", aMessage, "message", color, "color", date, "date"),
        frame = objj_msgSend(objj_msgSend(self.messagesScrollView, "documentView"), "frame"),
        avatar = nil,
        position = nil;
    objj_msgSend(self._messages, "addObject:", newMessageDict);
    if (aSender != "me")
    {
        avatar = objj_msgSend(self._entity, "avatar");
        position = TNMessageViewAvatarPositionRight;
    }
    else
    {
        avatar = objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "avatar");
        position = TNMessageViewAvatarPositionLeft;
    }
    objj_msgSend(self._messageBoard, "addMessage:from:date:color:avatar:position:", aMessage, aSender, date, color, avatar, position);
    var newScrollOrigin = CPMakePoint(0.0, frame.size.height);
    objj_msgSend(self._messageBoard, "scrollPoint:", newScrollOrigin);
    objj_msgSend(self, "save");
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("sendMessage:"), function $TNUserChatController__sendMessage_(self, _cmd, aSender)
{
     if (self._composingMessageTimer)
            objj_msgSend(self._composingMessageTimer, "invalidate");
    objj_msgSend(self._entity, "sendMessage:", objj_msgSend(self.fieldMessage, "stringValue"));
    objj_msgSend(self, "appendMessageToBoard:from:", objj_msgSend(self.fieldMessage, "stringValue"), "me");
    objj_msgSend(self.fieldMessage, "setStringValue:", "");
    objj_msgSend(self._soundSent, "play");
}
,["id","id"]), new objj_method(sel_getUid("clearHistory:"), function $TNUserChatController__clearHistory_(self, _cmd, aSender)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(defaults, "removeObjectForKey:", "communicationWith" + objj_msgSend(self._entity, "JID"));
    objj_msgSend(self._messages, "removeAllObjects");
    objj_msgSend(self._messageBoard, "removeAllViews:", nil);
}
,["id","id"]), new objj_method(sel_getUid("detachChat:"), function $TNUserChatController__detachChat_(self, _cmd, aSender)
{
    var detachedChatController = objj_msgSend(objj_msgSend(TNDetachedChatController, "alloc"), "initWithEntity:", self._entity);
    objj_msgSend(detachedChatController, "setDelegate:", self);
    objj_msgSend(detachedChatController, "setMessageHistory:", self._messages);
    objj_msgSend(detachedChatController, "showWindow");
    objj_msgSend(self._detachedChats, "setObject:forKey:", detachedChatController, objj_msgSend(self._entity, "JID"));
}
,["id","id"]), new objj_method(sel_getUid("detachedChatClosedForJID:"), function $TNUserChatController__detachedChatClosedForJID_(self, _cmd, aJID)
{
    objj_msgSend(self._detachedChats, "removeObjectForKey:", aJID);
}
,["void","TNStropheJID"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNUserChatController), comment);
}e;