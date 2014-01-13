@STATIC;1.0;p;15;TNCellLogView.jt;4542;@STATIC;1.0;I;23;Foundation/Foundation.jI;25;AppKit/CPLevelIndicator.jI;28;AppKit/CPProgressIndicator.jI;20;AppKit/CPTextField.ji;29;../../Views/TNBasicDataView.jt;4373;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPLevelIndicator.j", NO);
objj_executeFile("AppKit/CPProgressIndicator.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("../../Views/TNBasicDataView.j", YES);
var TNCellLogViewIconError,
    TNCellLogViewIconWarning,
    TNCellLogViewIconInfo,
    TNCellLogViewIconDebug;
{var the_class = objj_allocateClassPair(TNBasicDataView, "TNCellLogView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("imageViewIcon"), new objj_ivar("fieldDate"), new objj_ivar("fieldLevel"), new objj_ivar("fieldMessage")]);
       
       

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setObjectValue:"), function $TNCellLogView__setObjectValue_(self, _cmd, aLog)
{
    objj_msgSend(self.fieldLevel, "setStringValue:", objj_msgSend(aLog, "level"));
    objj_msgSend(self.fieldDate, "setStringValue:", objj_msgSend(aLog, "date"));
    objj_msgSend(self.fieldMessage, "setStringValue:", objj_msgSend(aLog, "message"));
    switch (objj_msgSend(objj_msgSend(aLog, "level"), "lowercaseString"))
    {
        case "debug":
            objj_msgSend(self.fieldLevel, "setTextColor:", objj_msgSend(CPColor, "colorWithHexString:", "4C8AFF"));
            objj_msgSend(self.imageViewIcon, "setImage:", TNCellLogViewIconDebug);
            break;
        case "info":
            objj_msgSend(self.fieldLevel, "setTextColor:", objj_msgSend(CPColor, "colorWithHexString:", "EAD700"));
            objj_msgSend(self.imageViewIcon, "setImage:", TNCellLogViewIconInfo);
            break;
        case "warn":
            objj_msgSend(self.fieldLevel, "setTextColor:", objj_msgSend(CPColor, "colorWithHexString:", "EC9C1B"));
            objj_msgSend(self.imageViewIcon, "setImage:", TNCellLogViewIconWarning);
            break;
        case "error":
            objj_msgSend(self.fieldLevel, "setTextColor:", objj_msgSend(CPColor, "colorWithHexString:", "ED4E44"));
            objj_msgSend(self.imageViewIcon, "setImage:", TNCellLogViewIconError);
            break;
    }
}
,["void","TNLogEntryObject"]), new objj_method(sel_getUid("initWithCoder:"), function $TNCellLogView__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCellLogView").super_class }, "initWithCoder:", aCoder))
    {
        self.imageViewIcon = objj_msgSend(aCoder, "decodeObjectForKey:", "imageViewIcon");
        self.fieldDate = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldDate");
        self.fieldLevel = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldLevel");
        self.fieldMessage = objj_msgSend(aCoder, "decodeObjectForKey:", "fieldMessage");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNCellLogView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCellLogView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.imageViewIcon, "imageViewIcon");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldDate, "fieldDate");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldLevel, "fieldLevel");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.fieldMessage, "fieldMessage");
}
,["void","CPCoder"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("initialize"), function $TNCellLogView__initialize(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", TNCellLogView);
    TNCellLogViewIconError = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "icon-error.png"), CGSizeMake(18.0, 18.0));
    TNCellLogViewIconWarning = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "icon-warning.png"), CGSizeMake(18.0, 18.0));
    TNCellLogViewIconInfo = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "icon-info.png"), CGSizeMake(18.0, 18.0));
    TNCellLogViewIconDebug = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:size:", objj_msgSend(bundle, "pathForResource:", "icon-debug.png"), CGSizeMake(18.0, 18.0));
}
,["void"])]);
}p;21;TNCellPartitionView.jt;3126;@STATIC;1.0;I;23;Foundation/Foundation.jI;25;AppKit/CPLevelIndicator.jI;28;AppKit/CPProgressIndicator.jI;20;AppKit/CPTextField.ji;29;../../Views/TNBasicDataView.jt;2957;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPLevelIndicator.j", NO);
objj_executeFile("AppKit/CPProgressIndicator.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("../../Views/TNBasicDataView.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
{var the_class = objj_allocateClassPair(TNBasicDataView, "TNCellPartitionView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("levelIndicator"), new objj_ivar("nameLabel"), new objj_ivar("totalLabel"), new objj_ivar("usedLabel"), new objj_ivar("availableLabel")]);
       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("setObjectValue:"), function $TNCellPartitionView__setObjectValue_(self, _cmd, aPartition)
{
    var capacity = parseInt(objj_msgSend(aPartition, "capacity"));
    objj_msgSend(self.levelIndicator, "setDoubleValue:", 50 - capacity / 2);
    objj_msgSend(self.nameLabel, "setStringValue:", objj_msgSend(aPartition, "mount"));
    objj_msgSend(self.usedLabel, "setStringValue:", CPBundleLocalizedString("Used: ", "Used: ") + objj_msgSend(CPString, "formatByteSize:", objj_msgSend(objj_msgSend(aPartition, "used"), "intValue")));
    objj_msgSend(self.availableLabel, "setStringValue:", CPBundleLocalizedString("Available: ", "Available: ") + objj_msgSend(CPString, "formatByteSize:", objj_msgSend(objj_msgSend(aPartition, "available"), "intValue")));
}
,["void","CPDictionary"]), new objj_method(sel_getUid("initWithCoder:"), function $TNCellPartitionView__initWithCoder_(self, _cmd, aCoder)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCellPartitionView").super_class }, "initWithCoder:", aCoder))
    {
        self.levelIndicator = objj_msgSend(aCoder, "decodeObjectForKey:", "levelIndicator");
        self.nameLabel = objj_msgSend(aCoder, "decodeObjectForKey:", "nameLabel");
        self.usedLabel = objj_msgSend(aCoder, "decodeObjectForKey:", "usedLabel");
        self.availableLabel = objj_msgSend(aCoder, "decodeObjectForKey:", "availableLabel");
    }
    return self;
}
,["id","CPCoder"]), new objj_method(sel_getUid("encodeWithCoder:"), function $TNCellPartitionView__encodeWithCoder_(self, _cmd, aCoder)
{
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNCellPartitionView").super_class }, "encodeWithCoder:", aCoder);
    objj_msgSend(aCoder, "encodeObject:forKey:", self.nameLabel, "nameLabel");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.levelIndicator, "levelIndicator");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.usedLabel, "usedLabel");
    objj_msgSend(aCoder, "encodeObject:forKey:", self.availableLabel, "availableLabel");
}
,["void","CPCoder"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNCellPartitionView), comment);
}p;23;TNDatasourceChartView.jt;5147;@STATIC;1.0;I;23;Foundation/Foundation.jI;19;LPKit/LPChartView.jt;5076;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("LPKit/LPChartView.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNDatasourceChartView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_datas"), new objj_ivar("_maxNumberOfPoints")]);

       
       




       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("initWithNumberOfSets:"), function $TNDatasourceChartView__initWithNumberOfSets_(self, _cmd, numberOfSets)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNDatasourceChartView").super_class }, "init"))
    {
        self._datas = objj_msgSend(CPArray, "array");
        for (var i = 0 ; i < numberOfSets; i++)
            objj_msgSend(self._datas, "addObject:", objj_msgSend(CPArray, "array"));
        self._maxNumberOfPoints = 100;
    }
    return self;
}
,["void","int"]), new objj_method(sel_getUid("init"), function $TNDatasourceChartView__init(self, _cmd)
{
    return objj_msgSend(self, "initWithSets:", 1);
}
,["void"]), new objj_method(sel_getUid("numberOfSetsInChart:"), function $TNDatasourceChartView__numberOfSetsInChart_(self, _cmd, aCharView)
{
    return objj_msgSend(self._datas, "count");
}
,["CPNumber","LPChartView"]), new objj_method(sel_getUid("chart:numberOfValuesInSet:"), function $TNDatasourceChartView__chart_numberOfValuesInSet_(self, _cmd, aChartView, setIndex)
{
    return objj_msgSend(objj_msgSend(self._datas, "objectAtIndex:", setIndex), "count");
}
,["CPNumber","LPChartView","CPNumber"]), new objj_method(sel_getUid("chart:valueForIndex:set:"), function $TNDatasourceChartView__chart_valueForIndex_set_(self, _cmd, aChartView, itemIndex, setIndex)
{
    if (itemIndex > (objj_msgSend(objj_msgSend(self._datas, "objectAtIndex:", setIndex), "count") - 1))
        return 0;
    return objj_msgSend(objj_msgSend(self._datas, "objectAtIndex:", setIndex), "objectAtIndex:", itemIndex);
}
,["id","LPChartView","CPNumber","CPNumber"]), new objj_method(sel_getUid("chart:labelValueForIndex:"), function $TNDatasourceChartView__chart_labelValueForIndex_(self, _cmd, aChartView, anIndex)
{
    return "";
}
,["CPString","LPChartView","int"]), new objj_method(sel_getUid("pushData:inSet:"), function $TNDatasourceChartView__pushData_inSet_(self, _cmd, data, setIndex)
{
    if (setIndex >= objj_msgSend(self._datas, "count"))
        return;
    if (objj_msgSend(objj_msgSend(self._datas, "objectAtIndex:", setIndex), "count") >= self._maxNumberOfPoints)
        objj_msgSend(objj_msgSend(self._datas, "objectAtIndex:", setIndex), "removeObjectAtIndex:", 0);
    objj_msgSend(self._datas, "objectAtIndex:", setIndex).push(parseFloat(data));
}
,["void","id","CPNumber"]), new objj_method(sel_getUid("setData:inSet:"), function $TNDatasourceChartView__setData_inSet_(self, _cmd, data, setIndex)
{
    if (setIndex >= objj_msgSend(self._datas, "count"))
    {
        objj_msgSend(CPException, "raise:reason:", "set index too big", "setIndex set to " + setIndex + ". Maximum is " + objj_msgSend(self._datas, "count") - 1);
    }
    self._datas[setIndex] = objj_msgSend(CPArray, "arrayWithArray:", data);
}
,["void","CPArray","CPNumber"]), new objj_method(sel_getUid("removeAllObjects"), function $TNDatasourceChartView__removeAllObjects(self, _cmd)
{
    self._datas = [];
}
,["void"])]);
}
{var the_class = objj_allocateClassPair(LPChartDrawView, "TNChartDrawView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("drawSetWithFrames:inContext:"), function $TNChartDrawView__drawSetWithFrames_inContext_(self, _cmd, aFramesSet, context)
{
    var fillColors = [
                        objj_msgSend(CPColor, "colorWithHexString:", "4379ca"),
                        objj_msgSend(CPColor, "colorWithHexString:", "7fca43"),
                        objj_msgSend(CPColor, "colorWithHexString:", "ca4343"),
                        objj_msgSend(CPColor, "colorWithHexString:", "dcd639"),
                        objj_msgSend(CPColor, "colorWithHexString:", "ca9f43"),
                        objj_msgSend(CPColor, "colorWithHexString:", "af43ca"),
                        objj_msgSend(CPColor, "colorWithHexString:", "43afca")
                    ];
    CGContextSetLineWidth(context, 1.6);
    for (var setIndex = 0; setIndex < aFramesSet.length; setIndex++)
    {
        CGContextSetStrokeColor(context, fillColors[setIndex]);
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
}p;26;TNDatasourcePieChartView.jt;3521;@STATIC;1.0;I;23;Foundation/Foundation.jI;19;AppKit/CGGradient.jI;22;LPKit/LPPieChartView.jt;3423;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CGGradient.j", NO);
objj_executeFile("LPKit/LPPieChartView.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNDatasourcePieChartView"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_datas")]);
       
       


       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("init"), function $TNDatasourcePieChartView__init(self, _cmd)
{
    if (self = objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNDatasourcePieChartView").super_class }, "init"))
    {
        self._datas = objj_msgSend(CPArray, "array");
    }
    return self;
}
,["void"]), new objj_method(sel_getUid("numberOfItemsInPieChartView:"), function $TNDatasourcePieChartView__numberOfItemsInPieChartView_(self, _cmd, aPieChartView)
{
    return objj_msgSend(self._datas, "count");
}
,["int","LPPieChartView"]), new objj_method(sel_getUid("pieChartView:floatValueForIndex:"), function $TNDatasourcePieChartView__pieChartView_floatValueForIndex_(self, _cmd, aPieChartView, anIndex)
{
    return self._datas[anIndex];
}
,["int","LPPieChartView","int"]), new objj_method(sel_getUid("pushData:"), function $TNDatasourcePieChartView__pushData_(self, _cmd, aData)
{
    objj_msgSend(self._datas, "addObject:", aData);
}
,["void","id"]), new objj_method(sel_getUid("removeAllObjects"), function $TNDatasourcePieChartView__removeAllObjects(self, _cmd)
{
    objj_msgSend(self._datas, "removeAllObjects");
}
,["void"])]);
}
{var the_class = objj_allocateClassPair(LPPieChartDrawView, "TNPieChartDrawView"),
meta_class = the_class.isa;objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("drawInContext:paths:"), function $TNPieChartDrawView__drawInContext_paths_(self, _cmd, context, paths)
{
    CGContextSetLineWidth(context, 1.3);
    CGContextSetStrokeColor(context, objj_msgSend(CPColor, "whiteColor"));
    var blueColor = objj_msgSend(CPColor, "colorWithHexString:", "4379ca"),
        darkBlueColor = objj_msgSend(CPColor, "colorWithHexString:", "3A5FA5"),
        greenColor = objj_msgSend(CPColor, "colorWithHexString:", "7fca43"),
        darkGreenColor = objj_msgSend(CPColor, "colorWithHexString:", "758B2C"),
        fillColors = [
                        [objj_msgSend(blueColor, "redComponent"), objj_msgSend(blueColor, "greenComponent"), objj_msgSend(blueColor, "blueComponent"),1.0, objj_msgSend(darkBlueColor, "redComponent"), objj_msgSend(darkBlueColor, "greenComponent"), objj_msgSend(darkBlueColor, "blueComponent"),1.0],
                        [objj_msgSend(greenColor, "redComponent"), objj_msgSend(greenColor, "greenComponent"), objj_msgSend(greenColor, "blueComponent"),1.0, objj_msgSend(darkGreenColor, "redComponent"), objj_msgSend(darkGreenColor, "greenComponent"), objj_msgSend(darkGreenColor, "blueComponent"),1.0]
                     ];
    for (var i = 0; i < paths.length; i++)
    {
        CGContextBeginPath(context);
        CGContextAddPath(context, paths[i]);
        var gradient = CGGradientCreateWithColorComponents(CGColorSpaceCreateDeviceRGB(), fillColors[i], [0,1], 2);
        CGContextDrawLinearGradient(context, gradient, objj_msgSend(self, "frame").origin, CGPointMake(0.0, 200.0), 0);
        CGContextClosePath(context);
        CGContextStrokePath(context);
    }
}
,["void","CGContext","CPArray"])]);
}p;30;TNHypervisorHealthController.jt;30924;@STATIC;1.0;I;23;Foundation/Foundation.jI;20;AppKit/CPImageView.jI;21;AppKit/CPScrollView.jI;22;AppKit/CPSearchField.jI;20;AppKit/CPTableView.jI;18;AppKit/CPTabView.jI;20;AppKit/CPTextField.jI;15;AppKit/CPView.jI;19;LPKit/LPChartView.jI;29;TNKit/TNTableViewDataSource.jI;16;TNKit/TNWorker.ji;22;../../Model/TNModule.ji;22;../../Views/TNSwitch.ji;15;TNCellLogView.ji;21;TNCellPartitionView.ji;23;TNDatasourceChartView.ji;26;TNDatasourcePieChartView.ji;18;TNLogEntryObject.ji;19;TNPartitionObject.jt;30420;objj_executeFile("Foundation/Foundation.j", NO);
objj_executeFile("AppKit/CPImageView.j", NO);
objj_executeFile("AppKit/CPScrollView.j", NO);
objj_executeFile("AppKit/CPSearchField.j", NO);
objj_executeFile("AppKit/CPTableView.j", NO);
objj_executeFile("AppKit/CPTabView.j", NO);
objj_executeFile("AppKit/CPTextField.j", NO);
objj_executeFile("AppKit/CPView.j", NO);
objj_executeFile("LPKit/LPChartView.j", NO);
objj_executeFile("TNKit/TNTableViewDataSource.j", NO);
objj_executeFile("TNKit/TNWorker.j", NO);
objj_executeFile("../../Model/TNModule.j", YES);
objj_executeFile("../../Views/TNSwitch.j", YES);
objj_executeFile("TNCellLogView.j", YES);
objj_executeFile("TNCellPartitionView.j", YES);
objj_executeFile("TNDatasourceChartView.j", YES);
objj_executeFile("TNDatasourcePieChartView.j", YES);
objj_executeFile("TNLogEntryObject.j", YES);
objj_executeFile("TNPartitionObject.j", YES);
//@global CPLocalizedString
//@global CPLocalizedStringFromTableInBundle
var TNArchipelTypeHypervisorHealth = "archipel:hypervisor:health",
    TNArchipelTypeHypervisorHealthInfo = "info",
    TNArchipelTypeHypervisorHealthHistory = "history",
    TNArchipelTypeHypervisorHealthLog = "logs",
    TNArchipelHealthRefreshBaseKey = "TNArchipelHealthRefreshBaseKey_";
