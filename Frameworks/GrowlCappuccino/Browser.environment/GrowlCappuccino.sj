@STATIC;1.0;p;17;GrowlCappuccino.jt;138;@STATIC;1.0;i;15;TNGrowlCenter.ji;13;TNGrowlView.jt;83;objj_executeFile("TNGrowlCenter.j", YES);;
objj_executeFile("TNGrowlView.j", YES);;p;15;TNGrowlCenter.jt;12234;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;24;AppKit/CPViewAnimation.ji;16;TNGrowlMessage.ji;13;TNGrowlView.jt;12098;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPViewAnimation.j", NO);
objj_executeFile("TNGrowlMessage.j", YES);
objj_executeFile("TNGrowlView.j", YES);
TNGrowlDefaultCenter = nil;
TNGrowlPlacementWidth = 250.0
TNGrowlPlacementHeight = 80.0
TNGrowlPlacementMarginTop = 10.0;
TNGrowlPlacementMarginRight = 10.0;
TNGrowlAnimationDuration = 0.3;
var _TNGrowlIconInfo,
    _TNGrowlIconError,
    _TNGrowlIconWarning;
{var the_class = objj_allocateClassPair(CPObject, "TNGrowlCenter"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_notificationsHistory"), new objj_ivar("_tableForNotificationHistory"), new objj_ivar("_view"), new objj_ivar("_defaultLifeTime"), new objj_ivar("_maxHistory"), new objj_ivar("_notifications"), new objj_ivar("_notificationFrame")]);



       
       

       
       

       
       




       
       


       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("notificationsHistory"), function $TNGrowlCenter__notificationsHistory(self, _cmd)
{
return self._notificationsHistory;
}
,["CPArray"]), new objj_method(sel_getUid("setNotificationsHistory:"), function $TNGrowlCenter__setNotificationsHistory_(self, _cmd, newValue)
{
self._notificationsHistory = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("tableForNotificationHistory"), function $TNGrowlCenter__tableForNotificationHistory(self, _cmd)
{
return self._tableForNotificationHistory;
}
,["CPTableView"]), new objj_method(sel_getUid("_setTableForNotificationHistory:"), function $TNGrowlCenter___setTableForNotificationHistory_(self, _cmd, newValue)
{
self._tableForNotificationHistory = newValue;
}
,["void","CPTableView"]), new objj_method(sel_getUid("view"), function $TNGrowlCenter__view(self, _cmd)
{
return self._view;
}
,["CPView"]), new objj_method(sel_getUid("setView:"), function $TNGrowlCenter__setView_(self, _cmd, newValue)
{
self._view = newValue;
}
,["void","CPView"]), new objj_method(sel_getUid("lifeDefaultTime"), function $TNGrowlCenter__lifeDefaultTime(self, _cmd)
{
return self._defaultLifeTime;
}
,["float"]), new objj_method(sel_getUid("setLifeDefaultTime:"), function $TNGrowlCenter__setLifeDefaultTime_(self, _cmd, newValue)
{
self._defaultLifeTime = newValue;
}
,["void","float"]), new objj_method(sel_getUid("maxHistory"), function $TNGrowlCenter__maxHistory(self, _cmd)
{
return self._maxHistory;
}
,["int"]), new objj_method(sel_getUid("setMaxHistory:"), function $TNGrowlCenter__setMaxHistory_(self, _cmd, newValue)
{
self._maxHistory = newValue;
}
,["void","int"]), new objj_method(sel_getUid("init"), function $TNGrowlCenter__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNGrowlCenter").super_class }, "init"))
    {
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class"));
        self._defaultLifeTime = objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNGrowlDefaultLifeTime");
        self._notifications = objj_msgSend(CPArray, "array");
        self._notificationFrame = CGRectMake(10,10, TNGrowlPlacementWidth,TNGrowlPlacementHeight);
        self._notificationsHistory = objj_msgSend(CPArray, "array");
        self._maxHistory = 50;
        _TNGrowlIconInfo = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "icon-info.png"));
        _TNGrowlIconError = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "icon-error.png"));
        _TNGrowlIconWarning = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "icon-warning.png"));
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("didReceivedNotificationEndLifeTime:"), function $TNGrowlCenter__didReceivedNotificationEndLifeTime_(self, _cmd, aNotification)
{
    var center = objj_msgSend(CPNotificationCenter, "defaultCenter"),
        senderView = objj_msgSend(aNotification, "object"),
        animView = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", senderView, CPViewAnimationTargetKey, CPViewAnimationFadeOutEffect, CPViewAnimationEffectKey),
        anim = objj_msgSend(objj_msgSend(CPViewAnimation, "alloc"), "initWithViewAnimations:", [animView]);
    objj_msgSend(center, "removeObserver:name:object:", self, TNGrowlViewLifeTimeExpirationNotification, senderView);
    objj_msgSend(anim, "setDuration:", TNGrowlAnimationDuration);
    objj_msgSend(anim, "setDelegate:", self);
    objj_msgSend(anim, "startAnimation");
}
,["void","CPNotification"]), new objj_method(sel_getUid("pushNotificationWithTitle:message:"), function $TNGrowlCenter__pushNotificationWithTitle_message_(self, _cmd, aTitle, aMessage)
{
    objj_msgSend(self, "pushNotificationWithTitle:message:icon:", aTitle, aMessage, TNGrowlIconInfo);
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("pushNotificationWithTitle:message:icon:"), function $TNGrowlCenter__pushNotificationWithTitle_message_icon_(self, _cmd, aTitle, aMessage, anIconType)
{
    objj_msgSend(self, "pushNotificationWithTitle:message:customIcon:", aTitle, aMessage, anIconType);
}
,["void","CPString","CPString","CPString"]), new objj_method(sel_getUid("pushNotificationWithTitle:message:customIcon:"), function $TNGrowlCenter__pushNotificationWithTitle_message_customIcon_(self, _cmd, aTitle, aMessage, anIcon)
{
    objj_msgSend(self, "pushNotificationWithTitle:message:customIcon:target:action:actionParameters:", aTitle, aMessage, anIcon, nil, nil, nil);
}
,["void","CPString","CPString","id"]), new objj_method(sel_getUid("pushNotificationWithTitle:message:customIcon:target:action:actionParameters:"), function $TNGrowlCenter__pushNotificationWithTitle_message_customIcon_target_action_actionParameters_(self, _cmd, aTitle, aMessage, anIcon, aTarget, anAction, anObject)
{
    var center = objj_msgSend(CPNotificationCenter, "defaultCenter"),
        notifView = objj_msgSend(objj_msgSend(TNGrowlView, "alloc"), "initWithFrame:title:message:icon:lifeTime:", self._notificationFrame, aTitle, aMessage, anIcon, self._defaultLifeTime),
        frame = objj_msgSend(self._view, "frame"),
        notifFrame = CGRectCreateCopy(self._notificationFrame),
        animParams = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", notifView, CPViewAnimationTargetKey, CPViewAnimationFadeInEffect, CPViewAnimationEffectKey),
        anim = objj_msgSend(objj_msgSend(CPViewAnimation, "alloc"), "initWithViewAnimations:", [animParams]);
    objj_msgSend(center, "addObserver:selector:name:object:", self, sel_getUid("didReceivedNotificationEndLifeTime:"), TNGrowlViewLifeTimeExpirationNotification, notifView);
    notifFrame.origin.x = frame.size.width - self._notificationFrame.size.width - TNGrowlPlacementMarginRight;
    notifFrame.origin.y = TNGrowlPlacementMarginTop;
    for (var i = 0; i < objj_msgSend(self._notifications, "count"); i++)
    {
        var isViewInThisFrame = NO,
            tmpFrame;
        for (var j = 0; j < objj_msgSend(self._notifications, "count"); j++)
        {
            tmpFrame = objj_msgSend(objj_msgSend(self._notifications, "objectAtIndex:", j), "frame");
            if ((notifFrame.origin.y == tmpFrame.origin.y) && (notifFrame.origin.x == tmpFrame.origin.x))
            {
                isViewInThisFrame = YES;
                break;
            }
        }
        if (!isViewInThisFrame)
            break;
        notifFrame.origin.y += tmpFrame.size.height + TNGrowlPlacementMarginTop;
        if ((notifFrame.origin.y + notifFrame.size.height) >= frame.size.height)
        {
            notifFrame.origin.x -= (notifFrame.size.width + TNGrowlPlacementMarginRight);
            notifFrame.origin.y = TNGrowlPlacementMarginTop;
        }
    }
    objj_msgSend(self._notifications, "addObject:", notifView);
    objj_msgSend(notifView, "setAutoresizingMask:", CPViewMinXMargin);
    objj_msgSend(notifView, "setFrame:", notifFrame);
    objj_msgSend(notifView, "setTarget:", aTarget);
    objj_msgSend(notifView, "setAction:", anAction);
    objj_msgSend(notifView, "setActionParameters:", anObject);
    objj_msgSend(self._view, "addSubview:", notifView);
    objj_msgSend(anim, "setDuration:", 0.3);
    objj_msgSend(anim, "startAnimation");
    var imageIcon;
    switch (anIcon)
    {
        case TNGrowlIconWarning:
            imageIcon = _TNGrowlIconWarning;
            break;
        case TNGrowlIconError:
            imageIcon = _TNGrowlIconError;
            break;
        default:
            imageIcon = _TNGrowlIconInfo;
            break;
    }
    objj_msgSend(self._notificationsHistory, "addObject:", objj_msgSend(TNGrowlMessage, "growlMessageWithTitle:message:icon:", aTitle, aMessage, imageIcon));
    if (objj_msgSend(self._notificationsHistory, "count") > self._maxHistory)
        objj_msgSend(self._notificationsHistory, "removeObjectAtIndex:", 0);
    if (self._tableForNotificationHistory)
        objj_msgSend(self._tableForNotificationHistory, "reloadData");
}
,["void","CPString","CPString","id","id","SEL","id"]), new objj_method(sel_getUid("setTableForNotificationHistory:"), function $TNGrowlCenter__setTableForNotificationHistory_(self, _cmd, aTableView)
{
    if (self._tableForNotificationHistory === aTableView)
        return;
    if (!objj_msgSend(objj_msgSend(self._tableForNotificationHistory, "dataSource"), "className") === "TNTableViewDataSource")
        CPLog.warn("GrowlCappuccino: You should usie a table view as notification history that uses TNTableViewDataSource.");
    self._tableForNotificationHistory = aTableView;
    objj_msgSend(objj_msgSend(self._tableForNotificationHistory, "dataSource"), "setContent:", objj_msgSend(self._notificationsHistory, "copy"));
    self._notificationsHistory = objj_msgSend(self._tableForNotificationHistory, "dataSource");
    objj_msgSend(self._tableForNotificationHistory, "reloadData");
}
,["void","CPTableView"]), new objj_method(sel_getUid("clearHistory"), function $TNGrowlCenter__clearHistory(self, _cmd)
{
    objj_msgSend(self._notificationsHistory, "removeAllObjects");
    if (self._tableForNotificationHistory)
        objj_msgSend(self._tableForNotificationHistory, "reloadData");
}
,["void"]), new objj_method(sel_getUid("animationDidEnd:"), function $TNGrowlCenter__animationDidEnd_(self, _cmd, anAnimation)
{
    var senderView = objj_msgSend(objj_msgSend(objj_msgSend(anAnimation, "viewAnimations"), "objectAtIndex:", 0), "objectForKey:", CPViewAnimationTargetKey);
    objj_msgSend(self._notifications, "removeObject:", senderView);
    objj_msgSend(senderView, "removeFromSuperview");
}
,["void","CPAnimation"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("defaultCenter"), function $TNGrowlCenter__defaultCenter(self, _cmd)
{
    if (!TNGrowlDefaultCenter)
        TNGrowlDefaultCenter = objj_msgSend(objj_msgSend(TNGrowlCenter, "alloc"), "init");
    return TNGrowlDefaultCenter;
}
,["id"]), new objj_method(sel_getUid("pushNotificationWithTitle:message:"), function $TNGrowlCenter__pushNotificationWithTitle_message_(self, _cmd, aTitle, aMessage)
{
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:", aTitle, aMessage);
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("pushErrorNotificationWithTitle:message:"), function $TNGrowlCenter__pushErrorNotificationWithTitle_message_(self, _cmd, aTitle, aMessage)
{
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", aTitle, aMessage, TNGrowlIconError);
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("pushWarningNotificationWithTitle:message:"), function $TNGrowlCenter__pushWarningNotificationWithTitle_message_(self, _cmd, aTitle, aMessage)
{
    objj_msgSend(objj_msgSend(TNGrowlCenter, "defaultCenter"), "pushNotificationWithTitle:message:icon:", aTitle, aMessage, TNGrowlIconWarning);
}
,["void","CPString","CPString"])]);
}p;16;TNGrowlMessage.jt;2055;@STATIC;1.0;I;23;Foundation/Foundation.jt;2008;objj_executeFile("Foundation/Foundation.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNGrowlMessage"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("title"), new objj_ivar("message"), new objj_ivar("icon"), new objj_ivar("date")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("title"), function $TNGrowlMessage__title(self, _cmd)
{
return self.title;
}
,["CPString"]), new objj_method(sel_getUid("setTitle:"), function $TNGrowlMessage__setTitle_(self, _cmd, newValue)
{
self.title = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("message"), function $TNGrowlMessage__message(self, _cmd)
{
return self.message;
}
,["CPString"]), new objj_method(sel_getUid("setMessage:"), function $TNGrowlMessage__setMessage_(self, _cmd, newValue)
{
self.message = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("icon"), function $TNGrowlMessage__icon(self, _cmd)
{
return self.icon;
}
,["CPImage"]), new objj_method(sel_getUid("setIcon:"), function $TNGrowlMessage__setIcon_(self, _cmd, newValue)
{
self.icon = newValue;
}
,["void","CPImage"]), new objj_method(sel_getUid("date"), function $TNGrowlMessage__date(self, _cmd)
{
return self.date;
}
,["CPDate"]), new objj_method(sel_getUid("setDate:"), function $TNGrowlMessage__setDate_(self, _cmd, newValue)
{
self.date = newValue;
}
,["void","CPDate"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("growlMessageWithTitle:message:icon:"), function $TNGrowlMessage__growlMessageWithTitle_message_icon_(self, _cmd, aTitle, aMessage, anIcon)
{
    var growlMessage = objj_msgSend(objj_msgSend(TNGrowlMessage, "alloc"), "init");
    objj_msgSend(growlMessage, "setTitle:", aTitle);
    objj_msgSend(growlMessage, "setMessage:", aMessage);
    objj_msgSend(growlMessage, "setIcon:", anIcon);
    objj_msgSend(growlMessage, "setDate:", objj_msgSend(CPDate, "date"));
    return growlMessage;
}
,["TNGrowlMessage","CPString","CPString","CPImage"])]);
}p;13;TNGrowlView.jt;9835;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPImage.jI;20;AppKit/CPImageView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jt;9697;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
//@global TNGrowlPlacementHeight
TNGrowlIconInfo = "TNGrowlIconInfo";
TNGrowlIconError = "TNGrowlIconError";
TNGrowlIconWarning = "TNGrowlIconWarning";
TNGrowlViewLifeTimeExpirationNotification = "TNGrowlViewLifeTimeExpirationNotification";
{var the_class = objj_allocateClassPair(CPView, "TNGrowlView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_actionParameters"), new objj_ivar("_target"), new objj_ivar("_action"), new objj_ivar("_icon"), new objj_ivar("_message"), new objj_ivar("_title"), new objj_ivar("_timer"), new objj_ivar("_lifeTime")]);
       
       



       
       

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("actionParameters"), function $TNGrowlView__actionParameters(self, _cmd)
{
return self._actionParameters;
}
,["id"]), new objj_method(sel_getUid("setActionParameters:"), function $TNGrowlView__setActionParameters_(self, _cmd, newValue)
{
self._actionParameters = newValue;
}
,["void","id"]), new objj_method(sel_getUid("target"), function $TNGrowlView__target(self, _cmd)
{
return self._target;
}
,["id"]), new objj_method(sel_getUid("setTarget:"), function $TNGrowlView__setTarget_(self, _cmd, newValue)
{
self._target = newValue;
}
,["void","id"]), new objj_method(sel_getUid("action"), function $TNGrowlView__action(self, _cmd)
{
return self._action;
}
,["SEL"]), new objj_method(sel_getUid("setAction:"), function $TNGrowlView__setAction_(self, _cmd, newValue)
{
self._action = newValue;
}
,["void","SEL"]), new objj_method(sel_getUid("initWithFrame:title:message:icon:lifeTime:"), function $TNGrowlView__initWithFrame_title_message_icon_lifeTime_(self, _cmd, aFrame, aTitle, aMessage, anIcon, aLifeTime)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNGrowlView").super_class }, "initWithFrame:", aFrame))
    {
        self._title = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(44, 5, aFrame.size.width - 44, 20));
        objj_msgSend(self._title, "setStringValue:", aTitle);
        objj_msgSend(self._title, "setFont:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 12));
        objj_msgSend(self._title, "setTextColor:", objj_msgSend(CPColor, "whiteColor"));
        objj_msgSend(self._title, "setAutoresizingMask:", CPViewWidthSizable);
        objj_msgSend(self, "addSubview:", self._title);
        self._message = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(44, 20, aFrame.size.width - 50, aFrame.size.height - 25));
        objj_msgSend(self._message, "setStringValue:", aMessage);
        objj_msgSend(self._message, "setLineBreakMode:", CPLineBreakByWordWrapping);
        objj_msgSend(self._message, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
        objj_msgSend(self._message, "setTextColor:", objj_msgSend(self, "valueForThemeAttribute:", "text-color"));
        objj_msgSend(self, "addSubview:", self._message);
        objj_msgSend(self, "setBackgroundColor:", objj_msgSend(self, "valueForThemeAttribute:", "background-color"));
        objj_msgSend(self, "setAlphaValue:", objj_msgSend(self, "valueForThemeAttribute:", "alpha-value"));
        self._icon = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMake(5, 6, 36, 36));
        objj_msgSend(self._icon, "setImageScaling:", CPScaleProportionally);
        if (objj_msgSend(anIcon, "isKindOfClass:", CPImage))
            objj_msgSend(self._icon, "setImage:", anIcon);
        else
            switch (anIcon)
            {
                case TNGrowlIconInfo:
                    objj_msgSend(self._icon, "setImage:", objj_msgSend(self, "valueForThemeAttribute:", "icon-info"));
                    break;
                case TNGrowlIconWarning:
                    objj_msgSend(self._icon, "setImage:", objj_msgSend(self, "valueForThemeAttribute:", "icon-warning"));
                    break;
                case TNGrowlIconError:
                    objj_msgSend(self._icon, "setImage:", objj_msgSend(self, "valueForThemeAttribute:", "icon-error"));
                    break;
            }
        objj_msgSend(self, "addSubview:", self._icon);
        var height = objj_msgSend(aMessage, "sizeWithFont:inWidth:", objj_msgSend(self._message, "font"), CGRectGetWidth(aFrame) - 44).height;
        aFrame.size.height = height + 30;
        if (aFrame.size.height < TNGrowlPlacementHeight)
            aFrame.size.height = TNGrowlPlacementHeight
        objj_msgSend(self, "setFrame:", aFrame);
        self._lifeTime = aLifeTime;
        self._timer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", self._lifeTime, self, sel_getUid("willBeRemoved:"), nil, NO);
    }
    return self;
}
,["id","CGRect","CPString","CPString","id","float"]), new objj_method(sel_getUid("mouseDown:"), function $TNGrowlView__mouseDown_(self, _cmd, anEvent)
{
    if (objj_msgSend(anEvent, "type") == CPLeftMouseDown)
    {
        objj_msgSend(self._timer, "invalidate");
        objj_msgSend(self, "willBeRemoved:", nil);
        if (self._target && self._action)
            objj_msgSend(self._target, "performSelector:withObject:withObject:", self._action, self, self._actionParameters);
    }
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNGrowlView").super_class }, "mouseDown:", anEvent);
}
,["void","CPEvent"]), new objj_method(sel_getUid("mouseEntered:"), function $TNGrowlView__mouseEntered_(self, _cmd, anEvent)
{
    if (objj_msgSend(anEvent, "type") == CPMouseEntered)
    {
        objj_msgSend(self._timer, "invalidate");
        objj_msgSend(self, "setAlphaValue:", 1.0);
    }
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNGrowlView").super_class }, "mouseEntered:", anEvent);
}
,["void","CPEvent"]), new objj_method(sel_getUid("mouseExited:"), function $TNGrowlView__mouseExited_(self, _cmd, anEvent)
{
    if (objj_msgSend(anEvent, "type") == CPMouseExited)
    {
        self._timer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", self._lifeTime, self, sel_getUid("willBeRemoved:"), nil, NO);
    }
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNGrowlView").super_class }, "mouseExited:", anEvent);
}
,["void","CPEvent"]), new objj_method(sel_getUid("willBeRemoved:"), function $TNGrowlView__willBeRemoved_(self, _cmd, aTimer)
{
    var center = objj_msgSend(CPNotificationCenter, "defaultCenter");
    objj_msgSend(center, "postNotificationName:object:", TNGrowlViewLifeTimeExpirationNotification, self);
}
,["void","CPTimer"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeClass"), function $TNGrowlView__themeClass(self, _cmd)
{
    return "growl-view";
}
,["CPString"]), new objj_method(sel_getUid("themeAttributes"), function $TNGrowlView__themeAttributes(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")),
        backgroundImage = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPNinePartImage, "alloc"), "initWithImageSlices:", [
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "Noir/top-left.png"), CGSizeMake(10.0, 30.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "Noir/top.png"), CGSizeMake(1.0, 30.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "Noir/top-right.png"), CGSizeMake(10.0, 30.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "Noir/left.png"), CGSizeMake(10.0, 1.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "Noir/center.png"), CGSizeMake(1.0, 1.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "Noir/right.png"), CGSizeMake(10.0, 1.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "Noir/bottom-left.png"), CGSizeMake(10.0, 12.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "Noir/bottom.png"), CGSizeMake(1.0, 12.0)),
            objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "Noir/bottom-right.png"), CGSizeMake(10.0, 12.0)),
        ])),
        iconInfo = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "icon-info.png")),
        iconError = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "icon-error.png")),
        iconWarning = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "icon-warning.png"));
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [backgroundImage, iconInfo, iconError, iconWarning, objj_msgSend(CPColor, "whiteColor"), 0.8], ["background-color", "icon-info", "icon-error", "icon-warning", "text-color", "alpha-value"]);
}
,["id"])]);
}e;