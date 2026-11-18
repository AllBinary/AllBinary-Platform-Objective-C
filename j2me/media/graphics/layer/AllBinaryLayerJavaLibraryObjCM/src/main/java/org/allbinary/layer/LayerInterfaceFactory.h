#ifndef ORG_ALLBINARY_LAYER_LAYERINTERFACEFACTORY_H
#define ORG_ALLBINARY_LAYER_LAYERINTERFACEFACTORY_H
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
// package org.allbinary.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LayerInterfaceFactory;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class CommonStrings;
@class ABHashtable;
@class BasicArrayList;
@class BasicArrayListD;
@class BasicArrayListUtil;
@class Layer;
@class LayerInterfaceFactoryInterface;
@class AllBinaryLayer;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "java/lang/Integer.h"

@interface LayerInterfaceFactory : ABObject {
@public
    LogUtil* logUtil;
    BasicArrayList* list;
    const char* HASHTABLE_LABEL;
}
- (instancetype) init;
- (void) initFields;
+ (LayerInterfaceFactory*) getInstance;
- (void) init_;
- (AllBinaryLayer*) getNexInstance:(ABHashtable*)hashtable :(int32_t)x :(int32_t)y :(int32_t)z;
- (void) add:(LayerInterfaceFactoryInterface*)layerInterfaceFactoryInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LayerInterfaceFactory_staticInit(void);


#endif // ORG_ALLBINARY_LAYER_LAYERINTERFACEFACTORY_H
