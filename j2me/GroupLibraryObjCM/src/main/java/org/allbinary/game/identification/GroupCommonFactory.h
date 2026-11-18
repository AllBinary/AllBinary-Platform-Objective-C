#ifndef ORG_ALLBINARY_GAME_IDENTIFICATION_GROUPCOMMONFACTORY_H
#define ORG_ALLBINARY_GAME_IDENTIFICATION_GROUPCOMMONFACTORY_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.identification

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GroupCommonFactory;
@class NullUtil;
@class SmallIntegerSingletonFactory;
#include "java/lang/Integer.h"

@interface GroupCommonFactory : ABObject {
@public
    int32_t ID;
    const char* GROUP_NAME_LABEL;
    const char* ID_LABEL;
    const char* ADDING_LABEL;
    const char* TO_LABEL;
}
- (instancetype) init;
- (void) initFields;
+ (GroupCommonFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GroupCommonFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_IDENTIFICATION_GROUPCOMMONFACTORY_H
