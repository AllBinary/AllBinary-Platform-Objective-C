#ifndef ORG_ALLBINARY_GAME_LAYER_COLLIDABLECOMPOSITELAYER_H
#define ORG_ALLBINARY_GAME_LAYER_COLLIDABLECOMPOSITELAYER_H
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
// package org.allbinary.game.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CollidableCompositeLayer;
@class ArtificialIntelligence;
@class ArtificialIntelligenceInterface;
@class CollidableBaseBehavior;
@class CollidableBaseBehaviorFactory;
@class CollidableInterfaceCompositeInterface;
@class CollidableNeverCollideBehaviorFactory;
@class Rectangle;
@class RectangleFactory;
@class ForcedLogUtil;
@class StringMaker;
@class StringUtil;
@class CommonSeps;
@class ViewPositionBase;
@class NullUtil;
@class AllBinaryGameLayer;
#if __has_include("org/allbinary/game/collision/CollidableBaseBehavior.h")
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"
#endif
#include "org/allbinary/game/collision/CollidableInterfaceCompositeInterface.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"

@interface CollidableCompositeLayer : AllBinaryGameLayer <CollidableInterfaceCompositeInterface> {
@public
    CollidableBaseBehavior* collidableInferface;
}
- (instancetype) init:(const char*)name :(Rectangle*)layerInfo :(ViewPositionBase*)viewPosition :(CollidableBaseBehaviorFactory*)collidableBaseBehaviorFactory;
- (void) initFields;
+ (CollidableCompositeLayer*) getNullInstance;
- (ArtificialIntelligenceInterface*) getArtificialIntelligenceInterface;
- (CollidableBaseBehavior*) getCollidableInferface;
- (void) setCollidableInferface:(CollidableBaseBehavior*)collidableInferface;
- (bool) implmentsCollidableInterface;
- (void) toStringAppend:(StringMaker*)stringBuffer;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CollidableCompositeLayer_staticInit(void);

#if __has_include("org/allbinary/ai/ArtificialIntelligenceInterface.h")
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#endif
#if __has_include("org/allbinary/game/collision/CollidableBaseBehavior.h")
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_COLLIDABLECOMPOSITELAYER_H
