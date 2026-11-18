#ifndef ORG_ALLBINARY_CANVAS_GAMESTATISTICSFACTORY_H
#define ORG_ALLBINARY_CANVAS_GAMESTATISTICSFACTORY_H
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
// package org.allbinary.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameStatisticsFactory;
@class StringMaker;
@class BaseGameStatistics;
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#include "org/allbinary/canvas/BaseGameStatistics.h"

//ActualPlatform
@interface GameStatisticsFactory : BaseGameStatistics {
@public
    StringMaker* stringBuffer;
}
- (instancetype) init;
- (void) initFields;
+ (GameStatisticsFactory*) getInstance;
- (void) add:(const char*)string;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameStatisticsFactory_staticInit(void);


#endif // ORG_ALLBINARY_CANVAS_GAMESTATISTICSFACTORY_H
