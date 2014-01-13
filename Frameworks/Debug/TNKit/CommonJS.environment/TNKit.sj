@STATIC;1.0;p;9;TNAlert.jt;5448;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPAlert.jt;5380;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPAlert.j", NO);
{var the_class = objj_allocateClassPair(CPAlert, "TNAlert"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_actions"), new objj_ivar("_helpTarget"), new objj_ivar("_target"), new objj_ivar("_userInfo"), new objj_ivar("_helpAction")]);




       
       

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("actions"), function $TNAlert__actions(self, _cmd)
{
return self._actions;
}
,["CPArray"]), new objj_method(sel_getUid("_setActions:"), function $TNAlert___setActions_(self, _cmd, newValue)
{
self._actions = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("helpTarget"), function $TNAlert__helpTarget(self, _cmd)
{
return self._helpTarget;
}
,["id"]), new objj_method(sel_getUid("_setHelpTarget:"), function $TNAlert___setHelpTarget_(self, _cmd, newValue)
{
self._helpTarget = newValue;
}
,["void","id"]), new objj_method(sel_getUid("target"), function $TNAlert__target(self, _cmd)
{
return self._target;
}
,["id"]), new objj_method(sel_getUid("setTarget:"), function $TNAlert__setTarget_(self, _cmd, newValue)
{
self._target = newValue;
}
,["void","id"]), new objj_method(sel_getUid("userInfo"), function $TNAlert__userInfo(self, _cmd)
{
return self._userInfo;
}
,["id"]), new objj_method(sel_getUid("setUserInfo:"), function $TNAlert__setUserInfo_(self, _cmd, newValue)
{
self._userInfo = newValue;
}
,["void","id"]), new objj_method(sel_getUid("helpAction"), function $TNAlert__helpAction(self, _cmd)
{
return self._helpAction;
}
,["SEL"]), new objj_method(sel_getUid("_setHelpAction:"), function $TNAlert___setHelpAction_(self, _cmd, newValue)
{
self._helpAction = newValue;
}
,["void","SEL"]), new objj_method(sel_getUid("initWithMessage:informative:target:actions:"), function $TNAlert__initWithMessage_informative_target_actions_(self, _cmd, aTitle, aMessage, aTarget, someActions)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNAlert").super_class }, "init"))
    {
        self._actions = someActions;
        self._target = aTarget;
        objj_msgSend(self, "setMessageText:", aTitle);
        objj_msgSend(self, "setInformativeText:", aMessage);
        objj_msgSend(self, "setDelegate:", self);
        objj_msgSend(self, "setAlertStyle:", CPInformationalAlertStyle);
        for (var i = 0; i < objj_msgSend(self._actions, "count"); i++)
            objj_msgSend(self, "addButtonWithTitle:", objj_msgSend(objj_msgSend(self._actions, "objectAtIndex:", i), "objectAtIndex:", 0));
    }
    return self;
}
,["TNAlert","CPString","CPString","id","CPArray"]), new objj_method(sel_getUid("setHelpTarget:action:"), function $TNAlert__setHelpTarget_action_(self, _cmd, aTarget, anAction)
{
    if (aTarget && anAction)
    {
        self._helpTarget = aTarget;
        self._helpAction = anAction;
        objj_msgSend(self, "setShowsHelp:", YES);
    }
    else
    {
        self._helpTarget = nil;
        self._helpAction = nil;
        objj_msgSend(self, "setShowsHelp:", NO);
    }
}
,["void","id","SEL"]), new objj_method(sel_getUid("beginSheetModalForWindow:"), function $TNAlert__beginSheetModalForWindow_(self, _cmd, aWindow)
{
    objj_msgSend(self, "beginSheetModalForWindow:", aWindow);
}
,["void","CPWindow"]), new objj_method(sel_getUid("alertDidEnd:returnCode:"), function $TNAlert__alertDidEnd_returnCode_(self, _cmd, theAlert, returnCode)
{
    var selector = objj_msgSend(objj_msgSend(self._actions, "objectAtIndex:", returnCode), "objectAtIndex:", 1);
    if (objj_msgSend(self._target, "respondsToSelector:", selector))
        objj_msgSend(self._target, "performSelector:withObject:", selector, self._userInfo);
}
,["void","CPAlert","int"]), new objj_method(sel_getUid("alertShowHelp:"), function $TNAlert__alertShowHelp_(self, _cmd, anAlert)
{
    if (objj_msgSend(self._helpTarget, "respondsToSelector:", self._helpAction))
        objj_msgSend(self._helpTarget, "performSelector:withObject:", self._helpAction, anAlert);
}
,["void","CPAlert"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("showAlertWithMessage:informative:"), function $TNAlert__showAlertWithMessage_informative_(self, _cmd, aTitle, aMessage)
{
    var tnalert = objj_msgSend(objj_msgSend(TNAlert, "alloc"), "initWithMessage:informative:target:actions:", aTitle, aMessage, nil, [["Ok", nil]]);
    objj_msgSend(tnalert, "runModal");
}
,["void","CPString","CPString"]), new objj_method(sel_getUid("showAlertWithMessage:informative:style:"), function $TNAlert__showAlertWithMessage_informative_style_(self, _cmd, aTitle, aMessage, aStyle)
{
    var tnalert = objj_msgSend(objj_msgSend(TNAlert, "alloc"), "initWithMessage:informative:target:actions:", aTitle, aMessage, nil, [["Ok", nil]]);
    objj_msgSend(tnalert, "setAlertStyle:", aStyle);
    objj_msgSend(tnalert, "runModal");
}
,["void","CPString","CPString","int"]), new objj_method(sel_getUid("alertWithMessage:informative:target:actions:"), function $TNAlert__alertWithMessage_informative_target_actions_(self, _cmd, aTitle, aMessage, aTarget, someActions)
{
    var tnalert = objj_msgSend(objj_msgSend(TNAlert, "alloc"), "initWithMessage:informative:target:actions:", aTitle, aMessage, aTarget, someActions);
    return tnalert;
}
,["void","CPString","CPString","id","CPArray"])]);
}p;13;TNAnimation.jt;964;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPAnimation.jt;893;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPAnimation.j", NO);
{var the_class = objj_allocateClassPair(CPAnimation, "TNAnimation"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("userInfo")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("userInfo"), function $TNAnimation__userInfo(self, _cmd)
{
return self.userInfo;
}
,["id"]), new objj_method(sel_getUid("setUserInfo:"), function $TNAnimation__setUserInfo_(self, _cmd, newValue)
{
self.userInfo = newValue;
}
,["void","id"]), new objj_method(sel_getUid("setCurrentProgress:"), function $TNAnimation__setCurrentProgress_(self, _cmd, aProgress)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNAnimation").super_class }, "setCurrentProgress:", aProgress);
    objj_msgSend(self, "currentValue");
}
,["void","float"])]);
}p;12;TNFlipView.jt;16631;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jt;16563;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
var CSSProperties = {
        "webkit":
        {
            "transform": "WebkitTransform",
            "backfaceVisibility": "WebkitBackfaceVisibility",
            "perspective": "WebkitPerspective",
            "transformStyle": "WebkitTransformStyle",
            "transition": "WebkitTransition",
            "transitionTimingFunction": "WebkitTransitionTimingFunction",
            "transitionEnd": "webkitTransitionEnd"
        },
        "gecko":
        {
            "transform": "MozTransform",
            "backfaceVisibility": "MozBackfaceVisibility",
            "perspective": "MozPerspective",
            "transformStyle": "MozTransformStyle",
            "transition": "MozTransition",
            "transitionTimingFunction": "MozTransitionTimingFunction",
            "transitionEnd": "transitionend"
        }
    };
