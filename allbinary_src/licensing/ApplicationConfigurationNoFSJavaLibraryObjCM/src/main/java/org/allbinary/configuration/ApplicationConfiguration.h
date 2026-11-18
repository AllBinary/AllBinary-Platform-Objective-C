#ifndef ORG_ALLBINARY_CONFIGURATION_APPLICATIONCONFIGURATION_H
#define ORG_ALLBINARY_CONFIGURATION_APPLICATIONCONFIGURATION_H
// Generated Code Do Not Modify
// package org.allbinary.configuration

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ApplicationConfiguration;
@class Feature;
@class Features;
@class MainFeatureFactory;
@class NullUtil;
@class LogUtil;
@class StringMaker;
@class CommonStrings;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface ApplicationConfiguration : ABObject {
@public
    LogUtil* logUtil;
    bool fullscreen;
    bool showTitleBar;
    bool progressBarView;
}
- (instancetype) init;
- (void) initFields;
+ (ApplicationConfiguration*) getInstance;
- (void) read;
- (void) write;
- (void) update:(Feature*)gameFeature;
- (void) setFullscreen:(bool)fullscreen;
- (bool) isFullscreen;
- (void) setShowTitleBar:(bool)showTitleBar;
- (bool) isShowTitleBar;
- (void) setProgressBarView:(bool)progressBarView;
- (bool) isProgressBarView;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ApplicationConfiguration_staticInit(void);


#endif // ORG_ALLBINARY_CONFIGURATION_APPLICATIONCONFIGURATION_H
