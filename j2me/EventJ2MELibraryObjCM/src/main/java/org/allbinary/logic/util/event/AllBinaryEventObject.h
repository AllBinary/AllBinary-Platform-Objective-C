#ifndef ORG_ALLBINARY_LOGIC_UTIL_EVENT_ALLBINARYEVENTOBJECT_H
#define ORG_ALLBINARY_LOGIC_UTIL_EVENT_ALLBINARYEVENTOBJECT_H
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
// package org.allbinary.logic.util.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AllBinaryEventObject;
@class JsType;
@class NullUtil;
@class JsMethod;
@class JsConstructor;
@class JsProperty;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
// #include "jsinterop/annotations/JsProperty.h"

@interface AllBinaryEventObject : ABObject {
@public
    id source;
}
- (instancetype) init:(id)anyType;
- (void) initFields;
- (id) getSource;
- (void) setSource:(id)source;
@end

extern AllBinaryEventObject* AllBinaryEventObject_NULL_EVENT;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinaryEventObject_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_UTIL_EVENT_ALLBINARYEVENTOBJECT_H