var TNHypervisorHealthControllerVMXImageEnabled,
    TNHypervisorHealthControllerVMXImageDisabled;
{var the_class = objj_allocateClassPair(TNModule, "TNHypervisorHealthController"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("imageCPULoading"), new objj_ivar("imageDiskLoading"), new objj_ivar("imageLoadLoading"), new objj_ivar("imageMemoryLoading"), new objj_ivar("imageVMX"), new objj_ivar("filterLogField"), new objj_ivar("tableLogs"), new objj_ivar("tablePartitions"), new objj_ivar("tabViewInfos"), new objj_ivar("fieldHalfMemory"), new objj_ivar("fieldPreferencesAutoRefresh"), new objj_ivar("fieldPreferencesMaxItems"), new objj_ivar("fieldPreferencesMaxLogEntries"), new objj_ivar("fieldTotalMemory"), new objj_ivar("healthCPUUsage"), new objj_ivar("healthDiskUsage"), new objj_ivar("healthInfo"), new objj_ivar("healthLibvirtDriverVersion"), new objj_ivar("healthLibvirtVersion"), new objj_ivar("healthLoad"), new objj_ivar("healthMemSwapped"), new objj_ivar("healthMemUsage"), new objj_ivar("healthUptime"), new objj_ivar("viewCharts"), new objj_ivar("viewGraphCPUContainer"), new objj_ivar("viewGraphDiskContainer"), new objj_ivar("viewGraphLoadContainer"), new objj_ivar("viewGraphMemoryContainer"), new objj_ivar("viewGraphNetworkContainer"), new objj_ivar("viewLogs"), new objj_ivar("chartViewCPU"), new objj_ivar("chartViewLoad"), new objj_ivar("chartViewMemory"), new objj_ivar("chartViewNetwork"), new objj_ivar("logDataViewPrototype"), new objj_ivar("partitionDataViewPrototype"), new objj_ivar("switchPreferencesAutoRefresh"), new objj_ivar("_needReloadDataForCharts"), new objj_ivar("_timerStats"), new objj_ivar("_cpuDatasource"), new objj_ivar("_loadDatasource"), new objj_ivar("_memoryDatasource"), new objj_ivar("_networkDatasource"), new objj_ivar("_datasourceLogs"), new objj_ivar("_datasourcePartitions"), new objj_ivar("_logsWorker"), new objj_ivar("_statsHistoryWorker"), new objj_ivar("_statsWorker")]);
       
       




       
       

       
       


       
       

       
       






       
       


objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("awakeFromCib"), function $TNHypervisorHealthController__awakeFromCib(self, _cmd)
{
    var bundle = objj_msgSend(CPBundle, "bundleForClass:", objj_msgSend(self, "class")),
        spinner = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "loading.gif")),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(defaults, "registerDefaults:", objj_msgSend(CPDictionary, "dictionaryWithObjectsAndKeys:", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelHealthRefreshStatsInterval"), "TNArchipelHealthRefreshStatsInterval", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelHealthStatsHistoryCollectionSize"), "TNArchipelHealthStatsHistoryCollectionSize", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelHealthMaxLogEntry"), "TNArchipelHealthMaxLogEntry", objj_msgSend(bundle, "objectForInfoDictionaryKey:", "TNArchipelHealthAutoRefreshStats"), "TNArchipelHealthAutoRefreshStats"));
    TNHypervisorHealthControllerVMXImageEnabled = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "vmx-enabled.png"));
    TNHypervisorHealthControllerVMXImageDisabled = objj_msgSend(objj_msgSend(CPImage, "alloc"), "initWithContentsOfFile:", objj_msgSend(bundle, "pathForResource:", "vmx-disabled.png"));
    objj_msgSend(self.imageVMX, "setImage:", TNHypervisorHealthControllerVMXImageDisabled);
    objj_msgSend(self.imageCPULoading, "setImage:", spinner);
    objj_msgSend(self.imageMemoryLoading, "setImage:", spinner);
    objj_msgSend(self.imageLoadLoading, "setImage:", spinner);
    objj_msgSend(self.imageDiskLoading, "setImage:", spinner);
    objj_msgSend(self.imageCPULoading, "setHidden:", YES);
    objj_msgSend(self.imageMemoryLoading, "setHidden:", YES);
    objj_msgSend(self.imageLoadLoading, "setHidden:", YES);
    objj_msgSend(self.imageDiskLoading, "setHidden:", YES);
    var colorGraphsContainer = objj_msgSend(CPColor, "whiteColor");
    objj_msgSend(self.viewGraphCPUContainer, "setBackgroundColor:", colorGraphsContainer);
    objj_msgSend(self.viewGraphMemoryContainer, "setBackgroundColor:", colorGraphsContainer);
    objj_msgSend(self.viewGraphLoadContainer, "setBackgroundColor:", colorGraphsContainer);
    objj_msgSend(self.viewGraphDiskContainer, "setBackgroundColor:", colorGraphsContainer);
    objj_msgSend(self.viewGraphNetworkContainer, "setBackgroundColor:", colorGraphsContainer);
    objj_msgSend(self.viewGraphCPUContainer, "setBorderRadius:", 4);
    objj_msgSend(self.viewGraphMemoryContainer, "setBorderRadius:", 4);
    objj_msgSend(self.viewGraphLoadContainer, "setBorderRadius:", 4);
    objj_msgSend(self.viewGraphDiskContainer, "setBorderRadius:", 4);
    objj_msgSend(self.viewGraphNetworkContainer, "setBorderRadius:", 4);
    objj_msgSend(self.chartViewCPU, "setDrawViewPadding:", 1.0);
    objj_msgSend(self.chartViewCPU, "setLabelViewHeight:", 0.0);
    objj_msgSend(self.chartViewCPU, "setDrawView:", objj_msgSend(objj_msgSend(TNChartDrawView, "alloc"), "init"));
    objj_msgSend(self.chartViewCPU, "setFixedMaxValue:", 100);
    objj_msgSend(self.chartViewCPU, "setDisplayLabels:", NO);
    objj_msgSend(objj_msgSend(self.chartViewCPU, "gridView"), "setBackgroundColor:", objj_msgSend(CPColor, "whiteColor"));
    objj_msgSend(self.chartViewMemory, "setDrawViewPadding:", 1.0);
    objj_msgSend(self.chartViewMemory, "setLabelViewHeight:", 0.0);
    objj_msgSend(self.chartViewMemory, "setDrawView:", objj_msgSend(objj_msgSend(TNChartDrawView, "alloc"), "init"));
    objj_msgSend(self.chartViewMemory, "setDisplayLabels:", NO);
    objj_msgSend(objj_msgSend(self.chartViewMemory, "gridView"), "setBackgroundColor:", objj_msgSend(CPColor, "whiteColor"));
    objj_msgSend(self.chartViewLoad, "setAutoresizingMask:", CPViewWidthSizable);
    objj_msgSend(self.chartViewLoad, "setDrawViewPadding:", 1.0);
    objj_msgSend(self.chartViewLoad, "setLabelViewHeight:", 0.0);
    objj_msgSend(self.chartViewLoad, "setDrawView:", objj_msgSend(objj_msgSend(TNChartDrawView, "alloc"), "init"));
    objj_msgSend(self.chartViewLoad, "setFixedMaxValue:", 10);
    objj_msgSend(self.chartViewLoad, "setDisplayLabels:", YES);
    objj_msgSend(objj_msgSend(self.chartViewLoad, "gridView"), "setBackgroundColor:", objj_msgSend(CPColor, "whiteColor"));
    objj_msgSend(self.chartViewNetwork, "setAutoresizingMask:", CPViewWidthSizable);
    objj_msgSend(self.chartViewNetwork, "setDrawViewPadding:", 1.0);
    objj_msgSend(self.chartViewNetwork, "setLabelViewHeight:", 0.0);
    objj_msgSend(self.chartViewNetwork, "setDrawView:", objj_msgSend(objj_msgSend(TNChartDrawView, "alloc"), "init"));
    objj_msgSend(self.chartViewNetwork, "setDisplayLabels:", NO);
    objj_msgSend(objj_msgSend(self.chartViewNetwork, "gridView"), "setBackgroundColor:", objj_msgSend(CPColor, "whiteColor"));
    objj_msgSend(self.tabViewInfos, "setDelegate:", self);
    var tabViewItemCharts = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "charts"),
        tabViewItemLogs = objj_msgSend(objj_msgSend(CPTabViewItem, "alloc"), "initWithIdentifier:", "logs"),
        scrollViewChart = objj_msgSend(objj_msgSend(CPScrollView, "alloc"), "initWithFrame:", CGRectMake(0, 0, 0, 0));
    objj_msgSend(tabViewItemCharts, "setLabel:", CPBundleLocalizedString("Charts", "Charts"));
    objj_msgSend(tabViewItemCharts, "setView:", scrollViewChart);
    objj_msgSend(self.tabViewInfos, "addTabViewItem:", tabViewItemCharts);
    objj_msgSend(self.viewCharts, "setAutoresizingMask:", CPViewWidthSizable);
    var newFrameSize = objj_msgSend(self.viewCharts, "frameSize");
    newFrameSize.width = objj_msgSend(scrollViewChart, "contentSize").width;
    objj_msgSend(self.viewCharts, "setFrameSize:", newFrameSize);
    objj_msgSend(scrollViewChart, "setAutohidesScrollers:", YES);
    objj_msgSend(scrollViewChart, "setDocumentView:", self.viewCharts);
    objj_msgSend(tabViewItemLogs, "setLabel:", CPBundleLocalizedString("Logs", "Logs"));
    objj_msgSend(tabViewItemLogs, "setView:", self.viewLogs);
    objj_msgSend(self.tabViewInfos, "addTabViewItem:", tabViewItemLogs);
    self._datasourcePartitions = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self.tablePartitions, "setDataSource:", self._datasourcePartitions);
    objj_msgSend(self.tablePartitions, "setBackgroundColor:", TNArchipelDefaultColorsTableView);
    objj_msgSend(self._datasourcePartitions, "setTable:", self.tablePartitions);
    objj_msgSend(objj_msgSend(self.tablePartitions, "tableColumnWithIdentifier:", "self"), "setDataView:", objj_msgSend(self.partitionDataViewPrototype, "duplicate"));
    self._datasourceLogs = objj_msgSend(objj_msgSend(TNTableViewDataSource, "alloc"), "init");
    objj_msgSend(self.tableLogs, "setDelegate:", self);
    objj_msgSend(self.tableLogs, "setBackgroundColor:", TNArchipelDefaultColorsTableView);
    objj_msgSend(self.tableLogs, "setDataSource:", self._datasourceLogs);
    objj_msgSend(self._datasourceLogs, "setTable:", self.tableLogs);
    objj_msgSend(self._datasourceLogs, "setSearchableKeyPaths:", ["level", "date", "message"]);
    objj_msgSend(self.filterLogField, "setTarget:", self._datasourceLogs);
    objj_msgSend(self.filterLogField, "setAction:", sel_getUid("filterObjects:"));
    objj_msgSend(objj_msgSend(self.tableLogs, "tableColumnWithIdentifier:", "self"), "setDataView:", objj_msgSend(self.logDataViewPrototype, "duplicate"));
    self._statsHistoryWorker = objj_msgSend(objj_msgSend(TNWorker, "alloc"), "initWithURL:", objj_msgSend(CPURL, "URLWithString:", objj_msgSend(bundle, "pathForResource:", "statsHistoryWorker.js")));
    self._statsWorker = objj_msgSend(objj_msgSend(TNWorker, "alloc"), "initWithURL:", objj_msgSend(CPURL, "URLWithString:", objj_msgSend(bundle, "pathForResource:", "statsWorker.js")));
}
,["void"]), new objj_method(sel_getUid("willShow"), function $TNHypervisorHealthController__willShow(self, _cmd)
{
    if (!objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNHypervisorHealthController").super_class }, "willShow"))
        return NO;
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults"),
        key = TNArchipelHealthRefreshBaseKey + objj_msgSend(self._entity, "JID"),
        shouldBeOn = (objj_msgSend(defaults, "boolForKey:", key) === nil) ? YES : objj_msgSend(defaults, "boolForKey:", key);
    objj_msgSend(objj_msgSend(CPNotificationCenter, "defaultCenter"), "addObserver:selector:name:object:", self, sel_getUid("_didUpdatePresence:"), TNStropheContactPresenceUpdatedNotification, self._entity);
    self._memoryDatasource = objj_msgSend(objj_msgSend(TNDatasourceChartView, "alloc"), "initWithNumberOfSets:", 2);
    self._cpuDatasource = objj_msgSend(objj_msgSend(TNDatasourceChartView, "alloc"), "initWithNumberOfSets:", 1);
    self._loadDatasource = objj_msgSend(objj_msgSend(TNDatasourceChartView, "alloc"), "initWithNumberOfSets:", 3);
    self._networkDatasource = nil;
    objj_msgSend(self.chartViewMemory, "setDataSource:", self._memoryDatasource);
    objj_msgSend(self.chartViewCPU, "setDataSource:", self._cpuDatasource);
    objj_msgSend(self.chartViewLoad, "setDataSource:", self._loadDatasource);
    objj_msgSend(self.tablePartitions, "setDataSource:", self._datasourcePartitions);
    objj_msgSend(self.tableLogs, "setDataSource:", self._datasourceLogs);
    objj_msgSend(self._statsWorker, "setDelegate:", self);
    objj_msgSend(self._statsHistoryWorker, "setDelegate:", self);
    objj_msgSend(self, "getHypervisorHealthHistory");
    return YES;
}
,["BOOL"]), new objj_method(sel_getUid("willHide"), function $TNHypervisorHealthController__willHide(self, _cmd)
{
    if (self._timerStats)
    {
        objj_msgSend(self._timerStats, "invalidate");
        CPLog.debug("timer for stats invalidated");
        self._timerStats = nil;
    }
    if (self._cpuDatasource)
        objj_msgSend(self._cpuDatasource, "removeAllObjects");
    if (self._memoryDatasource)
        objj_msgSend(self._memoryDatasource, "removeAllObjects");
    if (self._loadDatasource)
        objj_msgSend(self._loadDatasource, "removeAllObjects");
    if (self._networkDatasource)
        objj_msgSend(self._networkDatasource, "removeAllObjects");
    if (self._datasourcePartitions)
        objj_msgSend(self._datasourcePartitions, "removeAllObjects");
    if (self._datasourceLogs)
        objj_msgSend(self._datasourceLogs, "removeAllObjects");
    objj_msgSend(self._statsWorker, "setDelegate:", nil);
    objj_msgSend(self._statsHistoryWorker, "setDelegate:", nil);
    objj_msgSendSuper({ receiver:self, super_class:objj_getClass("TNHypervisorHealthController").super_class }, "willHide");
}
,["void"]), new objj_method(sel_getUid("savePreferences"), function $TNHypervisorHealthController__savePreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(defaults, "setInteger:forKey:", objj_msgSend(self.fieldPreferencesAutoRefresh, "intValue"), "TNArchipelHealthRefreshStatsInterval");
    objj_msgSend(defaults, "setInteger:forKey:", objj_msgSend(self.fieldPreferencesMaxItems, "intValue"), "TNArchipelHealthStatsHistoryCollectionSize");
    objj_msgSend(defaults, "setInteger:forKey:", objj_msgSend(self.fieldPreferencesMaxLogEntries, "intValue"), "TNArchipelHealthMaxLogEntry");
    objj_msgSend(defaults, "setBool:forKey:", objj_msgSend(self.switchPreferencesAutoRefresh, "isOn"), "TNArchipelHealthAutoRefreshStats");
    objj_msgSend(self, "handleAutoRefresh");
}
,["void"]), new objj_method(sel_getUid("loadPreferences"), function $TNHypervisorHealthController__loadPreferences(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(self.fieldPreferencesAutoRefresh, "setIntValue:", objj_msgSend(defaults, "integerForKey:", "TNArchipelHealthRefreshStatsInterval"));
    objj_msgSend(self.fieldPreferencesMaxItems, "setIntValue:", objj_msgSend(defaults, "integerForKey:", "TNArchipelHealthStatsHistoryCollectionSize"));
    objj_msgSend(self.fieldPreferencesMaxLogEntries, "setIntValue:", objj_msgSend(defaults, "integerForKey:", "TNArchipelHealthMaxLogEntry"));
    objj_msgSend(self.switchPreferencesAutoRefresh, "setOn:animated:sendAction:", objj_msgSend(defaults, "boolForKey:", "TNArchipelHealthAutoRefreshStats"), YES, NO);
}
,["void"]), new objj_method(sel_getUid("_didUpdatePresence:"), function $TNHypervisorHealthController___didUpdatePresence_(self, _cmd, aNotification)
{
    if (objj_msgSend(self._entity, "XMPPShow") === TNStropheContactStatusOffline)
    {
        if (self._timerStats)
        {
            objj_msgSend(self._timerStats, "invalidate");
            CPLog.debug("timer for stats invalidated");
            self._timerStats = nil;
        }
    }
    else
    {
        objj_msgSend(self, "handleAutoRefresh");
    }
}
,["void","CPNotification"]), new objj_method(sel_getUid("_parseStatsHistoryWorkerData:"), function $TNHypervisorHealthController___parseStatsHistoryWorkerData_(self, _cmd, someData)
{
    objj_msgSend(self._memoryDatasource, "setData:inSet:", someData.memoryUsed, 0);
    objj_msgSend(self._memoryDatasource, "setData:inSet:", someData.memoryShared, 1);
    objj_msgSend(self._loadDatasource, "setData:inSet:", someData.loadOne, 0);
    objj_msgSend(self._loadDatasource, "setData:inSet:", someData.loadFive, 1);
    objj_msgSend(self._loadDatasource, "setData:inSet:", someData.loadFifteen, 2);
    objj_msgSend(self._cpuDatasource, "setData:inSet:", someData.cpuFree, 0);
    var nnic = 0,
        nic;
    for (nic in someData.networks)
        nnic++;
    if (!self._networkDatasource)
    {
        self._networkDatasource = objj_msgSend(objj_msgSend(TNDatasourceChartView, "alloc"), "initWithNumberOfSets:", (nnic + 1));
        objj_msgSend(self.chartViewNetwork, "setDataSource:", self._networkDatasource);
    }
    nnic = 0;
    for (nic in someData.networks)
    {
        objj_msgSend(self._networkDatasource, "setData:inSet:", someData.networks[nic], nnic);
        nnic++;
    }
    var maxMem = Math.round(someData.memoryTotal / 1024 / 1024);
    objj_msgSend(self.fieldTotalMemory, "setStringValue:", maxMem + CPBundleLocalizedString("GB", "GB"));
    objj_msgSend(self.fieldHalfMemory, "setStringValue:", Math.round((maxMem / 2) * 10) / 10 + CPBundleLocalizedString("GB", "GB"));
    objj_msgSend(self.chartViewMemory, "setFixedMaxValue:", someData.memoryTotal);
}
,["void","id"]), new objj_method(sel_getUid("_parseStatsWorkerData:"), function $TNHypervisorHealthController___parseStatsWorkerData_(self, _cmd, someData)
{
    objj_msgSend(self._memoryDatasource, "pushData:inSet:", someData.memory.used, 0);
    objj_msgSend(self._memoryDatasource, "pushData:inSet:", someData.memory.shared, 1);
    objj_msgSend(self._loadDatasource, "pushData:inSet:", someData.load.one, 0);
    objj_msgSend(self._loadDatasource, "pushData:inSet:", someData.load.five, 1);
    objj_msgSend(self._loadDatasource, "pushData:inSet:", someData.load.fifteen, 2);
    objj_msgSend(self._cpuDatasource, "pushData:inSet:", someData.cpu.idle, 0);
    var nnic = 0,
        nic;
    for (nic in someData.networks)
    {
        objj_msgSend(self._networkDatasource, "pushData:inSet:", someData.networks[nic][0], nnic);
        nnic++;
    }
    var partitions = objj_msgSend(CPArray, "array"),
        totalCapacity = 0;
    for (var i = 0; i < someData.disks.length; i++)
    {
        var parts = someData.disks[i].partitions;
        for (var j = 0; j < parts.length; j++)
        {
            var part = objj_msgSend(objj_msgSend(TNPartitionObject, "alloc"), "init"),
                infos = parts[j];
            objj_msgSend(part, "setCapacity:", infos.capacity);
            objj_msgSend(part, "setMount:", infos.mount);
            objj_msgSend(part, "setUsed:", infos.used);
            objj_msgSend(part, "setAvailable:", infos.available);
            objj_msgSend(partitions, "addObject:", part);
        }
    }
    objj_msgSend(self._datasourcePartitions, "removeAllObjects");
    objj_msgSend(self._datasourcePartitions, "setContent:", partitions);
    var maxMem = Math.round(someData.memory.total / 1024 / 1024),
        freeMem = Math.round(someData.memory.free / 1024),
        swappedMed = Math.round(someData.memory.swapped / 1024);
    objj_msgSend(self.healthMemUsage, "setStringValue:", freeMem + CPBundleLocalizedString(" MB", " MB"));
    objj_msgSend(self.healthMemSwapped, "setStringValue:", swappedMed + CPBundleLocalizedString(" MB", " MB"));
    objj_msgSend(self.healthCPUUsage, "setStringValue:", Math.round(someData.cpu.idle) + "%");
    objj_msgSend(self.fieldTotalMemory, "setStringValue:", maxMem + CPBundleLocalizedString("GB", "GB"));
    objj_msgSend(self.fieldHalfMemory, "setStringValue:", Math.round((maxMem / 2) * 10) / 10 + CPBundleLocalizedString("GB", "GB"));
    objj_msgSend(self.chartViewMemory, "setFixedMaxValue:", someData.memory.total);
    objj_msgSend(self.healthDiskUsage, "setStringValue:", totalCapacity);
    objj_msgSend(self.healthLoad, "setStringValue:", someData.load.fifteen);
    objj_msgSend(self.healthUptime, "setStringValue:", someData.uptime.up);
    objj_msgSend(self.healthInfo, "setStringValue:", someData.uname.os + " " + someData.uname.kname + " " + someData.uname.machine);
    objj_msgSend(self.healthLibvirtVersion, "setStringValue:", objj_msgSend(CPString, "stringWithFormat:", "%s.%s.%s", someData.libvirt.major, someData.libvirt.minor, someData.libvirt.release));
    objj_msgSend(self.healthLibvirtDriverVersion, "setStringValue:", objj_msgSend(CPString, "stringWithFormat:", "%s.%s.%s", someData.driver.major, someData.driver.minor, someData.driver.release));
    objj_msgSend(self.imageVMX, "setImage:", someData.info.vmx == "True" ? TNHypervisorHealthControllerVMXImageEnabled : TNHypervisorHealthControllerVMXImageDisabled);
}
,["void","id"]), new objj_method(sel_getUid("handleAutoRefresh"), function $TNHypervisorHealthController__handleAutoRefresh(self, _cmd)
{
    var defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    if (!objj_msgSend(defaults, "boolForKey:", "TNArchipelHealthAutoRefreshStats"))
    {
        if (self._timerStats)
        {
            objj_msgSend(self._timerStats, "invalidate");
            CPLog.debug("timer for stats invalidated");
            self._timerStats = nil;
        }
    }
    else
    {
        var interval = MAX(objj_msgSend(defaults, "integerForKey:", "TNArchipelHealthRefreshStatsInterval"), 5.0);
        if (!self._timerStats)
        {
            self._timerStats = objj_msgSend(CPTimer, "scheduledTimerWithTimeInterval:target:selector:userInfo:repeats:", interval, self, sel_getUid("getHypervisorHealth:"), nil, YES);
            CPLog.debug("timer for stats started from switch action");
        }
    }
}
,["void"]), new objj_method(sel_getUid("getHypervisorHealth:"), function $TNHypervisorHealthController__getHypervisorHealth_(self, _cmd, aTimer)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorHealth});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {"xmlns": TNArchipelTypeHypervisorHealth, "action": TNArchipelTypeHypervisorHealthInfo});
    objj_msgSend(self.imageCPULoading, "setHidden:", NO);
    objj_msgSend(self.imageMemoryLoading, "setHidden:", NO);
    objj_msgSend(self.imageLoadLoading, "setHidden:", NO);
    objj_msgSend(self.imageDiskLoading, "setHidden:", NO);
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didReceiveHypervisorHealth:"));
}
,["void","CPTimer"]), new objj_method(sel_getUid("_didReceiveHypervisorHealth:"), function $TNHypervisorHealthController___didReceiveHypervisorHealth_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
        objj_msgSend(self._statsWorker, "postMessage:", objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "query"), "stringValue"));
    else if (objj_msgSend(aStanza, "type") == "error")
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("getHypervisorHealthHistory"), function $TNHypervisorHealthController__getHypervisorHealthHistory(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorHealth});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "action": TNArchipelTypeHypervisorHealthHistory,
        "limit": objj_msgSend(defaults, "integerForKey:", "TNArchipelHealthStatsHistoryCollectionSize")});
    objj_msgSend(self.imageCPULoading, "setHidden:", NO);
    objj_msgSend(self.imageMemoryLoading, "setHidden:", NO);
    objj_msgSend(self.imageLoadLoading, "setHidden:", NO);
    objj_msgSend(self.imageDiskLoading, "setHidden:", NO);
    objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusWaiting);
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didReceiveHypervisorHealthHistory:"));
}
,["void"]), new objj_method(sel_getUid("_didReceiveHypervisorHealthHistory:"), function $TNHypervisorHealthController___didReceiveHypervisorHealthHistory_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        objj_msgSend(self._statsHistoryWorker, "postMessage:", objj_msgSend(objj_msgSend(aStanza, "firstChildWithName:", "query"), "stringValue"));
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusReady);
    }
    else if (objj_msgSend(aStanza, "type") == "error")
    {
        objj_msgSend(self, "setModuleStatus:", TNArchipelModuleStatusError);
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    objj_msgSend(self, "getHypervisorHealth:", nil);
    objj_msgSend(self, "handleAutoRefresh");
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("getHypervisorLog"), function $TNHypervisorHealthController__getHypervisorLog(self, _cmd)
{
    var stanza = objj_msgSend(TNStropheStanza, "iqWithType:", "get"),
        defaults = objj_msgSend(CPUserDefaults, "standardUserDefaults");
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "query", {"xmlns": TNArchipelTypeHypervisorHealth});
    objj_msgSend(stanza, "addChildWithName:andAttributes:", "archipel", {
        "xmlns": TNArchipelTypeHypervisorHealth,
        "action": TNArchipelTypeHypervisorHealthLog,
        "limit": MAX(objj_msgSend(defaults, "integerForKey:", "TNArchipelHealthMaxLogEntry"), 10)});
    objj_msgSend(self, "sendStanza:andRegisterSelector:", stanza, sel_getUid("_didReceiveHypervisorLog:"));
}
,["void"]), new objj_method(sel_getUid("_didReceiveHypervisorLog:"), function $TNHypervisorHealthController___didReceiveHypervisorLog_(self, _cmd, aStanza)
{
    if (objj_msgSend(aStanza, "type") == "result")
    {
        var logNodes = objj_msgSend(aStanza, "childrenWithName:", "log");
        logNodes.reverse();
        objj_msgSend(self._datasourceLogs, "removeAllObjects");
        for (var i = 0; i < objj_msgSend(logNodes, "count"); i++)
        {
            var currentLog = objj_msgSend(logNodes, "objectAtIndex:", i),
                lvl = objj_msgSend(currentLog, "valueForAttribute:", "level"),
                date = objj_msgSend(currentLog, "valueForAttribute:", "date"),
                file = objj_msgSend(currentLog, "valueForAttribute:", "file"),
                method = objj_msgSend(currentLog, "valueForAttribute:", "method"),
                message = objj_msgSend(currentLog, "text"),
                logEntry = objj_msgSend(TNLogEntry, "logEntryWithLevel:date:file:method:message:", lvl, date, file, method, message);
            objj_msgSend(self._datasourceLogs, "addObject:", logEntry);
        }
        objj_msgSend(self.tableLogs, "reloadData");
        CPLog.debug("logs recovered");
    }
    else if (objj_msgSend(aStanza, "type") == "error")
    {
        objj_msgSend(self, "handleIqErrorFromStanza:", aStanza);
    }
    return NO;
}
,["BOOL","TNStropheStanza"]), new objj_method(sel_getUid("tableView:heightOfRow:"), function $TNHypervisorHealthController__tableView_heightOfRow_(self, _cmd, tableView, row)
{
    var logEntry = objj_msgSend(self._datasourceLogs, "objectAtIndex:", row),
        theWidth = objj_msgSend(tableView, "frameSize").width - 34;
    return objj_msgSend(objj_msgSend(logEntry, "message"), "sizeWithFont:inWidth:", objj_msgSend(CPFont, "systemFontFace"), theWidth).height + 45;
}
,["float","CPTableView","int"]), new objj_method(sel_getUid("tabView:didSelectTabViewItem:"), function $TNHypervisorHealthController__tabView_didSelectTabViewItem_(self, _cmd, aTabView, anItem)
{
    if (objj_msgSend(anItem, "identifier") == "logs")
    {
        objj_msgSend(self, "getHypervisorLog");
        objj_msgSend(self.tableLogs, "reloadData");
    }
    if (objj_msgSend(anItem, "identifier") == "charts" && self._needReloadDataForCharts)
    {
        objj_msgSend(self.chartViewMemory, "reloadData");
        objj_msgSend(self.chartViewCPU, "reloadData");
        objj_msgSend(self.chartViewLoad, "reloadData");
        objj_msgSend(self.chartViewNetwork, "reloadData");
        objj_msgSend(self.tablePartitions, "reloadData");
        self._needReloadDataForCharts = NO;
    }
}
,["void","CPTabView","CPTabViewItem"]), new objj_method(sel_getUid("worker:didReceiveData:"), function $TNHypervisorHealthController__worker_didReceiveData_(self, _cmd, aWorker, someData)
{
    if (!objj_msgSend(self, "isActive"))
        return;
    if (aWorker === self._statsHistoryWorker)
        objj_msgSend(self, "_parseStatsHistoryWorkerData:", someData);
    else if (aWorker === self._statsWorker)
        objj_msgSend(self, "_parseStatsWorkerData:", someData);
    if (objj_msgSend(objj_msgSend(self.tabViewInfos, "selectedTabViewItem"), "identifier") == "charts")
    {
        objj_msgSend(self.chartViewMemory, "reloadData");
        objj_msgSend(self.chartViewCPU, "reloadData");
        objj_msgSend(self.chartViewLoad, "reloadData");
        objj_msgSend(self.chartViewNetwork, "reloadData");
        objj_msgSend(self.tablePartitions, "reloadData");
        self._needReloadDataForCharts = NO;
    }
    else
        self._needReloadDataForCharts = YES;
    objj_msgSend(self.imageCPULoading, "setHidden:", YES);
    objj_msgSend(self.imageMemoryLoading, "setHidden:", YES);
    objj_msgSend(self.imageLoadLoading, "setHidden:", YES);
    objj_msgSend(self.imageDiskLoading, "setHidden:", YES);
}
,["void","TNWorker","id"])]);
}
CPBundleLocalizedString = function(key, comment)
{
    return CPLocalizedStringFromTableInBundle(key, nil, objj_msgSend(CPBundle, "bundleForClass:", TNHypervisorHealthController), comment);
}p;18;TNLogEntryObject.jt;3626;@STATIC;1.0;I;23;Foundation/Foundation.jt;3579;objj_executeFile("Foundation/Foundation.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNLogEntry"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_date"), new objj_ivar("_file"), new objj_ivar("_level"), new objj_ivar("_message"), new objj_ivar("_method")]);
       
       

       
       

objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("date"), function $TNLogEntry__date(self, _cmd)
{
return self._date;
}
,["CPString"]), new objj_method(sel_getUid("setDate:"), function $TNLogEntry__setDate_(self, _cmd, newValue)
{
self._date = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("file"), function $TNLogEntry__file(self, _cmd)
{
return self._file;
}
,["CPString"]), new objj_method(sel_getUid("setFile:"), function $TNLogEntry__setFile_(self, _cmd, newValue)
{
self._file = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("_level"), function $TNLogEntry___level(self, _cmd)
{
return self._level;
}
,["CPString"]), new objj_method(sel_getUid("setLevel:"), function $TNLogEntry__setLevel_(self, _cmd, newValue)
{
self._level = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("_message"), function $TNLogEntry___message(self, _cmd)
{
return self._message;
}
,["CPString"]), new objj_method(sel_getUid("setMessage:"), function $TNLogEntry__setMessage_(self, _cmd, newValue)
{
self._message = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("method"), function $TNLogEntry__method(self, _cmd)
{
return self._method;
}
,["CPString"]), new objj_method(sel_getUid("setMethod:"), function $TNLogEntry__setMethod_(self, _cmd, newValue)
{
self._method = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("stripTerminalColors:"), function $TNLogEntry__stripTerminalColors_(self, _cmd, aString)
{
    return aString.replace(new RegExp('\\[[0-9]+m', "g"), "");
}
,["CPString","CPString"]), new objj_method(sel_getUid("level"), function $TNLogEntry__level(self, _cmd)
{
    return objj_msgSend(self, "stripTerminalColors:", self._level).replace(/ /g, "");
}
,["CPString"]), new objj_method(sel_getUid("message"), function $TNLogEntry__message(self, _cmd)
{
    self._message = self._message.replace("DEBUG", "");
    self._message = self._message.replace("INFO", "");
    self._message = self._message.replace("WARNING", "");
    self._message = self._message.replace("ERROR", "");
    self._message = self._message.replace("CRITICAL", "");
    self._message = self._message.replace(new RegExp('[0-9]+-[0-9]+-[0-9]+ [0-9]+:[0-9]+:[0-9]+', 'g'), '');
    self._message = self._message.replace('::::', '');
    self._message = self._message.replace('::', ' ');
    self._message = self._message.replace(/(^\s*)|(\s*$)/gi,"");
    self._message = self._message.replace(/[ ]{2,}/gi,"");
    self._message = self._message.replace(/\n /,"\n");
    return objj_msgSend(self, "stripTerminalColors:", self._message);
}
,["CPString"])]);
class_addMethods(meta_class, [new objj_method(sel_getUid("logEntryWithLevel:date:file:method:message:"), function $TNLogEntry__logEntryWithLevel_date_file_method_message_(self, _cmd, aLevel, aDate, aFile, aMethod, aMessage)
{
    var log = objj_msgSend(objj_msgSend(TNLogEntry, "alloc"), "init");
    objj_msgSend(log, "setLevel:", aLevel);
    objj_msgSend(log, "setDate:", aDate);
    objj_msgSend(log, "setFile:", aFile);
    objj_msgSend(log, "setMethod:", aMethod);
    objj_msgSend(log, "setMessage:", aMessage);
    return log;
}
,["TNLogEntry","CPString","CPString","CPString","CPString","CPString"])]);
}p;19;TNPartitionObject.jt;1540;@STATIC;1.0;I;23;Foundation/Foundation.jt;1493;objj_executeFile("Foundation/Foundation.j", NO);
{var the_class = objj_allocateClassPair(CPObject, "TNPartitionObject"),
meta_class = the_class.isa;class_addIvars(the_class, [new objj_ivar("_capacity"), new objj_ivar("_mount"), new objj_ivar("_used"), new objj_ivar("_available")]);objj_registerClassPair(the_class);
class_addMethods(the_class, [new objj_method(sel_getUid("capacity"), function $TNPartitionObject__capacity(self, _cmd)
{
return self._capacity;
}
,["CPString"]), new objj_method(sel_getUid("setCapacity:"), function $TNPartitionObject__setCapacity_(self, _cmd, newValue)
{
self._capacity = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("mount"), function $TNPartitionObject__mount(self, _cmd)
{
return self._mount;
}
,["CPString"]), new objj_method(sel_getUid("setMount:"), function $TNPartitionObject__setMount_(self, _cmd, newValue)
{
self._mount = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("used"), function $TNPartitionObject__used(self, _cmd)
{
return self._used;
}
,["CPString"]), new objj_method(sel_getUid("setUsed:"), function $TNPartitionObject__setUsed_(self, _cmd, newValue)
{
self._used = newValue;
}
,["void","CPString"]), new objj_method(sel_getUid("available"), function $TNPartitionObject__available(self, _cmd)
{
return self._available;
}
,["CPString"]), new objj_method(sel_getUid("setAvailable:"), function $TNPartitionObject__setAvailable_(self, _cmd, newValue)
{
self._available = newValue;
}
,["void","CPString"])]);
}e;