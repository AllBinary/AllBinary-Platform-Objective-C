#ifndef ORG_ALLBINARY_GRAPHICS_RENDERERSTATEFACTORY_H
#define ORG_ALLBINARY_GRAPHICS_RENDERERSTATEFACTORY_H
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
// package org.allbinary.graphics

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class RendererStateFactory;

@interface RendererStateFactory : ABObject {
@public
    bool loaded;
    bool surfaceChanged;
}
- (instancetype) init;
- (void) initFields;
+ (RendererStateFactory*) getInstance;
- (void) setLoaded:(bool)loaded;
- (bool) isLoaded;
- (void) setSurfaceChanged:(bool)initialized;
- (bool) isSurfaceChanged;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RendererStateFactory_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_RENDERERSTATEFACTORY_H
