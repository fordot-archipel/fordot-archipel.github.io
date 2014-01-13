@STATIC;1.0;p;29;TNCharacterDeviceController.jt;12223;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;22;AppKit/CPPopUpButton.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;20;AppKit/CPTableView.ji;32;Model/TNLibvirtDeviceCharacter.jt;12019;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("Model/TNLibvirtDeviceCharacter.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
{var the_class = objj_allocateClassPair(CPObject, "TNCharacterDeviceController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonKind"), new objj_ivar("buttonProtocolType"), new objj_ivar("buttonSourceMode"), new objj_ivar("buttonTargetType"), new objj_ivar("buttonType"), new objj_ivar("buttonOK"), new objj_ivar("mainPopover"), new objj_ivar("fieldSourceHost"), new objj_ivar("fieldSourcePath"), new objj_ivar("fieldSourceService"), new objj_ivar("fieldTargetAddress"), new objj_ivar("fieldTargetName"), new objj_ivar("fieldTargetPort"), new objj_ivar("_table"), new objj_ivar("_delegate"), new objj_ivar("_characterDevice")]);
       
       

       
       






objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("table"), function $TNCharacterDeviceController__table(self, _cmd)
{
return self._table;
}
,["CPTableView"]), new objj_method(sel_getUid("setTable:"), function $TNCharacterDeviceController__setTable_(self, _cmd, newValue)
{
self._table = newValue;
}
,["void","CPTableView"]), new objj_method(sel_getUid("delegate"), function $TNCharacterDeviceController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNCharacterDeviceController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("characterDevice"), function $TNCharacterDeviceController__characterDevice(self, _cmd)
{
return self._characterDevice;
}
,["TNLibvirtDeviceCharacter"]), new objj_method(sel_getUid("setCharacterDevice:"), function $TNCharacterDeviceController__setCharacterDevice_(self, _cmd, newValue)
{
self._characterDevice = newValue;
}
,["void","TNLibvirtDeviceCharacter"]), new objj_method(sel_getUid("awakeFromCib"), function $TNCharacterDeviceController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.buttonKind, "removeAllItems");
    objj_msgSend(self.buttonKind, "addItemsWithTitles:", TNLibvirtDeviceCharacterKinds);
    objj_msgSend(self.buttonType, "removeAllItems");
    objj_msgSend(self.buttonType, "addItemsWithTitles:", TNLibvirtDeviceCharacterTypes);
    objj_msgSend(self.buttonSourceMode, "removeAllItems");
    objj_msgSend(self.buttonSourceMode, "addItemsWithTitles:", TNLibvirtDeviceCharacterSourceModes);
    objj_msgSend(self.buttonTargetType, "removeAllItems");
    objj_msgSend(self.buttonTargetType, "addItemsWithTitles:", TNLibvirtDeviceConsoleTargetTypes);
    objj_msgSend(self.buttonProtocolType, "removeAllItems");
    objj_msgSend(self.buttonProtocolType, "addItemsWithTitles:", TNLibvirtDeviceCharacterProtocolTypes);
}
,["void"]), new objj_method(sel_getUid("update"), function $TNCharacterDeviceController__update(self, _cmd)
{
    objj_msgSend(self.buttonKind, "selectItemWithTitle:", objj_msgSend(self._characterDevice, "kind"));
    objj_msgSend(self, "didDeviceKindChange:", nil);
    objj_msgSend(self.buttonSourceMode, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._characterDevice, "source"), "mode") || TNLibvirtDeviceCharacterSourceModeNone);
    objj_msgSend(self.buttonTargetType, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._characterDevice, "target"), "type") || TNLibvirtDeviceConsoleTargetTypeNone);
    objj_msgSend(self.buttonProtocolType, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._characterDevice, "protocol"), "type") || TNLibvirtDeviceCharacterProtocolTypeRAW);
    objj_msgSend(self.fieldSourceHost, "setStringValue:", objj_msgSend(objj_msgSend(self._characterDevice, "source"), "host") || "");
    objj_msgSend(self.fieldSourcePath, "setStringValue:", objj_msgSend(objj_msgSend(self._characterDevice, "source"), "path") || "");
    objj_msgSend(self.fieldSourceService, "setStringValue:", objj_msgSend(objj_msgSend(self._characterDevice, "source"), "service") || "");
    objj_msgSend(self.fieldTargetAddress, "setStringValue:", objj_msgSend(objj_msgSend(self._characterDevice, "target"), "address") || "");
    objj_msgSend(self.fieldTargetName, "setStringValue:", objj_msgSend(objj_msgSend(self._characterDevice, "target"), "name") || "");
    objj_msgSend(self.fieldTargetPort, "setStringValue:", objj_msgSend(objj_msgSend(self._characterDevice, "target"), "port") || "");
}
,["void"]), new objj_method(sel_getUid("save:"), function $TNCharacterDeviceController__save_(self, _cmd, aSender)
{
    objj_msgSend(self._characterDevice, "setKind:", objj_msgSend(self.buttonKind, "title"));
    objj_msgSend(self._characterDevice, "setType:", objj_msgSend(self.buttonType, "title"));
    if (!objj_msgSend(self._characterDevice, "source"))
        objj_msgSend(self._characterDevice, "setSource:", objj_msgSend(objj_msgSend(TNLibvirtDeviceCharacterSource, "alloc"), "init"));
    objj_msgSend(objj_msgSend(self._characterDevice, "source"), "setMode:", objj_msgSend(self.buttonSourceMode, "title"));
    objj_msgSend(objj_msgSend(self._characterDevice, "source"), "setHost:", (objj_msgSend(self.fieldSourceHost, "stringValue") != "") ? objj_msgSend(self.fieldSourceHost, "stringValue") : nil);
    objj_msgSend(objj_msgSend(self._characterDevice, "source"), "setService:", (objj_msgSend(self.fieldSourceService, "stringValue") != "") ? objj_msgSend(self.fieldSourceService, "stringValue") : nil);
    objj_msgSend(objj_msgSend(self._characterDevice, "source"), "setPath:", (objj_msgSend(self.fieldSourcePath, "stringValue") != "") ? objj_msgSend(self.fieldSourcePath, "stringValue") : nil);
    if (!objj_msgSend(self._characterDevice, "target"))
        objj_msgSend(self._characterDevice, "setTarget:", objj_msgSend(objj_msgSend(TNLibvirtDeviceCharacterTarget, "alloc"), "init"));
    objj_msgSend(objj_msgSend(self._characterDevice, "target"), "setType:", objj_msgSend(self.buttonTargetType, "title"));
    objj_msgSend(objj_msgSend(self._characterDevice, "target"), "setAddress:", (objj_msgSend(self.fieldTargetAddress, "stringValue") != "") ? objj_msgSend(self.fieldTargetAddress, "stringValue") : nil);
    objj_msgSend(objj_msgSend(self._characterDevice, "target"), "setPort:", (objj_msgSend(self.fieldTargetPort, "stringValue") != "") ? objj_msgSend(self.fieldTargetPort, "stringValue") : nil);
    objj_msgSend(objj_msgSend(self._characterDevice, "target"), "setName:", (objj_msgSend(self.fieldTargetName, "stringValue") != "") ? objj_msgSend(self.fieldTargetName, "stringValue") : nil);
    if (!objj_msgSend(self._characterDevice, "protocol"))
        objj_msgSend(self._characterDevice, "setProtocol:", objj_msgSend(objj_msgSend(TNLibvirtDeviceCharacterProtocol, "alloc"), "init"));
    objj_msgSend(objj_msgSend(self._characterDevice, "protocol"), "setType:", objj_msgSend(self.buttonProtocolType, "title"));
    if (!objj_msgSend(objj_msgSend(self._table, "dataSource"), "containsObject:", self._characterDevice))
        objj_msgSend(objj_msgSend(self._table, "dataSource"), "addObject:", self._characterDevice);
    objj_msgSend(self._delegate, "setDefinitionEdited:", YES);
    objj_msgSend(self._table, "reloadData");
    objj_msgSend(self.mainPopover, "close");
    CPLog.debug("Generated character device XML is: " + objj_msgSend(self._characterDevice, "description"));
}
,["id","id"]), new objj_method(sel_getUid("openWindow:"), function $TNCharacterDeviceController__openWindow_(self, _cmd, aSender)
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
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonOK);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNCharacterDeviceController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("didDeviceKindChange:"), function $TNCharacterDeviceController__didDeviceKindChange_(self, _cmd, aSender)
{
    objj_msgSend(self.buttonType, "removeAllItems");
    switch (objj_msgSend(self.buttonKind, "title"))
    {
        case TNLibvirtDeviceCharacterKindConsole:
            objj_msgSend(self.buttonType, "addItemsWithTitles:", TNLibvirtDeviceCharacterTypesForConsole);
            break;
        case TNLibvirtDeviceCharacterKindSerial:
            objj_msgSend(self.buttonType, "addItemsWithTitles:", TNLibvirtDeviceCharacterTypesForSerial);
            break;
        case TNLibvirtDeviceCharacterKindChannel:
            objj_msgSend(self.buttonType, "addItemsWithTitles:", TNLibvirtDeviceCharacterTypesForChannel);
            break;
        case TNLibvirtDeviceCharacterKindParallel:
            objj_msgSend(self.buttonType, "addItemsWithTitles:", TNLibvirtDeviceCharacterTypesForParallel);
            break;
    }
    if (objj_msgSend(self.buttonType, "itemWithTitle:", objj_msgSend(self._characterDevice, "type")))
        objj_msgSend(self.buttonType, "selectItemWithTitle:", objj_msgSend(self._characterDevice, "type"));
    else
        objj_msgSend(self.buttonType, "selectItemAtIndex:", 0);
    objj_msgSend(self, "didDeviceTypeChange:", nil);
}
,["id","id"]), new objj_method(sel_getUid("didDeviceTypeChange:"), function $TNCharacterDeviceController__didDeviceTypeChange_(self, _cmd, aSender)
{
    switch (objj_msgSend(self.buttonType, "title"))
    {
        case TNLibvirtDeviceCharacterTypeUNIX:
        case TNLibvirtDeviceCharacterTypePTY:
        case TNLibvirtDeviceCharacterTypeFILE:
        case TNLibvirtDeviceCharacterTypeDEV:
        case TNLibvirtDeviceCharacterTypePIPE:
            objj_msgSend(self.fieldSourcePath, "setEnabled:", YES);
            objj_msgSend(self.fieldSourceHost, "setEnabled:", NO);
            objj_msgSend(self.fieldSourceService, "setEnabled:", NO);
            break;
        case TNLibvirtDeviceCharacterTypeNULL:
            objj_msgSend(self.fieldSourcePath, "setEnabled:", NO);
            objj_msgSend(self.fieldSourceHost, "setEnabled:", NO);
            objj_msgSend(self.fieldSourceService, "setEnabled:", NO);
            break;
        case TNLibvirtDeviceCharacterTypeUDP:
        case TNLibvirtDeviceCharacterTypeTCP:
            objj_msgSend(self.fieldSourcePath, "setEnabled:", NO);
            objj_msgSend(self.fieldSourceHost, "setEnabled:", YES);
            objj_msgSend(self.fieldSourceService, "setEnabled:", YES);
            break;
        default:
            objj_msgSend(self.fieldSourcePath, "setEnabled:", YES);
            objj_msgSend(self.fieldSourceHost, "setEnabled:", YES);
            objj_msgSend(self.fieldSourceService, "setEnabled:", YES);
            break;
    }
}
,["id","id"]), new objj_method(sel_getUid("didSourceModeChange:"), function $TNCharacterDeviceController__didSourceModeChange_(self, _cmd, aSender)
{
    switch (objj_msgSend(self.buttonSourceMode, "title"))
    {
    }
}
,["id","id"]), new objj_method(sel_getUid("didTargetTypeChange:"), function $TNCharacterDeviceController__didTargetTypeChange_(self, _cmd, aSender)
{
    switch (objj_msgSend(self.buttonTargetType, "title"))
    {
    }
}
,["id","id"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNCharacterDeviceController), comment);
}p;27;TNCharacterDeviceDataView.jt;10459;@STATIC;1.0;I;23;Foundation/Foundation.ji;29;../../Views/TNBasicDataView.ji;32;Model/TNLibvirtDeviceCharacter.jt;10340;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("../../Views/TNBasicDataView.j", YES);
objj_executeFile("Model/TNLibvirtDeviceCharacter.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNCharacterDeviceDataViewIconCONSOLE,
    TNCharacterDeviceDataViewIconSERIAL,
    TNCharacterDeviceDataViewIconCHANNEL,
    TNCharacterDeviceDataViewIconPARALLEL;
{var the_class = objj_allocateClassPair(TNBasicDataView, "TNCharacterDeviceDataView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("imageIcon"), new objj_ivar("fieldProtocolType"), new objj_ivar("fieldSourceHost"), new objj_ivar("fieldSourceMode"), new objj_ivar("fieldSourcePath"), new objj_ivar("fieldSourceService"), new objj_ivar("fieldTargetAddress"), new objj_ivar("fieldTargetName"), new objj_ivar("fieldTargetPort"), new objj_ivar("fieldTargetType"), new objj_ivar("fieldType"), new objj_ivar("labelSource"), new objj_ivar("labelTarget"), new objj_ivar("labelProtocol"), new objj_ivar("labelTitle"), new objj_ivar("labelProtocolType"), new objj_ivar("labelSourceHost"), new objj_ivar("labelSourceMode"), new objj_ivar("labelSourcePath"), new objj_ivar("labelSourceService"), new objj_ivar("labelTargetAddress"), new objj_ivar("labelTargetName"), new objj_ivar("labelTargetPort"), new objj_ivar("labelTargetType"), new objj_ivar("_currentCharacterDevice")]);
       
       

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setObjectValue:"), function $TNCharacterDeviceDataView__setObjectValue_(self, _cmd, aCharacterDevice)
{
    self._currentCharacterDevice = aCharacterDevice;
    objj_msgSend(self.fieldType, "removeFromSuperview");
    objj_msgSend(self, "addSubview:", self.fieldType);
    switch (objj_msgSend(self._currentCharacterDevice, "kind"))
    {
        case TNLibvirtDeviceCharacterKindConsole:
            objj_msgSend(self.imageIcon, "setImage:", TNCharacterDeviceDataViewIconCONSOLE);
            break;
        case TNLibvirtDeviceCharacterKindSerial:
            objj_msgSend(self.imageIcon, "setImage:", TNCharacterDeviceDataViewIconSERIAL);
            break;
        case TNLibvirtDeviceCharacterKindChannel:
            objj_msgSend(self.imageIcon, "setImage:", TNCharacterDeviceDataViewIconCHANNEL);
            break;
        case TNLibvirtDeviceCharacterKindParallel:
            objj_msgSend(self.imageIcon, "setImage:", TNCharacterDeviceDataViewIconPARALLEL);
            break;
    }
    objj_msgSend(self.labelTitle, "setStringValue:", objj_msgSend(CPString, "stringWithFormat:", CPLocalizedString("%s %s device", "%s %s device"), objj_msgSend(objj_msgSend(self._currentCharacterDevice, "type"), "uppercaseString"), objj_msgSend(objj_msgSend(self._currentCharacterDevice, "kind"), "lowercaseString")));
    objj_msgSend(self.fieldType, "setStringValue:", objj_msgSend(objj_msgSend(self._currentCharacterDevice, "type"), "uppercaseString"));
    objj_msgSend(self.fieldSourceHost, "setStringValue:", objj_msgSend(objj_msgSend(self._currentCharacterDevice, "source"), "host") || "None");
    objj_msgSend(self.fieldSourceMode, "setStringValue:", objj_msgSend(objj_msgSend(self._currentCharacterDevice, "source"), "mode") || "None");
    objj_msgSend(self.fieldSourcePath, "setStringValue:", objj_msgSend(objj_msgSend(self._currentCharacterDevice, "source"), "path") || "None");
    objj_msgSend(self.fieldSourceService, "setStringValue:", objj_msgSend(objj_msgSend(self._currentCharacterDevice, "source"), "service") || "None");
    objj_msgSend(self.fieldTargetAddress, "setStringValue:", objj_msgSend(objj_msgSend(self._currentCharacterDevice, "target"), "address") || "None");
    objj_msgSend(self.fieldTargetName, "setStringValue:", objj_msgSend(objj_msgSend(self._currentCharacterDevice, "target"), "name") || "None");
    objj_msgSend(self.fieldTargetPort, "setStringValue:", objj_msgSend(objj_msgSend(self._currentCharacterDevice, "target"), "port") || "None");
    objj_msgSend(self.fieldTargetType, "setStringValue:", objj_msgSend(objj_msgSend(self._currentCharacterDevice, "target"), "type") || "None");
    objj_msgSend(self.fieldProtocolType, "setStringValue:", objj_msgSend(objj_msgSend(self._currentCharacterDevice, "protocol"), "type") || "None");
}
,["void","TNLibvirtDeviceCharacter"]), new objj_method(sel_getUid("initWithCoder:"), function $TNCharacterDeviceDataView__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCharacterDeviceDataView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self.imageIcon = objj_msgSend(aCoder, "decodeObjectForKey:", "imageIcon");
        self.labelProtocol = objj_msgSend(aCoder, "decodeObjectForKey:", "labelProtocol");
        self.labelSource = objj_msgSend(aCoder, "decodeObjectForKey:", "labelSource");
        self.labelTarget = objj_msgSend(aCoder, "decodeObjectForKey:", "labelTarget");
        self.labelTitle = objj_msgSend(aCoder, "decodeObjectForKey:", "labelTitle");
        self.fieldProtocolType = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldProtocolType");
        self.fieldSourceHost = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldSourceHost");
        self.fieldSourceMode = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldSourceMode");
        self.fieldSourcePath = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldSourcePath");
        self.fieldSourceService = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldSourceService");
        self.fieldTargetAddress = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldTargetAddress");
        self.fieldTargetName = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldTargetName");
        self.fieldTargetPort = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldTargetPort");
        self.fieldTargetType = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldTargetType");
        self.fieldType = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldType");
        self.labelProtocolType = objj_msgSend(aCoder, "decodeObjectForKey:", "labelProtocolType");
        self.labelSourceHost = objj_msgSend(aCoder, "decodeObjectForKey:", "labelSourceHost");
        self.labelSourceMode = objj_msgSend(aCoder, "decodeObjectForKey:", "labelSourceMode");
        self.labelSourcePath = objj_msgSend(aCoder, "decodeObjectForKey:", "labelSourcePath");
        self.labelSourceService = objj_msgSend(aCoder, "decodeObjectForKey:", "labelSourceService");
        self.labelTargetAddress = objj_msgSend(aCoder, "decodeObjectForKey:", "labelTargetAddress");
        self.labelTargetName = objj_msgSend(aCoder, "decodeObjectForKey:", "labelTargetName");
        self.labelTargetPort = objj_msgSend(aCoder, "decodeObjectForKey:", "labelTargetPort");
        self.labelTargetType = objj_msgSend(aCoder, "decodeObjectForKey:", "labelTargetType");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNCharacterDeviceDataView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCharacterDeviceDataView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.imageIcon, "imageIcon");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelProtocol, "labelProtocol");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelSource, "labelSource");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelTarget, "labelTarget");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelTitle, "labelTitle");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldProtocolType, "fieldProtocolType");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldSourceHost, "fieldSourceHost");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldSourceMode, "fieldSourceMode");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldSourcePath, "fieldSourcePath");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldSourceService, "fieldSourceService");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldTargetAddress, "fieldTargetAddress");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldTargetName, "fieldTargetName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldTargetPort, "fieldTargetPort");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldTargetType, "fieldTargetType");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldType, "fieldType");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelProtocolType, "labelProtocolType");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelSourceHost, "labelSourceHost");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelSourceMode, "labelSourceMode");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelSourcePath, "labelSourcePath");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelSourceService, "labelSourceService");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelTargetAddress, "labelTargetAddress");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelTargetName, "labelTargetName");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelTargetPort, "labelTargetPort");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelTargetType, "labelTargetType");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNCharacterDeviceDataView__initialize(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", TNCharacterDeviceDataView);
    TNCharacterDeviceDataViewIconCONSOLE = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "character_console.png"));
    TNCharacterDeviceDataViewIconSERIAL = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "character_serial.png"));
    TNCharacterDeviceDataViewIconCHANNEL = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "character_channel.png"));
    TNCharacterDeviceDataViewIconPARALLEL = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "character_parallel.png"));
}
,["void"])]);
}p;19;TNDriveController.jt;22557;@STATIC;1.0;I;17;AppKit/CPButton.jI;19;AppKit/CPMenuItem.jI;22;AppKit/CPPopUpButton.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;23;Foundation/Foundation.jI;35;StropheCappuccino/TNStropheStanza.jI;15;TNKit/TNAlert.ji;17;Model/TNLibvirt.jt;22284;objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPMenuItem.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("Model/TNLibvirt.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelTypeVirtualMachineDisk = "archipel:vm:disk",
    TNArchipelTypeVirtualMachineDiskGet = "get",
    TNArchipelTypeVirtualMachineISOGet = "getiso";
{var the_class = objj_allocateClassPair(CPObject, "TNDriveController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonOK"), new objj_ivar("checkBoxReadOnly"), new objj_ivar("checkBoxShareable"), new objj_ivar("checkBoxTransient"), new objj_ivar("mainPopover"), new objj_ivar("buttonDevice"), new objj_ivar("buttonDriverCache"), new objj_ivar("buttonSourcePath"), new objj_ivar("buttonTargetBus"), new objj_ivar("buttonTargetDevice"), new objj_ivar("buttonType"), new objj_ivar("fieldDevicePath"), new objj_ivar("_delegate"), new objj_ivar("_table"), new objj_ivar("_drive"), new objj_ivar("_otherDrives"), new objj_ivar("_entity")]);
       
       

       
       


       
       






       
       



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $TNDriveController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNDriveController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("table"), function $TNDriveController__table(self, _cmd)
{
return self._table;
}
,["CPTableView"]), new objj_method(sel_getUid("setTable:"), function $TNDriveController__setTable_(self, _cmd, newValue)
{
self._table = newValue;
}
,["void","CPTableView"]), new objj_method(sel_getUid("drive"), function $TNDriveController__drive(self, _cmd)
{
return self._drive;
}
,["TNLibvirtDeviceDisk"]), new objj_method(sel_getUid("setDrive:"), function $TNDriveController__setDrive_(self, _cmd, newValue)
{
self._drive = newValue;
}
,["void","TNLibvirtDeviceDisk"]), new objj_method(sel_getUid("otherDrives"), function $TNDriveController__otherDrives(self, _cmd)
{
return self._otherDrives;
}
,["TNLibvirtDeviceDisk"]), new objj_method(sel_getUid("setOtherDrives:"), function $TNDriveController__setOtherDrives_(self, _cmd, newValue)
{
self._otherDrives = newValue;
}
,["void","TNLibvirtDeviceDisk"]), new objj_method(sel_getUid("entity"), function $TNDriveController__entity(self, _cmd)
{
return self._entity;
}
,["TNStropheContact"]), new objj_method(sel_getUid("setEntity:"), function $TNDriveController__setEntity_(self, _cmd, newValue)
{
self._entity = newValue;
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("awakeFromCib"), function $TNDriveController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.buttonDevice, "removeAllItems");
    objj_msgSend(self.buttonType, "removeAllItems");
    objj_msgSend(self.buttonTargetDevice, "removeAllItems");
    objj_msgSend(self.buttonTargetBus, "removeAllItems");
    objj_msgSend(self.buttonSourcePath, "removeAllItems");
    objj_msgSend(self.buttonDriverCache, "removeAllItems");
    objj_msgSend(self.buttonDevice, "addItemsWithTitles:", TNLibvirtDeviceDiskDevices);
    objj_msgSend(self.buttonType, "addItemsWithTitles:", TNLibvirtDeviceDiskTypes);
    objj_msgSend(self.buttonTargetDevice, "addItemsWithTitles:", TNLibvirtDeviceDiskTargetDevices);
    objj_msgSend(self.buttonTargetBus, "addItemsWithTitles:", TNLibvirtDeviceDiskTargetBuses);
    objj_msgSend(self.buttonDriverCache, "addItemsWithTitles:", TNLibvirtDeviceDiskDriverCaches);
}
,["void"]), new objj_method(sel_getUid("disableAlreadyUsedTargetDevices"), function $TNDriveController__disableAlreadyUsedTargetDevices(self, _cmd)
{
    for (var i = 0; i < objj_msgSend(objj_msgSend(self.buttonTargetDevice, "itemArray"), "count"); i++)
        objj_msgSend(objj_msgSend(objj_msgSend(self.buttonTargetDevice, "itemArray"), "objectAtIndex:", i), "setEnabled:", YES);
    for (var i = 0; i < objj_msgSend(self._otherDrives, "count"); i++)
    {
        var dev = objj_msgSend(objj_msgSend(objj_msgSend(self._otherDrives, "objectAtIndex:", i), "target"), "device"),
            item = objj_msgSend(self.buttonTargetDevice, "itemWithTitle:", dev);
        if (item && objj_msgSend(objj_msgSend(self._drive, "target"), "device") != dev)
            objj_msgSend(item, "setEnabled:", NO);
    }
}
,["void"]), new objj_method(sel_getUid("updateAfterPermissionChanged"), function $TNDriveController__updateAfterPermissionChanged(self, _cmd)
{
    objj_msgSend(self._delegate, "setControl:enabledAccordingToPermission:", self.buttonDevice, ["drives_getiso", "drives_get"]);
}
,["void"]), new objj_method(sel_getUid("update"), function $TNDriveController__update(self, _cmd)
{
    objj_msgSend(self.buttonDevice, "selectItemWithTitle:", objj_msgSend(self._drive, "device"));
    objj_msgSend(self, "updateAfterPermissionChanged");
    switch (objj_msgSend(self._drive, "device"))
    {
        case TNLibvirtDeviceDiskDeviceDisk:
            if (objj_msgSend(self._delegate, "currentEntityHasPermission:", "drives_get"))
                objj_msgSend(self, "getDisksInfo");
            break;
        case TNLibvirtDeviceDiskDeviceCDROM:
            if (objj_msgSend(self._delegate, "currentEntityHasPermission:", "drives_getiso"))
                objj_msgSend(self, "getISOsInfo");
            break;
    }
    objj_msgSend(self, "performDeviceTypeChanged:", nil);
    objj_msgSend(self.buttonDriverCache, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._drive, "driver"), "cache"));
    objj_msgSend(self.buttonType, "selectItemWithTitle:", objj_msgSend(self._drive, "type"));
    objj_msgSend(self, "busTypeChanged:", self.buttonTargetBus);
    objj_msgSend(self.buttonTargetBus, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._drive, "target"), "bus"));
    objj_msgSend(self, "busTypeChanged:", self.buttonTargetBus);
    objj_msgSend(self, "driveTypeDidChange:", nil);
    objj_msgSend(self.checkBoxTransient, "setState:", objj_msgSend(self._drive, "isTransient") ? CPOnState : CPOffState);
    objj_msgSend(self.checkBoxShareable, "setState:", objj_msgSend(self._drive, "isShareable") ? CPOnState : CPOffState);
    objj_msgSend(self.checkBoxReadOnly, "setState:", objj_msgSend(self._drive, "isReadOnly") ? CPOnState : CPOffState);
}
,["void"]), new objj_method(sel_getUid("save:"), function $TNDriveController__save_(self, _cmd, aSender)
{
    if (objj_msgSend(self._drive, "type") != objj_msgSend(self.buttonType, "title"))
        objj_msgSend(objj_msgSend(self._drive, "driver"), "setName:", nil);
    objj_msgSend(self._drive, "setDevice:", objj_msgSend(self.buttonDevice, "title"));
    objj_msgSend(self._drive, "setType:", objj_msgSend(self.buttonType, "title"));
    switch (objj_msgSend(self.buttonType, "title"))
    {
        case TNLibvirtDeviceDiskTypeBlock:
            objj_msgSend(objj_msgSend(self._drive, "source"), "setDevice:", objj_msgSend(self.fieldDevicePath, "stringValue"));
            objj_msgSend(objj_msgSend(self._drive, "source"), "setFile:", nil);
            objj_msgSend(objj_msgSend(self._drive, "source"), "setHosts:", nil);
            objj_msgSend(objj_msgSend(self._drive, "source"), "setProtocol:", nil);
            objj_msgSend(objj_msgSend(self._drive, "source"), "setName:", nil);
            break;
        case TNLibvirtDeviceDiskTypeNetwork:
            var host = objj_msgSend(objj_msgSend(TNLibvirtDeviceDiskSourceHost, "alloc"), "init"),
                hostName = objj_msgSend(self.fieldDevicePath, "stringValue").split("-")[0].split(":")[0],
                hostPort = objj_msgSend(self.fieldDevicePath, "stringValue").split("-")[0].split(":")[1],
                hostProtocol = objj_msgSend(self.fieldDevicePath, "stringValue").split("-")[1].split("/")[0],
                hostProtocolName = objj_msgSend(self.fieldDevicePath, "stringValue").split("-")[1].split("/")[1];
            objj_msgSend(host, "setName:", hostName);
            objj_msgSend(host, "setPort:", hostPort);
            objj_msgSend(objj_msgSend(self._drive, "source"), "setHosts:", []);
            objj_msgSend(objj_msgSend(objj_msgSend(self._drive, "source"), "hosts"), "addObject:", host);
            objj_msgSend(objj_msgSend(self._drive, "source"), "setDevice:", nil);
            objj_msgSend(objj_msgSend(self._drive, "source"), "setFile:", nil);
            objj_msgSend(objj_msgSend(self._drive, "source"), "setProtocol:", hostProtocol);
            objj_msgSend(objj_msgSend(self._drive, "source"), "setName:", hostProtocolName);
            break;
        case TNLibvirtDeviceDiskTypeFile:
            objj_msgSend(objj_msgSend(self._drive, "source"), "setFile:", objj_msgSend(objj_msgSend(self.buttonSourcePath, "selectedItem"), "representedObject").path);
            objj_msgSend(objj_msgSend(self._drive, "driver"), "setType:", objj_msgSend(objj_msgSend(self.buttonSourcePath, "selectedItem"), "representedObject").format);
            objj_msgSend(objj_msgSend(self._drive, "source"), "setDevice:", nil);
            objj_msgSend(objj_msgSend(self._drive, "source"), "setHosts:", nil);
            objj_msgSend(objj_msgSend(self._drive, "source"), "setProtocol:", nil);
            objj_msgSend(objj_msgSend(self._drive, "source"), "setName:", nil);
            break;
    }
    if (!objj_msgSend(objj_msgSend(self._drive, "source"), "sourceObject") || objj_msgSend(objj_msgSend(self._drive, "source"), "sourceObject") == "")
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPLocalizedString("Source is not selected", "Source is not selected"), CPLocalizedString("You must select a source for your drive", "You must select a source for your drive"));
        objj_msgSend(self.mainPopover, "close");
        return;
    }
    objj_msgSend(objj_msgSend(self._drive, "driver"), "setCache:", objj_msgSend(self.buttonDriverCache, "title"));
    objj_msgSend(objj_msgSend(self._drive, "target"), "setBus:", objj_msgSend(self.buttonTargetBus, "title"));
    objj_msgSend(objj_msgSend(self._drive, "target"), "setDevice:", objj_msgSend(self.buttonTargetDevice, "title"));
    objj_msgSend(self._drive, "setTransient:", objj_msgSend(self.checkBoxTransient, "state") == CPOnState ? YES : NO)
    objj_msgSend(self._drive, "setShareable:", objj_msgSend(self.checkBoxShareable, "state") == CPOnState ? YES : NO)
    objj_msgSend(self._drive, "setReadOnly:", objj_msgSend(self.checkBoxReadOnly, "state") == CPOnState ? YES : NO);
    if (!objj_msgSend(objj_msgSend(self._table, "dataSource"), "containsObject:", self._drive))
        objj_msgSend(objj_msgSend(self._table, "dataSource"), "addObject:", self._drive);
    objj_msgSend(self._delegate, "setDefinitionEdited:", YES);
    objj_msgSend(self._table, "reloadData");
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("performDeviceTypeChanged:"), function $TNDriveController__performDeviceTypeChanged_(self, _cmd, aSender)
{
    var driveType = objj_msgSend(self.buttonDevice, "title");
    switch (driveType)
    {
        case TNLibvirtDeviceDiskDeviceDisk:
            objj_msgSend(self, "getDisksInfo");
            break;
        case TNLibvirtDeviceDiskDeviceCDROM:
            objj_msgSend(self, "getISOsInfo");
            break;
        default:
            CPLog.warn("unrecognized disk type.");
    }
    objj_msgSend(self, "busTypeChanged:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("driveTypeDidChange:"), function $TNDriveController__driveTypeDidChange_(self, _cmd, aSender)
{
    if (objj_msgSend(self.buttonType, "title") == TNLibvirtDeviceDiskTypeBlock || objj_msgSend(self.buttonType, "title") == TNLibvirtDeviceDiskTypeDir)
    {
        objj_msgSend(self.fieldDevicePath, "setHidden:", NO);
        objj_msgSend(self.fieldDevicePath, "setEnabled:", YES);
        objj_msgSend(self.buttonSourcePath, "setHidden:", YES);
        objj_msgSend(self.buttonSourcePath, "setEnabled:", NO);
        if (aSender)
            objj_msgSend(self.fieldDevicePath, "setStringValue:", "/dev/cdrom");
        else
            objj_msgSend(self.fieldDevicePath, "setStringValue:", objj_msgSend(objj_msgSend(self._drive, "source"), "device"));
    }
    else if (objj_msgSend(self.buttonType, "title") == TNLibvirtDeviceDiskTypeFile)
    {
        objj_msgSend(self.fieldDevicePath, "setHidden:", YES);
        objj_msgSend(self.fieldDevicePath, "setEnabled:", NO);
        objj_msgSend(self.buttonSourcePath, "setHidden:", NO);
        objj_msgSend(self.buttonSourcePath, "setEnabled:", YES);
        objj_msgSend(self.fieldDevicePath, "setStringValue:", "");
    }
    else if (objj_msgSend(self.buttonType, "title") == TNLibvirtDeviceDiskTypeNetwork)
    {
        objj_msgSend(self.fieldDevicePath, "setHidden:", NO);
        objj_msgSend(self.fieldDevicePath, "setEnabled:", YES);
        objj_msgSend(self.buttonSourcePath, "setHidden:", YES);
        objj_msgSend(self.buttonSourcePath, "setEnabled:", NO);
        if (aSender)
            objj_msgSend(self.fieldDevicePath, "setStringValue:", "127.0.0.1:4242-sheepdog/myshare");
        else
        {
            var host = objj_msgSend(objj_msgSend(objj_msgSend(self._drive, "source"), "hosts"), "firstObject"),
                driveSource = objj_msgSend(self._drive, "source"),
                hostname = objj_msgSend(host, "name"),
                port = objj_msgSend(host, "port"),
                protocol = objj_msgSend(driveSource, "protocol"),
                sourceName = objj_msgSend(driveSource, "name"),
                hostString = hostname + ":" + port + "-" + protocol + "/" + sourceName;
            objj_msgSend(self.fieldDevicePath, "setStringValue:", hostString);
        }
    }
}
,["id","id"]), new objj_method(sel_getUid("busTypeChanged:"), function $TNDriveController__busTypeChanged_(self, _cmd, aSender)
{
    objj_msgSend(self.buttonTargetDevice, "removeAllItems");
    switch (objj_msgSend(self.buttonTargetBus, "title"))
    {
        case TNLibvirtDeviceDiskTargetBusIDE:
            objj_msgSend(self.buttonTargetDevice, "addItemsWithTitles:", TNLibvirtDeviceDiskTargetDevicesIDE);
            break;
        case TNLibvirtDeviceDiskTargetBusSATA:
        case TNLibvirtDeviceDiskTargetBusSCSI:
            objj_msgSend(self.buttonTargetDevice, "addItemsWithTitles:", TNLibvirtDeviceDiskTargetDevicesSCSI);
            break;
        case TNLibvirtDeviceDiskTargetBusXEN:
            objj_msgSend(self.buttonTargetDevice, "addItemsWithTitles:", TNLibvirtDeviceDiskTargetDevicesXEN);
            break;
        case TNLibvirtDeviceDiskTargetBusVIRTIO:
            objj_msgSend(self.buttonTargetDevice, "addItemsWithTitles:", TNLibvirtDeviceDiskTargetDevicesVIRTIO);
            break;
        default:
            objj_msgSend(self.buttonTargetDevice, "addItemsWithTitles:", TNLibvirtDeviceDiskTargetDevices);
    }
    objj_msgSend(self, "disableAlreadyUsedTargetDevices");
    switch (objj_msgSend(self.buttonDevice, "title"))
    {
        case TNLibvirtDeviceDiskDeviceDisk:
            for (var i = 0; i < objj_msgSend(objj_msgSend(self.buttonTargetDevice, "itemArray"), "count"); i++)
            {
                if (objj_msgSend(objj_msgSend(self.buttonTargetDevice, "itemAtIndex:", i), "isEnabled"))
                {
                    objj_msgSend(self.buttonTargetDevice, "selectItemAtIndex:", i);
                    break;
                }
            }
            break;
        case TNLibvirtDeviceDiskDeviceCDROM:
            for (var i = 2; i < objj_msgSend(objj_msgSend(self.buttonTargetDevice, "itemArray"), "count"); i++)
            {
                if (objj_msgSend(objj_msgSend(self.buttonTargetDevice, "itemAtIndex:", i), "isEnabled"))
                {
                    objj_msgSend(self.buttonTargetDevice, "selectItemAtIndex:", i);
                    break;
                }
            }
            break;
        default:
            objj_msgSend(self.buttonTargetDevice, "selectItemAtIndex:", 0);
    }
    if (objj_msgSend(objj_msgSend(self.buttonTargetDevice, "itemTitles"), "containsObject:", objj_msgSend(objj_msgSend(self._drive, "target"), "device")))
        objj_msgSend(self.buttonTargetDevice, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._drive, "target"), "device"));
}
,["id","id"]), new objj_method(sel_getUid("openWindow:"), function $TNDriveController__openWindow_(self, _cmd, aSender)
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
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonOK);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNDriveController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("getDisksInfo"), function $TNDriveController__getDisksInfo(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineDisk});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineDiskGet});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveDisksInfo:"), self);
}
,["void"]), new objj_method(sel_getUid("_didReceiveDisksInfo:"), function $TNDriveController___didReceiveDisksInfo_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var disks = objj_msgSend(aStanza, "childrenWithName:", "disk");
        objj_msgSend(self.buttonSourcePath, "removeAllItems");
        for (var i = 0; i < objj_msgSend(disks, "count"); i++)
        {
            var disk = objj_msgSend(disks, "objectAtIndex:", i),
                vSize = objj_msgSend(CPString, "formatByteSize:", objj_msgSend(disk, "valueForAttribute:", "virtualSize")),
                dSize = objj_msgSend(CPString, "formatByteSize:", objj_msgSend(disk, "valueForAttribute:", "diskSize")),
                format = objj_msgSend(disk, "valueForAttribute:", "format"),
                label = objj_msgSend(objj_msgSend(objj_msgSend(disk, "valueForAttribute:", "name"), "componentsSeparatedByString:", "."), "objectAtIndex:", 0) + " - " + vSize + " (" + dSize + " used)",
                item = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", label, nil, nil);
            objj_msgSend(item, "setRepresentedObject:", {"format": format, "path": objj_msgSend(disk, "valueForAttribute:", "path")});
            objj_msgSend(self.buttonSourcePath, "addItem:", item);
        }
        objj_msgSend(self.buttonSourcePath, "selectItemAtIndex:", 0);
        for (var i = 0; i < objj_msgSend(objj_msgSend(self.buttonSourcePath, "itemArray"), "count"); i++)
        {
            var item = objj_msgSend(objj_msgSend(self.buttonSourcePath, "itemArray"), "objectAtIndex:", i);
            if (objj_msgSend(item, "representedObject").path == objj_msgSend(objj_msgSend(self._drive, "source"), "file"))
            {
                objj_msgSend(self.buttonSourcePath, "selectItem:", item);
                break;
            }
        }
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("getISOsInfo"), function $TNDriveController__getISOsInfo(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineDisk});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {"action": TNArchipelTypeVirtualMachineISOGet});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("didReceiveISOsInfo:"), self);
}
,["void"]), new objj_method(sel_getUid("didReceiveISOsInfo:"), function $TNDriveController__didReceiveISOsInfo_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var isos = objj_msgSend(aStanza, "childrenWithName:", "iso");
        objj_msgSend(self.buttonSourcePath, "removeAllItems");
        for (var i = 0; i < objj_msgSend(isos, "count"); i++)
        {
            var iso = objj_msgSend(isos, "objectAtIndex:", i),
                label = objj_msgSend(iso, "valueForAttribute:", "name"),
                item = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "initWithTitle:action:keyEquivalent:", label, nil, nil);
            objj_msgSend(item, "setRepresentedObject:", {"format": "raw", "path": objj_msgSend(iso, "valueForAttribute:", "path")});
            objj_msgSend(self.buttonSourcePath, "addItem:", item);
        }
        objj_msgSend(self.buttonSourcePath, "selectItemAtIndex:", 0);
        for (var i = 0; i < objj_msgSend(objj_msgSend(self.buttonSourcePath, "itemArray"), "count"); i++)
        {
            var item = objj_msgSend(objj_msgSend(self.buttonSourcePath, "itemArray"), "objectAtIndex:", i);
            if (objj_msgSend(item, "representedObject").path == objj_msgSend(objj_msgSend(self._drive, "source"), "file"))
            {
                objj_msgSend(self.buttonSourcePath, "selectItem:", item);
                break;
            }
        }
    }
    return NO;
}
,["BOOL","TNStropheStanza"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNDriveController), comment);
}p;23;TNDriveDeviceDataView.jt;13413;@STATIC;1.0;I;23;Foundation/Foundation.ji;29;../../Views/TNBasicDataView.ji;27;Model/TNLibvirtDeviceDisk.ji;33;Model/TNLibvirtDeviceDiskDriver.ji;33;Model/TNLibvirtDeviceDiskSource.ji;33;Model/TNLibvirtDeviceDiskTarget.jt;13185;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("../../Views/TNBasicDataView.j", YES);
objj_executeFile("Model/TNLibvirtDeviceDisk.j", YES);
objj_executeFile("Model/TNLibvirtDeviceDiskDriver.j", YES);
objj_executeFile("Model/TNLibvirtDeviceDiskSource.j", YES);
objj_executeFile("Model/TNLibvirtDeviceDiskTarget.j", YES);
var TNDriveDeviceDataViewIconQCOW2,
    TNDriveDeviceDataViewIconQCOW,
    TNDriveDeviceDataViewIconCOW,
    TNDriveDeviceDataViewIconVMDK,
    TNDriveDeviceDataViewIconRAW,
    TNDriveDeviceDataViewIconCDROM,
    TNDriveDeviceDataViewIconDISK,
    TNDriveDeviceDataViewIconNETWORK,
    TNDriveDeviceDataViewIconFLOPPY;
{var the_class = objj_allocateClassPair(TNBasicDataView, "TNDriveDeviceDataView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("imageIcon"), new objj_ivar("fieldCache"), new objj_ivar("fieldDevice"), new objj_ivar("fieldFormat"), new objj_ivar("fieldPath"), new objj_ivar("fieldReadOnly"), new objj_ivar("fieldShareable"), new objj_ivar("fieldTarget"), new objj_ivar("fieldTransient"), new objj_ivar("fieldType"), new objj_ivar("labelCache"), new objj_ivar("labelDevice"), new objj_ivar("labelFormat"), new objj_ivar("labelReadOnly"), new objj_ivar("labelShareable"), new objj_ivar("labelTarget"), new objj_ivar("labelTransient"), new objj_ivar("labelType"), new objj_ivar("_currentDisk")]);
       
       

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setObjectValue:"), function $TNDriveDeviceDataView__setObjectValue_(self, _cmd, aDisk)
{
    self._currentDisk = aDisk;
    switch (objj_msgSend(self._currentDisk, "device"))
    {
        case TNLibvirtDeviceDiskDeviceCDROM:
            objj_msgSend(self.imageIcon, "setImage:", TNDriveDeviceDataViewIconCDROM);
            objj_msgSend(self.fieldFormat, "setStringValue:", TNLibvirtDeviceDiskDriverTypeRaw);
            break;
        case TNLibvirtDeviceDiskDeviceFloppy:
            objj_msgSend(self.imageIcon, "setImage:", TNDriveDeviceDataViewIconFLOPPY);
            objj_msgSend(self.fieldFormat, "setStringValue:", TNLibvirtDeviceDiskDriverTypeRaw);
            break;
        case TNLibvirtDeviceDiskDeviceDisk:
            switch (objj_msgSend(self._currentDisk, "type"))
            {
                case TNLibvirtDeviceDiskTypeDir:
                case TNLibvirtDeviceDiskTypeBlock:
                    objj_msgSend(self.imageIcon, "setImage:", TNDriveDeviceDataViewIconDISK);
                    objj_msgSend(self.fieldFormat, "setStringValue:", TNLibvirtDeviceDiskDriverTypeRaw);
                    break;
                case TNLibvirtDeviceDiskTypeNetwork:
                    objj_msgSend(self.imageIcon, "setImage:", TNDriveDeviceDataViewIconNETWORK);
                    objj_msgSend(self.fieldFormat, "setStringValue:", TNLibvirtDeviceDiskDriverTypeRaw);
                    break
                case TNLibvirtDeviceDiskTypeFile:
                    var _disk_format = ( objj_msgSend(self._currentDisk, "source")
                                         && objj_msgSend(objj_msgSend(self._currentDisk, "source"), "sourceObject")
                                         && objj_msgSend(objj_msgSend(self._currentDisk, "source"), "sourceObject") != ""
                                         && ! objj_msgSend(objj_msgSend(objj_msgSend(self._currentDisk, "source"), "sourceObject"), "isKindOfClass:", CPArray)
                                         && objj_msgSend(objj_msgSend(self._currentDisk, "driver"), "name") != TNLibvirtDeviceDiskDriverNameQemu
                                       ) ? objj_msgSend(objj_msgSend(objj_msgSend(self._currentDisk, "source"), "sourceObject").split("."), "lastObject") : objj_msgSend(objj_msgSend(self._currentDisk, "driver"), "type");
                    switch (_disk_format)
                    {
                        case "qcow2":
                            objj_msgSend(self.imageIcon, "setImage:", TNDriveDeviceDataViewIconQCOW2);
                            objj_msgSend(self.fieldFormat, "setStringValue:", TNLibvirtDeviceDiskDriverTypeQcow2);
                            break;
                        case "qcow":
                            objj_msgSend(self.imageIcon, "setImage:", TNDriveDeviceDataViewIconQCOW);
                            objj_msgSend(self.fieldFormat, "setStringValue:", TNLibvirtDeviceDiskDriverTypeQcow);
                            break;
                        case "cow":
                            objj_msgSend(self.imageIcon, "setImage:", TNDriveDeviceDataViewIconCOW);
                            objj_msgSend(self.fieldFormat, "setStringValue:", TNLibvirtDeviceDiskDriverTypeCow);
                            break;
                        case "vmdk":
                            objj_msgSend(self.imageIcon, "setImage:", TNDriveDeviceDataViewIconVMDK);
                            objj_msgSend(self.fieldFormat, "setStringValue:", TNLibvirtDeviceDiskDriverTypeVmdk);
                            break;
                        default:
                            objj_msgSend(self.imageIcon, "setImage:", TNDriveDeviceDataViewIconRAW);
                            objj_msgSend(self.fieldFormat, "setStringValue:", TNLibvirtDeviceDiskDriverTypeRaw);
                    }
                    break;
            }
            break;
    }
    if (objj_msgSend(self._currentDisk, "source") && objj_msgSend(objj_msgSend(self._currentDisk, "source"), "sourceObject") && objj_msgSend(objj_msgSend(self._currentDisk, "source"), "sourceObject") != "")
    {
        if (objj_msgSend(objj_msgSend(objj_msgSend(self._currentDisk, "source"), "sourceObject"), "isKindOfClass:", CPArray))
        {
            var host = objj_msgSend(objj_msgSend(objj_msgSend(self._currentDisk, "source"), "sourceObject"), "firstObject"),
                others = objj_msgSend(objj_msgSend(objj_msgSend(self._currentDisk, "source"), "sourceObject"), "count") > 1 ? " (and other sources)" : "";
            objj_msgSend(self.fieldPath, "setStringValue:", objj_msgSend(host, "name") + ":" + objj_msgSend(host, "port") + others);
        }
        else
            objj_msgSend(self.fieldPath, "setStringValue:", objj_msgSend(objj_msgSend(objj_msgSend(self._currentDisk, "source"), "sourceObject").split("/"), "lastObject"));
    }
    else
        objj_msgSend(self.fieldPath, "setStringValue:", "No source defined");
    objj_msgSend(self.fieldType, "setStringValue:", objj_msgSend(self._currentDisk, "type"));
    objj_msgSend(self.fieldDevice, "setStringValue:", objj_msgSend(self._currentDisk, "device"));
    objj_msgSend(self.fieldTarget, "setStringValue:", objj_msgSend(objj_msgSend(self._currentDisk, "target"), "bus") + ":" + objj_msgSend(objj_msgSend(self._currentDisk, "target"), "device"));
    objj_msgSend(self.fieldCache, "setStringValue:", objj_msgSend(objj_msgSend(self._currentDisk, "driver"), "cache"));
    objj_msgSend(self.fieldTransient, "setStringValue:", objj_msgSend(self._currentDisk, "isTransient") ? "Yes" : "No");
    objj_msgSend(self.fieldShareable, "setStringValue:", objj_msgSend(self._currentDisk, "isShareable") ? "Yes" : "No");
    objj_msgSend(self.fieldReadOnly, "setStringValue:", objj_msgSend(self._currentDisk, "isReadOnly") ? "Yes" : "No");
}
,["void","TNLibvirtDeviceDisk"]), new objj_method(sel_getUid("initWithCoder:"), function $TNDriveDeviceDataView__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNDriveDeviceDataView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self.fieldCache = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldCache");
        self.fieldDevice = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldDevice");
        self.fieldFormat = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldFormat");
        self.fieldPath = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldPath");
        self.fieldReadOnly = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldReadOnly");
        self.fieldShareable = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldShareable");
        self.fieldTarget = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldTarget");
        self.fieldTransient = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldTransient");
        self.fieldType = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldType");
        self.imageIcon = objj_msgSend(aCoder, "decodeObjectForKey:", "imageIcon");
        self.labelCache = objj_msgSend(aCoder, "decodeObjectForKey:", "labelCache");
        self.labelDevice = objj_msgSend(aCoder, "decodeObjectForKey:", "labelDevice");
        self.labelFormat = objj_msgSend(aCoder, "decodeObjectForKey:", "labelFormat");
        self.labelReadOnly = objj_msgSend(aCoder, "decodeObjectForKey:", "labelReadOnly");
        self.labelShareable = objj_msgSend(aCoder, "decodeObjectForKey:", "labelShareable");
        self.labelTarget = objj_msgSend(aCoder, "decodeObjectForKey:", "labelTarget");
        self.labelTransient = objj_msgSend(aCoder, "decodeObjectForKey:", "labelTransient");
        self.labelType = objj_msgSend(aCoder, "decodeObjectForKey:", "labelType");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNDriveDeviceDataView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNDriveDeviceDataView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.imageIcon, "imageIcon");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldCache, "fieldCache");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldDevice, "fieldDevice");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldFormat, "fieldFormat");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldPath, "fieldPath");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldReadOnly, "fieldReadOnly");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldShareable, "fieldShareable");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldTarget, "fieldTarget");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldTransient, "fieldTransient");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldType, "fieldType");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelCache, "labelCache");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelDevice, "labelDevice");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelFormat, "labelFormat");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelReadOnly, "labelReadOnly");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelShareable, "labelShareable");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelTarget, "labelTarget");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelTransient, "labelTransient");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelType, "labelType");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNDriveDeviceDataView__initialize(self, _cmd)
{
    TNDriveDeviceDataViewIconQCOW2 = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNDriveDeviceDataView), "pathForResource:", "drive_qcow2.png"));
    TNDriveDeviceDataViewIconQCOW = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNDriveDeviceDataView), "pathForResource:", "drive_qcow.png"));
    TNDriveDeviceDataViewIconCOW = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNDriveDeviceDataView), "pathForResource:", "drive_cow.png"));
    TNDriveDeviceDataViewIconVMDK = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNDriveDeviceDataView), "pathForResource:", "drive_vmdk.png"));
    TNDriveDeviceDataViewIconRAW = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNDriveDeviceDataView), "pathForResource:", "drive_raw.png"));
    TNDriveDeviceDataViewIconCDROM = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNDriveDeviceDataView), "pathForResource:", "drive_cdrom.png"));
    TNDriveDeviceDataViewIconDISK = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNDriveDeviceDataView), "pathForResource:", "drive_dev.png"));
    TNDriveDeviceDataViewIconNETWORK = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNDriveDeviceDataView), "pathForResource:", "drive_net.png"));
    TNDriveDeviceDataViewIconFLOPPY = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNDriveDeviceDataView), "pathForResource:", "drive_floppy.png"));
}
,["void"])]);
}p;27;TNGraphicDeviceController.jt;6555;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;22;AppKit/CPPopUpButton.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;20;AppKit/CPTableView.ji;30;Model/TNLibvirtDeviceGraphic.jt;6354;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("Model/TNLibvirtDeviceGraphic.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
{var the_class = objj_allocateClassPair(CPObject, "TNGraphicDeviceController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonOK"), new objj_ivar("mainPopover"), new objj_ivar("buttonKeymap"), new objj_ivar("buttonType"), new objj_ivar("fieldPassword"), new objj_ivar("fieldListenAddress"), new objj_ivar("fieldListenPort"), new objj_ivar("_table"), new objj_ivar("_delegate"), new objj_ivar("_graphicDevice")]);
       
       

       
       



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("table"), function $TNGraphicDeviceController__table(self, _cmd)
{
return self._table;
}
,["CPTableView"]), new objj_method(sel_getUid("setTable:"), function $TNGraphicDeviceController__setTable_(self, _cmd, newValue)
{
self._table = newValue;
}
,["void","CPTableView"]), new objj_method(sel_getUid("delegate"), function $TNGraphicDeviceController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNGraphicDeviceController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("graphicDevice"), function $TNGraphicDeviceController__graphicDevice(self, _cmd)
{
return self._graphicDevice;
}
,["TNLibvirtDeviceGraphic"]), new objj_method(sel_getUid("setGraphicDevice:"), function $TNGraphicDeviceController__setGraphicDevice_(self, _cmd, newValue)
{
self._graphicDevice = newValue;
}
,["void","TNLibvirtDeviceGraphic"]), new objj_method(sel_getUid("awakeFromCib"), function $TNGraphicDeviceController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.fieldPassword, "setSecure:", YES);
    objj_msgSend(self.buttonKeymap, "removeAllItems");
    objj_msgSend(self.buttonKeymap, "addItemsWithTitles:", TNLibvirtDeviceGraphicVNCKeymaps);
    objj_msgSend(self.buttonType, "removeAllItems");
    objj_msgSend(self.buttonType, "addItemsWithTitles:", [TNLibvirtDeviceGraphicTypeVNC, TNLibvirtDeviceGraphicTypeRDP, TNLibvirtDeviceGraphicTypeSPICE]);
}
,["void"]), new objj_method(sel_getUid("update"), function $TNGraphicDeviceController__update(self, _cmd)
{
    objj_msgSend(self.buttonKeymap, "selectItemWithTitle:", objj_msgSend(self._graphicDevice, "keymap"));
    objj_msgSend(self.buttonType, "selectItemWithTitle:", objj_msgSend(self._graphicDevice, "type"));
    objj_msgSend(self.fieldPassword, "setStringValue:", objj_msgSend(self._graphicDevice, "password"));
    objj_msgSend(self.fieldListenAddress, "setStringValue:", (objj_msgSend(self._graphicDevice, "listen") && objj_msgSend(self._graphicDevice, "listen") != "") ? objj_msgSend(self._graphicDevice, "listen") : "");
    objj_msgSend(self.fieldListenPort, "setStringValue:", (objj_msgSend(self._graphicDevice, "port") && objj_msgSend(self._graphicDevice, "port") != "-1") ? objj_msgSend(self._graphicDevice, "port") : "");
    objj_msgSend(self, "graphicTypeChange:", nil);
}
,["void"]), new objj_method(sel_getUid("save:"), function $TNGraphicDeviceController__save_(self, _cmd, aSender)
{
    objj_msgSend(self._graphicDevice, "setType:", objj_msgSend(self.buttonType, "title"));
    objj_msgSend(self._graphicDevice, "setKeymap:", objj_msgSend(self.buttonKeymap, "title"));
    objj_msgSend(self._graphicDevice, "setListen:", objj_msgSend(self.fieldListenAddress, "stringValue"));
    objj_msgSend(self._graphicDevice, "setPort:", objj_msgSend(self.fieldListenPort, "stringValue"));
    objj_msgSend(self._graphicDevice, "setPassword:", objj_msgSend(self.fieldPassword, "stringValue"));
    objj_msgSend(self._graphicDevice, "setAutoPort:", (objj_msgSend(self.fieldListenPort, "stringValue") == ""));
    if (!objj_msgSend(objj_msgSend(self._table, "dataSource"), "containsObject:", self._graphicDevice))
        objj_msgSend(objj_msgSend(self._table, "dataSource"), "addObject:", self._graphicDevice);
    objj_msgSend(self._delegate, "setDefinitionEdited:", YES);
    objj_msgSend(self._table, "reloadData");
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("openWindow:"), function $TNGraphicDeviceController__openWindow_(self, _cmd, aSender)
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
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonOK);
}
,["id","id"]), new objj_method(sel_getUid("graphicTypeChange:"), function $TNGraphicDeviceController__graphicTypeChange_(self, _cmd, aSender)
{
    switch (objj_msgSend(self.buttonType, "title"))
    {
        case TNLibvirtDeviceGraphicTypeVNC:
        case TNLibvirtDeviceGraphicTypeSPICE:
            objj_msgSend(self.fieldPassword, "setEnabled:", YES);
            objj_msgSend(self.fieldListenAddress, "setEnabled:", YES);
            break;
        default:
            objj_msgSend(self.fieldPassword, "setStringValue:", "");
            objj_msgSend(self.fieldListenAddress, "setStringValue:", "");
            objj_msgSend(self.fieldPassword, "setEnabled:", NO);
            objj_msgSend(self.fieldListenAddress, "setEnabled:", NO);
    }
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNGraphicDeviceController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNGraphicDeviceController), comment);
}p;25;TNGraphicDeviceDataView.jt;5116;@STATIC;1.0;I;23;Foundation/Foundation.ji;29;../../Views/TNBasicDataView.ji;30;Model/TNLibvirtDeviceGraphic.jt;5000;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("../../Views/TNBasicDataView.j", YES);
objj_executeFile("Model/TNLibvirtDeviceGraphic.j", YES);
var TNGraphicDeviceDataViewIconVNC,
    TNGraphicDeviceDataViewIconRDP,
    TNGraphicDeviceDataViewIconSPICE;
{var the_class = objj_allocateClassPair(TNBasicDataView, "TNGraphicDeviceDataView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("imageIcon"), new objj_ivar("fieldKeymap"), new objj_ivar("fieldListen"), new objj_ivar("fieldPassword"), new objj_ivar("labelKeymap"), new objj_ivar("labelListen"), new objj_ivar("labelPassword"), new objj_ivar("_currentGraphicDevice")]);
       
       

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setObjectValue:"), function $TNGraphicDeviceDataView__setObjectValue_(self, _cmd, aGraphicDevice)
{
    self._currentGraphicDevice = aGraphicDevice;
    var listenString = "";
    listenString += (objj_msgSend(self._currentGraphicDevice, "listen") && (objj_msgSend(self._currentGraphicDevice, "listen") != "")) ? objj_msgSend(self._currentGraphicDevice, "listen") : "auto";
    listenString += ":";
    listenString += (objj_msgSend(self._currentGraphicDevice, "port") && (objj_msgSend(self._currentGraphicDevice, "port") != "-1")) ? objj_msgSend(self._currentGraphicDevice, "port") : "auto";
    switch (objj_msgSend(self._currentGraphicDevice, "type"))
    {
        case TNLibvirtDeviceGraphicTypeVNC:
            objj_msgSend(self.imageIcon, "setImage:", TNGraphicDeviceDataViewIconVNC);
            break;
        case TNLibvirtDeviceGraphicTypeRDP:
            objj_msgSend(self.imageIcon, "setImage:", TNGraphicDeviceDataViewIconRDP);
            break;
        case TNLibvirtDeviceGraphicTypeSPICE:
            objj_msgSend(self.imageIcon, "setImage:", TNGraphicDeviceDataViewIconSPICE);
            break;
    }
    objj_msgSend(self.fieldKeymap, "setStringValue:", objj_msgSend(self._currentGraphicDevice, "keymap"));
    objj_msgSend(self.fieldListen, "setStringValue:", listenString);
    objj_msgSend(self.fieldPassword, "setStringValue:", objj_msgSend(self._currentGraphicDevice, "password") ? "Protected" : "Not protected");
}
,["void","TNLibvirtDeviceGraphic"]), new objj_method(sel_getUid("initWithCoder:"), function $TNGraphicDeviceDataView__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNGraphicDeviceDataView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self.fieldKeymap = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldKeymap");
        self.fieldListen = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldListen");
        self.fieldPassword = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldPassword");
        self.labelKeymap = objj_msgSend(aCoder, "decodeObjectForKey:", "labelKeymap");
        self.labelListen = objj_msgSend(aCoder, "decodeObjectForKey:", "labelListen");
        self.labelPassword = objj_msgSend(aCoder, "decodeObjectForKey:", "labelPassword");
        self.imageIcon = objj_msgSend(aCoder, "decodeObjectForKey:", "imageIcon");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNGraphicDeviceDataView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNGraphicDeviceDataView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldKeymap, "fieldKeymap");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldListen, "fieldListen");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldPassword, "fieldPassword");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelKeymap, "labelKeymap");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelListen, "labelListen");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelPassword, "labelPassword");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.imageIcon, "imageIcon");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNGraphicDeviceDataView__initialize(self, _cmd)
{
    TNGraphicDeviceDataViewIconVNC = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNGraphicDeviceDataView), "pathForResource:", "icon-vnc.png"), CGSizeMake(26.0, 26.0));
    TNGraphicDeviceDataViewIconRDP = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNGraphicDeviceDataView), "pathForResource:", "icon-rdp.png"), CGSizeMake(26.0, 26.0));
    TNGraphicDeviceDataViewIconSPICE = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNGraphicDeviceDataView), "pathForResource:", "icon-spice.png"), CGSizeMake(26.0, 26.0));
}
,["void"])]);
}p;25;TNInputDeviceController.jt;4484;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;22;AppKit/CPPopUpButton.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.ji;28;Model/TNLibvirtDeviceInput.jt;4285;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("Model/TNLibvirtDeviceInput.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
{var the_class = objj_allocateClassPair(CPObject, "TNInputDeviceController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonOK"), new objj_ivar("mainPopover"), new objj_ivar("buttonBus"), new objj_ivar("buttonType"), new objj_ivar("_table"), new objj_ivar("_delegate"), new objj_ivar("_inputDevice")]);
       
       

       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("table"), function $TNInputDeviceController__table(self, _cmd)
{
return self._table;
}
,["CPTableView"]), new objj_method(sel_getUid("setTable:"), function $TNInputDeviceController__setTable_(self, _cmd, newValue)
{
self._table = newValue;
}
,["void","CPTableView"]), new objj_method(sel_getUid("delegate"), function $TNInputDeviceController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNInputDeviceController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("inputDevice"), function $TNInputDeviceController__inputDevice(self, _cmd)
{
return self._inputDevice;
}
,["TNLibvirtDeviceInput"]), new objj_method(sel_getUid("setInputDevice:"), function $TNInputDeviceController__setInputDevice_(self, _cmd, newValue)
{
self._inputDevice = newValue;
}
,["void","TNLibvirtDeviceInput"]), new objj_method(sel_getUid("awakeFromCib"), function $TNInputDeviceController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.buttonType, "removeAllItems");
    objj_msgSend(self.buttonBus, "removeAllItems");
    objj_msgSend(self.buttonType, "addItemsWithTitles:", TNLibvirtDeviceInputTypes);
    objj_msgSend(self.buttonBus, "addItemsWithTitles:", TNLibvirtDeviceInputBuses);
}
,["void"]), new objj_method(sel_getUid("update"), function $TNInputDeviceController__update(self, _cmd)
{
    objj_msgSend(self.buttonType, "selectItemWithTitle:", objj_msgSend(self._inputDevice, "type"));
    objj_msgSend(self.buttonBus, "selectItemWithTitle:", objj_msgSend(self._inputDevice, "bus"));
}
,["void"]), new objj_method(sel_getUid("save:"), function $TNInputDeviceController__save_(self, _cmd, aSender)
{
    objj_msgSend(self._inputDevice, "setType:", objj_msgSend(self.buttonType, "title"));
    objj_msgSend(self._inputDevice, "setBus:", objj_msgSend(self.buttonBus, "title"));
    if (!objj_msgSend(objj_msgSend(self._table, "dataSource"), "containsObject:", self._inputDevice))
        objj_msgSend(objj_msgSend(self._table, "dataSource"), "addObject:", self._inputDevice);
    objj_msgSend(self._delegate, "setDefinitionEdited:", YES);
    objj_msgSend(self._table, "reloadData");
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("openWindow:"), function $TNInputDeviceController__openWindow_(self, _cmd, aSender)
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
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonOK);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNInputDeviceController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNInputDeviceController), comment);
}p;23;TNInputDeviceDataView.jt;3436;@STATIC;1.0;I;23;Foundation/Foundation.ji;29;../../Views/TNBasicDataView.ji;28;Model/TNLibvirtDeviceInput.jt;3322;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("../../Views/TNBasicDataView.j", YES);
objj_executeFile("Model/TNLibvirtDeviceInput.j", YES);
var TNInputDeviceDataViewIconTablet,
    TNInputDeviceDataViewIconMouse;
{var the_class = objj_allocateClassPair(TNBasicDataView, "TNInputDeviceDataView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("fieldType"), new objj_ivar("fieldBus"), new objj_ivar("labelType"), new objj_ivar("labelBus"), new objj_ivar("imageIcon"), new objj_ivar("_currentInputDevice")]);
       
       

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setObjectValue:"), function $TNInputDeviceDataView__setObjectValue_(self, _cmd, anInputDevice)
{
    self._currentInputDevice = anInputDevice;
    objj_msgSend(self.imageIcon, "setImage:", (objj_msgSend(self._currentInputDevice, "type") == TNLibvirtDeviceInputTypesTypeTablet) ? TNInputDeviceDataViewIconTablet : TNInputDeviceDataViewIconMouse);
    objj_msgSend(self.fieldType, "setStringValue:", objj_msgSend(self._currentInputDevice, "type"));
    objj_msgSend(self.fieldBus, "setStringValue:", objj_msgSend(self._currentInputDevice, "bus"));
}
,["void","TNLibvirtDeviceInput"]), new objj_method(sel_getUid("initWithCoder:"), function $TNInputDeviceDataView__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNInputDeviceDataView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self.fieldType = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldType");
        self.fieldBus = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldBus");
        self.labelType = objj_msgSend(aCoder, "decodeObjectForKey:", "labelType");
        self.labelBus = objj_msgSend(aCoder, "decodeObjectForKey:", "labelBus");
        self.imageIcon = objj_msgSend(aCoder, "decodeObjectForKey:", "imageIcon");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNInputDeviceDataView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNInputDeviceDataView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldType, "fieldType");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldBus, "fieldBus");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelType, "labelType");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelBus, "labelBus");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.imageIcon, "imageIcon");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNInputDeviceDataView__initialize(self, _cmd)
{
    TNInputDeviceDataViewIconTablet = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNInputDeviceDataView), "pathForResource:", "icon-tablet.png"), CGSizeMake(26.0, 26.0));
    TNInputDeviceDataViewIconMouse = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNInputDeviceDataView), "pathForResource:", "icon-mouse.png"), CGSizeMake(26.0, 26.0));
}
,["void"])]);
}p;23;TNInterfaceController.jt;30776;@STATIC;1.0;I;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;22;AppKit/CPPopUpButton.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;23;Foundation/Foundation.jI;29;TNKit/TNTableViewDataSource.jI;36;StropheCappuccino/TNStropheContact.jI;35;StropheCappuccino/TNStropheStanza.ji;32;Model/TNLibvirtDeviceInterface.jt;30457;objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("StropheCappuccino/TNStropheContact.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("Model/TNLibvirtDeviceInterface.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelTypeHypervisorNetwork = "archipel:hypervisor:network",
    TNArchipelTypeHypervisorNuageNetwork = "archipel:hypervisor:nuage:network",
    TNArchipelTypeHypervisorNetworkGetNames = "getnames",
    TNArchipelTypeHypervisorNetworkBridges = "bridges",
    TNArchipelTypeHypervisorNetworkNICs = "getnics",
    TNArchipelTypeHypervisorNetworkGetNWFilters = "getnwfilters",
    TNArchipelTypeHypervisorNuageNetworkGetNames = "getnames";
{var the_class = objj_allocateClassPair(CPObject, "TNInterfaceController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonBarNetworkParameters"), new objj_ivar("checkBoxBandwidthInbound"), new objj_ivar("checkBoxBandwidthOutbound"), new objj_ivar("mainPopover"), new objj_ivar("buttonModel"), new objj_ivar("buttonNetworkFilter"), new objj_ivar("buttonSource"), new objj_ivar("buttonType"), new objj_ivar("tableViewNetworkFilterParameters"), new objj_ivar("fieldBandwidthInboundAverage"), new objj_ivar("fieldBandwidthInboundBurst"), new objj_ivar("fieldBandwidthInboundPeak"), new objj_ivar("fieldBandwidthOutboundAverage"), new objj_ivar("fieldBandwidthOutboundBurst"), new objj_ivar("fieldBandwidthOutboundPeak"), new objj_ivar("fieldErrorMessage"), new objj_ivar("fieldMac"), new objj_ivar("fieldNuageInterfaceIP"), new objj_ivar("labelNuageInterfaceIP"), new objj_ivar("viewNWFilterParametersContainer"), new objj_ivar("buttonOK"), new objj_ivar("_delegate"), new objj_ivar("_table"), new objj_ivar("_nic"), new objj_ivar("_metadata"), new objj_ivar("_entity"), new objj_ivar("_datasourceNWFilterParameters")]);
       
       


       
       








       
       









objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $TNInterfaceController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNInterfaceController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("table"), function $TNInterfaceController__table(self, _cmd)
{
return self._table;
}
,["CPTableView"]), new objj_method(sel_getUid("setTable:"), function $TNInterfaceController__setTable_(self, _cmd, newValue)
{
self._table = newValue;
}
,["void","CPTableView"]), new objj_method(sel_getUid("nic"), function $TNInterfaceController__nic(self, _cmd)
{
return self._nic;
}
,["TNLibvirtDeviceInterface"]), new objj_method(sel_getUid("setNic:"), function $TNInterfaceController__setNic_(self, _cmd, newValue)
{
self._nic = newValue;
}
,["void","TNLibvirtDeviceInterface"]), new objj_method(sel_getUid("metadata"), function $TNInterfaceController__metadata(self, _cmd)
{
return self._metadata;
}
,["TNLibvirtDomainMetadata"]), new objj_method(sel_getUid("setMetadata:"), function $TNInterfaceController__setMetadata_(self, _cmd, newValue)
{
self._metadata = newValue;
}
,["void","TNLibvirtDomainMetadata"]), new objj_method(sel_getUid("entity"), function $TNInterfaceController__entity(self, _cmd)
{
return self._entity;
}
,["TNStropheContact"]), new objj_method(sel_getUid("setEntity:"), function $TNInterfaceController__setEntity_(self, _cmd, newValue)
{
self._entity = newValue;
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("awakeFromCib"), function $TNInterfaceController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.viewNWFilterParametersContainer, "setBorderedWithHexColor:", "#C0C7D2");
    objj_msgSend(self.buttonType, "removeAllItems");
    objj_msgSend(self.buttonModel, "removeAllItems");
    objj_msgSend(self.buttonSource, "removeAllItems");
    objj_msgSend(self.buttonNetworkFilter, "removeAllItems");
    objj_msgSend(self.buttonModel, "addItemsWithTitles:", TNLibvirtDeviceInterfaceModels);
    objj_msgSend(self.buttonType, "addItemsWithTitles:", TNLibvirtDeviceInterfaceTypes);
    var addButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(addButton, "setTarget:", self);
    objj_msgSend(addButton, "setAction:", sel_getUid("addNWFilterParameter:"));
    var removeButton = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(removeButton, "setTarget:", self);
    objj_msgSend(removeButton, "setAction:", sel_getUid("removeNWFilterParameter:"));
    objj_msgSend(self.buttonBarNetworkParameters, "setButtons:", [addButton, removeButton]);
}
,["void"]), new objj_method(sel_getUid("updateAfterPermissionChanged"), function $TNInterfaceController__updateAfterPermissionChanged(self, _cmd)
{
    objj_msgSend(self._delegate, "setControl:enabledAccordingToPermissions:", self.buttonType, ["network_getnames", "network_bridges"])
}
,["void"]), new objj_method(sel_getUid("update"), function $TNInterfaceController__update(self, _cmd)
{
    objj_msgSend(self.fieldErrorMessage, "setStringValue:", "");
    objj_msgSend(self.buttonSource, "removeAllItems");
    objj_msgSend(self.buttonNetworkFilter, "removeAllItems");
    objj_msgSend(self.buttonType, "selectItemWithTitle:", objj_msgSend(self._nic, "type"));
    objj_msgSend(self, "performNicTypeChanged:", nil);
    objj_msgSend(self, "updateAfterPermissionChanged");
    objj_msgSend(self.buttonModel, "selectItemWithTitle:", objj_msgSend(self._nic, "model"));
    objj_msgSend(self.fieldMac, "setStringValue:", objj_msgSend(self._nic, "MAC"));
    self._datasourceNWFilterParameters = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self.tableViewNetworkFilterParameters, "setDataSource:", self._datasourceNWFilterParameters);
    objj_msgSend(self._datasourceNWFilterParameters, "setTable:", self.tableViewNetworkFilterParameters);
    objj_msgSend(self._datasourceNWFilterParameters, "removeAllObjects");
    if (objj_msgSend(self._nic, "filterref"))
        objj_msgSend(self._datasourceNWFilterParameters, "setContent:", objj_msgSend(objj_msgSend(self._nic, "filterref"), "parameters"));
    objj_msgSend(self.tableViewNetworkFilterParameters, "reloadData");
    objj_msgSend(self.checkBoxBandwidthInbound, "setState:", objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "inbound") ? CPOnState : CPOffState);
    objj_msgSend(self, "inboundLimitChange:", nil);
    objj_msgSend(self.checkBoxBandwidthOutbound, "setState:", objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "outbound") ? CPOnState : CPOffState);
    objj_msgSend(self, "outboundLimitChange:", nil);
    objj_msgSend(self.fieldBandwidthInboundAverage, "setStringValue:", objj_msgSend(objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "inbound"), "average") || "");
    objj_msgSend(self.fieldBandwidthInboundPeak, "setStringValue:", objj_msgSend(objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "inbound"), "peak") || "");
    objj_msgSend(self.fieldBandwidthInboundBurst, "setStringValue:", objj_msgSend(objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "inbound"), "burst") || "");
    objj_msgSend(self.fieldBandwidthOutboundAverage, "setStringValue:", objj_msgSend(objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "outbound"), "average") || "");
    objj_msgSend(self.fieldBandwidthOutboundPeak, "setStringValue:", objj_msgSend(objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "outbound"), "peak") || "");
    objj_msgSend(self.fieldBandwidthOutboundBurst, "setStringValue:", objj_msgSend(objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "outbound"), "burst") || "");
}
,["void"]), new objj_method(sel_getUid("addNWFilterParameter:"), function $TNInterfaceController__addNWFilterParameter_(self, _cmd, aSender)
{
    objj_msgSend(self._datasourceNWFilterParameters, "addObject:", objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", "parameter", "name", "value", "value"));
    objj_msgSend(self.tableViewNetworkFilterParameters, "reloadData");
}
,["void","id"]), new objj_method(sel_getUid("removeNWFilterParameter:"), function $TNInterfaceController__removeNWFilterParameter_(self, _cmd, aSender)
{
    var index = objj_msgSend(self.tableViewNetworkFilterParameters, "selectedRow");
    if (index != -1)
        objj_msgSend(self._datasourceNWFilterParameters, "removeObjectAtIndex:", index);
    objj_msgSend(self.tableViewNetworkFilterParameters, "reloadData");
}
,["void","id"]), new objj_method(sel_getUid("save:"), function $TNInterfaceController__save_(self, _cmd, aSender)
{
    objj_msgSend(self._nic, "setMAC:", objj_msgSend(self.fieldMac, "stringValue"));
    objj_msgSend(self._nic, "setModel:", objj_msgSend(self.buttonModel, "title"));
    objj_msgSend(self._nic, "setType:", objj_msgSend(self.buttonType, "title"));
    if (!objj_msgSend(self._nic, "source"))
    {
        var source = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceSource, "alloc"), "init");
        objj_msgSend(self._nic, "setSource:", source)
    }
    switch (objj_msgSend(self._nic, "type"))
    {
        case TNLibvirtDeviceInterfaceTypeNuage:
            objj_msgSend(objj_msgSend(self._nic, "source"), "setNetwork:", nil);
            objj_msgSend(objj_msgSend(self._nic, "source"), "setBridge:", "auto");
            objj_msgSend(objj_msgSend(self._nic, "source"), "setDevice:", nil);
            objj_msgSend(objj_msgSend(self._nic, "source"), "setMode:", nil);
            objj_msgSend(self._nic, "setNuageNetworkName:", objj_msgSend(self.buttonSource, "title"));
            objj_msgSend(self._nic, "setNuageNetworkInterfaceIP:", objj_msgSend(self.fieldNuageInterfaceIP, "stringValue"));
            break;
        case TNLibvirtDeviceInterfaceTypeNetwork:
            objj_msgSend(objj_msgSend(self._nic, "source"), "setNetwork:", objj_msgSend(self.buttonSource, "title"));
            objj_msgSend(objj_msgSend(self._nic, "source"), "setBridge:", nil);
            objj_msgSend(objj_msgSend(self._nic, "source"), "setDevice:", nil);
            objj_msgSend(objj_msgSend(self._nic, "source"), "setMode:", nil);
            objj_msgSend(self._nic, "setTarget:", nil);
            break;
        case TNLibvirtDeviceInterfaceTypeBridge:
            objj_msgSend(objj_msgSend(self._nic, "source"), "setNetwork:", nil);
            objj_msgSend(objj_msgSend(self._nic, "source"), "setBridge:", objj_msgSend(self.buttonSource, "title"));
            objj_msgSend(objj_msgSend(self._nic, "source"), "setDevice:", nil);
            objj_msgSend(objj_msgSend(self._nic, "source"), "setMode:", nil);
            objj_msgSend(self._nic, "setTarget:", nil);
            break;
        case TNLibvirtDeviceInterfaceTypeUser:
            objj_msgSend(objj_msgSend(self._nic, "source"), "setNetwork:", nil);
            objj_msgSend(objj_msgSend(self._nic, "source"), "setBridge:", nil);
            objj_msgSend(objj_msgSend(self._nic, "source"), "setDevice:", nil);
            objj_msgSend(objj_msgSend(self._nic, "source"), "setMode:", nil);
            objj_msgSend(self._nic, "setTarget:", nil);
            break;
        case TNLibvirtDeviceInterfaceTypeDirect:
            objj_msgSend(objj_msgSend(self._nic, "source"), "setNetwork:", nil);
            objj_msgSend(objj_msgSend(self._nic, "source"), "setBridge:", nil);
            objj_msgSend(objj_msgSend(self._nic, "source"), "setDevice:", objj_msgSend(self.buttonSource, "title"));
            objj_msgSend(objj_msgSend(self._nic, "source"), "setMode:", TNLibvirtDeviceInterfaceSourceModeBridge);
            objj_msgSend(self._nic, "setTarget:", nil);
            break;
    }
    if (objj_msgSend(self.buttonNetworkFilter, "title") != "None")
    {
        var filter = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceFilterRef, "alloc"), "init");
        objj_msgSend(filter, "setName:", objj_msgSend(self.buttonNetworkFilter, "title"));
        objj_msgSend(filter, "setParameters:", objj_msgSend(self._datasourceNWFilterParameters, "content"));
        objj_msgSend(self._nic, "setFilterref:", filter);
    }
    else
    {
        objj_msgSend(self._nic, "setFilterref:", nil);
    }
    if (objj_msgSend(self.checkBoxBandwidthInbound, "state") == CPOnState)
    {
        if (!objj_msgSend(self._nic, "bandwidth"))
            objj_msgSend(self._nic, "setBandwidth:", objj_msgSend(TNLibvirtDeviceInterfaceBandwidth, "defaultBandwidth"));
        if (!objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "inbound"))
            objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "setInbound:", objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceBandwidthInbound, "alloc"), "init"));
        if (objj_msgSend(self.fieldBandwidthInboundAverage, "stringValue") == "")
        {
            objj_msgSend(self.fieldErrorMessage, "setStringValue:", CPLocalizedString("You must set at least the \"average\" value for inbound limit", "You must set at least the \"average\" value for inbound limit"));
            return;
        }
        objj_msgSend(objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "inbound"), "setAverage:", objj_msgSend(self.fieldBandwidthInboundAverage, "intValue"));
        objj_msgSend(objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "inbound"), "setPeak:", objj_msgSend(self.fieldBandwidthInboundPeak, "intValue"));
        objj_msgSend(objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "inbound"), "setBurst:", objj_msgSend(self.fieldBandwidthInboundBurst, "intValue"));
    }
    else
    {
        objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "setInbound:", nil);
    }
    if (objj_msgSend(self.checkBoxBandwidthOutbound, "state") == CPOnState)
    {
        if (!objj_msgSend(self._nic, "bandwidth"))
            objj_msgSend(self._nic, "setBandwidth:", objj_msgSend(TNLibvirtDeviceInterfaceBandwidth, "defaultBandwidth"));
        if (!objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "outbound"))
            objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "setOutbound:", objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceBandwidthOutbound, "alloc"), "init"));
        if (objj_msgSend(self.fieldBandwidthOutboundAverage, "stringValue") == "")
        {
            objj_msgSend(self.fieldErrorMessage, "setStringValue:", CPLocalizedString("You must set at least the \"average\" value for outbound limit", "You must set at least the \"average\" value for outbound limit"));
            return;
        }
        objj_msgSend(objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "outbound"), "setAverage:", objj_msgSend(self.fieldBandwidthOutboundAverage, "intValue"));
        objj_msgSend(objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "outbound"), "setPeak:", objj_msgSend(self.fieldBandwidthOutboundPeak, "intValue"));
        objj_msgSend(objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "outbound"), "setBurst:", objj_msgSend(self.fieldBandwidthOutboundBurst, "intValue"));
    }
    else
    {
        objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "setOutbound:", nil);
    }
    if (!objj_msgSend(objj_msgSend(self._table, "dataSource"), "containsObject:", self._nic))
        objj_msgSend(objj_msgSend(self._table, "dataSource"), "addObject:", self._nic);
    objj_msgSend(self._delegate, "setDefinitionEdited:", YES);
    objj_msgSend(self._table, "reloadData");
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("performNicTypeChanged:"), function $TNInterfaceController__performNicTypeChanged_(self, _cmd, aSender)
{
    var nicType = objj_msgSend(self.buttonType, "title");
    switch (nicType)
    {
        case TNLibvirtDeviceInterfaceTypeNuage:
            objj_msgSend(self.buttonSource, "removeAllItems");
            objj_msgSend(self, "getHypervisorNuageNetworks");
            objj_msgSend(self.buttonSource, "setEnabled:", YES);
            objj_msgSend(self.fieldNuageInterfaceIP, "setStringValue:", "");
            objj_msgSend(self.fieldNuageInterfaceIP, "setHidden:", NO);
            objj_msgSend(self.labelNuageInterfaceIP, "setHidden:", NO);
            break;
        case TNLibvirtDeviceInterfaceTypeNetwork:
            objj_msgSend(self.fieldNuageInterfaceIP, "setHidden:", YES);
            objj_msgSend(self.buttonSource, "removeAllItems");
            if (objj_msgSend(self._delegate, "currentEntityHasPermission:", "network_getnames"))
            {
                objj_msgSend(self._delegate, "setControl:enabledAccordingToPermission:", self.buttonSource, "network_getnames");
                objj_msgSend(self, "getHypervisorNetworks");
            }
            else
                objj_msgSend(self.buttonSource, "setEnabled:", NO);
            break;
        case TNLibvirtDeviceInterfaceTypeBridge:
            objj_msgSend(self.fieldNuageInterfaceIP, "setHidden:", YES);
            objj_msgSend(self.labelNuageInterfaceIP, "setHidden:", YES);
            if (objj_msgSend(self._delegate, "currentEntityHasPermission:", "network_bridges"))
            {
                objj_msgSend(self._delegate, "setControl:enabledAccordingToPermission:", self.buttonSource, "network_bridges");
                objj_msgSend(self.buttonSource, "removeAllItems");
                objj_msgSend(self, "getBridges");
            }
            else
                objj_msgSend(self.buttonSource, "setEnabled:", NO)
            break;
        case TNLibvirtDeviceInterfaceTypeDirect:
            objj_msgSend(self.fieldNuageInterfaceIP, "setHidden:", YES);
            objj_msgSend(self.labelNuageInterfaceIP, "setHidden:", YES);
            objj_msgSend(self.buttonSource, "removeAllItems");
            if (objj_msgSend(self._delegate, "currentEntityHasPermission:", "network_getnics"))
            {
                objj_msgSend(self._delegate, "setControl:enabledAccordingToPermission:", self.buttonSource, "network_getnics");
                objj_msgSend(self, "getNics");
            }
            else
                objj_msgSend(self.buttonSource, "setEnabled:", NO);
            break;
        case TNLibvirtDeviceInterfaceTypeUser:
            objj_msgSend(self.fieldNuageInterfaceIP, "setHidden:", YES);
            objj_msgSend(self.labelNuageInterfaceIP, "setHidden:", YES);
            objj_msgSend(self.buttonSource, "removeAllItems");
            objj_msgSend(self.buttonSource, "setEnabled:", NO);
            break;
    }
    objj_msgSend(self, "getHypervisorNWFilters");
}
,["id","id"]), new objj_method(sel_getUid("openWindow:"), function $TNInterfaceController__openWindow_(self, _cmd, aSender)
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
        objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonOK);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNInterfaceController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
}
,["id","id"]), new objj_method(sel_getUid("inboundLimitChange:"), function $TNInterfaceController__inboundLimitChange_(self, _cmd, aSender)
{
    if (objj_msgSend(self.checkBoxBandwidthInbound, "state") == CPOnState)
    {
        objj_msgSend(self.fieldBandwidthInboundAverage, "setEnabled:", YES);
        objj_msgSend(self.fieldBandwidthInboundPeak, "setEnabled:", YES);
        objj_msgSend(self.fieldBandwidthInboundBurst, "setEnabled:", YES);
        if (!objj_msgSend(self._nic, "bandwidth"))
            objj_msgSend(self._nic, "setBandwidth:", objj_msgSend(TNLibvirtDeviceInterfaceBandwidth, "defaultBandwidth"));
    }
    else
    {
        objj_msgSend(self.fieldBandwidthInboundAverage, "setEnabled:", NO);
        objj_msgSend(self.fieldBandwidthInboundPeak, "setEnabled:", NO);
        objj_msgSend(self.fieldBandwidthInboundBurst, "setEnabled:", NO);
        objj_msgSend(self.fieldBandwidthInboundAverage, "setStringValue:", "");
        objj_msgSend(self.fieldBandwidthInboundPeak, "setStringValue:", "");
        objj_msgSend(self.fieldBandwidthInboundBurst, "setStringValue:", "");
        if (!objj_msgSend(self._nic, "bandwidth"))
            objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "setInbound:", nil);
    }
}
,["id","id"]), new objj_method(sel_getUid("outboundLimitChange:"), function $TNInterfaceController__outboundLimitChange_(self, _cmd, aSender)
{
    if (objj_msgSend(self.checkBoxBandwidthOutbound, "state") == CPOnState)
    {
        objj_msgSend(self.fieldBandwidthOutboundAverage, "setEnabled:", YES);
        objj_msgSend(self.fieldBandwidthOutboundPeak, "setEnabled:", YES);
        objj_msgSend(self.fieldBandwidthOutboundBurst, "setEnabled:", YES);
        if (!objj_msgSend(self._nic, "bandwidth"))
            objj_msgSend(self._nic, "setBandwidth:", objj_msgSend(TNLibvirtDeviceInterfaceBandwidth, "defaultBandwidth"));
    }
    else
    {
        objj_msgSend(self.fieldBandwidthOutboundAverage, "setEnabled:", NO);
        objj_msgSend(self.fieldBandwidthOutboundPeak, "setEnabled:", NO);
        objj_msgSend(self.fieldBandwidthOutboundBurst, "setEnabled:", NO);
        objj_msgSend(self.fieldBandwidthOutboundAverage, "setStringValue:", "");
        objj_msgSend(self.fieldBandwidthOutboundPeak, "setStringValue:", "");
        objj_msgSend(self.fieldBandwidthOutboundBurst, "setStringValue:", "");
        if (!objj_msgSend(self._nic, "bandwidth"))
            objj_msgSend(objj_msgSend(self._nic, "bandwidth"), "setOutbound:", nil);
    }
}
,["id","id"]), new objj_method(sel_getUid("getHypervisorNetworks"), function $TNInterfaceController__getHypervisorNetworks(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorNetwork});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorNetworkGetNames});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveHypervisorNetworks:"), self);
}
,["void"]), new objj_method(sel_getUid("_didReceiveHypervisorNetworks:"), function $TNInterfaceController___didReceiveHypervisorNetworks_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var names = objj_msgSend(aStanza, "childrenWithName:", "network");
        for (var i = 0; i < objj_msgSend(names, "count"); i++)
        {
            var name = objj_msgSend(objj_msgSend(names, "objectAtIndex:", i), "valueForAttribute:", "name");
            objj_msgSend(self.buttonSource, "addItemWithTitle:", name);
        }
        objj_msgSend(self.buttonSource, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._nic, "source"), "network"));
        if (!objj_msgSend(self.buttonSource, "selectedItem"))
            objj_msgSend(self.buttonSource, "selectItemAtIndex:", 0);
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("getHypervisorNuageNetworks"), function $TNInterfaceController__getHypervisorNuageNetworks(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorNuageNetwork});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorNuageNetworkGetNames});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveHypervisorNuageNetworks:"), self);
}
,["void"]), new objj_method(sel_getUid("_didReceiveHypervisorNuageNetworks:"), function $TNInterfaceController___didReceiveHypervisorNuageNetworks_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var names = objj_msgSend(aStanza, "childrenWithName:", "network");
        for (var i = 0; i < objj_msgSend(names, "count"); i++)
        {
            var name = objj_msgSend(objj_msgSend(names, "objectAtIndex:", i), "valueForAttribute:", "name");
            objj_msgSend(self.buttonSource, "addItemWithTitle:", name);
        }
        objj_msgSend(self.buttonSource, "selectItemWithTitle:", objj_msgSend(self._nic, "nuageNetworkName"));
        objj_msgSend(self.fieldNuageInterfaceIP, "setStringValue:", objj_msgSend(self._nic, "nuageNetworkInterfaceIP"));
        if (!objj_msgSend(self.buttonSource, "selectedItem"))
            objj_msgSend(self.buttonSource, "selectItemAtIndex:", 0);
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("getBridges"), function $TNInterfaceController__getBridges(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorNetwork});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorNetworkBridges});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveBridges:"), self);
}
,["void"]), new objj_method(sel_getUid("_didReceiveBridges:"), function $TNInterfaceController___didReceiveBridges_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var bridges = objj_msgSend(aStanza, "childrenWithName:", "bridge");
        objj_msgSend(self.buttonSource, "removeAllItems");
        for (var i = 0; i < objj_msgSend(bridges, "count"); i++)
        {
            var bridge = objj_msgSend(objj_msgSend(bridges, "objectAtIndex:", i), "valueForAttribute:", "name");
            objj_msgSend(self.buttonSource, "addItemWithTitle:", bridge);
        }
        objj_msgSend(self.buttonSource, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._nic, "source"), "bridge"));
        if (!objj_msgSend(self.buttonSource, "selectedItem"))
            objj_msgSend(self.buttonSource, "selectItemAtIndex:", 0);
    }
    else
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","id"]), new objj_method(sel_getUid("getNics"), function $TNInterfaceController__getNics(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorNetwork});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorNetworkNICs});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveNics:"), self);
}
,["void"]), new objj_method(sel_getUid("_didReceiveNics:"), function $TNInterfaceController___didReceiveNics_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var hypervisorNics = objj_msgSend(aStanza, "childrenWithName:", "nic");
        objj_msgSend(self.buttonSource, "removeAllItems");
        for (var i = 0; i < objj_msgSend(hypervisorNics, "count"); i++)
        {
            var hypervisorNic = objj_msgSend(objj_msgSend(hypervisorNics, "objectAtIndex:", i), "valueForAttribute:", "name");
            objj_msgSend(self.buttonSource, "addItemWithTitle:", hypervisorNic);
        }
        objj_msgSend(self.buttonSource, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._nic, "source"), "device"));
        if (!objj_msgSend(self.buttonSource, "selectedItem"))
            objj_msgSend(self.buttonSource, "selectItemAtIndex:", 0);
    }
    else
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","id"]), new objj_method(sel_getUid("getHypervisorNWFilters"), function $TNInterfaceController__getHypervisorNWFilters(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorNetwork});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorNetworkGetNWFilters});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveHypervisorNWFilters:"), self);
}
,["void"]), new objj_method(sel_getUid("_didReceiveHypervisorNWFilters:"), function $TNInterfaceController___didReceiveHypervisorNWFilters_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var filters = objj_msgSend(aStanza, "childrenWithName:", "filter");
        objj_msgSend(self.buttonNetworkFilter, "removeAllItems");
        objj_msgSend(self.buttonNetworkFilter, "addItemWithTitle:", "None")
        for (var i = 0; i < objj_msgSend(filters, "count"); i++)
        {
            var filter = objj_msgSend(filters, "objectAtIndex:", i),
                name = objj_msgSend(filter, "valueForAttribute:", "name");
            objj_msgSend(self.buttonNetworkFilter, "addItemWithTitle:", name);
        }
        if (objj_msgSend(objj_msgSend(self._nic, "filterref"), "name"))
            objj_msgSend(self.buttonNetworkFilter, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._nic, "filterref"), "name"));
        else
            objj_msgSend(self.buttonNetworkFilter, "selectItemWithTitle:", "None");
    }
    else
    {
        objj_msgSend(self.buttonNetworkFilter, "addItemWithTitle:", "None");
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
}
,["void","TNStropheStanza"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNInterfaceController), comment);
}p;27;TNInterfaceDeviceDataView.jt;9684;@STATIC;1.0;I;23;Foundation/Foundation.ji;29;../../Views/TNBasicDataView.ji;32;Model/TNLibvirtDeviceInterface.ji;41;Model/TNLibvirtDeviceInterfaceFilterRef.ji;38;Model/TNLibvirtDeviceInterfaceSource.ji;38;Model/TNLibvirtDeviceInterfaceTarget.jt;9434;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("../../Views/TNBasicDataView.j", YES);
objj_executeFile("Model/TNLibvirtDeviceInterface.j", YES);
objj_executeFile("Model/TNLibvirtDeviceInterfaceFilterRef.j", YES);
objj_executeFile("Model/TNLibvirtDeviceInterfaceSource.j", YES);
objj_executeFile("Model/TNLibvirtDeviceInterfaceTarget.j", YES);
var TNInterfaceDeviceDataViewIconNetwork,
    TNInterfaceDeviceDataViewIconNuage,
    TNInterfaceDeviceDataViewIconUser,
    TNInterfaceDeviceDataViewIconBridge,
    TNInterfaceDeviceDataViewIconDirect;
{var the_class = objj_allocateClassPair(TNBasicDataView, "TNInterfaceDeviceDataView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("imageIcon"), new objj_ivar("fieldFilter"), new objj_ivar("fieldInLimit"), new objj_ivar("fieldMAC"), new objj_ivar("fieldModel"), new objj_ivar("fieldOutLimit"), new objj_ivar("fieldSource"), new objj_ivar("fieldType"), new objj_ivar("labelFilter"), new objj_ivar("labelInLimit"), new objj_ivar("labelModel"), new objj_ivar("labelOutLimit"), new objj_ivar("labelSource"), new objj_ivar("labelType"), new objj_ivar("_currentInterface")]);
       
       

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setObjectValue:"), function $TNInterfaceDeviceDataView__setObjectValue_(self, _cmd, anInterface)
{
    self._currentInterface = anInterface;
    switch (objj_msgSend(self._currentInterface, "type"))
    {
        case TNLibvirtDeviceInterfaceTypeNuage:
            objj_msgSend(self.imageIcon, "setImage:", TNInterfaceDeviceDataViewIconNuage);
            break;
        case TNLibvirtDeviceInterfaceTypeNetwork:
            objj_msgSend(self.imageIcon, "setImage:", TNInterfaceDeviceDataViewIconNetwork);
            break;
        case TNLibvirtDeviceInterfaceTypeBridge:
            objj_msgSend(self.imageIcon, "setImage:", TNInterfaceDeviceDataViewIconBridge);
            break;
        case TNLibvirtDeviceInterfaceTypeUser:
            objj_msgSend(self.imageIcon, "setImage:", TNInterfaceDeviceDataViewIconUser);
            break;
        case TNLibvirtDeviceInterfaceTypeDirect:
            objj_msgSend(self.imageIcon, "setImage:", TNInterfaceDeviceDataViewIconDirect);
            break;
    }
    if (objj_msgSend(self._currentInterface, "type") == TNLibvirtDeviceInterfaceTypeNuage && objj_msgSend(self._currentInterface, "nuageNetworkInterfaceIP"))
        objj_msgSend(self.fieldMAC, "setStringValue:", objj_msgSend(objj_msgSend(self._currentInterface, "MAC"), "uppercaseString") + " (" + objj_msgSend(self._currentInterface, "nuageNetworkInterfaceIP") + ")");
    else
        objj_msgSend(self.fieldMAC, "setStringValue:", objj_msgSend(objj_msgSend(self._currentInterface, "MAC"), "uppercaseString"));
    if (objj_msgSend(self._currentInterface, "type") == TNLibvirtDeviceInterfaceTypeNuage)
        objj_msgSend(self.fieldType, "setStringValue:", objj_msgSend(objj_msgSend(self._currentInterface, "type"), "capitalizedString") + " (" + objj_msgSend(self._currentInterface, "nuageNetworkName") + ")");
    else
        objj_msgSend(self.fieldType, "setStringValue:", objj_msgSend(self._currentInterface, "type"));
    objj_msgSend(self.fieldModel, "setStringValue:", objj_msgSend(self._currentInterface, "model"));
    objj_msgSend(self.fieldSource, "setStringValue:", objj_msgSend(objj_msgSend(self._currentInterface, "source"), "sourceObject"));
    objj_msgSend(self.fieldFilter, "setStringValue:", objj_msgSend(objj_msgSend(self._currentInterface, "filterref"), "name") || "None");
    objj_msgSend(self.fieldInLimit, "setHidden:", YES);
    objj_msgSend(self.labelInLimit, "setHidden:", YES);
    if (objj_msgSend(objj_msgSend(self._currentInterface, "bandwidth"), "inbound"))
    {
        var average = objj_msgSend(objj_msgSend(objj_msgSend(self._currentInterface, "bandwidth"), "inbound"), "average") || "None",
            peak = objj_msgSend(objj_msgSend(objj_msgSend(self._currentInterface, "bandwidth"), "inbound"), "peak") || "None",
            burst = objj_msgSend(objj_msgSend(objj_msgSend(self._currentInterface, "bandwidth"), "inbound"), "burst") || "None";
        objj_msgSend(self.fieldInLimit, "setStringValue:", objj_msgSend(CPString, "stringWithFormat:", "%s/%s/%s", average, peak, burst));
        objj_msgSend(self.fieldInLimit, "setHidden:", NO);
        objj_msgSend(self.labelInLimit, "setHidden:", NO);
    }
    objj_msgSend(self.fieldOutLimit, "setHidden:", YES);
    objj_msgSend(self.labelOutLimit, "setHidden:", YES);
    if (objj_msgSend(objj_msgSend(self._currentInterface, "bandwidth"), "outbound"))
    {
        var average = objj_msgSend(objj_msgSend(objj_msgSend(self._currentInterface, "bandwidth"), "outbound"), "average") || "None",
            peak = objj_msgSend(objj_msgSend(objj_msgSend(self._currentInterface, "bandwidth"), "outbound"), "peak") || "None",
            burst = objj_msgSend(objj_msgSend(objj_msgSend(self._currentInterface, "bandwidth"), "outbound"), "burst") || "None";
        objj_msgSend(self.fieldOutLimit, "setStringValue:", objj_msgSend(CPString, "stringWithFormat:", "%s/%s/%s", average, peak, burst));
        objj_msgSend(self.fieldOutLimit, "setHidden:", NO);
        objj_msgSend(self.labelOutLimit, "setHidden:", NO);
    }
}
,["void","TNLibvirtDeviceInterface"]), new objj_method(sel_getUid("initWithCoder:"), function $TNInterfaceDeviceDataView__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNInterfaceDeviceDataView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self.imageIcon = objj_msgSend(aCoder, "decodeObjectForKey:", "imageIcon");
        self.fieldFilter = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldFilter");
        self.fieldInLimit = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldInLimit");
        self.fieldMAC = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldMAC");
        self.fieldModel = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldModel");
        self.fieldOutLimit = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldOutLimit");
        self.fieldSource = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldSource");
        self.fieldType = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldType");
        self.labelFilter = objj_msgSend(aCoder, "decodeObjectForKey:", "labelFilter");
        self.labelInLimit = objj_msgSend(aCoder, "decodeObjectForKey:", "labelInLimit");
        self.labelModel = objj_msgSend(aCoder, "decodeObjectForKey:", "labelModel");
        self.labelOutLimit = objj_msgSend(aCoder, "decodeObjectForKey:", "labelOutLimit");
        self.labelSource = objj_msgSend(aCoder, "decodeObjectForKey:", "labelSource");
        self.labelType = objj_msgSend(aCoder, "decodeObjectForKey:", "labelType");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNInterfaceDeviceDataView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNInterfaceDeviceDataView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.imageIcon, "imageIcon");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldFilter, "fieldFilter");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldInLimit, "fieldInLimit");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldMAC, "fieldMAC");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldModel, "fieldModel");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldOutLimit, "fieldOutLimit");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldSource, "fieldSource");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldType, "fieldType");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelFilter, "labelFilter");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelInLimit, "labelInLimit");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelModel, "labelModel");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelOutLimit, "labelOutLimit");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelSource, "labelSource");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelType, "labelType");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNInterfaceDeviceDataView__initialize(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", TNInterfaceDeviceDataView);
    TNInterfaceDeviceDataViewIconNetwork = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "nic_network.png"));
    TNInterfaceDeviceDataViewIconUser = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "nic_user.png"));
    TNInterfaceDeviceDataViewIconBridge = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "nic_bridge.png"));
    TNInterfaceDeviceDataViewIconDirect = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "nic_direct.png"));
    TNInterfaceDeviceDataViewIconNuage = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "nic_nuage.png"));
}
,["void"])]);
}p;38;TNVirtualMachineDefinitionController.jt;130569;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;16;AppKit/CPColor.jI;16;AppKit/CPImage.jI;22;AppKit/CPPopUpButton.jI;21;AppKit/CPScrollView.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPTableView.jI;18;AppKit/CPTabView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;17;AppKit/CPWindow.jI;28;LPKit/LPMultiLineTextField.jI;15;TNKit/TNAlert.jI;29;TNKit/TNTableViewDataSource.jI;26;TNKit/TNTextFieldStepper.jI;19;TNKit/TNSwipeView.ji;22;../../Model/TNModule.ji;17;Model/TNLibvirt.ji;29;TNCharacterDeviceController.ji;27;TNCharacterDeviceDataView.ji;19;TNDriveController.ji;23;TNDriveDeviceDataView.ji;27;TNGraphicDeviceController.ji;25;TNGraphicDeviceDataView.ji;25;TNInputDeviceController.ji;23;TNInputDeviceDataView.ji;23;TNInterfaceController.ji;27;TNInterfaceDeviceDataView.jt;129747;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPColor.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPScrollView.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTabView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("LPKit/LPMultiLineTextField.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("TNKit/TNTextFieldStepper.j", NO);
objj_executeFile("TNKit/TNSwipeView.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("Model/TNLibvirt.j", YES);
objj_executeFile("TNCharacterDeviceController.j", YES);
objj_executeFile("TNCharacterDeviceDataView.j", YES);
objj_executeFile("TNDriveController.j", YES);
objj_executeFile("TNDriveDeviceDataView.j", YES);
objj_executeFile("TNGraphicDeviceController.j", YES);
objj_executeFile("TNGraphicDeviceDataView.j", YES);
objj_executeFile("TNInputDeviceController.j", YES);
objj_executeFile("TNInputDeviceDataView.j", YES);
objj_executeFile("TNInterfaceController.j", YES);
objj_executeFile("TNInterfaceDeviceDataView.j", YES);
//@class TNTabView
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global CPApp
_generateMacAddr = function()
{
    var hexTab = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "A", "B", "C", "D", "E", "F"],
        dA = "DE",
        dB = "AD",
        dC = hexTab[Math.round(Math.random() * 15)] + hexTab[Math.round(Math.random() * 15)],
        dD = hexTab[Math.round(Math.random() * 15)] + hexTab[Math.round(Math.random() * 15)],
        dE = hexTab[Math.round(Math.random() * 15)] + hexTab[Math.round(Math.random() * 15)],
        dF = hexTab[Math.round(Math.random() * 15)] + hexTab[Math.round(Math.random() * 15)];
    return dA + ":" + dB + ":" + dC + ":" + dD + ":" + dE + ":" + dF;
}
var TNArchipelDefinitionUpdatedNotification = "TNArchipelDefinitionUpdatedNotification",
    TNArchipelTypeVirtualMachineControl = "archipel:vm:control",
    TNArchipelTypeVirtualMachineDefinition = "archipel:vm:definition",
    TNArchipelTypeVirtualMachineControlXMLDesc = "xmldesc",
    TNArchipelTypeVirtualMachineDefinitionDefine = "define",
    TNArchipelTypeVirtualMachineDefinitionUndefine = "undefine",
    TNArchipelTypeVirtualMachineDefinitionCapabilities = "capabilities",
    TNArchipelPushNotificationDefinitition = "archipel:push:virtualmachine:definition",
    VIR_DOMAIN_NOSTATE = 0,
    VIR_DOMAIN_RUNNING = 1,
    VIR_DOMAIN_BLOCKED = 2,
    VIR_DOMAIN_PAUSED = 3,
    VIR_DOMAIN_SHUTDOWN = 4,
    VIR_DOMAIN_SHUTOFF = 5,
    VIR_DOMAIN_CRASHED = 6;
{var the_class = objj_allocateClassPair(TNModule, "TNVirtualMachineDefinitionController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonClocks"), new objj_ivar("buttonDefine"), new objj_ivar("buttonOnCrash"), new objj_ivar("buttonOnPowerOff"), new objj_ivar("buttonOnReboot"), new objj_ivar("buttonUndefine"), new objj_ivar("buttonXMLEditor"), new objj_ivar("buttonXMLEditorDefine"), new objj_ivar("buttonBarCharacterDevices"), new objj_ivar("buttonBarControlDrives"), new objj_ivar("buttonBarControlNics"), new objj_ivar("buttonBarGraphicDevices"), new objj_ivar("buttonBarInputDevices"), new objj_ivar("popoverXMLEditor"), new objj_ivar("buttonBoot"), new objj_ivar("buttonDomainType"), new objj_ivar("buttonGuests"), new objj_ivar("buttonMachines"), new objj_ivar("buttonPreferencesBoot"), new objj_ivar("buttonPreferencesClockOffset"), new objj_ivar("buttonPreferencesDriveCache"), new objj_ivar("buttonPreferencesInput"), new objj_ivar("buttonPreferencesNumberOfCPUs"), new objj_ivar("buttonPreferencesOnCrash"), new objj_ivar("buttonPreferencesOnPowerOff"), new objj_ivar("buttonPreferencesOnReboot"), new objj_ivar("buttonPreferencesVNCKeyMap"), new objj_ivar("scrollViewContentView"), new objj_ivar("fieldFilterCharacters"), new objj_ivar("fieldFilterDrives"), new objj_ivar("fieldFilterNics"), new objj_ivar("tableCharacterDevices"), new objj_ivar("tableDrives"), new objj_ivar("tableGraphicsDevices"), new objj_ivar("tableInputDevices"), new objj_ivar("tableInterfaces"), new objj_ivar("fieldBlockIOTuningWeight"), new objj_ivar("fieldBootloader"), new objj_ivar("fieldMemory"), new objj_ivar("fieldMemoryTuneGuarantee"), new objj_ivar("fieldMemoryTuneHardLimit"), new objj_ivar("fieldMemoryTuneSoftLimit"), new objj_ivar("fieldMemoryTuneSwapHardLimit"), new objj_ivar("fieldName"), new objj_ivar("fieldOSInitrd"), new objj_ivar("fieldOSKernel"), new objj_ivar("fieldOSLoader"), new objj_ivar("fieldPreferencesDomainType"), new objj_ivar("fieldPreferencesGuest"), new objj_ivar("fieldPreferencesMachine"), new objj_ivar("fieldPreferencesMemory"), new objj_ivar("viewBottomControl"), new objj_ivar("viewCharacterDevicesContainer"), new objj_ivar("viewDrivesContainer"), new objj_ivar("viewGraphicDevicesContainer"), new objj_ivar("viewInputDevicesContainer"), new objj_ivar("viewMainContent"), new objj_ivar("viewNicsContainer"), new objj_ivar("viewParametersAdvanced"), new objj_ivar("viewParametersCharacterDevices"), new objj_ivar("viewParametersDrives"), new objj_ivar("viewParametersEffectBottom"), new objj_ivar("viewParametersEffectTop"), new objj_ivar("viewParametersNICs"), new objj_ivar("viewParametersStandard"), new objj_ivar("fieldBootloaderArgs"), new objj_ivar("fieldOSCommandLine"), new objj_ivar("fieldStringXMLDesc"), new objj_ivar("characterDeviceController"), new objj_ivar("dataViewCharacterDevicePrototype"), new objj_ivar("driveController"), new objj_ivar("dataViewDrivesPrototype"), new objj_ivar("graphicDeviceController"), new objj_ivar("dataViewGraphicDevicePrototype"), new objj_ivar("inputDeviceController"), new objj_ivar("dataViewInputDevicePrototype"), new objj_ivar("interfaceController"), new objj_ivar("dataViewNICsPrototype"), new objj_ivar("checkboxACPI"), new objj_ivar("checkboxAPIC"), new objj_ivar("checkboxHugePages"), new objj_ivar("checkboxNestedVirtualization"), new objj_ivar("checkboxPAE"), new objj_ivar("checkboxPreferencesHugePages"), new objj_ivar("checkboxEnableUSB"), new objj_ivar("tabViewParameters"), new objj_ivar("stepperNumberCPUs"), new objj_ivar("_definitionEdited"), new objj_ivar("_editButtonCharacterDevice"), new objj_ivar("_editButtonDrives"), new objj_ivar("_editButtonGraphicDevice"), new objj_ivar("_editButtonInputDevice"), new objj_ivar("_editButtonNics"), new objj_ivar("_minusButtonCharacterDevice"), new objj_ivar("_minusButtonDrives"), new objj_ivar("_minusButtonGraphicDevice"), new objj_ivar("_minusButtonInputDevice"), new objj_ivar("_minusButtonNics"), new objj_ivar("_plusButtonCharacterDevice"), new objj_ivar("_plusButtonDrives"), new objj_ivar("_plusButtonGraphicDevice"), new objj_ivar("_plusButtonInputDevice"), new objj_ivar("_plusButtonNics"), new objj_ivar("_consoleFilterPredicate"), new objj_ivar("_stringXMLDesc"), new objj_ivar("_characterDevicesDatasource"), new objj_ivar("_drivesDatasource"), new objj_ivar("_graphicDevicesDatasource"), new objj_ivar("_inputDevicesDatasource"), new objj_ivar("_nicsDatasource"), new objj_ivar("_libvirtCapabilities"), new objj_ivar("_libvirtDomain")]);
       
       











       
       


       
       



       
       











       
       




       
       










       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_definitionEdited"), function $TNVirtualMachineDefinitionController___definitionEdited(self, _cmd)
{
return self._definitionEdited;
}
,["BOOL"]), new objj_method(sel_getUid("setDefinitionEdited:"), function $TNVirtualMachineDefinitionController__setDefinitionEdited_(self, _cmd, newValue)
{
self._definitionEdited = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("awakeFromCib"), function $TNVirtualMachineDefinitionController__awakeFromCib(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        imageBg = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")), "pathForResource:", "bg-controls.png"));
    objj_msgSend(self.scrollViewContentView, "setDocumentView:", self.viewMainContent);
    objj_msgSend(self.scrollViewContentView, "setAutohidesScrollers:", YES);
    var frameSize = objj_msgSend(self.scrollViewContentView, "contentSize");
    objj_msgSend(self.viewMainContent, "setFrameOrigin:", CGPointMake(0.0, 0.0));
    objj_msgSend(self.viewMainContent, "setFrameSize:", frameSize);
    objj_msgSend(self.viewMainContent, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(self.viewBottomControl, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", imageBg));
     var inset = CGInsetMake(2, 2, 2, 5);
    objj_msgSend(self.buttonUndefine, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "undefine.png"), CGSizeMake(16, 16)));
    objj_msgSend(self.buttonUndefine, "setValue:forThemeAttribute:", inset, "content-inset");
    objj_msgSend(self.buttonXMLEditor, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/editxml.png"), CGSizeMake(16, 16)));
    objj_msgSend(self.buttonXMLEditor, "setValue:forThemeAttribute:", inset, "content-inset");
    objj_msgSend(self.buttonXMLEditorDefine, "setThemeState:", CPThemeStateDefault);
    var mainBundle = objj_msgSend(CPBundle, "mainBundle"),
        tabViewItemStandard = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "standard"),
        tabViewItemAdvanced = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "advanced"),
        tabViewItemDrives = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "IDtabViewItemDrives"),
        tabViewItemNics = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "IDtabViewItemNics"),
        tabViewItemCharacter = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "IDtabViewItemCharacters");
    objj_msgSend(self.tabViewParameters, "setContentBackgroundColor:", objj_msgSend(CPColor, "colorWithHexString:", "f5f5f5"));
    var scrollViewParametersStandard = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", objj_msgSend(self.tabViewParameters, "bounds")),
        scrollViewParametersAdvanced = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", objj_msgSend(self.tabViewParameters, "bounds"));
    objj_msgSend(self.viewParametersStandard, "setAutoresizingMask:", CPViewWidthSizable);
    objj_msgSend(self.viewParametersStandard, "setFrameSize:", CGSizeMake(objj_msgSend(scrollViewParametersStandard, "frameSize").width, objj_msgSend(self.viewParametersStandard, "frameSize").height));
    objj_msgSend(self.viewParametersAdvanced, "setAutoresizingMask:", CPViewWidthSizable);
    objj_msgSend(self.viewParametersAdvanced, "setFrameSize:", CGSizeMake(objj_msgSend(scrollViewParametersAdvanced, "frameSize").width, objj_msgSend(self.viewParametersAdvanced, "frameSize").height));
    objj_msgSend(scrollViewParametersStandard, "setAutoresizingMask:", CPViewWidthSizable);
    objj_msgSend(scrollViewParametersAdvanced, "setAutoresizingMask:", CPViewWidthSizable);
    objj_msgSend(scrollViewParametersStandard, "setDocumentView:", self.viewParametersStandard);
    objj_msgSend(scrollViewParametersAdvanced, "setDocumentView:", self.viewParametersAdvanced);
    objj_msgSend(tabViewItemStandard, "setLabel:", CPLocalizedString("Basics", "Basics"));
    objj_msgSend(tabViewItemStandard, "setView:", scrollViewParametersStandard);
    objj_msgSend(tabViewItemAdvanced, "setLabel:", CPLocalizedString("Advanced", "Advanced"));
    objj_msgSend(tabViewItemAdvanced, "setView:", scrollViewParametersAdvanced);
    objj_msgSend(tabViewItemDrives, "setLabel:", CPBundleLocalizedString("Virtual Medias", "Virtual Medias"));
    objj_msgSend(tabViewItemDrives, "setView:", self.viewParametersDrives);
    objj_msgSend(tabViewItemNics, "setLabel:", CPBundleLocalizedString("Virtual Nics", "Virtual Nics"));
    objj_msgSend(tabViewItemNics, "setView:", self.viewParametersNICs);
    objj_msgSend(tabViewItemCharacter, "setLabel:", CPBundleLocalizedString("Char Devices", "Char Devices"));
    objj_msgSend(tabViewItemCharacter, "setView:", self.viewParametersCharacterDevices);
    objj_msgSend(self.tabViewParameters, "addTabViewItem:", tabViewItemStandard);
    objj_msgSend(self.tabViewParameters, "addTabViewItem:", tabViewItemAdvanced);
    objj_msgSend(self.tabViewParameters, "addTabViewItem:", tabViewItemDrives);
    objj_msgSend(self.tabViewParameters, "addTabViewItem:", tabViewItemNics);
    objj_msgSend(self.tabViewParameters, "addTabViewItem:", tabViewItemCharacter);
    objj_msgSend(self.tabViewParameters, "setDelegate:", self);
    var shadowTop = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "shadow-top.png"), CGSizeMake(1.0, 10.0)),
        shadowBottom = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "shadow-bottom.png"), CGSizeMake(1.0, 10.0));
    objj_msgSend(self.viewParametersEffectTop, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", shadowTop));
    objj_msgSend(self.viewParametersEffectBottom, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", shadowBottom));
    objj_msgSend(self.fieldStringXMLDesc, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    objj_msgSend(defaults, "registerDefaults:", objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultNumberCPU"), "TNDescDefaultNumberCPU", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultMemory"), "TNDescDefaultMemory", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultBoot"), "TNDescDefaultBoot", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultVNCKeymap"), "TNDescDefaultVNCKeymap", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultOnPowerOff"), "TNDescDefaultOnPowerOff", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultOnReboot"), "TNDescDefaultOnReboot", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultOnCrash"), "TNDescDefaultOnCrash", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultClockOffset"), "TNDescDefaultClockOffset", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultHugePages"), "TNDescDefaultHugePages", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultEnableVNC"), "TNDescDefaultEnableVNC", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultInputType"), "TNDescDefaultInputType", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultDomainType"), "TNDescDefaultDomainType", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultGuest"), "TNDescDefaultGuest", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultMachine"), "TNDescDefaultMachine", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescDefaultDriveCacheMode"), "TNDescDefaultDriveCacheMode", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNDescMaxNumberCPU"), "TNDescMaxNumberCPU"));
    objj_msgSend(self.fieldStringXMLDesc, "setFont:", objj_msgSend(CPFont, "fontWithName:size:", "Andale Mono, Courier New", 12));
    self._stringXMLDesc = "";
    self._drivesDatasource = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self._drivesDatasource, "setTable:", self.tableDrives);
    objj_msgSend(self._drivesDatasource, "setSearchableKeyPaths:", ["type", "driver.type", "target.device", "source.sourceObject", "target.bus", "driver.cache"]);
    objj_msgSend(objj_msgSend(self.tableDrives, "tableColumnWithIdentifier:", "self"), "setDataView:", objj_msgSend(self.dataViewDrivesPrototype, "duplicate"));
    objj_msgSend(self.tableDrives, "setDataSource:", self._drivesDatasource);
    objj_msgSend(self.tableDrives, "setTarget:", self);
    objj_msgSend(self.tableDrives, "setDoubleAction:", sel_getUid("editDrive:"));
    objj_msgSend(self.tableDrives, "setBackgroundColor:", TNArchipelDefaultColorsTableView);
    objj_msgSend(self.viewDrivesContainer, "setBorderedWithHexColor:", "#C0C7D2");
    objj_msgSend(self.driveController, "setDelegate:", self);
    objj_msgSend(self.fieldFilterDrives, "setTarget:", self._drivesDatasource);
    objj_msgSend(self.fieldFilterDrives, "setAction:", sel_getUid("filterObjects:"));
    self._plusButtonDrives = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._plusButtonDrives, "setTarget:", self);
    objj_msgSend(self._plusButtonDrives, "setAction:", sel_getUid("addDrive:"));
    objj_msgSend(self._plusButtonDrives, "setToolTip:", CPBundleLocalizedString("Add a new drive", "Add a new drive"));
    self._minusButtonDrives = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._minusButtonDrives, "setTarget:", self);
    objj_msgSend(self._minusButtonDrives, "setAction:", sel_getUid("deleteDrive:"));
    objj_msgSend(self._minusButtonDrives, "setEnabled:", NO);
    objj_msgSend(self._minusButtonDrives, "setToolTip:", CPBundleLocalizedString("Remove selected drives", "Remove selected drives"));
    self._editButtonDrives = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._editButtonDrives, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "IconsButtons/edit.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._editButtonDrives, "setTarget:", self);
    objj_msgSend(self._editButtonDrives, "setAction:", sel_getUid("editDrive:"));
    objj_msgSend(self._editButtonDrives, "setEnabled:", NO);
    objj_msgSend(self._editButtonDrives, "setToolTip:", CPBundleLocalizedString("Edit selected drive", "Edit selected drive"));
    objj_msgSend(self.buttonBarControlDrives, "setButtons:", [self._plusButtonDrives, self._minusButtonDrives, self._editButtonDrives]);
    objj_msgSend(self.driveController, "setTable:", self.tableDrives);
    self._nicsDatasource = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self._nicsDatasource, "setTable:", self.tableInterfaces);
    objj_msgSend(self._nicsDatasource, "setSearchableKeyPaths:", ["type", "model", "MAC", "source.bridge"]);
    objj_msgSend(objj_msgSend(self.tableInterfaces, "tableColumnWithIdentifier:", "self"), "setDataView:", objj_msgSend(self.dataViewNICsPrototype, "duplicate"));
    objj_msgSend(self.tableInterfaces, "setDataSource:", self._nicsDatasource);
    objj_msgSend(self.tableInterfaces, "setTarget:", self);
    objj_msgSend(self.tableInterfaces, "setDoubleAction:", sel_getUid("editInterface:"));
    objj_msgSend(self.tableInterfaces, "setBackgroundColor:", TNArchipelDefaultColorsTableView);
    objj_msgSend(self.viewNicsContainer, "setBorderedWithHexColor:", "#C0C7D2");
    objj_msgSend(self.interfaceController, "setDelegate:", self);
    objj_msgSend(self.fieldFilterNics, "setTarget:", self._nicsDatasource);
    objj_msgSend(self.fieldFilterNics, "setAction:", sel_getUid("filterObjects:"));
    self._plusButtonNics = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._plusButtonNics, "setTarget:", self);
    objj_msgSend(self._plusButtonNics, "setAction:", sel_getUid("addInterface:"));
    objj_msgSend(self._plusButtonNics, "setToolTip:", CPBundleLocalizedString("Add new network interface", "Add new network interface"));
    self._minusButtonNics = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._minusButtonNics, "setTarget:", self);
    objj_msgSend(self._minusButtonNics, "setAction:", sel_getUid("deleteInterface:"));
    objj_msgSend(self._minusButtonNics, "setEnabled:", NO);
    objj_msgSend(self._minusButtonNics, "setToolTip:", CPBundleLocalizedString("Remove selected network interfaces", "Remove selected network interfaces"));
    self._editButtonNics = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._editButtonNics, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "IconsButtons/edit.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._editButtonNics, "setTarget:", self);
    objj_msgSend(self._editButtonNics, "setAction:", sel_getUid("editInterface:"));
    objj_msgSend(self._editButtonNics, "setEnabled:", NO);
    objj_msgSend(self._editButtonNics, "setToolTip:", CPBundleLocalizedString("Edit selected network interface", "Edit selected network interface"));
    objj_msgSend(self.buttonBarControlNics, "setButtons:", [self._plusButtonNics, self._minusButtonNics, self._editButtonNics]);
    objj_msgSend(self.interfaceController, "setTable:", self.tableInterfaces);
    self._inputDevicesDatasource = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(objj_msgSend(self.tableInputDevices, "tableColumnWithIdentifier:", "self"), "setDataView:", objj_msgSend(self.dataViewInputDevicePrototype, "duplicate"));
    objj_msgSend(self.tableInputDevices, "setTarget:", self);
    objj_msgSend(self.tableInputDevices, "setDoubleAction:", sel_getUid("editInputDevice:"));
    objj_msgSend(self.tableInputDevices, "setBackgroundColor:", TNArchipelDefaultColorsTableView);
    objj_msgSend(self._inputDevicesDatasource, "setTable:", self.tableInputDevices);
    objj_msgSend(self.tableInputDevices, "setDataSource:", self._inputDevicesDatasource);
    objj_msgSend(self.viewInputDevicesContainer, "setBorderedWithHexColor:", "#C0C7D2");
    self._plusButtonInputDevice = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._plusButtonInputDevice, "setTarget:", self);
    objj_msgSend(self._plusButtonInputDevice, "setAction:", sel_getUid("addInputDevice:"));
    objj_msgSend(self._plusButtonInputDevice, "setToolTip:", CPBundleLocalizedString("Add new input device", "Add new input device"));
    self._minusButtonInputDevice = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._minusButtonInputDevice, "setTarget:", self);
    objj_msgSend(self._minusButtonInputDevice, "setAction:", sel_getUid("deleteInputDevice:"));
    objj_msgSend(self._minusButtonInputDevice, "setToolTip:", CPBundleLocalizedString("Remove selected input devices", "Remove selected input devices"));
    self._editButtonInputDevice = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._editButtonInputDevice, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "IconsButtons/edit.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._editButtonInputDevice, "setTarget:", self);
    objj_msgSend(self._editButtonInputDevice, "setAction:", sel_getUid("editInputDevice:"));
    objj_msgSend(self._editButtonInputDevice, "setToolTip:", CPBundleLocalizedString("Edit selected input device", "Edit selected input device"));
    objj_msgSend(self.buttonBarInputDevices, "setButtons:", [self._plusButtonInputDevice, self._minusButtonInputDevice, self._editButtonInputDevice]);
    objj_msgSend(self.inputDeviceController, "setDelegate:", self);
    objj_msgSend(self.inputDeviceController, "setTable:", self.tableInputDevices);
    self._graphicDevicesDatasource = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(objj_msgSend(self.tableGraphicsDevices, "tableColumnWithIdentifier:", "self"), "setDataView:", objj_msgSend(self.dataViewGraphicDevicePrototype, "duplicate"));
    objj_msgSend(self.tableGraphicsDevices, "setTarget:", self);
    objj_msgSend(self.tableGraphicsDevices, "setDoubleAction:", sel_getUid("editGraphicDevice:"));
    objj_msgSend(self.tableGraphicsDevices, "setBackgroundColor:", TNArchipelDefaultColorsTableView);
    objj_msgSend(self._graphicDevicesDatasource, "setTable:", self.tableGraphicsDevices);
    objj_msgSend(self.tableGraphicsDevices, "setDataSource:", self._graphicDevicesDatasource);
    objj_msgSend(self.viewGraphicDevicesContainer, "setBorderedWithHexColor:", "#C0C7D2");
    self._plusButtonGraphicDevice = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._plusButtonGraphicDevice, "setTarget:", self);
    objj_msgSend(self._plusButtonGraphicDevice, "setAction:", sel_getUid("addGraphicDevice:"));
    objj_msgSend(self._plusButtonGraphicDevice, "setToolTip:", CPBundleLocalizedString("Add a new graphic device", "Add a new graphic device"));
    self._minusButtonGraphicDevice = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._minusButtonGraphicDevice, "setTarget:", self);
    objj_msgSend(self._minusButtonGraphicDevice, "setAction:", sel_getUid("deleteGraphicDevice:"));
    objj_msgSend(self._minusButtonGraphicDevice, "setToolTip:", CPBundleLocalizedString("Remove selected input devices", "Remove selected input devices"));
    self._editButtonGraphicDevice = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._editButtonGraphicDevice, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "IconsButtons/edit.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._editButtonGraphicDevice, "setTarget:", self);
    objj_msgSend(self._editButtonGraphicDevice, "setAction:", sel_getUid("editGraphicDevice:"));
    objj_msgSend(self._editButtonGraphicDevice, "setToolTip:", CPBundleLocalizedString("Edit selected graphic device", "Edit selected graphic device"));
    objj_msgSend(self.buttonBarGraphicDevices, "setButtons:", [self._plusButtonGraphicDevice, self._minusButtonGraphicDevice, self._editButtonGraphicDevice]);
    objj_msgSend(self.graphicDeviceController, "setDelegate:", self);
    objj_msgSend(self.graphicDeviceController, "setTable:", self.tableGraphicsDevices);
    self._consoleFilterPredicate = objj_msgSend(CPPredicate, "predicateWithFormat:", "not kind like %@", TNLibvirtDeviceCharacterKindConsole);
    self._characterDevicesDatasource = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self._characterDevicesDatasource, "setDisplayFilter:", self._consoleFilterPredicate);
    objj_msgSend(objj_msgSend(self.tableCharacterDevices, "tableColumnWithIdentifier:", "self"), "setDataView:", objj_msgSend(self.dataViewCharacterDevicePrototype, "duplicate"));
    objj_msgSend(self.tableCharacterDevices, "setTarget:", self);
    objj_msgSend(self.tableCharacterDevices, "setDoubleAction:", sel_getUid("editCharacterDevice:"));
    objj_msgSend(self.tableCharacterDevices, "setBackgroundColor:", TNArchipelDefaultColorsTableView);
    objj_msgSend(self._characterDevicesDatasource, "setTable:", self.tableCharacterDevices);
    objj_msgSend(self.tableCharacterDevices, "setDataSource:", self._characterDevicesDatasource);
    objj_msgSend(self.viewCharacterDevicesContainer, "setBorderedWithHexColor:", "#C0C7D2");
    objj_msgSend(self._characterDevicesDatasource, "setSearchableKeyPaths:", ["type", "kind", "protocol.type", "target.type", "target.address", "target.port", "target.name", "source.path", "source.mode", "source.host", "source.service"])
    objj_msgSend(self.fieldFilterCharacters, "setTarget:", self._characterDevicesDatasource);
    objj_msgSend(self.fieldFilterCharacters, "setAction:", sel_getUid("filterObjects:"));
    self._plusButtonCharacterDevice = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._plusButtonCharacterDevice, "setTarget:", self);
    objj_msgSend(self._plusButtonCharacterDevice, "setAction:", sel_getUid("addCharacterDevice:"));
    objj_msgSend(self._plusButtonCharacterDevice, "setToolTip:", CPBundleLocalizedString("Add new character device", "Add new character device"));
    self._minusButtonCharacterDevice = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._minusButtonCharacterDevice, "setTarget:", self);
    objj_msgSend(self._minusButtonCharacterDevice, "setAction:", sel_getUid("deleteCharacterDevice:"));
    objj_msgSend(self._minusButtonCharacterDevice, "setToolTip:", CPBundleLocalizedString("Remove selected character devices", "Remove selected character devices"));
    self._editButtonCharacterDevice = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._editButtonCharacterDevice, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(mainBundle, "pathForResource:", "IconsButtons/edit.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._editButtonCharacterDevice, "setTarget:", self);
    objj_msgSend(self._editButtonCharacterDevice, "setAction:", sel_getUid("editCharacterDevice:"));
    objj_msgSend(self._editButtonCharacterDevice, "setToolTip:", CPBundleLocalizedString("Edit selected character device", "Edit selected character device"));
    objj_msgSend(self.buttonBarCharacterDevices, "setButtons:", [self._plusButtonCharacterDevice, self._minusButtonCharacterDevice, self._editButtonCharacterDevice]);
    objj_msgSend(self.characterDeviceController, "setDelegate:", self);
    objj_msgSend(self.characterDeviceController, "setTable:", self.tableCharacterDevices);
    objj_msgSend(self.buttonBoot, "removeAllItems");
    objj_msgSend(self.buttonDomainType, "removeAllItems");
    objj_msgSend(self.buttonMachines, "removeAllItems");
    objj_msgSend(self.buttonOnPowerOff, "removeAllItems");
    objj_msgSend(self.buttonOnReboot, "removeAllItems");
    objj_msgSend(self.buttonOnCrash, "removeAllItems");
    objj_msgSend(self.buttonClocks, "removeAllItems");
    objj_msgSend(self.buttonGuests, "removeAllItems");
    objj_msgSend(self.buttonPreferencesNumberOfCPUs, "removeAllItems");
    objj_msgSend(self.buttonPreferencesBoot, "removeAllItems");
    objj_msgSend(self.buttonPreferencesVNCKeyMap, "removeAllItems");
    objj_msgSend(self.buttonPreferencesOnPowerOff, "removeAllItems");
    objj_msgSend(self.buttonPreferencesOnReboot, "removeAllItems");
    objj_msgSend(self.buttonPreferencesOnCrash, "removeAllItems");
    objj_msgSend(self.buttonPreferencesClockOffset, "removeAllItems");
    objj_msgSend(self.buttonPreferencesInput, "removeAllItems");
    objj_msgSend(self.buttonPreferencesDriveCache, "removeAllItems");
    objj_msgSend(self.buttonBoot, "addItemsWithTitles:", TNLibvirtDomainOSBoots);
    objj_msgSend(self.buttonPreferencesBoot, "addItemsWithTitles:", TNLibvirtDomainOSBoots);
    var ncpus = [];
    for (var i = 1; i <= objj_msgSend(defaults, "integerForKey:", "TNDescMaxNumberCPU"); i++)
        objj_msgSend(ncpus, "addObject:", "" + i)
    objj_msgSend(self.buttonPreferencesNumberOfCPUs, "addItemsWithTitles:", ncpus);
    objj_msgSend(self.buttonPreferencesVNCKeyMap, "addItemsWithTitles:", TNLibvirtDeviceGraphicVNCKeymaps);
    objj_msgSend(self.buttonOnPowerOff, "addItemsWithTitles:", TNLibvirtDomainLifeCycles);
    objj_msgSend(self.buttonPreferencesOnPowerOff, "addItemsWithTitles:", TNLibvirtDomainLifeCycles);
    objj_msgSend(self.buttonOnReboot, "addItemsWithTitles:", TNLibvirtDomainLifeCycles);
    objj_msgSend(self.buttonPreferencesOnReboot, "addItemsWithTitles:", TNLibvirtDomainLifeCycles);
    objj_msgSend(self.buttonOnCrash, "addItemsWithTitles:", TNLibvirtDomainLifeCycles);
    objj_msgSend(self.buttonPreferencesOnCrash, "addItemsWithTitles:", TNLibvirtDomainLifeCycles);
    objj_msgSend(self.buttonClocks, "addItemsWithTitles:", TNLibvirtDomainClockClocks);
    objj_msgSend(self.buttonPreferencesClockOffset, "addItemsWithTitles:", TNLibvirtDomainClockClocks);
    objj_msgSend(self.buttonPreferencesInput, "addItemsWithTitles:", TNLibvirtDeviceInputTypes);
    objj_msgSend(self.buttonPreferencesDriveCache, "addItemsWithTitles:", TNLibvirtDeviceDiskDriverCaches);
    objj_msgSend(self.checkboxPAE, "setState:", CPOffState);
    objj_msgSend(self.checkboxAPIC, "setState:", CPOffState);
    objj_msgSend(self.checkboxACPI, "setState:", CPOffState);
    objj_msgSend(self.stepperNumberCPUs, "setMaxValue:", objj_msgSend(defaults, "integerForKey:", "TNDescMaxNumberCPU"));
    objj_msgSend(self.stepperNumberCPUs, "setMinValue:", 1);
    objj_msgSend(self.stepperNumberCPUs, "setDoubleValue:", 1);
    objj_msgSend(self.stepperNumberCPUs, "setValueWraps:", NO);
    objj_msgSend(self.stepperNumberCPUs, "setAutorepeat:", NO);
    objj_msgSend(self.stepperNumberCPUs, "setTarget:", self);
    objj_msgSend(self.stepperNumberCPUs, "setAction:", sel_getUid("didChangeVCPU:"));
}
,["void"]), new objj_method(sel_getUid("willLoad"), function $TNVirtualMachineDefinitionController__willLoad(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineDefinitionController").super_class }, "willLoad"))
        return NO;
    var center = objj_msgSend(CPNotificationCenter, "defaultCenter");
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("_didUpdatePresence:"), TNStropheContactPresenceUpdatedNotification, self._entity);
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceivePush:"), TNArchipelPushNotificationDefinitition);
    objj_msgSend(self.tableDrives, "setDelegate:", nil);
    objj_msgSend(self.tableDrives, "setDelegate:", self);
    objj_msgSend(self, "_updateControlsStateForTable:", self.tableDrives);
    objj_msgSend(self.tableInterfaces, "setDelegate:", nil);
    objj_msgSend(self.tableInterfaces, "setDelegate:", self);
    objj_msgSend(self, "_updateControlsStateForTable:", self.tableInterfaces);
    objj_msgSend(self.tableCharacterDevices, "setDelegate:", nil);
    objj_msgSend(self.tableCharacterDevices, "setDelegate:", self);
    objj_msgSend(self, "_updateControlsStateForTable:", self.tableCharacterDevices);
    objj_msgSend(self.tableInputDevices, "setDelegate:", nil);
    objj_msgSend(self.tableInputDevices, "setDelegate:", self);
    objj_msgSend(self, "_updateControlsStateForTable:", self.tableInputDevices);
    objj_msgSend(self.tableGraphicsDevices, "setDelegate:", nil);
    objj_msgSend(self.tableGraphicsDevices, "setDelegate:", self);
    objj_msgSend(self, "_updateControlsStateForTable:", self.tableGraphicsDevices);
    objj_msgSend(self.driveController, "setEntity:", self._entity);
    objj_msgSend(self.interfaceController, "setEntity:", self._entity);
    objj_msgSend(self.fieldStringXMLDesc, "setStringValue:", "");
}
,["BOOL"]), new objj_method(sel_getUid("willUnload"), function $TNVirtualMachineDefinitionController__willUnload(self, _cmd)
{
    self._libvirtDomain = nil;
    self._definitionEdited = NO;
    objj_msgSend(self, "flushUI");
    objj_msgSend(self, "setEnableAllControls:", NO);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineDefinitionController").super_class }, "willUnload");
}
,["void"]), new objj_method(sel_getUid("willShow"), function $TNVirtualMachineDefinitionController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineDefinitionController").super_class }, "willShow"))
        return NO;
    objj_msgSend(objj_msgSend(CPApp, "mainWindow"), "setDefaultButton:", self.buttonDefine);
    objj_msgSend(self, "getCapabilities");
    objj_msgSend(self, "_updateUIForCurrentEntityStatus");
    self._definitionEdited = NO;
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willHide"), function $TNVirtualMachineDefinitionController__willHide(self, _cmd)
{
    objj_msgSend(objj_msgSend(CPApp, "mainWindow"), "setDefaultButton:", nil);
    objj_msgSend(self.interfaceController, "closeWindow:", nil);
    objj_msgSend(self.driveController, "closeWindow:", nil);
    objj_msgSend(self.inputDeviceController, "closeWindow:", nil);
    objj_msgSend(self.graphicDeviceController, "closeWindow:", nil);
    objj_msgSend(self.characterDeviceController, "closeWindow:", nil);
    objj_msgSend(self.popoverXMLEditor, "close");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineDefinitionController").super_class }, "willHide");
}
,["void"]), new objj_method(sel_getUid("shouldHideAndSelectItem:ofObject:"), function $TNVirtualMachineDefinitionController__shouldHideAndSelectItem_ofObject_(self, _cmd, nextItem, anObject)
{
    if (self._definitionEdited)
    {
        var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Unsaved changes", "Unsaved changes"), CPBundleLocalizedString("You have made some changes in the virtual machine definition. Would you like save these changes?", "You have made some changes in the virtual machine definition. Would you like save these changes?"), self, [[CPBundleLocalizedString("Validate", "Validate"), sel_getUid("_saveEditionChanges:")], [CPBundleLocalizedString("Discard", "Discard"), sel_getUid("_discardEditionChanges:")]]);
        objj_msgSend(alert, "setUserInfo:", objj_msgSend(CPArray, "arrayWithObjects:", nextItem, anObject));
        objj_msgSend(self.interfaceController, "closeWindow:", nil);
        objj_msgSend(self.driveController, "closeWindow:", nil);
        objj_msgSend(self.popoverXMLEditor, "close");
        objj_msgSend(self.characterDeviceController, "closeWindow:", nil);
        objj_msgSend(self.inputDeviceController, "closeWindow:", nil);
        objj_msgSend(self.graphicDeviceController, "closeWindow:", nil);
        objj_msgSend(alert, "runModal");
        return NO;
    }
    return YES;
}
,["BOOL","anItem","id"]), new objj_method(sel_getUid("savePreferences"), function $TNVirtualMachineDefinitionController__savePreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(defaults, "setBool:forKey:", objj_msgSend(self.checkboxPreferencesHugePages, "state"), "TNDescDefaultHugePages");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.buttonPreferencesBoot, "title"), "TNDescDefaultBoot");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.buttonPreferencesClockOffset, "title"), "TNDescDefaultClockOffset");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.buttonPreferencesInput, "title"), "TNDescDefaultInputType");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.buttonPreferencesNumberOfCPUs, "title"), "TNDescDefaultNumberCPU");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.buttonPreferencesOnCrash, "title"), "TNDescDefaultOnCrash");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.buttonPreferencesOnPowerOff, "title"), "TNDescDefaultOnPowerOff");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.buttonPreferencesOnReboot, "title"), "TNDescDefaultOnReboot");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.buttonPreferencesVNCKeyMap, "title"), "TNDescDefaultVNCKeymap");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.buttonPreferencesDriveCache, "title"), "TNDescDefaultDriveCacheMode");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.fieldPreferencesDomainType, "stringValue"), "TNDescDefaultDomainType");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.fieldPreferencesGuest, "stringValue"), "TNDescDefaultGuest");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.fieldPreferencesMachine, "stringValue"), "TNDescDefaultMachine");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.fieldPreferencesMemory, "stringValue"), "TNDescDefaultMemory");
}
,["void"]), new objj_method(sel_getUid("loadPreferences"), function $TNVirtualMachineDefinitionController__loadPreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(self.buttonPreferencesBoot, "selectItemWithTitle:", objj_msgSend(defaults, "objectForKey:", "TNDescDefaultBoot"));
    objj_msgSend(self.buttonPreferencesClockOffset, "selectItemWithTitle:", objj_msgSend(defaults, "objectForKey:", "TNDescDefaultClockOffset"));
    objj_msgSend(self.buttonPreferencesInput, "selectItemWithTitle:", objj_msgSend(defaults, "objectForKey:", "TNDescDefaultInputType"));
    objj_msgSend(self.buttonPreferencesNumberOfCPUs, "selectItemWithTitle:", objj_msgSend(defaults, "objectForKey:", "TNDescDefaultNumberCPU"));
    objj_msgSend(self.buttonPreferencesOnCrash, "selectItemWithTitle:", objj_msgSend(defaults, "objectForKey:", "TNDescDefaultOnCrash"));
    objj_msgSend(self.buttonPreferencesOnPowerOff, "selectItemWithTitle:", objj_msgSend(defaults, "objectForKey:", "TNDescDefaultOnPowerOff"));
    objj_msgSend(self.buttonPreferencesOnReboot, "selectItemWithTitle:", objj_msgSend(defaults, "objectForKey:", "TNDescDefaultOnReboot"));
    objj_msgSend(self.buttonPreferencesVNCKeyMap, "selectItemWithTitle:", objj_msgSend(defaults, "objectForKey:", "TNDescDefaultVNCKeymap"));
    objj_msgSend(self.buttonPreferencesDriveCache, "selectItemWithTitle:", objj_msgSend(defaults, "objectForKey:", "TNDescDefaultDriveCacheMode"));
    objj_msgSend(self.fieldPreferencesDomainType, "setStringValue:", objj_msgSend(defaults, "objectForKey:", "TNDescDefaultDomainType"));
    objj_msgSend(self.fieldPreferencesGuest, "setStringValue:", objj_msgSend(defaults, "objectForKey:", "TNDescDefaultGuest"));
    objj_msgSend(self.fieldPreferencesMachine, "setIntValue:", objj_msgSend(defaults, "objectForKey:", "TNDescDefaultMachine"));
    objj_msgSend(self.fieldPreferencesMemory, "setStringValue:", objj_msgSend(defaults, "objectForKey:", "TNDescDefaultMemory"));
    objj_msgSend(self.checkboxPreferencesHugePages, "setState:", objj_msgSend(defaults, "boolForKey:", "TNDescDefaultHugePages"));
}
,["void"]), new objj_method(sel_getUid("menuReady"), function $TNVirtualMachineDefinitionController__menuReady(self, _cmd)
{
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Undefine", "Undefine"), sel_getUid("undefineXML:"), ""), "setTarget:", self);
    objj_msgSend(self._menu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", "Open XML editor", sel_getUid("openXMLEditor:"), ""), "setTarget:", self);
}
,["void"]), new objj_method(sel_getUid("permissionsChanged"), function $TNVirtualMachineDefinitionController__permissionsChanged(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineDefinitionController").super_class }, "permissionsChanged");
    objj_msgSend(self, "_updateUIForCurrentEntityStatus");
}
,["void"]), new objj_method(sel_getUid("setUIAccordingToPermissions"), function $TNVirtualMachineDefinitionController__setUIAccordingToPermissions(self, _cmd)
{
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.buttonBoot, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.buttonClocks, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.buttonDomainType, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.buttonGuests, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.buttonMachines, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.buttonOnCrash, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.buttonOnPowerOff, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.buttonOnReboot, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.buttonUndefine, "undefine");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.buttonXMLEditor, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.fieldMemory, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.stepperNumberCPUs, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.checkboxACPI, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.checkboxAPIC, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.checkboxHugePages, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.checkboxEnableUSB, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.checkboxNestedVirtualization, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.checkboxPAE, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.fieldMemoryTuneSoftLimit, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.fieldMemoryTuneHardLimit, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.fieldMemoryTuneGuarantee, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.fieldMemoryTuneSwapHardLimit, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.fieldBlockIOTuningWeight, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.fieldOSLoader, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.fieldOSKernel, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.fieldOSInitrd, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.fieldOSCommandLine, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.fieldBootloader, "define");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.fieldBootloaderArgs, "define");
    objj_msgSend(self, "_updateControlsStateForTable:", self.tableGraphicsDevices);
    objj_msgSend(self, "_updateControlsStateForTable:", self.tableInputDevices);
    objj_msgSend(self, "_updateControlsStateForTable:", self.tableInterfaces);
    objj_msgSend(self, "_updateControlsStateForTable:", self.tableDrives);
    objj_msgSend(self, "_updateControlsStateForTable:", self.tableCharacterDevices);
    if (!objj_msgSend(self, "currentEntityHasPermission:", "define"))
    {
        objj_msgSend(self.interfaceController, "closeWindow:", nil);
        objj_msgSend(self.driveController, "closeWindow:", nil);
        objj_msgSend(self.characterDeviceController, "closeWindow:", nil);
        objj_msgSend(self.graphicDeviceController, "closeWindow:", nil);
        objj_msgSend(self.inputDeviceController, "closeWindow:", nil);
    }
    objj_msgSend(self.interfaceController, "updateAfterPermissionChanged");
    objj_msgSend(self.driveController, "updateAfterPermissionChanged");
}
,["void"]), new objj_method(sel_getUid("flushUI"), function $TNVirtualMachineDefinitionController__flushUI(self, _cmd)
{
    objj_msgSend(self._characterDevicesDatasource, "removeAllObjects");
    objj_msgSend(self._drivesDatasource, "removeAllObjects");
    objj_msgSend(self._graphicDevicesDatasource, "removeAllObjects");
    objj_msgSend(self._inputDevicesDatasource, "removeAllObjects");
    objj_msgSend(self._nicsDatasource, "removeAllObjects");
    objj_msgSend(self.tableCharacterDevices, "reloadData");
    objj_msgSend(self.tableDrives, "reloadData");
    objj_msgSend(self.tableGraphicsDevices, "reloadData");
    objj_msgSend(self.tableInputDevices, "reloadData");
    objj_msgSend(self.tableInterfaces, "reloadData");
}
,["void"]), new objj_method(sel_getUid("_didUpdatePresence:"), function $TNVirtualMachineDefinitionController___didUpdatePresence_(self, _cmd, aNotification)
{
    objj_msgSend(self, "_updateUIForCurrentEntityStatus");
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didReceivePush:"), function $TNVirtualMachineDefinitionController___didReceivePush_(self, _cmd, somePushInfo)
{
    var sender = objj_msgSend(somePushInfo, "objectForKey:", "owner"),
        type = objj_msgSend(somePushInfo, "objectForKey:", "type"),
        change = objj_msgSend(somePushInfo, "objectForKey:", "change"),
        date = objj_msgSend(somePushInfo, "objectForKey:", "date");
    objj_msgSend(self, "getXMLDesc");
    return YES;
}
,["BOOL","CPDictionary"]), new objj_method(sel_getUid("_discardEditionChanges:"), function $TNVirtualMachineDefinitionController___discardEditionChanges_(self, _cmd, someUserInfo)
{
    var item = objj_msgSend(someUserInfo, "objectAtIndex:", 0),
        object = objj_msgSend(someUserInfo, "objectAtIndex:", 1);
    self._definitionEdited = NO;
    objj_msgSend(self, "getXMLDesc");
    if (objj_msgSend(object, "isKindOfClass:", TNTabView))
        objj_msgSend(object, "selectTabViewItem:", item);
    else
    {
        var idx = objj_msgSend(CPIndexSet, "indexSetWithIndex:", objj_msgSend(object, "rowForItem:", item));
        objj_msgSend(object, "selectRowIndexes:byExtendingSelection:", idx, NO)
    }
}
,["void","id"]), new objj_method(sel_getUid("_saveEditionChanges:"), function $TNVirtualMachineDefinitionController___saveEditionChanges_(self, _cmd, someUserInfo)
{
    var item = objj_msgSend(someUserInfo, "objectAtIndex:", 0),
        object = objj_msgSend(someUserInfo, "objectAtIndex:", 1);
    self._definitionEdited = NO;
    objj_msgSend(self, "defineXML");
    if (objj_msgSend(object, "isKindOfClass:", TNTabView))
        objj_msgSend(object, "selectTabViewItem:", item);
    else
    {
        var idx = objj_msgSend(CPIndexSet, "indexSetWithIndex:", objj_msgSend(object, "rowForItem:", item));
        objj_msgSend(object, "selectRowIndexes:byExtendingSelection:", idx, NO)
    }
}
,["void","id"]), new objj_method(sel_getUid("setEnableAllControls:"), function $TNVirtualMachineDefinitionController__setEnableAllControls_(self, _cmd, shouldEnableGUI)
{
    objj_msgSend(self.buttonDefine, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.buttonBoot, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.buttonClocks, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.buttonDefine, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.buttonDomainType, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.buttonGuests, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.buttonMachines, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.buttonOnCrash, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.buttonOnPowerOff, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.buttonOnReboot, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.buttonUndefine, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.buttonXMLEditorDefine, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldBlockIOTuningWeight, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldFilterNics, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldMemory, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldMemoryTuneGuarantee, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldMemoryTuneHardLimit, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldMemoryTuneSoftLimit, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldMemoryTuneSwapHardLimit, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldStringXMLDesc, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.stepperNumberCPUs, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.tableDrives, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.tableGraphicsDevices, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.tableInputDevices, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.tableInterfaces, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.tableCharacterDevices, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.checkboxACPI, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.checkboxAPIC, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.checkboxHugePages, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.checkboxEnableUSB, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.checkboxNestedVirtualization, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.checkboxPAE, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldOSCommandLine, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldOSKernel, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldOSInitrd, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldOSLoader, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldBootloader, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldBootloaderArgs, "setEnabled:", shouldEnableGUI);
    objj_msgSend(self.fieldName, "setEnabled:", shouldEnableGUI);
    if (shouldEnableGUI)
    {
        objj_msgSend(self, "_updateControlsStateForTable:", self.tableGraphicsDevices);
        objj_msgSend(self, "_updateControlsStateForTable:", self.tableInputDevices);
        objj_msgSend(self, "_updateControlsStateForTable:", self.tableInterfaces);
        objj_msgSend(self, "_updateControlsStateForTable:", self.tableDrives);
        objj_msgSend(self, "_updateControlsStateForTable:", self.tableCharacterDevices);
    }
    else
    {
        objj_msgSend(self._editButtonDrives, "setEnabled:", shouldEnableGUI);
        objj_msgSend(self._editButtonGraphicDevice, "setEnabled:", shouldEnableGUI);
        objj_msgSend(self._editButtonInputDevice, "setEnabled:", shouldEnableGUI);
        objj_msgSend(self._editButtonNics, "setEnabled:", shouldEnableGUI);
        objj_msgSend(self._editButtonCharacterDevice, "setEnabled:", shouldEnableGUI);
        objj_msgSend(self._minusButtonDrives, "setEnabled:", shouldEnableGUI);
        objj_msgSend(self._minusButtonGraphicDevice, "setEnabled:", shouldEnableGUI);
        objj_msgSend(self._minusButtonInputDevice, "setEnabled:", shouldEnableGUI);
        objj_msgSend(self._minusButtonNics, "setEnabled:", shouldEnableGUI);
        objj_msgSend(self._minusButtonCharacterDevice, "setEnabled:", shouldEnableGUI);
        objj_msgSend(self._plusButtonDrives, "setEnabled:", shouldEnableGUI);
        objj_msgSend(self._plusButtonGraphicDevice, "setEnabled:", shouldEnableGUI);
        objj_msgSend(self._plusButtonInputDevice, "setEnabled:", shouldEnableGUI);
        objj_msgSend(self._plusButtonNics, "setEnabled:", shouldEnableGUI);
        objj_msgSend(self._plusButtonCharacterDevice, "setEnabled:", shouldEnableGUI);
    }
}
,["void","BOOL"]), new objj_method(sel_getUid("_updateUIWithDefaultDomainValues"), function $TNVirtualMachineDefinitionController___updateUIWithDefaultDomainValues(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        cpu = objj_msgSend(defaults, "integerForKey:", "TNDescDefaultNumberCPU"),
        mem = objj_msgSend(defaults, "objectForKey:", "TNDescDefaultMemory"),
        vnck = objj_msgSend(defaults, "objectForKey:", "TNDescDefaultVNCKeymap"),
        opo = objj_msgSend(defaults, "objectForKey:", "TNDescDefaultOnPowerOff"),
        or = objj_msgSend(defaults, "objectForKey:", "TNDescDefaultOnReboot"),
        oc = objj_msgSend(defaults, "objectForKey:", "TNDescDefaultOnCrash"),
        hp = objj_msgSend(defaults, "boolForKey:", "TNDescDefaultHugePages"),
        nv = objj_msgSend(defaults, "boolForKey:", "TNDescDefaultNestedVirtualization"),
        clock = objj_msgSend(defaults, "objectForKey:", "TNDescDefaultClockOffset"),
        pae = objj_msgSend(defaults, "boolForKey:", "TNDescDefaultPAE"),
        acpi = objj_msgSend(defaults, "boolForKey:", "TNDescDefaultACPI"),
        apic = objj_msgSend(defaults, "boolForKey:", "TNDescDefaultAPIC"),
        inputType = objj_msgSend(defaults, "objectForKey:", "TNDescDefaultInputType"),
        inputBus = objj_msgSend(defaults, "objectForKey:", "TNDescDefaultInputBus");
    objj_msgSend(self.stepperNumberCPUs, "setDoubleValue:", cpu);
    objj_msgSend(self.fieldMemory, "setStringValue:", mem);
    objj_msgSend(self.fieldStringXMLDesc, "setStringValue:", "");
    objj_msgSend(self.buttonOnPowerOff, "selectItemWithTitle:", opo);
    objj_msgSend(self.buttonOnReboot, "selectItemWithTitle:", or);
    objj_msgSend(self.buttonOnCrash, "selectItemWithTitle:", oc);
    objj_msgSend(self.buttonClocks, "selectItemWithTitle:", clock);
    objj_msgSend(self.checkboxPAE, "setState:", ((pae == 1) ? CPOnState : CPOffState));
    objj_msgSend(self.checkboxACPI, "setState:", ((acpi == 1) ? CPOnState : CPOffState));
    objj_msgSend(self.checkboxAPIC, "setState:", ((apic == 1) ? CPOnState : CPOffState));
    objj_msgSend(self.checkboxHugePages, "setState:", ((hp == 1) ? CPOnState : CPOffState));
    objj_msgSend(self.checkboxEnableUSB, "setState:", CPOnState);
    objj_msgSend(self.checkboxNestedVirtualization, "setState:", ((nv == 1) ? CPOnState : CPOffState));
    objj_msgSend(self.buttonMachines, "removeAllItems");
    objj_msgSend(self.buttonDomainType, "removeAllItems");
    objj_msgSend(self._nicsDatasource, "removeAllObjects");
    objj_msgSend(self._drivesDatasource, "removeAllObjects");
    objj_msgSend(self._inputDevicesDatasource, "removeAllObjects");
    objj_msgSend(self._graphicDevicesDatasource, "removeAllObjects");
    objj_msgSend(self.tableInterfaces, "reloadData");
    objj_msgSend(self.tableDrives, "reloadData");
    objj_msgSend(self.tableInputDevices, "reloadData");
    objj_msgSend(self.tableGraphicsDevices, "reloadData");
    objj_msgSend(self.fieldOSKernel, "setStringValue:", "");
    objj_msgSend(self.fieldOSInitrd, "setStringValue:", "");
    objj_msgSend(self.fieldOSLoader, "setStringValue:", "");
    objj_msgSend(self.fieldBootloaderArgs, "setStringValue:", "");
    objj_msgSend(self.fieldOSCommandLine, "setStringValue:", "");
    objj_msgSend(self.fieldBootloader, "setStringValue:", "");
    objj_msgSend(self.fieldMemoryTuneSoftLimit, "setStringValue:", "");
    objj_msgSend(self.fieldMemoryTuneHardLimit, "setStringValue:", "");
    objj_msgSend(self.fieldMemoryTuneGuarantee, "setStringValue:", "");
    objj_msgSend(self.fieldMemoryTuneSwapHardLimit, "setStringValue:", "");
    objj_msgSend(self.fieldBlockIOTuningWeight, "setStringValue:", "");
    objj_msgSend(self.fieldName, "setStringValue:", objj_msgSend(self._entity, "name"));
}
,["void"]), new objj_method(sel_getUid("_domainOfCurrentGuestWithType:"), function $TNVirtualMachineDefinitionController___domainOfCurrentGuestWithType_(self, _cmd, aType)
{
    var currentSelectedGuest = objj_msgSend(self.buttonGuests, "selectedItem"),
        capabilities = objj_msgSend(currentSelectedGuest, "representedObject"),
        domains = objj_msgSend(capabilities, "childrenWithName:", "domain");
    for (var i = 0; i < objj_msgSend(domains, "count"); i++)
    {
        var domain = objj_msgSend(domains, "objectAtIndex:", i);
        if (objj_msgSend(domain, "valueForAttribute:", "type") == aType)
            return domain
    }
    return nil;
}
,["TNXMLNode","CPString"]), new objj_method(sel_getUid("_selectGuestWithType:architecture:"), function $TNVirtualMachineDefinitionController___selectGuestWithType_architecture_(self, _cmd, aType, anArch)
{
    var guests = objj_msgSend(self.buttonGuests, "itemArray");
    for (var i = 0; i < objj_msgSend(guests, "count"); i++)
    {
        var guest = objj_msgSend(objj_msgSend(guests, "objectAtIndex:", i), "representedObject");
        if ((objj_msgSend(objj_msgSend(guest, "firstChildWithName:", "os_type"), "text") == aType)
            && (objj_msgSend(objj_msgSend(guest, "firstChildWithName:", "arch"), "valueForAttribute:", "name") == anArch))
            objj_msgSend(self.buttonGuests, "selectItemAtIndex:", i);
    }
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("_updateUIForCurrentEntityStatus"), function $TNVirtualMachineDefinitionController___updateUIForCurrentEntityStatus(self, _cmd)
{
    var entityXMPPShow = objj_msgSend(self._entity, "XMPPShow");
    objj_msgSend(self, "setEnableAllControls:", (entityXMPPShow == TNStropheContactStatusBusy));
    if (entityXMPPShow != TNStropheContactStatusBusy)
    {
        objj_msgSend(self.driveController, "closeWindow:", nil);
        objj_msgSend(self.inputDeviceController, "closeWindow:", nil);
        objj_msgSend(self.interfaceController, "closeWindow:", nil);
        objj_msgSend(self.graphicDeviceController, "closeWindow:", nil);
        objj_msgSend(self.characterDeviceController, "closeWindow:", nil);
        if (self._definitionEdited)
            objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Definition edited", "Definition edited"), CPBundleLocalizedString("You started the virtual machine, but you haven't save the current changes.", "You started the virtual machine, but you haven't save the current changes."));
    }
}
,["void"]), new objj_method(sel_getUid("_updateUIForCurrentGuest"), function $TNVirtualMachineDefinitionController___updateUIForCurrentGuest(self, _cmd)
{
    var currentSelectedGuest = objj_msgSend(self.buttonGuests, "selectedItem"),
        capabilities = objj_msgSend(currentSelectedGuest, "representedObject"),
        domains = objj_msgSend(capabilities, "childrenWithName:", "domain");
    if (self._libvirtDomain && objj_msgSend(objj_msgSend(domains, "firstObject"), "valueForAttribute:", "type") == TNLibvirtDomainTypeXen)
    {
        var tablets = [];
        for (var i = 0; i < objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "inputs"), "count"); i++)
        {
            var input = objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "inputs"), "objectAtIndex:", i);
            if (objj_msgSend(input, "type") == TNLibvirtDeviceInputTypesTypeTablet)
                objj_msgSend(tablets, "addObject:", input);
        }
        objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "inputs"), "removeObjectsInArray:", tablets);
    }
    if (domains && objj_msgSend(domains, "count") > 0)
    {
        objj_msgSend(self.buttonDomainType, "removeAllItems");
        for (var i = 0; i < objj_msgSend(domains, "count"); i++)
        {
            var domain = objj_msgSend(domains, "objectAtIndex:", i);
            objj_msgSend(self.buttonDomainType, "addItemWithTitle:", objj_msgSend(domain, "valueForAttribute:", "type"));
        }
        if (self._libvirtDomain && objj_msgSend(self._libvirtDomain, "type"))
        {
            objj_msgSend(self.buttonDomainType, "selectItemWithTitle:", objj_msgSend(self._libvirtDomain, "type"));
        }
        else
        {
            var defaultDomainType = objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "objectForKey:", "TNDescDefaultDomainType");
            if (defaultDomainType && objj_msgSend(self.buttonDomainType, "itemWithTitle:", defaultDomainType))
                objj_msgSend(self.buttonDomainType, "selectItemWithTitle:", defaultDomainType);
            else
                objj_msgSend(self.buttonDomainType, "selectItemAtIndex:", 0);
        }
        objj_msgSend(self, "_updateUIFromDomainType");
    }
    if (objj_msgSend(capabilities, "containsChildrenWithName:", "features"))
    {
        var features = objj_msgSend(capabilities, "firstChildWithName:", "features");
        objj_msgSend(self.checkboxPAE, "setEnabled:", NO);
        if (objj_msgSend(features, "containsChildrenWithName:", "nonpae") && objj_msgSend(features, "containsChildrenWithName:", "pae"))
            objj_msgSend(self.checkboxPAE, "setEnabled:", (objj_msgSend(self._entity, "XMPPShow") == TNStropheContactStatusBusy));
        if (!objj_msgSend(features, "containsChildrenWithName:", "nonpae") && objj_msgSend(features, "containsChildrenWithName:", "pae"))
            objj_msgSend(self.checkboxPAE, "setState:", CPOnState);
        if (objj_msgSend(features, "containsChildrenWithName:", "nonpae") && !objj_msgSend(features, "containsChildrenWithName:", "pae"))
            objj_msgSend(self.checkboxPAE, "setState:", CPOffState);
        objj_msgSend(self.checkboxACPI, "setEnabled:", NO);
        if (objj_msgSend(features, "containsChildrenWithName:", "acpi"))
        {
            objj_msgSend(self.checkboxACPI, "setEnabled:", (objj_msgSend(self._entity, "XMPPShow") == TNStropheContactStatusBusy) && objj_msgSend(objj_msgSend(features, "firstChildWithName:", "acpi"), "valueForAttribute:", "toggle") == "yes");
            objj_msgSend(self.checkboxACPI, "setState:", objj_msgSend(objj_msgSend(features, "firstChildWithName:", "acpi"), "valueForAttribute:", "default") == "on" ? CPOnState : CPOffState);
        }
        objj_msgSend(self.checkboxAPIC, "setEnabled:", NO);
        if (objj_msgSend(features, "containsChildrenWithName:", "apic"))
        {
            objj_msgSend(self.checkboxAPIC, "setEnabled:", (objj_msgSend(self._entity, "XMPPShow") == TNStropheContactStatusBusy) && objj_msgSend(objj_msgSend(features, "firstChildWithName:", "apic"), "valueForAttribute:", "toggle") == "yes");
            objj_msgSend(self.checkboxAPIC, "setState:", objj_msgSend(objj_msgSend(features, "firstChildWithName:", "apic"), "valueForAttribute:", "default") == "on" ? CPOnState : CPOffState);
        }
    }
}
,["void"]), new objj_method(sel_getUid("_updateUIFromDomainType"), function $TNVirtualMachineDefinitionController___updateUIFromDomainType(self, _cmd)
{
    var currentSelectedGuest = objj_msgSend(self.buttonGuests, "selectedItem"),
        capabilities = objj_msgSend(currentSelectedGuest, "representedObject"),
        currentDomain = objj_msgSend(self, "_domainOfCurrentGuestWithType:", objj_msgSend(self.buttonDomainType, "title")),
        machines = objj_msgSend(currentDomain, "childrenWithName:", "machine");
    objj_msgSend(self.buttonMachines, "removeAllItems");
    for (var i = 0; i < objj_msgSend(machines, "count"); i++)
    {
        var machine = objj_msgSend(machines, "objectAtIndex:", i);
        objj_msgSend(self.buttonMachines, "addItemWithTitle:", objj_msgSend(machine, "text"));
    }
    if (objj_msgSend(objj_msgSend(self.buttonMachines, "itemArray"), "count") == 0)
    {
        var defaultMachines = objj_msgSend(objj_msgSend(capabilities, "firstChildWithName:", "arch"), "childrenWithName:", "machine");
        for (var i = 0; i < objj_msgSend(defaultMachines, "count"); i++)
        {
            var machine = objj_msgSend(defaultMachines, "objectAtIndex:", i);
            objj_msgSend(self.buttonMachines, "addItemWithTitle:", objj_msgSend(machine, "text"));
        }
    }
    if (self._libvirtDomain && objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "type") && objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "type"), "machine"))
    {
        objj_msgSend(self.buttonMachines, "selectItemWithTitle:", objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "type"), "machine"));
    }
    else
    {
        objj_msgSend(self.buttonMachines, "selectItemAtIndex:", 0);
        var defaultMachine = objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "objectForKey:", "TNDescDefaultMachine");
        if (defaultMachine && objj_msgSend(self.buttonMachines, "itemWithTitle:", defaultMachine))
            objj_msgSend(self.buttonMachines, "selectItemWithTitle:", defaultMachine);
    }
}
,["void"]), new objj_method(sel_getUid("_simulateControlsChanges"), function $TNVirtualMachineDefinitionController___simulateControlsChanges(self, _cmd)
{
    objj_msgSend(self, "didChangeName:", self.fieldName);
    objj_msgSend(self, "didChangeMemory:", self.fieldMemory);
    objj_msgSend(self, "didChangeGuest:", self.buttonGuests);
    objj_msgSend(self, "didChangeVCPU:", self.stepperNumberCPUs);
    objj_msgSend(self, "didChangeAPIC:", self.checkboxAPIC);
    objj_msgSend(self, "didChangeACPI:", self.checkboxACPI);
    objj_msgSend(self, "didChangePAE:", self.checkboxPAE);
    objj_msgSend(self, "didChangeHugePages:", self.checkboxHugePages);
    objj_msgSend(self, "didChangeEnableUSB:", self.checkboxEnableUSB);
    objj_msgSend(self, "didChangeNestedVirtualization:", self.checkboxNestedVirtualization);
    objj_msgSend(self, "didChangeClock:", self.buttonClocks);
    objj_msgSend(self, "didChangeOnCrash:", self.buttonOnCrash);
    objj_msgSend(self, "didChangeOnReboot:", self.buttonOnReboot);
    objj_msgSend(self, "didChangeOnPowerOff:", self.buttonOnPowerOff);
    objj_msgSend(self, "didChangeMemoryTuneHardLimit:", self.fieldMemoryTuneHardLimit);
    objj_msgSend(self, "didChangeMemoryTuneSoftLimit:", self.fieldMemoryTuneSoftLimit);
    objj_msgSend(self, "didChangeMemoryTuneGuarantee:", self.fieldMemoryTuneGuarantee);
    objj_msgSend(self, "didChangeBlockIOTuningWeight:", self.fieldBlockIOTuningWeight);
    objj_msgSend(self, "didChangeBoot:", self.buttonBoot);
    objj_msgSend(self, "didChangeOSKernel:", self.fieldOSKernel);
    objj_msgSend(self, "didChangeOSInitrd:", self.fieldOSInitrd);
    objj_msgSend(self, "didChangeOSLoader:", self.fieldOSLoader);
    objj_msgSend(self, "didChangeOSCommandLine:", self.fieldOSCommandLine);
    objj_msgSend(self, "didChangeBootloader:", self.fieldBootloader);
    objj_msgSend(self, "didChangeBootloaderArgs:", self.fieldBootloaderArgs);
}
,["void"]), new objj_method(sel_getUid("_updateControlsStateForTable:"), function $TNVirtualMachineDefinitionController___updateControlsStateForTable_(self, _cmd, aTableView)
{
    var currentController,
        currentAddButton,
        currentDeleteButton,
        currentEditButton;
    switch (aTableView)
    {
        case self.tableDrives:
            currentController = self.driveController;
            currentAddButton = self._plusButtonDrives;
            currentDeleteButton = self._minusButtonDrives;
            currentEditButton = self._editButtonDrives;
            break;
        case self.tableInterfaces:
            currentController = self.interfaceController;
            currentAddButton = self._plusButtonNics;
            currentDeleteButton = self._minusButtonNics;
            currentEditButton = self._editButtonNics;
            break;
        case self.tableCharacterDevices:
            currentController = self.characterDeviceController;
            currentAddButton = self._plusButtonCharacterDevice;
            currentDeleteButton = self._minusButtonCharacterDevice;
            currentEditButton = self._editButtonCharacterDevice;
            break;
        case self.tableGraphicsDevices:
            currentController = self.graphicDeviceController;
            currentAddButton = self._plusButtonGraphicDevice;
            currentDeleteButton = self._minusButtonGraphicDevice;
            currentEditButton = self._editButtonGraphicDevice;
            break;
        case self.tableInputDevices:
            currentController = self.inputDeviceController;
            currentAddButton = self._plusButtonInputDevice;
            currentDeleteButton = self._minusButtonInputDevice;
            currentEditButton = self._editButtonInputDevice;
            break;
    }
    objj_msgSend(currentController, "closeWindow:", nil);
    objj_msgSend(currentAddButton, "setEnabled:", NO);
    objj_msgSend(currentDeleteButton, "setEnabled:", NO);
    objj_msgSend(currentEditButton, "setEnabled:", NO);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", currentAddButton, "define");
    if (objj_msgSend(aTableView, "numberOfSelectedRows") > 0)
    {
        objj_msgSend(self, "setControl:enabledAccordingToPermission:", currentDeleteButton, "define");
        objj_msgSend(self, "setControl:enabledAccordingToPermission:", currentEditButton, "define");
    }
}
,["void","CPTabViewItem"]), new objj_method(sel_getUid("_prepareCapabilitiesFromStanza:"), function $TNVirtualMachineDefinitionController___prepareCapabilitiesFromStanza_(self, _cmd, aStanza)
{
    objj_msgSend(self.buttonGuests, "removeAllItems");
    var host = objj_msgSend(aStanza, "firstChildWithName:", "host"),
        guests = objj_msgSend(aStanza, "childrenWithName:", "guest");
    self._libvirtCapabilities = objj_msgSend(CPDictionary, "dictionary");
    if (objj_msgSend(guests, "count") == 0)
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Your hypervisor have not pushed any guest support. For some reason, you can't create domains. Sorry.", "Your hypervisor have not pushed any guest support. For some reason, you can't create domains. Sorry."), TNGrowlIconError);
    }
    objj_msgSend(self._libvirtCapabilities, "setObject:forKey:", host, "host");
    objj_msgSend(self._libvirtCapabilities, "setObject:forKey:", objj_msgSend(CPArray, "array"), "guests");
    for (var i = 0; i < objj_msgSend(guests, "count"); i++)
    {
        var guestItem = objj_msgSend(objj_msgSend(CPMenuItem, "alloc"), "init"),
            guest = objj_msgSend(guests, "objectAtIndex:", i),
            osType = objj_msgSend(objj_msgSend(guest, "firstChildWithName:", "os_type"), "text"),
            arch = objj_msgSend(objj_msgSend(guest, "firstChildWithName:", "arch"), "valueForAttribute:", "name");
        objj_msgSend(guestItem, "setRepresentedObject:", guest);
        objj_msgSend(guestItem, "setTitle:", osType + " (" + arch + ")");
        objj_msgSend(self.buttonGuests, "addItem:", guestItem);
        objj_msgSend(objj_msgSend(self._libvirtCapabilities, "objectForKey:", "guests"), "addObject:", guest);
    }
    objj_msgSend(self.buttonGuests, "selectItemAtIndex:", 0)
    var defaultGuest = objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "objectForKey:", "TNDescDefaultGuest");
    if (defaultGuest && objj_msgSend(self.buttonGuests, "itemWithTitle:", defaultGuest))
        objj_msgSend(self.buttonGuests, "selectItemWithTitle:", defaultGuest);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("_prepareUndefinedDomainFromStanza:"), function $TNVirtualMachineDefinitionController___prepareUndefinedDomainFromStanza_(self, _cmd, aStanza)
{
    objj_msgSend(self, "_updateUIWithDefaultDomainValues");
    self._libvirtDomain = objj_msgSend(TNLibvirtDomain, "defaultDomainWithType:osType:", objj_msgSend(self.buttonDomainType, "title"), objj_msgSend(self.buttonMachines, "title"));
    objj_msgSend(self._libvirtDomain, "setName:", objj_msgSend(self.fieldName, "stringValue"));
    objj_msgSend(self._libvirtDomain, "setUUID:", objj_msgSend(objj_msgSend(self._entity, "JID"), "node"));
    objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "inputs"), "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceInput, "alloc"), "init"));
    objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "graphics"), "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceGraphic, "alloc"), "init"));
    objj_msgSend(self._inputDevicesDatasource, "setContent:", objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "inputs"));
    objj_msgSend(self.tableInputDevices, "reloadData");
    objj_msgSend(self._graphicDevicesDatasource, "setContent:", objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "graphics"));
    objj_msgSend(self.tableGraphicsDevices, "reloadData");
    objj_msgSend(self._drivesDatasource, "setContent:", objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "disks"));
    objj_msgSend(self.tableDrives, "reloadData");
    objj_msgSend(self._nicsDatasource, "setContent:", objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "interfaces"));
    objj_msgSend(self.tableInterfaces, "reloadData");
    objj_msgSend(self._characterDevicesDatasource, "setContent:", objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "characters"));
    objj_msgSend(self.tableCharacterDevices, "reloadData");
    objj_msgSend(self, "setEnableAllControls:", YES);
    objj_msgSend(self.fieldName, "setEnabled:", NO);
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("_prepareDefinedDomainFromStanza:"), function $TNVirtualMachineDefinitionController___prepareDefinedDomainFromStanza_(self, _cmd, aStanza)
{
    self._libvirtDomain = objj_msgSend(objj_msgSend(TNLibvirtDomain, "alloc"), "initWithXMLNode:", objj_msgSend(aStanza, "firstChildWithName:", "domain"));
    objj_msgSend(self, "_selectGuestWithType:architecture:", objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "type"), "type"), objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "type"), "architecture"));
    objj_msgSend(self.fieldName, "setStringValue:", objj_msgSend(self._libvirtDomain, "name"));
    objj_msgSend(self.fieldName, "setEnabled:", YES);
    objj_msgSend(self.buttonDomainType, "selectItemWithTitle:", objj_msgSend(self._libvirtDomain, "type"));
    objj_msgSend(self.buttonMachines, "selectItemWithTitle:", objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "type"), "machine"));
    objj_msgSend(self.fieldMemory, "setIntValue:", (objj_msgSend(self._libvirtDomain, "memory") / 1024));
    objj_msgSend(self.stepperNumberCPUs, "setDoubleValue:", objj_msgSend(self._libvirtDomain, "VCPU"));
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.buttonBoot, "define");
    if (objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "boot"))
        objj_msgSend(self.buttonBoot, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "boot"));
    else
        objj_msgSend(self.buttonBoot, "selectItemAtIndex:", 0);
    objj_msgSend(self.buttonOnPowerOff, "selectItemWithTitle:", objj_msgSend(self._libvirtDomain, "onPowerOff"));
    objj_msgSend(self.buttonOnReboot, "selectItemWithTitle:", objj_msgSend(self._libvirtDomain, "onReboot"));
    objj_msgSend(self.buttonOnCrash, "selectItemWithTitle:", objj_msgSend(self._libvirtDomain, "onCrash"));
    objj_msgSend(self.checkboxAPIC, "setState:", objj_msgSend(objj_msgSend(self._libvirtDomain, "features"), "isAPIC"));
    objj_msgSend(self.checkboxACPI, "setState:", objj_msgSend(objj_msgSend(self._libvirtDomain, "features"), "isACPI"));
    objj_msgSend(self.checkboxPAE, "setState:", objj_msgSend(objj_msgSend(self._libvirtDomain, "features"), "isPAE"));
    objj_msgSend(self.checkboxHugePages, "setState:", CPOffState)
    if (objj_msgSend(self._libvirtDomain, "memoryBacking") && objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryBacking"), "isUsingHugePages"))
        objj_msgSend(self.checkboxHugePages, "setState:", YES);
    objj_msgSend(self.checkboxEnableUSB, "setState:", CPOnState);
    if (objj_msgSend(self._libvirtDomain, "devices"))
    {
        var controllers = objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "controllers");
        for (var i = 0; i < objj_msgSend(controllers, "count"); i++)
        {
            var type = objj_msgSend(objj_msgSend(controllers, "objectAtIndex:", i), "type"),
                model = objj_msgSend(objj_msgSend(controllers, "objectAtIndex:", i), "model");
            if (type == TNLibvirtDeviceControllerTypeUSB && model == TNLibvirtDeviceControllerModelNONE)
            {
                objj_msgSend(self.checkboxEnableUSB, "setState:", CPOffState);
                break;
            }
        }
    }
    objj_msgSend(self.checkboxNestedVirtualization, "setState:", objj_msgSend(self, "_isNestedVirtualizationEnabled") ? CPOnState : CPOffState);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.buttonClocks, "define");
    objj_msgSend(self.buttonClocks, "selectItemWithTitle:", objj_msgSend(objj_msgSend(self._libvirtDomain, "clock"), "offset"));
    objj_msgSend(self._drivesDatasource, "setContent:", objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "disks"));
    objj_msgSend(self.tableDrives, "reloadData");
    if (objj_msgSend(self._libvirtDomain, "metadata") && objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "metadata"), "content"), "firstChildWithName:", "nuage"))
    {
        var nuageNetworks = objj_msgSend(objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "metadata"), "content"), "firstChildWithName:", "nuage"), "childrenWithName:", "nuage_network");
        for (var i = 0; i < objj_msgSend(nuageNetworks, "count"); i++)
        {
            var nuageNetwork = objj_msgSend(nuageNetworks, "objectAtIndex:", i),
                interface_mac = objj_msgSend(objj_msgSend(nuageNetwork, "firstChildWithName:", "interface"), "valueForAttribute:", "mac"),
                interface_ip = objj_msgSend(objj_msgSend(nuageNetwork, "firstChildWithName:", "interface"), "valueForAttribute:", "address");
            for (var j = 0; j < objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "interfaces"), "count"); j++)
            {
                var nic = objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "interfaces"), "objectAtIndex:", j);
                if (objj_msgSend(objj_msgSend(nic, "MAC"), "uppercaseString") == objj_msgSend(interface_mac, "uppercaseString"))
                {
                    objj_msgSend(nic, "setType:", TNLibvirtDeviceInterfaceTypeNuage);
                    objj_msgSend(nic, "setNuageNetworkName:", objj_msgSend(nuageNetwork, "valueForAttribute:", "name"));
                    objj_msgSend(nic, "setNuageNetworkInterfaceIP:", interface_ip);
                }
            }
        }
    }
    objj_msgSend(self._nicsDatasource, "setContent:", objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "interfaces"));
    objj_msgSend(self.tableInterfaces, "reloadData");
    objj_msgSend(self._inputDevicesDatasource, "setContent:", objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "inputs"));
    objj_msgSend(self.tableInputDevices, "reloadData");
    objj_msgSend(self._graphicDevicesDatasource, "setContent:", objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "graphics"));
    objj_msgSend(self.tableGraphicsDevices, "reloadData");
    objj_msgSend(self._characterDevicesDatasource, "setContent:", objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "characters"));
    objj_msgSend(self.tableCharacterDevices, "reloadData");
    objj_msgSend(self.fieldMemoryTuneSoftLimit, "setIntValue:", objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "softLimit") / 1024 || "");
    objj_msgSend(self.fieldMemoryTuneHardLimit, "setIntValue:", objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "hardLimit") / 1024 || "");
    objj_msgSend(self.fieldMemoryTuneGuarantee, "setIntValue:", objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "minGuarantee") / 1024 || "");
    objj_msgSend(self.fieldMemoryTuneSwapHardLimit, "setIntValue:", objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "swapHardLimit") / 1024 || "");
    objj_msgSend(self.fieldOSKernel, "setStringValue:", objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "kernel") || "");
    objj_msgSend(self.fieldOSInitrd, "setStringValue:", objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "initrd") || "");
    objj_msgSend(self.fieldOSCommandLine, "setStringValue:", objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "commandLine") || "");
    objj_msgSend(self.fieldOSLoader, "setStringValue:", objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "loader") || "");
    objj_msgSend(self.fieldBootloader, "setStringValue:", objj_msgSend(self._libvirtDomain, "bootloader") || "");
    objj_msgSend(self.fieldBootloaderArgs, "setStringValue:", objj_msgSend(self._libvirtDomain, "bootloaderArgs") || "");
    objj_msgSend(self.fieldBlockIOTuningWeight, "setIntValue:", objj_msgSend(objj_msgSend(self._libvirtDomain, "blkiotune"), "weight") || "");
    self._stringXMLDesc = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "domain"), "stringValue");
    objj_msgSend(self.fieldStringXMLDesc, "setStringValue:", "");
    if (self._stringXMLDesc)
    {
        self._stringXMLDesc = self._stringXMLDesc.replace("\n  \n", "\n");
        self._stringXMLDesc = self._stringXMLDesc.replace("xmlns='http://www.gajim.org/xmlns/undeclared' ", "");
        self._stringXMLDesc = self._stringXMLDesc.replace("xmlns=\"http://www.gajim.org/xmlns/undeclared\" ", "");
        objj_msgSend(self.fieldStringXMLDesc, "setStringValue:", self._stringXMLDesc);
    }
    objj_msgSend(self, "setEnableAllControls:", (objj_msgSend(self._entity, "XMPPShow") == TNStropheContactStatusBusy));
}
,["void","TNStropheStanza"]), new objj_method(sel_getUid("_getCommandLineArgumentOfCPU"), function $TNVirtualMachineDefinitionController___getCommandLineArgumentOfCPU(self, _cmd)
{
    var commandLine = objj_msgSend(self._libvirtDomain, "commandLine"),
        ValueOfCPUArgument = nil,
        isValueOfCPUArgument = NO;
    if (commandLine)
    {
        for (var i = 0; i < objj_msgSend(commandLine, "count"); i++)
        {
            for (var j = 0; j < objj_msgSend(objj_msgSend(objj_msgSend(commandLine, "objectAtIndex:", i), "args"), "count"); j++)
            {
                var argumentValue = objj_msgSend(objj_msgSend(objj_msgSend(commandLine, "objectAtIndex:", i), "args"), "objectAtIndex:", j);
                if (objj_msgSend(argumentValue, "value") == "-cpu")
                {
                    isValueOfCPUArgument = YES;
                    continue;
                }
                if (isValueOfCPUArgument)
                {
                    ValueOfCPUArgument = argumentValue;
                    isValueOfCPUArgument = NO;
                }
            }
        }
    }
    return ValueOfCPUArgument;
}
,["id"]), new objj_method(sel_getUid("_isNestedVirtualizationEnabled"), function $TNVirtualMachineDefinitionController___isNestedVirtualizationEnabled(self, _cmd)
{
    return ((objj_msgSend(objj_msgSend(self, "_getCommandLineArgumentOfCPU"), "value") || "").indexOf("+vmx") > -1);
}
,["void"]), new objj_method(sel_getUid("_addNestedVirtualization"), function $TNVirtualMachineDefinitionController___addNestedVirtualization(self, _cmd)
{
    var valueOfCPUArgument = objj_msgSend(self, "_getCommandLineArgumentOfCPU");
    CPLog.info("found cpu argument? " + valueOfCPUArgument);
    if (!valueOfCPUArgument)
    {
        var commandLineObjects = objj_msgSend(self._libvirtDomain, "commandLine"),
            commandLine = nil;
        if (!commandLineObjects || objj_msgSend(commandLineObjects, "count") === 0)
        {
            var tmpCommandLine = objj_msgSend(CPArray, "array");
            commandLine = objj_msgSend(objj_msgSend(TNLibvirtDomainQEMUCommandLine, "alloc"), "init");
            objj_msgSend(tmpCommandLine, "addObject:", commandLine);
            objj_msgSend(self._libvirtDomain, "setCommandLine:", tmpCommandLine);
        }
        else
            commandLine = objj_msgSend(commandLineObjects, "objectAtIndex:", 0);
        var theArguments = objj_msgSend(commandLine, "args");
        objj_msgSend(theArguments, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDomainQEMUCommandLineArgument, "alloc"), "initWithValue:", "-cpu"));
        valueOfCPUArgument = objj_msgSend(objj_msgSend(TNLibvirtDomainQEMUCommandLineArgument, "alloc"), "initWithValue:", "qemu64");
        objj_msgSend(theArguments, "addObject:", valueOfCPUArgument);
    }
    var theValue = objj_msgSend(valueOfCPUArgument, "value");
    if (theValue.indexOf("+vmx") == -1)
    {
        theValue += ",+vmx";
        objj_msgSend(valueOfCPUArgument, "setValue:", theValue);
    }
}
,["void"]), new objj_method(sel_getUid("_removeNestedVirtualization"), function $TNVirtualMachineDefinitionController___removeNestedVirtualization(self, _cmd)
{
    var commandLine = objj_msgSend(self._libvirtDomain, "commandLine"),
        isValueOfCPUArgument = NO;
    if (commandLine)
    {
        for (var i = 0; i < objj_msgSend(commandLine, "count"); i++)
        {
            var shouldBeRemoved = objj_msgSend(CPArray, "array");
            for (var j = 0; j < objj_msgSend(objj_msgSend(objj_msgSend(commandLine, "objectAtIndex:", i), "args"), "count"); j++)
            {
                var argumentValue = objj_msgSend(objj_msgSend(objj_msgSend(commandLine, "objectAtIndex:", i), "args"), "objectAtIndex:", j);
                if (objj_msgSend(argumentValue, "value") == "-cpu")
                {
                    isValueOfCPUArgument = YES;
                    continue;
                }
                if (isValueOfCPUArgument)
                {
                    var tmpValue = objj_msgSend(argumentValue, "value");
                    if (tmpValue == "qemu64,+vmx")
                    {
                        objj_msgSend(shouldBeRemoved, "addObject:", j);
                        objj_msgSend(shouldBeRemoved, "addObject:", (j - 1));
                    }
                    else
                    {
                        tmpValue = tmpValue.replace(new RegExp(",?\\+vmx", 'g'), '');
                        objj_msgSend(argumentValue, "setValue:", tmpValue);
                        isValueOfCPUArgument = NO;
                    }
                }
            }
            if (objj_msgSend(shouldBeRemoved, "count") > 0)
            {
                var tmpArguments = objj_msgSend(CPArray, "array");
                for (var j = 0; j < objj_msgSend(objj_msgSend(objj_msgSend(commandLine, "objectAtIndex:", i), "args"), "count"); j++)
                {
                    if (objj_msgSend(shouldBeRemoved, "indexOfObject:", j) !== CPNotFound)
                        continue;
                    objj_msgSend(tmpArguments, "addObject:", objj_msgSend(objj_msgSend(objj_msgSend(commandLine, "objectAtIndex:", i), "args"), "objectAtIndex:", j));
                }
                objj_msgSend(objj_msgSend(commandLine, "objectAtIndex:", i), "setArgs:", tmpArguments);
            }
        }
    }
}
,["void"]), new objj_method(sel_getUid("getCapabilities"), function $TNVirtualMachineDefinitionController__getCapabilities(self, _cmd)
{
    objj_msgSend(self, "setEnableAllControls:", NO);
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineDefinition});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineDefinitionCapabilities});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didGetXMLCapabilities:"), self);
}
,["void"]), new objj_method(sel_getUid("_didGetXMLCapabilities:"), function $TNVirtualMachineDefinitionController___didGetXMLCapabilities_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") != "result")
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
        return NO;
    }
    objj_msgSend(self, "_prepareCapabilitiesFromStanza:", aStanza);
    objj_msgSend(self, "getXMLDesc");
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("getXMLDesc"), function $TNVirtualMachineDefinitionController__getXMLDesc(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineControlXMLDesc});
    self._libvirtDomain = nil;
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didGetXMLDescription:"), self);
}
,["void"]), new objj_method(sel_getUid("_didGetXMLDescription:"), function $TNVirtualMachineDefinitionController___didGetXMLDescription_(self, _cmd, aStanza)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    if (objj_msgSend(aStanza, "type") == "error")
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
        return;
    }
    if (objj_msgSend(aStanza, "firstChildWithName:", "not-defined"))
        objj_msgSend(self, "_prepareUndefinedDomainFromStanza:", aStanza);
    else
        objj_msgSend(self, "_prepareDefinedDomainFromStanza:", aStanza);
    objj_msgSend(self, "_updateUIForCurrentGuest");
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("defineXML"), function $TNVirtualMachineDefinitionController__defineXML(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineDefinition});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineDefinitionDefine});
    objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "characters"), "filterUsingPredicate:", self._consoleFilterPredicate);
    CPLog.info("XML Definition is : " + objj_msgSend(objj_msgSend(self._libvirtDomain, "XMLNode"), "stringValue"));
    objj_msgSend(stanza, "addNode:", objj_msgSend(self._libvirtDomain, "XMLNode"));
    objj_msgSend(self.buttonDefine, "setStringValue:", CPLocalizedString("Sending...", "Sending..."));
    objj_msgSend(self, "setEnableAllControls:", NO);
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didDefineXML:"));
}
,["void"]), new objj_method(sel_getUid("defineXMLString"), function $TNVirtualMachineDefinitionController__defineXMLString(self, _cmd)
{
    var desc;
    try
    {
        desc = (new DOMParser()).parseFromString(unescape(""+objj_msgSend(self.fieldStringXMLDesc, "stringValue")+""), "text/xml").getElementsByTagName("domain")[0];
        if (!desc || typeof(desc) == "undefined")
            objj_msgSend(CPException, "raise:reason:", CPInternalInconsistencyException, "Not valid XML");
    }
    catch (e)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", CPLocalizedString("Error", "Error"), CPLocalizedString("Unable to parse the given XML", "Unable to parse the given XML"), CPCriticalAlertStyle);
        objj_msgSend(self.popoverXMLEditor, "close");
        return;
    }
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    try
    {
        var descNode = objj_msgSend(TNXMLNode, "nodeWithXMLNode:", desc);
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineDefinition});
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {"action": TNArchipelTypeVirtualMachineDefinitionDefine});
        objj_msgSend(stanza, "addNode:", descNode);
    }
    catch (e)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:style:", CPLocalizedString("Error", "Error"), CPLocalizedString("Unable to parse the given XML", "Unable to parse the given XML")+("\n"+e), CPCriticalAlertStyle);
        objj_msgSend(self.popoverXMLEditor, "close");
        return;
    }
    objj_msgSend(self, "setEnableAllControls:", NO);
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didDefineXML:"));
    objj_msgSend(self.popoverXMLEditor, "close");
}
,["void"]), new objj_method(sel_getUid("_didDefineXML:"), function $TNVirtualMachineDefinitionController___didDefineXML_(self, _cmd, aStanza)
{
    var responseType = objj_msgSend(aStanza, "type"),
        responseFrom = objj_msgSend(aStanza, "from");
    objj_msgSend(self.buttonDefine, "setStringValue:", CPLocalizedString("Validate", "Validate"));
    if (responseType == "result")
    {
        CPLog.info("Definition of virtual machine " + objj_msgSend(self._entity, "name") + " sucessfuly updated")
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNArchipelDefinitionUpdatedNotification, self);
    }
    else if (responseType == "error")
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    objj_msgSend(self, "setEnableAllControls:", YES);
    self._definitionEdited = NO;
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("undefineXML"), function $TNVirtualMachineDefinitionController__undefineXML(self, _cmd)
{
        var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Are you sure you want to undefine this virtual machine ?", "Are you sure you want to undefine this virtual machine ?"), CPBundleLocalizedString("All your changes will be definitly lost.", "All your changes will be definitly lost."), self, [[CPBundleLocalizedString("Undefine", "Undefine"), sel_getUid("performUndefineXML:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
        objj_msgSend(alert, "runModal");
}
,["void"]), new objj_method(sel_getUid("performUndefineXML:"), function $TNVirtualMachineDefinitionController__performUndefineXML_(self, _cmd, someUserInfo)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineDefinition});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {"action": TNArchipelTypeVirtualMachineDefinitionUndefine});
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("didUndefineXML:"), self);
}
,["void","id"]), new objj_method(sel_getUid("didUndefineXML:"), function $TNVirtualMachineDefinitionController__didUndefineXML_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "error")
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
        return NO;
    }
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Virtual machine has been undefined", "Virtual machine has been undefined"));
    self._libvirtDomain = nil;
    objj_msgSend(self, "getXMLDesc");
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("tableViewSelectionDidChange:"), function $TNVirtualMachineDefinitionController__tableViewSelectionDidChange_(self, _cmd, aNotification)
{
    objj_msgSend(self, "_updateControlsStateForTable:", objj_msgSend(aNotification, "object"));
}
,["void","CPNotification"]), new objj_method(sel_getUid("tabView:didSelectTabViewItem:"), function $TNVirtualMachineDefinitionController__tabView_didSelectTabViewItem_(self, _cmd, aTabView, anItem)
{
    objj_msgSend(self.interfaceController, "closeWindow:", nil);
    objj_msgSend(self.driveController, "closeWindow:", nil);
    objj_msgSend(self.inputDeviceController, "closeWindow:", nil);
    objj_msgSend(self.graphicDeviceController, "closeWindow:", nil);
    objj_msgSend(self.characterDeviceController, "closeWindow:", nil);
    objj_msgSend(self.popoverXMLEditor, "close");
}
,["void","TNTabView","CPTabViewItem"])]);
}
{
var the_class = objj_getClass("TNVirtualMachineDefinitionController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNVirtualMachineDefinitionController\"");
var meta_class = the_class.isa;


       
       



       
       



       
       



       
       



       
       




class_addMethods(the_class, [new objj_method(sel_getUid("addGraphicDevice:"), function $TNVirtualMachineDefinitionController__addGraphicDevice_(self, _cmd, aSender)
{
    var graphicDevice = objj_msgSend(objj_msgSend(TNLibvirtDeviceGraphic, "alloc"), "init");
    if (!objj_msgSend(self._libvirtDomain, "devices"))
        objj_msgSend(self._libvirtDomain, "setDevices:", objj_msgSend(objj_msgSend(TNLibvirtDevices, "alloc"), "init"));
    if (objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "graphics"), "count") != 0)
    {
        objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You can only set one graphic device", "You can only set one graphic device"));
        return;
    }
    objj_msgSend(self.graphicDeviceController, "setGraphicDevice:", graphicDevice);
    objj_msgSend(self.graphicDeviceController, "openWindow:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("editGraphicDevice:"), function $TNVirtualMachineDefinitionController__editGraphicDevice_(self, _cmd, aSender)
{
    if (!objj_msgSend(self, "currentEntityHasPermission:", "define"))
        return;
    if (objj_msgSend(self.tableGraphicsDevices, "numberOfSelectedRows") <= 0)
         return;
    var graphicDevice = objj_msgSend(self._graphicDevicesDatasource, "objectAtIndex:", objj_msgSend(self.tableGraphicsDevices, "selectedRow"));
    objj_msgSend(self.graphicDeviceController, "setGraphicDevice:", graphicDevice);
    objj_msgSend(self.graphicDeviceController, "openWindow:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("deleteGraphicDevice:"), function $TNVirtualMachineDefinitionController__deleteGraphicDevice_(self, _cmd, aSender)
{
    if (objj_msgSend(self.tableGraphicsDevices, "numberOfSelectedRows") <= 0)
        return;
    objj_msgSend(self._graphicDevicesDatasource, "removeObjectAtIndex:", objj_msgSend(self.tableGraphicsDevices, "selectedRow"));
    objj_msgSend(self.tableGraphicsDevices, "reloadData");
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("addInputDevice:"), function $TNVirtualMachineDefinitionController__addInputDevice_(self, _cmd, aSender)
{
    var inputDevice = objj_msgSend(objj_msgSend(TNLibvirtDeviceInput, "alloc"), "init");
    objj_msgSend(inputDevice, "setType:", objj_msgSend(self.buttonPreferencesInput, "title"));
    if (!objj_msgSend(self._libvirtDomain, "devices"))
        objj_msgSend(self._libvirtDomain, "setDevices:", objj_msgSend(objj_msgSend(TNLibvirtDevices, "alloc"), "init"));
    objj_msgSend(self.inputDeviceController, "setInputDevice:", inputDevice);
    objj_msgSend(self.inputDeviceController, "openWindow:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("editInputDevice:"), function $TNVirtualMachineDefinitionController__editInputDevice_(self, _cmd, aSender)
{
    if (!objj_msgSend(self, "currentEntityHasPermission:", "define"))
        return;
    if (objj_msgSend(self.tableInputDevices, "numberOfSelectedRows") <= 0)
         return;
    var inputDevice = objj_msgSend(self._inputDevicesDatasource, "objectAtIndex:", objj_msgSend(self.tableInputDevices, "selectedRow"));
    objj_msgSend(self.inputDeviceController, "setInputDevice:", inputDevice);
    objj_msgSend(self.inputDeviceController, "openWindow:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("deleteInputDevice:"), function $TNVirtualMachineDefinitionController__deleteInputDevice_(self, _cmd, aSender)
{
    if (objj_msgSend(self.tableInputDevices, "numberOfSelectedRows") <= 0)
        return;
    objj_msgSend(self._inputDevicesDatasource, "removeObjectAtIndex:", objj_msgSend(self.tableInputDevices, "selectedRow"));
    objj_msgSend(self.tableInputDevices, "reloadData");
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("addDrive:"), function $TNVirtualMachineDefinitionController__addDrive_(self, _cmd, aSender)
{
    if (!objj_msgSend(self, "currentEntityHasPermission:", "define"))
        return;
    var newDrive = objj_msgSend(objj_msgSend(TNLibvirtDeviceDisk, "alloc"), "init"),
        newDriveSource = objj_msgSend(objj_msgSend(TNLibvirtDeviceDiskSource, "alloc"), "init"),
        newDriveTarget = objj_msgSend(objj_msgSend(TNLibvirtDeviceDiskTarget, "alloc"), "init"),
        newDriveDriver = objj_msgSend(objj_msgSend(TNLibvirtDeviceDiskDriver, "alloc"), "init");
    objj_msgSend(newDriveDriver, "setCache:", TNLibvirtDeviceDiskDriverCacheDefault);
    objj_msgSend(newDriveTarget, "setBus:", TNLibvirtDeviceDiskTargetBusIDE);
    objj_msgSend(newDriveTarget, "setDevice:", nil);
    objj_msgSend(newDriveSource, "setFile:", "/dev/null");
    objj_msgSend(newDrive, "setType:", TNLibvirtDeviceDiskTypeFile);
    objj_msgSend(newDrive, "setDevice:", TNLibvirtDeviceDiskDeviceDisk);
    objj_msgSend(newDrive, "setSource:", newDriveSource);
    objj_msgSend(newDrive, "setTarget:", newDriveTarget);
    objj_msgSend(newDrive, "setDriver:", newDriveDriver);
    objj_msgSend(self.driveController, "setDrive:", newDrive);
    if (objj_msgSend(self._libvirtDomain, "devices"))
        objj_msgSend(self.driveController, "setOtherDrives:", objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "disks"));
    else
        objj_msgSend(self.driveController, "setOtherDrives:", nil);
    objj_msgSend(self.driveController, "openWindow:", self._plusButtonDrives);
}
,["id","id"]), new objj_method(sel_getUid("editDrive:"), function $TNVirtualMachineDefinitionController__editDrive_(self, _cmd, aSender)
{
    if (!objj_msgSend(self, "currentEntityHasPermission:", "define"))
        return;
    if (objj_msgSend(self.tableDrives, "numberOfSelectedRows") <= 0)
         return;
    var driveObject = objj_msgSend(self._drivesDatasource, "objectAtIndex:", objj_msgSend(self.tableDrives, "selectedRow"));
    objj_msgSend(self.driveController, "setDrive:", driveObject);
    if (objj_msgSend(self._libvirtDomain, "devices"))
        objj_msgSend(self.driveController, "setOtherDrives:", objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "disks"));
    else
        objj_msgSend(self.driveController, "setOtherDrives:", nil);
    if (objj_msgSend(aSender, "isKindOfClass:", CPMenuItem))
        aSender = self._minusButtonDrives;
    objj_msgSend(self.driveController, "openWindow:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("deleteDrive:"), function $TNVirtualMachineDefinitionController__deleteDrive_(self, _cmd, aSender)
{
    if (!objj_msgSend(self, "currentEntityHasPermission:", "define"))
        return;
    if (objj_msgSend(self.tableDrives, "numberOfSelectedRows") <= 0)
        return;
     var selectedIndexes = objj_msgSend(self.tableDrives, "selectedRowIndexes");
     objj_msgSend(self._drivesDatasource, "removeObjectsAtIndexes:", selectedIndexes);
     objj_msgSend(self.tableDrives, "reloadData");
     objj_msgSend(self.tableDrives, "deselectAll");
     self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("addInterface:"), function $TNVirtualMachineDefinitionController__addInterface_(self, _cmd, aSender)
{
    var newNic = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterface, "alloc"), "init"),
        newNicSource = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceSource, "alloc"), "init");
    objj_msgSend(newNic, "setType:", TNLibvirtDeviceInterfaceTypeBridge);
    objj_msgSend(newNic, "setModel:", TNLibvirtDeviceInterfaceModelRTL8139);
    objj_msgSend(newNic, "setMAC:", _generateMacAddr());
    objj_msgSend(newNic, "setSource:", newNicSource);
    objj_msgSend(self.interfaceController, "setNic:", newNic);
    if (objj_msgSend(self._libvirtDomain, "metadata"))
        objj_msgSend(self.interfaceController, "setMetadata:", objj_msgSend(self._libvirtDomain, "metadata"));
    objj_msgSend(self.interfaceController, "openWindow:", self._plusButtonNics);
}
,["id","id"]), new objj_method(sel_getUid("editInterface:"), function $TNVirtualMachineDefinitionController__editInterface_(self, _cmd, aSender)
{
    if (!objj_msgSend(self, "currentEntityHasPermission:", "define"))
        return;
    if (objj_msgSend(self.tableInterfaces, "numberOfSelectedRows") <= 0)
         return;
    var nicObject = objj_msgSend(self._nicsDatasource, "objectAtIndex:", objj_msgSend(self.tableInterfaces, "selectedRow"));
    objj_msgSend(self.interfaceController, "setNic:", nicObject);
    if (objj_msgSend(self._libvirtDomain, "metadata"))
        objj_msgSend(self.interfaceController, "setMetadata:", objj_msgSend(self._libvirtDomain, "metadata"));
    if (objj_msgSend(aSender, "isKindOfClass:", CPMenuItem))
        aSender = self._editButtonNics;
    objj_msgSend(self.interfaceController, "openWindow:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("deleteInterface:"), function $TNVirtualMachineDefinitionController__deleteInterface_(self, _cmd, aSender)
{
    if (!objj_msgSend(self, "currentEntityHasPermission:", "define"))
        return;
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (objj_msgSend(self.tableInterfaces, "numberOfSelectedRows") <= 0)
        return;
     var selectedIndexes = objj_msgSend(self.tableInterfaces, "selectedRowIndexes");
     objj_msgSend(self._nicsDatasource, "removeObjectsAtIndexes:", selectedIndexes);
     objj_msgSend(self.tableInterfaces, "reloadData");
     objj_msgSend(self.tableInterfaces, "deselectAll");
     self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("addCharacterDevice:"), function $TNVirtualMachineDefinitionController__addCharacterDevice_(self, _cmd, aSender)
{
    var characterDevice = objj_msgSend(objj_msgSend(TNLibvirtDeviceCharacter, "alloc"), "init");
    objj_msgSend(characterDevice, "setKind:", TNLibvirtDeviceCharacterKindSerial);
    if (!objj_msgSend(self._libvirtDomain, "devices"))
        objj_msgSend(self._libvirtDomain, "setDevices:", objj_msgSend(objj_msgSend(TNLibvirtDevices, "alloc"), "init"));
    objj_msgSend(self.characterDeviceController, "setCharacterDevice:", characterDevice);
    objj_msgSend(self.characterDeviceController, "openWindow:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("editCharacterDevice:"), function $TNVirtualMachineDefinitionController__editCharacterDevice_(self, _cmd, aSender)
{
    if (!objj_msgSend(self, "currentEntityHasPermission:", "define"))
        return;
    if (objj_msgSend(self.tableCharacterDevices, "numberOfSelectedRows") <= 0)
         return;
    var characterDevice = objj_msgSend(self._characterDevicesDatasource, "objectAtIndex:", objj_msgSend(self.tableCharacterDevices, "selectedRow"));
    objj_msgSend(self.characterDeviceController, "setCharacterDevice:", characterDevice);
    objj_msgSend(self.characterDeviceController, "openWindow:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("deleteCharacterDevice:"), function $TNVirtualMachineDefinitionController__deleteCharacterDevice_(self, _cmd, aSender)
{
    if (objj_msgSend(self.tableCharacterDevices, "numberOfSelectedRows") <= 0)
        return;
    objj_msgSend(self._characterDevicesDatasource, "removeObjectAtIndex:", objj_msgSend(self.tableCharacterDevices, "selectedRow"));
    objj_msgSend(self.tableCharacterDevices, "reloadData");
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("openXMLEditor:"), function $TNVirtualMachineDefinitionController__openXMLEditor_(self, _cmd, aSender)
{
    objj_msgSend(self, "getXMLDesc");
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    objj_msgSend(self.popoverXMLEditor, "close");
    objj_msgSend(self.popoverXMLEditor, "showRelativeToRect:ofView:preferredEdge:", nil, self.buttonXMLEditor, nil);
    objj_msgSend(self.fieldStringXMLDesc, "setNeedsDisplay:", YES);
}
,["id","id"]), new objj_method(sel_getUid("closeXMLEditor:"), function $TNVirtualMachineDefinitionController__closeXMLEditor_(self, _cmd, aSender)
{
    objj_msgSend(self.popoverXMLEditor, "close");
}
,["id","id"]), new objj_method(sel_getUid("defineXML:"), function $TNVirtualMachineDefinitionController__defineXML_(self, _cmd, aSender)
{
    objj_msgSend(objj_msgSend(CPApp, "mainWindow"), "makeFirstResponder:", nil);
    objj_msgSend(self, "_simulateControlsChanges");
    objj_msgSend(self, "defineXML");
}
,["id","id"]), new objj_method(sel_getUid("defineXMLString:"), function $TNVirtualMachineDefinitionController__defineXMLString_(self, _cmd, aSender)
{
    objj_msgSend(self, "defineXMLString");
}
,["id","id"]), new objj_method(sel_getUid("undefineXML:"), function $TNVirtualMachineDefinitionController__undefineXML_(self, _cmd, aSender)
{
    objj_msgSend(self, "undefineXML");
}
,["id","id"])]);
}
{
var the_class = objj_getClass("TNVirtualMachineDefinitionController")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNVirtualMachineDefinitionController\"");
var meta_class = the_class.isa;


























class_addMethods(the_class, [new objj_method(sel_getUid("didChangeGuest:"), function $TNVirtualMachineDefinitionController__didChangeGuest_(self, _cmd, aSender)
{
    var guest = objj_msgSend(objj_msgSend(aSender, "selectedItem"), "representedObject"),
        osType = objj_msgSend(objj_msgSend(guest, "firstChildWithName:", "os_type"), "text"),
        arch = objj_msgSend(objj_msgSend(guest, "firstChildWithName:", "arch"), "valueForAttribute:", "name");
    objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "type"), "setArchitecture:", arch);
    objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "type"), "setType:", osType);
    if (objj_msgSend(guest, "firstChildWithName:", "loader"))
        objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "setLoader:", objj_msgSend(objj_msgSend(guest, "firstChildWithName:", "loader"), "text"));
    objj_msgSend(self, "didChangeDomainType:", self.buttonDomainType);
    objj_msgSend(self, "didChangeMachine:", self.buttonMachines);
    objj_msgSend(self, "_updateUIForCurrentGuest");
}
,["id","id"]), new objj_method(sel_getUid("didChangeDomainType:"), function $TNVirtualMachineDefinitionController__didChangeDomainType_(self, _cmd, aSender)
{
    objj_msgSend(self._libvirtDomain, "setType:", objj_msgSend(aSender, "title"));
    objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "setEmulator:", nil);
    objj_msgSend(self, "_updateUIFromDomainType");
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeName:"), function $TNVirtualMachineDefinitionController__didChangeName_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "stringValue") == objj_msgSend(self._libvirtDomain, "name"))
        return;
    objj_msgSend(self._libvirtDomain, "setName:", objj_msgSend(aSender, "stringValue"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeBoot:"), function $TNVirtualMachineDefinitionController__didChangeBoot_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "title") == objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "boot"))
        return;
    if (!objj_msgSend(self._libvirtDomain, "OS"))
        objj_msgSend(self._libvirtDomain, "setOS:", objj_msgSend(objj_msgSend(TNLibvirtDomainOS, "alloc"), "init"));
    objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "setBoot:", objj_msgSend(aSender, "title"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeOSKernel:"), function $TNVirtualMachineDefinitionController__didChangeOSKernel_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "stringValue") == (objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "kernel") || ""))
        return;
    if (!objj_msgSend(self._libvirtDomain, "OS"))
        objj_msgSend(self._libvirtDomain, "setOS:", objj_msgSend(objj_msgSend(TNLibvirtDomainOS, "alloc"), "init"));
    objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "setKernel:", objj_msgSend(aSender, "stringValue"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeOSInitrd:"), function $TNVirtualMachineDefinitionController__didChangeOSInitrd_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "stringValue") == (objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "initrd") || ""))
        return;
    if (!objj_msgSend(self._libvirtDomain, "OS"))
        objj_msgSend(self._libvirtDomain, "setOS:", objj_msgSend(objj_msgSend(TNLibvirtDomainOS, "alloc"), "init"));
    objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "setInitrd:", objj_msgSend(aSender, "stringValue"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeOSCommandLine:"), function $TNVirtualMachineDefinitionController__didChangeOSCommandLine_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "stringValue") == (objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "commandLine") || ""))
        return;
    if (!objj_msgSend(self._libvirtDomain, "OS"))
        objj_msgSend(self._libvirtDomain, "setOS:", objj_msgSend(objj_msgSend(TNLibvirtDomainOS, "alloc"), "init"));
    objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "setCommandLine:", objj_msgSend(aSender, "stringValue"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeOSLoader:"), function $TNVirtualMachineDefinitionController__didChangeOSLoader_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "stringValue") == (objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "loader") || ""))
        return;
    if (!objj_msgSend(self._libvirtDomain, "OS"))
        objj_msgSend(self._libvirtDomain, "setOS:", objj_msgSend(objj_msgSend(TNLibvirtDomainOS, "alloc"), "init"));
    objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "setLoader:", objj_msgSend(aSender, "stringValue"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeBootloader:"), function $TNVirtualMachineDefinitionController__didChangeBootloader_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "stringValue") == (objj_msgSend(self._libvirtDomain, "bootloader") || ""))
        return;
    objj_msgSend(self._libvirtDomain, "setBootloader:", objj_msgSend(aSender, "stringValue"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeBootloaderArgs:"), function $TNVirtualMachineDefinitionController__didChangeBootloaderArgs_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "stringValue") == (objj_msgSend(self._libvirtDomain, "bootloaderArgs") || ""))
        return;
    objj_msgSend(self._libvirtDomain, "setBootloaderArgs:", objj_msgSend(aSender, "stringValue"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeOnPowerOff:"), function $TNVirtualMachineDefinitionController__didChangeOnPowerOff_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "title") == objj_msgSend(self._libvirtDomain, "onPowerOff"))
        return;
    objj_msgSend(self._libvirtDomain, "setOnPowerOff:", objj_msgSend(aSender, "title"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeOnReboot:"), function $TNVirtualMachineDefinitionController__didChangeOnReboot_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "title") == objj_msgSend(self._libvirtDomain, "onReboot"))
        return;
    objj_msgSend(self._libvirtDomain, "setOnReboot:", objj_msgSend(aSender, "title"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeOnCrash:"), function $TNVirtualMachineDefinitionController__didChangeOnCrash_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "title") == objj_msgSend(self._libvirtDomain, "onCrash"))
        return;
    objj_msgSend(self._libvirtDomain, "setOnCrash:", objj_msgSend(aSender, "title"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangePAE:"), function $TNVirtualMachineDefinitionController__didChangePAE_(self, _cmd, aSender)
{
    if (!objj_msgSend(self._libvirtDomain, "features"))
        objj_msgSend(self._libvirtDomain, "setFeatures:", objj_msgSend(objj_msgSend(TNLibvirtDomainFeatures, "alloc"), "init"));
    objj_msgSend(objj_msgSend(self._libvirtDomain, "features"), "setPAE:", objj_msgSend(aSender, "state"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeACPI:"), function $TNVirtualMachineDefinitionController__didChangeACPI_(self, _cmd, aSender)
{
    if (!objj_msgSend(self._libvirtDomain, "features"))
        objj_msgSend(self._libvirtDomain, "setFeatures:", objj_msgSend(objj_msgSend(TNLibvirtDomainFeatures, "alloc"), "init"));
    objj_msgSend(objj_msgSend(self._libvirtDomain, "features"), "setACPI:", objj_msgSend(aSender, "state"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeAPIC:"), function $TNVirtualMachineDefinitionController__didChangeAPIC_(self, _cmd, aSender)
{
    if (!objj_msgSend(self._libvirtDomain, "features"))
        objj_msgSend(self._libvirtDomain, "setFeatures:", objj_msgSend(objj_msgSend(TNLibvirtDomainFeatures, "alloc"), "init"));
    objj_msgSend(objj_msgSend(self._libvirtDomain, "features"), "setAPIC:", objj_msgSend(aSender, "state"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeHugePages:"), function $TNVirtualMachineDefinitionController__didChangeHugePages_(self, _cmd, aSender)
{
    if (!objj_msgSend(self._libvirtDomain, "memoryBacking"))
        objj_msgSend(self._libvirtDomain, "setMemoryBacking:", objj_msgSend(TNLibvirtDomainMemoryBacking, "new"));
    objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryBacking"), "setUseHugePages:", objj_msgSend(aSender, "state"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeEnableUSB:"), function $TNVirtualMachineDefinitionController__didChangeEnableUSB_(self, _cmd, aSender)
{
    if (!objj_msgSend(self._libvirtDomain, "devices"))
        objj_msgSend(self._libvirtDomain, "setDevices:", objj_msgSend(objj_msgSend(TNLibvirtDevices, "alloc"), "init"));
    var USBController,
        controllers = objj_msgSend(objj_msgSend(self._libvirtDomain, "devices"), "controllers");
    for (var i = 0; i < objj_msgSend(controllers, "count"); i++)
    {
        var type = objj_msgSend(objj_msgSend(controllers, "objectAtIndex:", i), "type"),
            model = objj_msgSend(objj_msgSend(controllers, "objectAtIndex:", i), "model");
        if (type == TNLibvirtDeviceControllerTypeUSB)
        {
            objj_msgSend(controllers, "removeObject:", objj_msgSend(controllers, "objectAtIndex:", i));
            break;
        }
    }
    if (!objj_msgSend(aSender, "state"))
    {
        USBController = objj_msgSend(objj_msgSend(TNLibvirtDeviceController, "alloc"), "init");
        objj_msgSend(USBController, "setType:", TNLibvirtDeviceControllerTypeUSB)
        objj_msgSend(USBController, "setIndex:", 0)
        objj_msgSend(USBController, "setModel:", TNLibvirtDeviceControllerModelNONE);
        objj_msgSend(controllers, "addObject:", USBController);
        var devicesToRemove = objj_msgSend(CPArray, "array");
        for (var i = 0; i < objj_msgSend(self._inputDevicesDatasource, "count"); i++)
        {
            var inputDevice = objj_msgSend(self._inputDevicesDatasource, "objectAtIndex:", i);
            if (objj_msgSend(inputDevice, "bus") == TNLibvirtDeviceInputBusUSB)
                objj_msgSend(devicesToRemove, "addObject:", inputDevice);
        }
        objj_msgSend(self._inputDevicesDatasource, "removeObjectsInArray:", devicesToRemove);
        objj_msgSend(self.tableInputDevices, "reloadData");
    }
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeNestedVirtualization:"), function $TNVirtualMachineDefinitionController__didChangeNestedVirtualization_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "state"))
    {
        objj_msgSend(self, "_addNestedVirtualization");
    }
    else
    {
        objj_msgSend(self, "_removeNestedVirtualization");
    }
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeClock:"), function $TNVirtualMachineDefinitionController__didChangeClock_(self, _cmd, aSender)
{
    if (!objj_msgSend(self._libvirtDomain, "clock"))
        objj_msgSend(self._libvirtDomain, "setClock:", objj_msgSend(objj_msgSend(TNLibvirtDomainClock, "alloc"), "init"));
    objj_msgSend(objj_msgSend(self._libvirtDomain, "clock"), "setOffset:", objj_msgSend(aSender, "title"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeMachine:"), function $TNVirtualMachineDefinitionController__didChangeMachine_(self, _cmd, aSender)
{
    if (!objj_msgSend(self._libvirtDomain, "OS"))
        objj_msgSend(self._libvirtDomain, "setOS:", objj_msgSend(objj_msgSend(TNLibvirtDomainOS, "alloc"), "init"));
    objj_msgSend(objj_msgSend(objj_msgSend(self._libvirtDomain, "OS"), "type"), "setMachine:", objj_msgSend(aSender, "title"));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeMemory:"), function $TNVirtualMachineDefinitionController__didChangeMemory_(self, _cmd, aSender)
{
    if ((objj_msgSend(aSender, "intValue") * 1024) == objj_msgSend(self._libvirtDomain, "memory"))
        return;
    objj_msgSend(self._libvirtDomain, "setMemory:", (objj_msgSend(aSender, "intValue") * 1024));
    objj_msgSend(self._libvirtDomain, "setCurrentMemory:", (objj_msgSend(aSender, "intValue") * 1024));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeVCPU:"), function $TNVirtualMachineDefinitionController__didChangeVCPU_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "doubleValue") == objj_msgSend(self._libvirtDomain, "VCPU"))
        return;
    objj_msgSend(self._libvirtDomain, "setVCPU:", parseInt(objj_msgSend(aSender, "doubleValue")));
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeMemoryTuneSoftLimit:"), function $TNVirtualMachineDefinitionController__didChangeMemoryTuneSoftLimit_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "intValue") * 1024 == objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "softLimit"))
        return;
    if (objj_msgSend(aSender, "intValue") > 0)
    {
        if (!objj_msgSend(self._libvirtDomain, "memoryTuning"))
            objj_msgSend(self._libvirtDomain, "setMemoryTuning:", objj_msgSend(objj_msgSend(TNLibvirtDomainMemoryTune, "alloc"), "init"));
        objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "setSoftLimit:", objj_msgSend(aSender, "intValue") * 1024);
    }
    else
        objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "setSoftLimit:", nil);
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeMemoryTuneHardLimit:"), function $TNVirtualMachineDefinitionController__didChangeMemoryTuneHardLimit_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "intValue") * 1024 == objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "hardLimit"))
        return;
    if (objj_msgSend(aSender, "intValue") > 0)
    {
        if (!objj_msgSend(self._libvirtDomain, "memoryTuning"))
            objj_msgSend(self._libvirtDomain, "setMemoryTuning:", objj_msgSend(objj_msgSend(TNLibvirtDomainMemoryTune, "alloc"), "init"));
        objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "setHardLimit:", objj_msgSend(aSender, "intValue") * 1024);
    }
    else
        objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "setHardLimit:", nil);
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeMemoryTuneGuarantee:"), function $TNVirtualMachineDefinitionController__didChangeMemoryTuneGuarantee_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "intValue") * 1024 == objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "minGuarantee"))
        return;
    if (objj_msgSend(aSender, "intValue") > 0)
    {
        if (!objj_msgSend(self._libvirtDomain, "memoryTuning"))
            objj_msgSend(self._libvirtDomain, "setMemoryTuning:", objj_msgSend(objj_msgSend(TNLibvirtDomainMemoryTune, "alloc"), "init"));
        objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "setMinGuarantee:", objj_msgSend(aSender, "intValue") * 1024);
    }
    else
        objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "setMinGuarantee:", nil);
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeMemoryTuneSwapHardLimit:"), function $TNVirtualMachineDefinitionController__didChangeMemoryTuneSwapHardLimit_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "intValue") * 1024 == objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "swapHardLimit"))
        return;
    if (objj_msgSend(aSender, "intValue") > 0)
    {
        if (!objj_msgSend(self._libvirtDomain, "memoryTuning"))
            objj_msgSend(self._libvirtDomain, "setMemoryTuning:", objj_msgSend(objj_msgSend(TNLibvirtDomainMemoryTune, "alloc"), "init"));
        objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "setSwapHardLimit:", objj_msgSend(aSender, "intValue") * 1024);
    }
    else
        objj_msgSend(objj_msgSend(self._libvirtDomain, "memoryTuning"), "setSwapHardLimit:", nil);
    self._definitionEdited = YES;
}
,["id","id"]), new objj_method(sel_getUid("didChangeBlockIOTuningWeight:"), function $TNVirtualMachineDefinitionController__didChangeBlockIOTuningWeight_(self, _cmd, aSender)
{
    if (objj_msgSend(aSender, "intValue") == objj_msgSend(objj_msgSend(self._libvirtDomain, "blkiotune"), "weight"))
        return;
    if (objj_msgSend(aSender, "intValue") > 0)
    {
        if (!objj_msgSend(self._libvirtDomain, "blkiotune"))
            objj_msgSend(self._libvirtDomain, "setBlkiotune:", objj_msgSend(objj_msgSend(TNLibvirtDomainBlockIOTune, "alloc"), "init"));
        objj_msgSend(objj_msgSend(self._libvirtDomain, "blkiotune"), "setWeight:", objj_msgSend(aSender, "intValue"));
    }
    else
        objj_msgSend(objj_msgSend(self._libvirtDomain, "blkiotune"), "setWeight:", nil);
    self._definitionEdited = YES;
}
,["id","id"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNVirtualMachineDefinitionController), comment);
}p;17;Model/TNLibvirt.jt;4646;@STATIC;1.0;i;15;TNLibvirtBase.ji;26;TNLibvirtDeviceCharacter.ji;34;TNLibvirtDeviceCharacterProtocol.ji;32;TNLibvirtDeviceCharacterSource.ji;32;TNLibvirtDeviceCharacterTarget.ji;27;TNLibvirtDeviceController.ji;34;TNLibvirtDeviceControllerAddress.ji;21;TNLibvirtDeviceDisk.ji;27;TNLibvirtDeviceDiskDriver.ji;27;TNLibvirtDeviceDiskSource.ji;31;TNLibvirtDeviceDiskSourceHost.ji;27;TNLibvirtDeviceDiskTarget.ji;27;TNLibvirtDeviceFilesystem.ji;33;TNLibvirtDeviceFilesystemDriver.ji;33;TNLibvirtDeviceFilesystemSource.ji;33;TNLibvirtDeviceFilesystemTarget.ji;24;TNLibvirtDeviceGraphic.ji;24;TNLibvirtDeviceHostDev.ji;28;TNLibvirtDeviceHostDevBoot.ji;27;TNLibvirtDeviceHostDevRom.ji;30;TNLibvirtDeviceHostDevSource.ji;37;TNLibvirtDeviceHostDevSourceAddress.ji;37;TNLibvirtDeviceHostDevSourceProduct.ji;36;TNLibvirtDeviceHostDevSourceVendor.ji;22;TNLibvirtDeviceInput.ji;26;TNLibvirtDeviceInterface.ji;35;TNLibvirtDeviceInterfaceBandwidth.ji;42;TNLibvirtDeviceInterfaceBandwidthInbound.ji;43;TNLibvirtDeviceInterfaceBandwidthOutbound.ji;35;TNLibvirtDeviceInterfaceFilterRef.ji;32;TNLibvirtDeviceInterfaceSource.ji;32;TNLibvirtDeviceInterfaceTarget.ji;37;TNLibvirtDeviceInterfaceVirtualPort.ji;47;TNLibvirtDeviceInterfaceVirtualPortParameters.ji;18;TNLibvirtDevices.ji;22;TNLibvirtDeviceVideo.ji;29;TNLibvirtDeviceVideoAddress.ji;27;TNLibvirtDeviceVideoModel.ji;17;TNLibvirtDomain.ji;28;TNLibvirtDomainBlockIOTune.ji;22;TNLibvirtDomainClock.ji;27;TNLibvirtDomainClockTimer.ji;34;TNLibvirtDomainClockTimerCatchup.ji;25;TNLibvirtDomainFeatures.ji;30;TNLibvirtDomainMemoryBacking.ji;27;TNLibvirtDomainMemoryTune.ji;25;TNLibvirtDomainMetadata.ji;19;TNLibvirtDomainOS.ji;23;TNLibvirtDomainOSType.ji;32;TNLibvirtDomainQEMUCommandLine.ji;40;TNLibvirtDomainQEMUCommandLineArgument.jt;2874;objj_executeFile("TNLibvirtBase.j", YES);
objj_executeFile("TNLibvirtDeviceCharacter.j", YES);
objj_executeFile("TNLibvirtDeviceCharacterProtocol.j", YES);
objj_executeFile("TNLibvirtDeviceCharacterSource.j", YES);
objj_executeFile("TNLibvirtDeviceCharacterTarget.j", YES);
objj_executeFile("TNLibvirtDeviceController.j", YES);
objj_executeFile("TNLibvirtDeviceControllerAddress.j", YES);
objj_executeFile("TNLibvirtDeviceDisk.j", YES);
objj_executeFile("TNLibvirtDeviceDiskDriver.j", YES);
objj_executeFile("TNLibvirtDeviceDiskSource.j", YES);
objj_executeFile("TNLibvirtDeviceDiskSourceHost.j", YES);
objj_executeFile("TNLibvirtDeviceDiskTarget.j", YES);
objj_executeFile("TNLibvirtDeviceFilesystem.j", YES);
objj_executeFile("TNLibvirtDeviceFilesystemDriver.j", YES);
objj_executeFile("TNLibvirtDeviceFilesystemSource.j", YES);
objj_executeFile("TNLibvirtDeviceFilesystemTarget.j", YES);
objj_executeFile("TNLibvirtDeviceGraphic.j", YES);
objj_executeFile("TNLibvirtDeviceHostDev.j", YES);
objj_executeFile("TNLibvirtDeviceHostDevBoot.j", YES);
objj_executeFile("TNLibvirtDeviceHostDevRom.j", YES);
objj_executeFile("TNLibvirtDeviceHostDevSource.j", YES);
objj_executeFile("TNLibvirtDeviceHostDevSourceAddress.j", YES);
objj_executeFile("TNLibvirtDeviceHostDevSourceProduct.j", YES);
objj_executeFile("TNLibvirtDeviceHostDevSourceVendor.j", YES);
objj_executeFile("TNLibvirtDeviceInput.j", YES);
objj_executeFile("TNLibvirtDeviceInterface.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceBandwidth.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceBandwidthInbound.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceBandwidthOutbound.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceFilterRef.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceSource.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceTarget.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceVirtualPort.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceVirtualPortParameters.j", YES);
objj_executeFile("TNLibvirtDevices.j", YES);
objj_executeFile("TNLibvirtDeviceVideo.j", YES);
objj_executeFile("TNLibvirtDeviceVideoAddress.j", YES);
objj_executeFile("TNLibvirtDeviceVideoModel.j", YES);
objj_executeFile("TNLibvirtDomain.j", YES);
objj_executeFile("TNLibvirtDomainBlockIOTune.j", YES);
objj_executeFile("TNLibvirtDomainClock.j", YES);
objj_executeFile("TNLibvirtDomainClockTimer.j", YES);
objj_executeFile("TNLibvirtDomainClockTimerCatchup.j", YES);
objj_executeFile("TNLibvirtDomainFeatures.j", YES);
objj_executeFile("TNLibvirtDomainMemoryBacking.j", YES);
objj_executeFile("TNLibvirtDomainMemoryTune.j", YES);
objj_executeFile("TNLibvirtDomainMetadata.j", YES);
objj_executeFile("TNLibvirtDomainOS.j", YES);
objj_executeFile("TNLibvirtDomainOSType.j", YES);
objj_executeFile("TNLibvirtDomainQEMUCommandLine.j", YES);
objj_executeFile("TNLibvirtDomainQEMUCommandLineArgument.j", YES);p;21;Model/TNLibvirtBase.jt;1038;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.jt;958;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNLibvirtBase"),
meta_class = the_class.isa;
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtBase__initWithXMLNode_(self, _cmd, aNode)
{
    if (!aNode || (typeof(aNode) == "undefined"))
        return nil;
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtBase").super_class }, "init"))
        return self;
}
,["TNLibvirtBase","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtBase__XMLNode(self, _cmd)
{
    return nil;
}
,["TNXMLNode"]), new objj_method(sel_getUid("description"), function $TNLibvirtBase__description(self, _cmd)
{
    return objj_msgSend(objj_msgSend(self, "XMLNode"), "stringValue");
}
,["CPString"])]);
}p;32;Model/TNLibvirtDeviceCharacter.jt;8568;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.ji;34;TNLibvirtDeviceCharacterProtocol.ji;32;TNLibvirtDeviceCharacterSource.ji;32;TNLibvirtDeviceCharacterTarget.jt;8354;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
objj_executeFile("TNLibvirtDeviceCharacterProtocol.j", YES);
objj_executeFile("TNLibvirtDeviceCharacterSource.j", YES);
objj_executeFile("TNLibvirtDeviceCharacterTarget.j", YES);
TNLibvirtDeviceCharacterKindConsole = "console";
TNLibvirtDeviceCharacterKindSerial = "serial";
TNLibvirtDeviceCharacterKindChannel = "channel";
TNLibvirtDeviceCharacterKindParallel = "parallel";
TNLibvirtDeviceCharacterKinds = [
                                                TNLibvirtDeviceCharacterKindSerial,
                                                TNLibvirtDeviceCharacterKindChannel,
                                                TNLibvirtDeviceCharacterKindParallel];
TNLibvirtDeviceCharacterTypeDEV = "dev";
TNLibvirtDeviceCharacterTypeFILE = "file";
TNLibvirtDeviceCharacterTypeNULL = "null";
TNLibvirtDeviceCharacterTypePIPE = "pipe";
TNLibvirtDeviceCharacterTypePTY = "pty";
TNLibvirtDeviceCharacterTypeSPICEVMC = "spicevmc";
TNLibvirtDeviceCharacterTypeSTDIO = "stdio";
TNLibvirtDeviceCharacterTypeTCP = "tcp";
TNLibvirtDeviceCharacterTypeUDP = "udp";
TNLibvirtDeviceCharacterTypeUNIX = "unix";
TNLibvirtDeviceCharacterTypeVC = "vc";
TNLibvirtDeviceCharacterTypes = [ TNLibvirtDeviceCharacterTypeDEV,
                                                TNLibvirtDeviceCharacterTypeFILE,
                                                TNLibvirtDeviceCharacterTypeNULL,
                                                TNLibvirtDeviceCharacterTypePIPE,
                                                TNLibvirtDeviceCharacterTypePTY,
                                                TNLibvirtDeviceCharacterTypeSPICEVMC,
                                                TNLibvirtDeviceCharacterTypeSTDIO,
                                                TNLibvirtDeviceCharacterTypeTCP,
                                                TNLibvirtDeviceCharacterTypeUDP,
                                                TNLibvirtDeviceCharacterTypeUNIX,
                                                TNLibvirtDeviceCharacterTypeVC];
TNLibvirtDeviceCharacterTypesForConsole = [ TNLibvirtDeviceCharacterTypePTY,
                                                TNLibvirtDeviceCharacterTypeSTDIO,
                                                TNLibvirtDeviceCharacterTypeTCP,
                                                TNLibvirtDeviceCharacterTypeUDP];
TNLibvirtDeviceCharacterTypesForSerial = [ TNLibvirtDeviceCharacterTypePTY,
                                                TNLibvirtDeviceCharacterTypeFILE,
                                                TNLibvirtDeviceCharacterTypeVC,
                                                TNLibvirtDeviceCharacterTypeNULL,
                                                TNLibvirtDeviceCharacterTypeDEV,
                                                TNLibvirtDeviceCharacterTypePIPE,
                                                TNLibvirtDeviceCharacterTypeTCP,
                                                TNLibvirtDeviceCharacterTypeUDP,
                                                TNLibvirtDeviceCharacterTypeUNIX];
TNLibvirtDeviceCharacterTypesForParallel = [ TNLibvirtDeviceCharacterTypePTY];
TNLibvirtDeviceCharacterTypesForChannel = [ TNLibvirtDeviceCharacterTypePTY,
                                                TNLibvirtDeviceCharacterTypeUNIX,
                                                TNLibvirtDeviceCharacterTypeSPICEVMC];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceCharacter"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_kind"), new objj_ivar("_type"), new objj_ivar("_source"), new objj_ivar("_target"), new objj_ivar("_protocol")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("kind"), function $TNLibvirtDeviceCharacter__kind(self, _cmd)
{
return self._kind;
}
,["CPString"]), new objj_method(sel_getUid("setKind:"), function $TNLibvirtDeviceCharacter__setKind_(self, _cmd, newValue)
{
self._kind = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("type"), function $TNLibvirtDeviceCharacter__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceCharacter__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("source"), function $TNLibvirtDeviceCharacter__source(self, _cmd)
{
return self._source;
}
,["TNLibvirtDeviceCharacterSource"]), new objj_method(sel_getUid("setSource:"), function $TNLibvirtDeviceCharacter__setSource_(self, _cmd, newValue)
{
self._source = newValue;
}
,["void","TNLibvirtDeviceCharacterSource"]), new objj_method(sel_getUid("target"), function $TNLibvirtDeviceCharacter__target(self, _cmd)
{
return self._target;
}
,["TNLibvirtDeviceCharacterTarget"]), new objj_method(sel_getUid("setTarget:"), function $TNLibvirtDeviceCharacter__setTarget_(self, _cmd, newValue)
{
self._target = newValue;
}
,["void","TNLibvirtDeviceCharacterTarget"]), new objj_method(sel_getUid("protocol"), function $TNLibvirtDeviceCharacter__protocol(self, _cmd)
{
return self._protocol;
}
,["TNLibvirtDeviceCharacterProtocol"]), new objj_method(sel_getUid("setProtocol:"), function $TNLibvirtDeviceCharacter__setProtocol_(self, _cmd, newValue)
{
self._protocol = newValue;
}
,["void","TNLibvirtDeviceCharacterProtocol"]), new objj_method(sel_getUid("initWithKind:"), function $TNLibvirtDeviceCharacter__initWithKind_(self, _cmd, aKind)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceCharacter").super_class }, "init"))
    {
        self._kind = aKind;
    }
    return self;
}
,["TNLibvirtDeviceCharacter","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceCharacter__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceCharacter").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != TNLibvirtDeviceCharacterKindConsole
            && objj_msgSend(aNode, "name") != TNLibvirtDeviceCharacterKindSerial
            && objj_msgSend(aNode, "name") != TNLibvirtDeviceCharacterKindChannel
            && objj_msgSend(aNode, "name") != TNLibvirtDeviceCharacterKindParallel)
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid character device");
        self._kind = objj_msgSend(aNode, "name");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
        if (objj_msgSend(aNode, "containsChildrenWithName:", "source"))
            self._source = objj_msgSend(objj_msgSend(TNLibvirtDeviceCharacterSource, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "source"));
        if (objj_msgSend(aNode, "containsChildrenWithName:", "target"))
            self._target = objj_msgSend(objj_msgSend(TNLibvirtDeviceCharacterTarget, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "target"));
        if (objj_msgSend(aNode, "containsChildrenWithName:", "protocol"))
            self._protocol = objj_msgSend(objj_msgSend(TNLibvirtDeviceCharacterProtocol, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "protocol"));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceCharacter__XMLNode(self, _cmd)
{
    if (!self._type)
        objj_msgSend(CPException, "raise:reason:", "Missing console type", "console type is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", self._kind);
    if (self._type)
        objj_msgSend(node, "setValue:forAttribute:", self._type, "type");
    if (self._source)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._source, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._target)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._target, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._protocol)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._protocol, "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;40;Model/TNLibvirtDeviceCharacterProtocol.jt;2438;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;2337;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
TNLibvirtDeviceCharacterProtocolTypeVIRTIO = "virtio";
TNLibvirtDeviceCharacterProtocolTypeRAW = "raw";
TNLibvirtDeviceCharacterProtocolTypeTELNET = "telnet";
TNLibvirtDeviceCharacterProtocolTypeTLS = "tls";
TNLibvirtDeviceCharacterProtocolTypes = [ TNLibvirtDeviceCharacterProtocolTypeVIRTIO,
                                                TNLibvirtDeviceCharacterProtocolTypeRAW,
                                                TNLibvirtDeviceCharacterProtocolTypeTELNET,
                                                TNLibvirtDeviceCharacterProtocolTypeTLS];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceCharacterProtocol"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_type")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("type"), function $TNLibvirtDeviceCharacterProtocol__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceCharacterProtocol__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceCharacterProtocol__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceCharacterProtocol").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "protocol")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid character device protocol");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceCharacterProtocol__XMLNode(self, _cmd)
{
    if (!self._type)
        objj_msgSend(CPException, "raise:reason:", "Missing character device protocol type", "character device protocol type is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "protocol");
    if (self._type)
        objj_msgSend(node, "setValue:forAttribute:", self._type, "type");
    return node;
}
,["TNXMLNode"])]);
}p;38;Model/TNLibvirtDeviceCharacterSource.jt;3660;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;3559;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
TNLibvirtDeviceCharacterSourceModeNone = "none";
TNLibvirtDeviceCharacterSourceModeBind = "bind";
TNLibvirtDeviceCharacterSourceModeConnect = "connect";
TNLibvirtDeviceCharacterSourceModes = [ TNLibvirtDeviceCharacterSourceModeNone,
                                                TNLibvirtDeviceCharacterSourceModeBind,
                                                TNLibvirtDeviceCharacterSourceModeConnect];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceCharacterSource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_path"), new objj_ivar("_mode"), new objj_ivar("_host"), new objj_ivar("_service")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("path"), function $TNLibvirtDeviceCharacterSource__path(self, _cmd)
{
return self._path;
}
,["CPString"]), new objj_method(sel_getUid("setPath:"), function $TNLibvirtDeviceCharacterSource__setPath_(self, _cmd, newValue)
{
self._path = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("mode"), function $TNLibvirtDeviceCharacterSource__mode(self, _cmd)
{
return self._mode;
}
,["CPString"]), new objj_method(sel_getUid("setMode:"), function $TNLibvirtDeviceCharacterSource__setMode_(self, _cmd, newValue)
{
self._mode = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("host"), function $TNLibvirtDeviceCharacterSource__host(self, _cmd)
{
return self._host;
}
,["CPString"]), new objj_method(sel_getUid("setHost:"), function $TNLibvirtDeviceCharacterSource__setHost_(self, _cmd, newValue)
{
self._host = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("service"), function $TNLibvirtDeviceCharacterSource__service(self, _cmd)
{
return self._service;
}
,["CPString"]), new objj_method(sel_getUid("setService:"), function $TNLibvirtDeviceCharacterSource__setService_(self, _cmd, newValue)
{
self._service = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceCharacterSource__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceCharacterSource").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "source")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid character device source");
        self._path = objj_msgSend(aNode, "valueForAttribute:", "path");
        self._mode = objj_msgSend(aNode, "valueForAttribute:", "mode");
        self._host = objj_msgSend(aNode, "valueForAttribute:", "host");
        self._service = objj_msgSend(aNode, "valueForAttribute:", "service");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceCharacterSource__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "source");
    if (self._path)
        objj_msgSend(node, "setValue:forAttribute:", self._path, "path");
    if (self._mode && self._mode != TNLibvirtDeviceCharacterSourceModeNone)
        objj_msgSend(node, "setValue:forAttribute:", self._mode, "mode");
    if (self._host)
        objj_msgSend(node, "setValue:forAttribute:", self._host, "host");
    if (self._service)
        objj_msgSend(node, "setValue:forAttribute:", self._service, "service");
    return node;
}
,["TNXMLNode"])]);
}p;38;Model/TNLibvirtDeviceCharacterTarget.jt;3504;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;3403;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
TNLibvirtDeviceConsoleTargetTypeNone = "none";
TNLibvirtDeviceConsoleTargetTypeVIRTIO = "virtio";
TNLibvirtDeviceConsoleTargetTypes = [ TNLibvirtDeviceConsoleTargetTypeNone,
                                            TNLibvirtDeviceConsoleTargetTypeVIRTIO];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceCharacterTarget"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_type"), new objj_ivar("_address"), new objj_ivar("_port"), new objj_ivar("_name")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("type"), function $TNLibvirtDeviceCharacterTarget__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceCharacterTarget__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("address"), function $TNLibvirtDeviceCharacterTarget__address(self, _cmd)
{
return self._address;
}
,["CPString"]), new objj_method(sel_getUid("setAddress:"), function $TNLibvirtDeviceCharacterTarget__setAddress_(self, _cmd, newValue)
{
self._address = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("port"), function $TNLibvirtDeviceCharacterTarget__port(self, _cmd)
{
return self._port;
}
,["CPString"]), new objj_method(sel_getUid("setPort:"), function $TNLibvirtDeviceCharacterTarget__setPort_(self, _cmd, newValue)
{
self._port = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("name"), function $TNLibvirtDeviceCharacterTarget__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNLibvirtDeviceCharacterTarget__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceCharacterTarget__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceCharacterTarget").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "target")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid character device target");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
        self._address = objj_msgSend(aNode, "valueForAttribute:", "address");
        self._port = objj_msgSend(aNode, "valueForAttribute:", "port");
        self._name = objj_msgSend(aNode, "valueForAttribute:", "name");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceCharacterTarget__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "target");
    if (self._type && self._type != TNLibvirtDeviceConsoleTargetTypeNone)
        objj_msgSend(node, "setValue:forAttribute:", self._type, "type");
    if (self._address)
        objj_msgSend(node, "setValue:forAttribute:", self._address, "address");
    if (self._port)
        objj_msgSend(node, "setValue:forAttribute:", self._port, "port");
    if (self._name)
        objj_msgSend(node, "setValue:forAttribute:", self._name, "name");
    return node;
}
,["TNXMLNode"])]);
}p;33;Model/TNLibvirtDeviceController.jt;7689;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;34;TNLibvirtDeviceControllerAddress.jt;7569;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtDeviceControllerAddress.j", YES);
TNLibvirtDeviceControllerTypeIDE = "ide";
TNLibvirtDeviceControllerTypeFDC = "fdc";
TNLibvirtDeviceControllerTypeSCSI = "scsi";
TNLibvirtDeviceControllerTypeSATA = "sata";
TNLibvirtDeviceControllerTypeUSB = "usb";
TNLibvirtDeviceControllerTypeCCID = "ccid";
TNLibvirtDeviceControllerTypeVIRTIOSERIAL = "virtio-serial";
TNLibvirtDeviceControllerTypes = [TNLibvirtDeviceControllerTypeIDE,
                                  TNLibvirtDeviceControllerTypeFDC,
                                  TNLibvirtDeviceControllerTypeSCSI,
                                  TNLibvirtDeviceControllerTypeSATA,
                                  TNLibvirtDeviceControllerTypeUSB,
                                  TNLibvirtDeviceControllerTypeCCID,
                                  TNLibvirtDeviceControllerTypeVIRTIOSERIAL];
TNLibvirtDeviceControllerModelAUTO = "auto";
TNLibvirtDeviceControllerModelBUSLOGIC = "buslogic";
TNLibvirtDeviceControllerModelIBMVSCSI = "ibmvscsi";
TNLibvirtDeviceControllerModelLSILOGIC = "lsilogic";
TNLibvirtDeviceControllerModelLSIAS1068 = "lsias1068";
TNLibvirtDeviceControllerModelVIRTIOSCSI = "virtio-scsi";
TNLibvirtDeviceControllerModelVMPVSCSI = "vmpvscsi";
TNLibvirtDeviceControllerModelPIIX3UHCI = "piix3-uhci";
TNLibvirtDeviceControllerModelPIIX34UHCI = "piix4-uhci";
TNLibvirtDeviceControllerModelEHCI = "ehci";
TNLibvirtDeviceControllerModelICH9EHCI1 = "ich9-ehci1";
TNLibvirtDeviceControllerModelICH9UHCI1 = "ich9-uhci1";
TNLibvirtDeviceControllerModelICH9UHCI2 = "ich9-uhci2";
TNLibvirtDeviceControllerModelICH9UHCI3 = "ich9-uhci3";
TNLibvirtDeviceControllerModelVT82C686BUHCI = "vt82c686b-uhci";
TNLibvirtDeviceControllerModelPCIOHCI = "pci-ohci";
TNLibvirtDeviceControllerModelNECXHCI = "nec-xhci";
TNLibvirtDeviceControllerModelNONE = "none";
TNLibvirtDeviceControllerModels = [TNLibvirtDeviceControllerModelAUTO,
                                   TNLibvirtDeviceControllerModelBUSLOGIC,
                                   TNLibvirtDeviceControllerModelIBMVSCSI,
                                   TNLibvirtDeviceControllerModelLSILOGIC,
                                   TNLibvirtDeviceControllerModelLSIAS1068,
                                   TNLibvirtDeviceControllerModelVIRTIOSCSI,
                                   TNLibvirtDeviceControllerModelVMPVSCSI,
                                   TNLibvirtDeviceControllerModelPIIX3UHCI,
                                   TNLibvirtDeviceControllerModelPIIX34UHCI,
                                   TNLibvirtDeviceControllerModelEHCI,
                                   TNLibvirtDeviceControllerModelICH9EHCI1,
                                   TNLibvirtDeviceControllerModelICH9UHCI1,
                                   TNLibvirtDeviceControllerModelICH9UHCI2,
                                   TNLibvirtDeviceControllerModelICH9UHCI3,
                                   TNLibvirtDeviceControllerModelVT82C686BUHCI,
                                   TNLibvirtDeviceControllerModelPCIOHCI,
                                   TNLibvirtDeviceControllerModelNECXHCI,
                                   TNLibvirtDeviceControllerModelNONE];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_type"), new objj_ivar("_index"), new objj_ivar("_model"), new objj_ivar("_port"), new objj_ivar("_vector"), new objj_ivar("_address")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("type"), function $TNLibvirtDeviceController__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceController__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("index"), function $TNLibvirtDeviceController__index(self, _cmd)
{
return self._index;
}
,["CPString"]), new objj_method(sel_getUid("setIndex:"), function $TNLibvirtDeviceController__setIndex_(self, _cmd, newValue)
{
self._index = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("model"), function $TNLibvirtDeviceController__model(self, _cmd)
{
return self._model;
}
,["CPString"]), new objj_method(sel_getUid("setModel:"), function $TNLibvirtDeviceController__setModel_(self, _cmd, newValue)
{
self._model = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("port"), function $TNLibvirtDeviceController__port(self, _cmd)
{
return self._port;
}
,["CPString"]), new objj_method(sel_getUid("setPort:"), function $TNLibvirtDeviceController__setPort_(self, _cmd, newValue)
{
self._port = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("vector"), function $TNLibvirtDeviceController__vector(self, _cmd)
{
return self._vector;
}
,["CPString"]), new objj_method(sel_getUid("setVector:"), function $TNLibvirtDeviceController__setVector_(self, _cmd, newValue)
{
self._vector = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("vector"), function $TNLibvirtDeviceController__vector(self, _cmd)
{
return self._address;
}
,["TNLibvirtDeviceControllerAddress"]), new objj_method(sel_getUid("setVector:"), function $TNLibvirtDeviceController__setVector_(self, _cmd, newValue)
{
self._address = newValue;
}
,["void","TNLibvirtDeviceControllerAddress"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceController__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceController").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "controller")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid controller");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
        self._index = objj_msgSend(aNode, "valueForAttribute:", "index");
        self._model = objj_msgSend(aNode, "valueForAttribute:", "model");
        self._port = objj_msgSend(aNode, "valueForAttribute:", "port");
        self._vector = objj_msgSend(aNode, "valueForAttribute:", "vector");
        if (objj_msgSend(aNode, "containsChildrenWithName:", "address"))
            self._address = objj_msgSend(objj_msgSend(TNLibvirtDeviceControllerAddress, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "address"));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceController__XMLNode(self, _cmd)
{
    if (!self._type)
        objj_msgSend(CPException, "raise:reason:", "Missing controller type", "controller type is required");
    if (self._index === nil)
        objj_msgSend(CPException, "raise:reason:", "Missing controller index", "controller index is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:andAttributes:", "controller", {"type": self._type, "index": self._index});
    if (self._model)
        objj_msgSend(node, "setValue:forAttribute:", self._model, "model");
    if (self._port)
        objj_msgSend(node, "setValue:forAttribute:", self._port, "port");
    if (self._vector)
        objj_msgSend(node, "setValue:forAttribute:", self._vector, "vector");
    if (self._address)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._address, "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;40;Model/TNLibvirtDeviceControllerAddress.jt;4326;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;4225;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceControllerAddress"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_type"), new objj_ivar("_domain"), new objj_ivar("_bus"), new objj_ivar("_slot"), new objj_ivar("_function"), new objj_ivar("_multifunction")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("type"), function $TNLibvirtDeviceControllerAddress__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceControllerAddress__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("domain"), function $TNLibvirtDeviceControllerAddress__domain(self, _cmd)
{
return self._domain;
}
,["CPString"]), new objj_method(sel_getUid("setDomain:"), function $TNLibvirtDeviceControllerAddress__setDomain_(self, _cmd, newValue)
{
self._domain = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("bus"), function $TNLibvirtDeviceControllerAddress__bus(self, _cmd)
{
return self._bus;
}
,["CPString"]), new objj_method(sel_getUid("setBus:"), function $TNLibvirtDeviceControllerAddress__setBus_(self, _cmd, newValue)
{
self._bus = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("slot"), function $TNLibvirtDeviceControllerAddress__slot(self, _cmd)
{
return self._slot;
}
,["CPString"]), new objj_method(sel_getUid("setSlot:"), function $TNLibvirtDeviceControllerAddress__setSlot_(self, _cmd, newValue)
{
self._slot = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("function"), function $TNLibvirtDeviceControllerAddress__function(self, _cmd)
{
return self._function;
}
,["CPString"]), new objj_method(sel_getUid("setFunction:"), function $TNLibvirtDeviceControllerAddress__setFunction_(self, _cmd, newValue)
{
self._function = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("multifunction"), function $TNLibvirtDeviceControllerAddress__multifunction(self, _cmd)
{
return self._multifunction;
}
,["CPString"]), new objj_method(sel_getUid("setMultifunction:"), function $TNLibvirtDeviceControllerAddress__setMultifunction_(self, _cmd, newValue)
{
self._multifunction = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceControllerAddress__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceControllerAddress").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "address")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid controller address");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
        self._domain = objj_msgSend(aNode, "valueForAttribute:", "domain");
        self._bus = objj_msgSend(aNode, "valueForAttribute:", "bus");
        self._slot = objj_msgSend(aNode, "valueForAttribute:", "slot");
        self._function = objj_msgSend(aNode, "valueForAttribute:", "function");
        self._multifunction = objj_msgSend(aNode, "valueForAttribute:", "multifunction");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceControllerAddress__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "address");
    if (self._type)
        objj_msgSend(node, "setValue:forAttribute:", self._type, "type");
    if (self._domain)
        objj_msgSend(node, "setValue:forAttribute:", self._domain, "domain");
    if (self._bus)
        objj_msgSend(node, "setValue:forAttribute:", self._bus, "bus");
    if (self._slot)
        objj_msgSend(node, "setValue:forAttribute:", self._slot, "slot");
    if (self._function)
        objj_msgSend(node, "setValue:forAttribute:", self._function, "function");
    if (self._multifunction)
        objj_msgSend(node, "setValue:forAttribute:", self._multifunction, "multifunction");
    return node;
}
,["TNXMLNode"])]);
}p;27;Model/TNLibvirtDeviceDisk.jt;7456;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.ji;27;TNLibvirtDeviceDiskSource.ji;27;TNLibvirtDeviceDiskTarget.ji;27;TNLibvirtDeviceDiskDriver.ji;27;TNLibvirtDeviceDiskSource.jt;7227;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
objj_executeFile("TNLibvirtDeviceDiskSource.j", YES);
objj_executeFile("TNLibvirtDeviceDiskTarget.j", YES);
objj_executeFile("TNLibvirtDeviceDiskDriver.j", YES);
objj_executeFile("TNLibvirtDeviceDiskSource.j", YES);
TNLibvirtDeviceDiskTypeFile = "file";
TNLibvirtDeviceDiskTypeBlock = "block";
TNLibvirtDeviceDiskTypeNetwork = "network";
TNLibvirtDeviceDiskTypeDir = "dir";
TNLibvirtDeviceDiskTypes = [ TNLibvirtDeviceDiskTypeFile,
                                            TNLibvirtDeviceDiskTypeBlock,
                                            TNLibvirtDeviceDiskTypeNetwork,
                                            TNLibvirtDeviceDiskTypeDir];
TNLibvirtDeviceDiskDeviceCDROM = "cdrom";
TNLibvirtDeviceDiskDeviceDisk = "disk";
TNLibvirtDeviceDiskDeviceFloppy = "floppy";
TNLibvirtDeviceDiskDevices = [ TNLibvirtDeviceDiskDeviceDisk,
                                            TNLibvirtDeviceDiskDeviceCDROM,
                                            TNLibvirtDeviceDiskDeviceFloppy];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceDisk"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_readonly"), new objj_ivar("_shareable"), new objj_ivar("_transient"), new objj_ivar("_device"), new objj_ivar("_type"), new objj_ivar("_source"), new objj_ivar("_target"), new objj_ivar("_driver")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isReadOnly"), function $TNLibvirtDeviceDisk__isReadOnly(self, _cmd)
{
return self._readonly;
}
,["BOOL"]), new objj_method(sel_getUid("setReadOnly:"), function $TNLibvirtDeviceDisk__setReadOnly_(self, _cmd, newValue)
{
self._readonly = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isShareable"), function $TNLibvirtDeviceDisk__isShareable(self, _cmd)
{
return self._shareable;
}
,["BOOL"]), new objj_method(sel_getUid("setShareable:"), function $TNLibvirtDeviceDisk__setShareable_(self, _cmd, newValue)
{
self._shareable = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isTransient"), function $TNLibvirtDeviceDisk__isTransient(self, _cmd)
{
return self._transient;
}
,["BOOL"]), new objj_method(sel_getUid("setTransient:"), function $TNLibvirtDeviceDisk__setTransient_(self, _cmd, newValue)
{
self._transient = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("device"), function $TNLibvirtDeviceDisk__device(self, _cmd)
{
return self._device;
}
,["CPString"]), new objj_method(sel_getUid("setDevice:"), function $TNLibvirtDeviceDisk__setDevice_(self, _cmd, newValue)
{
self._device = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("type"), function $TNLibvirtDeviceDisk__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceDisk__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("source"), function $TNLibvirtDeviceDisk__source(self, _cmd)
{
return self._source;
}
,["TNLibvirtDeviceDiskSource"]), new objj_method(sel_getUid("setSource:"), function $TNLibvirtDeviceDisk__setSource_(self, _cmd, newValue)
{
self._source = newValue;
}
,["void","TNLibvirtDeviceDiskSource"]), new objj_method(sel_getUid("target"), function $TNLibvirtDeviceDisk__target(self, _cmd)
{
return self._target;
}
,["TNLibvirtDeviceDiskTarget"]), new objj_method(sel_getUid("setTarget:"), function $TNLibvirtDeviceDisk__setTarget_(self, _cmd, newValue)
{
self._target = newValue;
}
,["void","TNLibvirtDeviceDiskTarget"]), new objj_method(sel_getUid("driver"), function $TNLibvirtDeviceDisk__driver(self, _cmd)
{
return self._driver;
}
,["TNLibvirtDeviceDiskDriver"]), new objj_method(sel_getUid("setDriver:"), function $TNLibvirtDeviceDisk__setDriver_(self, _cmd, newValue)
{
self._driver = newValue;
}
,["void","TNLibvirtDeviceDiskDriver"]), new objj_method(sel_getUid("init"), function $TNLibvirtDeviceDisk__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceDisk").super_class }, "init"))
    {
        self._source = objj_msgSend(objj_msgSend(TNLibvirtDeviceDiskSource, "alloc"), "init");
        self._target = objj_msgSend(objj_msgSend(TNLibvirtDeviceDiskTarget, "alloc"), "init");
        self._driver = objj_msgSend(objj_msgSend(TNLibvirtDeviceDiskDriver, "alloc"), "init");
        self._transient = NO;
    }
    return self;
}
,["void"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceDisk__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceDisk").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "disk")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid disk");
        self._device = objj_msgSend(aNode, "valueForAttribute:", "device");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
        self._source = objj_msgSend(objj_msgSend(TNLibvirtDeviceDiskSource, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "source"));
        self._target = objj_msgSend(objj_msgSend(TNLibvirtDeviceDiskTarget, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "target"));
        self._driver = objj_msgSend(objj_msgSend(TNLibvirtDeviceDiskDriver, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "driver"));
        self._transient = objj_msgSend(aNode, "containsChildrenWithName:", "transient");
        self._shareable = objj_msgSend(aNode, "containsChildrenWithName:", "shareable");
        self._readonly = objj_msgSend(aNode, "containsChildrenWithName:", "readonly");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceDisk__XMLNode(self, _cmd)
{
    if (!self._type)
        objj_msgSend(CPException, "raise:reason:", "Missing disk type", "disk type is required");
    var attributes = {"type": self._type};
    if (self._device)
        attributes.device = self._device;
    var node = objj_msgSend(TNXMLNode, "nodeWithName:andAttributes:", "disk", attributes);
    if (self._source)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._source, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._target)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._target, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._driver)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._driver, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._transient)
    {
        objj_msgSend(node, "addChildWithName:", "transient");
        objj_msgSend(node, "up");
    }
    if (self._shareable)
    {
        objj_msgSend(node, "addChildWithName:", "shareable");
        objj_msgSend(node, "up");
    }
    if (self._readonly)
    {
        objj_msgSend(node, "addChildWithName:", "readonly");
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;33;Model/TNLibvirtDeviceDiskDriver.jt;5121;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;5020;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
TNLibvirtDeviceDiskDriverNameTap = "tap";
TNLibvirtDeviceDiskDriverNameTap2 = "tap2";
TNLibvirtDeviceDiskDriverNamePhy = "phy";
TNLibvirtDeviceDiskDriverNameFile = "file";
TNLibvirtDeviceDiskDriverNameQemu = "qemu";
TNLibvirtDeviceDiskDriverName = [ TNLibvirtDeviceDiskDriverNameTap,
                                                        TNLibvirtDeviceDiskDriverNameTap2,
                                                        TNLibvirtDeviceDiskDriverNamePhy,
                                                        TNLibvirtDeviceDiskDriverNameFile,
                                                        TNLibvirtDeviceDiskDriverNameQemu];
TNLibvirtDeviceDiskDriverTypeAio = "aio";
TNLibvirtDeviceDiskDriverTypeRaw = "raw";
TNLibvirtDeviceDiskDriverTypeCow = "cow";
TNLibvirtDeviceDiskDriverTypeQcow = "qcow";
TNLibvirtDeviceDiskDriverTypeQcow2 = "qcow2";
TNLibvirtDeviceDiskDriverTypeVmdk = "vmdk";
TNLibvirtDeviceDiskDriverType = [ TNLibvirtDeviceDiskDriverTypeAio,
                                                        TNLibvirtDeviceDiskDriverTypeRaw,
                                                        TNLibvirtDeviceDiskDriverTypeCow,
                                                        TNLibvirtDeviceDiskDriverTypeQcow,
                                                        TNLibvirtDeviceDiskDriverTypeQcow2,
                                                        TNLibvirtDeviceDiskDriverTypeVmdk];
TNLibvirtDeviceDiskDriverCacheDefault = "default";
TNLibvirtDeviceDiskDriverCacheNone = "none";
TNLibvirtDeviceDiskDriverCacheWritethrough = "writethrough";
TNLibvirtDeviceDiskDriverCacheWriteback = "writeback";
TNLibvirtDeviceDiskDriverCaches = [ TNLibvirtDeviceDiskDriverCacheDefault,
                                                        TNLibvirtDeviceDiskDriverCacheNone,
                                                        TNLibvirtDeviceDiskDriverCacheWritethrough,
                                                        TNLibvirtDeviceDiskDriverCacheWriteback];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceDiskDriver"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_cache"), new objj_ivar("_IO"), new objj_ivar("_name"), new objj_ivar("_type")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("cache"), function $TNLibvirtDeviceDiskDriver__cache(self, _cmd)
{
return self._cache;
}
,["CPString"]), new objj_method(sel_getUid("setCache:"), function $TNLibvirtDeviceDiskDriver__setCache_(self, _cmd, newValue)
{
self._cache = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("IO"), function $TNLibvirtDeviceDiskDriver__IO(self, _cmd)
{
return self._IO;
}
,["CPString"]), new objj_method(sel_getUid("setIO:"), function $TNLibvirtDeviceDiskDriver__setIO_(self, _cmd, newValue)
{
self._IO = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("name"), function $TNLibvirtDeviceDiskDriver__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNLibvirtDeviceDiskDriver__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("type"), function $TNLibvirtDeviceDiskDriver__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceDiskDriver__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceDiskDriver__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceDiskDriver").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "driver")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid disk driver");
        self._cache = objj_msgSend(aNode, "valueForAttribute:", "cache") || TNLibvirtDeviceDiskDriverCacheDefault;
        self._IO = objj_msgSend(aNode, "valueForAttribute:", "IO");
        self._name = objj_msgSend(aNode, "valueForAttribute:", "name");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceDiskDriver__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "driver");
    if (self._cache)
        objj_msgSend(node, "setValue:forAttribute:", self._cache, "cache");
    if (self._IO)
        objj_msgSend(node, "setValue:forAttribute:", self._IO, "io");
    if (self._name)
        objj_msgSend(node, "setValue:forAttribute:", self._name, "name");
    if (self._type)
        objj_msgSend(node, "setValue:forAttribute:", self._type, "type");
    return node;
}
,["TNXMLNode"])]);
}p;33;Model/TNLibvirtDeviceDiskSource.jt;5198;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.ji;31;TNLibvirtDeviceDiskSourceHost.jt;5061;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
objj_executeFile("TNLibvirtDeviceDiskSourceHost.j", YES);
TNLibvirtDeviceDiskSourceProtocolSheepdog = "sheepdog";
TNLibvirtDeviceDiskSourceProtocolNBD = "nbd";
TNLibvirtDeviceDiskSourceProtocolRBD = "rbd";
TNLibvirtDeviceDiskSourceProtocols = [ TNLibvirtDeviceDiskSourceProtocolSheepdog,
                                        TNLibvirtDeviceDiskSourceProtocolNBD,
                                        TNLibvirtDeviceDiskSourceProtocolRBD];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceDiskSource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_hosts"), new objj_ivar("_device"), new objj_ivar("_file"), new objj_ivar("_name"), new objj_ivar("_protocol")]);

       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("hosts"), function $TNLibvirtDeviceDiskSource__hosts(self, _cmd)
{
return self._hosts;
}
,["CPArray"]), new objj_method(sel_getUid("setHosts:"), function $TNLibvirtDeviceDiskSource__setHosts_(self, _cmd, newValue)
{
self._hosts = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("device"), function $TNLibvirtDeviceDiskSource__device(self, _cmd)
{
return self._device;
}
,["CPString"]), new objj_method(sel_getUid("setDevice:"), function $TNLibvirtDeviceDiskSource__setDevice_(self, _cmd, newValue)
{
self._device = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("file"), function $TNLibvirtDeviceDiskSource__file(self, _cmd)
{
return self._file;
}
,["CPString"]), new objj_method(sel_getUid("setFile:"), function $TNLibvirtDeviceDiskSource__setFile_(self, _cmd, newValue)
{
self._file = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("name"), function $TNLibvirtDeviceDiskSource__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNLibvirtDeviceDiskSource__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("protocol"), function $TNLibvirtDeviceDiskSource__protocol(self, _cmd)
{
return self._protocol;
}
,["CPString"]), new objj_method(sel_getUid("setProtocol:"), function $TNLibvirtDeviceDiskSource__setProtocol_(self, _cmd, newValue)
{
self._protocol = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("init"), function $TNLibvirtDeviceDiskSource__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceDiskSource").super_class }, "init"))
    {
        self._hosts = objj_msgSend(CPArray, "array");
        self._file = "/dev/null";
    }
    return self
}
,["void"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceDiskSource__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceDiskSource").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "source")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid disk source");
        self._device = objj_msgSend(aNode, "valueForAttribute:", "dev");
        self._file = objj_msgSend(aNode, "valueForAttribute:", "file");
        self._hosts = objj_msgSend(CPArray, "array");
        self._name = objj_msgSend(aNode, "valueForAttribute:", "name");
        self._protocol = objj_msgSend(aNode, "valueForAttribute:", "protocol");
        var hostNodes = objj_msgSend(aNode, "ownChildrenWithName:", "host");
        for (var i = 0; i < objj_msgSend(hostNodes, "count"); i++)
            objj_msgSend(self._hosts, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceDiskSourceHost, "alloc"), "initWithXMLNode:", objj_msgSend(hostNodes, "objectAtIndex:", i)));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("sourceObject"), function $TNLibvirtDeviceDiskSource__sourceObject(self, _cmd)
{
    if (self._device)
        return self._device;
    if (self._file)
        return self._file;
    if (self._hosts)
        return self._hosts;
}
,["CPString"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceDiskSource__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "source");
    if (self._file)
        objj_msgSend(node, "setValue:forAttribute:", self._file, "file");
    if (self._device)
        objj_msgSend(node, "setValue:forAttribute:", self._device, "dev");
    if (self._protocol)
        objj_msgSend(node, "setValue:forAttribute:", self._protocol, "protocol");
    if (self._name)
        objj_msgSend(node, "setValue:forAttribute:", self._name, "name");
    for (var i = 0; i < objj_msgSend(self._hosts, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._hosts, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;37;Model/TNLibvirtDeviceDiskSourceHost.jt;2163;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;2062;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceDiskSourceHost"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_name"), new objj_ivar("_port")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("name"), function $TNLibvirtDeviceDiskSourceHost__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNLibvirtDeviceDiskSourceHost__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("port"), function $TNLibvirtDeviceDiskSourceHost__port(self, _cmd)
{
return self._port;
}
,["CPString"]), new objj_method(sel_getUid("setPort:"), function $TNLibvirtDeviceDiskSourceHost__setPort_(self, _cmd, newValue)
{
self._port = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceDiskSourceHost__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceDiskSourceHost").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "host")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid disk source host");
        self._name = objj_msgSend(aNode, "valueForAttribute:", "name");
        self._port = objj_msgSend(aNode, "valueForAttribute:", "port");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceDiskSourceHost__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "host");
    if (self._name)
        objj_msgSend(node, "setValue:forAttribute:", self._name, "name");
    if (self._port)
        objj_msgSend(node, "setValue:forAttribute:", self._port, "port");
    return node;
}
,["TNXMLNode"])]);
}p;33;Model/TNLibvirtDeviceDiskTarget.jt;4334;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;4233;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
TNLibvirtDeviceDiskTargetDevices = [];
TNLibvirtDeviceDiskTargetDevicesIDE = [];
TNLibvirtDeviceDiskTargetDevicesSCSI = [];
TNLibvirtDeviceDiskTargetDevicesXEN = [];
TNLibvirtDeviceDiskTargetDevicesVIRTIO = [];
TNLibvirtDeviceDiskTargetDevicesSATA = [];
TNLibvirtDeviceDiskTargetBusSATA = "sata";
TNLibvirtDeviceDiskTargetBusIDE = "ide";
TNLibvirtDeviceDiskTargetBusSCSI = "scsi";
TNLibvirtDeviceDiskTargetBusUSB = "usb";
TNLibvirtDeviceDiskTargetBusVIRTIO = "virtio";
TNLibvirtDeviceDiskTargetBusXEN = "xen";
TNLibvirtDeviceDiskTargetBuses = [ TNLibvirtDeviceDiskTargetBusIDE,
                                            TNLibvirtDeviceDiskTargetBusSATA,
                                            TNLibvirtDeviceDiskTargetBusSCSI,
                                            TNLibvirtDeviceDiskTargetBusVIRTIO,
                                            TNLibvirtDeviceDiskTargetBusUSB,
                                            TNLibvirtDeviceDiskTargetBusXEN];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceDiskTarget"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_bus"), new objj_ivar("_device")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("bus"), function $TNLibvirtDeviceDiskTarget__bus(self, _cmd)
{
return self._bus;
}
,["CPString"]), new objj_method(sel_getUid("setBus:"), function $TNLibvirtDeviceDiskTarget__setBus_(self, _cmd, newValue)
{
self._bus = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("device"), function $TNLibvirtDeviceDiskTarget__device(self, _cmd)
{
return self._device;
}
,["CPString"]), new objj_method(sel_getUid("setDevice:"), function $TNLibvirtDeviceDiskTarget__setDevice_(self, _cmd, newValue)
{
self._device = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceDiskTarget__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceDiskTarget").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "target")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid disk target");
        self._bus = objj_msgSend(aNode, "valueForAttribute:", "bus");
        self._device = objj_msgSend(aNode, "valueForAttribute:", "dev");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceDiskTarget__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "target");
    if (self._bus)
        objj_msgSend(node, "setValue:forAttribute:", self._bus, "bus");
    if (self._device)
        objj_msgSend(node, "setValue:forAttribute:", self._device, "dev");
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNLibvirtDeviceDiskTarget__initialize(self, _cmd)
{
    letters = ["a", "b", "c", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n",
                "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"];
    for (var i = 0; i < objj_msgSend(letters, "count"); i++)
    {
        objj_msgSend(TNLibvirtDeviceDiskTargetDevicesIDE, "addObject:", "hd" + objj_msgSend(letters, "objectAtIndex:", i));
        objj_msgSend(TNLibvirtDeviceDiskTargetDevicesSCSI, "addObject:", "sd" + objj_msgSend(letters, "objectAtIndex:", i));
        objj_msgSend(TNLibvirtDeviceDiskTargetDevicesXEN, "addObject:", "xvd" + objj_msgSend(letters, "objectAtIndex:", i));
        objj_msgSend(TNLibvirtDeviceDiskTargetDevicesVIRTIO, "addObject:", "vd" + objj_msgSend(letters, "objectAtIndex:", i));
    }
    TNLibvirtDeviceDiskTargetDevices = [].concat( TNLibvirtDeviceDiskTargetDevicesIDE,
                                                TNLibvirtDeviceDiskTargetDevicesSCSI,
                                                TNLibvirtDeviceDiskTargetDevicesXEN,
                                                TNLibvirtDeviceDiskTargetDevicesVIRTIO);
}
,["void"])]);
}p;33;Model/TNLibvirtDeviceFilesystem.jt;6756;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;33;TNLibvirtDeviceFilesystemSource.ji;33;TNLibvirtDeviceFilesystemTarget.ji;33;TNLibvirtDeviceFilesystemDriver.ji;15;TNLibvirtBase.jt;6541;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtDeviceFilesystemSource.j", YES);
objj_executeFile("TNLibvirtDeviceFilesystemTarget.j", YES);
objj_executeFile("TNLibvirtDeviceFilesystemDriver.j", YES);
objj_executeFile("TNLibvirtBase.j", YES);;
TNLibvirtDeviceFilesystemTypeTemplate = "template";
TNLibvirtDeviceFilesystemTypeMount = "mount";
TNLibvirtDeviceFilesystemTypeFile = "file";
TNLibvirtDeviceFilesystemTypeBlock = "block";
TNLibvirtDeviceFilesystemTypes = [ TNLibvirtDeviceFilesystemTypeTemplate,
                                                    TNLibvirtDeviceFilesystemTypeMount,
                                                    TNLibvirtDeviceFilesystemTypeFile,
                                                    TNLibvirtDeviceFilesystemTypeBlock];
TNLibvirtDeviceFilesystemAccessModePassthrough = "passthrough";
TNLibvirtDeviceFilesystemAccessModeMapped = "mapped";
TNLibvirtDeviceFilesystemAccessModeSquash = "squash";
TNLibvirtDeviceFilesystemAccessModes = [ TNLibvirtDeviceFilesystemAccessModePassthrough,
                                                    TNLibvirtDeviceFilesystemAccessModeMapped,
                                                    TNLibvirtDeviceFilesystemAccessModeSquash];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceFilesystem"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_type"), new objj_ivar("_accessmode"), new objj_ivar("_source"), new objj_ivar("_target"), new objj_ivar("_driver"), new objj_ivar("_readonly")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("type"), function $TNLibvirtDeviceFilesystem__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceFilesystem__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("accessmode"), function $TNLibvirtDeviceFilesystem__accessmode(self, _cmd)
{
return self._accessmode;
}
,["CPString"]), new objj_method(sel_getUid("setAccessmode:"), function $TNLibvirtDeviceFilesystem__setAccessmode_(self, _cmd, newValue)
{
self._accessmode = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("source"), function $TNLibvirtDeviceFilesystem__source(self, _cmd)
{
return self._source;
}
,["TNLibvirtDeviceFilesystemSource"]), new objj_method(sel_getUid("setSource:"), function $TNLibvirtDeviceFilesystem__setSource_(self, _cmd, newValue)
{
self._source = newValue;
}
,["void","TNLibvirtDeviceFilesystemSource"]), new objj_method(sel_getUid("target"), function $TNLibvirtDeviceFilesystem__target(self, _cmd)
{
return self._target;
}
,["TNLibvirtDeviceFilesystemTarget"]), new objj_method(sel_getUid("setTarget:"), function $TNLibvirtDeviceFilesystem__setTarget_(self, _cmd, newValue)
{
self._target = newValue;
}
,["void","TNLibvirtDeviceFilesystemTarget"]), new objj_method(sel_getUid("driver"), function $TNLibvirtDeviceFilesystem__driver(self, _cmd)
{
return self._driver;
}
,["TNLibvirtDeviceFilesystemDriver"]), new objj_method(sel_getUid("setDriver:"), function $TNLibvirtDeviceFilesystem__setDriver_(self, _cmd, newValue)
{
self._driver = newValue;
}
,["void","TNLibvirtDeviceFilesystemDriver"]), new objj_method(sel_getUid("isReadOnly"), function $TNLibvirtDeviceFilesystem__isReadOnly(self, _cmd)
{
return self._readonly;
}
,["BOOL"]), new objj_method(sel_getUid("setReadOnly:"), function $TNLibvirtDeviceFilesystem__setReadOnly_(self, _cmd, newValue)
{
self._readonly = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("init"), function $TNLibvirtDeviceFilesystem__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceFilesystem").super_class }, "init"))
    {
        self._source = objj_msgSend(objj_msgSend(TNLibvirtDeviceFilesystemSource, "alloc"), "init");
        self._target = objj_msgSend(objj_msgSend(TNLibvirtDeviceFilesystemTarget, "alloc"), "init");
        self._driver = objj_msgSend(objj_msgSend(TNLibvirtDeviceFilesystemDriver, "alloc"), "init");
        self._readonly = NO;
    }
    return self;
}
,["void"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceFilesystem__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceFilesystem").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "filesystem")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid filesystem");
        self._accessmode = objj_msgSend(aNode, "valueForAttribute:", "accessmode");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
        self._source = objj_msgSend(objj_msgSend(TNLibvirtDeviceFilesystemSource, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "source"));
        self._target = objj_msgSend(objj_msgSend(TNLibvirtDeviceFilesystemTarget, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "target"));
        self._driver = objj_msgSend(objj_msgSend(TNLibvirtDeviceFilesystemDriver, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "driver"));
        self._readonly = objj_msgSend(aNode, "containsChildrenWithName:", "readonly");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceFilesystem__XMLNode(self, _cmd)
{
    if (!self._type)
        objj_msgSend(CPException, "raise:reason:", "Missing filesystem type", "filesystem type is required");
    var attributes = {"type": self._type};
    if (self._accessmode)
        attributes.accessmode = self._accessmode;
    var node = objj_msgSend(TNXMLNode, "nodeWithName:andAttributes:", "filesystem", attributes);
    if (self._source)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._source, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._target)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._target, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._driver)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._driver, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._readonly)
    {
        objj_msgSend(node, "addChildWithName:", "readonly");
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;39;Model/TNLibvirtDeviceFilesystemDriver.jt;2510;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;2409;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
TNLibvirtDeviceFilesystemDriverTypePath = "path";
TNLibvirtDeviceFilesystemDriverTypeHandle = "handle";
TNLibvirtDeviceFilesystemDriverTypes = [ TNLibvirtDeviceFilesystemDriverTypePath,
                                                TNLibvirtDeviceFilesystemDriverTypeHandle];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceFilesystemDriver"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_type"), new objj_ivar("_wrpolicy")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("type"), function $TNLibvirtDeviceFilesystemDriver__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceFilesystemDriver__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("wrpolicy"), function $TNLibvirtDeviceFilesystemDriver__wrpolicy(self, _cmd)
{
return self._wrpolicy;
}
,["CPString"]), new objj_method(sel_getUid("setWrpolicy:"), function $TNLibvirtDeviceFilesystemDriver__setWrpolicy_(self, _cmd, newValue)
{
self._wrpolicy = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceFilesystemDriver__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceFilesystemDriver").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "driver")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid filesystem driver");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
        self._wrpolicy = objj_msgSend(aNode, "valueForAttribute:", "wrpolicy");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceFilesystemDriver__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "driver");
    if (self._type)
        objj_msgSend(node, "setValue:forAttribute:", self._type, "type");
    if (self._wrpolicy)
        objj_msgSend(node, "setValue:forAttribute:", self._wrpolicy, "wrpolicy");
    return node;
}
,["TNXMLNode"])]);
}p;39;Model/TNLibvirtDeviceFilesystemSource.jt;2170;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;2069;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceFilesystemSource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_name"), new objj_ivar("_dir")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("name"), function $TNLibvirtDeviceFilesystemSource__name(self, _cmd)
{
return self._name;
}
,["CPArray"]), new objj_method(sel_getUid("setName:"), function $TNLibvirtDeviceFilesystemSource__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("dir"), function $TNLibvirtDeviceFilesystemSource__dir(self, _cmd)
{
return self._dir;
}
,["CPString"]), new objj_method(sel_getUid("setDir:"), function $TNLibvirtDeviceFilesystemSource__setDir_(self, _cmd, newValue)
{
self._dir = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceFilesystemSource__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceFilesystemSource").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "source")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid filesystem source");
        self._name = objj_msgSend(aNode, "valueForAttribute:", "name");
        self._dir = objj_msgSend(aNode, "valueForAttribute:", "dir");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceFilesystemSource__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "source");
    if (self._name)
        objj_msgSend(node, "setValue:forAttribute:", self._name, "name");
    if (self._dir)
        objj_msgSend(node, "setValue:forAttribute:", self._dir, "dir");
    return node;
}
,["TNXMLNode"])]);
}p;39;Model/TNLibvirtDeviceFilesystemTarget.jt;1683;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;1582;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceFilesystemTarget"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_dir")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("dir"), function $TNLibvirtDeviceFilesystemTarget__dir(self, _cmd)
{
return self._dir;
}
,["CPString"]), new objj_method(sel_getUid("setDir:"), function $TNLibvirtDeviceFilesystemTarget__setDir_(self, _cmd, newValue)
{
self._dir = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceFilesystemTarget__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceFilesystemTarget").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "target")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid filesystem target");
        self._dir = objj_msgSend(aNode, "valueForAttribute:", "dir");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceFilesystemTarget__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "target");
    if (self._dir)
        objj_msgSend(node, "setValue:forAttribute:", self._dir, "dir");
    return node;
}
,["TNXMLNode"])]);
}p;30;Model/TNLibvirtDeviceGraphic.jt;7893;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;7792;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
TNLibvirtDeviceGraphicTypeVNC = "vnc";
TNLibvirtDeviceGraphicTypeSDL = "sdl";
TNLibvirtDeviceGraphicTypeRDP = "rdp";
TNLibvirtDeviceGraphicTypeSPICE = "spice";
TNLibvirtDeviceGraphicTypeDESKTOP = "desktop";
TNLibvirtDeviceGraphicVNCKeymapFR = "fr";
TNLibvirtDeviceGraphicVNCKeymapFR_CH = "fr-ch";
TNLibvirtDeviceGraphicVNCKeymapEN_US = "en-us";
TNLibvirtDeviceGraphicVNCKeymapEN_GB = "en-gb";
TNLibvirtDeviceGraphicVNCKeymapDE = "de";
TNLibvirtDeviceGraphicVNCKeymapES = "es";
TNLibvirtDeviceGraphicVNCKeymapNO = "no";
TNLibvirtDeviceGraphicVNCKeymapHU = "hu";
TNLibvirtDeviceGraphicVNCKeymapIT = "it";
TNLibvirtDeviceGraphicVNCKeymapNL_BE = "nl-be";
TNLibvirtDeviceGraphicVNCKeymapPT = "pt";
TNLibvirtDeviceGraphicVNCKeymaps = [ TNLibvirtDeviceGraphicVNCKeymapEN_US,
                                            TNLibvirtDeviceGraphicVNCKeymapEN_GB,
                                            TNLibvirtDeviceGraphicVNCKeymapFR,
                                            TNLibvirtDeviceGraphicVNCKeymapFR_CH,
                                            TNLibvirtDeviceGraphicVNCKeymapDE,
                                            TNLibvirtDeviceGraphicVNCKeymapES,
                                            TNLibvirtDeviceGraphicVNCKeymapNO,
                                            TNLibvirtDeviceGraphicVNCKeymapHU,
                                            TNLibvirtDeviceGraphicVNCKeymapIT,
                                            TNLibvirtDeviceGraphicVNCKeymapNL_BE,
                                            TNLibvirtDeviceGraphicVNCKeymapPT];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceGraphic"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_autoPort"), new objj_ivar("_fullScreen"), new objj_ivar("_multiUser"), new objj_ivar("_display"), new objj_ivar("_keymap"), new objj_ivar("_listen"), new objj_ivar("_password"), new objj_ivar("_port"), new objj_ivar("_type")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isAutoPort"), function $TNLibvirtDeviceGraphic__isAutoPort(self, _cmd)
{
return self._autoPort;
}
,["BOOL"]), new objj_method(sel_getUid("setAutoPort:"), function $TNLibvirtDeviceGraphic__setAutoPort_(self, _cmd, newValue)
{
self._autoPort = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isFullScreen"), function $TNLibvirtDeviceGraphic__isFullScreen(self, _cmd)
{
return self._fullScreen;
}
,["BOOL"]), new objj_method(sel_getUid("setFullScreen:"), function $TNLibvirtDeviceGraphic__setFullScreen_(self, _cmd, newValue)
{
self._fullScreen = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isMultiUser"), function $TNLibvirtDeviceGraphic__isMultiUser(self, _cmd)
{
return self._multiUser;
}
,["BOOL"]), new objj_method(sel_getUid("setMultiUser:"), function $TNLibvirtDeviceGraphic__setMultiUser_(self, _cmd, newValue)
{
self._multiUser = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("display"), function $TNLibvirtDeviceGraphic__display(self, _cmd)
{
return self._display;
}
,["CPString"]), new objj_method(sel_getUid("setDisplay:"), function $TNLibvirtDeviceGraphic__setDisplay_(self, _cmd, newValue)
{
self._display = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("keymap"), function $TNLibvirtDeviceGraphic__keymap(self, _cmd)
{
return self._keymap;
}
,["CPString"]), new objj_method(sel_getUid("setKeymap:"), function $TNLibvirtDeviceGraphic__setKeymap_(self, _cmd, newValue)
{
self._keymap = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("listen"), function $TNLibvirtDeviceGraphic__listen(self, _cmd)
{
return self._listen;
}
,["CPString"]), new objj_method(sel_getUid("setListen:"), function $TNLibvirtDeviceGraphic__setListen_(self, _cmd, newValue)
{
self._listen = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("password"), function $TNLibvirtDeviceGraphic__password(self, _cmd)
{
return self._password;
}
,["CPString"]), new objj_method(sel_getUid("setPassword:"), function $TNLibvirtDeviceGraphic__setPassword_(self, _cmd, newValue)
{
self._password = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("port"), function $TNLibvirtDeviceGraphic__port(self, _cmd)
{
return self._port;
}
,["CPString"]), new objj_method(sel_getUid("setPort:"), function $TNLibvirtDeviceGraphic__setPort_(self, _cmd, newValue)
{
self._port = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("type"), function $TNLibvirtDeviceGraphic__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceGraphic__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("init"), function $TNLibvirtDeviceGraphic__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceGraphic").super_class }, "init"))
    {
        self._keymap = TNLibvirtDeviceGraphicVNCKeymapEN_US;
        self._type = TNLibvirtDeviceGraphicTypeVNC;
        self._autoPort = YES;
    }
    return self;
}
,["TNLibvirtDeviceGraphic"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceGraphic__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceGraphic").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "graphics")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid graphics");
        self._autoPort = (objj_msgSend(aNode, "valueForAttribute:", "autoport") == "yes") ? YES : NO;
        self._display = objj_msgSend(aNode, "valueForAttribute:", "display");
        self._fullScreen = (objj_msgSend(aNode, "valueForAttribute:", "fullscreen") == "yes") ? YES : NO;
        self._keymap = objj_msgSend(aNode, "valueForAttribute:", "keymap");
        self._listen = objj_msgSend(aNode, "valueForAttribute:", "listen");
        self._multiUser = (objj_msgSend(aNode, "valueForAttribute:", "multiUser") == "yes") ? YES : NO;
        self._password = objj_msgSend(aNode, "valueForAttribute:", "passwd");
        self._port = objj_msgSend(aNode, "valueForAttribute:", "port");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceGraphic__XMLNode(self, _cmd)
{
    if (!self._type)
        objj_msgSend(CPException, "raise:reason:", "Missing graphic type", "graphic type is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:andAttributes:", "graphics", {"type": self._type});
    if (self._display)
        objj_msgSend(node, "setValue:forAttribute:", self._display, "display");
    if (self._port)
        objj_msgSend(node, "setValue:forAttribute:", self._port, "port");
    if (self._keymap)
        objj_msgSend(node, "setValue:forAttribute:", self._keymap, "keymap");
    if (self._listen)
        objj_msgSend(node, "setValue:forAttribute:", self._listen, "listen");
    if (self._password)
        objj_msgSend(node, "setValue:forAttribute:", self._password, "passwd");
    if (self._autoPort != nil)
        objj_msgSend(node, "setValue:forAttribute:", (self._autoPort ? "yes" : "no"), "autoport");
    if (self._multiUser != nil)
        objj_msgSend(node, "setValue:forAttribute:", (self._multiUser ? "yes" : "no"), "multiUser");
    if (self._fullScreen != nil)
        objj_msgSend(node, "setValue:forAttribute:", (self._fullScreen ? "yes" : "no"), "fullscreen");
    return node;
}
,["TNXMLNode"])]);
}p;30;Model/TNLibvirtDeviceHostDev.jt;5443;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.ji;30;TNLibvirtDeviceHostDevSource.ji;28;TNLibvirtDeviceHostDevBoot.ji;27;TNLibvirtDeviceHostDevRom.jt;5242;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
objj_executeFile("TNLibvirtDeviceHostDevSource.j", YES);
objj_executeFile("TNLibvirtDeviceHostDevBoot.j", YES);
objj_executeFile("TNLibvirtDeviceHostDevRom.j", YES);
TNLibvirtDeviceHostDevModeSubsystem = "subsystem";
TNLibvirtDeviceHostDevModes = [TNLibvirtDeviceHostDevModeSubsystem];
TNLibvirtDeviceHostDevTypePCI = "PCI";
TNLibvirtDeviceHostDevTypeUSB = "USB";
TNLibvirtDeviceHostDevTypes = [TNLibvirtDeviceHostDevTypePCI, TNLibvirtDeviceHostDevTypeUSB];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceHostDev"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_managed"), new objj_ivar("_mode"), new objj_ivar("_type"), new objj_ivar("_boot"), new objj_ivar("_rom"), new objj_ivar("_source")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isManaged"), function $TNLibvirtDeviceHostDev__isManaged(self, _cmd)
{
return self._managed;
}
,["BOOL"]), new objj_method(sel_getUid("setManaged:"), function $TNLibvirtDeviceHostDev__setManaged_(self, _cmd, newValue)
{
self._managed = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("mode"), function $TNLibvirtDeviceHostDev__mode(self, _cmd)
{
return self._mode;
}
,["CPString"]), new objj_method(sel_getUid("setMode:"), function $TNLibvirtDeviceHostDev__setMode_(self, _cmd, newValue)
{
self._mode = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("type"), function $TNLibvirtDeviceHostDev__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceHostDev__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("boot"), function $TNLibvirtDeviceHostDev__boot(self, _cmd)
{
return self._boot;
}
,["TNLibvirtDeviceHostDevBoot"]), new objj_method(sel_getUid("setBoot:"), function $TNLibvirtDeviceHostDev__setBoot_(self, _cmd, newValue)
{
self._boot = newValue;
}
,["void","TNLibvirtDeviceHostDevBoot"]), new objj_method(sel_getUid("rom"), function $TNLibvirtDeviceHostDev__rom(self, _cmd)
{
return self._rom;
}
,["TNLibvirtDeviceHostDevRom"]), new objj_method(sel_getUid("setRom:"), function $TNLibvirtDeviceHostDev__setRom_(self, _cmd, newValue)
{
self._rom = newValue;
}
,["void","TNLibvirtDeviceHostDevRom"]), new objj_method(sel_getUid("source"), function $TNLibvirtDeviceHostDev__source(self, _cmd)
{
return self._source;
}
,["TNLibvirtDeviceHostDevSource"]), new objj_method(sel_getUid("setSource:"), function $TNLibvirtDeviceHostDev__setSource_(self, _cmd, newValue)
{
self._source = newValue;
}
,["void","TNLibvirtDeviceHostDevSource"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceHostDev__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceHostDev").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "hostdev")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid hostdev");
        if (objj_msgSend(aNode, "valueForAttribute:", "managed"))
            self._managed = objj_msgSend(aNode, "valueForAttribute:", "managed") == "yes" ? YES : NO;
        self._mode = objj_msgSend(aNode, "valueForAttribute:", "mode");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
        if (objj_msgSend(aNode, "containsChildrenWithName:", "boot"))
            self._boot = objj_msgSend(objj_msgSend(TNLibvirtDeviceHostDevBoot, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "boot"));
        if (objj_msgSend(aNode, "containsChildrenWithName:", "rom"))
            self._rom = objj_msgSend(objj_msgSend(TNLibvirtDeviceHostDevRom, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "rom"));
        if (objj_msgSend(aNode, "containsChildrenWithName:", "source"))
            self._source = objj_msgSend(objj_msgSend(TNLibvirtDeviceHostDevSource, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "source"));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceHostDev__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "hostdev");
    if (self._type)
        objj_msgSend(node, "setValue:forAttribute:", self._type, "type");
    if (self._mode)
        objj_msgSend(node, "setValue:forAttribute:", self._mode, "mode");
    if (self._managed !== nil)
        objj_msgSend(node, "setValue:forAttribute:", self._managed ? "yes" : "false", "managed");
    if (self._source)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._source, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._boot)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._boot, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._rom)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._rom, "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;34;Model/TNLibvirtDeviceHostDevBoot.jt;1667;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;1566;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceHostDevBoot"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_order")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("order"), function $TNLibvirtDeviceHostDevBoot__order(self, _cmd)
{
return self._order;
}
,["CPString"]), new objj_method(sel_getUid("setOrder:"), function $TNLibvirtDeviceHostDevBoot__setOrder_(self, _cmd, newValue)
{
self._order = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceHostDevBoot__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceHostDevBoot").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "boot")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid hostdev boot");
        self._order = objj_msgSend(aNode, "valueForAttribute:", "order");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceHostDevBoot__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "boot");
    if (self._order)
        objj_msgSend(node, "setValue:forAttribute:", self._order, "order");
    return node;
}
,["TNXMLNode"])]);
}p;33;Model/TNLibvirtDeviceHostDevRom.jt;1813;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;1712;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
TNLibvirtDeviceHostDevRomBarON = "on";
TNLibvirtDeviceHostDevRomBarOFF = "off";
TNLibvirtDeviceHostDevRomBars = [TNLibvirtDeviceHostDevRomBarON, TNLibvirtDeviceHostDevRomBarOFF];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceHostDevRom"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_bar")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("bar"), function $TNLibvirtDeviceHostDevRom__bar(self, _cmd)
{
return self._bar;
}
,["CPString"]), new objj_method(sel_getUid("setBar:"), function $TNLibvirtDeviceHostDevRom__setBar_(self, _cmd, newValue)
{
self._bar = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceHostDevRom__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceHostDevRom").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "rom")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid hostdev rom");
        self._bar = objj_msgSend(aNode, "valueForAttribute:", "bar");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceHostDevRom__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "rom");
    if (self._bar)
        objj_msgSend(node, "setValue:forAttribute:", self._bar, "bar");
    return node;
}
,["TNXMLNode"])]);
}p;36;Model/TNLibvirtDeviceHostDevSource.jt;3864;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.ji;36;TNLibvirtDeviceHostDevSourceVendor.ji;37;TNLibvirtDeviceHostDevSourceProduct.ji;37;TNLibvirtDeviceHostDevSourceAddress.jt;3638;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
objj_executeFile("TNLibvirtDeviceHostDevSourceVendor.j", YES);
objj_executeFile("TNLibvirtDeviceHostDevSourceProduct.j", YES);
objj_executeFile("TNLibvirtDeviceHostDevSourceAddress.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceHostDevSource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_address"), new objj_ivar("_product"), new objj_ivar("_vendor")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("address"), function $TNLibvirtDeviceHostDevSource__address(self, _cmd)
{
return self._address;
}
,["TNLibvirtDeviceHostDevSourceAddress"]), new objj_method(sel_getUid("setAddress:"), function $TNLibvirtDeviceHostDevSource__setAddress_(self, _cmd, newValue)
{
self._address = newValue;
}
,["void","TNLibvirtDeviceHostDevSourceAddress"]), new objj_method(sel_getUid("product"), function $TNLibvirtDeviceHostDevSource__product(self, _cmd)
{
return self._product;
}
,["TNLibvirtDeviceHostDevSourceProduct"]), new objj_method(sel_getUid("setProduct:"), function $TNLibvirtDeviceHostDevSource__setProduct_(self, _cmd, newValue)
{
self._product = newValue;
}
,["void","TNLibvirtDeviceHostDevSourceProduct"]), new objj_method(sel_getUid("vendor"), function $TNLibvirtDeviceHostDevSource__vendor(self, _cmd)
{
return self._vendor;
}
,["TNLibvirtDeviceHostDevSourceVendor"]), new objj_method(sel_getUid("setVendor:"), function $TNLibvirtDeviceHostDevSource__setVendor_(self, _cmd, newValue)
{
self._vendor = newValue;
}
,["void","TNLibvirtDeviceHostDevSourceVendor"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceHostDevSource__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceHostDevSource").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "source")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid hostdev source");
        if (objj_msgSend(aNode, "containsChildrenWithName:", "address"))
            self._address = objj_msgSend(objj_msgSend(TNLibvirtDeviceHostDevSourceAddress, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "address"));
        if (objj_msgSend(aNode, "containsChildrenWithName:", "product"))
            self._product = objj_msgSend(objj_msgSend(TNLibvirtDeviceHostDevSourceProduct, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "product"));
        if (objj_msgSend(aNode, "containsChildrenWithName:", "vendor"))
            self._vendor = objj_msgSend(objj_msgSend(TNLibvirtDeviceHostDevSourceVendor, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "vendor"));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceHostDevSource__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "source");
    if (self._address)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._address, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._product)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._product, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._vendor)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._vendor, "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;43;Model/TNLibvirtDeviceHostDevSourceAddress.jt;2755;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;2654;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceHostDevSourceAddress"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_bus"), new objj_ivar("_slot"), new objj_ivar("_function")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("bus"), function $TNLibvirtDeviceHostDevSourceAddress__bus(self, _cmd)
{
return self._bus;
}
,["CPString"]), new objj_method(sel_getUid("setBus:"), function $TNLibvirtDeviceHostDevSourceAddress__setBus_(self, _cmd, newValue)
{
self._bus = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("slot"), function $TNLibvirtDeviceHostDevSourceAddress__slot(self, _cmd)
{
return self._slot;
}
,["CPString"]), new objj_method(sel_getUid("setSlot:"), function $TNLibvirtDeviceHostDevSourceAddress__setSlot_(self, _cmd, newValue)
{
self._slot = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("function"), function $TNLibvirtDeviceHostDevSourceAddress__function(self, _cmd)
{
return self._function;
}
,["CPString"]), new objj_method(sel_getUid("setFunction:"), function $TNLibvirtDeviceHostDevSourceAddress__setFunction_(self, _cmd, newValue)
{
self._function = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceHostDevSourceAddress__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceHostDevSourceAddress").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "address")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid hostdev source address");
        self._bus = objj_msgSend(aNode, "valueForAttribute:", "bus");
        self._slot = objj_msgSend(aNode, "valueForAttribute:", "slot");
        self._function = objj_msgSend(aNode, "valueForAttribute:", "function");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceHostDevSourceAddress__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "address");
    if (self._bus)
        objj_msgSend(node, "setValue:forAttribute:", self._bus, "bus");
    if (self._slot)
        objj_msgSend(node, "setValue:forAttribute:", self._slot, "slot");
    if (self._function)
        objj_msgSend(node, "setValue:forAttribute:", self._function, "function");
    return node;
}
,["TNXMLNode"])]);
}p;43;Model/TNLibvirtDeviceHostDevSourceProduct.jt;1701;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;1600;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceHostDevSourceProduct"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_id")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("id"), function $TNLibvirtDeviceHostDevSourceProduct__id(self, _cmd)
{
return self._id;
}
,["CPString"]), new objj_method(sel_getUid("setId:"), function $TNLibvirtDeviceHostDevSourceProduct__setId_(self, _cmd, newValue)
{
self._id = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceHostDevSourceProduct__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceHostDevSourceProduct").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "product")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid hostdev source product");
        self._id = objj_msgSend(aNode, "valueForAttribute:", "id");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceHostDevSourceProduct__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "product");
    if (self._id)
        objj_msgSend(node, "setValue:forAttribute:", self._id, "id");
    return node;
}
,["TNXMLNode"])]);
}p;42;Model/TNLibvirtDeviceHostDevSourceVendor.jt;1692;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;1591;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceHostDevSourceVendor"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_id")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("id"), function $TNLibvirtDeviceHostDevSourceVendor__id(self, _cmd)
{
return self._id;
}
,["CPString"]), new objj_method(sel_getUid("setId:"), function $TNLibvirtDeviceHostDevSourceVendor__setId_(self, _cmd, newValue)
{
self._id = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceHostDevSourceVendor__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceHostDevSourceVendor").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "vendor")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid hostdev source vendor");
        self._id = objj_msgSend(aNode, "valueForAttribute:", "id");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceHostDevSourceVendor__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "vendor");
    if (self._id)
        objj_msgSend(node, "setValue:forAttribute:", self._id, "id");
    return node;
}
,["TNXMLNode"])]);
}p;28;Model/TNLibvirtDeviceInput.jt;3074;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;2973;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
TNLibvirtDeviceInputBusUSB = "usb";
TNLibvirtDeviceInputBusPS2 = "ps2";
TNLibvirtDeviceInputBusXEN = "xen";
TNLibvirtDeviceInputBuses = [ TNLibvirtDeviceInputBusUSB,
                                            TNLibvirtDeviceInputBusPS2,
                                            TNLibvirtDeviceInputBusXEN];
TNLibvirtDeviceInputTypesTypeMouse = "mouse";
TNLibvirtDeviceInputTypesTypeTablet = "tablet";
TNLibvirtDeviceInputTypes = [TNLibvirtDeviceInputTypesTypeTablet,
                                           TNLibvirtDeviceInputTypesTypeMouse];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceInput"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_bus"), new objj_ivar("_type")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("bus"), function $TNLibvirtDeviceInput__bus(self, _cmd)
{
return self._bus;
}
,["CPString"]), new objj_method(sel_getUid("setBus:"), function $TNLibvirtDeviceInput__setBus_(self, _cmd, newValue)
{
self._bus = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("type"), function $TNLibvirtDeviceInput__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceInput__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("init"), function $TNLibvirtDeviceInput__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceInput").super_class }, "init"))
    {
        self._bus = TNLibvirtDeviceInputBusUSB;
        self._type = TNLibvirtDeviceInputTypesTypeTablet;
    }
    return self;
}
,["TNLibvirtDeviceInput"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceInput__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceInput").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "input")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid input");
        self._bus = objj_msgSend(aNode, "valueForAttribute:", "bus");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceInput__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "input");
    if (self._type)
        objj_msgSend(node, "setValue:forAttribute:", self._type, "type");
    if (self._bus)
        objj_msgSend(node, "setValue:forAttribute:", self._bus, "bus");
    else
        objj_msgSend(node, "setValue:forAttribute:", "usb", "bus");
    return node;
}
,["TNXMLNode"])]);
}p;32;Model/TNLibvirtDeviceInterface.jt;11461;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.ji;35;TNLibvirtDeviceInterfaceBandwidth.ji;35;TNLibvirtDeviceInterfaceFilterRef.ji;32;TNLibvirtDeviceInterfaceSource.ji;32;TNLibvirtDeviceInterfaceTarget.ji;37;TNLibvirtDeviceInterfaceVirtualPort.jt;11163;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceBandwidth.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceFilterRef.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceSource.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceTarget.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceVirtualPort.j", YES);
TNLibvirtDeviceInterfaceModelNE2KISA = "ne2k_isa";
TNLibvirtDeviceInterfaceModelI82551 = "i82551";
TNLibvirtDeviceInterfaceModelI82557b = "i82557b";
TNLibvirtDeviceInterfaceModelI82559ER = "i82559er";
TNLibvirtDeviceInterfaceModelNE2KPCI = "ne2k_pci";
TNLibvirtDeviceInterfaceModelPCNET = "pcnet";
TNLibvirtDeviceInterfaceModelRTL8139 = "rtl8139";
TNLibvirtDeviceInterfaceModelE1000 = "e1000";
TNLibvirtDeviceInterfaceModelVIRTIO = "virtio";
TNLibvirtDeviceInterfaceModels = [ TNLibvirtDeviceInterfaceModelNE2KISA,
                                            TNLibvirtDeviceInterfaceModelI82551,
                                            TNLibvirtDeviceInterfaceModelI82557b,
                                            TNLibvirtDeviceInterfaceModelI82559ER,
                                            TNLibvirtDeviceInterfaceModelNE2KPCI,
                                            TNLibvirtDeviceInterfaceModelPCNET,
                                            TNLibvirtDeviceInterfaceModelRTL8139,
                                            TNLibvirtDeviceInterfaceModelE1000,
                                            TNLibvirtDeviceInterfaceModelVIRTIO];
TNLibvirtDeviceInterfaceTypeNetwork = "network";
TNLibvirtDeviceInterfaceTypeNuage = "nuage";
TNLibvirtDeviceInterfaceTypeBridge = "bridge";
TNLibvirtDeviceInterfaceTypeUser = "user";
TNLibvirtDeviceInterfaceTypeDirect = "direct";
TNLibvirtDeviceInterfaceTypes = [ TNLibvirtDeviceInterfaceTypeNetwork,
                                            TNLibvirtDeviceInterfaceTypeBridge,
                                            TNLibvirtDeviceInterfaceTypeUser,
                                            TNLibvirtDeviceInterfaceTypeDirect,
                                            TNLibvirtDeviceInterfaceTypeNuage];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceInterface"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_MAC"), new objj_ivar("_model"), new objj_ivar("_script"), new objj_ivar("_type"), new objj_ivar("_nuageNetworkName"), new objj_ivar("_nuageNetworkInterfaceIP"), new objj_ivar("_bandwidth"), new objj_ivar("_filterref"), new objj_ivar("_source"), new objj_ivar("_target"), new objj_ivar("_virtualPort")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("MAC"), function $TNLibvirtDeviceInterface__MAC(self, _cmd)
{
return self._MAC;
}
,["CPString"]), new objj_method(sel_getUid("setMAC:"), function $TNLibvirtDeviceInterface__setMAC_(self, _cmd, newValue)
{
self._MAC = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("model"), function $TNLibvirtDeviceInterface__model(self, _cmd)
{
return self._model;
}
,["CPString"]), new objj_method(sel_getUid("setModel:"), function $TNLibvirtDeviceInterface__setModel_(self, _cmd, newValue)
{
self._model = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("script"), function $TNLibvirtDeviceInterface__script(self, _cmd)
{
return self._script;
}
,["CPString"]), new objj_method(sel_getUid("setScript:"), function $TNLibvirtDeviceInterface__setScript_(self, _cmd, newValue)
{
self._script = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("type"), function $TNLibvirtDeviceInterface__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceInterface__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("nuageNetworkName"), function $TNLibvirtDeviceInterface__nuageNetworkName(self, _cmd)
{
return self._nuageNetworkName;
}
,["CPString"]), new objj_method(sel_getUid("setNuageNetworkName:"), function $TNLibvirtDeviceInterface__setNuageNetworkName_(self, _cmd, newValue)
{
self._nuageNetworkName = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("nuageNetworkInterfaceIP"), function $TNLibvirtDeviceInterface__nuageNetworkInterfaceIP(self, _cmd)
{
return self._nuageNetworkInterfaceIP;
}
,["CPString"]), new objj_method(sel_getUid("setNuageNetworkInterfaceIP:"), function $TNLibvirtDeviceInterface__setNuageNetworkInterfaceIP_(self, _cmd, newValue)
{
self._nuageNetworkInterfaceIP = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("bandwidth"), function $TNLibvirtDeviceInterface__bandwidth(self, _cmd)
{
return self._bandwidth;
}
,["TNLibvirtDeviceInterfaceBandwidth"]), new objj_method(sel_getUid("setBandwidth:"), function $TNLibvirtDeviceInterface__setBandwidth_(self, _cmd, newValue)
{
self._bandwidth = newValue;
}
,["void","TNLibvirtDeviceInterfaceBandwidth"]), new objj_method(sel_getUid("filterref"), function $TNLibvirtDeviceInterface__filterref(self, _cmd)
{
return self._filterref;
}
,["TNLibvirtDeviceInterfaceFilterRef"]), new objj_method(sel_getUid("setFilterref:"), function $TNLibvirtDeviceInterface__setFilterref_(self, _cmd, newValue)
{
self._filterref = newValue;
}
,["void","TNLibvirtDeviceInterfaceFilterRef"]), new objj_method(sel_getUid("source"), function $TNLibvirtDeviceInterface__source(self, _cmd)
{
return self._source;
}
,["TNLibvirtDeviceInterfaceSource"]), new objj_method(sel_getUid("setSource:"), function $TNLibvirtDeviceInterface__setSource_(self, _cmd, newValue)
{
self._source = newValue;
}
,["void","TNLibvirtDeviceInterfaceSource"]), new objj_method(sel_getUid("target"), function $TNLibvirtDeviceInterface__target(self, _cmd)
{
return self._target;
}
,["TNLibvirtDeviceInterfaceTarget"]), new objj_method(sel_getUid("setTarget:"), function $TNLibvirtDeviceInterface__setTarget_(self, _cmd, newValue)
{
self._target = newValue;
}
,["void","TNLibvirtDeviceInterfaceTarget"]), new objj_method(sel_getUid("virtualPort"), function $TNLibvirtDeviceInterface__virtualPort(self, _cmd)
{
return self._virtualPort;
}
,["TNLibvirtDeviceInterfaceVirtualPort"]), new objj_method(sel_getUid("setVirtualPort:"), function $TNLibvirtDeviceInterface__setVirtualPort_(self, _cmd, newValue)
{
self._virtualPort = newValue;
}
,["void","TNLibvirtDeviceInterfaceVirtualPort"]), new objj_method(sel_getUid("init"), function $TNLibvirtDeviceInterface__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceInterface").super_class }, "init"))
    {
        self._filterref = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceFilterRef, "alloc"), "init");
        self._source = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceSource, "alloc"), "init");
        self._target = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceTarget, "alloc"), "init");
        self._bandwidth = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceBandwidth, "alloc"), "init");
    }
    return self
}
,["void"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceInterface__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceInterface").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "interface")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid interface");
        self._MAC = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "mac"), "valueForAttribute:", "address");
        self._model = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "model"), "valueForAttribute:", "type");
        self._script = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "script"), "valueForAttribute:", "path");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
        self._nuageNetworkName = objj_msgSend(aNode, "valueForAttribute:", "nuage_network_name");
        self._nuageNetworkInterfaceIP = objj_msgSend(aNode, "valueForAttribute:", "nuage_network_interface_ip");
        self._bandwidth = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceBandwidth, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "bandwidth"));
        self._filterref = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceFilterRef, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "filterref"));
        self._source = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceSource, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "source"));
        self._target = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceTarget, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "target"));
        if (objj_msgSend(aNode, "containsChildrenWithName:", "virtualport"))
            self._virtualPort = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceVirtualPort, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "virtualport"));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceInterface__XMLNode(self, _cmd)
{
    if (!self._type)
        objj_msgSend(CPException, "raise:reason:", "Missing interface type", "interface type is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:andAttributes:", "interface", {"type": self._type});
    if (self._MAC)
    {
        objj_msgSend(node, "addChildWithName:andAttributes:", "mac", {"address": self._MAC});
        objj_msgSend(node, "up");
    }
    if (self._script)
    {
        objj_msgSend(node, "addChildWithName:andAttributes:", "script", {"path": self._script});
        objj_msgSend(node, "up");
    }
    if (self._model)
    {
        objj_msgSend(node, "addChildWithName:andAttributes:", "model", {"type": self._model});
        objj_msgSend(node, "up");
    }
    if (self._filterref)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._filterref, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._source)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._source, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._target)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._target, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._bandwidth)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._bandwidth, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._nuageNetworkName)
    {
        objj_msgSend(node, "setValue:forAttribute:", self._nuageNetworkName, "nuage_network_name");
    }
    if (self._nuageNetworkInterfaceIP)
    {
        objj_msgSend(node, "setValue:forAttribute:", self._nuageNetworkInterfaceIP, "nuage_network_interface_ip");
    }
    if (self._virtualPort)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._virtualPort, "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;41;Model/TNLibvirtDeviceInterfaceBandwidth.jt;3264;@STATIC;1.0;i;15;TNLibvirtBase.ji;42;TNLibvirtDeviceInterfaceBandwidthInbound.ji;43;TNLibvirtDeviceInterfaceBandwidthOutbound.jt;3130;objj_executeFile("TNLibvirtBase.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceBandwidthInbound.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceBandwidthOutbound.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceInterfaceBandwidth"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_inbound"), new objj_ivar("_outbound")]);
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("inbound"), function $TNLibvirtDeviceInterfaceBandwidth__inbound(self, _cmd)
{
return self._inbound;
}
,["TNLibvirtDeviceInterfaceBandwidthInbound"]), new objj_method(sel_getUid("setInbound:"), function $TNLibvirtDeviceInterfaceBandwidth__setInbound_(self, _cmd, newValue)
{
self._inbound = newValue;
}
,["void","TNLibvirtDeviceInterfaceBandwidthInbound"]), new objj_method(sel_getUid("outbound"), function $TNLibvirtDeviceInterfaceBandwidth__outbound(self, _cmd)
{
return self._outbound;
}
,["TNLibvirtDeviceInterfaceBandwidthOutbound"]), new objj_method(sel_getUid("setOutbound:"), function $TNLibvirtDeviceInterfaceBandwidth__setOutbound_(self, _cmd, newValue)
{
self._outbound = newValue;
}
,["void","TNLibvirtDeviceInterfaceBandwidthOutbound"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceInterfaceBandwidth__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceInterfaceBandwidth").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "bandwidth")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid bandwidth");
        if (objj_msgSend(aNode, "containsChildrenWithName:", "inbound"))
            self._inbound = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceBandwidthInbound, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "inbound"));
        if (objj_msgSend(aNode, "containsChildrenWithName:", "outbound"))
            self._outbound = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceBandwidthOutbound, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "outbound"));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceInterfaceBandwidth__XMLNode(self, _cmd)
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
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultBandwidth"), function $TNLibvirtDeviceInterfaceBandwidth__defaultBandwidth(self, _cmd)
{
    var bandwidth = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceBandwidth, "alloc"), "init");
    return bandwidth;
}
,["TNLibvirtDeviceInterfaceBandwidth"])]);
}p;48;Model/TNLibvirtDeviceInterfaceBandwidthInbound.jt;3375;@STATIC;1.0;i;15;TNLibvirtBase.jt;3336;objj_executeFile("TNLibvirtBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceInterfaceBandwidthInbound"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_average"), new objj_ivar("_burst"), new objj_ivar("_peak")]);
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("average"), function $TNLibvirtDeviceInterfaceBandwidthInbound__average(self, _cmd)
{
return self._average;
}
,["CPString"]), new objj_method(sel_getUid("setAverage:"), function $TNLibvirtDeviceInterfaceBandwidthInbound__setAverage_(self, _cmd, newValue)
{
self._average = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("burst"), function $TNLibvirtDeviceInterfaceBandwidthInbound__burst(self, _cmd)
{
return self._burst;
}
,["CPString"]), new objj_method(sel_getUid("setBurst:"), function $TNLibvirtDeviceInterfaceBandwidthInbound__setBurst_(self, _cmd, newValue)
{
self._burst = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("peak"), function $TNLibvirtDeviceInterfaceBandwidthInbound__peak(self, _cmd)
{
return self._peak;
}
,["CPString"]), new objj_method(sel_getUid("setPeak:"), function $TNLibvirtDeviceInterfaceBandwidthInbound__setPeak_(self, _cmd, newValue)
{
self._peak = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceInterfaceBandwidthInbound__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceInterfaceBandwidthInbound").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "inbound")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid inbound");
        self._average = objj_msgSend(aNode, "valueForAttribute:", "average");
        self._peak = objj_msgSend(aNode, "valueForAttribute:", "peak");
        self._burst = objj_msgSend(aNode, "valueForAttribute:", "burst");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceInterfaceBandwidthInbound__XMLNode(self, _cmd)
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
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultBandwidthInboundWithAverage:peak:burst:"), function $TNLibvirtDeviceInterfaceBandwidthInbound__defaultBandwidthInboundWithAverage_peak_burst_(self, _cmd, anAverage, aPeak, aBurst)
{
    var inbound = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceBandwidthInbound, "alloc"), "init");
    objj_msgSend(inbound, "setAverage:", anAverage);
    objj_msgSend(inbound, "setPeak:", aPeak);
    objj_msgSend(inbound, "setBurst:", aBurst);
    return inbound;
}
,["TNLibvirtDeviceInterfaceBandwidthInbound","CPString","CPString","CPString"])]);
}p;49;Model/TNLibvirtDeviceInterfaceBandwidthOutbound.jt;3398;@STATIC;1.0;i;15;TNLibvirtBase.jt;3359;objj_executeFile("TNLibvirtBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceInterfaceBandwidthOutbound"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_average"), new objj_ivar("_burst"), new objj_ivar("_peak")]);
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("average"), function $TNLibvirtDeviceInterfaceBandwidthOutbound__average(self, _cmd)
{
return self._average;
}
,["CPString"]), new objj_method(sel_getUid("setAverage:"), function $TNLibvirtDeviceInterfaceBandwidthOutbound__setAverage_(self, _cmd, newValue)
{
self._average = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("burst"), function $TNLibvirtDeviceInterfaceBandwidthOutbound__burst(self, _cmd)
{
return self._burst;
}
,["CPString"]), new objj_method(sel_getUid("setBurst:"), function $TNLibvirtDeviceInterfaceBandwidthOutbound__setBurst_(self, _cmd, newValue)
{
self._burst = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("peak"), function $TNLibvirtDeviceInterfaceBandwidthOutbound__peak(self, _cmd)
{
return self._peak;
}
,["CPString"]), new objj_method(sel_getUid("setPeak:"), function $TNLibvirtDeviceInterfaceBandwidthOutbound__setPeak_(self, _cmd, newValue)
{
self._peak = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceInterfaceBandwidthOutbound__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceInterfaceBandwidthOutbound").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "outbound")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid outbound");
        self._average = objj_msgSend(aNode, "valueForAttribute:", "average");
        self._peak = objj_msgSend(aNode, "valueForAttribute:", "peak");
        self._burst = objj_msgSend(aNode, "valueForAttribute:", "burst");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceInterfaceBandwidthOutbound__XMLNode(self, _cmd)
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
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultBandwidthOutboundWithAverage:peak:burst:"), function $TNLibvirtDeviceInterfaceBandwidthOutbound__defaultBandwidthOutboundWithAverage_peak_burst_(self, _cmd, anAverage, aPeak, aBurst)
{
    var outbound = objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceBandwidthOutbound, "alloc"), "init");
    objj_msgSend(outbound, "setAverage:", anAverage);
    objj_msgSend(outbound, "setPeak:", aPeak);
    objj_msgSend(outbound, "setBurst:", aBurst);
    return outbound;
}
,["TNLibvirtDeviceInterfaceBandwidthOutbound","CPString","CPString","CPString"])]);
}p;41;Model/TNLibvirtDeviceInterfaceFilterRef.jt;3519;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;3418;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceInterfaceFilterRef"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_filter"), new objj_ivar("_parameters")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("name"), function $TNLibvirtDeviceInterfaceFilterRef__name(self, _cmd)
{
return self._filter;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNLibvirtDeviceInterfaceFilterRef__setName_(self, _cmd, newValue)
{
self._filter = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("parameters"), function $TNLibvirtDeviceInterfaceFilterRef__parameters(self, _cmd)
{
return self._parameters;
}
,["CPArray"]), new objj_method(sel_getUid("setParameters:"), function $TNLibvirtDeviceInterfaceFilterRef__setParameters_(self, _cmd, newValue)
{
self._parameters = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("init"), function $TNLibvirtDeviceInterfaceFilterRef__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceInterfaceFilterRef").super_class }, "init"))
    {
        self._parameters = objj_msgSend(CPArray, "array");
    }
    return self
}
,["void"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceInterfaceFilterRef__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceInterfaceFilterRef").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "filterref")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid filterref");
        self._filter = objj_msgSend(aNode, "valueForAttribute:", "filter");
        self._parameters = objj_msgSend(CPArray, "array");
        var paramNodes = objj_msgSend(aNode, "ownChildrenWithName:", "parameter");
        for (var i = 0; i < objj_msgSend(paramNodes, "count"); i++)
        {
            var name = objj_msgSend(objj_msgSend(paramNodes, "objectAtIndex:", i), "valueForAttribute:", "name"),
                value = objj_msgSend(objj_msgSend(paramNodes, "objectAtIndex:", i), "valueForAttribute:", "value");
            objj_msgSend(self._parameters, "addObject:", objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", name, "name", value, "value"));
        }
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceInterfaceFilterRef__XMLNode(self, _cmd)
{
    if (!self._filter)
        objj_msgSend(CPException, "raise:reason:", "Missing filter", "filter is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:andAttributes:", "filterref", {"filter": self._filter});
    for (var i = 0; i < objj_msgSend(self._parameters, "count"); i++)
    {
        objj_msgSend(node, "addChildWithName:andAttributes:", "parameter", {
            "name": objj_msgSend(objj_msgSend(self._parameters, "objectAtIndex:", i), "valueForKey:", "name"),
            "value": objj_msgSend(objj_msgSend(self._parameters, "objectAtIndex:", i), "valueForKey:", "value")
        });
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;38;Model/TNLibvirtDeviceInterfaceSource.jt;5129;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;5028;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
TNLibvirtDeviceInterfaceSourceModeVEPA = "vepa";
TNLibvirtDeviceInterfaceSourceModeBridge = "bridge";
TNLibvirtDeviceInterfaceSourceModePrivate = "private";
TNLibvirtDeviceInterfaceSourceModePassthrough = "passthrough";
TNLibvirtDeviceInterfaceSourceModes = [ TNLibvirtDeviceInterfaceSourceModeVEPA,
                                                    TNLibvirtDeviceInterfaceSourceModeBridge,
                                                    TNLibvirtDeviceInterfaceSourceModePrivate,
                                                    TNLibvirtDeviceInterfaceSourceModePassthrough];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceInterfaceSource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_address"), new objj_ivar("_bridge"), new objj_ivar("_device"), new objj_ivar("_mode"), new objj_ivar("_network"), new objj_ivar("_port")]);
       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("address"), function $TNLibvirtDeviceInterfaceSource__address(self, _cmd)
{
return self._address;
}
,["CPString"]), new objj_method(sel_getUid("setAddress:"), function $TNLibvirtDeviceInterfaceSource__setAddress_(self, _cmd, newValue)
{
self._address = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("bridge"), function $TNLibvirtDeviceInterfaceSource__bridge(self, _cmd)
{
return self._bridge;
}
,["CPString"]), new objj_method(sel_getUid("setBridge:"), function $TNLibvirtDeviceInterfaceSource__setBridge_(self, _cmd, newValue)
{
self._bridge = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("device"), function $TNLibvirtDeviceInterfaceSource__device(self, _cmd)
{
return self._device;
}
,["CPString"]), new objj_method(sel_getUid("setDevice:"), function $TNLibvirtDeviceInterfaceSource__setDevice_(self, _cmd, newValue)
{
self._device = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("mode"), function $TNLibvirtDeviceInterfaceSource__mode(self, _cmd)
{
return self._mode;
}
,["CPString"]), new objj_method(sel_getUid("setMode:"), function $TNLibvirtDeviceInterfaceSource__setMode_(self, _cmd, newValue)
{
self._mode = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("network"), function $TNLibvirtDeviceInterfaceSource__network(self, _cmd)
{
return self._network;
}
,["CPString"]), new objj_method(sel_getUid("setNetwork:"), function $TNLibvirtDeviceInterfaceSource__setNetwork_(self, _cmd, newValue)
{
self._network = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("port"), function $TNLibvirtDeviceInterfaceSource__port(self, _cmd)
{
return self._port;
}
,["CPString"]), new objj_method(sel_getUid("setPort:"), function $TNLibvirtDeviceInterfaceSource__setPort_(self, _cmd, newValue)
{
self._port = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceInterfaceSource__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceInterfaceSource").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "source")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid interface source");
        self._address = objj_msgSend(aNode, "valueForAttribute:", "address");
        self._bridge = objj_msgSend(aNode, "valueForAttribute:", "bridge");
        self._device = objj_msgSend(aNode, "valueForAttribute:", "dev");
        self._mode = objj_msgSend(aNode, "valueForAttribute:", "mode");
        self._network = objj_msgSend(aNode, "valueForAttribute:", "network");
        self._port = objj_msgSend(aNode, "valueForAttribute:", "port");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("sourceObject"), function $TNLibvirtDeviceInterfaceSource__sourceObject(self, _cmd)
{
    if (self._bridge)
        return self._bridge;
    if (self._network)
        return self._network;
    if (self._device)
        return self._device;
}
,["CPString"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceInterfaceSource__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "source");
    if (self._bridge)
        objj_msgSend(node, "setValue:forAttribute:", self._bridge, "bridge");
    if (self._device)
        objj_msgSend(node, "setValue:forAttribute:", self._device, "dev");
    if (self._network)
        objj_msgSend(node, "setValue:forAttribute:", self._network, "network");
    if (self._mode)
        objj_msgSend(node, "setValue:forAttribute:", self._mode, "mode");
    if (self._address)
        objj_msgSend(node, "setValue:forAttribute:", self._address, "address");
    if (self._port)
        objj_msgSend(node, "setValue:forAttribute:", self._port, "port");
    return node;
}
,["TNXMLNode"])]);
}p;38;Model/TNLibvirtDeviceInterfaceTarget.jt;1676;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;1575;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceInterfaceTarget"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_dev")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("dev"), function $TNLibvirtDeviceInterfaceTarget__dev(self, _cmd)
{
return self._dev;
}
,["CPString"]), new objj_method(sel_getUid("setDev:"), function $TNLibvirtDeviceInterfaceTarget__setDev_(self, _cmd, newValue)
{
self._dev = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceInterfaceTarget__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceInterfaceTarget").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "target")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid interface target");
        self._dev = objj_msgSend(aNode, "valueForAttribute:", "dev");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceInterfaceTarget__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "target");
    if (self._dev)
        objj_msgSend(node, "setValue:forAttribute:", self._dev, "dev");
    return node;
}
,["TNXMLNode"])]);
}p;43;Model/TNLibvirtDeviceInterfaceVirtualPort.jt;3273;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.ji;47;TNLibvirtDeviceInterfaceVirtualPortParameters.jt;3120;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
objj_executeFile("TNLibvirtDeviceInterfaceVirtualPortParameters.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceInterfaceVirtualPort"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_type"), new objj_ivar("_parameters")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("type"), function $TNLibvirtDeviceInterfaceVirtualPort__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceInterfaceVirtualPort__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("parameters"), function $TNLibvirtDeviceInterfaceVirtualPort__parameters(self, _cmd)
{
return self._parameters;
}
,["CPArray"]), new objj_method(sel_getUid("setParameters:"), function $TNLibvirtDeviceInterfaceVirtualPort__setParameters_(self, _cmd, newValue)
{
self._parameters = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("init"), function $TNLibvirtDeviceInterfaceVirtualPort__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceInterfaceVirtualPort").super_class }, "init"))
    {
        self._parameters = objj_msgSend(CPArray, "array");
    }
    return self;
}
,["TNLibvirtDeviceInterfaceVirtualPort"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceInterfaceVirtualPort__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceInterfaceVirtualPort").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "virtualport")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid interface virtualport");
        self._parameters = objj_msgSend(CPArray, "array");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
        var parametersNodes = objj_msgSend(aNode, "ownChildrenWithName:", "parameters");
        for (var i = 0; i < objj_msgSend(parametersNodes, "count"); i++)
            objj_msgSend(self._parameters, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceInterfaceVirtualPortParameters, "alloc"), "initWithXMLNode:", objj_msgSend(parametersNodes, "objectAtIndex:", i)));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceInterfaceVirtualPort__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "virtualport");
    if (self._type)
        objj_msgSend(node, "setValue:forAttribute:", self._type, "type");
    for (var i = 0; i < objj_msgSend(self._parameters, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._parameters, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;53;Model/TNLibvirtDeviceInterfaceVirtualPortParameters.jt;2453;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;2352;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceInterfaceVirtualPortParameters"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_profileID"), new objj_ivar("_interfaceID")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("profileID"), function $TNLibvirtDeviceInterfaceVirtualPortParameters__profileID(self, _cmd)
{
return self._profileID;
}
,["CPString"]), new objj_method(sel_getUid("setProfileID:"), function $TNLibvirtDeviceInterfaceVirtualPortParameters__setProfileID_(self, _cmd, newValue)
{
self._profileID = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("interfaceID"), function $TNLibvirtDeviceInterfaceVirtualPortParameters__interfaceID(self, _cmd)
{
return self._interfaceID;
}
,["CPString"]), new objj_method(sel_getUid("setInterfaceID:"), function $TNLibvirtDeviceInterfaceVirtualPortParameters__setInterfaceID_(self, _cmd, newValue)
{
self._interfaceID = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceInterfaceVirtualPortParameters__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceInterfaceVirtualPortParameters").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "parameters")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid virtualport parameters");
        self._profileID = objj_msgSend(aNode, "valueForAttribute:", "profileid");
        self._interfaceID = objj_msgSend(aNode, "valueForAttribute:", "interfaceid");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceInterfaceVirtualPortParameters__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "parameters");
    if (self._profileID)
        objj_msgSend(node, "setValue:forAttribute:", self._profileID, "profileid");
    if (self._interfaceID)
        objj_msgSend(node, "setValue:forAttribute:", self._interfaceID, "interfaceid");
    return node;
}
,["TNXMLNode"])]);
}p;24;Model/TNLibvirtDevices.jt;12553;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.ji;26;TNLibvirtDeviceCharacter.ji;21;TNLibvirtDeviceDisk.ji;27;TNLibvirtDeviceFilesystem.ji;24;TNLibvirtDeviceGraphic.ji;24;TNLibvirtDeviceHostDev.ji;22;TNLibvirtDeviceInput.ji;26;TNLibvirtDeviceInterface.ji;27;TNLibvirtDeviceController.ji;22;TNLibvirtDeviceVideo.jt;12187;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
objj_executeFile("TNLibvirtDeviceCharacter.j", YES);
objj_executeFile("TNLibvirtDeviceDisk.j", YES);
objj_executeFile("TNLibvirtDeviceFilesystem.j", YES);
objj_executeFile("TNLibvirtDeviceGraphic.j", YES);
objj_executeFile("TNLibvirtDeviceHostDev.j", YES);
objj_executeFile("TNLibvirtDeviceInput.j", YES);
objj_executeFile("TNLibvirtDeviceInterface.j", YES);
objj_executeFile("TNLibvirtDeviceController.j", YES);
objj_executeFile("TNLibvirtDeviceVideo.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDevices"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_characters"), new objj_ivar("_disks"), new objj_ivar("_filesystems"), new objj_ivar("_graphics"), new objj_ivar("_hostdevs"), new objj_ivar("_inputs"), new objj_ivar("_interfaces"), new objj_ivar("_controllers"), new objj_ivar("_emulator"), new objj_ivar("_video")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("characters"), function $TNLibvirtDevices__characters(self, _cmd)
{
return self._characters;
}
,["CPArray"]), new objj_method(sel_getUid("setCharacters:"), function $TNLibvirtDevices__setCharacters_(self, _cmd, newValue)
{
self._characters = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("disks"), function $TNLibvirtDevices__disks(self, _cmd)
{
return self._disks;
}
,["CPArray"]), new objj_method(sel_getUid("setDisks:"), function $TNLibvirtDevices__setDisks_(self, _cmd, newValue)
{
self._disks = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("filesystems"), function $TNLibvirtDevices__filesystems(self, _cmd)
{
return self._filesystems;
}
,["CPArray"]), new objj_method(sel_getUid("setFilesystems:"), function $TNLibvirtDevices__setFilesystems_(self, _cmd, newValue)
{
self._filesystems = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("graphics"), function $TNLibvirtDevices__graphics(self, _cmd)
{
return self._graphics;
}
,["CPArray"]), new objj_method(sel_getUid("setGraphics:"), function $TNLibvirtDevices__setGraphics_(self, _cmd, newValue)
{
self._graphics = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("hostdevs"), function $TNLibvirtDevices__hostdevs(self, _cmd)
{
return self._hostdevs;
}
,["CPArray"]), new objj_method(sel_getUid("setHostdevs:"), function $TNLibvirtDevices__setHostdevs_(self, _cmd, newValue)
{
self._hostdevs = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("inputs"), function $TNLibvirtDevices__inputs(self, _cmd)
{
return self._inputs;
}
,["CPArray"]), new objj_method(sel_getUid("setInputs:"), function $TNLibvirtDevices__setInputs_(self, _cmd, newValue)
{
self._inputs = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("interfaces"), function $TNLibvirtDevices__interfaces(self, _cmd)
{
return self._interfaces;
}
,["CPArray"]), new objj_method(sel_getUid("setInterfaces:"), function $TNLibvirtDevices__setInterfaces_(self, _cmd, newValue)
{
self._interfaces = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("controllers"), function $TNLibvirtDevices__controllers(self, _cmd)
{
return self._controllers;
}
,["CPArray"]), new objj_method(sel_getUid("setControllers:"), function $TNLibvirtDevices__setControllers_(self, _cmd, newValue)
{
self._controllers = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("emulator"), function $TNLibvirtDevices__emulator(self, _cmd)
{
return self._emulator;
}
,["CPString"]), new objj_method(sel_getUid("setEmulator:"), function $TNLibvirtDevices__setEmulator_(self, _cmd, newValue)
{
self._emulator = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("video"), function $TNLibvirtDevices__video(self, _cmd)
{
return self._video;
}
,["TNLibvirtDeviceVideo"]), new objj_method(sel_getUid("setVideo:"), function $TNLibvirtDevices__setVideo_(self, _cmd, newValue)
{
self._video = newValue;
}
,["void","TNLibvirtDeviceVideo"]), new objj_method(sel_getUid("init"), function $TNLibvirtDevices__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDevices").super_class }, "init"))
    {
        self._characters = objj_msgSend(CPArray, "array");
        self._disks = objj_msgSend(CPArray, "array");
        self._filesystems = objj_msgSend(CPArray, "array");
        self._graphics = objj_msgSend(CPArray, "array");
        self._hostdevs = objj_msgSend(CPArray, "array");
        self._inputs = objj_msgSend(CPArray, "array");
        self._interfaces = objj_msgSend(CPArray, "array");
        self._controllers = objj_msgSend(CPArray, "array");
    }
    return self;
}
,["TNLibvirtDevices"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDevices__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDevices").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "devices")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid devices");
        self._emulator = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "emulator"), "text");
        self._characters = objj_msgSend(CPArray, "array");
        self._disks = objj_msgSend(CPArray, "array");
        self._filesystems = objj_msgSend(CPArray, "array");
        self._graphics = objj_msgSend(CPArray, "array");
        self._hostdevs = objj_msgSend(CPArray, "array");
        self._inputs = objj_msgSend(CPArray, "array");
        self._interfaces = objj_msgSend(CPArray, "array");
        self._controllers = objj_msgSend(CPArray, "array");
        var diskNodes = objj_msgSend(aNode, "ownChildrenWithName:", "disk");
        for (var i = 0; i < objj_msgSend(diskNodes, "count"); i++)
            objj_msgSend(self._disks, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceDisk, "alloc"), "initWithXMLNode:", objj_msgSend(diskNodes, "objectAtIndex:", i)));
        var interfaceNodes = objj_msgSend(aNode, "ownChildrenWithName:", "interface");
        for (var i = 0; i < objj_msgSend(interfaceNodes, "count"); i++)
            objj_msgSend(self._interfaces, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceInterface, "alloc"), "initWithXMLNode:", objj_msgSend(interfaceNodes, "objectAtIndex:", i)));
        var graphicNodes = objj_msgSend(aNode, "ownChildrenWithName:", "graphics");
        for (var i = 0; i < objj_msgSend(graphicNodes, "count"); i++)
            objj_msgSend(self._graphics, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceGraphic, "alloc"), "initWithXMLNode:", objj_msgSend(graphicNodes, "objectAtIndex:", i)));
        var inputNodes = objj_msgSend(aNode, "ownChildrenWithName:", "input");
        for (var i = 0; i < objj_msgSend(inputNodes, "count"); i++)
            objj_msgSend(self._inputs, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceInput, "alloc"), "initWithXMLNode:", objj_msgSend(inputNodes, "objectAtIndex:", i)));
        var consoleNodes = objj_msgSend(aNode, "ownChildrenWithName:", "console");
        for (var i = 0; i < objj_msgSend(consoleNodes, "count"); i++)
            objj_msgSend(self._characters, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceCharacter, "alloc"), "initWithXMLNode:", objj_msgSend(consoleNodes, "objectAtIndex:", i)));
        var serialNodes = objj_msgSend(aNode, "ownChildrenWithName:", "serial");
        for (var i = 0; i < objj_msgSend(serialNodes, "count"); i++)
            objj_msgSend(self._characters, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceCharacter, "alloc"), "initWithXMLNode:", objj_msgSend(serialNodes, "objectAtIndex:", i)));
        var channelNodes = objj_msgSend(aNode, "ownChildrenWithName:", "channel");
        for (var i = 0; i < objj_msgSend(channelNodes, "count"); i++)
            objj_msgSend(self._characters, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceCharacter, "alloc"), "initWithXMLNode:", objj_msgSend(channelNodes, "objectAtIndex:", i)));
        var parallelNodes = objj_msgSend(aNode, "ownChildrenWithName:", "parallel");
        for (var i = 0; i < objj_msgSend(parallelNodes, "count"); i++)
            objj_msgSend(self._characters, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceCharacter, "alloc"), "initWithXMLNode:", objj_msgSend(parallelNodes, "objectAtIndex:", i)));
        var hostdevNodes = objj_msgSend(aNode, "ownChildrenWithName:", "hostdev");
        for (var i = 0; i < objj_msgSend(hostdevNodes, "count"); i++)
            objj_msgSend(self._hostdevs, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceHostDev, "alloc"), "initWithXMLNode:", objj_msgSend(hostdevNodes, "objectAtIndex:", i)));
        var filesystemNodes = objj_msgSend(aNode, "ownChildrenWithName:", "filesystem");
        for (var i = 0; i < objj_msgSend(filesystemNodes, "count"); i++)
            objj_msgSend(self._filesystems, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceFilesystem, "alloc"), "initWithXMLNode:", objj_msgSend(filesystemNodes, "objectAtIndex:", i)));
        var controllerNodes = objj_msgSend(aNode, "ownChildrenWithName:", "controller");
        for (var i = 0; i < objj_msgSend(controllerNodes, "count"); i++)
            objj_msgSend(self._controllers, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDeviceController, "alloc"), "initWithXMLNode:", objj_msgSend(controllerNodes, "objectAtIndex:", i)));
        if (objj_msgSend(aNode, "firstChildWithName:", "video"))
            self._video = objj_msgSend(objj_msgSend(TNLibvirtDeviceVideo, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "video"));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDevices__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "devices");
    if (self._emulator)
    {
        objj_msgSend(node, "addChildWithName:", "emulator");
        objj_msgSend(node, "addTextNode:", self._emulator);
        objj_msgSend(node, "up");
    }
    for (var i = 0; i < objj_msgSend(self._disks, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._disks, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    for (var i = 0; i < objj_msgSend(self._interfaces, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._interfaces, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    for (var i = 0; i < objj_msgSend(self._graphics, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._graphics, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    for (var i = 0; i < objj_msgSend(self._inputs, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._inputs, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    for (var i = 0; i < objj_msgSend(self._characters, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._characters, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    for (var i = 0; i < objj_msgSend(self._hostdevs, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._hostdevs, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    for (var i = 0; i < objj_msgSend(self._filesystems, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._filesystems, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    for (var i = 0; i < objj_msgSend(self._controllers, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._controllers, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._video)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._video, "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;28;Model/TNLibvirtDeviceVideo.jt;2783;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.ji;27;TNLibvirtDeviceVideoModel.ji;29;TNLibvirtDeviceVideoAddress.jt;2616;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
objj_executeFile("TNLibvirtDeviceVideoModel.j", YES);
objj_executeFile("TNLibvirtDeviceVideoAddress.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceVideo"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_address"), new objj_ivar("_model")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("address"), function $TNLibvirtDeviceVideo__address(self, _cmd)
{
return self._address;
}
,["TNLibvirtDeviceVideoAddress"]), new objj_method(sel_getUid("setAddress:"), function $TNLibvirtDeviceVideo__setAddress_(self, _cmd, newValue)
{
self._address = newValue;
}
,["void","TNLibvirtDeviceVideoAddress"]), new objj_method(sel_getUid("model"), function $TNLibvirtDeviceVideo__model(self, _cmd)
{
return self._model;
}
,["TNLibvirtDeviceVideoModel"]), new objj_method(sel_getUid("setModel:"), function $TNLibvirtDeviceVideo__setModel_(self, _cmd, newValue)
{
self._model = newValue;
}
,["void","TNLibvirtDeviceVideoModel"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceVideo__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceVideo").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "video")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid video");
        if (objj_msgSend(aNode, "firstChildWithName:", "model"))
            self._model = objj_msgSend(objj_msgSend(TNLibvirtDeviceVideoModel, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "model"));
        if (objj_msgSend(aNode, "firstChildWithName:", "address"))
            self._address = objj_msgSend(objj_msgSend(TNLibvirtDeviceVideoAddress, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "address"));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceVideo__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "video");
    if (self._model)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._model, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._address)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._address, "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;35;Model/TNLibvirtDeviceVideoAddress.jt;3637;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;3536;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceVideoAddress"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_bus"), new objj_ivar("_domain"), new objj_ivar("_function"), new objj_ivar("_slot"), new objj_ivar("_type")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("bus"), function $TNLibvirtDeviceVideoAddress__bus(self, _cmd)
{
return self._bus;
}
,["CPString"]), new objj_method(sel_getUid("setBus:"), function $TNLibvirtDeviceVideoAddress__setBus_(self, _cmd, newValue)
{
self._bus = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("domain"), function $TNLibvirtDeviceVideoAddress__domain(self, _cmd)
{
return self._domain;
}
,["CPString"]), new objj_method(sel_getUid("setDomain:"), function $TNLibvirtDeviceVideoAddress__setDomain_(self, _cmd, newValue)
{
self._domain = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("func"), function $TNLibvirtDeviceVideoAddress__func(self, _cmd)
{
return self._function;
}
,["CPString"]), new objj_method(sel_getUid("setFunc:"), function $TNLibvirtDeviceVideoAddress__setFunc_(self, _cmd, newValue)
{
self._function = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("slot"), function $TNLibvirtDeviceVideoAddress__slot(self, _cmd)
{
return self._slot;
}
,["CPString"]), new objj_method(sel_getUid("setSlot:"), function $TNLibvirtDeviceVideoAddress__setSlot_(self, _cmd, newValue)
{
self._slot = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("type"), function $TNLibvirtDeviceVideoAddress__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceVideoAddress__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceVideoAddress__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceVideoAddress").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "address")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid video address");
        self._bus = objj_msgSend(aNode, "valueForAttribute:", "bus");
        self._domain = objj_msgSend(aNode, "valueForAttribute:", "domain");
        self._function = objj_msgSend(aNode, "valueForAttribute:", "function");
        self._slot = objj_msgSend(aNode, "valueForAttribute:", "slot");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceVideoAddress__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "address");
    if (self._bus)
        objj_msgSend(node, "setValue:forAttribute:", self._bus, "bus");
    if (self._domain)
        objj_msgSend(node, "setValue:forAttribute:", self._domain, "domain");
    if (self._function)
        objj_msgSend(node, "setValue:forAttribute:", self._function, "function");
    if (self._slot)
        objj_msgSend(node, "setValue:forAttribute:", self._slot, "slot");
    if (self._type)
        objj_msgSend(node, "setValue:forAttribute:", self._type, "type");
    return node;
}
,["TNXMLNode"])]);
}p;33;Model/TNLibvirtDeviceVideoModel.jt;3746;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;3645;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
TNLibvirtDeviceVideoModelVGA = "vga";
TNLibvirtDeviceVideoModelCIRRUS = "cirrus";
TNLibvirtDeviceVideoModelVMVGA = "vmvga";
TNLibvirtDeviceVideoModelXEN = "xen";
TNLibvirtDeviceVideoModelVBOX = "vbox";
TNLibvirtDeviceVideoModelQXL = "qxl";
TNLibvirtDeviceVideoModels = [ TNLibvirtDeviceVideoModelVGA,
                                        TNLibvirtDeviceVideoModelCIRRUS,
                                        TNLibvirtDeviceVideoModelVMVGA,
                                        TNLibvirtDeviceVideoModelXEN,
                                        TNLibvirtDeviceVideoModelVBOX,
                                        TNLibvirtDeviceVideoModelQXL];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDeviceVideoModel"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_heads"), new objj_ivar("_type"), new objj_ivar("_vram")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("heads"), function $TNLibvirtDeviceVideoModel__heads(self, _cmd)
{
return self._heads;
}
,["CPString"]), new objj_method(sel_getUid("setHeads:"), function $TNLibvirtDeviceVideoModel__setHeads_(self, _cmd, newValue)
{
self._heads = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("type"), function $TNLibvirtDeviceVideoModel__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDeviceVideoModel__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("vram"), function $TNLibvirtDeviceVideoModel__vram(self, _cmd)
{
return self._vram;
}
,["CPString"]), new objj_method(sel_getUid("setVram:"), function $TNLibvirtDeviceVideoModel__setVram_(self, _cmd, newValue)
{
self._vram = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("init"), function $TNLibvirtDeviceVideoModel__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceVideoModel").super_class }, "init"))
    {
        self._type = TNLibvirtDeviceVideoModelCIRRUS;
        self._vram = "9216";
        self._heads = "1";
    }
    return self;
}
,["TNLibvirtDeviceVideoModel"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDeviceVideoModel__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDeviceVideoModel").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "model")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid video model");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
        self._vram = objj_msgSend(aNode, "valueForAttribute:", "vram");
        self._heads = objj_msgSend(aNode, "valueForAttribute:", "heads");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDeviceVideoModel__XMLNode(self, _cmd)
{
    if (!self._type)
        objj_msgSend(CPException, "raise:reason:", "Missing video model type", "video model type is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:andAttributes:", "model", {"type": self._type});
    if (self._vram)
        objj_msgSend(node, "setValue:forAttribute:", self._vram, "vram");
    if (self._heads)
        objj_msgSend(node, "setValue:forAttribute:", self._heads, "heads");
    return node;
}
,["TNXMLNode"])]);
}p;23;Model/TNLibvirtDomain.jt;17762;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.ji;18;TNLibvirtDevices.ji;28;TNLibvirtDomainBlockIOTune.ji;25;TNLibvirtDomainFeatures.ji;22;TNLibvirtDomainClock.ji;30;TNLibvirtDomainMemoryBacking.ji;27;TNLibvirtDomainMemoryTune.ji;19;TNLibvirtDomainOS.ji;32;TNLibvirtDomainQEMUCommandLine.ji;25;TNLibvirtDomainMetadata.jt;17389;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
objj_executeFile("TNLibvirtDevices.j", YES);
objj_executeFile("TNLibvirtDomainBlockIOTune.j", YES);
objj_executeFile("TNLibvirtDomainFeatures.j", YES);
objj_executeFile("TNLibvirtDomainClock.j", YES);
objj_executeFile("TNLibvirtDomainMemoryBacking.j", YES);
objj_executeFile("TNLibvirtDomainMemoryTune.j", YES);
objj_executeFile("TNLibvirtDomainOS.j", YES);
objj_executeFile("TNLibvirtDomainQEMUCommandLine.j", YES);
objj_executeFile("TNLibvirtDomainMetadata.j", YES);
TNLibvirtDomainTypeKVM = "kvm";
TNLibvirtDomainTypeXen = "xen";
TNLibvirtDomainTypeOpenVZ = "openvz";
TNLibvirtDomainTypeQemu = "qemu";
TNLibvirtDomainTypeKQemu = "kqemu";
TNLibvirtDomainTypeLXC = "lxc";
TNLibvirtDomainTypeUML = "uml";
TNLibvirtDomainTypeVBox = "vbox";
TNLibvirtDomainTypeVMWare = "vmware";
TNLibvirtDomainTypeOpenNebula = "one";
TNLibvirtDomainLifeCycleDestroy = "destroy";
TNLibvirtDomainLifeCycleRestart = "restart";
TNLibvirtDomainLifeCyclePreserve = "preserve";
TNLibvirtDomainLifeCycleRenameRestart = "rename-restart";
TNLibvirtDomainLifeCycles = [ TNLibvirtDomainLifeCycleDestroy,
                                                TNLibvirtDomainLifeCycleRestart,
                                                TNLibvirtDomainLifeCyclePreserve,
                                                TNLibvirtDomainLifeCycleRenameRestart];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDomain"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_bootloader"), new objj_ivar("_bootloaderArgs"), new objj_ivar("_description"), new objj_ivar("_type"), new objj_ivar("_name"), new objj_ivar("_onCrash"), new objj_ivar("_onPowerOff"), new objj_ivar("_onReboot"), new objj_ivar("_UUID"), new objj_ivar("_currentMemory"), new objj_ivar("_memory"), new objj_ivar("_vcpu"), new objj_ivar("_commandLine"), new objj_ivar("_devices"), new objj_ivar("_blkiotune"), new objj_ivar("_clock"), new objj_ivar("_features"), new objj_ivar("_memoryBacking"), new objj_ivar("_memoryTuning"), new objj_ivar("_OS"), new objj_ivar("_metadata")]);
       
       


       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("bootloader"), function $TNLibvirtDomain__bootloader(self, _cmd)
{
return self._bootloader;
}
,["CPString"]), new objj_method(sel_getUid("setBootloader:"), function $TNLibvirtDomain__setBootloader_(self, _cmd, newValue)
{
self._bootloader = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("bootloaderArgs"), function $TNLibvirtDomain__bootloaderArgs(self, _cmd)
{
return self._bootloaderArgs;
}
,["CPString"]), new objj_method(sel_getUid("setBootloaderArgs:"), function $TNLibvirtDomain__setBootloaderArgs_(self, _cmd, newValue)
{
self._bootloaderArgs = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("description"), function $TNLibvirtDomain__description(self, _cmd)
{
return self._description;
}
,["CPString"]), new objj_method(sel_getUid("setDescription:"), function $TNLibvirtDomain__setDescription_(self, _cmd, newValue)
{
self._description = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("type"), function $TNLibvirtDomain__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDomain__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("name"), function $TNLibvirtDomain__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNLibvirtDomain__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("onCrash"), function $TNLibvirtDomain__onCrash(self, _cmd)
{
return self._onCrash;
}
,["CPString"]), new objj_method(sel_getUid("setOnCrash:"), function $TNLibvirtDomain__setOnCrash_(self, _cmd, newValue)
{
self._onCrash = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("onPowerOff"), function $TNLibvirtDomain__onPowerOff(self, _cmd)
{
return self._onPowerOff;
}
,["CPString"]), new objj_method(sel_getUid("setOnPowerOff:"), function $TNLibvirtDomain__setOnPowerOff_(self, _cmd, newValue)
{
self._onPowerOff = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("onReboot"), function $TNLibvirtDomain__onReboot(self, _cmd)
{
return self._onReboot;
}
,["CPString"]), new objj_method(sel_getUid("setOnReboot:"), function $TNLibvirtDomain__setOnReboot_(self, _cmd, newValue)
{
self._onReboot = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("UUID"), function $TNLibvirtDomain__UUID(self, _cmd)
{
return self._UUID;
}
,["CPString"]), new objj_method(sel_getUid("setUUID:"), function $TNLibvirtDomain__setUUID_(self, _cmd, newValue)
{
self._UUID = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("currentMemory"), function $TNLibvirtDomain__currentMemory(self, _cmd)
{
return self._currentMemory;
}
,["CPString"]), new objj_method(sel_getUid("setCurrentMemory:"), function $TNLibvirtDomain__setCurrentMemory_(self, _cmd, newValue)
{
self._currentMemory = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("memory"), function $TNLibvirtDomain__memory(self, _cmd)
{
return self._memory;
}
,["CPString"]), new objj_method(sel_getUid("setMemory:"), function $TNLibvirtDomain__setMemory_(self, _cmd, newValue)
{
self._memory = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("VCPU"), function $TNLibvirtDomain__VCPU(self, _cmd)
{
return self._vcpu;
}
,["CPString"]), new objj_method(sel_getUid("setVCPU:"), function $TNLibvirtDomain__setVCPU_(self, _cmd, newValue)
{
self._vcpu = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("commandLine"), function $TNLibvirtDomain__commandLine(self, _cmd)
{
return self._commandLine;
}
,["CPArray"]), new objj_method(sel_getUid("setCommandLine:"), function $TNLibvirtDomain__setCommandLine_(self, _cmd, newValue)
{
self._commandLine = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("devices"), function $TNLibvirtDomain__devices(self, _cmd)
{
return self._devices;
}
,["TNLibvirtDevices"]), new objj_method(sel_getUid("setDevices:"), function $TNLibvirtDomain__setDevices_(self, _cmd, newValue)
{
self._devices = newValue;
}
,["void","TNLibvirtDevices"]), new objj_method(sel_getUid("blkiotune"), function $TNLibvirtDomain__blkiotune(self, _cmd)
{
return self._blkiotune;
}
,["TNLibvirtDomainBlockIOTune"]), new objj_method(sel_getUid("setBlkiotune:"), function $TNLibvirtDomain__setBlkiotune_(self, _cmd, newValue)
{
self._blkiotune = newValue;
}
,["void","TNLibvirtDomainBlockIOTune"]), new objj_method(sel_getUid("clock"), function $TNLibvirtDomain__clock(self, _cmd)
{
return self._clock;
}
,["TNLibvirtDomainClock"]), new objj_method(sel_getUid("setClock:"), function $TNLibvirtDomain__setClock_(self, _cmd, newValue)
{
self._clock = newValue;
}
,["void","TNLibvirtDomainClock"]), new objj_method(sel_getUid("features"), function $TNLibvirtDomain__features(self, _cmd)
{
return self._features;
}
,["TNLibvirtDomainFeatures"]), new objj_method(sel_getUid("setFeatures:"), function $TNLibvirtDomain__setFeatures_(self, _cmd, newValue)
{
self._features = newValue;
}
,["void","TNLibvirtDomainFeatures"]), new objj_method(sel_getUid("memoryBacking"), function $TNLibvirtDomain__memoryBacking(self, _cmd)
{
return self._memoryBacking;
}
,["TNLibvirtDomainMemoryBacking"]), new objj_method(sel_getUid("setMemoryBacking:"), function $TNLibvirtDomain__setMemoryBacking_(self, _cmd, newValue)
{
self._memoryBacking = newValue;
}
,["void","TNLibvirtDomainMemoryBacking"]), new objj_method(sel_getUid("memoryTuning"), function $TNLibvirtDomain__memoryTuning(self, _cmd)
{
return self._memoryTuning;
}
,["TNLibvirtDomainMemoryTune"]), new objj_method(sel_getUid("setMemoryTuning:"), function $TNLibvirtDomain__setMemoryTuning_(self, _cmd, newValue)
{
self._memoryTuning = newValue;
}
,["void","TNLibvirtDomainMemoryTune"]), new objj_method(sel_getUid("OS"), function $TNLibvirtDomain__OS(self, _cmd)
{
return self._OS;
}
,["TNLibvirtDomainOS"]), new objj_method(sel_getUid("setOS:"), function $TNLibvirtDomain__setOS_(self, _cmd, newValue)
{
self._OS = newValue;
}
,["void","TNLibvirtDomainOS"]), new objj_method(sel_getUid("metadata"), function $TNLibvirtDomain__metadata(self, _cmd)
{
return self._metadata;
}
,["TNLibvirtDomainMetadata"]), new objj_method(sel_getUid("setMetadata:"), function $TNLibvirtDomain__setMetadata_(self, _cmd, newValue)
{
self._metadata = newValue;
}
,["void","TNLibvirtDomainMetadata"]), new objj_method(sel_getUid("init"), function $TNLibvirtDomain__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomain").super_class }, "init"))
    {
        self._devices = objj_msgSend(objj_msgSend(TNLibvirtDevices, "alloc"), "init");
        self._blkiotune = objj_msgSend(objj_msgSend(TNLibvirtDomainBlockIOTune, "alloc"), "init");
        self._features = objj_msgSend(objj_msgSend(TNLibvirtDomainFeatures, "alloc"), "init");
        self._clock = objj_msgSend(objj_msgSend(TNLibvirtDomainClock, "alloc"), "init");
        self._memoryBacking = objj_msgSend(objj_msgSend(TNLibvirtDomainMemoryBacking, "alloc"), "init");
        self._memoryTuning = objj_msgSend(objj_msgSend(TNLibvirtDomainMemoryTune, "alloc"), "init");
        self._OS = objj_msgSend(objj_msgSend(TNLibvirtDomainOS, "alloc"), "init");
    }
    return self;
}
,["TNLibvirtDomain"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDomain__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomain").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "domain")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid domain");
        self._bootloader = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "bootloader"), "text");
        self._bootloaderArgs = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "bootloaderArgs"), "text");
        self._currentMemory = objj_msgSend(objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "currentMemory"), "text"), "intValue");
        self._description = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "description"), "text");
        self._type = objj_msgSend(aNode, "valueForAttribute:", "type");
        self._memory = objj_msgSend(objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "memory"), "text"), "intValue");
        self._name = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "name"), "text");
        self._onCrash = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "on_crash"), "text");
        self._onPowerOff = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "on_poweroff"), "text");
        self._onReboot = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "on_reboot"), "text");
        self._UUID = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "uuid"), "text");
        self._vcpu = objj_msgSend(objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "vcpu"), "text"), "intValue");
        self._blkiotune = objj_msgSend(objj_msgSend(TNLibvirtDomainBlockIOTune, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "blkiotune"));
        self._clock = objj_msgSend(objj_msgSend(TNLibvirtDomainClock, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "clock"));
        self._devices = objj_msgSend(objj_msgSend(TNLibvirtDevices, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "devices"));
        self._features = objj_msgSend(objj_msgSend(TNLibvirtDomainFeatures, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "features"));
        self._memoryBacking = objj_msgSend(objj_msgSend(TNLibvirtDomainMemoryBacking, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "memoryBacking"));
        self._memoryTuning = objj_msgSend(objj_msgSend(TNLibvirtDomainMemoryTune, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "memtune"));
        self._OS = objj_msgSend(objj_msgSend(TNLibvirtDomainOS, "alloc"), "initWithXMLNode:domainType:", objj_msgSend(aNode, "firstChildWithName:", "os"), objj_msgSend(aNode, "valueForAttribute:", "type"));
        self._commandLine = objj_msgSend(CPArray, "array");
        var clNodes = objj_msgSend(aNode, "childrenWithName:", "commandline");
        for (var i = 0; i < objj_msgSend(clNodes, "count"); i++)
            objj_msgSend(self._commandLine, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDomainQEMUCommandLine, "alloc"), "initWithXMLNode:", objj_msgSend(clNodes, "objectAtIndex:", i)));
        if (objj_msgSend(aNode, "firstChildWithName:", "metadata"))
            self._metadata = objj_msgSend(objj_msgSend(TNLibvirtDomainMetadata, "alloc"), "initWithXMLNode:", objj_msgSend(aNode, "firstChildWithName:", "metadata"))
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDomain__XMLNode(self, _cmd)
{
    if (!self._type)
        objj_msgSend(CPException, "raise:reason:", "Missing domainType", "domainType is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:andAttributes:", "domain", {"type":self._type});
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
    if (self._memory)
    {
        objj_msgSend(node, "addChildWithName:", "memory");
        objj_msgSend(node, "addTextNode:", "" + self._memory);
        objj_msgSend(node, "up");
    }
    if (self._currentMemory)
    {
        objj_msgSend(node, "addChildWithName:", "currentMemory");
        objj_msgSend(node, "addTextNode:", "" + self._currentMemory);
        objj_msgSend(node, "up");
    }
    if (self._vcpu)
    {
        objj_msgSend(node, "addChildWithName:", "vcpu");
        objj_msgSend(node, "addTextNode:", "" + self._vcpu);
        objj_msgSend(node, "up");
    }
    if (self._bootloader)
    {
        objj_msgSend(node, "addChildWithName:", "bootloader");
        objj_msgSend(node, "addTextNode:", self._bootloader);
        objj_msgSend(node, "up");
    }
    if (self._bootloaderArgs)
    {
        objj_msgSend(node, "addChildWithName:", "bootloader_args");
        objj_msgSend(node, "addTextNode:", self._bootloaderArgs);
        objj_msgSend(node, "up");
    }
    if (self._OS)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._OS, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._clock)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._clock, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._onPowerOff)
    {
        objj_msgSend(node, "addChildWithName:", "on_poweroff");
        objj_msgSend(node, "addTextNode:", self._onPowerOff);
        objj_msgSend(node, "up");
    }
    if (self._onReboot)
    {
        objj_msgSend(node, "addChildWithName:", "on_reboot");
        objj_msgSend(node, "addTextNode:", self._onReboot);
        objj_msgSend(node, "up");
    }
    if (self._onCrash)
    {
        objj_msgSend(node, "addChildWithName:", "on_crash");
        objj_msgSend(node, "addTextNode:", self._onCrash);
        objj_msgSend(node, "up");
    }
    if (self._features)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._features, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._memoryBacking)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._memoryBacking, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._blkiotune)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._blkiotune, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._devices)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._devices, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._memoryTuning)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._memoryTuning, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._metadata)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._metadata, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._commandLine)
    {
        for (var i = 0; i < objj_msgSend(self._commandLine, "count"); i++)
        {
            objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._commandLine, "objectAtIndex:", i), "XMLNode"));
            objj_msgSend(node, "up");
        }
    }
    return node;
}
,["TNXMLNode"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultDomainWithType:osType:"), function $TNLibvirtDomain__defaultDomainWithType_osType_(self, _cmd, aType, anOsType)
{
    var domain = objj_msgSend(objj_msgSend(TNLibvirtDomain, "alloc"), "init");
    objj_msgSend(domain, "setType:", aType);
    objj_msgSend(objj_msgSend(objj_msgSend(domain, "OS"), "type"), "setType:", anOsType);
    return domain;
}
,["TNLibvirtDomain","CPString","CPString"])]);
}p;34;Model/TNLibvirtDomainBlockIOTune.jt;1840;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;1739;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDomainBlockIOTune"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_weight")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("weight"), function $TNLibvirtDomainBlockIOTune__weight(self, _cmd)
{
return self._weight;
}
,["int"]), new objj_method(sel_getUid("setWeight:"), function $TNLibvirtDomainBlockIOTune__setWeight_(self, _cmd, newValue)
{
self._weight = newValue;
}
,["void","int"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDomainBlockIOTune__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainBlockIOTune").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "blkiotune")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid blkiotune");
        self._weight = objj_msgSend(objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "weight"), "text"), "intValue");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDomainBlockIOTune__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "blkiotune");
    if (self._weight)
    {
        objj_msgSend(node, "addChildWithName:", "weight");
        objj_msgSend(node, "addTextNode:", objj_msgSend(self._weight, "stringValue"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;28;Model/TNLibvirtDomainClock.jt;3435;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.ji;27;TNLibvirtDomainClockTimer.jt;3302;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
objj_executeFile("TNLibvirtDomainClockTimer.j", YES);
TNLibvirtDomainClockClockUTC = "utc";
TNLibvirtDomainClockClockLocalTime = "localtime";
TNLibvirtDomainClockClockTimezone = "timezone";
TNLibvirtDomainClockClockVariable = "variable";
TNLibvirtDomainClockClocks = [ TNLibvirtDomainClockClockUTC,
                                        TNLibvirtDomainClockClockLocalTime,
                                        TNLibvirtDomainClockClockVariable];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDomainClock"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_offset"), new objj_ivar("_timers")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("offset"), function $TNLibvirtDomainClock__offset(self, _cmd)
{
return self._offset;
}
,["CPString"]), new objj_method(sel_getUid("setOffset:"), function $TNLibvirtDomainClock__setOffset_(self, _cmd, newValue)
{
self._offset = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("timers"), function $TNLibvirtDomainClock__timers(self, _cmd)
{
return self._timers;
}
,["CPArray"]), new objj_method(sel_getUid("setTimers:"), function $TNLibvirtDomainClock__setTimers_(self, _cmd, newValue)
{
self._timers = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("init"), function $TNLibvirtDomainClock__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainClock").super_class }, "init"))
    {
        self._timers = objj_msgSend(CPArray, "array");
    }
    return self;
}
,["TNLibvirtDomainClock"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDomainClock__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainClock").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "clock")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid clock");
        self._offset = objj_msgSend(aNode, "valueForAttribute:", "offset");
        self._timers = objj_msgSend(CPArray, "array");
        var timerNodes = objj_msgSend(aNode, "ownChildrenWithName:", "timer");
        for (var i = 0; i < objj_msgSend(timerNodes, "count"); i++)
            objj_msgSend(self._timers, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDomainClockTimer, "alloc"), "initWithXMLNode:", objj_msgSend(timerNodes, "objectAtIndex:", i)));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDomainClock__XMLNode(self, _cmd)
{
    if (!self._offset)
        objj_msgSend(CPException, "raise:reason:", "Missing offset", "clock offset is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:andAttributes:", "clock", {"offset": self._offset});
    for (var i = 0; i < objj_msgSend(self._timers, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._timers, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;33;Model/TNLibvirtDomainClockTimer.jt;7790;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.ji;34;TNLibvirtDomainClockTimerCatchup.jt;7650;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
objj_executeFile("TNLibvirtDomainClockTimerCatchup.j", YES);
TNLibvirtDomainClockTimerNameHPET = "hpet";
TNLibvirtDomainClockTimerNamePIT = "pit";
TNLibvirtDomainClockTimerNamePlatform = "platform";
TNLibvirtDomainClockTimerNameRTC = "rtc";
TNLibvirtDomainClockTimerNameTSC = "tsc";
TNLibvirtDomainClockTimerNames = [ TNLibvirtDomainClockTimerNameHPET,
                                                TNLibvirtDomainClockTimerNamePIT,
                                                TNLibvirtDomainClockTimerNamePlatform,
                                                TNLibvirtDomainClockTimerNameRTC,
                                                TNLibvirtDomainClockTimerNameTSC];
TNLibvirtDomainClockTimerTrackBoot = "boot";
TNLibvirtDomainClockTimerTrackGuest = "guest";
TNLibvirtDomainClockTimerTrackWall = "wall";
TNLibvirtDomainClockTimerTracks = [ TNLibvirtDomainClockTimerTrackBoot,
                                                TNLibvirtDomainClockTimerTrackGuest,
                                                TNLibvirtDomainClockTimerTrackWall];
TNLibvirtDomainClockTimerTickPolicyDelay = "delay";
TNLibvirtDomainClockTimerTickPolicyCatchup = "catchup";
TNLibvirtDomainClockTimerTickPolicyMerge = "merge";
TNLibvirtDomainClockTimerTickPolicyDiscard = "discard";
TNLibvirtDomainClockTimerTickPolicies = [ TNLibvirtDomainClockTimerTickPolicyDelay,
                                                TNLibvirtDomainClockTimerTickPolicyCatchup,
                                                TNLibvirtDomainClockTimerTickPolicyMerge,
                                                TNLibvirtDomainClockTimerTickPolicyDiscard];
TNLibvirtDomainClockTimerModeAuto = "auto";
TNLibvirtDomainClockTimerModeNative = "native";
TNLibvirtDomainClockTimerModeEmulate = "emulate";
TNLibvirtDomainClockTimerModeParavirt = "paravirt";
TNLibvirtDomainClockTimerModeSMPSafe = "smpsafe";
TNLibvirtDomainClockTimerModes = [ TNLibvirtDomainClockTimerModeAuto,
                                                TNLibvirtDomainClockTimerModeNative,
                                                TNLibvirtDomainClockTimerModeEmulate,
                                                TNLibvirtDomainClockTimerModeParavirt,
                                                TNLibvirtDomainClockTimerModeSMPSafe];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDomainClockTimer"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_present"), new objj_ivar("_frequency"), new objj_ivar("_mode"), new objj_ivar("_name"), new objj_ivar("_tickpolicy"), new objj_ivar("_track"), new objj_ivar("_catchup")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("present"), function $TNLibvirtDomainClockTimer__present(self, _cmd)
{
return self._present;
}
,["BOOL"]), new objj_method(sel_getUid("setPresent:"), function $TNLibvirtDomainClockTimer__setPresent_(self, _cmd, newValue)
{
self._present = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("frequency"), function $TNLibvirtDomainClockTimer__frequency(self, _cmd)
{
return self._frequency;
}
,["CPString"]), new objj_method(sel_getUid("setFrequency:"), function $TNLibvirtDomainClockTimer__setFrequency_(self, _cmd, newValue)
{
self._frequency = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("mode"), function $TNLibvirtDomainClockTimer__mode(self, _cmd)
{
return self._mode;
}
,["CPString"]), new objj_method(sel_getUid("setMode:"), function $TNLibvirtDomainClockTimer__setMode_(self, _cmd, newValue)
{
self._mode = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("name"), function $TNLibvirtDomainClockTimer__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNLibvirtDomainClockTimer__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("tickpolicy"), function $TNLibvirtDomainClockTimer__tickpolicy(self, _cmd)
{
return self._tickpolicy;
}
,["CPString"]), new objj_method(sel_getUid("setTickpolicy:"), function $TNLibvirtDomainClockTimer__setTickpolicy_(self, _cmd, newValue)
{
self._tickpolicy = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("track"), function $TNLibvirtDomainClockTimer__track(self, _cmd)
{
return self._track;
}
,["CPString"]), new objj_method(sel_getUid("setTrack:"), function $TNLibvirtDomainClockTimer__setTrack_(self, _cmd, newValue)
{
self._track = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("catchup"), function $TNLibvirtDomainClockTimer__catchup(self, _cmd)
{
return self._catchup;
}
,["TNLibvirtDomainClockTimerCatchup"]), new objj_method(sel_getUid("setCatchup:"), function $TNLibvirtDomainClockTimer__setCatchup_(self, _cmd, newValue)
{
self._catchup = newValue;
}
,["void","TNLibvirtDomainClockTimerCatchup"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDomainClockTimer__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainClockTimer").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "timer")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid clock timer");
        self._present = (objj_msgSend(objj_msgSend(aNode, "valueForAttribute:", "present"), "lowercaseString") == "yes");
        self._frequency = objj_msgSend(aNode, "valueForAttribute:", "frequency");
        self._mode = objj_msgSend(aNode, "valueForAttribute:", "mode");
        self._name = objj_msgSend(aNode, "valueForAttribute:", "name");
        self._tickpolicy = objj_msgSend(aNode, "valueForAttribute:", "tickpolicy");
        self._track = objj_msgSend(aNode, "valueForAttribute:", "track");
        var catchupNode = objj_msgSend(aNode, "firstChildWithName:", "catchup");
        if (catchupNode)
            self._catchup = objj_msgSend(objj_msgSend(TNLibvirtDomainClockTimerCatchup, "alloc"), "initWithXMLNode:", catchupNode);
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDomainClockTimer__XMLNode(self, _cmd)
{
    if (!self._name)
        objj_msgSend(CPException, "raise:reason:", "Missing clock timer name", "clock offset timer name is required");
    var node = objj_msgSend(TNXMLNode, "nodeWithName:andAttributes:", "timer", {"name": self._name});
    if (self._present)
        objj_msgSend(node, "setValue:forAttribute:", "yes", "present");
    else
        objj_msgSend(node, "setValue:forAttribute:", "no", "present");
    if (self._frequency && (self._name == TNLibvirtDomainClockTimerNameTSC))
        objj_msgSend(node, "setValue:forAttribute:", self._frequency, "frequency");
    if (self._mode && (self._name == TNLibvirtDomainClockTimerNameTSC))
        objj_msgSend(node, "setValue:forAttribute:", self._mode, "mode");
    if (self._tickpolicy)
        objj_msgSend(node, "setValue:forAttribute:", self._tickpolicy, "tickpolicy");
    if (self._track && (self._name == TNLibvirtDomainClockTimerNamePlatform || self._name == TNLibvirtDomainClockTimerNameRTC))
        objj_msgSend(node, "setValue:forAttribute:", self._track, "track");
    if (self._catchup && (self._tickpolicy == TNLibvirtDomainClockTimerTickPolicyCatchup))
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._catchup, "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;40;Model/TNLibvirtDomainClockTimerCatchup.jt;2592;@STATIC;1.0;i;15;TNLibvirtBase.jt;2553;objj_executeFile("TNLibvirtBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDomainClockTimerCatchup"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_threshold"), new objj_ivar("_slew"), new objj_ivar("_limit")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("threshold"), function $TNLibvirtDomainClockTimerCatchup__threshold(self, _cmd)
{
return self._threshold;
}
,["CPString"]), new objj_method(sel_getUid("setThreshold:"), function $TNLibvirtDomainClockTimerCatchup__setThreshold_(self, _cmd, newValue)
{
self._threshold = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("slew"), function $TNLibvirtDomainClockTimerCatchup__slew(self, _cmd)
{
return self._slew;
}
,["CPString"]), new objj_method(sel_getUid("setSlew:"), function $TNLibvirtDomainClockTimerCatchup__setSlew_(self, _cmd, newValue)
{
self._slew = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("limit"), function $TNLibvirtDomainClockTimerCatchup__limit(self, _cmd)
{
return self._limit;
}
,["CPString"]), new objj_method(sel_getUid("setLimit:"), function $TNLibvirtDomainClockTimerCatchup__setLimit_(self, _cmd, newValue)
{
self._limit = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDomainClockTimerCatchup__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainClockTimerCatchup").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "catchup")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid clock timer catchup");
        self._threshold = objj_msgSend(aNode, "valueForAttribute:", "threshold");
        self._slew = objj_msgSend(aNode, "valueForAttribute:", "slew");
        self._limit = objj_msgSend(aNode, "valueForAttribute:", "limit");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDomainClockTimerCatchup__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "catchup");
    if (self._threshold)
        objj_msgSend(node, "setValue:forAttribute:", self._threshold, "threshold");
    if (self._slew)
        objj_msgSend(node, "setValue:forAttribute:", self._slew, "slew");
    if (self._limit)
        objj_msgSend(node, "setValue:forAttribute:", self._limit, "limit");
    return node;
}
,["TNXMLNode"])]);
}p;31;Model/TNLibvirtDomainFeatures.jt;3334;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;3233;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);
TNLibvirtDomainFeaturesPAE = "pae";
TNLibvirtDomainFeaturesACPI = "acpi";
TNLibvirtDomainFeaturesAPIC = "apic";
TNLibvirtDomainFeaturesHAP = "hap";
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDomainFeatures"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_ACPI"), new objj_ivar("_APIC"), new objj_ivar("_HAP"), new objj_ivar("_PAE")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isACPI"), function $TNLibvirtDomainFeatures__isACPI(self, _cmd)
{
return self._ACPI;
}
,["BOOL"]), new objj_method(sel_getUid("setACPI:"), function $TNLibvirtDomainFeatures__setACPI_(self, _cmd, newValue)
{
self._ACPI = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isAPIC"), function $TNLibvirtDomainFeatures__isAPIC(self, _cmd)
{
return self._APIC;
}
,["BOOL"]), new objj_method(sel_getUid("setAPIC:"), function $TNLibvirtDomainFeatures__setAPIC_(self, _cmd, newValue)
{
self._APIC = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isHAP"), function $TNLibvirtDomainFeatures__isHAP(self, _cmd)
{
return self._HAP;
}
,["BOOL"]), new objj_method(sel_getUid("setHAP:"), function $TNLibvirtDomainFeatures__setHAP_(self, _cmd, newValue)
{
self._HAP = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isPAE"), function $TNLibvirtDomainFeatures__isPAE(self, _cmd)
{
return self._PAE;
}
,["BOOL"]), new objj_method(sel_getUid("setPAE:"), function $TNLibvirtDomainFeatures__setPAE_(self, _cmd, newValue)
{
self._PAE = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDomainFeatures__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainFeatures").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "features")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid features");
        self._ACPI = objj_msgSend(aNode, "firstChildWithName:", "acpi") ? YES : NO;
        self._APIC = objj_msgSend(aNode, "firstChildWithName:", "apic") ? YES : NO;
        self._HAP = objj_msgSend(aNode, "firstChildWithName:", "hap") ? YES : NO;
        self._PAE = objj_msgSend(aNode, "firstChildWithName:", "pae") ? YES : NO;
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDomainFeatures__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "features");
    if (self._PAE)
    {
        objj_msgSend(node, "addChildWithName:", "pae");
        objj_msgSend(node, "up");
    }
    if (self._ACPI)
    {
        objj_msgSend(node, "addChildWithName:", "acpi");
        objj_msgSend(node, "up");
    }
    if (self._APIC)
    {
        objj_msgSend(node, "addChildWithName:", "apic");
        objj_msgSend(node, "up");
    }
    if (self._HAP)
    {
        objj_msgSend(node, "addChildWithName:", "hap");
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;36;Model/TNLibvirtDomainMemoryBacking.jt;1795;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;1694;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDomainMemoryBacking"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_hugePages")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isUsingHugePages"), function $TNLibvirtDomainMemoryBacking__isUsingHugePages(self, _cmd)
{
return self._hugePages;
}
,["BOOL"]), new objj_method(sel_getUid("setUseHugePages:"), function $TNLibvirtDomainMemoryBacking__setUseHugePages_(self, _cmd, newValue)
{
self._hugePages = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDomainMemoryBacking__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainMemoryBacking").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "memoryBacking")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid memoryBacking");
        self._hugePages = objj_msgSend(aNode, "firstChildWithName:", "hugepages") ? YES : NO;
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDomainMemoryBacking__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "memoryBacking");
    if (self._hugePages)
    {
        objj_msgSend(node, "addChildWithName:", "hugepages");
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;33;Model/TNLibvirtDomainMemoryTune.jt;4028;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;3927;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDomainMemoryTune"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_hardLimit"), new objj_ivar("_minGuarantee"), new objj_ivar("_softLimit"), new objj_ivar("_swapHardLimit")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("hardLimit"), function $TNLibvirtDomainMemoryTune__hardLimit(self, _cmd)
{
return self._hardLimit;
}
,["int"]), new objj_method(sel_getUid("setHardLimit:"), function $TNLibvirtDomainMemoryTune__setHardLimit_(self, _cmd, newValue)
{
self._hardLimit = newValue;
}
,["void","int"]), new objj_method(sel_getUid("minGuarantee"), function $TNLibvirtDomainMemoryTune__minGuarantee(self, _cmd)
{
return self._minGuarantee;
}
,["int"]), new objj_method(sel_getUid("setMinGuarantee:"), function $TNLibvirtDomainMemoryTune__setMinGuarantee_(self, _cmd, newValue)
{
self._minGuarantee = newValue;
}
,["void","int"]), new objj_method(sel_getUid("softLimit"), function $TNLibvirtDomainMemoryTune__softLimit(self, _cmd)
{
return self._softLimit;
}
,["int"]), new objj_method(sel_getUid("setSoftLimit:"), function $TNLibvirtDomainMemoryTune__setSoftLimit_(self, _cmd, newValue)
{
self._softLimit = newValue;
}
,["void","int"]), new objj_method(sel_getUid("swapHardLimit"), function $TNLibvirtDomainMemoryTune__swapHardLimit(self, _cmd)
{
return self._swapHardLimit;
}
,["int"]), new objj_method(sel_getUid("setSwapHardLimit:"), function $TNLibvirtDomainMemoryTune__setSwapHardLimit_(self, _cmd, newValue)
{
self._swapHardLimit = newValue;
}
,["void","int"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDomainMemoryTune__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainMemoryTune").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "memtune")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid memtune");
        self._hardLimit = objj_msgSend(objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "hard_limit"), "text"), "intValue");
        self._minGuarantee = objj_msgSend(objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "min_guarantee"), "text"), "intValue");
        self._softLimit = objj_msgSend(objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "soft_limit"), "text"), "intValue");
        self._swapHardLimit = objj_msgSend(objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "swap_hard_limit"), "text"), "intValue");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDomainMemoryTune__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "memtune");
    if (self._hardLimit)
    {
        objj_msgSend(node, "addChildWithName:", "hard_limit");
        objj_msgSend(node, "addTextNode:", objj_msgSend(self._hardLimit, "stringValue"));
        objj_msgSend(node, "up");
    }
    if (self._softLimit)
    {
        objj_msgSend(node, "addChildWithName:", "soft_limit");
        objj_msgSend(node, "addTextNode:", objj_msgSend(self._softLimit, "stringValue"));
        objj_msgSend(node, "up");
    }
    if (self._swapHardLimit)
    {
        objj_msgSend(node, "addChildWithName:", "swap_hard_limit");
        objj_msgSend(node, "addTextNode:", objj_msgSend(self._swapHardLimit, "stringValue"));
        objj_msgSend(node, "up");
    }
    if (self._minGuarantee)
    {
        objj_msgSend(node, "addChildWithName:", "min_guarantee");
        objj_msgSend(node, "addTextNode:", objj_msgSend(self._minGuarantee, "stringValue"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;31;Model/TNLibvirtDomainMetadata.jt;1123;@STATIC;1.0;i;15;TNLibvirtBase.jt;1084;objj_executeFile("TNLibvirtBase.j", YES);
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDomainMetadata"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_content")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("content"), function $TNLibvirtDomainMetadata__content(self, _cmd)
{
return self._content;
}
,["CPString"]), new objj_method(sel_getUid("setContent:"), function $TNLibvirtDomainMetadata__setContent_(self, _cmd, newValue)
{
self._content = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDomainMetadata__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainMetadata").super_class }, "initWithXMLNode:", aNode))
    {
        self._content = aNode;
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDomainMetadata__XMLNode(self, _cmd)
{
    return self._content;
}
,["TNXMLNode"])]);
}p;25;Model/TNLibvirtDomainOS.jt;6532;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.ji;23;TNLibvirtDomainOSType.jt;6403;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
objj_executeFile("TNLibvirtDomainOSType.j", YES);
TNLibvirtDomainOSBootHardDrive = "hd";
TNLibvirtDomainOSBootCDROM = "cdrom";
TNLibvirtDomainOSBootNetwork = "network";
TNLibvirtDomainOSBootFileDescriptor = "fd";
TNLibvirtDomainOSBoots = [ TNLibvirtDomainOSBootHardDrive,
                                            TNLibvirtDomainOSBootCDROM,
                                            TNLibvirtDomainOSBootNetwork,
                                            TNLibvirtDomainOSBootFileDescriptor];
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDomainOS"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_bootMenuEnabled"), new objj_ivar("_boot"), new objj_ivar("_commandLine"), new objj_ivar("_initrd"), new objj_ivar("_kernel"), new objj_ivar("_loader"), new objj_ivar("_type")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isBootMenuEnabled"), function $TNLibvirtDomainOS__isBootMenuEnabled(self, _cmd)
{
return self._bootMenuEnabled;
}
,["BOOL"]), new objj_method(sel_getUid("setBootMenuEnabled:"), function $TNLibvirtDomainOS__setBootMenuEnabled_(self, _cmd, newValue)
{
self._bootMenuEnabled = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("boot"), function $TNLibvirtDomainOS__boot(self, _cmd)
{
return self._boot;
}
,["CPString"]), new objj_method(sel_getUid("setBoot:"), function $TNLibvirtDomainOS__setBoot_(self, _cmd, newValue)
{
self._boot = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("commandLine"), function $TNLibvirtDomainOS__commandLine(self, _cmd)
{
return self._commandLine;
}
,["CPString"]), new objj_method(sel_getUid("setCommandLine:"), function $TNLibvirtDomainOS__setCommandLine_(self, _cmd, newValue)
{
self._commandLine = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initrd"), function $TNLibvirtDomainOS__initrd(self, _cmd)
{
return self._initrd;
}
,["CPString"]), new objj_method(sel_getUid("setInitrd:"), function $TNLibvirtDomainOS__setInitrd_(self, _cmd, newValue)
{
self._initrd = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("kernel"), function $TNLibvirtDomainOS__kernel(self, _cmd)
{
return self._kernel;
}
,["CPString"]), new objj_method(sel_getUid("setKernel:"), function $TNLibvirtDomainOS__setKernel_(self, _cmd, newValue)
{
self._kernel = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("loader"), function $TNLibvirtDomainOS__loader(self, _cmd)
{
return self._loader;
}
,["CPString"]), new objj_method(sel_getUid("setLoader:"), function $TNLibvirtDomainOS__setLoader_(self, _cmd, newValue)
{
self._loader = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("type"), function $TNLibvirtDomainOS__type(self, _cmd)
{
return self._type;
}
,["TNLibvirtDomainOSType"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDomainOS__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","TNLibvirtDomainOSType"]), new objj_method(sel_getUid("init"), function $TNLibvirtDomainOS__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainOS").super_class }, "init"))
    {
        self._type = objj_msgSend(objj_msgSend(TNLibvirtDomainOSType, "alloc"), "init");
    }
    return self;
}
,["void"]), new objj_method(sel_getUid("initWithXMLNode:domainType:"), function $TNLibvirtDomainOS__initWithXMLNode_domainType_(self, _cmd, aNode, aDomainType)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainOS").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "os")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid os");
        self._boot = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "boot"), "valueForAttribute:", "dev");
        self._bootMenuEnabled = (objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "bootmenu"), "valueForAttribute:", "enable") == "yes") ? YES : NO;
        self._commandLine = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "cmdline"), "text");
        self._initrd = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "initrd"), "text");
        self._kernel = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "kernel"), "text");
        self._loader = objj_msgSend(objj_msgSend(aNode, "firstChildWithName:", "loader"), "text");
        self._type = objj_msgSend(objj_msgSend(TNLibvirtDomainOSType, "alloc"), "initWithXMLNode:domainType:", objj_msgSend(aNode, "firstChildWithName:", "type"), aDomainType);
    }
    return self;
}
,["id","TNXMLNode","CPString"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDomainOS__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "os");
    if (self._type)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(self._type, "XMLNode"));
        objj_msgSend(node, "up");
    }
    if (self._loader && self._loader != "")
    {
        objj_msgSend(node, "addChildWithName:", "loader");
        objj_msgSend(node, "addTextNode:", self._loader);
        objj_msgSend(node, "up");
    }
    if (self._boot)
    {
        objj_msgSend(node, "addChildWithName:andAttributes:", "boot", {"dev": self._boot});
        objj_msgSend(node, "up");
    }
    if (self._bootMenuEnabled != nil)
    {
        var enabled = (self._bootMenuEnabled) ? "yes" : "no";
        objj_msgSend(node, "addChildWithName:andAttributes:", "bootmenu", {"enable": enabled});
        objj_msgSend(node, "up");
    }
    if (self._kernel && self._kernel != "")
    {
        objj_msgSend(node, "addChildWithName:", "kernel");
        objj_msgSend(node, "addTextNode:", self._kernel);
        objj_msgSend(node, "up");
    }
    if (self._initrd && self._initrd != "")
    {
        objj_msgSend(node, "addChildWithName:", "initrd");
        objj_msgSend(node, "addTextNode:", self._initrd);
        objj_msgSend(node, "up");
    }
    if (self._commandLine && self._commandLine != "")
    {
        objj_msgSend(node, "addChildWithName:", "cmdline");
        objj_msgSend(node, "addTextNode:", self._commandLine);
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;29;Model/TNLibvirtDomainOSType.jt;3303;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;3202;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
TNLibvirtDomainOSTypeTypeLinux = "linux";
TNLibvirtDomainOSTypeTypeHVM = "hvm";
objj_executeFile("TNLibvirtBase.j", YES);;
//@global TNLibvirtDomainTypeXen
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDomainOSType"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_architecture"), new objj_ivar("_machine"), new objj_ivar("_type")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("architecture"), function $TNLibvirtDomainOSType__architecture(self, _cmd)
{
return self._architecture;
}
,["CPString"]), new objj_method(sel_getUid("setArchitecture:"), function $TNLibvirtDomainOSType__setArchitecture_(self, _cmd, newValue)
{
self._architecture = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("machine"), function $TNLibvirtDomainOSType__machine(self, _cmd)
{
return self._machine;
}
,["CPString"]), new objj_method(sel_getUid("setMachine:"), function $TNLibvirtDomainOSType__setMachine_(self, _cmd, newValue)
{
self._machine = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("type"), function $TNLibvirtDomainOSType__type(self, _cmd)
{
return self._type;
}
,["CPString"]), new objj_method(sel_getUid("setType:"), function $TNLibvirtDomainOSType__setType_(self, _cmd, newValue)
{
self._type = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithXMLNode:domainType:"), function $TNLibvirtDomainOSType__initWithXMLNode_domainType_(self, _cmd, aNode, aDomainType)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainOSType").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "type")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid os type");
        self._architecture = objj_msgSend(aNode, "valueForAttribute:", "arch");
        self._machine = objj_msgSend(aNode, "valueForAttribute:", "machine");
        self._type = objj_msgSend(aNode, "text");
        if (aDomainType == TNLibvirtDomainTypeXen)
        {
            if (self._type == TNLibvirtDomainOSTypeTypeLinux)
            {
                self._architecture = "i686";
                self._machine = "xenpv";
                self._type = TNLibvirtDomainTypeXen;
            }
            if (self._type == TNLibvirtDomainOSTypeTypeHVM)
            {
                self._architecture = "i686";
                self._machine = "xenfv";
                self._type = TNLibvirtDomainOSTypeTypeHVM;
            }
        }
    }
    return self;
}
,["id","TNXMLNode","CPString"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDomainOSType__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "type");
    if (self._machine)
        objj_msgSend(node, "setValue:forAttribute:", self._machine, "machine");
    if (self._architecture)
        objj_msgSend(node, "setValue:forAttribute:", self._architecture, "arch");
    objj_msgSend(node, "addTextNode:", self._type);
    return node;
}
,["TNXMLNode"])]);
}p;38;Model/TNLibvirtDomainQEMUCommandLine.jt;2700;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.ji;40;TNLibvirtDomainQEMUCommandLineArgument.jt;2554;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
objj_executeFile("TNLibvirtDomainQEMUCommandLineArgument.j", YES);;
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDomainQEMUCommandLine"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_arguments")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("args"), function $TNLibvirtDomainQEMUCommandLine__args(self, _cmd)
{
return self._arguments;
}
,["CPArray"]), new objj_method(sel_getUid("setArgs:"), function $TNLibvirtDomainQEMUCommandLine__setArgs_(self, _cmd, newValue)
{
self._arguments = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("init"), function $TNLibvirtDomainQEMUCommandLine__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainQEMUCommandLine").super_class }, "init"))
    {
        self._arguments = objj_msgSend(CPArray, "array");
    }
    return self;
}
,["void"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDomainQEMUCommandLine__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainQEMUCommandLine").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "commandline")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid commandline");
        self._arguments = objj_msgSend(CPArray, "array");
        var argNodes = objj_msgSend(aNode, "childrenWithName:", "arg");
        for (var i = 0; i < objj_msgSend(argNodes, "count"); i++)
            objj_msgSend(self._arguments, "addObject:", objj_msgSend(objj_msgSend(TNLibvirtDomainQEMUCommandLineArgument, "alloc"), "initWithXMLNode:", objj_msgSend(argNodes, "objectAtIndex:", i)));
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDomainQEMUCommandLine__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "commandline");
    objj_msgSend(node, "setNamespace:", "http://libvirt.org/schemas/domain/qemu/1.0");
    for (var i = 0; i < objj_msgSend(self._arguments, "count"); i++)
    {
        objj_msgSend(node, "addNode:", objj_msgSend(objj_msgSend(self._arguments, "objectAtIndex:", i), "XMLNode"));
        objj_msgSend(node, "up");
    }
    return node;
}
,["TNXMLNode"])]);
}p;46;Model/TNLibvirtDomainQEMUCommandLineArgument.jt;2087;@STATIC;1.0;I;23;Foundation/Foundation.jI;29;StropheCappuccino/TNXMLNode.ji;15;TNLibvirtBase.jt;1986;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("StropheCappuccino/TNXMLNode.j", NO);
objj_executeFile("TNLibvirtBase.j", YES);;
{var the_class = objj_allocateClassPair(TNLibvirtBase, "TNLibvirtDomainQEMUCommandLineArgument"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_value")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("value"), function $TNLibvirtDomainQEMUCommandLineArgument__value(self, _cmd)
{
return self._value;
}
,["CPString"]), new objj_method(sel_getUid("setValue:"), function $TNLibvirtDomainQEMUCommandLineArgument__setValue_(self, _cmd, newValue)
{
self._value = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("initWithValue:"), function $TNLibvirtDomainQEMUCommandLineArgument__initWithValue_(self, _cmd, aValue)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainQEMUCommandLineArgument").super_class }, "init"))
    {
        self._value = aValue;
    }
    return self;
}
,["id","CPString"]), new objj_method(sel_getUid("initWithXMLNode:"), function $TNLibvirtDomainQEMUCommandLineArgument__initWithXMLNode_(self, _cmd, aNode)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNLibvirtDomainQEMUCommandLineArgument").super_class }, "initWithXMLNode:", aNode))
    {
        if (objj_msgSend(aNode, "name") != "arg")
            objj_msgSend(CPException, "raise:reason:", "XML not valid", "The TNXMLNode provided is not a valid arg");
        self._value = objj_msgSend(aNode, "valueForAttribute:", "value");
    }
    return self;
}
,["id","TNXMLNode"]), new objj_method(sel_getUid("XMLNode"), function $TNLibvirtDomainQEMUCommandLineArgument__XMLNode(self, _cmd)
{
    var node = objj_msgSend(TNXMLNode, "nodeWithName:", "arg");
    if (self._value)
        objj_msgSend(node, "setValue:forAttribute:", self._value, "value");
    return node;
}
,["TNXMLNode"])]);
}e;