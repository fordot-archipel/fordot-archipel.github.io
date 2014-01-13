@STATIC;1.0;p;23;TNCellApplianceStatus.jt;5426;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPImage.jI;20;AppKit/CPImageView.jI;20;AppKit/CPTextField.ji;20;TNVMCastDatasource.jt;5283;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("TNVMCastDatasource.j", YES);
var TNCellApplianceStatusIconInstalled,
    TNCellApplianceStatusIconInstalling,
    TNCellApplianceStatusIconNotInstalled,
    TNCellApplianceStatusIconError;
{var the_class = objj_allocateClassPair(CPView, "TNCellApplianceStatus"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_imageStatus"), new objj_ivar("_fieldStatus")]);


       
       


       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $TNCellApplianceStatus__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCellApplianceStatus").super_class }, "init"))
    {
        self._imageStatus = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMake(0, 8, 8, 8));
        self._fieldStatus = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(15, 2, 200, 100));
        objj_msgSend(self, "addSubview:", self._imageStatus);
        objj_msgSend(self, "addSubview:", self._fieldStatus);
        objj_msgSend(self._fieldStatus, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "whiteColor"), "text-color", CPThemeStateSelected);
        objj_msgSend(self._fieldStatus, "setValue:forThemeAttribute:inState:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 12), "font", CPThemeStateSelected);
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("setObjectValue:"), function $TNCellApplianceStatus__setObjectValue_(self, _cmd, aStatus)
{
    objj_msgSend(self._fieldStatus, "setStringValue:", TNArchipelApplianceStatusString[aStatus]);
    objj_msgSend(self._fieldStatus, "sizeToFit");
    if (aStatus == TNArchipelApplianceInstalled)
        objj_msgSend(self._imageStatus, "setImage:", TNCellApplianceStatusIconInstalled)
    else if (aStatus == TNArchipelApplianceInstalling)
        objj_msgSend(self._imageStatus, "setImage:", TNCellApplianceStatusIconInstalling);
    else if (aStatus == TNArchipelApplianceInstallationError)
        objj_msgSend(self._imageStatus, "setImage:", TNCellApplianceStatusIconError);
    else if (aStatus == TNArchipelApplianceNotInstalled)
        objj_msgSend(self._imageStatus, "setImage:", TNCellApplianceStatusIconNotInstalled);
    else
        objj_msgSend(self._imageStatus, "setImage:", nil);
}
,["void","id"]), new objj_method(sel_getUid("setThemeState:"), function $TNCellApplianceStatus__setThemeState_(self, _cmd, aState)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCellApplianceStatus").super_class }, "setThemeState:", aState);
    objj_msgSend(self._fieldStatus, "setThemeState:", aState);
    objj_msgSend(self._fieldStatus, "sizeToFit");
}
,["void","id"]), new objj_method(sel_getUid("unsetThemeState:"), function $TNCellApplianceStatus__unsetThemeState_(self, _cmd, aState)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCellApplianceStatus").super_class }, "unsetThemeState:", aState);
    objj_msgSend(self._fieldStatus, "unsetThemeState:", aState);
    objj_msgSend(self._fieldStatus, "sizeToFit");
}
,["void","id"]), new objj_method(sel_getUid("initWithCoder:"), function $TNCellApplianceStatus__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCellApplianceStatus").super_class }, "initWithCoder:", aCoder))
    {
        self._fieldStatus = objj_msgSend(aCoder, "decodeObjectForKey:", "_fieldStatus");
        self._imageStatus = objj_msgSend(aCoder, "decodeObjectForKey:", "_imageStatus");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNCellApplianceStatus__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCellApplianceStatus").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self._fieldStatus, "_fieldStatus");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._imageStatus, "_imageStatus");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNCellApplianceStatus__initialize(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "mainBundle");
    TNCellApplianceStatusIconInstalled = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsStatus/green.png"), CGSizeMake(8.0, 8.0));
    TNCellApplianceStatusIconNotInstalled = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsStatus/gray.png"), CGSizeMake(8.0, 8.0));
    TNCellApplianceStatusIconError = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsStatus/red.png"), CGSizeMake(8.0, 8.0));
    TNCellApplianceStatusIconInstalling = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "spinner.gif"), CGSizeMake(8.0, 8.0));
}
,["void"])]);
}p;22;TNCellPercentageView.jt;2047;@STATIC;1.0;I;23;Foundation/Foundation.jI;28;AppKit/CPProgressIndicator.jt;1967;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPProgressIndicator.j", NO);
{var the_class = objj_allocateClassPair(CPView, "TNCellPercentageView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_progressBar")]);

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $TNCellPercentageView__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCellPercentageView").super_class }, "init"))
    {
        self._progressBar = objj_msgSend(objj_msgSend(CPProgressIndicator, "alloc"), "initWithFrame:", CGRectMake(0.0, 4.0, 0.0, 16.0));
        objj_msgSend(self._progressBar, "setAutoresizingMask:", CPViewWidthSizable);
        objj_msgSend(self._progressBar, "setMaxValue:", 100);
        objj_msgSend(self._progressBar, "setMinValue:", 0);
        objj_msgSend(self, "addSubview:", self._progressBar);
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("setObjectValue:"), function $TNCellPercentageView__setObjectValue_(self, _cmd, aValue)
{
    objj_msgSend(self._progressBar, "setDoubleValue:", aValue);
}
,["void","float"]), new objj_method(sel_getUid("initWithCoder:"), function $TNCellPercentageView__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCellPercentageView").super_class }, "initWithCoder:", aCoder))
    {
        self._progressBar = objj_msgSend(aCoder, "decodeObjectForKey:", "_progressBar");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNCellPercentageView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCellPercentageView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self._progressBar, "_progressBar");
}
,["void","CPCoder"])]);
}p;27;TNDownloadQueueController.jt;5298;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPTableView.jI;17;AppKit/CPWindow.jI;35;StropheCappuccino/TNStropheStanza.jI;29;TNKit/TNTableViewDataSource.ji;22;TNCellPercentageView.ji;17;TNDownoadObject.jt;5081;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("TNCellPercentageView.j", YES);
objj_executeFile("TNDownoadObject.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global TNArchipelTypeHypervisorVMCastingDownloadQueue
var TNArchipelTypeHypervisorVMCasting = "archipel:hypervisor:vmcasting",
    TNArchipelTypeHypervisorVMCastingDownloadQueue = "downloadqueue";
{var the_class = objj_allocateClassPair(CPObject, "TNDownloadQueueController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("mainPopover"), new objj_ivar("mainTableView"), new objj_ivar("labelTarget"), new objj_ivar("_delegate"), new objj_ivar("_timer"), new objj_ivar("_dlDatasource")]);
       
       


       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $TNDownloadQueueController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNDownloadQueueController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("awakeFromCib"), function $TNDownloadQueueController__awakeFromCib(self, _cmd)
{
    self._dlDatasource = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self._dlDatasource, "setTable:", self.mainTableView);
    objj_msgSend(self._dlDatasource, "setSearchableKeyPaths:", ["name", "totalSize", "percentage"]);
    objj_msgSend(objj_msgSend(self.mainTableView, "tableColumnWithIdentifier:", "percentage"), "setDataView:", objj_msgSend(objj_msgSend(TNCellPercentageView, "alloc"), "init"));
    objj_msgSend(self.mainTableView, "setDataSource:", self._dlDatasource);
    objj_msgSend(self.mainTableView, "reloadData");
}
,["void"]), new objj_method(sel_getUid("showWindow:"), function $TNDownloadQueueController__showWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self, "getDownloadQueue:", nil);
    if (!self._timer)
        self._timer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", 2.0, self, sel_getUid("getDownloadQueue:"), nil, YES);
    objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.labelTarget, "setStringValue:", CPBundleLocalizedString("Download queue for ", "Download queue for ") + objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"));
}
,["void","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNDownloadQueueController__closeWindow_(self, _cmd, sender)
{
    objj_msgSend(self._timer, "invalidate");
    self._timer = nil;
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("getDownloadQueue:"), function $TNDownloadQueueController__getDownloadQueue_(self, _cmd, aTimer)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorVMCasting});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorVMCastingDownloadQueue});
    objj_msgSend(objj_msgSend(self._delegate, "entity"), "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveDownloadQueue:"), self);
}
,["void","CPTimer"]), new objj_method(sel_getUid("_didReceiveDownloadQueue:"), function $TNDownloadQueueController___didReceiveDownloadQueue_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var downloads = objj_msgSend(aStanza, "childrenWithName:", "download");
        objj_msgSend(self._dlDatasource, "removeAllObjects");
        for (var i = 0; i < objj_msgSend(downloads, "count"); i++)
        {
            var download = objj_msgSend(downloads, "objectAtIndex:", i),
                identifier = objj_msgSend(download, "valueForAttribute:", "uuid"),
                name = objj_msgSend(download, "valueForAttribute:", "name"),
                percentage = Math.round(parseFloat(objj_msgSend(download, "valueForAttribute:", "percentage"))),
                totalSize = Math.round(parseFloat(objj_msgSend(download, "valueForAttribute:", "total"))),
                dl = objj_msgSend(TNDownload, "downloadWithIdentifier:name:totalSize:percentage:", identifier, name, totalSize, percentage);
            objj_msgSend(self._dlDatasource, "addObject:", dl);
        }
        objj_msgSend(self.mainTableView, "reloadData");
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
}
,["void","TNStropheStanza"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNDownloadQueueController), comment);
}p;17;TNDownoadObject.jt;2531;@STATIC;1.0;I;23;Foundation/Foundation.jt;2484;objj_executeFile("Foundation/Foundation.j", NO);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
{var the_class = objj_allocateClassPair(CPObject, "TNDownload"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_identifier"), new objj_ivar("_name"), new objj_ivar("_percentage"), new objj_ivar("_totalSize")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("identifier"), function $TNDownload__identifier(self, _cmd)
{
return self._identifier;
}
,["CPString"]), new objj_method(sel_getUid("setIdentifier:"), function $TNDownload__setIdentifier_(self, _cmd, newValue)
{
self._identifier = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("name"), function $TNDownload__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNDownload__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("percentage"), function $TNDownload__percentage(self, _cmd)
{
return self._percentage;
}
,["float"]), new objj_method(sel_getUid("setPercentage:"), function $TNDownload__setPercentage_(self, _cmd, newValue)
{
self._percentage = newValue;
}
,["void","float"]), new objj_method(sel_getUid("totalSize"), function $TNDownload__totalSize(self, _cmd)
{
return self._totalSize;
}
,["float"]), new objj_method(sel_getUid("setTotalSize:"), function $TNDownload__setTotalSize_(self, _cmd, newValue)
{
self._totalSize = newValue;
}
,["void","float"]), new objj_method(sel_getUid("totalSize"), function $TNDownload__totalSize(self, _cmd)
{
    return objj_msgSend(CPString, "formatByteSize:", self._totalSize);
}
,["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("downloadWithIdentifier:name:totalSize:percentage:"), function $TNDownload__downloadWithIdentifier_name_totalSize_percentage_(self, _cmd, anIdentifier, aName, aSize, aPercentage)
{
    var dl = objj_msgSend(objj_msgSend(TNDownload, "alloc"), "init");
    objj_msgSend(dl, "setIdentifier:", anIdentifier);
    objj_msgSend(dl, "setTotalSize:", aSize);
    objj_msgSend(dl, "setName:", aName);
    objj_msgSend(dl, "setPercentage:", aPercentage);
    return dl;
}
,["TNDownload","CPString","CPString","float","float"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNDownload), comment);
}p;31;TNHypervisorVMCastsController.jt;31435;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;19;AppKit/CPCheckBox.jI;22;AppKit/CPOutlineView.jI;28;AppKit/CPProgressIndicator.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;17;AppKit/CPWindow.jI;15;TNKit/TNAlert.ji;22;../../Model/TNModule.ji;23;TNCellApplianceStatus.ji;17;TNDownoadObject.ji;20;TNVMCastDatasource.ji;32;TNVMCastRegistrationController.ji;27;TNDownloadQueueController.jt;30971;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPCheckBox.j", NO);
objj_executeFile("AppKit/CPOutlineView.j", NO);
objj_executeFile("AppKit/CPProgressIndicator.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("TNCellApplianceStatus.j", YES);;
objj_executeFile("TNDownoadObject.j", YES);;
objj_executeFile("TNVMCastDatasource.j", YES);;
objj_executeFile("TNVMCastRegistrationController.j", YES);
objj_executeFile("TNDownloadQueueController.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global TNArchipelTypeHypervisorVMCastingDownloadProgress
var TNArchipelVMCastsOpenedVMCasts = "TNArchipelVMCastsOpenedVMCasts_",
    TNArchipelTypeHypervisorVMCasting = "archipel:hypervisor:vmcasting",
    TNArchipelTypeHypervisorVMCastingGet = "get",
    TNArchipelTypeHypervisorVMCastingDownload = "downloadappliance",
    TNArchipelTypeHypervisorVMCastingDeleteAppliance = "deleteappliance",
    TNArchipelPushNotificationVMCasting = "archipel:push:vmcasting";
{var the_class = objj_allocateClassPair(TNModule, "TNHypervisorVMCastsController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonBarControl"), new objj_ivar("checkBoxOnlyInstalled"), new objj_ivar("mainScrollView"), new objj_ivar("fieldFilter"), new objj_ivar("viewTableContainer"), new objj_ivar("VMCastRegistrationController"), new objj_ivar("downloadQueueController"), new objj_ivar("_mainOutlineView"), new objj_ivar("_downloadButton"), new objj_ivar("_downloadQueueButton"), new objj_ivar("_minusButton"), new objj_ivar("_plusButton"), new objj_ivar("_castsDatasource")]);
       
       






       
       

       
       








       
       











       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("mainOutlineView"), function $TNHypervisorVMCastsController__mainOutlineView(self, _cmd)
{
return self._mainOutlineView;
}
,["CPOutlineView"]), new objj_method(sel_getUid("_setMainOutlineView:"), function $TNHypervisorVMCastsController___setMainOutlineView_(self, _cmd, newValue)
{
self._mainOutlineView = newValue;
}
,["void","CPOutlineView"]), new objj_method(sel_getUid("awakeFromCib"), function $TNHypervisorVMCastsController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.viewTableContainer, "setBorderedWithHexColor:", "#C0C7D2");
    self._castsDatasource = objj_msgSend(objj_msgSend(TNVMCastDatasource, "alloc"), "init");
    self._mainOutlineView = objj_msgSend(objj_msgSend(CPOutlineView, "alloc"), "initWithFrame:", objj_msgSend(self.mainScrollView, "bounds"));
    objj_msgSend(self._mainOutlineView, "setCornerView:", nil);
    objj_msgSend(self._mainOutlineView, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
    objj_msgSend(self._mainOutlineView, "setAllowsColumnResizing:", YES);
    objj_msgSend(self._mainOutlineView, "setUsesAlternatingRowBackgroundColors:", YES);
    objj_msgSend(self._mainOutlineView, "setColumnAutoresizingStyle:", CPTableViewLastColumnOnlyAutoresizingStyle);
    objj_msgSend(self._mainOutlineView, "setDataSource:", self._castsDatasource);
    var columnName = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "name"),
        columnDescription = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "comment"),
        columnSize = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "size"),
        columnStatus = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "status"),
        dataViewPrototype = objj_msgSend(objj_msgSend(TNCellApplianceStatus, "alloc"), "init");
    objj_msgSend(objj_msgSend(columnName, "headerView"), "setStringValue:", CPBundleLocalizedString("VMCasts", "VMCasts"));
    objj_msgSend(columnName, "setWidth:", 300);
    objj_msgSend(columnName, "setSortDescriptorPrototype:", objj_msgSend(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "name", YES));
    objj_msgSend(objj_msgSend(columnDescription, "headerView"), "setStringValue:", CPBundleLocalizedString("Comment", "Comment"));
    objj_msgSend(columnDescription, "setWidth:", 250);
    objj_msgSend(columnDescription, "setSortDescriptorPrototype:", objj_msgSend(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "comment", YES));
    objj_msgSend(objj_msgSend(columnSize, "headerView"), "setStringValue:", CPBundleLocalizedString("Size", "Size"));
    objj_msgSend(columnSize, "setSortDescriptorPrototype:", objj_msgSend(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "size", YES));
    objj_msgSend(columnStatus, "setWidth:", 120);
    objj_msgSend(objj_msgSend(columnStatus, "headerView"), "setStringValue:", CPBundleLocalizedString("Status", "Status"));
    [objj_msgSend(columnStatus, "setDataView:", dataViewPrototype)];
    objj_msgSend(self._mainOutlineView, "setOutlineTableColumn:", columnName);
    objj_msgSend(self._mainOutlineView, "addTableColumn:", columnName);
    objj_msgSend(self._mainOutlineView, "addTableColumn:", columnSize);
    objj_msgSend(self._mainOutlineView, "addTableColumn:", columnStatus);
    objj_msgSend(self._mainOutlineView, "addTableColumn:", columnDescription);
    objj_msgSend(self.mainScrollView, "setAutohidesScrollers:", YES);
    objj_msgSend(self.mainScrollView, "setDocumentView:", self._mainOutlineView);
    objj_msgSend(self._mainOutlineView, "reloadData");
    objj_msgSend(self._mainOutlineView, "recoverExpandedWithBaseKey:itemKeyPath:", TNArchipelVMCastsOpenedVMCasts, "name");
    objj_msgSend(self._mainOutlineView, "setTarget:", self);
    objj_msgSend(self._mainOutlineView, "setDoubleAction:", sel_getUid("download:"));
    objj_msgSend(self.fieldFilter, "setSendsSearchStringImmediately:", YES);
    objj_msgSend(self.fieldFilter, "setTarget:", self);
    objj_msgSend(self.fieldFilter, "setAction:", sel_getUid("fieldFilterDidChange:"));
    self._plusButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._plusButton, "setTarget:", self);
    objj_msgSend(self._plusButton, "setAction:", sel_getUid("openNewVMCastURLWindow:"));
    objj_msgSend(self._plusButton, "setToolTip:", CPBundleLocalizedString("Register to a new VMCast feed", "Register to a new VMCast feed"));
    self._minusButton = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._minusButton, "setTarget:", self);
    objj_msgSend(self._minusButton, "setAction:", sel_getUid("remove:"));
    objj_msgSend(self._minusButton, "setToolTip:", CPBundleLocalizedString("Unregister from selected VMCast feed", "Unregister from selected VMCast feed"));
    self._downloadButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._downloadButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/download.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._downloadButton, "setTarget:", self);
    objj_msgSend(self._downloadButton, "setAction:", sel_getUid("download:"));
    objj_msgSend(self._downloadButton, "setToolTip:", CPBundleLocalizedString("Download selected appliance", "Download selected appliance"));
    self._downloadQueueButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._downloadQueueButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/view.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._downloadQueueButton, "setTarget:", self);
    objj_msgSend(self._downloadQueueButton, "setAction:", sel_getUid("showDownloadQueue:"));
    objj_msgSend(self._downloadQueueButton, "setToolTip:", CPBundleLocalizedString("Open download queue", "Open download queue"));
    objj_msgSend(self._minusButton, "setEnabled:", NO);
    objj_msgSend(self._downloadButton, "setEnabled:", NO);
    objj_msgSend(self.buttonBarControl, "setButtons:", [self._plusButton, self._minusButton, self._downloadButton, self._downloadQueueButton]);
    objj_msgSend(self.VMCastRegistrationController, "setDelegate:", self);
    objj_msgSend(self.downloadQueueController, "setDelegate:", self);
    objj_msgSend(self.checkBoxOnlyInstalled, "setState:", CPOffState);
}
,["void"]), new objj_method(sel_getUid("willShow"), function $TNHypervisorVMCastsController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNHypervisorVMCastsController").super_class }, "willShow"))
        return NO;
    objj_msgSend(self._mainOutlineView, "setDelegate:", nil);
    objj_msgSend(self._mainOutlineView, "setDelegate:", self);
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceivePush:"), TNArchipelPushNotificationVMCasting);
    objj_msgSend(self, "getVMCasts");
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willHide"), function $TNHypervisorVMCastsController__willHide(self, _cmd)
{
    objj_msgSend(self.downloadQueueController, "closeWindow:", nil);
    objj_msgSend(self.VMCastRegistrationController, "closeWindow:", nil);
    objj_msgSend(self._mainOutlineView, "deselectAll");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNHypervisorVMCastsController").super_class }, "willHide");
}
,["void"]), new objj_method(sel_getUid("menuReady"), function $TNHypervisorVMCastsController__menuReady(self, _cmd)
{
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Register to a new VMCasts", "Register to a new VMCasts"), sel_getUid("openNewVMCastURLWindow:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Unregister from selected VMCast", "Unregister from selected VMCast"), sel_getUid("removeVMCast:"), ""), "setTarget:", self);
    objj_msgSend(self._menu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Download selected appliance", "Download selected appliance"), sel_getUid("download:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Remove selected appliance", "Remove selected appliance"), sel_getUid("removeAppliance:"), ""), "setTarget:", self);
    objj_msgSend(self._menu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Show activity monitor", "Show activity monitor"), sel_getUid("showDownloadQueue:"), ""), "setTarget:", self);
}
,["void"]), new objj_method(sel_getUid("permissionsChanged"), function $TNHypervisorVMCastsController__permissionsChanged(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNHypervisorVMCastsController").super_class }, "permissionsChanged");
    objj_msgSend(self, "outlineViewSelectionDidChange:", NO);
}
,["void"]), new objj_method(sel_getUid("setUIAccordingToPermissions"), function $TNHypervisorVMCastsController__setUIAccordingToPermissions(self, _cmd)
{
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._downloadQueueButton, "vmcasting_downloadqueue");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._plusButton, "vmcasting_register");
    if (!objj_msgSend(self, "currentEntityHasPermission:", "vmcasting_downloadqueue"))
        objj_msgSend(self.downloadQueueController, "closeWindow:", nil);
    if (!objj_msgSend(self, "currentEntityHasPermission:", "vmcasting_register"))
        objj_msgSend(self.VMCastRegistrationController, "closeWindow:", nil);
    var selectedIndex = objj_msgSend(objj_msgSend(self._mainOutlineView, "selectedRowIndexes"), "firstIndex"),
        currentVMCast = objj_msgSend(self._mainOutlineView, "itemAtRow:", selectedIndex);
    if (objj_msgSend(currentVMCast, "isKindOfClass:", TNVMCast) && objj_msgSend(self, "currentEntityHasPermission:", "vmcasting_unregister"))
        objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._minusButton, "vmcasting_unregister")
    else if (objj_msgSend(currentVMCast, "isKindOfClass:", TNVMCastSource) && objj_msgSend(self, "currentEntityHasPermission:", "vmcasting_deleteappliance"))
        objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._minusButton, "vmcasting_deleteappliance")
    else
        objj_msgSend(self._minusButton, "setEnabled:", NO);
}
,["void"]), new objj_method(sel_getUid("flushUI"), function $TNHypervisorVMCastsController__flushUI(self, _cmd)
{
    objj_msgSend(objj_msgSend(self._castsDatasource, "contents"), "removeAllObjects");
    objj_msgSend(self._mainOutlineView, "reloadData");
}
,["void"]), new objj_method(sel_getUid("_didReceivePush:"), function $TNHypervisorVMCastsController___didReceivePush_(self, _cmd, somePushInfo)
{
    var sender = objj_msgSend(somePushInfo, "objectForKey:", "owner"),
        type = objj_msgSend(somePushInfo, "objectForKey:", "type"),
        change = objj_msgSend(somePushInfo, "objectForKey:", "change"),
        date = objj_msgSend(somePushInfo, "objectForKey:", "date");
    objj_msgSend(self, "getVMCasts");
    switch (change)
    {
        case "download_start":
            objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Appliance download started", "Appliance download started"));
            break
        case "download_complete":
            objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Appliance download complete", "Appliance download complete"));
            break;
        case "download_error":
            objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Appliance download error", "Appliance download error"), TNGrowlIconError);
            break
    }
    return YES;
}
,["BOOL","CPDictionary"]), new objj_method(sel_getUid("fieldFilterDidChange:"), function $TNHypervisorVMCastsController__fieldFilterDidChange_(self, _cmd, aSender)
{
    objj_msgSend(self._castsDatasource, "setFilter:", objj_msgSend(self.fieldFilter, "stringValue"));
    objj_msgSend(self._mainOutlineView, "reloadData");
    objj_msgSend(self._mainOutlineView, "recoverExpandedWithBaseKey:itemKeyPath:", TNArchipelVMCastsOpenedVMCasts, "name");
}
,["id","id"]), new objj_method(sel_getUid("openNewVMCastURLWindow:"), function $TNHypervisorVMCastsController__openNewVMCastURLWindow_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    objj_msgSend(self.VMCastRegistrationController, "openWindow:", self._plusButton);
}
,["id","id"]), new objj_method(sel_getUid("clickOnFilterCheckBox:"), function $TNHypervisorVMCastsController__clickOnFilterCheckBox_(self, _cmd, aSender)
{
    if (objj_msgSend(self.checkBoxOnlyInstalled, "state") == CPOnState)
        objj_msgSend(self._castsDatasource, "setFilterInstalled:", YES);
    else
        objj_msgSend(self._castsDatasource, "setFilterInstalled:", NO);
    objj_msgSend(self._mainOutlineView, "reloadData");
    objj_msgSend(self._mainOutlineView, "recoverExpandedWithBaseKey:itemKeyPath:", TNArchipelVMCastsOpenedVMCasts, "name");
}
,["id","id"]), new objj_method(sel_getUid("remove:"), function $TNHypervisorVMCastsController__remove_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (objj_msgSend(self._mainOutlineView, "numberOfSelectedRows") < 1)
        return;
    objj_msgSend(self, "remove");
}
,["id","id"]), new objj_method(sel_getUid("removeAppliance:"), function $TNHypervisorVMCastsController__removeAppliance_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (objj_msgSend(self._mainOutlineView, "numberOfSelectedRows") < 1)
        return;
    if (!objj_msgSend(objj_msgSend(self._mainOutlineView, "itemAtRow:", objj_msgSend(self._mainOutlineView, "selectedRow")), "isKindOfClass:", TNVMCast))
        return;
    objj_msgSend(self, "removeAppliance");
}
,["id","id"]), new objj_method(sel_getUid("removeVMCast:"), function $TNHypervisorVMCastsController__removeVMCast_(self, _cmd, someUserInfo)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (objj_msgSend(self._mainOutlineView, "numberOfSelectedRows") < 1)
        return;
    if (!objj_msgSend(objj_msgSend(self._mainOutlineView, "itemAtRow:", objj_msgSend(self._mainOutlineView, "selectedRow")), "isKindOfClass:", TNVMCastSource))
        return;
    objj_msgSend(self.VMCastRegistrationController, "removeVMCast");
}
,["id","id"]), new objj_method(sel_getUid("download:"), function $TNHypervisorVMCastsController__download_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (objj_msgSend(self._mainOutlineView, "numberOfSelectedRows") < 1)
        return;
    if (!objj_msgSend(objj_msgSend(self._mainOutlineView, "itemAtRow:", objj_msgSend(self._mainOutlineView, "selectedRow")), "isKindOfClass:", TNVMCast))
        return;
    objj_msgSend(self, "download");
}
,["id","id"]), new objj_method(sel_getUid("showDownloadQueue:"), function $TNHypervisorVMCastsController__showDownloadQueue_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    objj_msgSend(self.downloadQueueController, "showWindow:", self._downloadQueueButton);
}
,["id","id"]), new objj_method(sel_getUid("getVMCasts"), function $TNHypervisorVMCastsController__getVMCasts(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorVMCasting});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorVMCastingGet});
    objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didReceiveVMCasts:"));
}
,["void"]), new objj_method(sel_getUid("_didReceiveVMCasts:"), function $TNHypervisorVMCastsController___didReceiveVMCasts_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(self, "flushUI");
        var sources = objj_msgSend(aStanza, "childrenWithName:", "source");
        for (var i = 0; i < objj_msgSend(sources, "count"); i++)
        {
            var source = objj_msgSend(sources, "objectAtIndex:", i),
                name = objj_msgSend(source, "valueForAttribute:", "name"),
                url = objj_msgSend(CPURL, "URLWithString:", objj_msgSend(source, "valueForAttribute:", "url")),
                uuid = objj_msgSend(CPURL, "URLWithString:", objj_msgSend(source, "valueForAttribute:", "uuid")),
                comment = objj_msgSend(source, "valueForAttribute:", "description"),
                newSource = objj_msgSend(TNVMCastSource, "VMCastSourceWithName:UUID:URL:comment:", name, uuid, url, comment),
                appliances = objj_msgSend(source, "childrenWithName:", "appliance");
            for (var j = 0; j < objj_msgSend(appliances, "count"); j++)
            {
                var appliance = objj_msgSend(appliances, "objectAtIndex:", j),
                    name = objj_msgSend(appliance, "valueForAttribute:", "name"),
                    url = objj_msgSend(CPURL, "URLWithString:", objj_msgSend(appliance, "valueForAttribute:", "url")),
                    comment = objj_msgSend(appliance, "valueForAttribute:", "description"),
                    size = objj_msgSend(appliance, "valueForAttribute:", "size"),
                    date = objj_msgSend(appliance, "valueForAttribute:", "pubDate"),
                    uuid = objj_msgSend(appliance, "valueForAttribute:", "uuid"),
                    status = parseInt(objj_msgSend(appliance, "valueForAttribute:", "status")),
                    newCast = objj_msgSend(TNVMCast, "VMCastWithName:URL:comment:size:pubDate:UUID:status:", name, url, comment, size, date, uuid, status);
                objj_msgSend(objj_msgSend(newSource, "content"), "addObject:", newCast);
            }
            objj_msgSend(self._castsDatasource, "addSource:", newSource);
        }
        objj_msgSend(self._mainOutlineView, "reloadData");
        objj_msgSend(self._mainOutlineView, "recoverExpandedWithBaseKey:itemKeyPath:", TNArchipelVMCastsOpenedVMCasts, "name");
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusReady);
    }
    else if (objj_msgSend(aStanza, "type") == "error")
    {
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusError);
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("updateDownloadProgress:"), function $TNHypervisorVMCastsController__updateDownloadProgress_(self, _cmd, aTimer)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorVMCasting});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorVMCastingDownloadProgress});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didDownloadProgress:"), self);
}
,["void","CPTimer"]), new objj_method(sel_getUid("_didDownloadProgress:"), function $TNHypervisorVMCastsController___didDownloadProgress_(self, _cmd, aStanza)
{
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("remove"), function $TNHypervisorVMCastsController__remove(self, _cmd)
{
    if ((objj_msgSend(self._mainOutlineView, "numberOfRows") == 0) || (objj_msgSend(self._mainOutlineView, "numberOfSelectedRows") <= 0))
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("You must select a VMCast or an Appliance", "You must select a VMCast or an Appliance"), TNGrowlIconError);
        return;
    }
    var selectedIndex = objj_msgSend(objj_msgSend(self._mainOutlineView, "selectedRowIndexes"), "firstIndex"),
        currentVMCast = objj_msgSend(self._mainOutlineView, "itemAtRow:", selectedIndex);
    if (objj_msgSend(currentVMCast, "isKindOfClass:", TNVMCast))
        objj_msgSend(self, "removeAppliance");
    else if (objj_msgSend(currentVMCast, "isKindOfClass:", TNVMCastSource))
        objj_msgSend(self.VMCastRegistrationController, "removeVMCast");
}
,["void"]), new objj_method(sel_getUid("removeAppliance"), function $TNHypervisorVMCastsController__removeAppliance(self, _cmd)
{
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Delete appliance", "Delete appliance"), CPBundleLocalizedString("Are you sure you want to remove this appliance? This doesn't affect virtual machine that have been instanciated from this template.", "Are you sure you want to remove this appliance? This doesn't affect virtual machine that have been instanciated from this template."), self, [["Delete", sel_getUid("performRemoveAppliance:")], ["Cancel", nil]]);
    objj_msgSend(alert, "runModal");
}
,["void"]), new objj_method(sel_getUid("performRemoveAppliance:"), function $TNHypervisorVMCastsController__performRemoveAppliance_(self, _cmd, someUserInfo)
{
    var selectedIndex = objj_msgSend(objj_msgSend(self._mainOutlineView, "selectedRowIndexes"), "firstIndex"),
        currentVMCast = objj_msgSend(self._mainOutlineView, "itemAtRow:", selectedIndex),
        uuid = objj_msgSend(currentVMCast, "UUID"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorVMCasting});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorVMCastingDeleteAppliance,
        "uuid": uuid});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didDeleteAppliance:"));
}
,["void","id"]), new objj_method(sel_getUid("_didDeleteAppliance:"), function $TNHypervisorVMCastsController___didDeleteAppliance_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Appliance has been uninstalled", "Appliance has been uninstalled"));
    else
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("download"), function $TNHypervisorVMCastsController__download(self, _cmd)
{
    var selectedIndex = objj_msgSend(objj_msgSend(self._mainOutlineView, "selectedRowIndexes"), "firstIndex"),
        item = objj_msgSend(self._mainOutlineView, "itemAtRow:", selectedIndex);
    if ((objj_msgSend(item, "status") != TNArchipelApplianceNotInstalled) && (objj_msgSend(item, "status") != TNArchipelApplianceInstallationError))
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Appliance is already downloaded. If you want to instanciante it, create a new Virtual Machine and choose Packaging module.", "Appliance is already downloaded. If you want to instanciante it, create a new Virtual Machine and choose Packaging module."), TNGrowlIconError);
        return;
    }
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Download", "Download"), CPBundleLocalizedString("Are you sure you want to download this appliance?", "Are you sure you want to download this appliance?"), self, [[CPBundleLocalizedString("Download", "Download"), sel_getUid("performDownload:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "runModal");
}
,["void"]), new objj_method(sel_getUid("performDownload:"), function $TNHypervisorVMCastsController__performDownload_(self, _cmd, someUserInfo)
{
    var selectedIndex = objj_msgSend(objj_msgSend(self._mainOutlineView, "selectedRowIndexes"), "firstIndex"),
        item = objj_msgSend(self._mainOutlineView, "itemAtRow:", selectedIndex),
        uuid = objj_msgSend(item, "UUID"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorVMCasting});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorVMCastingDownload,
        "uuid": uuid});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didDownload:"))
}
,["void","id"]), new objj_method(sel_getUid("_didDownload:"), function $TNHypervisorVMCastsController___didDownload_(self, _cmd, aStanza)
{
    objj_msgSend(self.downloadQueueController, "closeWindow:", nil);
    objj_msgSend(self.downloadQueueController, "showWindow:", self._plusButton);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("outlineViewSelectionDidChange:"), function $TNHypervisorVMCastsController__outlineViewSelectionDidChange_(self, _cmd, aNotification)
{
    objj_msgSend(self._minusButton, "setEnabled:", NO);
    objj_msgSend(self._downloadButton, "setEnabled:", NO);
    if (objj_msgSend(self._mainOutlineView, "numberOfSelectedRows") > 0)
    {
        var selectedIndexes = objj_msgSend(self._mainOutlineView, "selectedRowIndexes"),
            object = objj_msgSend(self._mainOutlineView, "itemAtRow:", objj_msgSend(selectedIndexes, "firstIndex"));
        if (objj_msgSend(object, "isKindOfClass:", TNVMCast))
        {
            var conditionNotInstalled = ((objj_msgSend(object, "status") == TNArchipelApplianceNotInstalled) || (objj_msgSend(object, "status") == TNArchipelApplianceInstallationError)),
                conditionInstalled = (objj_msgSend(object, "status") == TNArchipelApplianceInstalled);
            objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._downloadButton, "vmcasting_downloadappliance", conditionNotInstalled);
            objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._minusButton, "vmcasting_deleteappliance", conditionInstalled);
        }
        else if (objj_msgSend(object, "isKindOfClass:", TNVMCastSource))
        {
            objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._minusButton, "vmcasting_unregister");
            objj_msgSend(self._downloadButton, "setEnabled:", NO)
        }
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("outlineViewItemWillExpand:"), function $TNHypervisorVMCastsController__outlineViewItemWillExpand_(self, _cmd, aNotification)
{
    var item = objj_msgSend(objj_msgSend(aNotification, "userInfo"), "valueForKey:", "CPObject"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        key = TNArchipelVMCastsOpenedVMCasts + objj_msgSend(item, "name");
    objj_msgSend(objj_msgSend(defaults, "objectForKey:", "TNOutlineViewsExpandedGroups"), "setObject:forKey:", "expanded", key);
}
,["void","CPNotification"]), new objj_method(sel_getUid("outlineViewItemWillCollapse:"), function $TNHypervisorVMCastsController__outlineViewItemWillCollapse_(self, _cmd, aNotification)
{
    var item = objj_msgSend(objj_msgSend(aNotification, "userInfo"), "valueForKey:", "CPObject"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        key = TNArchipelVMCastsOpenedVMCasts + objj_msgSend(item, "name");
    objj_msgSend(objj_msgSend(defaults, "objectForKey:", "TNOutlineViewsExpandedGroups"), "setObject:forKey:", "collapsed", key);
}
,["void","CPNotification"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNHypervisorVMCastsController), comment);
}p;20;TNVMCastDatasource.jt;12505;@STATIC;1.0;I;23;Foundation/Foundation.jt;12457;objj_executeFile("Foundation/Foundation.j", NO);
TNArchipelApplianceInstalled = 1;
TNArchipelApplianceInstalling = 2;
TNArchipelApplianceNotInstalled = 3;
TNArchipelApplianceInstallationError = 4;
TNArchipelApplianceStatusString = ["", "Installed", "Installing", "Not installed", "Installation error"];
{var the_class = objj_allocateClassPair(CPObject, "TNVMCastSource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_content"), new objj_ivar("_comment"), new objj_ivar("_name"), new objj_ivar("_UUID"), new objj_ivar("_URL")]);



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("content"), function $TNVMCastSource__content(self, _cmd)
{
return self._content;
}
,["CPArray"]), new objj_method(sel_getUid("setContent:"), function $TNVMCastSource__setContent_(self, _cmd, newValue)
{
self._content = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("_comment"), function $TNVMCastSource___comment(self, _cmd)
{
return self._comment;
}
,["CPString"]), new objj_method(sel_getUid("setComment:"), function $TNVMCastSource__setComment_(self, _cmd, newValue)
{
self._comment = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("name"), function $TNVMCastSource__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNVMCastSource__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("UUID"), function $TNVMCastSource__UUID(self, _cmd)
{
return self._UUID;
}
,["CPString"]), new objj_method(sel_getUid("setUUID:"), function $TNVMCastSource__setUUID_(self, _cmd, newValue)
{
self._UUID = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("URL"), function $TNVMCastSource__URL(self, _cmd)
{
return self._URL;
}
,["CPURL"]), new objj_method(sel_getUid("setURL:"), function $TNVMCastSource__setURL_(self, _cmd, newValue)
{
self._URL = newValue;
}
,["void","CPURL"]), new objj_method(sel_getUid("init"), function $TNVMCastSource__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVMCastSource").super_class }, "init"))
    {
        self._content = objj_msgSend(CPArray, "array");
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("valueForUndefinedKey:"), function $TNVMCastSource__valueForUndefinedKey_(self, _cmd, aKey)
{
    return "";
}
,["id","CPString"]), new objj_method(sel_getUid("description"), function $TNVMCastSource__description(self, _cmd)
{
    return self._name;
}
,["CPString"]), new objj_method(sel_getUid("comment"), function $TNVMCastSource__comment(self, _cmd)
{
    return self._comment.replace(/^\s*/g, "");
}
,["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("VMCastSourceWithName:UUID:URL:comment:"), function $TNVMCastSource__VMCastSourceWithName_UUID_URL_comment_(self, _cmd, aName, anUUID, anURL, aComment)
{
    var source = objj_msgSend(objj_msgSend(TNVMCastSource, "alloc"), "init");
    objj_msgSend(source, "setName:", aName);
    objj_msgSend(source, "setURL:", anURL);
    objj_msgSend(source, "setUUID:", anUUID);
    objj_msgSend(source, "setComment:", aComment);
    return source;
}
,["TNVMCastSource","CPString","CPString","CPURL","CPString"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "TNVMCast"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_comment"), new objj_ivar("_name"), new objj_ivar("_pubDate"), new objj_ivar("_size"), new objj_ivar("_UUID"), new objj_ivar("_URL"), new objj_ivar("_status")]);


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_comment"), function $TNVMCast___comment(self, _cmd)
{
return self._comment;
}
,["CPString"]), new objj_method(sel_getUid("setComment:"), function $TNVMCast__setComment_(self, _cmd, newValue)
{
self._comment = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("name"), function $TNVMCast__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNVMCast__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("pubDate"), function $TNVMCast__pubDate(self, _cmd)
{
return self._pubDate;
}
,["CPString"]), new objj_method(sel_getUid("setPubDate:"), function $TNVMCast__setPubDate_(self, _cmd, newValue)
{
self._pubDate = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("size"), function $TNVMCast__size(self, _cmd)
{
return self._size;
}
,["CPString"]), new objj_method(sel_getUid("setSize:"), function $TNVMCast__setSize_(self, _cmd, newValue)
{
self._size = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("UUID"), function $TNVMCast__UUID(self, _cmd)
{
return self._UUID;
}
,["CPString"]), new objj_method(sel_getUid("setUUID:"), function $TNVMCast__setUUID_(self, _cmd, newValue)
{
self._UUID = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("URL"), function $TNVMCast__URL(self, _cmd)
{
return self._URL;
}
,["CPURL"]), new objj_method(sel_getUid("setURL:"), function $TNVMCast__setURL_(self, _cmd, newValue)
{
self._URL = newValue;
}
,["void","CPURL"]), new objj_method(sel_getUid("status"), function $TNVMCast__status(self, _cmd)
{
return self._status;
}
,["int"]), new objj_method(sel_getUid("setStatus:"), function $TNVMCast__setStatus_(self, _cmd, newValue)
{
self._status = newValue;
}
,["void","int"]), new objj_method(sel_getUid("description"), function $TNVMCast__description(self, _cmd)
{
    return self._name;
}
,["CPString"]), new objj_method(sel_getUid("size"), function $TNVMCast__size(self, _cmd)
{
    return "" + Math.round(parseInt(self._size) / 1024 / 1024) + " Mo";
}
,["CPString"]), new objj_method(sel_getUid("comment"), function $TNVMCast__comment(self, _cmd)
{
    return self._comment.replace(/^\s*/g, "");
}
,["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("VMCastWithName:URL:comment:size:pubDate:UUID:status:"), function $TNVMCast__VMCastWithName_URL_comment_size_pubDate_UUID_status_(self, _cmd, aName, anURL, aComment, aSize, aDate, anUUID, aStatus)
{
    var vmcast = objj_msgSend(objj_msgSend(TNVMCast, "alloc"), "init");
    objj_msgSend(vmcast, "setName:", aName);
    objj_msgSend(vmcast, "setURL:", anURL);
    objj_msgSend(vmcast, "setComment:", aComment);
    objj_msgSend(vmcast, "setSize:", aSize);
    objj_msgSend(vmcast, "setUUID:", anUUID);
    objj_msgSend(vmcast, "setPubDate:", aDate);
    objj_msgSend(vmcast, "setStatus:", aStatus);
    return vmcast;
}
,["TNVMCast","CPString","CPURL","CPString","CPString","CPString","CPString","int"])]);
}
{var the_class = objj_allocateClassPair(CPObject, "TNVMCastDatasource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_filterInstalled"), new objj_ivar("_contents"), new objj_ivar("_filter")]);










objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isFilterInstalled"), function $TNVMCastDatasource__isFilterInstalled(self, _cmd)
{
return self._filterInstalled;
}
,["BOOL"]), new objj_method(sel_getUid("setFilterInstalled:"), function $TNVMCastDatasource__setFilterInstalled_(self, _cmd, newValue)
{
self._filterInstalled = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("contents"), function $TNVMCastDatasource__contents(self, _cmd)
{
return self._contents;
}
,["CPArray"]), new objj_method(sel_getUid("setContents:"), function $TNVMCastDatasource__setContents_(self, _cmd, newValue)
{
self._contents = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("filter"), function $TNVMCastDatasource__filter(self, _cmd)
{
return self._filter;
}
,["CPString"]), new objj_method(sel_getUid("setFilter:"), function $TNVMCastDatasource__setFilter_(self, _cmd, newValue)
{
self._filter = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("init"), function $TNVMCastDatasource__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVMCastDatasource").super_class }, "init"))
    {
        self._contents = objj_msgSend(CPArray, "array");
        self._filterInstalled = NO;
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("addSource:"), function $TNVMCastDatasource__addSource_(self, _cmd, aSource)
{
    objj_msgSend(self._contents, "addObject:", aSource);
}
,["void","TNVMCastSource"]), new objj_method(sel_getUid("addVMCast:toSourceAtIndex:"), function $TNVMCastDatasource__addVMCast_toSourceAtIndex_(self, _cmd, aVMCast, anIndex)
{
    var source = objj_msgSend(self, "sourceAtIndex:", anIndex);
    objj_msgSend(objj_msgSend(source, "content"), "addObject:", aVMCast);
}
,["void","TNVMCast","int"]), new objj_method(sel_getUid("sourceAtIndex:"), function $TNVMCastDatasource__sourceAtIndex_(self, _cmd, anIndex)
{
    return objj_msgSend(self._contents, "objectAtIndex:", anIndex);
}
,["TNVMCastSource","int"]), new objj_method(sel_getUid("filterOnlyInstalled:"), function $TNVMCastDatasource__filterOnlyInstalled_(self, _cmd, anArray)
{
    if (self._filterInstalled)
    {
        var array = objj_msgSend(CPArray, "array");
        for (var i = 0; i < objj_msgSend(anArray, "count"); i++)
        {
            if (objj_msgSend(objj_msgSend(anArray, "objectAtIndex:", i), "status") == TNArchipelApplianceInstalled)
                objj_msgSend(array, "addObject:", objj_msgSend(anArray, "objectAtIndex:", i));
        }
        return array;
    }
    else
        return anArray;
}
,["CPArray","CPArray"]), new objj_method(sel_getUid("filterOnlyMatching:"), function $TNVMCastDatasource__filterOnlyMatching_(self, _cmd, anArray)
{
    if (self._filter && self._filter != "")
    {
        var array = objj_msgSend(CPArray, "array");
        for (var i = 0; i < objj_msgSend(anArray, "count"); i++)
        {
            var object = objj_msgSend(anArray, "objectAtIndex:", i);
            if ((objj_msgSend(objj_msgSend(object, "name"), "uppercaseString").indexOf(objj_msgSend(self._filter, "uppercaseString")) != -1)
                || (objj_msgSend(objj_msgSend(object, "comment"), "uppercaseString").indexOf(objj_msgSend(self._filter, "uppercaseString")) != -1))
                objj_msgSend(array, "addObject:", object);
        }
        return array;
    }
    else
        return anArray;
}
,["CPArray","CPArray"]), new objj_method(sel_getUid("applyFilters:"), function $TNVMCastDatasource__applyFilters_(self, _cmd, anArray)
{
    anArray = objj_msgSend(self, "filterOnlyInstalled:", anArray);
    anArray = objj_msgSend(self, "filterOnlyMatching:", anArray);
    return anArray;
}
,["CPArray","CPArray"]), new objj_method(sel_getUid("outlineView:numberOfChildrenOfItem:"), function $TNVMCastDatasource__outlineView_numberOfChildrenOfItem_(self, _cmd, anOutlineView, item)
{
    if (!item)
    {
        return objj_msgSend(self._contents, "count");
    }
    else
    {
        return objj_msgSend(objj_msgSend(self, "applyFilters:", objj_msgSend(item, "content")), "count");
    }
}
,["int","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:isItemExpandable:"), function $TNVMCastDatasource__outlineView_isItemExpandable_(self, _cmd, anOutlineView, item)
{
    return objj_msgSend(item, "isKindOfClass:", TNVMCastSource);
}
,["BOOL","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:child:ofItem:"), function $TNVMCastDatasource__outlineView_child_ofItem_(self, _cmd, anOutlineView, index, item)
{
    if (!item)
    {
        return objj_msgSend(self._contents, "objectAtIndex:", index);
    }
    else
    {
        return objj_msgSend(objj_msgSend(self, "applyFilters:", objj_msgSend(item, "content")), "objectAtIndex:", index);
    }
}
,["id","CPOutlineView","int","id"]), new objj_method(sel_getUid("outlineView:objectValueForTableColumn:byItem:"), function $TNVMCastDatasource__outlineView_objectValueForTableColumn_byItem_(self, _cmd, anOutlineView, tableColumn, item)
{
    var identifier = objj_msgSend(tableColumn, "identifier");
    return objj_msgSend(item, "valueForKey:", identifier);
}
,["id","CPOutlineView","CPTableColumn","id"]), new objj_method(sel_getUid("tableView:sortDescriptorsDidChange:"), function $TNVMCastDatasource__tableView_sortDescriptorsDidChange_(self, _cmd, aTableView, oldDescriptors)
{
    objj_msgSend(self._contents, "sortUsingDescriptors:", objj_msgSend(aTableView, "sortDescriptors"));
    objj_msgSend(aTableView, "reloadData");
}
,["void","CPTableView","CPArray"])]);
}p;32;TNVMCastRegistrationController.jt;6024;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;17;AppKit/CPButton.jI;20;AppKit/CPTextField.jI;33;GrowlCappuccino/GrowlCappuccino.jI;35;StropheCappuccino/TNStropheStanza.jI;15;TNKit/TNAlert.jt;5812;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("GrowlCappuccino/GrowlCappuccino.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelTypeHypervisorVMCasting = "archipel:hypervisor:vmcasting",
    TNArchipelTypeHypervisorVMCastingRegister = "register",
    TNArchipelTypeHypervisorVMCastingUnregister = "unregister";
{var the_class = objj_allocateClassPair(CPObject, "TNVMCastRegistrationController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonNewVMCast"), new objj_ivar("mainPopover"), new objj_ivar("fieldNewURL"), new objj_ivar("_delegate")]);


       
       




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $TNVMCastRegistrationController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNVMCastRegistrationController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("openWindow:"), function $TNVMCastRegistrationController__openWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.fieldNewURL, "setStringValue:", "");
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonNewVMCast);
    objj_msgSend(self.mainPopover, "makeFirstResponder:", self.fieldNewURL);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNVMCastRegistrationController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close")
}
,["id","id"]), new objj_method(sel_getUid("addNewVMCast:"), function $TNVMCastRegistrationController__addNewVMCast_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self, "addNewVMCast");
}
,["id","id"]), new objj_method(sel_getUid("addNewVMCast"), function $TNVMCastRegistrationController__addNewVMCast(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set"),
        url = objj_msgSend(self.fieldNewURL, "stringValue");
    objj_msgSend(self.fieldNewURL, "setStringValue:", "");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorVMCasting});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorVMCastingRegister,
        "url": url});
    objj_msgSend(objj_msgSend(self._delegate, "entity"), "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didAddNewVMCast:"), self);
}
,["void"]), new objj_method(sel_getUid("_didAddNewVMCast:"), function $TNVMCastRegistrationController___didAddNewVMCast_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("VMcast has been registred", "VMcast has been registred"));
    else
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("removeVMCast"), function $TNVMCastRegistrationController__removeVMCast(self, _cmd)
{
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Delete VMCast", "Delete VMCast"), CPBundleLocalizedString("Are you sure you want to unregister fro this VMCast? All its appliances will be deleted.", "Are you sure you want to unregister fro this VMCast? All its appliances will be deleted."), self, [[CPBundleLocalizedString("Unregister", "Unregister"), sel_getUid("performRemoveVMCast:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "runModal");
}
,["void"]), new objj_method(sel_getUid("performRemoveVMCast:"), function $TNVMCastRegistrationController__performRemoveVMCast_(self, _cmd, someUserInfo)
{
    var mainOutlineView = objj_msgSend(self._delegate, "mainOutlineView"),
        currentVMCast = objj_msgSend(mainOutlineView, "itemAtRow:", objj_msgSend(mainOutlineView, "selectedRow")),
        uuid = objj_msgSend(currentVMCast, "UUID"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorVMCasting});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorVMCastingUnregister,
        "uuid": uuid});
    objj_msgSend(objj_msgSend(self._delegate, "entity"), "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didRemoveVMCast:"), self);
}
,["void","id"]), new objj_method(sel_getUid("_didRemoveVMCast:"), function $TNVMCastRegistrationController___didRemoveVMCast_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("VMcast has been unregistred", "VMcast has been unregistred"));
    else
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNNewVirtualMachineController), comment);
}e;