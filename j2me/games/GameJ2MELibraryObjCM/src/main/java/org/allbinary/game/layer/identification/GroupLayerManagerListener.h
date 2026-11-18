#ifndef ORG_ALLBINARY_GAME_LAYER_IDENTIFICATION_GROUPLAYERMANAGERLISTENER_H
#define ORG_ALLBINARY_GAME_LAYER_IDENTIFICATION_GROUPLAYERMANAGERLISTENER_H
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
// package org.allbinary.game.layer.identification

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GroupLayerManagerListener;
@class Group;
@class GroupInterfaceCompositeInterface;
@class AllBinaryLayer;
@class LayerManagerEvent;
@class LayerManagerEventHandler;
@class LayerManagerEventListener;
@class ForcedLogUtil;
@class LogUtil;
@class StringMaker;
@class AllBinaryEventObject;
@class EventStrings;
@class CommonLabels;
@class CommonSeps;
@class BasicArrayList;
@class BasicArrayListD;
#include "org/allbinary/layer/event/LayerManagerEventListener.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface GroupLayerManagerListener : LayerManagerEventListener {
@public
    LogUtil* logUtil;
    BasicArrayList* list;
}
- (instancetype) init;
- (void) initFields;
+ (GroupLayerManagerListener*) getInstance;
- (void) clear;
- (int32_t) getGroupSizeFromInterface:(GroupInterfaceCompositeInterface*)groupInterfaceCompositeInterface;
- (int32_t) getGroupSize:(Group*)groupInterface;
- (BasicArrayList*) getList:(Group*)groupInterface;
- (BasicArrayList*) getListById:(int32_t)groupId;
- (int32_t) getGroupSizeById:(int32_t)groupId;
- (bool) areAllOtherGroupsEmpty:(Group*)groupInterface;
- (bool) isIdInList:(int32_t)id_ :(BasicArrayList*)excludeGroupList;
- (bool) areAllOtherGroupsLessThan:(BasicArrayList*)excludeGroupList :(int32_t)maxSize;
- (void) init_:(int32_t)total;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onCreateLayerManagerEvent:(LayerManagerEvent*)layerManagerEvent;
- (void) onDeleteLayerManagerEvent:(LayerManagerEvent*)layerManagerEvent;
- (void) log;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GroupLayerManagerListener_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_IDENTIFICATION_GROUPLAYERMANAGERLISTENER_H
