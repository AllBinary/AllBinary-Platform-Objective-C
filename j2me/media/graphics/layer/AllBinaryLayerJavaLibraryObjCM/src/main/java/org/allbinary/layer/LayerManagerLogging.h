#ifndef ORG_ALLBINARY_LAYER_LAYERMANAGERLOGGING_H
#define ORG_ALLBINARY_LAYER_LAYERMANAGERLOGGING_H
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
// package org.allbinary.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LayerManagerLogging;
@class TsUtil;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class CommonSeps;
@class LayerManagerLoggingBase;
@class AllBinaryLayer;
@class LayerManager;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#include "java/lang/Integer.h"
#include "org/allbinary/layer/LayerManagerLoggingBase.h"

@interface LayerManagerLogging : LayerManagerLoggingBase {
@public
    LogUtil* logUtil;
    StringMaker* stringBuilder;
    const char* APPEND;
    const char* APPEND_;
    const char* _AT__;
    const char* ATTEMPT_REMOVE_;
    const char* REMOVE_;
    const char* REMOVE;
    const char* DID_NOT_REMOVE;
    const char* CLEAR;
}
- (instancetype) init;
- (void) initFields;
+ (LayerManagerLogging*) getInstance;
- (void) append:(AllBinaryLayer*)layerInterface;
- (void) appendAt:(AllBinaryLayer*)layerInterface :(int32_t)index;
- (void) remove:(AllBinaryLayer*)layerInterface;
- (void) removeResult:(LayerManager*)layerManager :(AllBinaryLayer*)layerInterface :(bool)result;
- (void) log:(LayerManager*)layerManager;
- (void) clear;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LayerManagerLogging_staticInit(void);


#endif // ORG_ALLBINARY_LAYER_LAYERMANAGERLOGGING_H
