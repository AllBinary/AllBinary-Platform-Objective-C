#ifndef ORG_ALLBINARY_TIME_GAMETICKTIMEDELAYHELPER_H
#define ORG_ALLBINARY_TIME_GAMETICKTIMEDELAYHELPER_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.time

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameTickTimeDelayHelper;
#include "java/lang/System.h"
#include "java/lang/Long.h"

@interface GameTickTimeDelayHelper : ABObject {
@public
    int64_t timeDelta;
    int64_t startTime;
    int64_t lastStartTime;
}
- (instancetype) init:(int64_t)startTime;
- (void) initFields;
- (int64_t) setStartTime;
- (void) loop;
- (int64_t) getTimeFromStart;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameTickTimeDelayHelper_staticInit(void);


#endif // ORG_ALLBINARY_TIME_GAMETICKTIMEDELAYHELPER_H
