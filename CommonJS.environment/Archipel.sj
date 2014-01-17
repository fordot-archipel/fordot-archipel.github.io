@STATIC;1.0;p;15;AppController.jt;80397;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;16;AppKit/CPImage.jI;20;AppKit/CPImageView.jI;15;AppKit/CPMenu.jI;19;AppKit/CPMenuItem.jI;25;AppKit/CPPlatformWindow.jI;28;AppKit/CPProgressIndicator.jI;21;AppKit/CPScrollView.jI;21;AppKit/CPScrollView.jI;20;AppKit/CPSplitView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;17;AppKit/CPWindow.jI;18;AppKit/CPWebView.jI;19;AppKit/_CPToolTip.jI;33;GrowlCappuccino/GrowlCappuccino.jI;28;LPKit/LPMultiLineTextField.jI;23;LPKit/LPCrashReporter.jI;17;TNKit/TNToolbar.jI;18;TNKit/TNFlipView.jI;17;TNKit/TNTabView.ji;25;Categories/TNCategories.ji;32;Controllers/TNAvatarController.ji;36;Controllers/TNConnectionController.ji;34;Controllers/TNContactsController.ji;32;Controllers/TNGroupsController.ji;30;Controllers/TNHintController.ji;32;Controllers/TNModuleController.ji;45;Controllers/TNNotificationHistoryController.ji;33;Controllers/TNPermissionsCenter.ji;37;Controllers/TNPreferencesController.ji;36;Controllers/TNPropertiesController.ji;26;Controllers/TNPushCenter.ji;30;Controllers/TNTagsController.ji;32;Controllers/TNUpdateController.ji;36;Controllers/TNUserAvatarController.ji;37;Controllers/TNXMPPAccountController.ji;17;Model/TNVersion.ji;30;Views/TNButtonBarPopUpButton.ji;27;Views/TNOutlineViewRoster.ji;25;Views/TNRosterDataViews.ji;21;Views/TNSearchField.jt;79059;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPMenu.j", NO);
objj_executeFile("AppKit/CPMenuItem.j", NO);
objj_executeFile("AppKit/CPPlatformWindow.j", NO);
objj_executeFile("AppKit/CPProgressIndicator.j", NO);
objj_executeFile("AppKit/CPScrollView.j", NO);
objj_executeFile("AppKit/CPScrollView.j", NO);
objj_executeFile("AppKit/CPSplitView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("AppKit/CPWebView.j", NO);
objj_executeFile("AppKit/_CPToolTip.j", NO);
objj_executeFile("GrowlCappuccino/GrowlCappuccino.j", NO);
objj_executeFile("LPKit/LPMultiLineTextField.j", NO);
objj_executeFile("LPKit/LPCrashReporter.j", NO);
objj_executeFile("TNKit/TNToolbar.j", NO);
objj_executeFile("TNKit/TNFlipView.j", NO);
objj_executeFile("TNKit/TNTabView.j", NO);
objj_executeFile("Categories/TNCategories.j", YES);
objj_executeFile("Controllers/TNAvatarController.j", YES);
objj_executeFile("Controllers/TNConnectionController.j", YES);
objj_executeFile("Controllers/TNContactsController.j", YES);
objj_executeFile("Controllers/TNGroupsController.j", YES);
objj_executeFile("Controllers/TNHintController.j", YES);
objj_executeFile("Controllers/TNModuleController.j", YES);
objj_executeFile("Controllers/TNNotificationHistoryController.j", YES);
objj_executeFile("Controllers/TNPermissionsCenter.j", YES);
objj_executeFile("Controllers/TNPreferencesController.j", YES);
objj_executeFile("Controllers/TNPropertiesController.j", YES);
objj_executeFile("Controllers/TNPushCenter.j", YES);
objj_executeFile("Controllers/TNTagsController.j", YES);
objj_executeFile("Controllers/TNUpdateController.j", YES);
objj_executeFile("Controllers/TNUserAvatarController.j", YES);
objj_executeFile("Controllers/TNXMPPAccountController.j", YES);
objj_executeFile("Model/TNVersion.j", YES);
objj_executeFile("Views/TNButtonBarPopUpButton.j", YES);
objj_executeFile("Views/TNOutlineViewRoster.j", YES);
objj_executeFile("Views/TNRosterDataViews.j", YES);
objj_executeFile("Views/TNSearchField.j", YES);
//@global CPLocalizedString
//@global CPApplicationWillTerminateNotification
//@global CPApp
CPFontDefaultSystemFontFace = "Courier";
TNArchipelEntityTypeHypervisor = "hypervisor";
TNArchipelEntityTypeVirtualMachine = "virtualmachine";
TNArchipelEntityTypeUser = "user";
TNArchipelEntityTypeGroup = "group";
TNArchipelEntityTypes = nil;
TNArchipelNotificationRosterSelectionChanged = "TNArchipelNotificationRosterSelectionChanged";
TNArchipelRememberOpenedGroup = "TNArchipelRememberOpenedGroup_";
TNArchipelEntityTypeGeneral = "general";
TNUserAvatarSize = nil;
var TNArchipelStatusAvailableLabel = "Available",
    TNArchipelStatusAwayLabel = "Away",
    TNArchipelStatusBusyLabel = "Busy",
    TNArchipelStatusDNDLabel = "Do not disturb",
    TNToolBarItemLogout = "TNToolBarItemLogout",
    TNToolBarItemTags = "TNToolBarItemTags",
    TNToolBarItemHelp = "TNToolBarItemHelp",
    TNToolBarItemStatus = "TNToolBarItemStatus",
    TNArchipelTagViewHeight = 33.0;
__COPYRIGHT__ = "Copyright 2010-2013 Antoine Mercadal";
{var the_class = objj_allocateClassPair(CPObject, "AppController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonBarLeft"), new objj_ivar("imageViewLogoAbout"), new objj_ivar("ledIn"), new objj_ivar("ledOut"), new objj_ivar("progressIndicatorModulesLoading"), new objj_ivar("splitViewHorizontalRoster"), new objj_ivar("splitViewMain"), new objj_ivar("splitViewTagsContents"), new objj_ivar("fieldVersion"), new objj_ivar("labelCurrentUser"), new objj_ivar("textFieldAboutVersion"), new objj_ivar("filterView"), new objj_ivar("statusBar"), new objj_ivar("viewAboutWindowLogoContainer"), new objj_ivar("viewLoading"), new objj_ivar("webViewAboutCredits"), new objj_ivar("theWindow"), new objj_ivar("windowAboutArchipel"), new objj_ivar("avatarController"), new objj_ivar("connectionController"), new objj_ivar("contactsController"), new objj_ivar("leftView"), new objj_ivar("rightView"), new objj_ivar("groupsController"), new objj_ivar("hintController"), new objj_ivar("moduleController"), new objj_ivar("notificationHistoryController"), new objj_ivar("preferencesController"), new objj_ivar("propertiesController"), new objj_ivar("filterField"), new objj_ivar("tagsController"), new objj_ivar("updateController"), new objj_ivar("userAvatarController"), new objj_ivar("XMPPAccountController"), new objj_ivar("rosterDataViewForContacts"), new objj_ivar("rosterDataViewForGroups"), new objj_ivar("_tagsVisible"), new objj_ivar("_hideButton"), new objj_ivar("_plusButton"), new objj_ivar("_userAvatarButton"), new objj_ivar("_hideButtonImageDisable"), new objj_ivar("_hideButtonImageEnable"), new objj_ivar("_imageLedInData"), new objj_ivar("_imageLedNoData"), new objj_ivar("_imageLedOutData"), new objj_ivar("_mainMenu"), new objj_ivar("_modulesMenu"), new objj_ivar("_rosterMenuForContacts"), new objj_ivar("_rosterMenuForGroups"), new objj_ivar("_platformHelpWindow"), new objj_ivar("_outlineScrollView"), new objj_ivar("_rightViewTextField"), new objj_ivar("_ledInTimer"), new objj_ivar("_ledOutTimer"), new objj_ivar("_moduleLoadingDelay"), new objj_ivar("_helpWindow"), new objj_ivar("_rosterOutlineView"), new objj_ivar("_pubSubController"), new objj_ivar("_stropheGroupSelection"), new objj_ivar("_moduleTabView"), new objj_ivar("_mainToolbar"), new objj_ivar("_currentVersion"), new objj_ivar("_currentRightViewContent")]);





       
       








       
       



       
       



























       
       




       
       

       
       
















objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $AppController__awakeFromCib(self, _cmd)
{
    if (typeof(LPCrashReporter) != "undefined")
        objj_msgSend(LPCrashReporter, "sharedErrorLogger");
    objj_msgSend(TNPushCenter, "defaultCenter");
    objj_msgSend(self.theWindow, "setFullPlatformWindow:", YES);
    TNUserAvatarSize = CGSizeMake(50.0, 50.0);
    var bundle = objj_msgSend(CPBundle, "mainBundle"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        center = objj_msgSend(CPNotificationCenter, "defaultCenter");
    CPLogRegister(CPLogConsole, objj_msgSend(defaults, "objectForKey:", "TNArchipelConsoleDebugLevel"));
    CPLog.trace("registering for notification TNStropheConnectionSuccessNotification");
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("loginStrophe:"), TNStropheConnectionStatusConnectedNotification, nil);
    CPLog.trace("registering for notification TNStropheDisconnectionNotification");
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("XMPPDisconnecting:"), TNStropheConnectionStatusDisconnectingNotification, nil);
    CPLog.trace("registering for notification TNStropheConnectionStatusDisconnectedNotification");
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("XMPPDisconnected:"), TNStropheConnectionStatusDisconnectedNotification, nil);
    CPLog.trace("registering for notification CPApplicationWillTerminateNotification");
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("onApplicationTerminate:"), CPApplicationWillTerminateNotification, nil);
    CPLog.trace("registering for notification TNStropheContactMessageReceivedNotification");
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("didReceiveUserMessage:"), TNStropheContactMessageReceivedNotification, nil);
    CPLog.trace("registering for notification TNStropheContactMessageReceivedNotification");
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("didRetrieveRoster:"), TNStropheRosterRetrievedNotification, nil);
    CPLog.trace("registering for notification TNStropheContactMessageReceivedNotification");
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("didRetreiveUserVCard:"), TNConnectionControllerCurrentUserVCardRetreived, nil);
    CPLog.trace("registering for notification TNConnectionControllerConnectionStarted");
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("didConnectionStart:"), TNConnectionControllerConnectionStarted, self.connectionController);
    CPLog.trace("registering for notification TNPreferencesControllerRestoredNotification");
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("didRetrieveConfiguration:"), TNPreferencesControllerRestoredNotification, self.preferencesController);
    var commonImageModuleBackground = objj_msgSend(CPColor, "colorWithHexString:", "F6F6F6"),
        commonImageDarkBackground = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "Backgrounds/dark-bg.png"));
    objj_msgSend(defaults, "registerDefaults:", objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelVersion"), "TNArchipelVersion", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelModuleLoadingDelay"), "TNArchipelModuleLoadingDelay", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelConsoleDebugLevel"), "TNArchipelConsoleDebugLevel", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelXMPPResource"), "TNArchipelXMPPResource", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelUseAnimations"), "TNArchipelUseAnimations", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelAutoCheckUpdate"), "TNArchipelAutoCheckUpdate", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelMonitorStanza"), "TNArchipelMonitorStanza", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNHideOfflineContacts"), "TNHideOfflineContacts", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "CPBundleLocale"), "CPBundleLocale", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelPropertyControllerEnabled"), "TNArchipelPropertyControllerEnabled", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelScrollersStyle"), "TNArchipelScrollersStyle", objj_msgSend(CPDictionary, "dictionary"), "TNOutlineViewsExpandedGroups"));
    objj_msgSend(self.imageViewLogoAbout, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "Backgrounds/background-icon.png")));
    objj_msgSend(self.viewAboutWindowLogoContainer, "setBackgroundColor:", objj_msgSend(CPColor, "blackColor"));
    var posx = 230;
    objj_msgSend(self.splitViewMain, "setPosition:ofDividerAtIndex:", posx, 0);
    var bounds = objj_msgSend(self.leftView, "bounds");
    bounds.size.width = posx;
    objj_msgSend(self.leftView, "setFrame:", bounds);
    objj_msgSend(self.splitViewMain, "setIsPaneSplitter:", NO);
    objj_msgSend(self.splitViewMain, "setDelegate:", self);
    self._tagsVisible = objj_msgSend(defaults, "boolForKey:", "TNArchipelTagsVisible");
    objj_msgSend(self.splitViewTagsContents, "setValue:forThemeAttribute:", 0.0, "divider-thickness")
    objj_msgSend(self.splitViewTagsContents, "setDelegate:", self);
    objj_msgSend(objj_msgSend(self.tagsController, "mainView"), "setFrame:", objj_msgSend(objj_msgSend(objj_msgSend(self.splitViewTagsContents, "subviews"), "objectAtIndex:", 0), "frame"));
    objj_msgSend(objj_msgSend(objj_msgSend(self.splitViewTagsContents, "subviews"), "objectAtIndex:", 0), "addSubview:", objj_msgSend(self.tagsController, "mainView"));
    CPLog.trace("initializing the splitViewHorizontalRoster");
    objj_msgSend(self.splitViewHorizontalRoster, "setPosition:ofDividerAtIndex:", objj_msgSend(self.splitViewHorizontalRoster, "bounds").size.height, 0);
    objj_msgSend(self.splitViewHorizontalRoster, "setDelegate:", self);
    objj_msgSend(self.propertiesController, "setAvatarManager:", self.avatarController);
    objj_msgSend(self.propertiesController, "setEnabled:", objj_msgSend(defaults, "boolForKey:", "TNArchipelPropertyControllerEnabled"));
    objj_msgSend(self.preferencesController, "setAppController:", self);
    CPLog.trace("initializing _rosterOutlineView");
    self._rosterOutlineView = objj_msgSend(objj_msgSend(TNOutlineViewRoster, "alloc"), "initWithFrame:", objj_msgSend(self.leftView, "bounds"));
    objj_msgSend(self._rosterOutlineView, "setDelegate:", self);
    objj_msgSend(self._rosterOutlineView, "setEnabled:", NO);
    objj_msgSend(self._rosterOutlineView, "registerForDraggedTypes:", [TNDragTypeContact]);
    objj_msgSend(self._rosterOutlineView, "setSearchField:", self.filterField);
    self._rosterOutlineView._DOMElement.style.backgroundImage = "-webkit-linear-gradient(top, #E0E4EA, #D1D8E0)";
    self._rosterOutlineView._DOMElement.style.backgroundImage = "-moz-linear-gradient(-90deg, #E0E4EA, #D1D8E0)";
    CPLog.trace("initializing _outlineScrollView");
    self._outlineScrollView = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", objj_msgSend(self.leftView, "bounds"));
    objj_msgSend(self._outlineScrollView, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
    objj_msgSend(self._outlineScrollView, "setAutohidesScrollers:", YES);
    objj_msgSend(self._outlineScrollView, "setDocumentView:", self._rosterOutlineView);
    objj_msgSend(self._outlineScrollView, "setDelegate:", self._rosterOutlineView);
    objj_msgSend(self.leftView, "addSubview:", self._outlineScrollView);
    objj_msgSend(self.leftView, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", commonImageDarkBackground));
    CPLog.trace("initializing rightView");
    objj_msgSend(self.rightView, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
    objj_msgSend(self.rightView, "setBackgroundColor:", commonImageModuleBackground);
    CPLog.trace("initializing the _moduleTabView");
    self._moduleTabView = objj_msgSend(objj_msgSend(TNTabView, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(self._moduleTabView, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
    objj_msgSend(self._moduleTabView, "setContentBackgroundColor:", commonImageModuleBackground);
    objj_msgSend(self.viewLoading, "setFrame:", objj_msgSend(self.rightView, "bounds"));
    objj_msgSend(self.viewLoading, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
    self.viewLoading._DOMElement.style.background = "url(Resources/Backgrounds/dark-bg.png)";
    self.viewLoading._DOMElement.style.background = "-webkit-gradient(radial, 50% 50%, 0, 50% 50%, 650, from(transparent), to(rgba(0, 0, 0, 1))), url(Resources/Backgrounds/dark-bg.png)";
    objj_msgSend(self.rightView, "addSubview:", self.viewLoading);
    objj_msgSend(self.progressIndicatorModulesLoading, "setMinValue:", 0.0);
    objj_msgSend(self.progressIndicatorModulesLoading, "setMaxValue:", 1.0);
    objj_msgSend(self.progressIndicatorModulesLoading, "setDoubleValue:", 0.0);
    var bounds = objj_msgSend(self._moduleTabView, "bounds");
    self._rightViewTextField = objj_msgSend(CPTextField, "labelWithTitle:", "");
    objj_msgSend(self._rightViewTextField, "setFrame:", CGRectMake(bounds.size.width / 2 - 300, 153, 600, 200));
    objj_msgSend(self._rightViewTextField, "setAutoresizingMask:", CPViewMaxXMargin | CPViewMinXMargin);
    objj_msgSend(self._rightViewTextField, "setAlignment:", CPCenterTextAlignment)
    objj_msgSend(self._rightViewTextField, "setFont:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 26));
    objj_msgSend(self._rightViewTextField, "setTextColor:", objj_msgSend(CPColor, "grayColor"));
    objj_msgSend(self._rightViewTextField, "setHidden:", YES);
    objj_msgSend(self._moduleTabView, "addSubview:", self._rightViewTextField);
    CPLog.trace("initializing the filterView");
    objj_msgSend(self.filterView, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "Backgrounds/background-filter.png"))));
    objj_msgSend(self.filterField, "setOutlineView:", self._rosterOutlineView);
    objj_msgSend(self.filterField, "setMaximumRecents:", 10);
    CPLog.trace("initializing Growl");
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "setView:", objj_msgSend(self.theWindow, "contentView"));
    CPLog.trace("Initializing the traffic status LED");
    self._imageLedInData = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsStatus/green.png"), CGSizeMake(8.0, 8.0));
    self._imageLedOutData = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsStatus/orange.png"), CGSizeMake(8.0, 8.0));
    self._imageLedNoData = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsStatus/gray.png"), CGSizeMake(8.0, 8.0));
    var major = objj_msgSend(objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelVersion"), "objectForKey:", "major"),
        minor = objj_msgSend(objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelVersion"), "objectForKey:", "minor"),
        revision = objj_msgSend(objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelVersion"), "objectForKey:", "revision"),
        codeName = objj_msgSend(objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelVersion"), "objectForKey:", "codeName");
    self._currentVersion = objj_msgSend(TNVersion, "versionWithMajor:minor:revision:codeName:", major, minor, revision, codeName);
    if (typeof(LPCrashReporter) != "undefined")
        objj_msgSend(objj_msgSend(LPCrashReporter, "sharedErrorLogger"), "setVersion:", objj_msgSend(self._currentVersion, "description"));
    CPLog.info("current version is " + self._currentVersion);
    objj_msgSend(self.updateController, "setCurrentVersion:", self._currentVersion)
    objj_msgSend(self.updateController, "setURL:", objj_msgSend(CPURL, "URLWithString:", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelUpdateServerURL")));
    objj_msgSend(self.webViewAboutCredits, "setScrollMode:", CPWebViewScrollNative);
    objj_msgSend(self.webViewAboutCredits, "setMainFrameURL:", objj_msgSend(bundle, "pathForResource:", "credits.html"));
    objj_msgSend(self.webViewAboutCredits, "setBorderedWithHexColor:", "#C0C7D2");
    objj_msgSend(self.textFieldAboutVersion, "setStringValue:", self._currentVersion);
    objj_msgSend(self, "makeToolbar");
    objj_msgSend(self, "makeAvatarChooser");
    objj_msgSend(self, "makeMainMenu");
    objj_msgSend(self, "makeRosterMenu");
    objj_msgSend(self, "makeButtonBar");
    CPLog.trace("initializing moduleController");
    objj_msgSend(self.moduleController, "setDelegate:", self);
    objj_msgSend(self.moduleController, "setMainToolbar:", self._mainToolbar);
    objj_msgSend(self.moduleController, "setMainTabView:", self._moduleTabView);
    objj_msgSend(self.moduleController, "setInfoTextField:", self._rightViewTextField);
    objj_msgSend(self.moduleController, "setModulesPath:", "Modules/")
    objj_msgSend(self.moduleController, "setMainModuleView:", self.rightView);
    objj_msgSend(self.moduleController, "setModulesMenu:", self._modulesMenu);
    objj_msgSend(self.moduleController, "setRosterGroupsMenu:", self._rosterMenuForGroups);
    objj_msgSend(self.moduleController, "setRosterContactsMenu:", self._rosterMenuForContacts);
    objj_msgSend(self.moduleController, "setToolbarModuleBackgroundColor:", commonImageModuleBackground);
    objj_msgSend(self._moduleTabView, "setDelegate:", self.moduleController);
    objj_msgSend(self._rosterOutlineView, "setModulesTabView:", self._moduleTabView);
    objj_msgSend(self.statusBar, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "Backgrounds/statusbar-bg.png"))));
    objj_msgSend(self.statusBar, "applyShadow:offset:", objj_msgSend(CPColor, "colorWithHexString:", "f3f3f3"), CGSizeMake(0.0, 1.0));
    objj_msgSend(self.labelCurrentUser, "setFont:", objj_msgSend(CPFont, "systemFontOfSize:", 9.0));
    objj_msgSend(self.labelCurrentUser, "setStringValue:", "");
    objj_msgSend(self.fieldVersion, "setFont:", objj_msgSend(CPFont, "systemFontOfSize:", 9.0));
    objj_msgSend(self.fieldVersion, "setStringValue:", "");
    objj_msgSend(self.fieldVersion, "setSelectable:", YES);
    objj_msgSend(self.fieldVersion, "setStringValue:", objj_msgSend(CPString, "stringWithFormat:", "Archipel UI Version %@ - %@", self._currentVersion, __COPYRIGHT__));
    objj_msgSend(self.connectionController, "showWindow:", nil);
    objj_msgSend(self.connectionController, "initCredentials");
    TNArchipelEntityTypes = objj_msgSend(CPDictionary, "dictionary");
    objj_msgSend(TNArchipelEntityTypes, "setObject:forKey:", CPLocalizedString("Virtual machine", "Virtual machine"), TNArchipelEntityTypeVirtualMachine);
    objj_msgSend(TNArchipelEntityTypes, "setObject:forKey:", CPLocalizedString("Hypervisor", "Hypervisor"), TNArchipelEntityTypeHypervisor);
}
,["void"]), new objj_method(sel_getUid("makeMainMenu"), function $AppController__makeMainMenu(self, _cmd)
{
    CPLog.trace("Creating the main menu");
    self._mainMenu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init");
    var archipelItem = objj_msgSend(self._mainMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Archipel", "Archipel"), nil, ""),
        editMenu = objj_msgSend(self._mainMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Edit", "Edit"), nil, ""),
        contactsItem = objj_msgSend(self._mainMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Contacts", "Contact"), nil, ""),
        groupsItem = objj_msgSend(self._mainMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Groups", "Groups"), nil, ""),
        navigationItem = objj_msgSend(self._mainMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Navigation", "Navigation"), nil, ""),
        moduleItem = objj_msgSend(self._mainMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Modules", "Modules"), nil, ""),
        helpItem = objj_msgSend(self._mainMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Help", "Help"), nil, ""),
        archipelMenu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init"),
        editMenuItem = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init"),
        groupsMenu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init"),
        contactsMenu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init"),
        statusMenu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init"),
        navigationMenu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init"),
        helpMenu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(objj_msgSend(archipelMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("About Archipel", "About Archipel"), sel_getUid("showAboutWindow:"), "?"), "setTarget:", self);
    objj_msgSend(archipelMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(archipelMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Preferences", "Preferences"), sel_getUid("showPreferencesWindow:"), ","), "setTarget:", self);
    objj_msgSend(objj_msgSend(archipelMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("XMPP Account", "XMPP Account"), sel_getUid("showXMPPAccountWindow:"), ";"), "setTarget:", self);
    objj_msgSend(archipelMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(archipelMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Notifications", "Notification"), sel_getUid("showNotificationWindow:"), ">"), "setTarget:", self);
    objj_msgSend(archipelMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(archipelMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Log out", "Log out"), sel_getUid("logout:"), "Q"), "setTarget:", self);
    objj_msgSend(objj_msgSend(archipelMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Quit", "Quit"), nil, ""), "setTarget:", self);
    objj_msgSend(self._mainMenu, "setSubmenu:forItem:", archipelMenu, archipelItem);
    objj_msgSend(editMenuItem, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Undo", "Undo"), sel_getUid("undo:"), "z");
    objj_msgSend(editMenuItem, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Redo", "Undo"), sel_getUid("redo:"), "Z");
    objj_msgSend(editMenuItem, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(editMenuItem, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Copy", "Copy"), sel_getUid("copy:"), "c");
    objj_msgSend(editMenuItem, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Cut", "Cut"), sel_getUid("cut:"), "x");
    objj_msgSend(editMenuItem, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Paste", "Paste"), sel_getUid("paste:"), "v");
    objj_msgSend(editMenuItem, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Select all", "Select all"), sel_getUid("selectAll:"), "a");
    objj_msgSend(self._mainMenu, "setSubmenu:forItem:", editMenuItem, editMenu);
    if (objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "objectForInfoDictionaryKey:", "TNArchipelDisplayXMPPManageContactsButton") == 1)
    {
        objj_msgSend(objj_msgSend(groupsMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Add group", "Add group"), sel_getUid("addGroup:"), "G"), "setTarget:", self);
        objj_msgSend(objj_msgSend(groupsMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Delete group", "Delete group"), sel_getUid("deleteEntities:"), "D"), "setTarget:", self);
    }
    objj_msgSend(self._mainMenu, "setSubmenu:forItem:", groupsMenu, groupsItem);
    if (objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "objectForInfoDictionaryKey:", "TNArchipelDisplayXMPPManageContactsButton") == 1)
    {
        objj_msgSend(objj_msgSend(contactsMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Add contact", "Add contact"), sel_getUid("addContact:"), "C"), "setTarget:", self);
        objj_msgSend(objj_msgSend(contactsMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Delete contact", "Delete contacts"), sel_getUid("deleteEntities:"), "D"), "setTarget:", self);
        objj_msgSend(contactsMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"))
        objj_msgSend(objj_msgSend(contactsMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Ask subscribtion", "Ask subscribtion"), sel_getUid("askSubscription:"), "'"), "setTarget:", self);
        objj_msgSend(objj_msgSend(contactsMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Remove subscribtion", "Remove subscribtion"), sel_getUid("removeSubscription:"), "\""), "setTarget:", self);
    }
    objj_msgSend(self._mainMenu, "setSubmenu:forItem:", contactsMenu, contactsItem);
    objj_msgSend(objj_msgSend(navigationMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Hide main menu", "Hide main menu"), sel_getUid("switchMainMenu:"), "U"), "setTarget:", self);
    objj_msgSend(objj_msgSend(navigationMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Search entity", "Search entity"), sel_getUid("focusFilter:"), "F"), "setTarget:", self);
    objj_msgSend(navigationMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(navigationMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Select next entity", "Select next entity"), sel_getUid("selectNextEntity:"), CPDownArrowFunctionKey), "setTarget:", self);
    objj_msgSend(objj_msgSend(navigationMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Select previous entity", "Select previous entity"), sel_getUid("selectPreviousEntity:"), CPUpArrowFunctionKey), "setTarget:", self);
    objj_msgSend(navigationMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    var nextModuleItem = objj_msgSend(objj_msgSend(navigationMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Select next module", "Select next module"), sel_getUid("selectNextModule:"), CPRightArrowFunctionKey), "setKeyEquivalentModifierMask:", CPCommandKeyMask | CPAlternateKeyMask),
        previousModuleItem = objj_msgSend(objj_msgSend(navigationMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Select previous module", "Select previous module"), sel_getUid("selectPreviousModule:"), CPLeftArrowFunctionKey), "setKeyEquivalentModifierMask:", CPCommandKeyMask | CPAlternateKeyMask);
    objj_msgSend(nextModuleItem, "setTarget:", self);
    objj_msgSend(previousModuleItem, "setTarget:", self);
    objj_msgSend(navigationMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(navigationMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Expand group", "Expand group"), sel_getUid("expandGroup:"), "["), "setTarget:", self);
    objj_msgSend(objj_msgSend(navigationMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Collapse group", "Expand group"), sel_getUid("collapseGroup:"), "]"), "setTarget:", self);
    objj_msgSend(navigationMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(navigationMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Expand all groups", "Expand all groups"), sel_getUid("expandAllGroups:"), "{"), "setTarget:", self);
    objj_msgSend(objj_msgSend(navigationMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Collapse all groups", "Collapse all groups"), sel_getUid("collapseAllGroups:"), "}"), "setTarget:", self);
    objj_msgSend(navigationMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(navigationMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Toggle tag view", "Toggle tag view"), sel_getUid("toolbarItemTagsClick:"), "T"), "setTarget:", self);
    objj_msgSend(self._mainMenu, "setSubmenu:forItem:", navigationMenu, navigationItem);
    self._modulesMenu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init");
    objj_msgSend(self._mainMenu, "setSubmenu:forItem:", self._modulesMenu, moduleItem);
    objj_msgSend(moduleItem, "setEnabled:", NO);
    objj_msgSend(objj_msgSend(helpMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Archipel Help", "Archipel Help"), sel_getUid("openWiki:"), "?"), "setTarget:", self);
    objj_msgSend(objj_msgSend(helpMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Release note", "Release note"), sel_getUid("openReleaseNotes:"), ""), "setTarget:", self);
    objj_msgSend(helpMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(helpMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Go to website", "Go to website"), sel_getUid("openWebsite:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(helpMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Report a bug", "Report a bug"), sel_getUid("openBugTracker:"), ""), "setTarget:", self);
    objj_msgSend(helpMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(helpMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Make a donation", "Make a donation"), sel_getUid("openDonationPage:"), ""), "setTarget:", self);
    objj_msgSend(self._mainMenu, "setSubmenu:forItem:", helpMenu, helpItem);
    objj_msgSend(CPApp, "setMainMenu:", self._mainMenu);
    objj_msgSend(CPMenu, "setMenuBarVisible:", NO);
    CPLog.trace("Main menu created");
}
,["void"]), new objj_method(sel_getUid("makeRosterMenu"), function $AppController__makeRosterMenu(self, _cmd)
{
    self._rosterMenuForContacts = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init");
    objj_msgSend(objj_msgSend(self._rosterMenuForContacts, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Delete contact", "Delete contact"), sel_getUid("deleteEntities:"), "D"), "setTarget:", self);
    objj_msgSend(self._rosterMenuForContacts, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(self._rosterMenuForContacts, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Ask subscribtion", "Ask subscribtion"), sel_getUid("askSubscription:"), "'"), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._rosterMenuForContacts, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Remove subscribtion", "Remove subscribtion"), sel_getUid("removeSubscription:"), "\""), "setTarget:", self);
    self._rosterMenuForGroups = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init");
    objj_msgSend(objj_msgSend(self._rosterMenuForGroups, "addItemWithTitle:action:keyEquivalent:", "Delete group", sel_getUid("deleteEntities:"), "D"), "setTarget:", self);
    objj_msgSend(self._rosterMenuForGroups, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(self._rosterMenuForGroups, "addItemWithTitle:action:keyEquivalent:", "Expand group", sel_getUid("expandGroup:"), "["), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._rosterMenuForGroups, "addItemWithTitle:action:keyEquivalent:", "Collapse group", sel_getUid("collapseAllGroups:"), "]"), "setTarget:", self);
}
,["void"]), new objj_method(sel_getUid("makeToolbar"), function $AppController__makeToolbar(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", self);
    CPLog.trace("initializing mianToolbar");
    self._mainToolbar = objj_msgSend(objj_msgSend(TNToolbar, "alloc"), "init");
    objj_msgSend(self.theWindow, "setToolbar:", self._mainToolbar);
    objj_msgSend(self._mainToolbar, "addItemWithIdentifier:label:view:target:action:", "CUSTOMSPACE", "              ", nil, nil, nil);
    objj_msgSend(self._mainToolbar, "addItemWithIdentifier:label:icon:altIcon:target:action:toolTip:", TNToolBarItemLogout, CPLocalizedString("Log out", "Log out"), objj_msgSend(bundle, "pathForResource:", "IconsToolbar/logout.png"), objj_msgSend(bundle, "pathForResource:", "IconsToolbar/logout-alt.png"), self, sel_getUid("toolbarItemLogoutClick:"), "Log out from the application");
    objj_msgSend(self._mainToolbar, "addItemWithIdentifier:label:icon:altIcon:target:action:toolTip:", TNToolBarItemTags, CPLocalizedString("Tags", "Tags"), objj_msgSend(bundle, "pathForResource:", "IconsToolbar/tags.png"), objj_msgSend(bundle, "pathForResource:", "IconsToolbar/tags-alt.png"), self, sel_getUid("toolbarItemTagsClick:"), "Show or hide the tags field");
    var statusSelector = objj_msgSend(objj_msgSend(CPPopUpButton, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 130.0, 25.0)),
        availableItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "init"),
        awayItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "init"),
        busyItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "init"),
        DNDItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "init"),
        statusItem = objj_msgSend(self._mainToolbar, "addItemWithIdentifier:label:view:target:action:", TNToolBarItemStatus, CPLocalizedString("Status", "Status"), statusSelector, self, sel_getUid("toolbarItemPresenceStatusClick:"));
    TNArchipelStatusAvailableLabel = CPLocalizedString("Available", "Available"),
    TNArchipelStatusAwayLabel = CPLocalizedString("Away", "Away"),
    TNArchipelStatusBusyLabel = CPLocalizedString("Busy", "Busy"),
    TNArchipelStatusDNDLabel = CPLocalizedString("Do not disturb", "Do not disturb"),
    objj_msgSend(availableItem, "setTitle:", TNArchipelStatusAvailableLabel);
    objj_msgSend(availableItem, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsStatus/green-large.png"), CGSizeMake(10.0, 8.0)));
    objj_msgSend(statusSelector, "addItem:", availableItem);
    objj_msgSend(awayItem, "setTitle:", TNArchipelStatusAwayLabel);
    objj_msgSend(awayItem, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsStatus/orange-large.png"), CGSizeMake(10.0, 8.0)));
    objj_msgSend(statusSelector, "addItem:", awayItem);
    objj_msgSend(busyItem, "setTitle:", TNArchipelStatusBusyLabel);
    objj_msgSend(busyItem, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsStatus/red-large.png"), CGSizeMake(10.0, 8.0)));
    objj_msgSend(statusSelector, "addItem:", busyItem);
    objj_msgSend(DNDItem, "setTitle:", TNArchipelStatusDNDLabel);
    objj_msgSend(DNDItem, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsStatus/black-large.png"), CGSizeMake(10.0, 8.0)));
    objj_msgSend(statusSelector, "addItem:", DNDItem);
    objj_msgSend(statusItem, "setMinSize:", CGSizeMake(123.0, 25.0));
    objj_msgSend(statusItem, "setMaxSize:", CGSizeMake(123.0, 25.0));
    objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 0, "CUSTOMSPACE");
    objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 1, TNToolBarItemStatus);
    objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 2, CPToolbarSeparatorItemIdentifier);
    objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 499, CPToolbarFlexibleSpaceItemIdentifier);
    objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 901, CPToolbarSeparatorItemIdentifier);
    objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 902, TNToolBarItemTags);
    objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 903, TNToolBarItemHelp);
    objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", 904, TNToolBarItemLogout);
    objj_msgSend(self._mainToolbar, "reloadToolbarItems");
}
,["void"]), new objj_method(sel_getUid("makeAvatarChooser"), function $AppController__makeAvatarChooser(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "mainBundle"),
        userAvatar = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "init"),
        userAvatarMenu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init");
    self._userAvatarButton = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(5.0, 4.0, TNUserAvatarSize.width - 5, TNUserAvatarSize.height - 5)),
    objj_msgSend(self._userAvatarButton, "setBordered:", NO);
    objj_msgSend(self._userAvatarButton, "setBorderedWithHexColor:", "#a8a8a8");
    objj_msgSend(self._userAvatarButton, "setBackgroundColor:", objj_msgSend(CPColor, "blackColor"));
    objj_msgSend(self._userAvatarButton, "setTarget:", self);
    objj_msgSend(self._userAvatarButton, "setAction:", sel_getUid("toolbarItemAvatarClick:"));
    objj_msgSend(self._userAvatarButton, "setMenu:", userAvatarMenu);
    objj_msgSend(self._userAvatarButton, "setValue:forThemeAttribute:", CPScaleProportionally, "image-scaling");
    objj_msgSend(self._userAvatarButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "user-unknown.png"), TNUserAvatarSize));
    objj_msgSend(objj_msgSend(self._mainToolbar, "customSubViews"), "addObject:", self._userAvatarButton);
    objj_msgSend(self._mainToolbar, "reloadToolbarItems");
}
,["void"]), new objj_method(sel_getUid("makeButtonBar"), function $AppController__makeButtonBar(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "mainBundle"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    CPLog.trace("Initializing the roster button bar");
    objj_msgSend(self.splitViewMain, "setButtonBar:forDividerAtIndex:", self.buttonBarLeft, 0);
    var bezelColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNButtonBar/buttonBarBackground.png"), CGSizeMake(1, 27))),
        leftBezel = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNButtonBar/buttonBarLeftBezel.png"), CGSizeMake(1, 26)),
        centerBezel = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNButtonBar/buttonBarCenterBezel.png"), CGSizeMake(1, 26)),
        rightBezel = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNButtonBar/buttonBarRightBezel.png"), CGSizeMake(1, 26)),
        buttonBezel = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", [leftBezel, centerBezel, rightBezel], NO)),
        leftBezelHighlighted = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNButtonBar/buttonBarLeftBezelHighlighted.png"), CGSizeMake(1, 26)),
        centerBezelHighlighted = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNButtonBar/buttonBarCenterBezelHighlighted.png"), CGSizeMake(1, 26)),
        rightBezelHighlighted = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNButtonBar/buttonBarRightBezelHighlighted.png"), CGSizeMake(1, 26)),
        buttonBezelHighlighted = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", [leftBezelHighlighted, centerBezelHighlighted, rightBezelHighlighted], NO)),
        plusMenu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init"),
        minusButton = objj_msgSend(CPButtonBar, "minusButton");
    self._hideButton = objj_msgSend(CPButtonBar, "minusButton");
    self._hideButtonImageEnable = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsButtonBar/show.png"), CGSizeMake(20, 20));
    self._hideButtonImageDisable = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsButtonBar/hide.png"), CGSizeMake(20, 20));
    objj_msgSend(self.buttonBarLeft, "setValue:forThemeAttribute:", bezelColor, "bezel-color");
    objj_msgSend(self.buttonBarLeft, "setValue:forThemeAttribute:", buttonBezel, "button-bezel-color");
    objj_msgSend(self.buttonBarLeft, "setValue:forThemeAttribute:inState:", buttonBezelHighlighted, "button-bezel-color", CPThemeStateHighlighted);
    self._plusButton = objj_msgSend(objj_msgSend(TNButtonBarPopUpButton, "alloc"), "initWithFrame:", CGRectMake(0, 0, 35, 25)),
    objj_msgSend(self._plusButton, "setTarget:", self);
    objj_msgSend(self._plusButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsButtonBar/plus.png"), CGSizeMake(20, 20)));
    objj_msgSend(objj_msgSend(plusMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Add a contact", "Add a contact"), sel_getUid("addContact:"), "C"), "setTarget:", self);
    objj_msgSend(objj_msgSend(plusMenu, "addItemWithTitle:action:keyEquivalent:", CPLocalizedString("Add a group", "Add a group"), sel_getUid("addGroup:"), "D"), "setTarget:", self);
    objj_msgSend(self._plusButton, "setMenu:", plusMenu);
    objj_msgSend(self._plusButton, "setToolTip:", CPLocalizedString("Add a new contact or group", "Add a new contact or group"));
    objj_msgSend(minusButton, "setTarget:", self);
    objj_msgSend(minusButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsButtonBar/minus.png"), CGSizeMake(20, 20)));
    objj_msgSend(minusButton, "setAction:", sel_getUid("deleteEntities:"));
    objj_msgSend(minusButton, "setToolTip:", CPLocalizedString("Delete selected contacts or groups", "Delete selected contacts or groups"));
    objj_msgSend(self._hideButton, "setTarget:", self);
    objj_msgSend(self._hideButton, "setImage:", objj_msgSend(defaults, "boolForKey:", "TNArchipelPropertyControllerEnabled") ? self._hideButtonImageDisable : self._hideButtonImageEnable);
    objj_msgSend(self._hideButton, "setAction:", sel_getUid("toggleShowPropertiesView:"));
    objj_msgSend(self._hideButton, "setToolTip:", CPLocalizedString("Show or hide properties view", "Show or hide properties view"));
    var buttons = objj_msgSend(CPArray, "array");
    if (objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelDisplayXMPPManageContactsButton") == 1)
    {
        objj_msgSend(buttons, "addObject:", self._plusButton)
        objj_msgSend(buttons, "addObject:", minusButton)
    }
    objj_msgSend(buttons, "addObject:", self._hideButton);
    objj_msgSend(self.buttonBarLeft, "setButtons:", buttons);
}
,["void"]), new objj_method(sel_getUid("didConnectionStart:"), function $AppController__didConnectionStart_(self, _cmd, aNotification)
{
}
,["void","CPNotification"]), new objj_method(sel_getUid("loginStrophe:"), function $AppController__loginStrophe_(self, _cmd, aNotification)
{
    objj_msgSend(objj_msgSend(TNPushCenter, "defaultCenter"), "setConnection:", objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"));
    self._pubSubController = objj_msgSend(TNPubSubController, "pubSubControllerWithConnection:", objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"));
    objj_msgSend(self.preferencesController, "initXMPPStorage");
    objj_msgSend(self.preferencesController, "recoverFromXMPPServer");
}
,["void","CPNotification"]), new objj_method(sel_getUid("didRetrieveConfiguration:"), function $AppController__didRetrieveConfiguration_(self, _cmd, aNotification)
{
    objj_msgSend(CPMenu, "setMenuBarVisible:", YES);
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "getRoster");
    objj_msgSend(self.connectionController, "hideWindow:", nil);
    objj_msgSend(self.theWindow, "makeKeyAndOrderFront:", nil);
    objj_msgSend(self, "updateOverallScrollersStyle");
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "setDelegate:", self.contactsController);
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "setFilterField:", self.filterField);
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "setHideOfflineContacts:", objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "boolForKey:", "TNHideOfflineContacts"));
    if (objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "boolForKey:", "TNArchipelMonitorStanza"))
        objj_msgSend(self, "monitorXMPP:", YES);
    objj_msgSend(self.tagsController, "setPubSubController:", self._pubSubController);
    objj_msgSend(self.propertiesController, "setPubSubController:", self._pubSubController);
    objj_msgSend(self.contactsController, "setPubSubController:", self._pubSubController);
    objj_msgSend(self._rosterOutlineView, "setDataSource:", objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"));
    objj_msgSend(self._rosterOutlineView, "recoverExpandedWithBaseKey:itemKeyPath:", TNArchipelRememberOpenedGroup, "name");
    objj_msgSend(self._rosterOutlineView, "deselectAll");
    objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "watchPubSubs");
    if (self._tagsVisible)
        objj_msgSend(self.splitViewTagsContents, "setPosition:ofDividerAtIndex:", TNArchipelTagViewHeight, 0);
    else
        objj_msgSend(self.splitViewTagsContents, "setPosition:ofDividerAtIndex:", 0.0, 0);
    objj_msgSend(self.labelCurrentUser, "setStringValue:", CPLocalizedString("Connected as ", "Connected as ") + objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"), "bare"));
    if (!objj_msgSend(self.moduleController, "isModuleLoadingStarted"))
    {
        CPLog.trace("Starting loading all modules");
        objj_msgSend(self.moduleController, "load");
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("XMPPDisconnecting:"), function $AppController__XMPPDisconnecting_(self, _cmd, aNotification)
{
    objj_msgSend(objj_msgSend(TNPushCenter, "defaultCenter"), "flush");
    CPLog.info("disconnecting...");
}
,["void","CPNotification"]), new objj_method(sel_getUid("XMPPDisconnected:"), function $AppController__XMPPDisconnected_(self, _cmd, aNotification)
{
    CPLog.info("Successfuly disconnected.");
    objj_msgSend(self.theWindow, "close");
    objj_msgSend(self.connectionController, "showWindow:", nil);
    objj_msgSend(self.labelCurrentUser, "setStringValue:", "");
    objj_msgSend(CPMenu, "setMenuBarVisible:", NO);
}
,["void","CPNotification"]), new objj_method(sel_getUid("didRetrieveRoster:"), function $AppController__didRetrieveRoster_(self, _cmd, aNotification)
{
    var servers = objj_msgSend(CPArray, "array"),
        roster = objj_msgSend(aNotification, "object");
    if (objj_msgSend(objj_msgSend(roster, "content"), "count") == 0)
    {
        objj_msgSend(self, "displayFirstConnectionInterface");
    }
    else
    {
        for (var i = 0; i < objj_msgSend(objj_msgSend(roster, "content"), "count"); i++)
        {
            if (objj_msgSend(objj_msgSend(objj_msgSend(roster, "content"), "objectAtIndex:", i), "isKindOfClass:", TNStropheContact))
            {
                var contact = objj_msgSend(objj_msgSend(roster, "content"), "objectAtIndex:", i);
                if (!objj_msgSend(self._pubSubController, "containsServerJID:", objj_msgSend(TNStropheJID, "stropheJIDWithString:", "pubsub." + objj_msgSend(objj_msgSend(contact, "JID"), "domain"))))
                    objj_msgSend(objj_msgSend(self._pubSubController, "servers"), "addObject:", objj_msgSend(TNStropheJID, "stropheJIDWithString:", "pubsub." + objj_msgSend(objj_msgSend(contact, "JID"), "domain")));
            }
        }
    }
    objj_msgSend(self._pubSubController, "retrieveSubscriptions");
}
,["void","CPNotification"]), new objj_method(sel_getUid("onApplicationTerminate:"), function $AppController__onApplicationTerminate_(self, _cmd, aNotification)
{
    objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "disconnect");
}
,["void","CPNotification"]), new objj_method(sel_getUid("didReceiveUserMessage:"), function $AppController__didReceiveUserMessage_(self, _cmd, aNotification)
{
    objj_msgSend(self._rosterOutlineView, "reloadData");
}
,["void","CPNotification"]), new objj_method(sel_getUid("monitorXMPP:"), function $AppController__monitorXMPP_(self, _cmd, shouldMonitor)
{
    if (shouldMonitor)
    {
        objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"), "rawInputRegisterSelector:ofObject:", sel_getUid("stropheConnectionRawIn:"), self);
        objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"), "rawOutputRegisterSelector:ofObject:", sel_getUid("stropheConnectionRawOut:"), self);
        objj_msgSend(self.ledIn, "setHidden:", NO);
        objj_msgSend(self.ledOut, "setHidden:", NO);
    }
    else
    {
        objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"), "removeRawInputSelector");
        objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"), "removeRawOutputSelector");
        objj_msgSend(self.ledIn, "setHidden:", YES);
        objj_msgSend(self.ledOut, "setHidden:", YES);
        if (self._ledInTimer)
            objj_msgSend(self._ledInTimer, "invalidate");
        if (self._ledOutTimer)
            objj_msgSend(self._ledInTimer, "invalidate");
    }
}
,["void","BOOL"]), new objj_method(sel_getUid("displayFirstConnectionInterface"), function $AppController__displayFirstConnectionInterface(self, _cmd)
{
    objj_msgSend(self.hintController, "showWindow:", nil);
}
,["void"]), new objj_method(sel_getUid("updateOverallScrollersStyle"), function $AppController__updateOverallScrollersStyle(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    if (objj_msgSend(objj_msgSend(defaults, "objectForKey:", "TNArchipelScrollersStyle"), "lowercaseString") == "legacy")
        objj_msgSend(CPScrollView, "setGlobalScrollerStyle:", CPScrollerStyleLegacy);
    else
        objj_msgSend(CPScrollView, "setGlobalScrollerStyle:", CPScrollerStyleOverlay);
}
,["void"]), new objj_method(sel_getUid("deleteEntities:"), function $AppController__deleteEntities_(self, _cmd, sender)
{
    if (objj_msgSend(self._rosterOutlineView, "numberOfSelectedRows") == 0)
        return;
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPLocalizedString("Delete items", "Delete items"), CPLocalizedString("Are you sure you want to delete selected items?", "Are you sure you want to delete selected items?"), self, [[CPLocalizedString("Delete", "Delete"), sel_getUid("_performDeleteEntity")], [CPLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "setHelpTarget:action:", self, sel_getUid("showHelpForDelete:"));
    objj_msgSend(alert, "runModal");
}
,["id","id"]), new objj_method(sel_getUid("_performDeleteEntity"), function $AppController___performDeleteEntity(self, _cmd)
{
    var indexes = objj_msgSend(self._rosterOutlineView, "selectedRowIndexes"),
        contactToRemove = objj_msgSend(CPArray, "array"),
        groupsToRemove = objj_msgSend(CPArray, "array");
    while (objj_msgSend(indexes, "count") > 0)
    {
        var item = objj_msgSend(self._rosterOutlineView, "itemAtRow:", objj_msgSend(indexes, "firstIndex"));
        switch (objj_msgSend(item, "class"))
        {
            case TNStropheContact:
                objj_msgSend(contactToRemove, "addObject:", item);
                break;
            case TNStropheGroup:
                objj_msgSend(groupsToRemove, "addObject:", item);
                break;
        }
        objj_msgSend(indexes, "removeIndex:", objj_msgSend(indexes, "firstIndex"));
    }
    for (var i = 0; i < objj_msgSend(contactToRemove, "count"); i++)
        objj_msgSend(self.contactsController, "deleteContact:", objj_msgSend(contactToRemove, "objectAtIndex:", i));
    for (var i = 0; i < objj_msgSend(groupsToRemove, "count"); i++)
        objj_msgSend(self.groupsController, "deleteGroup:", objj_msgSend(groupsToRemove, "objectAtIndex:", i));
}
,["void"]), new objj_method(sel_getUid("toggleShowPropertiesView:"), function $AppController__toggleShowPropertiesView_(self, _cmd, aSender)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    if (objj_msgSend(self.propertiesController, "isEnabled"))
    {
        objj_msgSend(self.propertiesController, "setEnabled:", NO);
        objj_msgSend(self._hideButton, "setImage:", self._hideButtonImageEnable);
        objj_msgSend(defaults, "setBool:forKey:", NO, "TNArchipelPropertyControllerEnabled");
    }
    else
    {
        objj_msgSend(self.propertiesController, "setEnabled:", YES);
        objj_msgSend(self._hideButton, "setImage:", self._hideButtonImageDisable);
        objj_msgSend(defaults, "setBool:forKey:", YES, "TNArchipelPropertyControllerEnabled");
    }
    objj_msgSend(self.propertiesController, "reload");
}
,["id","id"]), new objj_method(sel_getUid("logout:"), function $AppController__logout_(self, _cmd, aSender)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    CPLog.info("starting to disconnect");
    objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "disconnect");
}
,["id","id"]), new objj_method(sel_getUid("addContact:"), function $AppController__addContact_(self, _cmd, aSender)
{
    objj_msgSend(self.contactsController, "showWindow:", self._plusButton);
}
,["id","id"]), new objj_method(sel_getUid("askSubscription:"), function $AppController__askSubscription_(self, _cmd, aSender)
{
    if (objj_msgSend(self._rosterOutlineView, "numberOfSelectedRows") == 0)
        return;
    var indexes = objj_msgSend(self._rosterOutlineView, "selectedRowIndexes");
    while (objj_msgSend(indexes, "count") > 0)
    {
        var contact = objj_msgSend(self._rosterOutlineView, "itemAtRow:", objj_msgSend(indexes, "firstIndex"));
        if (objj_msgSend(contact, "isKindOfClass:", TNStropheContact))
            objj_msgSend(self.contactsController, "askSubscription:", objj_msgSend(contact, "JID"));
        objj_msgSend(indexes, "removeIndex:", objj_msgSend(indexes, "firstIndex"));
    }
}
,["id","id"]), new objj_method(sel_getUid("removeSubscription:"), function $AppController__removeSubscription_(self, _cmd, aSender)
{
    if (objj_msgSend(self._rosterOutlineView, "numberOfSelectedRows") == 0)
        return;
    var indexes = objj_msgSend(self._rosterOutlineView, "selectedRowIndexes");
    while (objj_msgSend(indexes, "count") > 0)
    {
        var contact = objj_msgSend(self._rosterOutlineView, "itemAtRow:", objj_msgSend(indexes, "firstIndex"));
        if (objj_msgSend(contact, "isKindOfClass:", TNStropheContact))
            objj_msgSend(self.contactsController, "removeSubscription:", objj_msgSend(contact, "JID"));
        objj_msgSend(indexes, "removeIndex:", objj_msgSend(indexes, "firstIndex"));
    }
}
,["id","id"]), new objj_method(sel_getUid("addGroup:"), function $AppController__addGroup_(self, _cmd, sender)
{
    objj_msgSend(self.groupsController, "showWindow:", self._plusButton);
}
,["id","id"]), new objj_method(sel_getUid("selectNextEntity:"), function $AppController__selectNextEntity_(self, _cmd, sender)
{
    var selectedIndex = objj_msgSend(objj_msgSend(self._rosterOutlineView, "selectedRowIndexes"), "firstIndex"),
        nextIndex = (selectedIndex + 1) > objj_msgSend(self._rosterOutlineView, "numberOfRows") - 1 ? 0 : (selectedIndex + 1);
    objj_msgSend(self._rosterOutlineView, "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", nextIndex), NO);
}
,["id","id"]), new objj_method(sel_getUid("selectPreviousEntity:"), function $AppController__selectPreviousEntity_(self, _cmd, sender)
{
    var selectedIndex = objj_msgSend(objj_msgSend(self._rosterOutlineView, "selectedRowIndexes"), "firstIndex"),
        nextIndex = (selectedIndex - 1) < 0 ? objj_msgSend(self._rosterOutlineView, "numberOfRows") -1 : (selectedIndex - 1);
    objj_msgSend(self._rosterOutlineView, "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", nextIndex), NO);
}
,["id","id"]), new objj_method(sel_getUid("selectNextModule:"), function $AppController__selectNextModule_(self, _cmd, aSender)
{
    objj_msgSend(self._rosterOutlineView, "moveRight");
}
,["id","id"]), new objj_method(sel_getUid("selectPreviousModule:"), function $AppController__selectPreviousModule_(self, _cmd, aSender)
{
    objj_msgSend(self._rosterOutlineView, "moveLeft");
}
,["id","id"]), new objj_method(sel_getUid("focusFilter:"), function $AppController__focusFilter_(self, _cmd, sender)
{
    objj_msgSend(self.theWindow, "makeFirstResponder:", self.filterField);
}
,["id","id"]), new objj_method(sel_getUid("expandGroup:"), function $AppController__expandGroup_(self, _cmd, sender)
{
    var index = objj_msgSend(self._rosterOutlineView, "selectedRowIndexes");
    if (objj_msgSend(index, "firstIndex") == -1)
        return;
    var item = objj_msgSend(self._rosterOutlineView, "itemAtRow:", objj_msgSend(index, "firstIndex"));
    if (objj_msgSend(item, "isKindOfClass:", TNStropheGroup))
        objj_msgSend(self._rosterOutlineView, "expandItem:", item);
}
,["id","id"]), new objj_method(sel_getUid("collapseGroup:"), function $AppController__collapseGroup_(self, _cmd, sender)
{
    var index = objj_msgSend(self._rosterOutlineView, "selectedRowIndexes");
    if (objj_msgSend(index, "firstIndex") == -1)
        return;
    var item = objj_msgSend(self._rosterOutlineView, "itemAtRow:", objj_msgSend(index, "firstIndex"));
    objj_msgSend(self._rosterOutlineView, "collapseItem:", item);
}
,["id","id"]), new objj_method(sel_getUid("expandAllGroups:"), function $AppController__expandAllGroups_(self, _cmd, sender)
{
    objj_msgSend(self._rosterOutlineView, "expandAll");
}
,["id","id"]), new objj_method(sel_getUid("collapseAllGroups:"), function $AppController__collapseAllGroups_(self, _cmd, sender)
{
    objj_msgSend(self._rosterOutlineView, "collapseAll");
}
,["id","id"]), new objj_method(sel_getUid("openWebsite:"), function $AppController__openWebsite_(self, _cmd, sender)
{
    window.open("http://archipelproject.org");
}
,["id","id"]), new objj_method(sel_getUid("openWiki:"), function $AppController__openWiki_(self, _cmd, sender)
{
    window.open("https://github.com/archipelproject/archipel/wiki");
}
,["id","id"]), new objj_method(sel_getUid("openReleaseNotes:"), function $AppController__openReleaseNotes_(self, _cmd, sender)
{
    window.open("https://github.com/archipelproject/Archipel/commits/master");
}
,["id","id"]), new objj_method(sel_getUid("openDonationPage:"), function $AppController__openDonationPage_(self, _cmd, sender)
{
    window.open("http://archipelproject.org/donate");
}
,["id","id"]), new objj_method(sel_getUid("openBugTracker:"), function $AppController__openBugTracker_(self, _cmd, sender)
{
    window.open("https://github.com/archipelproject/archipel/issues/");
}
,["id","id"]), new objj_method(sel_getUid("switchMainMenu:"), function $AppController__switchMainMenu_(self, _cmd, sender)
{
    if (objj_msgSend(CPMenu, "menuBarVisible"))
        objj_msgSend(CPMenu, "setMenuBarVisible:", NO);
    else
        objj_msgSend(CPMenu, "setMenuBarVisible:", YES);
}
,["id","id"]), new objj_method(sel_getUid("showAboutWindow:"), function $AppController__showAboutWindow_(self, _cmd, sender)
{
    objj_msgSend(self.windowAboutArchipel, "center");
    objj_msgSend(self.windowAboutArchipel, "makeKeyAndOrderFront:", sender);
}
,["id","id"]), new objj_method(sel_getUid("showPreferencesWindow:"), function $AppController__showPreferencesWindow_(self, _cmd, sender)
{
    objj_msgSend(self.preferencesController, "showWindow:", sender);
}
,["id","id"]), new objj_method(sel_getUid("showNotificationWindow:"), function $AppController__showNotificationWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.notificationHistoryController, "showWindow:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("showXMPPAccountWindow:"), function $AppController__showXMPPAccountWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.XMPPAccountController, "showWindow:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("toolbarItemPresenceStatusClick:"), function $AppController__toolbarItemPresenceStatusClick_(self, _cmd, sender)
{
    var XMPPShow,
        statusLabel = objj_msgSend(sender, "title"),
        growl = objj_msgSend(TNGrowlCenter, "defaultCenter");
    switch (statusLabel)
    {
        case TNArchipelStatusAvailableLabel:
            XMPPShow = TNStropheContactStatusOnline
            break;
        case TNArchipelStatusAwayLabel:
            XMPPShow = TNStropheContactStatusAway
            break;
        case TNArchipelStatusBusyLabel:
            XMPPShow = TNStropheContactStatusBusy
            break;
        case TNArchipelStatusDNDLabel:
            XMPPShow = TNStropheContactStatusDND
            break;
    }
    objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "setPresenceShow:status:", XMPPShow, nil);
    objj_msgSend(growl, "pushNotificationWithTitle:message:", CPLocalizedString("Status", "Status"), CPLocalizedString("Your status is now ", "Your status is now ") + statusLabel);
}
,["id","id"]), new objj_method(sel_getUid("toolbarItemLogoutClick:"), function $AppController__toolbarItemLogoutClick_(self, _cmd, sender)
{
    objj_msgSend(self, "logout:", sender);
}
,["id","id"]), new objj_method(sel_getUid("toolbarItemTagsClick:"), function $AppController__toolbarItemTagsClick_(self, _cmd, sender)
{
    self._tagsVisible = !self._tagsVisible;
    objj_msgSend(self.splitViewTagsContents, "setPosition:ofDividerAtIndex:", (self._tagsVisible ? TNArchipelTagViewHeight : 0), 0);
    objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "setBool:forKey:", self._tagsVisible, "TNArchipelTagsVisible");
}
,["id","id"]), new objj_method(sel_getUid("toolbarItemAvatarClick:"), function $AppController__toolbarItemAvatarClick_(self, _cmd, aSender)
{
    var wp = CGPointMake(16, 12);
    wp = objj_msgSend(aSender, "convertPoint:toView:", wp, nil);
    var fake = objj_msgSend(CPEvent, "mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:", CPRightMouseDown, wp, 0, nil, objj_msgSend(self.theWindow, "windowNumber"), nil, 0, 1, 1);
    objj_msgSend(CPMenu, "popUpContextMenu:withEvent:forView:", objj_msgSend(aSender, "menu"), fake, aSender);
}
,["id","id"]), new objj_method(sel_getUid("didRetreiveUserVCard:"), function $AppController__didRetreiveUserVCard_(self, _cmd, aNotification)
{
    var vCard = objj_msgSend(self.connectionController, "userVCard");
    if (objj_msgSend(vCard, "photo"))
    {
        var currentAvatar = objj_msgSend(vCard, "photo");
        objj_msgSend(currentAvatar, "setDelegate:", self);
        objj_msgSend(currentAvatar, "setSize:", TNUserAvatarSize);
        objj_msgSend(self._userAvatarButton, "setImage:", currentAvatar);
        objj_msgSend(self.userAvatarController, "setCurrentAvatar:", currentAvatar);
    }
    objj_msgSend(self.userAvatarController, "setButtonAvatar:", self._userAvatarButton);
    objj_msgSend(self.userAvatarController, "setMenuAvatarSelection:", objj_msgSend(self._userAvatarButton, "menu"));
    objj_msgSend(self.userAvatarController, "loadAvatarMetaInfos");
}
,["void","CPNotification"]), new objj_method(sel_getUid("windowWillClose:"), function $AppController__windowWillClose_(self, _cmd, aWindow)
{
    if (aWindow === self._helpWindow)
        self._helpWindow = nil;
}
,["void","CPWindow"]), new objj_method(sel_getUid("outlineViewItemDidExpand:"), function $AppController__outlineViewItemDidExpand_(self, _cmd, aNotification)
{
    var item = objj_msgSend(objj_msgSend(aNotification, "userInfo"), "valueForKey:", "CPObject"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        key = TNArchipelRememberOpenedGroup + objj_msgSend(item, "name");
    objj_msgSend(self._rosterOutlineView, "getVCardsForVisibleEntitiesIfNeeded");
    objj_msgSend(objj_msgSend(defaults, "objectForKey:", "TNOutlineViewsExpandedGroups"), "setObject:forKey:", "expanded", key);
}
,["void","CPNotification"]), new objj_method(sel_getUid("outlineViewItemDidCollapse:"), function $AppController__outlineViewItemDidCollapse_(self, _cmd, aNotification)
{
    var item = objj_msgSend(objj_msgSend(aNotification, "userInfo"), "valueForKey:", "CPObject"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        key = TNArchipelRememberOpenedGroup + objj_msgSend(item, "name");
    objj_msgSend(objj_msgSend(defaults, "objectForKey:", "TNOutlineViewsExpandedGroups"), "setObject:forKey:", "collapsed", key);
}
,["void","CPNotification"]), new objj_method(sel_getUid("outlineView:viewForTableColumn:item:"), function $AppController__outlineView_viewForTableColumn_item_(self, _cmd, anOutlineView, aColumn, anItem)
{
    var key = objj_msgSend(anItem, "className"),
        view = objj_msgSend(self._rosterOutlineView, "makeViewWithIdentifier:owner:", key, self);
    if (!view)
    {
        view = (key == TNStropheGroup) ? objj_msgSend(self.rosterDataViewForGroups, "duplicate") : objj_msgSend(self.rosterDataViewForContacts, "duplicate");
        objj_msgSend(view, "setIdentifier:", key);
        objj_msgSend(view, "setAutoresizingMask:", CPViewNotSizable);
    }
    return view;
}
,["void","CPOutlineView","CPTableColumn","id"]), new objj_method(sel_getUid("outlineView:heightOfRowByItem:"), function $AppController__outlineView_heightOfRowByItem_(self, _cmd, outlineView, anItem)
{
    switch (objj_msgSend(anItem, "class"))
    {
        case TNStropheGroup:
            return objj_msgSend(self.rosterDataViewForGroups, "frameSize").height;
        case TNStropheContact:
            return objj_msgSend(self.rosterDataViewForContacts, "frameSize").height;
    }
}
,["int","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:shouldSelectItem:"), function $AppController__outlineView_shouldSelectItem_(self, _cmd, anOutlineView, anItem)
{
    var tabsModules = objj_msgSend(self.moduleController, "tabModules");
    for (var i = 0; i < objj_msgSend(tabsModules, "count"); i++)
    {
        var module = objj_msgSend(tabsModules, "objectAtIndex:", i);
        if (module && !objj_msgSend(module, "shouldHideAndSelectItem:ofObject:", anItem, anOutlineView))
            return NO;
    }
    return YES;
}
,["BOOL","CPOutlineView","id"]), new objj_method(sel_getUid("outlineViewSelectionDidChange:"), function $AppController__outlineViewSelectionDidChange_(self, _cmd, notification)
{
    var loadDelay = objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "floatForKey:", "TNArchipelModuleLoadingDelay"),
        item;
    if (objj_msgSend(self._rosterOutlineView, "numberOfSelectedRows") > 1)
    {
        if (self._stropheGroupSelection)
            objj_msgSend(self._stropheGroupSelection, "flush");
        var selectedRowIndexes = objj_msgSend(self._rosterOutlineView, "selectedRowIndexes");
        self._stropheGroupSelection = objj_msgSend(TNStropheGroup, "stropheGroupWithName:", CPLocalizedString("Current Selection", "Current Selection"));
        while (objj_msgSend(selectedRowIndexes, "count") > 0)
        {
            var itemAtRow = objj_msgSend(self._rosterOutlineView, "itemAtRow:", objj_msgSend(selectedRowIndexes, "firstIndex"));
            if (objj_msgSend(itemAtRow, "isKindOfClass:", TNStropheContact))
            {
                if (!objj_msgSend(objj_msgSend(self._stropheGroupSelection, "contacts"), "containsObject:", itemAtRow))
                    objj_msgSend(objj_msgSend(self._stropheGroupSelection, "contacts"), "addObject:", itemAtRow);
            }
            else
            {
                var contacts = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "getAllContactsTreeFromGroup:", itemAtRow);
                for (var i = 0; i < objj_msgSend(contacts, "count"); i++)
                    if (!objj_msgSend(objj_msgSend(self._stropheGroupSelection, "contacts"), "containsObject:", objj_msgSend(contacts, "objectAtIndex:", i)))
                        objj_msgSend(objj_msgSend(self._stropheGroupSelection, "contacts"), "addObject:", objj_msgSend(contacts, "objectAtIndex:", i));
            }
            objj_msgSend(selectedRowIndexes, "removeIndex:", objj_msgSend(selectedRowIndexes, "firstIndex"));
        }
        item = self._stropheGroupSelection;
    }
    else
    {
        item = objj_msgSend(self._rosterOutlineView, "itemAtRow:", objj_msgSend(self._rosterOutlineView, "selectedRow"));
    }
    if (self._moduleLoadingDelay)
    {
        objj_msgSend(self._moduleLoadingDelay, "invalidate");
        self._moduleLoadingDelay = null;
    }
    objj_msgSend(self.propertiesController, "setEntity:", item);
    objj_msgSend(self.propertiesController, "reload");
    if (loadDelay == 0)
        objj_msgSend(self, "performModuleChange:", objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", item, "userInfo"));
    else
       self._moduleLoadingDelay = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", loadDelay, self, sel_getUid("performModuleChange:"), item, NO);
}
,["void","CPNotification"]), new objj_method(sel_getUid("performModuleChange:"), function $AppController__performModuleChange_(self, _cmd, aTimer)
{
    var item = objj_msgSend(aTimer, "valueForKey:", "userInfo");
    switch (objj_msgSend(item, "class"))
    {
        case TNStropheGroup:
            objj_msgSend(self.moduleController, "setEntity:ofType:", item, "group");
            objj_msgSend(self.moduleController, "setCurrentEntityForToolbarModules:", nil);
            break;
        case TNStropheContact:
            var vCard = objj_msgSend(item, "vCard"),
                entityType = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", vCard);
            objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "cachePermissionsForEntityIfNeeded:", item);
            objj_msgSend(self.moduleController, "setEntity:ofType:", item, entityType);
            objj_msgSend(self.moduleController, "setCurrentEntityForToolbarModules:", item);
            break;
        default:
            objj_msgSend(self.moduleController, "setEntity:ofType:", nil, TNArchipelEntityTypeGeneral);
            objj_msgSend(self.moduleController, "setCurrentEntityForToolbarModules:", nil);
            objj_msgSend(self.propertiesController, "hideView");
    }
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNArchipelNotificationRosterSelectionChanged, item);
}
,["void","CPTimer"]), new objj_method(sel_getUid("outlineView:menuForTableColumn:item:"), function $AppController__outlineView_menuForTableColumn_item_(self, _cmd, anOutlineView, aTableColumn, anItem)
{
    if (anOutlineView != self._rosterOutlineView)
        return;
    if (objj_msgSend(anOutlineView, "numberOfSelectedRows") != 1)
        return;
    var itemRow = objj_msgSend(self._rosterOutlineView, "rowForItem:", anItem);
    if (objj_msgSend(self._rosterOutlineView, "selectedRow") != itemRow)
        objj_msgSend(self._rosterOutlineView, "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", itemRow), NO);
    if (objj_msgSend(anItem, "isKindOfClass:", TNStropheContact))
        return self._rosterMenuForContacts;
    else if (objj_msgSend(anItem, "isKindOfClass:", TNStropheGroup))
        return self._rosterMenuForGroups;
}
,["CPMenu","CPOutlineView","CPTableColumn","int"]), new objj_method(sel_getUid("splitView:constrainMaxCoordinate:ofSubviewAt:"), function $AppController__splitView_constrainMaxCoordinate_ofSubviewAt_(self, _cmd, aSplitView, position, index)
{
    if ((aSplitView === self.splitViewTagsContents) && (index == 0))
        return (self._tagsVisible) ? 33 : 0;
    return position;
}
,["float","CPSlipView","int","int"]), new objj_method(sel_getUid("splitView:constrainMinCoordinate:ofSubviewAt:"), function $AppController__splitView_constrainMinCoordinate_ofSubviewAt_(self, _cmd, aSplitView, position, index)
{
    if ((aSplitView === self.splitViewTagsContents) && (index == 0))
        return (self._tagsVisible) ? 33 : 0;
    if ((aSplitView === self.splitViewMain) && (index == 0))
        return 200;
    return 0;
}
,["float","CPSlipView","int","int"]), new objj_method(sel_getUid("moduleLoader:loadedBundle:progress:"), function $AppController__moduleLoader_loadedBundle_progress_(self, _cmd, aLoader, aBundle, percent)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        moduleLabel = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "PluginDisplayName");
    if (objj_msgSend(moduleLabel, "isKindOfClass:", CPDictionary) && objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "CPBundleLocale"))
        moduleLabel = objj_msgSend(moduleLabel, "objectForKey:", objj_msgSend(defaults, "objectForKey:", "CPBundleLocale"));
    if (!moduleLabel)
        moduleLabel = objj_msgSend(objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "PluginDisplayName"), "objectForKey:", "en");
    objj_msgSend(self.progressIndicatorModulesLoading, "setDoubleValue:", percent);
    objj_msgSend(objj_msgSend(self.viewLoading, "viewWithTag:", 1), "setStringValue:", moduleLabel);
}
,["void","TNModuleController","CPBundle","float"]), new objj_method(sel_getUid("moduleLoaderLoadingComplete:"), function $AppController__moduleLoaderLoadingComplete_(self, _cmd, aLoader)
{
    CPLog.info("All modules have been loaded");
    objj_msgSend(self._mainToolbar, "reloadToolbarItems");
    objj_msgSend(self._rosterOutlineView, "setEnabled:", YES);
    objj_msgSend(self.viewLoading, "removeFromSuperview");
    objj_msgSend(self._moduleTabView, "setFrame:", objj_msgSend(self.viewLoading, "frame"));
    objj_msgSend(self.rightView, "addSubview:", self._moduleTabView);
    objj_msgSend(self.updateController, "check");
    objj_msgSend(self, "performModuleChange:", nil);
    objj_msgSend(objj_msgSend(objj_msgSend(CPApp, "mainMenu"), "itemWithTitle:", CPLocalizedString("Modules", "Modules")), "setEnabled:", YES);
}
,["void","TNModuleController"]), new objj_method(sel_getUid("stropheConnectionRawIn:"), function $AppController__stropheConnectionRawIn_(self, _cmd, aStanza)
{
    objj_msgSend(self.ledIn, "setImage:", self._imageLedInData);
    if (self._ledInTimer)
        objj_msgSend(self._ledInTimer, "invalidate");
    self._ledInTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", 0.5, self, sel_getUid("timeOutDataLed:"), self.ledIn, NO);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("stropheConnectionRawOut:"), function $AppController__stropheConnectionRawOut_(self, _cmd, aStanza)
{
    objj_msgSend(self.ledOut, "setImage:", self._imageLedOutData);
    if (self._ledOutTimer)
        objj_msgSend(self._ledOutTimer, "invalidate");
    self._ledOutTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", 0.5, self, sel_getUid("timeOutDataLed:"), self.ledOut, NO);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("timeOutDataLed:"), function $AppController__timeOutDataLed_(self, _cmd, aTimer)
{
    objj_msgSend(objj_msgSend(aTimer, "userInfo"), "setImage:", self._imageLedNoData);
}
,["void","CPTimer"]), new objj_method(sel_getUid("growlNotification:clickedWithUser:"), function $AppController__growlNotification_clickedWithUser_(self, _cmd, sender, aContact)
{
    var row = objj_msgSend(self._rosterOutlineView, "rowForItem:", aContact),
        indexes = objj_msgSend(CPIndexSet, "indexSetWithIndex:", row);
    objj_msgSend(self._rosterOutlineView, "selectRowIndexes:byExtendingSelection:", indexes, NO);
}
,["void","id","TNStropheContact"])]);
}p;6;main.jt;1539;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPSound.ji;33;Categories/CPBundle+Localizable.ji;15;AppController.jt;1413;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPSound.j", NO);
objj_executeFile("Categories/CPBundle+Localizable.j", YES);
objj_executeFile("AppController.j", YES);
gameOver = function(code)
{
    var container = document.getElementById("container"),
        sound = objj_msgSend(objj_msgSend(CPSound, "alloc"), "initWithContentsOfURL:byReference:", objj_msgSend(CPURL, "URLWithString:", "Resources/incompatible.wav"), NO);
    container.style.color = "white";
    container.style.width = "100%";
    container.style.left = "0px";
    container.style.top = "200px";
    container.style.fontSize = "11px";
    container.style.textAlign = "center";
    container.innerHTML = "<h2>Game Over</h2><br/>You're browser seems uncompatible with feature code <code>" +
        code + "</code><br/>You should use Chromium or Safari or any decent browser actually";
    objj_msgSend(sound, "play");
}
main = function(args, namedArgs)
{
    var features = [CPHTMLCanvasFeature],
        browserIsCompatible = YES;
    if (objj_msgSend(CPPlatform, "isBrowser"))
    {
        for (i = 0; i < features.length; i++)
        {
            if (!CPFeatureIsCompatible(features[i]))
            {
                gameOver(features[i]);
                browserIsCompatible = NO;
                break;
            }
        }
    }
    if (browserIsCompatible)
        CPApplicationMain(args, namedArgs);
}p;32;Controllers/TNAvatarController.jt;9909;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;25;AppKit/CPCollectionView.jI;20;AppKit/CPImageView.jI;15;AppKit/CPView.ji;24;../Views/TNAvatarImage.ji;23;../Views/TNAvatarView.ji;21;TNPermissionsCenter.jt;9682;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPCollectionView.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("../Views/TNAvatarImage.j", YES);
objj_executeFile("../Views/TNAvatarView.j", YES);
objj_executeFile("TNPermissionsCenter.j", YES);
var TNArchipelTypeAvatar = "archipel:avatar",
    TNArchipelTypeAvatarGetAvatars = "getavatars",
    TNArchipelTypeAvatarSetAvatar = "setavatar",
    TNArchipelAvatarManagerThumbSize = nil;
{var the_class = objj_allocateClassPair(CPObject, "TNAvatarController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonCancel"), new objj_ivar("buttonChange"), new objj_ivar("collectionViewAvatars"), new objj_ivar("imageSpinner"), new objj_ivar("mainPopover"), new objj_ivar("_entity"), new objj_ivar("_shouldRefresh"), new objj_ivar("_currentAvatars"), new objj_ivar("_avatarRegistry"), new objj_ivar("_rawAvatarDataCache")]);
       
       

       
       

       
       


       
       




       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("entity"), function $TNAvatarController__entity(self, _cmd)
{
return self._entity;
}
,["TNStropheContact"]), new objj_method(sel_getUid("_setEntity:"), function $TNAvatarController___setEntity_(self, _cmd, newValue)
{
self._entity = newValue;
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("awakeFromCib"), function $TNAvatarController__awakeFromCib(self, _cmd)
{
    TNArchipelAvatarManagerThumbSize = CGSizeMake(48, 48);
    var itemPrototype = objj_msgSend(objj_msgSend(CPCollectionViewItem, "alloc"), "init"),
        avatarView = objj_msgSend(objj_msgSend(TNAvatarView, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(self.imageSpinner, "setHidden:", YES);
    self._avatarRegistry = objj_msgSend(CPDictionary, "dictionary");
    self._rawAvatarDataCache = objj_msgSend(CPDictionary, "dictionary");
    self._shouldRefresh = YES;
    self._currentAvatars = objj_msgSend(CPArray, "array");
    self.collectionViewAvatars._minItemSize = TNArchipelAvatarManagerThumbSize;
    objj_msgSend(self.collectionViewAvatars, "setMinItemSize:", TNArchipelAvatarManagerThumbSize);
    objj_msgSend(self.collectionViewAvatars, "setMaxItemSize:", TNArchipelAvatarManagerThumbSize);
    objj_msgSend(self.collectionViewAvatars, "setSelectable:", YES);
    objj_msgSend(self.collectionViewAvatars, "setDelegate:", self);
    objj_msgSend(objj_msgSend(objj_msgSend(self.collectionViewAvatars, "superview"), "superview"), "setBorderedWithHexColor:", "#a5a5a5");
    objj_msgSend(itemPrototype, "setView:", avatarView);
    objj_msgSend(self.collectionViewAvatars, "setItemPrototype:", itemPrototype);
    objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "addDelegate:", self);
}
,["void"]), new objj_method(sel_getUid("setEntity:"), function $TNAvatarController__setEntity_(self, _cmd, anEntity)
{
    self._entity = anEntity;
    if (!objj_msgSend(self._avatarRegistry, "containsKey:", self._entity))
    {
        objj_msgSend(self._avatarRegistry, "setObject:forKey:", objj_msgSend(CPArray, "array"), self._entity);
        self._shouldRefresh = YES;
    }
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("populateCollectionView"), function $TNAvatarController__populateCollectionView(self, _cmd)
{
    objj_msgSend(self.collectionViewAvatars, "setContent:", []);
    objj_msgSend(self.collectionViewAvatars, "reloadContent");
    objj_msgSend(self.collectionViewAvatars, "setContent:", objj_msgSend(self._avatarRegistry, "objectForKey:", self._entity));
    objj_msgSend(self.collectionViewAvatars, "reloadContent");
}
,["void"]), new objj_method(sel_getUid("showWindow:"), function $TNAvatarController__showWindow_(self, _cmd, aSender)
{
    objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "setControl:segment:enabledAccordingToPermissions:forEntity:specialCondition:", self.buttonChange, nil, ["setavatars"], self._entity, YES);
    if (objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "hasPermission:forEntity:", "getavatars", self._entity))
    {
        objj_msgSend(self.buttonChange, "setEnabled:", NO);
        if (self._shouldRefresh)
            objj_msgSend(self, "getAvailableAvatars");
        else
            objj_msgSend(self, "populateCollectionView");
        objj_msgSend(self.mainPopover, "close");
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
        objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonChange);
    }
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNAvatarController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("getAvailableAvatars"), function $TNAvatarController__getAvailableAvatars(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(self.imageSpinner, "setHidden:", NO);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeAvatar});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeAvatarGetAvatars});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("didReceivedAvailableAvatars:"), self);
}
,["void"]), new objj_method(sel_getUid("didReceivedAvailableAvatars:"), function $TNAvatarController__didReceivedAvailableAvatars_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var avatars = objj_msgSend(aStanza, "childrenWithName:", "avatar");
        objj_msgSend(objj_msgSend(self._avatarRegistry, "objectForKey:", self._entity), "removeAllObjects");
        for (var i = 0; i < objj_msgSend(avatars, "count"); i++)
        {
            var avatar = objj_msgSend(avatars, "objectAtIndex:", i),
                file = objj_msgSend(avatar, "valueForAttribute:", "name"),
                data = objj_msgSend(avatar, "text"),
                cacheKey = objj_msgSend(avatar, "valueForAttribute:", "hash") || data,
                img;
            if (objj_msgSend(self._rawAvatarDataCache, "containsKey:", cacheKey))
            {
                img = objj_msgSend(self._rawAvatarDataCache, "objectForKey:", cacheKey);
                CPLog.trace("Image with cache key " + cacheKey + "'s data are already cached. using it");
            }
            else
            {
                img = objj_msgSend(objj_msgSend(TNAvatarImage, "alloc"), "initWithData:", objj_msgSend(CPData, "dataWithBase64:", data));
                objj_msgSend(img, "setSize:", TNArchipelAvatarManagerThumbSize);
                objj_msgSend(img, "setAvatarFilename:", file);
                objj_msgSend(img, "load");
                objj_msgSend(self._rawAvatarDataCache, "setObject:forKey:", img, cacheKey);
            }
            objj_msgSend(objj_msgSend(self._avatarRegistry, "objectForKey:", self._entity), "addObject:", img);
        }
    }
    objj_msgSend(self.imageSpinner, "setHidden:", YES);
    self._shouldRefresh = NO;
    objj_msgSend(self, "populateCollectionView");
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("setAvatar:"), function $TNAvatarController__setAvatar_(self, _cmd, sender)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set"),
        selectedIndex = objj_msgSend(objj_msgSend(self.collectionViewAvatars, "selectionIndexes"), "firstIndex"),
        selectedAvatar = objj_msgSend(self.collectionViewAvatars, "itemAtIndex:", selectedIndex),
        filename = objj_msgSend(objj_msgSend(selectedAvatar, "representedObject"), "avatarFilename");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeAvatar});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeAvatarSetAvatar,
        "avatar": filename});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("didSetAvatar:"), self);
}
,["id","id"]), new objj_method(sel_getUid("didSetAvatar:"), function $TNAvatarController__didSetAvatar_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        CPLog.info("Avatar changed for entity " + objj_msgSend(self._entity, "JID"));
        objj_msgSend(self.mainPopover, "close");
    }
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("collectionView:didDoubleClickOnItemAtIndex:"), function $TNAvatarController__collectionView_didDoubleClickOnItemAtIndex_(self, _cmd, collectionView, index)
{
    objj_msgSend(self, "setAvatar:", nil);
}
,["void","CPCollectionView","int"]), new objj_method(sel_getUid("collectionViewDidChangeSelection:"), function $TNAvatarController__collectionViewDidChangeSelection_(self, _cmd, collectionView)
{
    if (objj_msgSend(objj_msgSend(self.collectionViewAvatars, "selectionIndexes"), "count") > 0)
        objj_msgSend(self.buttonChange, "setEnabled:", YES);
    else
        objj_msgSend(self.buttonChange, "setEnabled:", NO);
}
,["void","CPCollectionView"]), new objj_method(sel_getUid("permissionCenter:updatePermissionForEntity:"), function $TNAvatarController__permissionCenter_updatePermissionForEntity_(self, _cmd, aCenter, anEntity)
{
    if (anEntity === self._entity)
        objj_msgSend(aCenter, "setControl:segment:enabledAccordingToPermissions:forEntity:specialCondition:", self.buttonChange, nil, ["setavatar"], self._entity, YES);
}
,["void","TNPermissionsCenter","TNStropheContact"])]);
}p;36;Controllers/TNConnectionController.jt;16751;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPImageView.jI;20;AppKit/CPTextField.jI;37;StropheCappuccino/TNStropheIMClient.jI;35;StropheCappuccino/TNStropheStanza.jI;34;StropheCappuccino/TNStropheVCard.ji;27;../Utils/EKShakeAnimation.ji;24;../Views/TNModalWindow.ji;19;../Views/TNSwitch.jt;16425;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("StropheCappuccino/TNStropheVCard.j", NO);
objj_executeFile("../Utils/EKShakeAnimation.j", YES);
objj_executeFile("../Views/TNModalWindow.j", YES);
objj_executeFile("../Views/TNSwitch.j", YES);
//@class CPLocalizedString
//@class TNDatasourceRoster
TNConnectionControllerCurrentUserVCardRetreived = "TNConnectionControllerCurrentUserVCardRetreived";
TNConnectionControllerConnectionStarted = "TNConnectionControllerConnectionStarted";
var TNConnectionControllerForceResource,
    TNConnectionControllerForceJIDDomain,
    TNArchipelForcedServiceURL,
    TNArchipelForcedJIDDomain,
    TNArchipelServiceTemplate;
{var the_class = objj_allocateClassPair(CPObject, "TNConnectionController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonConnect"), new objj_ivar("imageViewSpinning"), new objj_ivar("fieldPassword"), new objj_ivar("fieldService"), new objj_ivar("fieldJID"), new objj_ivar("labelService"), new objj_ivar("labelMessage"), new objj_ivar("switchCredentialRemember"), new objj_ivar("mainWindow"), new objj_ivar("_userVCard")]);

       
       


       
       






       
       












objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("mainWindow"), function $TNConnectionController__mainWindow(self, _cmd)
{
return self.mainWindow;
}
,["TNModalWindow"]), new objj_method(sel_getUid("userVCard"), function $TNConnectionController__userVCard(self, _cmd)
{
return self._userVCard;
}
,["TNStropheVCard"]), new objj_method(sel_getUid("setUserVCard:"), function $TNConnectionController__setUserVCard_(self, _cmd, newValue)
{
self._userVCard = newValue;
}
,["void","TNStropheVCard"]), new objj_method(sel_getUid("awakeFromCib"), function $TNConnectionController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.mainWindow, "setShowsResizeIndicator:", NO);
    objj_msgSend(self.mainWindow, "setDefaultButton:", self.buttonConnect);
    objj_msgSend(self.switchCredentialRemember, "setTarget:", self);
    objj_msgSend(self.switchCredentialRemember, "setAction:", sel_getUid("rememberCredentials:"));
    objj_msgSend(objj_msgSend(self.mainWindow, "contentView"), "applyShadow");
    objj_msgSend(self.buttonConnect, "setBezelStyle:", CPRoundedBezelStyle);
    objj_msgSend(self.fieldPassword, "setSecure:", YES);
    objj_msgSend(self.fieldPassword, "setNeedsLayout");
    if (!TNConnectionControllerForceResource)
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didJIDChange:"), CPControlTextDidChangeNotification, self.fieldJID);
}
,["void"]), new objj_method(sel_getUid("_didReceiveUserVCard:"), function $TNConnectionController___didReceiveUserVCard_(self, _cmd, aNotification)
{
    self._userVCard = objj_msgSend(objj_msgSend(TNStropheVCard, "alloc"), "initWithXMLNode:", objj_msgSend(objj_msgSend(aNotification, "userInfo"), "firstChildWithName:", "vCard"));
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNConnectionControllerCurrentUserVCardRetreived, self);
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didJIDChange:"), function $TNConnectionController___didJIDChange_(self, _cmd, aNotification)
{
    var currentJID;
    try { currentJID = objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(self.fieldJID, "stringValue")); } catch(e) { }
    objj_msgSend(self.fieldService, "setStringValue:", objj_msgSend(currentJID, "domain") ? TNArchipelServiceTemplate.replace("@DOMAIN@", objj_msgSend(currentJID, "domain")) : "");
    objj_msgSend(self, "_saveCredentials");
}
,["void","CPNotification"]), new objj_method(sel_getUid("initCredentials"), function $TNConnectionController__initCredentials(self, _cmd)
{
    objj_msgSend(self, "_prepareCredentialRemember");
    objj_msgSend(self, "_prepareJID");
    objj_msgSend(self, "_prepareService");
    objj_msgSend(self, "_preparePassword");
    if (objj_msgSend(objj_msgSend(self.fieldPassword, "stringValue"), "length"))
        objj_msgSend(self, "connect:", nil);
}
,["void"]), new objj_method(sel_getUid("_prepareCredentialRemember"), function $TNConnectionController___prepareCredentialRemember(self, _cmd)
{
    var lastCredsRemember = objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "objectForKey:", "TNArchipelRememberCredentials");
    objj_msgSend(self.switchCredentialRemember, "setOn:animated:sendAction:", lastCredsRemember, NO, NO);
}
,["void"]), new objj_method(sel_getUid("_prepareJID"), function $TNConnectionController___prepareJID(self, _cmd)
{
    var lastJID = objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "objectForKey:", "TNArchipelXMPPJID");
    try { objj_msgSend(self.fieldJID, "setStringValue:", objj_msgSend(objj_msgSend(TNStropheJID, "stropheJIDWithString:", lastJID), "bare")); } catch (e) {};
}
,["void"]), new objj_method(sel_getUid("_preparePassword"), function $TNConnectionController___preparePassword(self, _cmd)
{
    var lastPassword = objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "objectForKey:", "TNArchipelXMPPPassword");
    objj_msgSend(self.fieldPassword, "setStringValue:", lastPassword || "");
}
,["void"]), new objj_method(sel_getUid("_prepareService"), function $TNConnectionController___prepareService(self, _cmd)
{
    if (TNConnectionControllerForceResource)
    {
        objj_msgSend(self.fieldService, "setStringValue:", TNArchipelForcedServiceURL);
        objj_msgSend(self.fieldService, "setHidden:", YES);
        objj_msgSend(self.labelService, "setHidden:", YES);
        var windowFrame = objj_msgSend(objj_msgSend(self.mainWindow, "contentView"), "frameSize");
        windowFrame.height -= 26;
        objj_msgSend(self.mainWindow, "setFrameSize:", windowFrame);
        objj_msgSend(self.mainWindow, "center");
        return;
    }
    var lastService = objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "objectForKey:", "TNArchipelXMPPService");
    objj_msgSend(self.fieldService, "setStringValue:", lastService || "");
}
,["void"]), new objj_method(sel_getUid("_saveCredentials"), function $TNConnectionController___saveCredentials(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    if (!objj_msgSend(self.switchCredentialRemember, "isOn"))
    {
        objj_msgSend(defaults, "removeObjectForKey:", "TNArchipelXMPPService");
        objj_msgSend(defaults, "removeObjectForKey:", "TNArchipelXMPPJID");
        objj_msgSend(defaults, "removeObjectForKey:", "TNArchipelXMPPPassword");
        objj_msgSend(defaults, "setBool:forKey:", NO, "TNArchipelRememberCredentials");
        return;
    }
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.fieldJID, "stringValue"), "TNArchipelXMPPJID");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.fieldPassword, "stringValue"), "TNArchipelXMPPPassword");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.fieldService, "stringValue"), "TNArchipelXMPPService");
    objj_msgSend(defaults, "setBool:forKey:", YES, "TNArchipelRememberCredentials");
}
,["void"]), new objj_method(sel_getUid("showWindow:"), function $TNConnectionController__showWindow_(self, _cmd, sender)
{
    objj_msgSend(self.mainWindow, "center");
    objj_msgSend(self.mainWindow, "makeKeyAndOrderFront:", nil);
}
,["id","id"]), new objj_method(sel_getUid("hideWindow:"), function $TNConnectionController__hideWindow_(self, _cmd, sender)
{
    objj_msgSend(self.mainWindow, "close");
}
,["id","id"]), new objj_method(sel_getUid("connect:"), function $TNConnectionController__connect_(self, _cmd, sender)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        currentConnectionStatus = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"), "currentStatus"),
        connectionJID;
    if (currentConnectionStatus && currentConnectionStatus != Strophe.Status.DISCONNECTED)
    {
        objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "disconnect");
        return;
    }
    if (!objj_msgSend(objj_msgSend(self.fieldJID, "stringValue"), "length"))
        return;
    if (!TNConnectionControllerForceJIDDomain)
    {
        try
        {
            connectionJID = objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(objj_msgSend(self.fieldJID, "stringValue"), "lowercaseString"));
        }
        catch (e)
        {
            objj_msgSend(self.labelMessage, "setStringValue:", CPLocalizedString("Full JID required", "Full JID required"));
            return;
        }
    }
    else
    {
        try
        {
            connectionJID = objj_msgSend(objj_msgSend(TNStropheJID, "alloc"), "init");
            objj_msgSend(connectionJID, "setNode:", objj_msgSend(objj_msgSend(self.fieldJID, "stringValue"), "lowercaseString"));
            objj_msgSend(connectionJID, "setDomain:", TNArchipelForcedJIDDomain);
        }
        catch (e)
        {
            objj_msgSend(self.labelMessage, "setStringValue:", CPLocalizedString("Node only JID required", "Node only JID required"));
            return;
        }
    }
    objj_msgSend(self, "_saveCredentials");
    objj_msgSend(connectionJID, "setResource:", objj_msgSend(defaults, "objectForKey:", "TNArchipelXMPPResource"));
    var stropheClient = objj_msgSend(TNStropheIMClient, "IMClientWithService:JID:password:rosterClass:", objj_msgSend(objj_msgSend(self.fieldService, "stringValue"), "lowercaseString"), connectionJID, objj_msgSend(self.fieldPassword, "stringValue"), TNDatasourceRoster);
    objj_msgSend(stropheClient, "setDelegate:", self);
    objj_msgSend(stropheClient, "setDefaultClient");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNConnectionControllerConnectionStarted, self);
    objj_msgSend(stropheClient, "connect");
}
,["id","id"]), new objj_method(sel_getUid("rememberCredentials:"), function $TNConnectionController__rememberCredentials_(self, _cmd, sender)
{
    objj_msgSend(self, "_saveCredentials");
}
,["id","id"]), new objj_method(sel_getUid("client:errorCondition:"), function $TNConnectionController__client_errorCondition_(self, _cmd, aStropheClient, anError)
{
    switch (anError)
    {
        case "host-unknown":
            objj_msgSend(self.labelMessage, "setStringValue:", CPLocalizedString("host-unreachable", "host-unreachable"));
            break;
        default:
            objj_msgSend(self.labelMessage, "setStringValue:", anError || "Error is unknown because empty");
    }
    objj_msgSend(self.buttonConnect, "setEnabled:", YES);
    objj_msgSend(self.buttonConnect, "setTitle:", CPLocalizedString("connect", "connect"));
    objj_msgSend(self.imageViewSpinning, "setHidden:", YES);
}
,["void","TNStropheIMClient","CPString"]), new objj_method(sel_getUid("onStropheConnecting:"), function $TNConnectionController__onStropheConnecting_(self, _cmd, aStropheClient)
{
    objj_msgSend(self.labelMessage, "setStringValue:", CPLocalizedString("connecting", "connecting"));
    objj_msgSend(self.buttonConnect, "setTitle:", CPLocalizedString("cancel", "cancel"));
    objj_msgSend(self.buttonConnect, "setNeedsLayout");
    objj_msgSend(self.imageViewSpinning, "setHidden:", NO);
}
,["void","TNStropheIMClient"]), new objj_method(sel_getUid("onStropheConnected:"), function $TNConnectionController__onStropheConnected_(self, _cmd, aStropheClient)
{
    objj_msgSend(self.labelMessage, "setStringValue:", CPLocalizedString("connected", "connected"));
    objj_msgSend(self.imageViewSpinning, "setHidden:", YES);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didReceiveUserVCard:"), TNStropheClientVCardReceivedNotification, aStropheClient);
    objj_msgSend(aStropheClient, "getVCard");
    CPLog.info("Strophe is now connected using JID " + objj_msgSend(aStropheClient, "JID"));
}
,["void","TNStropheIMClient"]), new objj_method(sel_getUid("onStropheConnectFail:"), function $TNConnectionController__onStropheConnectFail_(self, _cmd, aStropheClient)
{
    objj_msgSend(self.imageViewSpinning, "setHidden:", YES);
    objj_msgSend(self.buttonConnect, "setEnabled:", YES);
    objj_msgSend(self.buttonConnect, "setTitle:", CPLocalizedString("connect", "connect"));
    objj_msgSend(self.labelMessage, "setStringValue:", CPLocalizedString("connection-failed", "connection-failed"));
    CPLog.info("XMPP connection failed");
}
,["void","TNStropheIMClient"]), new objj_method(sel_getUid("onStropheAuthenticating:"), function $TNConnectionController__onStropheAuthenticating_(self, _cmd, aStropheClient)
{
    objj_msgSend(self.labelMessage, "setStringValue:", CPLocalizedString("authenticating", "authenticating"));
    CPLog.info("XMPP authenticating...");
}
,["void","TNStropheIMClient"]), new objj_method(sel_getUid("onStropheAuthFail:"), function $TNConnectionController__onStropheAuthFail_(self, _cmd, aStropheClient)
{
    objj_msgSend(self.imageViewSpinning, "setHidden:", YES);
    objj_msgSend(self.buttonConnect, "setEnabled:", YES);
    objj_msgSend(self.buttonConnect, "setTitle:", CPLocalizedString("connect", "connect"));
    objj_msgSend(self.labelMessage, "setStringValue:", CPLocalizedString("authentification-failed", "authentification-failed"));
    objj_msgSend(objj_msgSend(EKShakeAnimation, "alloc"), "initWithView:", self.mainWindow._windowView);
    CPLog.info("XMPP auth failed");
}
,["void","TNStropheIMClient"]), new objj_method(sel_getUid("onStropheError:"), function $TNConnectionController__onStropheError_(self, _cmd, aStropheClient)
{
    objj_msgSend(self.imageViewSpinning, "setHidden:", YES);
    objj_msgSend(self.buttonConnect, "setEnabled:", YES);
    objj_msgSend(self.buttonConnect, "setTitle:", CPLocalizedString("connect", "connect"));
    objj_msgSend(self.labelMessage, "setStringValue:", CPLocalizedString("unknown-error", "unknown-error"));
    CPLog.info("XMPP unknown error");
}
,["void","TNStropheIMClient"]), new objj_method(sel_getUid("onStropheDisconnecting:"), function $TNConnectionController__onStropheDisconnecting_(self, _cmd, aStropheClient)
{
    var currentConnectionStatus = objj_msgSend(objj_msgSend(aStropheClient, "connection"), "currentStatus");
    if (currentConnectionStatus && currentConnectionStatus != Strophe.Status.CONNECTED)
    {
        objj_msgSend(self, "onStropheDisconnected:", aStropheClient);
    }
    else
    {
        objj_msgSend(self.imageViewSpinning, "setHidden:", NO);
        objj_msgSend(self.labelMessage, "setStringValue:", CPLocalizedString("disconnecting", "disconnecting"));
        CPLog.info("XMPP is disconnecting");
    }
}
,["void","TNStropheIMClient"]), new objj_method(sel_getUid("onStropheDisconnected:"), function $TNConnectionController__onStropheDisconnected_(self, _cmd, aStropheClient)
{
    objj_msgSend(self.imageViewSpinning, "setHidden:", YES);
    objj_msgSend(self.buttonConnect, "setEnabled:", YES);
    objj_msgSend(self.buttonConnect, "setTitle:", CPLocalizedString("connect", "connect"));
    objj_msgSend(self.labelMessage, "setStringValue:", CPLocalizedString("disconnected", "disconnected"));
    CPLog.info("XMPP connection is now disconnected");
}
,["void","TNStropheIMClient"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNConnectionController__initialize(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "mainBundle");
    TNArchipelServiceTemplate = objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelServiceTemplate");
    TNConnectionControllerForceResource = !!objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelForceService");
    TNArchipelForcedServiceURL = objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelForcedServiceURL");
    TNConnectionControllerForceJIDDomain = !!objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelForceJIDDomain");
    TNArchipelForcedJIDDomain = objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelForcedJIDDomain");
}
,["void"])]);
}p;34;Controllers/TNContactsController.jt;13330;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;17;AppKit/CPButton.jI;20;AppKit/CPTextField.jI;17;AppKit/CPWindow.jI;15;TNKit/TNAlert.jI;33;GrowlCappuccino/GrowlCappuccino.jI;45;StropheCappuccino/PubSub/TNPubSubController.jI;37;StropheCappuccino/TNStropheIMClient.ji;21;TNPermissionsCenter.jt;13015;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("GrowlCappuccino/GrowlCappuccino.j", NO);
objj_executeFile("StropheCappuccino/PubSub/TNPubSubController.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("TNPermissionsCenter.j", YES);
//@class CPLocalizedString
//@global TNArchipelEntityTypeUser
//@global TNArchipelEntityTypeVirtualMachine
//@global TNArchipelEntityTypeHypervisor
{var the_class = objj_allocateClassPair(CPObject, "TNContactsController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonAdd"), new objj_ivar("buttonCancel"), new objj_ivar("mainPopover"), new objj_ivar("newContactJID"), new objj_ivar("newContactName"), new objj_ivar("_pubsubController"), new objj_ivar("_localAvatars")]);
       
       






       
       





       
       





       
       



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("pubSubController"), function $TNContactsController__pubSubController(self, _cmd)
{
return self._pubsubController;
}
,["TNPubSubController"]), new objj_method(sel_getUid("setPubSubController:"), function $TNContactsController__setPubSubController_(self, _cmd, newValue)
{
self._pubsubController = newValue;
}
,["void","TNPubSubController"]), new objj_method(sel_getUid("awakeFromCib"), function $TNContactsController__awakeFromCib(self, _cmd)
{
    self._localAvatars = objj_msgSend(CPDictionary, "dictionary");
    var bundle = objj_msgSend(CPBundle, "mainBundle");
    objj_msgSend(self._localAvatars, "setObject:forKey:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "Avatars/RemoteAvatars/defaultvm.png")), "vm");
    objj_msgSend(self._localAvatars, "setObject:forKey:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "Avatars/RemoteAvatars/defaulthypervisor.png")), "hypervisor");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_performPushRosterAdded:"), TNStropheRosterPushAddedContactNotification, nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_performPushRosterRemoved:"), TNStropheRosterPushRemovedContactNotification, nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_performPushRosterUpdated:"), TNStropheRosterPushUpdatedContactNotification, nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didRecieveContactVCard:"), TNStropheContactVCardReceivedNotification, nil);
}
,["void"]), new objj_method(sel_getUid("subscribeToPubSubNodeOfContactWithJID:"), function $TNContactsController__subscribeToPubSubNodeOfContactWithJID_(self, _cmd, aJID)
{
    var roster = objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster");
    if (objj_msgSend(roster, "analyseVCard:", objj_msgSend(objj_msgSend(roster, "contactWithJID:", aJID), "vCard")) == TNArchipelEntityTypeUser)
        return;
    var nodeName = "/archipel/" + objj_msgSend(aJID, "bare") + "/events",
        server = objj_msgSend(TNStropheJID, "stropheJIDWithString:", "pubsub." + objj_msgSend(aJID, "domain"));
    if (!objj_msgSend(self._pubsubController, "nodeWithName:", nodeName))
        objj_msgSend(self._pubsubController, "subscribeToNodeWithName:server:", nodeName, server);
}
,["void","TNStropheJID"]), new objj_method(sel_getUid("unsubscribeToPubSubNodeOfContactWithJID:"), function $TNContactsController__unsubscribeToPubSubNodeOfContactWithJID_(self, _cmd, aJID)
{
    var roster = objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster");
    if (objj_msgSend(roster, "analyseVCard:", objj_msgSend(objj_msgSend(roster, "contactWithJID:", aJID), "vCard")) == TNArchipelEntityTypeUser)
        return;
    var nodeName = "/archipel/" + objj_msgSend(aJID, "bare") + "/events",
        server = objj_msgSend(TNStropheJID, "stropheJIDWithString:", "pubsub." + objj_msgSend(aJID, "domain"));
    if (objj_msgSend(self._pubsubController, "nodeWithName:", nodeName))
        objj_msgSend(self._pubsubController, "unsubscribeFromNodeWithName:server:", nodeName, server)
}
,["void","TNStropheJID"]), new objj_method(sel_getUid("addContact"), function $TNContactsController__addContact(self, _cmd)
{
    var name = objj_msgSend(self.newContactName, "stringValue"),
        JID;
    try
    {
          JID = objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(self.newContactJID, "stringValue"))
    }
    catch (e)
    {
        JID = nil;
    }
    if (!objj_msgSend(JID, "node") || !objj_msgSend(JID, "domain") || objj_msgSend(JID, "resource"))
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", CPLocalizedString("JID is not valid", "JID is not valid"), CPLocalizedString("You must enter a JID using the form user@domain.", "You must enter a JID using the form user@domain."), CPCriticalAlertStyle);
        return;
    }
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "addContact:withName:inGroupWithPath:", JID, name, nil);
    objj_msgSend(self.mainPopover, "close");
    CPLog.info("added contact " + JID);
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", CPLocalizedString("Contact", "Contact"), CPLocalizedString("Contact ", "Contact ") + JID + CPLocalizedString(" has been added", " has been added"));
}
,["void"]), new objj_method(sel_getUid("deleteContact:"), function $TNContactsController__deleteContact_(self, _cmd, aContact)
{
    objj_msgSend(self, "unsubscribeToPubSubNodeOfContactWithJID:", objj_msgSend(aContact, "JID"));
    objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "uncachePermissionsForEntity:", aContact);
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "removeContact:", aContact);
    CPLog.info("contact " + objj_msgSend(aContact, "JID") + "removed");
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", CPLocalizedString("Contact", "Contact"), CPLocalizedString("Contact ", "Contact ") + objj_msgSend(aContact, "JID") + CPLocalizedString(" has been removed", " has been removed"));
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("askSubscription:"), function $TNContactsController__askSubscription_(self, _cmd, aJID)
{
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "askAuthorizationTo:", aJID);
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "authorizeJID:", aJID);
}
,["void","id"]), new objj_method(sel_getUid("removeSubscription:"), function $TNContactsController__removeSubscription_(self, _cmd, aJID)
{
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "askAuthorizationTo:", aJID);
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "unauthorizeJID:", aJID);
}
,["void","id"]), new objj_method(sel_getUid("_didPubSubSubscriptionsRetrieved:"), function $TNContactsController___didPubSubSubscriptionsRetrieved_(self, _cmd, aNotification)
{
    var eventNode = objj_msgSend(objj_msgSend(objj_msgSend(aNotification, "object"), "nodes"), "objectAtIndex:", 0);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:name:object:", self, TNStrophePubSubSubscriptionsRetrievedNotification, objj_msgSend(aNotification, "object"));
    objj_msgSend(eventNode, "unsubscribe");
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didRecieveContactVCard:"), function $TNContactsController___didRecieveContactVCard_(self, _cmd, aNotification)
{
    var contact = objj_msgSend(aNotification, "object");
    objj_msgSend(self, "subscribeToPubSubNodeOfContactWithJID:", objj_msgSend(contact, "JID"));
}
,["void","CPNotification"]), new objj_method(sel_getUid("_performPushRosterAdded:"), function $TNContactsController___performPushRosterAdded_(self, _cmd, aNotification)
{
    var theJID = objj_msgSend(aNotification, "userInfo");
    objj_msgSend(self, "askSubscription:", theJID);
}
,["void","CPNotification"]), new objj_method(sel_getUid("_performPushRosterRemoved:"), function $TNContactsController___performPushRosterRemoved_(self, _cmd, aNotification)
{
    var theJID = objj_msgSend(aNotification, "userInfo");
    objj_msgSend(self, "unsubscribeToPubSubNodeOfContactWithJID:", theJID);
}
,["void","CPNotification"]), new objj_method(sel_getUid("_performPushRosterUpdated:"), function $TNContactsController___performPushRosterUpdated_(self, _cmd, aNotification)
{
    var theJID = objj_msgSend(aNotification, "userInfo");
    objj_msgSend(self, "subscribeToPubSubNodeOfContactWithJID:", theJID);
}
,["void","CPNotification"]), new objj_method(sel_getUid("showWindow:"), function $TNContactsController__showWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.newContactJID, "setStringValue:", "");
    objj_msgSend(self.newContactName, "setStringValue:", "");
    objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonAdd);
    objj_msgSend(self.mainPopover, "makeFirstResponder:", self.newContactJID);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNContactsController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("addContact:"), function $TNContactsController__addContact_(self, _cmd, aSender)
{
    objj_msgSend(self, "addContact");
}
,["id","id"]), new objj_method(sel_getUid("showHelpForSubscription:"), function $TNContactsController__showHelpForSubscription_(self, _cmd, aSender)
{
    window.open("http://www.google.fr/search?q=XMPP subscription request", "_new");
}
,["id","id"]), new objj_method(sel_getUid("showHelpForDelete:"), function $TNContactsController__showHelpForDelete_(self, _cmd, aSender)
{
    window.open("http://www.google.fr/search?q=XMPP delete contact", "_new");
}
,["id","id"]), new objj_method(sel_getUid("roster:receiveSubscriptionRequest:"), function $TNContactsController__roster_receiveSubscriptionRequest_(self, _cmd, aRoster, requestStanza)
{
    var nick;
    if (objj_msgSend(requestStanza, "firstChildWithName:", "nick"))
        nick = objj_msgSend(objj_msgSend(requestStanza, "firstChildWithName:", "nick"), "text");
    else
        nick = objj_msgSend(requestStanza, "from");
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPLocalizedString("Subscription request", "Subscription request"), nick + CPLocalizedString(" is asking you subscription. Do you want to authorize it ?", " is asking you subscription. Do you want to authorize it ?"), self, [[CPLocalizedString("Accept", "Accept"), sel_getUid("performAuthorize:")],
                                            [CPLocalizedString("Decline", "Decline"), sel_getUid("performRefuse:")]]);
    objj_msgSend(alert, "setHelpTarget:action:", self, sel_getUid("showHelpForSubscription:"));
    objj_msgSend(alert, "setUserInfo:", requestStanza)
    objj_msgSend(alert, "runModal");
}
,["void","TNStropheRoster","id"]), new objj_method(sel_getUid("performAuthorize:"), function $TNContactsController__performAuthorize_(self, _cmd, aRequestStanza)
{
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "answerAuthorizationRequest:answer:", aRequestStanza, YES);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("performRefuse:"), function $TNContactsController__performRefuse_(self, _cmd, aRequestStanza)
{
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "answerAuthorizationRequest:answer:", aRequestStanza, NO);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("avatarForContact:"), function $TNContactsController__avatarForContact_(self, _cmd, aContact)
{
    var entityType = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(aContact, "vCard"));
    switch (entityType)
    {
        case TNArchipelEntityTypeVirtualMachine:
            return objj_msgSend(self._localAvatars, "objectForKey:", "vm");
            break;
        case TNArchipelEntityTypeHypervisor:
            return objj_msgSend(self._localAvatars, "objectForKey:", "hypervisor");
            break;
        default:
            return nil;
    }
}
,["CPImage","TNStropheContact"])]);
}p;32;Controllers/TNGroupsController.jt;3820;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPTextField.jI;17;AppKit/CPWindow.jI;31;GrowlCappuccino/TNGrowlCenter.jI;37;StropheCappuccino/TNStropheIMClient.jI;15;TNKit/TNAlert.jt;3606;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("GrowlCappuccino/TNGrowlCenter.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
//@class CPLocalizedString
//@global TNArchipelRememberOpenedGroup
{var the_class = objj_allocateClassPair(CPObject, "TNGroupsController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonAdd"), new objj_ivar("buttonCancel"), new objj_ivar("mainPopover"), new objj_ivar("newGroupName")]);
       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("deleteGroup:"), function $TNGroupsController__deleteGroup_(self, _cmd, aGroup)
{
    if (objj_msgSend(objj_msgSend(aGroup, "content"), "count") != 0)
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", CPLocalizedString("Group supression", "Group supression"), CPLocalizedString("The group must be empty", "The group must be empty"), TNGrowlIconError);
        return;
    }
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        key = TNArchipelRememberOpenedGroup + objj_msgSend(aGroup, "name");
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "removeGroup:", aGroup);
    objj_msgSend(objj_msgSend(defaults, "objectForKey:", "TNOutlineViewsExpandedGroups"), "removeObjectForKey:", key);
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", CPLocalizedString("Group supression", "Group supression"), CPLocalizedString("The group has been removed", "The group has been removed"));
}
,["void","TNStropheGroup"]), new objj_method(sel_getUid("showWindow:"), function $TNGroupsController__showWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.newGroupName, "setStringValue:", "");
    objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonAdd);
    objj_msgSend(self.mainPopover, "makeFirstResponder:", self.newGroupName);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNGroupsController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("addGroup:"), function $TNGroupsController__addGroup_(self, _cmd, aSender)
{
    if (objj_msgSend(self.newGroupName, "stringValue") == "")
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", CPLocalizedString("Group addition error", "Group addition error"), CPLocalizedString("You have to enter a valid group name.", "You have to enter a valid group name."), CPCriticalAlertStyle);
    }
    else
    {
        var groupName = objj_msgSend(self.newGroupName, "stringValue");
        objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "addGroupWithPath:", groupName);
        objj_msgSend(self.newGroupName, "setStringValue:", "");
        CPLog.info("new group " + groupName + " added.");
        var growl = objj_msgSend(TNGrowlCenter, "defaultCenter");
        objj_msgSend(growl, "pushNotificationWithTitle:message:", CPLocalizedString("Group", "Group"), CPLocalizedString("Group ", "Group ") + groupName + CPLocalizedString(" has been created", " has been created"));
        objj_msgSend(self.mainPopover, "close");
    }
}
,["id","id"])]);
}p;30;Controllers/TNHintController.jt;2634;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPWindow.jI;15;AppKit/CPView.jI;20;AppKit/CPImageView.jI;16;AppKit/CPImage.jI;20;AppKit/CPTextField.jt;2474;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNHintController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonOpenWiki"), new objj_ivar("imageViewHint1"), new objj_ivar("imageViewHint2"), new objj_ivar("imageViewHint3"), new objj_ivar("imageViewLogo"), new objj_ivar("hintView"), new objj_ivar("_mainWindow")]);
       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNHintController__awakeFromCib(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "mainBundle");
    objj_msgSend(self.imageViewLogo, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "Backgrounds/background-icon.png")));
    objj_msgSend(self.imageViewHint1, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "hints/hint1.png")));
    objj_msgSend(self.imageViewHint2, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "hints/hint2.png")));
    objj_msgSend(self.imageViewHint3, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "hints/hint3.png")));
    objj_msgSend(self.buttonOpenWiki, "setTheme:", objj_msgSend(CPTheme, "defaultHudTheme"));
    self._mainWindow = objj_msgSend(objj_msgSend(CPWindow, "alloc"), "initWithContentRect:styleMask:", objj_msgSend(self.hintView, "bounds"), CPHUDBackgroundWindowMask | CPTitledWindowMask | CPClosableWindowMask);
    objj_msgSend(objj_msgSend(self._mainWindow, "contentView"), "addSubview:", self.hintView);
}
,["void"]), new objj_method(sel_getUid("showWindow:"), function $TNHintController__showWindow_(self, _cmd, aSender)
{
    objj_msgSend(self._mainWindow, "center");
    objj_msgSend(self._mainWindow, "makeKeyAndOrderFront:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("openDocumentation:"), function $TNHintController__openDocumentation_(self, _cmd, aSender)
{
    window.open("https://github.com/archipelproject/archipel/wiki");
}
,["id","id"])]);
}p;32;Controllers/TNModuleController.jt;42532;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPMenu.jI;20;AppKit/CPTextField.jI;22;AppKit/CPToolbarItem.jI;15;AppKit/CPView.jI;37;StropheCappuccino/StropheCappuccino.jI;19;TNKit/TNAnimation.jI;17;TNKit/TNTabView.jI;17;TNKit/TNToolbar.ji;21;TNPermissionsCenter.jt;42256;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPMenu.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPToolbarItem.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("StropheCappuccino/StropheCappuccino.j", NO);
objj_executeFile("TNKit/TNAnimation.j", NO);
objj_executeFile("TNKit/TNTabView.j", NO);
objj_executeFile("TNKit/TNToolbar.j", NO);
objj_executeFile("TNPermissionsCenter.j", YES);
//@global TNArchipelEntityTypes
//@global CPApp
TNArchipelModuleTypeTab = "tab";
TNArchipelModuleTypeToolbar = "toolbar";
TNArchipelModulesLoadingCompleteNotification = "TNArchipelModulesLoadingCompleteNotification";
TNArchipelModulesVisibilityRequestNotification = "TNArchipelModulesVisibilityRequestNotification";
{var the_class = objj_allocateClassPair(CPTabViewItem, "TNModuleTabViewItem"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_module"), new objj_ivar("_index")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("module"), function $TNModuleTabViewItem__module(self, _cmd)
{
return self._module;
}
,["TNModule"]), new objj_method(sel_getUid("setModule:"), function $TNModuleTabViewItem__setModule_(self, _cmd, newValue)
{
self._module = newValue;
}
,["void","TNModule"]), new objj_method(sel_getUid("index"), function $TNModuleTabViewItem__index(self, _cmd)
{
return self._index;
}
,["int"]), new objj_method(sel_getUid("setIndex:"), function $TNModuleTabViewItem__setIndex_(self, _cmd, newValue)
{
self._index = newValue;
}
,["void","int"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "TNModuleController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("viewPermissionDenied"), new objj_ivar("_moduleLoadingStarted"), new objj_ivar("_toolbarModuleBackgroundColor"), new objj_ivar("_modulesMenu"), new objj_ivar("_rosterContactsMenu"), new objj_ivar("_rosterGroupsMenu"), new objj_ivar("_modulesPath"), new objj_ivar("_moduleType"), new objj_ivar("_infoTextField"), new objj_ivar("_mainModuleView"), new objj_ivar("_delegate"), new objj_ivar("_entity"), new objj_ivar("_numberOfActiveModules"), new objj_ivar("_mainTabView"), new objj_ivar("_mainToolbar"), new objj_ivar("_allowToolbarSwitching"), new objj_ivar("_deactivateModuleTabItemPositionStorage"), new objj_ivar("_modulesMenuItems"), new objj_ivar("_openedTabsRegistry"), new objj_ivar("_tabModules"), new objj_ivar("_toolbarModules"), new objj_ivar("_modulesPList"), new objj_ivar("_numberOfModulesLoaded"), new objj_ivar("_numberOfModulesToLoad"), new objj_ivar("_animationToolBarModuleHide"), new objj_ivar("_animationToolBarModuleShow"), new objj_ivar("_currentToolbarModule")]);



       
       

       
       



       
       


       
       


       
       








       
       




       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isModuleLoadingStarted"), function $TNModuleController__isModuleLoadingStarted(self, _cmd)
{
return self._moduleLoadingStarted;
}
,["BOOL"]), new objj_method(sel_getUid("_setModuleLoadingStarted:"), function $TNModuleController___setModuleLoadingStarted_(self, _cmd, newValue)
{
self._moduleLoadingStarted = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("toolbarModuleBackgroundColor"), function $TNModuleController__toolbarModuleBackgroundColor(self, _cmd)
{
return self._toolbarModuleBackgroundColor;
}
,["CPColor"]), new objj_method(sel_getUid("setToolbarModuleBackgroundColor:"), function $TNModuleController__setToolbarModuleBackgroundColor_(self, _cmd, newValue)
{
self._toolbarModuleBackgroundColor = newValue;
}
,["void","CPColor"]), new objj_method(sel_getUid("modulesMenu"), function $TNModuleController__modulesMenu(self, _cmd)
{
return self._modulesMenu;
}
,["CPMenu"]), new objj_method(sel_getUid("setModulesMenu:"), function $TNModuleController__setModulesMenu_(self, _cmd, newValue)
{
self._modulesMenu = newValue;
}
,["void","CPMenu"]), new objj_method(sel_getUid("rosterContactsMenu"), function $TNModuleController__rosterContactsMenu(self, _cmd)
{
return self._rosterContactsMenu;
}
,["CPMenu"]), new objj_method(sel_getUid("setRosterContactsMenu:"), function $TNModuleController__setRosterContactsMenu_(self, _cmd, newValue)
{
self._rosterContactsMenu = newValue;
}
,["void","CPMenu"]), new objj_method(sel_getUid("rosterGroupsMenu"), function $TNModuleController__rosterGroupsMenu(self, _cmd)
{
return self._rosterGroupsMenu;
}
,["CPMenu"]), new objj_method(sel_getUid("setRosterGroupsMenu:"), function $TNModuleController__setRosterGroupsMenu_(self, _cmd, newValue)
{
self._rosterGroupsMenu = newValue;
}
,["void","CPMenu"]), new objj_method(sel_getUid("modulesPath"), function $TNModuleController__modulesPath(self, _cmd)
{
return self._modulesPath;
}
,["CPString"]), new objj_method(sel_getUid("setModulesPath:"), function $TNModuleController__setModulesPath_(self, _cmd, newValue)
{
self._modulesPath = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("moduleType"), function $TNModuleController__moduleType(self, _cmd)
{
return self._moduleType;
}
,["CPString"]), new objj_method(sel_getUid("setModuleType:"), function $TNModuleController__setModuleType_(self, _cmd, newValue)
{
self._moduleType = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("infoTextField"), function $TNModuleController__infoTextField(self, _cmd)
{
return self._infoTextField;
}
,["CPTextField"]), new objj_method(sel_getUid("setInfoTextField:"), function $TNModuleController__setInfoTextField_(self, _cmd, newValue)
{
self._infoTextField = newValue;
}
,["void","CPTextField"]), new objj_method(sel_getUid("mainModuleView"), function $TNModuleController__mainModuleView(self, _cmd)
{
return self._mainModuleView;
}
,["CPView"]), new objj_method(sel_getUid("setMainModuleView:"), function $TNModuleController__setMainModuleView_(self, _cmd, newValue)
{
self._mainModuleView = newValue;
}
,["void","CPView"]), new objj_method(sel_getUid("delegate"), function $TNModuleController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNModuleController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("entity"), function $TNModuleController__entity(self, _cmd)
{
return self._entity;
}
,["id"]), new objj_method(sel_getUid("setEntity:"), function $TNModuleController__setEntity_(self, _cmd, newValue)
{
self._entity = newValue;
}
,["void","id"]), new objj_method(sel_getUid("numberOfActiveModules"), function $TNModuleController__numberOfActiveModules(self, _cmd)
{
return self._numberOfActiveModules;
}
,["int"]), new objj_method(sel_getUid("_setNumberOfActiveModules:"), function $TNModuleController___setNumberOfActiveModules_(self, _cmd, newValue)
{
self._numberOfActiveModules = newValue;
}
,["void","int"]), new objj_method(sel_getUid("mainTabView"), function $TNModuleController__mainTabView(self, _cmd)
{
return self._mainTabView;
}
,["TNTabView"]), new objj_method(sel_getUid("setMainTabView:"), function $TNModuleController__setMainTabView_(self, _cmd, newValue)
{
self._mainTabView = newValue;
}
,["void","TNTabView"]), new objj_method(sel_getUid("mainToolbar"), function $TNModuleController__mainToolbar(self, _cmd)
{
return self._mainToolbar;
}
,["TNToolbar"]), new objj_method(sel_getUid("setMainToolbar:"), function $TNModuleController__setMainToolbar_(self, _cmd, newValue)
{
self._mainToolbar = newValue;
}
,["void","TNToolbar"]), new objj_method(sel_getUid("awakeFromCib"), function $TNModuleController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.viewPermissionDenied, "setBackgroundColor:", objj_msgSend(CPColor, "whiteColor"));
}
,["void"]), new objj_method(sel_getUid("init"), function $TNModuleController__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNModuleController").super_class }, "init"))
    {
        var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
        self._modulesMenuItems = objj_msgSend(CPDictionary, "dictionary");
        self._toolbarModules = objj_msgSend(CPDictionary, "dictionary");
        self._tabModules = objj_msgSend(CPDictionary, "dictionary");
        self._numberOfModulesToLoad = 0;
        self._numberOfModulesLoaded = 0;
        self._numberOfActiveModules = 0;
        self._deactivateModuleTabItemPositionStorage = NO;
        self._moduleLoadingStarted = NO;
        self._allowToolbarSwitching = YES;
        self._openedTabsRegistry = objj_msgSend(CPDictionary, "dictionary");
        self._animationToolBarModuleHide = objj_msgSend(objj_msgSend(TNAnimation, "alloc"), "init");
        self._animationToolBarModuleShow = objj_msgSend(objj_msgSend(TNAnimation, "alloc"), "init");
        objj_msgSend(self._animationToolBarModuleHide, "setDelegate:", self);
        objj_msgSend(self._animationToolBarModuleHide, "setDuration:", 0.3);
        objj_msgSend(self._animationToolBarModuleShow, "setDelegate:", self);
        objj_msgSend(self._animationToolBarModuleShow, "setDuration:", 0.3);
        if (!objj_msgSend(defaults, "objectForKey:", "TNArchipelModuleControllerOpenedTabRegistry"))
            objj_msgSend(defaults, "setObject:forKey:", self._openedTabsRegistry, "TNArchipelModuleControllerOpenedTabRegistry");
    }
    return self;
}
,["void"]), new objj_method(sel_getUid("setEntity:ofType:"), function $TNModuleController__setEntity_ofType_(self, _cmd, anEntity, aType)
{
    if (self._numberOfModulesToLoad && self._numberOfModulesLoaded != self._numberOfModulesToLoad)
        return NO;
    if ((anEntity === self._entity) && (anEntity != nil))
        return NO;
    self._numberOfActiveModules = 0;
    self._entity = anEntity;
    self._moduleType = aType;
    var center = objj_msgSend(CPNotificationCenter, "defaultCenter");
    objj_msgSend(center, "removeObserver:", self);
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("_didReceiveVisibilityRequest:"), TNArchipelModulesVisibilityRequestNotification, nil);
    if (objj_msgSend(self._entity, "isKindOfClass:", TNStropheContact))
    {
        objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("_didPresenceUpdate:"), TNStropheContactPresenceUpdatedNotification, self._entity);
        objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("_didReceiveVcard:"), TNStropheContactVCardReceivedNotification, self._entity);
        objj_msgSend(self, "_removeAllTabsFromModulesTabView");
        objj_msgSend(self, "updateUIAccordingToPresence:", self._entity)
    }
    else
    {
        objj_msgSend(self._infoTextField, "setStringValue:", "");
        objj_msgSend(self._infoTextField, "setHidden:", YES);
        objj_msgSend(self, "_removeAllTabsFromModulesTabView");
        objj_msgSend(self, "_populateModulesTabView");
    }
    return YES;
}
,["BOOL","id","CPString"]), new objj_method(sel_getUid("setCurrentEntityForToolbarModules:"), function $TNModuleController__setCurrentEntityForToolbarModules_(self, _cmd, anEntity)
{
    for (var i = 0; i < objj_msgSend(objj_msgSend(self, "toolbarModules"), "count"); i++)
    {
        var module = objj_msgSend(objj_msgSend(self, "toolbarModules"), "objectAtIndex:", i);
        objj_msgSend(module, "setEntity:", anEntity);
    }
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("updateUIAccordingToPresence:"), function $TNModuleController__updateUIAccordingToPresence_(self, _cmd, aContact)
{
    var infoText = "";
    switch (objj_msgSend(aContact, "XMPPShow"))
    {
        case TNStropheContactStatusOffline:
            objj_msgSend(self, "_removeAllTabsFromModulesTabView");
            infoText = "Entity is offline";
            break;
        case TNStropheContactStatusDND:
            if (objj_msgSend(self._mainTabView, "selectedTabViewItem"))
                objj_msgSend(self, "rememberSelectedIndexForItem:", objj_msgSend(self._mainTabView, "selectedTabViewItem"));
            objj_msgSend(self, "_removeAllTabsFromModulesTabView");
            infoText = "Entity does not want to be disturbed";
            break;
        case TNStropheContactStatusOnline:
        case TNStropheContactStatusBusy:
        case TNStropheContactStatusAway:
            if (self._numberOfActiveModules == 0)
                objj_msgSend(self, "_populateModulesTabView");
    }
    objj_msgSend(self._infoTextField, "setStringValue:", infoText);
    objj_msgSend(self._infoTextField, "setHidden:", (infoText == ""));
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("_didPresenceUpdate:"), function $TNModuleController___didPresenceUpdate_(self, _cmd, aNotification)
{
    if (self._numberOfModulesLoaded != self._numberOfModulesToLoad)
        return;
    objj_msgSend(self, "updateUIAccordingToPresence:", objj_msgSend(aNotification, "object"))
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didReceiveVcard:"), function $TNModuleController___didReceiveVcard_(self, _cmd, aNotification)
{
    var vCard = objj_msgSend(objj_msgSend(aNotification, "object"), "vCard"),
        moduleType = objj_msgSend(vCard, "role") || nil;
    if (moduleType != self._moduleType)
    {
        self._moduleType = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", vCard);
        objj_msgSend(self, "_removeAllTabsFromModulesTabView");
        objj_msgSend(self, "_populateModulesTabView");
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didReceiveVisibilityRequest:"), function $TNModuleController___didReceiveVisibilityRequest_(self, _cmd, aNotification)
{
    var requester = objj_msgSend(aNotification, "object"),
        module = objj_msgSend(self._tabModules, "objectForKey:", objj_msgSend(requester, "identifier"));
    for (var i = 0; i < objj_msgSend(objj_msgSend(self._mainTabView, "tabViewItems"), "count"); i++)
        if (objj_msgSend(objj_msgSend(objj_msgSend(self._mainTabView, "tabViewItems"), "objectAtIndex:", i), "identifier") == objj_msgSend(requester, "name"))
            objj_msgSend(self._mainTabView, "selectTabViewItem:", objj_msgSend(objj_msgSend(self._mainTabView, "tabViewItems"), "objectAtIndex:", i));
}
,["void","CPNotification"]), new objj_method(sel_getUid("tabModules"), function $TNModuleController__tabModules(self, _cmd)
{
    return objj_msgSend(self._tabModules, "allValues");
}
,["CPArray"]), new objj_method(sel_getUid("toolbarModules"), function $TNModuleController__toolbarModules(self, _cmd)
{
    return objj_msgSend(self._toolbarModules, "allValues");
}
,["CPArray"]), new objj_method(sel_getUid("rememberSelectedIndexForItem:"), function $TNModuleController__rememberSelectedIndexForItem_(self, _cmd, anItem)
{
    if (self._deactivateModuleTabItemPositionStorage)
        return;
    if (!anItem || !self._entity)
        return;
    if (objj_msgSend(self._mainTabView, "numberOfTabViewItems") <= 0)
        return;
    var roster = objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        currentSelectedIndex = objj_msgSend(self._mainTabView, "indexOfTabViewItem:", anItem),
        identifier = objj_msgSend(self._entity, "isKindOfClass:", TNStropheContact) ? objj_msgSend(roster, "analyseVCard:", objj_msgSend(self._entity, "vCard")) : "Group",
        memid = "selectedTabIndexFor" + identifier;
    if (currentSelectedIndex == objj_msgSend(objj_msgSend(defaults, "objectForKey:", "TNArchipelModuleControllerOpenedTabRegistry"), "objectForKey:", memid))
        return;
    CPLog.info("remembered last selected tabindex " + currentSelectedIndex + " for entity " + self._entity);
    objj_msgSend(objj_msgSend(defaults, "objectForKey:", "TNArchipelModuleControllerOpenedTabRegistry"), "setObject:forKey:", currentSelectedIndex, memid);
}
,["void","CPTabViewItem"]), new objj_method(sel_getUid("recoverFromLastSelectedIndex"), function $TNModuleController__recoverFromLastSelectedIndex(self, _cmd)
{
    if (!self._entity)
        return;
    var roster = objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        identifier = objj_msgSend(self._entity, "isKindOfClass:", TNStropheContact) ? objj_msgSend(roster, "analyseVCard:", objj_msgSend(self._entity, "vCard")) : "Group",
        memid = "selectedTabIndexFor" + identifier,
        oldSelectedIndex = objj_msgSend(objj_msgSend(defaults, "objectForKey:", "TNArchipelModuleControllerOpenedTabRegistry"), "objectForKey:", memid) || -1,
        numberOfTabItems = objj_msgSend(self._mainTabView, "numberOfTabViewItems");
    if (oldSelectedIndex == -1)
        return;
    CPLog.info("recovering last selected tab index " + oldSelectedIndex);
    objj_msgSend(self._mainTabView, "selectTabViewItemAtIndex:", oldSelectedIndex);
}
,["void"]), new objj_method(sel_getUid("load"), function $TNModuleController__load(self, _cmd)
{
    var request = objj_msgSend(CPURLRequest, "requestWithURL:", objj_msgSend(CPURL, "URLWithString:", "Modules/modules.plist")),
        connection = objj_msgSend(CPURLConnection, "connectionWithRequest:delegate:", request, self);
    self._moduleLoadingStarted = YES;
    objj_msgSend(connection, "cancel");
    objj_msgSend(connection, "start");
}
,["void"]), new objj_method(sel_getUid("_loadNextBundle"), function $TNModuleController___loadNextBundle(self, _cmd)
{
    var module = objj_msgSend(objj_msgSend(self._modulesPList, "objectForKey:", "Modules"), "objectAtIndex:", self._numberOfModulesLoaded),
        path = self._modulesPath + objj_msgSend(module, "objectForKey:", "folder"),
        bundle = objj_msgSend(CPBundle, "bundleWithPath:", path);
    CPLog.debug("Loading " + objj_msgSend(CPBundle, "bundleWithPath:", path));
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("moduleLoader:willLoadBundle:")))
        objj_msgSend(self._delegate, "moduleLoader:willLoadBundle:", self, bundle);
    objj_msgSend(bundle, "loadWithDelegate:", self);
}
,["void"]), new objj_method(sel_getUid("_manageTabItemLoad:"), function $TNModuleController___manageTabItemLoad_(self, _cmd, aBundle)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        moduleName = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "CPBundleName"),
        moduleLabel = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "PluginDisplayName"),
        moduleTabIndex = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "TabIndex"),
        supportedTypes = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "SupportedEntityTypes"),
        useMenu = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "UseModuleMenu"),
        mandatoryPermissions = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "MandatoryPermissions"),
        bundleLocale = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "CPBundleLocale"),
        entityDefinition = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "EntityTypesRegistry"),
        isFullscreen = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "FullscreenModule"),
        moduleIdentifier = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "CPBundleIdentifier"),
        moduleItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "init"),
        moduleRootMenu = objj_msgSend(objj_msgSend(CPMenu, "alloc"), "init"),
        frame = objj_msgSend(self._mainModuleView, "bounds"),
        scrollView = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", CGRectMakeZero()),
        moduleTabItem = objj_msgSend(objj_msgSend(TNModuleTabViewItem, "alloc"), "initWithIdentifier:", moduleIdentifier),
        currentModuleController = objj_msgSend(self, "_loadLocalizedModuleController:forBundle:", bundleLocale, aBundle);
    if (objj_msgSend(moduleLabel, "isKindOfClass:", CPDictionary) && bundleLocale)
    {
        moduleLabel = objj_msgSend(moduleLabel, "objectForKey:", objj_msgSend(defaults, "objectForKey:", "CPBundleLocale"));
        if (!moduleLabel)
            moduleLabel = objj_msgSend(objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "PluginDisplayName"), "objectForKey:", "en");
    }
    if (entityDefinition)
    {
        var entityType = objj_msgSend(entityDefinition, "objectForKey:", "Type"),
            entityDescriptionGroup = objj_msgSend(entityDefinition, "objectForKey:", "Description"),
            entityDescription;
        if (!entityDescriptionGroup)
            entityDescription = entityType;
        else
        {
            entityDescription = objj_msgSend(entityDescriptionGroup, "objectForKey:", objj_msgSend(defaults, "objectForKey:", "CPBundleLocale"));
            if (!entityDescription)
                entityDescription = objj_msgSend(entityDescriptionGroup, "objectForKey:", "en");
        }
        objj_msgSend(TNArchipelEntityTypes, "setObject:forKey:", entityDescription, entityType);
    }
    objj_msgSend(currentModuleController, "initializeModule");
    objj_msgSend(currentModuleController, "setBundle:", aBundle);
    objj_msgSend(currentModuleController, "setFullscreen:", isFullscreen);
    objj_msgSend(currentModuleController, "setHasCIB:", YES);
    objj_msgSend(currentModuleController, "setIdentifier:", moduleIdentifier);
    objj_msgSend(currentModuleController, "setIndex:", moduleTabIndex);
    objj_msgSend(currentModuleController, "setLabel:", moduleLabel);
    objj_msgSend(currentModuleController, "setMandatoryPermissions:", mandatoryPermissions);
    objj_msgSend(currentModuleController, "setModuleType:", TNArchipelModuleTypeTab);
    objj_msgSend(currentModuleController, "setName:", moduleName);
    objj_msgSend(currentModuleController, "setSupportedEntityTypes:", supportedTypes);
    objj_msgSend(currentModuleController, "setUIItem:", moduleTabItem);
    objj_msgSend(currentModuleController, "setUIObject:", self._mainTabView);
    objj_msgSend(currentModuleController, "setViewPermissionDenied:", self.viewPermissionDenied);
    objj_msgSend(objj_msgSend(currentModuleController, "view"), "setAutoresizingMask:", CPViewWidthSizable);
    if (useMenu)
    {
        objj_msgSend(moduleItem, "setTitle:", moduleLabel);
        objj_msgSend(moduleItem, "setTarget:", currentModuleController);
        objj_msgSend(self._modulesMenu, "setAutoenablesItems:", NO);
        objj_msgSend(self._modulesMenu, "setSubmenu:forItem:", moduleRootMenu, moduleItem);
        objj_msgSend(currentModuleController, "setRosterGroupsMenu:", self._rosterGroupsMenu);
        objj_msgSend(currentModuleController, "setRosterContactsMenu:", self._rosterContactsMenu);
        objj_msgSend(currentModuleController, "setMenuItem:", moduleItem);
        objj_msgSend(currentModuleController, "setMenu:", moduleRootMenu);
        objj_msgSend(currentModuleController, "menuReady");
        objj_msgSend(moduleItem, "setEnabled:", NO);
        if (!objj_msgSend(self._modulesMenuItems, "containsKey:", supportedTypes))
            objj_msgSend(self._modulesMenuItems, "setObject:forKey:", objj_msgSend(CPArray, "array"), supportedTypes);
        objj_msgSend(objj_msgSend(self._modulesMenuItems, "objectForKey:", supportedTypes), "addObject:", moduleItem);
    }
    objj_msgSend(scrollView, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
    objj_msgSend(scrollView, "setAutohidesScrollers:", YES);
    objj_msgSend(scrollView, "setDocumentView:", objj_msgSend(currentModuleController, "view"));
    objj_msgSend(moduleTabItem, "setModule:", currentModuleController);
    objj_msgSend(moduleTabItem, "setLabel:", moduleLabel);
    objj_msgSend(moduleTabItem, "setView:", scrollView);
    objj_msgSend(moduleTabItem, "setIndex:", moduleTabIndex);
    objj_msgSend(self._tabModules, "setObject:forKey:", currentModuleController, moduleIdentifier);
}
,["void","CPBundle"]), new objj_method(sel_getUid("_manageToolbarItemLoad:"), function $TNModuleController___manageToolbarItemLoad_(self, _cmd, aBundle)
{
    var currentModuleController,
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        moduleName = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "CPBundleName"),
        moduleLabel = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "PluginDisplayName"),
        moduleTabIndex = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "TabIndex"),
        moduleToolTip = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "ToolTip"),
        supportedTypes = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "SupportedEntityTypes"),
        moduleToolbarIndex = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "ToolbarIndex"),
        toolbarOnly = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "ToolbarItemOnly"),
        mandatoryPermissions = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "MandatoryPermissions"),
        bundleLocale = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "CPBundleLocale"),
        isFullscreen = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "FullscreenModule"),
        moduleIdentifier = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "CPBundleIdentifier"),
        frame = objj_msgSend(self._mainModuleView, "bounds"),
        moduleToolbarItem = objj_msgSend(objj_msgSend(CPToolbarItem, "alloc"), "initWithItemIdentifier:", moduleIdentifier);
    objj_msgSend(moduleToolbarItem, "setAutovalidates:", NO);
    if (objj_msgSend(moduleLabel, "isKindOfClass:", CPDictionary) && bundleLocale)
        moduleLabel = objj_msgSend(moduleLabel, "objectForKey:", objj_msgSend(defaults, "objectForKey:", "CPBundleLocale")) || objj_msgSend(moduleLabel, "objectForKey:", "en");
    if (objj_msgSend(moduleToolTip, "isKindOfClass:", CPDictionary) && bundleLocale)
        moduleToolTip = objj_msgSend(moduleToolTip, "objectForKey:", objj_msgSend(defaults, "objectForKey:", "CPBundleLocale"));
    objj_msgSend(moduleToolbarItem, "setLabel:", moduleLabel);
    objj_msgSend(moduleToolbarItem, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(aBundle, "pathForResource:", "icon.png"), CGSizeMake(32, 32)));
    objj_msgSend(moduleToolbarItem, "setAlternateImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(aBundle, "pathForResource:", "icon-alt.png"), CGSizeMake(32, 32)));
    objj_msgSend(moduleToolbarItem, "setToolTip:", moduleToolTip);
    if (toolbarOnly)
    {
        currentModuleController = objj_msgSend(objj_msgSend(objj_msgSend(aBundle, "principalClass"), "alloc"), "init");
        objj_msgSend(currentModuleController, "setHasCIB:", NO);
        objj_msgSend(moduleToolbarItem, "setTarget:", currentModuleController);
        objj_msgSend(moduleToolbarItem, "setAction:", sel_getUid("toolbarItemClicked:"));
    }
    else
    {
        currentModuleController = objj_msgSend(self, "_loadLocalizedModuleController:forBundle:", bundleLocale, aBundle);
        objj_msgSend(currentModuleController, "setHasCIB:", YES);
        objj_msgSend(objj_msgSend(currentModuleController, "view"), "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(objj_msgSend(currentModuleController, "view"), "setBackgroundColor:", self._toolbarModuleBackgroundColor);
        objj_msgSend(moduleToolbarItem, "setTarget:", self);
        objj_msgSend(moduleToolbarItem, "setAction:", sel_getUid("didToolbarModuleClicked:"));
    }
    objj_msgSend(self._mainToolbar, "addItem:withIdentifier:", moduleToolbarItem, moduleIdentifier);
    objj_msgSend(self._mainToolbar, "setPosition:forToolbarItemIdentifier:", moduleToolbarIndex, moduleIdentifier);
    objj_msgSend(currentModuleController, "initializeModule");
    objj_msgSend(currentModuleController, "setFullscreen:", isFullscreen);
    objj_msgSend(currentModuleController, "setIdentifier:", moduleIdentifier);
    objj_msgSend(currentModuleController, "setLabel:", moduleLabel);
    objj_msgSend(currentModuleController, "setMandatoryPermissions:", mandatoryPermissions);
    objj_msgSend(currentModuleController, "setModuleType:", TNArchipelModuleTypeToolbar);
    objj_msgSend(currentModuleController, "setName:", moduleName);
    objj_msgSend(currentModuleController, "setUIItem:", moduleToolbarItem);
    objj_msgSend(currentModuleController, "setUIObject:", self._mainToolbar);
    objj_msgSend(currentModuleController, "setViewPermissionDenied:", self.viewPermissionDenied);
    objj_msgSend(self._toolbarModules, "setObject:forKey:", currentModuleController, moduleIdentifier);
    objj_msgSend(currentModuleController, "_beforeWillLoad");
}
,["void","CPBundle"]), new objj_method(sel_getUid("_insertModulesMenuItems"), function $TNModuleController___insertModulesMenuItems(self, _cmd)
{
    var modulesNames = objj_msgSend(self._modulesMenuItems, "allKeys").sort(),
        sortDescriptor = objj_msgSend(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "title", YES);
    for (var k = 0; k < objj_msgSend(modulesNames, "count") ; k++)
    {
        var menuItems = objj_msgSend(self._modulesMenuItems, "objectForKey:", objj_msgSend(modulesNames, "objectAtIndex:", k)),
            sortedMenuItems = objj_msgSend(menuItems, "sortedArrayUsingDescriptors:", objj_msgSend(CPArray, "arrayWithObject:", sortDescriptor));
        for (var i = 0; i < objj_msgSend(sortedMenuItems, "count"); i++)
            objj_msgSend(self._modulesMenu, "addItem:", objj_msgSend(sortedMenuItems, "objectAtIndex:", i));
        if (k + 1 < objj_msgSend(modulesNames, "count"))
            objj_msgSend(self._modulesMenu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    }
}
,["void"]), new objj_method(sel_getUid("_loadLocalizedModuleController:forBundle:"), function $TNModuleController___loadLocalizedModuleController_forBundle_(self, _cmd, bundleLocale, aBundle)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        moduleIdentifier = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "CPBundleIdentifier"),
        moduleCibName = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "CibName"),
        localizedCibName = objj_msgSend(defaults, "objectForKey:", "CPBundleLocale") + ".lproj/" + moduleCibName,
        localizationStringsURL = objj_msgSend(aBundle, "pathForResource:", objj_msgSend(defaults, "objectForKey:", "CPBundleLocale") + ".lproj/Localizable.xstrings"),
        englishStringsURL = objj_msgSend(aBundle, "pathForResource:", "en.lproj/Localizable.xstrings"),
        plist;
    var req = new XMLHttpRequest();
    req.open("GET", localizationStringsURL, false);
    req.send(null);
    if (req.status == 200)
    {
        plist = objj_msgSend(CPPropertyListSerialization, "propertyListFromData:format:", objj_msgSend(CPData, "dataWithRawString:", req.responseText), nil);
        objj_msgSend(aBundle, "setDictionary:forTable:", plist, "Localizable");
    }
    else
    {
        var req = new XMLHttpRequest();
        req.open("GET", englishStringsURL, false);
        req.send(null);
        plist = objj_msgSend(CPPropertyListSerialization, "propertyListFromData:format:", objj_msgSend(CPData, "dataWithRawString:", req.responseText), nil)
        localizedCibName = "en.lproj/" + moduleCibName;
        objj_msgSend(aBundle, "setDictionary:forTable:", plist, "Localizable");
    }
    return objj_msgSend(objj_msgSend(objj_msgSend(aBundle, "principalClass"), "alloc"), "initWithCibName:bundle:", localizedCibName, aBundle);
}
,["id","CPString","CPBundle"]), new objj_method(sel_getUid("connection:didReceiveData:"), function $TNModuleController__connection_didReceiveData_(self, _cmd, connection, data)
{
    var cpdata = objj_msgSend(CPData, "dataWithRawString:", data);
    CPLog.info("Module.plist recovered");
    self._modulesPList = objj_msgSend(cpdata, "plistObject");
    self._numberOfModulesToLoad = objj_msgSend(objj_msgSend(self._modulesPList, "objectForKey:", "Modules"), "count");
    objj_msgSend(self, "_loadNextBundle");
}
,["void","CPURLConnection","CPString"]), new objj_method(sel_getUid("bundleDidFinishLoading:"), function $TNModuleController__bundleDidFinishLoading_(self, _cmd, aBundle)
{
    var moduleInsertionType = objj_msgSend(aBundle, "objectForInfoDictionaryKey:", "InsertionType");
    if (moduleInsertionType == TNArchipelModuleTypeTab)
        objj_msgSend(self, "_manageTabItemLoad:", aBundle);
    else if (moduleInsertionType == TNArchipelModuleTypeToolbar)
        objj_msgSend(self, "_manageToolbarItemLoad:", aBundle);
    self._numberOfModulesLoaded++;
    CPLog.debug("Loaded " + self._numberOfModulesLoaded + " module(s) of " + self._numberOfModulesToLoad)
    if (self._numberOfModulesLoaded == self._numberOfModulesToLoad)
    {
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNArchipelModulesLoadingCompleteNotification, self);
        if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("moduleLoaderLoadingComplete:")))
            objj_msgSend(self._delegate, "moduleLoaderLoadingComplete:", self);
        objj_msgSend(self, "_insertModulesMenuItems");
        var idx = objj_msgSend(objj_msgSend(self._tabModules, "allValues"), "count");
        for (var i = 0; i < idx; i++)
        {
            var module = objj_msgSend(objj_msgSend(self._tabModules, "allValues"), "objectAtIndex:", i);
            objj_msgSend(module, "allModulesLoaded");
        }
        idx = objj_msgSend(objj_msgSend(self._toolbarModules, "allValues"), "count");
        for (var i = 0; i < idx; i++)
        {
            var module = objj_msgSend(objj_msgSend(self._toolbarModules, "allValues"), "objectAtIndex:", i);
            objj_msgSend(module, "allModulesLoaded");
        }
    }
    else
    {
        if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("moduleLoader:loadedBundle:progress:")))
            objj_msgSend(self._delegate, "moduleLoader:loadedBundle:progress:", self, aBundle, (self._numberOfModulesLoaded / self._numberOfModulesToLoad));
        objj_msgSend(self, "_loadNextBundle");
    }
}
,["void","CPBundle"]), new objj_method(sel_getUid("_populateModulesTabView"), function $TNModuleController___populateModulesTabView(self, _cmd)
{
    var sortDescriptor = objj_msgSend(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "index", YES),
        sortedValue = objj_msgSend(objj_msgSend(self._tabModules, "allValues"), "sortedArrayUsingDescriptors:", [sortDescriptor]),
        mainModuleViewFrame = objj_msgSend(self._mainModuleView, "bounds");
    self._numberOfActiveModules = 0;
    self._deactivateModuleTabItemPositionStorage = YES;
    objj_msgSend(self._mainTabView, "setDelegate:", nil);
    for (var i = 0; i < objj_msgSend(sortedValue, "count"); i++)
    {
        var module = objj_msgSend(sortedValue, "objectAtIndex:", i),
            moduleTypes = objj_msgSend(module, "supportedEntityTypes"),
            scrollView = objj_msgSend(objj_msgSend(module, "UIItem"), "view");
        if (!objj_msgSend(moduleTypes, "containsObject:", self._moduleType))
            continue;
        objj_msgSend(scrollView, "setFrame:", mainModuleViewFrame);
        if (objj_msgSend(module, "isFullscreen"))
        {
            objj_msgSend(objj_msgSend(module, "view"), "setFrame:", mainModuleViewFrame);
            objj_msgSend(objj_msgSend(module, "view"), "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        }
        else
        {
            mainModuleViewFrame.size.height = objj_msgSend(objj_msgSend(module, "view"), "bounds").size.height;
            objj_msgSend(objj_msgSend(module, "view"), "setFrame:", mainModuleViewFrame);
        }
        objj_msgSend(module, "setEntity:", self._entity);
        objj_msgSend(self._mainTabView, "addTabViewItem:", objj_msgSend(module, "UIItem"));
        if (objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "arePermissionsCachedForEntity:", self._entity))
            objj_msgSend(module, "_beforeWillLoad");
        self._numberOfActiveModules++;
    }
    self._deactivateModuleTabItemPositionStorage = NO;
    objj_msgSend(self, "recoverFromLastSelectedIndex");
    objj_msgSend(self._mainTabView, "setDelegate:", self);
    var currentModule = objj_msgSend(self._tabModules, "objectForKey:", objj_msgSend(objj_msgSend(self._mainTabView, "selectedTabViewItem"), "identifier"));
    objj_msgSend(currentModule, "setCurrentSelectedIndex:", YES);
    if (objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "arePermissionsCachedForEntity:", self._entity))
        objj_msgSend(currentModule, "willShow");
}
,["void"]), new objj_method(sel_getUid("_removeAllTabsFromModulesTabView"), function $TNModuleController___removeAllTabsFromModulesTabView(self, _cmd)
{
    if (objj_msgSend(self._mainTabView, "numberOfTabViewItems") <= 0)
        return;
    var arrayCpy = objj_msgSend(CPArray, "arrayWithArray:", objj_msgSend(self._mainTabView, "tabViewItems"));
    self._numberOfActiveModules = 0;
    objj_msgSend(self._mainTabView, "setDelegate:", nil);
    for (var i = 0; i < objj_msgSend(arrayCpy, "count"); i++)
    {
        var tabViewItem = objj_msgSend(arrayCpy, "objectAtIndex:", i),
            module = objj_msgSend(tabViewItem, "module");
        if (objj_msgSend(module, "isVisible"))
            objj_msgSend(module, "willHide");
        objj_msgSend(module, "setCurrentSelectedIndex:", NO);
        objj_msgSend(module, "willUnload");
        objj_msgSend(module, "setEntity:", nil);
        objj_msgSend(objj_msgSend(module, "view"), "scrollPoint:", CPMakePoint(0.0, 0.0));
        objj_msgSend(self._mainTabView, "removeTabViewItem:", tabViewItem);
    }
    objj_msgSend(self._mainTabView, "setDelegate:", self);
}
,["void"]), new objj_method(sel_getUid("tabView:shouldSelectTabViewItem:"), function $TNModuleController__tabView_shouldSelectTabViewItem_(self, _cmd, aTabView, anItem)
{
    if (objj_msgSend(aTabView, "numberOfTabViewItems") <= 0)
        return YES;
    var currentTabItem = objj_msgSend(aTabView, "selectedTabViewItem");
    if (!currentTabItem)
        return YES;
    var currentModule = objj_msgSend(currentTabItem, "module");
    return objj_msgSend(currentModule, "shouldHideAndSelectItem:ofObject:", anItem, aTabView);
}
,["BOOL","TNTabView","TNModuleTabViewItem"]), new objj_method(sel_getUid("tabView:willSelectTabViewItem:"), function $TNModuleController__tabView_willSelectTabViewItem_(self, _cmd, aTabView, anItem)
{
    if (objj_msgSend(aTabView, "numberOfTabViewItems") <= 0)
        return;
    var currentTabItem = objj_msgSend(aTabView, "selectedTabViewItem");
    if (currentTabItem)
    {
        var oldModule = objj_msgSend(currentTabItem, "module");
        objj_msgSend(oldModule, "willHide");
        objj_msgSend(oldModule, "setCurrentSelectedIndex:", NO);
        objj_msgSend(self, "rememberSelectedIndexForItem:", anItem);
    }
    var newModule = objj_msgSend(anItem, "module");
    objj_msgSend(newModule, "setCurrentSelectedIndex:", YES);
    objj_msgSend(newModule, "willShow");
}
,["void","TNTabView","TNModuleTabViewItem"]), new objj_method(sel_getUid("didToolbarModuleClicked:"), function $TNModuleController__didToolbarModuleClicked_(self, _cmd, sender)
{
    if (!self._allowToolbarSwitching)
        return;
    var newModule = objj_msgSend(self._toolbarModules, "objectForKey:", objj_msgSend(sender, "itemIdentifier")),
        useAnimation = objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "boolForKey:", "TNArchipelUseAnimations"),
        oldModule;
    if (self._currentToolbarModule)
    {
        oldModule = self._currentToolbarModule;
        self._currentToolbarModule = nil;
        objj_msgSend(self._mainToolbar, "deselectToolbarItem");
        objj_msgSend(oldModule, "willHide");
        objj_msgSend(self._animationToolBarModuleHide, "setUserInfo:", oldModule);
        if (useAnimation)
            objj_msgSend(self._animationToolBarModuleHide, "startAnimation");
        else
            objj_msgSend(self, "animation:valueForProgress:", self._animationToolBarModuleHide, 1.0);
    }
    if (newModule != oldModule)
    {
        var frame = objj_msgSend(objj_msgSend(objj_msgSend(CPApp, "mainWindow"), "contentView"), "bounds");
        frame.size.height -= 25;
        frame.origin.y = -frame.size.height ;
        objj_msgSend(objj_msgSend(newModule, "view"), "setFrame:", frame);
        objj_msgSend(newModule, "setUIItem:", sender);
        objj_msgSend(objj_msgSend(objj_msgSend(CPApp, "mainWindow"), "contentView"), "addSubview:", objj_msgSend(newModule, "view"));
        self._currentToolbarModule = newModule;
        objj_msgSend(self._mainToolbar, "selectToolbarItem:", sender);
        objj_msgSend(objj_msgSend(newModule, "view"), "setBackgroundColor:", self._toolbarModuleBackgroundColor);
        objj_msgSend(newModule, "willShow");
        objj_msgSend(self._animationToolBarModuleShow, "setUserInfo:", newModule);
        if (useAnimation)
            objj_msgSend(self._animationToolBarModuleShow, "startAnimation");
        else
            objj_msgSend(self, "animation:valueForProgress:", self._animationToolBarModuleShow, 1.0);
    }
}
,["id","CPToolbarItem"]), new objj_method(sel_getUid("animation:valueForProgress:"), function $TNModuleController__animation_valueForProgress_(self, _cmd, animation, progress)
{
    var module = objj_msgSend(animation, "userInfo"),
        view = objj_msgSend(module, "view"),
        frame = objj_msgSend(view, "frame");
    self._allowToolbarSwitching = NO;
    if (animation === self._animationToolBarModuleShow)
    {
        frame.origin.y = -frame.size.height + (frame.size.height * progress);
        objj_msgSend(view, "setFrame:", frame);
        if (progress == 1.0)
            self._allowToolbarSwitching = YES;
    }
    else if (animation === self._animationToolBarModuleHide)
    {
        frame.origin.y = - (frame.size.height * progress);
        objj_msgSend(view, "setFrame:", frame);
        if (progress == 1.0)
        {
            objj_msgSend(view, "removeFromSuperview");
            self._allowToolbarSwitching = YES;
        }
    }
}
,["float","CPAnimation","float"])]);
}p;45;Controllers/TNNotificationHistoryController.jt;2834;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;25;AppKit/CPCollectionView.jI;20;AppKit/CPImageView.jI;15;AppKit/CPView.jI;17;AppKit/CPWindow.jI;29;TNKit/TNTableViewDataSource.jI;33;GrowlCappuccino/GrowlCappuccino.jt;2596;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPCollectionView.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("GrowlCappuccino/GrowlCappuccino.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNNotificationHistoryController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonClear"), new objj_ivar("tableHistory"), new objj_ivar("mainWindow"), new objj_ivar("_datasourceNotification")]);
       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("mainWindow"), function $TNNotificationHistoryController__mainWindow(self, _cmd)
{
return self.mainWindow;
}
,["CPWindow"]), new objj_method(sel_getUid("awakeFromCib"), function $TNNotificationHistoryController__awakeFromCib(self, _cmd)
{
    var columnIcon = objj_msgSend(self.tableHistory, "tableColumnWithIdentifier:", "icon"),
        imageView = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMake(0,0,16,16));
    objj_msgSend(imageView, "setImageScaling:", CPScaleProportionally);
    objj_msgSend(columnIcon, "setWidth:", 16);
    objj_msgSend(columnIcon, "setDataView:", imageView)
    self._datasourceNotification = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self._datasourceNotification, "setTable:", self.tableHistory);
    objj_msgSend(self.tableHistory, "setDataSource:", self._datasourceNotification);
}
,["void"]), new objj_method(sel_getUid("showWindow:"), function $TNNotificationHistoryController__showWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.tableHistory, "setNeedsLayout");
    objj_msgSend(self._datasourceNotification, "setContent:", objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "notificationsHistory"));
    objj_msgSend(self.tableHistory, "reloadData");
    objj_msgSend(self.mainWindow, "center");
    objj_msgSend(self.mainWindow, "makeKeyAndOrderFront:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("cleanHistory:"), function $TNNotificationHistoryController__cleanHistory_(self, _cmd, aSender)
{
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "clearHistory");
    objj_msgSend(self._datasourceNotification, "setContent:", objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "notificationsHistory"));
    objj_msgSend(self.tableHistory, "reloadData");
}
,["id","id"])]);
}p;33;Controllers/TNPermissionsCenter.jt;25180;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPImageView.jI;31;GrowlCappuccino/TNGrowlCenter.jI;28;StropheCappuccino/TNPubSub.jI;36;StropheCappuccino/TNStropheContact.jI;37;StropheCappuccino/TNStropheIMClient.jI;32;StropheCappuccino/TNStropheJID.jI;35;StropheCappuccino/TNStropheStanza.ji;30;../Resources/admin-accounts.jst;24843;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("GrowlCappuccino/TNGrowlCenter.j", NO);
objj_executeFile("StropheCappuccino/TNPubSub.j", NO);
objj_executeFile("StropheCappuccino/TNStropheContact.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("StropheCappuccino/TNStropheJID.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("../Resources/admin-accounts.js", YES);
//@class CPLocalizedString
//@global TNArchipelEntityTypeUser
//@global CPWindowAbove
TNPermissionsValidationModeBare = 0;
TNPermissionsValidationModeNode = 1;
TNPermissionsAdminListUpdatedNotification = "TNPermissionsAdminListUpdatedNotification";
var TNArchipelPushNotificationPermissions = "archipel:push:permissions",
    TNArchipelTypePermissions = "archipel:permissions",
    TNArchipelTypePermissionsGetOwn = "getown";
var __defaultPermissionCenter;
{var the_class = objj_allocateClassPair(CPObject, "TNPermissionsCenter"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_adminAccounts"), new objj_ivar("_cachedPermissions"), new objj_ivar("_adminAccountValidationMode"), new objj_ivar("_delegates"), new objj_ivar("_disableBadgesRegistry"), new objj_ivar("_imageViewControlDisabledPrototype"), new objj_ivar("_pubsubAdminAccounts")]);
       
       

       
       












       
       

       
       




       
       

       
       




       
       






objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("adminAccounts"), function $TNPermissionsCenter__adminAccounts(self, _cmd)
{
return self._adminAccounts;
}
,["CPDictionary"]), new objj_method(sel_getUid("_setAdminAccounts:"), function $TNPermissionsCenter___setAdminAccounts_(self, _cmd, newValue)
{
self._adminAccounts = newValue;
}
,["void","CPDictionary"]), new objj_method(sel_getUid("permissions"), function $TNPermissionsCenter__permissions(self, _cmd)
{
return self._cachedPermissions;
}
,["CPDictionary"]), new objj_method(sel_getUid("_setCachedPermissions:"), function $TNPermissionsCenter___setCachedPermissions_(self, _cmd, newValue)
{
self._cachedPermissions = newValue;
}
,["void","CPDictionary"]), new objj_method(sel_getUid("validationMode"), function $TNPermissionsCenter__validationMode(self, _cmd)
{
return self._adminAccountValidationMode;
}
,["int"]), new objj_method(sel_getUid("_setAdminAccountValidationMode:"), function $TNPermissionsCenter___setAdminAccountValidationMode_(self, _cmd, newValue)
{
self._adminAccountValidationMode = newValue;
}
,["void","int"]), new objj_method(sel_getUid("init"), function $TNPermissionsCenter__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNPermissionsCenter").super_class }, "init"))
    {
        self._cachedPermissions = objj_msgSend(CPDictionary, "dictionary");
        self._delegates = objj_msgSend(CPArray, "array");
        self._disableBadgesRegistry = objj_msgSend(CPDictionary, "dictionary");
        self._imageViewControlDisabledPrototype = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 16.0, 16.0));
        self._adminAccountValidationMode = objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "objectForInfoDictionaryKey:", "ArchipelCheckNodeAdminAccount");
        objj_msgSend(self, "resetAdminAccounts");
        objj_msgSend(self._imageViewControlDisabledPrototype, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "denied.png"), CGSizeMake(16.0, 16.0)));
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("resetAdminAccounts"), function $TNPermissionsCenter__resetAdminAccounts(self, _cmd)
{
    self._adminAccounts = objj_msgSend(CPDictionary, "dictionary");
    var defaultStaticAccounts = objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "objectForInfoDictionaryKey:", "ArchipelDefaultAdminAccounts");
    for (var i = 0; i < objj_msgSend(defaultStaticAccounts, "count"); i++)
    {
        var item = objj_msgSend(defaultStaticAccounts, "objectAtIndex:", i);
        objj_msgSend(self._adminAccounts, "setObject:forKey:", item, "STATIC_" + item);
    }
    for (var i = 0; i < objj_msgSend(ARCHIPEL_ADMIN_ACCOUNTS_ARRAY, "count"); i++)
    {
        var item = objj_msgSend(ARCHIPEL_ADMIN_ACCOUNTS_ARRAY, "objectAtIndex:", i);
        objj_msgSend(self._adminAccounts, "setObject:forKey:", item, "STATIC_" + item);
    }
}
,["void"]), new objj_method(sel_getUid("addDelegate:"), function $TNPermissionsCenter__addDelegate_(self, _cmd, anObject)
{
    objj_msgSend(self._delegates, "addObject:", anObject);
}
,["void","id"]), new objj_method(sel_getUid("removeDelegate:"), function $TNPermissionsCenter__removeDelegate_(self, _cmd, anObject)
{
    objj_msgSend(self._delegates, "removeObject:", anObject);
}
,["void","id"]), new objj_method(sel_getUid("watchPubSubs"), function $TNPermissionsCenter__watchPubSubs(self, _cmd)
{
    objj_msgSend(TNPubSubNode, "registerSelector:ofObject:forPubSubEventWithConnection:", sel_getUid("_onPermissionsPubSubEvents:"), self, objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"));
    self._pubsubAdminAccounts = objj_msgSend(TNPubSubNode, "pubSubNodeWithNodeName:connection:pubSubServer:", "/archipel/adminaccounts", objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"), nil);
    objj_msgSend(self._pubsubAdminAccounts, "setDelegate:", self);
    objj_msgSend(self._pubsubAdminAccounts, "retrieveItems");
    objj_msgSend(self._pubsubAdminAccounts, "recoverSubscriptions");
    objj_msgSend(self._pubsubAdminAccounts, "retrieveAffiliations");
}
,["void"]), new objj_method(sel_getUid("cachePermissionsForEntityIfNeeded:"), function $TNPermissionsCenter__cachePermissionsForEntityIfNeeded_(self, _cmd, aContact)
{
    if (!objj_msgSend(self._cachedPermissions, "containsKey:", aContact))
    {
        objj_msgSend(self, "getPermissionForEntity:", aContact);
        return NO;
    }
    return YES;
}
,["BOOL","TNStropheContact"]), new objj_method(sel_getUid("uncachePermissionsForEntity:"), function $TNPermissionsCenter__uncachePermissionsForEntity_(self, _cmd, aContact)
{
    if (objj_msgSend(self._cachedPermissions, "containsKey:", aContact))
        objj_msgSend(self._cachedPermissions, "removeObjectForKey:", aContact);
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("arePermissionsCachedForEntity:"), function $TNPermissionsCenter__arePermissionsCachedForEntity_(self, _cmd, aContact)
{
    if (!objj_msgSend(aContact, "isKindOfClass:", TNStropheContact))
        return YES;
    if (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(aContact, "vCard")) == TNArchipelEntityTypeUser)
        return YES;
    return objj_msgSend(self._cachedPermissions, "containsKey:", aContact);
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("hasPermissions:forEntity:"), function $TNPermissionsCenter__hasPermissions_forEntity_(self, _cmd, somePermissions, anEntity)
{
    for (var i = 0; i < objj_msgSend(somePermissions, "count"); i++)
    {
        if (!objj_msgSend(anEntity, "isKindOfClass:", TNStropheContact))
            return NO;
        if (((self._adminAccountValidationMode === TNPermissionsValidationModeNode)
                && objj_msgSend(objj_msgSend(self._adminAccounts, "allValues"), "containsObject:", objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"), "node")))
            || ((self._adminAccountValidationMode === TNPermissionsValidationModeBare)
                && objj_msgSend(objj_msgSend(self._adminAccounts, "allValues"), "containsObject:", objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"), "bare"))))
            return YES;
        if (objj_msgSend(objj_msgSend(self._cachedPermissions, "objectForKey:", anEntity), "containsObject:", "all"))
            return YES;
        if (!objj_msgSend(objj_msgSend(self._cachedPermissions, "objectForKey:", anEntity), "containsObject:", objj_msgSend(somePermissions, "objectAtIndex:", i)))
            return NO;
    }
    return YES;
}
,["BOOL","CPArray","TNStropheContact"]), new objj_method(sel_getUid("hasPermission:forEntity:"), function $TNPermissionsCenter__hasPermission_forEntity_(self, _cmd, aPermission, anEntity)
{
    return objj_msgSend(self, "hasPermissions:forEntity:", [aPermission], anEntity);
}
,["BOOL","CPString","TNStropheContact"]), new objj_method(sel_getUid("containsCachedPermissionsForEntity:"), function $TNPermissionsCenter__containsCachedPermissionsForEntity_(self, _cmd, anEntity)
{
    return objj_msgSend(self._cachedPermissions, "containsKey:", anEntity);
}
,["BOOL","TNStropheContact"]), new objj_method(sel_getUid("isJIDInAdminList:"), function $TNPermissionsCenter__isJIDInAdminList_(self, _cmd, aJID)
{
    var JIDTranslation = (self._adminAccountValidationMode === TNPermissionsValidationModeBare) ? objj_msgSend(aJID, "bare") : objj_msgSend(aJID, "node");
    return (objj_msgSend(objj_msgSend(self._adminAccounts, "allKeysForObject:", JIDTranslation), "count") > 0);
}
,["BOOL","TNStropheJID"]), new objj_method(sel_getUid("isCurrentUserInAdminList"), function $TNPermissionsCenter__isCurrentUserInAdminList(self, _cmd)
{
    return objj_msgSend(self, "isJIDInAdminList:", objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"));
}
,["BOOL"]), new objj_method(sel_getUid("_onPermissionsPubSubEvents:"), function $TNPermissionsCenter___onPermissionsPubSubEvents_(self, _cmd, aStanza)
{
    var type = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "push"), "valueForAttribute:", "xmlns");
    if (type != TNArchipelPushNotificationPermissions)
        return YES;
    var sender = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "items"), "valueForAttribute:", "node").split("/")[2],
        user = objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "push"), "valueForAttribute:", "change"));
    if (!objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"), "bareEquals:", user) && user != "admins")
        return YES;
    var anEntity = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contactWithBareJID:", objj_msgSend(TNStropheJID, "stropheJIDWithString:", sender));
    if (objj_msgSend(self._cachedPermissions, "containsKey:", anEntity))
    {
        objj_msgSend(self._cachedPermissions, "removeObjectForKey:", anEntity);
        CPLog.info("cache for entity " + anEntity + " has been invalidated");
    }
    objj_msgSend(self, "getPermissionForEntity:", anEntity);
    return YES;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("generateBadgeKeyForControl:"), function $TNPermissionsCenter__generateBadgeKeyForControl_(self, _cmd, aControl)
{
    var key = "" + aControl + "";
    return key.replace(" ", "_");
}
,["CPString","CPControl"]), new objj_method(sel_getUid("addBadgeWithKey:toControl:"), function $TNPermissionsCenter__addBadgeWithKey_toControl_(self, _cmd, aKey, aControl)
{
    if (objj_msgSend(self._disableBadgesRegistry, "containsKey:", aKey))
        return;
    var data = objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", self._imageViewControlDisabledPrototype),
        badge = objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", data);
    objj_msgSend(badge, "setFrameOrigin:", CGPointMake(CGRectGetWidth(objj_msgSend(aControl, "frame")) - 16.0, CGRectGetHeight(objj_msgSend(aControl, "frame")) - 16.0));
    objj_msgSend(aControl, "addSubview:positioned:relativeTo:", badge, CPWindowAbove, nil);
    objj_msgSend(self._disableBadgesRegistry, "setObject:forKey:", badge, aKey);
}
,["void","CPString","CPControl"]), new objj_method(sel_getUid("addBadgeWithKey:toSegmentedControl:segment:"), function $TNPermissionsCenter__addBadgeWithKey_toSegmentedControl_segment_(self, _cmd, aKey, aSegmentedControl, aSegment)
{
    if (objj_msgSend(self._disableBadgesRegistry, "containsKey:", aKey))
        return;
    var data = objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", self._imageViewControlDisabledPrototype),
        badge = objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", data),
        segment = objj_msgSend(aSegmentedControl, "segment:", aSegment);
    objj_msgSend(badge, "setFrameOrigin:", CGPointMake(CGRectGetWidth(objj_msgSend(segment, "frame")) - 16.0 + objj_msgSend(segment, "frame").origin.x, CGRectGetHeight(objj_msgSend(segment, "frame")) - 16.0));
    objj_msgSend(aSegmentedControl, "addSubview:positioned:relativeTo:", badge, CPWindowAbove, nil);
    objj_msgSend(self._disableBadgesRegistry, "setObject:forKey:", badge, aKey);
}
,["void","CPString","CPControl","int"]), new objj_method(sel_getUid("removeBadgeWithKey:"), function $TNPermissionsCenter__removeBadgeWithKey_(self, _cmd, aKey)
{
    if (objj_msgSend(self._disableBadgesRegistry, "containsKey:", aKey))
    {
        objj_msgSend(objj_msgSend(self._disableBadgesRegistry, "objectForKey:", aKey), "removeFromSuperview");
        objj_msgSend(self._disableBadgesRegistry, "removeObjectForKey:", aKey);
    }
}
,["void","CPString"]), new objj_method(sel_getUid("setControl:segment:enabledAccordingToPermissions:forEntity:specialCondition:"), function $TNPermissionsCenter__setControl_segment_enabledAccordingToPermissions_forEntity_specialCondition_(self, _cmd, aControl, aSegment, somePermissions, anEntity, aSpecialCondition)
{
    var permissionCenter = objj_msgSend(TNPermissionsCenter, "defaultCenter");
    if (objj_msgSend(self, "hasPermissions:forEntity:", somePermissions, anEntity))
    {
        if (aSegment !== nil)
            objj_msgSend(permissionCenter, "removeBadgeWithKey:", objj_msgSend(self, "generateBadgeKeyForControl:", objj_msgSend(aControl, "segment:", aSegment)));
        else
            objj_msgSend(permissionCenter, "removeBadgeWithKey:", objj_msgSend(self, "generateBadgeKeyForControl:", aControl));
        if (aSpecialCondition)
        {
            if (aSegment !== nil)
                objj_msgSend(aControl, "setEnabled:forSegment:", YES, aSegment);
            else
                objj_msgSend(aControl, "setEnabled:", YES);
        }
        else
        {
            if (aSegment !== nil)
                objj_msgSend(aControl, "setEnabled:forSegment:", NO, aSegment);
            else
                objj_msgSend(aControl, "setEnabled:", NO);
        }
    }
    else
    {
        if (aSegment !== nil)
        {
            objj_msgSend(aControl, "setEnabled:forSegment:", NO, aSegment);
            objj_msgSend(permissionCenter, "addBadgeWithKey:toSegmentedControl:segment:", objj_msgSend(self, "generateBadgeKeyForControl:", objj_msgSend(aControl, "segment:", aSegment)), aControl, aSegment);
        }
        else
        {
            objj_msgSend(aControl, "setEnabled:", NO)
            objj_msgSend(permissionCenter, "addBadgeWithKey:toControl:", objj_msgSend(self, "generateBadgeKeyForControl:", aControl), aControl);
        }
    }
}
,["void","CPControl","int","CPArray","TNStropheContact","BOOL"]), new objj_method(sel_getUid("getPermissionForEntity:"), function $TNPermissionsCenter__getPermissionForEntity_(self, _cmd, anEntity)
{
    if (!anEntity || (!objj_msgSend(anEntity, "isKindOfClass:", TNStropheContact)) || objj_msgSend(anEntity, "XMPPShow") == TNStropheContactStatusOffline)
        return;
    CPLog.info("Ask permission to entity for entity " + anEntity);
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypePermissions});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypePermissionsGetOwn,
        "permission_type": "user",
        "permission_target": objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"), "bare")});
    objj_msgSend(anEntity, "sendStanza:andRegisterSelector:ofObject:userInfo:", stanza, sel_getUid("_didReceivePermissions:ofEntity:"), self, anEntity);
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("_didReceivePermissions:ofEntity:"), function $TNPermissionsCenter___didReceivePermissions_ofEntity_(self, _cmd, aStanza, anEntity)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var permissions = objj_msgSend(aStanza, "childrenWithName:", "permission"),
            defaultAdminAccount = objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "objectForInfoDictionaryKey:", "ArchipelDefaultAdminAccount");
        objj_msgSend(self._cachedPermissions, "setObject:forKey:", objj_msgSend(CPArray, "array"), anEntity);
        for (var i = 0; i < objj_msgSend(permissions, "count"); i++)
        {
            var permission = objj_msgSend(permissions, "objectAtIndex:", i),
                name = objj_msgSend(permission, "valueForAttribute:", "name");
            objj_msgSend(objj_msgSend(self._cachedPermissions, "objectForKey:", anEntity), "addObject:", name);
        }
        CPLog.info("Permissions for entity " + anEntity + " sucessfully cached");
        for (var i = 0 ; i < objj_msgSend(self._delegates, "count"); i++)
        {
            var delegate = objj_msgSend(self._delegates, "objectAtIndex:", i);
            if (objj_msgSend(delegate, "respondsToSelector:", sel_getUid("permissionCenter:updatePermissionForEntity:")))
                objj_msgSend(delegate, "permissionCenter:updatePermissionForEntity:", self, anEntity);
        }
    }
    else
    {
        CPLog.error("error in _didReceivePermissions " + aStanza);
    }
}
,["void","TNStropheStanza","TNStropheContact"]), new objj_method(sel_getUid("addAdminAccount:"), function $TNPermissionsCenter__addAdminAccount_(self, _cmd, aJID)
{
    if (objj_msgSend(self, "isJIDInAdminList:", aJID))
        return;
    var newAccount = objj_msgSend(TNXMLNode, "nodeWithName:", "admin");
    objj_msgSend(newAccount, "setValue:forAttribute:", objj_msgSend(aJID, "node"), "node");
    objj_msgSend(newAccount, "setValue:forAttribute:", objj_msgSend(aJID, "domain"), "domain");
    objj_msgSend(self._pubsubAdminAccounts, "publishItem:", newAccount);
    objj_msgSend(self._pubsubAdminAccounts, "changeAffiliation:forJID:", TNPubSubNodeAffiliationOwner, aJID);
}
,["void","TNStropheJID"]), new objj_method(sel_getUid("removeAdminAccount:"), function $TNPermissionsCenter__removeAdminAccount_(self, _cmd, aJID)
{
    var JIDTranslation = (self._adminAccountValidationMode === TNPermissionsValidationModeBare) ? objj_msgSend(aJID, "bare") : objj_msgSend(aJID, "node"),
        keys = objj_msgSend(self._adminAccounts, "allKeysForObject:", JIDTranslation);
    objj_msgSend(self._pubsubAdminAccounts, "retractItemsWithIDs:", keys)
    objj_msgSend(self._pubsubAdminAccounts, "changeAffiliation:forJID:", TNPubSubNodeAffiliationNone, aJID);
}
,["void","TNStropheJID"]), new objj_method(sel_getUid("pubSubNode:retrievedItems:"), function $TNPermissionsCenter__pubSubNode_retrievedItems_(self, _cmd, aPubSubNode, didRetrieveItems)
{
    if (aPubSubNode !== self._pubsubAdminAccounts)
        return;
    objj_msgSend(self, "resetAdminAccounts");
    var contents = objj_msgSend(self._pubsubAdminAccounts, "content");
    for (var i = 0; i < objj_msgSend(contents, "count"); i++)
    {
        var item = objj_msgSend(contents, "objectAtIndex:", i),
            itemId = objj_msgSend(item, "valueForAttribute:", "id"),
            adminAccount = objj_msgSend(objj_msgSend(item, "firstChildWithName:", "admin"), "valueForAttribute:", "node");
        if (self._adminAccountValidationMode === TNPermissionsValidationModeBare)
            adminAccount = objj_msgSend(CPString, "stringWithFormat:", "%s@%s", objj_msgSend(objj_msgSend(item, "firstChildWithName:", "admin"), "valueForAttribute:", "node"), objj_msgSend(objj_msgSend(item, "firstChildWithName:", "admin"), "valueForAttribute:", "domain"));
        objj_msgSend(self._adminAccounts, "setObject:forKey:", adminAccount, itemId);
    }
}
,["void","TNPubSubNode","BOOL"]), new objj_method(sel_getUid("pubSubNode:retrievedSubscriptions:"), function $TNPermissionsCenter__pubSubNode_retrievedSubscriptions_(self, _cmd, aPubSubNode, areSubscriptionsRetrieved)
{
    if (aPubSubNode !== self._pubsubAdminAccounts)
        return;
    if (areSubscriptionsRetrieved)
    {
        CPLog.info("sucessfully subscriptions retreived for node " + objj_msgSend(aPubSubNode, "name"));
        if (objj_msgSend(aPubSubNode, "numberOfSubscriptions") == 0)
            objj_msgSend(aPubSubNode, "subscribe");
    }
    else
        CPLog.info("cannot retrieve subscriptions for node " + objj_msgSend(aPubSubNode, "name"));
}
,["void","TNPubSubNode","BOOL"]), new objj_method(sel_getUid("pubSubNode:receivedEvent:"), function $TNPermissionsCenter__pubSubNode_receivedEvent_(self, _cmd, aPubSubNode, aStanza)
{
    if (aPubSubNode !== self._pubsubAdminAccounts)
        return;
    if (!objj_msgSend(aStanza, "containsChildrenWithName:", "headers"))
        return;
    objj_msgSend(self._pubsubAdminAccounts, "retrieveItems");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNPermissionsAdminListUpdatedNotification, self);
}
,["void","TNPubSubNode","TNStropheStanza"]), new objj_method(sel_getUid("pubSubNode:publishedItem:"), function $TNPermissionsCenter__pubSubNode_publishedItem_(self, _cmd, aPubSubNode, aStanza)
{
    if (aPubSubNode !== self._pubsubAdminAccounts)
        return;
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", CPLocalizedString("Admin rights", "Admin rights"), CPLocalizedString("User admin rights successfully granted", "User admin rights successfully granted"));
    }
    else
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", CPLocalizedString("Admin rights", "Admin rights"), CPLocalizedString("Unable to grant admin rights to users. See log", "Unable to grant admin rights to users. See log"), TNGrowlIconError);
        CPLog.error("Unable to grant admin rights to users");
        CPLog.error(aStanza);
    }
}
,["void","TNPubSubNode","TNStropheStanza"]), new objj_method(sel_getUid("pubSubNode:retractedItem:"), function $TNPermissionsCenter__pubSubNode_retractedItem_(self, _cmd, aPubSubNode, aStanza)
{
    if (aPubSubNode !== self._pubsubAdminAccounts)
        return;
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", CPLocalizedString("Admin rights", "Admin rights"), CPLocalizedString("User admin rights successfuly revoked", "User admin rights successfuly revoked"));
    }
    else
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", CPLocalizedString("Admin rights", "Admin rights"), CPLocalizedString("Unable to revoke admin rights to users. See log", "Unable to revoke admin rights to users. See log"), TNGrowlIconError);
        CPLog.error("Unable to grant admin rights to users");
        CPLog.error(aStanza);
    }
}
,["void","TNPubSubNode","TNStropheStanza"]), new objj_method(sel_getUid("pubSubNode:retrievedAffiliations:"), function $TNPermissionsCenter__pubSubNode_retrievedAffiliations_(self, _cmd, aPubSubNode, aStanza)
{
    if (aPubSubNode !== self._pubsubAdminAccounts)
        return;
    if (objj_msgSend(aStanza, "type") == "result")
        CPLog.info("affiliations successfully retrieved: " + objj_msgSend(aPubSubNode, "affiliations"));
    else
        CPLog.error("Cannot retrieve affiliations: " + aStanza);
}
,["void","TNPubSubNode","TNStropheStanza"]), new objj_method(sel_getUid("pubSubNode:changedAffiliations:"), function $TNPermissionsCenter__pubSubNode_changedAffiliations_(self, _cmd, aPubSubNode, aStanza)
{
    if (aPubSubNode !== self._pubsubAdminAccounts)
        return;
    if (objj_msgSend(aStanza, "type") == "result")
        CPLog.info("successfully change affiliations: " + objj_msgSend(aPubSubNode, "affiliations"));
    else
        CPLog.error("Cannot change affiliations: " + aStanza);
}
,["void","TNPubSubNode","TNStropheStanza"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultCenter"), function $TNPermissionsCenter__defaultCenter(self, _cmd)
{
    if (!__defaultPermissionCenter)
        __defaultPermissionCenter = objj_msgSend(objj_msgSend(TNPermissionsCenter, "alloc"), "init");
    return __defaultPermissionCenter;
}
,["TNPermissionsCenter"])]);
}p;37;Controllers/TNPreferencesController.jt;23874;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;19;AppKit/CPCheckBox.jI;22;AppKit/CPPopUpButton.jI;18;AppKit/CPTabView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;17;AppKit/CPWindow.jI;21;AppKit/CPScrollView.jI;15;TNKit/TNAlert.jI;31;GrowlCappuccino/TNGrowlCenter.jI;37;StropheCappuccino/TNStropheIMClient.jI;43;StropheCappuccino/TNStrophePrivateStorage.jI;35;StropheCappuccino/TNStropheStanza.ji;19;../Views/TNSwitch.jt;23427;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPCheckBox.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPTabView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("AppKit/CPScrollView.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("GrowlCappuccino/TNGrowlCenter.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("StropheCappuccino/TNStrophePrivateStorage.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("../Views/TNSwitch.j", YES);
//@class CPLocalizedString
//@global CPApp
//@global TNArchipelRosterOutlineViewReload
//@global TNArchipelModulesLoadingCompleteNotification
//@global TNStrophePrivateStorageSetNotification
//@global TNStrophePrivateStorageSetErrorNotification
//@global TNStrophePrivateStorageGetErrorNotification
TNPreferencesControllerSavePreferencesRequestNotification = "TNPreferencesControllerSavePreferencesRequestNotification";
var TNArchipelXMPPPrivateStoragePrefsNamespace = "archipel:preferences",
    TNArchipelXMPPPrivateStoragePrefsKey = "archipel";
TNPreferencesControllerRestoredNotification = "TNPreferencesControllerRestoredNotification";
{var the_class = objj_allocateClassPair(CPObject, "TNPreferencesController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonCancel"), new objj_ivar("buttonSave"), new objj_ivar("checkBoxHideOfflineContacts"), new objj_ivar("checkBoxUpdate"), new objj_ivar("buttonDebugLevel"), new objj_ivar("buttonLanguage"), new objj_ivar("buttonScrollersStyle"), new objj_ivar("tabViewMain"), new objj_ivar("fieldBOSHResource"), new objj_ivar("fieldModuleLoadingDelay"), new objj_ivar("viewContentWindowPreferences"), new objj_ivar("viewPreferencesGeneral"), new objj_ivar("hintController"), new objj_ivar("switchUseAnimations"), new objj_ivar("switchUseXMPPMonitoring"), new objj_ivar("_excludedTokensNames"), new objj_ivar("_excludedTokens"), new objj_ivar("_mainWindow"), new objj_ivar("_appController"), new objj_ivar("_modules"), new objj_ivar("_xmppStorage"), new objj_ivar("_oldLocale")]);

       
       





       
       








       
       






       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("excludedTokens"), function $TNPreferencesController__excludedTokens(self, _cmd)
{
return self._excludedTokens;
}
,["CPDictionary"]), new objj_method(sel_getUid("_setExcludedTokens:"), function $TNPreferencesController___setExcludedTokens_(self, _cmd, newValue)
{
self._excludedTokens = newValue;
}
,["void","CPDictionary"]), new objj_method(sel_getUid("mainWindow"), function $TNPreferencesController__mainWindow(self, _cmd)
{
return self._mainWindow;
}
,["CPWindow"]), new objj_method(sel_getUid("_setMainWindow:"), function $TNPreferencesController___setMainWindow_(self, _cmd, newValue)
{
self._mainWindow = newValue;
}
,["void","CPWindow"]), new objj_method(sel_getUid("appController"), function $TNPreferencesController__appController(self, _cmd)
{
return self._appController;
}
,["id"]), new objj_method(sel_getUid("setAppController:"), function $TNPreferencesController__setAppController_(self, _cmd, newValue)
{
self._appController = newValue;
}
,["void","id"]), new objj_method(sel_getUid("awakeFromCib"), function $TNPreferencesController__awakeFromCib(self, _cmd)
{
    self._mainWindow = objj_msgSend(objj_msgSend(CPPanel, "alloc"), "initWithContentRect:styleMask:", CGRectMake(0.0, 0.0, 700.0, 543.0), CPDocModalWindowMask);
    objj_msgSend(self._mainWindow, "setContentView:", self.viewContentWindowPreferences);
    objj_msgSend(self.viewContentWindowPreferences, "setAutoresizingMask:", CPViewNotSizable);
    var tabViewItemPreferencesGeneral = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "id1"),
        scrollViewContainer = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", objj_msgSend(self.tabViewMain, "bounds")),
        moduleViewFrame = objj_msgSend(self.viewPreferencesGeneral, "frame");
    moduleViewFrame.size.width = objj_msgSend(scrollViewContainer, "contentSize").width;
    objj_msgSend(self.viewPreferencesGeneral, "setFrame:", moduleViewFrame);
    objj_msgSend(self.viewPreferencesGeneral, "setAutoresizingMask:", CPViewWidthSizable);
    objj_msgSend(scrollViewContainer, "setAutohidesScrollers:", YES);
    objj_msgSend(scrollViewContainer, "setDocumentView:", self.viewPreferencesGeneral);
    objj_msgSend(self.tabViewMain, "setDelegate:", self);
    objj_msgSend(tabViewItemPreferencesGeneral, "setLabel:", "General");
    objj_msgSend(tabViewItemPreferencesGeneral, "setView:", scrollViewContainer);
    objj_msgSend(self.tabViewMain, "addTabViewItem:", tabViewItemPreferencesGeneral);
    objj_msgSend(self.buttonDebugLevel, "removeAllItems");
    objj_msgSend(self.buttonDebugLevel, "addItemsWithTitles:", ["trace", "debug", "info", "warn", "error", "critical"]);
    objj_msgSend(self.buttonLanguage, "removeAllItems");
    objj_msgSend(self.buttonLanguage, "addItemsWithTitles:", ["en", "fr", "de"]);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didModulesLoadComplete:"), TNArchipelModulesLoadingCompleteNotification, nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didPreferencesSaveToXMPPServer:"), TNStrophePrivateStorageSetNotification, nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didPreferencesFailToSetInXMPPServer:"), TNStrophePrivateStorageSetErrorNotification, nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didPreferencesFailToGetInXMPPServer:"), TNStrophePrivateStorageGetErrorNotification, nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("saveToFromXMPPServer:"), TNPreferencesControllerSavePreferencesRequestNotification, nil);
    objj_msgSend(self._mainWindow, "setDefaultButton:", self.buttonSave);
    self._excludedTokens = objj_msgSend(CPDictionary, "dictionary");
    self._excludedTokensNames = ["TNArchipelPropertyControllerEnabled", "TNArchipelXMPPJID",
                            "TNArchipelXMPPPassword", "TNArchipelXMPPService", "TNArchipelRememberCredentials",
                            "TNArchipelTagsVisible", "TNArchipelModuleControllerOpenedTabRegistry",
                            "TNArchipelForceJIDDomain", "TNArchipelForcedJIDDomain",
                            "TNUserChatMessageStore", "TNOutlineViewsExpandedGroups", "TNArchipelTypeVirtualMachineControlDoNotShowDestroyAlert"];
}
,["void"]), new objj_method(sel_getUid("initXMPPStorage"), function $TNPreferencesController__initXMPPStorage(self, _cmd)
{
    var connection= objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection");
    self._xmppStorage = objj_msgSend(TNStrophePrivateStorage, "strophePrivateStorageWithConnection:namespace:", connection, TNArchipelXMPPPrivateStoragePrefsNamespace);
}
,["void"]), new objj_method(sel_getUid("_didModulesLoadComplete:"), function $TNPreferencesController___didModulesLoadComplete_(self, _cmd, aNotification)
{
    var moduleLoader = objj_msgSend(aNotification, "object"),
        tabModules = objj_msgSend(moduleLoader, "tabModules"),
        toolbarModules = objj_msgSend(moduleLoader, "toolbarModules"),
        notSortedModules = objj_msgSend(tabModules, "arrayByAddingObjectsFromArray:", toolbarModules),
        sortDescriptor = objj_msgSend(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "label", YES);
    self._modules = objj_msgSend(notSortedModules, "sortedArrayUsingDescriptors:", objj_msgSend(CPArray, "arrayWithObject:", sortDescriptor));
    for (var i = 0; i < objj_msgSend(self._modules, "count"); i++)
    {
        var module = objj_msgSend(self._modules, "objectAtIndex:", i);
        if (objj_msgSend(module, "viewPreferences") !== nil)
        {
            var tabViewModuleItem = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", objj_msgSend(module, "name")),
                scrollViewContainer = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", objj_msgSend(self.tabViewMain, "bounds")),
                moduleViewFrame = objj_msgSend(objj_msgSend(module, "viewPreferences"), "frame");
            moduleViewFrame.size.width = objj_msgSend(scrollViewContainer, "contentSize").width;
            objj_msgSend(objj_msgSend(module, "viewPreferences"), "setFrame:", moduleViewFrame);
            objj_msgSend(objj_msgSend(module, "viewPreferences"), "setAutoresizingMask:", CPViewWidthSizable);
            objj_msgSend(scrollViewContainer, "setAutohidesScrollers:", YES);
            objj_msgSend(scrollViewContainer, "setDocumentView:", objj_msgSend(module, "viewPreferences"));
            objj_msgSend(tabViewModuleItem, "setLabel:", objj_msgSend(module, "label"));
            objj_msgSend(tabViewModuleItem, "setView:", scrollViewContainer);
            objj_msgSend(self.tabViewMain, "addTabViewItem:", tabViewModuleItem);
        }
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didPreferencesSaveToXMPPServer:"), function $TNPreferencesController___didPreferencesSaveToXMPPServer_(self, _cmd, aNotification)
{
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", CPLocalizedString("Preferences saved", "Preferences saved"), CPLocalizedString("Your preferences have been saved to the XMPP server", "Your preferences have been saved to the XMPP server"));
    objj_msgSend(self, "reinjectUnwantedTokens");
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didPreferencesFailToSetInXMPPServer:"), function $TNPreferencesController___didPreferencesFailToSetInXMPPServer_(self, _cmd, aNotification)
{
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", CPLocalizedString("Preferences saved", "Preferences saved"), CPLocalizedString("Cannot save your preferences to the XMPP server", "Cannot save your preferences to the XMPP server"), TNGrowlIconError);
    CPLog.error("Cannot save your preferences to the XMPP server:" + objj_msgSend(objj_msgSend(aNotification, "userInfo"), "stringValue"));
    objj_msgSend(self, "reinjectUnwantedTokens");
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didPreferencesFailToGetInXMPPServer:"), function $TNPreferencesController___didPreferencesFailToGetInXMPPServer_(self, _cmd, aNotification)
{
     var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPLocalizedString("Error while getting your preferences from the XMPP Server", "Error while getting your preferences from the XMPP Server"), CPLocalizedString("For some reasons, Archipel has not be able to fetch correctly your data from XMPPServer due to an error parsing the data. If this problem is reproducible, you may want to reset them", "For some reasons, Archipel has not be able to fetch correctly your data from XMPPServer due to an error parsing the data. If this problem is reproducible, you may want to reset them"), self, [[CPLocalizedString("Reset", "Reset"), sel_getUid("_performResetPreferencesAfterError:")], [CPLocalizedString("Nevermind", "Nevermind"), nil]]);
    objj_msgSend(alert, "runModal");
}
,["void","CPNotification"]), new objj_method(sel_getUid("saveToFromXMPPServer:"), function $TNPreferencesController__saveToFromXMPPServer_(self, _cmd, aNotification)
{
    objj_msgSend(self, "saveToFromXMPPServer");
}
,["void","CPNotification"]), new objj_method(sel_getUid("showWindow:"), function $TNPreferencesController__showWindow_(self, _cmd, aSender)
{
    if (objj_msgSend(self._mainWindow, "isVisible"))
    {
        objj_msgSend(self, "hideWindow:", aSender);
        return;
    }
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(self.fieldModuleLoadingDelay, "setFloatValue:", objj_msgSend(defaults, "floatForKey:", "TNArchipelModuleLoadingDelay"));
    objj_msgSend(self.fieldBOSHResource, "setStringValue:", objj_msgSend(defaults, "objectForKey:", "TNArchipelXMPPResource"));
    objj_msgSend(self.buttonDebugLevel, "selectItemWithTitle:", objj_msgSend(defaults, "objectForKey:", "TNArchipelConsoleDebugLevel"));
    objj_msgSend(self.buttonLanguage, "selectItemWithTitle:", objj_msgSend(defaults, "objectForKey:", "CPBundleLocale"));
    objj_msgSend(self.buttonScrollersStyle, "selectItemWithTitle:", objj_msgSend(defaults, "objectForKey:", "TNArchipelScrollersStyle"));
    objj_msgSend(self.switchUseAnimations, "setOn:animated:sendAction:", objj_msgSend(defaults, "boolForKey:", "TNArchipelUseAnimations"), YES, NO);
    objj_msgSend(self.switchUseXMPPMonitoring, "setOn:animated:sendAction:", objj_msgSend(defaults, "boolForKey:", "TNArchipelMonitorStanza"), YES, NO);
    objj_msgSend(self.checkBoxUpdate, "setState:", objj_msgSend(defaults, "boolForKey:", "TNArchipelAutoCheckUpdate") ? CPOnState : CPOffState);
    objj_msgSend(self.checkBoxHideOfflineContacts, "setState:", objj_msgSend(defaults, "boolForKey:", "TNHideOfflineContacts") ? CPOnState : CPOffState);
    for (var i = 0; i < objj_msgSend(self._modules, "count"); i++)
    {
        var module = objj_msgSend(self._modules, "objectAtIndex:", i);
        if (objj_msgSend(module, "viewPreferences") !== nil)
            objj_msgSend(module, "loadPreferences");
    }
    self._oldLocale = objj_msgSend(defaults, "objectForKey:", "CPBundleLocale");
    objj_msgSend(CPApp, "beginSheet:modalForWindow:modalDelegate:didEndSelector:contextInfo:", self._mainWindow, objj_msgSend(CPApp, "mainWindow"), self, sel_getUid("mainViewModalTerminated:"), nil);
}
,["id","id"]), new objj_method(sel_getUid("hideWindow:"), function $TNPreferencesController__hideWindow_(self, _cmd, aSender)
{
    objj_msgSend(CPApp, "endSheet:", self._mainWindow);
    objj_msgSend(self._mainWindow, "orderOut:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("savePreferences:"), function $TNPreferencesController__savePreferences_(self, _cmd, sender)
{
    objj_msgSend(self, "hideWindow:", nil);
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(defaults, "setFloat:forKey:", objj_msgSend(self.fieldModuleLoadingDelay, "floatValue"), "TNArchipelModuleLoadingDelay");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.fieldBOSHResource, "stringValue"), "TNArchipelXMPPResource");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.buttonDebugLevel, "title"), "TNArchipelConsoleDebugLevel");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.buttonLanguage, "title"), "CPBundleLocale");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.buttonScrollersStyle, "title"), "TNArchipelScrollersStyle");
    objj_msgSend(defaults, "setBool:forKey:", objj_msgSend(self.switchUseAnimations, "isOn"), "TNArchipelUseAnimations");
    objj_msgSend(defaults, "setBool:forKey:", (objj_msgSend(self.checkBoxUpdate, "state") == CPOnState), "TNArchipelAutoCheckUpdate");
    objj_msgSend(defaults, "setBool:forKey:", (objj_msgSend(self.checkBoxHideOfflineContacts, "state") == CPOnState), "TNHideOfflineContacts");
    objj_msgSend(defaults, "setBool:forKey:", objj_msgSend(self.switchUseXMPPMonitoring, "isOn"), "TNArchipelMonitorStanza");
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "setHideOfflineContacts:", objj_msgSend(defaults, "boolForKey:", "TNHideOfflineContacts"));
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNArchipelRosterOutlineViewReload, self);
    CPLogUnregister(CPLogConsole);
    CPLogRegister(CPLogConsole, objj_msgSend(self.buttonDebugLevel, "title"));
    objj_msgSend(self._appController, "monitorXMPP:", objj_msgSend(self.switchUseXMPPMonitoring, "isOn"));
    objj_msgSend(self._appController, "updateOverallScrollersStyle");
    for (var i = 0; i < objj_msgSend(self._modules, "count"); i++)
    {
        var module = objj_msgSend(self._modules, "objectAtIndex:", i);
        if (objj_msgSend(module, "viewPreferences") !== nil)
            objj_msgSend(module, "savePreferences");
    }
    objj_msgSend(self, "saveToFromXMPPServer");
}
,["id","id"]), new objj_method(sel_getUid("_performApplicationReload:"), function $TNPreferencesController___performApplicationReload_(self, _cmd, aSender)
{
    if (window)
        window.location.reload();
}
,["id","id"]), new objj_method(sel_getUid("_performResetPreferencesAfterError:"), function $TNPreferencesController___performResetPreferencesAfterError_(self, _cmd, aSender)
{
    objj_msgSend(self, "cleanXMPPStorage");
}
,["id","id"]), new objj_method(sel_getUid("showHintWindow:"), function $TNPreferencesController__showHintWindow_(self, _cmd, aSender)
{
    objj_msgSend(self, "hideWindow:", aSender);
    objj_msgSend(self.hintController, "showWindow:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("resetPreferences:"), function $TNPreferencesController__resetPreferences_(self, _cmd, aSender)
{
    var defaultsRegistration = objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults")._domains, "objectForKey:", CPRegistrationDomain);
    objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "registerDefaults:", defaultsRegistration);
    objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults")._domains, "setObject:forKey:", objj_msgSend(CPDictionary, "dictionary"), CPApplicationDomain);
    objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "synchronize");
    objj_msgSend(self, "cleanXMPPStorage");
    objj_msgSend(self, "hideWindow:", nil);
}
,["id","id"]), new objj_method(sel_getUid("languageChanged:"), function $TNPreferencesController__languageChanged_(self, _cmd, aSender)
{
}
,["id","id"]), new objj_method(sel_getUid("excludeUnwantedTokens"), function $TNPreferencesController__excludeUnwantedTokens(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    for (var i = 0; i < objj_msgSend(self._excludedTokensNames, "count"); i++)
    {
        var key = objj_msgSend(self._excludedTokensNames, "objectAtIndex:", i),
            value = objj_msgSend(defaults, "objectForKey:", key);
        if (!value)
            continue;
        objj_msgSend(self._excludedTokens, "setObject:forKey:", value, key);
        objj_msgSend(defaults, "removeObjectForKey:", key);
    }
}
,["void"]), new objj_method(sel_getUid("reinjectUnwantedTokens"), function $TNPreferencesController__reinjectUnwantedTokens(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    for (var i = 0; i < objj_msgSend(self._excludedTokensNames, "count"); i++)
    {
        var key = objj_msgSend(self._excludedTokensNames, "objectAtIndex:", i),
            value = objj_msgSend(self._excludedTokens, "objectForKey:", key);
        objj_msgSend(self._excludedTokens, "removeObjectForKey:", key);
        if (value)
        {
            switch (typeof(value))
            {
                case "number":
                    objj_msgSend(defaults, "setInteger:forKey:", value, key);
                    break;
                case "boolean":
                    objj_msgSend(defaults, "setBool:forKey:", value, key);
                    break;
                default:
                    objj_msgSend(defaults, "setObject:forKey:", value, key);
            }
        }
    }
    objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "synchronize");
}
,["void"]), new objj_method(sel_getUid("saveToFromXMPPServer"), function $TNPreferencesController__saveToFromXMPPServer(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(self, "excludeUnwantedTokens");
    objj_msgSend(self._xmppStorage, "setObject:forKey:", objj_msgSend(defaults._domains, "objectForKey:", CPApplicationDomain), TNArchipelXMPPPrivateStoragePrefsKey);
}
,["void"]), new objj_method(sel_getUid("cleanXMPPStorage"), function $TNPreferencesController__cleanXMPPStorage(self, _cmd)
{
    objj_msgSend(self._xmppStorage, "setObject:forKey:", nil, TNArchipelXMPPPrivateStoragePrefsKey);
}
,["void"]), new objj_method(sel_getUid("recoverFromXMPPServer"), function $TNPreferencesController__recoverFromXMPPServer(self, _cmd)
{
    objj_msgSend(self, "excludeUnwantedTokens");
    objj_msgSend(self._xmppStorage, "objectForKey:target:selector:", TNArchipelXMPPPrivateStoragePrefsKey, self, sel_getUid("_objectRetrievedWithStanza:object:"));
}
,["void"]), new objj_method(sel_getUid("_objectRetrievedWithStanza:object:"), function $TNPreferencesController___objectRetrievedWithStanza_object_(self, _cmd, aStanza, anObject)
{
    if (anObject)
    {
        CPLog.trace("PREFERENCES: Object from XMPP Storage is:" + anObject)
        objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults")._domains, "setObject:forKey:", anObject, CPApplicationDomain);
        objj_msgSend(CPUserDefaults, "standardUserDefaults")._searchListNeedsReload = YES;
        objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "synchronize");
    }
    else
    {
        CPLog.warn("Unable to get configuration from XMPP Storage.")
    }
    objj_msgSend(self, "reinjectUnwantedTokens");
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNPreferencesControllerRestoredNotification, self);
    return NO;
}
,["void","TNStropheStanza","id"]), new objj_method(sel_getUid("tabView:didSelectTabViewItem:"), function $TNPreferencesController__tabView_didSelectTabViewItem_(self, _cmd, aTabView, anItem)
{
    var newFrame = objj_msgSend(objj_msgSend(objj_msgSend(anItem, "view"), "documentView"), "frame");
    newFrame.origin = objj_msgSend(self._mainWindow, "frame").origin;
    newFrame.size.width = objj_msgSend(self._mainWindow, "frame").size.width;
    newFrame.size.height += 100;
    objj_msgSend(self._mainWindow, "setFrame:display:animate:", newFrame, NO, YES);
    newFrame.origin.x = 0;
    newFrame.origin.y = 0;
    objj_msgSend(self.viewContentWindowPreferences, "setFrame:", newFrame);
}
,["void","CPTabView","CPTabViewItem"]), new objj_method(sel_getUid("mainViewModalTerminated:"), function $TNPreferencesController__mainViewModalTerminated_(self, _cmd, aWindow)
{
    if (self._oldLocale != objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "objectForKey:", "CPBundleLocale"))
    {
         var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPLocalizedString("Locale change", "Locale change"), CPLocalizedString("You need to reload the application to complete the locale change.", "You need to reload the application to complete the locale change."), self, [[CPLocalizedString("OK", "OK"), sel_getUid("_performApplicationReload:")], [CPLocalizedString("Later", "Later"), nil]]);
        objj_msgSend(alert, "runModal");
    }
    self._oldLocale = nil;
}
,["void","CPWindow"])]);
}p;36;Controllers/TNPropertiesController.jt;17777;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;16;AppKit/CPImage.jI;20;AppKit/CPImageView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;45;StropheCappuccino/PubSub/TNPubSubController.jI;36;StropheCappuccino/TNStropheContact.jI;18;TNKit/TNFlipView.ji;22;TNContactsController.ji;20;TNAvatarController.jt;17450;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("StropheCappuccino/PubSub/TNPubSubController.j", NO);
objj_executeFile("StropheCappuccino/TNStropheContact.j", NO);
objj_executeFile("TNKit/TNFlipView.j", NO);
objj_executeFile("TNContactsController.j", YES);
objj_executeFile("TNAvatarController.j", YES);
//@class CPLocalizedString
//@global TNArchipelRememberOpenedGroup
//@global TNArchipelPropertiesViewDidShowNotification
//@global TNArchipelEntityTypeUser
{var the_class = objj_allocateClassPair(CPObject, "TNPropertiesController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonEventSubscription"), new objj_ivar("buttonViewVCardSwipe"), new objj_ivar("buttonViewXMPPInfosSwipe"), new objj_ivar("entryAvatar"), new objj_ivar("entryStatusIcon"), new objj_ivar("imageVCardIcon"), new objj_ivar("entryDomain"), new objj_ivar("entryName"), new objj_ivar("entryNode"), new objj_ivar("entryResource"), new objj_ivar("entryStatus"), new objj_ivar("entryType"), new objj_ivar("labelDomain"), new objj_ivar("labelNode"), new objj_ivar("labelResource"), new objj_ivar("labelStatus"), new objj_ivar("labelType"), new objj_ivar("labelVCard"), new objj_ivar("labelVCardCategory"), new objj_ivar("labelVCardCompany"), new objj_ivar("labelVCardCompanyUnit"), new objj_ivar("labelVCardEmail"), new objj_ivar("labelVCardFN"), new objj_ivar("labelVCardLocality"), new objj_ivar("labelVCardRole"), new objj_ivar("viewNicknameContainer"), new objj_ivar("viewVCard"), new objj_ivar("viewVCardContainer"), new objj_ivar("viewXMPPInfos"), new objj_ivar("contactsController"), new objj_ivar("mainView"), new objj_ivar("_enabled"), new objj_ivar("_isCollapsed"), new objj_ivar("_avatarManager"), new objj_ivar("_pubSubController"), new objj_ivar("_entity"), new objj_ivar("_groupUserImage"), new objj_ivar("_pubsubImage"), new objj_ivar("_unknownUserImage"), new objj_ivar("_height")]);
       
       

       
       


       
       




       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isEnabled"), function $TNPropertiesController__isEnabled(self, _cmd)
{
return self._enabled;
}
,["BOOL"]), new objj_method(sel_getUid("_setEnabled:"), function $TNPropertiesController___setEnabled_(self, _cmd, newValue)
{
self._enabled = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isCollapsed"), function $TNPropertiesController__isCollapsed(self, _cmd)
{
return self._isCollapsed;
}
,["BOOL"]), new objj_method(sel_getUid("_setIsCollapsed:"), function $TNPropertiesController___setIsCollapsed_(self, _cmd, newValue)
{
self._isCollapsed = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("avatarManager"), function $TNPropertiesController__avatarManager(self, _cmd)
{
return self._avatarManager;
}
,["TNAvatarController"]), new objj_method(sel_getUid("_setAvatarManager:"), function $TNPropertiesController___setAvatarManager_(self, _cmd, newValue)
{
self._avatarManager = newValue;
}
,["void","TNAvatarController"]), new objj_method(sel_getUid("pubSubController"), function $TNPropertiesController__pubSubController(self, _cmd)
{
return self._pubSubController;
}
,["TNPubSubController"]), new objj_method(sel_getUid("setPubSubController:"), function $TNPropertiesController__setPubSubController_(self, _cmd, newValue)
{
self._pubSubController = newValue;
}
,["void","TNPubSubController"]), new objj_method(sel_getUid("entity"), function $TNPropertiesController__entity(self, _cmd)
{
return self._entity;
}
,["TNStropheContact"]), new objj_method(sel_getUid("_setEntity:"), function $TNPropertiesController___setEntity_(self, _cmd, newValue)
{
self._entity = newValue;
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("awakeFromCib"), function $TNPropertiesController__awakeFromCib(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "mainBundle"),
        center = objj_msgSend(CPNotificationCenter, "defaultCenter");
    self._height = 180;
    self._isCollapsed = YES;
    self._unknownUserImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "user-unknown.png"));
    self._groupUserImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "groups.png"), CGSizeMake(16,16));
    self._pubsubImage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "pubsub.png"));
    objj_msgSend(self.viewVCard, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithHexString:", "f6f6f6"));
    objj_msgSend(self.viewXMPPInfos, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithHexString:", "f6f6f6"));
    objj_msgSend(self.mainView, "setFrontView:", self.viewXMPPInfos);
    objj_msgSend(self.mainView, "setBackView:", self.viewVCard);
    objj_msgSend(self.mainView, "setAnimationStyle:direction:", TNFlipViewAnimationStyleTranslate, TNFlipViewAnimationStyleTranslateHorizontal);
    var gradColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "Backgrounds/background-nickname.png")));
    objj_msgSend(self.viewNicknameContainer, "setBackgroundColor:", gradColor);
    objj_msgSend(self.viewVCardContainer, "setBackgroundColor:", gradColor);
    objj_msgSend(self.imageVCardIcon, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "vcard-icon.png")));
    objj_msgSend(self.entryNode, "setSelectable:", YES);
    objj_msgSend(self.entryNode, "setLineBreakMode:", CPLineBreakByTruncatingTail);
    objj_msgSend(self.entryAvatar, "setBordered:", NO);
    objj_msgSend(self.entryAvatar, "setAutoresizingMask:", CPViewMaxXMargin | CPViewMinXMargin);
    objj_msgSend(self.entryAvatar, "setImageScaling:", CPScaleProportionally);
    objj_msgSend(self.entryAvatar, "setImage:", self._unknownUserImage);
    objj_msgSend(self.buttonEventSubscription, "setBordered:", NO);
    objj_msgSend(self.buttonEventSubscription, "setImageScaling:", CPScaleProportionally);
    objj_msgSend(self.buttonEventSubscription, "setHidden:", YES);
    var imageArrowLeft = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "buttonArrows/button-arrow-left.png"), CGSizeMake(14.0, 14.0)),
        imageArrowLeftPressed = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "buttonArrows/button-arrow-pressed-left.png"), CGSizeMake(14.0, 14.0)),
        imageArrowRight = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "buttonArrows/button-arrow-right.png"), CGSizeMake(14.0, 14.0)),
        imageArrowRightPressed = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "buttonArrows/button-arrow-pressed-right.png"), CGSizeMake(14.0, 14.0));
    objj_msgSend(self.buttonViewXMPPInfosSwipe, "setTarget:", self.mainView);
    objj_msgSend(self.buttonViewXMPPInfosSwipe, "setBordered:", NO);
    objj_msgSend(self.buttonViewXMPPInfosSwipe, "setButtonType:", CPMomentaryChangeButton);
    objj_msgSend(self.buttonViewXMPPInfosSwipe, "setAction:", sel_getUid("flip:"));
    objj_msgSend(self.buttonViewXMPPInfosSwipe, "setImage:", imageArrowRight);
    objj_msgSend(self.buttonViewXMPPInfosSwipe, "setValue:forThemeAttribute:", imageArrowRight, "image");
    objj_msgSend(self.buttonViewXMPPInfosSwipe, "setValue:forThemeAttribute:inState:", imageArrowRightPressed, "image", CPThemeStateHighlighted);
    objj_msgSend(self.buttonViewVCardSwipe, "setTarget:", self.mainView);
    objj_msgSend(self.buttonViewVCardSwipe, "setBordered:", NO);
    objj_msgSend(self.buttonViewVCardSwipe, "setButtonType:", CPMomentaryChangeButton);
    objj_msgSend(self.buttonViewVCardSwipe, "setAction:", sel_getUid("flip:"));
    objj_msgSend(self.buttonViewVCardSwipe, "setImage:", imageArrowLeft);
    objj_msgSend(self.buttonViewVCardSwipe, "setValue:forThemeAttribute:", imageArrowLeft, "image");
    objj_msgSend(self.buttonViewVCardSwipe, "setValue:forThemeAttribute:inState:", imageArrowLeftPressed, "image", CPThemeStateHighlighted);
}
,["void"]), new objj_method(sel_getUid("reload:"), function $TNPropertiesController__reload_(self, _cmd, aNotification)
{
    objj_msgSend(self, "reload")
}
,["void","CPNotification"]), new objj_method(sel_getUid("setEntity:"), function $TNPropertiesController__setEntity_(self, _cmd, anEntity)
{
    var center = objj_msgSend(CPNotificationCenter, "defaultCenter"),
        oldEntity = self._entity;
    if (oldEntity && objj_msgSend(oldEntity, "isKindOfClass:", TNStropheContact))
    {
        objj_msgSend(center, "removeObserver:name:object:", self, TNStropheContactVCardReceivedNotification, oldEntity);
    }
    self._entity = anEntity;
    if (self._entity && objj_msgSend(self._entity, "isKindOfClass:", TNStropheContact))
    {
        objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("reload:"), TNStropheContactVCardReceivedNotification, self._entity);
    }
}
,["void","id"]), new objj_method(sel_getUid("setEnabled:"), function $TNPropertiesController__setEnabled_(self, _cmd, shouldEnable)
{
    self._enabled = shouldEnable;
    objj_msgSend(self.entryName, "setEnabled:", shouldEnable);
}
,["void","BOOL"]), new objj_method(sel_getUid("setAvatarManager:"), function $TNPropertiesController__setAvatarManager_(self, _cmd, anAvatarManager)
{
    self._avatarManager = anAvatarManager;
    objj_msgSend(self.entryAvatar, "setTarget:", self);
    objj_msgSend(self.entryAvatar, "setAction:", sel_getUid("openAvatarManager:"));
}
,["void","TNAvatarManager"]), new objj_method(sel_getUid("hideView"), function $TNPropertiesController__hideView(self, _cmd)
{
    if (self._isCollapsed)
        return;
    self._isCollapsed = YES;
    objj_msgSend(objj_msgSend(self.mainView, "superview"), "setPosition:ofDividerAtIndex:", objj_msgSend(objj_msgSend(self.mainView, "superview"), "bounds").size.height, 0);
}
,["void"]), new objj_method(sel_getUid("showView"), function $TNPropertiesController__showView(self, _cmd)
{
    if (!self._isCollapsed)
        return;
    self._isCollapsed = NO;
    objj_msgSend(objj_msgSend(self.mainView, "superview"), "setPosition:ofDividerAtIndex:", (objj_msgSend(objj_msgSend(self.mainView, "superview"), "bounds").size.height - self._height), 0);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNArchipelPropertiesViewDidShowNotification, self);
}
,["void"]), new objj_method(sel_getUid("reload"), function $TNPropertiesController__reload(self, _cmd)
{
    if (!self._entity || !self._enabled)
    {
        objj_msgSend(self, "hideView");
        return;
    }
    if (objj_msgSend(self._entity, "isKindOfClass:", TNStropheContact))
    {
        objj_msgSend(self.labelResource, "setStringValue:", CPLocalizedString("Resource", "Resource"));
        objj_msgSend(self.labelStatus, "setHidden:", NO);
        objj_msgSend(self.labelDomain, "setHidden:", NO);
        objj_msgSend(self.labelType, "setHidden:", NO);
        objj_msgSend(self.labelNode, "setHidden:", NO);
        objj_msgSend(self.entryNode, "setHidden:", NO);
        objj_msgSend(self.entryAvatar, "setHidden:", NO);
        objj_msgSend(self.entryType, "setHidden:", NO);
        objj_msgSend(self.buttonEventSubscription, "setHidden:", NO);
        objj_msgSend(self.entryStatusIcon, "bind:toObject:withKeyPath:options:", "image", self._entity, "statusIcon", nil);
        objj_msgSend(self.entryName, "bind:toObject:withKeyPath:options:", "objectValue", self._entity, "name", nil);
        objj_msgSend(self.entryDomain, "bind:toObject:withKeyPath:options:", "objectValue", self._entity, "JID.domain", nil);
        objj_msgSend(self.entryResource, "bind:toObject:withKeyPath:options:", "objectValue", self._entity, "JID.resource", nil);
        objj_msgSend(self.entryStatus, "bind:toObject:withKeyPath:options:", "objectValue", self._entity, "XMPPStatus", nil);
        objj_msgSend(self.entryNode, "bind:toObject:withKeyPath:options:", "objectValue", self._entity, "JID.node", nil);
        var entityType = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(self._entity, "vCard")),
            entityDescription = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "entityDescriptionFor:", entityType);
        if (!entityDescription)
        {
            objj_msgSend(self.entryType, "setStringValue:", CPLocalizedString("User", "User"));
            objj_msgSend(self.buttonEventSubscription, "setHidden:", YES);
        }
        else
        {
            objj_msgSend(self.entryType, "setStringValue:", entityDescription);
            objj_msgSend(self.buttonEventSubscription, "setHidden:", NO);
        }
        if (objj_msgSend(self._entity, "avatar"))
            objj_msgSend(self.entryAvatar, "setImage:", objj_msgSend(self._entity, "avatar"));
        else
            objj_msgSend(self.entryAvatar, "setImage:", self._unknownUserImage);
        if (self._avatarManager)
            objj_msgSend(self._avatarManager, "setEntity:", self._entity);
        if (objj_msgSend(self._pubSubController, "nodeWithName:", "/archipel/" + objj_msgSend(objj_msgSend(self._entity, "JID"), "bare") + "/events"))
            objj_msgSend(self.buttonEventSubscription, "setImage:", self._pubsubImage);
        else
            objj_msgSend(self.buttonEventSubscription, "setImage:", nil);
        objj_msgSend(self.labelVCardFN, "setStringValue:", "");
        objj_msgSend(self.labelVCardLocality, "setStringValue:", "");
        objj_msgSend(self.labelVCardCompany, "setStringValue:", "");
        objj_msgSend(self.labelVCardCompanyUnit, "setStringValue:", "");
        objj_msgSend(self.labelVCardRole, "setStringValue:", "");
        objj_msgSend(self.labelVCardEmail, "setStringValue:", "")
        objj_msgSend(self.labelVCardCategory, "setStringValue:", "");
        if (objj_msgSend(self._entity, "vCard"))
        {
            var vCard = objj_msgSend(self._entity, "vCard");
            objj_msgSend(self.buttonViewVCardSwipe, "setHidden:", NO);
            objj_msgSend(self.labelVCardFN, "setStringValue:", objj_msgSend(objj_msgSend(vCard, "fullName"), "capitalizedString"));
            objj_msgSend(self.labelVCardLocality, "setStringValue:", objj_msgSend(objj_msgSend(vCard, "locality"), "capitalizedString"));
            objj_msgSend(self.labelVCardCompany, "setStringValue:", objj_msgSend(objj_msgSend(vCard, "organizationName"), "capitalizedString"));
            objj_msgSend(self.labelVCardCompanyUnit, "setStringValue:", objj_msgSend(objj_msgSend(vCard, "organizationUnit"), "capitalizedString"));
            objj_msgSend(self.labelVCardRole, "setStringValue:", objj_msgSend(objj_msgSend(vCard, "title"), "capitalizedString"));
            objj_msgSend(self.labelVCardEmail, "setStringValue:", objj_msgSend(vCard, "userID"));
            objj_msgSend(self.labelVCardCategory, "setStringValue:", objj_msgSend(vCard, "categories"));
        }
    }
    else if (objj_msgSend(self._entity, "isKindOfClass:", TNStropheGroup))
    {
        var population = (objj_msgSend(self._entity, "count") > 1) ? objj_msgSend(self._entity, "count") + CPLocalizedString(" contacts in group", " contacts in group") : objj_msgSend(self._entity, "count") +CPLocalizedString( " contact in group", " contact in group");
        objj_msgSend(self.labelResource, "setStringValue:", CPLocalizedString("Contents", "Contents"));
        objj_msgSend(self.labelStatus, "setHidden:", YES);
        objj_msgSend(self.labelDomain, "setHidden:", YES);
        objj_msgSend(self.labelType, "setHidden:", YES);
        objj_msgSend(self.labelNode, "setHidden:", YES);
        objj_msgSend(self.entryNode, "setHidden:", YES);
        objj_msgSend(self.entryAvatar, "setHidden:", YES);
        objj_msgSend(self.entryType, "setHidden:", YES);
        objj_msgSend(self.buttonEventSubscription, "setHidden:", YES);
        objj_msgSend(self.entryStatusIcon, "setImage:", self._groupUserImage);
        objj_msgSend(self.entryName, "setStringValue:", objj_msgSend(self._entity, "name"));
        objj_msgSend(self.entryDomain, "setStringValue:", "");
        objj_msgSend(self.entryResource, "setStringValue:", population);
        objj_msgSend(self.entryStatus, "setStringValue:", "");
        objj_msgSend(self.mainView, "showFront");
        objj_msgSend(self.buttonViewVCardSwipe, "setHidden:", YES);
    }
    objj_msgSend(self, "showView");
}
,["void"]), new objj_method(sel_getUid("openAvatarManager:"), function $TNPropertiesController__openAvatarManager_(self, _cmd, sender)
{
    if (self._avatarManager && objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(self._entity, "vCard")) != TNArchipelEntityTypeUser)
        objj_msgSend(self._avatarManager, "showWindow:", sender);
}
,["id","id"])]);
}p;26;Controllers/TNPushCenter.jt;6790;@STATIC;1.0;I;23;Foundation/Foundation.jI;39;StropheCappuccino/TNStropheConnection.jI;28;StropheCappuccino/TNPubSub.jt;6666;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNStropheConnection.j", NO);
objj_executeFile("StropheCappuccino/TNPubSub.j", NO);
var __defaultPushCenter;
{var the_class = objj_allocateClassPair(CPObject, "TNPushCenter"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_pubSubNode"), new objj_ivar("_connection"), new objj_ivar("_pubsubRegistrar"), new objj_ivar("_pubSubHandlerId")]);
       
       

       
       

       
       

       
       



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("pubSubNode"), function $TNPushCenter__pubSubNode(self, _cmd)
{
return self._pubSubNode;
}
,["TNPubSubNode"]), new objj_method(sel_getUid("_setPubSubNode:"), function $TNPushCenter___setPubSubNode_(self, _cmd, newValue)
{
self._pubSubNode = newValue;
}
,["void","TNPubSubNode"]), new objj_method(sel_getUid("connection"), function $TNPushCenter__connection(self, _cmd)
{
return self._connection;
}
,["TNStropheConnection"]), new objj_method(sel_getUid("_setConnection:"), function $TNPushCenter___setConnection_(self, _cmd, newValue)
{
self._connection = newValue;
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("init"), function $TNPushCenter__init(self, _cmd)
{
    if (__defaultPushCenter)
        objj_msgSend(CPException, "raise:reason:", "Singleton error", "The default push center is already initialized");
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNPushCenter").super_class }, "init"))
    {
        self._pubsubRegistrar = objj_msgSend(CPArray, "array");
    }
    return self;
}
,["TNPushCenter"]), new objj_method(sel_getUid("setConnection:"), function $TNPushCenter__setConnection_(self, _cmd, aConnection)
{
    if (self._pubSubHandlerId && self._connection)
        objj_msgSend(self._connection, "deleteRegisteredSelector:", self._pubSubHandlerId);
    self._connection = aConnection;
    self._pubSubHandlerId = objj_msgSend(TNPubSubNode, "registerSelector:ofObject:forPubSubEventWithConnection:", sel_getUid("_onPubSubEvents:"), self, self._connection);
}
,["void","TNStropheConnection"]), new objj_method(sel_getUid("_onPubSubEvents:"), function $TNPushCenter___onPubSubEvents_(self, _cmd, aStanza)
{
    CPLog.debug("PUSH CENTER: Raw pubsub event received from " + objj_msgSend(aStanza, "from"));
    if (!objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "items"), "valueForAttribute:", "node"))
        objj_msgSend(CPException, "raise:reason:", "DebugException", "there is not 'node' attribute in the items. stanza is " + objj_msgSend(aStanza, "stringValue"));
    var nodeOwner = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "items"), "valueForAttribute:", "node").split("/")[2],
        pushType = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "push"), "valueForAttribute:", "xmlns"),
        pushDate = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "push"), "valueForAttribute:", "date"),
        pushChange = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "push"), "valueForAttribute:", "change"),
        infoDict = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", nodeOwner, "owner", pushType, "type", pushDate, "date", pushChange, "change", aStanza, "rawStanza");
    for (var i = 0; i < objj_msgSend(self._pubsubRegistrar, "count"); i++)
    {
        var item = objj_msgSend(self._pubsubRegistrar, "objectAtIndex:", i);
        if (pushType == objj_msgSend(item, "objectForKey:", "type"))
        {
            var object = objj_msgSend(item, "objectForKey:", "object"),
                selector = objj_msgSend(item, "objectForKey:", "selector");
            CPLog.debug("PUSH CENTER: Performing selector " + selector + " of object " + object);
            objj_msgSend(object, "performSelector:withObject:", selector, infoDict);
        }
    }
    return YES;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("addObserver:selector:forPushNotificationType:"), function $TNPushCenter__addObserver_selector_forPushNotificationType_(self, _cmd, anObject, aSelector, aPushType)
{
    var registrarItem = objj_msgSend(CPDictionary, "dictionary");
    CPLog.debug("PUSH CENTER: " + anObject + " is registring selector " + aSelector + " for push notification of type : " + aPushType);
    objj_msgSend(registrarItem, "setValue:forKey:", aSelector, "selector");
    objj_msgSend(registrarItem, "setValue:forKey:", anObject, "object");
    objj_msgSend(registrarItem, "setValue:forKey:", aPushType, "type");
    objj_msgSend(self._pubsubRegistrar, "addObject:", registrarItem);
    CPLog.trace("PUSH CENTER: Registrar now contains: " + objj_msgSend(self._pubsubRegistrar, "count") + " item(s)");
    CPLog.trace(self._pubsubRegistrar);
}
,["void","id","SEL","CPString"]), new objj_method(sel_getUid("removeObserver:forPushNotificationType:"), function $TNPushCenter__removeObserver_forPushNotificationType_(self, _cmd, anObject, aType)
{
    var pubsubRegistrarCopy = objj_msgSend(self._pubsubRegistrar, "copy");
    for (var i = 0; i < objj_msgSend(pubsubRegistrarCopy, "count"); i++)
    {
        var item = objj_msgSend(pubsubRegistrarCopy, "objectAtIndex:", i);
        if (aType && !objj_msgSend(item, "objectForKey:", "type") == aType)
            continue;
        objj_msgSend(self._pubsubRegistrar, "removeObject:", item);
        CPLog.trace("PUSH CENTER: Removing object " + objj_msgSend(item, "objectForKey:", "object") + ":"
                    +objj_msgSend(item, "objectForKey:", "selector")+" from TNPushCenter");
        objj_msgSend(item, "setValue:forKey:", nil, "selector");
        objj_msgSend(item, "setValue:forKey:", nil, "object");
        objj_msgSend(item, "setValue:forKey:", nil, "type");
        item = nil;
    }
    CPLog.trace("PUSH CENTER: Registrar now contains: " + objj_msgSend(self._pubsubRegistrar, "count") + " item(s)");
    CPLog.trace(self._pubsubRegistrar);
}
,["void","id","CPString"]), new objj_method(sel_getUid("removeObserver:"), function $TNPushCenter__removeObserver_(self, _cmd, anObject)
{
    objj_msgSend(self, "removeObserver:forPushNotificationType:", anObject, nil);
}
,["void","id"]), new objj_method(sel_getUid("flush"), function $TNPushCenter__flush(self, _cmd)
{
    objj_msgSend(self._pubsubRegistrar, "removeAllObjects");
}
,["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultCenter"), function $TNPushCenter__defaultCenter(self, _cmd)
{
    if (!__defaultPushCenter)
        __defaultPushCenter = objj_msgSend(objj_msgSend(TNPushCenter, "alloc"), "init");
    return __defaultPushCenter;
}
,["TNPushCenter"])]);
}p;30;Controllers/TNTagsController.jt;11508;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;16;AppKit/CPImage.jI;21;AppKit/CPTokenField.jI;15;AppKit/CPView.jI;45;StropheCappuccino/PubSub/TNPubSubController.jI;39;StropheCappuccino/PubSub/TNPubSubNode.jI;36;StropheCappuccino/TNStropheContact.jI;32;StropheCappuccino/TNStropheJID.ji;21;TNPermissionsCenter.jt;11173;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPTokenField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("StropheCappuccino/PubSub/TNPubSubController.j", NO);
objj_executeFile("StropheCappuccino/PubSub/TNPubSubNode.j", NO);
objj_executeFile("StropheCappuccino/TNStropheContact.j", NO);
objj_executeFile("StropheCappuccino/TNStropheJID.j", NO);
objj_executeFile("TNPermissionsCenter.j", YES);
//@class CPLocalizedString
//@global TNArchipelNotificationRosterSelectionChanged
var TNArchipelTypeTags = "archipel:tags",
    TNArchipelTypeTagsSetTags = "settags";
TNTagsControllerNodeReadyNotification = "TNTagsControllerNodeReadyNotification";
{var the_class = objj_allocateClassPair(CPObject, "TNTagsController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("mainView"), new objj_ivar("tokenFieldTags"), new objj_ivar("buttonSave"), new objj_ivar("_pubsubController"), new objj_ivar("_pubsubTagsNode"), new objj_ivar("_alreadyReady"), new objj_ivar("_currentRosterItem")]);
       
       

       
       


       
       

       
       

       
       




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("mainView"), function $TNTagsController__mainView(self, _cmd)
{
return self.mainView;
}
,["CPView"]), new objj_method(sel_getUid("pubSubController"), function $TNTagsController__pubSubController(self, _cmd)
{
return self._pubsubController;
}
,["TNPubSubController"]), new objj_method(sel_getUid("_setPubsubController:"), function $TNTagsController___setPubsubController_(self, _cmd, newValue)
{
self._pubsubController = newValue;
}
,["void","TNPubSubController"]), new objj_method(sel_getUid("setPubSubController:"), function $TNTagsController__setPubSubController_(self, _cmd, aController)
{
    if (aController === self._pubsubController)
        return;
    self._pubsubController = aController;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("didRetrieveSubscriptions:"), TNStrophePubSubSubscriptionsRetrievedNotification, self._pubsubController);
}
,["void","TNPubSubController"]), new objj_method(sel_getUid("awakeFromCib"), function $TNTagsController__awakeFromCib(self, _cmd)
{
    var frame = objj_msgSend(self.mainView, "frame"),
        bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")),
        gradBG = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "Backgrounds/background-filter.png")),
        imageTag = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsButtons/tag-set.png"), CGSizeMake(16, 16)),
        tokenFrame;
    objj_msgSend(self.mainView, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", gradBG));
    objj_msgSend(self.mainView, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
    self._currentRosterItem = nil;
    self._alreadyReady = NO;
    objj_msgSend(self.tokenFieldTags, "setDelegate:", self);
    objj_msgSend(self.tokenFieldTags, "setEditable:", YES);
    objj_msgSend(self.tokenFieldTags, "setEnabled:", NO);
    objj_msgSend(self.tokenFieldTags, "setPlaceholderString:", CPLocalizedString("You can't assign tags here", "You can't assign tags here"));
    objj_msgSend(self.tokenFieldTags, "setTarget:", self);
    objj_msgSend(self.tokenFieldTags, "setAction:", sel_getUid("performSetTags:"));
    objj_msgSend(self.buttonSave, "setImage:", imageTag);
    objj_msgSend(self.buttonSave, "setTarget:", self);
    objj_msgSend(self.buttonSave, "setAction:", sel_getUid("performSetTags:"));
    objj_msgSend(self.buttonSave, "setEnabled:", NO);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("didRosterItemChange:"), TNArchipelNotificationRosterSelectionChanged, nil);
    objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "addDelegate:", self);
}
,["void"]), new objj_method(sel_getUid("getTagsForJID:"), function $TNTagsController__getTagsForJID_(self, _cmd, aJID)
{
    var ret = objj_msgSend(CPArray, "array");
    for (var i = 0; i < objj_msgSend(objj_msgSend(self._pubsubTagsNode, "content"), "count"); i++)
    {
        var tag = objj_msgSend(objj_msgSend(objj_msgSend(self._pubsubTagsNode, "content"), "objectAtIndex:", i), "firstChildWithName:", "tag");
        if (objj_msgSend(tag, "valueForAttribute:", "jid") == objj_msgSend(aJID, "bare"))
        {
            if (objj_msgSend(objj_msgSend(tag, "valueForAttribute:", "tags"), "length") > 0)
                objj_msgSend(ret, "addObjectsFromArray:", objj_msgSend(tag, "valueForAttribute:", "tags").split(";;"));
            break;
        }
    }
    return ret;
}
,["CPArray","TNStropheJID"]), new objj_method(sel_getUid("didRetrieveSubscriptions:"), function $TNTagsController__didRetrieveSubscriptions_(self, _cmd, aNotification)
{
    var server = objj_msgSend(TNStropheJID, "stropheJIDWithString:", "pubsub." + objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"), "domain")),
        nodeName = "/archipel/tags";
    self._pubsubTagsNode = objj_msgSend(self._pubsubController, "nodeWithName:", nodeName);
    if (!self._pubsubTagsNode)
        objj_msgSend(self._pubsubController, "subscribeToNodeWithName:server:nodeDelegate:", nodeName, server, self);
    else
    {
        objj_msgSend(self._pubsubTagsNode, "setDelegate:", self);
        objj_msgSend(self._pubsubTagsNode, "retrieveItems");
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("didRosterItemChange:"), function $TNTagsController__didRosterItemChange_(self, _cmd, aNotification)
{
    self._currentRosterItem = objj_msgSend(aNotification, "object");
    objj_msgSend(self.tokenFieldTags, "setObjectValue:", []);
    if (!objj_msgSend(self._currentRosterItem, "isKindOfClass:", TNStropheContact))
    {
        objj_msgSend(self.tokenFieldTags, "setPlaceholderString:", "You can't assign tags here");
        objj_msgSend(self.buttonSave, "setEnabled:", NO);
        objj_msgSend(self.tokenFieldTags, "setEnabled:", NO);
        objj_msgSend(self.tokenFieldTags, "setObjectValue:", []);
    }
    else
    {
        objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "setControl:segment:enabledAccordingToPermissions:forEntity:specialCondition:", self.buttonSave, nil, ["settags"], self._currentRosterItem, YES);
        objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "setControl:segment:enabledAccordingToPermissions:forEntity:specialCondition:", self.tokenFieldTags, nil, ["settags"], self._currentRosterItem, YES);
        objj_msgSend(self.tokenFieldTags, "setPlaceholderString:", "Enter coma separated tags");
        objj_msgSend(self.tokenFieldTags, "setEnabled:", YES);
        objj_msgSend(self.buttonSave, "setEnabled:", YES);
        if (self._currentRosterItem)
            objj_msgSend(self.tokenFieldTags, "setObjectValue:", objj_msgSend(self, "getTagsForJID:", objj_msgSend(self._currentRosterItem, "JID")));
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("performSetTags:"), function $TNTagsController__performSetTags_(self, _cmd, sender)
{
    if (!objj_msgSend(self._currentRosterItem, "isKindOfClass:", TNStropheContact))
        return;
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set"),
        content = objj_msgSend(self.tokenFieldTags, "objectValue"),
        tagsString = "";
    for (var i = 0; i < objj_msgSend(content, "count"); i++)
        tagsString += objj_msgSend(objj_msgSend(content, "objectAtIndex:", i), "lowercaseString") + ";;";
    tagsString = tagsString.slice(0,tagsString.length - 2);
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeTags});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeTagsSetTags,
        "tags": tagsString});
    objj_msgSend(self._currentRosterItem, "sendStanza:andRegisterSelector:ofObject:", stanza, nil, nil);
}
,["id","id"]), new objj_method(sel_getUid("tokenField:completionsForSubstring:indexOfToken:indexOfSelectedItem:"), function $TNTagsController__tokenField_completionsForSubstring_indexOfToken_indexOfSelectedItem_(self, _cmd, aTokenField, aSubstring, anIndex, anIndex)
{
    var availableTags = objj_msgSend(CPArray, "array");
    for (var i = 0; i < objj_msgSend(objj_msgSend(self._pubsubTagsNode, "content"), "count"); i++)
    {
        var tags = objj_msgSend(objj_msgSend(objj_msgSend(objj_msgSend(self._pubsubTagsNode, "content"), "objectAtIndex:", i), "firstChildWithName:", "tag"), "valueForAttribute:", "tags").split(";;");
        for (var j = 0; j < objj_msgSend(tags, "count"); j++)
        {
            var tag = objj_msgSend(tags, "objectAtIndex:", j);
            if (tag && (tag.indexOf(aSubstring) != -1) && !objj_msgSend(availableTags, "containsObject:", tag) && !objj_msgSend(objj_msgSend(self.tokenFieldTags, "objectValue"), "containsObject:", tag))
                objj_msgSend(availableTags, "addObject:", tag);
        }
    }
    return availableTags;
}
,["void","CPTokenField","CPString","int","int"]), new objj_method(sel_getUid("pubSubNode:receivedEvent:"), function $TNTagsController__pubSubNode_receivedEvent_(self, _cmd, aPubSubMode, aStanza)
{
    objj_msgSend(self._pubsubTagsNode, "retrieveItems");
}
,["void","TNPubSubNode","TNStropheStanza"]), new objj_method(sel_getUid("pubSubNode:subscribed:"), function $TNTagsController__pubSubNode_subscribed_(self, _cmd, aPubSubMode, isSubscribed)
{
    if (isSubscribed)
        objj_msgSend(self._pubsubTagsNode, "retrieveItems");
}
,["void","TNPubSubNode","BOOL"]), new objj_method(sel_getUid("pubSubNode:retrievedItems:"), function $TNTagsController__pubSubNode_retrievedItems_(self, _cmd, aPubSubMode, isRetrieved)
{
    if (isRetrieved && !self._alreadyReady)
    {
        self._alreadyReady = YES;
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNTagsControllerNodeReadyNotification, aPubSubMode);
    }
    if (self._currentRosterItem)
        objj_msgSend(self.tokenFieldTags, "setObjectValue:", objj_msgSend(self, "getTagsForJID:", objj_msgSend(self._currentRosterItem, "JID")));
}
,["void","TNPubSubNode","BOOL"]), new objj_method(sel_getUid("permissionCenter:updatePermissionForEntity:"), function $TNTagsController__permissionCenter_updatePermissionForEntity_(self, _cmd, aCenter, anEntity)
{
    if (anEntity === self._currentRosterItem)
    {
        objj_msgSend(aCenter, "setControl:segment:enabledAccordingToPermissions:forEntity:specialCondition:", self.buttonSave, nil, ["settags"], self._currentRosterItem, YES);
        objj_msgSend(aCenter, "setControl:segment:enabledAccordingToPermissions:forEntity:specialCondition:", self.tokenFieldTags, nil, ["settags"], self._currentRosterItem, YES);
    }
}
,["void","TNPermissionsCenter","TNStropheContact"])]);
}p;32;Controllers/TNUpdateController.jt;6973;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPTextField.jI;17;AppKit/CPWindow.jI;28;LPKit/LPMultiLineTextField.jI;15;TNKit/TNAlert.ji;20;../Model/TNVersion.jt;6801;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("LPKit/LPMultiLineTextField.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("../Model/TNVersion.j", YES);
//@global TNPreferencesControllerSavePreferencesRequestNotification
{var the_class = objj_allocateClassPair(CPObject, "TNUpdateController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("fieldCurrentVersion"), new objj_ivar("fieldDate"), new objj_ivar("fieldServerVersion"), new objj_ivar("labelCurrentVersion"), new objj_ivar("labelDate"), new objj_ivar("labelServerVersion"), new objj_ivar("mainWindow"), new objj_ivar("fieldChanges"), new objj_ivar("_URL"), new objj_ivar("_currentVersion"), new objj_ivar("_forceCheck"), new objj_ivar("_changes"), new objj_ivar("_date"), new objj_ivar("_URLDownload"), new objj_ivar("_plist"), new objj_ivar("_version")]);
       
       

       
       





       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("URL"), function $TNUpdateController__URL(self, _cmd)
{
return self._URL;
}
,["CPURL"]), new objj_method(sel_getUid("setURL:"), function $TNUpdateController__setURL_(self, _cmd, newValue)
{
self._URL = newValue;
}
,["void","CPURL"]), new objj_method(sel_getUid("currentVersion"), function $TNUpdateController__currentVersion(self, _cmd)
{
return self._currentVersion;
}
,["TNVersion"]), new objj_method(sel_getUid("setCurrentVersion:"), function $TNUpdateController__setCurrentVersion_(self, _cmd, newValue)
{
self._currentVersion = newValue;
}
,["void","TNVersion"]), new objj_method(sel_getUid("awakeFromCib"), function $TNUpdateController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.labelCurrentVersion, "setFont:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 12));
    objj_msgSend(self.labelServerVersion, "setFont:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 12));
    objj_msgSend(self.labelDate, "setFont:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 12));
    objj_msgSend(self.fieldChanges, "setEditable:", NO);
    objj_msgSend(self.fieldChanges, "setEnabled:", NO);
    objj_msgSend(self.fieldChanges, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    self._forceCheck = NO;
}
,["void"]), new objj_method(sel_getUid("check"), function $TNUpdateController__check(self, _cmd)
{
    if (!self._forceCheck && !objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "boolForKey:", "TNArchipelAutoCheckUpdate"))
        return;
    var request = objj_msgSend(CPURLRequest, "requestWithURL:", self._URL),
        connection = objj_msgSend(CPURLConnection, "connectionWithRequest:delegate:", request, self);
    objj_msgSend(connection, "cancel");
    objj_msgSend(connection, "start");
}
,["void"]), new objj_method(sel_getUid("showWindow:"), function $TNUpdateController__showWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.fieldCurrentVersion, "setStringValue:", objj_msgSend(self._currentVersion, "description"));
    objj_msgSend(self.fieldServerVersion, "setStringValue:", objj_msgSend(self._version, "description"));
    objj_msgSend(self.fieldDate, "setStringValue:", self._date);
    objj_msgSend(self.fieldChanges, "setStringValue:", self._changes);
    objj_msgSend(self.mainWindow, "center");
    objj_msgSend(self.mainWindow, "makeKeyAndOrderFront:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("manualCheck:"), function $TNUpdateController__manualCheck_(self, _cmd, aSender)
{
    self._forceCheck = YES;
    objj_msgSend(self, "check");
}
,["id","id"]), new objj_method(sel_getUid("update:"), function $TNUpdateController__update_(self, _cmd, aSender)
{
    window.open(self._URLDownload, "__new");
    objj_msgSend(self.mainWindow, "close");
}
,["id","id"]), new objj_method(sel_getUid("cancel:"), function $TNUpdateController__cancel_(self, _cmd, aSender)
{
    objj_msgSend(self.mainWindow, "close");
}
,["id","id"]), new objj_method(sel_getUid("ignore:"), function $TNUpdateController__ignore_(self, _cmd, aSender)
{
    var ignoredVersions = objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "objectForKey:", "TNArchipelIgnoredVersions");
    if (!ignoredVersions)
        ignoredVersions = objj_msgSend(CPArray, "array");
    if (!objj_msgSend(ignoredVersions, "containsObject:", self._version))
    {
        objj_msgSend(ignoredVersions, "addObject:", self._version);
        objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "setObject:forKey:", ignoredVersions, "TNArchipelIgnoredVersions");
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNPreferencesControllerSavePreferencesRequestNotification, self);
    }
    objj_msgSend(self.mainWindow, "close");
}
,["id","id"]), new objj_method(sel_getUid("connection:didReceiveData:"), function $TNUpdateController__connection_didReceiveData_(self, _cmd, connection, data)
{
    var cpdata = objj_msgSend(CPData, "dataWithRawString:", data);
    self._plist = objj_msgSend(cpdata, "plistObject");
    var major = objj_msgSend(objj_msgSend(self._plist, "objectForKey:", "version"), "objectForKey:", "major"),
        minor = objj_msgSend(objj_msgSend(self._plist, "objectForKey:", "version"), "objectForKey:", "minor"),
        revision = objj_msgSend(objj_msgSend(self._plist, "objectForKey:", "version"), "objectForKey:", "revision"),
        codeName = objj_msgSend(objj_msgSend(self._plist, "objectForKey:", "version"), "objectForKey:", "codeName") || "",
        ignoredVersions = objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "objectForKey:", "TNArchipelIgnoredVersions");
    self._version = objj_msgSend(TNVersion, "versionWithMajor:minor:revision:codeName:", major, minor, revision, "");
    self._date = objj_msgSend(self._plist, "objectForKey:", "date");
    self._changes = objj_msgSend(self._plist, "objectForKey:", "changes");
    self._URLDownload = objj_msgSend(CPURL, "URLWithString:", objj_msgSend(self._plist, "objectForKey:", "url"));
    if (objj_msgSend(self._version, "greaterThan:", self._currentVersion))
    {
        if (self._forceCheck == NO)
            for (var i = 0; i < objj_msgSend(ignoredVersions, "count"); i++)
                if (objj_msgSend(self._version, "equals:", objj_msgSend(ignoredVersions, "objectAtIndex:", i)))
                    return;
        else
            self._forceCheck = NO;
        objj_msgSend(self, "showWindow:", nil);
    }
    else if (self._forceCheck)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", "Already up to date", "Your version of Archipel ("+self._currentVersion+") is already the latest version");
    }
}
,["void","CPURLConnection","CPString"])]);
}p;36;Controllers/TNUserAvatarController.jt;5905;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;16;AppKit/CPImage.jI;15;AppKit/CPMenu.jI;19;AppKit/CPMenuItem.jI;35;StropheCappuccino/TNStropheStanza.jI;29;StropheCappuccino/TNXMLNode.jI;37;StropheCappuccino/TNStropheIMClient.jI;33;GrowlCappuccino/GrowlCappuccino.jt;5617;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPMenu.j", NO);
objj_executeFile("AppKit/CPMenuItem.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("GrowlCappuccino/GrowlCappuccino.j", NO);
//@global TNUserAvatarSize
{var the_class = objj_allocateClassPair(CPObject, "TNUserAvatarController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_buttonAvatar"), new objj_ivar("_currentAvatar"), new objj_ivar("_menuAvatarSelection"), new objj_ivar("_avatars"), new objj_ivar("_pListObject")]);


       
       

       
       


       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("buttonAvatar"), function $TNUserAvatarController__buttonAvatar(self, _cmd)
{
return self._buttonAvatar;
}
,["CPButton"]), new objj_method(sel_getUid("setButtonAvatar:"), function $TNUserAvatarController__setButtonAvatar_(self, _cmd, newValue)
{
self._buttonAvatar = newValue;
}
,["void","CPButton"]), new objj_method(sel_getUid("currentAvatar"), function $TNUserAvatarController__currentAvatar(self, _cmd)
{
return self._currentAvatar;
}
,["CPImage"]), new objj_method(sel_getUid("setCurrentAvatar:"), function $TNUserAvatarController__setCurrentAvatar_(self, _cmd, newValue)
{
self._currentAvatar = newValue;
}
,["void","CPImage"]), new objj_method(sel_getUid("menuAvatarSelection"), function $TNUserAvatarController__menuAvatarSelection(self, _cmd)
{
return self._menuAvatarSelection;
}
,["CPMenu"]), new objj_method(sel_getUid("setMenuAvatarSelection:"), function $TNUserAvatarController__setMenuAvatarSelection_(self, _cmd, newValue)
{
self._menuAvatarSelection = newValue;
}
,["void","CPMenu"]), new objj_method(sel_getUid("awakeFromCib"), function $TNUserAvatarController__awakeFromCib(self, _cmd)
{
    self._avatars = objj_msgSend(CPDictionary, "dictionary");
}
,["void"]), new objj_method(sel_getUid("loadAvatarMetaInfos"), function $TNUserAvatarController__loadAvatarMetaInfos(self, _cmd)
{
    var request = objj_msgSend(CPURLRequest, "requestWithURL:", objj_msgSend(CPURL, "URLWithString:", "Resources/Avatars/avatars.plist")),
        connection = objj_msgSend(CPURLConnection, "connectionWithRequest:delegate:", request, self);
    objj_msgSend(connection, "cancel");
    objj_msgSend(connection, "start");
}
,["void"]), new objj_method(sel_getUid("loadAvatars"), function $TNUserAvatarController__loadAvatars(self, _cmd)
{
    var avatarsArray = objj_msgSend(self._pListObject, "objectForKey:", "Avatars"),
        bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class"));
    for (var i = 0; i < objj_msgSend(avatarsArray, "count"); i++)
    {
        var avatarInfo = objj_msgSend(avatarsArray, "objectAtIndex:", i),
            image = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", objj_msgSend(avatarInfo, "objectForKey:", "path")), TNUserAvatarSize);
        objj_msgSend(self._avatars, "setObject:forKey:", image, objj_msgSend(avatarInfo, "objectForKey:", "name"));
        if (self._menuAvatarSelection)
        {
            var menuItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", "  " + objj_msgSend(avatarInfo, "objectForKey:", "name"), nil, nil);
            objj_msgSend(menuItem, "setImage:", image);
            objj_msgSend(menuItem, "setTarget:", self);
            objj_msgSend(menuItem, "setAction:", sel_getUid("setAvatar:"));
            objj_msgSend(self._menuAvatarSelection, "addItem:", menuItem);
        }
    }
}
,["void"]), new objj_method(sel_getUid("setAvatar:"), function $TNUserAvatarController__setAvatar_(self, _cmd, aSender)
{
    objj_msgSend(self, "setAvatarImage:withName:", objj_msgSend(aSender, "image"), objj_msgSend(aSender, "title"));
}
,["id","id"]), new objj_method(sel_getUid("setAvatarImage:withName:"), function $TNUserAvatarController__setAvatarImage_withName_(self, _cmd, anAvatarImage, anAvatarName)
{
    var vCard = objj_msgSend(objj_msgSend(TNStropheVCard, "alloc"), "init");
    objj_msgSend(vCard, "setPhoto:", anAvatarImage);
    objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "setVCard:object:selector:userInfo:", vCard, self, sel_getUid("_didSetAvatar:image:"), anAvatarImage);
}
,["void","CPImage","CPString"]), new objj_method(sel_getUid("_didSetAvatar:image:"), function $TNUserAvatarController___didSetAvatar_image_(self, _cmd, aStanza, anImage)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(self._buttonAvatar, "setImage:", anImage);
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", "Avatar", "Avatar has been changed");
    }
    else
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", "Avatar", "Unable to change the avatar", TNGrowlIconError);
    }
}
,["void","TNStropheStanza","CPImage"]), new objj_method(sel_getUid("connection:didReceiveData:"), function $TNUserAvatarController__connection_didReceiveData_(self, _cmd, connection, data)
{
    var cpdata = objj_msgSend(CPData, "dataWithRawString:", data);
    CPLog.info("avatars.plist recovered");
    self._pListObject = objj_msgSend(cpdata, "plistObject");
    objj_msgSend(self, "loadAvatars");
}
,["void","CPURLConnection","CPString"])]);
}p;37;Controllers/TNXMPPAccountController.jt;3843;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPTextField.jI;17;AppKit/CPWindow.jI;33;GrowlCappuccino/GrowlCappuccino.jI;37;StropheCappuccino/TNStropheIMClient.jI;15;TNKit/TNAlert.jt;3627;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("GrowlCappuccino/GrowlCappuccino.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
//@class CPLocalizedString
{var the_class = objj_allocateClassPair(CPObject, "TNXMPPAccountController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("defaultButton"), new objj_ivar("fieldNewPassword"), new objj_ivar("fieldNewPasswordConfirm"), new objj_ivar("mainWindow")]);
       
       


       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNXMPPAccountController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.mainWindow, "setDefaultButton:", self.defaultButton);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("passwordDidChange:"), TNStropheClientPasswordChangedNotification, nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("passwordChangeError:"), TNStropheClientPasswordChangeErrorNotification, nil);
    objj_msgSend(self.fieldNewPassword, "setSecure:", YES);
    objj_msgSend(self.fieldNewPassword, "setNeedsLayout");
    objj_msgSend(self.fieldNewPasswordConfirm, "setSecure:", YES);
    objj_msgSend(self.fieldNewPasswordConfirm, "setNeedsLayout");
}
,["void"]), new objj_method(sel_getUid("passwordDidChange:"), function $TNXMPPAccountController__passwordDidChange_(self, _cmd, aNotification)
{
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", CPLocalizedString("Error", "Error"), CPLocalizedString("Your password has been successfully updated", "Your password has been successfully updated"));
}
,["void","CPNotification"]), new objj_method(sel_getUid("passwordChangeError:"), function $TNXMPPAccountController__passwordChangeError_(self, _cmd, aNotification)
{
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", CPLocalizedString("Error", "Error"), CPLocalizedString("Unable to update your password", "Unable to update your password"), TNGrowlIconError);
}
,["void","CPNotification"]), new objj_method(sel_getUid("showWindow:"), function $TNXMPPAccountController__showWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.fieldNewPassword, "setStringValue:", "");
    objj_msgSend(self.fieldNewPasswordConfirm, "setStringValue:", "");
    objj_msgSend(self.mainWindow, "center");
    objj_msgSend(self.mainWindow, "makeKeyAndOrderFront:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("saveChange:"), function $TNXMPPAccountController__saveChange_(self, _cmd, aSender)
{
    var password = objj_msgSend(self.fieldNewPassword, "stringValue"),
        passwordConfirm = objj_msgSend(self.fieldNewPasswordConfirm, "stringValue");
    if (password && password != "")
    {
        if (password != passwordConfirm)
        {
            objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", CPLocalizedString("Password error", "Password error"), CPLocalizedString("The passwords you entered don't match.", "The passwords you entered don't match."), CPCriticalAlertStyle);
            return;
        }
        objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "changePassword:", password);
        objj_msgSend(self.mainWindow, "close");
    }
}
,["id","id"])]);
}p;21;Views/TNAvatarImage.jt;704;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPImage.jt;637;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
{var the_class = objj_allocateClassPair(CPImage, "TNAvatarImage"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_avatarFilename")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("avatarFilename"), function $TNAvatarImage__avatarFilename(self, _cmd)
{
return self._avatarFilename;
}
,["CPString"]), new objj_method(sel_getUid("setAvatarFilename:"), function $TNAvatarImage__setAvatarFilename_(self, _cmd, newValue)
{
self._avatarFilename = newValue;
}
,["void","CPString"])]);
}p;20;Views/TNAvatarView.jt;1760;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPImageView.jI;15;AppKit/CPView.jt;1668;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
{var the_class = objj_allocateClassPair(CPView, "TNAvatarView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_imageView"), new objj_ivar("_representedObject")]);
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("representedObject"), function $TNAvatarView__representedObject(self, _cmd)
{
return self._representedObject;
}
,["id"]), new objj_method(sel_getUid("_setRepresentedObject:"), function $TNAvatarView___setRepresentedObject_(self, _cmd, newValue)
{
self._representedObject = newValue;
}
,["void","id"]), new objj_method(sel_getUid("setRepresentedObject:"), function $TNAvatarView__setRepresentedObject_(self, _cmd, anObject)
{
    if (!self._imageView)
    {
        var frame = CGRectInset(objj_msgSend(self, "bounds"), 5.0, 5.0);
        self._imageView = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", frame);
        objj_msgSend(self._imageView, "setImageScaling:", CPScaleProportionally);
        objj_msgSend(self._imageView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(self, "addSubview:", self._imageView);
    }
    self._representedObject = anObject;
    objj_msgSend(self._imageView, "setImage:", anObject);
}
,["void","id"]), new objj_method(sel_getUid("setSelected:"), function $TNAvatarView__setSelected_(self, _cmd, isSelected)
{
    objj_msgSend(self, "setBackgroundColor:", isSelected ? objj_msgSend(CPColor, "colorWithHexString:", "5595D1") : nil);
}
,["void","BOOL"])]);
}p;23;Views/TNBasicDataView.jt;3411;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;19;AppKit/CGGradient.jt;3320;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CGGradient.j", NO);
{var the_class = objj_allocateClassPair(CPView, "TNBasicDataView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_colorRegistry")]);



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $TNBasicDataView__initWithFrame_(self, _cmd, aRect)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNBasicDataView").super_class }, "initWithFrame:", aRect))
    {
        objj_msgSend(self, "_init")
    }
    return self;
}
,["void","CGRect"]), new objj_method(sel_getUid("_init"), function $TNBasicDataView___init(self, _cmd)
{
    self._colorRegistry = objj_msgSend(CPDictionary, "dictionary");
}
,["void"]), new objj_method(sel_getUid("setThemeState:"), function $TNBasicDataView__setThemeState_(self, _cmd, aThemeState)
{
    if (objj_msgSend(self, "hasThemeState:", aThemeState))
        return;
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNBasicDataView").super_class }, "setThemeState:", aThemeState);
    if (aThemeState == CPThemeStateSelectedDataView)
    {
        for (var i = 0; i < objj_msgSend(objj_msgSend(self, "subviews"), "count"); i++)
        {
            var view = objj_msgSend(objj_msgSend(self, "subviews"), "objectAtIndex:", i);
            if (objj_msgSend(view, "isKindOfClass:", CPTextField) && !objj_msgSend(view, "isBezeled"))
            {
                objj_msgSend(self._colorRegistry, "setObject:forKey:", objj_msgSend(view, "textColor"), view);
                objj_msgSend(view, "setTextColor:", objj_msgSend(CPColor, "whiteColor"));
            }
            objj_msgSend(view, "setThemeState:", aThemeState);
        }
        objj_msgSend(self, "applyShadow:offset:", objj_msgSend(CPColor, "colorWithHexString:", "2F5288"), CGSizeMake(-1.0, -1.0));
    }
}
,["void","CPThemeState"]), new objj_method(sel_getUid("unsetThemeState:"), function $TNBasicDataView__unsetThemeState_(self, _cmd, aThemeState)
{
    if (!objj_msgSend(self, "hasThemeState:", aThemeState))
        return;
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNBasicDataView").super_class }, "unsetThemeState:", aThemeState);
    if (aThemeState == CPThemeStateSelectedDataView)
    {
        for (var i = 0; i < objj_msgSend(objj_msgSend(self, "subviews"), "count"); i++)
        {
            var view = objj_msgSend(objj_msgSend(self, "subviews"), "objectAtIndex:", i);
            if (objj_msgSend(view, "isKindOfClass:", CPTextField) && !objj_msgSend(view, "isBezeled"))
                objj_msgSend(view, "setTextColor:", objj_msgSend(self._colorRegistry, "objectForKey:", view));
            objj_msgSend(view, "unsetThemeState:", aThemeState);
        }
        objj_msgSend(self, "applyShadow");
    }
}
,["void","CPThemeState"]), new objj_method(sel_getUid("initWithCoder:"), function $TNBasicDataView__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNBasicDataView").super_class }, "initWithCoder:", aCoder))
    {
        objj_msgSend(self, "_init");
        objj_msgSend(self, "applyShadow");
    }
    return self;
}
,["id","CPCoder"])]);
}p;30;Views/TNButtonBarPopUpButton.jt;988;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;15;AppKit/CPMenu.jt;900;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPMenu.j", NO);
{var the_class = objj_allocateClassPair(CPButton, "TNButtonBarPopUpButton"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("mouseDown:"), function $TNButtonBarPopUpButton__mouseDown_(self, _cmd, anEvent)
{
    var wp = CGPointMake(16, 12);
    wp = objj_msgSend(self, "convertPoint:toView:", wp, nil);
    var fake = objj_msgSend(CPEvent, "mouseEventWithType:location:modifierFlags:timestamp:windowNumber:context:eventNumber:clickCount:pressure:", CPRightMouseDown, wp, 0, objj_msgSend(anEvent, "timestamp"), objj_msgSend(anEvent, "windowNumber"), nil, 0, 1, 1);
    objj_msgSend(CPMenu, "popUpContextMenu:withEvent:forView:", objj_msgSend(self, "menu"), fake, self);
}
,["void","CPEvent"])]);
}p;22;Views/TNCalendarView.jt;7378;@STATIC;1.0;I;22;LPKit/LPCalendarView.jt;7332;objj_executeFile("LPKit/LPCalendarView.j", NO);
{var the_class = objj_allocateClassPair(LPCalendarView, "TNCalendarView"),
meta_class = the_class.isa;
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $TNCalendarView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCalendarView").super_class }, "initWithFrame:", aFrame))
    {
        var mainBundle = objj_msgSend(CPBundle, "mainBundle"),
            highlightedBezelColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", [
                        nil,
                        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPCalendarView/highlighted-tile-bezel.png"), CGSizeMake(21.0, 21.0)),
                        nil
                    ], NO)),
            selectedBezelColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", [
                        nil,
                        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPCalendarView/selected-tile-bezel.png"), CGSizeMake(15.0, 15.0)),
                        nil
                    ], NO)),
            selectedHighlightedBezelColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", [
                        nil,
                        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPCalendarView/selected-highlighted-tile-bezel.png"), CGSizeMake(15.0, 15.0)),
                        nil
                    ], NO)),
            disabledSelectedBezelColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", [
                        nil,
                        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPCalendarView/selected-disabled-tile-bezel.png"), CGSizeMake(21.0, 21.0)),
                        nil
                    ], NO));
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", highlightedBezelColor, "tile-bezel-color", CPThemeStateHighlighted);
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithHexString:", "555"), "tile-text-color", CPThemeStateHighlighted);
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithHexString:", "fff"), "tile-text-color", CPThemeStateSelected);
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithWhite:alpha:", 0, 0.4), "tile-text-shadow-color", CPThemeStateSelected);
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", selectedBezelColor, "tile-bezel-color", CPThemeStateSelected);
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", selectedHighlightedBezelColor, "tile-bezel-color", CPThemeStateHighlighted | CPThemeStateSelected);
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithWhite:alpha:", 0, 0.3), "tile-text-color", CPThemeStateDisabled);
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", disabledSelectedBezelColor, "tile-bezel-color", CPThemeStateSelected | CPThemeStateDisabled);
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithWhite:alpha:", 0, 0.4), "tile-text-color", CPThemeStateSelected | CPThemeStateDisabled);
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "clearColor"), "tile-text-shadow-color", CPThemeStateSelected | CPThemeStateDisabled);
    }
    return self;
}
,["id","CGRect"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeAttributes"), function $TNCalendarView__themeAttributes(self, _cmd)
{
    var mainBundle = objj_msgSend(CPBundle, "mainBundle"),
        bgImage = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPCalendarView/background.png"), CGSizeMake(1.0, 21.0))),
        headerBgImage = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPCalendarView/header-background.png"), CGSizeMake(182.0, 40.0))),
        prevImage = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPCalendarView/previous.png"), CGSizeMake(16.0, 16.0))),
        nextImage = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPCalendarView/next.png"), CGSizeMake(16.0, 16.0))),
        bezelColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", [
                            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPCalendarView/default-tile-bezel-left.png"), CGSizeMake(1.0, 21.0)),
                            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPCalendarView/default-tile-bezel-center.png"), CGSizeMake(21.0, 21.0)),
                            nil
                        ], NO));
    return objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(CPColor, "colorWithHexString:", "ccc"), "grid-color", bgImage, "background-color", 40, "header-height", headerBgImage, "header-background-color", objj_msgSend(CPFont, "boldSystemFontOfSize:", 11.0), "header-font", objj_msgSend(CPColor, "colorWithHexString:", "333"), "header-text-color", objj_msgSend(CPColor, "whiteColor"), "header-text-shadow-color", CGSizeMake(1.0, 1.0), "header-text-shadow-offset", CPCenterTextAlignment, "header-alignment", CGSizeMake(10, 7), "header-button-offset", prevImage, "header-prev-button-image", nextImage, "header-next-button-image", 25, "header-weekday-offset", objj_msgSend(CPFont, "systemFontOfSize:", 9.0), "header-weekday-label-font", objj_msgSend(CPColor, "colorWithWhite:alpha:", 0, 0.57), "header-weekday-label-color", objj_msgSend(CPColor, "colorWithWhite:alpha:", 1, 0.8), "header-weekday-label-shadow-color", CGSizeMake(0.0, 1.0), "header-weekday-label-shadow-offset", CGSizeMake(27, 21), "tile-size", objj_msgSend(CPFont, "boldSystemFontOfSize:", 11.0), "tile-font", objj_msgSend(CPColor, "colorWithHexString:", "333"), "tile-text-color", objj_msgSend(CPColor, "colorWithWhite:alpha:", 1, 0.8), "tile-text-shadow-color", CGSizeMake(1.0, 1.0), "tile-text-shadow-offset", bezelColor, "tile-bezel-color");
}
,["id"])]);
}p;21;Views/TNModalWindow.jt;1647;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPPanel.jt;1579;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPPanel.j", NO);
{var the_class = objj_allocateClassPair(CPPanel, "TNModalWindow"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithContentRect:styleMask:"), function $TNModalWindow__initWithContentRect_styleMask_(self, _cmd, aFrame, aMask)
{
    if (objj_msgSend(CPPlatform, "isBrowser"))
    {
        if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNModalWindow").super_class }, "initWithContentRect:styleMask:", aFrame, CPBorderlessWindowMask))
        {
            self._windowView._DOMElement.style.background = "#F4F4F4";
            self._windowView._DOMElement.style.background = "-webkit-gradient(linear, left top, left bottom, from(#F4F4F4), to(#D2D2D2))";
            self._windowView._DOMElement.style.background = "-moz-linear-gradient(-90deg, #F4F4F4, #D2D2D2)";
            self._windowView._DOMElement.style.border = "1px solid white";
            self._windowView._DOMElement.style.borderRadius = "6px";
            self._windowView._DOMElement.style.MozBorderRadius = "6px";
            self._windowView._DOMElement.style.webkitBoxShadow = "0px 0px 10px #8DB9D1";
            self._windowView._DOMElement.style.MozBoxShadow = "0px 0px 10px #8DB9D1";
        }
    }
    else
        self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNModalWindow").super_class }, "initWithContentRect:styleMask:", aFrame, aMask);
     return self;
}
,["id","CGRect","id"])]);
}p;27;Views/TNOutlineViewRoster.jt;10630;@STATIC;1.0;I;23;Foundation/Foundation.jI;22;AppKit/CPOutlineView.jI;18;AppKit/CPTabView.jI;20;AppKit/CPTextField.jI;36;StropheCappuccino/TNStropheContact.ji;29;../Model/TNDatasourceRoster.jt;10432;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPOutlineView.j", NO);
objj_executeFile("AppKit/CPTabView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("StropheCappuccino/TNStropheContact.j", NO);
objj_executeFile("../Model/TNDatasourceRoster.j", YES);
//@global TNArchipelRememberOpenedGroup
TNArchipelRosterOutlineViewReload = "TNArchipelRosterOutlineViewReload";
TNArchipelPropertiesViewDidShowNotification = "TNArchipelPropertiesViewDidShowNotification";
TNArchipelRosterOutlineViewDeselectAll = "TNArchipelRosterOutlineDeselectAll";
TNArchipelRosterOutlineViewSelectItemNotification = "TNArchipelRosterOutlineViewSelectItemNotification";
{var the_class = objj_allocateClassPair(CPOutlineView, "TNOutlineViewRoster"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_searchField"), new objj_ivar("_tabViewModules")]);
       
       




       
       

       
       





       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("searchField"), function $TNOutlineViewRoster__searchField(self, _cmd)
{
return self._searchField;
}
,["CPSearchField"]), new objj_method(sel_getUid("setSearchField:"), function $TNOutlineViewRoster__setSearchField_(self, _cmd, newValue)
{
self._searchField = newValue;
}
,["void","CPSearchField"]), new objj_method(sel_getUid("modulesTabView"), function $TNOutlineViewRoster__modulesTabView(self, _cmd)
{
return self._tabViewModules;
}
,["CPTabView"]), new objj_method(sel_getUid("setModulesTabView:"), function $TNOutlineViewRoster__setModulesTabView_(self, _cmd, newValue)
{
self._tabViewModules = newValue;
}
,["void","CPTabView"]), new objj_method(sel_getUid("initWithFrame:"), function $TNOutlineViewRoster__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNOutlineViewRoster").super_class }, "initWithFrame:", aFrame))
    {
        var columnLabel = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "name"),
            columnOutline = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "outline");
        objj_msgSend(columnLabel, "setWidth:", aFrame.size.width);
        objj_msgSend(columnOutline, "setWidth:", 12.0);
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("reload:"), TNArchipelRosterOutlineViewReload, nil);
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("deselectAll:"), TNArchipelRosterOutlineViewDeselectAll, nil);
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("didPropertiesViewUpdate:"), TNArchipelPropertiesViewDidShowNotification, nil);
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("didReceiveSelectItemNotification:"), TNArchipelRosterOutlineViewSelectItemNotification, nil);
        objj_msgSend(self, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
        objj_msgSend(self, "setHeaderView:", nil);
        objj_msgSend(self, "setCornerView:", nil);
        objj_msgSend(self, "setBackgroundColor:", nil);
        objj_msgSend(self, "setColumnAutoresizingStyle:", CPTableViewLastColumnOnlyAutoresizingStyle);
        objj_msgSend(self, "addTableColumn:", columnLabel);
        objj_msgSend(self, "setOutlineTableColumn:", columnLabel);
        objj_msgSend(self, "setTarget:", self);
        objj_msgSend(self, "setAllowsMultipleSelection:", YES);
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("reload:"), function $TNOutlineViewRoster__reload_(self, _cmd, aNotification)
{
    var index = objj_msgSend(objj_msgSend(self, "selectedRowIndexes"), "firstIndex"),
        item = objj_msgSend(self, "itemAtRow:", index);
    objj_msgSend(self, "reloadData");
    if ((item) && (objj_msgSend(self, "rowForItem:", item) != -1))
    {
        var index = objj_msgSend(self, "rowForItem:", item);
        objj_msgSend(self, "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", index), NO);
    }
    else
    {
        if (objj_msgSend(self, "numberOfSelectedRows") > 0)
            objj_msgSend(self, "deselectAll");
    }
    objj_msgSend(self, "recoverExpandedWithBaseKey:itemKeyPath:", TNArchipelRememberOpenedGroup, "name");
    objj_msgSend(self, "getVCardsForVisibleEntitiesIfNeeded");
}
,["void","CPNotification"]), new objj_method(sel_getUid("deselectAll:"), function $TNOutlineViewRoster__deselectAll_(self, _cmd, aNotification)
{
    objj_msgSend(self, "deselectAll");
}
,["void","CPNotification"]), new objj_method(sel_getUid("didPropertiesViewUpdate:"), function $TNOutlineViewRoster__didPropertiesViewUpdate_(self, _cmd, aNotification)
{
    var selectedIndex = objj_msgSend(objj_msgSend(self, "selectedRowIndexes"), "firstIndex");
    objj_msgSend(self, "scrollRowToVisible:", selectedIndex);
}
,["void","CPNotification"]), new objj_method(sel_getUid("didReceiveSelectItemNotification:"), function $TNOutlineViewRoster__didReceiveSelectItemNotification_(self, _cmd, aNotification)
{
    if (!objj_msgSend(aNotification, "userInfo"))
    {
        CPLog.warning("received notification to select an item, but no item is provided.")
        return;
    }
    var rowIndex = objj_msgSend(self, "rowForItem:", objj_msgSend(aNotification, "userInfo"));
    if (rowIndex !== CPNotFound)
        objj_msgSend(objj_msgSend(self._searchField, "cancelButton"), "performClick:", self);
        objj_msgSend(self, "reloadData");
        objj_msgSend(self, "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", rowIndex), NO);
}
,["void","CPNotification"]), new objj_method(sel_getUid("getVCardsForVisibleEntitiesIfNeeded"), function $TNOutlineViewRoster__getVCardsForVisibleEntitiesIfNeeded(self, _cmd)
{
    var visibleRange = objj_msgSend(self, "rowsInRect:", objj_msgSend(self, "visibleRect"));
    for (var i = visibleRange.location; i < (visibleRange.location + visibleRange.length); i++)
    {
        var item = objj_msgSend(self, "itemAtRow:", i);
        if (objj_msgSend(item, "isKindOfClass:", TNStropheContact) && !objj_msgSend(item, "vCard"))
            objj_msgSend(item, "getVCard");
    }
}
,["void"]), new objj_method(sel_getUid("moveLeft"), function $TNOutlineViewRoster__moveLeft(self, _cmd)
{
    var index = objj_msgSend(self, "selectedRowIndexes");
    if (objj_msgSend(index, "firstIndex") == -1)
        return;
    var item = objj_msgSend(self, "itemAtRow:", objj_msgSend(index, "firstIndex"));
    if (objj_msgSend(self, "isExpandable:", item))
        objj_msgSend(self, "collapseItem:", item);
    else
    {
        var selectedIndex = objj_msgSend(self._tabViewModules, "indexOfTabViewItem:", objj_msgSend(self._tabViewModules, "selectedTabViewItem")),
            numberOfItems = objj_msgSend(self._tabViewModules, "numberOfTabViewItems");
        if (selectedIndex > 0)
            objj_msgSend(self._tabViewModules, "selectPreviousTabViewItem:", nil);
        else if (numberOfItems > 1)
            objj_msgSend(self._tabViewModules, "selectLastTabViewItem:", nil);
    }
}
,["void"]), new objj_method(sel_getUid("moveRight"), function $TNOutlineViewRoster__moveRight(self, _cmd)
{
    var index = objj_msgSend(self, "selectedRowIndexes");
    if (objj_msgSend(index, "firstIndex") == -1)
        return;
    var item = objj_msgSend(self, "itemAtRow:", objj_msgSend(index, "firstIndex"));
    if (objj_msgSend(self, "isExpandable:", item))
        objj_msgSend(self, "expandItem:", item);
    else
    {
        var selectedIndex = objj_msgSend(self._tabViewModules, "indexOfTabViewItem:", objj_msgSend(self._tabViewModules, "selectedTabViewItem")),
            numberOfItems = objj_msgSend(self._tabViewModules, "numberOfTabViewItems");
        if (selectedIndex < numberOfItems - 1)
            objj_msgSend(self._tabViewModules, "selectNextTabViewItem:", nil);
        else if (numberOfItems > 1)
            objj_msgSend(self._tabViewModules, "selectFirstTabViewItem:", nil);
    }
}
,["void"]), new objj_method(sel_getUid("moveDown"), function $TNOutlineViewRoster__moveDown(self, _cmd)
{
    var index = objj_msgSend(objj_msgSend(self, "selectedRowIndexes"), "firstIndex");
    if (index == objj_msgSend(self, "numberOfRows") - 1)
    {
        objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", self._searchField);
        objj_msgSend(self, "deselectAll");
    }
    else
    {
        objj_msgSend(self, "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", (index + 1)), NO);
    }
}
,["void"]), new objj_method(sel_getUid("moveUp"), function $TNOutlineViewRoster__moveUp(self, _cmd)
{
    var index = objj_msgSend(objj_msgSend(self, "selectedRowIndexes"), "firstIndex");
    if (index == 0)
    {
        objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", self._searchField);
        objj_msgSend(self, "deselectAll");
    }
    else
    {
        objj_msgSend(self, "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", (index - 1)), NO);
    }
}
,["void"]), new objj_method(sel_getUid("keyDown:"), function $TNOutlineViewRoster__keyDown_(self, _cmd, anEvent)
{
    switch (objj_msgSend(anEvent, "keyCode"))
    {
        case CPEscapeKeyCode:
            objj_msgSend(objj_msgSend(self._searchField, "cancelButton"), "performClick:", self);
            break;
        case CPDownArrowKeyCode:
            objj_msgSend(self, "moveDown");
            break;
        case CPUpArrowKeyCode:
            objj_msgSend(self, "moveUp");
            break;
        case CPLeftArrowKeyCode:
            objj_msgSend(self, "moveLeft");
            break;
        case CPRightArrowKeyCode:
            objj_msgSend(self, "moveRight");
            break;
        default:
            objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNOutlineViewRoster").super_class }, "keyDown:", anEvent);
    }
}
,["void","CPEvent"]), new objj_method(sel_getUid("scrollViewDidScroll:"), function $TNOutlineViewRoster__scrollViewDidScroll_(self, _cmd, aView)
{
    objj_msgSend(self, "getVCardsForVisibleEntitiesIfNeeded");
}
,["void","CPScrollView"])]);
}p;25;Views/TNRosterDataViews.jt;13775;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPImage.jI;20;AppKit/CPImageView.jI;20;AppKit/CPTextField.jI;36;StropheCappuccino/TNStropheContact.jt;13615;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("StropheCappuccino/TNStropheContact.j", NO);
var TNRosterDataViewContactImageUnknownUser,
    TNRosterDataViewContactImageSelectedCartoucheColor,
    TNRosterDataViewContactImageNormalCartoucheColor;
{var the_class = objj_allocateClassPair(CPValueTransformer, "TNNoAvatarValueTransformer"),
meta_class = the_class.isa;


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("transformedValue:"), function $TNNoAvatarValueTransformer__transformedValue_(self, _cmd, value)
{
    return !value ? TNRosterDataViewContactImageUnknownUser : value;
}
,["id","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNNoAvatarValueTransformer__initialize(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "mainBundle");
    TNRosterDataViewContactImageUnknownUser = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "user-unknown.png"));
}
,["void"]), new objj_method(sel_getUid("transformedValueClass"), function $TNNoAvatarValueTransformer__transformedValueClass(self, _cmd)
{
    return objj_msgSend(CPImage, "class");
}
,["Class"]), new objj_method(sel_getUid("allowsReverseTransformation"), function $TNNoAvatarValueTransformer__allowsReverseTransformation(self, _cmd)
{
    return NO;
}
,["BOOL"])]);
}
{var the_class = objj_allocateClassPair(CPView, "TNRosterDataViewContact"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("avatar"), new objj_ivar("statusIcon"), new objj_ivar("events"), new objj_ivar("name"), new objj_ivar("status"), new objj_ivar("_contact")]);

       
       

       
       


       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("avatar"), function $TNRosterDataViewContact__avatar(self, _cmd)
{
return self.avatar;
}
,["CPImageView"]), new objj_method(sel_getUid("setAvatar:"), function $TNRosterDataViewContact__setAvatar_(self, _cmd, newValue)
{
self.avatar = newValue;
}
,["void","CPImageView"]), new objj_method(sel_getUid("statusIcon"), function $TNRosterDataViewContact__statusIcon(self, _cmd)
{
return self.statusIcon;
}
,["CPImageView"]), new objj_method(sel_getUid("setStatusIcon:"), function $TNRosterDataViewContact__setStatusIcon_(self, _cmd, newValue)
{
self.statusIcon = newValue;
}
,["void","CPImageView"]), new objj_method(sel_getUid("events"), function $TNRosterDataViewContact__events(self, _cmd)
{
return self.events;
}
,["CPTextField"]), new objj_method(sel_getUid("setEvents:"), function $TNRosterDataViewContact__setEvents_(self, _cmd, newValue)
{
self.events = newValue;
}
,["void","CPTextField"]), new objj_method(sel_getUid("name"), function $TNRosterDataViewContact__name(self, _cmd)
{
return self.name;
}
,["CPTextField"]), new objj_method(sel_getUid("setName:"), function $TNRosterDataViewContact__setName_(self, _cmd, newValue)
{
self.name = newValue;
}
,["void","CPTextField"]), new objj_method(sel_getUid("status"), function $TNRosterDataViewContact__status(self, _cmd)
{
return self.status;
}
,["CPTextField"]), new objj_method(sel_getUid("setStatus:"), function $TNRosterDataViewContact__setStatus_(self, _cmd, newValue)
{
self.status = newValue;
}
,["void","CPTextField"]), new objj_method(sel_getUid("_initTheme"), function $TNRosterDataViewContact___initTheme(self, _cmd)
{
    objj_msgSend(self.events, "setBackgroundColor:", TNRosterDataViewContactImageNormalCartoucheColor);
    objj_msgSend(self.events, "setVerticalAlignment:", CPCenterVerticalTextAlignment);
    objj_msgSend(self.events, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithHexString:", "6D96EE"), "text-color", CPThemeStateSelectedDataView);
    objj_msgSend(self.events, "setValue:forThemeAttribute:inState:", TNRosterDataViewContactImageNormalCartoucheColor, "bezel-color", CPThemeStateNormal);
    objj_msgSend(self.events, "setValue:forThemeAttribute:inState:", TNRosterDataViewContactImageSelectedCartoucheColor, "bezel-color", CPThemeStateSelectedDataView);
    objj_msgSend(self.events, "setValue:forThemeAttribute:", CGInsetMake(0.0, 0.0, 0.0, 0.0), "content-inset");
    objj_msgSend(self.events, "setValue:forThemeAttribute:", CGInsetMake(0.0, 0.0, 0.0, 0.0), "bezel-inset");
    objj_msgSend(self.events, "setHidden:", YES);
    objj_msgSend(self.name, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "whiteColor"), "text-shadow-color", CPThemeStateNormal);
    objj_msgSend(self.name, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithHexString:", "426ABF"), "text-shadow-color", CPThemeStateSelectedDataView);
    objj_msgSend(self.name, "setValue:forThemeAttribute:inState:", CGSizeMake(0.0, 1.0), "text-shadow-offset", CPThemeStateNormal);
    objj_msgSend(self.name, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "whiteColor"), "text-color", CPThemeStateSelectedDataView);
    objj_msgSend(self.status, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "whiteColor"), "text-shadow-color", CPThemeStateNormal);
    objj_msgSend(self.status, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithHexString:", "426ABF"), "text-shadow-color", CPThemeStateSelectedDataView);
    objj_msgSend(self.status, "setValue:forThemeAttribute:inState:", CGSizeMake(0.0, 1.0), "text-shadow-offset", CPThemeStateNormal);
    objj_msgSend(self.status, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithHexString:", "808080"), "text-color", CPThemeStateNormal);
    objj_msgSend(self.status, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "whiteColor"), "text-color", CPThemeStateSelectedDataView);
}
,["void"]), new objj_method(sel_getUid("setObjectValue:"), function $TNRosterDataViewContact__setObjectValue_(self, _cmd, aContact)
{
    if (!aContact)
        return;
    self._contact = aContact;
    var opts = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", "TNNoAvatarValueTransformer", CPValueTransformerNameBindingOption);
    objj_msgSend(self.name, "bind:toObject:withKeyPath:options:", "objectValue", aContact, "name", nil);
    objj_msgSend(self.status, "bind:toObject:withKeyPath:options:", "objectValue", aContact, "XMPPStatus", nil);
    objj_msgSend(self.statusIcon, "bind:toObject:withKeyPath:options:", "objectValue", aContact, "statusIcon", nil);
    objj_msgSend(self.avatar, "bind:toObject:withKeyPath:options:", "objectValue", aContact, "avatar", opts);
    objj_msgSend(self.events, "setHidden:", YES);
    if (objj_msgSend(aContact, "numberOfEvents") > 0)
    {
        objj_msgSend(self.events, "setHidden:", NO);
        objj_msgSend(self.events, "setStringValue:", objj_msgSend(aContact, "numberOfEvents"));
    }
}
,["void","id"]), new objj_method(sel_getUid("setThemeState:"), function $TNRosterDataViewContact__setThemeState_(self, _cmd, aState)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNRosterDataViewContact").super_class }, "setThemeState:", aState);
    objj_msgSend(self.name, "setThemeState:", aState);
    objj_msgSend(self.status, "setThemeState:", aState);
    objj_msgSend(self.events, "setThemeState:", aState);
}
,["void","id"]), new objj_method(sel_getUid("unsetThemeState:"), function $TNRosterDataViewContact__unsetThemeState_(self, _cmd, aState)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNRosterDataViewContact").super_class }, "unsetThemeState:", aState);
    objj_msgSend(self.name, "unsetThemeState:", aState);
    objj_msgSend(self.status, "unsetThemeState:", aState);
    objj_msgSend(self.events, "unsetThemeState:", aState);
}
,["void","id"]), new objj_method(sel_getUid("initWithCoder:"), function $TNRosterDataViewContact__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNRosterDataViewContact").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self._contact = objj_msgSend(aCoder, "decodeObjectForKey:", "_contact");
        self.name = objj_msgSend(aCoder, "decodeObjectForKey:", "name");
        self.status = objj_msgSend(aCoder, "decodeObjectForKey:", "status");
        self.statusIcon = objj_msgSend(aCoder, "decodeObjectForKey:", "statusIcon");
        self.events = objj_msgSend(aCoder, "decodeObjectForKey:", "events");
        self.avatar = objj_msgSend(aCoder, "decodeObjectForKey:", "avatar");
        objj_msgSend(self, "_initTheme");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNRosterDataViewContact__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNRosterDataViewContact").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self._contact, "_contact");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.name, "name");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.status, "status");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.statusIcon, "statusIcon");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.events, "events");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.avatar, "avatar");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNRosterDataViewContact__initialize(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "mainBundle");
    TNRosterDataViewContactImageNormalCartoucheColor = CPColorWithImages([ ["pills/pill-left.png", 6, 14, bundle],
                                                                            ["pills/pill-center.png", 1, 14, bundle],
                                                                            ["pills/pill-right.png", 6, 14, bundle]]);
    TNRosterDataViewContactImageSelectedCartoucheColor = CPColorWithImages([["pills/pill-highlighted-left.png", 6, 14, bundle],
                                                                            ["pills/pill-highlighted-center.png", 1, 14, bundle],
                                                                            ["pills/pill-highlighted-right.png", 6, 14, bundle]]);
    objj_msgSend(CPValueTransformer, "setValueTransformer:forName:", objj_msgSend(objj_msgSend(TNNoAvatarValueTransformer, "alloc"), "init"), "TNNoAvatarValueTransformer");
}
,["void"])]);
}
{var the_class = objj_allocateClassPair(CPView, "TNRosterDataViewGroup"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("name")]);
       
       

       
       


       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("name"), function $TNRosterDataViewGroup__name(self, _cmd)
{
return self.name;
}
,["CPTextField"]), new objj_method(sel_getUid("setName:"), function $TNRosterDataViewGroup__setName_(self, _cmd, newValue)
{
self.name = newValue;
}
,["void","CPTextField"]), new objj_method(sel_getUid("_initTheme"), function $TNRosterDataViewGroup___initTheme(self, _cmd)
{
    objj_msgSend(self.name, "setTextColor:", objj_msgSend(CPColor, "colorWithHexString:", "757F8C"));
    objj_msgSend(self.name, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "whiteColor"), "text-color", CPThemeStateSelectedDataView);
    objj_msgSend(self.name, "setTextShadowOffset:", CGSizeMake(0.0, 1.0));
    objj_msgSend(self.name, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "whiteColor"), "text-shadow-color", CPThemeStateNormal);
    objj_msgSend(self.name, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithHexString:", "426ABF"), "text-shadow-color", CPThemeStateSelectedDataView);
    objj_msgSend(self.name, "setVerticalAlignment:", CPCenterVerticalTextAlignment);
}
,["id"]), new objj_method(sel_getUid("setObjectValue:"), function $TNRosterDataViewGroup__setObjectValue_(self, _cmd, aGroup)
{
    objj_msgSend(self.name, "bind:toObject:withKeyPath:options:", "objectValue", aGroup, "name", nil);
}
,["void","TNStropheGroup"]), new objj_method(sel_getUid("setThemeState:"), function $TNRosterDataViewGroup__setThemeState_(self, _cmd, aState)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNRosterDataViewGroup").super_class }, "setThemeState:", aState);
    objj_msgSend(self.name, "setThemeState:", aState);
}
,["void","id"]), new objj_method(sel_getUid("unsetThemeState:"), function $TNRosterDataViewGroup__unsetThemeState_(self, _cmd, aState)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNRosterDataViewGroup").super_class }, "unsetThemeState:", aState);
    objj_msgSend(self.name, "unsetThemeState:", aState);
}
,["void","id"]), new objj_method(sel_getUid("initWithCoder:"), function $TNRosterDataViewGroup__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNRosterDataViewGroup").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self.name = objj_msgSend(aCoder, "decodeObjectForKey:", "name");
        objj_msgSend(self, "_initTheme");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNRosterDataViewGroup__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNRosterDataViewGroup").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.name, "name");
}
,["void","CPCoder"])]);
}p;21;Views/TNSearchField.jt;2205;@STATIC;1.0;I;23;Foundation/Foundation.jI;22;AppKit/CPOutlineView.jI;22;AppKit/CPSearchField.jt;2104;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPOutlineView.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
{var the_class = objj_allocateClassPair(CPSearchField, "TNSearchField"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_outlineView")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("outlineView"), function $TNSearchField__outlineView(self, _cmd)
{
return self._outlineView;
}
,["CPOutlineView"]), new objj_method(sel_getUid("setOutlineView:"), function $TNSearchField__setOutlineView_(self, _cmd, newValue)
{
self._outlineView = newValue;
}
,["void","CPOutlineView"]), new objj_method(sel_getUid("keyDown:"), function $TNSearchField__keyDown_(self, _cmd, anEvent)
{
    switch (objj_msgSend(anEvent, "keyCode"))
    {
        case CPDownArrowKeyCode:
            objj_msgSend(self._outlineView, "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", 0), NO);
            objj_msgSend(objj_msgSend(self._outlineView, "window"), "makeFirstResponder:", self._outlineView);
            break;
        case CPUpArrowKeyCode:
            objj_msgSend(self._outlineView, "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", (objj_msgSend(self._outlineView, "numberOfRows") - 1)), NO);
            objj_msgSend(objj_msgSend(self._outlineView, "window"), "makeFirstResponder:", self._outlineView);
            break;
        case CPReturnKeyCode:
            objj_msgSend(self._outlineView, "selectRowIndexes:byExtendingSelection:", objj_msgSend(CPIndexSet, "indexSetWithIndex:", 1), NO);
            objj_msgSend(objj_msgSend(self._outlineView, "window"), "makeFirstResponder:", self._outlineView);
            break;
        case CPEscapeKeyCode:
            objj_msgSend(objj_msgSend(self, "cancelButton"), "performClick:", nil);
            break;
        default:
            objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNSearchField").super_class }, "keyDown:", anEvent);
    }
}
,["void","CPEvent"])]);
}p;16;Views/TNSwitch.jt;5578;@STATIC;1.0;I;16;LPKit/LPSwitch.jt;5538;objj_executeFile("LPKit/LPSwitch.j", NO);
{var the_class = objj_allocateClassPair(LPSwitch, "TNSwitch"),
meta_class = the_class.isa;

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $TNSwitch__initWithFrame_(self, _cmd, aFrame)
{
    aFrame.size.width = 77;
    aFrame.size.height = 25;
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNSwitch").super_class }, "initWithFrame:", aFrame))
    {
        var mainBundle = objj_msgSend(CPBundle, "mainBundle"),
            switchSize = CGSizeMake(aFrame.size.width, aFrame.size.height),
            highlightedKnobBackgroundImage = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPSwitch/switch-knob-highlighted.png"), switchSize)),
            offBackgroundImageDisabled = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPSwitch/switch-off-background-disabled.png"), switchSize)),
            knobBackgroundDisabled = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPSwitch/switch-knob-disabled.png"), switchSize));
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", highlightedKnobBackgroundImage, "knob-background-color", CPThemeStateNormal | CPThemeStateHighlighted);
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", offBackgroundImageDisabled, "off-background-color", CPThemeStateDisabled);
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", offBackgroundImageDisabled, "on-background-color", CPThemeStateDisabled);
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", knobBackgroundDisabled, "knob-background-color", CPThemeStateDisabled);
        objj_msgSend(self, "setValue:forThemeAttribute:", CGSizeMake(30, aFrame.height), "knob-size");
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "grayColor"), "off-label-text-color", CPThemeStateDisabled);
        objj_msgSend(self, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "grayColor"), "on-label-text-color", CPThemeStateDisabled);
    }
    return self;
}
,["id","CGRect"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeAttributes"), function $TNSwitch__themeAttributes(self, _cmd)
{
    var mainBundle = objj_msgSend(CPBundle, "mainBundle"),
        switchSize = CGSizeMake(77, 25),
        offBackgroundImage = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPSwitch/switch-off-background.png"), switchSize)),
        onBackgroundImage = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPSwitch/switch-on-background.png"), switchSize)),
        knobBackgroundImage = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPSwitch/switch-knob.png"), switchSize)),
        highlightedKnobBackgroundImage = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPSwitch/switch-knob-highlighted.png"), switchSize));
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [offBackgroundImage, onBackgroundImage, knobBackgroundImage, CGSizeMake(30,25), CGSizeMake(12,6),
                                                objj_msgSend(CPFont, "boldSystemFontOfSize:", 11), objj_msgSend(CPColor, "colorWithWhite:alpha:", 0, 0.7), objj_msgSend(CPColor, "colorWithWhite:alpha:", 1, 0.8), CGSizeMake(0,1),
                                                objj_msgSend(CPFont, "boldSystemFontOfSize:", 11), objj_msgSend(CPColor, "colorWithWhite:alpha:", 1, 1.0), objj_msgSend(CPColor, "colorWithWhite:alpha:", 0.3, 0.8), CGSizeMake(0,1)], ["off-background-color", "on-background-color", "knob-background-color", "knob-size", "label-offset",
                                                "off-label-font", "off-label-text-color", "off-label-text-shadow-color", "off-label-text-shadow-offset",
                                                "on-label-font", "on-label-text-color", "on-label-text-shadow-color", "on-label-text-shadow-offset"]);
}
,["id"]), new objj_method(sel_getUid("switchWithFrame:"), function $TNSwitch__switchWithFrame_(self, _cmd, aFrame)
{
    var mainBundle = objj_msgSend(CPBundle, "mainBundle"),
        aSwitch = objj_msgSend(objj_msgSend(TNSwitch, "alloc"), "initWithFrame:", aFrame),
        switchSize = CGSizeMake(77, 25),
        highlightedKnobBackgroundImage = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "LPSwitch/switch-knob-highlighted.png"), switchSize));
    objj_msgSend(aSwitch, "setValue:forThemeAttribute:inState:", highlightedKnobBackgroundImage, "knob-background-color", CPThemeStateNormal | CPThemeStateHighlighted);
    return aSwitch;
}
,["TNSwitch","CGRect"])]);
}p;26;Model/TNDatasourceRoster.jt;14362;@STATIC;1.0;I;23;Foundation/Foundation.jI;22;AppKit/CPOutlineView.jI;22;AppKit/CPSearchField.jI;22;AppKit/CPTableColumn.jI;39;StropheCappuccino/PubSub/TNPubSubNode.jI;35;StropheCappuccino/TNStropheRoster.jI;29;StropheCappuccino/TNXMLNode.jt;14115;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPOutlineView.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTableColumn.j", NO);
objj_executeFile("StropheCappuccino/PubSub/TNPubSubNode.j", NO);
objj_executeFile("StropheCappuccino/TNStropheRoster.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
//@global TNArchipelRosterOutlineViewReload
//@global TNTagsControllerNodeReadyNotification
//@global TNArchipelEntityTypes
//@global TNArchipelEntityTypeUser
TNDragTypeContact = "TNDragTypeContact";
{var the_class = objj_allocateClassPair(TNStropheRoster, "TNDatasourceRoster"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_hideOfflineContacts"), new objj_ivar("_filterField"), new objj_ivar("_filter"), new objj_ivar("_tagsRegistry"), new objj_ivar("_draggedItems"), new objj_ivar("_pubsubTagsNode"), new objj_ivar("_reloadGraceTimer")]);



       
       




       
       

       
       


       
       

       
       

       
       






objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isOfflineContactsHidden"), function $TNDatasourceRoster__isOfflineContactsHidden(self, _cmd)
{
return self._hideOfflineContacts;
}
,["BOOL"]), new objj_method(sel_getUid("setHideOfflineContacts:"), function $TNDatasourceRoster__setHideOfflineContacts_(self, _cmd, newValue)
{
self._hideOfflineContacts = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("filterField"), function $TNDatasourceRoster__filterField(self, _cmd)
{
return self._filterField;
}
,["CPSearchField"]), new objj_method(sel_getUid("setFilterField:"), function $TNDatasourceRoster__setFilterField_(self, _cmd, newValue)
{
self._filterField = newValue;
}
,["void","CPSearchField"]), new objj_method(sel_getUid("filter"), function $TNDatasourceRoster__filter(self, _cmd)
{
return self._filter;
}
,["CPString"]), new objj_method(sel_getUid("setFilter:"), function $TNDatasourceRoster__setFilter_(self, _cmd, newValue)
{
self._filter = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithConnection:"), function $TNDatasourceRoster__initWithConnection_(self, _cmd, aConnection)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNDatasourceRoster").super_class }, "initWithConnection:", aConnection))
    {
        self._filter = nil;
        self._hideOfflineContacts = NO;
        var center = objj_msgSend(CPNotificationCenter, "defaultCenter");
        objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("didTagsNodeReady:"), TNTagsControllerNodeReadyNotification, nil);
        objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("updateOutlineView:"), TNStropheRosterRetrievedNotification, nil);
        objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("updateOutlineView:"), TNStropheRosterContactRemovedNotification, nil);
        objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("updateOutlineView:"), TNStropheRosterGroupAddedNotification, nil);
        objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("updateOutlineView:"), TNStropheContactMessageTreatedNotification, nil);
        objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("updateOutlineView:"), TNStropheRosterGroupRenamedNotification, nil);
        objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("updateOutlineView:"), TNStropheRosterGroupRemovedNotification, nil);
        objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("updateOutlineView:"), TNStropheRosterPushNotification, nil);
    }
    return self;
}
,["id","TNStropheConnection"]), new objj_method(sel_getUid("analyseVCard:"), function $TNDatasourceRoster__analyseVCard_(self, _cmd, aVCard)
{
    if (aVCard)
    {
        var itemType = objj_msgSend(aVCard, "role");
        if (objj_msgSend(TNArchipelEntityTypes, "containsKey:", itemType))
            return itemType;
        else
            return TNArchipelEntityTypeUser;
    }
    return TNArchipelEntityTypeUser;
}
,["CPString","TNStropheVCard"]), new objj_method(sel_getUid("entityDescriptionFor:"), function $TNDatasourceRoster__entityDescriptionFor_(self, _cmd, anEntity)
{
       return objj_msgSend(TNArchipelEntityTypes, "objectForKey:", anEntity);
}
,["CPString","CPString"]), new objj_method(sel_getUid("updateOutlineView:"), function $TNDatasourceRoster__updateOutlineView_(self, _cmd, aNotification)
{
    if (self._reloadGraceTimer)
        objj_msgSend(self._reloadGraceTimer, "invalidate");
    self._reloadGraceTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", 0.2, self, sel_getUid("_performUpdateOutlineView:"), nil, NO);
}
,["void","CPNotification"]), new objj_method(sel_getUid("_performUpdateOutlineView:"), function $TNDatasourceRoster___performUpdateOutlineView_(self, _cmd, aTimer)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNArchipelRosterOutlineViewReload, self);
    self._reloadGraceTimer = nil;
}
,["void","CPTimer"]), new objj_method(sel_getUid("didTagsNodeReady:"), function $TNDatasourceRoster__didTagsNodeReady_(self, _cmd, aNotification)
{
    self._pubsubTagsNode = objj_msgSend(aNotification, "object");
    objj_msgSend(self, "_didTagsRecovered:", nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didTagsRecovered:"), TNStrophePubSubNodeRetrievedNotification, self._pubsubTagsNode);
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didTagsRecovered:"), function $TNDatasourceRoster___didTagsRecovered_(self, _cmd, aNotification)
{
    self._tagsRegistry = objj_msgSend(CPDictionary, "dictionary");
    for (var i = 0; i < objj_msgSend(objj_msgSend(self._pubsubTagsNode, "content"), "count"); i++)
    {
        var tagItem = objj_msgSend(objj_msgSend(objj_msgSend(self._pubsubTagsNode, "content"), "objectAtIndex:", i), "firstChildWithName:", "tag"),
            jid = objj_msgSend(tagItem, "valueForAttribute:", "jid"),
            tags = objj_msgSend(tagItem, "valueForAttribute:", "tags");
        if (!objj_msgSend(self._tagsRegistry, "containsKey:", jid))
            objj_msgSend(self._tagsRegistry, "setObject:forKey:", objj_msgSend(CPArray, "array"), jid);
        objj_msgSend(objj_msgSend(self._tagsRegistry, "objectForKey:", jid), "addObjectsFromArray:", tags.split(";;"));
    }
    if (objj_msgSend(self._filterField, "stringValue") != "")
        objj_msgSend(self, "filterFieldDidChange:", self._filterField);
}
,["void","CPNotification"]), new objj_method(sel_getUid("filterFieldDidChange:"), function $TNDatasourceRoster__filterFieldDidChange_(self, _cmd, aSender)
{
    self._filter = objj_msgSend(aSender, "stringValue");
    objj_msgSend(self, "updateOutlineView:", nil);
}
,["id","id"]), new objj_method(sel_getUid("setFilterField:"), function $TNDatasourceRoster__setFilterField_(self, _cmd, aField)
{
    self._filterField = aField;
    objj_msgSend(self._filterField, "setSendsSearchStringImmediately:", YES)
    objj_msgSend(self._filterField, "setTarget:", self);
    objj_msgSend(self._filterField, "setAction:", sel_getUid("filterFieldDidChange:"));
}
,["void","CPSearchField"]), new objj_method(sel_getUid("_getEntriesMatching"), function $TNDatasourceRoster___getEntriesMatching(self, _cmd)
{
    var theEntries = objj_msgSend(self, "contacts"),
        filteredEntries = objj_msgSend(CPArray, "array");
    if (!self._filter)
        return theEntries;
    for (var i = 0; i < objj_msgSend(theEntries, "count"); i++)
    {
        var entry = objj_msgSend(theEntries, "objectAtIndex:", i);
        if (objj_msgSend(objj_msgSend(entry, "name"), "uppercaseString").indexOf(objj_msgSend(self._filter, "uppercaseString")) != -1
            || objj_msgSend(objj_msgSend(objj_msgSend(entry, "JID"), "bare"), "uppercaseString").indexOf(objj_msgSend(self._filter, "uppercaseString")) != -1
            || objj_msgSend(objj_msgSend(self._tagsRegistry, "objectForKey:", objj_msgSend(objj_msgSend(entry, "JID"), "bare")), "containsObject:", objj_msgSend(self._filter, "lowercaseString")))
        {
            objj_msgSend(filteredEntries, "addObject:", entry);
        }
    }
    return filteredEntries;
}
,["CPArray"]), new objj_method(sel_getUid("contentsOfGroup:hideOffline:"), function $TNDatasourceRoster__contentsOfGroup_hideOffline_(self, _cmd, aGroup, shouldHideOffline)
{
    if (!shouldHideOffline)
        return objj_msgSend(aGroup, "content");
    var c = objj_msgSend(CPArray, "array");
    for (var i = 0; i < objj_msgSend(objj_msgSend(aGroup, "content"), "count"); i++)
    {
        var item = objj_msgSend(objj_msgSend(aGroup, "content"), "objectAtIndex:", i);
        if (objj_msgSend(item, "isKindOfClass:", TNStropheGroup))
            objj_msgSend(c, "addObject:", item);
        else if (objj_msgSend(item, "XMPPShow") != TNStropheContactStatusOffline)
            objj_msgSend(c, "addObject:", item);
    }
    return c;
}
,["CPArray","TNStropheGroup","BOOL"]), new objj_method(sel_getUid("pubsubNode:receivedEvent:"), function $TNDatasourceRoster__pubsubNode_receivedEvent_(self, _cmd, aPubSubMode, aStanza)
{
    objj_msgSend(self._pubsubTagsNode, "retrieveItems");
}
,["void","TNPubSubNode","TNStropheStanza"]), new objj_method(sel_getUid("outlineView:numberOfChildrenOfItem:"), function $TNDatasourceRoster__outlineView_numberOfChildrenOfItem_(self, _cmd, anOutlineView, item)
{
    if (self._filter)
        return objj_msgSend(objj_msgSend(self, "_getEntriesMatching"), "count");
    if (!item)
        return objj_msgSend(self._content, "count");
    else
    {
        if (objj_msgSend(item, "isKindOfClass:", TNStropheContact))
            return 0;
        else
        {
            return objj_msgSend(objj_msgSend(self, "contentsOfGroup:hideOffline:", item, self._hideOfflineContacts), "count");
        }
    }
}
,["int","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:isItemExpandable:"), function $TNDatasourceRoster__outlineView_isItemExpandable_(self, _cmd, anOutlineView, item)
{
    if (self._filter)
        return NO;
    return objj_msgSend(item, "isKindOfClass:", TNStropheGroup);
}
,["BOOL","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:child:ofItem:"), function $TNDatasourceRoster__outlineView_child_ofItem_(self, _cmd, anOutlineView, index, item)
{
    if (self._filter)
        return objj_msgSend(objj_msgSend(self, "_getEntriesMatching").sort(), "objectAtIndex:", index);
    if (!item)
        return objj_msgSend(self._content.sort(), "objectAtIndex:", index);
    else
    {
        if (objj_msgSend(item, "isKindOfClass:", TNStropheGroup))
            return objj_msgSend(objj_msgSend(self, "contentsOfGroup:hideOffline:", item, self._hideOfflineContacts), "objectAtIndex:", index);
        else
            return nil;
    }
}
,["id","CPOutlineView","int","id"]), new objj_method(sel_getUid("outlineView:objectValueForTableColumn:byItem:"), function $TNDatasourceRoster__outlineView_objectValueForTableColumn_byItem_(self, _cmd, anOutlineView, tableColumn, item)
{
    var cid = objj_msgSend(tableColumn, "identifier");
    if (cid == "name")
        return item;
}
,["id","CPOutlineView","CPTableColumn","id"]), new objj_method(sel_getUid("outlineView:writeItems:toPasteboard:"), function $TNDatasourceRoster__outlineView_writeItems_toPasteboard_(self, _cmd, anOutlineView, theItems, thePasteBoard)
{
    self._draggedItems = theItems;
    var baseClass = objj_msgSend(objj_msgSend(theItems, "objectAtIndex:", 0), "class");
    for (var i = 0; i < objj_msgSend(theItems, "count"); i++)
        if (objj_msgSend(objj_msgSend(theItems, "objectAtIndex:", i), "class") != baseClass)
            return NO;
    objj_msgSend(thePasteBoard, "declareTypes:owner:", [TNDragTypeContact], self);
    objj_msgSend(thePasteBoard, "setData:forType:", objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", theItems), TNDragTypeContact);
    return YES;
}
,["BOOL","CPOutlineView","CPArray","CPPasteBoard"]), new objj_method(sel_getUid("outlineView:validateDrop:proposedItem:proposedChildIndex:"), function $TNDatasourceRoster__outlineView_validateDrop_proposedItem_proposedChildIndex_(self, _cmd, anOutlineView, theInfo, theItem, theIndex)
{
    if (objj_msgSend(theItem, "isKindOfClass:", TNStropheGroup))
    {
        objj_msgSend(anOutlineView, "setDropItem:dropChildIndex:", theItem, theIndex);
        return CPDragOperationEvery;
    }
    else
    {
        objj_msgSend(anOutlineView, "setDropItem:dropChildIndex:", nil, theIndex);
        return CPDragOperationEvery;
    }
    return CPDragOperationNone;
}
,["CPDragOperation","CPOutlineView","id","id","int"]), new objj_method(sel_getUid("outlineView:acceptDrop:item:childIndex:"), function $TNDatasourceRoster__outlineView_acceptDrop_item_childIndex_(self, _cmd, anOutlineView, theInfo, targetItem, theIndex)
{
    for (var i = 0; i < objj_msgSend(self._draggedItems, "count"); i++)
    {
        var draggedItem = objj_msgSend(self._draggedItems, "objectAtIndex:", i);
        if (targetItem === draggedItem)
            continue;
        switch (objj_msgSend(draggedItem, "class"))
        {
            case TNStropheGroup:
                objj_msgSend(self, "moveGroup:intoGroup:", draggedItem, targetItem);
                break;
            case TNStropheContact:
                objj_msgSend(self, "setGroups:ofContact:", (targetItem) ? objj_msgSend(CPArray, "arrayWithObject:", targetItem) : nil, draggedItem);
                break;
        }
    }
    return YES;
}
,["BOOL","CPOutlineView","id","id","int"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("rosterWithConnection:"), function $TNDatasourceRoster__rosterWithConnection_(self, _cmd, aConnection)
{
    return objj_msgSend(objj_msgSend(TNDatasourceRoster, "alloc"), "initWithConnection:", aConnection);
}
,["TNStropheRoster","TNStropheConnection"])]);
}p;16;Model/TNModule.jt;29927;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPImage.jI;20;AppKit/CPImageView.jI;15;AppKit/CPMenu.jI;19;AppKit/CPMenuItem.jI;18;AppKit/CPToolbar.jI;22;AppKit/CPToolbarItem.jI;15;AppKit/CPView.jI;25;AppKit/CPViewController.jI;39;StropheCappuccino/TNStropheConnection.jI;36;StropheCappuccino/TNStropheContact.jI;34;StropheCappuccino/TNStropheGroup.jI;37;StropheCappuccino/TNStropheIMClient.jI;35;StropheCappuccino/TNStropheStanza.ji;36;../Controllers/TNPermissionsCenter.ji;29;../Controllers/TNPushCenter.jt;29408;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPMenu.j", NO);
objj_executeFile("AppKit/CPMenuItem.j", NO);
objj_executeFile("AppKit/CPToolbar.j", NO);
objj_executeFile("AppKit/CPToolbarItem.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPViewController.j", NO);
objj_executeFile("StropheCappuccino/TNStropheConnection.j", NO);
objj_executeFile("StropheCappuccino/TNStropheContact.j", NO);
objj_executeFile("StropheCappuccino/TNStropheGroup.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("../Controllers/TNPermissionsCenter.j", YES);
objj_executeFile("../Controllers/TNPushCenter.j", YES);
//@global TNArchipelModulesVisibilityRequestNotification
//@global TNArchipelModuleTypeToolbar
var TNArchipelErrorPermission = 0,
    TNArchipelErrorGeneral = 1;
TNArchipelModuleStatusError = 1;
TNArchipelModuleStatusReady = 3;
TNArchipelModuleStatusWaiting = 2;
TNArchipelDefaultColorsTableView = nil;
var TNModuleStatusImageReady,
    TNModuleStatusImageWaiting,
    TNModuleStatusImageError;
{var the_class = objj_allocateClassPair(CPViewController, "TNModule"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("imageViewModuleReady"), new objj_ivar("viewPreferences"), new objj_ivar("viewMask"), new objj_ivar("_fullscreen"), new objj_ivar("_hasCIB"), new objj_ivar("_isActive"), new objj_ivar("_isCurrentSelectedIndex"), new objj_ivar("_isVisible"), new objj_ivar("_mandatoryPermissions"), new objj_ivar("_supportedEntityTypes"), new objj_ivar("_bundle"), new objj_ivar("_menu"), new objj_ivar("_rosterContactsMenu"), new objj_ivar("_rosterGroupsMenu"), new objj_ivar("_menuItem"), new objj_ivar("_identifier"), new objj_ivar("_label"), new objj_ivar("_name"), new objj_ivar("_viewPermissionsDenied"), new objj_ivar("_entity"), new objj_ivar("_moduleType"), new objj_ivar("_UIObject"), new objj_ivar("_UIItem"), new objj_ivar("_animationDuration"), new objj_ivar("_index"), new objj_ivar("_moduleStatus"), new objj_ivar("_group"), new objj_ivar("_initialPermissionsReceived"), new objj_ivar("_registredSelectors")]);

       
       









       
       






       
       








       
       













       
       


       
       



       
       


       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("viewPreferences"), function $TNModule__viewPreferences(self, _cmd)
{
return self.viewPreferences;
}
,["CPView"]), new objj_method(sel_getUid("setViewPreferences:"), function $TNModule__setViewPreferences_(self, _cmd, newValue)
{
self.viewPreferences = newValue;
}
,["void","CPView"]), new objj_method(sel_getUid("viewMask"), function $TNModule__viewMask(self, _cmd)
{
return self.viewMask;
}
,["CPView"]), new objj_method(sel_getUid("setViewMask:"), function $TNModule__setViewMask_(self, _cmd, newValue)
{
self.viewMask = newValue;
}
,["void","CPView"]), new objj_method(sel_getUid("isFullscreen"), function $TNModule__isFullscreen(self, _cmd)
{
return self._fullscreen;
}
,["BOOL"]), new objj_method(sel_getUid("setFullscreen:"), function $TNModule__setFullscreen_(self, _cmd, newValue)
{
self._fullscreen = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("hasCIB"), function $TNModule__hasCIB(self, _cmd)
{
return self._hasCIB;
}
,["BOOL"]), new objj_method(sel_getUid("setHasCIB:"), function $TNModule__setHasCIB_(self, _cmd, newValue)
{
self._hasCIB = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isActive"), function $TNModule__isActive(self, _cmd)
{
return self._isActive;
}
,["BOOL"]), new objj_method(sel_getUid("isCurrentSelectedIndex"), function $TNModule__isCurrentSelectedIndex(self, _cmd)
{
return self._isCurrentSelectedIndex;
}
,["BOOL"]), new objj_method(sel_getUid("setCurrentSelectedIndex:"), function $TNModule__setCurrentSelectedIndex_(self, _cmd, newValue)
{
self._isCurrentSelectedIndex = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isVisible"), function $TNModule__isVisible(self, _cmd)
{
return self._isVisible;
}
,["BOOL"]), new objj_method(sel_getUid("mandatoryPermissions"), function $TNModule__mandatoryPermissions(self, _cmd)
{
return self._mandatoryPermissions;
}
,["CPArray"]), new objj_method(sel_getUid("setMandatoryPermissions:"), function $TNModule__setMandatoryPermissions_(self, _cmd, newValue)
{
self._mandatoryPermissions = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("supportedEntityTypes"), function $TNModule__supportedEntityTypes(self, _cmd)
{
return self._supportedEntityTypes;
}
,["CPArray"]), new objj_method(sel_getUid("setSupportedEntityTypes:"), function $TNModule__setSupportedEntityTypes_(self, _cmd, newValue)
{
self._supportedEntityTypes = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("bundle"), function $TNModule__bundle(self, _cmd)
{
return self._bundle;
}
,["CPBundle"]), new objj_method(sel_getUid("setBundle:"), function $TNModule__setBundle_(self, _cmd, newValue)
{
self._bundle = newValue;
}
,["void","CPBundle"]), new objj_method(sel_getUid("menu"), function $TNModule__menu(self, _cmd)
{
return self._menu;
}
,["CPMenu"]), new objj_method(sel_getUid("setMenu:"), function $TNModule__setMenu_(self, _cmd, newValue)
{
self._menu = newValue;
}
,["void","CPMenu"]), new objj_method(sel_getUid("rosterContactsMenu"), function $TNModule__rosterContactsMenu(self, _cmd)
{
return self._rosterContactsMenu;
}
,["CPMenu"]), new objj_method(sel_getUid("setRosterContactsMenu:"), function $TNModule__setRosterContactsMenu_(self, _cmd, newValue)
{
self._rosterContactsMenu = newValue;
}
,["void","CPMenu"]), new objj_method(sel_getUid("rosterGroupsMenu"), function $TNModule__rosterGroupsMenu(self, _cmd)
{
return self._rosterGroupsMenu;
}
,["CPMenu"]), new objj_method(sel_getUid("setRosterGroupsMenu:"), function $TNModule__setRosterGroupsMenu_(self, _cmd, newValue)
{
self._rosterGroupsMenu = newValue;
}
,["void","CPMenu"]), new objj_method(sel_getUid("menuItem"), function $TNModule__menuItem(self, _cmd)
{
return self._menuItem;
}
,["CPMenuItem"]), new objj_method(sel_getUid("setMenuItem:"), function $TNModule__setMenuItem_(self, _cmd, newValue)
{
self._menuItem = newValue;
}
,["void","CPMenuItem"]), new objj_method(sel_getUid("identifier"), function $TNModule__identifier(self, _cmd)
{
return self._identifier;
}
,["CPString"]), new objj_method(sel_getUid("setIdentifier:"), function $TNModule__setIdentifier_(self, _cmd, newValue)
{
self._identifier = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("label"), function $TNModule__label(self, _cmd)
{
return self._label;
}
,["CPString"]), new objj_method(sel_getUid("setLabel:"), function $TNModule__setLabel_(self, _cmd, newValue)
{
self._label = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("name"), function $TNModule__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNModule__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("viewPermissionDenied"), function $TNModule__viewPermissionDenied(self, _cmd)
{
return self._viewPermissionsDenied;
}
,["CPView"]), new objj_method(sel_getUid("_setViewPermissionsDenied:"), function $TNModule___setViewPermissionsDenied_(self, _cmd, newValue)
{
self._viewPermissionsDenied = newValue;
}
,["void","CPView"]), new objj_method(sel_getUid("entity"), function $TNModule__entity(self, _cmd)
{
return self._entity;
}
,["id"]), new objj_method(sel_getUid("setEntity:"), function $TNModule__setEntity_(self, _cmd, newValue)
{
self._entity = newValue;
}
,["void","id"]), new objj_method(sel_getUid("moduleType"), function $TNModule__moduleType(self, _cmd)
{
return self._moduleType;
}
,["id"]), new objj_method(sel_getUid("setModuleType:"), function $TNModule__setModuleType_(self, _cmd, newValue)
{
self._moduleType = newValue;
}
,["void","id"]), new objj_method(sel_getUid("UIObject"), function $TNModule__UIObject(self, _cmd)
{
return self._UIObject;
}
,["id"]), new objj_method(sel_getUid("setUIObject:"), function $TNModule__setUIObject_(self, _cmd, newValue)
{
self._UIObject = newValue;
}
,["void","id"]), new objj_method(sel_getUid("_UIItem"), function $TNModule___UIItem(self, _cmd)
{
return self._UIItem;
}
,["id"]), new objj_method(sel_getUid("setUIItem:"), function $TNModule__setUIItem_(self, _cmd, newValue)
{
self._UIItem = newValue;
}
,["void","id"]), new objj_method(sel_getUid("animationDuration"), function $TNModule__animationDuration(self, _cmd)
{
return self._animationDuration;
}
,["int"]), new objj_method(sel_getUid("setAnimationDuration:"), function $TNModule__setAnimationDuration_(self, _cmd, newValue)
{
self._animationDuration = newValue;
}
,["void","int"]), new objj_method(sel_getUid("index"), function $TNModule__index(self, _cmd)
{
return self._index;
}
,["int"]), new objj_method(sel_getUid("setIndex:"), function $TNModule__setIndex_(self, _cmd, newValue)
{
self._index = newValue;
}
,["void","int"]), new objj_method(sel_getUid("moduleStatus"), function $TNModule__moduleStatus(self, _cmd)
{
return self._moduleStatus;
}
,["int"]), new objj_method(sel_getUid("_setModuleStatus:"), function $TNModule___setModuleStatus_(self, _cmd, newValue)
{
self._moduleStatus = newValue;
}
,["void","int"]), new objj_method(sel_getUid("group"), function $TNModule__group(self, _cmd)
{
return self._group;
}
,["TNStropheGroup"]), new objj_method(sel_getUid("setGroup:"), function $TNModule__setGroup_(self, _cmd, newValue)
{
self._group = newValue;
}
,["void","TNStropheGroup"]), new objj_method(sel_getUid("initializeModule"), function $TNModule__initializeModule(self, _cmd)
{
    self._isActive = NO;
    self._isVisible = NO;
    self._isCurrentSelectedIndex = NO;
    self._initialPermissionsReceived = objj_msgSend(CPArray, "array");
    self._registredSelectors = objj_msgSend(CPDictionary, "dictionary");
    objj_msgSend(objj_msgSend(self, "view"), "applyShadow");
    objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "addDelegate:", self);
}
,["BOOL"]), new objj_method(sel_getUid("setViewPermissionDenied:"), function $TNModule__setViewPermissionDenied_(self, _cmd, aView)
{
    var data = objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", aView);
    self._viewPermissionsDenied = objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", data);
}
,["void","CPView"]), new objj_method(sel_getUid("registerSelector:forPushNotificationType:"), function $TNModule__registerSelector_forPushNotificationType_(self, _cmd, aSelector, aPushType)
{
    objj_msgSend(self, "registerSelector:ofObject:forPushNotificationType:", aSelector, self, aPushType);
}
,["void","SEL","CPString"]), new objj_method(sel_getUid("registerSelector:ofObject:forPushNotificationType:"), function $TNModule__registerSelector_ofObject_forPushNotificationType_(self, _cmd, aSelector, anObject, aPushType)
{
    objj_msgSend(objj_msgSend(TNPushCenter, "defaultCenter"), "addObserver:selector:forPushNotificationType:", anObject, aSelector, aPushType);
}
,["void","SEL","id","CPString"]), new objj_method(sel_getUid("_managePermissionGranted"), function $TNModule___managePermissionGranted(self, _cmd)
{
    if (!self._isActive)
        objj_msgSend(self, "willLoad");
    if (!self._isVisible && self._isCurrentSelectedIndex)
        objj_msgSend(self, "willShow");
    objj_msgSend(self, "_hidePermissionDeniedView");
}
,["void"]), new objj_method(sel_getUid("_managePermissionDenied"), function $TNModule___managePermissionDenied(self, _cmd)
{
    if (self._isCurrentSelectedIndex && self._isVisible)
        objj_msgSend(self, "willHide");
    if (self._isActive)
        objj_msgSend(self, "willUnload");
    objj_msgSend(self, "_showPermissionDeniedView");
}
,["void"]), new objj_method(sel_getUid("_showPermissionDeniedView"), function $TNModule___showPermissionDeniedView(self, _cmd)
{
    if (objj_msgSend(self._viewPermissionsDenied, "superview"))
        return;
    objj_msgSend(self._viewPermissionsDenied, "setFrame:", objj_msgSend(objj_msgSend(self, "view"), "frame"));
    objj_msgSend(objj_msgSend(self, "view"), "addSubview:", self._viewPermissionsDenied);
}
,["void"]), new objj_method(sel_getUid("_hidePermissionDeniedView"), function $TNModule___hidePermissionDeniedView(self, _cmd)
{
    if (objj_msgSend(self._viewPermissionsDenied, "superview"))
        objj_msgSend(self._viewPermissionsDenied, "removeFromSuperview");
}
,["void"]), new objj_method(sel_getUid("_beforeWillLoad"), function $TNModule___beforeWillLoad(self, _cmd)
{
    if (self._hasCIB && !self._view)
        return;
    if (objj_msgSend(self, "isCurrentEntityGranted"))
        objj_msgSend(self, "_managePermissionGranted");
    else
        objj_msgSend(self, "_managePermissionDenied");
}
,["void"]), new objj_method(sel_getUid("UIItem"), function $TNModule__UIItem(self, _cmd)
{
    if (objj_msgSend(self._UIObject, "isKindOfClass:", CPToolbar))
        return objj_msgSend(self._UIObject, "itemWithIdentifier:", self._identifier)
    return self._UIItem;
}
,["void"]), new objj_method(sel_getUid("isEntityGranted:"), function $TNModule__isEntityGranted_(self, _cmd, anEntity)
{
    if (!objj_msgSend(anEntity, "isKindOfClass:", TNStropheContact))
        return YES;
    var defaultAdminAccount = objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "objectForInfoDictionaryKey:", "ArchipelDefaultAdminAccount");
    if (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"), "bare") === defaultAdminAccount)
        return YES;
    if (!self._mandatoryPermissions || objj_msgSend(self._mandatoryPermissions, "count") == 0)
        return YES;
    if ((!objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "hasPermission:forEntity:", "all", anEntity))
        && objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "JID"), "bare") != defaultAdminAccount)
    {
        if (!objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "hasPermissions:forEntity:", self._mandatoryPermissions, anEntity))
            return NO;
    }
    return YES;
}
,["BOOL","TNStropheContact"]), new objj_method(sel_getUid("isCurrentEntityGranted"), function $TNModule__isCurrentEntityGranted(self, _cmd)
{
    return objj_msgSend(self, "isEntityGranted:", self._entity);
}
,["BOOL"]), new objj_method(sel_getUid("entity:hasPermission:"), function $TNModule__entity_hasPermission_(self, _cmd, anEntity, aPermission)
{
    return objj_msgSend(objj_msgSend(TNPermissionsCenter, "defaultCenter"), "hasPermission:forEntity:", aPermission, anEntity);
}
,["BOOL","TNStropheContact","CPString"]), new objj_method(sel_getUid("currentEntityHasPermission:"), function $TNModule__currentEntityHasPermission_(self, _cmd, aPermission)
{
    return objj_msgSend(self, "entity:hasPermission:", self._entity, aPermission);
}
,["BOOL","CPString"]), new objj_method(sel_getUid("entity:hasPermissions:"), function $TNModule__entity_hasPermissions_(self, _cmd, anEntity, permissionsList)
{
    var ret = YES;
    for (var i = 0; i < objj_msgSend(permissionsList, "count"); i++)
        ret = ret && objj_msgSend(self, "entity:hasPermission:", anEntity, objj_msgSend(permissionsList, "objectAtIndex:", i));
    return ret;
}
,["BOOL","TNStropheContact","CPArray"]), new objj_method(sel_getUid("currentEntityHasPermissions:"), function $TNModule__currentEntityHasPermissions_(self, _cmd, permissionsList)
{
    return objj_msgSend(self, "entity:hasPermissions:", self._entity, permissionsList);
}
,["BOOL","CPArray"]), new objj_method(sel_getUid("setControl:segment:enabledAccordingToPermissions:specialCondition:"), function $TNModule__setControl_segment_enabledAccordingToPermissions_specialCondition_(self, _cmd, aControl, aSegment, somePermissions, aSpecialCondition)
{
    var permissionCenter = objj_msgSend(TNPermissionsCenter, "defaultCenter");
    objj_msgSend(permissionCenter, "setControl:segment:enabledAccordingToPermissions:forEntity:specialCondition:", aControl, aSegment, somePermissions, self._entity, aSpecialCondition);
}
,["void","CPControl","int","CPArray","BOOL"]), new objj_method(sel_getUid("setControl:enabledAccordingToPermissions:specialCondition:"), function $TNModule__setControl_enabledAccordingToPermissions_specialCondition_(self, _cmd, aControl, somePermissions, aSpecialCondition)
{
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermissions:specialCondition:", aControl, nil, somePermissions, aSpecialCondition);
}
,["void","CPControl","CPArray","BOOL"]), new objj_method(sel_getUid("setControl:enabledAccordingToPermission:specialCondition:"), function $TNModule__setControl_enabledAccordingToPermission_specialCondition_(self, _cmd, aControl, aPermission, aSpecialCondition)
{
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermissions:specialCondition:", aControl, nil, [aPermission], aSpecialCondition);
}
,["void","CPControl","CPString","BOOL"]), new objj_method(sel_getUid("setControl:enabledAccordingToPermissions:"), function $TNModule__setControl_enabledAccordingToPermissions_(self, _cmd, aControl, somePermissions)
{
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermissions:specialCondition:", aControl, nil, somePermissions, YES);
}
,["void","CPControl","CPArray"]), new objj_method(sel_getUid("setControl:enabledAccordingToPermission:"), function $TNModule__setControl_enabledAccordingToPermission_(self, _cmd, aControl, aPermission)
{
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermissions:", aControl, nil, [aPermission]);
}
,["void","CPControl","CPString"]), new objj_method(sel_getUid("setControl:segment:enabledAccordingToPermission:specialCondition:"), function $TNModule__setControl_segment_enabledAccordingToPermission_specialCondition_(self, _cmd, aControl, aSegment, aPermission, aSpecialCondition)
{
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermissions:specialCondition:", aControl, aSegment, [aPermission], aSpecialCondition);
}
,["void","CPControl","CPString","CPString","BOOL"]), new objj_method(sel_getUid("setControl:segment:enabledAccordingToPermissions:"), function $TNModule__setControl_segment_enabledAccordingToPermissions_(self, _cmd, aControl, aSegment, somePermissions)
{
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermissions:specialCondition:", aControl, aSegment, somePermissions, YES);
}
,["void","CPControl","CPString","CPArray"]), new objj_method(sel_getUid("setControl:segment:enabledAccordingToPermission:"), function $TNModule__setControl_segment_enabledAccordingToPermission_(self, _cmd, aControl, aSegment, aPermission)
{
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermissions:", aControl, aSegment, [aPermission]);
}
,["void","CPControl","CPString","CPString"]), new objj_method(sel_getUid("willLoad"), function $TNModule__willLoad(self, _cmd)
{
    if (self._isActive)
        return NO;
    self._isActive = YES;
    objj_msgSend(self, "_hidePermissionDeniedView");
    self._animationDuration = objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "objectForInfoDictionaryKey:", "TNArchipelAnimationsDuration");
    objj_msgSend(self._menuItem, "setEnabled:", YES);
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willUnload"), function $TNModule__willUnload(self, _cmd)
{
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "removeObserver:", self);
    for (var i = 0; i < objj_msgSend(objj_msgSend(self._registredSelectors, "allValues"), "count"); i++)
    {
        CPLog.trace("deleting SELECTOR in  " + self._label + " :" + objj_msgSend(objj_msgSend(self._registredSelectors, "allValues"), "objectAtIndex:", i));
        objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"), "deleteRegisteredSelector:", objj_msgSend(objj_msgSend(self._registredSelectors, "allValues"), "objectAtIndex:", i));
    }
    objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"), "flush");
    objj_msgSend(objj_msgSend(TNPushCenter, "defaultCenter"), "removeObserver:", self);
    objj_msgSend(self._registredSelectors, "removeAllObjects");
    objj_msgSend(self._menuItem, "setEnabled:", NO);
    objj_msgSend(self, "flushUI");
    self._isActive = NO;
}
,["void"]), new objj_method(sel_getUid("willShow"), function $TNModule__willShow(self, _cmd)
{
    if (self._isVisible)
        return NO;
    self._isVisible = YES;
    if (!objj_msgSend(self, "isCurrentEntityGranted"))
        return NO;
    objj_msgSend(self, "setUIAccordingToPermissions");
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willHide"), function $TNModule__willHide(self, _cmd)
{
    self._isVisible = NO;
}
,["void"]), new objj_method(sel_getUid("shouldHideAndSelectItem:ofObject:"), function $TNModule__shouldHideAndSelectItem_ofObject_(self, _cmd, nextItem, anObject)
{
    return YES;
}
,["BOOL","anItem","id"]), new objj_method(sel_getUid("menuReady"), function $TNModule__menuReady(self, _cmd)
{
}
,["void"]), new objj_method(sel_getUid("savePreferences"), function $TNModule__savePreferences(self, _cmd)
{
}
,["void"]), new objj_method(sel_getUid("loadPreferences"), function $TNModule__loadPreferences(self, _cmd)
{
}
,["void"]), new objj_method(sel_getUid("permissionsChanged"), function $TNModule__permissionsChanged(self, _cmd)
{
    objj_msgSend(self, "flushUI");
    objj_msgSend(self, "setUIAccordingToPermissions");
}
,["void"]), new objj_method(sel_getUid("setUIAccordingToPermissions"), function $TNModule__setUIAccordingToPermissions(self, _cmd)
{
}
,["void"]), new objj_method(sel_getUid("toolbarItemClicked:"), function $TNModule__toolbarItemClicked_(self, _cmd, sender)
{
}
,["id","id"]), new objj_method(sel_getUid("flushUI"), function $TNModule__flushUI(self, _cmd)
{
}
,["void"]), new objj_method(sel_getUid("allModulesLoaded"), function $TNModule__allModulesLoaded(self, _cmd)
{
}
,["void"]), new objj_method(sel_getUid("setModuleStatus:"), function $TNModule__setModuleStatus_(self, _cmd, aStatus)
{
    if (self._moduleStatus == aStatus)
        return;
    self._moduleStatus = aStatus;
    switch (aStatus)
    {
        case TNArchipelModuleStatusReady:
            objj_msgSend(self.imageViewModuleReady, "setImage:", TNModuleStatusImageReady);
            break;
        case TNArchipelModuleStatusWaiting:
            objj_msgSend(self.imageViewModuleReady, "setImage:", TNModuleStatusImageWaiting);
            break;
        case TNArchipelModuleStatusError:
            objj_msgSend(self.imageViewModuleReady, "setImage:", TNModuleStatusImageError);
            break;
    }
}
,["void","int"]), new objj_method(sel_getUid("requestVisible"), function $TNModule__requestVisible(self, _cmd)
{
    if (!objj_msgSend(self, "isVisible"))
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNArchipelModulesVisibilityRequestNotification, self);
}
,["void"]), new objj_method(sel_getUid("sendStanza:andRegisterSelector:ofObject:"), function $TNModule__sendStanza_andRegisterSelector_ofObject_(self, _cmd, aStanza, aSelector, anObject)
{
    var key = objj_msgSend(CPString, "stringWithFormat:", "%@-%@", anObject, aSelector);
    if (objj_msgSend(self._registredSelectors, "containsKey:", key))
    {
        CPLog.info("dereferencing old registration for selector " + aSelector);
        objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "connection"), "deleteRegisteredSelector:", objj_msgSend(self._registredSelectors, "objectForKey:", key));
        objj_msgSend(self._registredSelectors, "removeObjectForKey:", key);
    }
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:handlerDelegate:", aStanza, aSelector, anObject, self);
}
,["void","TNStropheStanza","SEL","id"]), new objj_method(sel_getUid("sendStanza:andRegisterSelector:"), function $TNModule__sendStanza_andRegisterSelector_(self, _cmd, aStanza, aSelector)
{
    objj_msgSend(self, "sendStanza:andRegisterSelector:ofObject:", aStanza, aSelector, self);
}
,["void","TNStropheStanza","SEL"]), new objj_method(sel_getUid("handleIqErrorFromStanza:"), function $TNModule__handleIqErrorFromStanza_(self, _cmd, aStanza)
{
    var growl = objj_msgSend(TNGrowlCenter, "defaultCenter"),
        code = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "error"), "valueForAttribute:", "code"),
        type = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "error"), "valueForAttribute:", "type"),
        perm = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "error"), "firstChildWithName:", "archipel-error-permission");
    if (perm)
    {
        CPLog.warn("Permission denied (" + code + "): " + objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "text"), "text"));
        var msg = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "text"), "text");
        objj_msgSend(growl, "pushNotificationWithTitle:message:icon:", "Permission denied", msg, TNGrowlIconWarning);
        return TNArchipelErrorPermission;
    }
    else if (objj_msgSend(aStanza, "firstChildWithName:", "text"))
    {
        var msg = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "text"), "text");
        objj_msgSend(growl, "pushNotificationWithTitle:message:icon:", "Error (" + code + " / " + type + ")", msg, TNGrowlIconError);
        CPLog.error("ERROR MESSAGE IS :" + msg);
        CPLog.error("ERROR STANZA IS :" + aStanza);
    }
    else
    {
        CPLog.error("Error " + code + " / " + type + ". No message. If 503, it should be allright");
        CPLog.trace(aStanza);
    }
    return TNArchipelErrorGeneral;
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("permissionCenter:updatePermissionForEntity:"), function $TNModule__permissionCenter_updatePermissionForEntity_(self, _cmd, aCenter, anEntity)
{
    if ((anEntity === self._entity) || (self._moduleType === TNArchipelModuleTypeToolbar))
    {
        CPLog.info("permissions for current entity has changed. updating")
        objj_msgSend(self, "_beforeWillLoad");
        if (objj_msgSend(self._initialPermissionsReceived, "containsObject:", objj_msgSend(self._entity, "description")))
            objj_msgSend(self, "permissionsChanged");
        objj_msgSend(self._initialPermissionsReceived, "addObject:", objj_msgSend(self._entity, "description"));
    }
}
,["void","TNPermissionsCenter","TNStropheContact"]), new objj_method(sel_getUid("stropheConnection:performedHandlerId:"), function $TNModule__stropheConnection_performedHandlerId_(self, _cmd, aConnection, aHandler)
{
    if (!aHandler)
        return;
    var keys = objj_msgSend(self._registredSelectors, "allKeysForObject:", aHandler);
    for (var i = 0; i < objj_msgSend(keys, "count"); i++)
        objj_msgSend(self._registredSelectors, "removeObjectForKey:", objj_msgSend(keys, "objectAtIndex:", i));
    aHandler = nil;
}
,["void","TNStropheConnection","id"]), new objj_method(sel_getUid("showMaskView:"), function $TNModule__showMaskView_(self, _cmd, shouldShow)
{
    if (shouldShow)
    {
        if (!objj_msgSend(self.viewMask, "superview"))
        {
            if (!objj_msgSend(self.viewMask, "backgroundColor"))
            {
                objj_msgSend(self.viewMask, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithCalibratedWhite:alpha:", 0, 0.4));
                for (var i = 0; i < objj_msgSend(objj_msgSend(self.viewMask, "subviews"), "count"); i++)
                {
                    var v = objj_msgSend(objj_msgSend(self.viewMask, "subviews"), "objectAtIndex:", i);
                    if (objj_msgSend(v, "isKindOfClass:", CPTextField))
                    {
                        objj_msgSend(v, "setTextShadowColor:", objj_msgSend(CPColor, "colorWithHexString:", "333"));
                        objj_msgSend(v, "setTextShadowOffset:", CGSizeMake(0.0, -1.0));
                    }
                }
            }
            objj_msgSend(self.viewMask, "setFrame:", objj_msgSend(objj_msgSend(self, "view"), "bounds"));
            objj_msgSend(objj_msgSend(self, "view"), "addSubview:", self.viewMask);
            self.viewMask._DOMElement.style.backgroundImage = "-webkit-gradient(radial, 50% 50%, 0, 50% 50%, 650, from(rgba(0, 0, 0, 0.6)), to(rgba(0, 0, 0, 0.8)))";
        }
    }
    else
        objj_msgSend(self.viewMask, "removeFromSuperview");
}
,["void","BOOL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNModule__initialize(self, _cmd)
{
    var mainBundle = objj_msgSend(CPBundle, "mainBundle");
    TNModuleStatusImageReady = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "IconsStatus/green.png"), CGSizeMake(8.0, 8.0));
    TNModuleStatusImageWaiting = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "IconsStatus/orange.png"), CGSizeMake(8.0, 8.0));
    TNModuleStatusImageError = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "IconsStatus/red.png"), CGSizeMake(8.0, 8.0));
    TNArchipelDefaultColorsTableView = objj_msgSend(CPColor, "whiteColor");
}
,["void"])]);
}p;17;Model/TNVersion.jt;5500;@STATIC;1.0;I;23;Foundation/Foundation.ji;31;../Resources/archipel-commit.jst;5417;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("../Resources/archipel-commit.js", YES);
{var the_class = objj_allocateClassPair(CPObject, "TNVersion"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_codeName"), new objj_ivar("_commit"), new objj_ivar("_major"), new objj_ivar("_minor"), new objj_ivar("_revision")]);
       
       



       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("codeName"), function $TNVersion__codeName(self, _cmd)
{
return self._codeName;
}
,["CPString"]), new objj_method(sel_getUid("setCodeName:"), function $TNVersion__setCodeName_(self, _cmd, newValue)
{
self._codeName = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("commit"), function $TNVersion__commit(self, _cmd)
{
return self._commit;
}
,["CPString"]), new objj_method(sel_getUid("setCommit:"), function $TNVersion__setCommit_(self, _cmd, newValue)
{
self._commit = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("major"), function $TNVersion__major(self, _cmd)
{
return self._major;
}
,["int"]), new objj_method(sel_getUid("setMajor:"), function $TNVersion__setMajor_(self, _cmd, newValue)
{
self._major = newValue;
}
,["void","int"]), new objj_method(sel_getUid("minor"), function $TNVersion__minor(self, _cmd)
{
return self._minor;
}
,["int"]), new objj_method(sel_getUid("setMinor:"), function $TNVersion__setMinor_(self, _cmd, newValue)
{
self._minor = newValue;
}
,["void","int"]), new objj_method(sel_getUid("revision"), function $TNVersion__revision(self, _cmd)
{
return self._revision;
}
,["int"]), new objj_method(sel_getUid("setRevision:"), function $TNVersion__setRevision_(self, _cmd, newValue)
{
self._revision = newValue;
}
,["void","int"]), new objj_method(sel_getUid("equals:"), function $TNVersion__equals_(self, _cmd, aVersion)
{
    return (objj_msgSend(aVersion, "major") == objj_msgSend(self, "major") && objj_msgSend(aVersion, "minor") == objj_msgSend(self, "minor") && objj_msgSend(aVersion, "revision") == objj_msgSend(self, "revision"));
}
,["BOOL","TNVersion"]), new objj_method(sel_getUid("greaterThan:"), function $TNVersion__greaterThan_(self, _cmd, aVersion)
{
    if (objj_msgSend(self, "equals:", aVersion))
        return NO;
    if (objj_msgSend(self, "major") > objj_msgSend(aVersion, "major"))
        return YES;
    else if (objj_msgSend(self, "major") < objj_msgSend(aVersion, "major"))
        return NO;
    if (objj_msgSend(self, "minor") > objj_msgSend(aVersion, "minor"))
        return YES;
    else if (objj_msgSend(self, "minor") < objj_msgSend(aVersion, "minor"))
        return NO
    if (objj_msgSend(self, "revision") > objj_msgSend(aVersion, "revision"))
        return YES;
    else if (objj_msgSend(self, "minor") < objj_msgSend(aVersion, "minor"))
        return NO;
    return NO;
}
,["BOOL","TNVersion"]), new objj_method(sel_getUid("lesserThan:"), function $TNVersion__lesserThan_(self, _cmd, aVersion)
{
    if (objj_msgSend(self, "equals:", aVersion))
        return NO;
    return !objj_msgSend(self, "greaterThan:", aVersion);
}
,["BOOL","TNVersion"]), new objj_method(sel_getUid("description"), function $TNVersion__description(self, _cmd)
{
    return objj_msgSend(CPString, "stringWithFormat:", "%d.%d.%d-%s (%s)", self._major, self._minor, self._revision, self._commit, self._codeName);
}
,["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("versionWithMajor:minor:revision:codeName:"), function $TNVersion__versionWithMajor_minor_revision_codeName_(self, _cmd, aMajor, aMinor, aRevision, aCodeName)
{
    var version = objj_msgSend(objj_msgSend(TNVersion, "alloc"), "init");
    objj_msgSend(version, "setMajor:", aMajor);
    objj_msgSend(version, "setMinor:", aMinor);
    objj_msgSend(version, "setRevision:", aRevision);
    objj_msgSend(version, "setCodeName:", aCodeName);
    objj_msgSend(version, "setCommit:", ARCHIPEL_CURRENT_COMMIT || "Dev");
    return version;
}
,["TNVersion","int","int","int","CPString"])]);
}
{
var the_class = objj_getClass("TNVersion")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNVersion\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $TNVersion__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVersion").super_class }, "init"))
    {
        self._major = objj_msgSend(aCoder, "decodeObjectForKey:", "_major");
        self._minor = objj_msgSend(aCoder, "decodeObjectForKey:", "_minor");
        self._revision = objj_msgSend(aCoder, "decodeObjectForKey:", "_revision");
        self._commit = objj_msgSend(aCoder, "decodeObjectForKey:", "_commit");
        self._codeName = objj_msgSend(aCoder, "decodeObjectForKey:", "_codeName");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNVersion__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", self._major, "_major");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._minor, "_minor");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._revision, "_revision");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._commit, "_commit");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._codeName, "_codeName");
}
,["void","CPCoder"])]);
}p;33;Categories/CPBundle+Localizable.jt;3555;@STATIC;1.0;I;23;Foundation/Foundation.jI;22;AppKit/CPApplication.jt;3481;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPApplication.j", NO);
var StringTables;
CPLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTable(key, nil, comment);
}
CPLocalizedStringFromTable = function(key, table, comment)
{
    return CPLocalizedStringFromTableInBundle(key, table, objj_msgSend(CPBundle, "mainBundle"), comment);
}
CPLocalizedStringFromTableInBundle = function(key, table, bundle, comment)
{
    return objj_msgSend(bundle, "localizedStringForKey:value:table:", key, comment, table);
}
{
var the_class = objj_getClass("CPBundle")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPBundle\"");
var meta_class = the_class.isa;


class_addMethods(the_class, [new objj_method(sel_getUid("bundleLocale"), function $CPBundle__bundleLocale(self, _cmd)
{
    return objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "objectForKey:", "CPBundleLocale") || objj_msgSend(self, "objectForInfoDictionaryKey:", "CPBundleLocale");
}
,["CPString"]), new objj_method(sel_getUid("localizedStringForKey:value:table:"), function $CPBundle__localizedStringForKey_value_table_(self, _cmd, aKey, aValue, aTable)
{
    if (!StringTables)
        StringTables = objj_msgSend(CPDictionary, "dictionary");
    if (!aTable)
        aTable = "Localizable";
    var table = objj_msgSend(StringTables, "objectForKey:", aTable);
    if (!table)
    {
        table = objj_msgSend(CPDictionary, "dictionary");
        objj_msgSend(StringTables, "setObject:forKey:", table, aTable);
    }
    var string = objj_msgSend(table, "objectForKey:", aKey);
    if (!string)
    {
        string = aValue;
        objj_msgSend(table, "setObject:forKey:", string, aKey);
    }
    return string;
}
,["CPString","CPString","CPString","CPString"]), new objj_method(sel_getUid("setDictionary:forTable:"), function $CPBundle__setDictionary_forTable_(self, _cmd, aDictionary, aTable)
{
    if (!StringTables)
        StringTables = objj_msgSend(CPDictionary, "dictionary");
    objj_msgSend(StringTables, "setObject:forKey:", aDictionary, aTable);
}
,["void","CPDictionary","CPString"]), new objj_method(sel_getUid("loadCibFile:externalNameTable:loadDelegate:"), function $CPBundle__loadCibFile_externalNameTable_loadDelegate_(self, _cmd, aFileName, aNameTable, aDelegate)
{
    var localizedCibFile = objj_msgSend(self, "bundleLocale") + ".lproj/" + aFileName;
    return objj_msgSend(objj_msgSend(CPCib, "alloc"), "initWithCibNamed:bundle:loadDelegate:", localizedCibFile, self, objj_msgSend(objj_msgSend(_CPCibLoadDelegate, "alloc"), "initWithLoadDelegate:externalNameTable:", aDelegate, aNameTable));
}
,["CPCib","CPString","CPDictionary","id"])]);
}
window.LocaleCPApplicationMain = CPApplicationMain;
CPApplicationMain = function(args, namedArgs)
{
    var mainBundle = objj_msgSend(CPBundle, "mainBundle"),
        bundleLocale = objj_msgSend(mainBundle, "bundleLocale");
    if (bundleLocale)
    {
        var request = objj_msgSend(CPURLRequest, "requestWithURL:", "Resources/" + bundleLocale + ".lproj/Localizable.xstrings"),
            response = objj_msgSend(CPURLConnection, "sendSynchronousRequest:returningResponse:", request, response);
        var plist = objj_msgSend(CPPropertyListSerialization, "propertyListFromData:format:", response, nil);
        objj_msgSend(mainBundle, "setDictionary:forTable:", plist, "Localizable");
    }
    window.LocaleCPApplicationMain(args, namedArgs);
}p;26;Categories/CPDate+Format.jt;907;@STATIC;1.0;I;19;Foundation/CPDate.ji;26;../Resources/dateFormat.jst;834;objj_executeFile("Foundation/CPDate.j", NO);
objj_executeFile("../Resources/dateFormat.js", YES);
{
var the_class = objj_getClass("CPDate")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPDate\"");
var meta_class = the_class.isa;

class_addMethods(the_class, [new objj_method(sel_getUid("format:"), function $CPDate__format_(self, _cmd, aFormat)
{
    return self.dateFormat(aFormat);
}
,["CPString","CPString"]), new objj_method(sel_getUid("description"), function $CPDate__description(self, _cmd)
{
    return self.dateFormat("Y-m-d H:i:s");
}
,["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("dateWithFormat:"), function $CPDate__dateWithFormat_(self, _cmd, aFormat)
{
    var theDate = new Date();
    return theDate.dateFormat(aFormat);
}
,["CPString","CPString"])]);
}p;33;Categories/CPObject+Duplication.jt;554;@STATIC;1.0;I;23;Foundation/Foundation.jt;508;objj_executeFile("Foundation/Foundation.j", NO);
{
var the_class = objj_getClass("CPObject")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPObject\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("duplicate"), function $CPObject__duplicate(self, _cmd)
{
    var copy = objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", self);
    return objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", copy);
}
,["id"])]);
}p;33;Categories/CPOutlineView+Extend.jt;2019;@STATIC;1.0;I;23;Foundation/Foundation.jI;22;AppKit/CPOutlineView.jt;1945;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPOutlineView.j", NO);
{
var the_class = objj_getClass("CPOutlineView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPOutlineView\"");
var meta_class = the_class.isa;

class_addMethods(the_class, [new objj_method(sel_getUid("expandAll"), function $CPOutlineView__expandAll(self, _cmd)
{
    for (var count = 0; objj_msgSend(self, "itemAtRow:", count); count++)
    {
        var item = objj_msgSend(self, "itemAtRow:", count);
        if (objj_msgSend(self, "isExpandable:", item))
            objj_msgSend(self, "expandItem:", item);
    }
}
,["void"]), new objj_method(sel_getUid("collapseAll"), function $CPOutlineView__collapseAll(self, _cmd)
{
    for (var count = 0; objj_msgSend(self, "itemAtRow:", count); count++)
    {
        var item = objj_msgSend(self, "itemAtRow:", count);
        if (objj_msgSend(self, "isExpandable:", item))
            objj_msgSend(self, "collapseItem:", item);
    }
}
,["void"]), new objj_method(sel_getUid("recoverExpandedWithBaseKey:itemKeyPath:"), function $CPOutlineView__recoverExpandedWithBaseKey_itemKeyPath_(self, _cmd, aBaseKey, aKeyPath)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    for (var count = 0; objj_msgSend(self, "itemAtRow:", count); count++)
    {
        var item = objj_msgSend(self, "itemAtRow:", count);
        if (objj_msgSend(self, "isExpandable:", item))
        {
            var key = aBaseKey + objj_msgSend(item, "valueForKey:", aKeyPath);
            if ((objj_msgSend(objj_msgSend(defaults, "objectForKey:", "TNOutlineViewsExpandedGroups"), "objectForKey:", key) == "expanded")
                || (objj_msgSend(objj_msgSend(defaults, "objectForKey:", "TNOutlineViewsExpandedGroups"), "objectForKey:", key) == nil))
                objj_msgSend(self, "expandItem:", item);
        }
    }
}
,["void","CPString","CPString"])]);
}p;35;Categories/CPPlatformWindow+Title.jt;449;@STATIC;1.0;I;25;AppKit/CPPlatformWindow.jt;401;objj_executeFile("AppKit/CPPlatformWindow.j", NO);
{
var the_class = objj_getClass("CPPlatformWindow")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPPlatformWindow\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("DOMWindow"), function $CPPlatformWindow__DOMWindow(self, _cmd)
{
    return self._DOMWindow;
}
,["id"])]);
}p;42;Categories/CPPopover+TNAttachedWindowAPI.jt;881;@STATIC;1.0;I;18;AppKit/CPPopover.jt;840;objj_executeFile("AppKit/CPPopover.j", NO);
{
var the_class = objj_getClass("CPPopover")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPPopover\"");
var meta_class = the_class.isa;

class_addMethods(the_class, [new objj_method(sel_getUid("setDefaultButton:"), function $CPPopover__setDefaultButton_(self, _cmd, aButton)
{
    objj_msgSend(self._popoverWindow, "setDefaultButton:", aButton);
}
,["void","CPButton"]), new objj_method(sel_getUid("defaultButton"), function $CPPopover__defaultButton(self, _cmd)
{
    return objj_msgSend(self._popoverWindow, "defaultButton");
}
,["CPButton"]), new objj_method(sel_getUid("makeFirstResponder:"), function $CPPopover__makeFirstResponder_(self, _cmd, aResponder)
{
    objj_msgSend(self._popoverWindow, "makeFirstResponder:", aResponder);
}
,["void","id"])]);
}p;43;Categories/CPSegmentedControl+SegmentView.jt;487;@STATIC;1.0;I;27;AppKit/CPSegmentedControl.jt;437;objj_executeFile("AppKit/CPSegmentedControl.j", NO);
{
var the_class = objj_getClass("CPSegmentedControl")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPSegmentedControl\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("segment:"), function $CPSegmentedControl__segment_(self, _cmd, aSegment)
{
    return self._segments[aSegment];
}
,["id","CPString"])]);
}p;36;Categories/CPString+FormatByteSize.jt;1316;@STATIC;1.0;I;21;Foundation/CPString.jt;1271;objj_executeFile("Foundation/CPString.j", NO);
{
var the_class = objj_getClass("CPString")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPString\"");
var meta_class = the_class.isa;class_addMethods(meta_class, [new objj_method(sel_getUid("formatByteSize:"), function $CPString__formatByteSize_(self, _cmd, aSize)
{
    var usedKind = CPLocalizedString("TB", "TB"),
        originSize = parseFloat(aSize);
    aSize = parseFloat(aSize);
    aSize = Math.round((aSize / 1099511627776) * 100) / 100;
    if (aSize < 0.5)
    {
        aSize = Math.round((originSize / 1073741824) * 100) / 100;
        usedKind = CPLocalizedString("GB", "GB");
        if (aSize < 0.5)
        {
            aSize = Math.round((originSize / 1048576) * 100) / 100;
            usedKind = CPLocalizedString("MB", "MB");
            if (aSize < 0.5)
            {
                aSize = Math.round((originSize / 1024) * 100) / 100;
                usedKind = CPLocalizedString("KB", "KB");
                if (aSize < 0.5)
                {
                    aSize = originSize;
                    usedKind = CPLocalizedString("B", "B");
                }
            }
        }
    }
    return "" + aSize + " " + usedKind;
}
,["CPString","float"])]);
}p;33;Categories/CPString+UUIDRFC4122.jt;592;@STATIC;1.0;I;21;Foundation/CPString.jt;548;objj_executeFile("Foundation/CPString.j", NO);
{
var the_class = objj_getClass("CPString")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPString\"");
var meta_class = the_class.isa;class_addMethods(meta_class, [new objj_method(sel_getUid("UUID"), function $CPString__UUID(self, _cmd)
{
    var g = "";
    for (var i = 0; i < 32; i++)
    {
        if ((i == 8) || (i == 12) || (i == 16) || (i == 20))
            g += '-';
        g += FLOOR(RAND() * 0xF).toString(0xF);
    }
    return g;
}
,["CPString"])]);
}p;45;Categories/CPTableView+removeUnfocusedStyle.jt;772;@STATIC;1.0;I;20;AppKit/CPTableView.jt;729;objj_executeFile("AppKit/CPTableView.j", NO);
{
var the_class = objj_getClass("CPTableView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTableView\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("unfocusedSelectionGradientColors"), function $CPTableView__unfocusedSelectionGradientColors(self, _cmd)
{
    return objj_msgSend(self, "currentValueForThemeAttribute:", "sourcelist-selection-color");
}
,["void"]), new objj_method(sel_getUid("unfocusedSelectionHighlightColor"), function $CPTableView__unfocusedSelectionHighlightColor(self, _cmd)
{
    return objj_msgSend(self, "currentValueForThemeAttribute:", "selection-color");
}
,["void"])]);
}p;29;Categories/CPTabView+Border.jt;474;@STATIC;1.0;I;18;AppKit/CPTabView.jt;433;objj_executeFile("AppKit/CPTabView.j", NO);
{
var the_class = objj_getClass("CPTabView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPTabView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("setBorderColor:"), function $CPTabView__setBorderColor_(self, _cmd, aColor)
{
    objj_msgSend(self._box, "setBorderColor:", aColor);
}
,["void","CPColor"])]);
}p;31;Categories/CPView+ApplyShadow.jt;2224;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;20;AppKit/CPTextField.jt;2132;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
{
var the_class = objj_getClass("CPView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPView\"");
var meta_class = the_class.isa;



class_addMethods(the_class, [new objj_method(sel_getUid("applyShadow:offset:"), function $CPView__applyShadow_offset_(self, _cmd, aShadowColor, anOffset)
{
    var subviews = objj_msgSend(CPArray, "arrayWithArray:", objj_msgSend(self, "subviews"));
    for (var i = 0; i < objj_msgSend(subviews, "count"); i++)
    {
        var v = objj_msgSend(subviews, "objectAtIndex:", i);
        if (objj_msgSend(v, "isKindOfClass:", CPTextField) && !objj_msgSend(v, "isEditable"))
        {
            objj_msgSend(v, "setValue:forThemeAttribute:", aShadowColor, "text-shadow-color");
            objj_msgSend(v, "setValue:forThemeAttribute:", anOffset, "text-shadow-offset");
        }
    }
}
,["void","CPColor","CGSize"]), new objj_method(sel_getUid("applyShadow"), function $CPView__applyShadow(self, _cmd)
{
    objj_msgSend(self, "applyShadow:offset:", objj_msgSend(CPColor, "whiteColor"), CGSizeMake(0.0, 1.0));
}
,["void"]), new objj_method(sel_getUid("applyGlow"), function $CPView__applyGlow(self, _cmd)
{
    objj_msgSend(self, "applyGlow:spread:size:", objj_msgSend(CPColor, "whiteColor"), 10, CGSizeMake(0, 0));
}
,["void"]), new objj_method(sel_getUid("applyGlow:spread:size:"), function $CPView__applyGlow_spread_size_(self, _cmd, aColor, aSpreadValue, aSize)
{
    var CSSString = aColor ? aSize.height + "px " + aSize.width + "px  " + aSpreadValue + "px " + objj_msgSend(aColor, "cssString") : "";
    self._DOMElement.style.boxShadow = CSSString;
    self._DOMElement.style.MozBoxShadow = CSSString;
    self._DOMElement.style.WebkitBoxShadow = CSSString;
}
,["void","CPColor","int","CGSize"]), new objj_method(sel_getUid("setHasWhiteShadow:"), function $CPView__setHasWhiteShadow_(self, _cmd, shouldHaveWhiteShadow)
{
    if (shouldHaveWhiteShadow)
        objj_msgSend(self, "applyShadow");
}
,["void","BOOL"])]);
}p;26;Categories/CPView+Border.jt;829;@STATIC;1.0;I;15;AppKit/CPView.jt;791;objj_executeFile("AppKit/CPView.j", NO);
{
var the_class = objj_getClass("CPView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPView\"");
var meta_class = the_class.isa;

class_addMethods(the_class, [new objj_method(sel_getUid("setBordered"), function $CPView__setBordered(self, _cmd)
{
    self._DOMElement.style.border = "1px solid black";
}
,["void"]), new objj_method(sel_getUid("setBorderedWithHexColor:"), function $CPView__setBorderedWithHexColor_(self, _cmd, aHexColor)
{
    self._DOMElement.style.border = "1px solid " + aHexColor;
}
,["void","CPString"]), new objj_method(sel_getUid("setBorderRadius:"), function $CPView__setBorderRadius_(self, _cmd, aRadius)
{
    self._DOMElement.style.borderRadius = aRadius + "px";
}
,["void","int"])]);
}p;25;Categories/TNCategories.jt;1135;@STATIC;1.0;i;15;CPDate+Format.ji;22;CPObject+Duplication.ji;22;CPOutlineView+Extend.ji;24;CPPlatformWindow+Title.ji;31;CPPopover+TNAttachedWindowAPI.ji;32;CPSegmentedControl+SegmentView.ji;25;CPString+FormatByteSize.ji;22;CPString+UUIDRFC4122.ji;34;CPTableView+removeUnfocusedStyle.ji;18;CPTabView+Border.ji;20;CPView+ApplyShadow.ji;15;CPView+Border.ji;27;TNStropheClient+Singleton.ji;28;TNStropheGroup+Capitalized.jt;712;objj_executeFile("CPDate+Format.j", YES);
objj_executeFile("CPObject+Duplication.j", YES);
objj_executeFile("CPOutlineView+Extend.j", YES);
objj_executeFile("CPPlatformWindow+Title.j", YES);
objj_executeFile("CPPopover+TNAttachedWindowAPI.j", YES);
objj_executeFile("CPSegmentedControl+SegmentView.j", YES);
objj_executeFile("CPString+FormatByteSize.j", YES);
objj_executeFile("CPString+UUIDRFC4122.j", YES);
objj_executeFile("CPTableView+removeUnfocusedStyle.j", YES);
objj_executeFile("CPTabView+Border.j", YES);
objj_executeFile("CPView+ApplyShadow.j", YES);
objj_executeFile("CPView+Border.j", YES);
objj_executeFile("TNStropheClient+Singleton.j", YES);
objj_executeFile("TNStropheGroup+Capitalized.j", YES);p;38;Categories/TNStropheClient+Singleton.jt;736;@STATIC;1.0;I;37;StropheCappuccino/TNStropheIMClient.jt;676;objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
var DefaultTNStropheIMClient = nil;
{
var the_class = objj_getClass("TNStropheIMClient")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNStropheIMClient\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("setDefaultClient"), function $TNStropheIMClient__setDefaultClient(self, _cmd)
{
    DefaultTNStropheIMClient = self;
}
,["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultClient"), function $TNStropheIMClient__defaultClient(self, _cmd)
{
    return DefaultTNStropheIMClient;
}
,["TNStropheIMClient"])]);
}p;39;Categories/TNStropheGroup+Capitalized.jt;499;@STATIC;1.0;I;34;StropheCappuccino/TNStropheGroup.jt;442;objj_executeFile("StropheCappuccino/TNStropheGroup.j", NO);
{
var the_class = objj_getClass("TNStropheGroup")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNStropheGroup\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("description"), function $TNStropheGroup__description(self, _cmd)
{
    return objj_msgSend(self._name, "uppercaseString");
}
,["CPString"])]);
}p;24;Utils/EKShakeAnimation.jt;2713;@STATIC;1.0;I;23;Foundation/Foundation.jI;24;AppKit/CPViewAnimation.jt;2637;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPViewAnimation.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "EKShakeAnimation"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("target"), new objj_ivar("currentStep"), new objj_ivar("delta"), new objj_ivar("targetFrame"), new objj_ivar("steps"), new objj_ivar("stepDuration"), new objj_ivar("timer")]);

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithView:"), function $EKShakeAnimation__initWithView_(self, _cmd, aView)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("EKShakeAnimation").super_class }, "init"))
    {
        self.target = aView;
        self.targetFrame = objj_msgSend(self.target, "frame");
        self.currentStep = 1;
        self.delta = 7;
        self.steps = 5;
        self.stepDuration = 0.07;
        self.timer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", self.stepDuration, self, sel_getUid("timerDidFire"), nil, YES);
        objj_msgSend(self.timer, "fire");
    }
    return self;
}
,["id","id"]), new objj_method(sel_getUid("timerDidFire"), function $EKShakeAnimation__timerDidFire(self, _cmd)
{
    if (self.currentStep === self.steps)
    {
        objj_msgSend(self.timer, "invalidate");
        setTimeout(function()
        {
            objj_msgSend(self, "animateToFrame:", self.targetFrame);
        }, self.stepDuration);
    }
    else
    {
        var prefix = (self.currentStep % 2 === 1) ? -1 : 1;
        objj_msgSend(self, "animateToFrame:", CGRectMake(self.targetFrame.origin.x + self.delta * prefix,
                                        self.targetFrame.origin.y,
                                        self.targetFrame.size.width,
                                        self.targetFrame.size.height));
        self.currentStep++;
    }
}
,["void"]), new objj_method(sel_getUid("animateToFrame:"), function $EKShakeAnimation__animateToFrame_(self, _cmd, aFrame)
{
    var animation = objj_msgSend(objj_msgSend(CPViewAnimation, "alloc"), "initWithViewAnimations:", [
        objj_msgSend(CPDictionary, "dictionaryWithJSObject:", {
            CPViewAnimationTargetKey:self.target,
            CPViewAnimationStartFrameKey:self.targetFrame,
            CPViewAnimationEndFrameKey:aFrame
        })]);
    objj_msgSend(animation, "setAnimationCurve:", CPAnimationLinear);
    objj_msgSend(animation, "setDuration:", self.stepDuration);
    objj_msgSend(animation, "startAnimation");
    self.targetFrame = aFrame;
}
,["void","CGRect"])]);
}e;