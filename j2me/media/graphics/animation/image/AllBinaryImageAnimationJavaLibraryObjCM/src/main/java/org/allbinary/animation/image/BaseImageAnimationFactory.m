// Generated Code Do Not Modify
#include "org/allbinary/animation/image/BaseImageAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/image/AnimationFactoryImageScaleUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/animation/image/AnimationFactoryInitializationVisitor.h"
#if __has_include("org/allbinary/animation/NullAnimationFactory.h")
#include "org/allbinary/animation/NullAnimationFactory.h"
#endif



void BaseImageAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BaseImageAnimationFactory

- (void) initFields {
    self->animationFactoryImageScaleUtil = [AnimationFactoryImageScaleUtil getInstance];
    
    
    
    
    self->scaleProperties = (ScaleProperties_staticInit(), ScaleProperties_instance);
}


// throws Exception
+ (BaseImageAnimationFactory*) createFactoryBase:(Image*)image :(int32_t*)sequenceArray :(int32_t)width :(int32_t)height :(AnimationBehaviorFactory*)animationBehaviorFactory {
        return ((BaseImageAnimationFactory*) [((BaseImageAnimationFactory*) [BaseImageAnimationFactory alloc]) init:image :sequenceArray :width :height :0 :0 :animationBehaviorFactory]);
}


- (instancetype) init:(Image*)image :(int32_t*)sequenceArray :(int32_t)width :(int32_t)height :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
    self = [super init];
    [self initFields];
        self->animationFactoryInitializationVisitor = ((AnimationFactoryInitializationVisitor*) [((AnimationFactoryInitializationVisitor*) [AnimationFactoryInitializationVisitor alloc]) init]);
        self->image = image;
        self->animationFactoryInitializationVisitor->width = width;
        self->animationFactoryInitializationVisitor->height = height;
        self->animationBehaviorFactory = animationBehaviorFactory;
        self->sequenceArray = sequenceArray;
        self->animationFactoryInitializationVisitor->dx = dx;
        self->animationFactoryInitializationVisitor->dy = dy;
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        return [[NullAnimationFactory getFactoryInstance] getInstance:instanceId];
}


- (Image*) getImage {
        return self->image;
}


- (int32_t*) getSequenceArray {
        return self->sequenceArray;
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
        self->scaleProperties = scaleProperties;
        if (self->scaleProperties->shouldScale) {
            self->scaleProperties->scaleWidth = ((int32_t) (((float) self->animationFactoryInitializationVisitor->width) * self->scaleProperties->scaleX));
            self->scaleProperties->scaleHeight = ((int32_t) (((float) self->animationFactoryInitializationVisitor->height) * self->scaleProperties->scaleY));
        } else {
        }
}


- (AnimationFactoryInitializationVisitor*) getAnimationFactoryInitializationVisitorP {
        return self->animationFactoryInitializationVisitor;
}


- (ScaleProperties*) getScalePropertiesP {
        return self->scaleProperties;
}


- (const char*) toString {
        CommonSeps* commonSeps = [CommonSeps getInstance];
        CommonLabels* commonLabels = [CommonLabels getInstance];
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:[super toString]];
        [stringBuffer append:commonLabels->HEIGHT_LABEL];
        [stringBuffer appendint:[self->image getHeight]];
        [stringBuffer append:commonSeps->SPACE];
        [stringBuffer append:[self->animationFactoryInitializationVisitor toString]];
        return [stringBuffer toString];
}

@end

