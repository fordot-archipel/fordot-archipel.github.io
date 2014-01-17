@STATIC;1.0;p;31;TNDragDropTableViewDataSource.jt;2236;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPTableView.jI;29;TNKit/TNTableViewDataSource.jt;2130;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
var TNDragTypeMigration = "TNDragTypeMigration";
{var the_class = objj_allocateClassPair(TNTableViewDataSource, "TNDragDropTableViewDataSource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_draggedItem")]);

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("tableView:writeRowsWithIndexes:toPasteboard:"), function $TNDragDropTableViewDataSource__tableView_writeRowsWithIndexes_toPasteboard_(self, _cmd, tableView, rowIndexes, pboard)
{
    self._draggedItem = objj_msgSend(self._content, "objectAtIndex:", objj_msgSend(rowIndexes, "firstIndex"));
    objj_msgSend(pboard, "declareTypes:owner:", [TNDragTypeMigration], nil);
    objj_msgSend(pboard, "setData:forType:", objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", self._draggedItem), TNDragTypeMigration);
    return YES;
}
,["BOOL","CPTableView","CPIndexSet","CPPasteboard"]), new objj_method(sel_getUid("tableView:validateDrop:proposedRow:proposedDropOperation:"), function $TNDragDropTableViewDataSource__tableView_validateDrop_proposedRow_proposedDropOperation_(self, _cmd, aTableView, info, row, operation)
{
    objj_msgSend(aTableView, "setDropRow:dropOperation:", row, CPTableViewDropAbove);
    return CPDragOperationDelete;
}
,["CPDragOperation","CPTableView","id","CPInteger","CPTableViewDropOperation"]), new objj_method(sel_getUid("tableView:acceptDrop:row:dropOperation:"), function $TNDragDropTableViewDataSource__tableView_acceptDrop_row_dropOperation_(self, _cmd, tableView, info, row, operation)
{
    var pboard = objj_msgSend(info, "draggingPasteboard"),
        data = objj_msgSend(pboard, "dataForType:", TNDragTypeMigration),
        object = objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", self._draggedItem);
    objj_msgSend(self._content, "insertObject:atIndex:", object, row);
    objj_msgSend(tableView, "reloadData");
    return YES;
}
,["BOOL","CPTableView","id","int","CPTableViewDropOperation"])]);
}p;21;TNMapViewController.jt;17553;@STATIC;1.0;I;23;Foundation/Foundation.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPSplitView.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;15;TNKit/TNAlert.jI;37;StropheCappuccino/TNStropheIMClient.ji;22;../../Model/TNModule.ji;18;MapKit/MKMapView.ji;31;TNDragDropTableViewDataSource.jt;17235;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPSplitView.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("MapKit/MKMapView.j", YES);;
objj_executeFile("TNDragDropTableViewDataSource.j", YES);;
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global TNArchipelEntityTypeHypervisor
//@global TNArchipelEntityTypeVirtualMachine
var TNArchipelTypeHypervisorControl = "archipel:hypervisor:control",
    TNArchipelTypeHypervisorControlAlloc = "alloc",
    TNArchipelTypeHypervisorControlFree = "free",
    TNArchipelTypeHypervisorControlRosterVM = "rostervm",
    TNArchipelTypeHypervisorGeolocalization = "archipel:hypervisor:geolocalization",
    TNArchipelTypeHypervisorGeolocalizationGet = "get",
    TNArchipelTypeVirtualMachineControl = "archipel:vm:control",
    TNArchipelTypeVirtualMachineControlMigrate = "migrate";
{var the_class = objj_allocateClassPair(TNModule, "TNMapViewController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("filterFieldDestination"), new objj_ivar("filterFieldOrigin"), new objj_ivar("splitViewHorizontal"), new objj_ivar("splitViewVertical"), new objj_ivar("textFieldDestinationName"), new objj_ivar("textFieldDestinationNameLabel"), new objj_ivar("textFieldOriginName"), new objj_ivar("textFieldOriginNameLabel"), new objj_ivar("mapViewContainer"), new objj_ivar("viewDestination"), new objj_ivar("viewOrigin"), new objj_ivar("tableVMDestination"), new objj_ivar("tableVMOrigin"), new objj_ivar("_mainMapView"), new objj_ivar("_dataSourceVMDestination"), new objj_ivar("_dataSourceVMOrigin"), new objj_ivar("_destinationHypervisor"), new objj_ivar("_originHypervisor")]);
       
       


       
       


       
       







       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNMapViewController__awakeFromCib(self, _cmd)
{
    var posy,
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")),
        gradBG = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "gradientbg.png"));
    objj_msgSend(self.viewOrigin, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", gradBG));
    objj_msgSend(self.viewDestination, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", gradBG));
    objj_msgSend(self.textFieldOriginNameLabel, "setTextShadowOffset:", CGSizeMake(0.0, 1.0));
    objj_msgSend(self.textFieldDestinationNameLabel, "setTextShadowOffset:", CGSizeMake(0.0, 1.0));
    objj_msgSend(self.textFieldOriginName, "setTextShadowOffset:", CGSizeMake(0.0, 1.0));
    objj_msgSend(self.textFieldDestinationName, "setTextShadowOffset:", CGSizeMake(0.0, 1.0));
    objj_msgSend(self.textFieldOriginNameLabel, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithHexString:", "C4CAD6"), "text-shadow-color", CPThemeStateNormal);
    objj_msgSend(self.textFieldDestinationNameLabel, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithHexString:", "C4CAD6"), "text-shadow-color", CPThemeStateNormal);
    objj_msgSend(self.textFieldOriginName, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithHexString:", "C4CAD6"), "text-shadow-color", CPThemeStateNormal);
    objj_msgSend(self.textFieldDestinationName, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithHexString:", "C4CAD6"), "text-shadow-color", CPThemeStateNormal);
    objj_msgSend(self.textFieldOriginNameLabel, "setTextColor:", objj_msgSend(CPColor, "colorWithHexString:", "00000"));
    objj_msgSend(self.textFieldOriginName, "setTextColor:", objj_msgSend(CPColor, "colorWithHexString:", "00000"));
    objj_msgSend(self.textFieldDestinationNameLabel, "setTextColor:", objj_msgSend(CPColor, "colorWithHexString:", "00000"));
    objj_msgSend(self.textFieldDestinationName, "setTextColor:", objj_msgSend(CPColor, "colorWithHexString:", "00000"));
    var posy;
    if (posy = objj_msgSend(defaults, "integerForKey:", "TNArchipelMapViewSplitViewPosition"))
        objj_msgSend(self.splitViewHorizontal, "setPosition:ofDividerAtIndex:", posy, 0);
    objj_msgSend(self.splitViewHorizontal, "setDelegate:", self);
    objj_msgSend(self.mapViewContainer, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
    objj_msgSend(self.splitViewVertical, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
    self._dataSourceVMOrigin = objj_msgSend(objj_msgSend(TNDragDropTableViewDataSource, "alloc"), "init");
    objj_msgSend(self._dataSourceVMOrigin, "setTable:", self.tableVMOrigin);
    objj_msgSend(self._dataSourceVMOrigin, "setSearchableKeyPaths:", ["name", "JID.bare"]);
    objj_msgSend(self.filterFieldOrigin, "setTarget:", self._dataSourceVMOrigin);
    objj_msgSend(self.filterFieldOrigin, "setAction:", sel_getUid("filterObjects:"));
    self._dataSourceVMDestination = objj_msgSend(objj_msgSend(TNDragDropTableViewDataSource, "alloc"), "init");
    objj_msgSend(self._dataSourceVMDestination, "setTable:", self.tableVMDestination);
    objj_msgSend(self._dataSourceVMDestination, "setSearchableKeyPaths:", ["name", "JID.bare"]);
    objj_msgSend(self.filterFieldDestination, "setTarget:", self._dataSourceVMDestination);
    objj_msgSend(self.filterFieldDestination, "setAction:", sel_getUid("filterObjects:"));
}
,["id"]), new objj_method(sel_getUid("willShow"), function $TNMapViewController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNMapViewController").super_class }, "willShow"))
        return NO;
    self._mainMapView = objj_msgSend(objj_msgSend(MKMapView, "alloc"), "initWithFrame:apiKey:", objj_msgSend(self.mapViewContainer, "bounds"), '');
    objj_msgSend(self._mainMapView, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
    objj_msgSend(self._mainMapView, "setDelegate:", self);
    objj_msgSend(self.tableVMOrigin, "setDelegate:", nil);
    objj_msgSend(self.tableVMOrigin, "setDelegate:", self);
    objj_msgSend(self.tableVMDestination, "setDelegate:", nil);
    objj_msgSend(self.tableVMDestination, "setDelegate:", self);
    objj_msgSend(self.mapViewContainer, "addSubview:", self._mainMapView);
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        posy;
    if (posy = objj_msgSend(defaults, "integerForKey:", "TNArchipelMapViewSplitViewPosition"))
        objj_msgSend(self.splitViewHorizontal, "setPosition:ofDividerAtIndex:", posy, 0);
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willHide"), function $TNMapViewController__willHide(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNMapViewController").super_class }, "willHide");
    objj_msgSend(self._mainMapView, "clearOverlays");
    objj_msgSend(self._mainMapView, "setDelegate:", nil);
    objj_msgSend(self._mainMapView, "removeFromSuperview");
    objj_msgSend(self._mainMapView, "clean");
    self._mainMapView = nil;
}
,["void"]), new objj_method(sel_getUid("setOriginHypervisor:"), function $TNMapViewController__setOriginHypervisor_(self, _cmd, anItem)
{
    self._originHypervisor = anItem;
    objj_msgSend(self.textFieldOriginName, "setStringValue:", objj_msgSend(anItem, "name"));
    objj_msgSend(self, "rosterOfHypervisor:", anItem);
}
,["void","id"]), new objj_method(sel_getUid("setDestinationHypervisor:"), function $TNMapViewController__setDestinationHypervisor_(self, _cmd, anItem)
{
    self._destinationHypervisor= anItem;
    objj_msgSend(self.textFieldDestinationName, "setStringValue:", objj_msgSend(anItem, "name"));
    objj_msgSend(self, "rosterOfHypervisor:", anItem);
}
,["void","id"]), new objj_method(sel_getUid("locationOfHypervisor:"), function $TNMapViewController__locationOfHypervisor_(self, _cmd, anHypervisor)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorGeolocalization});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorGeolocalizationGet});
    objj_msgSend(anHypervisor, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceivedGeolocalization:"), self);
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("_didReceivedGeolocalization:"), function $TNMapViewController___didReceivedGeolocalization_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        try
        {
            var latitude = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "Latitude"), "text"),
                longitude = objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "Longitude"), "text"),
                item = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contactWithJID:", objj_msgSend(aStanza, "from")),
                loc = objj_msgSend(objj_msgSend(MKLocation, "alloc"), "initWithLatitude:andLongitude:", latitude, longitude),
                marker = objj_msgSend(objj_msgSend(MKMarker, "alloc"), "initAtLocation:", loc);
            objj_msgSend(marker, "setDraggable:", NO);
            objj_msgSend(marker, "setClickable:", YES);
            objj_msgSend(marker, "setDelegate:", self);
            objj_msgSend(marker, "setUserInfo:", objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", item, "rosterItem"));
            objj_msgSend(marker, "addToMapView:", self._mainMapView);
            objj_msgSend(self._mainMapView, "setCenter:", loc);
        }
        catch(e)
        {
            CPLog.warn("The map view has been removed. this happens when the module is hidden while loading info");
        }
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("rosterOfHypervisor:"), function $TNMapViewController__rosterOfHypervisor_(self, _cmd, anHypervisor)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorControlRosterVM});
    if (anHypervisor === self._originHypervisor)
        objj_msgSend(anHypervisor, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveOriginHypervisorRoster:"), self);
    else
        objj_msgSend(anHypervisor, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveDestinationHypervisorRoster:"), self);
}
,["void","TNStropheContact"]), new objj_method(sel_getUid("_didReceiveOriginHypervisorRoster:"), function $TNMapViewController___didReceiveOriginHypervisorRoster_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var queryItems = objj_msgSend(aStanza, "childrenWithName:", "item");
        objj_msgSend(self._dataSourceVMOrigin, "removeAllObjects");
        for (var i = 0; i < objj_msgSend(queryItems, "count"); i++)
        {
            var JID = objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(objj_msgSend(queryItems, "objectAtIndex:", i), "text")),
                entry = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contactWithJID:", JID);
            if (entry && (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(entry, "vCard")) == TNArchipelEntityTypeVirtualMachine))
                objj_msgSend(self._dataSourceVMOrigin, "addObject:", entry);
        }
        objj_msgSend(self.tableVMOrigin, "reloadData");
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("_didReceiveDestinationHypervisorRoster:"), function $TNMapViewController___didReceiveDestinationHypervisorRoster_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var queryItems = objj_msgSend(aStanza, "childrenWithName:", "item");
        objj_msgSend(self._dataSourceVMDestination, "removeAllObjects");
        for (var i = 0; i < objj_msgSend(queryItems, "count"); i++)
        {
            var JID = objj_msgSend(TNStropheJID, "stropheJIDWithString:", objj_msgSend(objj_msgSend(queryItems, "objectAtIndex:", i), "text")),
                entry = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contactWithJID:", JID);
            if (entry && (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(entry, "vCard")) == TNArchipelEntityTypeVirtualMachine))
                objj_msgSend(self._dataSourceVMDestination, "addObject:", entry);
        }
        objj_msgSend(self.tableVMDestination, "reloadData");
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("migrate:toHypervisor:"), function $TNMapViewController__migrate_toHypervisor_(self, _cmd, aVirualMachine, aHypervisor)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineControlMigrate,
        "hypervisorjid": objj_msgSend(aHypervisor, "fullJID")});
    objj_msgSend(aVirualMachine, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didMigrate:"), self);
}
,["void","TNStropheContact","TNStropheContact"]), new objj_method(sel_getUid("_didMigrate:"), function $TNMapViewController___didMigrate_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Migration has started. It can take a while", "Migration has started. It can take a while"));
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("mapViewIsReady:"), function $TNMapViewController__mapViewIsReady_(self, _cmd, aMapView)
{
    objj_msgSend(self._mainMapView, "setZoom:", 2);
    objj_msgSend(self._mainMapView, "physicalMode");
    var rosterItems = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contacts");
    for (var i = 0; i < objj_msgSend(rosterItems, "count"); i++)
    {
        var item = objj_msgSend(rosterItems, "objectAtIndex:", i);
        if (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(item, "vCard")) == TNArchipelEntityTypeHypervisor)
            objj_msgSend(self, "locationOfHypervisor:", item)
    }
}
,["void","MKMapView"]), new objj_method(sel_getUid("markerClicked:userInfo:"), function $TNMapViewController__markerClicked_userInfo_(self, _cmd, aMarker, someUserInfo)
{
    var item = objj_msgSend(someUserInfo, "objectForKey:", "rosterItem"),
        alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Define path", "Define path"), CPBundleLocalizedString("Please choose if this ", "Please choose if this ") + objj_msgSend(item, "name") + CPBundleLocalizedString(" is origin or destination of the migration.", " is origin or destination of the migration."), self, [[CPBundleLocalizedString("Cancel", "Cancel"), nil], [CPBundleLocalizedString("Destination", "Destination"), sel_getUid("setDestinationHypervisor:")], [CPBundleLocalizedString("Origin", "Origin"), sel_getUid("setOriginHypervisor:")]]);
    objj_msgSend(alert, "setUserInfo:", item);
    objj_msgSend(alert, "runModal");
}
,["void","MKMarker","CPDictionary"]), new objj_method(sel_getUid("splitViewDidResizeSubviews:"), function $TNMapViewController__splitViewDidResizeSubviews_(self, _cmd, aNotification)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        splitView = objj_msgSend(aNotification, "object"),
        newPos = objj_msgSend(splitView, "rectOfDividerAtIndex:", 0).origin.y;
    objj_msgSend(defaults, "setInteger:forKey:", newPos, "TNArchipelMapViewSplitViewPosition");
}
,["void","CPNotification"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNMapViewController), comment);
}p;19;MapKit/MKLocation.jt;2469;@STATIC;1.0;I;21;Foundation/CPObject.jt;2424;

