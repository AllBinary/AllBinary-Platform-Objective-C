// Generated Code Do Not Modify
#include "org/allbinary/game/layer/CollidableCompositeLayer.h"
#include "org/allbinary/ai/ArtificialIntelligence.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/game/collision/CollidableBaseBehavior.h"
#include "org/allbinary/game/collision/CollidableBaseBehaviorFactory.h"
#include "org/allbinary/game/collision/CollidableNeverCollideBehaviorFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/RectangleFactory.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/view/ViewPositionBase.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"


static id CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYER;

void CollidableCompositeLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYER = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation CollidableCompositeLayer

- (void) initFields {
    self->collidableInferface = [[CollidableNeverCollideBehaviorFactory getInstance] createBehavior];
}


+ (CollidableCompositeLayer*) getNullInstance {
        if ((CollidableCompositeLayer_staticInit(), CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYER) == [NullUtil getInstance]->NULL_OBJECT) {
            CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYER = [((CollidableCompositeLayer*) [CollidableCompositeLayer alloc]) init:[StringUtil getInstance]->EMPTY_STRING :(RectangleFactory_staticInit(), RectangleFactory_SINGLETON) :(ViewPositionBase_staticInit(), ViewPositionBase_NULL_VIEW_POSITION) :[CollidableNeverCollideBehaviorFactory getInstance]];
        }
        return ((CollidableCompositeLayer*) (CollidableCompositeLayer_staticInit(), CollidableCompositeLayer_NULL_COLLIDABLE_COMPOSITE_LAYER));
}


- (instancetype) init:(const char*)name :(Rectangle*)layerInfo :(ViewPositionBase*)viewPosition :(CollidableBaseBehaviorFactory*)collidableBaseBehaviorFactory {
        self = [super init:name :layerInfo :viewPosition];
        [self initFields];
        if (collidableBaseBehaviorFactory != [CollidableNeverCollideBehaviorFactory getInstance]) {
            [self setCollidableInferface:[collidableBaseBehaviorFactory createBehavior]];
        }
    return self;
}


- (ArtificialIntelligenceInterface*) getArtificialIntelligenceInterface {
        [ForcedLogUtil log:self->commonStrings->NOT_IMPLEMENTED :self];
        return [ArtificialIntelligence getInstance];
}


- (CollidableBaseBehavior*) getCollidableInferface {
        return self->collidableInferface;
}


- (void) setCollidableInferface:(CollidableBaseBehavior*)collidableInferface {
        self->collidableInferface = collidableInferface;
}


- (bool) implmentsCollidableInterface {
        return true;
}


- (void) toStringAppend:(StringMaker*)stringBuffer {
        CommonSeps* commonSeps = [CommonSeps getInstance];
        [super toStringAppend:stringBuffer];
        [stringBuffer append:commonSeps->NEW_LINE];
        [stringBuffer append:[[self getCollidableInferface] toString]];
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [self toStringAppend:stringBuffer];
        return [stringBuffer toString];
}

@end

