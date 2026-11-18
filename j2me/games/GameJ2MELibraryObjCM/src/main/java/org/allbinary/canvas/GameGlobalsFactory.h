#ifndef ORG_ALLBINARY_CANVAS_GAMEGLOBALSFACTORY_H
#define ORG_ALLBINARY_CANVAS_GAMEGLOBALSFACTORY_H
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
// package org.allbinary.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameGlobalsFactory;
@class GPoint;
@class PointFactory;
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif
#include "java/lang/Integer.h"

@interface GameGlobalsFactory : ABObject {
@public
    bool newCanvas;
    int64_t newDisplaybleTime;
    GPoint* point;
}
- (instancetype) init;
- (void) initFields;
+ (GameGlobalsFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameGlobalsFactory_staticInit(void);


#endif // ORG_ALLBINARY_CANVAS_GAMEGLOBALSFACTORY_H