objj_executeFile("Foundation/CPObject.j", NO);

//@class MKMapView

{var the_class = objj_allocateClassPair(CPObject, "MKLocation"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_latitude"), new objj_ivar("_longitude")]);









objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("latitude"), function $MKLocation__latitude(self, _cmd)
{
return self._latitude;
}
,["float"]), new objj_method(sel_getUid("setLatitude:"), function $MKLocation__setLatitude_(self, _cmd, newValue)
{
self._latitude = newValue;
}
,["void","float"]), new objj_method(sel_getUid("longitude"), function $MKLocation__longitude(self, _cmd)
{
return self._longitude;
}
,["float"]), new objj_method(sel_getUid("setLongitude:"), function $MKLocation__setLongitude_(self, _cmd, newValue)
{
self._longitude = newValue;
}
,["void","float"]), new objj_method(sel_getUid("initWithLatLng:"), function $MKLocation__initWithLatLng_(self, _cmd, aLatLng)
{
    return objj_msgSend(self, "initWithLatitude:andLongitude:", aLatLng.lat(), aLatLng.lng());
}
,["id","LatLng"]), new objj_method(sel_getUid("initWithLatitude:andLongitude:"), function $MKLocation__initWithLatitude_andLongitude_(self, _cmd, aLat, aLng)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("MKLocation").super_class }, "init"))
    {
        self._latitude = aLat;
        self._longitude = aLng;
    }
    return self;
}
,["id","float","float"]), new objj_method(sel_getUid("googleLatLng"), function $MKLocation__googleLatLng(self, _cmd)
{
    var gm = objj_msgSend(MKMapView, "gmNamespace");
    return new gm.LatLng(self._latitude, self._longitude);
}
,["LatLng"]), new objj_method(sel_getUid("encodeWithCoder:"), function $MKLocation__encodeWithCoder_(self, _cmd, coder)
{
    objj_msgSend(coder, "encodeObject:forKey:", [self._latitude, self._longitude], "location");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("location"), function $MKLocation__location(self, _cmd)
{
    return objj_msgSend(objj_msgSend(MKLocation, "alloc"), "init");
}
,["MKLocation"]), new objj_method(sel_getUid("locationWithLatitude:andLongitude:"), function $MKLocation__locationWithLatitude_andLongitude_(self, _cmd, aLat, aLng)
{
    return objj_msgSend(objj_msgSend(MKLocation, "alloc"), "initWithLatitude:andLongitude:", aLat, aLng);
}
,["MKLocation","float","float"])]);
}p;18;MapKit/MKMapItem.jt;414;@STATIC;1.0;I;23;Foundation/Foundation.jt;368;


