// Generated Code Do Not Modify
#include "org/allbinary/animation/caption/CaptionAnimationHelper.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/animation/text/TextAnimation.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/animation/caption/CaptionAnimationHelperBase.h"
#include "org/allbinary/animation/caption/CaptionAnimation.h"
#if __has_include("org/allbinary/animation/caption/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/caption/GameTickTimeDelayHelper.h"
#endif
#if __has_include("javax/microedition/lcdui/GameTickTimeDelayHelper.h")
#include "javax/microedition/lcdui/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/animation/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/animation/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/animation/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/animation/text/GameTickTimeDelayHelper.h")
#include "org/allbinary/animation/text/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/graphics/color/GameTickTimeDelayHelper.h")
#include "org/allbinary/graphics/color/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/logic/string/GameTickTimeDelayHelper.h")
#include "org/allbinary/logic/string/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif



void CaptionAnimationHelper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CaptionAnimationHelper

- (void) initFields {
    self->timeHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:620];
    self->textAnimation = [((TextAnimation*) [TextAnimation alloc]) init:[StringUtil getInstance]->EMPTY_STRING :[AnimationBehavior getInstance]];
    
    self->animation = [[NullAnimationFactory getFactoryInstance] getInstance:0];
}


- (instancetype) init:(Animation*)captionAnimation :(int32_t)captionDx :(int32_t)captionDy :(int32_t)dx :(int32_t)dy {
    self = [super init];
    [self initFields];
        self->captionAnimation = [((CaptionAnimation*) [CaptionAnimation alloc]) init:captionAnimation :self->textAnimation :captionDx :captionDy :dx :dy];
    return self;
}


- (bool) isShowing {
        if (self->animation == self->captionAnimation) {
            return true;
        } else {
            return false;
        }
}


- (void) tick {
        if ([self->timeHelper isTime:[GameTickTimeDelayHelperFactory getInstance]->startTime]) {
            self->animation = [[NullAnimationFactory getFactoryInstance] getInstance:0];
        }
}


- (void) update:(const char*)message :(BasicColor*)basicColor {
        [self->textAnimation setBasicColorP:basicColor];
        [self->textAnimation setText:message];
        self->animation = self->captionAnimation;
        [self->timeHelper setStartTimeTNT];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->animation paintXY:graphics :x :y];
}

@end

