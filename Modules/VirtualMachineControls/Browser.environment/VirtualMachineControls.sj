@STATIC;1.0;p;25;TNExtendedContactObject.jt;2332;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPImage.jt;2264;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
var TNExtendedContactImageSelected;
{var the_class = objj_allocateClassPair(CPObject, "TNExtendedContact"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_name"), new objj_ivar("_fullJID"), new objj_ivar("_selected")]);

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("name"), function $TNExtendedContact__name(self, _cmd)
{
return self._name;
}
,["CPString"]), new objj_method(sel_getUid("setName:"), function $TNExtendedContact__setName_(self, _cmd, newValue)
{
self._name = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("fullJID"), function $TNExtendedContact__fullJID(self, _cmd)
{
return self._fullJID;
}
,["CPString"]), new objj_method(sel_getUid("setFullJID:"), function $TNExtendedContact__setFullJID_(self, _cmd, newValue)
{
self._fullJID = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("_selected"), function $TNExtendedContact___selected(self, _cmd)
{
return self._selected;
}
,["BOOL"]), new objj_method(sel_getUid("setSelected:"), function $TNExtendedContact__setSelected_(self, _cmd, newValue)
{
self._selected = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("initWithName:fullJID:"), function $TNExtendedContact__initWithName_fullJID_(self, _cmd, aName, aFullJID)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNExtendedContact").super_class }, "init"))
    {
        self._name = aName;
        self._fullJID = aFullJID;
        self._selected = NO;
    }
    return self;
}
,["id","CPString","CPString"]), new objj_method(sel_getUid("isSelected"), function $TNExtendedContact__isSelected(self, _cmd)
{
    if (self._selected)
    {
        return TNExtendedContactImageSelected;
    }
    return nil;
}
,["CPImage"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNExtendedContact__initialize(self, _cmd)
{
    TNExtendedContactImageSelected = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/check.png"), CGSizeMake(12, 12));
}
,["void"])]);
}p;36;TNVirtualMachineControlsController.jt;66794;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;16;AppKit/CPImage.jI;20;AppKit/CPImageView.jI;22;AppKit/CPSearchField.jI;27;AppKit/CPSegmentedControl.jI;17;AppKit/CPSlider.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;15;TNKit/TNAlert.jI;29;TNKit/TNTableViewDataSource.jI;26;TNKit/TNTextFieldStepper.jI;37;StropheCappuccino/TNStropheIMClient.ji;22;../../Views/TNSwitch.ji;22;../../Model/TNModule.ji;25;TNExtendedContactObject.jt;66291;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPSegmentedControl.j", NO);
objj_executeFile("AppKit/CPSlider.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("TNKit/TNTextFieldStepper.j", NO);
objj_executeFile("StropheCappuccino/TNStropheIMClient.j", NO);
objj_executeFile("../../Views/TNSwitch.j", YES);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("TNExtendedContactObject.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
//@global TNArchipelEntityTypeHypervisor
//@global TNArchipelRosterOutlineViewDeselectAll
//@global CPApp
var TNArchipelPushNotificationDefinition = "archipel:push:virtualmachine:definition",
    TNArchipelPushNotificationControl = "archipel:push:virtualmachine:control",
    TNArchipelPushNotificationOOM = "archipel:push:virtualmachine:oom",
    TNArchipelControlNotification = "TNArchipelControlNotification",
    TNArchipelControlPlay = "TNArchipelControlPlay",
    TNArchipelControlSuspend = "TNArchipelControlSuspend",
    TNArchipelControlResume = "TNArchipelControlResume",
    TNArchipelControlStop = "TNArchipelControlStop",
    TNArchipelControlDestroy = "TNArchipelControlDestroy",
    TNArchipelControlReboot = "TNArchipelControlReboot",
    TNArchipelTypeVirtualMachineControl = "archipel:vm:control",
    TNArchipelTypeVirtualMachineOOM = "archipel:vm:oom",
    TNArchipelTypeVirtualMachineVMParking = "archipel:vm:vmparking",
    TNArchipelTypeVirtualMachineControlInfo = "info",
    TNArchipelTypeVirtualMachineControlCreate = "create",
    TNArchipelTypeVirtualMachineControlShutDown = "shutdown",
    TNArchipelTypeVirtualMachineControlDestroy = "destroy",
    TNArchipelTypeVirtualMachineControlFree = "free",
    TNArchipelTypeVirtualMachineControlReboot = "reboot",
    TNArchipelTypeVirtualMachineControlSuspend = "suspend",
    TNArchipelTypeVirtualMachineControlResume = "resume",
    TNArchipelTypeVirtualMachineControlMigrate = "migrate",
    TNArchipelTypeVirtualMachineControlAutostart = "autostart",
    TNArchipelTypeVirtualMachineControlMemory = "memory",
    TNArchipelTypeVirtualMachineControlVCPUs = "setvcpus",
    TNArchipelTypeVirtualMachineControlScreenshot = "screenshot",
    TNArchipelTypeVirtualMachineOOMSetAdjust = "setadjust",
    TNArchipelTypeVirtualMachineOOMGetAdjust = "getadjust",
    TNArchipelTypeVirtualMachineVMParkingPark = "park",
    VIR_DOMAIN_NOSTATE = 0,
    VIR_DOMAIN_RUNNING = 1,
    VIR_DOMAIN_BLOCKED = 2,
    VIR_DOMAIN_PAUSED = 3,
    VIR_DOMAIN_SHUTDOWN = 4,
    VIR_DOMAIN_SHUTOFF = 5,
    VIR_DOMAIN_CRASHED = 6,
    TNArchipelTransportBarPlay = 0,
    TNArchipelTransportBarPause = 1,
    TNArchipelTransportBarStop = 2,
    TNArchipelTransportBarDestroy = 3,
    TNArchipelTransportBarReboot = 4;
{var the_class = objj_allocateClassPair(TNModule, "TNVirtualMachineControlsController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("boxAdvancedCommands"), new objj_ivar("buttonKill"), new objj_ivar("buttonPark"), new objj_ivar("buttonScreenshot"), new objj_ivar("buttonBarMigration"), new objj_ivar("checkBoxAdvancedCommands"), new objj_ivar("imageState"), new objj_ivar("imageViewFullScreenshot"), new objj_ivar("popoverWindowScreenshot"), new objj_ivar("filterHypervisors"), new objj_ivar("buttonBarTransport"), new objj_ivar("sliderMemory"), new objj_ivar("tableHypervisors"), new objj_ivar("fieldInfoConsumedCPU"), new objj_ivar("fieldTableHypervisorHidden"), new objj_ivar("fieldInfoMem"), new objj_ivar("fieldInfoState"), new objj_ivar("fieldOOMAdjust"), new objj_ivar("fieldOOMScore"), new objj_ivar("fieldPreferencesCpuUsageRefresh"), new objj_ivar("fieldPreferencesScreenshotRefresh"), new objj_ivar("viewTableHypervisorsContainer"), new objj_ivar("switchAutoStart"), new objj_ivar("switchPreventOOMKiller"), new objj_ivar("stepperCPU"), new objj_ivar("_migrateButton"), new objj_ivar("_imageDestroy"), new objj_ivar("_imagePause"), new objj_ivar("_imagePlay"), new objj_ivar("_imageReboot"), new objj_ivar("_imageResume"), new objj_ivar("_imageScreenShutDown"), new objj_ivar("_imageStop"), new objj_ivar("_VMLibvirtStatus"), new objj_ivar("_currentHypervisorJID"), new objj_ivar("_cpuUsageTimer"), new objj_ivar("_screenshotTimer"), new objj_ivar("_virtualMachineToFree"), new objj_ivar("_datasourceHypervisors")]);
       
       










       
       





       
       







       
       















       
       






































       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNVirtualMachineControlsController__awakeFromCib(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(defaults, "registerDefaults:", objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelControlsCpuUsageRefresh"), "TNArchipelControlsCpuUsageRefresh", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelControlsMaxVCPUs"), "TNArchipelControlsMaxVCPUs", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelControlsScreenshotRefresh"), "TNArchipelControlsScreenshotRefresh"));
    objj_msgSend(self.boxAdvancedCommands, "setCornerRadius:", 3.0);
    objj_msgSend(self.sliderMemory, "setContinuous:", YES);
    objj_msgSend(self.stepperCPU, "setTarget:", self);
    objj_msgSend(self.stepperCPU, "setAction:", sel_getUid("setVCPUs:"));
    objj_msgSend(self.stepperCPU, "setMinValue:", 1);
    objj_msgSend(self.stepperCPU, "setMaxValue:", objj_msgSend(defaults, "integerForKey:", "TNArchipelControlsMaxVCPUs"));
    objj_msgSend(self.stepperCPU, "setValueWraps:", NO);
    objj_msgSend(self.stepperCPU, "setAutorepeat:", NO);
    objj_msgSend(self.fieldInfoConsumedCPU, "setStringValue:", "...");
    self._imagePlay = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/play.png"), CGSizeMake(16, 16));
    self._imageStop = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/stop.png"), CGSizeMake(16, 16));
    self._imageDestroy = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/destroy.png"), CGSizeMake(16, 16));
    self._imagePause = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/pause.png"), CGSizeMake(16, 16));
    self._imageReboot = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/reboot.png"), CGSizeMake(16, 16));
    objj_msgSend(self.buttonBarTransport, "setSegmentCount:", 5);
    objj_msgSend(self.buttonBarTransport, "setLabel:forSegment:", CPBundleLocalizedString("Play", "Play"), TNArchipelTransportBarPlay);
    objj_msgSend(self.buttonBarTransport, "setLabel:forSegment:", CPBundleLocalizedString("Pause", "Pause"), TNArchipelTransportBarPause);
    objj_msgSend(self.buttonBarTransport, "setLabel:forSegment:", CPBundleLocalizedString("Stop", "Stop"), TNArchipelTransportBarStop);
    objj_msgSend(self.buttonBarTransport, "setLabel:forSegment:", CPBundleLocalizedString("Force Off", "Force Off"), TNArchipelTransportBarDestroy);
    objj_msgSend(self.buttonBarTransport, "setLabel:forSegment:", CPBundleLocalizedString("Reboot", "Reboot"), TNArchipelTransportBarReboot);
    objj_msgSend(self.buttonBarTransport, "setWidth:forSegment:", 100, TNArchipelTransportBarPlay);
    objj_msgSend(self.buttonBarTransport, "setWidth:forSegment:", 100, TNArchipelTransportBarPause);
    objj_msgSend(self.buttonBarTransport, "setWidth:forSegment:", 100, TNArchipelTransportBarStop);
    objj_msgSend(self.buttonBarTransport, "setWidth:forSegment:", 100, TNArchipelTransportBarDestroy);
    objj_msgSend(self.buttonBarTransport, "setWidth:forSegment:", 100, TNArchipelTransportBarReboot);
    objj_msgSend(self.buttonBarTransport, "setImage:forSegment:", self._imagePlay, TNArchipelTransportBarPlay);
    objj_msgSend(self.buttonBarTransport, "setImage:forSegment:", self._imagePause, TNArchipelTransportBarPause);
    objj_msgSend(self.buttonBarTransport, "setImage:forSegment:", self._imageStop, TNArchipelTransportBarStop);
    objj_msgSend(self.buttonBarTransport, "setImage:forSegment:", self._imageDestroy, TNArchipelTransportBarDestroy);
    objj_msgSend(self.buttonBarTransport, "setImage:forSegment:", self._imageReboot, TNArchipelTransportBarReboot);
    objj_msgSend(self.buttonBarTransport, "setTarget:", self);
    objj_msgSend(self.buttonBarTransport, "setAction:", sel_getUid("segmentedControlClicked:"));
    objj_msgSend(self.viewTableHypervisorsContainer, "setBorderedWithHexColor:", "#C0C7D2");
    self._datasourceHypervisors = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self.tableHypervisors, "setTarget:", self);
    objj_msgSend(self.tableHypervisors, "setDoubleAction:", sel_getUid("migrate:"));
    objj_msgSend(self._datasourceHypervisors, "setTable:", self.tableHypervisors);
    objj_msgSend(self._datasourceHypervisors, "setSearchableKeyPaths:", ["name"]);
    objj_msgSend(self.filterHypervisors, "setTarget:", self._datasourceHypervisors);
    objj_msgSend(self.filterHypervisors, "setAction:", sel_getUid("filterObjects:"));
    objj_msgSend(self.tableHypervisors, "setDataSource:", self._datasourceHypervisors);
    self._migrateButton = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._migrateButton, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/migrate.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._migrateButton, "setTarget:", self);
    objj_msgSend(self._migrateButton, "setAction:", sel_getUid("migrate:"));
    objj_msgSend(self._migrateButton, "setEnabled:", NO);
    objj_msgSend(self.buttonBarMigration, "setButtons:", [self._migrateButton]);
    objj_msgSend(self.switchAutoStart, "setTarget:", self);
    objj_msgSend(self.switchAutoStart, "setAction:", sel_getUid("setAutostart:"));
    objj_msgSend(self.switchPreventOOMKiller, "setTarget:", self);
    objj_msgSend(self.switchPreventOOMKiller, "setAction:", sel_getUid("setPreventOOMKiller:"));
    self._imageScreenShutDown = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "shutdown.png"), CGSizeMake(216, 162));
    objj_msgSend(self.buttonScreenshot, "setBackgroundColor:", objj_msgSend(CPColor, "blackColor"));
    objj_msgSend(self.buttonScreenshot, "setBordered:", NO);
    self.buttonScreenshot._DOMElement.style.borderRadius = "5px";
    self.buttonScreenshot._DOMElement.style.border = "6px solid #222";
    self.buttonScreenshot._DOMElement.style.boxShadow = "0px 0px 1px 1px #DCDCDC";
}
,["void"]), new objj_method(sel_getUid("willLoad"), function $TNVirtualMachineControlsController__willLoad(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineControlsController").super_class }, "willLoad"))
        return NO;
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didReceiveControlNotification:"), TNArchipelControlNotification, nil);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didUpdatePresence:"), TNStropheContactPresenceUpdatedNotification, self._entity);
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceivePush:"), TNArchipelPushNotificationControl);
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceivePush:"), TNArchipelPushNotificationDefinition);
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceivePush:"), TNArchipelPushNotificationOOM);
    objj_msgSend(self, "disableAllButtons");
    objj_msgSend(self.imageState, "setImage:", objj_msgSend(self._entity, "statusIcon"));
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willUnload"), function $TNVirtualMachineControlsController__willUnload(self, _cmd)
{
    objj_msgSend(self.fieldInfoMem, "setStringValue:", "...");
    objj_msgSend(self.fieldInfoConsumedCPU, "setStringValue:", "...");
    objj_msgSend(self.fieldInfoState, "setStringValue:", "...");
    objj_msgSend(self.imageState, "setImage:", nil);
    objj_msgSend(self, "disableAllButtons");
    objj_msgSend(self.buttonBarTransport, "setLabel:forSegment:", CPBundleLocalizedString("Pause", "Pause"), TNArchipelTransportBarPause);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineControlsController").super_class }, "willUnload");
}
,["void"]), new objj_method(sel_getUid("willShow"), function $TNVirtualMachineControlsController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineControlsController").super_class }, "willShow"))
        return NO;
    self._screenshotTimer = nil;
    self._cpuUsageTimer = nil;
    objj_msgSend(self, "checkIfRunning");
    objj_msgSend(self.buttonScreenshot, "setImage:", self._imageScreenShutDown);
    objj_msgSend(self.tableHypervisors, "setDelegate:", nil);
    objj_msgSend(self.tableHypervisors, "setDelegate:", self);
    objj_msgSend(self.switchAutoStart, "setEnabled:", NO);
    objj_msgSend(self.switchAutoStart, "setOn:animated:sendAction:", NO, YES, NO);
    objj_msgSend(self.sliderMemory, "setEnabled:", NO);
    objj_msgSend(self.stepperCPU, "setEnabled:", NO);
    objj_msgSend(self.buttonKill, "setEnabled:", NO);
    objj_msgSend(self.buttonPark, "setEnabled:", NO);
    objj_msgSend(self.checkBoxAdvancedCommands, "setState:", CPOffState);
    objj_msgSend(self.tableHypervisors, "deselectAll");
    objj_msgSend(self, "populateHypervisorsTable");
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willHide"), function $TNVirtualMachineControlsController__willHide(self, _cmd)
{
    if (self._screenshotTimer)
        objj_msgSend(self._screenshotTimer, "invalidate");
    self._screenshotTimer = nil;
    if (self._cpuUsageTimer)
        objj_msgSend(self._cpuUsageTimer, "invalidate");
    self._cpuUsageTimer = nil;
    objj_msgSend(self.buttonScreenshot, "setImage:", self._imageScreenShutDown);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineControlsController").super_class }, "willHide");
}
,["void"]), new objj_method(sel_getUid("menuReady"), function $TNVirtualMachineControlsController__menuReady(self, _cmd)
{
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Start", "Start"), sel_getUid("play:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Shut down", "Shut down"), sel_getUid("stop:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Pause / Resume", "Pause / Resume"), sel_getUid("pause:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Reboot", "Reboot"), sel_getUid("reboot:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Force Off", "Force Off"), sel_getUid("destroy:"), ""), "setTarget:", self);
}
,["void"]), new objj_method(sel_getUid("savePreferences"), function $TNVirtualMachineControlsController__savePreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(defaults, "setInteger:forKey:", objj_msgSend(self.fieldPreferencesScreenshotRefresh, "intValue"), "TNArchipelControlsScreenshotRefresh");
    objj_msgSend(defaults, "setInteger:forKey:", objj_msgSend(self.fieldPreferencesCpuUsageRefresh, "intValue"), "TNArchipelControlsCpuUsageRefresh");
}
,["void"]), new objj_method(sel_getUid("loadPreferences"), function $TNVirtualMachineControlsController__loadPreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(self.fieldPreferencesScreenshotRefresh, "setIntValue:", objj_msgSend(defaults, "integerForKey:", "TNArchipelControlsScreenshotRefresh"));
    objj_msgSend(self.fieldPreferencesCpuUsageRefresh, "setIntValue:", objj_msgSend(defaults, "integerForKey:", "TNArchipelControlsCpuUsageRefresh"));
}
,["void"]), new objj_method(sel_getUid("permissionsChanged"), function $TNVirtualMachineControlsController__permissionsChanged(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineControlsController").super_class }, "permissionsChanged");
    objj_msgSend(self, "checkIfRunning");
}
,["void"]), new objj_method(sel_getUid("setUIAccordingToPermissions"), function $TNVirtualMachineControlsController__setUIAccordingToPermissions(self, _cmd)
{
    var isOnline = (objj_msgSend(self._entity, "XMPPShow") == TNStropheContactStatusOnline);
    objj_msgSend(self, "setControl:enabledAccordingToPermissions:", self.switchPreventOOMKiller, ["oom_getadjust", "oom_setadjust"]);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.switchAutoStart, "autostart");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self.sliderMemory, "memory", isOnline);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:specialCondition:", self.stepperCPU, "setvcpus", isOnline);
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.buttonKill, "free");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.buttonPark, "vmparking_park");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._migrateButton, "migrate");
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermission:", self.buttonBarTransport, TNArchipelTransportBarPlay, "create");
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermission:", self.buttonBarTransport, TNArchipelTransportBarStop, "shutdown");
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermission:", self.buttonBarTransport, TNArchipelTransportBarDestroy, "destroy");
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermissions:", self.buttonBarTransport, TNArchipelTransportBarPause, ["suspend", "resume"]);
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermission:", self.buttonBarTransport, TNArchipelTransportBarReboot, "reboot");
    if (self._VMLibvirtStatus)
        objj_msgSend(self, "layoutButtons:", self._VMLibvirtStatus);
}
,["void"]), new objj_method(sel_getUid("flushUI"), function $TNVirtualMachineControlsController__flushUI(self, _cmd)
{
    objj_msgSend(self._datasourceHypervisors, "removeAllObjects");
    objj_msgSend(self.tableHypervisors, "reloadData");
}
,["void"]), new objj_method(sel_getUid("_didUpdatePresence:"), function $TNVirtualMachineControlsController___didUpdatePresence_(self, _cmd, aNotification)
{
    objj_msgSend(self.imageState, "setImage:", objj_msgSend(self._entity, "statusIcon"));
    objj_msgSend(self, "checkIfRunning");
}
,["void","CPNotification"]), new objj_method(sel_getUid("_didReceivePush:"), function $TNVirtualMachineControlsController___didReceivePush_(self, _cmd, somePushInfo)
{
    var sender = objj_msgSend(somePushInfo, "objectForKey:", "owner"),
        type = objj_msgSend(somePushInfo, "objectForKey:", "type"),
        change = objj_msgSend(somePushInfo, "objectForKey:", "change"),
        date = objj_msgSend(somePushInfo, "objectForKey:", "date");
    objj_msgSend(self, "checkIfRunning");
    return YES;
}
,["BOOL","CPDictionary"]), new objj_method(sel_getUid("_didReceiveControlNotification:"), function $TNVirtualMachineControlsController___didReceiveControlNotification_(self, _cmd, aNotification)
{
    var command = objj_msgSend(aNotification, "userInfo");
    switch (command)
    {
        case TNArchipelControlPlay:
            objj_msgSend(self, "play:", nil);
            break;
        case (TNArchipelControlSuspend || TNArchipelControlResume):
            objj_msgSend(self, "pause:", nil);
            break;
        case TNArchipelControlReboot:
            objj_msgSend(self, "reboot:", nil);
            break;
        case TNArchipelControlStop:
            objj_msgSend(self, "stop:", nil);
            break;
        case TNArchipelControlDestroy:
            objj_msgSend(self, "destroy:", nil);
            break;
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("getCpuUsage:"), function $TNVirtualMachineControlsController__getCpuUsage_(self, _cmd, aTimer)
{
    objj_msgSend(self, "getVirtualMachineInfo");
}
,["void","CPTimer"]), new objj_method(sel_getUid("getThumbnailScreenshot:"), function $TNVirtualMachineControlsController__getThumbnailScreenshot_(self, _cmd, aTimer)
{
    objj_msgSend(self, "getThumbnailScreenshot");
}
,["void","CPTimer"]), new objj_method(sel_getUid("checkIfRunning"), function $TNVirtualMachineControlsController__checkIfRunning(self, _cmd)
{
    if (!objj_msgSend(self, "isVisible"))
        return;
    if (objj_msgSend(self, "currentEntityHasPermission:", "info"))
        objj_msgSend(self, "getVirtualMachineInfo");
    if (objj_msgSend(self, "currentEntityHasPermission:", "oom_getadjust"))
        objj_msgSend(self, "getOOMKiller");
}
,["void"]), new objj_method(sel_getUid("populateHypervisorsTable"), function $TNVirtualMachineControlsController__populateHypervisorsTable(self, _cmd)
{
    objj_msgSend(self._datasourceHypervisors, "removeAllObjects");
    var rosterItems = objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "contacts");
    for (var i = 0; i < objj_msgSend(rosterItems, "count"); i++)
    {
        var item = objj_msgSend(rosterItems, "objectAtIndex:", i);
        if (objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "analyseVCard:", objj_msgSend(item, "vCard")) == TNArchipelEntityTypeHypervisor)
        {
            var o = objj_msgSend(objj_msgSend(TNExtendedContact, "alloc"), "initWithName:fullJID:", objj_msgSend(item, "name"), objj_msgSend(objj_msgSend(item, "JID"), "full"));
            objj_msgSend(self._datasourceHypervisors, "addObject:", o);
        }
    }
    objj_msgSend(self.tableHypervisors, "reloadData");
}
,["void"]), new objj_method(sel_getUid("layoutButtons:"), function $TNVirtualMachineControlsController__layoutButtons_(self, _cmd, libvirtState)
{
    var humanState;
    switch (objj_msgSend(libvirtState, "intValue"))
    {
        case VIR_DOMAIN_NOSTATE:
            humanState = CPBundleLocalizedString("No status", "No status");
            break;
        case VIR_DOMAIN_RUNNING:
        case VIR_DOMAIN_BLOCKED:
            objj_msgSend(self, "enableButtonsForRunning");
            humanState = CPBundleLocalizedString("Running", "Running");
            break;
        case VIR_DOMAIN_PAUSED:
            objj_msgSend(self, "enableButtonsForPaused")
            humanState = CPBundleLocalizedString("Paused", "Paused");
            break;
        case VIR_DOMAIN_SHUTDOWN:
            objj_msgSend(self, "enableButtonsForShutDown")
            humanState = CPBundleLocalizedString("Off", "Off");
            break;
        case VIR_DOMAIN_SHUTOFF:
            objj_msgSend(self, "enableButtonsForShutDown")
            humanState = CPBundleLocalizedString("Off", "Off");
            break;
        case VIR_DOMAIN_CRASHED:
            humanState = CPBundleLocalizedString("Crashed", "Crashed");
            break;
  }
  objj_msgSend(self.fieldInfoState, "setStringValue:", humanState);
  objj_msgSend(self.imageState, "setImage:", objj_msgSend(self._entity, "statusIcon"));
}
,["void","id"]), new objj_method(sel_getUid("enableButtonsForRunning"), function $TNVirtualMachineControlsController__enableButtonsForRunning(self, _cmd)
{
    objj_msgSend(self.buttonBarTransport, "setSelectedSegment:", TNArchipelTransportBarPlay);
    objj_msgSend(self.buttonBarTransport, "setEnabled:forSegment:", NO, TNArchipelTransportBarPlay);
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermission:", self.buttonBarTransport, TNArchipelTransportBarStop, "shutdown");
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermission:", self.buttonBarTransport, TNArchipelTransportBarDestroy, "destroy");
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermissions:", self.buttonBarTransport, TNArchipelTransportBarPause, ["suspend", "resume"]);
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermission:", self.buttonBarTransport, TNArchipelTransportBarReboot, "reboot");
    objj_msgSend(self.buttonBarTransport, "setLabel:forSegment:", CPBundleLocalizedString("Pause", "Pause"), TNArchipelTransportBarPause);
    objj_msgSend(self, "setControl:enabledAccordingToPermissions:", self.switchPreventOOMKiller, ["oom_getadjust", "oom_setadjust"])
}
,["void"]), new objj_method(sel_getUid("enableButtonsForPaused"), function $TNVirtualMachineControlsController__enableButtonsForPaused(self, _cmd)
{
    objj_msgSend(self.buttonBarTransport, "setSelectedSegment:", TNArchipelTransportBarPause);
    objj_msgSend(self.buttonBarTransport, "setEnabled:forSegment:", NO, TNArchipelTransportBarPlay)
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermission:", self.buttonBarTransport, TNArchipelTransportBarStop, "shutdown");
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermission:", self.buttonBarTransport, TNArchipelTransportBarDestroy, "destroy");
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermissions:", self.buttonBarTransport, TNArchipelTransportBarPause, ["suspend", "resume"]);
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermission:", self.buttonBarTransport, TNArchipelTransportBarReboot, "reboot");
    objj_msgSend(self.buttonBarTransport, "setLabel:forSegment:", CPBundleLocalizedString("Resume", "Resume"), TNArchipelTransportBarPause);
    objj_msgSend(self, "setControl:enabledAccordingToPermissions:", self.switchPreventOOMKiller, ["oom_getadjust", "oom_setadjust"])
}
,["void"]), new objj_method(sel_getUid("enableButtonsForShutDown"), function $TNVirtualMachineControlsController__enableButtonsForShutDown(self, _cmd)
{
    objj_msgSend(self.buttonBarTransport, "setSelectedSegment:", TNArchipelTransportBarStop);
    objj_msgSend(self, "setControl:segment:enabledAccordingToPermission:", self.buttonBarTransport, TNArchipelTransportBarPlay, "create");
    objj_msgSend(self.buttonBarTransport, "setEnabled:forSegment:", NO, TNArchipelTransportBarStop);
    objj_msgSend(self.buttonBarTransport, "setEnabled:forSegment:", NO, TNArchipelTransportBarDestroy);
    objj_msgSend(self.buttonBarTransport, "setEnabled:forSegment:", NO, TNArchipelTransportBarPause);
    objj_msgSend(self.buttonBarTransport, "setEnabled:forSegment:", NO, TNArchipelTransportBarReboot);
    objj_msgSend(self.buttonBarTransport, "setLabel:forSegment:", CPBundleLocalizedString("Pause", "Pause"), TNArchipelTransportBarPause);
    objj_msgSend(self.switchPreventOOMKiller, "setEnabled:", NO)
}
,["void"]), new objj_method(sel_getUid("disableAllButtons"), function $TNVirtualMachineControlsController__disableAllButtons(self, _cmd)
{
    objj_msgSend(self.buttonBarTransport, "setSelected:forSegment:", NO, TNArchipelTransportBarPlay);
    objj_msgSend(self.buttonBarTransport, "setSelected:forSegment:", NO, TNArchipelTransportBarStop);
    objj_msgSend(self.buttonBarTransport, "setSelected:forSegment:", NO, TNArchipelTransportBarDestroy);
    objj_msgSend(self.buttonBarTransport, "setSelected:forSegment:", NO, TNArchipelTransportBarPause);
    objj_msgSend(self.buttonBarTransport, "setSelected:forSegment:", NO, TNArchipelTransportBarReboot);
    objj_msgSend(self.buttonBarTransport, "setEnabled:forSegment:", NO, TNArchipelTransportBarPlay);
    objj_msgSend(self.buttonBarTransport, "setEnabled:forSegment:", NO, TNArchipelTransportBarStop);
    objj_msgSend(self.buttonBarTransport, "setEnabled:forSegment:", NO, TNArchipelTransportBarDestroy);
    objj_msgSend(self.buttonBarTransport, "setEnabled:forSegment:", NO, TNArchipelTransportBarPause);
    objj_msgSend(self.buttonBarTransport, "setEnabled:forSegment:", NO, TNArchipelTransportBarReboot);
    objj_msgSend(self.switchPreventOOMKiller, "setEnabled:", NO);
}
,["void"]), new objj_method(sel_getUid("segmentedControlClicked:"), function $TNVirtualMachineControlsController__segmentedControlClicked_(self, _cmd, aSender)
{
    var segment = objj_msgSend(aSender, "selectedSegment");
    switch (segment)
    {
        case TNArchipelTransportBarPlay:
            objj_msgSend(self, "play");
            break;
        case TNArchipelTransportBarPause:
            objj_msgSend(self, "pause");
            break;
        case TNArchipelTransportBarStop:
            objj_msgSend(self, "stop");
            break;
        case TNArchipelTransportBarDestroy:
            objj_msgSend(self, "destroy");
            break;
        case TNArchipelTransportBarReboot:
            objj_msgSend(self, "reboot");
            break;
    }
}
,["id","id"]), new objj_method(sel_getUid("play:"), function $TNVirtualMachineControlsController__play_(self, _cmd, aSender)
{
    objj_msgSend(self, "play");
}
,["id","id"]), new objj_method(sel_getUid("pause:"), function $TNVirtualMachineControlsController__pause_(self, _cmd, aSender)
{
    objj_msgSend(self, "pause");
}
,["id","id"]), new objj_method(sel_getUid("stop:"), function $TNVirtualMachineControlsController__stop_(self, _cmd, aSender)
{
    objj_msgSend(self, "stop");
}
,["id","id"]), new objj_method(sel_getUid("destroy:"), function $TNVirtualMachineControlsController__destroy_(self, _cmd, aSender)
{
    objj_msgSend(self, "destroy");
}
,["id","id"]), new objj_method(sel_getUid("reboot:"), function $TNVirtualMachineControlsController__reboot_(self, _cmd, aSender)
{
    objj_msgSend(self, "reboot");
}
,["id","id"]), new objj_method(sel_getUid("setAutostart:"), function $TNVirtualMachineControlsController__setAutostart_(self, _cmd, aSender)
{
    objj_msgSend(self, "setAutostart");
}
,["id","id"]), new objj_method(sel_getUid("setPreventOOMKiller:"), function $TNVirtualMachineControlsController__setPreventOOMKiller_(self, _cmd, aSender)
{
    objj_msgSend(self, "setPreventOOMKiller");
}
,["id","id"]), new objj_method(sel_getUid("setMemory:"), function $TNVirtualMachineControlsController__setMemory_(self, _cmd, aSender)
{
    if (objj_msgSend(objj_msgSend(CPApp, "currentEvent"), "type") == CPLeftMouseUp)
    {
        objj_msgSend(self, "setMemory");
    }
    else
    {
        objj_msgSend(self.fieldInfoMem, "setTextColor:", objj_msgSend(CPColor, "grayColor"));
        objj_msgSend(self.fieldInfoMem, "setStringValue:", Math.round(objj_msgSend(self.sliderMemory, "intValue") / 1024) + " MB");
    }
}
,["id","id"]), new objj_method(sel_getUid("setVCPUs:"), function $TNVirtualMachineControlsController__setVCPUs_(self, _cmd, aSender)
{
    objj_msgSend(self, "setVCPUs");
}
,["id","id"]), new objj_method(sel_getUid("migrate:"), function $TNVirtualMachineControlsController__migrate_(self, _cmd, aSender)
{
    objj_msgSend(self, "migrate");
}
,["id","id"]), new objj_method(sel_getUid("free:"), function $TNVirtualMachineControlsController__free_(self, _cmd, aSender)
{
    objj_msgSend(self, "free");
}
,["id","id"]), new objj_method(sel_getUid("park:"), function $TNVirtualMachineControlsController__park_(self, _cmd, aSender)
{
    objj_msgSend(self, "park");
}
,["id","id"]), new objj_method(sel_getUid("openFullScreenshotWindow:"), function $TNVirtualMachineControlsController__openFullScreenshotWindow_(self, _cmd, aSender)
{
    objj_msgSend(self, "getFullScreenshot");
}
,["id","id"]), new objj_method(sel_getUid("manageAdvancedControls:"), function $TNVirtualMachineControlsController__manageAdvancedControls_(self, _cmd, aSender)
{
    objj_msgSend(self.buttonPark, "setEnabled:", (objj_msgSend(aSender, "state") == CPOnState));
    objj_msgSend(self.buttonKill, "setEnabled:", (objj_msgSend(aSender, "state") == CPOnState));
}
,["id","id"]), new objj_method(sel_getUid("getVirtualMachineInfo"), function $TNVirtualMachineControlsController__getVirtualMachineInfo(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineControlInfo});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didReceiveVirtualMachineInfo:"));
    if (self._cpuUsageTimer)
        objj_msgSend(self._cpuUsageTimer, "invalidate");
        [self._cpuUsageTimer = nil];
}
,["void"]), new objj_method(sel_getUid("_didReceiveVirtualMachineInfo:"), function $TNVirtualMachineControlsController___didReceiveVirtualMachineInfo_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") != "result")
        return NO;
    var humanState,
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        infoNode = objj_msgSend(aStanza, "firstChildWithName:", "info"),
        libvirtState = objj_msgSend(infoNode, "valueForAttribute:", "state"),
        cpuPrct = parseInt(objj_msgSend(infoNode, "valueForAttribute:", "cpuPrct")),
        mem = parseFloat(objj_msgSend(infoNode, "valueForAttribute:", "memory")),
        maxMem = parseFloat(objj_msgSend(infoNode, "valueForAttribute:", "maxMem")),
        autostart = parseInt(objj_msgSend(infoNode, "valueForAttribute:", "autostart")),
        hypervisor = objj_msgSend(infoNode, "valueForAttribute:", "hypervisor"),
        nvCPUs = objj_msgSend(infoNode, "valueForAttribute:", "nrVirtCpu");
    self._currentHypervisorJID = hypervisor;
    objj_msgSend(self.fieldInfoMem, "setTextColor:", objj_msgSend(CPColor, "blackColor"));
    objj_msgSend(self.fieldInfoMem, "setStringValue:", parseInt(mem / 1024) + " MB");
    objj_msgSend(self.sliderMemory, "setToolTip:", "Adjust live memory (" + Math.round(objj_msgSend(self.sliderMemory, "intValue") / objj_msgSend(self.sliderMemory, "maxValue") * 100) + "%)");
    objj_msgSend(self.fieldInfoConsumedCPU, "setStringValue:", cpuPrct + " %");
    objj_msgSend(self.stepperCPU, "setDoubleValue:", objj_msgSend(nvCPUs, "intValue"));
    if (objj_msgSend(self._entity, "XMPPShow") == TNStropheContactStatusOnline || objj_msgSend(self._entity, "XMPPShow") == TNStropheContactStatusAway)
    {
        objj_msgSend(self.sliderMemory, "setMinValue:", 0);
        objj_msgSend(self.sliderMemory, "setMaxValue:", parseInt(maxMem));
        objj_msgSend(self.sliderMemory, "setIntValue:", parseInt(mem));
        objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.sliderMemory, "memory");
        objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.stepperCPU, "setvcpus");
        objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._migrateButton, "migrate");
        if (!self._cpuUsageTimer && objj_msgSend(self, "isVisible"))
        {
            self._cpuUsageTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", objj_msgSend(defaults, "integerForKey:", "TNArchipelControlsCpuUsageRefresh"), self, sel_getUid("getCpuUsage:"), nil, NO);
        }
        if (!self._screenshotTimer && objj_msgSend(self, "isVisible"))
        {
            objj_msgSend(self, "getThumbnailScreenshot");
            self._screenshotTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", objj_msgSend(defaults, "integerForKey:", "TNArchipelControlsScreenshotRefresh"), self, sel_getUid("getThumbnailScreenshot:"), nil, NO);
        }
    }
    else
    {
        if (self._screenshotTimer)
            objj_msgSend(self._screenshotTimer, "invalidate");
        if (self._cpuUsageTimer)
            objj_msgSend(self._cpuUsageTimer, "invalidate");
        objj_msgSend(self.sliderMemory, "setEnabled:", NO);
        objj_msgSend(self.sliderMemory, "setMinValue:", 0);
        objj_msgSend(self.sliderMemory, "setMaxValue:", 100);
        objj_msgSend(self.sliderMemory, "setIntValue:", 0);
        objj_msgSend(self.stepperCPU, "setEnabled:", NO);
        objj_msgSend(self._migrateButton, "setEnabled:", NO);
    }
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self.switchAutoStart, "autostart");
    if (autostart == 1)
        objj_msgSend(self.switchAutoStart, "setOn:animated:sendAction:", YES, YES, NO);
    else
        objj_msgSend(self.switchAutoStart, "setOn:animated:sendAction:", NO, YES, NO);
    self._VMLibvirtStatus = libvirtState;
    objj_msgSend(self, "disableAllButtons");
    objj_msgSend(self, "layoutButtons:", libvirtState);
    for (var i = 0; i < objj_msgSend(self._datasourceHypervisors, "count"); i++)
    {
        var item = objj_msgSend(self._datasourceHypervisors, "objectAtIndex:", i);
        if (objj_msgSend(item, "fullJID") == self._currentHypervisorJID)
            objj_msgSend(item, "setSelected:", YES);
        else
            objj_msgSend(item, "setSelected:", NO);
    }
    objj_msgSend(self.tableHypervisors, "reloadData");
    var index = objj_msgSend(objj_msgSend(self.tableHypervisors, "selectedRowIndexes"), "firstIndex");
    if (index != -1)
    {
        var selectedHypervisor = objj_msgSend(self._datasourceHypervisors, "objectAtIndex:", index);
        if (objj_msgSend(selectedHypervisor, "fullJID") == self._currentHypervisorJID)
            objj_msgSend(self._migrateButton, "setEnabled:", NO);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("getThumbnailScreenshot"), function $TNVirtualMachineControlsController__getThumbnailScreenshot(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineControlScreenshot,
        "size": "thumbnail"});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didReceiveThumbnailScreenshot:"));
}
,["void"]), new objj_method(sel_getUid("_didReceiveThumbnailScreenshot:"), function $TNVirtualMachineControlsController___didReceiveThumbnailScreenshot_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var dataNode = objj_msgSend(aStanza, "firstChildWithName:", "screenshot");
        if (!dataNode)
        {
            objj_msgSend(self.buttonScreenshot, "setImage:", self._imageScreenShutDown);
            return NO;
        }
        var base64Data = objj_msgSend(dataNode, "text"),
            screenshot = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithData:", objj_msgSend(CPData, "dataWithBase64:", base64Data));
        objj_msgSend(screenshot, "setDelegate:", self);
        if (self._screenshotTimer)
        {
            objj_msgSend(self._screenshotTimer, "invalidate");
            self._screenshotTimer = nil;
        }
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("getFullScreenshot"), function $TNVirtualMachineControlsController__getFullScreenshot(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineControlScreenshot,
        "size": "full"});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didReceiveFullScreenshot:"));
}
,["void"]), new objj_method(sel_getUid("_didReceiveFullScreenshot:"), function $TNVirtualMachineControlsController___didReceiveFullScreenshot_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var dataNode = objj_msgSend(aStanza, "firstChildWithName:", "screenshot");
        if (!dataNode)
            return NO;
        var base64Data = objj_msgSend(dataNode, "text"),
            screenshotWidth = objj_msgSend(dataNode, "valueForAttribute:", "width"),
            screenshotHeight = objj_msgSend(dataNode, "valueForAttribute:", "height"),
            screenshot = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithData:", objj_msgSend(CPData, "dataWithBase64:", base64Data));
        objj_msgSend(self.imageViewFullScreenshot, "setImage:", screenshot);
        objj_msgSend(self.popoverWindowScreenshot, "showRelativeToRect:ofView:preferredEdge:", nil, self.buttonScreenshot, nil);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("play"), function $TNVirtualMachineControlsController__play(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {"action": TNArchipelTypeVirtualMachineControlCreate});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didPlay:"));
}
,["void"]), new objj_method(sel_getUid("_didPlay:"), function $TNVirtualMachineControlsController___didPlay_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Virtual machine is running.", "Virtual machine is running."));
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("pause"), function $TNVirtualMachineControlsController__pause(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set"),
        selector;
    if (objj_msgSend(self._entity, "XMPPShow") == TNStropheContactStatusAway)
    {
        selector = sel_getUid("_didResume:")
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
            "xmlns": TNArchipelTypeVirtualMachineControl,
            "action": TNArchipelTypeVirtualMachineControlResume});
    }
    else if (objj_msgSend(self._entity, "XMPPShow") == TNStropheContactStatusOnline)
    {
        selector = sel_getUid("_didPause:")
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
            "xmlns": TNArchipelTypeVirtualMachineControl,
            "action": TNArchipelTypeVirtualMachineControlSuspend});
    }
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, selector);
}
,["void"]), new objj_method(sel_getUid("_didPause:"), function $TNVirtualMachineControlsController___didPause_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(self, "enableButtonsForPaused");
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Virtual machine is paused.", "Virtual machine is paused."));
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    objj_msgSend(self, "layoutButtons:", self._VMLibvirtStatus);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("_didResume:"), function $TNVirtualMachineControlsController___didResume_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Virtual machine was resumed.", "Virtual machine was resumed."));
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    objj_msgSend(self, "layoutButtons:", self._VMLibvirtStatus);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("stop"), function $TNVirtualMachineControlsController__stop(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineControlShutDown});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didStop:"));
}
,["void"]), new objj_method(sel_getUid("_didStop:"), function $TNVirtualMachineControlsController___didStop_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Virtual machine is shutting down.", "Virtual machine is shutting down."));
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("destroy"), function $TNVirtualMachineControlsController__destroy(self, _cmd)
{
    if (!objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "boolForKey:", "TNArchipelTypeVirtualMachineControlDoNotShowDestroyAlert"))
    {
        var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", objj_msgSend(CPString, "stringWithFormat:", CPBundleLocalizedString("Force Off %@?", "Force Off %@?"), objj_msgSend(self._entity, "name")), CPBundleLocalizedString("Force Off (destroy) a virtual machine is dangerous. It is equivalent to removing the power plug of a real computer.", "Force Off (destroy) a virtual machine is dangerous. It is equivalent to removing the power plug of a real computer."), self, [[CPBundleLocalizedString("Force Off", "Force Off"), sel_getUid("performDestroy:")], [CPBundleLocalizedString("Cancel", "Cancel"), sel_getUid("doNotPerformDestroy:")]]);
        objj_msgSend(alert, "setShowsSuppressionButton:", YES);
        objj_msgSend(alert, "setUserInfo:", alert);
        objj_msgSend(alert, "runModal");
    }
    else
    {
        objj_msgSend(self, "performDestroy:", nil);
    }
}
,["void"]), new objj_method(sel_getUid("performDestroy:"), function $TNVirtualMachineControlsController__performDestroy_(self, _cmd, someUserInfo)
{
    if (someUserInfo)
    {
        objj_msgSend(someUserInfo, "setUserInfo:", nil);
        if (objj_msgSend(objj_msgSend(someUserInfo, "suppressionButton"), "state") == CPOnState)
            objj_msgSend(objj_msgSend(CPUserDefaults, "standardUserDefaults"), "setBool:forKey:", YES, "TNArchipelTypeVirtualMachineControlDoNotShowDestroyAlert");
    }
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineControlDestroy});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didDestroy:"));
}
,["void","id"]), new objj_method(sel_getUid("doNotPerformDestroy:"), function $TNVirtualMachineControlsController__doNotPerformDestroy_(self, _cmd, someUserInfo)
{
    objj_msgSend(self, "layoutButtons:", self._VMLibvirtStatus);
}
,["void","id"]), new objj_method(sel_getUid("_didDestroy:"), function $TNVirtualMachineControlsController___didDestroy_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(self.buttonScreenshot, "setImage:", self._imageScreenShutDown);
        if (self._screenshotTimer)
        {
            objj_msgSend(self._screenshotTimer, "invalidate");
            self._screenshotTimer = nil;
        }
        if (self._cpuUsageTimer)
        {
            objj_msgSend(self._cpuUsageTimer, "invalidate");
            self._cpuUsageTimer = nil;
        }
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Virtual machine has been destroyed.", "Virtual machine has been destroyed."));
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("reboot"), function $TNVirtualMachineControlsController__reboot(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineControlReboot});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didReboot:"));
}
,["void"]), new objj_method(sel_getUid("_didReboot:"), function $TNVirtualMachineControlsController___didReboot_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Virtual machine is rebooting.", "Virtual machine is rebooting."));
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("setAutostart"), function $TNVirtualMachineControlsController__setAutostart(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set"),
        autostart = objj_msgSend(self.switchAutoStart, "isOn") ? "1" : "0";
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineControlAutostart,
        "value": autostart});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didSetAutostart:"));
}
,["void"]), new objj_method(sel_getUid("_didSetAutostart:"), function $TNVirtualMachineControlsController___didSetAutostart_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        if (objj_msgSend(self.switchAutoStart, "isOn"))
            objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Autostart has been set.", "Autostart has been set."));
        else
            objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Autostart has been unset.", "Autostart has been unset."));
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("getOOMKiller"), function $TNVirtualMachineControlsController__getOOMKiller(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineOOM});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineOOMGetAdjust});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didGetOOMKiller:"));
}
,["void"]), new objj_method(sel_getUid("_didGetOOMKiller:"), function $TNVirtualMachineControlsController___didGetOOMKiller_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var adjustValue = objj_msgSend(objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "oom"), "valueForAttribute:", "adjust"), "intValue"),
            scoreValue = objj_msgSend(objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "oom"), "valueForAttribute:", "score"), "intValue");
        if (adjustValue == -17)
            objj_msgSend(self.switchPreventOOMKiller, "setOn:animated:sendAction:", YES, YES, NO);
        else
            objj_msgSend(self.switchPreventOOMKiller, "setOn:animated:sendAction:", NO, YES, NO);
        objj_msgSend(self.fieldOOMScore, "setStringValue:", scoreValue);
        objj_msgSend(self.fieldOOMAdjust, "setStringValue:", (adjustValue == -17) ? CPBundleLocalizedString("Prevented", "Prevented") : adjustValue);
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("setPreventOOMKiller"), function $TNVirtualMachineControlsController__setPreventOOMKiller(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set"),
        prevent = objj_msgSend(self.switchPreventOOMKiller, "isOn") ? "-17" : "0";
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineOOM});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineOOMSetAdjust,
        "adjust": prevent});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didSetPreventOOMKiller:"));
}
,["void"]), new objj_method(sel_getUid("_didSetPreventOOMKiller:"), function $TNVirtualMachineControlsController___didSetPreventOOMKiller_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        if (objj_msgSend(self.switchPreventOOMKiller, "isOn"))
            objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("OOM Killer cannot kill this virtual machine.", "OOM Killer cannot kill this virtual machine."));
        else
            objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("OOM Killer can kill this virtual machine.", "OOM Killer can kill this virtual machine."));
        if (objj_msgSend(self, "currentEntityHasPermission:", "oom_getadjust"))
            objj_msgSend(self, "getOOMKiller");
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("setMemory"), function $TNVirtualMachineControlsController__setMemory(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set"),
        memory = objj_msgSend(self.sliderMemory, "intValue");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineControlMemory,
        "value": memory});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didSetMemory:"));
}
,["void"]), new objj_method(sel_getUid("_didSetMemory:"), function $TNVirtualMachineControlsController___didSetMemory_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "error")
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
        objj_msgSend(self, "getVirtualMachineInfo");
        if (objj_msgSend(self, "currentEntityHasPermission:", "oom_getadjust"))
            objj_msgSend(self, "getOOMKiller");
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("setVCPUs"), function $TNVirtualMachineControlsController__setVCPUs(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set"),
        cpus = objj_msgSend(self.stepperCPU, "doubleValue");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineControlVCPUs,
        "value": cpus});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didSetVCPUs:"));
}
,["void"]), new objj_method(sel_getUid("_didSetVCPUs:"), function $TNVirtualMachineControlsController___didSetVCPUs_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "error")
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
        objj_msgSend(self, "getVirtualMachineInfo");
        if (objj_msgSend(self, "currentEntityHasPermission:", "oom_getadjust"))
            objj_msgSend(self, "getOOMKiller");
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("migrate"), function $TNVirtualMachineControlsController__migrate(self, _cmd)
{
    if (!objj_msgSend(self, "currentEntityHasPermission:", "migrate"))
        return;
    if (objj_msgSend(self.tableHypervisors, "numberOfSelectedRows") != 1)
        return;
    var destinationHypervisor = objj_msgSend(self._datasourceHypervisors, "objectAtIndex:", objj_msgSend(self.tableHypervisors, "selectedRow"));
    if (objj_msgSend(destinationHypervisor, "fullJID") == self._currentHypervisorJID)
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("You can't migrate to the initial virtual machine's hypervisor.", "You can't migrate to the initial virtual machine's hypervisor."), TNGrowlIconError);
        return
    }
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Are you sure you want to migrate this virtual machine ?", "Are you sure you want to migrate this virtual machine ?"), CPBundleLocalizedString("You may continue to use this machine while migrating", "You may continue to use this machine while migrating"), self, [[CPBundleLocalizedString("Migrate", "Migrate"), sel_getUid("performMigrate:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "setUserInfo:", destinationHypervisor)
    objj_msgSend(alert, "runModal");
}
,["void"]), new objj_method(sel_getUid("performMigrate:"), function $TNVirtualMachineControlsController__performMigrate_(self, _cmd, someUserInfo)
{
    var destinationHypervisor = someUserInfo,
        stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineControlMigrate,
        "hypervisorjid": objj_msgSend(destinationHypervisor, "fullJID")});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didMigrate:"));
}
,["void","id"]), new objj_method(sel_getUid("_didMigrate:"), function $TNVirtualMachineControlsController___didMigrate_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Migration has started.", "Migration has started."));
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("free"), function $TNVirtualMachineControlsController__free(self, _cmd)
{
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Kill virtual machine?", "Kill virtual machine?"), CPBundleLocalizedString("You will loose this virtual machine. It will be destroyed, send to a black hole and it will never come back again. Sure?", "You will loose this virtual machine. It will be destroyed, send to a black hole and it will never come back again. Sure?"), self, [[CPBundleLocalizedString("Kill", "Kill"), sel_getUid("performFree:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "runModal");
}
,["void"]), new objj_method(sel_getUid("performFree:"), function $TNVirtualMachineControlsController__performFree_(self, _cmd, someUserInfo)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineControl});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineControlFree});
    self._virtualMachineToFree = self._entity;
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didFree:"));
}
,["void","id"]), new objj_method(sel_getUid("_didFree:"), function $TNVirtualMachineControlsController___didFree_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(objj_msgSend(TNStropheIMClient, "defaultClient"), "roster"), "removeContact:", self._virtualMachineToFree);
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Virtual machine killed.", "Virtual machine killed."));
        objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "postNotificationName:object:", TNArchipelRosterOutlineViewDeselectAll, self);
        self._virtualMachineToFree = nil;
    }
    else
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("park"), function $TNVirtualMachineControlsController__park(self, _cmd)
{
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", CPBundleLocalizedString("Park virtual machine?", "Park virtual machine?"), CPLocalizedString("Do you want to park this virtual machine?", "Do you want to park this virtual machine?"), self, [[CPBundleLocalizedString("Park", "Park"), sel_getUid("performPark:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "runModal");
}
,["void"]), new objj_method(sel_getUid("performPark:"), function $TNVirtualMachineControlsController__performPark_(self, _cmd, someUserInfo)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeVirtualMachineVMParking});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeVirtualMachineVMParkingPark,
        "force": "True"});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didPark:"));
}
,["void","id"]), new objj_method(sel_getUid("_didPark:"), function $TNVirtualMachineControlsController___didPark_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(self._entity, "name"), CPBundleLocalizedString("Virtual machine is parking.", "Virtual machine is parking."));
    else
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("tableViewSelectionDidChange:"), function $TNVirtualMachineControlsController__tableViewSelectionDidChange_(self, _cmd, aNotification)
{
    var selectedRow = objj_msgSend(objj_msgSend(self.tableHypervisors, "selectedRowIndexes"), "firstIndex");
    if (selectedRow == -1)
    {
        objj_msgSend(self._migrateButton, "setEnabled:", NO);
        return;
    }
    var item = objj_msgSend(self._datasourceHypervisors, "objectAtIndex:", selectedRow);
    if (objj_msgSend(item, "fullJID") != self._currentHypervisorJID && objj_msgSend(self._entity, "XMPPStatus") != "Not defined")
        objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._migrateButton, "migrate");
    else
        objj_msgSend(self._migrateButton, "setEnabled:", NO);
}
,["void","CPNotification"]), new objj_method(sel_getUid("imageDidLoad:"), function $TNVirtualMachineControlsController__imageDidLoad_(self, _cmd, anImage)
{
    objj_msgSend(self.buttonScreenshot, "setImage:", anImage);
    if (!self._screenshotTimer && objj_msgSend(self, "isVisible"))
    {
        var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
        self._screenshotTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", objj_msgSend(defaults, "integerForKey:", "TNArchipelControlsScreenshotRefresh"), self, sel_getUid("getThumbnailScreenshot:"), nil, NO);
    }
}
,["void","CPImage"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNVirtualMachineControlsController), comment);
}e;