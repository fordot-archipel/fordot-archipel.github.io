@STATIC;1.0;p;32;TNGeneralWelcomeViewController.jt;4055;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPTextField.jI;18;AppKit/CPWebView.ji;22;../../Model/TNModule.jt;3933;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPWebView.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
{var the_class = objj_allocateClassPair(TNModule, "TNGeneralWelcomeViewController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("mainWebView"), new objj_ivar("imageViewBrowser"), new objj_ivar("fieldLoading"), new objj_ivar("fieldPreferencesWelcomePageUrl")]);
       
       



       
       
objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNGeneralWelcomeViewController__awakeFromCib(self, _cmd)
{
    objj_msgSend(self.mainWebView, "setScrollMode:", CPWebViewScrollNative);
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(defaults, "registerDefaults:", objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelHelpWindowURL"), "TNArchipelHelpWindowURL"));
    objj_msgSend(self.imageViewBrowser, "setImage:", objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "browser.png")));
    objj_msgSend(self.fieldLoading, "setValue:forThemeAttribute:inState:", objj_msgSend(CPColor, "colorWithHexString:", "eee"), "text-shadow-color", CPThemeStateNormal);
    objj_msgSend(self.fieldLoading, "setValue:forThemeAttribute:inState:", CGSizeMake(0.0, -1.0), "text-shadow-offset", CPThemeStateNormal);
    objj_msgSend(self.fieldLoading, "setTextColor:", objj_msgSend(CPColor, "colorWithHexString:", "929292"));
}
,["void"]), new objj_method(sel_getUid("willShow"), function $TNGeneralWelcomeViewController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNGeneralWelcomeViewController").super_class }, "willShow"))
        return NO;
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(self.mainWebView, "setAlphaValue:", 0.0);
    self.mainWebView._DOMElement.style.WebkitTransition = "opacity 0.3s";
    objj_msgSend(self.mainWebView, "setFrameLoadDelegate:", self);
    objj_msgSend(self.mainWebView, "setMainFrameURL:", objj_msgSend(defaults, "objectForKey:", "TNArchipelHelpWindowURL") + "?lang=" + objj_msgSend(defaults, "objectForKey:", "CPBundleLocale"));
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("savePreferences"), function $TNGeneralWelcomeViewController__savePreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(defaults, "setObject:forKey:", objj_msgSend(self.fieldPreferencesWelcomePageUrl, "stringValue"), "TNArchipelHelpWindowURL");
    objj_msgSend(self.mainWebView, "setMainFrameURL:", objj_msgSend(defaults, "objectForKey:", "TNArchipelHelpWindowURL") + "?lang=" + objj_msgSend(defaults, "objectForKey:", "CPBundleLocale"));
}
,["void"]), new objj_method(sel_getUid("loadPreferences"), function $TNGeneralWelcomeViewController__loadPreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(self.fieldPreferencesWelcomePageUrl, "setStringValue:", objj_msgSend(defaults, "objectForKey:", "TNArchipelHelpWindowURL"));
}
,["void"]), new objj_method(sel_getUid("webView:didFinishLoadForFrame:"), function $TNGeneralWelcomeViewController__webView_didFinishLoadForFrame_(self, _cmd, aWebView, aFrame)
{
    objj_msgSend(self.mainWebView, "setAlphaValue:", 1.0);
}
,["void","CPWebView","id"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNGeneralWelcomeViewController), comment);
}e;