@STATIC;1.0;p;17;TNDriveDataView.jt;5970;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;20;AppKit/CPImageView.jI;20;AppKit/CPTextField.ji;29;../../Views/TNBasicDataView.jt;5819;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("../../Views/TNBasicDataView.j", YES);
var TNDriveDataViewIconQCOW2,
    TNDriveDataViewIconQCOW,
    TNDriveDataViewIconCOW,
    TNDriveDataViewIconVMDK,
    TNDriveDataViewIconRAW;
{var the_class = objj_allocateClassPair(TNBasicDataView, "TNDriveDataView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("imageDriveIcon"), new objj_ivar("fieldDriveName"), new objj_ivar("fieldGoldenDrive"), new objj_ivar("fieldPath"), new objj_ivar("fieldRealSize"), new objj_ivar("fieldVirtualSize"), new objj_ivar("labelGoldenDrive"), new objj_ivar("labelRealSize"), new objj_ivar("labelVirtualSize")]);
       
       

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setObjectValue:"), function $TNDriveDataView__setObjectValue_(self, _cmd, aDrive)
{
    switch (objj_msgSend(aDrive, "format"))
    {
        case "qcow2":
            objj_msgSend(self.imageDriveIcon, "setImage:", TNDriveDataViewIconQCOW2);
            break;
        case "qcow":
            objj_msgSend(self.imageDriveIcon, "setImage:", TNDriveDataViewIconQCOW);
            break;
        case "cow":
            objj_msgSend(self.imageDriveIcon, "setImage:", TNDriveDataViewIconCOW);
            break;
        case "vmdk":
            objj_msgSend(self.imageDriveIcon, "setImage:", TNDriveDataViewIconVMDK);
            break;
        case "raw":
            objj_msgSend(self.imageDriveIcon, "setImage:", TNDriveDataViewIconRAW);
            break;
    }
    objj_msgSend(self.fieldDriveName, "setStringValue:", objj_msgSend(aDrive, "name"));
    objj_msgSend(self.fieldVirtualSize, "setStringValue:", objj_msgSend(aDrive, "virtualSize"));
    objj_msgSend(self.fieldRealSize, "setStringValue:", objj_msgSend(aDrive, "diskSize"));
    if (objj_msgSend(aDrive, "backingFile") && objj_msgSend(aDrive, "backingFile") != "")
    {
        objj_msgSend(self.fieldGoldenDrive, "setHidden:", NO);
        objj_msgSend(self.labelGoldenDrive, "setHidden:", NO);
        objj_msgSend(self.fieldGoldenDrive, "setStringValue:", objj_msgSend(aDrive, "backingFile"));
    }
    else
    {
        objj_msgSend(self.fieldGoldenDrive, "setHidden:", YES);
        objj_msgSend(self.labelGoldenDrive, "setHidden:", YES);
    }
    objj_msgSend(self.fieldPath, "setStringValue:", objj_msgSend(aDrive, "path"));
}
,["void","id"]), new objj_method(sel_getUid("initWithCoder:"), function $TNDriveDataView__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNDriveDataView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self.imageDriveIcon = objj_msgSend(aCoder, "decodeObjectForKey:", "imageDriveIcon");
        self.fieldDriveName = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldDriveName");
        self.fieldVirtualSize = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldVirtualSize");
        self.fieldRealSize = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldRealSize");
        self.fieldGoldenDrive = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldGoldenDrive");
        self.fieldPath = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldPath");
        self.labelGoldenDrive = objj_msgSend(aCoder, "decodeObjectForKey:", "labelGoldenDrive");
        self.labelVirtualSize = objj_msgSend(aCoder, "decodeObjectForKey:", "labelVirtualSize");
        self.labelRealSize = objj_msgSend(aCoder, "decodeObjectForKey:", "labelRealSize");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNDriveDataView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNDriveDataView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.imageDriveIcon, "imageDriveIcon");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldDriveName, "fieldDriveName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldVirtualSize, "fieldVirtualSize");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldRealSize, "fieldRealSize");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldGoldenDrive, "fieldGoldenDrive");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldPath, "fieldPath");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelGoldenDrive, "labelGoldenDrive");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelVirtualSize, "labelVirtualSize");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelRealSize, "labelRealSize");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNDriveDataView__initialize(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class"));
    TNDriveDataViewIconQCOW2 = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "drive_qcow2.png"));
    TNDriveDataViewIconQCOW = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "drive_qcow.png"));
    TNDriveDataViewIconCOW = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "drive_cow.png"));
    TNDriveDataViewIconVMDK = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "drive_vmdk.png"));
    TNDriveDataViewIconRAW = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "drive_raw.png"));
}
,["void"])]);
}p;15;TNDriveObject.jt;2801;@STATIC;1.0;I;23;Foundation/Foundation.jt;2754;objj_executeFile("Foundation/Foundation.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNDrive"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_diskSize"), new objj_ivar("_format"), new objj_ivar("_name"), new objj_ivar("_path"), new objj_ivar("_virtualSize"), new objj_ivar("_backingFile")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("diskSize"), function $TNDrive__diskSize(self, _cmd)
{
return self._diskSize;
}
,["CPString"]), new objj_method(sel_getUid("setDiskSize:"), function $TNDrive__setDiskSize_(self, _cmd, newValue)
{
self._diskSize = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("format"), function $TNDrive__format(self, _cmd)
{
return self._format;
}
,["CPString"]), new objj_method(sel_getUid("setFormat:"), function $TNDrive__setFormat_(self, _cmd, newValue)
{
self._format = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("name"), function $TNDrive__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNDrive__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("path"), function $TNDrive__path(self, _cmd)
{
return self._path;
}
,["CPString"]), new objj_method(sel_getUid("setPath:"), function $TNDrive__setPath_(self, _cmd, newValue)
{
self._path = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("virtualSize"), function $TNDrive__virtualSize(self, _cmd)
{
return self._virtualSize;
}
,["CPString"]), new objj_method(sel_getUid("setVirtualSize:"), function $TNDrive__setVirtualSize_(self, _cmd, newValue)
{
self._virtualSize = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("backingFile"), function $TNDrive__backingFile(self, _cmd)
{
return self._backingFile;
}
,["CPString"]), new objj_method(sel_getUid("setBackingFile:"), function $TNDrive__setBackingFile_(self, _cmd, newValue)
{
self._backingFile = newValue;
}
,["void","CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("mediaWithPath:name:format:virtualSize:diskSize:backingFile:"), function $TNDrive__mediaWithPath_name_format_virtualSize_diskSize_backingFile_(self, _cmd, aPath, aName, aFormat, vSize, dSize, aBackingFile)
{
    var media = objj_msgSend(objj_msgSend(TNDrive, "alloc"), "init");
    objj_msgSend(media, "setPath:", aPath);
    objj_msgSend(media, "setName:", aName);
    objj_msgSend(media, "setFormat:", aFormat);
    objj_msgSend(media, "setVirtualSize:", vSize);
    objj_msgSend(media, "setDiskSize:", dSize);
    objj_msgSend(media, "setBackingFile:", aBackingFile);
    return media;
}
,["TNDrive","CPString","CPString","CPString","CPString","CPString","CPString"])]);
}p;23;TNEditDriveController.jt;8518;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;22;AppKit/CPPopUpButton.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;17;AppKit/CPWindow.jI;31;GrowlCappuccino/TNGrowlCenter.jI;35;StropheCappuccino/TNStropheStanza.jI;15;TNKit/TNAlert.ji;15;TNDriveObject.jt;8234;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("GrowlCappuccino/TNGrowlCenter.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("TNDriveObject.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global TNArchipelDrivesFormats
var TNArchipelTypeVirtualMachineDisk = "archipel:vm:disk",
    TNArchipelTypeVirtualMachineDiskConvert = "convert",
    TNArchipelTypeVirtualMachineDiskRename = "rename";
{var the_class = objj_allocateClassPair(CPObject, "TNEditDriveController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonConvert"), new objj_ivar("buttonOK"), new objj_ivar("mainPopover"), new objj_ivar("buttonEditDiskFormat"), new objj_ivar("fieldEditDiskName"), new objj_ivar("_delegate"), new objj_ivar("_currentEditedDisk")]);
       
       


       
       


       
       



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $TNEditDriveController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNEditDriveController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("currentEditedDisk"), function $TNEditDriveController__currentEditedDisk(self, _cmd)
{
return self._currentEditedDisk;
}
,["CPDictionary"]), new objj_method(sel_getUid("setCurrentEditedDisk:"), function $TNEditDriveController__setCurrentEditedDisk_(self, _cmd, newValue)
{
self._currentEditedDisk = newValue;
}
,["void","CPDictionary"]), new objj_method(sel_getUid("awakeFromCib"), function $TNEditDriveController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.buttonEditDiskFormat, "removeAllItems");
    objj_msgSend(self.buttonEditDiskFormat, "addItemsWithTitles:", TNArchipelDrivesFormats);
}
,["void"]), new objj_method(sel_getUid("openWindow:"), function $TNEditDriveController__openWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
    if (!self._currentEditedDisk)
    {
        CPLog.error("Cannot open edit panel without having a drive to edit");
        return;
    }
    var backingFile = objj_msgSend(self._currentEditedDisk, "backingFile");
    if (backingFile && backingFile != "")
    {
        objj_msgSend(self.buttonEditDiskFormat, "setEnabled:", NO);
        objj_msgSend(self.buttonConvert, "setEnabled:", NO);
    }
    else
    {
        objj_msgSend(self.buttonEditDiskFormat, "setEnabled:", YES);
        objj_msgSend(self.buttonConvert, "setEnabled:", YES);
    }
    objj_msgSend(self.buttonEditDiskFormat, "selectItemWithTitle:", objj_msgSend(self._currentEditedDisk, "format"));
    objj_msgSend(self.fieldEditDiskName, "setStringValue:", objj_msgSend(self._currentEditedDisk, "name"));
    if (objj_msgSend(aSender, "isKindOfClass:", CPTableView))
    {
        var rect = objj_msgSend(aSender, "rectOfRow:", objj_msgSend(aSender, "selectedRow"));
        rect.origin.y += rect.size.height / 2;
        rect.origin.x += rect.size.width / 2;
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", CGRectMake(rect.origin.x, rect.origin.y, 10, 10), aSender, nil);
    }
    else
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.mainPopover, "makeFirstResponder:", self.fieldEditDiskName);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonOK);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNEditDriveController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("convert:"), function $TNEditDriveController__convert_(self, _cmd, aSender)
{
    objj_msgSend(self, "convert");
}
,["id","id"]), new objj_method(sel_getUid("rename:"), function $TNEditDriveController__rename_(self, _cmd, aSender)
{
    objj_msgSend(self, "rename");
}
,["id","id"]), new objj_method(sel_getUid("convert"), function $TNEditDriveController__convert(self, _cmd)
{
    if (self._currentEditedDisk && objj_msgSend(self._currentEditedDisk, "format") == objj_msgSend(self.buttonEditDiskFormat, "title"))
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You must choose a different format", "You must choose a different format"));
        return;
    }
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineDisk});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineDiskConvert,
        "path": objj_msgSend(self._currentEditedDisk, "path"),
        "format": objj_msgSend(self.buttonEditDiskFormat, "title")});
    objj_msgSend(objj_msgSend(self._delegate, "entity"), "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didConvertDisk:"), self);
    objj_msgSend(self.mainPopover, "close");
}
,["void"]), new objj_method(sel_getUid("_didConvertDisk:"), function $TNEditDriveController___didConvertDisk_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("Disk has been converted", "Disk has been converted"));
    else if (objj_msgSend(aStanza, "type") == "error")
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("rename"), function $TNEditDriveController__rename(self, _cmd)
{
    if (objj_msgSend(self._delegate, "isEntityOnline"))
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("You can't edit disks of a running virtual machine", "You can't edit disks of a running virtual machine"), TNGrowlIconError);
        return;
    }
    if (objj_msgSend(self.fieldEditDiskName, "stringValue") != objj_msgSend(self._currentEditedDisk, "name"))
    {
        objj_msgSend(self._currentEditedDisk, "setName:", objj_msgSend(self.fieldEditDiskName, "stringValue"));
        var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineDisk});
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
            "xmlns": TNArchipelTypeVirtualMachineDisk,
            "action": TNArchipelTypeVirtualMachineDiskRename,
            "path": objj_msgSend(self._currentEditedDisk, "path"),
            "newname": objj_msgSend(self._currentEditedDisk, "name")});
        objj_msgSend(objj_msgSend(self._delegate, "entity"), "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didRename:"), self);
    }
   objj_msgSend(self.mainPopover, "close");
}
,["void"]), new objj_method(sel_getUid("_didRename:"), function $TNEditDriveController___didRename_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("Disk has been renamed", "Disk has been renamed"));
    else if (objj_msgSend(aStanza, "type") == "error")
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNEditDriveController), comment);
}p;22;TNNewDriveController.jt;9910;@STATIC;1.0;I;23;Foundation/Foundation.jI;19;AppKit/CPCheckBox.jI;22;AppKit/CPPopUpButton.jI;20;AppKit/CPTextField.jI;17;AppKit/CPWindow.jI;15;TNKit/TNAlert.jI;35;StropheCappuccino/TNStropheStanza.jt;9705;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPCheckBox.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global TNArchipelDrivesFormats
var TNArchipelTypeVirtualMachineDisk = "archipel:vm:disk",
    TNArchipelTypeVirtualMachineDiskCreate = "create",
    TNArchipelTypeVirtualMachineDiskGoldenList = "getgolden";
{var the_class = objj_allocateClassPair(CPObject, "TNNewDriveController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonOK"), new objj_ivar("checkBoxUseMasterDrive"), new objj_ivar("checkBoxUseQCOW2Preallocation"), new objj_ivar("mainPopover"), new objj_ivar("buttonGoldenDrive"), new objj_ivar("buttonNewDiskFormat"), new objj_ivar("buttonNewDiskSizeUnit"), new objj_ivar("fieldNewDiskName"), new objj_ivar("fieldNewDiskSize"), new objj_ivar("_delegate")]);
       
       


       
       



       
       



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $TNNewDriveController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNNewDriveController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("awakeFromCib"), function $TNNewDriveController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.buttonNewDiskFormat, "removeAllItems");
    objj_msgSend(self.buttonNewDiskFormat, "addItemsWithTitles:", TNArchipelDrivesFormats);
    objj_msgSend(self.buttonNewDiskSizeUnit, "removeAllItems");
    objj_msgSend(self.buttonNewDiskSizeUnit, "addItemsWithTitles:", [CPBundleLocalizedString("GB", "GB"), CPBundleLocalizedString("MB", "MB")]);
    objj_msgSend(self.fieldNewDiskName, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "grayColor"), "text-color", CPTextFieldStatePlaceholder);
    objj_msgSend(self.fieldNewDiskSize, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "grayColor"), "text-color", CPTextFieldStatePlaceholder);
}
,["void"]), new objj_method(sel_getUid("openWindow:"), function $TNNewDriveController__openWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.buttonGoldenDrive, "removeAllItems");
    objj_msgSend(self, "getGoldenList");
    objj_msgSend(self.fieldNewDiskName, "setStringValue:", "");
    objj_msgSend(self.fieldNewDiskSize, "setStringValue:", "");
    objj_msgSend(self.buttonNewDiskFormat, "selectItemWithTitle:", "qcow2");
    objj_msgSend(self, "diskCreationFormatChanged:", nil);
    objj_msgSend(self.buttonGoldenDrive, "setEnabled:", NO);
    objj_msgSend(self.checkBoxUseMasterDrive, "setEnabled:", YES);
    objj_msgSend(self.checkBoxUseQCOW2Preallocation, "setEnabled:", YES);
    objj_msgSend(self.checkBoxUseMasterDrive, "setState:", CPOffState);
    objj_msgSend(self.checkBoxUseQCOW2Preallocation, "setState:", CPOffState);
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonOK);
    objj_msgSend(self.mainPopover, "makeFirstResponder:", self.fieldNewDiskName);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNNewDriveController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("diskCreationFormatChanged:"), function $TNNewDriveController__diskCreationFormatChanged_(self, _cmd, aSender)
{
    if (objj_msgSend(self.buttonNewDiskFormat, "title") == "qcow2")
    {
        objj_msgSend(self.checkBoxUseQCOW2Preallocation, "setHidden:", NO);
        objj_msgSend(self.checkBoxUseMasterDrive, "setHidden:", NO);
        objj_msgSend(self.buttonGoldenDrive, "setHidden:", NO);
    }
    else
    {
        objj_msgSend(self.checkBoxUseQCOW2Preallocation, "setHidden:", YES);
        objj_msgSend(self.checkBoxUseMasterDrive, "setHidden:", YES);
        objj_msgSend(self.buttonGoldenDrive, "setHidden:", YES);
    }
}
,["id","id"]), new objj_method(sel_getUid("didCheckBoxesChange:"), function $TNNewDriveController__didCheckBoxesChange_(self, _cmd, aSender)
{
    if (objj_msgSend(self.checkBoxUseQCOW2Preallocation, "state") == CPOnState)
    {
        objj_msgSend(self.checkBoxUseMasterDrive, "setState:", CPOffState);
        objj_msgSend(self.checkBoxUseMasterDrive, "setEnabled:", NO);
        objj_msgSend(self.buttonGoldenDrive, "setEnabled:", NO);
        return;
    }
    else
    {
        objj_msgSend(self.checkBoxUseMasterDrive, "setEnabled:", YES);
        objj_msgSend(self.buttonGoldenDrive, "setEnabled:", NO);
    }
    if (objj_msgSend(self.checkBoxUseMasterDrive, "state") == CPOnState)
    {
        objj_msgSend(self.checkBoxUseQCOW2Preallocation, "setState:", CPOffState);
        objj_msgSend(self.checkBoxUseQCOW2Preallocation, "setEnabled:", NO);
        objj_msgSend(self.buttonGoldenDrive, "setEnabled:", YES);
        return;
    }
    else
    {
        objj_msgSend(self.checkBoxUseQCOW2Preallocation, "setEnabled:", YES);
        objj_msgSend(self.buttonGoldenDrive, "setEnabled:", NO);
    }
}
,["id","id"]), new objj_method(sel_getUid("createDisk:"), function $TNNewDriveController__createDisk_(self, _cmd, aSender)
{
    objj_msgSend(self, "createDisk");
}
,["id","id"]), new objj_method(sel_getUid("getGoldenList"), function $TNNewDriveController__getGoldenList(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineDisk});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "xmlns": TNArchipelTypeVirtualMachineDisk,
        "action": TNArchipelTypeVirtualMachineDiskGoldenList});
    objj_msgSend(objj_msgSend(self._delegate, "entity"), "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didGetGoldenList:"), self);
}
,["void"]), new objj_method(sel_getUid("_didGetGoldenList:"), function $TNNewDriveController___didGetGoldenList_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "error")
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
        return NO;
    }
    var goldens = objj_msgSend(aStanza, "childrenWithName:", "golden");
    objj_msgSend(self.buttonGoldenDrive, "removeAllItems");
    for (var i = 0; i < objj_msgSend(goldens, "count"); i++)
        objj_msgSend(self.buttonGoldenDrive, "addItemWithTitle:", objj_msgSend(objj_msgSend(goldens, "objectAtIndex:", i), "valueForAttribute:", "name"));
    objj_msgSend(self.buttonGoldenDrive, "selectItemAtIndex:", 0);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("createDisk"), function $TNNewDriveController__createDisk(self, _cmd)
{
    var dUnit,
        dName = objj_msgSend(self.fieldNewDiskName, "stringValue"),
        dSize = objj_msgSend(self.fieldNewDiskSize, "stringValue"),
        format = objj_msgSend(self.buttonNewDiskFormat, "title"),
        prealloc = ((format == "qcow2") && (objj_msgSend(self.checkBoxUseQCOW2Preallocation, "state") == CPOnState)),
        golden = ((format == "qcow2") && (objj_msgSend(self.checkBoxUseMasterDrive, "state") == CPOnState));
    if (dSize == "" || isNaN(dSize))
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You must enter a numeric value", "You must enter a numeric value"), CPCriticalAlertStyle);
        return;
    }
    if (dName == "")
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You must enter a valid name", "You must enter a valid name"), CPCriticalAlertStyle);
        return;
    }
    switch (objj_msgSend(self.buttonNewDiskSizeUnit, "title"))
    {
        case CPBundleLocalizedString("GB", "GB"):
            dUnit = "G";
            break;
        case CPBundleLocalizedString("MB", "MB"):
            dUnit = "M";
            break;
    }
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set"),
        params = {"action": TNArchipelTypeVirtualMachineDiskCreate, "name": dName, "size": dSize, "unit": dUnit, "format": format};
    if (prealloc)
        params.preallocation = "metadata";
    if (golden)
        params.golden = objj_msgSend(self.buttonGoldenDrive, "title");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineDisk});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", params);
    objj_msgSend(objj_msgSend(self._delegate, "entity"), "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didCreateDisk:"), self);
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self.fieldNewDiskName, "setStringValue:", "");
    objj_msgSend(self.fieldNewDiskSize, "setStringValue:", "");
}
,["void"]), new objj_method(sel_getUid("_didCreateDisk:"), function $TNNewDriveController___didCreateDisk_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "error")
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNNewDriveController), comment);
}p;34;TNVirtualMachineDrivesController.jt;18695;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;15;TNKit/TNAlert.jI;29;TNKit/TNTableViewDataSource.ji;22;../../Model/TNModule.ji;22;TNNewDriveController.ji;23;TNEditDriveController.ji;17;TNDriveDataView.ji;15;TNDriveObject.jt;18325;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("TNNewDriveController.j", YES);
objj_executeFile("TNEditDriveController.j", YES);
objj_executeFile("TNDriveDataView.j", YES);
objj_executeFile("TNDriveObject.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelTypeVirtualMachineDisk = "archipel:vm:disk",
    TNArchipelTypeVirtualMachineDiskCreate = "create",
    TNArchipelTypeVirtualMachineDiskDelete = "delete",
    TNArchipelTypeVirtualMachineDiskGet = "get",
    TNArchipelPushNotificationDisk = "archipel:push:disk",
    TNArchipelPushNotificationAppliance = "archipel:push:vmcasting",
    TNArchipelPushNotificationDiskCreated = "created";
TNArchipelDrivesFormats = ["qcow2", "qcow", "cow", "raw", "vmdk"];
{var the_class = objj_allocateClassPair(TNModule, "TNVirtualMachineDrivesController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonBarControl"), new objj_ivar("fieldFilter"), new objj_ivar("viewTableContainer"), new objj_ivar("editDriveController"), new objj_ivar("newDriveController"), new objj_ivar("dataViewDrivePrototype"), new objj_ivar("tableMedias"), new objj_ivar("_isEntityOnline"), new objj_ivar("_editButton"), new objj_ivar("_minusButton"), new objj_ivar("_plusButton"), new objj_ivar("_registredDiskListeningId"), new objj_ivar("_mediasDatasource")]);
       
       







       
       


       
       

       
       



       
       





       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isEntityOnline"), function $TNVirtualMachineDrivesController__isEntityOnline(self, _cmd)
{
return self._isEntityOnline;
}
,["BOOL"]), new objj_method(sel_getUid("_setIsEntityOnline:"), function $TNVirtualMachineDrivesController___setIsEntityOnline_(self, _cmd, newValue)
{
self._isEntityOnline = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("awakeFromCib"), function $TNVirtualMachineDrivesController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.viewTableContainer, "setBorderedWithHexColor:", "#C0C7D2");
    var bundle = objj_msgSend(CPBundle, "mainBundle");
    self._mediasDatasource = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self.tableMedias, "setTarget:", self);
    objj_msgSend(self.tableMedias, "setDoubleAction:", sel_getUid("openEditWindow:"));
    objj_msgSend(self.tableMedias, "setDelegate:", self);
    objj_msgSend(self.tableMedias, "setBackgroundColor:", TNArchipelDefaultColorsTableView);
    objj_msgSend(objj_msgSend(self.tableMedias, "tableColumnWithIdentifier:", "self"), "setDataView:", objj_msgSend(self.dataViewDrivePrototype, "duplicate"));
    objj_msgSend(self._mediasDatasource, "setSearchableKeyPaths:", ["name", "path", "format"]);
    objj_msgSend(self._mediasDatasource, "setTable:", self.tableMedias);
    objj_msgSend(self.tableMedias, "setDataSource:", self._mediasDatasource);
    objj_msgSend(self.fieldFilter, "setTarget:", self._mediasDatasource);
    objj_msgSend(self.fieldFilter, "setAction:", sel_getUid("filterObjects:"));
    self._plusButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._plusButton, "setTarget:", self);
    objj_msgSend(self._plusButton, "setAction:", sel_getUid("openNewDiskWindow:"));
    objj_msgSend(self._plusButton, "setToolTip:", CPBundleLocalizedString("Create a new disk", "Create a new disk"));
    self._minusButton = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._minusButton, "setTarget:", self);
    objj_msgSend(self._minusButton, "setAction:", sel_getUid("removeDisk:"));
    objj_msgSend(self._minusButton, "setEnabled:", NO);
    objj_msgSend(self._minusButton, "setToolTip:", CPBundleLocalizedString("Delete selected disks", "Delete selected disks"));
    self._editButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._editButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/edit.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._editButton, "setTarget:", self);
    objj_msgSend(self._editButton, "setAction:", sel_getUid("openEditWindow:"));
    objj_msgSend(self._editButton, "setEnabled:", NO);
    objj_msgSend(self._editButton, "setToolTip:", CPBundleLocalizedString("Edit selected disk", "Edit selected disk"))
    objj_msgSend(self.buttonBarControl, "setButtons:", [self._plusButton, self._minusButton, self._editButton]);
    objj_msgSend(self.newDriveController, "setDelegate:", self);
    objj_msgSend(self.editDriveController, "setDelegate:", self);
}
,["void"]), new objj_method(sel_getUid("willLoad"), function $TNVirtualMachineDrivesController__willLoad(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineDrivesController").super_class }, "willLoad"))
        return NO;
    self._registredDiskListeningId = nil;
    var params = objj_msgSend(CPDictionary, "dictionary");
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceivePush:"), TNArchipelPushNotificationDisk)
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceivePush:"), TNArchipelPushNotificationAppliance)
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didUpdatePresence:"), TNStropheContactPresenceUpdatedNotification, self._entity);
    objj_msgSend(self.tableMedias, "setDelegate:", nil);
    objj_msgSend(self.tableMedias, "setDelegate:", self);
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willShow"), function $TNVirtualMachineDrivesController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineDrivesController").super_class }, "willShow"))
        return NO;
    objj_msgSend(self, "getDisksInfo");
    objj_msgSend(self, "checkIfRunning");
    objj_msgSend(self, "getDisksInfo");
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willHide"), function $TNVirtualMachineDrivesController__willHide(self, _cmd)
{
    objj_msgSend(self.editDriveController, "closeWindow:", nil);
    objj_msgSend(self.newDriveController, "closeWindow:", nil);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineDrivesController").super_class }, "willHide");
}
,["void"]), new objj_method(sel_getUid("menuReady"), function $TNVirtualMachineDrivesController__menuReady(self, _cmd)
{
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Create a drive", "Create a drive"), sel_getUid("openNewDiskWindow:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Edit selected drive", "Edit selected drive"), sel_getUid("openEditWindow:"), ""), "setTarget:", self);
    objj_msgSend(self._menu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Delete selected drive", "Delete selected drive"), sel_getUid("removeDisk:"), ""), "setTarget:", self);
}
,["void"]), new objj_method(sel_getUid("permissionsChanged"), function $TNVirtualMachineDrivesController__permissionsChanged(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineDrivesController").super_class }, "permissionsChanged");
    objj_msgSend(self, "tableViewSelectionDidChange:", nil);
}
,["void"]), new objj_method(sel_getUid("setUIAccordingToPermissions"), function $TNVirtualMachineDrivesController__setUIAccordingToPermissions(self, _cmd)
{
    if (!objj_msgSend(self, "currentEntityHasPermission:", "drives_create"))
        objj_msgSend(self.newDriveController, "closeWindow:", nil);
    if (!objj_msgSend(self, "currentEntityHasPermissions:", ["drives_convert", "drives_rename"]))
        objj_msgSend(self.editDriveController, "closeWindow:", nil);
}
,["void"]), new objj_method(sel_getUid("flushUI"), function $TNVirtualMachineDrivesController__flushUI(self, _cmd)
{
    objj_msgSend(self._mediasDatasource, "removeAllObjects");
    objj_msgSend(self.tableMedias, "reloadData");
}
,["void"]), new objj_method(sel_getUid("_didUpdatePresence:"), function $TNVirtualMachineDrivesController___didUpdatePresence_(self, _cmd, aNotification)
{
    if (objj_msgSend(aNotification, "object") == self._entity)
    {
        objj_msgSend(self, "checkIfRunning");
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didReceivePush:"), function $TNVirtualMachineDrivesController___didReceivePush_(self, _cmd, somePushInfo)
{
    var sender = objj_msgSend(somePushInfo, "objectForKey:", "owner"),
        type = objj_msgSend(somePushInfo, "objectForKey:", "type"),
        change = objj_msgSend(somePushInfo, "objectForKey:", "change"),
        date = objj_msgSend(somePushInfo, "objectForKey:", "date");
    if (type == TNArchipelPushNotificationDisk)
    {
        if (change == "created")
            objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Disk has been created", "Disk has been created"));
        else if (change == "deleted")
            objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Disk has been removed", "Disk has been removed"));
    }
    objj_msgSend(self, "getDisksInfo");
    return YES;
}
,["BOOL","CPDictionary"]), new objj_method(sel_getUid("checkIfRunning"), function $TNVirtualMachineDrivesController__checkIfRunning(self, _cmd)
{
    var XMPPShow = objj_msgSend(self._entity, "XMPPShow");
    self._isEntityOnline = ((XMPPShow == TNStropheContactStatusOnline) || (XMPPShow == TNStropheContactStatusAway));
    if (XMPPShow == TNStropheContactStatusBusy)
        objj_msgSend(self, "showMaskView:", NO);
    else
        objj_msgSend(self, "showMaskView:", YES);
}
,["void"]), new objj_method(sel_getUid("openNewDiskWindow:"), function $TNVirtualMachineDrivesController__openNewDiskWindow_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    objj_msgSend(self.newDriveController, "openWindow:", self._plusButton);
}
,["id","id"]), new objj_method(sel_getUid("openEditWindow:"), function $TNVirtualMachineDrivesController__openEditWindow_(self, _cmd, aSender)
{
    if (!objj_msgSend(self, "currentEntityHasPermissions:", ["drives_convert", "drives_rename"]))
        return;
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (self._isEntityOnline)
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("You can't edit disks of a running virtual machine", "You can't edit disks of a running virtual machine"), TNGrowlIconError);
    }
    else
    {
        if (objj_msgSend(self.tableMedias, "numberOfSelectedRows") <= 0)
             return;
        if (objj_msgSend(self.tableMedias, "numberOfSelectedRows") > 1)
        {
            objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("You can't edit multiple disk", "You can't edit multiple disk"), TNGrowlIconError);
            return;
        }
        var selectedIndex = objj_msgSend(objj_msgSend(self.tableMedias, "selectedRowIndexes"), "firstIndex"),
            diskObject = objj_msgSend(self._mediasDatasource, "objectAtIndex:", selectedIndex);
        objj_msgSend(self.editDriveController, "setCurrentEditedDisk:", diskObject);
        if (objj_msgSend(aSender, "isKindOfClass:", CPMenuItem))
            aSender = self._editButton;
        objj_msgSend(self.editDriveController, "openWindow:", aSender);
    }
}
,["id","id"]), new objj_method(sel_getUid("removeDisk:"), function $TNVirtualMachineDrivesController__removeDisk_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    objj_msgSend(self, "removeDisk");
}
,["id","id"]), new objj_method(sel_getUid("getDisksInfo"), function $TNVirtualMachineDrivesController__getDisksInfo(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineDisk});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineDiskGet});
    objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveDisksInfo:"), self);
}
,["void"]), new objj_method(sel_getUid("_didReceiveDisksInfo:"), function $TNVirtualMachineDrivesController___didReceiveDisksInfo_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(self._mediasDatasource, "removeAllObjects");
        var disks = objj_msgSend(aStanza, "childrenWithName:", "disk");
        for (var i = 0; i < objj_msgSend(disks, "count"); i++)
        {
            var disk = objj_msgSend(disks, "objectAtIndex:", i),
                vSize = objj_msgSend(CPString, "formatByteSize:", objj_msgSend(disk, "valueForAttribute:", "virtualSize")),
                dSize = objj_msgSend(CPString, "formatByteSize:", objj_msgSend(disk, "valueForAttribute:", "diskSize")),
                path = objj_msgSend(disk, "valueForAttribute:", "path"),
                name = objj_msgSend(disk, "valueForAttribute:", "name"),
                format = objj_msgSend(disk, "valueForAttribute:", "format"),
                backingFile = objj_msgSend(disk, "valueForAttribute:", "backingFile"),
                drive = objj_msgSend(TNDrive, "mediaWithPath:name:format:virtualSize:diskSize:backingFile:", path, name, format, vSize, dSize, backingFile);
            objj_msgSend(self._mediasDatasource, "addObject:", drive);
        }
        objj_msgSend(self.tableMedias, "reloadData");
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusReady);
    }
    else
    {
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusError);
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("removeDisk"), function $TNVirtualMachineDrivesController__removeDisk(self, _cmd)
{
    if (objj_msgSend(self.tableMedias, "numberOfRows") && (objj_msgSend(self.tableMedias, "numberOfSelectedRows") <= 0))
    {
         objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You must select a media", "You must select a media"));
         return;
    }
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Delete to drive", "Delete to drive"), CPBundleLocalizedString("Are you sure you want to destroy this drive ? this is not reversible.", "Are you sure you want to destroy this drive ? this is not reversible."), self, [[CPBundleLocalizedString("Delete", "Delete"), sel_getUid("performRemoveDisk:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "runModal");
}
,["void"]), new objj_method(sel_getUid("performRemoveDisk:"), function $TNVirtualMachineDrivesController__performRemoveDisk_(self, _cmd, someUserInfo)
{
    var selectedIndexes = objj_msgSend(self.tableMedias, "selectedRowIndexes"),
        objects = objj_msgSend(self._mediasDatasource, "objectsAtIndexes:", selectedIndexes);
    for (var i = 0; i < objj_msgSend(objects, "count"); i++)
    {
        var dName = objj_msgSend(objects, "objectAtIndex:", i),
            stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineDisk});
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
            "xmlns": TNArchipelTypeVirtualMachineDisk,
            "action": TNArchipelTypeVirtualMachineDiskDelete,
            "name": objj_msgSend(dName, "path"),
            "undefine": "yes"});
        objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didRemoveDisk:"), self);
    }
}
,["void","id"]), new objj_method(sel_getUid("_didRemoveDisk:"), function $TNVirtualMachineDrivesController___didRemoveDisk_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "error")
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("tableViewSelectionDidChange:"), function $TNVirtualMachineDrivesController__tableViewSelectionDidChange_(self, _cmd, aTableView)
{
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._plusButton, "drives_create");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._minusButton, "drives_delete", (objj_msgSend(self.tableMedias, "numberOfSelectedRows") > 0));
    objj_msgSend(self, "setControl:enabledAccordingToPermissions:specialCondition:", self._editButton, ["drives_convert", "drives_rename"], (objj_msgSend(self.tableMedias, "numberOfSelectedRows") > 0));
}
,["void","CPTableView"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNVirtualMachineDrivesController), comment);
}e;