@STATIC;1.0;p;20;TNRemoteScreenView.jt;10289;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jt;10221;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
TNRemoteScreenViewStateConnecting = "connecting";
TNRemoteScreenViewStateConnected = "connected";
TNRemoteScreenViewStateDisconnecting = "disconnecting";
TNRemoteScreenViewStateDisconnected = "disconnected";
TNRemoteScreenViewStateError = "error";
TNRemoteScreenViewNeedsPassword = "needs_password";
{var the_class = objj_allocateClassPair(CPView, "TNRemoteScreenView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_encrypted"), new objj_ivar("_autoResizeViewPort"), new objj_ivar("_isFullScreen"), new objj_ivar("_host"), new objj_ivar("_password"), new objj_ivar("_port"), new objj_ivar("_state"), new objj_ivar("_oldState"), new objj_ivar("_delegate"), new objj_ivar("_focusContainer"), new objj_ivar("_isFocused"), new objj_ivar("_displayID"), new objj_ivar("_zoom"), new objj_ivar("_screenContainer")]);

       
       



       
       


       
       


       
       




       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isEncrypted"), function $TNRemoteScreenView__isEncrypted(self, _cmd)
{
return self._encrypted;
}
,["BOOL"]), new objj_method(sel_getUid("setEncrypted:"), function $TNRemoteScreenView__setEncrypted_(self, _cmd, newValue)
{
self._encrypted = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isAutoResizeViewPort"), function $TNRemoteScreenView__isAutoResizeViewPort(self, _cmd)
{
return self._autoResizeViewPort;
}
,["BOOL"]), new objj_method(sel_getUid("setAutoResizeViewPort:"), function $TNRemoteScreenView__setAutoResizeViewPort_(self, _cmd, newValue)
{
self._autoResizeViewPort = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("isFullScreen"), function $TNRemoteScreenView__isFullScreen(self, _cmd)
{
return self._isFullScreen;
}
,["BOOL"]), new objj_method(sel_getUid("_setIsFullScreen:"), function $TNRemoteScreenView___setIsFullScreen_(self, _cmd, newValue)
{
self._isFullScreen = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("host"), function $TNRemoteScreenView__host(self, _cmd)
{
return self._host;
}
,["CPString"]), new objj_method(sel_getUid("setHost:"), function $TNRemoteScreenView__setHost_(self, _cmd, newValue)
{
self._host = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("password"), function $TNRemoteScreenView__password(self, _cmd)
{
return self._password;
}
,["CPString"]), new objj_method(sel_getUid("setPassword:"), function $TNRemoteScreenView__setPassword_(self, _cmd, newValue)
{
self._password = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("port"), function $TNRemoteScreenView__port(self, _cmd)
{
return self._port;
}
,["CPString"]), new objj_method(sel_getUid("setPort:"), function $TNRemoteScreenView__setPort_(self, _cmd, newValue)
{
self._port = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("state"), function $TNRemoteScreenView__state(self, _cmd)
{
return self._state;
}
,["CPString"]), new objj_method(sel_getUid("setState:"), function $TNRemoteScreenView__setState_(self, _cmd, newValue)
{
self._state = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("oldState"), function $TNRemoteScreenView__oldState(self, _cmd)
{
return self._oldState;
}
,["CPString"]), new objj_method(sel_getUid("setOldState:"), function $TNRemoteScreenView__setOldState_(self, _cmd, newValue)
{
self._oldState = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("delegate"), function $TNRemoteScreenView__delegate(self, _cmd)
{
return self._delegate;
}
,["id"]), new objj_method(sel_getUid("setDelegate:"), function $TNRemoteScreenView__setDelegate_(self, _cmd, newValue)
{
self._delegate = newValue;
}
,["void","id"]), new objj_method(sel_getUid("focusContainer"), function $TNRemoteScreenView__focusContainer(self, _cmd)
{
return self._focusContainer;
}
,["id"]), new objj_method(sel_getUid("setFocusContainer:"), function $TNRemoteScreenView__setFocusContainer_(self, _cmd, newValue)
{
self._focusContainer = newValue;
}
,["void","id"]), new objj_method(sel_getUid("initWithFrame:"), function $TNRemoteScreenView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNRemoteScreenView").super_class }, "initWithFrame:", aFrame))
    {
        self._autoResizeViewPort = YES;
        self._focusContainer = document;
        self._host = nil;
        self._isFullScreen = NO;
        self._isFullScreen = NO;
        self._password = "";
        self._port = 5900;
        self._state = TNRemoteScreenViewStateDisconnected;
        self._zoom = 1;
        self._encrypted = NO;
        self._oldState = nil;
        objj_msgSend(self, "_refreshScreenContainer");
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("_refreshScreenContainer"), function $TNRemoteScreenView___refreshScreenContainer(self, _cmd)
{
    if (self._screenContainer)
        self._DOMElement.removeChild(self._screenContainer);
    self._displayID = objj_msgSend(CPString, "UUID");
    self._screenContainer = objj_msgSend(self, "_createScreenContainer");
    self._screenContainer.id = self._displayID;
    self._DOMElement.appendChild(self._screenContainer);
    self._screenContainer.addEventListener("mouseover", function(e) {
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
        objj_msgSend(self, "focus");
    }, false);
    self._screenContainer.addEventListener("mouseout", function(e) {
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
        objj_msgSend(self, "unfocus");
    }, false);
}
,["void"]), new objj_method(sel_getUid("_createScreenContainer"), function $TNRemoteScreenView___createScreenContainer(self, _cmd)
{
    objj_msgSend(CPException, "raise:reason:", "MethodNotImplemented", "_createScreenContainer must be implemented");
}
,["id"]), new objj_method(sel_getUid("_translateState:"), function $TNRemoteScreenView___translateState_(self, _cmd, aState)
{
    return aState;
}
,["void","CPString"]), new objj_method(sel_getUid("displaySize"), function $TNRemoteScreenView__displaySize(self, _cmd)
{
    objj_msgSend(CPException, "raise:reason:", "MethodNotImplemented", "displaySize: must be implemented");
}
,["CGSize"]), new objj_method(sel_getUid("acceptsFirstResponder"), function $TNRemoteScreenView__acceptsFirstResponder(self, _cmd)
{
    return YES;
}
,["void"]), new objj_method(sel_getUid("resignFirstResponder"), function $TNRemoteScreenView__resignFirstResponder(self, _cmd)
{
    return !self._isFocused;
}
,["void"]), new objj_method(sel_getUid("focus"), function $TNRemoteScreenView__focus(self, _cmd)
{
    self._screenContainer.focus();
    self._isFocused = YES;
    objj_msgSend(objj_msgSend(self, "window"), "makeFirstResponder:", self);
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("remoteScreenView:didGetFocus:")))
        objj_msgSend(self._delegate, "remoteScreenView:didGetFocus:", self, YES);
}
,["void"]), new objj_method(sel_getUid("unfocus"), function $TNRemoteScreenView__unfocus(self, _cmd)
{
    self._isFocused = NO;
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("remoteScreenView:didGetFocus:")))
        objj_msgSend(self._delegate, "remoteScreenView:didGetFocus:", self, NO);
}
,["void"]), new objj_method(sel_getUid("zoom"), function $TNRemoteScreenView__zoom(self, _cmd)
{
    return self._zoom;
}
,["float"]), new objj_method(sel_getUid("setZoom:"), function $TNRemoteScreenView__setZoom_(self, _cmd, aZoomFactor)
{
    self._zoom = aZoomFactor;
}
,["void","float"]), new objj_method(sel_getUid("_syncSize"), function $TNRemoteScreenView___syncSize(self, _cmd)
{
    if (self._autoResizeViewPort)
    {
        var currentSize = objj_msgSend(self, "displaySize");
        objj_msgSend(self, "setFrameSize:", CGSizeMake(currentSize.width * self._zoom, currentSize.height * self._zoom));
    }
}
,["void"]), new objj_method(sel_getUid("setFullScreen:"), function $TNRemoteScreenView__setFullScreen_(self, _cmd, shouldBeFullScreen)
{
    if (shouldBeFullScreen === self._isFullScreen)
        return;
    var currentDOMObject = self._focusContainer.getElementsByTagName("html")[0],
        oldSize,
        newSize,
        zoomFactor;
    currentDOMObject.style.height = "100%";
    oldSize = CGSizeMake(currentDOMObject.offsetWidth, currentDOMObject.offsetHeight);
    if (!objj_msgSend(CPPlatform, "isBrowser") || !currentDOMObject.webkitRequestFullScreen || !self._focusContainer.webkitCancelFullScreen)
    {
        CPLog.warn("you need last version of webkit to support fullscreen."
                    + " use Webkit nightlies and set 'defaults write com.apple.Safari WebKitFullScreenEnabled 1' in Terminal");
        if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("remoteScreenViewDoesNotSupportFullScreen:")))
            objj_msgSend(self._delegate, "remoteScreenViewDoesNotSupportFullScreen:", self);
        return;
    }
    if (shouldBeFullScreen)
    {
        currentDOMObject.webkitRequestFullScreen();
        self._isFullScreen = YES;
        zoomFactor = currentDOMObject.offsetWidth / oldSize.width;
        objj_msgSend(self, "focus");
    }
    else
    {
        self._focusContainer.webkitCancelFullScreen();
        self._isFullScreen = NO;
        zoomFactor = 1.0;
    }
    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("remoteScreenView:didBecomeFullScreen:size:zoomFactor:")))
        objj_msgSend(self._delegate, "remoteScreenView:didBecomeFullScreen:size:zoomFactor:", self, self._isFullScreen, CGSizeMake(currentDOMObject.offsetWidth, currentDOMObject.offsetHeight), zoomFactor);
}
,["void","BOOL"]), new objj_method(sel_getUid("load"), function $TNRemoteScreenView__load(self, _cmd)
{
}
,["void"]), new objj_method(sel_getUid("connect:"), function $TNRemoteScreenView__connect_(self, _cmd, aSender)
{
}
,["id","id"]), new objj_method(sel_getUid("disconnect:"), function $TNRemoteScreenView__disconnect_(self, _cmd, sender)
{
}
,["id","id"])]);
}p;13;TNSpiceView.jt;7363;@STATIC;1.0;I;23;Foundation/Foundation.ji;20;TNRemoteScreenView.ji;24;Resources/spice/enums.jsi;29;Resources/spice/atKeynames.jsi;24;Resources/spice/utils.jsi;22;Resources/spice/png.jsi;21;Resources/spice/lz.jsi;23;Resources/spice/quic.jsi;25;Resources/spice/bitmap.jsi;32;Resources/spice/spicedataview.jsi;28;Resources/spice/spicetype.jsi;27;Resources/spice/spicemsg.jsi;23;Resources/spice/wire.jsi;28;Resources/spice/spiceconn.jsi;26;Resources/spice/display.jsi;23;Resources/spice/main.jsi;25;Resources/spice/inputs.jsi;25;Resources/spice/cursor.jsi;23;Resources/spice/jsbn.jsi;22;Resources/spice/rsa.jsi;24;Resources/spice/prng4.jsi;22;Resources/spice/rng.jsi;23;Resources/spice/sha1.jsi;25;Resources/spice/ticket.jst;6637;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("TNRemoteScreenView.j", YES);
objj_executeFile("Resources/spice/enums.js", YES);
objj_executeFile("Resources/spice/atKeynames.js", YES);
objj_executeFile("Resources/spice/utils.js", YES);
objj_executeFile("Resources/spice/png.js", YES);
objj_executeFile("Resources/spice/lz.js", YES);
objj_executeFile("Resources/spice/quic.js", YES);
objj_executeFile("Resources/spice/bitmap.js", YES);
objj_executeFile("Resources/spice/spicedataview.js", YES);
objj_executeFile("Resources/spice/spicetype.js", YES);
objj_executeFile("Resources/spice/spicemsg.js", YES);
objj_executeFile("Resources/spice/wire.js", YES);
objj_executeFile("Resources/spice/spiceconn.js", YES);
objj_executeFile("Resources/spice/display.js", YES);
objj_executeFile("Resources/spice/main.js", YES);
objj_executeFile("Resources/spice/inputs.js", YES);
objj_executeFile("Resources/spice/cursor.js", YES);
objj_executeFile("Resources/spice/jsbn.js", YES);
objj_executeFile("Resources/spice/rsa.js", YES);
objj_executeFile("Resources/spice/prng4.js", YES);
objj_executeFile("Resources/spice/rng.js", YES);
objj_executeFile("Resources/spice/sha1.js", YES);
objj_executeFile("Resources/spice/ticket.js", YES);
TNSpiceViewStateConnecting = "connecting";
TNSpiceViewStateReady = "ready";
TNSpiceViewStateLink = "link";
TNSpiceViewStateTicket = "ticket";
TNSpiceViewStateError = "error";
TNSpiceViewStateClosed = "closed";
TNSpiceViewStateNeedsPassword = "needs_password";
SPICE_CONNECT_TIMEOUT = 300;
{var the_class = objj_allocateClassPair(TNRemoteScreenView, "TNSpiceView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_spice"), new objj_ivar("_currentDisplaySize"), new objj_ivar("_remoteURL")]);
       
       




       
       




objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithFrame:focusContainer:"), function $TNSpiceView__initWithFrame_focusContainer_(self, _cmd, aFrame, aFocusContainer)
{
    if (self = objj_msgSend(self, "initWithFrame:", aFrame))
    {
        self._focusContainer = aFocusContainer;
        objj_msgSend(self, "_refreshScreenContainer");
    }
    return self;
}
,["id","CGRect","id"]), new objj_method(sel_getUid("_createScreenContainer"), function $TNSpiceView___createScreenContainer(self, _cmd)
{
    return self._focusContainer.createElement("div");
}
,["id"]), new objj_method(sel_getUid("_translateState:"), function $TNSpiceView___translateState_(self, _cmd, aState)
{
    switch (aState)
    {
        case TNSpiceViewStateConnecting: return TNRemoteScreenViewStateConnecting;
        case TNSpiceViewStateReady: return TNRemoteScreenViewStateConnected;
        case TNSpiceViewStateClosed: return TNRemoteScreenViewStateDisconnected;
        case TNSpiceViewStateError: return TNRemoteScreenViewStateError;
        case TNSpiceViewStateNeedsPassword: return TNRemoteScreenViewNeedsPassword;
    }
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNSpiceView").super_class }, "_translateState:", aState);
}
,["CPString","CPString"]), new objj_method(sel_getUid("displaySize"), function $TNSpiceView__displaySize(self, _cmd)
{
    return self._currentDisplaySize || CGSizeMakeZero();
}
,["CGSize"]), new objj_method(sel_getUid("setZoom:"), function $TNSpiceView__setZoom_(self, _cmd, aZoomFactor)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNSpiceView").super_class }, "setZoom:", aZoomFactor);
    if (self._spice)
    {
        self._spice.set_scale(aZoomFactor);
        objj_msgSend(self, "_syncSize");
    }
}
,["void","float"]), new objj_method(sel_getUid("load"), function $TNSpiceView__load(self, _cmd)
{
    self._remoteURL = (self._encrypted ? "wss" : "ws") + "://" + self._host + ":" + self._port;
}
,["void"]), new objj_method(sel_getUid("_connect"), function $TNSpiceView___connect(self, _cmd)
{
    self._spice = new SpiceMainConn(
        {
            screen_id: self._displayID,
            uri: self._remoteURL,
            password: self._password,
            focus_container: self._focusContainer,
            onresize: function(width, height){
                objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
                self._currentDisplaySize = CGSizeMake(width, height);
                setTimeout(function() {
                    objj_msgSend(self, "_syncSize");
                    if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("remoteScreenView:didDesktopSizeChange:")))
                        objj_msgSend(self._delegate, "remoteScreenView:didDesktopSizeChange:", self, CGSizeMake(width, height));
                }, 0);
            },
            onchange_state: function(oldstate, state) {
                objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
                CPLog.info("SPICE state changed from " + oldstate + " to " + state);
                self._state = objj_msgSend(self, "_translateState:", state);
                self._oldState = objj_msgSend(self, "_translateState:", oldstate);
                if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("remoteScreenView:updateState:message:")))
                    objj_msgSend(self._delegate, "remoteScreenView:updateState:message:", self, self._state, nil);
            },
            onerror : function(e) {
                self._state = objj_msgSend(self, "_translateState:", TNSpiceViewStateError);
                self._oldState = objj_msgSend(self, "_translateState:", TNSpiceViewStateConnecting);
                if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("remoteScreenView:updateState:message:")))
                    objj_msgSend(self._delegate, "remoteScreenView:updateState:message:", self, self._state, nil);
            }
        });
    }
