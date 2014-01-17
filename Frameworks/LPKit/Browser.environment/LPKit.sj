@STATIC;1.0;p;16;_LPArrowButton.jt;1118;@STATIC;1.0;I;17;AppKit/CPButton.jt;1077;objj_executeFile("AppKit/CPButton.j", NO);
{var the_class = objj_allocateClassPair(CPButton, "_LPArrowButton"),
meta_class = the_class.isa;
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"), function $_LPArrowButton__stopTracking_at_mouseIsUp_(self, _cmd, lastPoint, aPoint, mouseIsUp)
{
    objj_msgSend(self, "setFrameOrigin:", CGPointMake(objj_msgSend(self, "frameOrigin").x, objj_msgSend(self, "frameOrigin").y - 1))
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_LPArrowButton").super_class }, "stopTracking:at:mouseIsUp:", lastPoint, aPoint, mouseIsUp);
}
,["void","CGPoint","CGPoint","BOOL"]), new objj_method(sel_getUid("mouseDown:"), function $_LPArrowButton__mouseDown_(self, _cmd, anEvent)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_LPArrowButton").super_class }, "mouseDown:", anEvent);
    objj_msgSend(self, "setFrameOrigin:", CGPointMake(objj_msgSend(self, "frameOrigin").x, objj_msgSend(self, "frameOrigin").y + 1));
}
,["void","CPEvent"])]);
}p;22;CPDate+FirstLastDate.jt;3009;@STATIC;1.0;I;19;Foundation/CPDate.jt;2966;objj_executeFile("Foundation/CPDate.j", NO);
{
var the_class = objj_getClass("CPDate")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPDate\"");
var meta_class = the_class.isa;






