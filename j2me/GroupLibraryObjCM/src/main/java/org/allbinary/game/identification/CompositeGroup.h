#ifndef ORG_ALLBINARY_GAME_IDENTIFICATION_COMPOSITEGROUP_H
#define ORG_ALLBINARY_GAME_IDENTIFICATION_COMPOSITEGROUP_H
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
@class CompositeGroup;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class Group;
@class GroupCommonFactory;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/game/identification/Group.h")
#include "org/allbinary/game/identification/Group.h"
#endif

@interface CompositeGroup : ABObject {
@public
    LogUtil* logUtil;
    Group* groupInterface;
    BasicArrayList* list;
}
- (instancetype) init:(Group*)groupInterface;
- (void) initFields;
- (void) clear;
- (void) add:(Group*)groupInterface;
- (bool) isInGroup:(Group*)groupInterface;
- (Group*) getGroup;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CompositeGroup_staticInit(void);


#endif // ORG_ALLBINARY_GAME_IDENTIFICATION_COMPOSITEGROUP_H
