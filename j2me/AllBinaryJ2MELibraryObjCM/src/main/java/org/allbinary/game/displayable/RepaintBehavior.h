#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_REPAINTBEHAVIOR_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_REPAINTBEHAVIOR_H
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
// package org.allbinary.game.displayable

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class RepaintBehavior;
@class Canvas;
@class Features;
@class DisplayInfoSingleton;
@class OpenGLFeatureFactory;
@class LogUtil;
@class CommonStrings;
@class NullRunnable;
@class RepaintRunnable;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
// #include "org/allbinary/string/CommonStrings.h"
// #include "org/allbinary/thread/NullRunnable.h"
#include "java/lang/Thread.h"

@interface RepaintBehavior : ABObject {
@public
    LogUtil* logUtil;
    const char* NAME;
}
- (instancetype) init;
- (void) initFields;
+ (RepaintBehavior*) getInstance;
- (void) repaint:(Canvas*)canvas;
- (void) onChangeRepaint:(Canvas*)canvas;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RepaintBehavior_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_REPAINTBEHAVIOR_H
