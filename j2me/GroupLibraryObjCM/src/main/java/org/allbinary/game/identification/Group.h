#ifndef ORG_ALLBINARY_GAME_IDENTIFICATION_GROUP_H
#define ORG_ALLBINARY_GAME_IDENTIFICATION_GROUP_H
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
// package org.allbinary.game.identification

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class Group;
@class StringMaker;
@class StringUtil;
@class GroupInterface;
@class GroupCommonFactory;
#include "org/allbinary/game/identification/GroupInterface.h"

@interface Group : ABObject <GroupInterface> {
@public
    const char* name;
    int16_t teamId;
    const char* string;
}
- (instancetype) init:(const char*)teamName :(int16_t)teamId;
- (void) initFields;
- (const char*) getGroupName;
- (void) setName:(const char*)name;
- (int16_t) getGroupId;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Group_staticInit(void);


#endif // ORG_ALLBINARY_GAME_IDENTIFICATION_GROUP_H
