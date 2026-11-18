// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/FullTouchButton.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/graphics/CellPosition.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/input/motion/button/TouchButton.h"
#include "org/allbinary/input/motion/button/TouchButtonInput.h"
#include "org/allbinary/input/motion/button/TouchButtonResource.h"
#if __has_include("org/allbinary/input/motion/button/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/input/motion/button/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/input/motion/button/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/input/motion/button/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/animation/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif
#if __has_include("org/allbinary/graphics/AnimationInterfaceFactoryInterface.h")
#include "org/allbinary/graphics/AnimationInterfaceFactoryInterface.h"
#endif



void FullTouchButton_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation FullTouchButton


// throws Exception
+ (FullTouchButton*) createButton:(TouchButtonInput*)touchButtonInput :(TouchButtonResource*)touchButtonResource :(Rectangle*)rawRectangle :(CellPosition*)cellPosition :(int32_t)xBorder :(int32_t)yBorder {
        return [((FullTouchButton*) [FullTouchButton alloc]) init:touchButtonInput :[[[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] get:touchButtonResource->RESOURCE] getInstance:0] :[[[FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance] get:touchButtonResource->HINT] getInstance:0] :rawRectangle :cellPosition :xBorder :yBorder];
}


- (instancetype) init:(TouchButtonInput*)touchButtonInput :(Animation*)animationInterface :(Animation*)hintAnimationInterface :(Rectangle*)rawRectangle :(CellPosition*)cellPosition :(int32_t)xBorder :(int32_t)yBorder {
        self = [super init:touchButtonInput :animationInterface :hintAnimationInterface :rawRectangle :cellPosition :xBorder :yBorder];
    return self;
}


- (void) updateRectangle {
        JAVA_TRY {
            PointFactory* pointFactory = [PointFactory getInstance];
            int32_t x = [self->rawRectangle getWidth] * [self->cellPositionP getColumn];
            int32_t y = [self->rawRectangle getHeight] * [self->cellPositionP getRow];
            self->rectangleP = [((Rectangle*) [Rectangle alloc]) init:[pointFactory createXY:x :y] :[self->rawRectangle getWidth] + (2 * self->xBorder) :[self->rawRectangle getHeight] + (2 * self->yBorder)];
            GPoint* point = [self->rectangleP getPoint];
            self->animationX = [point getX] + self->xBorder;
            self->animationY = [point getY] + self->yBorder;
            self->hintAnimationY = self->animationY - [self->rectangleP getHeight] >> 1;
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"updateRectangle" :e];
        } JAVA_END_TRY;
}

@end