objj_executeFile("Foundation/Foundation.j", NO);

{var the_class = objj_allocateClassPair(CPObject, "MKMapItem"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("typeName"), function $MKMapItem__typeName(self, _cmd)
{
    return objj_msgSend(self, "className").substring(2);
}
,["String"])]);
}p;19;MapKit/MKMapScene.jt;4861;@STATIC;1.0;I;23;Foundation/Foundation.jt;4814;

objj_executeFile("Foundation/Foundation.j", NO);

//@class MKMapView
//@class MKMapItem
//@class MKMarker


{var the_class = objj_allocateClassPair(CPObject, "MKMapScene"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_mapView"), new objj_ivar("_mapItems"), new objj_ivar("_readConnection")]);




















objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("mapView"), function $MKMapScene__mapView(self, _cmd)
{
return self._mapView;
}
,["MKMapView"]), new objj_method(sel_getUid("setMapView:"), function $MKMapScene__setMapView_(self, _cmd, newValue)
{
self._mapView = newValue;
}
,["void","MKMapView"]), new objj_method(sel_getUid("initWithMapView:"), function $MKMapScene__initWithMapView_(self, _cmd, mapView)
{

    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("MKMapScene").super_class }, "init"))
    {
        self._mapView = mapView;
        self._mapItems = objj_msgSend(objj_msgSend(CPArray, "alloc"), "init");
    }
    return self;
}
,["id","MKMapView"]), new objj_method(sel_getUid("json"), function $MKMapScene__json(self, _cmd)
{
    return CPJSObjectCreateJSON({
        mapItems: objj_msgSend(self, "mapItemsAsJSObject")
    });
}
,["String"]), new objj_method(sel_getUid("saveToURL:"), function $MKMapScene__saveToURL_(self, _cmd, anURL)
{
    var request = objj_msgSend(CPURLRequest, "requestWithURL:", anURL);

    objj_msgSend(request, "setHTTPMethod:", "POST");
    objj_msgSend(request, "setHTTPBody:", "data=" + objj_msgSend(self, "json"));

    objj_msgSend(request, "setValue:forHTTPHeaderField:", "close", "Connection");



    var connection = objj_msgSend(CPURLConnection, "connectionWithRequest:delegate:", request, self);
}
,["BOOL","CPURL"]), new objj_method(sel_getUid("readFromURL:"), function $MKMapScene__readFromURL_(self, _cmd, anURL)
{

    objj_msgSend(self._readConnection, "cancel");
    self._readConnection = objj_msgSend(CPURLConnection, "connectionWithRequest:delegate:", objj_msgSend(CPURLRequest, "requestWithURL:", anURL), self);
}
,["BOOL","CPURL"]), new objj_method(sel_getUid("connection:didFailWithError:"), function $MKMapScene__connection_didFailWithError_(self, _cmd, aConnection, anError)
{
    if (aConnection == self._readConnection)
    {
        alert('Load failed! ' + anError);
        self._readConnection = nil;
    }
    else
    {
        alert('Save failed! ' + anError);
    }
}
,["void","CPURLConnection","CPError"]), new objj_method(sel_getUid("connection:didReceiveData:"), function $MKMapScene__connection_didReceiveData_(self, _cmd, aConnection, aData)
{
    if (aConnection == self._readConnection)
    {
        var aData = aData.replace('while(1);', ''),
            mapItems = CPJSObjectCreateWithJSON(aData),
            gm = objj_msgSend(MKMapView, "gmNamespace");

        for (var i in mapItems)
        {
            var mapItem = mapItems[i];
            objj_msgSend(self, "addMapItem:", objj_msgSend(objj_msgSend(MKMarker, "alloc"), "initAtLocation:", new gm.LatLng(mapItem.anchor.y, mapItem.anchor.x)));
        }
    }
}
,["void","CPURLConnection","CPString"]), new objj_method(sel_getUid("connectionDidFinishLoading:"), function $MKMapScene__connectionDidFinishLoading_(self, _cmd, aConnection)
{
    if (aConnection == self._readConnection)
    {
        alert('Loaded successfully!');
        self._readConnection = nil;
    }
    else
    {
        alert('Saved successfully!');
    }
}
,["void","CPURLConnection"]), new objj_method(sel_getUid("mapItemsAsJSObject"), function $MKMapScene__mapItemsAsJSObject(self, _cmd)
{
    var items = [],
        enumerator = objj_msgSend(self._mapItems, "objectEnumerator"),
        item;

    while (item = objj_msgSend(enumerator, "nextObject"))
    {
        items.push({
            'class': objj_msgSend(item, "typeName"),
            'anchor': [objj_msgSend(item, "location").lng(), objj_msgSend(item, "location").lat()]
        });
    }
    return items;
}
,["Object"]), new objj_method(sel_getUid("initWithCoder:"), function $MKMapScene__initWithCoder_(self, _cmd, coder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("MKMapScene").super_class }, "init"))
    {
        self._mapItems = objj_msgSend(coder, "decodeObjectForKey:", "mapItems");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $MKMapScene__encodeWithCoder_(self, _cmd, coder)
{
    objj_msgSend(coder, "encodeObject:forKey:", self._mapItems, "mapItems");
}
,["void","CPCoder"]), new objj_method(sel_getUid("addMapItem:"), function $MKMapScene__addMapItem_(self, _cmd, mapItem)
{
    objj_msgSend(self._mapItems, "addObject:", mapItem);
    objj_msgSend(self._mapView, "addMapItem:", mapItem);
}
,["void","MKMapItem"])]);
}p;18;MapKit/MKMapView.jt;7311;@STATIC;1.0;I;18;AppKit/CPWebView.ji;12;MKLocation.ji;12;MKMapScene.ji;10;MKMarker.ji;12;MKPolyline.jt;7203;

