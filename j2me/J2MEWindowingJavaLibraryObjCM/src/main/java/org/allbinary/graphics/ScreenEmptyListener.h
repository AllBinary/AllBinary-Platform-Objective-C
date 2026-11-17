#ifndef ORG_ALLBINARY_GRAPHICS_SCREENEMPTYLISTENER_H
#define ORG_ALLBINARY_GRAPHICS_SCREENEMPTYLISTENER_H
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
// package org.allbinary.graphics

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ScreenEmptyListener;
@class ScreenListenerInterface;
#include "org/allbinary/graphics/ScreenListenerInterface.h"

@interface ScreenEmptyListener : ABObject <ScreenListenerInterface> {
@public
}
- (instancetype) init;
- (void) onFullScreen:(bool)isFullScreen;
- (void) onFullScreenDisplay;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ScreenEmptyListener_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_SCREENEMPTYLISTENER_H
