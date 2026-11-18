#ifndef ORG_ALLBINARY_GAME_GD_RESOURCE_GDRESOURCES_H
#define ORG_ALLBINARY_GAME_GD_RESOURCE_GDRESOURCES_H
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
// package org.allbinary.game.gd.resource

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GDResources;

@interface GDResources : ABObject {
@public
    const char** resourceStringArray;
    int32_t currentLayoutRequiredTotal;
}
- (instancetype) init;
- (void) initFields;
+ (GDResources*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GDResources_staticInit(void);


#endif // ORG_ALLBINARY_GAME_GD_RESOURCE_GDRESOURCES_H
