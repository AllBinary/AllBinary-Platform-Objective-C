#ifndef ORG_ALLBINARY_GAME_IDENTIFICATION_GROUPFACTORY_H
#define ORG_ALLBINARY_GAME_IDENTIFICATION_GROUPFACTORY_H
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
@class GroupFactory;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class BasicArrayList;
@class BasicArrayListD;
@class Group;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/game/identification/Group.h")
#include "org/allbinary/game/identification/Group.h"
#endif

@interface GroupFactory : ABObject {
@public
    LogUtil* logUtil;
    Group** NULL_GROUP_ARRAY;
    BasicArrayList* list;
    int32_t index;
}
- (instancetype) init;
- (void) initFields;
+ (GroupFactory*) getInstance;
- (Group*) getNextGroup;
- (Group*) getNextGroupByName:(const char*)name;
- (void) init_:(int16_t)groups :(const char**)nameArray;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GroupFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_IDENTIFICATION_GROUPFACTORY_H
