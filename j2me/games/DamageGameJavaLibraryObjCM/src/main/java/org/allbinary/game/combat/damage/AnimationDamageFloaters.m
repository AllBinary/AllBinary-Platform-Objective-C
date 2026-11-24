// Generated Code Do Not Modify
#include "org/allbinary/game/combat/damage/AnimationDamageFloaters.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/view/ViewPositionBase.h"
#include "org/allbinary/game/combat/damage/DamageFloaters.h"
#if __has_include("org/allbinary/animation/IndexedAnimation.h")
#include "org/allbinary/animation/IndexedAnimation.h"
#endif
#if __has_include("org/allbinary/animation/IndexedAnimation.h")
#include "org/allbinary/animation/IndexedAnimation.h"
#endif
#if __has_include("org/allbinary/animation/IndexedAnimation.h")
#include "org/allbinary/animation/IndexedAnimation.h"
#endif



void AnimationDamageFloaters_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AnimationDamageFloaters

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    
    
    
    
}


- (instancetype) init:(AllBinaryLayer*)layerInterface :(IndexedAnimation**)animationInterfaceArray :(int32_t)dx :(int32_t)dy {
    self = [super init];
    [self initFields];
        self->animationInterfaceArray = animationInterfaceArray;
        for (int32_t index = java_array_length(self->animationInterfaceArray) - 1; index >= 0; index--) {
            [self->animationInterfaceArray[index] setFrame:[self->animationInterfaceArray[index] getSize] - 1];
        }
        self->layerInterface = layerInterface;
        self->circularIndexUtil = [CircularIndexUtil createInstance:java_array_length(self->animationInterfaceArray)];
        self->dx = dx;
        self->dy = dy;
    return self;
}


- (void) add:(int32_t)damage {
        int32_t i = [self->circularIndexUtil getIndex];
        [self->animationInterfaceArray[i] setFrame:0];
        [self->circularIndexUtil next];
}


- (void) paint:(Graphics*)graphics {
        JAVA_TRY {
            ViewPositionBase* viewPosition = [self->layerInterface getViewPosition];
            int32_t x = [viewPosition getX];
            int32_t y = [viewPosition getY];
            for (int32_t index = 0; index < java_array_length(self->animationInterfaceArray); index++) {
                IndexedAnimation* animationInterface = self->animationInterfaceArray[index];
                if ([animationInterface getFrame] < [animationInterface getAnimationSize] - 1) {
                    int32_t delta = [animationInterface getFrame] * 20;
                    [animationInterface paintXY:graphics :x + self->dx :y - delta + self->dy];
                    [animationInterface nextFrame];
                }
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            CanvasStrings* canvasStrings = [CanvasStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :canvasStrings->PAINT :e];
        } JAVA_END_TRY;
}

@end