TNFlipViewAnimationStyleRotate = 1;
TNFlipViewAnimationStyleTranslate = 2;
TNFlipViewAnimationStyleTranslateHorizontal = 1;
TNFlipViewAnimationStyleTranslateVertical = 2;
try
{
    TNFlipViewCurrentBrowserEngine = (typeof(document.body.style.WebkitTransform) != "undefined") ? "webkit" : "gecko";
}
catch(e)
{
    TNFlipViewCurrentBrowserEngine = "gecko";
}
{var the_class = objj_allocateClassPair(CPView, "TNFlipView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_flipped"), new objj_ivar("_backView"), new objj_ivar("_frontView"), new objj_ivar("_animationDuration"), new objj_ivar("_animationDirection"), new objj_ivar("_animationStyle"), new objj_ivar("_currentBackViewContent"), new objj_ivar("_currentFrontViewContent")]);
       
       




       
       


       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isFlipped"), function $TNFlipView__isFlipped(self, _cmd)
{
return self._flipped;
}
,["BOOL"]), new objj_method(sel_getUid("_setFlipped:"), function $TNFlipView___setFlipped_(self, _cmd, newValue)
{
self._flipped = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("backView"), function $TNFlipView__backView(self, _cmd)
{
return self._backView;
}
,["CPView"]), new objj_method(sel_getUid("setBackView:"), function $TNFlipView__setBackView_(self, _cmd, newValue)
{
self._backView = newValue;
}
,["void","CPView"]), new objj_method(sel_getUid("frontView"), function $TNFlipView__frontView(self, _cmd)
{
return self._frontView;
}
,["CPView"]), new objj_method(sel_getUid("setFrontView:"), function $TNFlipView__setFrontView_(self, _cmd, newValue)
{
self._frontView = newValue;
}
,["void","CPView"]), new objj_method(sel_getUid("animationDuration"), function $TNFlipView__animationDuration(self, _cmd)
{
return self._animationDuration;
}
,["float"]), new objj_method(sel_getUid("_setAnimationDuration:"), function $TNFlipView___setAnimationDuration_(self, _cmd, newValue)
{
self._animationDuration = newValue;
}
,["void","float"]), new objj_method(sel_getUid("animationDirection"), function $TNFlipView__animationDirection(self, _cmd)
{
return self._animationDirection;
}
,["int"]), new objj_method(sel_getUid("_setAnimationDirection:"), function $TNFlipView___setAnimationDirection_(self, _cmd, newValue)
{
self._animationDirection = newValue;
}
,["void","int"]), new objj_method(sel_getUid("animationStyle"), function $TNFlipView__animationStyle(self, _cmd)
{
return self._animationStyle;
}
,["int"]), new objj_method(sel_getUid("_setAnimationStyle:"), function $TNFlipView___setAnimationStyle_(self, _cmd, newValue)
{
self._animationStyle = newValue;
}
,["void","int"]), new objj_method(sel_getUid("initWithFrame:"), function $TNFlipView__initWithFrame_(self, _cmd, aRect)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNFlipView").super_class }, "initWithFrame:", aRect))
    {
        self._animationDuration = 0.5;
        self._flipped = NO;
        self._animationDirection = TNFlipViewAnimationStyleTranslateHorizontal;
        self._backView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", objj_msgSend(self, "bounds"));
        self._frontView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", objj_msgSend(self, "bounds"));
        self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].backfaceVisibility] = "hidden";
        self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].perspective] = 1000;
        self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transformStyle] = "preserve-3d";
        self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transitionTimingFunction] = "ease";
        self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].backfaceVisibility] = "hidden";
        self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].perspective] = 1000;
        self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transformStyle] = "preserve-3d";
        self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transitionTimingFunction] = "ease";
        objj_msgSend(self, "setAnimationStyle:direction:", TNFlipViewAnimationStyleRotate, TNFlipViewAnimationStyleTranslateHorizontal);
        objj_msgSend(self._backView, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
        objj_msgSend(self._frontView, "setAutoresizingMask:", CPViewHeightSizable | CPViewWidthSizable);
        objj_msgSend(self, "addSubview:", self._backView);
        objj_msgSend(self, "addSubview:", self._frontView);
    }
    return self;
}
,["TNFlipView","CGRect"]), new objj_method(sel_getUid("setAnimationStyle:direction:"), function $TNFlipView__setAnimationStyle_direction_(self, _cmd, anAnimationStyle, aDirection)
{
    if ((anAnimationStyle == self._animationStyle) && (aDirection == self._animationDirection))
        return;
    self._animationStyle = anAnimationStyle;
    self._animationDirection = aDirection || (self._animationDirection ? self._animationDirection : TNFlipViewAnimationStyleTranslateHorizontal);
    switch (self._animationStyle)
    {
        case TNFlipViewAnimationStyleTranslate:
            var CSSFunction = (self._animationDirection == TNFlipViewAnimationStyleTranslateHorizontal) ? "translateX" : "translateY",
                offset = (self._animationDirection == TNFlipViewAnimationStyleTranslateHorizontal) ? objj_msgSend(self, "frameSize").width : objj_msgSend(self, "frameSize").height;
            if (self._flipped)
            {
                self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = CSSFunction + "(0px)";
                self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = CSSFunction + "(-" + offset + "px)";
            }
            else
            {
                self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = CSSFunction + "(0px)";
                self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = CSSFunction + "(" + offset + "px)";
            }
            break;
        case TNFlipViewAnimationStyleRotate:
            if (self._flipped)
            {
                self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = "rotateY(180deg)";
                self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = "rotateY(0deg)";
            }
            else
            {
                self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = "rotateY(0deg)";
                self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = "rotateY(180deg)";
            }
            break;
    }
}
,["void","int","int"]), new objj_method(sel_getUid("setAnimationDuration:"), function $TNFlipView__setAnimationDuration_(self, _cmd, aDuration)
{
    if (aDuration == self._animationDuration)
        return;
    self._animationDuration = aDuration;
}
,["void","float"]), new objj_method(sel_getUid("setBackView:"), function $TNFlipView__setBackView_(self, _cmd, aView)
{
    if (self._currentBackViewContent == aView)
        return;
    if (self._currentBackViewContent)
        objj_msgSend(self._currentBackViewContent, "removeFromSuperview");
    if (aView == nil)
    {
        self._currentBackViewContent = nil;
        return;
    }
    self._currentBackViewContent = aView;
    objj_msgSend(self._currentBackViewContent, "setFrame:", objj_msgSend(self, "bounds"));
    objj_msgSend(self._backView, "addSubview:", aView);
}
,["void","CPView"]), new objj_method(sel_getUid("setFrontView:"), function $TNFlipView__setFrontView_(self, _cmd, aView)
{
    if (self._currentFrontViewContent == aView)
        return;
    if (self._currentFrontViewContent)
        objj_msgSend(self._currentFrontViewContent, "removeFromSuperview");
    if (aView == nil)
    {
        self._currentFrontViewContent = nil;
        return;
    }
    self._currentFrontViewContent = aView;
    objj_msgSend(self._currentFrontViewContent, "setFrame:", objj_msgSend(self, "bounds"));
    objj_msgSend(self._frontView, "addSubview:", aView);
}
,["void","CPView"]), new objj_method(sel_getUid("showFront"), function $TNFlipView__showFront(self, _cmd)
{
    self._flipped = NO;
    try
    {
        self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transition] = self._animationDuration + "s";
        self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transition] = self._animationDuration + "s";
        self._frontView._DOMElement.addEventListener(CSSProperties[TNFlipViewCurrentBrowserEngine].transitionEnd, function(e){
            objj_msgSend(self._backView, "removeFromSuperview");
            objj_msgSend(self._frontView, "removeFromSuperview");
            objj_msgSend(self, "addSubview:", self._backView);
            objj_msgSend(self, "addSubview:", self._frontView);
            self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transition] = "0s";
            self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transition] = "0s";
            this[CSSProperties[TNFlipViewCurrentBrowserEngine].transitionEnd] = nil;
        }, YES);
        if (TNFlipViewCurrentBrowserEngine == "gecko")
            self._animationStyle = TNFlipViewAnimationStyleTranslate;
        switch (self._animationStyle)
        {
            case TNFlipViewAnimationStyleTranslate:
                var CSSFunction = (self._animationDirection == TNFlipViewAnimationStyleTranslateHorizontal) ? "translateX" : "translateY",
                    offset = (self._animationDirection == TNFlipViewAnimationStyleTranslateHorizontal) ? objj_msgSend(self, "frameSize").width : objj_msgSend(self, "frameSize").height;
                self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = CSSFunction + "(0px)";
                self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = CSSFunction + "(" + offset + "px)";
                break;
            case TNFlipViewAnimationStyleRotate:
                self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = "rotateY(0deg)";
                self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = "rotateY(180deg)";
                break;
        }
    }
    catch(e)
    {
        objj_msgSend(self._backView, "removeFromSuperview");
        objj_msgSend(self._frontView, "removeFromSuperview");
        objj_msgSend(self, "addSubview:", self._backView);
        objj_msgSend(self, "addSubview:", self._frontView);
    }
}
,["void"]), new objj_method(sel_getUid("showBack"), function $TNFlipView__showBack(self, _cmd)
{
    self._flipped = YES;
    try
    {
        self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transition] = self._animationDuration + "s";
        self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transition] = self._animationDuration + "s";
        self._frontView._DOMElement.addEventListener(CSSProperties[TNFlipViewCurrentBrowserEngine].transitionEnd, function(e){
            objj_msgSend(self._backView, "removeFromSuperview");
            objj_msgSend(self._frontView, "removeFromSuperview");
            objj_msgSend(self, "addSubview:", self._frontView);
            objj_msgSend(self, "addSubview:", self._backView);
            self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transition] = "0s";
            self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transition] = "0s";
            this.webkitTransitionEnd = nil;
        }, YES);
        if (TNFlipViewCurrentBrowserEngine == "gecko")
            self._animationStyle = TNFlipViewAnimationStyleTranslate;
        switch (self._animationStyle)
        {
            case TNFlipViewAnimationStyleTranslate:
                var CSSFunction = (self._animationDirection == TNFlipViewAnimationStyleTranslateHorizontal) ? "translateX" : "translateY",
                    offset = (self._animationDirection == TNFlipViewAnimationStyleTranslateHorizontal) ? objj_msgSend(self, "frameSize").width : objj_msgSend(self, "frameSize").height;
                self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = CSSFunction + "(-" + offset + "px)";
                self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = CSSFunction + "(0px)";
                break;
            case TNFlipViewAnimationStyleRotate:
                self._frontView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = "rotateY(180deg)";
                self._backView._DOMElement.style[CSSProperties[TNFlipViewCurrentBrowserEngine].transform] = "rotateY(0deg)";
                break;
        }
    }
    catch(e)
    {
        objj_msgSend(self._backView, "removeFromSuperview");
        objj_msgSend(self._frontView, "removeFromSuperview");
        objj_msgSend(self, "addSubview:", self._frontView);
        objj_msgSend(self, "addSubview:", self._backView);
    }
}
,["void"]), new objj_method(sel_getUid("flip:"), function $TNFlipView__flip_(self, _cmd, aSender)
{
    if (self._flipped)
        objj_msgSend(self, "showFront");
    else
        objj_msgSend(self, "showBack");
}
,["id","id"])]);
}
{
var the_class = objj_getClass("TNFlipView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNFlipView\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $TNFlipView__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNFlipView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self._flipped = objj_msgSend(aCoder, "decodeObjectForKey:", "_flipped");
        self._backView = objj_msgSend(aCoder, "decodeObjectForKey:", "_backView");
        self._frontView = objj_msgSend(aCoder, "decodeObjectForKey:", "_frontView");
        self._animationDuration = objj_msgSend(aCoder, "decodeObjectForKey:", "_animationDuration");
        self._currentBackViewContent = objj_msgSend(aCoder, "decodeObjectForKey:", "_currentBackViewContent");
        self._currentFrontViewContent = objj_msgSend(aCoder, "decodeObjectForKey:", "_currentFrontViewContent");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNFlipView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNFlipView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self._flipped, "_flipped");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._backView, "_backView");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._frontView, "_frontView");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._animationDuration, "_animationDuration");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._currentBackViewContent, "_currentBackViewContent");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._currentFrontViewContent, "_currentFrontViewContent");
}
,["void","CPCoder"])]);
}p;7;TNKit.jt;1044;@STATIC;1.0;i;9;TNAlert.ji;13;TNAnimation.ji;12;TNFlipView.ji;16;TNMessageBoard.ji;15;TNMessageView.ji;25;TNOutlineViewDataSource.ji;21;TNRangeSelectorView.ji;13;TNStackView.ji;13;TNSwipeView.ji;23;TNTableViewDataSource.ji;27;TNTableViewLazyDataSource.ji;11;TNTabView.ji;20;TNTextFieldStepper.ji;11;TNToolbar.ji;19;TNUIKitScrollView.ji;10;TNWorker.jt;689;objj_executeFile("TNAlert.j", YES);
objj_executeFile("TNAnimation.j", YES);
objj_executeFile("TNFlipView.j", YES);
objj_executeFile("TNMessageBoard.j", YES);
objj_executeFile("TNMessageView.j", YES);
objj_executeFile("TNOutlineViewDataSource.j", YES);
objj_executeFile("TNRangeSelectorView.j", YES);
objj_executeFile("TNStackView.j", YES);
objj_executeFile("TNSwipeView.j", YES);
objj_executeFile("TNTableViewDataSource.j", YES);
objj_executeFile("TNTableViewLazyDataSource.j", YES);
objj_executeFile("TNTabView.j", YES);
objj_executeFile("TNTextFieldStepper.j", YES);
objj_executeFile("TNToolbar.j", YES);
objj_executeFile("TNUIKitScrollView.j", YES);
objj_executeFile("TNWorker.j", YES);p;16;TNMessageBoard.jt;5193;@STATIC;1.0;I;23;Foundation/Foundation.jI;22;AppKit/CPTableColumn.jI;20;AppKit/CPTableView.ji;15;TNMessageView.jt;5074;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPTableColumn.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("TNMessageView.j", YES);
{var the_class = objj_allocateClassPair(CPTableView, "TNMessageBoard"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_messages"), new objj_ivar("_dataView")]);
       
       



       
       


       
       


       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $TNMessageBoard__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNMessageBoard").super_class }, "initWithFrame:", aFrame))
    {
        self._messages = objj_msgSend(CPArray, "array");
        objj_msgSend(self, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(self, "setColumnAutoresizingStyle:", CPTableViewLastColumnOnlyAutoresizingStyle);
        objj_msgSend(self, "setAllowsColumnReordering:", NO);
        objj_msgSend(self, "setAllowsColumnResizing:", NO);
        objj_msgSend(self, "setAllowsEmptySelection:", YES);
        objj_msgSend(self, "setAllowsMultipleSelection:", NO);
        objj_msgSend(self, "setDataSource:", self);
        objj_msgSend(self, "setDelegate:", self);
        objj_msgSend(self, "setHeaderView:", nil);
        objj_msgSend(self, "setCornerView:", nil);
        var messageColumn = objj_msgSend(objj_msgSend(CPTableColumn, "alloc"), "initWithIdentifier:", "messages");
        objj_msgSend(messageColumn, "setWidth:", 800);
        objj_msgSend(objj_msgSend(messageColumn, "headerView"), "setStringValue:", "Messages");
        objj_msgSend(self, "addTableColumn:", messageColumn);
        self._dataView = objj_msgSend(objj_msgSend(TNMessageView, "alloc"), "initWithFrame:", CGRectMake(0, 0, 100, 100));
    }
    return self;
}
,["TNMessageBoard","CGRect"]), new objj_method(sel_getUid("addMessage:from:date:color:"), function $TNMessageBoard__addMessage_from_date_color_(self, _cmd, aMessage, anAuthor, aDate, aColor)
{
     objj_msgSend(self, "addMessage:from:date:color:avatar:position:", aMessage, anAuthor, aDate, aColor, nil, nil);
}
,["void","CPString","CPString","CPDate","int"]), new objj_method(sel_getUid("addMessage:from:date:color:avatar:position:"), function $TNMessageBoard__addMessage_from_date_color_avatar_position_(self, _cmd, aMessage, anAuthor, aDate, aColor, anAvatar, aPosition)
{
    var messageInfo = objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", anAuthor, "author", aMessage, "message", aDate, "date", aPosition, "position", aColor, "color", anAvatar, "avatar");
    objj_msgSend(self._messages, "addObject:", messageInfo);
    objj_msgSend(self, "reloadData");
}
,["void","CPString","CPString","CPDate","int","CPImage","int"]), new objj_method(sel_getUid("reload"), function $TNMessageBoard__reload(self, _cmd)
{
    CPLog.warn("TNMessageBoard reload is deprecated. please use reloadData")
    objj_msgSend(self, "reloadData");
}
,["void"]), new objj_method(sel_getUid("removeAllMessages:"), function $TNMessageBoard__removeAllMessages_(self, _cmd, aSender)
{
    CPLog.warn("TNMessageBoard removeAllMessages: is deprecated. please use removeAllViews:")
    objj_msgSend(self, "removeAllViews:", aSender);
}
,["id","id"]), new objj_method(sel_getUid("removeAllViews:"), function $TNMessageBoard__removeAllViews_(self, _cmd, aSender)
{
    objj_msgSend(self._messages, "removeAllObjects");
    objj_msgSend(self, "reloadData");
}
,["id","id"]), new objj_method(sel_getUid("numberOfRowsInTableView:"), function $TNMessageBoard__numberOfRowsInTableView_(self, _cmd, aTableView)
{
    return objj_msgSend(self._messages, "count");
}
,["void","CPTableView"]), new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"), function $TNMessageBoard__tableView_objectValueForTableColumn_row_(self, _cmd, aTableView, aColumnu, aRow)
{
    return objj_msgSend(self._messages, "objectAtIndex:", aRow);
}
,["void","CPTableView","CPTableColumn","int"]), new objj_method(sel_getUid("tableView:dataViewForTableColumn:row:"), function $TNMessageBoard__tableView_dataViewForTableColumn_row_(self, _cmd, aTableView, aColumn, aRow)
{
    var copy = objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", self._dataView);
    return objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", copy);
}
,["void","CPTableView","CPTableColumn","id"]), new objj_method(sel_getUid("tableView:heightOfRow:"), function $TNMessageBoard__tableView_heightOfRow_(self, _cmd, aTableView, aRow)
{
    return objj_msgSend(TNMessageView, "sizeOfMessageViewWithText:inWidth:", objj_msgSend(objj_msgSend(self._messages, "objectAtIndex:", aRow), "objectForKey:", "message"), (objj_msgSend(self, "frameSize").width));
}
,["void","CPTableView","int"]), new objj_method(sel_getUid("tableView:shouldSelectRow:"), function $TNMessageBoard__tableView_shouldSelectRow_(self, _cmd, aTableView, aRow)
{
    return NO;
}
,["void","CPTableView","int"])]);
}p;15;TNMessageView.jt;25169;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPColor.jI;16;AppKit/CPImage.jI;20;AppKit/CPImageView.jI;15;AppKit/CPView.jI;20;AppKit/CPTextField.jt;25009;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPColor.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
TNMessageViewAvatarPositionRight = "TNMessageViewAvatarPositionRight";
TNMessageViewAvatarPositionLeft = "TNMessageViewAvatarPositionLeft";
TNMessageViewBubbleColorNormal = 1;
TNMessageViewBubbleColorAlt = 2;
TNMessageViewBubbleColorNotice = 3;
var TNMessageViewBackgroundColorLeftNormal,
    TNMessageViewBackgroundColorLeftAlt,
    TNMessageViewBackgroundColorLeftNotice,
    TNMessageViewBackgroundColorRightNormal,
    TNMessageViewBackgroundColorRightAlt,
    TNMessageViewBackgroundColorRightNotice;
{var the_class = objj_allocateClassPair(CPView, "TNMessageView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_imageDefaultAvatar"), new objj_ivar("_imageViewAvatar"), new objj_ivar("_author"), new objj_ivar("_message"), new objj_ivar("_subject"), new objj_ivar("_timestamp"), new objj_ivar("_fieldAuthor"), new objj_ivar("_fieldTimestamp"), new objj_ivar("_viewContainer"), new objj_ivar("_bgColor"), new objj_ivar("_position"), new objj_ivar("_fieldMessage")]);

       
       

       
       

       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $TNMessageView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNMessageView").super_class }, "initWithFrame:", aFrame))
    {
        self._author = "";
        self._subject = "";
        self._message = "";
        self._timestamp = "";
        self._bgColor = TNMessageViewBubbleColorNormal;
        objj_msgSend(self, "setAutoresizingMask:", CPViewWidthSizable);
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class"));
        self._imageDefaultAvatar = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNMessageBoard/user-unknown.png"), CGSizeMake(36, 36));
        self._position = TNMessageViewAvatarPositionLeft;
        self._viewContainer = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(50, 10, CGRectGetWidth(aFrame) - 60, 80))
        objj_msgSend(self._viewContainer, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        self._imageViewAvatar = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMake(6, CGRectGetHeight(aFrame) - 46, 36, 36));
        objj_msgSend(self._imageViewAvatar, "setImageScaling:", CPScaleProportionally);
        objj_msgSend(self._imageViewAvatar, "setImage:", self._imageDefaultAvatar);
        self._fieldAuthor = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(20, 10, CGRectGetWidth(objj_msgSend(self._viewContainer, "frame")) - 30, 20));
        objj_msgSend(self._fieldAuthor, "setFont:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 12));
        objj_msgSend(self._fieldAuthor, "setTextColor:", objj_msgSend(CPColor, "grayColor"));
        objj_msgSend(self._fieldAuthor, "setAutoresizingMask:", CPViewWidthSizable);
        objj_msgSend(self._fieldAuthor, "setSelectable:", YES);
        self._fieldMessage = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(20, 30, CGRectGetWidth(objj_msgSend(self._viewContainer, "frame")) - 40 , CGRectGetHeight(objj_msgSend(self._viewContainer, "frame"))));
        objj_msgSend(self._fieldMessage, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(self._fieldMessage, "setLineBreakMode:", CPLineBreakByWordWrapping);
        objj_msgSend(self._fieldMessage, "setSelectable:", YES);
        self._fieldTimestamp = objj_msgSend(objj_msgSend(CPTextField, "alloc"), "initWithFrame:", CGRectMake(CGRectGetWidth(objj_msgSend(self._viewContainer, "frame")) - 210, 10, 190, 20));
        objj_msgSend(self._fieldTimestamp, "setAutoresizingMask:", CPViewMinXMargin);
        objj_msgSend(self._fieldTimestamp, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithHexString:", "f2f0e4"), "text-shadow-color", CPThemeStateNormal);
        objj_msgSend(self._fieldTimestamp, "setValue:forThemeAttribute:inState:", objj_msgSend(CPFont, "systemFontOfSize:", 9.0), "font", CPThemeStateNormal);
        objj_msgSend(self._fieldTimestamp, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithHexString:", "808080"), "text-color", CPThemeStateNormal);
        objj_msgSend(self._fieldTimestamp, "setAlignment:", CPRightTextAlignment);
        objj_msgSend(self._fieldTimestamp, "setSelectable:", YES);
        objj_msgSend(self._viewContainer, "addSubview:", self._fieldAuthor);
        objj_msgSend(self._viewContainer, "addSubview:", self._fieldMessage);
        objj_msgSend(self._viewContainer, "addSubview:", self._fieldTimestamp);
        objj_msgSend(self, "addSubview:", self._imageViewAvatar);
        objj_msgSend(self, "addSubview:", self._viewContainer);
    }
    return self;
}
,["void","CGRect"]), new objj_method(sel_getUid("setObjectValue:"), function $TNMessageView__setObjectValue_(self, _cmd, anObject)
{
    objj_msgSend(self._fieldAuthor, "setStringValue:", objj_msgSend(anObject, "objectForKey:", "author"));
    objj_msgSend(self._fieldMessage, "setStringValue:", objj_msgSend(anObject, "objectForKey:", "message"));
    objj_msgSend(self._fieldTimestamp, "setStringValue:", objj_msgSend(anObject, "objectForKey:", "date"));
    objj_msgSend(self._imageViewAvatar, "setImage:", objj_msgSend(anObject, "objectForKey:", "avatar") || self._imageDefaultAvatar);
    self._position = objj_msgSend(anObject, "objectForKey:", "position") || TNMessageViewAvatarPositionLeft;
    self._bgColor = objj_msgSend(anObject, "objectForKey:", "color") || TNMessageViewBubbleColorNormal;
    CPLog.debug(anObject);
    objj_msgSend(self, "layout");
}
,["void","id"]), new objj_method(sel_getUid("layout"), function $TNMessageView__layout(self, _cmd)
{
    switch (self._position)
    {
        case TNMessageViewAvatarPositionLeft:
            objj_msgSend(self._viewContainer, "setFrameOrigin:", CGPointMake(50, 10));
            objj_msgSend(self._imageViewAvatar, "setFrame:", CGRectMake(6, CGRectGetHeight(objj_msgSend(self, "frame")) - 46, 36, 36));
            objj_msgSend(self._imageViewAvatar, "setAutoresizingMask:", CPViewMinYMargin);
            break;
        case TNMessageViewAvatarPositionRight:
            objj_msgSend(self._viewContainer, "setFrameOrigin:", CGPointMake(10, 10));
            objj_msgSend(self._imageViewAvatar, "setFrame:", CGRectMake(CGRectGetWidth(objj_msgSend(self, "frame")) - 46, CGRectGetHeight(objj_msgSend(self, "frame")) - 46 , 36, 36));
            objj_msgSend(self._imageViewAvatar, "setAutoresizingMask:", CPViewMinXMargin | CPViewMinYMargin);
            break;
    }
    switch (self._bgColor)
    {
        case TNMessageViewBubbleColorNormal:
            objj_msgSend(self._viewContainer, "setBackgroundColor:", (self._position == TNMessageViewAvatarPositionLeft) ? TNMessageViewBackgroundColorLeftNormal : TNMessageViewBackgroundColorRightNormal);
            break;
        case TNMessageViewBubbleColorAlt:
            objj_msgSend(self._viewContainer, "setBackgroundColor:", (self._position == TNMessageViewAvatarPositionLeft) ? TNMessageViewBackgroundColorLeftAlt : TNMessageViewBackgroundColorRightAlt);
            break;
        case TNMessageViewBubbleColorNotice:
            objj_msgSend(self._viewContainer, "setBackgroundColor:", (self._position == TNMessageViewAvatarPositionLeft) ? TNMessageViewBackgroundColorLeftNotice : TNMessageViewBackgroundColorRightNotice);
            break;
    }
}
,["void"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNMessageView__initialize(self, _cmd)
{
    TNMessageViewBackgroundColorLeftNormal = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPNinePartImage, "alloc"), "initWithImageSlices:", [
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/1.png"), CGSizeMake(24.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/2.png"), CGSizeMake(1.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/3.png"), CGSizeMake(24.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/4.png"), CGSizeMake(24.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/5.png"), CGSizeMake(1.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/6.png"), CGSizeMake(24.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/7.png"), CGSizeMake(24.0, 16.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/8.png"), CGSizeMake(1.0, 16.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/9.png"), CGSizeMake(24.0, 16.0)),
    ]));
    TNMessageViewBackgroundColorLeftAlt = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPNinePartImage, "alloc"), "initWithImageSlices:", [
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/1.png"), CGSizeMake(24.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/2.png"), CGSizeMake(1.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/3.png"), CGSizeMake(24.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/4.png"), CGSizeMake(24.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/5.png"), CGSizeMake(1.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/6.png"), CGSizeMake(24.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/7.png"), CGSizeMake(24.0, 16.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/8.png"), CGSizeMake(1.0, 16.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/9.png"), CGSizeMake(24.0, 16.0)),
    ]));
    TNMessageViewBackgroundColorLeftNotice = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPNinePartImage, "alloc"), "initWithImageSlices:", [
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/1.png"), CGSizeMake(24.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/2.png"), CGSizeMake(1.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/3.png"), CGSizeMake(24.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/4.png"), CGSizeMake(24.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/5.png"), CGSizeMake(1.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/6.png"), CGSizeMake(24.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/7.png"), CGSizeMake(24.0, 16.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/8.png"), CGSizeMake(1.0, 16.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/9.png"), CGSizeMake(24.0, 16.0)),
    ]));
    TNMessageViewBackgroundColorRightNormal = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPNinePartImage, "alloc"), "initWithImageSlices:", [
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/1.png"), CGSizeMake(24.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/2.png"), CGSizeMake(1.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/3.png"), CGSizeMake(24.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/4.png"), CGSizeMake(24.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/5.png"), CGSizeMake(1.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/6.png"), CGSizeMake(24.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/7-alt.png"), CGSizeMake(24.0, 16.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/8.png"), CGSizeMake(1.0, 16.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/Bubble/9-alt.png"), CGSizeMake(24.0, 16.0)),
    ]));
    TNMessageViewBackgroundColorRightAlt = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPNinePartImage, "alloc"), "initWithImageSlices:", [
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/1.png"), CGSizeMake(24.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/2.png"), CGSizeMake(1.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/3.png"), CGSizeMake(24.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/4.png"), CGSizeMake(24.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/5.png"), CGSizeMake(1.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/6.png"), CGSizeMake(24.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/7-alt.png"), CGSizeMake(24.0, 16.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/8.png"), CGSizeMake(1.0, 16.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleAlt/9-alt.png"), CGSizeMake(24.0, 16.0)),
    ]));
    TNMessageViewBackgroundColorRightNotice = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPNinePartImage, "alloc"), "initWithImageSlices:", [
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/1.png"), CGSizeMake(24.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/2.png"), CGSizeMake(1.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/3.png"), CGSizeMake(24.0, 14.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/4.png"), CGSizeMake(24.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/5.png"), CGSizeMake(1.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/6.png"), CGSizeMake(24.0, 1.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/7-alt.png"), CGSizeMake(24.0, 16.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/8.png"), CGSizeMake(1.0, 16.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNMessageView), "pathForResource:", "TNMessageBoard/BubbleNotice/9-alt.png"), CGSizeMake(24.0, 16.0)),
    ]));
}
,["void"]), new objj_method(sel_getUid("sizeOfMessageViewWithText:inWidth:"), function $TNMessageView__sizeOfMessageViewWithText_inWidth_(self, _cmd, aText, aWidth)
{
    var messageHeight = objj_msgSend(aText, "sizeWithFont:inWidth:", objj_msgSend(CPFont, "systemFontOfSize:", 12), (aWidth - 100));
    return messageHeight.height + 65;
}
,["int","CPString","int"])]);
}
{
var the_class = objj_getClass("TNMessageView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNMessageView\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $TNMessageView__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNMessageView").super_class }, "initWithCoder:", aCoder))
    {
        self._author = objj_msgSend(aCoder, "decodeObjectForKey:", "_author");
        self._bgColor = objj_msgSend(aCoder, "decodeObjectForKey:", "_bgColor");
        self._fieldAuthor = objj_msgSend(aCoder, "decodeObjectForKey:", "_fieldAuthor");
        self._fieldMessage = objj_msgSend(aCoder, "decodeObjectForKey:", "_fieldMessage");
        self._fieldTimestamp = objj_msgSend(aCoder, "decodeObjectForKey:", "_fieldTimestamp");
        self._imageDefaultAvatar = objj_msgSend(aCoder, "decodeObjectForKey:", "_imageDefaultAvatar");
        self._imageViewAvatar = objj_msgSend(aCoder, "decodeObjectForKey:", "_imageViewAvatar");
        self._message = objj_msgSend(aCoder, "decodeObjectForKey:", "_message");
        self._position = objj_msgSend(aCoder, "decodeObjectForKey:", "_position");
        self._subject = objj_msgSend(aCoder, "decodeObjectForKey:", "_subject");
        self._timestamp = objj_msgSend(aCoder, "decodeObjectForKey:", "_timestamp");
        self._viewContainer = objj_msgSend(aCoder, "decodeObjectForKey:", "_viewContainer");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNMessageView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNMessageView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self._author, "_author");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._bgColor, "_bgColor");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._fieldAuthor, "_fieldAuthor");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._fieldMessage, "_fieldMessage");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._fieldTimestamp, "_fieldTimestamp");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._imageDefaultAvatar, "_imageDefaultAvatar");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._imageViewAvatar, "_imageViewAvatar");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._message, "_message");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._position, "_position");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._subject, "_subject");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._timestamp, "_timestamp");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._viewContainer, "_viewContainer");
}
,["void","CPCoder"])]);
}p;25;TNOutlineViewDataSource.jt;6724;@STATIC;1.0;I;23;Foundation/Foundation.jt;6677;objj_executeFile("Foundation/Foundation.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNOutlineViewDataSource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("filterInstalled"), new objj_ivar("_contents"), new objj_ivar("_searchableKeyPaths"), new objj_ivar("_childCompKeyPath"), new objj_ivar("_parentKeyPath")]);
       
       






       
       


       
       




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isFilterInstalled"), function $TNOutlineViewDataSource__isFilterInstalled(self, _cmd)
{
return self.filterInstalled;
}
,["BOOL"]), new objj_method(sel_getUid("setFilterInstalled:"), function $TNOutlineViewDataSource__setFilterInstalled_(self, _cmd, newValue)
{
self.filterInstalled = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("contents"), function $TNOutlineViewDataSource__contents(self, _cmd)
{
return self._contents;
}
,["CPArray"]), new objj_method(sel_getUid("setContents:"), function $TNOutlineViewDataSource__setContents_(self, _cmd, newValue)
{
self._contents = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("searchableKeyPaths"), function $TNOutlineViewDataSource__searchableKeyPaths(self, _cmd)
{
return self._searchableKeyPaths;
}
,["CPArray"]), new objj_method(sel_getUid("setSearchableKeyPaths:"), function $TNOutlineViewDataSource__setSearchableKeyPaths_(self, _cmd, newValue)
{
self._searchableKeyPaths = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("childCompKeyPath"), function $TNOutlineViewDataSource__childCompKeyPath(self, _cmd)
{
return self._childCompKeyPath;
}
,["CPString"]), new objj_method(sel_getUid("setChildCompKeyPath:"), function $TNOutlineViewDataSource__setChildCompKeyPath_(self, _cmd, newValue)
{
self._childCompKeyPath = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("parentKeyPath"), function $TNOutlineViewDataSource__parentKeyPath(self, _cmd)
{
return self._parentKeyPath;
}
,["CPString"]), new objj_method(sel_getUid("setParentKeyPath:"), function $TNOutlineViewDataSource__setParentKeyPath_(self, _cmd, newValue)
{
self._parentKeyPath = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("init"), function $TNOutlineViewDataSource__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNOutlineViewDataSource").super_class }, "init"))
    {
        alert("you should not use TNOutlineViewDataSource. it doesn't work very well for now")
        self._contents = objj_msgSend(CPArray, "array");
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("count"), function $TNOutlineViewDataSource__count(self, _cmd)
{
    return objj_msgSend(self._contents, "count");
}
,["int"]), new objj_method(sel_getUid("objects"), function $TNOutlineViewDataSource__objects(self, _cmd)
{
    return self._contents;
}
,["CPArray"]), new objj_method(sel_getUid("objectAtIndex:"), function $TNOutlineViewDataSource__objectAtIndex_(self, _cmd, anIndex)
{
   return objj_msgSend(self._contents, "objectAtIndex:", anIndex);
}
,["id","int"]), new objj_method(sel_getUid("objectsAtIndexes:"), function $TNOutlineViewDataSource__objectsAtIndexes_(self, _cmd, indexes)
{
    return objj_msgSend(self._contents, "objectsAtIndexes:", indexes);
}
,["CPArray","CPIndexSet"]), new objj_method(sel_getUid("getRootObjects"), function $TNOutlineViewDataSource__getRootObjects(self, _cmd)
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
,["CPArray"]), new objj_method(sel_getUid("getChildrenOfObject:"), function $TNOutlineViewDataSource__getChildrenOfObject_(self, _cmd, anObject)
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
,["CPArray","id"]), new objj_method(sel_getUid("addObject:"), function $TNOutlineViewDataSource__addObject_(self, _cmd, anObject)
{
    objj_msgSend(self._contents, "addObject:", anObject);
}
,["void","id"]), new objj_method(sel_getUid("removeAllObjects"), function $TNOutlineViewDataSource__removeAllObjects(self, _cmd)
{
    objj_msgSend(self._contents, "removeAllObjects");
}
,["void"]), new objj_method(sel_getUid("outlineView:numberOfChildrenOfItem:"), function $TNOutlineViewDataSource__outlineView_numberOfChildrenOfItem_(self, _cmd, anOutlineView, item)
{
    if (!item)
        return objj_msgSend(objj_msgSend(self, "getRootObjects"), "count");
    else
        return objj_msgSend(objj_msgSend(self, "getChildrenOfObject:", item), "count");
}
,["int","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:isItemExpandable:"), function $TNOutlineViewDataSource__outlineView_isItemExpandable_(self, _cmd, anOutlineView, item)
{
    if (!item)
        return YES;
    return (objj_msgSend(objj_msgSend(self, "getChildrenOfObject:", item), "count") > 0) ? YES : NO;
}
,["BOOL","CPOutlineView","id"]), new objj_method(sel_getUid("outlineView:child:ofItem:"), function $TNOutlineViewDataSource__outlineView_child_ofItem_(self, _cmd, anOutlineView, index, item)
{
    if (!item)
        return objj_msgSend(objj_msgSend(self, "getRootObjects"), "objectAtIndex:", index);
    else
        return objj_msgSend(objj_msgSend(self, "getChildrenOfObject:", item), "objectAtIndex:", index);
}
,["id","CPOutlineView","int","id"]), new objj_method(sel_getUid("outlineView:objectValueForTableColumn:byItem:"), function $TNOutlineViewDataSource__outlineView_objectValueForTableColumn_byItem_(self, _cmd, anOutlineView, tableColumn, item)
{
    var identifier = objj_msgSend(tableColumn, "identifier");
    if (identifier == "outline")
        return nil;
    return objj_msgSend(item, "valueForKey:", identifier);
}
,["id","CPOutlineView","CPTableColumn","id"]), new objj_method(sel_getUid("tableView:sortDescriptorsDidChange:"), function $TNOutlineViewDataSource__tableView_sortDescriptorsDidChange_(self, _cmd, aTableView, oldDescriptors)
{
    objj_msgSend(self._contents, "sortUsingDescriptors:", objj_msgSend(aTableView, "sortDescriptors"));
    objj_msgSend(aTableView, "reloadData");
}
,["void","CPTableView","CPArray"])]);
}p;21;TNRangeSelectorView.jt;19614;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPSplitView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;18;AppKit/CPControl.jt;19473;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPSplitView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPControl.j", NO);
//@global CPWindowBelow
var TNRangeSelectorViewDelegate_rangeSelectorView_didChangeLeftValue = 1 << 1,
    TNRangeSelectorViewDelegate_rangeSelectorView_didChangeRightValue = 1 << 2;
{var the_class = objj_allocateClassPair(CPControl, "TNRangeSelectorView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_rangeValue"), new objj_ivar("_leftValue"), new objj_ivar("_maxValue"), new objj_ivar("_minValue"), new objj_ivar("_rightValue"), new objj_ivar("_delegate"), new objj_ivar("_backgroundView"), new objj_ivar("_splitView"), new objj_ivar("_fieldLeftValue"), new objj_ivar("_fieldRightValue"), new objj_ivar("_viewInnerBounds"), new objj_ivar("_viewOuterBoundsLeft"), new objj_ivar("_viewOuterBoundsRight"), new objj_ivar("_timerBeforeAction"), new objj_ivar("_implementedDelegateMethods")]);

       
       










       
       



       
       

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("rangeValue"), function $TNRangeSelectorView__rangeValue(self, _cmd)
{
return self._rangeValue;
}
,["CPRange"]), new objj_method(sel_getUid("_setRangeValue:"), function $TNRangeSelectorView___setRangeValue_(self, _cmd, newValue)
{
self._rangeValue = newValue;
}
,["void","CPRange"]), new objj_method(sel_getUid("leftValue"), function $TNRangeSelectorView__leftValue(self, _cmd)
{
return self._leftValue;
}
,["float"]), new objj_method(sel_getUid("_setLeftValue:"), function $TNRangeSelectorView___setLeftValue_(self, _cmd, newValue)
{
self._leftValue = newValue;
}
,["void","float"]), new objj_method(sel_getUid("maxValue"), function $TNRangeSelectorView__maxValue(self, _cmd)
{
return self._maxValue;
}
,["float"]), new objj_method(sel_getUid("setMaxValue:"), function $TNRangeSelectorView__setMaxValue_(self, _cmd, newValue)
{
self._maxValue = newValue;
}
,["void","float"]), new objj_method(sel_getUid("minValue"), function $TNRangeSelectorView__minValue(self, _cmd)
{
return self._minValue;
}
,["float"]), new objj_method(sel_getUid("setMinValue:"), function $TNRangeSelectorView__setMinValue_(self, _cmd, newValue)
{
self._minValue = newValue;
}
,["void","float"]), new objj_method(sel_getUid("rightValue"), function $TNRangeSelectorView__rightValue(self, _cmd)
{
return self._rightValue;
}
,["float"]), new objj_method(sel_getUid("_setRightValue:"), function $TNRangeSelectorView___setRightValue_(self, _cmd, newValue)
{
self._rightValue = newValue;
}
,["void","float"]), new objj_method(sel_getUid("delegate"), function $TNRangeSelectorView__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("_setDelegate:"), function $TNRangeSelectorView___setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("backgroundView"), function $TNRangeSelectorView__backgroundView(self, _cmd)
{
return self._backgroundView;
}
,["CPView"]), new objj_method(sel_getUid("_setBackgroundView:"), function $TNRangeSelectorView___setBackgroundView_(self, _cmd, newValue)
{
self._backgroundView = newValue;
}
,["void","CPView"]), new objj_method(sel_getUid("initWithFrame:"), function $TNRangeSelectorView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNRangeSelectorView").super_class }, "initWithFrame:", aFrame))
    {
        self._minValue = 0;
        self._maxValue = 100;
        self._splitView = objj_msgSend(objj_msgSend(CPSplitView, "alloc"), "initWithFrame:", objj_msgSend(self, "bounds"));
        objj_msgSend(self._splitView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        self._viewOuterBoundsLeft = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(self._viewOuterBoundsLeft, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(self._viewOuterBoundsLeft, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithHexString:", "555"));
        objj_msgSend(self._viewOuterBoundsLeft, "setAlphaValue:", 0.3);
        self._viewOuterBoundsRight = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(self._viewOuterBoundsRight, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(self._viewOuterBoundsRight, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithHexString:", "555"));
        objj_msgSend(self._viewOuterBoundsRight, "setAlphaValue:", 0.3);
        self._viewInnerBounds = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMakeZero());
        objj_msgSend(self._viewInnerBounds, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        objj_msgSend(self._splitView, "addSubview:", self._viewOuterBoundsLeft);
        objj_msgSend(self._splitView, "addSubview:", self._viewInnerBounds);
        objj_msgSend(self._splitView, "addSubview:", self._viewOuterBoundsRight);
        self._fieldLeftValue = objj_msgSend(CPTextField, "labelWithTitle:", "10000");
        objj_msgSend(self._fieldLeftValue, "setTextColor:", objj_msgSend(CPColor, "colorWithHexString:", "444"));
        objj_msgSend(self._fieldLeftValue, "setFont:", objj_msgSend(CPFont, "systemFontOfSize:", 10));
        objj_msgSend(self._fieldLeftValue, "setLineBreakMode:", CPLineBreakByTruncatingTail);
        objj_msgSend(self._fieldLeftValue, "bind:toObject:withKeyPath:options:", CPValueBinding, self, "leftValue", nil);
        objj_msgSend(self._fieldLeftValue, "setAutoresizingMask:", CPViewMaxXMargin | CPViewMinYMargin | CPViewMaxYMargin);
        objj_msgSend(self._fieldLeftValue, "setCenter:", objj_msgSend(self._viewInnerBounds, "center"));
        var origin = objj_msgSend(self._fieldLeftValue, "frameOrigin");
        origin.x = 3;
        objj_msgSend(self._fieldLeftValue, "setFrameOrigin:", origin);
        objj_msgSend(self._viewInnerBounds, "addSubview:", self._fieldLeftValue);
        self._fieldRightValue = objj_msgSend(CPTextField, "labelWithTitle:", "10000");
        objj_msgSend(self._fieldRightValue, "setTextColor:", objj_msgSend(CPColor, "colorWithHexString:", "444"));
        objj_msgSend(self._fieldRightValue, "setFont:", objj_msgSend(CPFont, "systemFontOfSize:", 10));
        objj_msgSend(self._fieldRightValue, "setAlignment:", CPRightTextAlignment);
        objj_msgSend(self._fieldRightValue, "setLineBreakMode:", CPLineBreakByTruncatingTail);
        objj_msgSend(self._fieldRightValue, "bind:toObject:withKeyPath:options:", CPValueBinding, self, "rightValue", nil);
        objj_msgSend(self._fieldRightValue, "setAutoresizingMask:", CPViewMinXMargin | CPViewMinYMargin | CPViewMaxYMargin);
        objj_msgSend(self._fieldRightValue, "setCenter:", objj_msgSend(self._viewInnerBounds, "center"));
        var origin = objj_msgSend(self._fieldRightValue, "frameOrigin");
        origin.x = objj_msgSend(self._viewInnerBounds, "frameSize").width - 3 - objj_msgSend(self._fieldRightValue, "frameSize").width;
        objj_msgSend(self._fieldRightValue, "setFrameOrigin:", origin);
        objj_msgSend(self._viewInnerBounds, "addSubview:", self._fieldRightValue);
        objj_msgSend(self, "addSubview:", self._splitView);
        objj_msgSend(self._splitView, "setDelegate:", self);
        objj_msgSend(self, "_init");
    }
    return self;
}
,["TNRangeSelectorView","CGRect"]), new objj_method(sel_getUid("_init"), function $TNRangeSelectorView___init(self, _cmd)
{
    self._DOMElement.style.border = "1px solid #A5A5A5";
    self._DOMElement.style.borderRadius = "3px";
    self._splitView._DOMElement.style.borderRadius = "3px";
    if (self._backgroundView)
        self._backgroundView._DOMElement.style.borderRadius = "3px";
}
,["void"]), new objj_method(sel_getUid("setLeftValue:"), function $TNRangeSelectorView__setLeftValue_(self, _cmd, aValue)
{
    if (aValue == self._leftValue)
        return;
    var frameWidth = objj_msgSend(self, "frameSize").width;
    objj_msgSend(self._splitView, "setDelegate:", nil);
    objj_msgSend(self, "willChangeValueForKey:", "rangeValue");
    objj_msgSend(self, "willChangeValueForKey:", "leftValue");
    self._leftValue = MIN(MAX(aValue, self._minValue), self._maxValue);
    objj_msgSend(self, "didChangeValueForKey:", "leftValue");
    objj_msgSend(self, "didChangeValueForKey:", "rangeValue");
    objj_msgSend(self._splitView, "setPosition:ofDividerAtIndex:", (frameWidth * objj_msgSend(self, "_calculateProgress:", aValue)), 0);
    objj_msgSend(self._splitView, "setDelegate:", self);
    objj_msgSend(self, "_didChangeLeftValue");
}
,["void","float"]), new objj_method(sel_getUid("setRightValue:"), function $TNRangeSelectorView__setRightValue_(self, _cmd, aValue)
{
    if (aValue == self._rightValue)
        return;
    var frameWidth = objj_msgSend(self, "frameSize").width;
    objj_msgSend(self._splitView, "setDelegate:", nil);
    objj_msgSend(self, "willChangeValueForKey:", "rangeValue");
    objj_msgSend(self, "willChangeValueForKey:", "rightValue");
    self._rightValue = MIN(MAX(aValue, self._minValue), self._maxValue);
    objj_msgSend(self, "didChangeValueForKey:", "rangeValue");
    objj_msgSend(self, "didChangeValueForKey:", "rightValue");
    objj_msgSend(self._splitView, "setPosition:ofDividerAtIndex:", (frameWidth * objj_msgSend(self, "_calculateProgress:", aValue)), 1);
    objj_msgSend(self._splitView, "setDelegate:", self);
    objj_msgSend(self, "_didChangeRightValue");
}
,["void","float"]), new objj_method(sel_getUid("setRangeValue:"), function $TNRangeSelectorView__setRangeValue_(self, _cmd, aRange)
{
    objj_msgSend(self, "willChangeValueForKey:", "rangeValue");
    var start = aRange.location,
        end = start + aRange.length;
    objj_msgSend(self, "setLeftValue:", start);
    objj_msgSend(self, "setRightValue:", end);
    objj_msgSend(self, "didChangeValueForKey:", "rangeValue");
}
,["void","CPRange"]), new objj_method(sel_getUid("rangeValue"), function $TNRangeSelectorView__rangeValue(self, _cmd)
{
    return CPMakeRange(self._leftValue, self._rightValue - self._leftValue);
}
,["CPRange"]), new objj_method(sel_getUid("setValuesTextColor:"), function $TNRangeSelectorView__setValuesTextColor_(self, _cmd, aColor)
{
    objj_msgSend(self._fieldRightValue, "setTextColor:", aColor);
    objj_msgSend(self._fieldLeftValue, "setTextColor:", aColor);
}
,["void","CPColor"]), new objj_method(sel_getUid("valuesTextColor"), function $TNRangeSelectorView__valuesTextColor(self, _cmd)
{
    return objj_msgSend(self._fieldRightValue, "textColor");
}
,["CPColor"]), new objj_method(sel_getUid("setValueFieldsHidden:"), function $TNRangeSelectorView__setValueFieldsHidden_(self, _cmd, shouldHide)
{
    objj_msgSend(self._fieldRightValue, "setHidden:", shouldHide);
    objj_msgSend(self._fieldLeftValue, "setHidden:", shouldHide);
}
,["void","BOOL"]), new objj_method(sel_getUid("areValueFieldsHidden"), function $TNRangeSelectorView__areValueFieldsHidden(self, _cmd)
{
    return objj_msgSend(self._fieldRightValue, "isHidden");
}
,["BOOL"]), new objj_method(sel_getUid("setOuterBoundsViewsColor:alphaValue:"), function $TNRangeSelectorView__setOuterBoundsViewsColor_alphaValue_(self, _cmd, aColor, anAlphaValue)
{
    objj_msgSend(self._viewOuterBoundsRight, "setBackgroundColor:", aColor);
    objj_msgSend(self._viewOuterBoundsRight, "setAlphaValue:", anAlphaValue);
    objj_msgSend(self._viewOuterBoundsLeft, "setBackgroundColor:", aColor);
    objj_msgSend(self._viewOuterBoundsLeft, "setAlphaValue:", anAlphaValue);
}
,["void","CPColor","float"]), new objj_method(sel_getUid("setBackgroundView:"), function $TNRangeSelectorView__setBackgroundView_(self, _cmd, aView)
{
    if (aView === self._backgroundView)
        return;
    if (self._backgroundView)
        objj_msgSend(self._backgroundView, "removeFromSuperview");
    self._backgroundView = aView;
    objj_msgSend(self._backgroundView, "setFrame:", objj_msgSend(self, "bounds"));
    self._backgroundView._DOMElement.style.borderRadius = "3px";
    objj_msgSend(self._backgroundView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
    objj_msgSend(self, "addSubview:positioned:relativeTo:", self._backgroundView, CPWindowBelow, nil);;
}
,["void","CPView"]), new objj_method(sel_getUid("setDelegate:"), function $TNRangeSelectorView__setDelegate_(self, _cmd, aDelegate)
{
    if (aDelegate == self._delegate)
        return;
    self._delegate = aDelegate
    self._implementedDelegateMethods = 0;
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("rangeSelectorView:didChangeLeftValue:")))
        self._implementedDelegateMethods |= TNRangeSelectorViewDelegate_rangeSelectorView_didChangeLeftValue;
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("rangeSelectorView:didChangeRightValue:")))
        self._implementedDelegateMethods |= TNRangeSelectorViewDelegate_rangeSelectorView_didChangeRightValue;
}
,["void","id"]), new objj_method(sel_getUid("_didChangeLeftValue"), function $TNRangeSelectorView___didChangeLeftValue(self, _cmd)
{
    if (!(self._implementedDelegateMethods & TNRangeSelectorViewDelegate_rangeSelectorView_didChangeLeftValue))
        return;
    objj_msgSend(self._delegate, "rangeSelectorView:didChangeLeftValue:", self, self._leftValue);
}
,["void"]), new objj_method(sel_getUid("_didChangeRightValue"), function $TNRangeSelectorView___didChangeRightValue(self, _cmd)
{
    if (!(self._implementedDelegateMethods & TNRangeSelectorViewDelegate_rangeSelectorView_didChangeRightValue))
        return;
    objj_msgSend(self._delegate, "rangeSelectorView:didChangeRightValue:", self, self._rightValue);
}
,["void"]), new objj_method(sel_getUid("_calculateProgress:"), function $TNRangeSelectorView___calculateProgress_(self, _cmd, aValue)
{
    var diff = aValue - self._minValue,
        scope = self._maxValue - self._minValue;
    return diff ? diff / scope : 0;
}
,["float","float"]), new objj_method(sel_getUid("splitViewDidResizeSubviews:"), function $TNRangeSelectorView__splitViewDidResizeSubviews_(self, _cmd, aNotification)
{
    var frameWidth = objj_msgSend(self, "frameSize").width,
        changeHasBeenMade = NO,
        leftDividerPosition = CGRectMakeCopy(objj_msgSend(self._splitView, "rectOfDividerAtIndex:", 0)).origin.x,
        rightDividerPosition = CGRectMakeCopy(objj_msgSend(self._splitView, "rectOfDividerAtIndex:", 1)).origin.x + 1,
        leftValue = Math.floor((leftDividerPosition / frameWidth * (self._maxValue - self._minValue)) + self._minValue),
        rightValue = Math.floor((rightDividerPosition / frameWidth * (self._maxValue - self._minValue)) + self._minValue);
    if (self._rightValue != rightValue || self._leftValue != leftValue)
    {
        changeHasBeenMade = YES;
        objj_msgSend(self, "willChangeValueForKey:", "rangeValue");
    }
    if (self._rightValue != rightValue)
    {
        objj_msgSend(self, "willChangeValueForKey:", "rightValue");
        self._rightValue = rightValue;
        objj_msgSend(self, "didChangeValueForKey:", "rightValue");
        objj_msgSend(self, "_didChangeRightValue");
    }
    if (self._leftValue != leftValue)
    {
        objj_msgSend(self, "willChangeValueForKey:", "leftValue");
        self._leftValue = leftValue;
        objj_msgSend(self, "didChangeValueForKey:", "leftValue");
        objj_msgSend(self, "_didChangeLeftValue");
    }
    if (changeHasBeenMade)
    {
        objj_msgSend(self, "didChangeValueForKey:", "rangeValue");
        if (self._timerBeforeAction)
            objj_msgSend(self._timerBeforeAction, "invalidate");
        if (objj_msgSend(self, "target") && objj_msgSend(self, "action"))
            self._timerBeforeAction = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", 1.0, self, sel_getUid("_shouldSendAction:"), nil, NO);
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("_shouldSendAction:"), function $TNRangeSelectorView___shouldSendAction_(self, _cmd, aTimer)
{
    self._timerBeforeAction = nil;
    objj_msgSend(objj_msgSend(self, "target"), "performSelector:withObject:", objj_msgSend(self, "action"), self);
}
,["void","CPTimer"])]);
}
{
var the_class = objj_getClass("TNRangeSelectorView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNRangeSelectorView\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $TNRangeSelectorView__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNRangeSelectorView").super_class }, "initWithCoder:", aCoder))
    {
        self._backgroundView = objj_msgSend(aCoder, "decodeObjectForKey:", "_backgroundView");
        self._fieldLeftValue = objj_msgSend(aCoder, "decodeObjectForKey:", "_fieldLeftValue");
        self._fieldRightValue = objj_msgSend(aCoder, "decodeObjectForKey:", "_fieldRightValue");
        self._implementedDelegateMethods = objj_msgSend(aCoder, "decodeIntForKey:", "_implementedDelegateMethods");
        self._leftValue = objj_msgSend(aCoder, "decodeFloatForKey:", "_leftValue");
        self._maxValue = objj_msgSend(aCoder, "decodeFloatForKey:", "_maxValue");
        self._minValue = objj_msgSend(aCoder, "decodeFloatForKey:", "_minValue");
        self._rightValue = objj_msgSend(aCoder, "decodeFloatForKey:", "_rightValue");
        self._splitView = objj_msgSend(aCoder, "decodeObjectForKey:", "_splitView");
        self._viewInnerBounds = objj_msgSend(aCoder, "decodeObjectForKey:", "_viewInnerBounds");
        self._viewOuterBoundsLeft = objj_msgSend(aCoder, "decodeObjectForKey:", "_viewOuterBoundsLeft");
        self._viewOuterBoundsRight = objj_msgSend(aCoder, "decodeObjectForKey:", "_viewOuterBoundsRight");
        objj_msgSend(self, "_init");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNRangeSelectorView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNRangeSelectorView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeFloat:forKey:", self._fieldLeftValue, "_fieldLeftValue");
    objj_msgSend(aCoder, "encodeFloat:forKey:", self._fieldRightValue, "_fieldRightValue");
    objj_msgSend(aCoder, "encodeFloat:forKey:", self._leftValue, "_leftValue");
    objj_msgSend(aCoder, "encodeFloat:forKey:", self._maxValue, "_maxValue");
    objj_msgSend(aCoder, "encodeFloat:forKey:", self._minValue, "_minValue");
    objj_msgSend(aCoder, "encodeFloat:forKey:", self._rightValue, "_rightValue");
    objj_msgSend(aCoder, "encodeInt:forKey:", self._implementedDelegateMethods, "_implementedDelegateMethods");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._backgroundView, "_backgroundView");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._splitView, "_splitView");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._viewInnerBounds, "_viewInnerBounds");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._viewOuterBoundsLeft, "_viewOuterBoundsLeft");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._viewOuterBoundsRight, "_viewOuterBoundsRight");
}
,["void","CPCoder"])]);
}p;13;TNStackView.jt;4724;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jt;4657;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
{var the_class = objj_allocateClassPair(CPView, "TNStackView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_dataSource"), new objj_ivar("_padding"), new objj_ivar("_reversed"), new objj_ivar("_stackedViews")]);




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("dataSource"), function $TNStackView__dataSource(self, _cmd)
{
return self._dataSource;
}
,["CPArray"]), new objj_method(sel_getUid("setDataSource:"), function $TNStackView__setDataSource_(self, _cmd, newValue)
{
self._dataSource = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("padding"), function $TNStackView__padding(self, _cmd)
{
return self._padding;
}
,["int"]), new objj_method(sel_getUid("setPadding:"), function $TNStackView__setPadding_(self, _cmd, newValue)
{
self._padding = newValue;
}
,["void","int"]), new objj_method(sel_getUid("isReversed"), function $TNStackView__isReversed(self, _cmd)
{
return self._reversed;
}
,["BOOL"]), new objj_method(sel_getUid("setReversed:"), function $TNStackView__setReversed_(self, _cmd, newValue)
{
self._reversed = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("initWithFrame:"), function $TNStackView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNStackView").super_class }, "initWithFrame:", aFrame))
    {
        self._dataSource = objj_msgSend(CPArray, "array");
        self._stackedViews = objj_msgSend(CPArray, "array");
        self._padding = 0;
        self._reversed = NO;
        objj_msgSend(self, "setAutoresizingMask:", CPViewWidthSizable);
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("_nextPosition"), function $TNStackView___nextPosition(self, _cmd)
{
    var lastStackedView = objj_msgSend(self._stackedViews, "lastObject"),
        position;
    if (lastStackedView)
    {
        position = objj_msgSend(lastStackedView, "frame");
        position.origin.y = CGRectGetMaxY(position) + self._padding;
        position.origin.x = self._padding;
    }
    else
        position = CGRectMake(self._padding, self._padding, CGRectGetWidth(objj_msgSend(self, "bounds")) - (self._padding * 2), 0);
    return position
}
,["CGRect"]), new objj_method(sel_getUid("reload"), function $TNStackView__reload(self, _cmd)
{
    var frame = objj_msgSend(self, "frame");
    frame.size.height = 0;
    objj_msgSend(self, "setFrame:", frame);
    for (var i = 0; i < objj_msgSend(self._dataSource, "count"); i++)
    {
        var view = objj_msgSend(self._dataSource, "objectAtIndex:", i);
        if (objj_msgSend(view, "superview"))
            objj_msgSend(view, "removeFromSuperview");
    }
    objj_msgSend(self._stackedViews, "removeAllObjects");
    objj_msgSend(self, "layout");
}
,["void"]), new objj_method(sel_getUid("layout"), function $TNStackView__layout(self, _cmd)
{
    var stackViewFrame = objj_msgSend(self, "frame"),
        workingArray = self._reversed ? objj_msgSend(self._dataSource, "copy").reverse() : self._dataSource;
    stackViewFrame.size.height = 0;
    for (var i = 0; i < objj_msgSend(workingArray, "count"); i++)
    {
        var currentView = objj_msgSend(workingArray, "objectAtIndex:", i),
            position = objj_msgSend(self, "_nextPosition");
        position.size.height = objj_msgSend(currentView, "frameSize").height;
        objj_msgSend(currentView, "setAutoresizingMask:", CPViewWidthSizable);
        objj_msgSend(currentView, "setFrame:", position);
        if (objj_msgSend(currentView, "respondsToSelector:", sel_getUid("layout")))
            objj_msgSend(currentView, "layout");
        objj_msgSend(self, "addSubview:", currentView);
        objj_msgSend(self._stackedViews, "addObject:", currentView);
        stackViewFrame.size.height += objj_msgSend(currentView, "frame").size.height + self._padding;
    }
    stackViewFrame.size.height += self._padding;
    objj_msgSend(self, "setFrame:", stackViewFrame);
}
,["void"]), new objj_method(sel_getUid("removeAllViews:"), function $TNStackView__removeAllViews_(self, _cmd, aSender)
{
    for (var i = 0; i < objj_msgSend(self._dataSource, "count"); i++)
        objj_msgSend(objj_msgSend(self._dataSource, "objectAtIndex:", i), "removeFromSuperview");
    objj_msgSend(self._dataSource, "removeAllObjects");
    objj_msgSend(self, "reload");
}
,["id","id"]), new objj_method(sel_getUid("reverse:"), function $TNStackView__reverse_(self, _cmd, sender)
{
    self._reversed = !self._reversed;
    objj_msgSend(self, "reload");
}
,["id","id"])]);
}p;13;TNSwipeView.jt;18578;@STATIC;1.0;I;23;Foundation/Foundation.jI;18;AppKit/CPControl.jI;15;AppKit/CPView.jt;18487;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPControl.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
var CSSProperties = {
        "webkit" : {
            "transform": "WebkitTransform",
            "backfaceVisibility": "WebkitBackfaceVisibility",
            "perspective": "WebkitPerspective",
            "transformStyle": "WebkitTransformStyle",
            "transition": "WebkitTransition",
            "transitionTimingFunction": "WebkitTransitionTimingFunction",
            "transitionEnd": "webkitTransitionEnd"
        },
        "gecko" : {
            "transform": "MozTransform",
            "backfaceVisibility": "MozBackfaceVisibility",
            "perspective": "MozPerspective",
            "transformStyle": "MozTransformStyle",
            "transition": "MozTransition",
            "transitionTimingFunction": "MozTransitionTimingFunction",
            "transitionEnd": "transitionend"
        }
    };
