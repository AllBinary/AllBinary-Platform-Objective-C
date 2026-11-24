// Generated Code Do Not Modify
#include "org/allbinary/game/layer/pickup/IconLayer.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/view/ViewPosition.h"
#if __has_include("org/allbinary/animation/NullAnimationFactory.h")
#include "org/allbinary/animation/NullAnimationFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/graphics/PointFactory.h")
#include "org/allbinary/graphics/PointFactory.h"
#endif


IconLayer* IconLayer_NULL_ICON_LAYER;

void IconLayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    IconLayer_NULL_ICON_LAYER = ((IconLayer*) [((IconLayer*) [IconLayer alloc]) init:[[NullAnimationFactory getFactoryInstance] getInstance:0] :0 :0]);
}

@implementation IconLayer

- (void) initFields {
    
}


- (instancetype) init:(Animation*)animationInterface :(int32_t)width :(int32_t)height {
        self = [super init:[StringUtil getInstance]->EMPTY_STRING :((Rectangle*) [((Rectangle*) [Rectangle alloc]) init:[PointFactory getInstance]->ZERO_ZERO :width :height]) :[ViewPosition getInstanceD]];
        [self initFields];
        self->animationInterface = animationInterface;
    return self;
}


- (void) paint:(Graphics*)graphics {
        [self->animationInterface paintXY:graphics :self->x :self->y];
}


- (void) paintThreed:(Graphics*)graphics {
        [self->animationInterface paintThreedXYZ:graphics :self->x :self->y :self->z];
}


- (Animation*) getAnimationInterface {
        return self->animationInterface;
}

@end

