#ifndef ORG_ALLBINARY_TIME_STUPIDTIMER_H
#define ORG_ALLBINARY_TIME_STUPIDTIMER_H
// Generated Code Do Not Modify
// package org.allbinary.time

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class StupidTimer;
@class NullUtil;
@class LogUtil;
@class PreLogUtil;
@class StringMaker;
@class StringUtil;
@class Visitor;
@class CommonStrings;
@class ThreadObjectUtil;
@class TimeDelayHelper;
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/thread/ThreadObjectUtil.h")
#include "org/allbinary/thread/ThreadObjectUtil.h"
#endif
#include "java/lang/Boolean.h"

@interface StupidTimer : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    NullUtil* nullUtil;
    ThreadObjectUtil* threadObjectUtil;
}
- (instancetype) init;
- (void) initFields;
- (bool) visitBool:(Visitor*)visitorInterface;
- (void) visit:(Visitor*)visitorInterface :(TimeDelayHelper*)timeDelayHelper;
- (void) stopWaiting;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void StupidTimer_staticInit(void);


#endif // ORG_ALLBINARY_TIME_STUPIDTIMER_H