class_addMethods(meta_class, [new objj_method(sel_getUid("lastDateOfADay:"), function $CPDate__lastDateOfADay_(self, _cmd, aDate)
{
    var stringDate = objj_msgSend(aDate, "description"),
        dayBefore = aDate.getDay(),
        newDate = objj_msgSend(objj_msgSend(CPDate, "alloc"), "initWithString:", stringDate.substr(0, 10) + ' 00:00:00 ' + stringDate.substr(20) + "+0000");
    while (newDate.getDay() != dayBefore)
        newDate.setTime(newDate.getTime() + 60 * 60 * 1000);
    newDate.setTime(newDate.getTime() + 24 * 60 * 60 * 1000 - 1000);
    return newDate;
}
,["CPDate","CPDate"]), new objj_method(sel_getUid("firstHourOfDay:"), function $CPDate__firstHourOfDay_(self, _cmd, aDate)
{
    aDate.setHours(0, 0, 0, 0);
    return aDate;
}
,["CPDate","CPDate"]), new objj_method(sel_getUid("firstDateOfMonth:"), function $CPDate__firstDateOfMonth_(self, _cmd, aDate)
{
    return new Date(aDate.getUTCFullYear(), aDate.getMonth(), 1);
}
,["CPDate","CPDate"]), new objj_method(sel_getUid("firstDateOfYear:"), function $CPDate__firstDateOfYear_(self, _cmd, aDate)
{
    return new Date(aDate.getUTCFullYear(), 0, 1);
}
,["CPDate","CPDate"]), new objj_method(sel_getUid("lastDateOfAMonth:"), function $CPDate__lastDateOfAMonth_(self, _cmd, aDate)
{
    var date = new Date(aDate.getUTCFullYear(), aDate.getMonth(), 31),
        monthBefore = aDate.getMonth();
    while (date.getMonth() != monthBefore)
        date.setTime(date.getTime() - 60 * 60 * 1000);
    date.setHours(23);
    date.setMinutes(59);
    date.setSeconds(59);
    return date;
}
,["CPDate","CPDate"]), new objj_method(sel_getUid("lastDateOfAnYear:"), function $CPDate__lastDateOfAnYear_(self, _cmd, aDate)
{
    var date = new Date(aDate.getUTCFullYear(), aDate.getMonth(), 31),
        yearBefore = aDate.getUTCFullYear();
    while (date.getUTCFullYear() != yearBefore)
        date.setTime(date.getTime() - 60 * 60 * 1000);
    date.setHours(23);
    date.setMinutes(59);
    date.setSeconds(59);
    return date;
}
,["CPDate","CPDate"]), new objj_method(sel_getUid("numberOfDaysInMonthForDate:"), function $CPDate__numberOfDaysInMonthForDate_(self, _cmd, aDate)
{
    return new Date(aDate.getUTCFullYear(), aDate.getMonth() + 1, 0).getDate();
}
,["int","CPDate"]), new objj_method(sel_getUid("isLastDay:ofMonthForDate:"), function $CPDate__isLastDay_ofMonthForDate_(self, _cmd, aDayNumber, aDate)
{
    switch (objj_msgSend(CPDate, "numberOfDaysInMonthForDate:", aDate))
    {
        case 28:
            return aDayNumber == 28;
        case 29:
            return aDayNumber == 29;
        case 30:
            return aDayNumber == 30;
        case 31:
            return aDayNumber == 31;
        default:
    }
    return NO;
}
,["BOOL","int","CPDate"])]);
}p;16;LPAnchorButton.jt;7925;@STATIC;1.0;I;18;AppKit/CPControl.jt;7883;objj_executeFile("AppKit/CPControl.j", NO);
LPAnchorButtonNoUnderline = 0;
LPAnchorButtonNormalUnderline = 1;
LPAnchorButtonHoverUnderline = 2;
{var the_class = objj_allocateClassPair(CPControl, "LPAnchorButton"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_underlineMask"), new objj_ivar("_title"), new objj_ivar("_URL"), new objj_ivar("_DOMAnchorElement")]);











objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("underlineMask"), function $LPAnchorButton__underlineMask(self, _cmd)
{
return self._underlineMask;
}
,["unsigned"]), new objj_method(sel_getUid("setUnderlineMask:"), function $LPAnchorButton__setUnderlineMask_(self, _cmd, newValue)
{
self._underlineMask = newValue;
}
,["void","unsigned"]), new objj_method(sel_getUid("title"), function $LPAnchorButton__title(self, _cmd)
{
return self._title;
}
,["CPString"]), new objj_method(sel_getUid("setTitle:"), function $LPAnchorButton__setTitle_(self, _cmd, newValue)
{
self._title = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("init"), function $LPAnchorButton__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPAnchorButton").super_class }, "init"))
    {
        self._underlineMask = LPAnchorButtonNormalUnderline | LPAnchorButtonHoverUnderline;
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("setTitle:"), function $LPAnchorButton__setTitle_(self, _cmd, aTitle)
{
    self._title = aTitle;
    objj_msgSend(self, "setNeedsLayout");
}
,["void","CPString"]), new objj_method(sel_getUid("openURLOnClick:"), function $LPAnchorButton__openURLOnClick_(self, _cmd, aURL)
{
    self._URL = aURL;
    objj_msgSend(self, "setNeedsLayout");
}
,["void","CPURL"]), new objj_method(sel_getUid("setTextColor:"), function $LPAnchorButton__setTextColor_(self, _cmd, aColor)
{
    objj_msgSend(self, "setValue:forThemeAttribute:", aColor, "text-color");
}
,["void","CPColor"]), new objj_method(sel_getUid("setTextHoverColor:"), function $LPAnchorButton__setTextHoverColor_(self, _cmd, aColor)
{
    objj_msgSend(self, "setValue:forThemeAttribute:inState:", aColor, "text-color", CPThemeStateHighlighted);
}
,["void","CPColor"]), new objj_method(sel_getUid("mouseEntered:"), function $LPAnchorButton__mouseEntered_(self, _cmd, anEvent)
{
    objj_msgSend(self, "setThemeState:", CPThemeStateHighlighted);
}
,["void","CPEvent"]), new objj_method(sel_getUid("mouseExited:"), function $LPAnchorButton__mouseExited_(self, _cmd, anEvent)
{
    objj_msgSend(self, "unsetThemeState:", CPThemeStateHighlighted);
}
,["void","CPEvent"]), new objj_method(sel_getUid("mouseDown:"), function $LPAnchorButton__mouseDown_(self, _cmd, anEvent)
{
    if (self._URL)
    {
        objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
    }
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPAnchorButton").super_class }, "mouseDown:", anEvent);
}
,["void","CPEvent"]), new objj_method(sel_getUid("sizeToFit"), function $LPAnchorButton__sizeToFit(self, _cmd)
{
    objj_msgSend(self, "setFrameSize:", objj_msgSend((self._title || " "), "sizeWithFont:", objj_msgSend(self, "currentValueForThemeAttribute:", "font")));
}
,["void"]), new objj_method(sel_getUid("rectForEphemeralSubviewNamed:"), function $LPAnchorButton__rectForEphemeralSubviewNamed_(self, _cmd, aName)
{
    return objj_msgSend(self, "bounds");
}
,["CGRect","CPString"]), new objj_method(sel_getUid("createEphemeralSubviewNamed:"), function $LPAnchorButton__createEphemeralSubviewNamed_(self, _cmd, aName)
{
    return objj_msgSend(objj_msgSend(_CPImageAndTextView, "alloc"), "initWithFrame:", CGRectMakeZero());
}
,["CPView","CPString"]), new objj_method(sel_getUid("layoutSubviews"), function $LPAnchorButton__layoutSubviews(self, _cmd)
{
    if (self._URL)
    {
        if (!self._DOMAnchorElement)
        {
            self._DOMAnchorElement = document.createElement("a");
            self._DOMAnchorElement.target = "_blank";
            self._DOMAnchorElement.style.position = "absolute";
            self._DOMAnchorElement.style.zIndex = "100";
            self._DOMElement.appendChild(self._DOMAnchorElement)
        }
        self._DOMAnchorElement.href = typeof self._URL == 'string' ? self._URL : objj_msgSend(self._URL, "absoluteString");
        var bounds = objj_msgSend(self, "bounds");
        self._DOMAnchorElement.style.width = CGRectGetWidth(bounds) + "px";
        self._DOMAnchorElement.style.height = CGRectGetHeight(bounds) + "px";
    }
    var cssTextDecoration = "none";
    if (((self._themeState === CPThemeStateNormal || self._themeState === CPThemeStateSelected) && (self._underlineMask & LPAnchorButtonNormalUnderline)) ||
        ((self._themeState & CPThemeStateHighlighted) && (self._underlineMask & LPAnchorButtonHoverUnderline)))
    {
        cssTextDecoration = "underline";
    }
    var contentView = objj_msgSend(self, "layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:", "content-view", CPWindowAbove, nil);
    if (contentView)
    {
        objj_msgSend(contentView, "setText:", self._title);
        objj_msgSend(contentView, "setTextColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "text-color"));
        objj_msgSend(contentView, "setFont:", objj_msgSend(self, "currentValueForThemeAttribute:", "font"));
        objj_msgSend(contentView, "setAlignment:", objj_msgSend(self, "currentValueForThemeAttribute:", "alignment"));
        objj_msgSend(contentView, "setVerticalAlignment:", objj_msgSend(self, "currentValueForThemeAttribute:", "vertical-alignment"));
        objj_msgSend(contentView, "setLineBreakMode:", objj_msgSend(self, "currentValueForThemeAttribute:", "line-break-mode"));
        objj_msgSend(contentView, "setTextShadowColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "text-shadow-color"));
        objj_msgSend(contentView, "setTextShadowOffset:", objj_msgSend(self, "currentValueForThemeAttribute:", "text-shadow-offset"));
        if (contentView._DOMTextElement)
            contentView._DOMTextElement.style.setProperty("text-decoration", cssTextDecoration, null);
        if (contentView._DOMTextShadowElement)
            contentView._DOMTextShadowElement.style.setProperty("text-decoration", cssTextDecoration, null);
    }
}
,["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("buttonWithTitle:"), function $LPAnchorButton__buttonWithTitle_(self, _cmd, aTitle)
{
    var button = objj_msgSend(objj_msgSend(self, "alloc"), "init");
    objj_msgSend(button, "setTitle:", aTitle);
    objj_msgSend(button, "sizeToFit");
    return button;
}
,["id","CPString"])]);
}
var LPAnchorButtonUnderlineMaskKey = "LPAnchorButtonUnderlineMaskKey";
{
var the_class = objj_getClass("LPAnchorButton")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"LPAnchorButton\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $LPAnchorButton__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPAnchorButton").super_class }, "initWithCoder:", aCoder))
    {
        self._underlineMask = objj_msgSend(aCoder, "decodeIntForKey:", LPAnchorButtonUnderlineMaskKey) || LPAnchorButtonNoUnderline;
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $LPAnchorButton__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPAnchorButton").super_class }, "encodeWithCoder:", aCoder);
    if (self._underlineMask !== LPAnchorButtonNoUnderline)
        objj_msgSend(aCoder, "encodeInt:forKey:", self._underlineMask, LPAnchorButtonUnderlineMaskKey);
}
,["void","CPCoder"])]);
}p;22;LPCalendarHeaderView.jt;13073;@STATIC;1.0;I;17;AppKit/CPButton.jI;18;AppKit/CPControl.jI;20;AppKit/CPTextField.jt;12983;objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPControl.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
var LPMonthNames = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"],
    LPDayNamesShort = ["mon", "tue", "wed", "thu", "fri", "sat", "sun"],
    LPDayNamesShortUS = ["sun", "mon", "tue", "wed", "thu", "fri", "sat"];
{var the_class = objj_allocateClassPair(CPControl, "LPCalendarHeaderView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("representedDate"), new objj_ivar("monthLabel"), new objj_ivar("prevButton"), new objj_ivar("nextButton"), new objj_ivar("dayLabels"), new objj_ivar("weekStartsOnMonday"), new objj_ivar("fastForwardEnabled")]);



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("prevButton"), function $LPCalendarHeaderView__prevButton(self, _cmd)
{
return self.prevButton;
}
,["id"]), new objj_method(sel_getUid("nextButton"), function $LPCalendarHeaderView__nextButton(self, _cmd)
{
return self.nextButton;
}
,["id"]), new objj_method(sel_getUid("weekStartsOnMonday"), function $LPCalendarHeaderView__weekStartsOnMonday(self, _cmd)
{
return self.weekStartsOnMonday;
}
,["BOOL"]), new objj_method(sel_getUid("setWeekStartsOnMonday:"), function $LPCalendarHeaderView__setWeekStartsOnMonday_(self, _cmd, newValue)
{
self.weekStartsOnMonday = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("fastForwardEnabled"), function $LPCalendarHeaderView__fastForwardEnabled(self, _cmd)
{
return self.fastForwardEnabled;
}
,["BOOL"]), new objj_method(sel_getUid("setFastForwardEnabled:"), function $LPCalendarHeaderView__setFastForwardEnabled_(self, _cmd, newValue)
{
self.fastForwardEnabled = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("initWithFrame:"), function $LPCalendarHeaderView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCalendarHeaderView").super_class }, "initWithFrame:", aFrame))
    {
        self.monthLabel = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(0, 8, aFrame.size.width, aFrame.size.height));
        objj_msgSend(self.monthLabel, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(self.monthLabel, "setValue:forThemeAttribute:", CPCenterTextAlignment, "alignment");
    objj_msgSend(self.monthLabel, "setHitTests:", NO);
        objj_msgSend(self, "addSubview:", self.monthLabel);
        self.prevButton = objj_msgSend(objj_msgSend(LPCalendarHeaderArrowButton, "alloc"), "initWithFrame:", CGRectMake(6, 9, 0, 0));
        objj_msgSend(self.prevButton, "sizeToFit");
        objj_msgSend(self, "addSubview:", self.prevButton);
        self.nextButton = objj_msgSend(objj_msgSend(LPCalendarHeaderArrowButton, "alloc"), "initWithFrame:", CGRectMake(CGRectGetMaxX(objj_msgSend(self, "bounds")) - 21, 9, 0, 0));
        objj_msgSend(self.nextButton, "sizeToFit");
        objj_msgSend(self.nextButton, "setAutoresizingMask:", CPViewMinXMargin);
        objj_msgSend(self, "addSubview:", self.nextButton);
        self.dayLabels = objj_msgSend(CPArray, "array");
        for (var i = 0; i < objj_msgSend(LPDayNamesShort, "count"); i++)
        {
            var label = objj_msgSend(LPCalendarLabel, "labelWithTitle:", objj_msgSend(LPDayNamesShort, "objectAtIndex:", i));
            objj_msgSend(self.dayLabels, "addObject:", label);
            objj_msgSend(self, "addSubview:", label);
        }
        objj_msgSend(self, "setNeedsLayout");
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("setDate:"), function $LPCalendarHeaderView__setDate_(self, _cmd, aDate)
{
    if (objj_msgSend(self.representedDate, "isEqualToDate:", aDate))
        return;
    self.representedDate = objj_msgSend(aDate, "copy");
    objj_msgSend(self.monthLabel, "setStringValue:", objj_msgSend(CPString, "stringWithFormat:", "%s %i", LPMonthNames[self.representedDate.getUTCMonth()], self.representedDate.getUTCFullYear()));
}
,["void","CPDate"]), new objj_method(sel_getUid("setWeekStartsOnMonday:"), function $LPCalendarHeaderView__setWeekStartsOnMonday_(self, _cmd, shouldWeekStartOnMonday)
{
    self.weekStartsOnMonday = shouldWeekStartOnMonday;
    var dayNames = (shouldWeekStartOnMonday) ? LPDayNamesShort : LPDayNamesShortUS;
    for (var i = 0; i < objj_msgSend(self.dayLabels, "count"); i++)
        objj_msgSend(objj_msgSend(self.dayLabels, "objectAtIndex:", i), "setTitle:", objj_msgSend(dayNames, "objectAtIndex:", i));
    objj_msgSend(self, "setNeedsLayout");
}
,["void","BOOL"]), new objj_method(sel_getUid("layoutSubviews"), function $LPCalendarHeaderView__layoutSubviews(self, _cmd)
{
    var bounds = objj_msgSend(self, "bounds"),
        width = CGRectGetWidth(bounds),
        superview = objj_msgSend(self, "superview"),
        themeState = objj_msgSend(self, "themeState");
    objj_msgSend(self, "setBackgroundColor:", objj_msgSend(superview, "valueForThemeAttribute:inState:", "header-background-color", themeState));
    objj_msgSend(self.monthLabel, "setFont:", objj_msgSend(superview, "valueForThemeAttribute:inState:", "header-font", themeState));
    objj_msgSend(self.monthLabel, "setTextColor:", objj_msgSend(superview, "valueForThemeAttribute:inState:", "header-text-color", themeState));
    objj_msgSend(self.monthLabel, "setTextShadowColor:", objj_msgSend(superview, "valueForThemeAttribute:inState:", "header-text-shadow-color", themeState));
    objj_msgSend(self.monthLabel, "setTextShadowOffset:", objj_msgSend(superview, "valueForThemeAttribute:inState:", "header-text-shadow-offset", themeState));
    var buttonOrigin = objj_msgSend(superview, "valueForThemeAttribute:inState:", "header-button-offset", themeState);
    objj_msgSend(self.prevButton, "setFrameOrigin:", CGPointMake(buttonOrigin.width, buttonOrigin.height));
    objj_msgSend(self.prevButton, "setValue:forThemeAttribute:inState:", objj_msgSend(superview, "valueForThemeAttribute:inState:", "header-prev-button-image", themeState), "bezel-color", CPThemeStateBordered);
    objj_msgSend(self.nextButton, "setFrameOrigin:", CGPointMake(width - 16 - buttonOrigin.width, buttonOrigin.height));
    objj_msgSend(self.nextButton, "setValue:forThemeAttribute:inState:", objj_msgSend(superview, "valueForThemeAttribute:inState:", "header-next-button-image", themeState), "bezel-color", CPThemeStateBordered);
    var numberOfLabels = objj_msgSend(self.dayLabels, "count"),
        labelWidth = width / numberOfLabels,
        labelHeight = CGRectGetHeight(objj_msgSend(objj_msgSend(objj_msgSend(self, "subviews"), "objectAtIndex:", 3), "bounds")),
        labelOffset = objj_msgSend(superview, "valueForThemeAttribute:inState:", "header-weekday-offset", themeState),
        height = CGRectGetHeight(bounds);
    for (var i = 0; i < numberOfLabels; i++)
        objj_msgSend(self.dayLabels[i], "setFrame:", CGRectMake(i * labelWidth, labelOffset, labelWidth, labelHeight));
}
,["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeClass"), function $LPCalendarHeaderView__themeClass(self, _cmd)
{
    return "lp-calendar-header-view";
}
,["CPString"])]);
}
{var the_class = objj_allocateClassPair(CPTextField, "LPCalendarLabel"),
meta_class = the_class.isa;



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $LPCalendarLabel__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCalendarLabel").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self, "setValue:forThemeAttribute:", CPCenterTextAlignment, "alignment");
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("setTitle:"), function $LPCalendarLabel__setTitle_(self, _cmd, aTitle)
{
    objj_msgSend(self, "setStringValue:", aTitle);
    objj_msgSend(self, "sizeToFit");
}
,["void","CPString"]), new objj_method(sel_getUid("didMoveToSuperview"), function $LPCalendarLabel__didMoveToSuperview(self, _cmd)
{
    objj_msgSend(self, "setNeedsLayout");
}
,["void"]), new objj_method(sel_getUid("layoutSubviews"), function $LPCalendarLabel__layoutSubviews(self, _cmd)
{
    var calendarView = objj_msgSend(objj_msgSend(self, "superview"), "superview"),
        themeState = objj_msgSend(self, "themeState");
    objj_msgSend(self, "setFont:", objj_msgSend(calendarView, "valueForThemeAttribute:inState:", "header-weekday-label-font", themeState));
    objj_msgSend(self, "setTextColor:", objj_msgSend(calendarView, "valueForThemeAttribute:inState:", "header-weekday-label-color", themeState));
    objj_msgSend(self, "setTextShadowColor:", objj_msgSend(calendarView, "valueForThemeAttribute:inState:", "header-weekday-label-shadow-color", themeState));
    objj_msgSend(self, "setTextShadowOffset:", objj_msgSend(calendarView, "valueForThemeAttribute:inState:", "header-weekday-label-shadow-offset", themeState));
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCalendarLabel").super_class }, "layoutSubviews");
}
,["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("labelWithTitle:"), function $LPCalendarLabel__labelWithTitle_(self, _cmd, aTitle)
{
    var label = objj_msgSend(objj_msgSend(LPCalendarLabel, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(label, "setTitle:", aTitle);
    return label;
}
,["id","CPString"])]);
}
LPCalendarFastForwardThreshold = 1.0;
LPCalendarFastForwardDelay = 0.1;
{var the_class = objj_allocateClassPair(CPButton, "LPCalendarHeaderArrowButton"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("startedTrackingAt"), new objj_ivar("didFastForward")]);




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $LPCalendarHeaderArrowButton__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCalendarHeaderArrowButton").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self, "setValue:forThemeAttribute:", CGSizeMake(16.0, 16.0), "min-size");
        objj_msgSend(self, "setValue:forThemeAttribute:", CGSizeMake(16.0, 16.0), "max-size");
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("incrementOriginBy:"), function $LPCalendarHeaderArrowButton__incrementOriginBy_(self, _cmd, anInt)
{
     var currentOrigin = objj_msgSend(self, "frame").origin;
     currentOrigin.y += anInt;
     objj_msgSend(self, "setFrameOrigin:", currentOrigin);
}
,["void","int"]), new objj_method(sel_getUid("startTrackingAt:"), function $LPCalendarHeaderArrowButton__startTrackingAt_(self, _cmd, aPoint)
{
    if (objj_msgSend(objj_msgSend(self, "superview"), "fastForwardEnabled"))
    {
        self.startedTrackingAt = objj_msgSend(CPDate, "date");
        self.didFastForward = NO;
        objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", LPCalendarFastForwardThreshold, self, "didHitFastForwardDelay", nil, NO);
    }
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCalendarHeaderArrowButton").super_class }, "startTrackingAt:", aPoint);
}
,["BOOL","CGPoint"]), new objj_method(sel_getUid("trackMouse:"), function $LPCalendarHeaderArrowButton__trackMouse_(self, _cmd, anEvent)
{
    var type = objj_msgSend(anEvent, "type");
    if (type === CPLeftMouseUp)
    {
        objj_msgSend(self, "incrementOriginBy:", -1);
        var previousMask;
        self.startedTrackingAt = nil;
        if (self.didFastForward)
        {
            previousMask = objj_msgSend(self, "sendActionOn:", 0);
        }
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCalendarHeaderArrowButton").super_class }, "trackMouse:", anEvent);
        if (self.didFastForward)
        {
            objj_msgSend(self, "sendActionOn:", previousMask);
            self.didFastForward = NO;
        }
    }
    else
    {
        objj_msgSend(self, "incrementOriginBy:", 1);
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCalendarHeaderArrowButton").super_class }, "trackMouse:", anEvent);
    }
}
,["void","CPEvent"]), new objj_method(sel_getUid("didHitFastForwardDelay"), function $LPCalendarHeaderArrowButton__didHitFastForwardDelay(self, _cmd)
{
    if (self.startedTrackingAt === nil)
        return;
    self.didFastForward = YES;
    objj_msgSend(self, "sendAction:to:", objj_msgSend(self, "action"), objj_msgSend(self, "target"));
    objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", LPCalendarFastForwardDelay, self, "didHitFastForwardDelay", nil, NO);
}
,["void"]), new objj_method(sel_getUid("isFastForwarding"), function $LPCalendarHeaderArrowButton__isFastForwarding(self, _cmd)
{
    return (self.startedTrackingAt !== nil);
}
,["BOOL"])]);
}p;21;LPCalendarMonthView.jt;25634;@STATIC;1.0;I;19;Foundation/CPDate.jI;18;AppKit/CPControl.jI;15;AppKit/CPView.jI;20;AppKit/CPTextField.jt;25522;objj_executeFile("Foundation/CPDate.j", NO);
objj_executeFile("AppKit/CPControl.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
//@global CPApp
var immutableDistantFuture = objj_msgSend(CPDate, "distantFuture");
{
var the_class = objj_getClass("CPDate")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"CPDate\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("daysInMonth"), function $CPDate__daysInMonth(self, _cmd)
{
    return 32 - new Date(self.getFullYear(), self.getMonth(), 32).getDate();
}
,["int"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("dateAtMidnight:"), function $CPDate__dateAtMidnight_(self, _cmd, aDate)
{
    var stringDate = objj_msgSend(aDate, "description"),
        dayBefore = aDate.getDay(),
        newDate = objj_msgSend(objj_msgSend(CPDate, "alloc"), "initWithString:", stringDate.substr(0, 10) + ' 00:00:00 ' + stringDate.substr(20) + "+0000");
    while (newDate.getDay() != dayBefore)
        newDate.setTime(newDate.getTime() + 60 * 60 * 1000);
    return newDate;
}
,["CPDate","CPDate"])]);
}
LPCalendarDayLength = 1;
LPCalendarWeekLength = 2;
var _startAndEndOfWeekCache = {};
{var the_class = objj_allocateClassPair(CPView, "LPCalendarMonthView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("dayTiles"), new objj_ivar("date"), new objj_ivar("previousMonth"), new objj_ivar("nextMonth"), new objj_ivar("_dataIsDirty"), new objj_ivar("allowsMultipleSelection"), new objj_ivar("startSelectionIndex"), new objj_ivar("currentSelectionIndex"), new objj_ivar("selectionLengthType"), new objj_ivar("selection"), new objj_ivar("highlightCurrentPeriod"), new objj_ivar("weekStartsOnMonday"), new objj_ivar("_delegate"), new objj_ivar("calendarView"), new objj_ivar("hiddenRows")]);




















objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("date"), function $LPCalendarMonthView__date(self, _cmd)
{
return self.date;
}
,["CPDate"]), new objj_method(sel_getUid("setDate:"), function $LPCalendarMonthView__setDate_(self, _cmd, newValue)
{
self.date = newValue;
}
,["void","CPDate"]), new objj_method(sel_getUid("previousMonth"), function $LPCalendarMonthView__previousMonth(self, _cmd)
{
return self.previousMonth;
}
,["CPDate"]), new objj_method(sel_getUid("nextMonth"), function $LPCalendarMonthView__nextMonth(self, _cmd)
{
return self.nextMonth;
}
,["CPDate"]), new objj_method(sel_getUid("allowsMultipleSelection"), function $LPCalendarMonthView__allowsMultipleSelection(self, _cmd)
{
return self.allowsMultipleSelection;
}
,["BOOL"]), new objj_method(sel_getUid("setAllowsMultipleSelection:"), function $LPCalendarMonthView__setAllowsMultipleSelection_(self, _cmd, newValue)
{
self.allowsMultipleSelection = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("selectionLengthType"), function $LPCalendarMonthView__selectionLengthType(self, _cmd)
{
return self.selectionLengthType;
}
,["id"]), new objj_method(sel_getUid("setSelectionLengthType:"), function $LPCalendarMonthView__setSelectionLengthType_(self, _cmd, newValue)
{
self.selectionLengthType = newValue;
}
,["void","id"]), new objj_method(sel_getUid("highlightCurrentPeriod"), function $LPCalendarMonthView__highlightCurrentPeriod(self, _cmd)
{
return self.highlightCurrentPeriod;
}
,["BOOL"]), new objj_method(sel_getUid("setHighlightCurrentPeriod:"), function $LPCalendarMonthView__setHighlightCurrentPeriod_(self, _cmd, newValue)
{
self.highlightCurrentPeriod = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("weekStartsOnMonday"), function $LPCalendarMonthView__weekStartsOnMonday(self, _cmd)
{
return self.weekStartsOnMonday;
}
,["BOOL"]), new objj_method(sel_getUid("setWeekStartsOnMonday:"), function $LPCalendarMonthView__setWeekStartsOnMonday_(self, _cmd, newValue)
{
self.weekStartsOnMonday = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("delegate"), function $LPCalendarMonthView__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $LPCalendarMonthView__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("calendarView"), function $LPCalendarMonthView__calendarView(self, _cmd)
{
return self.calendarView;
}
,["LPCalendarView"]), new objj_method(sel_getUid("setCalendarView:"), function $LPCalendarMonthView__setCalendarView_(self, _cmd, newValue)
{
self.calendarView = newValue;
}
,["void","LPCalendarView"]), new objj_method(sel_getUid("hiddenRows"), function $LPCalendarMonthView__hiddenRows(self, _cmd)
{
return self.hiddenRows;
}
,["CPArray"]), new objj_method(sel_getUid("setHiddenRows:"), function $LPCalendarMonthView__setHiddenRows_(self, _cmd, newValue)
{
self.hiddenRows = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("initWithFrame:calendarView:"), function $LPCalendarMonthView__initWithFrame_calendarView_(self, _cmd, aFrame, aCalendarView)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCalendarMonthView").super_class }, "initWithFrame:", aFrame))
    {
        self.calendarView = aCalendarView;
        self.selectionLengthType = LPCalendarDayLength;
        self.selection = objj_msgSend(CPArray, "array");
        self.weekStartsOnMonday = YES;
        self.hiddenRows = [];
        for (var i = 0; i < 42; i++)
            objj_msgSend(self, "addSubview:", objj_msgSend(LPCalendarDayView, "dayViewWithCalendarView:", aCalendarView));
    }
    return self;
}
,["id","CGRect","LPCalendarView"]), new objj_method(sel_getUid("setAllTilesAsFiller"), function $LPCalendarMonthView__setAllTilesAsFiller(self, _cmd)
{
    objj_msgSend(self, "setDate:", objj_msgSend(CPDate, "distantFuture"));
}
,["void"]), new objj_method(sel_getUid("setDate:"), function $LPCalendarMonthView__setDate_(self, _cmd, aDate)
{
    if (self.date && self.date.getFullYear() === aDate.getFullYear() && self.date.getMonth() === aDate.getMonth())
        return;
    self.date = objj_msgSend(aDate, "copy");
    if (!objj_msgSend(aDate, "isEqualToDate:", immutableDistantFuture))
    {
        self.date.setDate(1);
        self.date = objj_msgSend(CPDate, "dateAtMidnight:", self.date);
        var firstDay = objj_msgSend(self.date, "copy");
        firstDay.setDate(1);
        self.previousMonth = new Date(firstDay.getTime() - 86400000);
        self.nextMonth = new Date(firstDay.getTime() + ((objj_msgSend(self.date, "daysInMonth") + 1) * 86400000));
    }
    objj_msgSend(self, "reloadData");
}
,["void","CPDate"]), new objj_method(sel_getUid("setSelectionLengthType:"), function $LPCalendarMonthView__setSelectionLengthType_(self, _cmd, aSelectionType)
{
    if (self.selectionLengthType === aSelectionType)
        return;
    self.selectionLengthType = aSelectionType;
    objj_msgSend(self, "reloadData");
}
,["void","id"]), new objj_method(sel_getUid("tileSize"), function $LPCalendarMonthView__tileSize(self, _cmd)
{
    var tileSize = objj_msgSend(self.calendarView, "currentValueForThemeAttribute:", "tile-size");
    if (tileSize)
        return tileSize
    else
    {
        var bounds = objj_msgSend(self, "bounds");
        return CGSizeMake(CGRectGetWidth(bounds) / 7, CGRectGetHeight(bounds) / 6);
    }
}
,["void"]), new objj_method(sel_getUid("startOfWeekForDate:"), function $LPCalendarMonthView__startOfWeekForDate_(self, _cmd, aDate)
{
    var day = aDate.getDay();
    if (self.weekStartsOnMonday)
    {
        if (day == 0)
            day = 6
        else if (day > 0)
            day -= 1
    }
    return day;
}
,["int","CPDate"]), new objj_method(sel_getUid("startAndEndOfWeekForDate:"), function $LPCalendarMonthView__startAndEndOfWeekForDate_(self, _cmd, aDate)
{
    var cached = _startAndEndOfWeekCache[aDate.toString()];
    if (cached)
        return cached;
    var startOfWeek = new Date(aDate.getTime() - (objj_msgSend(self, "startOfWeekForDate:", aDate) * 86400000)),
        endOfWeek = new Date(startOfWeek.getTime() + (6 * 86400000));
    _startAndEndOfWeekCache[aDate.toString()] = [startOfWeek, endOfWeek];
    return [startOfWeek, endOfWeek];
}
,["CPArray","CPDate"]), new objj_method(sel_getUid("dateIsWithinCurrentPeriod:"), function $LPCalendarMonthView__dateIsWithinCurrentPeriod_(self, _cmd, aDate)
{
    var currentPeriod = objj_msgSend(CPDate, "date");
    currentPeriod = objj_msgSend(CPDate, "dateAtMidnight:", currentPeriod);
    if (self.selectionLengthType === LPCalendarDayLength)
        return objj_msgSend(currentPeriod, "description").substr(0, 10) == objj_msgSend(aDate, "description").substr(0, 10);
    if (self.selectionLengthType === LPCalendarWeekLength)
    {
        var startAndEnd = objj_msgSend(self, "startAndEndOfWeekForDate:", currentPeriod);
        return ((objj_msgSend(startAndEnd, "objectAtIndex:", 0) <= aDate) && (objj_msgSend(startAndEnd, "objectAtIndex:", 1) >= aDate));
    }
    return NO;
}
,["BOOL","CPDate"]), new objj_method(sel_getUid("setHiddenRows:"), function $LPCalendarMonthView__setHiddenRows_(self, _cmd, hiddenRowsArray)
{
    if (objj_msgSend(self.hiddenRows, "isEqualToArray:", hiddenRowsArray))
        return;
    self.hiddenRows = hiddenRowsArray;
    var tiles = objj_msgSend(self, "subviews"),
        tileIndex = 0,
        showAllRows = !hiddenRowsArray;
    for (var weekIndex = 0; weekIndex < 6; weekIndex++)
    {
        var shouldHideRow = showAllRows || objj_msgSend(self.hiddenRows, "indexOfObject:", weekIndex) > -1;
        for (var dayIndex = 0; dayIndex < 7; dayIndex++)
        {
            objj_msgSend(tiles[tileIndex], "setHidden:", shouldHideRow);
            tileIndex += 1;
        }
    }
}
,["void","CPArray"]), new objj_method(sel_getUid("reloadData"), function $LPCalendarMonthView__reloadData(self, _cmd)
{
    if (!self.date)
        return;
    var entireMonthIsFiller = self.date.getTime() == immutableDistantFuture.getTime(),
        currentMonth = self.date,
        startOfMonthDay = objj_msgSend(self, "startOfWeekForDate:", currentMonth),
        daysInMonth = objj_msgSend(currentMonth, "daysInMonth");
    var daysInPreviousMonth = objj_msgSend(self.previousMonth, "daysInMonth"),
        firstDayToShowInPreviousMonth = daysInPreviousMonth - startOfMonthDay;
    var tiles = objj_msgSend(self, "subviews"),
        tileIndex = 0;
    var currentDate = new Date(self.previousMonth.getFullYear(), self.previousMonth.getMonth(), firstDayToShowInPreviousMonth);
    for (var weekIndex = 0; weekIndex < 6; weekIndex++)
    {
        for (var dayIndex = 0; dayIndex < 7; dayIndex++)
        {
            var dayTile = tiles[tileIndex];
            currentDate.setTime(objj_msgSend(CPDate, "dateAtMidnight:", currentDate).getTime() + 25 * 60 * 60 * 1000);
            currentDate = objj_msgSend(CPDate, "dateAtMidnight:", currentDate);
            if (!dayTile._isHidden)
            {
                objj_msgSend(dayTile, "setIsFillerTile:", (entireMonthIsFiller) ? YES : currentDate.getMonth() != currentMonth.getMonth());
                objj_msgSend(dayTile, "setDate:", currentDate);
                if (!entireMonthIsFiller)
                    objj_msgSend(dayTile, "setHighlighted:", objj_msgSend(self, "dateIsWithinCurrentPeriod:", currentDate));
            }
            tileIndex += 1;
        }
    }
}
,["void"]), new objj_method(sel_getUid("tile"), function $LPCalendarMonthView__tile(self, _cmd)
{
    var tiles = objj_msgSend(self, "subviews"),
        tileSize = objj_msgSend(self, "tileSize"),
        tileIndex = 0;
    if (objj_msgSend(tiles, "count") > 0)
    {
        for (var weekIndex = 0; weekIndex < 6; weekIndex++)
        {
            for (var dayIndex = 0; dayIndex < 7; dayIndex++)
            {
                var tileFrame = CGRectMake((dayIndex * tileSize.width), weekIndex * tileSize.height, tileSize.width, tileSize.height);
                objj_msgSend(tiles[tileIndex], "setFrame:", tileFrame);
                tileIndex += 1;
            }
        }
    }
}
,["void"]), new objj_method(sel_getUid("setNeedsLayout"), function $LPCalendarMonthView__setNeedsLayout(self, _cmd)
{
    objj_msgSend(self, "tile");
}
,["void"]), new objj_method(sel_getUid("locationInViewForEvent:"), function $LPCalendarMonthView__locationInViewForEvent_(self, _cmd, anEvent)
{
    return objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil)
}
,["CGPoint","CPEvent"]), new objj_method(sel_getUid("indexOfTileAtPoint:"), function $LPCalendarMonthView__indexOfTileAtPoint_(self, _cmd, aPoint)
{
    var tileSize = objj_msgSend(self, "tileSize");
    var rowIndex = FLOOR(aPoint.y / tileSize.height),
        columnIndex = FLOOR(aPoint.x / tileSize.width);
    if (columnIndex > 6)
        columnIndex = 6;
    else if (columnIndex < 0)
        columnIndex = 0;
    if (rowIndex > 5)
        rowIndex = 5;
    else if (rowIndex < 0)
        rowIndex = 0;
    var tileIndex = (rowIndex * 7) + columnIndex;
    if (tileIndex > 41)
        return 41;
    return tileIndex;
}
,["int","CGPoint"]), new objj_method(sel_getUid("mouseDown:"), function $LPCalendarMonthView__mouseDown_(self, _cmd, anEvent)
{
    var locationInView = objj_msgSend(self, "locationInViewForEvent:", anEvent),
        tileIndex = objj_msgSend(self, "indexOfTileAtPoint:", locationInView),
        tile = objj_msgSend(objj_msgSend(self, "subviews"), "objectAtIndex:", tileIndex);
    self.startSelectionIndex = tileIndex;
    objj_msgSend(self, "makeSelectionWithIndex:end:", self.startSelectionIndex, nil);
}
,["void","CPEvent"]), new objj_method(sel_getUid("mouseDragged:"), function $LPCalendarMonthView__mouseDragged_(self, _cmd, anEvent)
{
    var locationInView = objj_msgSend(self, "locationInViewForEvent:", anEvent),
        tileIndex = objj_msgSend(self, "indexOfTileAtPoint:", locationInView);
    if (self.currentSelectionIndex == tileIndex)
        return;
    self.currentSelectionIndex = tileIndex;
    if (!self.allowsMultipleSelection)
        self.startSelectionIndex = self.currentSelectionIndex;
    objj_msgSend(self, "makeSelectionWithIndex:end:", self.startSelectionIndex, self.currentSelectionIndex);
}
,["void","CPevent"]), new objj_method(sel_getUid("mouseUp:"), function $LPCalendarMonthView__mouseUp_(self, _cmd, anEvent)
{
    if (!self.currentSelectionIndex || self.startSelectionIndex == self.currentSelectionIndex)
    {
        var currentCalendarView = objj_msgSend(objj_msgSend(self, "superview"), "superview"),
            tile = objj_msgSend(objj_msgSend(self, "subviews"), "objectAtIndex:", self.startSelectionIndex),
            tileDate = objj_msgSend(tile, "date"),
            tileMonth = tileDate.getMonth();
        if (tileMonth == self.date.getMonth() && objj_msgSend(objj_msgSend(CPApp, "currentEvent"), "clickCount") === 2 && objj_msgSend(currentCalendarView, "doubleAction"))
            objj_msgSend(CPApp, "sendAction:to:from:", objj_msgSend(currentCalendarView, "doubleAction"), objj_msgSend(currentCalendarView, "target"), currentCalendarView);
        if (tileMonth == self.previousMonth.getMonth())
            objj_msgSend(self.calendarView, "changeToMonth:", self.previousMonth);
        if (tileMonth == self.nextMonth.getMonth())
            objj_msgSend(self.calendarView, "changeToMonth:", self.nextMonth);
    }
    else
        self.currentSelectionIndex = nil;
}
,["void","CPEvent"]), new objj_method(sel_getUid("makeSelectionWithDate:end:"), function $LPCalendarMonthView__makeSelectionWithDate_end_(self, _cmd, aStartDate, anEndDate)
{
    if (!aStartDate)
    {
        objj_msgSend(self.selection, "removeAllObjects");
        return;
    }
    aStartDate = objj_msgSend(aStartDate, "copy");
    anEndDate = objj_msgSend(anEndDate, "copy");
    if (!self.allowsMultipleSelection || anEndDate === nil)
        anEndDate = aStartDate;
    if (self.selectionLengthType === LPCalendarWeekLength)
    {
        var startAndEnd = objj_msgSend(self, "startAndEndOfWeekForDate:", aStartDate);
        aStartDate = startAndEnd[0];
        anEndDate = startAndEnd[1];
    }
    aStartDate = objj_msgSend(CPDate, "dateAtMidnight:", aStartDate);
    anEndDate = objj_msgSend(CPDate, "dateAtMidnight:", anEndDate);
    if (aStartDate > anEndDate)
    {
        var _aStartDateCopy = aStartDate;
        aStartDate = anEndDate;
        anEndDate = _aStartDateCopy;
    }
    objj_msgSend(self.selection, "removeAllObjects");
    var tiles = objj_msgSend(self, "subviews"),
        tilesCount = objj_msgSend(tiles, "count");
    for (var i = 0; i < tilesCount; i++)
    {
        var tile = tiles[i],
            tileDate = objj_msgSend(tile, "date");
        tileDate = objj_msgSend(CPDate, "dateAtMidnight:", tileDate);
        if (aStartDate && tileDate >= aStartDate && tileDate <= anEndDate)
        {
            objj_msgSend(self.selection, "addObject:", objj_msgSend(objj_msgSend(tile, "date"), "copy"));
            objj_msgSend(tile, "setSelected:", YES);
        }
        else
            objj_msgSend(tile, "setSelected:", NO);
    }
    if (objj_msgSend(self.selection, "count") > 0 && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("didMakeSelection:")))
        objj_msgSend(self._delegate, "didMakeSelection:", self.selection);
}
,["void","CPDate","CPDate"]), new objj_method(sel_getUid("makeSelectionWithIndex:end:"), function $LPCalendarMonthView__makeSelectionWithIndex_end_(self, _cmd, aStartIndex, anEndIndex)
{
    var tiles = objj_msgSend(self, "subviews");
    objj_msgSend(self, "makeSelectionWithDate:end:", (aStartIndex > -1) ? objj_msgSend(objj_msgSend(tiles, "objectAtIndex:", aStartIndex), "date") : nil, (anEndIndex > -1) ? objj_msgSend(objj_msgSend(tiles, "objectAtIndex:", anEndIndex), "date") : nil);
}
,["void","int","int"]), new objj_method(sel_getUid("drawRect:"), function $LPCalendarMonthView__drawRect_(self, _cmd, aRect)
{
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort"),
        bounds = objj_msgSend(self, "bounds"),
        width = CGRectGetWidth(bounds),
        height = CGRectGetHeight(bounds),
        tileSize = objj_msgSend(self, "tileSize");
    var hLine = function (inMarginTop) {
            CGContextFillRect(context, CGRectMake(0, inMarginTop, width, 1));
        },
        vLine = function (inMarginLeft) {
            CGContextFillRect(context, CGRectMake(inMarginLeft, 0, 1, height));
        };
    CGContextSetFillColor(context, objj_msgSend(self.calendarView, "currentValueForThemeAttribute:", "grid-shadow-color"));
    for (var i = 1; i < 6; i++)
        hLine(tileSize.height * i - 1);
    for (var i = 1; i < 7; i++)
        vLine(tileSize.width * i - 1);
    CGContextSetFillColor(context, objj_msgSend(self.calendarView, "currentValueForThemeAttribute:", "grid-color"));
    for (var i = 1; i < 6; i++)
        hLine(tileSize.height * i);
    for (var i = 1; i < 7; i++)
        vLine(tileSize.width * i);
}
,["void","CGRect"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeClass"), function $LPCalendarMonthView__themeClass(self, _cmd)
{
    return "lp-calendar-month-view";
}
,["CPString"]), new objj_method(sel_getUid("themeAttributes"), function $LPCalendarMonthView__themeAttributes(self, _cmd)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [nil], ["grid-color"]);
}
,["id"])]);
}
{var the_class = objj_allocateClassPair(CPControl, "LPCalendarDayView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("date"), new objj_ivar("textField"), new objj_ivar("isFillerTile"), new objj_ivar("isSelected"), new objj_ivar("isHighlighted"), new objj_ivar("calendarView")]);







objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("date"), function $LPCalendarDayView__date(self, _cmd)
{
return self.date;
}
,["CPDate"]), new objj_method(sel_getUid("setDate:"), function $LPCalendarDayView__setDate_(self, _cmd, newValue)
{
self.date = newValue;
}
,["void","CPDate"]), new objj_method(sel_getUid("isFillerTile"), function $LPCalendarDayView__isFillerTile(self, _cmd)
{
return self.isFillerTile;
}
,["BOOL"]), new objj_method(sel_getUid("setIsFillerTile:"), function $LPCalendarDayView__setIsFillerTile_(self, _cmd, newValue)
{
self.isFillerTile = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isSelected"), function $LPCalendarDayView__isSelected(self, _cmd)
{
return self.isSelected;
}
,["BOOL"]), new objj_method(sel_getUid("setSelected:"), function $LPCalendarDayView__setSelected_(self, _cmd, newValue)
{
self.isSelected = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isHighlighted"), function $LPCalendarDayView__isHighlighted(self, _cmd)
{
return self.isHighlighted;
}
,["BOOL"]), new objj_method(sel_getUid("setHighlighted:"), function $LPCalendarDayView__setHighlighted_(self, _cmd, newValue)
{
self.isHighlighted = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("calendarView"), function $LPCalendarDayView__calendarView(self, _cmd)
{
return self.calendarView;
}
,["LPCalendarView"]), new objj_method(sel_getUid("setCalendarView:"), function $LPCalendarDayView__setCalendarView_(self, _cmd, newValue)
{
self.calendarView = newValue;
}
,["void","LPCalendarView"]), new objj_method(sel_getUid("initWithFrame:"), function $LPCalendarDayView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCalendarDayView").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self, "setHitTests:", NO);
        self.date = objj_msgSend(CPDate, "date");
        self.textField = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(self.textField, "setAutoresizingMask:", CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin);
        objj_msgSend(self, "addSubview:", self.textField);
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("setSelected:"), function $LPCalendarDayView__setSelected_(self, _cmd, shouldBeSelected)
{
    if (self.isSelected === shouldBeSelected)
        return;
    self.isSelected = shouldBeSelected;
    if (shouldBeSelected)
        objj_msgSend(self, "setThemeState:", CPThemeStateSelected);
    else
        objj_msgSend(self, "unsetThemeState:", CPThemeStateSelected);
}
,["void","BOOL"]), new objj_method(sel_getUid("setIsFillerTile:"), function $LPCalendarDayView__setIsFillerTile_(self, _cmd, shouldBeFillerTile)
{
    if (self.isFillerTile === shouldBeFillerTile)
        return;
    self.isFillerTile = shouldBeFillerTile;
    if (self.isFillerTile)
        objj_msgSend(self, "setThemeState:", CPThemeStateDisabled);
    else
        objj_msgSend(self, "unsetThemeState:", CPThemeStateDisabled);
}
,["void","BOOL"]), new objj_method(sel_getUid("setHighlighted:"), function $LPCalendarDayView__setHighlighted_(self, _cmd, shouldBeHighlighted)
{
    if (self.isHighlighted === shouldBeHighlighted)
        return;
    self.isHighlighted = shouldBeHighlighted;
    if (shouldBeHighlighted)
        objj_msgSend(self, "setThemeState:", CPThemeStateHighlighted);
    else
        objj_msgSend(self, "unsetThemeState:", CPThemeStateHighlighted);
}
,["void","BOOL"]), new objj_method(sel_getUid("setDate:"), function $LPCalendarDayView__setDate_(self, _cmd, aDate)
{
    if (self.date.getTime() === aDate.getTime())
        return;
    self.date.setTime(aDate.getTime());
    objj_msgSend(self.textField, "setStringValue:", objj_msgSend(self.date.getDate(), "stringValue"));
    objj_msgSend(self.textField, "sizeToFit");
    var bounds = objj_msgSend(self, "bounds");
    objj_msgSend(self.textField, "setCenter:", CGPointMake(CGRectGetMidX(bounds), CGRectGetMidY(bounds)));
}
,["void","CPDate"]), new objj_method(sel_getUid("layoutSubviews"), function $LPCalendarDayView__layoutSubviews(self, _cmd)
{
    var themeState = objj_msgSend(self, "themeState");
    objj_msgSend(self, "setBackgroundColor:", objj_msgSend(self.calendarView, "valueForThemeAttribute:inState:", "tile-bezel-color", themeState))
    objj_msgSend(self.textField, "setFont:", objj_msgSend(self.calendarView, "valueForThemeAttribute:inState:", "tile-font", themeState));
    objj_msgSend(self.textField, "setTextColor:", objj_msgSend(self.calendarView, "valueForThemeAttribute:inState:", "tile-text-color", themeState));
    objj_msgSend(self.textField, "setTextShadowColor:", objj_msgSend(self.calendarView, "valueForThemeAttribute:inState:", "tile-text-shadow-color", themeState));
    objj_msgSend(self.textField, "setTextShadowOffset:", objj_msgSend(self.calendarView, "valueForThemeAttribute:inState:", "tile-text-shadow-offset", themeState));
}
,["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeClass"), function $LPCalendarDayView__themeClass(self, _cmd)
{
    return "lp-calendar-day-view";
}
,["CPString"]), new objj_method(sel_getUid("themeAttributes"), function $LPCalendarDayView__themeAttributes(self, _cmd)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [nil, nil], ["background-color", "bezel-color"]);
}
,["id"]), new objj_method(sel_getUid("dayViewWithCalendarView:"), function $LPCalendarDayView__dayViewWithCalendarView_(self, _cmd, aCalendarView)
{
    var dayView = objj_msgSend(objj_msgSend(self, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(dayView, "setCalendarView:", aCalendarView);
    return dayView;
}
,["id","LPCalendarView"])]);
}p;16;LPCalendarView.jt;14351;@STATIC;1.0;I;18;AppKit/CPControl.ji;22;LPCalendarHeaderView.ji;21;LPCalendarMonthView.ji;13;LPSlideView.jt;14237;objj_executeFile("AppKit/CPControl.j", NO);
objj_executeFile("LPCalendarHeaderView.j", YES);
objj_executeFile("LPCalendarMonthView.j", YES);
objj_executeFile("LPSlideView.j", YES);
{var the_class = objj_allocateClassPair(CPView, "LPCalendarView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("headerView"), new objj_ivar("slideView"), new objj_ivar("currentMonthView"), new objj_ivar("firstMonthView"), new objj_ivar("secondMonthView"), new objj_ivar("fullSelection"), new objj_ivar("_delegate"), new objj_ivar("_target"), new objj_ivar("_doubleAction"), new objj_ivar("bezelView")]);


















objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("headerView"), function $LPCalendarView__headerView(self, _cmd)
{
return self.headerView;
}
,["LPCalendarHeaderView"]), new objj_method(sel_getUid("fullSelection"), function $LPCalendarView__fullSelection(self, _cmd)
{
return self.fullSelection;
}
,["CPArray"]), new objj_method(sel_getUid("delegate"), function $LPCalendarView__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $LPCalendarView__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("target"), function $LPCalendarView__target(self, _cmd)
{
return self._target;
}
,["id"]), new objj_method(sel_getUid("setTarget:"), function $LPCalendarView__setTarget_(self, _cmd, newValue)
{
self._target = newValue;
}
,["void","id"]), new objj_method(sel_getUid("doubleAction"), function $LPCalendarView__doubleAction(self, _cmd)
{
return self._doubleAction;
}
,["SEL"]), new objj_method(sel_getUid("setDoubleAction:"), function $LPCalendarView__setDoubleAction_(self, _cmd, newValue)
{
self._doubleAction = newValue;
}
,["void","SEL"]), new objj_method(sel_getUid("initWithFrame:"), function $LPCalendarView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCalendarView").super_class }, "initWithFrame:", aFrame))
    {
        self.fullSelection = [nil, nil];
        var bounds = objj_msgSend(self, "bounds");
    objj_msgSend(self, "setClipsToBounds:", NO);
        self.headerView = objj_msgSend(objj_msgSend(LPCalendarHeaderView, "alloc"), "initWithFrame:", CGRectMake(0, 0, CGRectGetWidth(bounds), 40));
        objj_msgSend(objj_msgSend(self.headerView, "prevButton"), "setTarget:", self);
        objj_msgSend(objj_msgSend(self.headerView, "prevButton"), "setAction:", sel_getUid("didClickPrevButton:"));
        objj_msgSend(objj_msgSend(self.headerView, "nextButton"), "setTarget:", self);
        objj_msgSend(objj_msgSend(self.headerView, "nextButton"), "setAction:", sel_getUid("didClickNextButton:"));
        objj_msgSend(self, "addSubview:", self.headerView);
        self.slideView = objj_msgSend(objj_msgSend(LPSlideView, "alloc"), "initWithFrame:", CGRectMake(0, 40, CGRectGetWidth(bounds), CGRectGetHeight(bounds) - 40));
        objj_msgSend(self.slideView, "setSlideDirection:", LPSlideViewVerticalDirection);
        objj_msgSend(self.slideView, "setDelegate:", self);
        objj_msgSend(self.slideView, "setAnimationCurve:", CPAnimationEaseOut);
        objj_msgSend(self.slideView, "setAnimationDuration:", 0.2);
        objj_msgSend(self, "addSubview:", self.slideView);
        self.bezelView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", objj_msgSend(self.slideView, "frame"));
        objj_msgSend(self.bezelView, "setHitTests:", NO);
        objj_msgSend(self, "addSubview:positioned:relativeTo:", self.bezelView, CPWindowBelow, nil);
        self.firstMonthView = objj_msgSend(objj_msgSend(LPCalendarMonthView, "alloc"), "initWithFrame:calendarView:", objj_msgSend(self.slideView, "bounds"), self);
        objj_msgSend(self.firstMonthView, "setDelegate:", self);
        objj_msgSend(self.slideView, "addSubview:", self.firstMonthView);
        self.secondMonthView = objj_msgSend(objj_msgSend(LPCalendarMonthView, "alloc"), "initWithFrame:calendarView:", objj_msgSend(self.slideView, "bounds"), self);
        objj_msgSend(self.secondMonthView, "setDelegate:", self);
        objj_msgSend(self.slideView, "addSubview:", self.secondMonthView);
        self.currentMonthView = self.firstMonthView;
        objj_msgSend(self.currentMonthView, "setNeedsLayout");
        objj_msgSend(self, "setMonth:", objj_msgSend(CPDate, "date"));
        objj_msgSend(self, "setNeedsLayout");
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("setTheme:"), function $LPCalendarView__setTheme_(self, _cmd, aTheme)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCalendarView").super_class }, "setTheme:", aTheme);
    objj_msgSend(self, "setNeedsLayout");
    objj_msgSend(self.firstMonthView, "setNeedsLayout");
    objj_msgSend(self.secondMonthView, "setNeedsLayout");
}
,["void","CPTheme"]), new objj_method(sel_getUid("selectDate:"), function $LPCalendarView__selectDate_(self, _cmd, aDate)
{
    objj_msgSend(self, "setMonth:", aDate);
    objj_msgSend(self, "makeSelectionWithDate:end:", aDate, aDate);
}
,["void","CPDate"]), new objj_method(sel_getUid("setMonth:"), function $LPCalendarView__setMonth_(self, _cmd, aMonth)
{
    objj_msgSend(self.currentMonthView, "setDate:", aMonth)
    objj_msgSend(self.headerView, "setDate:", aMonth);
}
,["void","CPDate"]), new objj_method(sel_getUid("monthViewForMonth:"), function $LPCalendarView__monthViewForMonth_(self, _cmd, aMonth)
{
    var availableMonthView = objj_msgSend(self.firstMonthView, "isHidden") ? self.firstMonthView : self.secondMonthView;
    objj_msgSend(availableMonthView, "setHiddenRows:", []);
    objj_msgSend(availableMonthView, "setDate:", aMonth);
    objj_msgSend(availableMonthView, "makeSelectionWithDate:end:", self.fullSelection[0], objj_msgSend(self.fullSelection, "lastObject"));
    return availableMonthView;
}
,["id","CPDate"]), new objj_method(sel_getUid("changeToMonth:"), function $LPCalendarView__changeToMonth_(self, _cmd, aMonth)
{
    var slideToView = objj_msgSend(self, "monthViewForMonth:", aMonth),
        slideFromView = self.currentMonthView;
    if (objj_msgSend(self.currentMonthView, "date").getTime() > aMonth.getTime())
    {
        var direction = LPSlideViewPositiveDirection,
            startDelta = 0.335,
            hiddenRows = [0,1];
    }
    else
    {
        var direction = LPSlideViewNegativeDirection,
            startDelta = 0.34,
            hiddenRows = [4,5];
    }
    self.currentMonthView = slideToView;
    objj_msgSend(self.currentMonthView, "setFrameOrigin:", CGPointMake(-500,-500));
    objj_msgSend(self.currentMonthView, "setHidden:", NO);
    objj_msgSend(self.currentMonthView, "setNeedsDisplay:", YES);
    objj_msgSend(self.currentMonthView, "setNeedsLayout");
    objj_msgSend(self.headerView, "setDate:", aMonth);
    setTimeout(function(){
        objj_msgSend(slideFromView, "setHiddenRows:", hiddenRows);
        objj_msgSend(self.slideView, "slideToView:direction:animationProgress:", slideToView, direction, startDelta);
    }, 10);
}
,["void","CPDate"]), new objj_method(sel_getUid("setAllowsMultipleSelection:"), function $LPCalendarView__setAllowsMultipleSelection_(self, _cmd, shouldAllowMultipleSelection)
{
    objj_msgSend(self.firstMonthView, "setAllowsMultipleSelection:", shouldAllowMultipleSelection);
    objj_msgSend(self.secondMonthView, "setAllowsMultipleSelection:", shouldAllowMultipleSelection);
}
,["void","BOOL"]), new objj_method(sel_getUid("setHighlightCurrentPeriod:"), function $LPCalendarView__setHighlightCurrentPeriod_(self, _cmd, shouldHighlightCurrentPeriod)
{
    objj_msgSend(self.firstMonthView, "setHighlightCurrentPeriod:", shouldHighlightCurrentPeriod);
    objj_msgSend(self.secondMonthView, "setHighlightCurrentPeriod:", shouldHighlightCurrentPeriod);
}
,["void","BOOL"]), new objj_method(sel_getUid("setSelectionLengthType:"), function $LPCalendarView__setSelectionLengthType_(self, _cmd, aSelectionType)
{
    objj_msgSend(self.firstMonthView, "setSelectionLengthType:", aSelectionType);
    objj_msgSend(self.secondMonthView, "setSelectionLengthType:", aSelectionType);
}
,["void","id"]), new objj_method(sel_getUid("setWeekStartsOnMonday:"), function $LPCalendarView__setWeekStartsOnMonday_(self, _cmd, shouldWeekStartOnMonday)
{
    objj_msgSend(self.headerView, "setWeekStartsOnMonday:", shouldWeekStartOnMonday)
    objj_msgSend(self.firstMonthView, "setWeekStartsOnMonday:", shouldWeekStartOnMonday);
    objj_msgSend(self.secondMonthView, "setWeekStartsOnMonday:", shouldWeekStartOnMonday);
}
,["void","BOOL"]), new objj_method(sel_getUid("setFastForwardEnabled:"), function $LPCalendarView__setFastForwardEnabled_(self, _cmd, shouldFastForward)
{
    objj_msgSend(self.headerView, "setFastForwardEnabled:", shouldFastForward);
}
,["void","BOOL"]), new objj_method(sel_getUid("isFastForwardEnabled"), function $LPCalendarView__isFastForwardEnabled(self, _cmd)
{
    return objj_msgSend(self.headerView, "isFastForwardEnabled");
}
,["BOOL"]), new objj_method(sel_getUid("layoutSubviews"), function $LPCalendarView__layoutSubviews(self, _cmd)
{
    var width = CGRectGetWidth(objj_msgSend(self, "bounds")),
        headerHeight = objj_msgSend(self, "currentValueForThemeAttribute:", "header-height");
    objj_msgSend(self.headerView, "setFrameSize:", CGSizeMake(width, headerHeight));
    objj_msgSend(self.slideView, "setFrame:", CGRectMake(0, headerHeight, width, CGRectGetHeight(objj_msgSend(self, "bounds")) - headerHeight));
    objj_msgSend(self.headerView, "setNeedsLayout");
    objj_msgSend(self.bezelView, "setBackgroundColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "bezel-color"));
    var bezelInset = objj_msgSend(self, "currentValueForThemeAttribute:", "bezel-inset"),
        viewFrame = objj_msgSend(self, "frame");
    objj_msgSend(self.bezelView, "setFrame:", CGRectMake(
        0 + bezelInset.left,
        0 + bezelInset.top,
        viewFrame.size.width - bezelInset.left - bezelInset.right,
        viewFrame.size.height - bezelInset.top - bezelInset.bottom
    ));
    objj_msgSend(self.slideView, "setBackgroundColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "background-color"));
}
,["void"]), new objj_method(sel_getUid("didClickPrevButton:"), function $LPCalendarView__didClickPrevButton_(self, _cmd, sender)
{
    objj_msgSend(self, "_didClickHeaderButton:toMonth:", sender, objj_msgSend(self.currentMonthView, "previousMonth"));
}
,["void","id"]), new objj_method(sel_getUid("didClickNextButton:"), function $LPCalendarView__didClickNextButton_(self, _cmd, sender)
{
    objj_msgSend(self, "_didClickHeaderButton:toMonth:", sender, objj_msgSend(self.currentMonthView, "nextMonth"));
}
,["void","id"]), new objj_method(sel_getUid("_didClickHeaderButton:toMonth:"), function $LPCalendarView___didClickHeaderButton_toMonth_(self, _cmd, aButton, aMonth)
{
    if (objj_msgSend(self.slideView, "isSliding"))
        return;
    if (objj_msgSend(aButton, "isFastForwarding"))
    {
        objj_msgSend(self, "setMonth:", aMonth);
        objj_msgSend(self.currentMonthView, "makeSelectionWithDate:end:", objj_msgSend(self.fullSelection, "objectAtIndex:", 0), objj_msgSend(self.fullSelection, "lastObject"));
    }
    else
    {
        objj_msgSend(self, "changeToMonth:", aMonth);
    }
}
,["void","LPCalendarHeaderButton","CPDate"]), new objj_method(sel_getUid("makeSelectionWithDate:end:"), function $LPCalendarView__makeSelectionWithDate_end_(self, _cmd, aStartDate, anEndDate)
{
    objj_msgSend(self.currentMonthView, "makeSelectionWithDate:end:", aStartDate, anEndDate);
}
,["void","CPDate","CPDate"]), new objj_method(sel_getUid("didMakeSelection:"), function $LPCalendarView__didMakeSelection_(self, _cmd, aSelection)
{
    if (objj_msgSend(aSelection, "count") <= 1)
        objj_msgSend(aSelection, "addObject:", nil);
    if (objj_msgSend(self.fullSelection, "isEqualToArray:", aSelection))
        return;
    self.fullSelection = objj_msgSend(CPArray, "arrayWithArray:", aSelection);
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("calendarView:didMakeSelection:end:")))
        objj_msgSend(self._delegate, "calendarView:didMakeSelection:end:", self, objj_msgSend(self.fullSelection, "objectAtIndex:", 0), objj_msgSend(self.fullSelection, "lastObject"));
}
,["void","CPArray"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeClass"), function $LPCalendarView__themeClass(self, _cmd)
{
    return "lp-calendar-view";
}
,["CPString"]), new objj_method(sel_getUid("themeAttributes"), function $LPCalendarView__themeAttributes(self, _cmd)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), CGInsetMakeZero(), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), CGSizeMake(0,0), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), 40, objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), 30, objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null")], ["background-color", "bezel-color", "bezel-inset", "grid-color", "grid-shadow-color",
                                                "tile-size", "tile-font", "tile-text-color", "tile-text-shadow-color", "tile-text-shadow-offset", "tile-bezel-color",
                                                "header-button-offset", "header-prev-button-image", "header-next-button-image", "header-height", "header-background-color", "header-font", "header-text-color", "header-text-shadow-color", "header-text-shadow-offset", "header-alignment",
                                                "header-weekday-offset", "header-weekday-label-font", "header-weekday-label-color", "header-weekday-label-shadow-color", "header-weekday-label-shadow-offset"]);
}
,["id"])]);
}p;13;LPChartView.jt;28705;@STATIC;1.0;I;15;AppKit/CPView.jI;20;AppKit/CPTextField.jt;28640;objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
{var the_class = objj_allocateClassPair(CPView, "LPChartView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("dataSource"), new objj_ivar("delegate"), new objj_ivar("drawView"), new objj_ivar("fixedMaxValue"), new objj_ivar("labelViewHeight"), new objj_ivar("drawViewPadding"), new objj_ivar("gridView"), new objj_ivar("labelView"), new objj_ivar("displayLabels"), new objj_ivar("_data"), new objj_ivar("_maxValue"), new objj_ivar("_framesSet"), new objj_ivar("_currentSize"), new objj_ivar("_maxValuePosition"), new objj_ivar("_minValuePosition")]);













objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("dataSource"), function $LPChartView__dataSource(self, _cmd)
{
return self.dataSource;
}
,["id"]), new objj_method(sel_getUid("setDataSource:"), function $LPChartView__setDataSource_(self, _cmd, newValue)
{
self.dataSource = newValue;
}
,["void","id"]), new objj_method(sel_getUid("delegate"), function $LPChartView__delegate(self, _cmd)
{
return self.delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $LPChartView__setDelegate_(self, _cmd, newValue)
{
self.delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("drawView"), function $LPChartView__drawView(self, _cmd)
{
return self.drawView;
}
,["id"]), new objj_method(sel_getUid("setDrawView:"), function $LPChartView__setDrawView_(self, _cmd, newValue)
{
self.drawView = newValue;
}
,["void","id"]), new objj_method(sel_getUid("fixedMaxValue"), function $LPChartView__fixedMaxValue(self, _cmd)
{
return self.fixedMaxValue;
}
,["int"]), new objj_method(sel_getUid("setFixedMaxValue:"), function $LPChartView__setFixedMaxValue_(self, _cmd, newValue)
{
self.fixedMaxValue = newValue;
}
,["void","int"]), new objj_method(sel_getUid("labelViewHeight"), function $LPChartView__labelViewHeight(self, _cmd)
{
return self.labelViewHeight;
}
,["int"]), new objj_method(sel_getUid("setLabelViewHeight:"), function $LPChartView__setLabelViewHeight_(self, _cmd, newValue)
{
self.labelViewHeight = newValue;
}
,["void","int"]), new objj_method(sel_getUid("drawViewPadding"), function $LPChartView__drawViewPadding(self, _cmd)
{
return self.drawViewPadding;
}
,["int"]), new objj_method(sel_getUid("setDrawViewPadding:"), function $LPChartView__setDrawViewPadding_(self, _cmd, newValue)
{
self.drawViewPadding = newValue;
}
,["void","int"]), new objj_method(sel_getUid("gridView"), function $LPChartView__gridView(self, _cmd)
{
return self.gridView;
}
,["LPChartGridView"]), new objj_method(sel_getUid("setGridView:"), function $LPChartView__setGridView_(self, _cmd, newValue)
{
self.gridView = newValue;
}
,["void","LPChartGridView"]), new objj_method(sel_getUid("labelView"), function $LPChartView__labelView(self, _cmd)
{
return self.labelView;
}
,["LPChartLabelView"]), new objj_method(sel_getUid("displayLabels"), function $LPChartView__displayLabels(self, _cmd)
{
return self.displayLabels;
}
,["BOOL"]), new objj_method(sel_getUid("setDisplayLabels:"), function $LPChartView__setDisplayLabels_(self, _cmd, newValue)
{
self.displayLabels = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("initWithFrame:"), function $LPChartView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPChartView").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self, "_setup");
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("_setup"), function $LPChartView___setup(self, _cmd)
{
    self._maxValuePosition = 1.0;
    self._minValuePosition = 0.0;
    self.gridView = objj_msgSend(objj_msgSend(LPChartGridView, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(self.gridView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(self, "addSubview:", self.gridView);
    var bounds = objj_msgSend(self, "bounds");
    self.labelView = objj_msgSend(objj_msgSend(LPChartLabelView, "alloc"), "initWithFrame:", CGRectMake(self.drawViewPadding, CGRectGetHeight(bounds) - self.labelViewHeight, CGRectGetWidth(bounds) - (2 * self.drawViewPadding), self.labelViewHeight));
    objj_msgSend(self, "addSubview:", self.labelView);
    self._currentSize = CGSizeMake(0,0);
    self.fixedMaxValue = 0;
    self.labelViewHeight = 20;
    self.drawViewPadding = 5;
}
,["void"]), new objj_method(sel_getUid("setDataSource:"), function $LPChartView__setDataSource_(self, _cmd, aDataSource)
{
    self.dataSource = aDataSource;
}
,["void","id"]), new objj_method(sel_getUid("setDrawView:"), function $LPChartView__setDrawView_(self, _cmd, aDrawView)
{
    if (aDrawView === self.drawView)
        return;
    if (self.drawView)
        objj_msgSend(self.drawView, "removeFromSuperview");
    objj_msgSend(self, "addSubview:positioned:relativeTo:", aDrawView, CPWindowAbove, self.gridView);
    self.drawView = aDrawView;
    var drawViewFrame = CGRectInset(objj_msgSend(self, "bounds"), self.drawViewPadding, self.drawViewPadding);
    if (self.labelView)
        drawViewFrame.size.height -= CGRectGetHeight(objj_msgSend(self.labelView, "bounds"));
    objj_msgSend(self.drawView, "setFrame:", drawViewFrame);
    objj_msgSend(self.drawView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    drawViewFrame.size.height += 1;
    objj_msgSend(self.gridView, "setFrame:", drawViewFrame);
    if (objj_msgSend(self, "window"))
        objj_msgSend(self, "reloadData");
}
,["void","id"]), new objj_method(sel_getUid("setGridView:"), function $LPChartView__setGridView_(self, _cmd, aGridView)
{
    if (self.gridView === aGridView)
        return;
    objj_msgSend(aGridView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(self, "replaceSubview:with:", self.gridView, aGridView);
    var gridViewFrame = objj_msgSend(self.drawView, "frame");
    gridViewFrame.height -= 1;
    objj_msgSend(aGridView, "setFrame:", gridViewFrame);
    self.gridView = aGridView;
}
,["void","CPView"]), new objj_method(sel_getUid("setDisplayLabels:"), function $LPChartView__setDisplayLabels_(self, _cmd, shouldDisplayLabels)
{
    if (!self.displayLabels && self.labelView)
    {
        var drawViewSize = objj_msgSend(self.drawView, "frame");
        drawViewSize.size.height += CGRectGetHeight(objj_msgSend(self.labelView, "bounds"));
        objj_msgSend(self.drawView, "setFrame:", drawViewSize);
        objj_msgSend(self.labelView, "removeFromSuperview");
    }
    else
    {
        var frame = objj_msgSend(self, "frame");
        self.labelView = objj_msgSend(objj_msgSend(LPChartLabelView, "alloc"), "initWithFrame:", CGRectMake(0, CGRectGetHeight(frame) - self.labelViewHeight, CGRectGetWidth(frame), self.labelViewHeight));
        objj_msgSend(self, "addSubview:", self.labelView);
    }
    self.displayLabels = shouldDisplayLabels;
}
,["void","BOOL"]), new objj_method(sel_getUid("setDisplayGrid:"), function $LPChartView__setDisplayGrid_(self, _cmd, shouldDisplayGrid)
{
    objj_msgSend(self.gridView, "setHidden:", !shouldDisplayGrid);
}
,["void","BOOL"]), new objj_method(sel_getUid("setMaxValuePosition:minValuePosition:"), function $LPChartView__setMaxValuePosition_minValuePosition_(self, _cmd, aMaxValuePosition, aMinValuePosition)
{
    self._maxValuePosition = aMaxValuePosition;
    self._minValuePosition = aMinValuePosition;
    objj_msgSend(objj_msgSend(self, "drawView"), "setNeedsDisplay:", YES);
}
,["void","float","float"]), new objj_method(sel_getUid("itemFrames"), function $LPChartView__itemFrames(self, _cmd)
{
    return (self.dataSource && self.drawView && self._data) ? objj_msgSend(self, "calculateItemFramesWithSets:maxValue:", self._data, self._maxValue) : objj_msgSend(CPArray, "array");
}
,["CPArray"]), new objj_method(sel_getUid("reloadData"), function $LPChartView__reloadData(self, _cmd)
{
    if (!self.dataSource || !self.drawView)
        return;
    self._data = objj_msgSend(CPArray, "array");
    self._maxValue = self.fixedMaxValue;
    var numberOfSets = objj_msgSend(self.dataSource, "numberOfSetsInChart:", self);
    for (var setIndex = 0; setIndex < numberOfSets; setIndex++)
    {
        var row = [],
            numberOfItems = objj_msgSend(self.dataSource, "chart:numberOfValuesInSet:", self, setIndex);
        for (var itemIndex = 0; itemIndex < numberOfItems; itemIndex++)
        {
            var value = objj_msgSend(self.dataSource, "chart:valueForIndex:set:", self, itemIndex, setIndex);
            if (value > self._maxValue)
                self._maxValue = value;
            row.push(value);
        }
        self._data.push(row);
    }
    self._currentSize = nil;
    objj_msgSend(self.gridView, "setNeedsDisplay:", YES);
    objj_msgSend(self.labelView, "reloadData");
    objj_msgSend(self.drawView, "setNeedsDisplay:", YES);
}
,["void"]), new objj_method(sel_getUid("calculateItemFramesWithSets:maxValue:"), function $LPChartView__calculateItemFramesWithSets_maxValue_(self, _cmd, sets, aMaxValue)
{
    var drawViewSize = objj_msgSend(self.drawView, "bounds").size,
        maxValueHeightDelta = (1.0 - self._maxValuePosition) * drawViewSize.height;
    if (self._minValuePosition !== 0.0)
        drawViewSize.height -= self._minValuePosition * drawViewSize.height;
    if (self._maxValuePosition !== 1.0)
        drawViewSize.height -= maxValueHeightDelta;
    if (self._currentSize && CGSizeEqualToSize(self._currentSize, drawViewSize))
        return self._framesSet;
    self._currentSize = drawViewSize;
    self._framesSet = objj_msgSend(CPArray, "array");
    if (!sets.length)
        return self._framesSet;
    if (aMaxValue === 0)
        aMaxValue = 1;
    var width = drawViewSize.width,
        height = drawViewSize.height - (2 * self.drawViewPadding),
        numberOfItems = sets[0].length,
        itemWidth = width / numberOfItems,
        unusedWidth = width - (numberOfItems * itemWidth);
    for (var setIndex = 0; setIndex < sets.length; setIndex++)
    {
        var items = sets[setIndex],
            currentItemOriginX = 0,
            row = [];
        for (var itemIndex = 0; itemIndex < items.length; itemIndex++)
        {
            var value = items[itemIndex],
                itemFrame = CGRectMake(currentItemOriginX, 0, itemWidth, 0);
            if (unusedWidth > 0)
            {
                itemFrame.size.width++;
                unusedWidth--;
            }
            itemFrame.size.height = ROUND((value / aMaxValue) * height);
            itemFrame.origin.y = height - CGRectGetHeight(itemFrame) + self.drawViewPadding;
            if (self._maxValuePosition !== 1.0)
                itemFrame.origin.y += maxValueHeightDelta;
            row.push(itemFrame);
            currentItemOriginX += CGRectGetWidth(itemFrame);
        }
        self._framesSet.push(row);
    }
    return self._framesSet;
}
,["CPArray","CPArray","int"]), new objj_method(sel_getUid("horizontalLabelForIndex:"), function $LPChartView__horizontalLabelForIndex_(self, _cmd, anIndex)
{
    return objj_msgSend(self.dataSource, "chart:labelValueForIndex:", self, anIndex);
}
,["CPString","int"]), new objj_method(sel_getUid("mouseMoved:"), function $LPChartView__mouseMoved_(self, _cmd, anEvent)
{
    if (self.delegate && objj_msgSend(self.delegate, "respondsToSelector:", sel_getUid("chart:didMouseOverItemAtIndex:")))
    {
        var itemFrames = objj_msgSend(self, "itemFrames");
        if (!itemFrames.length)
            return;
        var firstSet = itemFrames[0],
            locationInDrawView = objj_msgSend(self.drawView, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil);
        for (var i = 0; i < firstSet.length; i++)
        {
            var itemFrame = firstSet[i];
            if (itemFrame.origin.x <= locationInDrawView.x && (itemFrame.origin.x + itemFrame.size.width) > locationInDrawView.x)
            {
                objj_msgSend(self.delegate, "chart:didMouseOverItemAtIndex:", self, i);
                return;
            }
        }
    }
}
,["void","CPEvent"]), new objj_method(sel_getUid("mouseExited:"), function $LPChartView__mouseExited_(self, _cmd, anEvent)
{
    if (self.delegate && objj_msgSend(self.delegate, "respondsToSelector:", sel_getUid("chart:didMouseOverItemAtIndex:")))
        objj_msgSend(self.delegate, "chart:didMouseOverItemAtIndex:", self, -1);
}
,["void","CPEvent"]), new objj_method(sel_getUid("viewDidMoveToWindow"), function $LPChartView__viewDidMoveToWindow(self, _cmd)
{
    objj_msgSend(self, "reloadData");
}
,["void"])]);
}
var LPChartViewDataSourceKey = "LPChartViewDataSourceKey",
    LPChartViewDrawViewKey = "LPChartViewDrawViewKey",
    LPChartViewGridViewKey = "LPChartViewGridViewKey",
    LPChartViewDisplayLabelsKey = "LPChartViewDisplayLabelsKey",
    LPChartViewLabelViewKey = "LPChartViewLabelViewKey",
    LPChartViewDataKey = "LPChartViewDataKey",
    LPChartViewMaxValueKey = "LPChartViewMaxValueKey",
    LPChartViewFramesSetKey = "LPChartViewFramesSetKey",
    LPChartViewCurrentSizeKey = "LPChartViewCurrentSizeKey",
    LPChartViewMaxValuePositionKey = "LPChartViewMaxValuePositionKey",
    LPChartViewMinValuePositionKey = "LPChartViewMinValuePositionKey";
{
var the_class = objj_getClass("LPChartView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"LPChartView\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $LPChartView__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPChartView").super_class }, "initWithCoder:", aCoder))
    {
        self.dataSource = objj_msgSend(aCoder, "decodeObjectForKey:", LPChartViewDataSourceKey);
        self.gridView = objj_msgSend(aCoder, "decodeObjectForKey:", LPChartViewGridViewKey);
        self.drawView = objj_msgSend(aCoder, "decodeObjectForKey:", LPChartViewDrawViewKey);
        self.displayLabels = !objj_msgSend(aCoder, "containsValueForKey:", LPChartViewDisplayLabelsKey) || objj_msgSend(aCoder, "decodeObjectForKey:", LPChartViewDisplayLabelsKey);
        self.labelView = objj_msgSend(aCoder, "decodeObjectForKey:", LPChartViewLabelViewKey);
        self._data = objj_msgSend(aCoder, "decodeObjectForKey:", LPChartViewDataKey);
        self._maxValue = objj_msgSend(aCoder, "decodeIntForKey:", LPChartViewMaxValueKey);
        self._framesSet = objj_msgSend(aCoder, "decodeObjectForKey:", LPChartViewFramesSetKey);
        self._currentSize = objj_msgSend(aCoder, "decodeSizeForKey:", LPChartViewCurrentSizeKey);
        self._maxValuePosition = objj_msgSend(aCoder, "decodeIntForKey:", LPChartViewMaxValuePositionKey);
        self._minValuePosition = objj_msgSend(aCoder, "decodeFloatForKey:", LPChartViewMinValuePositionKey);
        objj_msgSend(self, "_setup");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $LPChartView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPChartView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.dataSource, LPChartViewDataSourceKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.drawView, LPChartViewDrawViewKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.gridView, LPChartViewGridViewKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", self.displayLabels, LPChartViewDisplayLabelsKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.labelView, LPChartViewLabelViewKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", self._data, LPChartViewDataKey);
    objj_msgSend(aCoder, "encodeInt:forKey:", self._maxValue, LPChartViewMaxValueKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", self._framesSet, LPChartViewFramesSetKey);
    if (self._currentSize)
        objj_msgSend(aCoder, "encodeSize:forKey:", self._currentSize, LPChartViewCurrentSizeKey);
    objj_msgSend(aCoder, "encodeFloat:forKey:", self._maxValuePosition, LPChartViewMaxValuePositionKey);
    objj_msgSend(aCoder, "encodeFloat:forKey:", self._minValuePosition, LPChartViewMinValuePositionKey);
}
,["void","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPView, "LPChartGridView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("gridColor")]);

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("gridColor"), function $LPChartGridView__gridColor(self, _cmd)
{
return self.gridColor;
}
,["CPColor"]), new objj_method(sel_getUid("setGridColor:"), function $LPChartGridView__setGridColor_(self, _cmd, newValue)
{
self.gridColor = newValue;
}
,["void","CPColor"]), new objj_method(sel_getUid("initWithFrame:"), function $LPChartGridView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPChartGridView").super_class }, "initWithFrame:", aFrame))
    {
        self.gridColor = objj_msgSend(CPColor, "colorWithWhite:alpha:", 0, 0.05);
        objj_msgSend(self, "setHitTests:", NO);
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("setGridColor:"), function $LPChartGridView__setGridColor_(self, _cmd, aColor)
{
    self.gridColor = aColor;
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
,["void","CPColor"]), new objj_method(sel_getUid("drawRect:"), function $LPChartGridView__drawRect_(self, _cmd, aRect)
{
    var itemFrames;
    if (itemFrames = objj_msgSend(objj_msgSend(self, "superview"), "itemFrames"))
    {
        var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort"),
            bounds = objj_msgSend(self, "bounds"),
            width = CGRectGetWidth(bounds),
            height = CGRectGetHeight(bounds),
            lineWidth = 1;
        CGContextSetFillColor(context, self.gridColor);
        if (itemFrames.length)
        {
            for (var i = 0; i < itemFrames[0].length; i++)
            {
                CGContextFillRect(context, CGRectMake(FLOOR(itemFrames[0][i].origin.x), 0, lineWidth, height));
            }
        }
        else
            CGContextFillRect(context, CGRectMake(0, 0, lineWidth, height));
        CGContextFillRect(context, CGRectMake(width - lineWidth, 0, lineWidth, height));
        CGContextFillRect(context, CGRectMake(0, height - lineWidth, width, lineWidth));
        CGContextFillRect(context, CGRectMake(0, FLOOR(height / 2), width, lineWidth));
    }
}
,["void","CGRect"])]);
}
{var the_class = objj_allocateClassPair(CPView, "LPChartDrawView"),
meta_class = the_class.isa;

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $LPChartDrawView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPChartDrawView").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self, "setHitTests:", NO);
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("drawRect:"), function $LPChartDrawView__drawRect_(self, _cmd, aRect)
{
    var itemFrames;
    if (itemFrames = objj_msgSend(objj_msgSend(self, "superview"), "itemFrames"))
    {
        var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort");
        objj_msgSend(self, "drawSetWithFrames:inContext:", itemFrames, context);
    }
}
,["void","CGRect"]), new objj_method(sel_getUid("drawSetWithFrames:inContext:"), function $LPChartDrawView__drawSetWithFrames_inContext_(self, _cmd, aFramesSet, context)
{
    CGContextSetStrokeColor(context, objj_msgSend(CPColor, "colorWithHexString:", "4379ca"));
    CGContextSetLineWidth(context, 2.0);
    for (var setIndex = 0; setIndex < aFramesSet.length; setIndex++)
    {
        var items = aFramesSet[setIndex];
        CGContextBeginPath(context);
        for (var itemIndex = 0; itemIndex < items.length; itemIndex++)
        {
            var itemFrame = items[itemIndex],
                point = CGPointMake(CGRectGetMidX(itemFrame), CGRectGetMinY(itemFrame));
            if (itemIndex == 0)
                CGContextMoveToPoint(context, point.x, point.y);
            else
                CGContextAddLineToPoint(context, point.x, point.y);
        }
        CGContextStrokePath(context);
        CGContextClosePath(context);
    }
}
,["void","CPArray","CGContext"])]);
}
{var the_class = objj_allocateClassPair(CPView, "LPChartLabelView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("chart"), new objj_ivar("_labelPrototype"), new objj_ivar("_labelData"), new objj_ivar("_cachedLabels")]);




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $LPChartLabelView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPChartLabelView").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self, "setAutoresizingMask:", CPViewWidthSizable | CPViewMinYMargin);
        objj_msgSend(self, "setHitTests:", NO);
        objj_msgSend(self, "setLabelPrototype:", objj_msgSend(LPChartLabel, "labelWithItemIndex:", -1));
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("setLabelPrototype:"), function $LPChartLabelView__setLabelPrototype_(self, _cmd, aLabelPrototype)
{
    self._labelPrototype = aLabelPrototype;
    self._labelData = nil;
    self._cachedLabels = objj_msgSend(CPArray, "array");
    objj_msgSend(self, "reloadData");
}
,["void","id"]), new objj_method(sel_getUid("newLabelWithItemIndex:"), function $LPChartLabelView__newLabelWithItemIndex_(self, _cmd, anItemIndex)
{
    if (self._cachedLabels.length)
        var label = self._cachedLabels.pop();
    else
    {
        if (!self._labelData)
            if (self._labelPrototype)
                self._labelData = objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", self._labelPrototype);
        var label = objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", self._labelData);
    }
    objj_msgSend(label, "setItemIndex:", anItemIndex);
    return label;
}
,["id","int"]), new objj_method(sel_getUid("reloadData"), function $LPChartLabelView__reloadData(self, _cmd)
{
    if (self.chart)
    {
        var subviews = objj_msgSend(self, "subviews"),
            numberOfSubviews;
        if (numberOfSubviews = subviews.length)
        {
            while (numberOfSubviews--)
            {
                objj_msgSend(subviews[numberOfSubviews], "removeFromSuperview");
                if (self._labelData)
                    self._cachedLabels.push(subviews[numberOfSubviews]);
            }
        }
        var itemFrames = objj_msgSend(self.chart, "itemFrames");
        if (itemFrames && itemFrames.length)
        {
            itemFrames = itemFrames[0];
            for (var i = 0, length = itemFrames.length; i < length; i++)
            {
                var label = objj_msgSend(self, "newLabelWithItemIndex:", i);
                objj_msgSend(label, "setLabel:", objj_msgSend(self.chart, "horizontalLabelForIndex:", i));
                objj_msgSend(self, "addSubview:", label);
            }
        }
        objj_msgSend(self, "setNeedsLayout");
    }
}
,["void"]), new objj_method(sel_getUid("viewDidMoveToSuperview"), function $LPChartLabelView__viewDidMoveToSuperview(self, _cmd)
{
    self.chart = objj_msgSend(self, "superview");
}
,["void"]), new objj_method(sel_getUid("layoutSubviews"), function $LPChartLabelView__layoutSubviews(self, _cmd)
{
    var itemFrames = objj_msgSend(self.chart, "itemFrames");
    if (!itemFrames)
        return;
    var subviews = objj_msgSend(self, "subviews"),
        numberOfSubviews = subviews.length,
        bounds = objj_msgSend(self, "bounds"),
        itemFrames = itemFrames[0],
        drawViewPadding = CGRectGetMinX(objj_msgSend(objj_msgSend(self.chart, "drawView"), "frame")),
        midY = CGRectGetMidY(bounds);
    while (numberOfSubviews--)
    {
        var subview = subviews[numberOfSubviews];
        objj_msgSend(subview, "setCenter:", CGPointMake(CGRectGetMidX(itemFrames[numberOfSubviews]) + drawViewPadding, midY));
        var subviewFrame = objj_msgSend(subview, "frame");
        if (subviewFrame.origin.x < 0)
        {
            subviewFrame.origin.x = 0;
            objj_msgSend(subview, "setFrame:", subviewFrame);
        }
        else if (CGRectGetMaxX(subviewFrame) > bounds.size.width)
        {
            subviewFrame.origin.x -= CGRectGetMaxX(subviewFrame) - bounds.size.width;
            objj_msgSend(subview, "setFrame:", subviewFrame);
        }
    }
}
,["void"])]);
}
var LPChartLabelViewChartKey = "LPChartLabelViewChartKey",
    LPChartLabelViewLabelPrototypeKey = "LPChartLabelViewLabelPrototypeKey";
{
var the_class = objj_getClass("LPChartLabelView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"LPChartLabelView\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $LPChartLabelView__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPChartLabelView").super_class }, "initWithCoder:", aCoder))
    {
        self.chart = objj_msgSend(aCoder, "decodeObjectForKey:", LPChartLabelViewChartKey);
        self._labelPrototype = objj_msgSend(aCoder, "decodeObjectForKey:", LPChartLabelViewLabelPrototypeKey);
        self._cachedLabels = objj_msgSend(CPArray, "array");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $LPChartLabelView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPChartLabelView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.chart, LPChartLabelViewChartKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", self._labelPrototype, LPChartLabelViewLabelPrototypeKey);
}
,["void","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPTextField, "LPChartLabel"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_itemIndex")]);

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("itemIndex"), function $LPChartLabel__itemIndex(self, _cmd)
{
return self._itemIndex;
}
,["int"]), new objj_method(sel_getUid("setItemIndex:"), function $LPChartLabel__setItemIndex_(self, _cmd, newValue)
{
self._itemIndex = newValue;
}
,["void","int"]), new objj_method(sel_getUid("initWithFrame:"), function $LPChartLabel__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPChartLabel").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self, "setHitTests:", NO);
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("setLabel:"), function $LPChartLabel__setLabel_(self, _cmd, aLabel)
{
    if (aLabel !== objj_msgSend(self, "stringValue"))
    {
        objj_msgSend(self, "setStringValue:", aLabel);
        objj_msgSend(self, "sizeToFit");
    }
}
,["void","CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("labelWithItemIndex:"), function $LPChartLabel__labelWithItemIndex_(self, _cmd, anItemIndex)
{
    var label = objj_msgSend(objj_msgSend(self, "alloc"), "initWithFrame:", CGRectMakeZero());
    objj_msgSend(label, "setItemIndex:", anItemIndex);
    return label;
}
,["id","int"])]);
}
var LPChartLabelItemIndexKey = "LPChartLabelItemIndexKey";
{
var the_class = objj_getClass("LPChartLabel")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"LPChartLabel\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $LPChartLabel__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPChartLabel").super_class }, "initWithCoder:", aCoder))
    {
        self._itemIndex = objj_msgSend(aCoder, "decodeIntForKey:", LPChartLabelItemIndexKey);
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $LPChartLabel__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPChartLabel").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeInt:forKey:", self._itemIndex, LPChartLabelItemIndexKey);
}
,["void","CPCoder"])]);
}p;20;LPCookieController.jt;3903;@STATIC;1.0;I;21;Foundation/CPObject.jI;20;Foundation/CPRange.jt;3833;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("Foundation/CPRange.j", NO);
var sharedCookieControllerInstance = nil;
{var the_class = objj_allocateClassPair(CPObject, "LPCookieController"),
meta_class = the_class.isa;






objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setValue:forKey:"), function $LPCookieController__setValue_forKey_(self, _cmd, aValue, aKey)
{
    return objj_msgSend(self, "setValue:forKey:expirationDate:", aValue, aKey, nil);
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("setValue:forKey:expirationDate:"), function $LPCookieController__setValue_forKey_expirationDate_(self, _cmd, aValue, aKey, anExpirationDate)
{
    return objj_msgSend(self, "setValue:forKey:expirationDate:path:", aValue, aKey, anExpirationDate, nil);
}
,["void","CPString","CPString","CPDate"]), new objj_method(sel_getUid("setValue:forKey:expirationDate:path:"), function $LPCookieController__setValue_forKey_expirationDate_path_(self, _cmd, aValue, aKey, anExpirationDate, aPath)
{
    return objj_msgSend(self, "setValue:forKey:expirationDate:path:domain:", aValue, aKey, anExpirationDate, aPath, nil);
}
,["void","CPString","CPString","CPDate","CPString"]), new objj_method(sel_getUid("setValue:forKey:expirationDate:path:domain:"), function $LPCookieController__setValue_forKey_expirationDate_path_domain_(self, _cmd, aValue, aKey, anExpirationDate, aPath, aDomain)
{
    return objj_msgSend(self, "setValue:forKey:expirationDate:path:domain:escape:", aValue, aKey, anExpirationDate, aPath, nil, YES);
}
,["void","CPString","CPString","CPDate","CPString","CPString"]), new objj_method(sel_getUid("setValue:forKey:expirationDate:path:domain:escape:"), function $LPCookieController__setValue_forKey_expirationDate_path_domain_escape_(self, _cmd, aValue, aKey, anExpirationDate, aPath, aDomain, shouldEscape)
{
    var cookieString = "";
    cookieString += objj_msgSend(CPString, "stringWithFormat:", "%s=%s; ", aKey, shouldEscape ? escape(aValue) : aValue);
    if (anExpirationDate)
        cookieString += objj_msgSend(CPString, "stringWithFormat:", "expires=%s; ", anExpirationDate.toUTCString());
    cookieString += objj_msgSend(CPString, "stringWithFormat:", "path=%s; ", aPath || "/");
    if (aDomain)
        cookieString += objj_msgSend(CPString, "stringWithFormat:", "domain=%s; ", aDomain);
    cookieString = objj_msgSend(cookieString, "substringToIndex:", objj_msgSend(cookieString, "length") - 2);
    document.cookie = cookieString;
}
,["void","CPString","CPString","CPDate","CPString","CPString","BOOL"]), new objj_method(sel_getUid("valueForKey:"), function $LPCookieController__valueForKey_(self, _cmd, aKey)
{
    var cookies = objj_msgSend(document.cookie, "componentsSeparatedByString:", ";");
    for (var i = 0; i < objj_msgSend(cookies, "count"); i++)
    {
        var cookie = objj_msgSend(cookies, "objectAtIndex:", i),
            range = objj_msgSend(cookie, "rangeOfString:options:", objj_msgSend(CPString, "stringWithFormat:", "%s=", aKey), CPCaseInsensitiveSearch);
        if (range.length > 0)
            return objj_msgSend(cookie, "substringFromIndex:", CPMaxRange(range));
    }
    return nil;
}
,["id","CPString"]), new objj_method(sel_getUid("removeValueForKey:"), function $LPCookieController__removeValueForKey_(self, _cmd, aKey)
{
    objj_msgSend(self, "setValue:forKey:expirationDate:", "", aKey, objj_msgSend(CPDate, "distantPast"));
}
,["void","CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("sharedCookieController"), function $LPCookieController__sharedCookieController(self, _cmd)
{
    if (!sharedCookieControllerInstance)
        sharedCookieControllerInstance = objj_msgSend(objj_msgSend(self, "alloc"), "init");
    return sharedCookieControllerInstance;
}
,["id"])]);
}p;17;LPCrashReporter.jt;17319;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPAlert.ji;18;LPURLPostRequest.ji;22;LPMultiLineTextField.ji;23;Resources/stacktrace.jst;17172;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPAlert.j", NO);
objj_executeFile("LPURLPostRequest.j", YES);
objj_executeFile("LPMultiLineTextField.j", YES);
objj_executeFile("Resources/stacktrace.js", YES);
//@global location
//@global navigator
//@global CPApp
var sharedErrorLoggerInstance = nil;
{var the_class = objj_allocateClassPair(CPObject, "LPCrashReporter"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_exception"), new objj_ivar("shouldInterceptException"), new objj_ivar("alertInformative"), new objj_ivar("alertMessage"), new objj_ivar("version"), new objj_ivar("reportURL"), new objj_ivar("delegate"), new objj_ivar("stackTrace")]);


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("exception"), function $LPCrashReporter__exception(self, _cmd)
{
return self._exception;
}
,["CPException"]), new objj_method(sel_getUid("setException:"), function $LPCrashReporter__setException_(self, _cmd, newValue)
{
self._exception = newValue;
}
,["void","CPException"]), new objj_method(sel_getUid("shouldInterceptException"), function $LPCrashReporter__shouldInterceptException(self, _cmd)
{
return self.shouldInterceptException;
}
,["BOOL"]), new objj_method(sel_getUid("setShouldInterceptException:"), function $LPCrashReporter__setShouldInterceptException_(self, _cmd, newValue)
{
self.shouldInterceptException = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("alertInformative"), function $LPCrashReporter__alertInformative(self, _cmd)
{
return self.alertInformative;
}
,["CPString"]), new objj_method(sel_getUid("setAlertInformative:"), function $LPCrashReporter__setAlertInformative_(self, _cmd, newValue)
{
self.alertInformative = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("alertMessage"), function $LPCrashReporter__alertMessage(self, _cmd)
{
return self.alertMessage;
}
,["CPString"]), new objj_method(sel_getUid("setAlertMessage:"), function $LPCrashReporter__setAlertMessage_(self, _cmd, newValue)
{
self.alertMessage = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("version"), function $LPCrashReporter__version(self, _cmd)
{
return self.version;
}
,["CPString"]), new objj_method(sel_getUid("setVersion:"), function $LPCrashReporter__setVersion_(self, _cmd, newValue)
{
self.version = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("reportURL"), function $LPCrashReporter__reportURL(self, _cmd)
{
return self.reportURL;
}
,["CPURL"]), new objj_method(sel_getUid("setReportURL:"), function $LPCrashReporter__setReportURL_(self, _cmd, newValue)
{
self.reportURL = newValue;
}
,["void","CPURL"]), new objj_method(sel_getUid("delegate"), function $LPCrashReporter__delegate(self, _cmd)
{
return self.delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $LPCrashReporter__setDelegate_(self, _cmd, newValue)
{
self.delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("init"), function $LPCrashReporter__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCrashReporter").super_class }, "init"))
    {
        self.alertMessage = objj_msgSend(CPString, "stringWithFormat:", "The application %@ crashed unexpectedly.", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "objectForInfoDictionaryKey:", "CPBundleName"));
        self.alertInformative = "Click Reload to load the application again or click Report to send a report to the developer.";
        self.shouldInterceptException = YES;
        install_msgSend_catcher();
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("didCatchException:stackTrace:"), function $LPCrashReporter__didCatchException_stackTrace_(self, _cmd, anException, aStackTrace)
{
    if (objj_msgSend(self, "shouldInterceptException"))
    {
        if (self._exception)
            return;
        self._exception = anException;
        self.stackTrace = aStackTrace;
        var overlayWindow = objj_msgSend(objj_msgSend(LPCrashReporterOverlayWindow, "alloc"), "initWithContentRect:styleMask:", CGRectMakeZero(), CPBorderlessBridgeWindowMask);
        objj_msgSend(overlayWindow, "setLevel:", CPNormalWindowLevel);
        objj_msgSend(overlayWindow, "makeKeyAndOrderFront:", nil);
        var alert = objj_msgSend(objj_msgSend(CPAlert, "alloc"), "init");
        objj_msgSend(alert, "setDelegate:", self);
        objj_msgSend(alert, "setAlertStyle:", CPCriticalAlertStyle);
        objj_msgSend(alert, "addButtonWithTitle:", "Reload");
        objj_msgSend(alert, "addButtonWithTitle:", "Report...");
        objj_msgSend(alert, "setMessageText:", self.alertMessage);
        objj_msgSend(alert, "setInformativeText:", self.alertInformative);
        objj_msgSend(alert, "runModal");
    }
    else
    {
        objj_msgSend(anException, "raise");
    }
}
,["void","CPException","id"]), new objj_method(sel_getUid("alertDidEnd:returnCode:"), function $LPCrashReporter__alertDidEnd_returnCode_(self, _cmd, anAlert, returnCode)
{
    switch (returnCode)
    {
        case 0:
                location.reload();
                break;
        case 1:
                var reportWindow = objj_msgSend(objj_msgSend(LPCrashReporterReportWindow, "alloc"), "initWithContentRect:styleMask:stackTrace:", CGRectMake(0,0,560,409), CPTitledWindowMask | CPResizableWindowMask, self.stackTrace);
                objj_msgSend(reportWindow, "setDelegate:", self.delegate);
                objj_msgSend(CPApp, "runModalForWindow:", reportWindow);
                break;
    }
}
,["void","CPAlert","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("sharedErrorLogger"), function $LPCrashReporter__sharedErrorLogger(self, _cmd)
{
    if (!sharedErrorLoggerInstance)
        sharedErrorLoggerInstance = objj_msgSend(objj_msgSend(LPCrashReporter, "alloc"), "init");
    return sharedErrorLoggerInstance;
}
,["id"])]);
}
{var the_class = objj_allocateClassPair(CPWindow, "LPCrashReporterOverlayWindow"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithContentRect:styleMask:"), function $LPCrashReporterOverlayWindow__initWithContentRect_styleMask_(self, _cmd, aContentRect, aStyleMask)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCrashReporterOverlayWindow").super_class }, "initWithContentRect:styleMask:", aContentRect, aStyleMask))
    {
        objj_msgSend(objj_msgSend(self, "contentView"), "setBackgroundColor:", objj_msgSend(CPColor, "colorWithWhite:alpha:", 0, 0.4));
    }
    return self;
}
,["void","CGRect","id"])]);
}
{var the_class = objj_allocateClassPair(CPWindow, "LPCrashReporterReportWindow"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("cancelButton"), new objj_ivar("sendButton"), new objj_ivar("reportURL"), new objj_ivar("descriptionLabel"), new objj_ivar("informationLabel"), new objj_ivar("sendingLabel"), new objj_ivar("loggingURL"), new objj_ivar("stackTrace"), new objj_ivar("descriptionTextField"), new objj_ivar("informationTextField")]);




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithContentRect:styleMask:stackTrace:"), function $LPCrashReporterReportWindow__initWithContentRect_styleMask_stackTrace_(self, _cmd, aContentRect, aStyleMask, aStackTrace)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCrashReporterReportWindow").super_class }, "initWithContentRect:styleMask:", aContentRect, aStyleMask))
    {
        var contentView = objj_msgSend(self, "contentView"),
            applicationName = objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "objectForInfoDictionaryKey:", "CPBundleName");
        objj_msgSend(self, "setMinSize:", aContentRect.size);
        objj_msgSend(self, "setTitle:", objj_msgSend(CPString, "stringWithFormat:", "Problem Report for %@", applicationName));
        self.informationLabel = objj_msgSend(CPTextField, "labelWithTitle:", "Problem and system information:");
        objj_msgSend(self.informationLabel, "setFrameOrigin:", CGPointMake(12,12));
        objj_msgSend(contentView, "addSubview:", self.informationLabel);
        self.stackTrace = aStackTrace;
        var informationTextValue = objj_msgSend(CPString, "stringWithFormat:", "User-Agent: %@\n\nException: %@\n\nVersion: %@\n\nStack Trace: \n %@", navigator.userAgent, objj_msgSend(objj_msgSend(LPCrashReporter, "sharedErrorLogger"), "exception"), objj_msgSend(objj_msgSend(LPCrashReporter, "sharedErrorLogger"), "version"), self.stackTrace);
        self.informationTextField = objj_msgSend(LPMultiLineTextField, "textFieldWithStringValue:placeholder:width:", informationTextValue, "", 0);
        objj_msgSend(self.informationTextField, "setEditable:", NO);
        objj_msgSend(self.informationTextField, "setFrame:", CGRectMake(12, 31, CGRectGetWidth(aContentRect) - 24, 200));
        objj_msgSend(self.informationTextField, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(self.informationTextField, "setFont:", objj_msgSend(CPFont, "fontWithName:size:", "Courier New", 11.0));
        objj_msgSend(contentView, "addSubview:", self.informationTextField);
        self.descriptionLabel = objj_msgSend(CPTextField, "labelWithTitle:", "Please describe what you were doing when the problem happened:");
        objj_msgSend(self.descriptionLabel, "setFrameOrigin:", CGPointMake(12,241));
        objj_msgSend(self.descriptionLabel, "setAutoresizingMask:", CPViewMinYMargin);
        objj_msgSend(contentView, "addSubview:", self.descriptionLabel);
        self.descriptionTextField = objj_msgSend(LPMultiLineTextField, "textFieldWithStringValue:placeholder:width:", "", "", 0);
        objj_msgSend(self.descriptionTextField, "setFrame:", CGRectMake(CGRectGetMinX(objj_msgSend(self.informationTextField, "frame")), CGRectGetMaxY(objj_msgSend(self.descriptionLabel, "frame")) + 1, CGRectGetWidth(objj_msgSend(self.informationTextField, "frame")), 100));
        objj_msgSend(self.descriptionTextField, "setAutoresizingMask:", CPViewWidthSizable | CPViewMinYMargin);
        objj_msgSend(contentView, "addSubview:", self.descriptionTextField);
        self.sendButton = objj_msgSend(CPButton, "buttonWithTitle:", objj_msgSend(CPString, "stringWithFormat:", "Send to %@", applicationName));
        objj_msgSend(self.sendButton, "setFrameOrigin:", CGPointMake(CGRectGetWidth(aContentRect) - CGRectGetWidth(objj_msgSend(self.sendButton, "frame")) - 15, 370));
        objj_msgSend(self.sendButton, "setAutoresizingMask:", CPViewMinXMargin | CPViewMinYMargin);
        objj_msgSend(self.sendButton, "setTarget:", self);
        objj_msgSend(self.sendButton, "setAction:", sel_getUid("didClickSendButton:"));
        objj_msgSend(contentView, "addSubview:", self.sendButton);
        objj_msgSend(self, "setDefaultButton:", self.sendButton);
        self.cancelButton = objj_msgSend(CPButton, "buttonWithTitle:", "Cancel");
        objj_msgSend(self.cancelButton, "setFrameOrigin:", CGPointMake(CGRectGetMinX(objj_msgSend(self.sendButton, "frame")) - CGRectGetWidth(objj_msgSend(self.cancelButton, "frame")) - 12, CGRectGetMinY(objj_msgSend(self.sendButton, "frame"))));
        objj_msgSend(self.cancelButton, "setAutoresizingMask:", CPViewMinXMargin | CPViewMinYMargin);
        objj_msgSend(self.cancelButton, "setTarget:", self);
        objj_msgSend(self.cancelButton, "setAction:", sel_getUid("didClickCancelButton:"));
        objj_msgSend(contentView, "addSubview:", self.cancelButton);
        self.sendingLabel = objj_msgSend(CPTextField, "labelWithTitle:", "Sending Report...");
        objj_msgSend(self.sendingLabel, "setFont:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 11));
        objj_msgSend(self.sendingLabel, "sizeToFit");
        objj_msgSend(self.sendingLabel, "setFrameOrigin:", CGPointMake(12, CGRectGetMaxY(aContentRect) - 35));
        objj_msgSend(self.sendingLabel, "setHidden:", YES);
        objj_msgSend(contentView, "addSubview:", self.sendingLabel);
        var userReportURL = objj_msgSend(objj_msgSend(LPCrashReporter, "sharedErrorLogger"), "reportURL"),
            bundleReportURL = objj_msgSend(CPURL, "URLWithString:", objj_msgSend(objj_msgSend(CPBundle, "mainBundle"), "objectForInfoDictionaryKey:", "LPCrashReporterLoggingURL"));
        self.reportURL = userReportURL || bundleReportURL;
    }
    return self;
}
,["void","CGRect","id","id"]), new objj_method(sel_getUid("orderFront:"), function $LPCrashReporterReportWindow__orderFront_(self, _cmd, sender)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPCrashReporterReportWindow").super_class }, "orderFront:", sender);
    objj_msgSend(self, "makeFirstResponder:", self.descriptionTextField);
}
,["void","id"]), new objj_method(sel_getUid("didClickSendButton:"), function $LPCrashReporterReportWindow__didClickSendButton_(self, _cmd, sender)
{
    objj_msgSend(self.informationTextField, "setEnabled:", NO);
    objj_msgSend(self.descriptionTextField, "setEnabled:", NO);
    objj_msgSend(self.sendButton, "setEnabled:", NO);
    objj_msgSend(self.cancelButton, "setEnabled:", NO);
    objj_msgSend(self.informationLabel, "setAlphaValue:", 0.5);
    objj_msgSend(self.descriptionLabel, "setAlphaValue:", 0.5);
    objj_msgSend(self.sendingLabel, "setHidden:", NO);
    var delegate = objj_msgSend(objj_msgSend(LPCrashReporter, "sharedErrorLogger"), "delegate"),
        exception = objj_msgSend(objj_msgSend(LPCrashReporter, "sharedErrorLogger"), "exception");
    if (delegate && objj_msgSend(delegate, "respondsToSelector:", sel_getUid("crashReporter:didCatchException:")))
    {
        var content = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", exception, "exception", navigator.userAgent, "userAgent", objj_msgSend(self.descriptionTextField, "stringValue"), "description", self.stackTrace, "stackTrace", objj_msgSend(objj_msgSend(LPCrashReporter, "sharedErrorLogger"), "version"), "version");
        objj_msgSend(delegate, "crashReporter:didCatchException:", self, content);
        location.reload();
    }
    else
    {
        var request = objj_msgSend(LPURLPostRequest, "requestWithURL:", self.reportURL),
            content = { 'name': objj_msgSend(exception, "name"),
                        'reason': objj_msgSend(exception, "reason"),
                        'userAgent': navigator.userAgent,
                        'description': objj_msgSend(self.descriptionTextField, "stringValue"),
                        'stackTrace': "" + self.stackTrace + "",
                        'version': objj_msgSend(objj_msgSend(LPCrashReporter, "sharedErrorLogger"), "version")};
        objj_msgSend(request, "setContent:", content);
        objj_msgSend(CPURLConnection, "connectionWithRequest:delegate:", request, self);
    }
}
,["void","id"]), new objj_method(sel_getUid("didClickCancelButton:"), function $LPCrashReporterReportWindow__didClickCancelButton_(self, _cmd, sender)
{
    objj_msgSend(objj_msgSend(LPCrashReporter, "sharedErrorLogger"), "alertDidEnd:returnCode:", nil, 0);
}
,["void","id"]), new objj_method(sel_getUid("connection:didReceiveData:"), function $LPCrashReporterReportWindow__connection_didReceiveData_(self, _cmd, aConnection, aData)
{
    objj_msgSend(CPApp, "stopModal");
    objj_msgSend(self, "orderOut:", nil);
    var serverReply = aData,
        alert = objj_msgSend(objj_msgSend(CPAlert, "alloc"), "init");
    objj_msgSend(alert, "setAlertStyle:", CPInformationalAlertStyle);
    objj_msgSend(alert, "addButtonWithTitle:", "Thanks!");
    objj_msgSend(alert, "addButtonWithTitle:", "Open Issue");
    objj_msgSend(alert._informativeLabel, "setSelectable:", YES);
    if (serverReply)
    {
        objj_msgSend(alert, "setMessageText:", "Thank you! Your report has been sent");
        objj_msgSend(alert, "setInformativeText:", serverReply);
    }
    else
    {
        objj_msgSend(alert, "setMessageText:", "Thanks!");
        objj_msgSend(alert, "setMessageText:", "Your report has been sent.");
    }
    objj_msgSend(alert, "runModal");
}
,["void","CPURLConnection","id"]), new objj_method(sel_getUid("alertDidEnd:returnCode:"), function $LPCrashReporterReportWindow__alertDidEnd_returnCode_(self, _cmd, anAlert, returnCode)
{
    switch (returnCode)
    {
        case 0:
                location.reload();
                break;
        case 1:
                window.open(self.reportURL);
                location.reload();
                break;
    }
}
,["void","CPAlert","id"])]);
}
var original_objj_msgSend = objj_msgSend;
var catcher_objj_msgSend = function()
{
    try
    {
        objj_msgSend = original_objj_msgSend;
        return objj_msgSend.apply(this, arguments);
    }
    catch (anException)
    {
        CPLog.error(anException);
        objj_msgSend(objj_msgSend(LPCrashReporter, "sharedErrorLogger"), "didCatchException:stackTrace:", anException, printStackTrace({e: anException}));
        return nil;
    }
    finally
    {
        objj_msgSend = catcher_objj_msgSend;
    }
};
var install_msgSend_catcher = function()
{
    objj_msgSend = catcher_objj_msgSend;
};p;9;LPEmail.jt;2346;@STATIC;1.0;I;21;Foundation/CPObject.jt;2301;objj_executeFile("Foundation/CPObject.j", NO);
var emailPattern = new RegExp("^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$");
{var the_class = objj_allocateClassPair(CPObject, "LPEmail"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("email")]);




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithString:"), function $LPEmail__initWithString_(self, _cmd, anEmail)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPEmail").super_class }, "init"))
    {
        self.email = anEmail;
    }
    return self;
}
,["void","CPString"]), new objj_method(sel_getUid("stringValue"), function $LPEmail__stringValue(self, _cmd)
{
    return self.email;
}
,["void"]), new objj_method(sel_getUid("isValidEmail"), function $LPEmail__isValidEmail(self, _cmd)
{
    return objj_msgSend(LPEmail, "emailWithStringIsValid:", self.email);
}
,["BOOL"]), new objj_method(sel_getUid("isEqualToEmail:"), function $LPEmail__isEqualToEmail_(self, _cmd, anEmail)
{
    return objj_msgSend(objj_msgSend(self, "stringValue"), "isEqualToString:", objj_msgSend(anEmail, "stringValue"));
}
,["BOOL","LPEmail"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("emailWithString:"), function $LPEmail__emailWithString_(self, _cmd, anEmail)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithString:", anEmail);
}
,["id","CPString"]), new objj_method(sel_getUid("emailWithStringIsValid:"), function $LPEmail__emailWithStringIsValid_(self, _cmd, anEmail)
{
    return emailPattern.test(anEmail);
}
,["BOOL","CPString"])]);
}
var LPEmailKey = "LPEmailKey";
{
var the_class = objj_getClass("LPEmail")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"LPEmail\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $LPEmail__initWithCoder_(self, _cmd, aCoder)
{
    if (self)
    {
        self.email = objj_msgSend(aCoder, "decodeObjectForKey:", LPEmailKey);
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $LPEmail__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", self.email, LPEmailKey);
}
,["void","CPCoder"])]);
}p;7;LPKit.jt;990;@STATIC;1.0;i;22;CPDate+FirstLastDate.ji;16;LPAnchorButton.ji;16;LPCalendarView.ji;13;LPChartView.ji;20;LPCookieController.ji;9;LPEmail.ji;22;LPLocationController.ji;22;LPMultiLineTextField.ji;16;LPPieChartView.ji;13;LPSlideView.ji;13;LPSparkLine.ji;10;LPSwitch.ji;20;LPTimeIntervalView.ji;18;LPURLPostRequest.ji;17;LPViewAnimation.jt;651;objj_executeFile("CPDate+FirstLastDate.j", YES);
objj_executeFile("LPAnchorButton.j", YES);
objj_executeFile("LPCalendarView.j", YES);
objj_executeFile("LPChartView.j", YES);
objj_executeFile("LPCookieController.j", YES);
objj_executeFile("LPEmail.j", YES);
objj_executeFile("LPLocationController.j", YES);
objj_executeFile("LPMultiLineTextField.j", YES);
objj_executeFile("LPPieChartView.j", YES);
objj_executeFile("LPSlideView.j", YES);
objj_executeFile("LPSparkLine.j", YES);
objj_executeFile("LPSwitch.j", YES);
objj_executeFile("LPTimeIntervalView.j", YES);
objj_executeFile("LPURLPostRequest.j", YES);
objj_executeFile("LPViewAnimation.j", YES);p;22;LPLocationController.jt;2766;@STATIC;1.0;I;21;Foundation/CPObject.jt;2721;objj_executeFile("Foundation/CPObject.j", NO);
var sharedLocationControllerInstance = nil;
{var the_class = objj_allocateClassPair(CPObject, "LPLocationController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("currentHash"), new objj_ivar("observers")]);




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $LPLocationController__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPLocationController").super_class }, "init"))
    {
        self.observers = objj_msgSend(CPArray, "array");
        self.currentHash = window.location.hash;
        if (typeof window.onhashchange !== "undefined")
        {
            window.onhashchange = function() {
              objj_msgSend(self, "updateLocation:", nil);
            };
        }
        else
        {
            objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", 0.1, self, sel_getUid("updateLocation:"), nil, YES);
        }
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("formattedHash"), function $LPLocationController__formattedHash(self, _cmd)
{
    return objj_msgSend(window.location.hash, "substringFromIndex:", 1);
}
,["CPString"]), new objj_method(sel_getUid("setLocation:"), function $LPLocationController__setLocation_(self, _cmd, aLocation)
{
    window.location.hash = aLocation;
    objj_msgSend(self, "updateLocation:", nil);
}
,["void","CPString"]), new objj_method(sel_getUid("updateLocation:"), function $LPLocationController__updateLocation_(self, _cmd, sender)
{
    if (self.currentHash !== window.location.hash)
    {
        self.currentHash = window.location.hash;
        var _formattedHash = objj_msgSend(self, "formattedHash");
        for (var i = 0, length = self.observers.length; i < length; i++)
            objj_msgSend(self.observers[i][0], "performSelector:withObject:", self.observers[i][1], _formattedHash);
    }
}
,["void","id"]), new objj_method(sel_getUid("addObserver:selector:"), function $LPLocationController__addObserver_selector_(self, _cmd, anObserver, aSelector)
{
    objj_msgSend(self.observers, "addObject:", [anObserver, aSelector]);
    objj_msgSend(anObserver, "performSelector:withObject:", aSelector, objj_msgSend(self, "formattedHash"));
}
,["void","id","id"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("sharedLocationController"), function $LPLocationController__sharedLocationController(self, _cmd)
{
    if (!sharedLocationControllerInstance)
        sharedLocationControllerInstance = objj_msgSend(objj_msgSend(self, "alloc"), "init");
    return sharedLocationControllerInstance;
}
,["id"])]);
}p;22;LPMultiLineTextField.jt;13131;@STATIC;1.0;I;20;AppKit/CPTextField.jt;13086;objj_executeFile("AppKit/CPTextField.j", NO);
//@global CPApp
var CPTextFieldInputOwner = nil,
    CPTextFieldInputResigning = NO,
    CPTextFieldInputDidBlur = NO,
    CPTextFieldInputIsActive = NO,
    CPTextFieldBlurFunction;
{var the_class = objj_allocateClassPair(CPTextField, "LPMultiLineTextField"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_DOMTextareaElement"), new objj_ivar("_hideOverflow")]);














objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("_DOMTextareaElement"), function $LPMultiLineTextField___DOMTextareaElement(self, _cmd)
{
    if (!self._DOMTextareaElement)
    {
        self._DOMTextareaElement = document.createElement("textarea");
        self._DOMTextareaElement.style.position = "absolute";
        self._DOMTextareaElement.style.background = "none";
        self._DOMTextareaElement.style.border = "0";
        self._DOMTextareaElement.style.outline = "0";
        self._DOMTextareaElement.style.zIndex = "100";
        self._DOMTextareaElement.style.resize = "none";
        self._DOMTextareaElement.style.padding = "0";
        self._DOMTextareaElement.style.margin = "0";
        self._DOMTextareaElement.style.overflow = "auto";
        self._hideOverflow = NO;
        CPTextFieldBlurFunction = function()
        {
            if (!CPTextFieldInputResigning)
            {
                window.setTimeout(function()
                    {
                        if (!CPTextFieldInputOwner || CPTextFieldInputOwner !== self)
                            return;
                        var theWindow = objj_msgSend(CPTextFieldInputOwner, "window");
                        if (objj_msgSend(CPApp, "keyWindow") === theWindow && objj_msgSend(theWindow, "firstResponder") === CPTextFieldInputOwner)
                            self._DOMTextareaElement.focus();
                    }, 0.0);
                return;
            }
            CPTextFieldInputOwner = nil;
            objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
            CPTextFieldInputDidBlur = YES;
        };
        var CPTextFieldInputFunction = function()
        {
            objj_msgSend(CPTextFieldInputOwner, "_setValueFromElement");
        };
        self._DOMTextareaElement.onblur = CPTextFieldBlurFunction;
        self._DOMTextareaElement.oninput = CPTextFieldInputFunction;
        self._DOMElement.appendChild(self._DOMTextareaElement);
    }
    return self._DOMTextareaElement;
}
,["DOMElement"]), new objj_method(sel_getUid("isScrollable"), function $LPMultiLineTextField__isScrollable(self, _cmd)
{
   return !self._hideOverflow;
}
,["BOOL"]), new objj_method(sel_getUid("setScrollable:"), function $LPMultiLineTextField__setScrollable_(self, _cmd, shouldScroll)
{
    self._hideOverflow = !shouldScroll;
    objj_msgSend(self, "_DOMTextareaElement").style.overflow = shouldScroll ? "auto" : "hidden";
}
,["void","BOOL"]), new objj_method(sel_getUid("setEditable:"), function $LPMultiLineTextField__setEditable_(self, _cmd, shouldBeEditable)
{
    objj_msgSend(self, "_DOMTextareaElement").style.cursor = shouldBeEditable ? "cursor" : "default";
    objj_msgSend(self, "_DOMTextareaElement").disabled = !shouldBeEditable;
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPMultiLineTextField").super_class }, "setEditable:", shouldBeEditable);
}
,["void","BOOL"]), new objj_method(sel_getUid("selectText:"), function $LPMultiLineTextField__selectText_(self, _cmd, sender)
{
    objj_msgSend(self, "_DOMTextareaElement").select();
}
,["void","id"]), new objj_method(sel_getUid("layoutSubviews"), function $LPMultiLineTextField__layoutSubviews(self, _cmd)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPMultiLineTextField").super_class }, "layoutSubviews");
    var contentView = objj_msgSend(self, "layoutEphemeralSubviewNamed:positioned:relativeToEphemeralSubviewNamed:", "content-view", CPWindowAbove, "bezel-view");
    objj_msgSend(contentView, "setHidden:", YES);
    var DOMElement = objj_msgSend(self, "_DOMTextareaElement"),
        contentInset = objj_msgSend(self, "currentValueForThemeAttribute:", "content-inset"),
        bounds = objj_msgSend(self, "bounds");
    DOMElement.style.top = contentInset.top + "px";
    DOMElement.style.bottom = contentInset.bottom + "px";
    DOMElement.style.left = contentInset.left + "px";
    DOMElement.style.right = contentInset.right + "px";
    DOMElement.style.width = MAX(0.0, (CGRectGetWidth(bounds) - contentInset.left - contentInset.right)) + "px";
    DOMElement.style.height = MAX(0.0, (CGRectGetHeight(bounds) - contentInset.top - contentInset.bottom)) + "px";
    DOMElement.style.color = objj_msgSend(objj_msgSend(self, "currentValueForThemeAttribute:", "text-color"), "cssString");
    DOMElement.style.font = objj_msgSend(objj_msgSend(self, "currentValueForThemeAttribute:", "font"), "cssString");
    switch (objj_msgSend(self, "currentValueForThemeAttribute:", "alignment"))
    {
        case CPLeftTextAlignment:
            DOMElement.style.textAlign = "left";
            break;
        case CPJustifiedTextAlignment:
            DOMElement.style.textAlign = "justify";
            break;
        case CPCenterTextAlignment:
            DOMElement.style.textAlign = "center";
            break;
        case CPRightTextAlignment:
            DOMElement.style.textAlign = "right";
            break;
        default:
            DOMElement.style.textAlign = "left";
    }
    if (objj_msgSend(self, "hasThemeState:", CPTextFieldStatePlaceholder))
    {
        DOMElement.value = objj_msgSend(self, "placeholderString");
    }
    else if (DOMElement.value != objj_msgSend(self, "stringValue"))
    {
        DOMElement.blur();
        DOMElement.value = objj_msgSend(self, "stringValue");
        DOMElement.focus();
    }
    if (self._hideOverflow)
        DOMElement.style.overflow = "hidden";
}
,["void"]), new objj_method(sel_getUid("scrollWheel:"), function $LPMultiLineTextField__scrollWheel_(self, _cmd, anEvent)
{
    var DOMElement = objj_msgSend(self, "_DOMTextareaElement");
    DOMElement.scrollLeft += anEvent._deltaX;
    DOMElement.scrollTop += anEvent._deltaY;
}
,["void","CPEvent"]), new objj_method(sel_getUid("mouseDown:"), function $LPMultiLineTextField__mouseDown_(self, _cmd, anEvent)
{
    if (objj_msgSend(self, "isEditable") && objj_msgSend(self, "isEnabled"))
        objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPMultiLineTextField").super_class }, "mouseDown:", anEvent);
}
,["void","CPEvent"]), new objj_method(sel_getUid("mouseDragged:"), function $LPMultiLineTextField__mouseDragged_(self, _cmd, anEvent)
{
    return objj_msgSend(objj_msgSend(objj_msgSend(anEvent, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
}
,["void","CPEvent"]), new objj_method(sel_getUid("keyDown:"), function $LPMultiLineTextField__keyDown_(self, _cmd, anEvent)
{
    if (objj_msgSend(anEvent, "keyCode") === CPTabKeyCode)
    {
        if (objj_msgSend(anEvent, "modifierFlags") & CPShiftKeyMask)
            objj_msgSend(objj_msgSend(self, "window"), "selectPreviousKeyView:", self);
        else
            objj_msgSend(objj_msgSend(self, "window"), "selectNextKeyView:", self);
        if (objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "firstResponder"), "respondsToSelector:", sel_getUid("selectText:")))
            objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "firstResponder"), "selectText:", self);
        objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", NO);
    }
    else
        objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
}
,["void","CPEvent"]), new objj_method(sel_getUid("keyUp:"), function $LPMultiLineTextField__keyUp_(self, _cmd, anEvent)
{
    objj_msgSend(self, "_setValueFromElement");
    objj_msgSend(objj_msgSend(objj_msgSend(self, "window"), "platformWindow"), "_propagateCurrentDOMEvent:", YES);
}
,["void","CPEvent"]), new objj_method(sel_getUid("_setValueFromElement"), function $LPMultiLineTextField___setValueFromElement(self, _cmd)
{
    var oldStringValue = objj_msgSend(self, "stringValue");
    objj_msgSend(self, "_setStringValue:", objj_msgSend(self, "_DOMTextareaElement").value);
    if (oldStringValue !== objj_msgSend(self, "stringValue"))
    {
        if (!self._isEditing)
        {
            self._isEditing = YES;
            objj_msgSend(self, "textDidBeginEditing:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidBeginEditingNotification, self, nil));
        }
        objj_msgSend(self, "textDidChange:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidChangeNotification, self, nil));
    }
}
,["void"]), new objj_method(sel_getUid("becomeFirstResponder"), function $LPMultiLineTextField__becomeFirstResponder(self, _cmd)
{
    objj_msgSend(self, "setThemeState:", CPThemeStateEditing);
    objj_msgSend(self, "_updatePlaceholderState");
    setTimeout(function() {
        objj_msgSend(self, "_DOMTextareaElement").focus();
        CPTextFieldInputOwner = self;
    }, 0.0);
    objj_msgSend(self, "textDidFocus:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPTextFieldDidFocusNotification, self, nil));
    CPTextFieldInputIsActive = YES;
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("resignFirstResponder"), function $LPMultiLineTextField__resignFirstResponder(self, _cmd)
{
    objj_msgSend(self, "unsetThemeState:", CPThemeStateEditing);
    objj_msgSend(self, "_updatePlaceholderState");
    objj_msgSend(self, "setStringValue:", objj_msgSend(self, "stringValue"));
    CPTextFieldInputResigning = YES;
    if (CPTextFieldInputIsActive)
        objj_msgSend(self, "_DOMTextareaElement").blur();
    if (!CPTextFieldInputDidBlur)
        CPTextFieldBlurFunction();
    CPTextFieldInputDidBlur = NO;
    CPTextFieldInputResigning = NO;
    CPTextFieldInputIsActive = NO;
    if (self._isEditing)
    {
        self._isEditing = NO;
        objj_msgSend(self, "textDidEndEditing:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPControlTextDidEndEditingNotification, self, nil));
        if (objj_msgSend(self, "sendsActionOnEndEditing"))
            objj_msgSend(self, "sendAction:to:", objj_msgSend(self, "action"), objj_msgSend(self, "target"));
    }
    objj_msgSend(self, "textDidBlur:", objj_msgSend(CPNotification, "notificationWithName:object:userInfo:", CPTextFieldDidBlurNotification, self, nil));
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("_setStringValue:"), function $LPMultiLineTextField___setStringValue_(self, _cmd, aValue)
{
    objj_msgSend(self, "willChangeValueForKey:", "objectValue");
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPMultiLineTextField").super_class }, "setObjectValue:", String(aValue));
    objj_msgSend(self, "_updatePlaceholderState");
    objj_msgSend(self, "didChangeValueForKey:", "objectValue");
}
,["void","id"]), new objj_method(sel_getUid("setObjectValue:"), function $LPMultiLineTextField__setObjectValue_(self, _cmd, aValue)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPMultiLineTextField").super_class }, "setObjectValue:", aValue);
    if (CPTextFieldInputOwner === self || objj_msgSend(objj_msgSend(self, "window"), "firstResponder") === self)
        objj_msgSend(self, "_DOMTextareaElement").value = aValue;
    objj_msgSend(self, "_updatePlaceholderState");
}
,["void","id"])]);
}
var LPMultiLineTextFieldScrollableKey = "LPMultiLineTextFieldScrollableKey";
{
var the_class = objj_getClass("LPMultiLineTextField")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"LPMultiLineTextField\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $LPMultiLineTextField__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPMultiLineTextField").super_class }, "initWithCoder:", aCoder))
    {
        var scrollable = objj_msgSend(aCoder, "decodeBoolForKey:", LPMultiLineTextFieldScrollableKey);
        if (scrollable === NO)
            objj_msgSend(self, "setScrollable:", NO);
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $LPMultiLineTextField__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPMultiLineTextField").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeBool:forKey:", objj_msgSend(self, "isScrollable"), LPMultiLineTextFieldScrollableKey);
}
,["void","CPCoder"])]);
}p;16;LPPieChartView.jt;9262;@STATIC;1.0;I;15;AppKit/CPView.jt;9223;objj_executeFile("AppKit/CPView.j", NO);
{var the_class = objj_allocateClassPair(CPView, "LPPieChartView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("dataSource"), new objj_ivar("delegate"), new objj_ivar("drawView"), new objj_ivar("values"), new objj_ivar("sum"), new objj_ivar("paths")]);







objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("dataSource"), function $LPPieChartView__dataSource(self, _cmd)
{
return self.dataSource;
}
,["id"]), new objj_method(sel_getUid("setDataSource:"), function $LPPieChartView__setDataSource_(self, _cmd, newValue)
{
self.dataSource = newValue;
}
,["void","id"]), new objj_method(sel_getUid("delegate"), function $LPPieChartView__delegate(self, _cmd)
{
return self.delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $LPPieChartView__setDelegate_(self, _cmd, newValue)
{
self.delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("drawView"), function $LPPieChartView__drawView(self, _cmd)
{
return self.drawView;
}
,["id"]), new objj_method(sel_getUid("setDrawView:"), function $LPPieChartView__setDrawView_(self, _cmd, newValue)
{
self.drawView = newValue;
}
,["void","id"]), new objj_method(sel_getUid("paths"), function $LPPieChartView__paths(self, _cmd)
{
return self.paths;
}
,["CPArray"]), new objj_method(sel_getUid("initWithFrame:"), function $LPPieChartView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPPieChartView").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self, "setDrawView:", objj_msgSend(objj_msgSend(LPPieChartDrawView, "alloc"), "initWithFrame:", CGRectMakeZero()));
        self.paths = objj_msgSend(CPArray, "array");
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("setDataSource:"), function $LPPieChartView__setDataSource_(self, _cmd, aDataSource)
{
    self.dataSource = aDataSource;
    objj_msgSend(self, "reloadData");
}
,["void","id"]), new objj_method(sel_getUid("setDelegate:"), function $LPPieChartView__setDelegate_(self, _cmd, aDelegate)
{
    self.delegate = aDelegate;
    objj_msgSend(self, "reloadData");
}
,["void","id"]), new objj_method(sel_getUid("setDrawView:"), function $LPPieChartView__setDrawView_(self, _cmd, aDrawView)
{
    var _newDrawView = objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", aDrawView));
    if (!self.drawView)
        objj_msgSend(self, "addSubview:", _newDrawView);
    else
        objj_msgSend(self, "replaceSubview:with:", self.drawView, _newDrawView);
    self.drawView = _newDrawView;
    objj_msgSend(self.drawView, "setFrame:", objj_msgSend(self, "bounds"));
    objj_msgSend(self.drawView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(self, "reloadData");
}
,["void","id"]), new objj_method(sel_getUid("reloadData"), function $LPPieChartView__reloadData(self, _cmd)
{
    if (self.dataSource && self.drawView)
    {
        var numberOfItems = objj_msgSend(self.dataSource, "numberOfItemsInPieChartView:", self),
            colors = objj_msgSend(CPArray, "array");
        self.values = objj_msgSend(CPArray, "array");
        self.sum = 0.0;
        for (var i = 0; i < numberOfItems; i++)
        {
            var value = objj_msgSend(self.dataSource, "pieChartView:floatValueForIndex:", self, i);
            objj_msgSend(self.values, "addObject:", value);
            self.sum += value;
        }
        objj_msgSend(self, "setNeedsLayout");
        objj_msgSend(self.drawView, "setNeedsDisplay:", YES);
    }
}
,["void"]), new objj_method(sel_getUid("layoutSubviews"), function $LPPieChartView__layoutSubviews(self, _cmd)
{
    var bounds = objj_msgSend(self.drawView, "bounds"),
        radius = MIN(CGRectGetWidth(bounds), CGRectGetHeight(bounds)) / 2,
        midX = CGRectGetMidX(bounds),
        midY = CGRectGetMidY(bounds),
        current_angle = 0.0;
    self.paths = objj_msgSend(CPArray, "array");
    for (var i = 0; i < self.values.length; i++)
    {
        var value = self.values[i],
            end_angle = (value / self.sum) * 360.0;
        var path = CGPathCreateMutable();
        CGPathMoveToPoint(path, nil, midX, midY);
        CGPathAddArc(path, nil, midX, midY, radius, current_angle / (180 / PI), (current_angle + end_angle) / (180 / PI), YES);
        CGPathAddLineToPoint(path, nil, midX, midY);
        self.paths.push(path);
        current_angle += end_angle;
    }
}
,["void"]), new objj_method(sel_getUid("indexOfValueAtPoint:"), function $LPPieChartView__indexOfValueAtPoint_(self, _cmd, aPoint)
{
    var context = CGBitmapGraphicsContextCreate();
    if (context.isPointInPath)
    {
        for (var i = 0; i < self.paths.length; i++)
        {
            CGContextBeginPath(context);
            CGContextAddPath(context, self.paths[i]);
            CGContextClosePath(context);
            if (context.isPointInPath(aPoint.x, aPoint.y))
                return i;
        }
    }
    return -1;
}
,["id","CGPoint"]), new objj_method(sel_getUid("mouseMoved:"), function $LPPieChartView__mouseMoved_(self, _cmd, anEvent)
{
    if (objj_msgSend(self.delegate, "respondsToSelector:", sel_getUid("pieChartView:mouseMovedOverIndex:")))
    {
        var locationInView = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil);
        objj_msgSend(self.delegate, "pieChartView:mouseMovedOverIndex:", self, objj_msgSend(self, "indexOfValueAtPoint:", locationInView));
    }
}
,["void","CPEvent"]), new objj_method(sel_getUid("mouseExited:"), function $LPPieChartView__mouseExited_(self, _cmd, anEvent)
{
    if (objj_msgSend(self.delegate, "respondsToSelector:", sel_getUid("pieChartView:mouseMovedOverIndex:")))
        objj_msgSend(self.delegate, "pieChartView:mouseMovedOverIndex:", self, -1);
}
,["void","CPEvent"])]);
}
var LPPieChartViewDrawViewKey = "LPPieChartViewDrawView",
    LPPieChartViewValuesKey = "LPPieChartViewValues",
    LPPieChartViewSumKey = "LPPieChartViewSum",
    LPPieChartViewPathsKey = "LPPieChartViewPaths";
{
var the_class = objj_getClass("LPPieChartView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"LPPieChartView\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $LPPieChartView__initWithCoder_(self, _cmd, aCoder)
{
    if (self)
    {
        self.drawView = objj_msgSend(aCoder, "decodeObjectForKey:", LPPieChartViewDrawViewKey);
        self.values = objj_msgSend(aCoder, "decodeObjectForKey:", LPPieChartViewValuesKey);
        self.sum = objj_msgSend(aCoder, "decodeFloatForKey:", LPPieChartViewSumKey);
        self.paths = objj_msgSend(aCoder, "decodeObjectForKey:", LPPieChartViewPathsKey);
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $LPPieChartView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSend(aCoder, "encodeObject:forKey:", self.drawView, LPPieChartViewDrawViewKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.values, LPPieChartViewValuesKey);
    objj_msgSend(aCoder, "encodeFloat:forKey:", self.sum, LPPieChartViewSumKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.paths, LPPieChartViewPathsKey);
}
,["void","CPCoder"])]);
}
{var the_class = objj_allocateClassPair(CPView, "LPPieChartDrawView"),
meta_class = the_class.isa;


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("drawRect:"), function $LPPieChartDrawView__drawRect_(self, _cmd, aRect)
{
    if (objj_msgSend(self, "superview"))
    {
        objj_msgSend(self, "drawInContext:paths:", objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort"), objj_msgSend(objj_msgSend(self, "superview"), "paths"));
    }
}
,["void","CGRect"]), new objj_method(sel_getUid("drawInContext:paths:"), function $LPPieChartDrawView__drawInContext_paths_(self, _cmd, context, paths)
{
    CGContextSetLineWidth(context, objj_msgSend(self, "currentValueForThemeAttribute:", "line-width"));
    CGContextSetStrokeColor(context, objj_msgSend(self, "currentValueForThemeAttribute:", "stroke-color"));
    var fillColors = objj_msgSend(self, "currentValueForThemeAttribute:", "fill-colors");
    for (var i = 0; i < paths.length; i++)
    {
        CGContextBeginPath(context);
        CGContextAddPath(context, paths[i]);
        CGContextClosePath(context);
        CGContextSetFillColor(context, fillColors[i]);
        CGContextFillPath(context);
        CGContextStrokePath(context);
    }
}
,["void","CGContext","CPArray"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeClass"), function $LPPieChartDrawView__themeClass(self, _cmd)
{
    return "lp-piechart-drawview";
}
,["CPString"]), new objj_method(sel_getUid("themeAttributes"), function $LPPieChartDrawView__themeAttributes(self, _cmd)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [[objj_msgSend(CPColor, "grayColor")], 1.0, objj_msgSend(CPColor, "whiteColor")], ["fill-colors", "line-width", "stroke-color"]);
}
,["id"])]);
}p;13;LPSlideView.jt;7987;@STATIC;1.0;I;15;AppKit/CPView.ji;17;LPViewAnimation.jt;7926;objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("LPViewAnimation.j", YES);
LPSlideViewHorizontalDirection = 0;
LPSlideViewVerticalDirection = 1;
LPSlideViewPositiveDirection = 2;
LPSlideViewNegativeDirection = 4;
{var the_class = objj_allocateClassPair(CPView, "LPSlideView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("slideDirection"), new objj_ivar("currentView"), new objj_ivar("previousView"), new objj_ivar("animationDuration"), new objj_ivar("animationCurve"), new objj_ivar("isSliding"), new objj_ivar("_delegate")]);






objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("slideDirection"), function $LPSlideView__slideDirection(self, _cmd)
{
return self.slideDirection;
}
,["int"]), new objj_method(sel_getUid("setSlideDirection:"), function $LPSlideView__setSlideDirection_(self, _cmd, newValue)
{
self.slideDirection = newValue;
}
,["void","int"]), new objj_method(sel_getUid("currentView"), function $LPSlideView__currentView(self, _cmd)
{
return self.currentView;
}
,["id"]), new objj_method(sel_getUid("setCurrentView:"), function $LPSlideView__setCurrentView_(self, _cmd, newValue)
{
self.currentView = newValue;
}
,["void","id"]), new objj_method(sel_getUid("previousView"), function $LPSlideView__previousView(self, _cmd)
{
return self.previousView;
}
,["id"]), new objj_method(sel_getUid("setPreviousView:"), function $LPSlideView__setPreviousView_(self, _cmd, newValue)
{
self.previousView = newValue;
}
,["void","id"]), new objj_method(sel_getUid("animationDuration"), function $LPSlideView__animationDuration(self, _cmd)
{
return self.animationDuration;
}
,["float"]), new objj_method(sel_getUid("setAnimationDuration:"), function $LPSlideView__setAnimationDuration_(self, _cmd, newValue)
{
self.animationDuration = newValue;
}
,["void","float"]), new objj_method(sel_getUid("animationCurve"), function $LPSlideView__animationCurve(self, _cmd)
{
return self.animationCurve;
}
,["id"]), new objj_method(sel_getUid("setAnimationCurve:"), function $LPSlideView__setAnimationCurve_(self, _cmd, newValue)
{
self.animationCurve = newValue;
}
,["void","id"]), new objj_method(sel_getUid("isSliding"), function $LPSlideView__isSliding(self, _cmd)
{
return self.isSliding;
}
,["BOOL"]), new objj_method(sel_getUid("delegate"), function $LPSlideView__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $LPSlideView__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $LPSlideView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPSlideView").super_class }, "initWithFrame:", aFrame))
    {
        self.animationCurve = CPAnimationEaseOut;
        self.slideDirection = LPSlideViewHorizontalDirection;
        self.animationDuration = 0.2;
        self.isSliding = NO;
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("addSubview:"), function $LPSlideView__addSubview_(self, _cmd, aView)
{
    if (!self.currentView)
        self.currentView = aView;
    else
        objj_msgSend(aView, "setHidden:", YES);
    objj_msgSend(aView, "setFrame:", objj_msgSend(self, "bounds"));
    objj_msgSend(aView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPSlideView").super_class }, "addSubview:", aView);
}
,["void","id"]), new objj_method(sel_getUid("slideToView:"), function $LPSlideView__slideToView_(self, _cmd, aView)
{
    objj_msgSend(self, "slideToView:direction:animationProgress:", aView, nil, nil)
}
,["void","id"]), new objj_method(sel_getUid("slideToView:direction:"), function $LPSlideView__slideToView_direction_(self, _cmd, aView, aDirection)
{
    objj_msgSend(self, "slideToView:direction:animationProgress:", aView, aDirection, nil)
}
,["void","id","id"]), new objj_method(sel_getUid("slideToView:direction:animationProgress:"), function $LPSlideView__slideToView_direction_animationProgress_(self, _cmd, aView, aDirection, aProgress)
{
    if (aView == self.currentView || self.isSliding)
        return;
    self.isSliding = YES;
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("slideView:willMoveToView:")))
        objj_msgSend(self._delegate, "slideView:willMoveToView:", self, aView);
    var viewIndex = objj_msgSend(objj_msgSend(self, "subviews"), "indexOfObject:", aView),
        currentViewIndex = objj_msgSend(objj_msgSend(self, "subviews"), "indexOfObject:", self.currentView),
        size = objj_msgSend(self, "frame").size;
    objj_msgSend(aView, "setHidden:", NO);
    var showViewStart = CGPointMake(0,0),
        hideViewEnd = CGPointMake(0,0);
    if (self.slideDirection == LPSlideViewHorizontalDirection)
    {
        var showSlideFromX,
            hideSlideToX;
        if ((aDirection && aDirection == LPSlideViewNegativeDirection) || (!aDirection && viewIndex < currentViewIndex))
        {
            showSlideFromX = -size.width;
            hideSlideToX = size.width;
        }
        if ((aDirection && aDirection == LPSlideViewPositiveDirection) || (!aDirection && viewIndex > currentViewIndex))
        {
            showSlideFromX = size.width;
            hideSlideToX = -size.width;
        }
        showViewStart.x = showSlideFromX;
        hideViewEnd.x = hideSlideToX;
    }
    else if (self.slideDirection == LPSlideViewVerticalDirection)
    {
        var showSlideFromY,
            hideSlideToY;
        if ((aDirection && aDirection == LPSlideViewNegativeDirection) || (!aDirection && viewIndex > currentViewIndex))
        {
            showSlideFromY = size.height;
            hideSlideToY = -size.height;
        }
        if ((aDirection && aDirection == LPSlideViewPositiveDirection) || (!aDirection && viewIndex < currentViewIndex))
        {
            showSlideFromY = -size.height;
            hideSlideToY = size.height;
        }
        showViewStart.y = showSlideFromY;
        hideViewEnd.y = hideSlideToY;
        if (aProgress)
        {
            showViewStart.y -= (aProgress * showViewStart.y)
            hideViewEnd.y -= (aProgress * hideViewEnd.y)
        }
    }
    var animation = objj_msgSend(objj_msgSend(LPViewAnimation, "alloc"), "initWithViewAnimations:", [
            {
                "target": aView,
                "animations": [
                    [LPOriginAnimationKey, showViewStart, CGPointMake(0,0)]
                ]
            },
            {
                "target": self.currentView,
                "animations": [
                    [LPOriginAnimationKey, CGPointMakeZero(), hideViewEnd]
                ]
            }
        ]);
    objj_msgSend(animation, "setAnimationCurve:", self.animationCurve);
    objj_msgSend(animation, "setDuration:", self.animationDuration);
    objj_msgSend(animation, "setDelegate:", self);
    objj_msgSend(animation, "startAnimation");
    self.previousView = self.currentView;
    self.currentView = aView;
}
,["void","id","id","int"]), new objj_method(sel_getUid("animationDidEnd"), function $LPSlideView__animationDidEnd(self, _cmd)
{
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("slideView:didMoveToView:")))
        objj_msgSend(self._delegate, "slideView:didMoveToView:", self, self.currentView);
    objj_msgSend(self.previousView, "setHidden:", YES);
    self.isSliding = NO;
}
,["void"]), new objj_method(sel_getUid("animationDidEnd:"), function $LPSlideView__animationDidEnd_(self, _cmd, anAnimation)
{
    objj_msgSend(self, "animationDidEnd");
}
,["void","CPAnimation"]), new objj_method(sel_getUid("animationDidStop:"), function $LPSlideView__animationDidStop_(self, _cmd, anAnimation)
{
    objj_msgSend(self, "animationDidEnd");
}
,["void","CPAnimation"])]);
}p;13;LPSparkLine.jt;6009;@STATIC;1.0;I;21;Foundation/CPObject.jt;5964;objj_executeFile("Foundation/CPObject.j", NO);
{var the_class = objj_allocateClassPair(CPView, "LPSparkLine"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("data"), new objj_ivar("lineColor"), new objj_ivar("lineWeight"), new objj_ivar("shadowColor"), new objj_ivar("shadowOffset"), new objj_ivar("isEmpty")]);





objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("data"), function $LPSparkLine__data(self, _cmd)
{
return self.data;
}
,["CPArray"]), new objj_method(sel_getUid("setData:"), function $LPSparkLine__setData_(self, _cmd, newValue)
{
self.data = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("initWithFrame:"), function $LPSparkLine__initWithFrame_(self, _cmd, aFrame)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPSparkLine").super_class }, "initWithFrame:", aFrame);
    if (self)
    {
        self.lineWeight = 1.0;
        self.lineColor = objj_msgSend(CPColor, "blackColor");
        self.shadowColor = nil;
        self.shadowOffset = CGSizeMake(0,1);
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("drawRect:"), function $LPSparkLine__drawRect_(self, _cmd, aRect)
{
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort"),
        bounds = objj_msgSend(self, "bounds"),
        height = CGRectGetHeight(bounds) - (2 * self.lineWeight),
        tickWidth = CGRectGetWidth(bounds) / (objj_msgSend(self.data, "count") - 1),
        maxValue = Math.max.apply(Math, self.data);
    CGContextBeginPath(context);
    if (self.isEmpty)
    {
        CGContextMoveToPoint(context, 0, height / 2);
        CGContextAddLineToPoint(context, CGRectGetWidth(bounds), height / 2);
    }
    else
    {
        for (var i = 0; i < objj_msgSend(self.data, "count"); i++)
        {
            var x = i * tickWidth,
                y = self.lineWeight + (height - ((objj_msgSend(self.data, "objectAtIndex:", i) / maxValue) * height));
            if (i === 0)
                CGContextMoveToPoint(context, 0, y);
            else
                CGContextAddLineToPoint(context, x, y);
        }
    }
    CGContextSetLineJoin(context, kCGLineJoinRound)
    CGContextSetLineWidth(context, self.lineWeight);
    CGContextSetStrokeColor(context, self.lineColor);
    CGContextSetShadowWithColor(context, self.shadowOffset, 0.0, self.shadowColor);
    CGContextStrokePath(context);
    CGContextClosePath(context);
}
,["void","CGRect"]), new objj_method(sel_getUid("setData:"), function $LPSparkLine__setData_(self, _cmd, aData)
{
    self.isEmpty = YES;
    for (var i = 0; i < aData.length; i++)
        if ((aData[i] > 0) && (self.isEmpty))
            self.isEmpty = NO;
    self.data = aData;
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
,["void","CPArray"]), new objj_method(sel_getUid("setLineColor:"), function $LPSparkLine__setLineColor_(self, _cmd, aColor)
{
    self.lineColor = aColor;
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
,["void","CPColor"]), new objj_method(sel_getUid("setLineWeight:"), function $LPSparkLine__setLineWeight_(self, _cmd, aFloat)
{
    self.lineWeight = aFloat;
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
,["void","CPFloat"]), new objj_method(sel_getUid("setShadowColor:"), function $LPSparkLine__setShadowColor_(self, _cmd, aColor)
{
    self.shadowColor = aColor;
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
,["void","CPColor"]), new objj_method(sel_getUid("setShadowOffset:"), function $LPSparkLine__setShadowOffset_(self, _cmd, aSize)
{
    self.shadowOffset = aSize;
    objj_msgSend(self, "setNeedsDisplay:", YES);
}
,["void","CGSize"])]);
}
var LPSparkLineDataKey = "LPSparkLineDataKey",
    LPSparkLineLineColorKey = "LPSparkLineLineColorKey",
    LPSparkLineLineWeightKey = "LPSparkLineLineWeightKey",
    LPSparkLineShadowColorKey = "LPSparkLineShadowColorKey",
    LPSparkLineShadowOffsetKey = "LPSparkLineShadowOffsetKey",
    LPSparkLineIsEmptyKey = "LPSparkLineIsEmptyKey";
{
var the_class = objj_getClass("LPSparkLine")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"LPSparkLine\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $LPSparkLine__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPSparkLine").super_class }, "initWithCoder:", aCoder))
    {
        self.data = objj_msgSend(aCoder, "decodeObjectForKey:", LPSparkLineDataKey);
        self.lineColor = objj_msgSend(aCoder, "decodeObjectForKey:", LPSparkLineLineColorKey);
        self.lineWeight = objj_msgSend(aCoder, "decodeFloatForKey:", LPSparkLineLineWeightKey);
        self.shadowColor = objj_msgSend(aCoder, "decodeObjectForKey:", LPSparkLineShadowColorKey);
        self.shadowOffset = objj_msgSend(aCoder, "decodeSizeForKey:", LPSparkLineShadowOffsetKey);
        self.isEmpty = !objj_msgSend(aCoder, "containsValueForKey:", LPSparkLineIsEmptyKey) || objj_msgSend(aCoder, "decodeObjectForKey:", LPSparkLineIsEmptyKey);
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $LPSparkLine__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPSparkLine").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.data, LPSparkLineDataKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.lineColor, LPSparkLineLineColorKey);
    objj_msgSend(aCoder, "encodeFloat:forKey:", self.lineWeight, LPSparkLineLineWeightKey);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.shadowColor, LPSparkLineShadowColorKey);
    objj_msgSend(aCoder, "encodeSize:forKey:", self.shadowOffset, LPSparkLineShadowOffsetKey);
    objj_msgSend(aCoder, "encodeBool:forKey:", self.isEmpty, LPSparkLineIsEmptyKey);
}
,["void","CPCoder"])]);
}p;10;LPSwitch.jt;13762;@STATIC;1.0;I;18;AppKit/CPControl.ji;17;LPViewAnimation.jt;13697;objj_executeFile("AppKit/CPControl.j", NO);
objj_executeFile("LPViewAnimation.j", YES);
{var the_class = objj_allocateClassPair(CPControl, "LPSwitch"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("on"), new objj_ivar("dragStartPoint"), new objj_ivar("knob"), new objj_ivar("knobDragStartPoint"), new objj_ivar("isDragging"), new objj_ivar("animationDuration"), new objj_ivar("animationCurve"), new objj_ivar("offBackgroundView"), new objj_ivar("onBackgroundView"), new objj_ivar("offLabel"), new objj_ivar("onLabel"), new objj_ivar("animation")]);











objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isOn"), function $LPSwitch__isOn(self, _cmd)
{
return self.on;
}
,["BOOL"]), new objj_method(sel_getUid("initWithFrame:"), function $LPSwitch__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPSwitch").super_class }, "initWithFrame:", aFrame))
    {
        self.offBackgroundView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", objj_msgSend(self, "bounds"));
        objj_msgSend(self.offBackgroundView, "setHitTests:", NO);
        objj_msgSend(self, "addSubview:", self.offBackgroundView);
        self.onBackgroundView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(0,0,0,CGRectGetHeight(objj_msgSend(self, "bounds"))));
        objj_msgSend(self.onBackgroundView, "setHitTests:", NO);
        objj_msgSend(self, "addSubview:", self.onBackgroundView);
        self.knob = objj_msgSend(objj_msgSend(LPSwitchKnob, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(self, "addSubview:", self.knob);
        self.offLabel = objj_msgSend(CPTextField, "labelWithTitle:", "Off");
        objj_msgSend(self, "addSubview:", self.offLabel);
        self.onLabel = objj_msgSend(CPTextField, "labelWithTitle:", "On");
        objj_msgSend(self, "addSubview:", self.onLabel);
        self.animationDuration = 0.2;
        self.animationCurve = CPAnimationEaseOut;
        objj_msgSend(self, "layoutSubviews");
        objj_msgSend(self, "setNeedsLayout");
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("setOn:animated:"), function $LPSwitch__setOn_animated_(self, _cmd, shouldSetOn, shouldAnimate)
{
   objj_msgSend(self, "setOn:animated:sendAction:", shouldSetOn, shouldAnimate, YES);
}
,["void","BOOL","BOOL"]), new objj_method(sel_getUid("setOn:animated:sendAction:"), function $LPSwitch__setOn_animated_sendAction_(self, _cmd, shouldSetOn, shouldAnimate, shouldSendAction)
{
    if (shouldSendAction && self.on !== shouldSetOn)
    {
        self.on = shouldSetOn;
        objj_msgSend(self, "sendAction:to:", self._action, self._target);
    }
    else
        self.on = shouldSetOn;
    var knobMinY = CGRectGetMinY(objj_msgSend(self.knob, "frame")),
        knobEndFrame = CGRectMake((self.on) ? objj_msgSend(self.knob, "maxX") : objj_msgSend(self.knob, "minX"), knobMinY, CGRectGetWidth(objj_msgSend(self.knob, "frame")), CGRectGetHeight(objj_msgSend(self.knob, "frame"))),
        onBackgroundEndFrame = CGRectMake(0,0, CGRectGetMinX(knobEndFrame) + CGRectGetMidX(objj_msgSend(self.knob, "bounds")), CGRectGetHeight(objj_msgSend(self.onBackgroundView, "bounds"))),
        labelOffset = objj_msgSend(self, "labelOffset"),
        offLabelEndFrame = CGRectMake(CGRectGetMaxX(knobEndFrame) + labelOffset.width, labelOffset.height,
                                      CGRectGetWidth(objj_msgSend(self.offLabel, "bounds")), CGRectGetHeight(objj_msgSend(self.offLabel, "bounds"))),
        onLabelEndFrame = CGRectMake(CGRectGetMinX(knobEndFrame) - labelOffset.width - CGRectGetWidth(objj_msgSend(self.onLabel, "bounds")), labelOffset.height,
                                     CGRectGetWidth(objj_msgSend(self.onLabel, "bounds")), CGRectGetHeight(objj_msgSend(self.onLabel, "bounds")));
    if (objj_msgSend(self.animation, "isAnimating"))
        objj_msgSend(self.animation, "stopAnimation");
    if (shouldAnimate)
    {
        self.animation = objj_msgSend(objj_msgSend(LPViewAnimation, "alloc"), "initWithViewAnimations:", [
                {
                    "target": self.knob,
                    "animations": [
                        [LPOriginAnimationKey, objj_msgSend(self.knob, "frame").origin, knobEndFrame.origin]
                    ]
                },
                {
                    "target": self.onBackgroundView,
                    "animations": [
                        [LPFrameAnimationKey, objj_msgSend(self.onBackgroundView, "frame"), onBackgroundEndFrame]
                    ]
                },
                {
                    "target": self.offLabel,
                    "animations": [
                        [LPOriginAnimationKey, objj_msgSend(self.offLabel, "frame").origin, offLabelEndFrame.origin]
                    ]
                },
                {
                    "target": self.onLabel,
                    "animations": [
                        [LPOriginAnimationKey, objj_msgSend(self.onLabel, "frame").origin, onLabelEndFrame.origin]
                    ]
                }
            ]);
        objj_msgSend(self.animation, "setAnimationCurve:", self.animationCurve);
        objj_msgSend(self.animation, "setDuration:", self.animationDuration);
        objj_msgSend(self.animation, "setDelegate:", self);
        objj_msgSend(self.animation, "startAnimation");
    }
    else
    {
        objj_msgSend(self.knob, "setFrame:", knobEndFrame);
        objj_msgSend(self.onBackgroundView, "setFrame:", onBackgroundEndFrame);
        objj_msgSend(self.offLabel, "setFrame:", offLabelEndFrame);
    }
}
,["void","BOOL","BOOL","BOOL"]), new objj_method(sel_getUid("mouseDown:"), function $LPSwitch__mouseDown_(self, _cmd, anEvent)
{
    if (!objj_msgSend(self, "isEnabled"))
        return;
    self.dragStartPoint = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil);
    self.knobDragStartPoint = objj_msgSend(self.knob, "frame").origin;
    self.isDragging = NO;
    var startPointX = objj_msgSend(self.knob, "convertPoint:fromView:", self.dragStartPoint, self).x;
    if (startPointX > 0 && startPointX < CGRectGetWidth(objj_msgSend(self.knob, "bounds")))
    {
        objj_msgSend(self.knob, "setHighlighted:", YES);
        objj_msgSend(self, "setNeedsLayout");
    }
}
,["void","CPEvent"]), new objj_method(sel_getUid("mouseDragged:"), function $LPSwitch__mouseDragged_(self, _cmd, anEvent)
{
    if (!objj_msgSend(self, "isEnabled"))
        return;
    self.isDragging = YES;
    var point = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil),
        knobX = self.knobDragStartPoint.x + (point.x - self.dragStartPoint.x),
        knobMinX = objj_msgSend(self.knob, "minX"),
        knobMaxX = objj_msgSend(self.knob, "maxX"),
        height = CGRectGetHeight(objj_msgSend(self, "bounds"));
    if (knobX < knobMinX)
        knobX = knobMinX;
    else if (knobX > knobMaxX)
        knobX = knobMaxX;
    objj_msgSend(self.onBackgroundView, "setFrameSize:", CGSizeMake(knobX + CGRectGetMidX(objj_msgSend(self.knob, "bounds")), height));
    objj_msgSend(self.knob, "setFrameOrigin:", CGPointMake(knobX, CGRectGetMinY(objj_msgSend(self.knob, "frame"))));
    objj_msgSend(self, "setNeedsLayout");
}
,["void","CPEvent"]), new objj_method(sel_getUid("mouseUp:"), function $LPSwitch__mouseUp_(self, _cmd, anEvent)
{
    if (!objj_msgSend(self, "isEnabled"))
        return;
    objj_msgSend(self, "setOn:animated:", self.isDragging ? CGRectGetMidX(objj_msgSend(self, "bounds")) < CGRectGetMidX(objj_msgSend(self.knob, "frame")) : !self.on, YES);
    objj_msgSend(self.knob, "setHighlighted:", NO);
    objj_msgSend(self, "setNeedsLayout");
}
,["void","CPEvent"]), new objj_method(sel_getUid("labelOffset"), function $LPSwitch__labelOffset(self, _cmd)
{
    var labelOffset = objj_msgSend(self, "currentValueForThemeAttribute:", "label-offset");
    return (labelOffset) ? labelOffset : CGSizeMake(0,0);
}
,["CGSize"]), new objj_method(sel_getUid("layoutSubviews"), function $LPSwitch__layoutSubviews(self, _cmd)
{
    objj_msgSend(self.offBackgroundView, "setBackgroundColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "off-background-color"));
    objj_msgSend(self.onBackgroundView, "setBackgroundColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "on-background-color"));
    objj_msgSend(self.knob, "setBackgroundColor:", objj_msgSend(self, "valueForThemeAttribute:inState:", "knob-background-color", objj_msgSend(self.knob, "themeState")));
    objj_msgSend(self.knob, "setFrameSize:", objj_msgSend(self, "currentValueForThemeAttribute:", "knob-size"));
    var labelOffset = objj_msgSend(self, "labelOffset");
    objj_msgSend(self.offLabel, "setFont:", objj_msgSend(self, "currentValueForThemeAttribute:", "off-label-font"));
    objj_msgSend(self.offLabel, "setTextColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "off-label-text-color"));
    objj_msgSend(self.offLabel, "setTextShadowColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "off-label-text-shadow-color"));
    objj_msgSend(self.offLabel, "setTextShadowOffset:", objj_msgSend(self, "currentValueForThemeAttribute:", "off-label-text-shadow-offset"));
    objj_msgSend(self.offLabel, "setFrameOrigin:", CGPointMake(CGRectGetMaxX(objj_msgSend(self.knob, "frame")) + labelOffset.width, labelOffset.height));
    objj_msgSend(self.offLabel, "sizeToFit");
    objj_msgSend(self.onLabel, "setFont:", objj_msgSend(self, "currentValueForThemeAttribute:", "on-label-font"));
    objj_msgSend(self.onLabel, "setTextColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "on-label-text-color"));
    objj_msgSend(self.onLabel, "setTextShadowColor:", objj_msgSend(self, "currentValueForThemeAttribute:", "on-label-text-shadow-color"));
    objj_msgSend(self.onLabel, "setTextShadowOffset:", objj_msgSend(self, "currentValueForThemeAttribute:", "on-label-text-shadow-offset"));
    objj_msgSend(self.onLabel, "sizeToFit");
    objj_msgSend(self.onLabel, "setFrameOrigin:", CGPointMake(CGRectGetMinX(objj_msgSend(self.knob, "frame")) - labelOffset.width - CGRectGetWidth(objj_msgSend(self.onLabel, "bounds")), CGRectGetMinY(objj_msgSend(self.offLabel, "frame"))));
}
,["void"]), new objj_method(sel_getUid("setEnabled:"), function $LPSwitch__setEnabled_(self, _cmd, isEnabled)
{
    if (!isEnabled)
    {
        objj_msgSend(self, "setThemeState:", CPThemeStateDisabled);
        objj_msgSend(self.knob, "setThemeState:", CPThemeStateDisabled);
    }
    else
    {
        objj_msgSend(self, "unsetThemeState:", CPThemeStateDisabled);
        objj_msgSend(self.knob, "unsetThemeState:", CPThemeStateDisabled);
    }
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPSwitch").super_class }, "setEnabled:", isEnabled);
}
,["void","BOOL"]), new objj_method(sel_getUid("setState:"), function $LPSwitch__setState_(self, _cmd, aState)
{
    if (aState == CPOnState)
        objj_msgSend(self, "setOn:animated:sendAction:", YES, YES, NO);
    else
        objj_msgSend(self, "setOn:animated:sendAction:", NO, YES, NO);
}
,["void","int"]), new objj_method(sel_getUid("state"), function $LPSwitch__state(self, _cmd)
{
    return self.on ? CPOnState : CPOffState;
}
,["BOOL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeClass"), function $LPSwitch__themeClass(self, _cmd)
{
    return "lp-switch";
}
,["CPString"]), new objj_method(sel_getUid("themeAttributes"), function $LPSwitch__themeAttributes(self, _cmd)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), CGSizeMake(30.0, 24.0), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null")], ["off-background-color", "on-background-color", "knob-background-color", "knob-size", "label-offset",
                                                "off-label-font", "off-label-text-color", "off-label-text-shadow-color", "off-label-text-shadow-offset",
                                                "on-label-font", "on-label-text-color", "on-label-text-shadow-color", "on-label-text-shadow-offset"]);
}
,["id"])]);
}
{var the_class = objj_allocateClassPair(CPView, "LPSwitchKnob"),
meta_class = the_class.isa;


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $LPSwitchKnob__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPSwitchKnob").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self, "setHitTests:", NO);
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("setHighlighted:"), function $LPSwitchKnob__setHighlighted_(self, _cmd, shouldBeHighlighted)
{
    if (shouldBeHighlighted)
        objj_msgSend(self, "setThemeState:", CPThemeStateHighlighted);
    else
        objj_msgSend(self, "unsetThemeState:", CPThemeStateHighlighted);
}
,["void","BOOL"]), new objj_method(sel_getUid("minX"), function $LPSwitchKnob__minX(self, _cmd)
{
    return 0;
}
,["unsigned int"]), new objj_method(sel_getUid("maxX"), function $LPSwitchKnob__maxX(self, _cmd)
{
    return CGRectGetWidth(objj_msgSend(objj_msgSend(self, "superview"), "bounds")) - CGRectGetWidth(objj_msgSend(self, "bounds"));
}
,["unsigned int"])]);
}p;23;LPTimeIntervalDayView.jt;2907;@STATIC;1.0;i;16;LPCalendarView.jt;2867;objj_executeFile("LPCalendarView.j", YES);
{var the_class = objj_allocateClassPair(LPCalendarView, "LPTimeIntervalDayView"),
meta_class = the_class.isa;

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $LPTimeIntervalDayView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPTimeIntervalDayView").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self, "selectDate:", objj_msgSend(CPDate, "date"));
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("didMakeSelection:"), function $LPTimeIntervalDayView__didMakeSelection_(self, _cmd, aSelection)
{
    if (objj_msgSend(aSelection, "count") <= 1)
        objj_msgSend(aSelection, "addObject:", nil);
    self.fullSelection = objj_msgSend(CPArray, "arrayWithArray:", aSelection);
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("calendarView:didMakeSelection:")))
        objj_msgSend(self._delegate, "calendarView:didMakeSelection:", self, objj_msgSend(self.fullSelection, "objectAtIndex:", 0));
}
,["void","CPArray"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeAttributes"), function $LPTimeIntervalDayView__themeAttributes(self, _cmd)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [objj_msgSend(CPNull, "null"),objj_msgSend(CPNull, "null"), CGInsetMakeZero(), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), CGSizeMake(0,0), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), 40, objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), 30, objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null")], ["background-color","bezel-color", "bezel-inset", "grid-color", "grid-shadow-color",
                                                "tile-size", "tile-font", "tile-text-color", "tile-text-shadow-color", "tile-text-shadow-offset", "tile-bezel-color",
                                                "header-button-offset", "header-prev-button-image", "header-next-button-image", "header-height", "header-background-color", "header-font", "header-text-color", "header-text-shadow-color", "header-text-shadow-offset", "header-alignment",
                                                "header-weekday-offset", "header-weekday-label-font", "header-weekday-label-color", "header-weekday-label-shadow-color", "header-weekday-label-shadow-offset"]);
}
,["id"])]);
}p;24;LPTimeIntervalHourView.jt;7444;@STATIC;1.0;I;15;AppKit/CPView.jI;18;AppKit/CPStepper.jt;7382;objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPStepper.j", NO);
//@class LPTimeIntervalDayView
{var the_class = objj_allocateClassPair(CPView, "LPTimeIntervalHourView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_delegate"), new objj_ivar("_stepperHours"), new objj_ivar("_startStepper"), new objj_ivar("_endStepper"), new objj_ivar("_startTextField"), new objj_ivar("_endTextField"), new objj_ivar("_calendarView")]);

       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $LPTimeIntervalHourView__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $LPTimeIntervalHourView__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $LPTimeIntervalHourView__initWithFrame_(self, _cmd, aRect)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPTimeIntervalHourView").super_class }, "initWithFrame:", aRect))
    {
        var date = objj_msgSend(CPDate, "date");
        self._calendarView = objj_msgSend(objj_msgSend(LPTimeIntervalDayView, "alloc"), "initWithFrame:", CGRectMake(aRect.size.width / 2 - 190 / 2, 0, 189, 166));
        objj_msgSend(self._calendarView, "selectDate:", date);
        objj_msgSend(self._calendarView, "setDelegate:", self);
        objj_msgSend(self._calendarView, "setAllowsMultipleSelection:", NO);
        objj_msgSend(self, "addSubview:", self._calendarView);
        self._startStepper = objj_msgSend(CPStepper, "stepperWithInitialValue:minValue:maxValue:", 0, 0, 23);
        self._endStepper = objj_msgSend(CPStepper, "stepperWithInitialValue:minValue:maxValue:", 24, 1, 24);
        objj_msgSend(self._startStepper, "setTarget:", self);
        objj_msgSend(self._startStepper, "setAction:", sel_getUid("clickOnStartStepper:"));
        objj_msgSend(self._startStepper, "setValueWraps:", NO);
        self._startTextField = objj_msgSend(CPTextField, "labelWithTitle:", "Start : 0");
        objj_msgSend(self._startTextField, "setFrameOrigin:", CGPointMake(5,175 + objj_msgSend(self._startStepper, "frameSize").height / 2 - objj_msgSend(self._startTextField, "frameSize").height / 2));
        objj_msgSend(self._startStepper, "setFrameOrigin:", CGPointMake(objj_msgSend(self._startTextField, "frameSize").width + 12,175));
        objj_msgSend(self, "addSubview:", self._startTextField);
        objj_msgSend(self, "addSubview:", self._startStepper)
        objj_msgSend(self._endStepper, "setTarget:", self);
        objj_msgSend(self._endStepper, "setAction:", sel_getUid("clickOnEndStepper:"));
        objj_msgSend(self._endStepper, "setValueWraps:", NO);
        self._endTextField = objj_msgSend(CPTextField, "labelWithTitle:", "End : 24");
        objj_msgSend(self._endStepper, "setFrameOrigin:", CGPointMake(aRect.size.width - 5 - objj_msgSend(self._endStepper, "frameSize").width, 175));
        objj_msgSend(self._endTextField, "setFrameOrigin:", CGPointMake(objj_msgSend(self._endStepper, "frameOrigin").x - objj_msgSend(self._endTextField, "frameSize").width, 175 + objj_msgSend(self._endStepper, "frameSize").height / 2 - objj_msgSend(self._endTextField, "frameSize").height / 2));
        objj_msgSend(self, "addSubview:", self._endTextField);
        objj_msgSend(self, "addSubview:", self._endStepper)
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("clickOnStartStepper:"), function $LPTimeIntervalHourView__clickOnStartStepper_(self, _cmd, sender)
{
    if (objj_msgSend(sender, "doubleValue") >= objj_msgSend(self._endStepper, "doubleValue"))
        objj_msgSend(self._endStepper, "performClickUp:", self);
    objj_msgSend(self._startTextField, "setStringValue:", objj_msgSend(CPString, "stringWithFormat:", "Start : %i", objj_msgSend(sender, "doubleValue")));
    objj_msgSend(self._startTextField, "sizeToFit");
}
,["void","id"]), new objj_method(sel_getUid("clickOnEndStepper:"), function $LPTimeIntervalHourView__clickOnEndStepper_(self, _cmd, sender)
{
    if (objj_msgSend(sender, "doubleValue") <= objj_msgSend(self._startStepper, "doubleValue"))
        objj_msgSend(self._startStepper, "performClickDown:", self);
    objj_msgSend(self._endTextField, "setStringValue:", objj_msgSend(CPString, "stringWithFormat:", "End : %i", objj_msgSend(sender, "doubleValue")));
    objj_msgSend(self._endTextField, "sizeToFit");
}
,["void","id"]), new objj_method(sel_getUid("layoutSubviews"), function $LPTimeIntervalHourView__layoutSubviews(self, _cmd)
{
    var themeState = objj_msgSend(self, "themeState");
    objj_msgSend(self._endTextField, "setFont:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-font", themeState));
    objj_msgSend(self._endTextField, "setTextColor:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-text-color", themeState));
    objj_msgSend(self._endTextField, "setTextShadowColor:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-text-shadow-color", themeState));
    objj_msgSend(self._endTextField, "setTextShadowOffset:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-text-shadow-offset", themeState));
    objj_msgSend(self._startTextField, "setFont:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-font", CPThemeStateNormal));
    objj_msgSend(self._startTextField, "setTextColor:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-text-color", CPThemeStateNormal));
    objj_msgSend(self._startTextField, "setTextShadowColor:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-text-shadow-color", CPThemeStateNormal));
    objj_msgSend(self._startTextField, "setTextShadowOffset:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-text-shadow-offset", CPThemeStateNormal));
}
,["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeAttributes"), function $LPTimeIntervalHourView__themeAttributes(self, _cmd)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [objj_msgSend(CPNull, "null"),objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null")], ["header-font", "header-text-color", "header-text-shadow-color", "header-text-shadow-offset"]);
}
,["id"])]);
}
{
var the_class = objj_getClass("LPTimeIntervalHourView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"LPTimeIntervalHourView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("calendarView:didMakeSelection:"), function $LPTimeIntervalHourView__calendarView_didMakeSelection_(self, _cmd, aCalendarView, aFirstDate)
{
    var dateStart = new Date(aFirstDate.getUTCFullYear(), aFirstDate.getMonth(), aFirstDate.getDate(),objj_msgSend(self._startStepper, "doubleValue") , 0, 0, 0),
        dateEnd = new Date(aFirstDate.getUTCFullYear(), aFirstDate.getMonth(), aFirstDate.getDate(), objj_msgSend(self._endStepper, "doubleValue") - 1, 59, 59, 99);
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("hourCalendarView:didMakeSelection:enDate:")))
        objj_msgSend(self._delegate, "hourCalendarView:didMakeSelection:enDate:", self, dateStart, dateEnd);
}
,["void","LPTimeIntervalDayView","CPDate"])]);
}p;25;LPTimeIntervalMonthView.jt;19693;@STATIC;1.0;I;18;AppKit/CPControl.jI;15;AppKit/CPView.ji;16;_LPArrowButton.ji;13;LPSlideView.jt;19591;objj_executeFile("AppKit/CPControl.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("_LPArrowButton.j", YES);
objj_executeFile("LPSlideView.j", YES);
var LPTimeIntervalMonthView_monthCalendarView_didMakeSelection_ = 1 << 1;
{var the_class = objj_allocateClassPair(CPControl, "LPTimeIntervalMonthView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_year"), new objj_ivar("_monthCalendarDelegate"), new objj_ivar("_currentMonthCalendar"), new objj_ivar("_previousMonthCalendar"), new objj_ivar("_nextMonthCalendar"), new objj_ivar("_currentDate"), new objj_ivar("_yearLabel"), new objj_ivar("_headerMonthCalendar"), new objj_ivar("_slideView"), new objj_ivar("_nextButton"), new objj_ivar("_prevButton"), new objj_ivar("_implementedMonthCalendarDelegateMethods")]);

       
       

       
       

       
       



       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("year"), function $LPTimeIntervalMonthView__year(self, _cmd)
{
return self._year;
}
,["CPDate"]), new objj_method(sel_getUid("setYear:"), function $LPTimeIntervalMonthView__setYear_(self, _cmd, newValue)
{
self._year = newValue;
}
,["void","CPDate"]), new objj_method(sel_getUid("delegate"), function $LPTimeIntervalMonthView__delegate(self, _cmd)
{
return self._monthCalendarDelegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $LPTimeIntervalMonthView__setDelegate_(self, _cmd, newValue)
{
self._monthCalendarDelegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $LPTimeIntervalMonthView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPTimeIntervalMonthView").super_class }, "initWithFrame:", aFrame))
    {
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class"));
        self._headerMonthCalendar = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(0, 0, CGRectGetWidth(aFrame), 40));
        objj_msgSend(self, "addSubview:", self._headerMonthCalendar);
        self._slideView = objj_msgSend(objj_msgSend(LPSlideView, "alloc"), "initWithFrame:", CGRectMake(0, 40, CGRectGetWidth(aFrame), CGRectGetHeight(aFrame) - 40));
        objj_msgSend(self._slideView, "setSlideDirection:", LPSlideViewVerticalDirection);
        objj_msgSend(self._slideView, "setDelegate:", self);
        objj_msgSend(self._slideView, "setAnimationCurve:", CPAnimationEaseOut);
        objj_msgSend(self._slideView, "setAnimationDuration:", 0.2);
        objj_msgSend(self, "addSubview:", self._slideView);
        self._previousMonthCalendar = objj_msgSend(objj_msgSend(_LPContentMonthCalendar, "alloc"), "initWithFrame:withMonthCalendar:", CGRectMake(0, 40, CGRectGetWidth(aFrame), aFrame.size.height - 40), self);
        objj_msgSend(self._previousMonthCalendar, "selectIndex:", objj_msgSend(CPDate, "date").getMonth());
        objj_msgSend(self._slideView, "addSubview:", self._previousMonthCalendar);
        self._nextMonthCalendar = objj_msgSend(objj_msgSend(_LPContentMonthCalendar, "alloc"), "initWithFrame:withMonthCalendar:", CGRectMake(0, 40, CGRectGetWidth(aFrame), aFrame.size.height - 40), self);
        objj_msgSend(self._slideView, "addSubview:", self._nextMonthCalendar);
        self._currentMonthCalendar = self._previousMonthCalendar;
        self._yearLabel = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(0, 8, aFrame.size.width, aFrame.size.height));
        objj_msgSend(self._yearLabel, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(self._yearLabel, "setAlignment:", CPCenterTextAlignment);
        objj_msgSend(self._yearLabel, "setHitTests:", NO);
        objj_msgSend(self._headerMonthCalendar, "addSubview:", self._yearLabel);
        self._prevButton = objj_msgSend(objj_msgSend(_LPArrowButton, "alloc"), "initWithFrame:", CGRectMake(6, 9, 16, 16));
        objj_msgSend(self._prevButton, "setTarget:", self);
        objj_msgSend(self._prevButton, "setBordered:", NO);
        objj_msgSend(self._prevButton, "setAction:", sel_getUid("_didClickPreviousButton:"))
        objj_msgSend(self._headerMonthCalendar, "addSubview:", self._prevButton);
        self._nextButton = objj_msgSend(objj_msgSend(_LPArrowButton, "alloc"), "initWithFrame:", CGRectMake(CGRectGetMaxX(objj_msgSend(self, "bounds")) - 21, 9, 16, 16));
        objj_msgSend(self._nextButton, "setTarget:", self);
        objj_msgSend(self._nextButton, "setBordered:", NO);
        objj_msgSend(self._nextButton, "setAction:", sel_getUid("_didClickNextButton:"))
        objj_msgSend(self._nextButton, "setAutoresizingMask:", CPViewMinXMargin);
        objj_msgSend(self._headerMonthCalendar, "addSubview:", self._nextButton);
        self._currentDate = objj_msgSend(CPDate, "date");
        objj_msgSend(self, "setYear:", objj_msgSend(CPDate, "date"));
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("setDelegate:"), function $LPTimeIntervalMonthView__setDelegate_(self, _cmd, aDelegate)
{
    self._monthCalendarDelegate = aDelegate;
    self._implementedMonthCalendarDelegateMethods = 0;
    if (objj_msgSend(self._monthCalendarDelegate, "respondsToSelector:", sel_getUid("monthCalendarView:didMakeSelection:")))
        self._implementedMonthCalendarDelegateMethods |= LPTimeIntervalMonthView_monthCalendarView_didMakeSelection_;
}
,["void","id"]), new objj_method(sel_getUid("setYear:"), function $LPTimeIntervalMonthView__setYear_(self, _cmd, aDate)
{
    if (objj_msgSend(self._year, "isEqualToDate:", aDate))
        return;
    self._year = objj_msgSend(aDate, "copy");
    objj_msgSend(self._yearLabel, "setStringValue:", objj_msgSend(CPString, "stringWithFormat:", "%i ", self._year.getUTCFullYear()));
}
,["void","CPDate"]), new objj_method(sel_getUid("_didClickNextButton:"), function $LPTimeIntervalMonthView___didClickNextButton_(self, _cmd, sender)
{
    var newDate = new Date(self._year.getUTCFullYear() + 1,self._currentDate.getMonth(),self._currentDate.getDate());
    objj_msgSend(self, "_slideToNextViewWithDate:", newDate);
}
,["void","id"]), new objj_method(sel_getUid("_didClickPreviousButton:"), function $LPTimeIntervalMonthView___didClickPreviousButton_(self, _cmd, sender)
{
    var newDate = new Date(self._year.getUTCFullYear() - 1,self._currentDate.getMonth(),self._currentDate.getDate());
    objj_msgSend(self, "_slideToNextViewWithDate:", newDate);
}
,["void","id"]), new objj_method(sel_getUid("_slideToNextViewWithDate:"), function $LPTimeIntervalMonthView___slideToNextViewWithDate_(self, _cmd, aDate)
{
    if (self._currentMonthCalendar == self._nextMonthCalendar)
        self._currentMonthCalendar = self._previousMonthCalendar;
    else
        self._currentMonthCalendar = self._nextMonthCalendar;
    objj_msgSend(self._currentMonthCalendar, "selectIndex:", nil);
    if (self._currentDate.getUTCFullYear() == aDate.getUTCFullYear())
        objj_msgSend(self._currentMonthCalendar, "highlightIndex:", aDate.getMonth());
    else
        objj_msgSend(self._currentMonthCalendar, "highlightIndex:", nil);
    objj_msgSend(self, "setYear:", aDate);
    objj_msgSend(self._slideView, "slideToView:direction:", self._currentMonthCalendar, LPSlideViewNegativeDirection);
}
,["void","CPDate"]), new objj_method(sel_getUid("layoutSubviews"), function $LPTimeIntervalMonthView__layoutSubviews(self, _cmd)
{
    var themeState = objj_msgSend(self, "themeState");
    objj_msgSend(self._yearLabel, "setFont:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-font", themeState));
    objj_msgSend(self._yearLabel, "setTextColor:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-text-color", themeState));
    objj_msgSend(self._yearLabel, "setTextShadowColor:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-text-shadow-color", themeState));
    objj_msgSend(self._yearLabel, "setTextShadowOffset:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-text-shadow-offset", themeState));
    objj_msgSend(self._nextButton, "setValue:forThemeAttribute:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-next-button-image", themeState), "bezel-color");
    objj_msgSend(self._prevButton, "setValue:forThemeAttribute:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-prev-button-image", themeState), "bezel-color");
}
,["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeAttributes"), function $LPTimeIntervalMonthView__themeAttributes(self, _cmd)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [objj_msgSend(CPNull, "null"),objj_msgSend(CPNull, "null"), CGInsetMakeZero(), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), CGSizeMake(0,0), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), 40, objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), 30, objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null")], ["background-color", "bezel-color", "bezel-inset", "grid-color", "grid-shadow-color",
                                                "tile-size", "tile-font", "tile-text-color", "tile-text-shadow-color", "tile-text-shadow-offset", "tile-bezel-color",
                                                "header-button-offset", "header-prev-button-image", "header-next-button-image", "header-height", "header-background-color", "header-font", "header-text-color", "header-text-shadow-color", "header-text-shadow-offset", "header-alignment",
                                                "header-weekday-offset", "header-weekday-label-font", "header-weekday-label-color", "header-weekday-label-shadow-color", "header-weekday-label-shadow-offset"]);
}
,["id"])]);
}
{
var the_class = objj_getClass("LPTimeIntervalMonthView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"LPTimeIntervalMonthView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("_didMakeSelection:"), function $LPTimeIntervalMonthView___didMakeSelection_(self, _cmd, anIndex)
{
    if (objj_msgSend(self, "isHidden") || self._year == nil || anIndex == nil)
        return;
    var date = new Date(objj_msgSend(self._yearLabel, "stringValue"),anIndex,self._year.getDate());
    self._currentDate = date;
    if (self._implementedMonthCalendarDelegateMethods & LPTimeIntervalMonthView_monthCalendarView_didMakeSelection_)
        objj_msgSend(self._monthCalendarDelegate, "monthCalendarView:didMakeSelection:", self, date);
}
,["void","int"])]);
}
var LPMonthNames = ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"];
{var the_class = objj_allocateClassPair(CPView, "_LPContentMonthCalendar"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_monthCalendar")]);
       
       


       
       


       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:withMonthCalendar:"), function $_LPContentMonthCalendar__initWithFrame_withMonthCalendar_(self, _cmd, aFrame, aMonthCalendar)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_LPContentMonthCalendar").super_class }, "initWithFrame:", aFrame))
    {
        self._monthCalendar = aMonthCalendar
        for (var i = 0; i < 12; i++)
        {
            objj_msgSend(self, "addSubview:", objj_msgSend(objj_msgSend(_LPContentMonthView, "alloc"), "initWithFrame:withMonthCalendar:", CGRectMakeZero(), self._monthCalendar));
        }
        objj_msgSend(self, "tile");
    }
    return self;
}
,["id","CGRect","LPTimeIntervalMonthView"]), new objj_method(sel_getUid("tileSize"), function $_LPContentMonthCalendar__tileSize(self, _cmd)
{
    var bounds = objj_msgSend(self, "bounds");
    return CGSizeMake(CGRectGetWidth(bounds) / 3, (CGRectGetHeight(bounds) / 4));
}
,["int"]), new objj_method(sel_getUid("tile"), function $_LPContentMonthCalendar__tile(self, _cmd)
{
    var tiles = objj_msgSend(self, "subviews"),
        tileSize = objj_msgSend(self, "tileSize"),
        tileIndex = 0;
    if (objj_msgSend(tiles, "count") > 0)
    {
        for (var i = 0; i < 4; i++)
        {
            for (var j = 0; j < 3; j++)
            {
                var tileFrame = CGRectMake((j * tileSize.width), i * tileSize.height, tileSize.width, tileSize.height);
                objj_msgSend(tiles[tileIndex], "setFrame:", tileFrame);
                objj_msgSend(tiles[tileIndex], "setTitle:", LPMonthNames[j + i * 3]);
                tileIndex += 1;
            }
        }
    }
}
,["void"]), new objj_method(sel_getUid("indexOfTileAtPoint:"), function $_LPContentMonthCalendar__indexOfTileAtPoint_(self, _cmd, aPoint)
{
    var tileSize = objj_msgSend(self, "tileSize");
    var rowIndex = FLOOR(aPoint.y / tileSize.height),
        columnIndex = FLOOR(aPoint.x / tileSize.width);
    if (columnIndex > 2)
        columnIndex = 2;
    else if (columnIndex < 0)
        columnIndex = 0;
    if (rowIndex > 3)
        rowIndex = 3;
    else if (rowIndex < 0)
        rowIndex = 0;
    var tileIndex = (rowIndex * 3) + columnIndex;
    if (tileIndex > 11)
        return 11;
    return tileIndex;
}
,["int","CGPoint"]), new objj_method(sel_getUid("mouseDown:"), function $_LPContentMonthCalendar__mouseDown_(self, _cmd, anEvent)
{
    var locationInView = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil),
        tileIndex = objj_msgSend(self, "indexOfTileAtPoint:", locationInView),
        tile = objj_msgSend(objj_msgSend(self, "subviews"), "objectAtIndex:", tileIndex);
    objj_msgSend(self, "selectIndex:", tileIndex);
}
,["void","CPEvent"]), new objj_method(sel_getUid("selectIndex:"), function $_LPContentMonthCalendar__selectIndex_(self, _cmd, anIndex)
{
    var tiles = objj_msgSend(self, "subviews"),
        tilesCount = objj_msgSend(tiles, "count");
    for (var i = 0; i < tilesCount; i++)
    {
        var tile = tiles[i];
        if (anIndex == i)
        {
            objj_msgSend(tile, "setSelected:", YES);
        }
        else
        {
            objj_msgSend(tile, "setSelected:", NO);
            objj_msgSend(tile, "setHighlighted:", NO);
        }
    }
    objj_msgSend(self._monthCalendar, "_didMakeSelection:", anIndex);
}
,["void","int"]), new objj_method(sel_getUid("highlightIndex:"), function $_LPContentMonthCalendar__highlightIndex_(self, _cmd, anIndex)
{
    var tiles = objj_msgSend(self, "subviews"),
        tilesCount = objj_msgSend(tiles, "count");
    for (var i = 0; i < tilesCount; i++)
    {
        var tile = tiles[i];
        if (anIndex == i)
            objj_msgSend(tile, "setHighlighted:", YES);
        else
            objj_msgSend(tile, "setHighlighted:", NO);
    }
}
,["void","int"]), new objj_method(sel_getUid("deselectAllTiles"), function $_LPContentMonthCalendar__deselectAllTiles(self, _cmd)
{
    var tiles = objj_msgSend(self, "subviews"),
        tilesCount = objj_msgSend(tiles, "count");
    for (var i = 0; i < tilesCount; i++)
    {
        var tile = objj_msgSend(tiles, "objectAtIndex:", i);
        objj_msgSend(tile, "setSelected:", NO);
    }
}
,["void"])]);
}
{var the_class = objj_allocateClassPair(CPControl, "_LPContentMonthView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("isHighlighted"), new objj_ivar("isSelected"), new objj_ivar("_textField"), new objj_ivar("_monthCalendar")]);
       
       



       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isHighlighted"), function $_LPContentMonthView__isHighlighted(self, _cmd)
{
return self.isHighlighted;
}
,["BOOL"]), new objj_method(sel_getUid("setHighlighted:"), function $_LPContentMonthView__setHighlighted_(self, _cmd, newValue)
{
self.isHighlighted = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isSelected"), function $_LPContentMonthView__isSelected(self, _cmd)
{
return self.isSelected;
}
,["BOOL"]), new objj_method(sel_getUid("setSelected:"), function $_LPContentMonthView__setSelected_(self, _cmd, newValue)
{
self.isSelected = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("initWithFrame:withMonthCalendar:"), function $_LPContentMonthView__initWithFrame_withMonthCalendar_(self, _cmd, aFrame, aMonthCalendar)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_LPContentMonthView").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self, "setHitTests:", NO);
        self._textField = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(self._textField, "setAutoresizingMask:", CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin);
        objj_msgSend(self, "addSubview:", self._textField);
        self._monthCalendar = aMonthCalendar;
    }
    return self;
}
,["id","CGRect","LPTimeIntervalMonthView"]), new objj_method(sel_getUid("setSelected:"), function $_LPContentMonthView__setSelected_(self, _cmd, shouldBeSelected)
{
    if (self.isSelected === shouldBeSelected)
        return;
    self.isSelected = shouldBeSelected;
    if (shouldBeSelected)
        objj_msgSend(self, "setThemeState:", CPThemeStateSelected);
    else
        objj_msgSend(self, "unsetThemeState:", CPThemeStateSelected);
}
,["void","BOOL"]), new objj_method(sel_getUid("setHighlighted:"), function $_LPContentMonthView__setHighlighted_(self, _cmd, shouldBeHighlighted)
{
    if (self.isHighlighted === shouldBeHighlighted)
        return;
    self.isHighlighted = shouldBeHighlighted;
    if (shouldBeHighlighted)
        objj_msgSend(self, "setThemeState:", CPThemeStateHighlighted);
    else
        objj_msgSend(self, "unsetThemeState:", CPThemeStateHighlighted);
}
,["void","BOOL"]), new objj_method(sel_getUid("setTitle:"), function $_LPContentMonthView__setTitle_(self, _cmd, aTitle)
{
    objj_msgSend(self._textField, "setStringValue:", aTitle);
    objj_msgSend(self._textField, "sizeToFit");
    var bounds = objj_msgSend(self, "bounds");
    objj_msgSend(self._textField, "setCenter:", CGPointMake(CGRectGetMidX(bounds), CGRectGetMidY(bounds)));
}
,["void","CPString"]), new objj_method(sel_getUid("layoutSubviews"), function $_LPContentMonthView__layoutSubviews(self, _cmd)
{
    var themeState = objj_msgSend(self, "themeState");
    objj_msgSend(self, "setBackgroundColor:", objj_msgSend(self._monthCalendar, "valueForThemeAttribute:inState:", "tile-bezel-color", themeState))
    objj_msgSend(self._textField, "setFont:", objj_msgSend(self._monthCalendar, "valueForThemeAttribute:inState:", "tile-font", themeState));
    objj_msgSend(self._textField, "setTextColor:", objj_msgSend(self._monthCalendar, "valueForThemeAttribute:inState:", "tile-text-color", themeState));
    objj_msgSend(self._textField, "setTextShadowColor:", objj_msgSend(self._monthCalendar, "valueForThemeAttribute:inState:", "tile-text-shadow-color", themeState));
    objj_msgSend(self._textField, "setTextShadowOffset:", objj_msgSend(self._monthCalendar, "valueForThemeAttribute:inState:", "tile-text-shadow-offset", themeState));
}
,["void"])]);
}p;20;LPTimeIntervalView.jt;13308;@STATIC;1.0;i;24;LPTimeIntervalHourView.ji;24;LPTimeIntervalYearView.ji;23;LPTimeIntervalDayView.ji;25;LPTimeIntervalMonthView.ji;24;LPTimeIntervalYearView.jt;13143;objj_executeFile("LPTimeIntervalHourView.j", YES);
objj_executeFile("LPTimeIntervalYearView.j", YES);
objj_executeFile("LPTimeIntervalDayView.j", YES);
objj_executeFile("LPTimeIntervalMonthView.j", YES);
objj_executeFile("LPTimeIntervalYearView.j", YES);
var LPTimeIntervalView_timeIntervalView_didSelectStartDate_endDate_intervalType_ = 1 << 1;
LPIntervalTypeDay = 1;
LPIntervalTypeMonth = 2;
LPIntervalTypeYear = 3;
LPIntervalTypeHour = 4;
{var the_class = objj_allocateClassPair(CPView, "LPTimeIntervalView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_borderColor"), new objj_ivar("_endDate"), new objj_ivar("_startDate"), new objj_ivar("_timeIntervalViewDelegate"), new objj_ivar("_intervalType"), new objj_ivar("_calendarHourView"), new objj_ivar("_calendarView"), new objj_ivar("_monthCalendarView"), new objj_ivar("_yearCalendarView"), new objj_ivar("_implementedTimeIntervalViewDelegateMethods")]);




       
       


       
       


       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("borderColor"), function $LPTimeIntervalView__borderColor(self, _cmd)
{
return self._borderColor;
}
,["CPColor"]), new objj_method(sel_getUid("setBorderColor:"), function $LPTimeIntervalView__setBorderColor_(self, _cmd, newValue)
{
self._borderColor = newValue;
}
,["void","CPColor"]), new objj_method(sel_getUid("endDate"), function $LPTimeIntervalView__endDate(self, _cmd)
{
return self._endDate;
}
,["CPDate"]), new objj_method(sel_getUid("_setEndDate:"), function $LPTimeIntervalView___setEndDate_(self, _cmd, newValue)
{
self._endDate = newValue;
}
,["void","CPDate"]), new objj_method(sel_getUid("startDate"), function $LPTimeIntervalView__startDate(self, _cmd)
{
return self._startDate;
}
,["CPDate"]), new objj_method(sel_getUid("_setStartDate:"), function $LPTimeIntervalView___setStartDate_(self, _cmd, newValue)
{
self._startDate = newValue;
}
,["void","CPDate"]), new objj_method(sel_getUid("delegate"), function $LPTimeIntervalView__delegate(self, _cmd)
{
return self._timeIntervalViewDelegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $LPTimeIntervalView__setDelegate_(self, _cmd, newValue)
{
self._timeIntervalViewDelegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("intervalType"), function $LPTimeIntervalView__intervalType(self, _cmd)
{
return self._intervalType;
}
,["int"]), new objj_method(sel_getUid("setIntervalType:"), function $LPTimeIntervalView__setIntervalType_(self, _cmd, newValue)
{
self._intervalType = newValue;
}
,["void","int"]), new objj_method(sel_getUid("initWithFrame:"), function $LPTimeIntervalView__initWithFrame_(self, _cmd, aRect)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPTimeIntervalView").super_class }, "initWithFrame:", aRect))
    {
        var date = objj_msgSend(CPDate, "date");
        self._borderColor = objj_msgSend(CPColor, "clearColor");
        self._calendarHourView = objj_msgSend(objj_msgSend(LPTimeIntervalHourView, "alloc"), "initWithFrame:", CGRectMake(aRect.size.width / 2 - 190 / 2, 0, 189, 205));
        objj_msgSend(self._calendarHourView, "setDelegate:", self);
        objj_msgSend(self._calendarHourView, "setHidden:", NO);
        objj_msgSend(self, "addSubview:", self._calendarHourView);
        self._calendarView = objj_msgSend(objj_msgSend(LPTimeIntervalDayView, "alloc"), "initWithFrame:", CGRectMake(aRect.size.width / 2 - 190 / 2, 0, 189, 166));
        objj_msgSend(self._calendarView, "selectDate:", date);
        objj_msgSend(self._calendarView, "setDelegate:", self);
        objj_msgSend(self._calendarView, "setAllowsMultipleSelection:", NO);
        objj_msgSend(self._calendarView, "setHidden:", YES);
        objj_msgSend(self, "addSubview:", self._calendarView);
        self._monthCalendarView = objj_msgSend(objj_msgSend(LPTimeIntervalMonthView, "alloc"), "initWithFrame:", CGRectMake(aRect.size.width / 2 - 190 / 2, 0, 189, 168));
        objj_msgSend(self._monthCalendarView, "setDelegate:", self);
        objj_msgSend(self._monthCalendarView, "setHidden:", YES);
        objj_msgSend(self._monthCalendarView, "setYear:", date);
        objj_msgSend(self, "addSubview:", self._monthCalendarView);
        self._yearCalendarView = objj_msgSend(objj_msgSend(LPTimeIntervalYearView, "alloc"), "initWithFrame:", CGRectMake(aRect.size.width / 2 - 190 / 2, 0, 189, 168));
        objj_msgSend(self._yearCalendarView, "setDelegate:", self);
        objj_msgSend(self._yearCalendarView, "setHidden:", YES);
        objj_msgSend(self._yearCalendarView, "setYear:", date);
        objj_msgSend(self, "addSubview:", self._yearCalendarView);
        self._intervalType = LPIntervalTypeDay;
        self._startDate = objj_msgSend(self, "_intervalForFirstDay:", date);
        self._endDate = objj_msgSend(self, "_intervalForEndDay:", date);
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("setDelegate:"), function $LPTimeIntervalView__setDelegate_(self, _cmd, aDelegate)
{
    self._timeIntervalViewDelegate = aDelegate;
    self._implementedTimeIntervalViewDelegateMethods = 0;
    if (objj_msgSend(self._timeIntervalViewDelegate, "respondsToSelector:", sel_getUid("timeIntervalView:didSelectStartDate:endDate:intervalType:")))
        self._implementedTimeIntervalViewDelegateMethods |= LPTimeIntervalView_timeIntervalView_didSelectStartDate_endDate_intervalType_;
}
,["void","id"]), new objj_method(sel_getUid("setIntervalType:"), function $LPTimeIntervalView__setIntervalType_(self, _cmd, anIntervalType)
{
    self._intervalType = anIntervalType;
    switch (self._intervalType)
    {
        case LPIntervalTypeDay:
            objj_msgSend(self._calendarHourView, "setHidden:", YES);
            objj_msgSend(self._calendarView, "setHidden:", NO);
            objj_msgSend(self._monthCalendarView, "setHidden:", YES);
            objj_msgSend(self._yearCalendarView, "setHidden:", YES);
            break;
        case LPIntervalTypeMonth:
            objj_msgSend(self._calendarHourView, "setHidden:", YES);
            objj_msgSend(self._calendarView, "setHidden:", YES);
            objj_msgSend(self._monthCalendarView, "setHidden:", NO);
            objj_msgSend(self._yearCalendarView, "setHidden:", YES);
            break;
        case LPIntervalTypeYear:
            objj_msgSend(self._calendarHourView, "setHidden:", YES);
            objj_msgSend(self._calendarView, "setHidden:", YES);
            objj_msgSend(self._monthCalendarView, "setHidden:", YES);
            objj_msgSend(self._yearCalendarView, "setHidden:", NO);
            break;
        case LPIntervalTypeHour:
            objj_msgSend(self._calendarHourView, "setHidden:", NO);
            objj_msgSend(self._calendarView, "setHidden:", YES);
            objj_msgSend(self._monthCalendarView, "setHidden:", YES);
            objj_msgSend(self._yearCalendarView, "setHidden:", YES);
            break;
        default:
            objj_msgSend(self._calendarHourView, "setHidden:", NO);
            objj_msgSend(self._calendarView, "setHidden:", YES);
            objj_msgSend(self._monthCalendarView, "setHidden:", YES);
            objj_msgSend(self._yearCalendarView, "setHidden:", YES);
    }
    self._endDate = objj_msgSend(self, "_intervalForEndDay:", self._endDate);
    self._startDate = objj_msgSend(self, "_intervalForFirstDay:", self._startDate);
}
,["void","int"]), new objj_method(sel_getUid("_intervalForFirstDay:"), function $LPTimeIntervalView___intervalForFirstDay_(self, _cmd, aDate)
{
    switch (self._intervalType)
    {
        case LPIntervalTypeDay :
            return objj_msgSend(CPDate, "firstHourOfDay:", aDate);
            break;
        case LPIntervalTypeMonth :
            return objj_msgSend(CPDate, "firstDateOfMonth:", aDate);
            break;
        case LPIntervalTypeYear:
            return objj_msgSend(CPDate, "firstDateOfYear:", aDate);
            break;
    }
    return aDate;
}
,["CPDate","CPDate"]), new objj_method(sel_getUid("_intervalForEndDay:"), function $LPTimeIntervalView___intervalForEndDay_(self, _cmd, aDate)
{
    switch (self._intervalType)
    {
        case LPIntervalTypeDay :
            return objj_msgSend(CPDate, "lastDateOfADay:", aDate);
            break;
        case LPIntervalTypeMonth :
            return objj_msgSend(CPDate, "lastDateOfAMonth:", aDate);
            break;
        case LPIntervalTypeYear:
            return objj_msgSend(CPDate, "lastDateOfAnYear:", aDate);
            break;
    }
    return aDate;
}
,["void","CPDate"]), new objj_method(sel_getUid("drawRect:"), function $LPTimeIntervalView__drawRect_(self, _cmd, aRect)
{
    var context = objj_msgSend(objj_msgSend(CPGraphicsContext, "currentContext"), "graphicsPort");
    CGContextBeginPath(context);
    CGContextSetStrokeColor(context,self._borderColor);
    CGContextSetLineWidth(context, 1);
    CGContextMoveToPoint(context, 0, 0);
    CGContextAddLineToPoint(context, aRect.size.width , 0);
    CGContextAddLineToPoint(context, aRect.size.width, aRect.size.height );
    CGContextAddLineToPoint(context, 0, aRect.size.height);
    CGContextAddLineToPoint(context, 0, 0);
    CGContextStrokePath(context);
    CGContextClosePath(context);
}
,["void","CGRect"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("timeIntervalViewHours"), function $LPTimeIntervalView__timeIntervalViewHours(self, _cmd)
{
    var timeIntervalView = objj_msgSend(objj_msgSend(LPTimeIntervalView, "alloc"), "initWithFrame:", CGRectMake(0,0,200,210));
    objj_msgSend(timeIntervalView, "setIntervalType:", LPIntervalTypeHour);
    return timeIntervalView;
}
,["id"]), new objj_method(sel_getUid("timeIntervalViewDays"), function $LPTimeIntervalView__timeIntervalViewDays(self, _cmd)
{
    var timeIntervalView = objj_msgSend(objj_msgSend(LPTimeIntervalView, "alloc"), "initWithFrame:", CGRectMake(0,0,200,210));
    objj_msgSend(timeIntervalView, "setIntervalType:", LPIntervalTypeDay);
    return timeIntervalView;
}
,["id"]), new objj_method(sel_getUid("timeIntervalViewYears"), function $LPTimeIntervalView__timeIntervalViewYears(self, _cmd)
{
    var timeIntervalView = objj_msgSend(objj_msgSend(LPTimeIntervalView, "alloc"), "initWithFrame:", CGRectMake(0,0,200,210));
    objj_msgSend(timeIntervalView, "setIntervalType:", LPIntervalTypeYear);
    return timeIntervalView;
}
,["id"]), new objj_method(sel_getUid("timeIntervalViewMonths"), function $LPTimeIntervalView__timeIntervalViewMonths(self, _cmd)
{
    var timeIntervalView = objj_msgSend(objj_msgSend(LPTimeIntervalView, "alloc"), "initWithFrame:", CGRectMake(0,0,200,210));
    objj_msgSend(timeIntervalView, "setIntervalType:", LPIntervalTypeMonth);
    return timeIntervalView;
}
,["id"])]);
}
{
var the_class = objj_getClass("LPTimeIntervalView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"LPTimeIntervalView\"");
var meta_class = the_class.isa;




class_addMethods(the_class, [new objj_method(sel_getUid("hourCalendarView:didMakeSelection:enDate:"), function $LPTimeIntervalView__hourCalendarView_didMakeSelection_enDate_(self, _cmd, aCalendarView, aFirstDate, anEndDate)
{
    objj_msgSend(self, "_didSelectStartDate:endDate:", aFirstDate, anEndDate);
}
,["void","LPTimeIntervalHourView","CPDate","CPDate"]), new objj_method(sel_getUid("calendarView:didMakeSelection:"), function $LPTimeIntervalView__calendarView_didMakeSelection_(self, _cmd, aCalendarView, aDate)
{
    objj_msgSend(self, "_didSelectStartDate:endDate:", objj_msgSend(self, "_intervalForFirstDay:", aDate), objj_msgSend(self, "_intervalForEndDay:", aDate));
}
,["void","LPTimeIntervalDayView","CPDate"]), new objj_method(sel_getUid("monthCalendarView:didMakeSelection:"), function $LPTimeIntervalView__monthCalendarView_didMakeSelection_(self, _cmd, aMonthCalendarView, aDate)
{
     objj_msgSend(self, "_didMakeSelectionInterval:", aDate);
}
,["void","LPTimeIntervalMonthView","CPDate"]), new objj_method(sel_getUid("yearCalendar:didMakeSelection:"), function $LPTimeIntervalView__yearCalendar_didMakeSelection_(self, _cmd, anYearCalendarView, aDate)
{
     objj_msgSend(self, "_didMakeSelectionInterval:", aDate);
}
,["void","LPTimeIntervalYearView","CPDate"]), new objj_method(sel_getUid("_didMakeSelectionInterval:"), function $LPTimeIntervalView___didMakeSelectionInterval_(self, _cmd, aDate)
{
    objj_msgSend(self, "_didSelectStartDate:endDate:", objj_msgSend(self, "_intervalForFirstDay:", aDate), objj_msgSend(self, "_intervalForEndDay:", aDate));
}
,["void","CPDate"]), new objj_method(sel_getUid("_didSelectStartDate:endDate:"), function $LPTimeIntervalView___didSelectStartDate_endDate_(self, _cmd, aStartDate, anEndDate)
{
    self._endDate = anEndDate;
    self._startDate = aStartDate;
    if (!(self._implementedTimeIntervalViewDelegateMethods & LPTimeIntervalView_timeIntervalView_didSelectStartDate_endDate_intervalType_))
        return;
    objj_msgSend(self._timeIntervalViewDelegate, "timeIntervalView:didSelectStartDate:endDate:intervalType:", self, self._startDate, self._endDate, self._intervalType);
}
,["void","CPDate","CPDate"])]);
}p;24;LPTimeIntervalYearView.jt;20135;@STATIC;1.0;I;18;AppKit/CPControl.ji;13;LPSlideView.ji;16;_LPArrowButton.jt;20053;objj_executeFile("AppKit/CPControl.j", NO);
objj_executeFile("LPSlideView.j", YES);
objj_executeFile("_LPArrowButton.j", YES);
var LPTimeIntervalYearView_yearCalendar_didMakeSelection_ = 1 << 1;
{var the_class = objj_allocateClassPair(CPControl, "LPTimeIntervalYearView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_year"), new objj_ivar("_yearCalendarDelegate"), new objj_ivar("_currentYearCalendar"), new objj_ivar("_previousYearCalendar"), new objj_ivar("_nextYearCalendar"), new objj_ivar("_currentDate"), new objj_ivar("_yearLabel"), new objj_ivar("_headerMonthCalendar"), new objj_ivar("_slideView"), new objj_ivar("_nextButton"), new objj_ivar("_prevButton"), new objj_ivar("_implementedYearCalendarDelegateMethods")]);

       
       

       
       

       
       



       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("year"), function $LPTimeIntervalYearView__year(self, _cmd)
{
return self._year;
}
,["CPDate"]), new objj_method(sel_getUid("setYear:"), function $LPTimeIntervalYearView__setYear_(self, _cmd, newValue)
{
self._year = newValue;
}
,["void","CPDate"]), new objj_method(sel_getUid("delegate"), function $LPTimeIntervalYearView__delegate(self, _cmd)
{
return self._yearCalendarDelegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $LPTimeIntervalYearView__setDelegate_(self, _cmd, newValue)
{
self._yearCalendarDelegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $LPTimeIntervalYearView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPTimeIntervalYearView").super_class }, "initWithFrame:", aFrame))
    {
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class"));
        self._slideView = objj_msgSend(objj_msgSend(LPSlideView, "alloc"), "initWithFrame:", CGRectMake(0, 40, CGRectGetWidth(aFrame), CGRectGetHeight(aFrame) - 40));
        objj_msgSend(self._slideView, "setSlideDirection:", LPSlideViewVerticalDirection);
        objj_msgSend(self._slideView, "setDelegate:", self);
        objj_msgSend(self._slideView, "setAnimationCurve:", CPAnimationEaseOut);
        objj_msgSend(self._slideView, "setAnimationDuration:", 0.2);
        objj_msgSend(self, "addSubview:", self._slideView);
        self._previousYearCalendar = objj_msgSend(objj_msgSend(_LPContentYearCalendar, "alloc"), "initWithFrame:withYearCalendar:", CGRectMake(0, 40, CGRectGetWidth(aFrame), aFrame.size.height - 40), self);
        objj_msgSend(self._previousYearCalendar, "selectIndex:", 11);
        objj_msgSend(self._slideView, "addSubview:", self._previousYearCalendar);
        self._nextYearCalendar = objj_msgSend(objj_msgSend(_LPContentYearCalendar, "alloc"), "initWithFrame:withYearCalendar:", CGRectMake(0, 40, CGRectGetWidth(aFrame), aFrame.size.height - 40), self);
        objj_msgSend(self._slideView, "addSubview:", self._nextYearCalendar);
        self._currentYearCalendar = self._previousYearCalendar;
        self._headerMonthCalendar = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(0, 0, CGRectGetWidth(aFrame), 40));
        objj_msgSend(self, "addSubview:", self._headerMonthCalendar);
        self._yearLabel = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(0, 8, aFrame.size.width, aFrame.size.height));
        objj_msgSend(self._yearLabel, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(self._yearLabel, "setAlignment:", CPCenterTextAlignment);
        objj_msgSend(self._yearLabel, "setHitTests:", NO);
        objj_msgSend(self._headerMonthCalendar, "addSubview:", self._yearLabel);
        self._prevButton = objj_msgSend(objj_msgSend(_LPArrowButton, "alloc"), "initWithFrame:", CGRectMake(6, 9, 16, 16));
        objj_msgSend(self._prevButton, "setTarget:", self);
        objj_msgSend(self._prevButton, "setBordered:", NO);
        objj_msgSend(self._prevButton, "setAction:", sel_getUid("_didClickPreviousButton:"))
        objj_msgSend(self._headerMonthCalendar, "addSubview:", self._prevButton);
        self._nextButton = objj_msgSend(objj_msgSend(_LPArrowButton, "alloc"), "initWithFrame:", CGRectMake(CGRectGetMaxX(objj_msgSend(self, "bounds")) - 21, 9, 16, 16));
        objj_msgSend(self._nextButton, "setTarget:", self);
        objj_msgSend(self._nextButton, "setBordered:", NO);
        objj_msgSend(self._nextButton, "setAction:", sel_getUid("_didClickNextButton:"))
        objj_msgSend(self._nextButton, "setAutoresizingMask:", CPViewMinXMargin);
        objj_msgSend(self._headerMonthCalendar, "addSubview:", self._nextButton);
        self._currentDate = objj_msgSend(CPDate, "date");
        objj_msgSend(self, "setYear:", objj_msgSend(CPDate, "date"));
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("setDelegate:"), function $LPTimeIntervalYearView__setDelegate_(self, _cmd, aDelegate)
{
    self._yearCalendarDelegate = aDelegate;
    self._implementedYearCalendarDelegateMethods = 0;
    if (objj_msgSend(self._yearCalendarDelegate, "respondsToSelector:", sel_getUid("yearCalendar:didMakeSelection:")))
        self._implementedYearCalendarDelegateMethods |= LPTimeIntervalYearView_yearCalendar_didMakeSelection_;
}
,["void","id"]), new objj_method(sel_getUid("setYear:"), function $LPTimeIntervalYearView__setYear_(self, _cmd, aDate)
{
    if (objj_msgSend(self._year, "isEqualToDate:", aDate))
        return;
    self._year = objj_msgSend(aDate, "copy");
    objj_msgSend(self._yearLabel, "setStringValue:", objj_msgSend(CPString, "stringWithFormat:", "%i - %i ", self._year.getUTCFullYear() - 11, self._year.getUTCFullYear()));
}
,["void","CPDate"]), new objj_method(sel_getUid("_didClickNextButton:"), function $LPTimeIntervalYearView___didClickNextButton_(self, _cmd, sender)
{
    var newDate = new Date(self._year.getUTCFullYear() + 11,self._currentDate.getMonth(),self._currentDate.getDate());
    objj_msgSend(self, "_slideToNextViewWithDate:", newDate);
}
,["void","id"]), new objj_method(sel_getUid("_didClickPreviousButton:"), function $LPTimeIntervalYearView___didClickPreviousButton_(self, _cmd, sender)
{
    var newDate = new Date(self._year.getUTCFullYear() - 11,self._currentDate.getMonth(),self._currentDate.getDate());
    objj_msgSend(self, "_slideToNextViewWithDate:", newDate);
}
,["void","id"]), new objj_method(sel_getUid("_slideToNextViewWithDate:"), function $LPTimeIntervalYearView___slideToNextViewWithDate_(self, _cmd, aDate)
{
    if (self._currentYearCalendar == self._nextYearCalendar)
        self._currentYearCalendar = self._previousYearCalendar;
    else
        self._currentYearCalendar = self._nextYearCalendar;
    objj_msgSend(self._currentYearCalendar, "setDate:", aDate);
    objj_msgSend(self._currentYearCalendar, "selectIndex:", nil);
    objj_msgSend(self._currentYearCalendar, "highlightIndex:", self._currentDate.getUTCFullYear() - aDate.getUTCFullYear() + 11);
    objj_msgSend(self, "setYear:", aDate);
    objj_msgSend(self._slideView, "slideToView:direction:", self._currentYearCalendar, LPSlideViewNegativeDirection);
}
,["void","CPDate"]), new objj_method(sel_getUid("layoutSubviews"), function $LPTimeIntervalYearView__layoutSubviews(self, _cmd)
{
    var themeState = objj_msgSend(self, "themeState");
    objj_msgSend(self._currentYearCalendar, "setBackgroundColor:", objj_msgSend(self, "valueForThemeAttribute:inState:", "background-color", themeState));
    objj_msgSend(self._yearLabel, "setFont:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-font", themeState));
    objj_msgSend(self._yearLabel, "setTextColor:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-text-color", themeState));
    objj_msgSend(self._yearLabel, "setTextShadowColor:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-text-shadow-color", themeState));
    objj_msgSend(self._yearLabel, "setTextShadowOffset:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-text-shadow-offset", themeState));
    objj_msgSend(self._nextButton, "setValue:forThemeAttribute:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-next-button-image", themeState), "bezel-color");
    objj_msgSend(self._prevButton, "setValue:forThemeAttribute:", objj_msgSend(self, "valueForThemeAttribute:inState:", "header-prev-button-image", themeState), "bezel-color");
}
,["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("themeAttributes"), function $LPTimeIntervalYearView__themeAttributes(self, _cmd)
{
    return objj_msgSend(CPDictionary, "dictionaryWithObjects:forKeys:", [objj_msgSend(CPNull, "null"),objj_msgSend(CPNull, "null"), CGInsetMakeZero(), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), CGSizeMake(0,0), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), 40, objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), 30, objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null"), objj_msgSend(CPNull, "null")], ["background-color", "bezel-color", "bezel-inset", "grid-color", "grid-shadow-color",
                                                "tile-size", "tile-font", "tile-text-color", "tile-text-shadow-color", "tile-text-shadow-offset", "tile-bezel-color",
                                                "header-button-offset", "header-prev-button-image", "header-next-button-image", "header-height", "header-background-color", "header-font", "header-text-color", "header-text-shadow-color", "header-text-shadow-offset", "header-alignment",
                                                "header-weekday-offset", "header-weekday-label-font", "header-weekday-label-color", "header-weekday-label-shadow-color", "header-weekday-label-shadow-offset"]);
}
,["id"])]);
}
{
var the_class = objj_getClass("LPTimeIntervalYearView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"LPTimeIntervalYearView\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("_didMakeSelection:"), function $LPTimeIntervalYearView___didMakeSelection_(self, _cmd, anIndex)
{
    if (objj_msgSend(self, "isHidden") || self._year == nil || anIndex == nil)
        return;
    var date = new Date(self._year.getUTCFullYear() - 11 + anIndex + 1,0,0);
    self._currentDate = date;
    if (self._implementedYearCalendarDelegateMethods & LPTimeIntervalYearView_yearCalendar_didMakeSelection_)
        objj_msgSend(self._yearCalendarDelegate, "yearCalendar:didMakeSelection:", self, date);
}
,["void","int"])]);
}
{var the_class = objj_allocateClassPair(CPView, "_LPContentYearCalendar"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_date"), new objj_ivar("_tiles"), new objj_ivar("_yearCalendar")]);

       
       


       
       


       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("date"), function $_LPContentYearCalendar__date(self, _cmd)
{
return self._date;
}
,["CPDate"]), new objj_method(sel_getUid("setDate:"), function $_LPContentYearCalendar__setDate_(self, _cmd, newValue)
{
self._date = newValue;
}
,["void","CPDate"]), new objj_method(sel_getUid("initWithFrame:withYearCalendar:"), function $_LPContentYearCalendar__initWithFrame_withYearCalendar_(self, _cmd, aFrame, anYearCalendar)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_LPContentYearCalendar").super_class }, "initWithFrame:", aFrame))
    {
        self._yearCalendar = anYearCalendar
        self._tiles = objj_msgSend(CPArray, "array");
        for (var i = 0; i < 12; i++)
        {
            var tile = objj_msgSend(objj_msgSend(_LPContentYearView, "alloc"), "initWithFrame:withYearCalendar:", CGRectMakeZero(), self._yearCalendar);
            objj_msgSend(self, "addSubview:", tile);
            objj_msgSend(self._tiles, "addObject:", tile);
        }
        objj_msgSend(self, "tile");
    }
    return self;
}
,["id","CGRect","LPMonthCalendar"]), new objj_method(sel_getUid("setDate:"), function $_LPContentYearCalendar__setDate_(self, _cmd, aDate)
{
    self._date = aDate;
    for (var i = 0; i < objj_msgSend(self._tiles, "count"); i++)
    {
        var tile = objj_msgSend(self._tiles, "objectAtIndex:", i),
            year = objj_msgSend(CPString, "stringWithFormat:", "%i", self._date.getUTCFullYear() - 11 + i);
        objj_msgSend(tile, "setTitle:", year);
    }
}
,["void","CPDate"]), new objj_method(sel_getUid("tileSize"), function $_LPContentYearCalendar__tileSize(self, _cmd)
{
    var bounds = objj_msgSend(self, "bounds");
    return CGSizeMake(CGRectGetWidth(bounds) / 3, (CGRectGetHeight(bounds) / 4));
}
,["int"]), new objj_method(sel_getUid("tile"), function $_LPContentYearCalendar__tile(self, _cmd)
{
    var tiles = objj_msgSend(self, "subviews"),
        tileSize = objj_msgSend(self, "tileSize"),
        tileIndex = 0;
    if (objj_msgSend(tiles, "count") > 0)
    {
        for (var i = 0; i < 4; i++)
        {
            for (var j = 0; j < 3; j++)
            {
                var tileFrame = CGRectMake((j * tileSize.width), i * tileSize.height, tileSize.width, tileSize.height);
                objj_msgSend(tiles[tileIndex], "setFrame:", tileFrame);
                var year = objj_msgSend(CPString, "stringWithFormat:", "%i", objj_msgSend(CPDate, "date").getUTCFullYear() - 11 + (j +i*3));
                objj_msgSend(tiles[tileIndex], "setTitle:", year);
                tileIndex += 1;
            }
        }
    }
}
,["void"]), new objj_method(sel_getUid("indexOfTileAtPoint:"), function $_LPContentYearCalendar__indexOfTileAtPoint_(self, _cmd, aPoint)
{
    var tileSize = objj_msgSend(self, "tileSize");
    var rowIndex = FLOOR(aPoint.y / tileSize.height),
        columnIndex = FLOOR(aPoint.x / tileSize.width);
    if (columnIndex > 2)
        columnIndex = 2;
    else if (columnIndex < 0)
        columnIndex = 0;
    if (rowIndex > 3)
        rowIndex = 3;
    else if (rowIndex < 0)
        rowIndex = 0;
    var tileIndex = (rowIndex * 3) + columnIndex;
    if (tileIndex > 11)
        return 11;
    return tileIndex;
}
,["int","CGPoint"]), new objj_method(sel_getUid("mouseDown:"), function $_LPContentYearCalendar__mouseDown_(self, _cmd, anEvent)
{
    var locationInView = objj_msgSend(self, "convertPoint:fromView:", objj_msgSend(anEvent, "locationInWindow"), nil),
        tileIndex = objj_msgSend(self, "indexOfTileAtPoint:", locationInView),
        tile = objj_msgSend(objj_msgSend(self, "subviews"), "objectAtIndex:", tileIndex);
    objj_msgSend(self, "selectIndex:", tileIndex);
}
,["void","CPEvent"]), new objj_method(sel_getUid("selectIndex:"), function $_LPContentYearCalendar__selectIndex_(self, _cmd, anIndex)
{
    var tiles = objj_msgSend(self, "subviews"),
        tilesCount = objj_msgSend(tiles, "count");
    for (var i = 0; i < tilesCount; i++)
    {
        var tile = tiles[i];
        if (anIndex == i)
        {
            objj_msgSend(tile, "setSelected:", YES);
        }
        else
        {
            objj_msgSend(tile, "setSelected:", NO);
            objj_msgSend(tile, "setHighlighted:", NO);
        }
    }
    objj_msgSend(self._yearCalendar, "_didMakeSelection:", anIndex);
}
,["void","int"]), new objj_method(sel_getUid("highlightIndex:"), function $_LPContentYearCalendar__highlightIndex_(self, _cmd, anIndex)
{
    var tiles = objj_msgSend(self, "subviews"),
        tilesCount = objj_msgSend(tiles, "count");
    for (var i = 0; i < tilesCount; i++)
    {
        var tile = tiles[i];
        if (anIndex == i)
            objj_msgSend(tile, "setHighlighted:", YES);
        else
            objj_msgSend(tile, "setHighlighted:", NO);
    }
}
,["void","int"])]);
}
{var the_class = objj_allocateClassPair(CPControl, "_LPContentYearView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("isHighlighted"), new objj_ivar("isSelected"), new objj_ivar("_textField"), new objj_ivar("_yearCalendar")]);
       
       



       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isHighlighted"), function $_LPContentYearView__isHighlighted(self, _cmd)
{
return self.isHighlighted;
}
,["BOOL"]), new objj_method(sel_getUid("setHighlighted:"), function $_LPContentYearView__setHighlighted_(self, _cmd, newValue)
{
self.isHighlighted = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isSelected"), function $_LPContentYearView__isSelected(self, _cmd)
{
return self.isSelected;
}
,["BOOL"]), new objj_method(sel_getUid("setSelected:"), function $_LPContentYearView__setSelected_(self, _cmd, newValue)
{
self.isSelected = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("initWithFrame:withYearCalendar:"), function $_LPContentYearView__initWithFrame_withYearCalendar_(self, _cmd, aFrame, anYearCalendar)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("_LPContentYearView").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self, "setHitTests:", NO);
        self._textField = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(self._textField, "setAutoresizingMask:", CPViewMinXMargin | CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin);
        objj_msgSend(self, "addSubview:", self._textField);
        self._yearCalendar = anYearCalendar;
    }
    return self;
}
,["id","CGRect","LPMonthCalendar"]), new objj_method(sel_getUid("setSelected:"), function $_LPContentYearView__setSelected_(self, _cmd, shouldBeSelected)
{
    if (self.isSelected === shouldBeSelected)
        return;
    self.isSelected = shouldBeSelected;
    if (shouldBeSelected)
        objj_msgSend(self, "setThemeState:", CPThemeStateSelected);
    else
        objj_msgSend(self, "unsetThemeState:", CPThemeStateSelected);
}
,["void","BOOL"]), new objj_method(sel_getUid("setHighlighted:"), function $_LPContentYearView__setHighlighted_(self, _cmd, shouldBeHighlighted)
{
    if (self.isHighlighted === shouldBeHighlighted)
        return;
    self.isHighlighted = shouldBeHighlighted;
    if (shouldBeHighlighted)
        objj_msgSend(self, "setThemeState:", CPThemeStateHighlighted);
    else
        objj_msgSend(self, "unsetThemeState:", CPThemeStateHighlighted);
}
,["void","BOOL"]), new objj_method(sel_getUid("setTitle:"), function $_LPContentYearView__setTitle_(self, _cmd, aTitle)
{
    objj_msgSend(self._textField, "setStringValue:", aTitle);
    objj_msgSend(self._textField, "sizeToFit");
    var bounds = objj_msgSend(self, "bounds");
    objj_msgSend(self._textField, "setCenter:", CGPointMake(CGRectGetMidX(bounds), CGRectGetMidY(bounds)));
}
,["void","CPString"]), new objj_method(sel_getUid("layoutSubviews"), function $_LPContentYearView__layoutSubviews(self, _cmd)
{
    var themeState = objj_msgSend(self, "themeState");
    objj_msgSend(self, "setBackgroundColor:", objj_msgSend(self._yearCalendar, "valueForThemeAttribute:inState:", "tile-bezel-color", themeState))
    objj_msgSend(self._textField, "setFont:", objj_msgSend(self._yearCalendar, "valueForThemeAttribute:inState:", "tile-font", themeState));
    objj_msgSend(self._textField, "setTextColor:", objj_msgSend(self._yearCalendar, "valueForThemeAttribute:inState:", "tile-text-color", themeState));
    objj_msgSend(self._textField, "setTextShadowColor:", objj_msgSend(self._yearCalendar, "valueForThemeAttribute:inState:", "tile-text-shadow-color", themeState));
    objj_msgSend(self._textField, "setTextShadowOffset:", objj_msgSend(self._yearCalendar, "valueForThemeAttribute:inState:", "tile-text-shadow-offset", themeState));
}
,["void"])]);
}p;18;LPURLPostRequest.jt;1703;@STATIC;1.0;I;25;Foundation/CPURLRequest.jt;1654;objj_executeFile("Foundation/CPURLRequest.j", NO);
{var the_class = objj_allocateClassPair(CPURLRequest, "LPURLPostRequest"),
meta_class = the_class.isa;


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithURL:"), function $LPURLPostRequest__initWithURL_(self, _cmd, aURL)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPURLPostRequest").super_class }, "initWithURL:", aURL))
    {
        objj_msgSend(self, "setHTTPMethod:", "POST");
        objj_msgSend(self, "setValue:forHTTPHeaderField:", "application/x-www-form-urlencoded", "Content-Type");
    }
    return self;
}
,["void","CPURL"]), new objj_method(sel_getUid("setContent:"), function $LPURLPostRequest__setContent_(self, _cmd, anObject)
{
    objj_msgSend(self, "setContent:escape:", anObject, YES);
}
,["void","id"]), new objj_method(sel_getUid("setContent:escape:"), function $LPURLPostRequest__setContent_escape_(self, _cmd, anObject, shouldEscape)
{
    var content = "";
    for (key in anObject)
        content = objj_msgSend(content, "stringByAppendingString:", objj_msgSend(CPString, "stringWithFormat:", "%s=%s&", key, shouldEscape ? encodeURIComponent(anObject[key]) : anObject[key]));
    content = objj_msgSend(content, "substringToIndex:", objj_msgSend(content, "length") - 1);
    objj_msgSend(self, "setHTTPBody:", content);
}
,["void","id","BOOL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("requestWithURL:"), function $LPURLPostRequest__requestWithURL_(self, _cmd, aURL)
{
    return objj_msgSend(objj_msgSend(self, "alloc"), "initWithURL:", aURL);
}
,["id","CPURL"])]);
}p;17;LPViewAnimation.jt;14039;@STATIC;1.0;I;21;Foundation/CPObject.jI;20;AppKit/CPAnimation.jt;13968;objj_executeFile("Foundation/CPObject.j", NO);
objj_executeFile("AppKit/CPAnimation.j", NO);
LPCSSAnimationsAreAvailable = NO;
var _browserPrefixes = ["webkit", "Moz", "moz", "o", "ms"],
    _tmpDOMElement = nil;
