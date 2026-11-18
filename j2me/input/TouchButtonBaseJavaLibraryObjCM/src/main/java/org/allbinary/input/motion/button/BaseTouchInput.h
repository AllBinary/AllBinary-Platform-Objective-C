#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_BASETOUCHINPUT_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_BASETOUCHINPUT_H
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
@class BaseTouchInput;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListUtil;
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayListUtil.h")
#include "org/allbinary/util/BasicArrayListUtil.h"
#endif

@interface BaseTouchInput : ABObject {
@public
    CommonStrings* commonStrings;
    BasicArrayListUtil* basicArrayListUtil;
}
- (instancetype) init;
- (void) initFields;
- (BasicArrayList*) getList;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BaseTouchInput_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_BASETOUCHINPUT_H
