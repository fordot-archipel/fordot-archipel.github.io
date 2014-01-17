@STATIC;1.0;p;12;TNSnapshot.jt;3469;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPImage.jt;3401;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNSnapshot"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_isCurrent"), new objj_ivar("_creationTime"), new objj_ivar("_description"), new objj_ivar("_domain"), new objj_ivar("_name"), new objj_ivar("_parent"), new objj_ivar("_state"), new objj_ivar("_UUID"), new objj_ivar("_currentIcon")]);
       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isCurrent"), function $TNSnapshot__isCurrent(self, _cmd)
{
return self._isCurrent;
}
,["BOOL"]), new objj_method(sel_getUid("setCurrent:"), function $TNSnapshot__setCurrent_(self, _cmd, newValue)
{
self._isCurrent = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("creationTime"), function $TNSnapshot__creationTime(self, _cmd)
{
return self._creationTime;
}
,["CPString"]), new objj_method(sel_getUid("setCreationTime:"), function $TNSnapshot__setCreationTime_(self, _cmd, newValue)
{
self._creationTime = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("description"), function $TNSnapshot__description(self, _cmd)
{
return self._description;
}
,["CPString"]), new objj_method(sel_getUid("setDescription:"), function $TNSnapshot__setDescription_(self, _cmd, newValue)
{
self._description = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("domain"), function $TNSnapshot__domain(self, _cmd)
{
return self._domain;
}
,["CPString"]), new objj_method(sel_getUid("setDomain:"), function $TNSnapshot__setDomain_(self, _cmd, newValue)
{
self._domain = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("name"), function $TNSnapshot__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNSnapshot__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("parent"), function $TNSnapshot__parent(self, _cmd)
{
return self._parent;
}
,["CPString"]), new objj_method(sel_getUid("setParent:"), function $TNSnapshot__setParent_(self, _cmd, newValue)
{
self._parent = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("state"), function $TNSnapshot__state(self, _cmd)
{
return self._state;
}
,["CPString"]), new objj_method(sel_getUid("setState:"), function $TNSnapshot__setState_(self, _cmd, newValue)
{
self._state = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("UUID"), function $TNSnapshot__UUID(self, _cmd)
{
return self._UUID;
}
,["CPString"]), new objj_method(sel_getUid("setUUID:"), function $TNSnapshot__setUUID_(self, _cmd, newValue)
{
self._UUID = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("init"), function $TNSnapshot__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNSnapshot").super_class }, "init"))
    {
        var bundle = objj_msgSend(CPBundle, "mainBundle");
        self._currentIcon = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "IconsButtons/check.png"), CGSizeMake(16, 16));
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("isCurrent"), function $TNSnapshot__isCurrent(self, _cmd)
{
    if (self._isCurrent)
        return self._currentIcon;
    return nil;
}
,["CPImage"])]);
}p;23;TNSnapshotsDatasource.jt;6577;@STATIC;1.0;I;23;Foundation/Foundation.jt;6530;objj_executeFile("Foundation/Foundation.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNSnapshotsDatasource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("filterInstalled"), new objj_ivar("_contents"), new objj_ivar("_searchableKeyPaths"), new objj_ivar("_childCompKeyPath"), new objj_ivar("_parentKeyPath")]);
       
       






       
       


       
       




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isFilterInstalled"), function $TNSnapshotsDatasource__isFilterInstalled(self, _cmd)
{
return self.filterInstalled;
}
,["BOOL"]), new objj_method(sel_getUid("setFilterInstalled:"), function $TNSnapshotsDatasource__setFilterInstalled_(self, _cmd, newValue)
{
self.filterInstalled = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("contents"), function $TNSnapshotsDatasource__contents(self, _cmd)
{
return self._contents;
}
,["CPArray"]), new objj_method(sel_getUid("setContents:"), function $TNSnapshotsDatasource__setContents_(self, _cmd, newValue)
{
self._contents = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("searchableKeyPaths"), function $TNSnapshotsDatasource__searchableKeyPaths(self, _cmd)
{
return self._searchableKeyPaths;
}
,["CPArray"]), new objj_method(sel_getUid("setSearchableKeyPaths:"), function $TNSnapshotsDatasource__setSearchableKeyPaths_(self, _cmd, newValue)
{
self._searchableKeyPaths = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("childCompKeyPath"), function $TNSnapshotsDatasource__childCompKeyPath(self, _cmd)
{
return self._childCompKeyPath;
}
,["CPString"]), new objj_method(sel_getUid("setChildCompKeyPath:"), function $TNSnapshotsDatasource__setChildCompKeyPath_(self, _cmd, newValue)
{
self._childCompKeyPath = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("parentKeyPath"), function $TNSnapshotsDatasource__parentKeyPath(self, _cmd)
{
return self._parentKeyPath;
}
,["CPString"]), new objj_method(sel_getUid("setParentKeyPath:"), function $TNSnapshotsDatasource__setParentKeyPath_(self, _cmd, newValue)
{
self._parentKeyPath = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("init"), function $TNSnapshotsDatasource__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNSnapshotsDatasource").super_class }, "init"))
    {
        self._contents = objj_msgSend(CPArray, "array");
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("count"), function $TNSnapshotsDatasource__count(self, _cmd)
{
    return objj_msgSend(self._contents, "count");
}
,["int"]), new objj_method(sel_getUid("objects"), function $TNSnapshotsDatasource__objects(self, _cmd)
{
    return self._contents;
}
,["CPArray"]), new objj_method(sel_getUid("objectAtIndex:"), function $TNSnapshotsDatasource__objectAtIndex_(self, _cmd, anIndex)
{
   return objj_msgSend(self._contents, "objectAtIndex:", anIndex);
}
,["id","int"]), new objj_method(sel_getUid("objectsAtIndexes:"), function $TNSnapshotsDatasource__objectsAtIndexes_(self, _cmd, indexes)
{
    return objj_msgSend(self._contents, "objectsAtIndexes:", indexes);
}
,["CPArray","CPIndexSet"]), new objj_method(sel_getUid("getRootObjects"), function $TNSnapshotsDatasource__getRootObjects(self, _cmd)
{
    var array = objj_msgSend(CPArray, "array");
    for (var i = 0; i < objj_msgSend(self._contents, "count"); i++)
    {
        var object = objj_msgSend(self._contents, "objectAtIndex:", i);
        if (objj_msgSend(object, "valueForKeyPath:", self._parentKeyPath) == nil)
            objj_msgSend(array, "addObject:", object);
    }
    return array;
}
,["CPArray"]), new objj_method(sel_getUid("getChildrenOfObject:"), function $TNSnapshotsDatasource__getChildrenOfObject_(self, _cmd, anObject)
{
    var array = objj_msgSend(CPArray, "array");
    for (var i = 0; i < objj_msgSend(self._contents, "count"); i++)
    {
        var object = objj_msgSend(self._contents, "objectAtIndex:", i);
        if (objj_msgSend(object, "valueForKey:", self._parentKeyPath) == objj_msgSend(anObject, "valueForKey:", self._childCompKeyPath))
            objj_msgSend(array, "addObject:", object);
    }
    return array;
}
,["CPArray","id"]), new objj_method(sel_getUid("addObject:"), function $TNSnapshotsDatasource__addObject_(self, _cmd, anObject)
{
    objj_msgSend(self._contents, "addObject:", anObject);
}
,["void","id"]), new objj_method(sel_getUid("removeAllObjects"), function $TNSnapshotsDatasource__removeAllObjects(self, _cmd)
{
    objj_msgSend(self._contents, "removeAllObjects");
}
,["void"]), new objj_method(sel_getUid("outlineView:numberOfChildrenOfItem:"), function $TNSnapshotsDatasource__outlineView_numberOfChildrenOfItem_(self, _cmd, anOutlineView, item)
{
    if (!item)
        return objj_msgSend(objj_msgSend(self, "getRootObjects"), "count");
    else
        return objj_msgSend(objj_msgSend(self, "getChildrenOfObject:", item), "count");
}
,["int","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:isItemExpandable:"), function $TNSnapshotsDatasource__outlineView_isItemExpandable_(self, _cmd, anOutlineView, item)
{
    if (!item)
        return YES;
    return (objj_msgSend(objj_msgSend(self, "getChildrenOfObject:", item), "count") > 0) ? YES : NO;
}
,["BOOL","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:child:ofItem:"), function $TNSnapshotsDatasource__outlineView_child_ofItem_(self, _cmd, anOutlineView, index, item)
{
    if (!item)
        return objj_msgSend(objj_msgSend(self, "getRootObjects"), "objectAtIndex:", index);
    else
        return objj_msgSend(objj_msgSend(self, "getChildrenOfObject:", item), "objectAtIndex:", index);
}
,["id","CPOutlineView","int","id"]), new objj_method(sel_getUid("outlineView:objectValueForTableColumn:byItem:"), function $TNSnapshotsDatasource__outlineView_objectValueForTableColumn_byItem_(self, _cmd, anOutlineView, tableColumn, item)
{
    var identifier = objj_msgSend(tableColumn, "identifier");
    if (identifier == "outline")
        return nil;
    return objj_msgSend(item, "valueForKey:", identifier);
}
,["id","CPOutlineView","CPTableColumn","id"]), new objj_method(sel_getUid("tableView:sortDescriptorsDidChange:"), function $TNSnapshotsDatasource__tableView_sortDescriptorsDidChange_(self, _cmd, aTableView, oldDescriptors)
{
    objj_msgSend(self._contents, "sortUsingDescriptors:", objj_msgSend(aTableView, "sortDescriptors"));
    objj_msgSend(aTableView, "reloadData");
}
,["void","CPTableView","CPArray"])]);
}p;37;TNVirtualMachineSnapshotsController.jt;29010;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPTextField.jI;22;AppKit/CPOutlineView.jI;17;AppKit/CPWindow.jI;28;LPKit/LPMultiLineTextField.jI;15;TNKit/TNAlert.ji;22;../../Model/TNModule.ji;12;TNSnapshot.ji;23;TNSnapshotsDatasource.jt;28689;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPOutlineView.j", NO);
objj_executeFile("AppKit/CPWindow.j", NO);
objj_executeFile("LPKit/LPMultiLineTextField.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("TNSnapshot.j", YES);
objj_executeFile("TNSnapshotsDatasource.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelSnapshotsOpenedSnapshots = "TNArchipelSnapshotsOpenedSnapshots_",
    TNArchipelPushNotificationSnapshoting = "archipel:push:snapshoting",
    TNArchipelTypeHypervisorSnapshot = "archipel:virtualmachine:snapshoting",
    TNArchipelTypeHypervisorSnapshotTake = "take",
    TNArchipelTypeHypervisorSnapshotGet = "get",
    TNArchipelTypeHypervisorSnapshotCurrent = "current",
    TNArchipelTypeHypervisorSnapshotDelete = "delete",
    TNArchipelTypeHypervisorSnapshotRevert = "revert";
{var the_class = objj_allocateClassPair(TNModule, "TNVirtualMachineSnapshotsController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonSnapshotTake"), new objj_ivar("buttonBarControl"), new objj_ivar("popoverNewSnapshot"), new objj_ivar("scrollViewSnapshots"), new objj_ivar("fieldFilter"), new objj_ivar("fieldInfo"), new objj_ivar("fieldNewSnapshotName"), new objj_ivar("viewTableContainer"), new objj_ivar("fieldNewSnapshotDescription"), new objj_ivar("_minusButton"), new objj_ivar("_plusButton"), new objj_ivar("_revertButton"), new objj_ivar("_outlineViewSnapshots"), new objj_ivar("_currentSnapshot"), new objj_ivar("_datasourceSnapshots")]);
       
       






       
       

       
       





       
       












       
       



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNVirtualMachineSnapshotsController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.viewTableContainer, "setBorderedWithHexColor:", "#C0C7D2");
    objj_msgSend(self.fieldNewSnapshotDescription, "setFrameSize:", CGSizeMake(366, 120));
    self._datasourceSnapshots = objj_msgSend(objj_msgSend(TNSnapshotsDatasource, "alloc"), "init");
    self._outlineViewSnapshots = objj_msgSend(objj_msgSend(CPOutlineView, "alloc"), "initWithFrame:", objj_msgSend(self.scrollViewSnapshots, "bounds"));
    objj_msgSend(self.scrollViewSnapshots, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(self.scrollViewSnapshots, "setAutohidesScrollers:", YES);
    objj_msgSend(self.scrollViewSnapshots, "setDocumentView:", self._outlineViewSnapshots);
    objj_msgSend(self._outlineViewSnapshots, "setUsesAlternatingRowBackgroundColors:", YES);
    objj_msgSend(self._outlineViewSnapshots, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(self._outlineViewSnapshots, "setAllowsColumnResizing:", YES);
    objj_msgSend(self._outlineViewSnapshots, "setAllowsEmptySelection:", YES);
    objj_msgSend(self._outlineViewSnapshots, "setAllowsMultipleSelection:", NO);
    objj_msgSend(self._outlineViewSnapshots, "setColumnAutoresizingStyle:", CPTableViewLastColumnOnlyAutoresizingStyle);
    var outlineColumn = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "outline"),
        columnName = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "name"),
        columnDescription = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "description"),
        columnCreationTime = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "creationTime"),
        columnState = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "isCurrent"),
        imgView = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMake(0,0,16,16));
    objj_msgSend(outlineColumn, "setWidth:", 16);
    objj_msgSend(objj_msgSend(columnName, "headerView"), "setStringValue:", CPBundleLocalizedString("UUID", "UUID"));
    objj_msgSend(columnName, "setWidth:", 100);
    objj_msgSend(columnName, "setSortDescriptorPrototype:", objj_msgSend(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "name", YES));
    objj_msgSend(objj_msgSend(columnDescription, "headerView"), "setStringValue:", CPBundleLocalizedString("Description", "Description"));
    objj_msgSend(columnDescription, "setWidth:", 400);
    objj_msgSend(columnDescription, "setSortDescriptorPrototype:", objj_msgSend(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "description", YES));
    objj_msgSend(objj_msgSend(columnCreationTime, "headerView"), "setStringValue:", CPBundleLocalizedString("Creation date", "Creation date"));
    objj_msgSend(columnCreationTime, "setWidth:", 130);
    objj_msgSend(columnCreationTime, "setSortDescriptorPrototype:", objj_msgSend(CPSortDescriptor, "sortDescriptorWithKey:ascending:", "creationTime", YES));
    objj_msgSend(imgView, "setImageScaling:", CPScaleNone);
    objj_msgSend(columnState, "setDataView:", imgView);
    objj_msgSend(columnState, "setResizingMask:", CPTableColumnAutoresizingMask);
    objj_msgSend(columnState, "setWidth:", 16);
    objj_msgSend(objj_msgSend(columnState, "headerView"), "setStringValue:", "");
    objj_msgSend(self._outlineViewSnapshots, "addTableColumn:", columnState);
    objj_msgSend(self._outlineViewSnapshots, "addTableColumn:", columnDescription);
    objj_msgSend(self._outlineViewSnapshots, "addTableColumn:", columnCreationTime);
    objj_msgSend(self._outlineViewSnapshots, "addTableColumn:", columnName);
    objj_msgSend(self._outlineViewSnapshots, "setOutlineTableColumn:", columnDescription);
    objj_msgSend(self._outlineViewSnapshots, "setDelegate:", self);
    objj_msgSend(self._datasourceSnapshots, "setParentKeyPath:", "parent");
    objj_msgSend(self._datasourceSnapshots, "setChildCompKeyPath:", "name");
    objj_msgSend(self._datasourceSnapshots, "setSearchableKeyPaths:", ["name", "description", "creationTime"]);
    objj_msgSend(self._outlineViewSnapshots, "setDataSource:", self._datasourceSnapshots);
    self._plusButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._plusButton, "setTarget:", self);
    objj_msgSend(self._plusButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/photo-add.png"), CGSizeMake(14, 14)));
    objj_msgSend(self._plusButton, "setAction:", sel_getUid("openWindowNewSnapshot:"));
    objj_msgSend(self._plusButton, "setToolTip:", CPBundleLocalizedString("Create a new snapshot", "Create a new snapshot"));
    self._minusButton = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._minusButton, "setTarget:", self);
    objj_msgSend(self._minusButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/photo-remove.png"), CGSizeMake(14, 14)));
    objj_msgSend(self._minusButton, "setAction:", sel_getUid("deleteSnapshot:"));
    objj_msgSend(self._minusButton, "setEnabled:", NO);
    objj_msgSend(self._minusButton, "setToolTip:", CPBundleLocalizedString("Remove selected snapshot", "Remove selected snapshot"));
    self._revertButton = objj_msgSend(CPButtonBar, "minusButton");
    objj_msgSend(self._revertButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/revert.png"), CGSizeMake(14, 14)));
    objj_msgSend(self._revertButton, "setTarget:", self);
    objj_msgSend(self._revertButton, "setAction:", sel_getUid("revertSnapshot:"));
    objj_msgSend(self._revertButton, "setEnabled:", NO);
    objj_msgSend(self._revertButton, "setToolTip:", CPBundleLocalizedString("Revert VM state to selected snapshot", "Revert VM state to selected snapshot"));
    objj_msgSend(self.buttonBarControl, "setButtons:", [self._plusButton, self._minusButton, self._revertButton]);
}
,["void"]), new objj_method(sel_getUid("willShow"), function $TNVirtualMachineSnapshotsController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineSnapshotsController").super_class }, "willShow"))
        return NO;
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceivePush:"), TNArchipelPushNotificationSnapshoting);
    self._currentSnapshot = nil;
    objj_msgSend(self._outlineViewSnapshots, "setDelegate:", nil);
    objj_msgSend(self._outlineViewSnapshots, "setDelegate:", self);
    objj_msgSend(self, "getSnapshots");
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willUnload"), function $TNVirtualMachineSnapshotsController__willUnload(self, _cmd)
{
    objj_msgSend(self._datasourceSnapshots, "removeAllObjects");
    objj_msgSend(self._outlineViewSnapshots, "reloadData");
    objj_msgSend(self._outlineViewSnapshots, "deselectAll");
    objj_msgSend(self._revertButton, "setEnabled:", NO);
    objj_msgSend(self._minusButton, "setEnabled:", NO);
    objj_msgSend(self.popoverNewSnapshot, "close");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineSnapshotsController").super_class }, "willUnload");
}
,["void"]), new objj_method(sel_getUid("menuReady"), function $TNVirtualMachineSnapshotsController__menuReady(self, _cmd)
{
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Take a snapshot", "Take a snapshot"), sel_getUid("openWindowNewSnapshot:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Revert to selected drive", "Revert to selected drive"), sel_getUid("revertSnapshot:"), ""), "setTarget:", self);
    objj_msgSend(self._menu, "addItem:", objj_msgSend(CPMenuItem, "separatorItem"));
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Delete selected snapshot", "Delete selected snapshot"), sel_getUid("deleteSnapshot:"), ""), "setTarget:", self);
}
,["void"]), new objj_method(sel_getUid("permissionsChanged"), function $TNVirtualMachineSnapshotsController__permissionsChanged(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineSnapshotsController").super_class }, "permissionsChanged");
}
,["void"]), new objj_method(sel_getUid("setUIAccordingToPermissions"), function $TNVirtualMachineSnapshotsController__setUIAccordingToPermissions(self, _cmd)
{
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._plusButton, "snapshot_take");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._minusButton, "snapshot_delete", (objj_msgSend(self._outlineViewSnapshots, "numberOfSelectedRows") > 0));
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self._revertButton, "snapshot_revert", (objj_msgSend(self._outlineViewSnapshots, "numberOfSelectedRows") > 0));
    if (!objj_msgSend(self, "currentEntityHasPermission:", "snapshot_take"))
        objj_msgSend(self.popoverNewSnapshot, "close");
}
,["void"]), new objj_method(sel_getUid("flushUI"), function $TNVirtualMachineSnapshotsController__flushUI(self, _cmd)
{
    objj_msgSend(self._datasourceSnapshots, "removeAllObjects");
    objj_msgSend(self._outlineViewSnapshots, "reloadData");
}
,["void"]), new objj_method(sel_getUid("_didReceivePush:"), function $TNVirtualMachineSnapshotsController___didReceivePush_(self, _cmd, somePushInfo)
{
    var sender = objj_msgSend(somePushInfo, "objectForKey:", "owner"),
        type = objj_msgSend(somePushInfo, "objectForKey:", "type"),
        change = objj_msgSend(somePushInfo, "objectForKey:", "change"),
        date = objj_msgSend(somePushInfo, "objectForKey:", "date");
    objj_msgSend(self, "getSnapshots");
    return YES;
}
,["BOOL","CPDictionary"]), new objj_method(sel_getUid("openWindowNewSnapshot:"), function $TNVirtualMachineSnapshotsController__openWindowNewSnapshot_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    objj_msgSend(self.fieldNewSnapshotName, "setStringValue:", "");
    objj_msgSend(self.fieldNewSnapshotDescription, "setStringValue:", "");
    objj_msgSend(self.fieldNewSnapshotName, "setStringValue:", objj_msgSend(CPString, "UUID"));
    objj_msgSend(self.popoverNewSnapshot, "close");
    objj_msgSend(self.popoverNewSnapshot, "showRelativeToRect:ofView:preferredEdge:", nil, self._plusButton, nil);
    objj_msgSend(self.popoverNewSnapshot, "makeFirstResponder:", self.fieldNewSnapshotDescription);
    objj_msgSend(self.popoverNewSnapshot, "setDefaultButton:", self.buttonSnapshotTake);
}
,["id","id"]), new objj_method(sel_getUid("closeWindowNewSnapshot:"), function $TNVirtualMachineSnapshotsController__closeWindowNewSnapshot_(self, _cmd, aSender)
{
    objj_msgSend(self.popoverNewSnapshot, "close");
}
,["id","id"]), new objj_method(sel_getUid("takeSnapshot:"), function $TNVirtualMachineSnapshotsController__takeSnapshot_(self, _cmd, aSender)
{
    objj_msgSend(self, "takeSnapshot");
}
,["id","id"]), new objj_method(sel_getUid("deleteSnapshot:"), function $TNVirtualMachineSnapshotsController__deleteSnapshot_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    objj_msgSend(self, "deleteSnapshot");
}
,["id","id"]), new objj_method(sel_getUid("revertSnapshot:"), function $TNVirtualMachineSnapshotsController__revertSnapshot_(self, _cmd, aSender)
{
    objj_msgSend(self, "revertSnapshot");
}
,["id","id"]), new objj_method(sel_getUid("getSnapshots"), function $TNVirtualMachineSnapshotsController__getSnapshots(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorSnapshot});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorSnapshotGet});
    objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didGetSnapshots:"));
}
,["void"]), new objj_method(sel_getUid("_didGetSnapshots:"), function $TNVirtualMachineSnapshotsController___didGetSnapshots_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var snapshots = objj_msgSend(aStanza, "childrenWithName:", "domainsnapshot");
        objj_msgSend(self._datasourceSnapshots, "removeAllObjects");
        for (var i = 0; i < objj_msgSend(snapshots, "count"); i++)
        {
            var snapshot = objj_msgSend(snapshots, "objectAtIndex:", i),
                snapshotObject = objj_msgSend(objj_msgSend(TNSnapshot, "alloc"), "init"),
                date = objj_msgSend(CPDate, "dateWithTimeIntervalSince1970:", objj_msgSend(objj_msgSend(snapshot, "firstChildWithName:", "creationTime"), "text"));
            CPLog.debug(objj_msgSend(objj_msgSend(snapshot, "firstChildWithName:", "domainsnapshot"), "text"));
            objj_msgSend(snapshotObject, "setUUID:", objj_msgSend(objj_msgSend(snapshot, "firstChildWithName:", "uuid"), "text"));
            objj_msgSend(snapshotObject, "setName:", objj_msgSend(objj_msgSend(snapshot, "firstChildWithName:", "name"), "text"));
            objj_msgSend(snapshotObject, "setDescription:", objj_msgSend(objj_msgSend(snapshot, "firstChildWithName:", "description"), "text"));
            objj_msgSend(snapshotObject, "setCreationTime:", date.dateFormat("Y-m-d H:i:s"));
            objj_msgSend(snapshotObject, "setState:", objj_msgSend(objj_msgSend(snapshot, "firstChildWithName:", "state"), "text"));
            objj_msgSend(snapshotObject, "setParent:", objj_msgSend(objj_msgSend(objj_msgSend(snapshot, "firstChildWithName:", "parent"), "firstChildWithName:", "name"), "text"));
            objj_msgSend(snapshotObject, "setDomain:", objj_msgSend(objj_msgSend(snapshot, "firstChildWithName:", "domain"), "text"));
            objj_msgSend(snapshotObject, "setCurrent:", NO);
            objj_msgSend(self._datasourceSnapshots, "addObject:", snapshotObject);
        }
        objj_msgSend(self, "getCurrentSnapshot");
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("getCurrentSnapshot"), function $TNVirtualMachineSnapshotsController__getCurrentSnapshot(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorSnapshot});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorSnapshotCurrent});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didGetCurrentSnapshot:"));
}
,["void"]), new objj_method(sel_getUid("_didGetCurrentSnapshot:"), function $TNVirtualMachineSnapshotsController___didGetCurrentSnapshot_(self, _cmd, aStanza)
{
    objj_msgSend(self.fieldInfo, "setStringValue:", "");
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var snapshots = objj_msgSend(aStanza, "firstChildWithName:", "domainsnapshot"),
            name = objj_msgSend(objj_msgSend(snapshots, "firstChildWithName:", "name"), "text");
        for (var i = 0; i < objj_msgSend(self._datasourceSnapshots, "count"); i++)
        {
            var obj = objj_msgSend(self._datasourceSnapshots, "objectAtIndex:", i);
            if (objj_msgSend(obj, "name") == name)
            {
                self._currentSnapshot = obj;
                objj_msgSend(obj, "setCurrent:", YES);
                break;
            }
        }
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusReady);
    }
    else if (objj_msgSend(aStanza, "type") == "ignore")
    {
        objj_msgSend(self.fieldInfo, "setStringValue:", CPBundleLocalizedString("There is no snapshot for this virtual machine", "There is no snapshot for this virtual machine"));
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusReady);
    }
    else if (objj_msgSend(aStanza, "type") == "error")
    {
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusError);
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    objj_msgSend(self._outlineViewSnapshots, "reloadData");
    objj_msgSend(self._outlineViewSnapshots, "recoverExpandedWithBaseKey:itemKeyPath:", TNArchipelSnapshotsOpenedSnapshots, "name");
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("takeSnapshot"), function $TNVirtualMachineSnapshotsController__takeSnapshot(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set"),
        uuid = objj_msgSend(CPString, "UUID");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorSnapshot});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorSnapshotTake});
    objj_msgSend(stanza, "addChildWithName:", "domainsnapshot");
    objj_msgSend(stanza, "addChildWithName:", "name");
    objj_msgSend(stanza, "addTextNode:", objj_msgSend(self.fieldNewSnapshotName, "stringValue"));
    objj_msgSend(stanza, "up");
    objj_msgSend(stanza, "addChildWithName:", "description");
    objj_msgSend(stanza, "addTextNode:", objj_msgSend(objj_msgSend(self.fieldNewSnapshotDescription, "stringValue"), "stringByReplacingOccurrencesOfString:withString:", "\n", ""));
    objj_msgSend(stanza, "up");
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didTakeSnapshot:"));
    objj_msgSend(self.popoverNewSnapshot, "close");
    objj_msgSend(self.fieldNewSnapshotName, "setStringValue:", "");
    objj_msgSend(self.fieldNewSnapshotDescription, "setStringValue:", "");
}
,["void"]), new objj_method(sel_getUid("_didTakeSnapshot:"), function $TNVirtualMachineSnapshotsController___didTakeSnapshot_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Snapshoting sucessfull", "Snapshoting sucessfull"));
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("deleteSnapshot"), function $TNVirtualMachineSnapshotsController__deleteSnapshot(self, _cmd)
{
    var selectedIndexes = objj_msgSend(self._outlineViewSnapshots, "selectedRowIndexes");
    if (objj_msgSend(selectedIndexes, "count") > 1)
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("You must select only one snapshot", "You must select only one snapshot"), TNGrowlIconError);
        return;
    }
    if (objj_msgSend(self._outlineViewSnapshots, "numberOfSelectedRows") == 0)
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("You must select one snapshot", "You must select one snapshot"), TNGrowlIconError);
        return;
    }
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Delete to snapshot", "Delete to snapshot"), CPBundleLocalizedString("Are you sure you want to destory this snapshot ? this is not reversible.", "Are you sure you want to destory this snapshot ? this is not reversible."), self, [[CPBundleLocalizedString("Delete", "Delete"), sel_getUid("performDeleteSnapshot:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "runModal");
}
,["void"]), new objj_method(sel_getUid("performDeleteSnapshot:"), function $TNVirtualMachineSnapshotsController__performDeleteSnapshot_(self, _cmd, someUserInfo)
{
    var selectedIndexes = objj_msgSend(self._outlineViewSnapshots, "selectedRowIndexes"),
        stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set"),
        object = objj_msgSend(self._outlineViewSnapshots, "itemAtRow:", objj_msgSend(selectedIndexes, "firstIndex")),
        name = objj_msgSend(object, "name");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorSnapshot});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorSnapshotDelete,
        "name": name});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didDeleteSnapshot:"));
}
,["void","id"]), new objj_method(sel_getUid("_didDeleteSnapshot:"), function $TNVirtualMachineSnapshotsController___didDeleteSnapshot_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Snapshot deleted", "Snapshot deleted"));
    }
    else if (objj_msgSend(aStanza, "type") == "error")
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("revertSnapshot"), function $TNVirtualMachineSnapshotsController__revertSnapshot(self, _cmd)
{
    if (objj_msgSend(self._outlineViewSnapshots, "numberOfSelectedRows") == 0)
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("You must select one snapshot", "You must select one snapshot"), TNGrowlIconError);
        return;
    }
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Revert to snapshot", "Revert to snapshot"), CPBundleLocalizedString("Are you sure you want to revert to this snasphot ? All unsnapshoted changes will be lost.", "Are you sure you want to revert to this snasphot ? All unsnapshoted changes will be lost."), self, [[CPBundleLocalizedString("Revert", "Revert"), sel_getUid("performRevertSnapshot:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "runModal");
}
,["void"]), new objj_method(sel_getUid("performRevertSnapshot:"), function $TNVirtualMachineSnapshotsController__performRevertSnapshot_(self, _cmd, someUserInfo)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set"),
        selectedIndexes = objj_msgSend(self._outlineViewSnapshots, "selectedRowIndexes");
    if (objj_msgSend(selectedIndexes, "count") > 1)
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("You must select only one snapshot", "You must select only one snapshot"), TNGrowlIconError);
        return;
    }
    var object = objj_msgSend(self._outlineViewSnapshots, "itemAtRow:", objj_msgSend(selectedIndexes, "firstIndex")),
        name = objj_msgSend(object, "name");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorSnapshot});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorSnapshotRevert,
        "name": name});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didRevertSnapshot:"));
}
,["void","id"]), new objj_method(sel_getUid("_didRevertSnapshot:"), function $TNVirtualMachineSnapshotsController___didRevertSnapshot_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Snapshot sucessfully reverted", "Snapshot sucessfully reverted"));
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("outlineViewSelectionDidChange:"), function $TNVirtualMachineSnapshotsController__outlineViewSelectionDidChange_(self, _cmd, aNotification)
{
    objj_msgSend(self._revertButton, "setEnabled:", NO);
    objj_msgSend(self._minusButton, "setEnabled:", NO);
    if (objj_msgSend(self._outlineViewSnapshots, "numberOfSelectedRows") > 0)
    {
        objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._minusButton, "snapshot_delete");
        objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._revertButton, "snapshot_revert");
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("outlineViewItemWillExpand:"), function $TNVirtualMachineSnapshotsController__outlineViewItemWillExpand_(self, _cmd, aNotification)
{
    var item = objj_msgSend(objj_msgSend(aNotification, "userInfo"), "valueForKey:", "CPObject"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        key = TNArchipelSnapshotsOpenedSnapshots + objj_msgSend(item, "name");
    objj_msgSend(defaults, "setObject:forKey:", "expanded", key);
}
,["void","CPNotification"]), new objj_method(sel_getUid("outlineViewItemWillCollapse:"), function $TNVirtualMachineSnapshotsController__outlineViewItemWillCollapse_(self, _cmd, aNotification)
{
    var item = objj_msgSend(objj_msgSend(aNotification, "userInfo"), "valueForKey:", "CPObject"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        key = TNArchipelSnapshotsOpenedSnapshots + objj_msgSend(item, "name");
    objj_msgSend(defaults, "setObject:forKey:", "collapsed", key);
}
,["void","CPNotification"]), new objj_method(sel_getUid("tableView:heightOfRow:"), function $TNVirtualMachineSnapshotsController__tableView_heightOfRow_(self, _cmd, aTableView, aRow)
{
    return 10.0;
}
,["int","CPTableView","int"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNVirtualMachineSnapshotsController), comment);
}e;