LPFadeAnimationKey = "LPFadeAnimation";
LPFrameAnimationKey = "LPFrameAnimation";
LPOriginAnimationKey = "LPOriginAnimation";
LPTestCSSFeature = function( aFeature)
{
    if (typeof document === "undefined")
        return NO;
    if (!_tmpDOMElement)
    {
        _tmpDOMElement = document.createElement("div");
        if (!_tmpDOMElement.style)
            return NO;
    }
    var properties = [aFeature];
    for (var i = 0; i < _browserPrefixes.length; i++)
        properties.push(_browserPrefixes[i] + aFeature);
    for (var i = 0; i < properties.length; i++)
    {
        if (typeof _tmpDOMElement.style[properties[i]] !== "undefined")
            return YES;
    }
    return NO;
}
LPCSSAnimationsAreAvailable = LPTestCSSFeature("AnimationName");
var appendCSSValueToKey = function( anElement, aValue, aKey, shouldAppend)
{
    if (shouldAppend)
        anElement.style[aKey] = anElement.style[aKey] + ", " + aValue;
    else
        anElement.style[aKey] = aValue;
}
{var the_class = objj_allocateClassPair(CPAnimation, "LPViewAnimation"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_isAnimating"), new objj_ivar("_viewAnimations"), new objj_ivar("_animationDidEndTimeout"), new objj_ivar("_shouldUseCSSAnimations"), new objj_ivar("_c1"), new objj_ivar("_c2")]);








objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("viewAnimations"), function $LPViewAnimation__viewAnimations(self, _cmd)
{
return self._viewAnimations;
}
,["CPArray"]), new objj_method(sel_getUid("setViewAnimations:"), function $LPViewAnimation__setViewAnimations_(self, _cmd, newValue)
{
self._viewAnimations = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("shouldUseCSSAnimations"), function $LPViewAnimation__shouldUseCSSAnimations(self, _cmd)
{
return self._shouldUseCSSAnimations;
}
,["BOOL"]), new objj_method(sel_getUid("setShouldUseCSSAnimations:"), function $LPViewAnimation__setShouldUseCSSAnimations_(self, _cmd, newValue)
{
self._shouldUseCSSAnimations = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("initWithViewAnimations:"), function $LPViewAnimation__initWithViewAnimations_(self, _cmd, viewAnimations)
{
    if (self = objj_msgSend(self, "initWithDuration:animationCurve:", 1.0, CPAnimationLinear))
    {
        self._isAnimating = NO;
        self._viewAnimations = viewAnimations;
        self._shouldUseCSSAnimations = NO;
    }
    return self;
}
,["void","CPArray"]), new objj_method(sel_getUid("setAnimationCurve:"), function $LPViewAnimation__setAnimationCurve_(self, _cmd, anAnimationCurve)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPViewAnimation").super_class }, "setAnimationCurve:", anAnimationCurve);
    self._c1 = [];
    self._c2 = [];
    objj_msgSend(self._timingFunction, "getControlPointAtIndex:values:", 1, self._c1);
    objj_msgSend(self._timingFunction, "getControlPointAtIndex:values:", 2, self._c2);
}
,["void","id"]), new objj_method(sel_getUid("startAnimation"), function $LPViewAnimation__startAnimation(self, _cmd)
{
    if (LPCSSAnimationsAreAvailable && self._shouldUseCSSAnimations)
    {
        if (self._isAnimating)
            return;
        self._isAnimating = YES;
        var i = self._viewAnimations.length;
        while (i--)
        {
            var viewAnimation = self._viewAnimations[i],
                target = viewAnimation["target"];
            objj_msgSend(self, "target:setCSSAnimationDuration:", target, self._duration);
            objj_msgSend(self, "target:setCSSAnimationCurve:", target, self._animationCurve);
            var x = viewAnimation["animations"].length;
            while (x--)
            {
                var animation = viewAnimation["animations"][x],
                    kind = animation[0],
                    start = animation[1],
                    end = animation[2];
                if (kind === LPFadeAnimationKey)
                {
                    objj_msgSend(target, "setAlphaValue:", start);
                    objj_msgSend(self, "target:addCSSAnimationPropertyForKey:append:", target, kind, x !== 0);
                    setTimeout(function(_target, _end){
                        _target._DOMElement.style["-webkit-transform"] = "translate3d(0px, 0px, 0px)";
                        objj_msgSend(_target, "setAlphaValue:", _end);
                    }, 0, target, end);
                }
                else if (kind === LPOriginAnimationKey)
                {
                    if (!CGPointEqualToPoint(start, end))
                    {
                        objj_msgSend(target, "setFrameOrigin:", start);
                        objj_msgSend(self, "target:addCSSAnimationPropertyForKey:append:", target, kind, x !== 0);
                        setTimeout(function(_target, _start, _end){
                            var x = _end.x - _start.x,
                                y = _end.y - _start.y;
                            _target._DOMElement.style["-webkit-transform"] = "translate3d(" + x +"px, " + y + "px, 0px)";
                            setTimeout(function(){
                                objj_msgSend(self, "_clearCSS");
                                _target._DOMElement.style["-webkit-transform"] = "translate3d(0px, 0px, 0px)";
                                objj_msgSend(_target, "setFrameOrigin:", _end);
                            }, (1000 * self._duration) + 100);
                        }, 0, target, start, end);
                    }
                }
                else if (kind === LPFrameAnimationKey)
                {
                    CPLog.error("LPViewAnimation does not currently support CSS frame animations. This should fall back to the regular javascript animation.")
                }
            }
        }
        if (self._animationDidEndTimeout)
            clearTimeout(self._animationDidEndTimeout);
        self._animationDidEndTimeout = setTimeout(function(animation){
            self._isAnimating = NO;
            objj_msgSend(animation, "_clearCSS");
            if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("animationDidEnd:")))
                objj_msgSend(self._delegate, "animationDidEnd:", animation);
        }, (1000 * self._duration) + 100, self);
    }
    else
    {
        var i = self._viewAnimations.length;
        while (i--)
        {
            var viewAnimation = self._viewAnimations[i],
                target = viewAnimation["target"];
            var x = viewAnimation["animations"].length;
            while (x--)
            {
                var animation = viewAnimation["animations"][x],
                    kind = animation[0],
                    start = animation[1],
                    end = animation[2];
                switch (kind)
                {
                    case LPFadeAnimationKey: objj_msgSend(target, "setAlphaValue:", start);
                                               break;
                    case LPOriginAnimationKey: objj_msgSend(target, "setFrameOrigin:", start);
                                               break;
                    case LPFrameAnimationKey: objj_msgSend(target, "setFrame:", start);
                                               break;
                }
            }
        }
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPViewAnimation").super_class }, "startAnimation");
    }
}
,["void"]), new objj_method(sel_getUid("setCurrentProgress:"), function $LPViewAnimation__setCurrentProgress_(self, _cmd, aProgress)
{
    self._progress = aProgress;
    var value = CubicBezierAtTime(self._progress, self._c1[0], self._c1[1], self._c2[0], self._c2[1], self._duration),
        i = self._viewAnimations.length;
    while (i--)
    {
        var viewAnimation = self._viewAnimations[i],
            target = viewAnimation["target"],
            x = viewAnimation["animations"].length;
        while (x--)
        {
            var animation = viewAnimation["animations"][x],
                kind = animation[0],
                start = animation[1],
                end = animation[2];
            switch (kind)
            {
                case LPFadeAnimationKey: objj_msgSend(target, "setAlphaValue:", (value * (end - start)) + start);
                                           break;
                case LPOriginAnimationKey: objj_msgSend(target, "setFrameOrigin:", CGPointMake(start.x + (value * (end.x - start.x)),
                                                                              start.y + (value * (end.y - start.y))));
                                           break;
                case LPFrameAnimationKey: objj_msgSend(target, "setFrame:", CGRectMake(start.origin.x + (value * (end.origin.x - start.origin.x)),
                                                                       start.origin.y + (value * (end.origin.y - start.origin.y)),
                                                                       start.size.width + (value * (end.size.width - start.size.width)),
                                                                       start.size.height + (value * (end.size.height - start.size.height))))
            }
        }
    }
}
,["void","float"]), new objj_method(sel_getUid("isAnimating"), function $LPViewAnimation__isAnimating(self, _cmd)
{
    if (LPCSSAnimationsAreAvailable && self._shouldUseCSSAnimations)
        return self._isAnimating;
    else
        return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPViewAnimation").super_class }, "isAnimating");
}
,["BOOL"]), new objj_method(sel_getUid("stopAnimation"), function $LPViewAnimation__stopAnimation(self, _cmd)
{
    if (LPCSSAnimationsAreAvailable && self._shouldUseCSSAnimations)
    {
    }
    else
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("LPViewAnimation").super_class }, "stopAnimation");
}
,["void"]), new objj_method(sel_getUid("_clearCSS"), function $LPViewAnimation___clearCSS(self, _cmd)
{
    for (var i = 0; i < self._viewAnimations.length; i++)
        self._viewAnimations[i]["target"]._DOMElement.style["-webkit-transition-property"] = "none";
}
,["void"]), new objj_method(sel_getUid("target:setCSSAnimationDuration:"), function $LPViewAnimation__target_setCSSAnimationDuration_(self, _cmd, aTarget, aDuration)
{
    aTarget._DOMElement.style["-webkit-transition-duration"] = aDuration + "s";
}
,["void","id","CPTimeInterval"]), new objj_method(sel_getUid("target:setCSSAnimationCurve:"), function $LPViewAnimation__target_setCSSAnimationCurve_(self, _cmd, aTarget, anAnimationCurve)
{
    var curve = nil;
    switch (anAnimationCurve)
    {
        case CPAnimationLinear: curve = "linear";
                                   break;
        case CPAnimationEaseIn: curve = "ease-in";
                                   break;
        case CPAnimationEaseOut: curve = "ease-out";
                                   break;
        case CPAnimationEaseInOut: curve = "ease-in-out";
                                   break;
    }
    aTarget._DOMElement.style["-webkit-transition-timing-function"] = curve;
}
,["void","id","id"]), new objj_method(sel_getUid("target:addCSSAnimationPropertyForKey:append:"), function $LPViewAnimation__target_addCSSAnimationPropertyForKey_append_(self, _cmd, aTarget, aKey, shouldAppend)
{
    var CSSValue = nil;
    switch (aKey)
    {
        case LPFadeAnimationKey: CSSValue = "-webkit-transform, opacity";
                                   break;
        case LPOriginAnimationKey: CSSValue = "-webkit-transform";
                                   break;
        case LPFrameAnimationKey: CSSValue = "top, left, width, height";
                                   break;
        default: CSSValue = "none";
    }
    appendCSSValueToKey(aTarget._DOMElement, CSSValue, "-webkit-transition-property", shouldAppend);
}
,["void","id","CPString","BOOL"])]);
}
var CubicBezierAtTime = function(t,p1x,p1y,p2x,p2y,duration)
{
    var ax = 0,
        bx = 0,
        cx = 0,
        ay = 0,
        by = 0,
        cy = 0;
    sampleCurveX = function(t)
    {
        return ((ax * t + bx) * t + cx) * t;
    };
    sampleCurveY = function(t)
    {
        return ((ay * t + by) * t + cy) * t;
    };
    sampleCurveDerivativeX = function(t)
    {
        return (3.0 * ax * t + 2.0 * bx) * t + cx;
    };
    solveEpsilon = function(duration)
    {
        return 1.0 / (200.0 * duration);
    };
    solve = function(x,epsilon)
    {
        return sampleCurveY(solveCurveX(x, epsilon));
    };
    solveCurveX = function(x,epsilon)
    {
        var t0,
            t1,
            t2,
            x2,
            d2,
            i;
        fabs = function(n)
        {
            if (n >= 0)
                return n;
            else
                return 0 - n;
        };
        for (t2 = x, i = 0; i < 8; i++)
        {
            x2 = sampleCurveX(t2) - x;
            if (fabs(x2) < epsilon)
                return t2;
            d2 = sampleCurveDerivativeX(t2);
            if (fabs(d2) < 1e-6)
                break
            t2 = t2 - x2 / d2;
        }
        t0 = 0.0;
        t1 = 1.0;
        t2 = x;
        if (t2 < t0)
            return t0;
        if (t2 > t1)
            return t1;
        while (t0 < t1)
        {
            x2 = sampleCurveX(t2);
            if (fabs(x2 - x) < epsilon)
                return t2;
            if (x > x2)
                t0 = t2;
            else
                t1 = t2;
            t2 = (t1 - t0) * 0.5 + t0;
        }
        return t2;
    };
    cx = 3.0 * p1x;
    bx = 3.0 * (p2x - p1x) - cx;
    ax = 1.0 - cx - bx;
    cy = 3.0 * p1y;
    by = 3.0 * (p2y - p1y) - cy;
    ay = 1.0 - cy - by;
    return solve(t, solveEpsilon(duration));
}e;