objj_executeFile("AppKit/CPWebView.j", NO);

objj_executeFile("MKLocation.j", YES);
objj_executeFile("MKMapScene.j", YES);
objj_executeFile("MKMarker.j", YES);
objj_executeFile("MKPolyline.j", YES);



var gmNamespace = nil;


{var the_class = objj_allocateClassPair(CPWebView, "MKMapView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_delegate"), new objj_ivar("_gMap"), new objj_ivar("_scene"), new objj_ivar("_googleAjaxLoaded"), new objj_ivar("_hasLoaded"), new objj_ivar("_mapReady"), new objj_ivar("_apiKey"), new objj_ivar("_DOMMapElement")]);





























objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $MKMapView__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $MKMapView__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("gMap"), function $MKMapView__gMap(self, _cmd)
{
return self._gMap;
}
,["JSObject"]), new objj_method(sel_getUid("setGMap:"), function $MKMapView__setGMap_(self, _cmd, newValue)
{
self._gMap = newValue;
}
,["void","JSObject"]), new objj_method(sel_getUid("scene"), function $MKMapView__scene(self, _cmd)
{
return self._scene;
}
,["MKMapScene"]), new objj_method(sel_getUid("setScene:"), function $MKMapView__setScene_(self, _cmd, newValue)
{
self._scene = newValue;
}
,["void","MKMapScene"]), new objj_method(sel_getUid("initWithFrame:apiKey:"), function $MKMapView__initWithFrame_apiKey_(self, _cmd, aFrame, apiKey)
{
    self._apiKey = apiKey;

    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("MKMapView").super_class }, "initWithFrame:", aFrame))
    {
        self._scene = objj_msgSend(objj_msgSend(MKMapScene, "alloc"), "initWithMapView:", self);

        var bounds = objj_msgSend(self, "bounds"),
            bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class"));

        objj_msgSend(self, "setFrameLoadDelegate:", self);
        objj_msgSend(self, "setMainFrameURL:", objj_msgSend(bundle, "pathForResource:", "map.html"));
    }

    return self;
}
,["id","CGRect","CPString"]), new objj_method(sel_getUid("webView:didFinishLoadForFrame:"), function $MKMapView__webView_didFinishLoadForFrame_(self, _cmd, aWebView, aFrame)
{

    if (!self._hasLoaded)
    {
        objj_msgSend(self, "loadGoogleMapsWhenReady");
    }
    self._hasLoaded = YES;
}
,["void","CPWebView","id"]), new objj_method(sel_getUid("loadGoogleMapsWhenReady"), function $MKMapView__loadGoogleMapsWhenReady(self, _cmd)
{
    var domWin = objj_msgSend(self, "DOMWindow");

    if (typeof(domWin.google) === 'undefined')
    {
        domWin.window.setTimeout(function() {objj_msgSend(self, "loadGoogleMapsWhenReady");}, 100);
    }
    else
    {
        var googleScriptElement = domWin.document.createElement('script');

        domWin.mapsJsLoaded = function () {

            self._googleAjaxLoaded = YES;
            self._DOMMapElement = domWin.document.getElementById('MKMapViewDiv');
            objj_msgSend(self, "createMap");
        };
        googleScriptElement.innerHTML = "google.load('maps', '2', {'callback': mapsJsLoaded});"
        domWin.document.getElementsByTagName('head')[0].appendChild(googleScriptElement);
    }
}
,["void"]), new objj_method(sel_getUid("createMap"), function $MKMapView__createMap(self, _cmd)
{
    var domWin = objj_msgSend(self, "DOMWindow");

    if (!gmNamespace)
    {
        gmNamespace = domWin.google.maps;
    }


    var localGmNamespace = domWin.google.maps;

    self._gMap = new localGmNamespace.Map2(self._DOMMapElement);
    self._gMap.setMapType(localGmNamespace.PHYSICAL_MAP);
    self._gMap.setUIToDefault();
    self._gMap.enableContinuousZoom();
    self._gMap.setCenter(new localGmNamespace.LatLng(52, -1), 8);
    self._gMap.setZoom(6);


    localGmNamespace.Event.addDomListener(document.body, 'mouseup', function() { try { localGmNamespace.Event.trigger(domWin, 'mouseup'); } catch(e){} });

    self._mapReady = YES;

    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("mapViewIsReady:")))
    {
        objj_msgSend(self._delegate, "mapViewIsReady:", self);
    }
}
,["void"]), new objj_method(sel_getUid("setFrameSize:"), function $MKMapView__setFrameSize_(self, _cmd, aSize)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("MKMapView").super_class }, "setFrameSize:", aSize);

    var bounds = objj_msgSend(self, "bounds");
    if (self._gMap)
    {
        self._gMap.checkResize();
    }
}
,["void","CGSize"]), new objj_method(sel_getUid("_resizeWebFrame"), function $MKMapView___resizeWebFrame(self, _cmd)
{
    var width = objj_msgSend(self, "bounds").size.width,
        height = objj_msgSend(self, "bounds").size.height;

    self._iframe.setAttribute("width", width);
    self._iframe.setAttribute("height", height);

    objj_msgSend(self._frameView, "setFrameSize:", CGSizeMake(width, height));
}
,["BOOL"]), new objj_method(sel_getUid("viewDidMoveToSuperview"), function $MKMapView__viewDidMoveToSuperview(self, _cmd)
{
    if (!self._mapReady && self._googleAjaxLoaded)
    {
        objj_msgSend(self, "createMap");
    }
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("MKMapView").super_class }, "viewDidMoveToSuperview");
}
,["void"]), new objj_method(sel_getUid("setCenter:"), function $MKMapView__setCenter_(self, _cmd, aLocation)
{
    if (self._mapReady)
    {
        self._gMap.setCenter(objj_msgSend(aLocation, "googleLatLng"));
    }
}
,["void","MKLocation"]), new objj_method(sel_getUid("setZoom:"), function $MKMapView__setZoom_(self, _cmd, zoomLevel)
{
    if (self._mapReady)
    {
        self._gMap.setZoom(zoomLevel);
    }
}
,["void","int"]), new objj_method(sel_getUid("addMarker:atLocation:"), function $MKMapView__addMarker_atLocation_(self, _cmd, aMarker, aLocation)
{
    if (self._mapReady)
    {
        var gMarker = objj_msgSend(aMarker, "gMarker");

        gMarker.setLatLng(objj_msgSend(aLocation, "googleLatLng"));
        self._gMap.addOverlay(gMarker);
    }
    else
    {

    }
    return aMarker;
}
,["MKMarker","MKMarker","MKLocation"]), new objj_method(sel_getUid("clearOverlays"), function $MKMapView__clearOverlays(self, _cmd)
{
    if (self._mapReady)
    {
        self._gMap.clearOverlays();
    }
}
,["void"]), new objj_method(sel_getUid("addMapItem:"), function $MKMapView__addMapItem_(self, _cmd, mapItem)
{
    objj_msgSend(mapItem, "addToMapView:", self);
}
,["void","MKMapItem"]), new objj_method(sel_getUid("isMapReady"), function $MKMapView__isMapReady(self, _cmd)
{
    return self._mapReady;
}
,["BOOL"]), new objj_method(sel_getUid("physicalMode"), function $MKMapView__physicalMode(self, _cmd)
{
    if (self._mapReady)
    {
        self._gMap.setMapType(gmNamespace.PHYSICAL_MAP);
    }
}
,["void"]), new objj_method(sel_getUid("clean"), function $MKMapView__clean(self, _cmd)
{
    gmNamespace = nil;
}
,["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("gmNamespace"), function $MKMapView__gmNamespace(self, _cmd)
{
    return gmNamespace;
}
,["JSObject"])]);
}p;17;MapKit/MKMarker.jt;9209;@STATIC;1.0;I;15;AppKit/CPView.ji;11;MKMapItem.ji;12;MKLocation.jt;9137;

objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("MKMapItem.j", YES);
objj_executeFile("MKLocation.j", YES);

//@class MKMapView


{var the_class = objj_allocateClassPair(MKMapItem, "MKMarker"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_clickable"), new objj_ivar("_draggable"), new objj_ivar("_withShadow"), new objj_ivar("_iconUrl"), new objj_ivar("_shadowUrl"), new objj_ivar("_delegate"), new objj_ivar("_userInfo"), new objj_ivar("_gMarker"), new objj_ivar("_location"), new objj_ivar("_infoWindowHTML"), new objj_ivar("_eventHandlers")]);
























objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isClickable"), function $MKMarker__isClickable(self, _cmd)
{
return self._clickable;
}
,["BOOL"]), new objj_method(sel_getUid("setClickable:"), function $MKMarker__setClickable_(self, _cmd, newValue)
{
self._clickable = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isDraggable"), function $MKMarker__isDraggable(self, _cmd)
{
return self._draggable;
}
,["BOOL"]), new objj_method(sel_getUid("setDraggable:"), function $MKMarker__setDraggable_(self, _cmd, newValue)
{
self._draggable = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("withShadow"), function $MKMarker__withShadow(self, _cmd)
{
return self._withShadow;
}
,["BOOL"]), new objj_method(sel_getUid("setWithShadow:"), function $MKMarker__setWithShadow_(self, _cmd, newValue)
{
self._withShadow = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("iconUrl"), function $MKMarker__iconUrl(self, _cmd)
{
return self._iconUrl;
}
,["CPString"]), new objj_method(sel_getUid("setIconUrl:"), function $MKMarker__setIconUrl_(self, _cmd, newValue)
{
self._iconUrl = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("shadowUrl"), function $MKMarker__shadowUrl(self, _cmd)
{
return self._shadowUrl;
}
,["CPString"]), new objj_method(sel_getUid("setShadowUrl:"), function $MKMarker__setShadowUrl_(self, _cmd, newValue)
{
self._shadowUrl = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("delegate"), function $MKMarker__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $MKMarker__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("userInfo"), function $MKMarker__userInfo(self, _cmd)
{
return self._userInfo;
}
,["id"]), new objj_method(sel_getUid("setUserInfo:"), function $MKMarker__setUserInfo_(self, _cmd, newValue)
{
self._userInfo = newValue;
}
,["void","id"]), new objj_method(sel_getUid("gMarker"), function $MKMarker__gMarker(self, _cmd)
{
return self._gMarker;
}
,["Marker"]), new objj_method(sel_getUid("setGMarker:"), function $MKMarker__setGMarker_(self, _cmd, newValue)
{
self._gMarker = newValue;
}
,["void","Marker"]), new objj_method(sel_getUid("location"), function $MKMarker__location(self, _cmd)
{
return self._location;
}
,["MKLocation"]), new objj_method(sel_getUid("setLocation:"), function $MKMarker__setLocation_(self, _cmd, newValue)
{
self._location = newValue;
}
,["void","MKLocation"]), new objj_method(sel_getUid("initAtLocation:"), function $MKMarker__initAtLocation_(self, _cmd, aLocation)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("MKMarker").super_class }, "init"))
    {
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class"));

        self._location = aLocation;
        self._withShadow = NO;
        self._draggable = YES;
        self._clickable = YES;
        self._iconUrl = objj_msgSend(bundle, "pathForResource:", "pin.png");

        objj_msgSend(self, "addEventForName:withFunction:", "click", function(){
            if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("markerClicked:userInfo:")))
                objj_msgSend(self._delegate, "markerClicked:userInfo:", self, self._userInfo);
        });
    }
    return self;
}
,["id","MKLocation"]), new objj_method(sel_getUid("updateLocation"), function $MKMarker__updateLocation(self, _cmd)
{
    self._location = objj_msgSend(objj_msgSend(MKLocation, "alloc"), "initWithLatLng:", self._gMarker.getLatLng());

    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("mapMarker:didMoveToLocation:")))
    {
        objj_msgSend(self._delegate, "mapMarker:didMoveToLocation:", self, self._location);
    }
}
,["void"]), new objj_method(sel_getUid("setGoogleIcon:withShadow:"), function $MKMarker__setGoogleIcon_withShadow_(self, _cmd, anIconName, withShadow)
{
    self._withShadow = withShadow;

    if (anIconName)
    {
        self._iconUrl = "http://maps.google.com/mapfiles/ms/micons/" + anIconName + ".png"

        if (withShadow)
        {
            if (anIconName.match(/dot/) || anIconName.match(/(blue|green|lightblue|orange|pink|purple|red|yellow)$/))
            {
                self._shadowUrl = "http://maps.google.com/mapfiles/ms/micons/msmarker.shadow.png";
            }
            else if (anIconName.match(/pushpin/))
            {
                self._shadowUrl = "http://maps.google.com/mapfiles/ms/micons/pushpin_shadow.png";
            }
            else
            {
                self._shadowUrl = "http://maps.google.com/mapfiles/ms/micons/" + anIconName + ".shadow.png";
            }
        }
    }
    else
    {
        self._iconUrl = nil;
        self._shadowUrl = "http://maps.google.com/mapfiles/ms/micons/msmarker.shadow.png";
    }
}
,["void","CPString","BOOL"]), new objj_method(sel_getUid("setGoogleIcon:"), function $MKMarker__setGoogleIcon_(self, _cmd, anIconName)
{
    objj_msgSend(self, "setGoogleIcon:withShadow:", anIconName, YES);
}
,["void","CPString"]), new objj_method(sel_getUid("openInfoWindow"), function $MKMarker__openInfoWindow(self, _cmd)
{
    if (self._gMarker)
    {
        self._gMarker.closeInfoWindow();
        self._gMarker.openInfoWindowHtml(self._infoWindowHTML);
    }
}
,["void"]), new objj_method(sel_getUid("closeInfoWindow"), function $MKMarker__closeInfoWindow(self, _cmd)
{
    if (self._gMarker)
    {
        self._gMarker.closeInfoWindow();
    }
}
,["void"]), new objj_method(sel_getUid("setInfoWindowHTML:"), function $MKMarker__setInfoWindowHTML_(self, _cmd, someHTML)
{
   objj_msgSend(self, "setInfoWindowHTML:openOnClick:", someHTML, NO);
}
,["void","CPString"]), new objj_method(sel_getUid("setInfoWindowHTML:openOnClick:"), function $MKMarker__setInfoWindowHTML_openOnClick_(self, _cmd, someHTML, shouldOpenOnClick)
{
    self._infoWindowHTML = someHTML;

    if (shouldOpenOnClick)
    {
        objj_msgSend(self, "addEventForName:withFunction:", "click", function() {objj_msgSend(self, "openInfoWindow");});
    }
}
,["void","CPString","BOOL"]), new objj_method(sel_getUid("infoWindowHTML"), function $MKMarker__infoWindowHTML(self, _cmd)
{
    return self._infoWindowHTML;
}
,["CPString"]), new objj_method(sel_getUid("addEventForName:withFunction:"), function $MKMarker__addEventForName_withFunction_(self, _cmd, anEvent, aFunction)
{
    if (!self._eventHandlers)
    {
        self._eventHandlers = {};
    }


    self._eventHandlers[anEvent] = aFunction;


    if (self._gMarker)
    {
       objj_msgSend(MKMapView, "gmNamespace").Event.addListener(self._gMarker, anEvent, aFunction);
    }
}
,["void","CPString","JSObject"]), new objj_method(sel_getUid("addToMapView:"), function $MKMarker__addToMapView_(self, _cmd, mapView)
{
    var googleMap = objj_msgSend(mapView, "gMap"),
        gm = objj_msgSend(MKMapView, "gmNamespace"),
        icon = new gm.Icon(gm.DEFAULT_ICON);

    icon.shadow = nil;

    if (self._iconUrl)
    {
        icon.image = self._iconUrl;
        icon.iconSize = new gm.Size(29, 36);
        icon.iconAnchor = new gm.Point(9, 36);
    }


    if (self._withShadow && self._shadowUrl)
    {
        icon.shadow = self._shadowUrl;
        icon.shadowSize = new gm.Size(59, 32);
    }

    var markerOptions = { "icon":icon, "clickable":self._clickable, "draggable":self._draggable };
    self._gMarker = new gm.Marker(objj_msgSend(self._location, "googleLatLng"), markerOptions);


    if (self._infoWindowHTML)
    {
        self._gMarker.openInfoWindowHtml(self._infoWindowHTML);
    }


    if (self._eventHandlers)
    {
        for (var key in self._eventHandlers)
        {
            var func = self._eventHandlers[key];
            gm.Event.addListener(self._gMarker, key, func);
        }
    }

    gm.Event.addListener(self._gMarker, 'dragend', function() { objj_msgSend(self, "updateLocation"); });
    googleMap.addOverlay(self._gMarker);
}
,["void","MKMapView"]), new objj_method(sel_getUid("encodeWithCoder:"), function $MKMarker__encodeWithCoder_(self, _cmd, coder)
{
    objj_msgSend(coder, "encodeObject:forKey:", [objj_msgSend(self._location, "latitude"), objj_msgSend(self._location, "longitude")], "location");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("marker"), function $MKMarker__marker(self, _cmd)
{
    return objj_msgSend(objj_msgSend(MKMarker, "alloc"), "init");
}
,["MKMarker"])]);
}p;18;MapKit/MKPolygon.jt;4430;@STATIC;1.0;I;15;AppKit/CPView.ji;11;MKMapItem.ji;11;MKMapView.ji;12;MKLocation.jt;4342;

objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("MKMapItem.j", YES);
objj_executeFile("MKMapView.j", YES);
objj_executeFile("MKLocation.j", YES);

{var the_class = objj_allocateClassPair(MKMapItem, "MKPolygon"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_locations"), new objj_ivar("_lineColorCode"), new objj_ivar("_lineStroke"), new objj_ivar("_fillColorCode"), new objj_ivar("_fillOpacity"), new objj_ivar("_lineOpacity")]);









objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("locations"), function $MKPolygon__locations(self, _cmd)
{
return self._locations;
}
,["CPArray"]), new objj_method(sel_getUid("setLocations:"), function $MKPolygon__setLocations_(self, _cmd, newValue)
{
self._locations = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("lineColorCode"), function $MKPolygon__lineColorCode(self, _cmd)
{
return self._lineColorCode;
}
,["CPString"]), new objj_method(sel_getUid("setLineColorCode:"), function $MKPolygon__setLineColorCode_(self, _cmd, newValue)
{
self._lineColorCode = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("lineStroke"), function $MKPolygon__lineStroke(self, _cmd)
{
return self._lineStroke;
}
,["int"]), new objj_method(sel_getUid("setLineStroke:"), function $MKPolygon__setLineStroke_(self, _cmd, newValue)
{
self._lineStroke = newValue;
}
,["void","int"]), new objj_method(sel_getUid("fillColorCode"), function $MKPolygon__fillColorCode(self, _cmd)
{
return self._fillColorCode;
}
,["int"]), new objj_method(sel_getUid("setFillColorCode:"), function $MKPolygon__setFillColorCode_(self, _cmd, newValue)
{
self._fillColorCode = newValue;
}
,["void","int"]), new objj_method(sel_getUid("fillOpacity"), function $MKPolygon__fillOpacity(self, _cmd)
{
return self._fillOpacity;
}
,["float"]), new objj_method(sel_getUid("setFillOpacity:"), function $MKPolygon__setFillOpacity_(self, _cmd, newValue)
{
self._fillOpacity = newValue;
}
,["void","float"]), new objj_method(sel_getUid("lineOpacity"), function $MKPolygon__lineOpacity(self, _cmd)
{
return self._lineOpacity;
}
,["float"]), new objj_method(sel_getUid("setLineOpacity:"), function $MKPolygon__setLineOpacity_(self, _cmd, newValue)
{
self._lineOpacity = newValue;
}
,["void","float"]), new objj_method(sel_getUid("init"), function $MKPolygon__init(self, _cmd)
{
    return objj_msgSend(self, "initWithLocations:", nil);
}
,["id"]), new objj_method(sel_getUid("initWithLocations:"), function $MKPolygon__initWithLocations_(self, _cmd, someLocations)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("MKPolygon").super_class }, "init"))
    {
        self._locations = someLocations;
        self._lineColorCode = "#ff0000";
        self._fillColorCode = "#000000";
        self._fillOpacity = 0.7;
        self._lineOpacity = 1;
        self._lineStroke = 5;
    }
    return self;
}
,["id","CPArray"]), new objj_method(sel_getUid("addLocation:"), function $MKPolygon__addLocation_(self, _cmd, aLocation)
{
    if (!self._locations)
    {
        self._locations = objj_msgSend(objj_msgSend(CPArray, "alloc"), "init");
    }

    objj_msgSend(self._locations, "addObject:", aLocation);
}
,["void","MKLocation"]), new objj_method(sel_getUid("googlePolygon"), function $MKPolygon__googlePolygon(self, _cmd)
{
    if (self._locations)
    {
        var gm = objj_msgSend(MKMapView, "gmNamespace"),
            locEnum = objj_msgSend(self._locations, "objectEnumerator"),
            loc = nil,
            lineCoordinates = [];

        while (loc = objj_msgSend(locEnum, "nextObject"))
        {
            lineCoordinates.push(objj_msgSend(loc, "googleLatLng"));
        }

        return new gm.Polygon(lineCoordinates, self._lineColorCode, self._lineStroke, self._lineOpacity, self._fillColorCode, self._fillOpacity);
    }

    return nil;
}
,["Polygon"]), new objj_method(sel_getUid("addToMapView:"), function $MKPolygon__addToMapView_(self, _cmd, mapView)
{
    var googleMap = objj_msgSend(mapView, "gMap");
    googleMap.addOverlay(objj_msgSend(self, "googlePolygon"));
}
,["void","MKMapView"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("polygon"), function $MKPolygon__polygon(self, _cmd)
{
    return objj_msgSend(objj_msgSend(MKPolygon, "alloc"), "init");
}
,["MKPolygon"])]);
}p;19;MapKit/MKPolyline.jt;3244;@STATIC;1.0;I;15;AppKit/CPView.ji;11;MKMapItem.ji;12;MKLocation.jt;3172;

objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("MKMapItem.j", YES);
objj_executeFile("MKLocation.j", YES);

//@class MKMapView


{var the_class = objj_allocateClassPair(MKMapItem, "MKPolyline"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_locations"), new objj_ivar("_colorCode"), new objj_ivar("_lineStroke")]);









objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("locations"), function $MKPolyline__locations(self, _cmd)
{
return self._locations;
}
,["CPArray"]), new objj_method(sel_getUid("setLocations:"), function $MKPolyline__setLocations_(self, _cmd, newValue)
{
self._locations = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("colorCode"), function $MKPolyline__colorCode(self, _cmd)
{
return self._colorCode;
}
,["CPString"]), new objj_method(sel_getUid("setColorCode:"), function $MKPolyline__setColorCode_(self, _cmd, newValue)
{
self._colorCode = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("lineStroke"), function $MKPolyline__lineStroke(self, _cmd)
{
return self._lineStroke;
}
,["int"]), new objj_method(sel_getUid("setLineStroke:"), function $MKPolyline__setLineStroke_(self, _cmd, newValue)
{
self._lineStroke = newValue;
}
,["void","int"]), new objj_method(sel_getUid("init"), function $MKPolyline__init(self, _cmd)
{
    return objj_msgSend(self, "initWithLocations:", nil);
}
,["id"]), new objj_method(sel_getUid("initWithLocations:"), function $MKPolyline__initWithLocations_(self, _cmd, someLocations)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("MKPolyline").super_class }, "init"))
    {
        self._locations = someLocations;
        self._colorCode = "#ff0000";
        self._lineStroke = 5;
    }
    return self;
}
,["id","CPArray"]), new objj_method(sel_getUid("addLocation:"), function $MKPolyline__addLocation_(self, _cmd, aLocation)
{
    if (!self._locations)
    {
        self._locations = objj_msgSend(objj_msgSend(CPArray, "alloc"), "init");
    }

    objj_msgSend(self._locations, "addObject:", aLocation);
}
,["void","MKLocation"]), new objj_method(sel_getUid("googlePolyline"), function $MKPolyline__googlePolyline(self, _cmd)
{
    if (self._locations)
    {
        var gm = objj_msgSend(MKMapView, "gmNamespace"),
            locEnum = objj_msgSend(self._locations, "objectEnumerator"),
            loc = nil,
            lineCoordinates = [];

        while (loc = objj_msgSend(locEnum, "nextObject"))
        {
            lineCoordinates.push(objj_msgSend(loc, "googleLatLng"));
        }

        return new gm.Polyline(lineCoordinates, self._colorCode, self._lineStroke);
    }

    return nil;
}
,["Polyline"]), new objj_method(sel_getUid("addToMapView:"), function $MKPolyline__addToMapView_(self, _cmd, mapView)
{
    var googleMap = objj_msgSend(mapView, "gMap");
    googleMap.addOverlay(objj_msgSend(self, "googlePolyline"));
}
,["void","MKMapView"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("polyline"), function $MKPolyline__polyline(self, _cmd)
{
    return objj_msgSend(objj_msgSend(MKPolyline, "alloc"), "init");
}
,["MKPolyline"])]);
}e;