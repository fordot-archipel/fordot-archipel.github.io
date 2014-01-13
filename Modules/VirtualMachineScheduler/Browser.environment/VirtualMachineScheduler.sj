@STATIC;1.0;p;23;TNSchedulerController.jt;15441;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;17;AppKit/CPButton.jI;20;AppKit/CPTextField.jI;22;AppKit/CPTabViewItem.jI;31;GrowlCappuccino/TNGrowlCenter.jI;35;StropheCappuccino/TNStropheStanza.jI;15;TNKit/TNAlert.jI;26;TNKit/TNTextFieldStepper.ji;28;../../Views/TNCalendarView.jt;15139;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPTabViewItem.j", NO);
objj_executeFile("GrowlCappuccino/TNGrowlCenter.j", NO);
objj_executeFile("StropheCappuccino/TNStropheStanza.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("TNKit/TNTextFieldStepper.j", NO);
objj_executeFile("../../Views/TNCalendarView.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelTypeEntitySchedule = "archipel:entity:scheduler",
    TNArchipelTypeEntityScheduleSchedule = "schedule",
    TNArchipelTypeEntityScheduleUnschedule = "unschedule",
    TNArchipelTypeEntityScheduleActions = "actions";
{var the_class = objj_allocateClassPair(CPObject, "TNSchedulerController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonNewJobOK"), new objj_ivar("checkBoxEveryDay"), new objj_ivar("checkBoxEveryHour"), new objj_ivar("checkBoxEveryMinute"), new objj_ivar("checkBoxEveryMonth"), new objj_ivar("checkBoxEverySecond"), new objj_ivar("checkBoxEveryYear"), new objj_ivar("buttonNewJobAction"), new objj_ivar("fieldNewJobComment"), new objj_ivar("viewNewJobOneShot"), new objj_ivar("viewNewJobRecurent"), new objj_ivar("calendarViewNewJob"), new objj_ivar("stepperHour"), new objj_ivar("stepperMinute"), new objj_ivar("stepperNewRecurrentJobDay"), new objj_ivar("stepperNewRecurrentJobHour"), new objj_ivar("stepperNewRecurrentJobMinute"), new objj_ivar("stepperNewRecurrentJobMonth"), new objj_ivar("stepperNewRecurrentJobSecond"), new objj_ivar("stepperNewRecurrentJobYear"), new objj_ivar("stepperSecond"), new objj_ivar("tabViewJobSchedule"), new objj_ivar("mainPopover"), new objj_ivar("_delegate"), new objj_ivar("_scheduledDate")]);
       
       






       
       







       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $TNSchedulerController__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNSchedulerController__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("awakeFromCib"), function $TNSchedulerController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.stepperHour, "setMaxValue:", 23);
    objj_msgSend(self.calendarViewNewJob, "setBorderedWithHexColor:", "#C0C7D2");
    objj_msgSend(self.calendarViewNewJob, "setDelegate:", self);
    var itemOneShot = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "itemOneShot");
    objj_msgSend(itemOneShot, "setLabel:", CPBundleLocalizedString("Unique", "Unique"));
    objj_msgSend(itemOneShot, "setView:", self.viewNewJobOneShot);
    objj_msgSend(self.tabViewJobSchedule, "addTabViewItem:", itemOneShot);
    var itemRecurrent = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "itemRecurrent");
    objj_msgSend(itemRecurrent, "setLabel:", CPBundleLocalizedString("Recurent", "Recurent"));
    objj_msgSend(itemRecurrent, "setView:", self.viewNewJobRecurent);
    objj_msgSend(self.tabViewJobSchedule, "addTabViewItem:", itemRecurrent);
    var date = objj_msgSend(CPDate, "date");
    objj_msgSend(self.stepperNewRecurrentJobYear, "setMaxValue:", objj_msgSend(objj_msgSend(date, "format:", "Y"), "intValue") + 100);
    objj_msgSend(self.stepperNewRecurrentJobYear, "setMinValue:", objj_msgSend(date, "format:", "Y"));
    objj_msgSend(self.stepperNewRecurrentJobMonth, "setMaxValue:", 12);
    objj_msgSend(self.stepperNewRecurrentJobMonth, "setMinValue:", 1);
    objj_msgSend(self.stepperNewRecurrentJobDay, "setMaxValue:", 31);
    objj_msgSend(self.stepperNewRecurrentJobDay, "setMinValue:", 1);
    objj_msgSend(self.stepperNewRecurrentJobHour, "setMaxValue:", 23);
    objj_msgSend(self.stepperNewRecurrentJobHour, "setMinValue:", 0);
}
,["void"]), new objj_method(sel_getUid("openWindow:"), function $TNSchedulerController__openWindow_(self, _cmd, aSender)
{
    var date = objj_msgSend(CPDate, "date");
    objj_msgSend(self.buttonNewJobAction, "selectItemAtIndex:", 0);
    objj_msgSend(self.fieldNewJobComment, "setStringValue:", "");
    objj_msgSend(self.stepperHour, "setDoubleValue:", objj_msgSend(date, "format:", "H"))
    objj_msgSend(self.stepperMinute, "setDoubleValue:", objj_msgSend(date, "format:", "i"))
    objj_msgSend(self.stepperSecond, "setDoubleValue:", 0.0);
    objj_msgSend(self.calendarViewNewJob, "makeSelectionWithDate:end:", date, date);
    objj_msgSend(self.stepperNewRecurrentJobYear, "setDoubleValue:", objj_msgSend(date, "format:", "Y"));
    objj_msgSend(self.stepperNewRecurrentJobMonth, "setDoubleValue:", objj_msgSend(date, "format:", "m"));
    objj_msgSend(self.stepperNewRecurrentJobDay, "setDoubleValue:", objj_msgSend(date, "format:", "d"));
    objj_msgSend(self.stepperNewRecurrentJobHour, "setDoubleValue:", objj_msgSend(date, "format:", "H"));
    objj_msgSend(self.stepperNewRecurrentJobMinute, "setDoubleValue:", objj_msgSend(date, "format:", "i"));
    objj_msgSend(self.stepperNewRecurrentJobSecond, "setDoubleValue:", 0.0);
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self.mainPopover, "showRelativeToRect:ofView:preferredEdge:", nil, aSender, nil);
    objj_msgSend(self.mainPopover, "makeFirstResponder:", self.fieldNewJobComment);
    objj_msgSend(self.mainPopover, "setDefaultButton:", self.buttonNewJobOK);
}
,["id","id"]), new objj_method(sel_getUid("closeWindow:"), function $TNSchedulerController__closeWindow_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close")
}
,["id","id"]), new objj_method(sel_getUid("alloc:"), function $TNSchedulerController__alloc_(self, _cmd, aSender)
{
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self, "alloc");
}
,["id","id"]), new objj_method(sel_getUid("schedule:"), function $TNSchedulerController__schedule_(self, _cmd, sender)
{
    objj_msgSend(self.mainPopover, "close");
    objj_msgSend(self, "schedule");
}
,["id","id"]), new objj_method(sel_getUid("unschedule:"), function $TNSchedulerController__unschedule_(self, _cmd, sender)
{
    objj_msgSend(self, "unschedule");
}
,["id","id"]), new objj_method(sel_getUid("checkboxClicked:"), function $TNSchedulerController__checkboxClicked_(self, _cmd, aSender)
{
    switch (objj_msgSend(aSender, "tag"))
    {
        case 1:
            objj_msgSend(self.stepperNewRecurrentJobYear, "setEnabled:", !objj_msgSend(aSender, "state"));
            break;
        case 2:
            objj_msgSend(self.stepperNewRecurrentJobMonth, "setEnabled:", !objj_msgSend(aSender, "state"));
            break;
        case 3:
            objj_msgSend(self.stepperNewRecurrentJobDay, "setEnabled:", !objj_msgSend(aSender, "state"));
            break;
        case 4:
            objj_msgSend(self.stepperNewRecurrentJobHour, "setEnabled:", !objj_msgSend(aSender, "state"));
            break;
        case 5:
            objj_msgSend(self.stepperNewRecurrentJobMinute, "setEnabled:", !objj_msgSend(aSender, "state"));
            break;
        case 6:
            objj_msgSend(self.stepperNewRecurrentJobSecond, "setEnabled:", !objj_msgSend(aSender, "state"));
            break;
    }
}
,["id","id"]), new objj_method(sel_getUid("getActions"), function $TNSchedulerController__getActions(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeEntitySchedule});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeEntityScheduleActions});
    objj_msgSend(objj_msgSend(self._delegate, "entity"), "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveActions:"), self);
}
,["void"]), new objj_method(sel_getUid("_didReceiveActions:"), function $TNSchedulerController___didReceiveActions_(self, _cmd, aStanza)
{
    objj_msgSend(self.buttonNewJobAction, "removeAllItems");
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var actions = objj_msgSend(aStanza, "childrenWithName:", "action");
        for (var i = 0; i < objj_msgSend(actions, "count"); i++)
            objj_msgSend(self.buttonNewJobAction, "addItemWithTitle:", objj_msgSend(objj_msgSend(actions, "objectAtIndex:", i), "text"));
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("schedule"), function $TNSchedulerController__schedule(self, _cmd)
{
    if (!self._scheduledDate)
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("You must select a date", "You must select a date"), TNGrowlIconError);
        return;
    }
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    var year,
        month,
        day,
        hour,
        minute,
        second;
    if (objj_msgSend(objj_msgSend(self.tabViewJobSchedule, "selectedTabViewItem"), "identifier") == "itemOneShot")
    {
        year = objj_msgSend(self._scheduledDate, "format:", "Y");
        month = objj_msgSend(self._scheduledDate, "format:", "m");
        day = objj_msgSend(self._scheduledDate, "format:", "d");
        hour = objj_msgSend(self.stepperHour, "doubleValue");
        minute = objj_msgSend(self.stepperMinute, "doubleValue");
        second = objj_msgSend(self.stepperSecond, "doubleValue");
    }
    else if (objj_msgSend(objj_msgSend(self.tabViewJobSchedule, "selectedTabViewItem"), "identifier") == "itemRecurrent")
    {
        year = (!objj_msgSend(self.checkBoxEveryYear, "state")) ? objj_msgSend(self.stepperNewRecurrentJobYear, "doubleValue") : "*";
        month = (!objj_msgSend(self.checkBoxEveryMonth, "state")) ? objj_msgSend(self.stepperNewRecurrentJobMonth, "doubleValue") : "*";
        day = (!objj_msgSend(self.checkBoxEveryDay, "state")) ? objj_msgSend(self.stepperNewRecurrentJobDay, "doubleValue") : "*";
        hour = (!objj_msgSend(self.checkBoxEveryHour, "state")) ? objj_msgSend(self.stepperNewRecurrentJobHour, "doubleValue") : "*";
        minute = (!objj_msgSend(self.checkBoxEveryMinute, "state")) ? objj_msgSend(self.stepperNewRecurrentJobMinute, "doubleValue") : "*";
        second = (!objj_msgSend(self.checkBoxEverySecond, "state")) ? objj_msgSend(self.stepperNewRecurrentJobSecond, "doubleValue") : "*";
    }
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeEntitySchedule});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeEntityScheduleSchedule,
        "comment": objj_msgSend(self.fieldNewJobComment, "stringValue"),
        "job": objj_msgSend(self.buttonNewJobAction, "title"),
        "year": year,
        "month": month,
        "day": day,
        "hour": hour,
        "minute": minute,
        "second": second});
    objj_msgSend(objj_msgSend(self._delegate, "entity"), "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didScheduleJob:"), self);
}
,["void"]), new objj_method(sel_getUid("_didScheduleJob:"), function $TNSchedulerController___didScheduleJob_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", objj_msgSend(objj_msgSend(self._delegate, "entity"), "name"), CPBundleLocalizedString("Action has been scheduled", "Action has been scheduled"));
    }
    else
    {
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("unschedule"), function $TNSchedulerController__unschedule(self, _cmd)
{
    var tableJobs = objj_msgSend(self._delegate, "tableJobs");
    if ((objj_msgSend(tableJobs, "numberOfRows") == 0) || (objj_msgSend(tableJobs, "numberOfSelectedRows") <= 0))
    {
         objj_msgSend(TNAlert, "showAlertWithMessage:informative:", CPBundleLocalizedString("Error", "Error"), CPBundleLocalizedString("You must select a job", "You must select a job"));
         return;
    }
    var title = CPBundleLocalizedString("Unschedule Jobs", "Unschedule Jobs"),
        msg = CPBundleLocalizedString("Are you sure you want to unschedule these jobs ?", "Are you sure you want to unschedule these jobs ?");
    if (objj_msgSend(objj_msgSend(tableJobs, "selectedRowIndexes"), "count") < 2)
    {
        title = CPBundleLocalizedString("Unschedule job", "Unschedule job");
        msg = CPBundleLocalizedString("Are you sure you want to unschedule this job ?", "Are you sure you want to unschedule this job ?");
    }
    var alert = objj_msgSend(TNAlert, "alertWithMessage:informative:target:actions:", title, msg, self, [[CPBundleLocalizedString("Unschedule", "Unschedule"), sel_getUid("performUnschedule:")], [CPBundleLocalizedString("Cancel", "Cancel"), nil]]);
    objj_msgSend(alert, "setUserInfo:", objj_msgSend(tableJobs, "selectedRowIndexes"));
    objj_msgSend(alert, "runModal");
}
,["void"]), new objj_method(sel_getUid("performUnschedule:"), function $TNSchedulerController__performUnschedule_(self, _cmd, userInfo)
{
    var tableJobs = objj_msgSend(self._delegate, "tableJobs"),
        indexes = userInfo,
        objects = objj_msgSend(objj_msgSend(tableJobs, "dataSource"), "objectsAtIndexes:", indexes);
    objj_msgSend(tableJobs, "deselectAll");
    for (var i = 0; i < objj_msgSend(objects, "count"); i++)
    {
        var job = objj_msgSend(objects, "objectAtIndex:", i),
            stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "set");
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeEntitySchedule});
        objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
            "action": TNArchipelTypeEntityScheduleUnschedule,
            "uid": objj_msgSend(job, "objectForKey:", "uid")});
        objj_msgSend(objj_msgSend(self._delegate, "entity"), "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didUnscheduleJobs:"), self);
    }
}
,["void","id"]), new objj_method(sel_getUid("_didUnscheduleJobs:"), function $TNSchedulerController___didUnscheduleJobs_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") != "result")
        objj_msgSend(self._delegate, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("calendarView:didMakeSelection:end:"), function $TNSchedulerController__calendarView_didMakeSelection_end_(self, _cmd, aCalendarView, aStartDate, anEndDate)
{
    self._scheduledDate = aStartDate;
}
,["void","LPCalendarView","CPDate","CPDate"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNSchedulerController), comment);
}p;37;TNVirtualMachineSchedulerController.jt;9094;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;20;AppKit/CPButtonBar.jI;19;AppKit/CPCheckBox.jI;22;AppKit/CPPopUpButton.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPTableView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;15;TNKit/TNAlert.jI;29;TNKit/TNTableViewDataSource.ji;22;../../Model/TNModule.ji;23;TNSchedulerController.jt;8743;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPButtonBar.j", NO);
objj_executeFile("AppKit/CPCheckBox.j", NO);
objj_executeFile("AppKit/CPPopUpButton.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("TNKit/TNAlert.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("TNSchedulerController.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelPushNotificationScheduler = "archipel:push:scheduler",
    TNArchipelTypeEntitySchedule = "archipel:entity:scheduler",
    TNArchipelTypeEntityScheduleJobs = "jobs";
{var the_class = objj_allocateClassPair(TNModule, "TNVirtualMachineScheduler"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("buttonBarJobs"), new objj_ivar("filterFieldJobs"), new objj_ivar("tableJobs"), new objj_ivar("viewTableContainer"), new objj_ivar("schedulerController"), new objj_ivar("_buttonSchedule"), new objj_ivar("_buttonUnschedule"), new objj_ivar("_scheduledDate"), new objj_ivar("_datasourceJobs")]);
       
       






       
       

       
       

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("tableJobs"), function $TNVirtualMachineScheduler__tableJobs(self, _cmd)
{
return self.tableJobs;
}
,["CPTableView"]), new objj_method(sel_getUid("awakeFromCib"), function $TNVirtualMachineScheduler__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.viewTableContainer, "setBorderedWithHexColor:", "#C0C7D2");
    self._datasourceJobs = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self._datasourceJobs, "setTable:", self.tableJobs);
    objj_msgSend(self._datasourceJobs, "setSearchableKeyPaths:", ["comment", "action", "date"]);
    objj_msgSend(self.tableJobs, "setDataSource:", self._datasourceJobs);
    self._buttonSchedule = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._buttonSchedule, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/plus.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._buttonSchedule, "setTarget:", self);
    objj_msgSend(self._buttonSchedule, "setAction:", sel_getUid("openNewJobWindow:"));
    self._buttonUnschedule = objj_msgSend(CPButtonBar, "plusButton");
    objj_msgSend(self._buttonUnschedule, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "pathForResource:", "IconsButtons/minus.png"), CGSizeMake(16, 16)));
    objj_msgSend(self._buttonUnschedule, "setTarget:", self.schedulerController);
    objj_msgSend(self._buttonUnschedule, "setAction:", sel_getUid("unschedule:"));
    objj_msgSend(self.buttonBarJobs, "setButtons:", [self._buttonSchedule, self._buttonUnschedule]);
    objj_msgSend(self.filterFieldJobs, "setTarget:", self._datasourceJobs);
    objj_msgSend(self.filterFieldJobs, "setAction:", sel_getUid("filterObjects:"));
    objj_msgSend(self.schedulerController, "setDelegate:", self);
}
,["void"]), new objj_method(sel_getUid("willShow"), function $TNVirtualMachineScheduler__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineScheduler").super_class }, "willShow"))
        return NO;
    objj_msgSend(self, "registerSelector:forPushNotificationType:", sel_getUid("_didReceivePush:"), TNArchipelPushNotificationScheduler);
    objj_msgSend(self, "getJobs");
    objj_msgSend(self.schedulerController, "getActions");
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willHide"), function $TNVirtualMachineScheduler__willHide(self, _cmd)
{
    objj_msgSend(self.schedulerController, "closeWindow:", nil);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineScheduler").super_class }, "willHide");
}
,["void"]), new objj_method(sel_getUid("menuReady"), function $TNVirtualMachineScheduler__menuReady(self, _cmd)
{
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Schedule new action", "Schedule new action"), sel_getUid("openNewJobWindow:"), ""), "setTarget:", self);
    objj_msgSend(objj_msgSend(self._menu, "addItemWithTitle:action:keyEquivalent:", CPBundleLocalizedString("Unschedule selected action", "Unschedule selected action"), sel_getUid("unschedule:"), ""), "setTarget:", self.schedulerController);
}
,["void"]), new objj_method(sel_getUid("permissionsChanged"), function $TNVirtualMachineScheduler__permissionsChanged(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVirtualMachineScheduler").super_class }, "permissionsChanged");
}
,["void"]), new objj_method(sel_getUid("setUIAccordingToPermissions"), function $TNVirtualMachineScheduler__setUIAccordingToPermissions(self, _cmd)
{
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._buttonSchedule, "scheduler_schedule");
    objj_msgSend(self, "setControl:enabledAccordingToPermission:", self._buttonUnschedule, "scheduler_unschedule");
    if (!objj_msgSend(self, "currentEntityHasPermission:", "scheduler_schedule"))
        objj_msgSend(self.schedulerController, "closeWindow:", nil);
}
,["void"]), new objj_method(sel_getUid("flushUI"), function $TNVirtualMachineScheduler__flushUI(self, _cmd)
{
    objj_msgSend(self._datasourceJobs, "removeAllObjects");
    objj_msgSend(self.tableJobs, "reloadData");
}
,["void"]), new objj_method(sel_getUid("_didReceivePush:"), function $TNVirtualMachineScheduler___didReceivePush_(self, _cmd, somePushInfo)
{
    var sender = objj_msgSend(somePushInfo, "objectForKey:", "owner"),
        type = objj_msgSend(somePushInfo, "objectForKey:", "type"),
        change = objj_msgSend(somePushInfo, "objectForKey:", "change"),
        date = objj_msgSend(somePushInfo, "objectForKey:", "date");
    objj_msgSend(self, "getJobs");
    return YES;
}
,["BOOL","CPDictionary"]), new objj_method(sel_getUid("openNewJobWindow:"), function $TNVirtualMachineScheduler__openNewJobWindow_(self, _cmd, aSender)
{
    objj_msgSend(self, "requestVisible");
    if (!objj_msgSend(self, "isVisible"))
        return;
    objj_msgSend(self.schedulerController, "openWindow:", self._buttonSchedule);
}
,["id","id"]), new objj_method(sel_getUid("getJobs"), function $TNVirtualMachineScheduler__getJobs(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeEntitySchedule});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeEntityScheduleJobs});
    objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self._entity, "sendStanza:andRegisterSelector:ofObject:", stanza, sel_getUid("_didReceiveJobs:"), self);
}
,["void"]), new objj_method(sel_getUid("_didReceiveJobs:"), function $TNVirtualMachineScheduler___didReceiveJobs_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(self._datasourceJobs, "removeAllObjects");
        var jobs = objj_msgSend(aStanza, "childrenWithName:", "job");
        for (var i = 0; i < objj_msgSend(jobs, "count"); i++)
        {
            var job = objj_msgSend(jobs, "objectAtIndex:", i),
                action = objj_msgSend(job, "valueForAttribute:", "action"),
                uid = objj_msgSend(job, "valueForAttribute:", "uid"),
                comment = objj_msgSend(job, "valueForAttribute:", "comment"),
                date = objj_msgSend(job, "valueForAttribute:", "date"),
                newJob = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", action, "action", uid, "uid", comment, "comment", date, "date");
            objj_msgSend(self._datasourceJobs, "addObject:", newJob);
        }
        objj_msgSend(self.tableJobs, "reloadData");
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusReady);
    }
    else
    {
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusError);
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNVirtualMachineScheduler), comment);
}e;