TNSwipeViewDirectionRight = 1;
TNSwipeViewDirectionLeft = 2;
TNSwipeViewCSSTranslateFunctionX = "translateX";
TNSwipeViewCSSTranslateFunctionY = "translateY";
try
{
    TNSwipeViewBrowserEngine = (typeof(document.body.style.WebkitTransform) != "undefined") ? "webkit" : "gecko";
}
catch(e)
{
    TNSwipeViewBrowserEngine = "gecko";
}
{var the_class = objj_allocateClassPair(CPControl, "TNSwipeView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_views"), new objj_ivar("_translationFunction"), new objj_ivar("_animationDuration"), new objj_ivar("_minimalRatio"), new objj_ivar("_isAnimating"), new objj_ivar("_generalInitialTrackingPoint"), new objj_ivar("_initialTrackingPoint"), new objj_ivar("_mainView"), new objj_ivar("_validateFunction"), new objj_ivar("_animationGuardTimer"), new objj_ivar("_currentViewIndex")]);

       
       

       
       

       
       





       
       






       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("views"), function $TNSwipeView__views(self, _cmd)
{
return self._views;
}
,["CPArray"]), new objj_method(sel_getUid("_setViews:"), function $TNSwipeView___setViews_(self, _cmd, newValue)
{
self._views = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("translationFunction"), function $TNSwipeView__translationFunction(self, _cmd)
{
return self._translationFunction;
}
,["CPString"]), new objj_method(sel_getUid("_setTranslationFunction:"), function $TNSwipeView___setTranslationFunction_(self, _cmd, newValue)
{
self._translationFunction = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("animationDuration"), function $TNSwipeView__animationDuration(self, _cmd)
{
return self._animationDuration;
}
,["float"]), new objj_method(sel_getUid("setAnimationDuration:"), function $TNSwipeView__setAnimationDuration_(self, _cmd, newValue)
{
self._animationDuration = newValue;
}
,["void","float"]), new objj_method(sel_getUid("minimalRatio"), function $TNSwipeView__minimalRatio(self, _cmd)
{
return self._minimalRatio;
}
,["float"]), new objj_method(sel_getUid("setMinimalRatio:"), function $TNSwipeView__setMinimalRatio_(self, _cmd, newValue)
{
self._minimalRatio = newValue;
}
,["void","float"]), new objj_method(sel_getUid("initWithFrame:"), function $TNSwipeView__initWithFrame_(self, _cmd, aRect)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNSwipeView").super_class }, "initWithFrame:", aRect))
    {
        self._animationDuration = 0.3;
        self._currentViewIndex = 0;
        self._minimalRatio = 0.3;
        self._isAnimating = NO;
        self._mainView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", objj_msgSend(self, "bounds"));
        self._translationFunction = TNSwipeViewCSSTranslateFunctionX;
        self._views = objj_msgSend(CPArray, "array");
        self._validateFunction = function(e){
            this.removeEventListener(CSSProperties[TNSwipeViewBrowserEngine].transitionEnd, self._validateFunction, YES);
            self._mainView._DOMElement.style[CSSProperties[TNSwipeViewBrowserEngine].transition] = "0s";
            objj_msgSend(self, "_commitAnimation");
        };
        objj_msgSend(self._mainView, "setAutoresizingMask:", CPViewHeightSizable);
        objj_msgSend(self, "addSubview:", self._mainView);
        objj_msgSend(self, "setNeedsLayout");
    }
    return self;
}
,["TNSwipeView","CGRect"]), new objj_method(sel_getUid("initWithFrame:translationFunction:"), function $TNSwipeView__initWithFrame_translationFunction_(self, _cmd, aRect, aFunction)
{
    if (self = objj_msgSend(self, "initWithFrame:", aRect))
    {
        self._translationFunction = aFunction;
    }
    return self
}
,["TNSwipeView","CGRect","CPString"]), new objj_method(sel_getUid("resetAnimating:"), function $TNSwipeView__resetAnimating_(self, _cmd, aTimer)
{
    self._isAnimating = NO;
    self._animationGuardTimer = nil;
}
,["void","CPTimer"]), new objj_method(sel_getUid("setViews:"), function $TNSwipeView__setViews_(self, _cmd, someViews)
{
    self._views = someViews;
    objj_msgSend(self, "setNeedsLayout");
}
,["void","CPArray"]), new objj_method(sel_getUid("mouseDown:"), function $TNSwipeView__mouseDown_(self, _cmd, anEvent)
{
    self._initialTrackingPoint = objj_msgSend(self._mainView, "convertPointFromBase:", objj_msgSend(anEvent, "globalLocation"));
    self._generalInitialTrackingPoint = objj_msgSend(self, "convertPointFromBase:", objj_msgSend(anEvent, "globalLocation"));
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNSwipeView").super_class }, "mouseDown:", anEvent);
}
,["void","CPEvent"]), new objj_method(sel_getUid("trackMouse:"), function $TNSwipeView__trackMouse_(self, _cmd, anEvent)
{
    if (!self._isAnimating)
    {
        var currentDraggingPoint = objj_msgSend(self._mainView, "convertPointFromBase:", objj_msgSend(anEvent, "globalLocation"));
        if (self._translationFunction == TNSwipeViewCSSTranslateFunctionX)
        {
            currentDraggingPoint.x -= self._initialTrackingPoint.x;
            objj_msgSend(self, "_setSlideValue:speed:shouldCommit:", currentDraggingPoint.x, 0.05, NO);
        }
        else
        {
            currentDraggingPoint.y -= self._initialTrackingPoint.y;
            objj_msgSend(self, "_setSlideValue:speed:shouldCommit:", currentDraggingPoint.y, 0.05, NO);
        }
    }
    else
    {
        CPLog.warn("Animating.... forget it");
    }
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNSwipeView").super_class }, "trackMouse:", anEvent);
}
,["void","CPEvent"]), new objj_method(sel_getUid("stopTracking:at:mouseIsUp:"), function $TNSwipeView__stopTracking_at_mouseIsUp_(self, _cmd, lastPoint, aPoint, mouseIsUp)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNSwipeView").super_class }, "stopTracking:at:mouseIsUp:", lastPoint, aPoint, mouseIsUp);
    if (!mouseIsUp)
        return;
    if (self._isAnimating)
        return;
    var movement,
        minimalMovement;
    if (self._translationFunction == TNSwipeViewCSSTranslateFunctionX)
    {
        movement = self._generalInitialTrackingPoint.x - aPoint.x;
        minimalMovement = objj_msgSend(self, "frameSize").width * self._minimalRatio;
    }
    else
    {
        movement = self._generalInitialTrackingPoint.y - aPoint.y;
        minimalMovement = objj_msgSend(self, "frameSize").height * self._minimalRatio;
    }
    if (movement != 0 && Math.abs(movement) >= minimalMovement)
    {
        if (movement < 0)
        {
            if (self._currentViewIndex > 0)
            {
                objj_msgSend(self, "_performDirectionalSlide:", TNSwipeViewDirectionRight);
                return;
            }
        }
        else
        {
            if (self._currentViewIndex < objj_msgSend(self._views, "count") - 1)
            {
                objj_msgSend(self, "_performDirectionalSlide:", TNSwipeViewDirectionLeft);
                return;
            }
        }
    }
    objj_msgSend(self, "_resetTranslation");
}
,["void","CGPoint","CGPoint","BOOL"]), new objj_method(sel_getUid("layoutSubviews"), function $TNSwipeView__layoutSubviews(self, _cmd)
{
    if (self._translationFunction == TNSwipeViewCSSTranslateFunctionX)
    {
        objj_msgSend(self._mainView, "setFrameSize:", CGSizeMake(objj_msgSend(self, "frameSize").width * objj_msgSend(self._views, "count"), objj_msgSend(self, "frameSize").height));
        for (var i = 0; i < objj_msgSend(self._views, "count"); i++)
        {
            var currentView = objj_msgSend(self._views, "objectAtIndex:", i);
            objj_msgSend(currentView, "setFrame:", objj_msgSend(self, "bounds"));
            objj_msgSend(currentView, "setFrameOrigin:", CGPointMake(i * objj_msgSend(self, "frameSize").width, 0));
            objj_msgSend(self._mainView, "addSubview:", currentView);
        }
    }
    else
    {
        objj_msgSend(self._mainView, "setFrameSize:", CGSizeMake(objj_msgSend(self, "frameSize").width, objj_msgSend(self, "frameSize").height * objj_msgSend(self._views, "count")));
        for (var i = 0; i < objj_msgSend(self._views, "count"); i++)
        {
            var currentView = objj_msgSend(self._views, "objectAtIndex:", i);
            objj_msgSend(currentView, "setFrame:", objj_msgSend(self, "bounds"));
            objj_msgSend(currentView, "setFrameOrigin:", CGPointMake(0, i * objj_msgSend(self, "frameSize").height));
            objj_msgSend(self._mainView, "addSubview:", currentView);
        }
    }
}
,["void"]), new objj_method(sel_getUid("setFrame:"), function $TNSwipeView__setFrame_(self, _cmd, aFrame)
{
    var currentFrameWidth = objj_msgSend(self, "frameSize").width,
        widthOffset;
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNSwipeView").super_class }, "setFrame:", aFrame);
    if (self._currentViewIndex == 0)
        return;
    widthOffset = aFrame.size.width - currentFrameWidth;
    objj_msgSend(self._mainView, "setFrameOrigin:", CGPointMake((objj_msgSend(self._mainView, "frameOrigin").x - (widthOffset * self._currentViewIndex)) , 0));
}
,["void","CGRect"]), new objj_method(sel_getUid("_setSlideValue:speed:shouldCommit:"), function $TNSwipeView___setSlideValue_speed_shouldCommit_(self, _cmd, aDirectionalSlideValue, aSpeed, shouldCommit)
{
    self._mainView._DOMElement.style[CSSProperties[TNSwipeViewBrowserEngine].transition] = aSpeed + "s";
    if (shouldCommit)
    {
        self._animationGuardTimer = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", 1.0, self, sel_getUid("resetAnimating:"), nil, NO);
        self._isAnimating = YES;
        self._mainView._DOMElement.addEventListener(CSSProperties[TNSwipeViewBrowserEngine].transitionEnd, self._validateFunction, YES);
    }
    self._mainView._DOMElement.style[CSSProperties[TNSwipeViewBrowserEngine].backfaceVisibility] = "hidden";
    self._mainView._DOMElement.style[CSSProperties[TNSwipeViewBrowserEngine].perspective] = 1000;
    self._mainView._DOMElement.style[CSSProperties[TNSwipeViewBrowserEngine].transformStyle] = "preserve-3d";
    self._mainView._DOMElement.style[CSSProperties[TNSwipeViewBrowserEngine].transform] = self._translationFunction + "(" + aDirectionalSlideValue + "px)";
}
,["void","float","float","BOOL"]), new objj_method(sel_getUid("slideToViewIndex:"), function $TNSwipeView__slideToViewIndex_(self, _cmd, anIndex)
{
    if (anIndex == self._currentViewIndex)
        return;
    if (anIndex > objj_msgSend(self._views, "count") - 1)
        anIndex == objj_msgSend(self._views, "count") - 1;
    if (anIndex < 0)
        anIndex = 0;
    if (anIndex > self._currentViewIndex)
    {
        if (self._translationFunction == TNSwipeViewCSSTranslateFunctionX)
            objj_msgSend(self, "_setSlideValue:speed:shouldCommit:", - (anIndex - self._currentViewIndex) * objj_msgSend(self, "frameSize").width, self._animationDuration, YES);
        else
            objj_msgSend(self, "_setSlideValue:speed:shouldCommit:", - (anIndex - self._currentViewIndex) * objj_msgSend(self, "frameSize").height, self._animationDuration, YES);
    }
    else if (anIndex < self._currentViewIndex)
    {
        if (self._translationFunction == TNSwipeViewCSSTranslateFunctionX)
            objj_msgSend(self, "_setSlideValue:speed:shouldCommit:", (self._currentViewIndex - anIndex) * objj_msgSend(self, "frameSize").width, self._animationDuration, YES);
        else
            objj_msgSend(self, "_setSlideValue:speed:shouldCommit:", (self._currentViewIndex - anIndex) * objj_msgSend(self, "frameSize").height, self._animationDuration, YES);
    }
    self._currentViewIndex = anIndex;
}
,["void","int"]), new objj_method(sel_getUid("_resetTranslation"), function $TNSwipeView___resetTranslation(self, _cmd)
{
    objj_msgSend(self, "_setSlideValue:speed:shouldCommit:", 0.0, self._animationDuration, YES);
}
,["void"]), new objj_method(sel_getUid("_performDirectionalSlide:"), function $TNSwipeView___performDirectionalSlide_(self, _cmd, aDirection)
{
    if (self._isAnimating)
        return;
    var offset;
    switch (aDirection)
    {
        case TNSwipeViewDirectionLeft:
            if (self._currentViewIndex + 1 < objj_msgSend(self._views, "count"))
            {
                self._currentViewIndex++;
                if (self._translationFunction == TNSwipeViewCSSTranslateFunctionX)
                    offset = - objj_msgSend(self, "frameSize").width;
                else
                    offset = - objj_msgSend(self, "frameSize").height;
            }
            else
            {
                self._currentViewIndex = 0;
                if (self._translationFunction == TNSwipeViewCSSTranslateFunctionX)
                    offset = objj_msgSend(self, "frameSize").width * (objj_msgSend(self._views, "count") - 1);
                else
                    offset = objj_msgSend(self, "frameSize").height * (objj_msgSend(self._views, "count") - 1);
            }
            break;
        case TNSwipeViewDirectionRight:
            if (self._currentViewIndex > 0)
            {
                self._currentViewIndex--;
                if (self._translationFunction == TNSwipeViewCSSTranslateFunctionX)
                    offset = objj_msgSend(self, "frameSize").width;
                else
                    offset = objj_msgSend(self, "frameSize").height;
            }
            else
            {
                self._currentViewIndex = objj_msgSend(self._views, "count") - 1;
                if (self._translationFunction == TNSwipeViewCSSTranslateFunctionX)
                    offset = - (self._currentViewIndex * objj_msgSend(self, "frameSize").width);
                else
                    offset = - (self._currentViewIndex * objj_msgSend(self, "frameSize").height);
            }
            break;
    }
    objj_msgSend(self, "_setSlideValue:speed:shouldCommit:", offset, self._animationDuration, YES);
}
,["void","int"]), new objj_method(sel_getUid("_currentTranslation"), function $TNSwipeView___currentTranslation(self, _cmd)
{
    var t = self._mainView._DOMElement.style[CSSProperties[TNSwipeViewBrowserEngine].transform];
    t = t.replace(self._translationFunction + "(", "");
    t = t.replace("px)", "");
    if (t == "")
        t = 0;
    return parseInt(t);
}
,["int"]), new objj_method(sel_getUid("_commitAnimation"), function $TNSwipeView___commitAnimation(self, _cmd)
{
    objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
    if (self._translationFunction == TNSwipeViewCSSTranslateFunctionX)
    {
        var tx = objj_msgSend(self, "_currentTranslation"),
            newX = objj_msgSend(self._mainView, "frameOrigin").x + tx;
        objj_msgSend(self._mainView, "setFrameOrigin:", CGPointMake(newX, 0));
    }
    else
    {
        var ty = objj_msgSend(self, "_currentTranslation"),
            newY = objj_msgSend(self._mainView, "frameOrigin").y + ty;
        objj_msgSend(self._mainView, "setFrameOrigin:", CGPointMake(0, newY));
    }
    self._mainView._DOMElement.style[CSSProperties[TNSwipeViewBrowserEngine].transform] = self._translationFunction + "(0px)";
    if (self._animationGuardTimer)
        objj_msgSend(self._animationGuardTimer, "invalidate");
    objj_msgSend(self._mainView, "setNeedsDisplay:", YES);
    self._animationGuardTimer = nil;
    self._isAnimating = NO;
}
,["void"]), new objj_method(sel_getUid("nextView:"), function $TNSwipeView__nextView_(self, _cmd, aSender)
{
    objj_msgSend(self, "_performDirectionalSlide:", TNSwipeViewDirectionLeft);
}
,["id","id"]), new objj_method(sel_getUid("previousView:"), function $TNSwipeView__previousView_(self, _cmd, aSender)
{
    objj_msgSend(self, "_performDirectionalSlide:", TNSwipeViewDirectionRight);
}
,["id","id"])]);
}
{
var the_class = objj_getClass("TNSwipeView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNSwipeView\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $TNSwipeView__initWithCoder_(self, _cmd, aCoder)
{
    self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNSwipeView").super_class }, "initWithCoder:", aCoder);
    if (self)
    {
        self._views = objj_msgSend(aCoder, "decodeObjectForKey:", "_views");
        self._translationFunction = objj_msgSend(aCoder, "decodeObjectForKey:", "_translationFunction");
        self._animationDuration = objj_msgSend(aCoder, "decodeObjectForKey:", "_animationDuration");
        self._mainView = objj_msgSend(aCoder, "decodeObjectForKey:", "_mainView");
        self._minimalRatio = objj_msgSend(aCoder, "decodeObjectForKey:", "_minimalRatio");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNSwipeView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNSwipeView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self._views, "_views");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._translationFunction, "_translationFunction");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._animationDuration, "_animationDuration");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._mainView, "_mainView");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._minimalRatio, "_minimalRatio");
}
,["void","CPCoder"])]);
}p;23;TNTableViewDataSource.jt;15095;@STATIC;1.0;I;23;Foundation/Foundation.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPTableView.jt;14995;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNTableViewDataSource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_content"), new objj_ivar("_searchableKeyPaths"), new objj_ivar("_table"), new objj_ivar("_displayFilter"), new objj_ivar("_delegate"), new objj_ivar("_filteredContent"), new objj_ivar("_searchField"), new objj_ivar("_filter"), new objj_ivar("_needsFilter")]);
       
       





       
       
















       
       




       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("content"), function $TNTableViewDataSource__content(self, _cmd)
{
return self._content;
}
,["CPArray"]), new objj_method(sel_getUid("setContent:"), function $TNTableViewDataSource__setContent_(self, _cmd, newValue)
{
self._content = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("searchableKeyPaths"), function $TNTableViewDataSource__searchableKeyPaths(self, _cmd)
{
return self._searchableKeyPaths;
}
,["CPArray"]), new objj_method(sel_getUid("setSearchableKeyPaths:"), function $TNTableViewDataSource__setSearchableKeyPaths_(self, _cmd, newValue)
{
self._searchableKeyPaths = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("table"), function $TNTableViewDataSource__table(self, _cmd)
{
return self._table;
}
,["CPTableView"]), new objj_method(sel_getUid("setTable:"), function $TNTableViewDataSource__setTable_(self, _cmd, newValue)
{
self._table = newValue;
}
,["void","CPTableView"]), new objj_method(sel_getUid("displayFilter"), function $TNTableViewDataSource__displayFilter(self, _cmd)
{
return self._displayFilter;
}
,["CPPredicate"]), new objj_method(sel_getUid("setDisplayFilter:"), function $TNTableViewDataSource__setDisplayFilter_(self, _cmd, newValue)
{
self._displayFilter = newValue;
}
,["void","CPPredicate"]), new objj_method(sel_getUid("delegate"), function $TNTableViewDataSource__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNTableViewDataSource__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("init"), function $TNTableViewDataSource__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNTableViewDataSource").super_class }, "init"))
    {
        self._content = objj_msgSend(CPArray, "array");
        self._filteredContent = objj_msgSend(CPArray, "array");
        self._searchableKeyPaths = objj_msgSend(CPArray, "array");
        self._filter = nil;
        self._needsFilter = NO;
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("filterObjects:"), function $TNTableViewDataSource__filterObjects_(self, _cmd, sender)
{
    if (!self._searchField)
        self._searchField = sender;
    objj_msgSend(self, "setFilterString:", objj_msgSend(sender, "stringValue"));
}
,["id","id"]), new objj_method(sel_getUid("setFilterPredicate:"), function $TNTableViewDataSource__setFilterPredicate_(self, _cmd, aPredicate)
{
    self._filter = aPredicate;
    objj_msgSend(self, "_performFiltering");
}
,["void","CPPredicate"]), new objj_method(sel_getUid("setFilterString:"), function $TNTableViewDataSource__setFilterString_(self, _cmd, aString)
{
    if (aString && objj_msgSend(aString, "length"))
    {
        try {self._filter = objj_msgSend(CPPredicate, "predicateWithFormat:", aString);}catch(e){};
        if (!self._filter)
        {
            var tempPredicateString = "";
            for (var i = 0; i < objj_msgSend(self._searchableKeyPaths, "count"); i++)
            {
                tempPredicateString += objj_msgSend(self._searchableKeyPaths, "objectAtIndex:", i) + " contains[c] '" + aString + "' ";
                if (i + 1 < objj_msgSend(self._searchableKeyPaths, "count"))
                    tempPredicateString += " OR ";
            }
            if (objj_msgSend(tempPredicateString, "length"))
                self._filter = objj_msgSend(CPPredicate, "predicateWithFormat:", tempPredicateString);
        }
    }
    else
        self._filter = nil;
    objj_msgSend(self, "_performFiltering");
}
,["void","CPString"]), new objj_method(sel_getUid("_filterWithPredicate:"), function $TNTableViewDataSource___filterWithPredicate_(self, _cmd, aPredicate)
{
    if (self._displayFilter)
        return objj_msgSend(objj_msgSend(self._content, "filteredArrayUsingPredicate:", self._filter), "filteredArrayUsingPredicate:", self._displayFilter);
    else
        return objj_msgSend(self._content, "filteredArrayUsingPredicate:", self._filter);
}
,["void","CPPredicate"]), new objj_method(sel_getUid("_performFiltering"), function $TNTableViewDataSource___performFiltering(self, _cmd)
{
    self._filteredContent = objj_msgSend(CPArray, "array");
    if (!self._filter)
    {
        self._filteredContent = self._displayFilter ? objj_msgSend(objj_msgSend(self._content, "copy"), "filteredArrayUsingPredicate:", self._displayFilter) : objj_msgSend(self._content, "copy");
        objj_msgSend(self._table, "reloadData");
        return;
    }
    self._filteredContent = objj_msgSend(self, "_filterWithPredicate:", self._filter);
    objj_msgSend(self._table, "reloadData");
}
,["void"]), new objj_method(sel_getUid("setContent:"), function $TNTableViewDataSource__setContent_(self, _cmd, aContent)
{
    self._content = aContent;
    self._filteredContent = self._displayFilter ? objj_msgSend(objj_msgSend(self._content, "copy"), "filteredArrayUsingPredicate:", self._displayFilter) : objj_msgSend(self._content, "copy");
    self._needsFilter = YES;
}
,["void","CPArray"]), new objj_method(sel_getUid("addObject:"), function $TNTableViewDataSource__addObject_(self, _cmd, anObject)
{
    objj_msgSend(self._content, "addObject:", anObject);
    if (!self._displayFilter || objj_msgSend(self._displayFilter, "evaluateWithObject:", anObject))
        objj_msgSend(self._filteredContent, "addObject:", anObject);
    self._needsFilter = YES;
}
,["void","id"]), new objj_method(sel_getUid("addObjectsFromArray:"), function $TNTableViewDataSource__addObjectsFromArray_(self, _cmd, someObjects)
{
    objj_msgSend(self._content, "addObjectsFromArray:", someObjects);
    if (!self._displayFilter)
    {
        var enumerator = objj_msgSend(someObjects, "objectEnumerator"),
            obj;
        while (obj = objj_msgSend(enumerator, "nextObject"))
        {
            if (objj_msgSend(self._displayFilter, "evaluateWithObject:", obj))
                objj_msgSend(self._filteredContent, "addObject:", obj);
        }
    }
    self._needsFilter = YES;
}
,["void","CPArray"]), new objj_method(sel_getUid("containsObject:"), function $TNTableViewDataSource__containsObject_(self, _cmd, anObject)
{
    return objj_msgSend(self._filteredContent, "containsObject:", anObject);
}
,["void","id"]), new objj_method(sel_getUid("insertObject:atIndex:"), function $TNTableViewDataSource__insertObject_atIndex_(self, _cmd, anObject, anIndex)
{
    objj_msgSend(self._content, "insertObject:atIndex:", anObject, anIndex);
    if (!self._displayFilter || objj_msgSend(self._displayFilter, "evaluateWithObject:", anObject))
        objj_msgSend(self._filteredContent, "insertObject:atIndex:", anObject, anIndex);
    self._needsFilter = YES;
}
,["void","id","int"]), new objj_method(sel_getUid("objectAtIndex:"), function $TNTableViewDataSource__objectAtIndex_(self, _cmd, index)
{
    return objj_msgSend(self._filteredContent, "objectAtIndex:", index);
}
,["void","int"]), new objj_method(sel_getUid("objectsAtIndexes:"), function $TNTableViewDataSource__objectsAtIndexes_(self, _cmd, aSet)
{
    return objj_msgSend(self._filteredContent, "objectsAtIndexes:", aSet);
}
,["CPArray","CPIndexSet"]), new objj_method(sel_getUid("removeObjectAtIndex:"), function $TNTableViewDataSource__removeObjectAtIndex_(self, _cmd, index)
{
    var object = objj_msgSend(self._filteredContent, "objectAtIndex:", index);
    objj_msgSend(self._filteredContent, "removeObjectAtIndex:", index);
    objj_msgSend(self._content, "removeObject:", object);
    self._needsFilter = YES;
}
,["void","int"]), new objj_method(sel_getUid("removeObjectsAtIndexes:"), function $TNTableViewDataSource__removeObjectsAtIndexes_(self, _cmd, aSet)
{
    try
    {
        var objects = objj_msgSend(self._filteredContent, "objectsAtIndexes:", aSet);
        objj_msgSend(self._filteredContent, "removeObjectsAtIndexes:", aSet);
        objj_msgSend(self._content, "removeObjectsInArray:", objects);
        self._needsFilter = YES;
    }
    catch(e)
    {
        CPLog.error(e);
    }
}
,["void","CPIndexSet"]), new objj_method(sel_getUid("removeObject:"), function $TNTableViewDataSource__removeObject_(self, _cmd, anObject)
{
    objj_msgSend(self._content, "removeObject:", anObject);
    objj_msgSend(self._filteredContent, "removeObject:", anObject);
    self._needsFilter = YES;
}
,["void","id"]), new objj_method(sel_getUid("removeAllObjects"), function $TNTableViewDataSource__removeAllObjects(self, _cmd)
{
    objj_msgSend(self._content, "removeAllObjects");
    objj_msgSend(self._filteredContent, "removeAllObjects");
    self._needsFilter = YES;
}
,["void"]), new objj_method(sel_getUid("removeLastObject"), function $TNTableViewDataSource__removeLastObject(self, _cmd)
{
    objj_msgSend(self._content, "removeLastObject");
    objj_msgSend(self._filteredContent, "removeLastObject");
    self._needsFilter = YES;
}
,["void"]), new objj_method(sel_getUid("removeFirstObject"), function $TNTableViewDataSource__removeFirstObject(self, _cmd)
{
    objj_msgSend(self._content, "removeFirstObject");
    objj_msgSend(self._filteredContent, "removeFirstObject");
    self._needsFilter = YES;
}
,["void"]), new objj_method(sel_getUid("indexOfObject:"), function $TNTableViewDataSource__indexOfObject_(self, _cmd, anObject)
{
    return objj_msgSend(self._filteredContent, "indexOfObject:", anObject);
}
,["int","id"]), new objj_method(sel_getUid("count"), function $TNTableViewDataSource__count(self, _cmd)
{
    return objj_msgSend(self._filteredContent, "count");
}
,["int"]), new objj_method(sel_getUid("removeObjectsInArray:"), function $TNTableViewDataSource__removeObjectsInArray_(self, _cmd, someObjects)
{
    objj_msgSend(self._content, "removeObjectsInArray:", someObjects);
    objj_msgSend(self._filteredContent, "removeObjectsInArray:", someObjects);
    self._needsFilter = YES;
}
,["void","CPArray"]), new objj_method(sel_getUid("numberOfRowsInTableView:"), function $TNTableViewDataSource__numberOfRowsInTableView_(self, _cmd, aTable)
{
    return objj_msgSend(self._filteredContent, "count");
}
,["CPNumber","CPTableView"]), new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"), function $TNTableViewDataSource__tableView_objectValueForTableColumn_row_(self, _cmd, aTableView, aCol, aRow)
{
    if (self._needsFilter)
    {
        objj_msgSend(self, "filterObjects:", self._searchField);
        self._needsFilter = NO;
    }
    if (aRow >= objj_msgSend(self._filteredContent, "count"))
        return nil;
    if (self._delegate
        && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("dataSource:willReachEndOfData:"))
        && objj_msgSend(aTableView, "numberOfRows") == aRow + 1)
    {
        objj_msgSend(self._delegate, "dataSource:willReachEndOfData:", self, aRow);
    }
    return objj_msgSend(objj_msgSend(self._filteredContent, "objectAtIndex:", aRow), "valueForKeyPath:", objj_msgSend(aCol, "identifier"));
}
,["id","CPTableView","CPNumber","CPNumber"]), new objj_method(sel_getUid("tableView:sortDescriptorsDidChange:"), function $TNTableViewDataSource__tableView_sortDescriptorsDidChange_(self, _cmd, aTableView, oldDescriptors)
{
    var indexes = objj_msgSend(aTableView, "selectedRowIndexes"),
        selectedObjects = objj_msgSend(self._filteredContent, "objectsAtIndexes:", indexes),
        indexesToSelect = objj_msgSend(objj_msgSend(CPIndexSet, "alloc"), "init");
    objj_msgSend(self._filteredContent, "sortUsingDescriptors:", objj_msgSend(aTableView, "sortDescriptors"));
    objj_msgSend(self._content, "sortUsingDescriptors:", objj_msgSend(aTableView, "sortDescriptors"));
    objj_msgSend(self._table, "reloadData");
    for (var i = 0; i < objj_msgSend(selectedObjects, "count"); i++)
    {
        var object = objj_msgSend(selectedObjects, "objectAtIndex:", i);
        objj_msgSend(indexesToSelect, "addIndex:", objj_msgSend(self._filteredContent, "indexOfObject:", object));
    }
    objj_msgSend(self._table, "selectRowIndexes:byExtendingSelection:", indexesToSelect, NO);
}
,["void","CPTableView","CPArray"]), new objj_method(sel_getUid("tableView:setObjectValue:forTableColumn:row:"), function $TNTableViewDataSource__tableView_setObjectValue_forTableColumn_row_(self, _cmd, aTableView, aValue, aCol, aRow)
{
    if (aRow >= objj_msgSend(self._filteredContent, "count"))
        return;
    var identifier = objj_msgSend(aCol, "identifier");
    objj_msgSend(objj_msgSend(self._filteredContent, "objectAtIndex:", aRow), "setValue:forKeyPath:", aValue, identifier);
}
,["void","CPTableView","id","CPTableColumn","int"]), new objj_method(sel_getUid("tableView:writeRowsWithIndexes:toPasteboard:"), function $TNTableViewDataSource__tableView_writeRowsWithIndexes_toPasteboard_(self, _cmd, aTableView, rowIndexes, thePasteBoard)
{
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("dataSource:writeRowsWithIndexes:toPasteboard:")))
        return objj_msgSend(self._delegate, "dataSource:writeRowsWithIndexes:toPasteboard:", self, rowIndexes, thePasteBoard);
    return NO;
}
,["BOOL","CPTableView","CPIndexSet","CPPasteboard"]), new objj_method(sel_getUid("tableView:validateDrop:proposedRow:proposedDropOperation:"), function $TNTableViewDataSource__tableView_validateDrop_proposedRow_proposedDropOperation_(self, _cmd, aTableView, info, row, operation)
{
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("dataSource:validateDrop:proposedRow:proposedDropOperation:")))
        return objj_msgSend(self._delegate, "dataSource:validateDrop:proposedRow:proposedDropOperation:", self, info, row, operation);
    return CPDragOperationNone;
}
,["CPDragOperation","CPTableView","CPDraggingInfo","int","CPTableViewDropOperation"]), new objj_method(sel_getUid("tableView:acceptDrop:row:dropOperation:"), function $TNTableViewDataSource__tableView_acceptDrop_row_dropOperation_(self, _cmd, aTableView, info, row, operation)
{
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("dataSource:acceptDrop:row:dropOperation:")))
        return objj_msgSend(self._delegate, "dataSource:acceptDrop:row:dropOperation:", self, info, row, operation);
    return NO;
}
,["BOOL","CPTableView","CPDraggingInfo","int","CPTableViewDropOperation"])]);
}p;27;TNTableViewLazyDataSource.jt;9829;@STATIC;1.0;I;23;Foundation/Foundation.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPTableView.jt;9730;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNTableViewLazyDataSource"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_currentlyLoading"), new objj_ivar("_content"), new objj_ivar("_searchableKeyPaths"), new objj_ivar("_table"), new objj_ivar("_delegate"), new objj_ivar("_lazyLoadingTrigger"), new objj_ivar("_totalCount"), new objj_ivar("_searchField"), new objj_ivar("_filter")]);
       
       

       
       














       
       



objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isCurrentlyLoading"), function $TNTableViewLazyDataSource__isCurrentlyLoading(self, _cmd)
{
return self._currentlyLoading;
}
,["BOOL"]), new objj_method(sel_getUid("setCurrentlyLoading:"), function $TNTableViewLazyDataSource__setCurrentlyLoading_(self, _cmd, newValue)
{
self._currentlyLoading = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("content"), function $TNTableViewLazyDataSource__content(self, _cmd)
{
return self._content;
}
,["CPArray"]), new objj_method(sel_getUid("setContent:"), function $TNTableViewLazyDataSource__setContent_(self, _cmd, newValue)
{
self._content = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("searchableKeyPaths"), function $TNTableViewLazyDataSource__searchableKeyPaths(self, _cmd)
{
return self._searchableKeyPaths;
}
,["CPArray"]), new objj_method(sel_getUid("setSearchableKeyPaths:"), function $TNTableViewLazyDataSource__setSearchableKeyPaths_(self, _cmd, newValue)
{
self._searchableKeyPaths = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("table"), function $TNTableViewLazyDataSource__table(self, _cmd)
{
return self._table;
}
,["CPTableView"]), new objj_method(sel_getUid("setTable:"), function $TNTableViewLazyDataSource__setTable_(self, _cmd, newValue)
{
self._table = newValue;
}
,["void","CPTableView"]), new objj_method(sel_getUid("delegate"), function $TNTableViewLazyDataSource__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNTableViewLazyDataSource__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("lazyLoadingTrigger"), function $TNTableViewLazyDataSource__lazyLoadingTrigger(self, _cmd)
{
return self._lazyLoadingTrigger;
}
,["int"]), new objj_method(sel_getUid("setLazyLoadingTrigger:"), function $TNTableViewLazyDataSource__setLazyLoadingTrigger_(self, _cmd, newValue)
{
self._lazyLoadingTrigger = newValue;
}
,["void","int"]), new objj_method(sel_getUid("totalCount"), function $TNTableViewLazyDataSource__totalCount(self, _cmd)
{
return self._totalCount;
}
,["int"]), new objj_method(sel_getUid("setTotalCount:"), function $TNTableViewLazyDataSource__setTotalCount_(self, _cmd, newValue)
{
self._totalCount = newValue;
}
,["void","int"]), new objj_method(sel_getUid("init"), function $TNTableViewLazyDataSource__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNTableViewLazyDataSource").super_class }, "init"))
    {
        self._searchableKeyPaths = objj_msgSend(CPArray, "array");
        self._content = objj_msgSend(CPArray, "array");
        self._lazyLoadingTrigger = 10;
        self._currentlyLoading = NO;
        self._totalCount = -1;
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("filterObjects:"), function $TNTableViewLazyDataSource__filterObjects_(self, _cmd, sender)
{
    if (!self._searchField)
        self._searchField = sender;
    self._filter = objj_msgSend(objj_msgSend(sender, "stringValue"), "uppercaseString");
    if (!(self._filter) || (self._filter == ""))
    {
        if (!self._currentlyLoading && self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("tableViewDataSource:removeFilter:")))
        {
            self._currentlyLoading = YES;
            objj_msgSend(self._delegate, "tableViewDataSource:removeFilter:", self, self._filter);
        }
        return;
    }
    if (!self._currentlyLoading && self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("tableViewDataSource:applyFilter:")))
    {
        self._currentlyLoading = YES;
        objj_msgSend(self._delegate, "tableViewDataSource:applyFilter:", self, self._filter);
    }
}
,["id","id"]), new objj_method(sel_getUid("setContent:"), function $TNTableViewLazyDataSource__setContent_(self, _cmd, aContent)
{
    self._content = aContent;
}
,["void","CPArray"]), new objj_method(sel_getUid("addObject:"), function $TNTableViewLazyDataSource__addObject_(self, _cmd, anObject)
{
    objj_msgSend(self._content, "addObject:", anObject);
}
,["void","id"]), new objj_method(sel_getUid("containsObject:"), function $TNTableViewLazyDataSource__containsObject_(self, _cmd, anObject)
{
    return objj_msgSend(self._content, "containsObject:", anObject);
}
,["void","id"]), new objj_method(sel_getUid("insertObject:atIndex:"), function $TNTableViewLazyDataSource__insertObject_atIndex_(self, _cmd, anObject, anIndex)
{
    objj_msgSend(self._content, "insertObject:atIndex:", anObject, anIndex);
}
,["void","id","int"]), new objj_method(sel_getUid("objectAtIndex:"), function $TNTableViewLazyDataSource__objectAtIndex_(self, _cmd, index)
{
    return objj_msgSend(self._content, "objectAtIndex:", index);
}
,["void","int"]), new objj_method(sel_getUid("objectsAtIndexes:"), function $TNTableViewLazyDataSource__objectsAtIndexes_(self, _cmd, aSet)
{
    return objj_msgSend(self._content, "objectsAtIndexes:", aSet);
}
,["CPArray","CPIndexSet"]), new objj_method(sel_getUid("removeObjectAtIndex:"), function $TNTableViewLazyDataSource__removeObjectAtIndex_(self, _cmd, index)
{
    objj_msgSend(self._content, "removeObjectAtIndex:", index);
}
,["void","int"]), new objj_method(sel_getUid("removeObjectsAtIndexes:"), function $TNTableViewLazyDataSource__removeObjectsAtIndexes_(self, _cmd, aSet)
{
    objj_msgSend(self._content, "removeObjectsAtIndexes:", aSet);
}
,["void","CPIndexSet"]), new objj_method(sel_getUid("removeObject:"), function $TNTableViewLazyDataSource__removeObject_(self, _cmd, anObject)
{
    objj_msgSend(self._content, "removeObject:", anObject);
}
,["void","id"]), new objj_method(sel_getUid("removeAllObjects"), function $TNTableViewLazyDataSource__removeAllObjects(self, _cmd)
{
    objj_msgSend(self._content, "removeAllObjects");
}
,["void"]), new objj_method(sel_getUid("removeLastObject"), function $TNTableViewLazyDataSource__removeLastObject(self, _cmd)
{
    objj_msgSend(self._content, "removeLastObject");
}
,["void"]), new objj_method(sel_getUid("removeFirstObject"), function $TNTableViewLazyDataSource__removeFirstObject(self, _cmd)
{
    objj_msgSend(self._content, "removeFirstObject");
}
,["void"]), new objj_method(sel_getUid("indexOfObject:"), function $TNTableViewLazyDataSource__indexOfObject_(self, _cmd, anObject)
{
    return objj_msgSend(self._content, "indexOfObject:", anObject);
}
,["int","id"]), new objj_method(sel_getUid("count"), function $TNTableViewLazyDataSource__count(self, _cmd)
{
    return objj_msgSend(self._content, "count");
}
,["int"]), new objj_method(sel_getUid("numberOfRowsInTableView:"), function $TNTableViewLazyDataSource__numberOfRowsInTableView_(self, _cmd, aTable)
{
    return objj_msgSend(self._content, "count");
}
,["CPNumber","CPTableView"]), new objj_method(sel_getUid("tableView:objectValueForTableColumn:row:"), function $TNTableViewLazyDataSource__tableView_objectValueForTableColumn_row_(self, _cmd, aTable, aCol, aRow)
{
    var identifier = objj_msgSend(aCol, "identifier");
    if (!self._currentlyLoading
        && (self._filter == "" || !self._filter)
        && objj_msgSend(self._content, "count") < self._totalCount
        && (aRow + self._lazyLoadingTrigger >= objj_msgSend(self._content, "count"))
        && self._delegate
        && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("tableViewDataSourceNeedsLoading:")))
    {
        self._currentlyLoading = YES;
        objj_msgSend(self._delegate, "tableViewDataSourceNeedsLoading:", self);
    }
    return objj_msgSend(objj_msgSend(self._content, "objectAtIndex:", aRow), "valueForKeyPath:", identifier);
}
,["id","CPTableView","CPNumber","CPNumber"]), new objj_method(sel_getUid("tableView:sortDescriptorsDidChange:"), function $TNTableViewLazyDataSource__tableView_sortDescriptorsDidChange_(self, _cmd, aTableView, oldDescriptors)
{
    var indexes = objj_msgSend(aTableView, "selectedRowIndexes"),
        selectedObjects = objj_msgSend(self._content, "objectsAtIndexes:", indexes),
        indexesToSelect = objj_msgSend(objj_msgSend(CPIndexSet, "alloc"), "init");
    objj_msgSend(self._content, "sortUsingDescriptors:", objj_msgSend(aTableView, "sortDescriptors"));
    for (var i = 0; i < objj_msgSend(selectedObjects, "count"); i++)
    {
        var object = objj_msgSend(selectedObjects, "objectAtIndex:", i);
        objj_msgSend(indexesToSelect, "addIndex:", objj_msgSend(self._content, "indexOfObject:", object));
    }
    objj_msgSend(self._table, "selectRowIndexes:byExtendingSelection:", indexesToSelect, NO);
}
,["void","CPTableView","CPArray"]), new objj_method(sel_getUid("tableView:setObjectValue:forTableColumn:row:"), function $TNTableViewLazyDataSource__tableView_setObjectValue_forTableColumn_row_(self, _cmd, aTableView, aValue, aCol, aRow)
{
    var identifier = objj_msgSend(aCol, "identifier");
    objj_msgSend(objj_msgSend(self._content, "objectAtIndex:", aRow), "setValue:forKeyPath:", aValue, identifier);
}
,["void","CPTableView","id","CPTableColumn","int"])]);
}p;11;TNTabView.jt;28249;@STATIC;1.0;I;23;Foundation/Foundation.jI;17;AppKit/CPButton.jI;18;AppKit/CPControl.jI;22;AppKit/CPTabViewItem.jI;16;AppKit/CPTheme.jI;15;AppKit/CPView.jI;21;AppKit/CPScrollView.ji;13;TNSwipeView.jt;28044;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPButton.j", NO);
objj_executeFile("AppKit/CPControl.j", NO);
objj_executeFile("AppKit/CPTabViewItem.j", NO);
objj_executeFile("AppKit/CPTheme.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPScrollView.j", NO);
objj_executeFile("TNSwipeView.j", YES);
var TNTabViewTabMargin = 2.0,
    TNTabViewTabsBackgroundColor,
    TNTabViewTabButtonColorNormal,
    TNTabViewTabButtonColorPressed,
    TNTabViewTabButtonColorActive,
    TNTabViewTabButtonRightBezelColorNormal,
    TNTabViewTabButtonLeftBezelColorNormal,
    TNTabViewTabButtonRightBezelColorPressed,
    TNTabViewTabButtonLeftBezelColorPressed;
