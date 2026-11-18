#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONFACTORY_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONFACTORY_H
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
// package org.allbinary.input.motion.button

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TouchButtonFactory;
@class BasicArrayList;
@class BasicArrayListUtil;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface TouchButtonFactory : ABObject {
@public
    BasicArrayList* LIST;
    BasicArrayList* list;
    BasicArrayList* savedList;
    bool saved;
}
- (instancetype) init;
- (void) initFields;
+ (TouchButtonFactory*) getInstance;
- (void) defaultList;
- (void) toggle:(bool)save :(BasicArrayList*)list;
- (void) setList:(BasicArrayList*)list;
- (BasicArrayList*) getList;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchButtonFactory_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONFACTORY_H
