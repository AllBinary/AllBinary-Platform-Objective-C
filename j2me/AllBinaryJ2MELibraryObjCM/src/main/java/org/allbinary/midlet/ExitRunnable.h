#ifndef ORG_ALLBINARY_MIDLET_EXITRUNNABLE_H
#define ORG_ALLBINARY_MIDLET_EXITRUNNABLE_H
/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.midlet

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ExitRunnable;
@class NullCanvas;
@class Processor;
@class LogUtil;
@class CommonStrings;
@class AllBinaryMidlet;
#if __has_include("org/allbinary/canvas/Processor.h")
#include "org/allbinary/canvas/Processor.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#include "java/lang/Runnable.h"
#if __has_include("org/allbinary/midlet/AllBinaryMidlet.h")
#include "org/allbinary/midlet/AllBinaryMidlet.h"
#endif

@interface ExitRunnable : ABObject <Runnable> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    AllBinaryMidlet* midlet;
    Processor* processor;
    bool isProgress;
}
- (instancetype) init:(AllBinaryMidlet*)midlet :(Processor*)processor :(bool)isProgress;
- (void) initFields;
- (void) run;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ExitRunnable_staticInit(void);


#endif // ORG_ALLBINARY_MIDLET_EXITRUNNABLE_H