,["void"]), new objj_method(sel_getUid("sendPassword:"), function $TNSpiceView__sendPassword_(self, _cmd, aPassword)
{
    objj_msgSend(self, "disconnect:", nil);
    self._password = aPassword;
    objj_msgSend(self, "_connect");
}
,["void","CPString"]), new objj_method(sel_getUid("connect:"), function $TNSpiceView__connect_(self, _cmd, aSender)
{
    objj_msgSend(self, "disconnect:", aSender);
    objj_msgSend(self, "_connect");
}
,["id","id"]), new objj_method(sel_getUid("disconnect:"), function $TNSpiceView__disconnect_(self, _cmd, aSender)
{
    if (self._spice)
        self._spice.stop();
    self._spice = nil;
    self._password = nil;
}
,["id","id"])]);
}p;11;TNVNCView.jt;9558;@STATIC;1.0;I;23;Foundation/Foundation.jI;15;AppKit/CPView.jI;20;AppKit/CPTextField.ji;20;TNRemoteScreenView.ji;26;Resources/novnc/jsunzip.jsi;24;Resources/novnc/input.jsi;25;Resources/novnc/base64.jsi;22;Resources/novnc/des.jsi;26;Resources/novnc/display.jsi;22;Resources/novnc/rfb.jsi;26;Resources/novnc/websock.jsi;23;Resources/novnc/util.jst;9207;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("TNRemoteScreenView.j", YES);
noVNC_logo = nil;
INCLUDE_URI = "/Frameworks/VNCCappuccino/Resources/novnc";
Websock_native = YES;
objj_executeFile("Resources/novnc/jsunzip.js", YES);
objj_executeFile("Resources/novnc/input.js", YES);
objj_executeFile("Resources/novnc/base64.js", YES);
objj_executeFile("Resources/novnc/des.js", YES);
objj_executeFile("Resources/novnc/display.js", YES);
objj_executeFile("Resources/novnc/rfb.js", YES);
objj_executeFile("Resources/novnc/websock.js", YES);
objj_executeFile("Resources/novnc/util.js", YES);
TNVNCStateNormal = "normal";
TNVNCStateFailed = "failed";
TNVNCStateFatal = "fatal";
TNVNCStateDisconnect = "disconnect";
TNVNCStateDisconnected = "disconnected";
TNVNCStateLoaded = "loaded";
TNVNCStatePassword = "password";
TNVNCStateSecurityResult = "SecurityResult";
{var the_class = objj_allocateClassPair(TNRemoteScreenView, "TNVNCView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_trueColor"), new objj_ivar("_message"), new objj_ivar("_oldState"), new objj_ivar("_checkRate"), new objj_ivar("_frameBufferRequestRate"), new objj_ivar("_display"), new objj_ivar("_DOMClipboard"), new objj_ivar("_RFB")]);


       
       


       
       



       
       



       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("isTrueColor"), function $TNVNCView__isTrueColor(self, _cmd)
{
return self._trueColor;
}
,["BOOL"]), new objj_method(sel_getUid("setTrueColor:"), function $TNVNCView__setTrueColor_(self, _cmd, newValue)
{
self._trueColor = newValue;
}
,["void","BOOL"]), new objj_method(sel_getUid("message"), function $TNVNCView__message(self, _cmd)
{
return self._message;
}
,["CPString"]), new objj_method(sel_getUid("setMessage:"), function $TNVNCView__setMessage_(self, _cmd, newValue)
{
self._message = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("oldState"), function $TNVNCView__oldState(self, _cmd)
{
return self._oldState;
}
,["CPString"]), new objj_method(sel_getUid("setOldState:"), function $TNVNCView__setOldState_(self, _cmd, newValue)
{
self._oldState = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("checkRate"), function $TNVNCView__checkRate(self, _cmd)
{
return self._checkRate;
}
,["int"]), new objj_method(sel_getUid("setCheckRate:"), function $TNVNCView__setCheckRate_(self, _cmd, newValue)
{
self._checkRate = newValue;
}
,["void","int"]), new objj_method(sel_getUid("frameBufferRequestRate"), function $TNVNCView__frameBufferRequestRate(self, _cmd)
{
return self._frameBufferRequestRate;
}
,["int"]), new objj_method(sel_getUid("setFrameBufferRequestRate:"), function $TNVNCView__setFrameBufferRequestRate_(self, _cmd, newValue)
{
self._frameBufferRequestRate = newValue;
}
,["void","int"]), new objj_method(sel_getUid("initWithFrame:"), function $TNVNCView__initWithFrame_(self, _cmd, aFrame)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVNCView").super_class }, "initWithFrame:", aFrame))
    {
        self._trueColor = YES;
        self._frameBufferRequestRate = 1413;
        self._checkRate = 217;
    }
    return self;
}
,["id","CGRect"]), new objj_method(sel_getUid("_createScreenContainer"), function $TNVNCView___createScreenContainer(self, _cmd)
{
    return self._focusContainer.createElement("canvas")
}
,["id"]), new objj_method(sel_getUid("_translateState:"), function $TNVNCView___translateState_(self, _cmd, aState)
{
    switch (aState)
    {
        case TNVNCStateNormal: return TNRemoteScreenViewStateConnected;
        case TNVNCStateFailed: return TNRemoteScreenViewStateError;
        case TNVNCStateFatal: return TNRemoteScreenViewStateError;
        case TNVNCStateDisconnected: return TNRemoteScreenViewStateDisconnected;
        case TNVNCStatePassword: return TNRemoteScreenViewNeedsPassword;
    }
    return objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVNCView").super_class }, "_translateState:", aState);
}
,["void","CPString"]), new objj_method(sel_getUid("focus"), function $TNVNCView__focus(self, _cmd)
{
    if (self._display)
    {
        self._RFB.get_keyboard().set_focused(YES);
        self._RFB.get_mouse().set_focused(YES);
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVNCView").super_class }, "focus");
    }
}
,["void"]), new objj_method(sel_getUid("unfocus"), function $TNVNCView__unfocus(self, _cmd)
{
    if (self._display)
    {
        self._RFB.get_keyboard().set_focused(NO);
        self._RFB.get_mouse().set_focused(NO);
        objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVNCView").super_class }, "unfocus");
    }
}
,["void"]), new objj_method(sel_getUid("displaySize"), function $TNVNCView__displaySize(self, _cmd)
{
    return CGSizeMake(self._display.get_width(), self._display.get_height());
}
,["CGSize"]), new objj_method(sel_getUid("zoom"), function $TNVNCView__zoom(self, _cmd)
{
    if (self._display)
        return self._display.get_scale();
}
,["float"]), new objj_method(sel_getUid("setZoom:"), function $TNVNCView__setZoom_(self, _cmd, aZoomFactor)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNVNCView").super_class }, "setZoom:", aZoomFactor);
    if (self._display)
    {
        self._display.set_scale(aZoomFactor);
        self._RFB.get_mouse().set_scale(aZoomFactor);
        objj_msgSend(self, "_syncSize");
    }
}
,["void","float"]), new objj_method(sel_getUid("load"), function $TNVNCView__load(self, _cmd)
{
    CPLog.info("loading noVNC");
    self._RFB = RFB({"target": self._screenContainer,
                "focusContainer": self._focusContainer,
                "fbu_req_rate": self._frameBufferRequestRate,
                "check_rate": self._checkRate
                });
    self._display = self._RFB.get_display();
    if (!self._display)
        objj_msgSend(CPException, "raise:reason:", "No canvas", "Cannot get canvas with ID: " + self._displayID);
    self._RFB.set_encrypt(self._encrypted);
    self._RFB.set_true_color(self._trueColor);
    self._RFB.set_onUpdateState(function(rfb, state, oldstate, msg){
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
        CPLog.info("noVNC state changed from " + oldstate + " to " + state);
        self._state = objj_msgSend(self, "_translateState:", state);
        self._oldState = objj_msgSend(self, "_translateState:", oldstate);
        self._message = msg;
        if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("remoteScreenView:updateState:message:")))
            objj_msgSend(self._delegate, "remoteScreenView:updateState:message:", self, self._state, msg);
    });
    self._RFB.set_clipboardReceive(function(rfb, text){
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
        CPLog.info("noVNC received clipboard text: " + text);
        if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("remoteScreenView:didReceivePasteBoardText:")))
            objj_msgSend(self._delegate, "remoteScreenView:didReceivePasteBoardText:", self, text)
    });
    self._RFB.set_onFBResize(function(rfb, width, height) {
        objj_msgSend(objj_msgSend(CPRunLoop, "currentRunLoop"), "limitDateForMode:", CPDefaultRunLoopMode);
        setTimeout(function() {
            objj_msgSend(self, "_syncSize");
            if (self._delegate && objj_msgSend(self._delegate, "respondsToSelector:", sel_getUid("remoteScreenView:didDesktopSizeChange:")))
                objj_msgSend(self._delegate, "remoteScreenView:didDesktopSizeChange:", self, CGSizeMake(width, height));
        }, 0);
    });
    CPLog.info("noVNC loaded");
}
,["void"]), new objj_method(sel_getUid("connect:"), function $TNVNCView__connect_(self, _cmd, aSender)
{
    CPLog.info("connecting noVNC");
    self._RFB.connect(self._host, self._port, self._password);
    if (self._display)
    {
        self._display.set_scale(self._zoom);
        self._RFB.get_mouse().set_scale(self._zoom);
    }
}
,["id","id"]), new objj_method(sel_getUid("disconnect:"), function $TNVNCView__disconnect_(self, _cmd, sender)
{
    CPLog.info("disconnecting noVNC");
    self._display.set_ctx = nil;
    self._RFB.force_disconnect();
}
,["id","id"]), new objj_method(sel_getUid("sendPassword:"), function $TNVNCView__sendPassword_(self, _cmd, aPassword)
{
    CPLog.info("sending password to noVNC");
    self._RFB.sendPassword(aPassword);
    self._password = aPassword;
}
,["void","CPString"]), new objj_method(sel_getUid("sendTextToPasteboard:"), function $TNVNCView__sendTextToPasteboard_(self, _cmd, aText)
{
    if ((self._RFB) && (self._state == TNRemoteScreenViewStateConnected))
        self._RFB.clipboardPasteFrom(aText);
}
,["void","CPString"]), new objj_method(sel_getUid("sendCtrlAltDel:"), function $TNVNCView__sendCtrlAltDel_(self, _cmd, aSender)
{
    CPLog.info("sending CTRL ALT DEL noVNC");
    self._RFB.sendCtrlAltDel();
}
,["void","id"])]);
}p;15;VNCCappuccino.jt;128;@STATIC;1.0;i;11;TNVNCView.ji;13;TNSpiceView.jt;77;objj_executeFile("TNVNCView.j", YES);
objj_executeFile("TNSpiceView.j", YES);e;