#ifndef ORG_ALLBINARY_LAYER_LAYERMANAGER_H
#define ORG_ALLBINARY_LAYER_LAYERMANAGER_H
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
@class LayerManager;
@class Graphics;
@class TsUtil;
@class LogUtil;
@class CommonStrings;
@class SynchObject;
@class BasicArrayList;
@class BasicArrayListD;
@class ABSystemWrapper;
@class LayerManagerLoggingBase;
@class AllBinaryLayer;
@class Layer;
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/thread/SynchObject.h")
#include "org/allbinary/thread/SynchObject.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/logic/ABSystemWrapper.h")
#include "org/allbinary/logic/ABSystemWrapper.h"
#endif
#if __has_include("org/allbinary/layer/LayerManagerLoggingBase.h")
#include "org/allbinary/layer/LayerManagerLoggingBase.h"
#endif

@interface LayerManager : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    ABSystemWrapper* systemWrapper;
    TsUtil* tsUtil;
    LayerManagerLoggingBase* layerManagerLogging;
    BasicArrayList* list;
    SynchObject* anyType;
}
- (instancetype) init:(LayerManagerLoggingBase*)layerManagerLogging;
- (void) initFields;
- (bool) contains:(AllBinaryLayer*)layerInterface;
- (void) update:(AllBinaryLayer*)layerInterface;
- (void) insert:(AllBinaryLayer*)layerInterface;
- (void) append:(AllBinaryLayer*)layerInterface;
- (void) appendAt:(AllBinaryLayer*)layerInterface :(int32_t)index;
- (void) remove:(AllBinaryLayer*)layerInterface;
- (Layer*) getLayerAt:(int32_t)index;
- (int32_t) getSize;
- (void) cleanup;
- (void) paint:(Graphics*)g :(int32_t)x :(int32_t)y;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LayerManager_staticInit(void);


#endif // ORG_ALLBINARY_LAYER_LAYERMANAGER_H
