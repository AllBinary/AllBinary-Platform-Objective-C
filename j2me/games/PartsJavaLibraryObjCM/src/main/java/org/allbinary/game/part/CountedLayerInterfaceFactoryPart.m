// Generated Code Do Not Modify
#include "org/allbinary/game/part/CountedLayerInterfaceFactoryPart.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/math/PrimitiveLongUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/part/PartInterface.h"
#if __has_include("org/allbinary/animation/NullAnimationFactory.h")
#include "org/allbinary/animation/NullAnimationFactory.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h")
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h"
#endif


CountedLayerInterfaceFactoryPart* CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORY;

void CountedLayerInterfaceFactoryPart_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORY = ((CountedLayerInterfaceFactoryPart*) [((CountedLayerInterfaceFactoryPart*) [CountedLayerInterfaceFactoryPart alloc]) init:0 :(CountedPickedUpLayerInterfaceFactory_staticInit(), CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORY)]);
}

@implementation CountedLayerInterfaceFactoryPart

- (void) initFields {
    self->updateMyFontProcessor = ((UpdateMyFontProcessor*) [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self]);
    self->myFontProcessor = self->updateMyFontProcessor;
    self->animationInterface = [[NullAnimationFactory getFactoryInstance] getInstance:0];
    self->total = 0;
    self->totalString = [NullUtil getInstance]->NULL_CHAR_ARRAY;
    self->xOffset = 0;
    self->countedPickedUpLayerInterfaceFactory = (CountedPickedUpLayerInterfaceFactory_staticInit(), CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORY);
    
}


- (instancetype) init:(int32_t)total :(CountedPickedUpLayerInterfaceFactory*)countedPickedUpLayerInterfaceFactory {
    self = [super init];
    [self initFields];
        self->primitiveLongUtil = [PrimitiveLongUtil createPowerOfTen:1000];
        [self initMethod:total :countedPickedUpLayerInterfaceFactory];
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        [self setXOffset:[font charsWidth:self->totalString :0 :[self->primitiveLongUtil getCurrentTotalDigits]] + ([font getSize] >> 1)];
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) initMethod:(int32_t)total :(CountedPickedUpLayerInterfaceFactory*)countedPickedUpLayerInterfaceFactory {
        [self setCountedPickedUpLayerInterfaceFactory:countedPickedUpLayerInterfaceFactory];
        self->total = total;
}


// throws Exception
- (AllBinaryLayer*) getInstance:(ABHashtable*)hashtable :(int32_t)x :(int32_t)y :(int32_t)z {
        if (self->total > 0) {
            [self setTotal:self->total - 1];
            return [[self getCountedPickedUpLayerInterfaceFactory] getNextInstance:hashtable :x :y :z];
        } else {
            java_throw(java_exception_new("Exception", "No more left. Could use a listener to automatically remove"));
        }
}


- (int32_t) getTotal {
        return self->total;
}


- (void) setTotal:(int32_t)total {
        self->total = total;
        self->totalString = [self->primitiveLongUtil getCharArray:total];
        self->myFontProcessor = self->updateMyFontProcessor;
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
}


- (void) paintThreed:(Graphics*)graphics {
}


- (Animation*) getAnimationInterface {
        return self->animationInterface;
}


- (void) setAnimationInterface:(Animation*)animationInterface {
        self->animationInterface = animationInterface;
}


- (int32_t) getXOffset {
        return self->xOffset;
}


- (void) setXOffset:(int32_t)totalStringWidth {
        self->xOffset = totalStringWidth;
}


- (uint16_t*) getTotalString {
        return self->totalString;
}


- (CountedPickedUpLayerInterfaceFactory*) getCountedPickedUpLayerInterfaceFactory {
        return self->countedPickedUpLayerInterfaceFactory;
}


- (void) setCountedPickedUpLayerInterfaceFactory:(CountedPickedUpLayerInterfaceFactory*)countedPickedUpLayerInterfaceFactory {
        self->countedPickedUpLayerInterfaceFactory = countedPickedUpLayerInterfaceFactory;
}

@end

