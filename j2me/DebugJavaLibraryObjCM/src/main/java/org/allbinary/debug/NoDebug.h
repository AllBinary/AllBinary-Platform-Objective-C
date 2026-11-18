#ifndef ORG_ALLBINARY_DEBUG_NODEBUG_H
#define ORG_ALLBINARY_DEBUG_NODEBUG_H
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
// package org.allbinary.debug

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NoDebug;
@class DebugInterface;
#include "org/allbinary/debug/DebugInterface.h"

@interface NoDebug : ABObject <DebugInterface> {
@public
}
- (instancetype) init;
+ (DebugInterface*) getInstance;
- (void) start;
- (void) stop;
- (int64_t) getMaxTime;
- (int64_t) getStartTime;
- (bool) isRunning;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NoDebug_staticInit(void);


#endif // ORG_ALLBINARY_DEBUG_NODEBUG_H