var TNTabItemPrototypeThemeStateSelected;
{var the_class = objj_allocateClassPair(CPControl, "TNTabItemPrototype"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_label"), new objj_ivar("_index")]);

       
       


       
       




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("label"), function $TNTabItemPrototype__label(self, _cmd)
{
return self._label;
}
,["CPButton"]), new objj_method(sel_getUid("_setLabel:"), function $TNTabItemPrototype___setLabel_(self, _cmd, newValue)
{
self._label = newValue;
}
,["void","CPButton"]), new objj_method(sel_getUid("index"), function $TNTabItemPrototype__index(self, _cmd)
{
return self._index;
}
,["int"]), new objj_method(sel_getUid("setIndex:"), function $TNTabItemPrototype__setIndex_(self, _cmd, newValue)
{
self._index = newValue;
}
,["void","int"]), new objj_method(sel_getUid("initWithFrame:"), function $TNTabItemPrototype__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNTabItemPrototype").super_class }, "initWithFrame:", aFrame))
    {
        if (!TNTabItemPrototypeThemeStateSelected)
            TNTabItemPrototypeThemeStateSelected = CPThemeState("TNTabItemPrototypeThemeStateSelected");
        self._label = objj_msgSend(objj_msgSend(CPButton, "alloc"), "initWithFrame:", CGRectMake(0, 0, objj_msgSend(TNTabItemPrototype, "size").width - TNTabViewTabMargin, 22));
        objj_msgSend(self._label, "setAutoresizingMask:", CPViewMinXMargin | CPViewMinYMargin);
        objj_msgSend(self._label, "setValue:forThemeAttribute:inState:", TNTabViewTabButtonColorNormal, "bezel-color", CPThemeStateNormal);
        objj_msgSend(self._label, "setValue:forThemeAttribute:inState:", TNTabViewTabButtonColorPressed, "bezel-color", CPThemeStateHighlighted);
        objj_msgSend(self._label, "setValue:forThemeAttribute:inState:", TNTabViewTabButtonColorActive, "bezel-color", TNTabItemPrototypeThemeStateSelected);
        objj_msgSend(self._label, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "whiteColor"), "text-color", CPThemeStateHighlighted);
        objj_msgSend(self._label, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "blackColor"), "text-shadow-color", CPThemeStateHighlighted);
        objj_msgSend(self._label, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "whiteColor"), "text-color", TNTabItemPrototypeThemeStateSelected);
        objj_msgSend(self._label, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "blackColor"), "text-shadow-color", TNTabItemPrototypeThemeStateSelected);
        objj_msgSend(self, "addSubview:", self._label);
        objj_msgSend(self._label, "setTarget:", self);
        objj_msgSend(self._label, "setAction:", sel_getUid("_didClick:"));
        self._index = -1;
    }
    return self;
}
,["TNTabItemPrototype","CGRect"]), new objj_method(sel_getUid("_didClick:"), function $TNTabItemPrototype___didClick_(self, _cmd, aSender)
{
    objj_msgSend(objj_msgSend(self, "target"), "performSelector:withObject:", objj_msgSend(self, "action"), self);
}
,["id","id"]), new objj_method(sel_getUid("setObjectValue:"), function $TNTabItemPrototype__setObjectValue_(self, _cmd, anItem)
{
    objj_msgSend(self._label, "setTitle:", objj_msgSend(anItem, "label"));
}
,["void","CPTabView"]), new objj_method(sel_getUid("setThemeState:"), function $TNTabItemPrototype__setThemeState_(self, _cmd, aThemeState)
{
    objj_msgSend(self._label, "setThemeState:", aThemeState);
}
,["void","id"]), new objj_method(sel_getUid("unsetThemeState:"), function $TNTabItemPrototype__unsetThemeState_(self, _cmd, aThemeState)
{
    objj_msgSend(self._label, "unsetThemeState:", aThemeState);
}
,["void","id"]), new objj_method(sel_getUid("initWithCoder:"), function $TNTabItemPrototype__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNTabItemPrototype").super_class }, "initWithCoder:", aCoder))
        self._label = objj_msgSend(aCoder, "decodeObjectForKey:", "_label");
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNTabItemPrototype__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNTabItemPrototype").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self._label, "_label");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNTabItemPrototype__initialize(self, _cmd)
{
    TNTabViewTabButtonColorNormal = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", [
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNTabView), "pathForResource:", "TNTabView/tabitem-normal-left.png"), CGSizeMake(9, 22)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNTabView), "pathForResource:", "TNTabView/tabitem-normal-center.png"), CGSizeMake(1, 22)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNTabView), "pathForResource:", "TNTabView/tabitem-normal-right.png"), CGSizeMake(9, 22))], NO));
    TNTabViewTabButtonColorPressed = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", [
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNTabView), "pathForResource:", "TNTabView/tabitem-pressed-left.png"), CGSizeMake(9, 22)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNTabView), "pathForResource:", "TNTabView/tabitem-pressed-center.png"), CGSizeMake(1, 22)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNTabView), "pathForResource:", "TNTabView/tabitem-pressed-right.png"), CGSizeMake(9, 22))], NO));
    TNTabViewTabButtonColorActive = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", [
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNTabView), "pathForResource:", "TNTabView/tabitem-active-left.png"), CGSizeMake(9, 22)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNTabView), "pathForResource:", "TNTabView/tabitem-active-center.png"), CGSizeMake(1, 22)),
                    objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(objj_msgSend(CPBundle, "bundleForClass:", TNTabView), "pathForResource:", "TNTabView/tabitem-active-right.png"), CGSizeMake(9, 22))], NO));
}
,["void"]), new objj_method(sel_getUid("size"), function $TNTabItemPrototype__size(self, _cmd)
{
    return CGSizeMake(115.0, 25.0);
}
,["CGSize"])]);
}
{var the_class = objj_allocateClassPair(CPControl, "TNTabView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_delegate"), new objj_ivar("_itemObjects"), new objj_ivar("_buttonScrollLeft"), new objj_ivar("_buttonScrollRight"), new objj_ivar("_currentSelectedItemView"), new objj_ivar("_viewTabsDocument"), new objj_ivar("_currentSelectedIndex"), new objj_ivar("_contentView"), new objj_ivar("_tabItemViewPrototype"), new objj_ivar("_scrollViewTabs"), new objj_ivar("_needsScroll")]);
       
       






       
       

       
       
















       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("delegate"), function $TNTabView__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNTabView__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $TNTabView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNTabView").super_class }, "initWithFrame:", aFrame))
    {
        if (!TNTabViewTabsBackgroundColor)
        {
            var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class"));
            TNTabViewTabsBackgroundColor = objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "TNTabView/tabs-background.png")));
            TNTabViewTabButtonRightBezelColorNormal = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "TNTabView/scroll-button-right-bezel.png"));
            TNTabViewTabButtonLeftBezelColorNormal = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "TNTabView/scroll-button-left-bezel.png"));
            TNTabViewTabButtonRightBezelColorPressed = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "TNTabView/scroll-button-right-bezel-pressed.png"));
            TNTabViewTabButtonLeftBezelColorPressed = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "TNTabView/scroll-button-left-bezel-pressed.png"));
        }
        self._viewTabsDocument = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 0.0, objj_msgSend(TNTabItemPrototype, "size").height));
        self._scrollViewTabs = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, CGRectGetWidth(aFrame), objj_msgSend(TNTabItemPrototype, "size").height));
        objj_msgSend(self._scrollViewTabs, "setAutoresizingMask:", CPViewWidthSizable);
        objj_msgSend(self._scrollViewTabs, "setAutohidesScrollers:", YES);
        objj_msgSend(self._scrollViewTabs, "setDocumentView:", self._viewTabsDocument);
        objj_msgSend(self._scrollViewTabs, "setHasVerticalScroller:", NO);
        objj_msgSend(self._scrollViewTabs, "setHasHorizontalScroller:", NO);
        self._contentView = objj_msgSend(objj_msgSend(CPView, "alloc"), "initWithFrame:", CGRectMake(0, objj_msgSend(TNTabItemPrototype, "size").height, CGRectGetWidth(aFrame), CGRectGetHeight(aFrame) - objj_msgSend(TNTabItemPrototype, "size").height));
        objj_msgSend(self._contentView, "setAutoresizingMask:", CPViewWidthSizable | CPViewHeightSizable);
        self._currentSelectedIndex = -1;
        self._needsScroll = NO;
        self._itemObjects = objj_msgSend(CPArray, "array");
        self._tabItemViewPrototype = objj_msgSend(objj_msgSend(TNTabItemPrototype, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, objj_msgSend(TNTabItemPrototype, "size").width, objj_msgSend(TNTabItemPrototype, "size").height));
        self._buttonScrollRight = objj_msgSend(CPButton, "buttonWithTitle:", ">");
        objj_msgSend(self._buttonScrollRight, "setBordered:", NO);
        objj_msgSend(self._buttonScrollRight, "setImage:", TNTabViewTabButtonRightBezelColorNormal);
        objj_msgSend(self._buttonScrollRight, "setValue:forThemeAttribute:", TNTabViewTabButtonRightBezelColorNormal, "image");
        objj_msgSend(self._buttonScrollRight, "setValue:forThemeAttribute:inState:", TNTabViewTabButtonRightBezelColorPressed, "image", CPThemeStateHighlighted);
        objj_msgSend(self._buttonScrollRight, "setFrame:", CGRectMake(20.0, 0.0, 20.0, objj_msgSend(TNTabItemPrototype, "size").height));
        objj_msgSend(self._buttonScrollRight, "setContinuous:", YES);
        objj_msgSend(self._buttonScrollRight, "setTarget:", self._scrollViewTabs);
        objj_msgSend(self._buttonScrollRight, "setAction:", sel_getUid("moveRight:"));
        self._buttonScrollLeft = objj_msgSend(CPButton, "buttonWithTitle:", "<");
        objj_msgSend(self._buttonScrollLeft, "setBordered:", NO);
        objj_msgSend(self._buttonScrollLeft, "setImage:", TNTabViewTabButtonLeftBezelColorNormal);
        objj_msgSend(self._buttonScrollLeft, "setValue:forThemeAttribute:", TNTabViewTabButtonLeftBezelColorNormal, "image");
        objj_msgSend(self._buttonScrollLeft, "setValue:forThemeAttribute:inState:", TNTabViewTabButtonLeftBezelColorPressed, "image", CPThemeStateHighlighted);
        objj_msgSend(self._buttonScrollLeft, "setFrame:", CGRectMake(0.0, 0.0, 20.0, objj_msgSend(TNTabItemPrototype, "size").height));
        objj_msgSend(self._buttonScrollLeft, "setContinuous:", YES);
        objj_msgSend(self._buttonScrollLeft, "setTarget:", self._scrollViewTabs);
        objj_msgSend(self._buttonScrollLeft, "setAction:", sel_getUid("moveLeft:"));
        objj_msgSend(self, "addSubview:", self._scrollViewTabs);
        objj_msgSend(self, "addSubview:", self._contentView);
        objj_msgSend(self, "setTabViewBackgroundColor:", TNTabViewTabsBackgroundColor);
        objj_msgSend(self, "setNeedsLayout");
    }
    return self;
}
,["TNTabView","CGRect"]), new objj_method(sel_getUid("setTabViewBackgroundColor:"), function $TNTabView__setTabViewBackgroundColor_(self, _cmd, aColor)
{
    objj_msgSend(self._viewTabsDocument, "setBackgroundColor:", aColor);
}
,["void","CPColor"]), new objj_method(sel_getUid("setContentBackgroundColor:"), function $TNTabView__setContentBackgroundColor_(self, _cmd, aColor)
{
    objj_msgSend(self._contentView, "setBackgroundColor:", aColor);
}
,["void","CPColor"]), new objj_method(sel_getUid("setTabItemViewPrototype:"), function $TNTabView__setTabItemViewPrototype_(self, _cmd, anItemPrototype)
{
    self._tabItemViewPrototype = anItemPrototype;
}
,["void","TNTabItemPrototype"]), new objj_method(sel_getUid("_newTabItemPrototype"), function $TNTabView___newTabItemPrototype(self, _cmd)
{
    return objj_msgSend(CPKeyedUnarchiver, "unarchiveObjectWithData:", objj_msgSend(CPKeyedArchiver, "archivedDataWithRootObject:", self._tabItemViewPrototype));
}
,["void"]), new objj_method(sel_getUid("_getTabItemAtIndex:"), function $TNTabView___getTabItemAtIndex_(self, _cmd, anIndex)
{
    if (anIndex == -1 || anIndex >= objj_msgSend(self._itemObjects, "count"))
        return nil;
    return objj_msgSend(objj_msgSend(self._itemObjects, "objectAtIndex:", anIndex), "objectAtIndex:", 0);
}
,["void","int"]), new objj_method(sel_getUid("_getTabViewAtIndex:"), function $TNTabView___getTabViewAtIndex_(self, _cmd, anIndex)
{
    if (anIndex >= objj_msgSend(self._itemObjects, "count"))
        return nil;
    return objj_msgSend(objj_msgSend(self._itemObjects, "objectAtIndex:", anIndex), "objectAtIndex:", 1);
}
,["void","int"]), new objj_method(sel_getUid("mouseDown:"), function $TNTabView__mouseDown_(self, _cmd, anEvent)
{
}
,["void","CPEvent"]), new objj_method(sel_getUid("addTabViewItem:"), function $TNTabView__addTabViewItem_(self, _cmd, anItem)
{
    objj_msgSend(self, "insertTabViewItem:atIndex:", anItem, objj_msgSend(self._itemObjects, "count"));
}
,["void","CPTabViewItem"]), new objj_method(sel_getUid("insertTabViewItem:atIndex:"), function $TNTabView__insertTabViewItem_atIndex_(self, _cmd, anItem, anIndex)
{
    var shouldSelectFirstTab = NO;
    if (self._currentSelectedIndex == -1)
    {
        shouldSelectFirstTab = YES;
        self._currentSelectedIndex = 0;
    }
    var itemView = objj_msgSend(self, "_newTabItemPrototype");
    objj_msgSend(itemView, "setObjectValue:", anItem);
    objj_msgSend(itemView, "setTarget:", self);
    objj_msgSend(itemView, "setAction:", sel_getUid("_tabItemCliked:"));
    objj_msgSend(self._itemObjects, "insertObject:atIndex:", [anItem, itemView], anIndex);
    objj_msgSend(self._viewTabsDocument, "addSubview:", itemView);
    objj_msgSend(self, "setNeedsLayout");
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("tabViewDidChangeNumberOfTabViewItems:")))
        objj_msgSend(self._delegate, "tabViewDidChangeNumberOfTabViewItems:", self);
    if (shouldSelectFirstTab)
        objj_msgSend(self, "selectFirstTabViewItem:", nil);
}
,["void","CPTabViewItem","int"]), new objj_method(sel_getUid("indexOfTabViewItem:"), function $TNTabView__indexOfTabViewItem_(self, _cmd, anItem)
{
    for (var i = 0; i < objj_msgSend(self._itemObjects, "count"); i++)
        if (objj_msgSend(self, "_getTabItemAtIndex:", i) == anItem)
            return i;
    return -1;
}
,["int","CPTabViewItem"]), new objj_method(sel_getUid("indexOfTabViewItemWithIdentifier:"), function $TNTabView__indexOfTabViewItemWithIdentifier_(self, _cmd, anIdentifer)
{
    for (var i = 0; i < objj_msgSend(self._itemObjects, "count"); i++)
        if (objj_msgSend(objj_msgSend(self, "_getTabItemAtIndex:", i), "identifier") == anIdentifer)
            return i;
    return -1;
}
,["int","CPString"]), new objj_method(sel_getUid("numberOfTabViewItems"), function $TNTabView__numberOfTabViewItems(self, _cmd)
{
    return objj_msgSend(self._itemObjects, "count");
}
,["void"]), new objj_method(sel_getUid("removeTabViewItem:"), function $TNTabView__removeTabViewItem_(self, _cmd, anItem)
{
    if (self._currentSelectedIndex == -1)
        return;
    var itemIndex = objj_msgSend(self, "indexOfTabViewItemWithIdentifier:", objj_msgSend(anItem, "identifier")),
        currentItemView = objj_msgSend(self, "_getTabViewAtIndex:", itemIndex),
        associatedView = objj_msgSend(objj_msgSend(self, "_getTabItemAtIndex:", itemIndex), "view");
    objj_msgSend(associatedView, "removeFromSuperview");
    objj_msgSend(currentItemView, "removeFromSuperview");
    objj_msgSend(self._itemObjects, "removeObjectAtIndex:", objj_msgSend(self, "indexOfTabViewItemWithIdentifier:", objj_msgSend(anItem, "identifier")));
    objj_msgSend(self, "setNeedsLayout");
    if (objj_msgSend(self._itemObjects, "count") == 0)
        self._currentSelectedIndex = -1;
    else if (self._currentSelectedIndex >= objj_msgSend(self._itemObjects, "count"))
        objj_msgSend(self, "selectLastTabViewItem:", nil);
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("tabViewDidChangeNumberOfTabViewItems:")))
        objj_msgSend(self._delegate, "tabViewDidChangeNumberOfTabViewItems:", self);
}
,["void","CPTabViewItem"]), new objj_method(sel_getUid("selectTabViewItem:"), function $TNTabView__selectTabViewItem_(self, _cmd, anItem)
{
    objj_msgSend(self, "selectTabViewItemAtIndex:", objj_msgSend(self, "indexOfTabViewItem:", anItem));
}
,["void","CPTabViewItem"]), new objj_method(sel_getUid("selectedTabViewItem"), function $TNTabView__selectedTabViewItem(self, _cmd)
{
    return objj_msgSend(self, "_getTabItemAtIndex:", self._currentSelectedIndex);
}
,["void"]), new objj_method(sel_getUid("selectedTabViewIndex"), function $TNTabView__selectedTabViewIndex(self, _cmd)
{
    return self._currentSelectedIndex;
}
,["void"]), new objj_method(sel_getUid("selectFirstTabViewItem:"), function $TNTabView__selectFirstTabViewItem_(self, _cmd, aSender)
{
    objj_msgSend(self, "selectTabViewItemAtIndex:", 0);
}
,["void","id"]), new objj_method(sel_getUid("selectLastTabViewItem:"), function $TNTabView__selectLastTabViewItem_(self, _cmd, aSender)
{
    if (self._currentSelectedIndex == -1)
        return;
    objj_msgSend(self, "selectTabViewItemAtIndex:", objj_msgSend(self._itemObjects, "count") - 1);
}
,["void","id"]), new objj_method(sel_getUid("selectNextTabViewItem:"), function $TNTabView__selectNextTabViewItem_(self, _cmd, aSender)
{
    if (self._currentSelectedIndex == -1)
        return;
    objj_msgSend(self, "selectTabViewItemAtIndex:", (self._currentSelectedIndex + 1));
}
,["void","id"]), new objj_method(sel_getUid("selectPreviousTabViewItem:"), function $TNTabView__selectPreviousTabViewItem_(self, _cmd, aSender)
{
    if (self._currentSelectedIndex == -1)
        return;
    objj_msgSend(self, "selectTabViewItemAtIndex:", (self._currentSelectedIndex - 1));
}
,["void","id"]), new objj_method(sel_getUid("selectTabViewItemAtIndex:"), function $TNTabView__selectTabViewItemAtIndex_(self, _cmd, anIndex)
{
    if (self._currentSelectedIndex == -1)
        return;
    objj_msgSend(objj_msgSend(objj_msgSend(self, "selectedTabViewItem"), "view"), "removeFromSuperview");
    var pendingItem = objj_msgSend(self, "_getTabItemAtIndex:", anIndex);
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("tabView:shouldSelectTabViewItem:")))
        if (!objj_msgSend(self._delegate, "tabView:shouldSelectTabViewItem:", self, pendingItem))
            return;
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("tabView:willSelectTabViewItem:")))
        objj_msgSend(self._delegate, "tabView:willSelectTabViewItem:", self, pendingItem);
    objj_msgSend(self._currentSelectedItemView, "unsetThemeState:", TNTabItemPrototypeThemeStateSelected);
    self._currentSelectedItemView = objj_msgSend(self, "_getTabViewAtIndex:", anIndex);
    objj_msgSend(self._currentSelectedItemView, "setThemeState:", TNTabItemPrototypeThemeStateSelected);
    objj_msgSend(objj_msgSend(pendingItem, "view"), "setFrame:", objj_msgSend(self._contentView, "bounds"));
    objj_msgSend(self._contentView, "addSubview:", objj_msgSend(pendingItem, "view"));
    self._currentSelectedIndex = anIndex;
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("tabView:didSelectTabViewItem:")))
        objj_msgSend(self._delegate, "tabView:didSelectTabViewItem:", self, pendingItem);
}
,["void","int"]), new objj_method(sel_getUid("tabViewItemAtIndex:"), function $TNTabView__tabViewItemAtIndex_(self, _cmd, anIndex)
{
    return objj_msgSend(self, "_getTabItemAtIndex:", anIndex);
}
,["CPTabViewItem","int"]), new objj_method(sel_getUid("tabViewItems"), function $TNTabView__tabViewItems(self, _cmd)
{
    var ret = objj_msgSend(CPArray, "array");
    for (var i = 0; i < objj_msgSend(self._itemObjects, "count"); i++)
        objj_msgSend(ret, "addObject:", objj_msgSend(self, "_getTabItemAtIndex:", i));
    return ret;
}
,["CPArray"]), new objj_method(sel_getUid("layoutSubviews"), function $TNTabView__layoutSubviews(self, _cmd)
{
    var minimalDocViewWidth = objj_msgSend(objj_msgSend(self._scrollViewTabs, "horizontalScroller"), "isEnabled") ? objj_msgSend(self, "frameSize").width - 40 : objj_msgSend(self, "frameSize").width,
        docViewWitdh = MAX((objj_msgSend(TNTabItemPrototype, "size").width * objj_msgSend(self._itemObjects, "count")), minimalDocViewWidth),
        currentXOrigin = (docViewWitdh / 2) - objj_msgSend(self._itemObjects, "count") * objj_msgSend(TNTabItemPrototype, "size").width / 2;
    if (objj_msgSend(objj_msgSend(self._scrollViewTabs, "horizontalScroller"), "isEnabled"))
    {
        objj_msgSend(self._scrollViewTabs, "setFrameSize:", CGSizeMake(objj_msgSend(self, "bounds").size.width - 40, objj_msgSend(TNTabItemPrototype, "size").height));
        objj_msgSend(self._scrollViewTabs, "setFrameOrigin:", CGPointMake(40.0, 0.0));
        objj_msgSend(self, "addSubview:", self._buttonScrollLeft);
        objj_msgSend(self, "addSubview:", self._buttonScrollRight);
    }
    else
    {
        objj_msgSend(self._scrollViewTabs, "setFrameSize:", CGSizeMake(objj_msgSend(self, "bounds").size.width, objj_msgSend(TNTabItemPrototype, "size").height));
        objj_msgSend(self._scrollViewTabs, "setFrameOrigin:", CGPointMake(0.0, 0.0));
        objj_msgSend(self._buttonScrollRight, "removeFromSuperview");
        objj_msgSend(self._buttonScrollLeft, "removeFromSuperview");
    }
    objj_msgSend(self._viewTabsDocument, "setFrameSize:", CGSizeMake(docViewWitdh, objj_msgSend(TNTabItemPrototype, "size").height));
    for (var i = 0; i < objj_msgSend(self._itemObjects, "count"); i++)
    {
        var item = objj_msgSend(self, "_getTabItemAtIndex:", i),
            itemView = objj_msgSend(self, "_getTabViewAtIndex:", i),
            view = objj_msgSend(item, "view");
        objj_msgSend(itemView, "setFrameOrigin:", CGPointMake(currentXOrigin, 2.0));
        objj_msgSend(itemView, "setIndex:", i);
        objj_msgSend(view, "setFrame:", objj_msgSend(self._contentView, "bounds"));
        currentXOrigin += objj_msgSend(TNTabItemPrototype, "size").width;
    }
}
,["void"]), new objj_method(sel_getUid("_tabItemCliked:"), function $TNTabView___tabItemCliked_(self, _cmd, aSender)
{
    if (self._currentSelectedIndex == objj_msgSend(aSender, "index"))
        return;
    objj_msgSend(self, "selectTabViewItemAtIndex:", objj_msgSend(aSender, "index"));
}
,["id","id"])]);
}
{
var the_class = objj_getClass("TNTabView")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNTabView\"");
var meta_class = the_class.isa;
class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $TNTabView__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNTabView").super_class }, "initWithCoder:", aCoder))
    {
        self._delegate = objj_msgSend(aCoder, "decodeObjectForKey:", "_delegate");
        self._itemObjects = objj_msgSend(aCoder, "decodeObjectForKey:", "_itemObjects");
        self._currentSelectedItemView = objj_msgSend(aCoder, "decodeObjectForKey:", "_currentSelectedItemView");
        self._viewTabsDocument = objj_msgSend(aCoder, "decodeObjectForKey:", "_viewTabsDocument");
        self._currentSelectedIndex = objj_msgSend(aCoder, "decodeObjectForKey:", "_currentSelectedIndex");
        self._contentView = objj_msgSend(aCoder, "decodeObjectForKey:", "_contentView");
        self._tabItemViewPrototype = objj_msgSend(aCoder, "decodeObjectForKey:", "_tabItemViewPrototype");
        self._scrollViewTabs = objj_msgSend(aCoder, "decodeObjectForKey:", "_scrollViewTabs");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNTabView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNTabView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self._delegate, "_delegate");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._itemObjects, "_itemObjects");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._currentSelectedItemView, "_currentSelectedItemView");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._viewTabsDocument, "_viewTabsDocument");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._currentSelectedIndex, "_currentSelectedIndex");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._contentView, "_contentView");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._tabItemViewPrototype, "_tabItemViewPrototype");
    objj_msgSend(aCoder, "encodeObject:forKey:", self._scrollViewTabs, "_scrollViewTabs");
}
,["void","CPCoder"])]);
}p;20;TNTextFieldStepper.jt;5173;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPTextField.jI;18;AppKit/CPStepper.jt;5078;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPStepper.j", NO);
var TNStepperButtonsSize;
{var the_class = objj_allocateClassPair(CPControl, "TNTextFieldStepper"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_textField"), new objj_ivar("_stepper")]);















objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $TNTextFieldStepper__initWithFrame_(self, _cmd, aFrame)
{
    aFrame.origin.x -= 6;
    aFrame.origin.y -= 3;
    aFrame.size.width += 14;
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNTextFieldStepper").super_class }, "initWithFrame:", aFrame))
    {
        objj_msgSend(self, "_init");
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("_init"), function $TNTextFieldStepper___init(self, _cmd)
{
    var frame = objj_msgSend(self, "frame");
    self._stepper = objj_msgSend(CPStepper, "stepper");
    objj_msgSend(self._stepper, "setFrame:", CGRectMake(frame.size.width - 35, 1.0, 25, 25))
    objj_msgSend(self._stepper, "setAutoresizingMask:", CPViewMinXMargin);
    self._textField = objj_msgSend(CPTextField, "textFieldWithStringValue:placeholder:width:", "", "", frame.size.width - 36);
    objj_msgSend(self._textField, "setAutoresizingMask:", CPViewWidthSizable);
    objj_msgSend(self._textField, "bind:toObject:withKeyPath:options:", CPValueBinding, self._stepper, "doubleValue", nil);
    objj_msgSend(self, "addSubview:", self._stepper);
    objj_msgSend(self, "addSubview:", self._textField);
}
,["void"]), new objj_method(sel_getUid("setEnabled:"), function $TNTextFieldStepper__setEnabled_(self, _cmd, shouldEnabled)
{
    objj_msgSend(self._stepper, "setEnabled:", shouldEnabled);
    objj_msgSend(self._textField, "setEnabled:", shouldEnabled);
}
,["void","BOOL"]), new objj_method(sel_getUid("setValueWraps:"), function $TNTextFieldStepper__setValueWraps_(self, _cmd, shouldWrap)
{
    objj_msgSend(self._stepper, "setValueWraps:", shouldWrap);
}
,["void","BOOL"]), new objj_method(sel_getUid("valueWraps"), function $TNTextFieldStepper__valueWraps(self, _cmd)
{
    return objj_msgSend(self._stepper, "valueWraps");
}
,["int"]), new objj_method(sel_getUid("setAutorepeat:"), function $TNTextFieldStepper__setAutorepeat_(self, _cmd, shouldAutorepeat)
{
    objj_msgSend(self._stepper, "setAutorepeat:", shouldAutorepeat);
}
,["void","BOOL"]), new objj_method(sel_getUid("autorepeat"), function $TNTextFieldStepper__autorepeat(self, _cmd)
{
    return objj_msgSend(self._stepper, "autorepeat");
}
,["int"]), new objj_method(sel_getUid("setMinValue:"), function $TNTextFieldStepper__setMinValue_(self, _cmd, aValue)
{
    objj_msgSend(self._stepper, "setMinValue:", aValue);
}
,["void","int"]), new objj_method(sel_getUid("minValue"), function $TNTextFieldStepper__minValue(self, _cmd)
{
    return objj_msgSend(self._stepper, "minValue");
}
,["int"]), new objj_method(sel_getUid("setMaxValue:"), function $TNTextFieldStepper__setMaxValue_(self, _cmd, aValue)
{
    objj_msgSend(self._stepper, "setMaxValue:", aValue);
}
,["void","int"]), new objj_method(sel_getUid("maxValue"), function $TNTextFieldStepper__maxValue(self, _cmd)
{
    return objj_msgSend(self._stepper, "maxValue");
}
,["int"]), new objj_method(sel_getUid("setDoubleValue:"), function $TNTextFieldStepper__setDoubleValue_(self, _cmd, aValue)
{
    objj_msgSend(self._stepper, "setDoubleValue:", aValue);
}
,["void","double"]), new objj_method(sel_getUid("doubleValue"), function $TNTextFieldStepper__doubleValue(self, _cmd)
{
    return objj_msgSend(self._stepper, "doubleValue");
}
,["double"]), new objj_method(sel_getUid("setTarget:"), function $TNTextFieldStepper__setTarget_(self, _cmd, aTarget)
{
    objj_msgSend(self._stepper, "setTarget:", aTarget);
    objj_msgSend(self._textField, "setTarget:", aTarget);
}
,["void","id"]), new objj_method(sel_getUid("target"), function $TNTextFieldStepper__target(self, _cmd)
{
    return objj_msgSend(self._stepper, "target");
}
,["id"]), new objj_method(sel_getUid("setAction:"), function $TNTextFieldStepper__setAction_(self, _cmd, aSelector)
{
    objj_msgSend(self._stepper, "setAction:", aSelector);
    objj_msgSend(self._textField, "setAction:", aSelector);
}
,["id","SEL"]), new objj_method(sel_getUid("selector"), function $TNTextFieldStepper__selector(self, _cmd)
{
    return objj_msgSend(self._stepper, "action");
}
,["SEL"])]);
}
{
var the_class = objj_getClass("TNTextFieldStepper")
if(!the_class) throw new SyntaxError("*** Could not find definition for class \"TNTextFieldStepper\"");
var meta_class = the_class.isa;class_addMethods(the_class, [new objj_method(sel_getUid("initWithCoder:"), function $TNTextFieldStepper__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNTextFieldStepper").super_class }, "initWithCoder:", aCoder))
    {
        objj_msgSend(self, "_init");
    }
    return self;
}
,["id","CPCoder"])]);
}p;11;TNToolbar.jt;13665;@STATIC;1.0;I;23;Foundation/Foundation.jI;16;AppKit/CPImage.jI;20;AppKit/CPImageView.jI;18;AppKit/CPToolbar.jI;22;AppKit/CPToolbarItem.jI;15;AppKit/CPView.jt;13501;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImage.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPToolbar.j", NO);
objj_executeFile("AppKit/CPToolbarItem.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
var TNToolbarSelectedBgImage,
    TNToolbarSelectedBgImageHUD;
{var the_class = objj_allocateClassPair(CPToolbar, "TNToolbar"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_customSubViews"), new objj_ivar("_selectedToolbarItem"), new objj_ivar("_iconSelected"), new objj_ivar("_sortedToolbarItems"), new objj_ivar("_toolbarItems"), new objj_ivar("_toolbarItemsOrder"), new objj_ivar("_imageViewSelection"), new objj_ivar("_isHUD")]);


       
       

       
       









       
       



       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("customSubViews"), function $TNToolbar__customSubViews(self, _cmd)
{
return self._customSubViews;
}
,["CPArray"]), new objj_method(sel_getUid("setCustomSubViews:"), function $TNToolbar__setCustomSubViews_(self, _cmd, newValue)
{
self._customSubViews = newValue;
}
,["void","CPArray"]), new objj_method(sel_getUid("selectedToolbarItem"), function $TNToolbar__selectedToolbarItem(self, _cmd)
{
return self._selectedToolbarItem;
}
,["CPToolbarItem"]), new objj_method(sel_getUid("_setSelectedToolbarItem:"), function $TNToolbar___setSelectedToolbarItem_(self, _cmd, newValue)
{
self._selectedToolbarItem = newValue;
}
,["void","CPToolbarItem"]), new objj_method(sel_getUid("init"), function $TNToolbar__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNToolbar").super_class }, "init"))
    {
        self._toolbarItems = objj_msgSend(CPDictionary, "dictionary");
        self._toolbarItemsOrder = objj_msgSend(CPDictionary, "dictionary");
        self._imageViewSelection = objj_msgSend(objj_msgSend(CPImageView, "alloc"), "initWithFrame:", CGRectMake(0.0, 0.0, 60.0, 60.0));
        self._iconSelected = NO;
        self._customSubViews = objj_msgSend(CPArray, "array");
        objj_msgSend(self._imageViewSelection, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", TNToolbarSelectedBgImage));
        objj_msgSend(self, "setDelegate:", self);
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("initWithHUDStyle"), function $TNToolbar__initWithHUDStyle(self, _cmd)
{
    if (self = objj_msgSend(self, "init"))
    {
        var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class"));
        self._isHUD = YES;
        objj_msgSend(objj_msgSend(self, "_toolbarView"), "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNToolbar/toolbar-hud-background.png"), CGSizeMake(1.0, 59.0))));
        objj_msgSend(self._imageViewSelection, "setBackgroundColor:", objj_msgSend(CPColor, "colorWithPatternImage:", TNToolbarSelectedBgImageHUD));
    }
    return self;
}
,["id"]), new objj_method(sel_getUid("toolbarView"), function $TNToolbar__toolbarView(self, _cmd)
{
    return self._toolbarView;
}
,["CPView"]), new objj_method(sel_getUid("addItem:withIdentifier:"), function $TNToolbar__addItem_withIdentifier_(self, _cmd, anItem, anIdentifier)
{
    objj_msgSend(self._toolbarItems, "setObject:forKey:", anItem, anIdentifier);
}
,["void","CPToolbarItem","CPString"]), new objj_method(sel_getUid("addItemWithIdentifier:label:view:target:action:toolTip:"), function $TNToolbar__addItemWithIdentifier_label_view_target_action_toolTip_(self, _cmd, anIdentifier, aLabel, aView, aTarget, anAction, aToolTip)
{
    var newItem = objj_msgSend(objj_msgSend(CPToolbarItem, "alloc"), "initWithItemIdentifier:", anIdentifier);
    objj_msgSend(newItem, "setLabel:", aLabel);
    objj_msgSend(newItem, "setView:", aView);
    objj_msgSend(newItem, "setTarget:", aTarget);
    objj_msgSend(newItem, "setAction:", anAction);
    objj_msgSend(newItem, "setToolTip:", aToolTip);
    objj_msgSend(self._toolbarItems, "setObject:forKey:", newItem, anIdentifier);
    return newItem;
}
,["CPToolbarItem","CPString","CPString","CPView","id","SEL","CPString"]), new objj_method(sel_getUid("addItemWithIdentifier:label:view:target:action:"), function $TNToolbar__addItemWithIdentifier_label_view_target_action_(self, _cmd, anIdentifier, aLabel, aView, aTarget, anAction)
{
    return objj_msgSend(self, "addItemWithIdentifier:label:view:target:action:toolTip:", anIdentifier, aLabel, aView, aTarget, anAction, nil);
}
,["CPToolbarItem","CPString","CPString","CPView","id","SEL"]), new objj_method(sel_getUid("addItemWithIdentifier:label:icon:altIcon:target:action:toolTip:"), function $TNToolbar__addItemWithIdentifier_label_icon_altIcon_target_action_toolTip_(self, _cmd, anIdentifier, aLabel, anImage, anotherImage, aTarget, anAction, aToolTip)
{
    var newItem = objj_msgSend(objj_msgSend(CPToolbarItem, "alloc"), "initWithItemIdentifier:", anIdentifier);
    objj_msgSend(newItem, "setLabel:", aLabel);
    objj_msgSend(newItem, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", anImage, CGSizeMake(32,32)));
    if (anotherImage)
        objj_msgSend(newItem, "setAlternateImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", anotherImage, CGSizeMake(32,32)));
    objj_msgSend(newItem, "setTarget:", aTarget);
    objj_msgSend(newItem, "setAction:", anAction);
    objj_msgSend(newItem, "setToolTip:", aToolTip);
    objj_msgSend(self._toolbarItems, "setObject:forKey:", newItem, anIdentifier);
    return newItem;
}
,["CPToolbarItem","CPString","CPString","CPImage","CPImage","id","SEL","CPString"]), new objj_method(sel_getUid("addItemWithIdentifier:label:icon:target:action:toolTip:"), function $TNToolbar__addItemWithIdentifier_label_icon_target_action_toolTip_(self, _cmd, anIdentifier, aLabel, anImage, aTarget, anAction, aToolTip)
{
    return objj_msgSend(self, "addItemWithIdentifier:label:icon:altIcon:target:action:toolTip:", anIdentifier, aLabel, anImage, nil, aTarget, anAction, nil);
}
,["CPToolbarItem","CPString","CPString","CPImage","id","SEL","CPString"]), new objj_method(sel_getUid("addItemWithIdentifier:label:icon:target:action:"), function $TNToolbar__addItemWithIdentifier_label_icon_target_action_(self, _cmd, anIdentifier, aLabel, anImage, aTarget, anAction)
{
    return objj_msgSend(self, "addItemWithIdentifier:label:icon:target:action:toolTip:", anIdentifier, aLabel, anImage, aTarget, anAction, nil);
}
,["CPToolbarItem","CPString","CPString","CPImage","id","SEL"]), new objj_method(sel_getUid("setPosition:forToolbarItemIdentifier:"), function $TNToolbar__setPosition_forToolbarItemIdentifier_(self, _cmd, aPosition, anIndentifier)
{
    objj_msgSend(self._toolbarItemsOrder, "setObject:forKey:", anIndentifier, aPosition);
}
,["void","CPNumber","CPString"]), new objj_method(sel_getUid("_reloadToolbarItems"), function $TNToolbar___reloadToolbarItems(self, _cmd)
{
    var sortFunction = function(a, b, context){
        var indexA = a,
            indexB = b;
        if (a < b)
                return CPOrderedAscending;
            else if (a > b)
                return CPOrderedDescending;
            else
                return CPOrderedSame;
        },
        sortedKeys = objj_msgSend(objj_msgSend(self._toolbarItemsOrder, "allKeys"), "sortedArrayUsingFunction:", sortFunction);
    self._sortedToolbarItems = objj_msgSend(CPArray, "array");
    for (var i = 0; i < objj_msgSend(sortedKeys, "count"); i++)
    {
        var key = objj_msgSend(sortedKeys, "objectAtIndex:", i);
        objj_msgSend(self._sortedToolbarItems, "addObject:", objj_msgSend(self._toolbarItemsOrder, "objectForKey:", key));
    }
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNToolbar").super_class }, "_reloadToolbarItems");
    if (self._iconSelected)
        objj_msgSend(self._toolbarView, "addSubview:positioned:relativeTo:", self._imageViewSelection, CPWindowBelow, nil);
    for (var i = 0; i < objj_msgSend(self._customSubViews, "count"); i++)
        objj_msgSend(self._toolbarView, "addSubview:", objj_msgSend(self._customSubViews, "objectAtIndex:", i));
    if (self._isHUD)
    {
        var items = objj_msgSend(self, "items"),
            count = objj_msgSend(items, "count");
        while (count--)
            objj_msgSend(objj_msgSend(self._toolbarView, "viewForItem:", items[count]), "FIXME_setIsHUD:", YES);
    }
}
,["void"]), new objj_method(sel_getUid("reloadToolbarItems"), function $TNToolbar__reloadToolbarItems(self, _cmd)
{
    objj_msgSend(self, "_reloadToolbarItems");
}
,["void"]), new objj_method(sel_getUid("selectToolbarItem:"), function $TNToolbar__selectToolbarItem_(self, _cmd, aToolbarItem)
{
    var toolbarItemView;
    for (var i = 0; i < objj_msgSend(objj_msgSend(self._toolbarView, "subviews"), "count"); i++)
    {
        toolbarItemView = objj_msgSend(objj_msgSend(self._toolbarView, "subviews"), "objectAtIndex:", i);
        if (objj_msgSend(toolbarItemView._toolbarItem, "itemIdentifier") === objj_msgSend(aToolbarItem, "itemIdentifier"))
            break;
    }
    var frame = objj_msgSend(toolbarItemView, "convertRect:toView:", objj_msgSend(toolbarItemView, "bounds"), self._toolbarView),
        labelFrame = objj_msgSend(aToolbarItem, "label") ? objj_msgSend(objj_msgSend(aToolbarItem, "label"), "sizeWithFont:", objj_msgSend(CPFont, "boldSystemFontOfSize:", 12)) : objj_msgSend(aToolbarItem, "minSize");
    self._iconSelected = YES;
    objj_msgSend(self._imageViewSelection, "setFrameSize:", CGSizeMake(MAX(labelFrame.width + 4, 50.0), 60.0));
    objj_msgSend(self._imageViewSelection, "setFrameOrigin:", CGPointMake(CGRectGetMinX(frame) + (CGRectGetWidth(frame) - CGRectGetWidth(objj_msgSend(self._imageViewSelection, "frame"))) / 2.0, 0.0));
    objj_msgSend(self._toolbarView, "addSubview:positioned:relativeTo:", self._imageViewSelection, CPWindowBelow, nil);
    self._selectedToolbarItem = aToolbarItem;
}
,["void","CPToolbarItem"]), new objj_method(sel_getUid("deselectToolbarItem"), function $TNToolbar__deselectToolbarItem(self, _cmd)
{
    self._selectedToolbarItem = nil;
    self._iconSelected = NO;
    objj_msgSend(self._imageViewSelection, "removeFromSuperview");
}
,["void"]), new objj_method(sel_getUid("itemWithIdentifier:"), function $TNToolbar__itemWithIdentifier_(self, _cmd, anIdentifier)
{
    for (var i = 0; i < objj_msgSend(objj_msgSend(self, "visibleItems"), "count"); i++)
    {
        if (objj_msgSend(objj_msgSend(objj_msgSend(self, "visibleItems"), "objectAtIndex:", i), "itemIdentifier") == anIdentifier)
            return objj_msgSend(objj_msgSend(self, "visibleItems"), "objectAtIndex:", i);
    }
    return nil;
}
,["CPToolbarItem","id"]), new objj_method(sel_getUid("toolbarAllowedItemIdentifiers:"), function $TNToolbar__toolbarAllowedItemIdentifiers_(self, _cmd, aToolbar)
{
    return self._sortedToolbarItems;
}
,["CPArray","CPToolbar"]), new objj_method(sel_getUid("toolbarDefaultItemIdentifiers:"), function $TNToolbar__toolbarDefaultItemIdentifiers_(self, _cmd, aToolbar)
{
    return self._sortedToolbarItems;
}
,["CPArray","CPToolbar"]), new objj_method(sel_getUid("toolbar:itemForItemIdentifier:willBeInsertedIntoToolbar:"), function $TNToolbar__toolbar_itemForItemIdentifier_willBeInsertedIntoToolbar_(self, _cmd, aToolbar, anItemIdentifier, aFlag)
{
    var toolbarItem = objj_msgSend(objj_msgSend(CPToolbarItem, "alloc"), "initWithItemIdentifier:", anItemIdentifier);
    return objj_msgSend(self._toolbarItems, "objectForKey:", anItemIdentifier) ? objj_msgSend(self._toolbarItems, "objectForKey:", anItemIdentifier) : toolbarItem;
}
,["CPToolbarItem","CPToolbar","CPString","BOOL"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNToolbar__initialize(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", TNToolbar);
    TNToolbarSelectedBgImage = objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", [
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNToolbar/toolbar-item-selected-left.png"), CGSizeMake(3.0, 60.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNToolbar/toolbar-item-selected-center.png"), CGSizeMake(1.0, 60.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNToolbar/toolbar-item-selected-right.png"), CGSizeMake(3.0, 60.0))
    ], NO);
    TNToolbarSelectedBgImageHUD = objj_msgSend(objj_msgSend(CPThreePartImage, "alloc"), "initWithImageSlices:isVertical:", [
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNToolbar/toolbar-hud-item-selected-left.png"), CGSizeMake(1.0, 60.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNToolbar/toolbar-hud-item-selected-center.png"), CGSizeMake(1.0, 60.0)),
        objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "TNToolbar/toolbar-hud-item-selected-right.png"), CGSizeMake(1.0, 60.0))
    ], NO);
}
,["void"])]);
}p;19;TNUIKitScrollView.jt;773;@STATIC;1.0;I;23;Foundation/Foundation.jI;21;AppKit/CPScrollView.jI;19;AppKit/CPScroller.jt;677;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPScrollView.j", NO);
objj_executeFile("AppKit/CPScroller.j", NO);
{var the_class = objj_allocateClassPair(CPScroller, "TNUIKitScrollView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:"), function $TNUIKitScrollView__initWithFrame_(self, _cmd, aRect)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNUIKitScrollView").super_class }, "initWithFrame:", aRect))
    {
        CPLog.warn("Deprecated: TNUIKitScrollView is deprecated!")
    }
    return self;
}
,["void","CGRect"])]);
}p;10;TNWorker.jt;4167;@STATIC;1.0;I;23;Foundation/Foundation.jt;4120;objj_executeFile("Foundation/Foundation.j", NO);
//@global Worker
{var the_class = objj_allocateClassPair(CPObject, "TNWorker"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_worker"), new objj_ivar("_workerBlob"), new objj_ivar("_workerURL"), new objj_ivar("_delegate")]);




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("workerBlob"), function $TNWorker__workerBlob(self, _cmd)
{
return self._workerBlob;
}
,["CPString"]), new objj_method(sel_getUid("setWorkerBlob:"), function $TNWorker__setWorkerBlob_(self, _cmd, newValue)
{
self._workerBlob = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("workerURL"), function $TNWorker__workerURL(self, _cmd)
{
return self._workerURL;
}
,["CPURL"]), new objj_method(sel_getUid("setWorkerURL:"), function $TNWorker__setWorkerURL_(self, _cmd, newValue)
{
self._workerURL = newValue;
}
,["void","CPURL"]), new objj_method(sel_getUid("delegate"), function $TNWorker__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNWorker__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("initWithBlob:"), function $TNWorker__initWithBlob_(self, _cmd, aBlob)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNWorker").super_class }, "init"))
    {
        self._workerBlob = aBlob;
        var blobBuilder,
            blobURL;
        if (window.BlobBuilder)
            blobBuilder = new window.BlobBuilder();
        else if (window.WebKitBlobBuilder)
            blobBuilder = new window.WebKitBlobBuilder();
        else if (window.MozBlobBuilder)
            blobBuilder = new window.MozBlobBuilder();
        blobBuilder.append(self._workerBlob);
        if (window.webkitURL)
            blobURL = window.webkitURL.createObjectURL(blobBuilder.getBlob());
        else if (window.URL)
            blobURL = window.URL.createObjectURL(blobBuilder.getBlob());
        self._worker = new Worker(blobURL);
        self._worker.onmessage = function(e) {
            objj_msgSend(self, "_didReceiveData:", e.data);
        };
        self._worker.onerror = function(error) {
            objj_msgSend(self, "_didReceiveError:", error);
        };
    }
    return self;
}
,["TNWorker","CPString"]), new objj_method(sel_getUid("initWithURL:"), function $TNWorker__initWithURL_(self, _cmd, anURL)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNWorker").super_class }, "init"))
    {
        self._workerURL = anURL;
        self._worker = new Worker(objj_msgSend(self._workerURL, "absoluteString"));
        self._worker.onmessage = function(e) {
            objj_msgSend(self, "_didReceiveData:", e.data);
        }
        self._worker.onerror = function(error) {
            objj_msgSend(self, "_didReceiveError:", error);
        }
    }
    return self;
}
,["TNWorker","CPURL"]), new objj_method(sel_getUid("postMessage:"), function $TNWorker__postMessage_(self, _cmd, anObject)
{
    self._worker.postMessage(anObject)
}
,["void","id"]), new objj_method(sel_getUid("terminate"), function $TNWorker__terminate(self, _cmd)
{
    self._worker.terminate()
    self._worker.onmessage = function() {};
    self._worker.onerror = function() {};
}
,["void"]), new objj_method(sel_getUid("_didReceiveData:"), function $TNWorker___didReceiveData_(self, _cmd, someData)
{
    if (!self._delegate)
        return;
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("worker:didReceiveData:")))
        objj_msgSend(self._delegate, "worker:didReceiveData:", self, someData);
}
,["void","id"]), new objj_method(sel_getUid("_didReceiveError:"), function $TNWorker___didReceiveError_(self, _cmd, anError)
{
    if (!self._delegate)
        return;
    if (objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("worker:didReceiveError:file:line:")))
        objj_msgSend(self._delegate, "worker:didReceiveError:file:line:", self, anError.message, anError.filename, anError.lineno);
}
,["void","id"])]);
}e;