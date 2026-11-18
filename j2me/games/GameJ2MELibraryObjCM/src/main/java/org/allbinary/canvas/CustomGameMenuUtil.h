#ifndef ORG_ALLBINARY_CANVAS_CUSTOMGAMEMENUUTIL_H
#define ORG_ALLBINARY_CANVAS_CUSTOMGAMEMENUUTIL_H
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
@class CustomGameMenuUtil;
@class AppletUtil;
@class J2MEUtil;
@class GameCommandsFactory;
@class MyCanvas;

@interface CustomGameMenuUtil : ABObject {
@public
}
- (instancetype) init;
+ (void) add:(MyCanvas*)canvas;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CustomGameMenuUtil_staticInit(void);


#endif // ORG_ALLBINARY_CANVAS_CUSTOMGAMEMENUUTIL_H
