@STATIC;1.0;p;21;TNExternalVNCWindow.jt;16870;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPImageView.jI;17;AppKit/CPSlider.jI;17;AppKit/CPWindow.jI;17;TNKit/TNToolbar.jI;15;TNKit/TNAlert.jI;31;GrowlCappuccino/TNGrowlCenter.jI;29;VNCCappuccino/VNCCappuccino.jt;16641;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPSlider.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("TNKit/TNToolbar.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("GrowlCappuccino/TNGrowlCenter.j", NO);
objj_executeFile("VNCCappuccino/VNCCappuccino.j", NO);
//@global CPLocalizedStringTNAlert
//@global CPLocalizedStringFromTableInBundle
//@global TNStropheContactVCardReceivedNotification
//@global TNStropheContactNicknameUpdatedNotification
//@global TNArchipelVNCScreenTypeVNC
//@global TNArchipelVNCScreenTypeSPICE
var TNVNCWindowToolBarCtrlAltDel = "TNVNCWindowToolBarCtrlAltDel",
    TNVNCWindowToolBarSendPasteboard = "TNVNCWindowToolBarSendPasteboard",
    TNVNCWindowToolBarGetPasteboard = "TNVNCWindowToolBarGetPasteboard",
    TNVNCWindowToolBarFullScreen = "TNVNCWindowToolBarFullScreen",
    TNVNCWindowToolBarZoom = "TNVNCWindowToolBarZoom";
{var the_class = objj_allocateClassPair(CPWindow, "TNExternalVNCWindow"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_hasBeenConnected"), new objj_ivar("_imageViewVirtualMachineAvatar"), new objj_ivar("_currentZoom"), new objj_ivar("_entity"), new objj_ivar("_mainToolbar"), new objj_ivar("_vncView"), new objj_ivar("_spiceView"), new objj_ivar("_screenView")]);
       
       


       
       



       
       





       
       




       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithContentRect:styleMask:"), function $TNExternalVNCWindow__initWithContentRect_styleMask_(self, _cmd, aRect, aStyleMask)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNExternalVNCWindow").super_class }, "initWithContentRect:styleMask:", aRect, aStyleMask))
    {
        self._currentZoom = 1.0;
        self._hasBeenConnected = NO;
        self._mainToolbar = objj_msgSend(objj_msgSend(TNToolbar, "alloc"), "init");
        objj_msgSend(self, "setToolbar:", self._mainToolbar);
        var zoomSlider = objj_msgSend(objj_msgSend(CPSlider, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 96.0, 21.0));
        objj_msgSend(zoomSlider, "setMinValue:", 0.3);
        objj_msgSend(zoomSlider, "setDoubleValue:", 1.0);
        objj_msgSend(zoomSlider, "setMaxValue:", 1.0);
        objj_msgSend(self._mainToolbar, "addItemWithIdentifier:label:view:target:action:", "CUSTOMSPACE", "              ", nil, nil, nil);
        objj_msgSend(self._mainToolbar, "addItemWithIdentifier:label:icon:target:action:", TNVNCWindowToolBarGetPasteboard, CPBundleLocalizedString("Get Clipboard", "Get Clipboard"), objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")), "pathForResource:", "toolbarGetPasteboard.png"), self, sel_getUid("getPasteboard:"));
        objj_msgSend(self._mainToolbar, "addItemWithIdentifier:label:icon:target:action:", TNVNCWindowToolBarSendPasteboard, CPBundleLocalizedString("Send Clipboard", "Send Clipboard"), objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")), "pathForResource:", "toolbarSendPasteboard.png"), self, sel_getUid("sendPasteboard:"));
        objj_msgSend(self._mainToolbar, "addItemWithIdentifier:label:icon:target:action:", TNVNCWindowToolBarFullScreen, CPBundleLocalizedString("Full Screen", "Full Screen"), objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/fullscreen.png"), self, sel_getUid("setFullScreen:"));
        objj_msgSend(self._mainToolbar, "addItemWithIdentifier:label:icon:target:action:", TNVNCWindowToolBarCtrlAltDel, CPBundleLocalizedString("Ctrl Alt Del", "Ctrl Alt Del"), objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")), "pathForResource:", "toolbarCtrlAtlDel.png"), self, sel_getUid("sendCtrlAltDel:"));
        var zoomItem = objj_msgSend(self._mainToolbar, "addItemWithIdentifier:label:view:target:action:", TNVNCWindowToolBarZoom, CPBundleLocalizedString("Zoom", "Zoom"), zoomSlider, self, sel_getUid("changeScale:"));
        objj_msgSend(zoomItem, "setMinSize:", CGSizeMake(120.0, 24.0));
        objj_msgSend(zoomItem, "setMaxSize:", CGSizeMake(120.0, 24.0));
        objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 0, "CUSTOMSPACE");
        objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 1, CPToolbarSeparatorItemIdentifier);
        objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 2, TNVNCWindowToolBarGetPasteboard);
        objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 3, TNVNCWindowToolBarSendPasteboard);
        objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 4, TNVNCWindowToolBarCtrlAltDel);
        objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 5, TNVNCWindowToolBarZoom);
        objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 10, CPToolbarFlexibleSpaceItemIdentifier);
        objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 11, TNVNCWindowToolBarFullScreen);
        objj_msgSend(objj_msgSend(self, "contentView"), "setBackgroundColor:", objj_msgSend(CPColor, "blackColor"));
    }
    return self;
}
,["id","CGRect","int"]), new objj_method(sel_getUid("_entityVCardUpdated:"), function $TNExternalVNCWindow___entityVCardUpdated_(self, _cmd, aNotification)
{
    objj_msgSend(self._imageViewVirtualMachineAvatar, "setImage:", objj_msgSend(self._entity, "avatar"));
}
,["void","CPNotification"]), new objj_method(sel_getUid("_entityNicknameUpdated:"), function $TNExternalVNCWindow___entityNicknameUpdated_(self, _cmd, aNotification)
{
    objj_msgSend(self, "setTitle:", CPBundleLocalizedString("Screen for ", "Screen for ") + objj_msgSend(self._entity, "name") + " (" + objj_msgSend(self._entity, "JID") + ")");
}
,["void","CPNotification"]), new objj_method(sel_getUid("loadVNCViewWithHost:port:type:password:encrypt:trueColor:checkRate:FBURate:entity:"), function $TNExternalVNCWindow__loadVNCViewWithHost_port_type_password_encrypt_trueColor_checkRate_FBURate_entity_(self, _cmd, aHost, aPort, aType, aPassword, isEncrypted, isTrueColor, aCheckRate, aFBURate, anEntity)
{
    self._entity = anEntity;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_entityVCardUpdated:"), TNStropheContactVCardReceivedNotification, self._entity);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_entityNicknameUpdated:"), TNStropheContactNicknameUpdatedNotification, self._entity);
    objj_msgSend(self, "setTitle:", CPBundleLocalizedString("Screen for ", "Screen for ") + objj_msgSend(self._entity, "name") + " (" + objj_msgSend(self._entity, "JID") + ")");
    var domWindow = objj_msgSend(objj_msgSend(self, "platformWindow"), "DOMWindow"),
        unloadFunction = function() {
                objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
                objj_msgSend(self, "close");
            };
    if (window.onbeforeunload)
        domWindow.onbeforeunload = unloadFunction;
    else if (window.onunload)
        domWindow.onunload = unloadFunction;
    self._imageViewVirtualMachineAvatar = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMake(7.0, 4.0, 50.0, 50.0));
    objj_msgSend(self._imageViewVirtualMachineAvatar, "setImage:", objj_msgSend(self._entity, "avatar"));
    objj_msgSend(objj_msgSend(self._mainToolbar, "customSubViews"), "addObject:", self._imageViewVirtualMachineAvatar);
    objj_msgSend(self._mainToolbar, "reloadToolbarItems");
    switch (aType)
    {
        case TNArchipelVNCScreenTypeVNC:
            self._vncView = objj_msgSend(objj_msgSend(TNVNCView, "alloc"), "initWithFrame:", objj_msgSend(objj_msgSend(self, "contentView"), "bounds"));
            objj_msgSend(self._vncView, "setFocusContainer:", objj_msgSend(objj_msgSend(self, "platformWindow"), "DOMWindow").document);
            objj_msgSend(self._vncView, "setAutoResizeViewPort:", NO);
            objj_msgSend(self._vncView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
            objj_msgSend(self._vncView, "setHost:", aHost);
            objj_msgSend(self._vncView, "setPort:", aPort);
            objj_msgSend(self._vncView, "setPassword:", aPassword);
            objj_msgSend(self._vncView, "setZoom:", 1);
            objj_msgSend(self._vncView, "setTrueColor:", isTrueColor);
            objj_msgSend(self._vncView, "setEncrypted:", isEncrypted);
            objj_msgSend(self._vncView, "setCheckRate:", aCheckRate);
            objj_msgSend(self._vncView, "setFrameBufferRequestRate:", aFBURate);
            objj_msgSend(self._vncView, "setDelegate:", self);
            objj_msgSend(objj_msgSend(self, "contentView"), "addSubview:", self._vncView);
            self._screenView = self._vncView;
            break;
        case TNArchipelVNCScreenTypeSPICE:
            self._spiceView = objj_msgSend(objj_msgSend(TNSpiceView, "alloc"), "initWithFrame:focusContainer:", objj_msgSend(objj_msgSend(self, "contentView"), "bounds"), objj_msgSend(objj_msgSend(self, "platformWindow"), "DOMWindow").document);
            objj_msgSend(self._spiceView, "setAutoResizeViewPort:", NO);
            objj_msgSend(self._spiceView, "setHost:", aHost);
            objj_msgSend(self._spiceView, "setPort:", aPort);
            objj_msgSend(self._spiceView, "setPassword:", aPassword);
            objj_msgSend(self._spiceView, "setZoom:", 1);
            objj_msgSend(self._spiceView, "setEncrypted:", isEncrypted);
            objj_msgSend(self._spiceView, "setDelegate:", self);
            objj_msgSend(objj_msgSend(self, "contentView"), "addSubview:", self._spiceView);
            self._screenView = self._spiceView;
            break;
    }
    CPLog.info("VNC: type: %@ connecting to %@:%@ using SSL: %@ ", aType, aHost, aPort, isEncrypted);
    try
    {
        objj_msgSend(self._screenView, "load");
        objj_msgSend(self._screenView, "connect:", nil);
    }
    catch(e)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", CPBundleLocalizedString("Websocket error for VNC", "Websocket error for VNC"), CPBundleLocalizedString("It seems your websocket configuration is not properly configured. If you are using Firefox, go to about:config and set 'network.websocket.override-security-block' and 'network.websocket.enabled' to 'True'.", "It seems your websocket configuration is not properly configured. If you are using Firefox, go to about:config and set 'network.websocket.override-security-block' and 'network.websocket.enabled' to 'True'."), CPCriticalAlertStyle);
        CPLog.error("Websocket problem. unable to start noVNC subsystem.");
        objj_msgSend(self, "close");
    }
    objj_msgSend(self, "makeKeyAndOrderFront:", nil);
}
,["void","CPString","CPString","CPString","CPString","BOOL","BOOL","int","int","TNStropheContact"]), new objj_method(sel_getUid("fitWindowToVNCView"), function $TNExternalVNCWindow__fitWindowToVNCView(self, _cmd)
{
    objj_msgSend(self, "fitWindowToSize:", objj_msgSend(self._screenView, "displaySize"));
}
,["void"]), new objj_method(sel_getUid("fitWindowToSize:"), function $TNExternalVNCWindow__fitWindowToSize_(self, _cmd, aSize)
{
    var newRect = objj_msgSend(objj_msgSend(self, "platformWindow"), "contentRect"),
        heightOffset = 59;
    aSize.width *= self._currentZoom;
    aSize.height *= self._currentZoom;
    aSize.height += heightOffset;
    newRect.size = aSize;
    objj_msgSend(self, "setFrameSize:", aSize);
    objj_msgSend(objj_msgSend(self, "platformWindow"), "setContentRect:", newRect);
}
,["void","CGSize"]), new objj_method(sel_getUid("sendCtrlAltDel:"), function $TNExternalVNCWindow__sendCtrlAltDel_(self, _cmd, aSender)
{
    objj_msgSend(self._screenView, "sendCtrlAltDel:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("getPasteboard:"), function $TNExternalVNCWindow__getPasteboard_(self, _cmd, aSender)
{
    objj_msgSend(self._mainToolbar, "reloadToolbarItems");
}
,["id","id"]), new objj_method(sel_getUid("sendPasteboard:"), function $TNExternalVNCWindow__sendPasteboard_(self, _cmd, aSender)
{
    alert("not implemented");
}
,["id","id"]), new objj_method(sel_getUid("setFullScreen:"), function $TNExternalVNCWindow__setFullScreen_(self, _cmd, aSender)
{
    objj_msgSend(self._screenView, "setFullScreen:", !objj_msgSend(self._screenView, "isFullScreen"));
}
,["id","id"]), new objj_method(sel_getUid("changeScale:"), function $TNExternalVNCWindow__changeScale_(self, _cmd, aSender)
{
    objj_msgSend(aSender, "setContinuous:", NO);
    self._currentZoom = objj_msgSend(aSender, "floatValue");
    objj_msgSend(self._screenView, "setZoom:", self._currentZoom);
    objj_msgSend(self, "fitWindowToVNCView");
}
,["id","id"]), new objj_method(sel_getUid("remoteScreenView:updateState:message:"), function $TNExternalVNCWindow__remoteScreenView_updateState_message_(self, _cmd, aScreenView, aState, aMessage)
{
    switch (aState)
    {
        case TNRemoteScreenViewStateError:
            objj_msgSend(aScreenView, "setHidden:", YES);
            var growl = objj_msgSend(objj_msgSend(TNGrowlCenter, "alloc"), "init");
            objj_msgSend(growl, "setView:", objj_msgSend(self, "contentView"));
            objj_msgSend(growl, "pushNotificationWithTitle:message:icon:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Error connecting to the VNC screen. Use the VNC tab for more information.", "Error connecting to the VNC screen. Use the VNC tab for more information."), TNGrowlIconError);
            CPLog.error("Cannot connect to the VNC screen at " + objj_msgSend(aScreenView, "host") + ":" + objj_msgSend(aScreenView, "port"));
            break;
        case TNRemoteScreenViewStateConnected:
            self._hasBeenConnected = YES;
            objj_msgSend(aScreenView, "setHidden:", NO);
            objj_msgSend(aScreenView, "focus");
            setTimeout(function(){
                objj_msgSend(self, "fitWindowToVNCView");
            }, 500);
            break;
        case TNRemoteScreenViewStateDisconnected:
            if (self._hasBeenConnected)
            {
                objj_msgSend(aScreenView, "setHidden:", YES);
                objj_msgSend(self, "close");
                objj_msgSend(objj_msgSend(self, "platformWindow"), "orderOut:", nil);
            }
    }
}
,["void","TNRemoteScreenView","CPString","CPString"]), new objj_method(sel_getUid("remoteScreenView:didDesktopSizeChange:"), function $TNExternalVNCWindow__remoteScreenView_didDesktopSizeChange_(self, _cmd, aScreenView, aNewSize)
{
    objj_msgSend(self, "fitWindowToSize:", aNewSize);
}
,["void","TNRemoteScreenView","CGSize"]), new objj_method(sel_getUid("remoteScreenView:didBecomeFullScreen:size:zoomFactor:"), function $TNExternalVNCWindow__remoteScreenView_didBecomeFullScreen_size_zoomFactor_(self, _cmd, aScreenView, isFullScreen, aSize, zoomFactor)
{
    objj_msgSend(aScreenView, "setZoom:", zoomFactor);
}
,["void","TNRemoteScreenView","BOOL","CGSize","float"]), new objj_method(sel_getUid("remoteScreenViewDoesNotSupportFullScreen:"), function $TNExternalVNCWindow__remoteScreenViewDoesNotSupportFullScreen_(self, _cmd, aScreenView)
{
    var growl = objj_msgSend(objj_msgSend(TNGrowlCenter, "alloc"), "init");
    objj_msgSend(growl, "setView:", objj_msgSend(self, "contentView"));
    objj_msgSend(growl, "pushNotificationWithTitle:message:icon:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Your browser does not support javascript fullscreen", "Your browser does not support javascript fullscreen"), TNGrowlIconWarning);
}
,["void","TNRemoteScreenView"]), new objj_method(sel_getUid("close"), function $TNExternalVNCWindow__close(self, _cmd)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:", self);
    CPLog.info("disconnecting windowed noVNC client")
    if (objj_msgSend(self._screenView, "state") != TNRemoteScreenViewStateDisconnected)
        objj_msgSend(self._screenView, "disconnect:", nil);
    objj_msgSend(self._screenView, "unfocus");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNExternalVNCWindow").super_class }, "close");
}
,["void"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNExternalVNCWindow), comment);
}p;33;TNVirtualMachineNOVNCController.jt;35348;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;19;AppKit/CPCheckBox.jI;20;AppKit/CPImageView.jI;15;AppKit/CPView.jI;17;AppKit/CPWindow.jI;28;LPKit/LPMultiLineTextField.jI;29;VNCCappuccino/VNCCappuccino.ji;22;../../Views/TNSwitch.ji;22;../../Model/TNModule.ji;21;TNExternalVNCWindow.ji;17;TNZoomAnimation.jt;35018;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPCheckBox.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("LPKit/LPMultiLineTextField.j", NO);
objj_executeFile("VNCCappuccino/VNCCappuccino.j", NO);
objj_executeFile("../../Views/TNSwitch.j", YES);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("TNExternalVNCWindow.j", YES);
objj_executeFile("TNZoomAnimation.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelPushNotificationVNC = "archipel:push:virtualmachine:vnc",
    TNArchipelTypeVirtualMachineVNC = "archipel:virtualmachine:vnc",
    TNArchipelTypeVirtualMachineVNCDisplay = "display",
    TNArchipelVNCInformationRecoveredNotification = "TNArchipelVNCInformationRecoveredNotification",
    TNArchipelVNCShowExternalWindowNotification = "TNArchipelVNCShowExternalWindowNotification",
    TNArchipelDefinitionUpdatedNotification = "TNArchipelDefinitionUpdatedNotification";
TNArchipelVNCScreenTypeVNC = "vnc";
TNArchipelVNCScreenTypeSPICE = "spice";
{var the_class = objj_allocateClassPair(TNModule, "TNVirtualMachineNOVNCController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonAddCertificateException"), new objj_ivar("buttonExternalWindow"), new objj_ivar("buttonGetPasteBoard"), new objj_ivar("buttonPasswordSend"), new objj_ivar("buttonPasteBoardSend"), new objj_ivar("buttonSendCtrlAtlDel"), new objj_ivar("buttonSendPasteBoard"), new objj_ivar("buttonZoomFitToWindow"), new objj_ivar("buttonZoomReset"), new objj_ivar("checkboxPasswordRemember"), new objj_ivar("imageViewSecureConnection"), new objj_ivar("popoverPasteBoard"), new objj_ivar("sliderScaling"), new objj_ivar("fieldPassword"), new objj_ivar("fieldPreferencesCheckRate"), new objj_ivar("fieldPreferencesFBURefreshRate"), new objj_ivar("labelErrorInformation"), new objj_ivar("viewConnectionErrorHelp"), new objj_ivar("viewControls"), new objj_ivar("viewVNCContainer"), new objj_ivar("windowPassword"), new objj_ivar("fieldPasteBoard"), new objj_ivar("switchPreferencesPreferSSL"), new objj_ivar("_useSSL"), new objj_ivar("_onlySSL"), new objj_ivar("_supportsSSL"), new objj_ivar("_remoteScreenType"), new objj_ivar("_url"), new objj_ivar("_VMHost"), new objj_ivar("_remoteScreenDirectPort"), new objj_ivar("_remoteScreenProxyPort"), new objj_ivar("_vncView"), new objj_ivar("_spiceView")]);
       
       







       
       



       
       










       
       











       
       


       
       





objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNVirtualMachineNOVNCController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.windowPassword, "setDefaultButton:", self.buttonPasswordSend);
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(self.imageViewSecureConnection, "setHidden:", YES);
    objj_msgSend(self.imageViewSecureConnection, "setImage:", CPImageInBundle("secure.png", CGSizeMake(16.0, 16.0), bundle));
    objj_msgSend(defaults, "registerDefaults:", objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "NOVNCPreferSSL"), "NOVNCPreferSSL", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "NOVNCFBURate"), "NOVNCFBURate", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "NOVNCheckRate"), "NOVNCheckRate"));
    var imageBg = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "bg-controls.png")),
        imageZoomFit = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/fullscreen.png"), CGSizeMake(16, 16)),
        imageZoomReset = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/reset.png"), CGSizeMake(16, 16)),
        imageDirectAccess = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/screen.png"), CGSizeMake(16, 16)),
        imageCtrlAltDel = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "skull.png"), CGSizeMake(16, 16)),
        imageSendPasteBoard = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "sendPasteBoard.png"), CGSizeMake(16, 16)),
        imageGetPasteBoard = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "getPasteBoard.png"), CGSizeMake(16, 16));
    objj_msgSend(self.viewControls, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", imageBg));
    objj_msgSend(self.buttonZoomFitToWindow, "setImage:", imageZoomFit);
    objj_msgSend(self.buttonZoomReset, "setImage:", imageZoomReset);
    objj_msgSend(self.buttonExternalWindow, "setImage:", imageDirectAccess);
    objj_msgSend(self.buttonSendCtrlAtlDel, "setImage:", imageCtrlAltDel);
    objj_msgSend(self.buttonSendPasteBoard, "setImage:", imageSendPasteBoard);
    objj_msgSend(self.buttonGetPasteBoard, "setImage:", imageGetPasteBoard);
    var inset = CGInsetMake(2, 2, 2, 5);
    objj_msgSend(self.buttonZoomFitToWindow, "setValue:forThemeAttribute:", inset, "content-inset");
    objj_msgSend(self.buttonZoomReset, "setValue:forThemeAttribute:", inset, "content-inset");
    objj_msgSend(self.buttonExternalWindow, "setValue:forThemeAttribute:", inset, "content-inset");
    objj_msgSend(self.buttonSendCtrlAtlDel, "setValue:forThemeAttribute:", inset, "content-inset");
    objj_msgSend(self.buttonSendPasteBoard, "setValue:forThemeAttribute:", inset, "content-inset");
    objj_msgSend(self.buttonGetPasteBoard, "setValue:forThemeAttribute:", inset, "content-inset");
    objj_msgSend(self.fieldPassword, "setSecure:", YES);
    self._vncView = objj_msgSend(objj_msgSend(TNVNCView, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(self._vncView, "setAutoresizingMask:", CPViewMinXMargin | CPViewMinYMargin | CPViewMaxXMargin | CPViewMaxYMargin);
    self._spiceView = objj_msgSend(objj_msgSend(TNSpiceView, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(self._spiceView, "setAutoresizingMask:", CPViewMinXMargin | CPViewMinYMargin | CPViewMaxXMargin | CPViewMaxYMargin);
    objj_msgSend(self.sliderScaling, "setContinuous:", YES);
    objj_msgSend(self.sliderScaling, "setMinValue:", 0.2);
    objj_msgSend(self.sliderScaling, "setMaxValue:", 2);
    objj_msgSend(self.buttonAddCertificateException, "setThemeState:", CPThemeStateDefault);
    objj_msgSend(self, "_showConnectionHelp:", NO);
}
,["void"]), new objj_method(sel_getUid("willLoad"), function $TNVirtualMachineNOVNCController__willLoad(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineNOVNCController").super_class }, "willLoad"))
        return NO;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_showExternalScreen:"), TNArchipelVNCShowExternalWindowNotification, nil);
   objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didDefinitionUpdated:"), TNArchipelDefinitionUpdatedNotification, nil);
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceivePush:"), TNArchipelPushNotificationVNC);
    objj_msgSend(self, "getVirtualMachineVNCDisplay");
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willUnload"), function $TNVirtualMachineNOVNCController__willUnload(self, _cmd)
{
    self._VMHost = nil;
    self._remoteScreenProxyPort = nil;
    self._remoteScreenDirectPort = nil;
    self._supportsSSL = nil;
    self._onlySSL = nil;
    objj_msgSend(self.fieldPassword, "setStringValue:", "");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineNOVNCController").super_class }, "willUnload");
}
,["void"]), new objj_method(sel_getUid("willShow"), function $TNVirtualMachineNOVNCController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineNOVNCController").super_class }, "willShow"))
        return NO;
    objj_msgSend(self._vncView, "setHidden:", YES);
    objj_msgSend(self._spiceView, "setHidden:", YES);
    objj_msgSend(self, "_showConnectionHelp:", NO);
    objj_msgSend(self, "handleDisplayVNCScreen");
    objj_msgSend(objj_msgSend(self, "view"), "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(objj_msgSend(self, "view"), "setFrame:", objj_msgSend(objj_msgSend(objj_msgSend(self, "view"), "superview"), "bounds"));
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willHide"), function $TNVirtualMachineNOVNCController__willHide(self, _cmd)
{
    objj_msgSend(self.imageViewSecureConnection, "setHidden:", YES);
    objj_msgSend(self._vncView, "setHidden:", YES);
    objj_msgSend(self._spiceView, "setHidden:", YES);
    objj_msgSend(self, "_showConnectionHelp:", NO);
    objj_msgSend(self.windowPassword, "close");
    if (objj_msgSend(self, "isConnected"))
    {
        objj_msgSend(objj_msgSend(self, "currentScreenView"), "disconnect:", nil);
        objj_msgSend(objj_msgSend(self, "currentScreenView"), "unfocus");
    }
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineNOVNCController").super_class }, "willHide");
}
,["void"]), new objj_method(sel_getUid("savePreferences"), function $TNVirtualMachineNOVNCController__savePreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(defaults, "setInteger:forKey:", objj_msgSend(self.fieldPreferencesFBURefreshRate, "intValue"), "NOVNCFBURate");
    objj_msgSend(defaults, "setInteger:forKey:", objj_msgSend(self.fieldPreferencesCheckRate, "intValue"), "NOVNCheckRate");
    objj_msgSend(defaults, "setBool:forKey:", objj_msgSend(self.switchPreferencesPreferSSL, "isOn"), "NOVNCPreferSSL");
}
,["void"]), new objj_method(sel_getUid("loadPreferences"), function $TNVirtualMachineNOVNCController__loadPreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(self.fieldPreferencesFBURefreshRate, "setIntValue:", objj_msgSend(defaults, "integerForKey:", "NOVNCFBURate"));
    objj_msgSend(self.fieldPreferencesCheckRate, "setIntValue:", objj_msgSend(defaults, "integerForKey:", "NOVNCheckRate"));
    objj_msgSend(self.switchPreferencesPreferSSL, "setOn:animated:sendAction:", objj_msgSend(defaults, "boolForKey:", "NOVNCPreferSSL"), YES, NO);
}
,["void"]), new objj_method(sel_getUid("menuReady"), function $TNVirtualMachineNOVNCController__menuReady(self, _cmd)
{
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Fit screen to window", "Fit screen to window"), sel_getUid("fitToScreen:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Reset zoom", "Reset zoom"), sel_getUid("resetZoom:"), ""), "setTarget:", self);
    objj_msgSend(self._menu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Open external VNC program", "Open external VNC program"), sel_getUid("openExternalWindow:"), ""), "setTarget:", self);
}
,["void"]), new objj_method(sel_getUid("_didReceivePush:"), function $TNVirtualMachineNOVNCController___didReceivePush_(self, _cmd, somePushInfo)
{
    var sender = objj_msgSend(somePushInfo, "objectForKey:", "owner"),
        type = objj_msgSend(somePushInfo, "objectForKey:", "type"),
        change = objj_msgSend(somePushInfo, "objectForKey:", "change"),
        date = objj_msgSend(somePushInfo, "objectForKey:", "date");
    switch (change)
    {
        case "websocketvncstart":
            objj_msgSend(self, "getVirtualMachineVNCDisplay");
            break;
        case "websocketvncstop":
            objj_msgSend(self, "handleDisplayVNCScreen");
            break;
    }
    return YES;
}
,["BOOL","CPDictionary"]), new objj_method(sel_getUid("_showExternalScreen:"), function $TNVirtualMachineNOVNCController___showExternalScreen_(self, _cmd, aNotification)
{
    objj_msgSend(self, "openVNCInNewWindow");
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didDefinitionUpdated:"), function $TNVirtualMachineNOVNCController___didDefinitionUpdated_(self, _cmd, aNotification)
{
    objj_msgSend(self, "getVirtualMachineVNCDisplay");
}
,["void","CPNotification"]), new objj_method(sel_getUid("_switchViewAccordingToCurrentType"), function $TNVirtualMachineNOVNCController___switchViewAccordingToCurrentType(self, _cmd)
{
    switch (self._remoteScreenType)
    {
        case TNArchipelVNCScreenTypeVNC:
            objj_msgSend(self._spiceView, "removeFromSuperview");
            objj_msgSend(self.viewVNCContainer, "addSubview:", self._vncView);
            break;
        case TNArchipelVNCScreenTypeSPICE:
            objj_msgSend(self._vncView, "removeFromSuperview");
            objj_msgSend(self.viewVNCContainer, "addSubview:", self._spiceView);
            break;
    }
    objj_msgSend(self, "_centerScreenView");
}
,["void"]), new objj_method(sel_getUid("currentScreenView"), function $TNVirtualMachineNOVNCController__currentScreenView(self, _cmd)
{
    switch (self._remoteScreenType)
    {
        case TNArchipelVNCScreenTypeVNC : return self._vncView;
        case TNArchipelVNCScreenTypeSPICE : return self._spiceView;
    }
}
,["TNRemoteScreenView"]), new objj_method(sel_getUid("_centerScreenView"), function $TNVirtualMachineNOVNCController___centerScreenView(self, _cmd)
{
    var frame = objj_msgSend(self.viewVNCContainer, "bounds"),
        centerX = frame.size.width / 2.0,
        centerY = frame.size.height / 2.0;
    objj_msgSend(objj_msgSend(self, "currentScreenView"), "setCenter:", CGPointMake(centerX, centerY));
}
,["void"]), new objj_method(sel_getUid("isConnected"), function $TNVirtualMachineNOVNCController__isConnected(self, _cmd)
{
    return (objj_msgSend(self._vncView, "state") != TNRemoteScreenViewStateDisconnected || objj_msgSend(self._vncView, "state") == TNRemoteScreenViewStateDisconnecting)
}
,["BOOL"]), new objj_method(sel_getUid("handleDisplayVNCScreen"), function $TNVirtualMachineNOVNCController__handleDisplayVNCScreen(self, _cmd)
{
    var conditionVMStatusOK = (objj_msgSend(self._entity, "XMPPShow") == TNStropheContactStatusOnline || objj_msgSend(self._entity, "XMPPShow") == TNStropheContactStatusAway);
    if (!conditionVMStatusOK || self._remoteScreenProxyPort == -1|| !self._remoteScreenProxyPort)
    {
        self._VMHost = nil;
        self._remoteScreenProxyPort = nil;
        self._remoteScreenDirectPort = nil;
        self._supportsSSL = nil;
        self._onlySSL = nil;
        if (objj_msgSend(self, "isConnected"))
        {
            objj_msgSend(objj_msgSend(self, "currentScreenView"), "unfocus");
            objj_msgSend(objj_msgSend(self, "currentScreenView"), "disconnect:", nil);
        }
        objj_msgSend(self, "_showConnectionHelp:", NO);
        objj_msgSend(objj_msgSend(self, "currentScreenView"), "setHidden:", YES);
        objj_msgSend(self, "showMaskView:", YES);
        return;
    }
    if (!objj_msgSend(self, "isVisible"))
        return;
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        passwordKey = "TNArchipelNOVNCPasswordRememberFor" + objj_msgSend(self._entity, "JID"),
        preferSSL = objj_msgSend(defaults, "boolForKey:", "NOVNCPreferSSL");
    if (self._onlySSL || (preferSSL && self._supportsSSL))
        self._useSSL = YES;
    objj_msgSend(self.sliderScaling, "setDoubleValue:", 1);
    if (objj_msgSend(defaults, "stringForKey:", passwordKey))
    {
        objj_msgSend(self.fieldPassword, "setStringValue:", objj_msgSend(defaults, "stringForKey:", passwordKey));
        objj_msgSend(self.checkboxPasswordRemember, "setState:", CPOnState);
    }
    else
    {
        objj_msgSend(self.fieldPassword, "setStringValue:", "");
        objj_msgSend(self.checkboxPasswordRemember, "setState:", CPOffState);
    }
    objj_msgSend(self, "showMaskView:", NO);
    objj_msgSend(self, "_switchViewAccordingToCurrentType");
    var currentScreenView;
    switch (self._remoteScreenType)
    {
        case TNArchipelVNCScreenTypeVNC:
            currentScreenView = objj_msgSend(self, "_loadVNC");
            break;
        case TNArchipelVNCScreenTypeSPICE:
            currentScreenView = objj_msgSend(self, "_loadSpice");
            break;
        default:
            objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", "Unknown screen type received", "Screen type " + self._remoteScreenType + " is not valid", CPCriticalAlertStyle);
            return;
    }
    try
    {
        objj_msgSend(currentScreenView, "load");
        objj_msgSend(currentScreenView, "connect:", nil);
    }
    catch(e)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", CPBundleLocalizedString("Websocket error for VNC", "Websocket error for VNC"), CPBundleLocalizedString("It seems your websocket configuration is not properly configured. If you are using Firefox, go to about:config and set 'network.websocket.override-security-block' and 'network.websocket.enabled' to 'True'.", "It seems your websocket configuration is not properly configured. If you are using Firefox, go to about:config and set 'network.websocket.override-security-block' and 'network.websocket.enabled' to 'True'."), CPCriticalAlertStyle);
        CPLog.error("Websocket problem. unable to start noVNC subsystem: " + e);
    }
}
,["void"]), new objj_method(sel_getUid("_loadVNC"), function $TNVirtualMachineNOVNCController___loadVNC(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(self._vncView, "setCheckRate:", objj_msgSend(defaults, "integerForKey:", "NOVNCheckRate"));
    objj_msgSend(self._vncView, "setFrameBufferRequestRate:", objj_msgSend(defaults, "integerForKey:", "NOVNCFBURate"));
    objj_msgSend(self._vncView, "setHost:", self._VMHost);
    objj_msgSend(self._vncView, "setPort:", self._remoteScreenProxyPort);
    objj_msgSend(self._vncView, "setPassword:", objj_msgSend(self.fieldPassword, "stringValue"));
    objj_msgSend(self._vncView, "setZoom:", 1);
    objj_msgSend(self._vncView, "setTrueColor:", YES);
    objj_msgSend(self._vncView, "setEncrypted:", self._useSSL);
    objj_msgSend(self._vncView, "setDelegate:", self);
    CPLog.info("VNC: connecting to %@:%@  using SSL: %@", self._VMHost, self._remoteScreenProxyPort, self._useSSL);
    return self._vncView;
}
,["void"]), new objj_method(sel_getUid("_loadSpice"), function $TNVirtualMachineNOVNCController___loadSpice(self, _cmd)
{
    if (self._spiceView)
        objj_msgSend(self._spiceView, "removeFromSuperview");
    self._spiceView = objj_msgSend(objj_msgSend(TNSpiceView, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(self._spiceView, "setAutoresizingMask:", CPViewMinXMargin | CPViewMinYMargin | CPViewMaxXMargin | CPViewMaxYMargin);
    objj_msgSend(self.viewVNCContainer, "addSubview:", self._spiceView);
    objj_msgSend(self._spiceView, "setHost:", self._VMHost);
    objj_msgSend(self._spiceView, "setPort:", self._remoteScreenProxyPort);
    objj_msgSend(self._spiceView, "setPassword:", objj_msgSend(self.fieldPassword, "stringValue"));
    objj_msgSend(self._spiceView, "setZoom:", 1);
    objj_msgSend(self._spiceView, "setEncrypted:", self._useSSL);
    objj_msgSend(self._spiceView, "setDelegate:", self);
    objj_msgSend(self, "showMaskView:", NO);
    CPLog.info("SPICE: connecting to %@:%@  using SSL: %@", self._VMHost, self._remoteScreenProxyPort, self._useSSL);
    return self._spiceView;
}
,["void"]), new objj_method(sel_getUid("animateChangeScaleFrom:to:"), function $TNVirtualMachineNOVNCController__animateChangeScaleFrom_to_(self, _cmd, aStartZoom, aEndZoom)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    if (objj_msgSend(defaults, "boolForKey:", "TNArchipelUseAnimations"))
    {
        var anim = objj_msgSend(objj_msgSend(TNZoomAnimation, "alloc"), "initWithDuration:animationCurve:", 0.2, CPAnimationEaseOut);
        objj_msgSend(anim, "setDelegate:", self);
        objj_msgSend(anim, "setStartZoomValue:", aStartZoom);
        objj_msgSend(anim, "setEndZoomValue:", aEndZoom);
        objj_msgSend(anim, "startAnimation");
    }
    else
    {
        objj_msgSend(self.sliderScaling, "setDoubleValue:", aEndZoom);
        objj_msgSend(self, "changeScale:", self.sliderScaling);
    }
}
,["void","float","float"]), new objj_method(sel_getUid("openVNCInNewWindow"), function $TNVirtualMachineNOVNCController__openVNCInNewWindow(self, _cmd)
{
    if (self._remoteScreenType !== TNArchipelVNCScreenTypeVNC)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", CPBundleLocalizedString("SPICE is not supported as external window", "SPICE is not supported as external window"), CPBundleLocalizedString("For now, you cannot use SPICE screen in external window", "For now, you cannot use SPICE screen in external window"), CPWarningAlertStyle);
        return;
    }
    var winFrame = CGRectMake(100, 100, 800, 600),
        pfWinFrame = CGRectMake(100, 100, 800, 600),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        VNCWindow,
        platformVNCWindow;
    if (objj_msgSend(CPPlatform, "isBrowser"))
    {
        VNCWindow = objj_msgSend(objj_msgSend(TNExternalVNCWindow, "alloc"), "initWithContentRect:styleMask:", winFrame, CPTitledWindowMask | CPClosableWindowMask | CPMiniaturizableWindowMask | CPResizableWindowMask | CPBorderlessBridgeWindowMask);
        platformVNCWindow = objj_msgSend(objj_msgSend(CPPlatformWindow, "alloc"), "initWithContentRect:", pfWinFrame);
        objj_msgSend(VNCWindow, "setPlatformWindow:", platformVNCWindow);
        objj_msgSend(platformVNCWindow, "orderFront:", nil);
    }
    else
    {
        winFrame.origin.x = 20;
        winFrame.origin.y = 50;
        winFrame.size.height += 25;
        VNCWindow = objj_msgSend(objj_msgSend(TNExternalVNCWindow, "alloc"), "initWithContentRect:styleMask:", winFrame, CPTitledWindowMask | CPClosableWindowMask | CPMiniaturizableWindowMask | CPResizableWindowMask);
    }
    objj_msgSend(VNCWindow, "loadVNCViewWithHost:port:type:password:encrypt:trueColor:checkRate:FBURate:entity:", self._VMHost, self._remoteScreenProxyPort, self._remoteScreenType, objj_msgSend(self.fieldPassword, "stringValue"), self._useSSL, YES, objj_msgSend(defaults, "integerForKey:", "NOVNCheckRate"), objj_msgSend(defaults, "integerForKey:", "NOVNCFBURate"), self._entity);
}
,["void"]), new objj_method(sel_getUid("_showConnectionHelp:"), function $TNVirtualMachineNOVNCController___showConnectionHelp_(self, _cmd, shouldShow)
{
    if (!shouldShow)
    {
        objj_msgSend(self.viewConnectionErrorHelp, "removeFromSuperview");
        return;
    }
    objj_msgSend(self.labelErrorInformation, "setStringValue:", objj_msgSend(CPString, "stringWithFormat:", "Tried to connect to %@:%@ (SSL: %@)", self._VMHost, self._remoteScreenProxyPort, self._useSSL));
    objj_msgSend(self.buttonAddCertificateException, "setTitle:", CPBundleLocalizedString("Add Exception", "Add Exception"));
    objj_msgSend(self.viewConnectionErrorHelp, "setFrame:", objj_msgSend(self.viewVNCContainer, "bounds"));
    objj_msgSend(self.viewVNCContainer, "addSubview:", self.viewConnectionErrorHelp);
}
,["void","BOOL"]), new objj_method(sel_getUid("openExternalWindow:"), function $TNVirtualMachineNOVNCController__openExternalWindow_(self, _cmd, aSender)
{
    objj_msgSend(self, "openVNCInNewWindow");
}
,["id","id"]), new objj_method(sel_getUid("openPasteBoardWindow:"), function $TNVirtualMachineNOVNCController__openPasteBoardWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.popoverPasteBoard, "close");
    objj_msgSend(self.popoverPasteBoard, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.popoverPasteBoard, "setDefaultButton:", self.buttonPasteBoardSend);
    objj_msgSend(self.popoverPasteBoard, "makeFirstResponder:", self.fieldPasteBoard);
}
,["id","id"]), new objj_method(sel_getUid("closePasteBoardWindow:"), function $TNVirtualMachineNOVNCController__closePasteBoardWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.popoverPasteBoard, "close");
}
,["id","id"]), new objj_method(sel_getUid("changeScale:"), function $TNVirtualMachineNOVNCController__changeScale_(self, _cmd, aSender)
{
    objj_msgSend(objj_msgSend(self, "currentScreenView"), "setZoom:", objj_msgSend(aSender, "floatValue"));
    objj_msgSend(self, "_centerScreenView");
}
,["id","id"]), new objj_method(sel_getUid("fitToScreen:"), function $TNVirtualMachineNOVNCController__fitToScreen_(self, _cmd, aSender)
{
    var visibleRect = objj_msgSend(self.viewVNCContainer, "frame"),
        currentVNCSize = objj_msgSend(objj_msgSend(self, "currentScreenView"), "displaySize"),
        currentVNCZoom = objj_msgSend(objj_msgSend(self, "currentScreenView"), "zoom"),
        diffPerc = ((visibleRect.size.height - currentVNCSize.height) / currentVNCSize.height),
        newZoom = (diffPerc < 0) ? 1 - (Math.abs(diffPerc)) : 1 + (Math.abs(diffPerc));
    objj_msgSend(self, "animateChangeScaleFrom:to:", currentVNCZoom, newZoom);
}
,["id","id"]), new objj_method(sel_getUid("resetZoom:"), function $TNVirtualMachineNOVNCController__resetZoom_(self, _cmd, aSender)
{
    var visibleRect = objj_msgSend(objj_msgSend(self, "currentScreenView"), "visibleRect"),
        currentVNCSize = objj_msgSend(objj_msgSend(self, "currentScreenView"), "displaySize"),
        currentVNCZoom = objj_msgSend(objj_msgSend(self, "currentScreenView"), "zoom");
    objj_msgSend(self, "animateChangeScaleFrom:to:", currentVNCZoom, 1);
}
,["id","id"]), new objj_method(sel_getUid("sendCtrlAltDel:"), function $TNVirtualMachineNOVNCController__sendCtrlAltDel_(self, _cmd, aSender)
{
    CPLog.info("sending ctrl+alt+del to VNCView");
    objj_msgSend(objj_msgSend(self, "currentScreenView"), "sendCtrlAltDel:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("sendPasteBoard:"), function $TNVirtualMachineNOVNCController__sendPasteBoard_(self, _cmd, aSender)
{
    CPLog.info("sending the content of Pasteboard to VNCView: " + objj_msgSend(self.fieldPasteBoard, "stringValue"));
    objj_msgSend(objj_msgSend(self, "currentScreenView"), "sendTextToPasteboard:", objj_msgSend(self.fieldPasteBoard, "stringValue"));
    objj_msgSend(self.fieldPasteBoard, "setStringValue:", "");
    objj_msgSend(self.popoverPasteBoard, "close");
}
,["id","id"]), new objj_method(sel_getUid("rememberPassword:"), function $TNVirtualMachineNOVNCController__rememberPassword_(self, _cmd, aSender)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        key = "TNArchipelNOVNCPasswordRememberFor" + objj_msgSend(self._entity, "JID");
    if (objj_msgSend(self.checkboxPasswordRemember, "state") == CPOnState)
        objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.fieldPassword, "stringValue"), key);
    else
        objj_msgSend(defaults, "setObject:forKey:", "", key);
}
,["id","id"]), new objj_method(sel_getUid("changePassword:"), function $TNVirtualMachineNOVNCController__changePassword_(self, _cmd, aSender)
{
    objj_msgSend(self, "rememberPassword:", nil);
    objj_msgSend(self.windowPassword, "close");
    if ((objj_msgSend(objj_msgSend(self, "currentScreenView"), "state") == TNRemoteScreenViewStateDisconnected) || (objj_msgSend(objj_msgSend(self, "currentScreenView"), "state") == TNRemoteScreenViewStateDisconnecting))
    {
        objj_msgSend(objj_msgSend(self, "currentScreenView"), "setPassword:", objj_msgSend(self.fieldPassword, "stringValue"));
        objj_msgSend(objj_msgSend(self, "currentScreenView"), "connect:", nil);
    }
    else
    {
        objj_msgSend(objj_msgSend(self, "currentScreenView"), "sendPassword:", objj_msgSend(self.fieldPassword, "stringValue"));
    }
}
,["id","id"]), new objj_method(sel_getUid("addCertificateException:"), function $TNVirtualMachineNOVNCController__addCertificateException_(self, _cmd, aSender)
{
    if (objj_msgSend(self.buttonAddCertificateException, "title") == CPBundleLocalizedString("Add Exception", "Add Exception"))
    {
        var host = objj_msgSend(objj_msgSend(self, "currentScreenView"), "host"),
            port = objj_msgSend(objj_msgSend(self, "currentScreenView"), "port");
        window.open("https://" + host + ":" + port);
        objj_msgSend(self.buttonAddCertificateException, "setTitle:", CPBundleLocalizedString("Retry", "Retry"));
    }
    else
    {
        objj_msgSend(self, "getVirtualMachineVNCDisplay");
        objj_msgSend(self.buttonAddCertificateException, "setTitle:", CPBundleLocalizedString("Add Exception", "Add Exception"));
    }
}
,["id","id"]), new objj_method(sel_getUid("getVirtualMachineVNCDisplay"), function $TNVirtualMachineNOVNCController__getVirtualMachineVNCDisplay(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineVNC});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineVNCDisplay});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveVNCDisplay:"), self);
}
,["void"]), new objj_method(sel_getUid("_didReceiveVNCDisplay:"), function $TNVirtualMachineNOVNCController___didReceiveVNCDisplay_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var displayNode = objj_msgSend(aStanza, "firstChildWithName:", "display");
        self._VMHost = objj_msgSend(displayNode, "valueForAttribute:", "host");
        self._remoteScreenProxyPort = objj_msgSend(displayNode, "valueForAttribute:", "proxy");
        self._remoteScreenDirectPort = objj_msgSend(displayNode, "valueForAttribute:", "port");
        self._remoteScreenType = objj_msgSend(displayNode, "valueForAttribute:", "type");
        self._supportsSSL = (objj_msgSend(displayNode, "valueForAttribute:", "supportssl") == "True") ? YES : NO;
        self._onlySSL = (objj_msgSend(displayNode, "valueForAttribute:", "onlyssl") == "True") ? YES : NO;
        self._useSSL = NO;
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNArchipelVNCInformationRecoveredNotification, displayNode);
        objj_msgSend(self, "handleDisplayVNCScreen");
    }
    else if (objj_msgSend(aStanza, "type") == "error")
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
}
,["void","id"]), new objj_method(sel_getUid("animation:valueForProgress:"), function $TNVirtualMachineNOVNCController__animation_valueForProgress_(self, _cmd, animation, progress)
{
    objj_msgSend(self.sliderScaling, "setDoubleValue:", objj_msgSend(animation, "currentZoom"));
    objj_msgSend(objj_msgSend(self, "currentScreenView"), "setZoom:", objj_msgSend(animation, "currentZoom"));
}
,["float","CPAnimation","float"]), new objj_method(sel_getUid("animationDidEnd:"), function $TNVirtualMachineNOVNCController__animationDidEnd_(self, _cmd, animation)
{
    objj_msgSend(self, "changeScale:", self.sliderScaling);
}
,["void","CPAnimation"]), new objj_method(sel_getUid("remoteScreenView:updateState:message:"), function $TNVirtualMachineNOVNCController__remoteScreenView_updateState_message_(self, _cmd, aScreenView, aState, aMessage)
{
    switch (aState)
    {
        case TNRemoteScreenViewStateError:
            objj_msgSend(aScreenView, "setHidden:", YES);
            if (objj_msgSend(self.windowPassword, "isVisible") || !objj_msgSend(self, "isConnected"))
                break;
            if (objj_msgSend(aScreenView, "oldState") == TNVNCStateSecurityResult)
            {
                objj_msgSend(self.imageViewSecureConnection, "setHidden:", YES);
                objj_msgSend(self, "_showConnectionHelp:", NO);
                objj_msgSend(self.windowPassword, "center");
                objj_msgSend(self.windowPassword, "makeKeyAndOrderFront:", nil);
            }
            else
            {
                objj_msgSend(self.imageViewSecureConnection, "setHidden:", YES);
                CPLog.error("disconnected from the VNC screen at " + self._VMHost + ":" + self._remoteScreenProxyPort);
                if (objj_msgSend(aScreenView, "oldState") !== TNRemoteScreenViewStateConnected)
                    objj_msgSend(self, "_showConnectionHelp:", YES);
            }
            break;
        case TNRemoteScreenViewNeedsPassword:
            objj_msgSend(self.windowPassword, "center");
            objj_msgSend(self.windowPassword, "makeKeyAndOrderFront:", nil);
            objj_msgSend(self, "_showConnectionHelp:", NO);
            break;
        case TNRemoteScreenViewStateConnected:
            objj_msgSend(aScreenView, "setHidden:", NO);
            objj_msgSend(self, "_centerScreenView");
            objj_msgSend(self, "_showConnectionHelp:", NO);
            setTimeout(function(){ objj_msgSend(self, "fitToScreen:", nil) }, 500);
            objj_msgSend(self.imageViewSecureConnection, "setHidden:", !self._useSSL);
            break;
    }
}
,["void","TNRemoteScreenView","CPString","CPString"]), new objj_method(sel_getUid("remoteScreenView:didDesktopSizeChange:"), function $TNVirtualMachineNOVNCController__remoteScreenView_didDesktopSizeChange_(self, _cmd, aScreenView, aNewSize)
{
    objj_msgSend(self, "fitToScreen:", nil);
}
,["void","TNRemoteScreenView","CGSize"]), new objj_method(sel_getUid("remoteScreenView:didReceivePasteBoardText:"), function $TNVirtualMachineNOVNCController__remoteScreenView_didReceivePasteBoardText_(self, _cmd, aScreenView, aText)
{
    alert(aText);
}
,["void","TNRemoteScreenView","CPString"]), new objj_method(sel_getUid("remoteScreenView:didGetFocus:"), function $TNVirtualMachineNOVNCController__remoteScreenView_didGetFocus_(self, _cmd, aScreenView, hasFocus)
{
}
,["void","TNRemoteScreenView","BOOL"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNVirtualMachineNOVNCController), comment);
}p;17;TNZoomAnimation.jt;1838;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPAnimation.jt;1766;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPAnimation.j", NO);
{var the_class = objj_allocateClassPair(CPAnimation, "TNZoomAnimation"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_currentZoom"), new objj_ivar("_endZoomValue"), new objj_ivar("_startZoomValue")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("currentZoom"), function $TNZoomAnimation__currentZoom(self, _cmd)
{
return self._currentZoom;
}
,["float"]), new objj_method(sel_getUid("_setCurrentZoom:"), function $TNZoomAnimation___setCurrentZoom_(self, _cmd, newValue)
{
self._currentZoom = newValue;
}
,["void","float"]), new objj_method(sel_getUid("endZoomValue"), function $TNZoomAnimation__endZoomValue(self, _cmd)
{
return self._endZoomValue;
}
,["float"]), new objj_method(sel_getUid("setEndZoomValue:"), function $TNZoomAnimation__setEndZoomValue_(self, _cmd, newValue)
{
self._endZoomValue = newValue;
}
,["void","float"]), new objj_method(sel_getUid("startZoomValue"), function $TNZoomAnimation__startZoomValue(self, _cmd)
{
return self._startZoomValue;
}
,["float"]), new objj_method(sel_getUid("setStartZoomValue:"), function $TNZoomAnimation__setStartZoomValue_(self, _cmd, newValue)
{
self._startZoomValue = newValue;
}
,["void","float"]), new objj_method(sel_getUid("setCurrentProgress:"), function $TNZoomAnimation__setCurrentProgress_(self, _cmd, aProgress)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNZoomAnimation").super_class }, "setCurrentProgress:", aProgress);
    var diff = (self._endZoomValue - self._startZoomValue) * aProgress;
    self._currentZoom = self._startZoomValue + diff;
    objj_msgSend(self, "currentValue");
}
,["void","float"])]);
}e;