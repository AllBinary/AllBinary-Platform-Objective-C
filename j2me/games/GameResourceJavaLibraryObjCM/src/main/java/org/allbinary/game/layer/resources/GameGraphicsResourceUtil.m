// Generated Code Do Not Modify
#include "org/allbinary/game/layer/resources/GameGraphicsResourceUtil.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/GraphicsFeature.h"
#include "org/allbinary/game/configuration/feature/GraphicsFeatureFactory.h"
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureUtil.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/OpenGLFeatureUtil.h")
#include "org/allbinary/graphics/opengles/OpenGLFeatureUtil.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/CanvasStrings.h")
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#endif


static id GameGraphicsResourceUtil_instance;

void GameGraphicsResourceUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameGraphicsResourceUtil_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation GameGraphicsResourceUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->SPRITE = "_sprite";
    self->QUARTER = "_quarter";
    self->name = [StringUtil getInstance]->EMPTY_STRING;
}


+ (GameGraphicsResourceUtil*) getInstance {
        if ((GameGraphicsResourceUtil_staticInit(), GameGraphicsResourceUtil_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            GameGraphicsResourceUtil_instance = ((GameGraphicsResourceUtil*) [((GameGraphicsResourceUtil*) [GameGraphicsResourceUtil alloc]) init]);
        }
        return ((GameGraphicsResourceUtil*) (GameGraphicsResourceUtil_staticInit(), GameGraphicsResourceUtil_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        JAVA_TRY {
            self->name = [self getString];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->CONSTRUCTOR :e];
        } JAVA_END_TRY;
    return self;
}


// throws Exception
- (const char*) getString {
        GraphicsFeatureFactory* graphicsFeatureFactory = [GraphicsFeatureFactory getInstance];
        GraphicsFeature* graphicsFeature = graphicsFeatureFactory->NONE;
        Features* features = [Features getInstance];
        if ([features isFeature:graphicsFeatureFactory->IMAGE_TO_ARRAY_GRAPHICS]) {
            graphicsFeature = graphicsFeatureFactory->IMAGE_TO_ARRAY_GRAPHICS;
        } else if ([features isFeature:graphicsFeatureFactory->SPRITE_FULL_GRAPHICS]) {
            graphicsFeature = graphicsFeatureFactory->SPRITE_FULL_GRAPHICS;
        } else if ([features isFeature:graphicsFeatureFactory->SPRITE_QUARTER_ROTATION_GRAPHICS]) {
            graphicsFeature = graphicsFeatureFactory->SPRITE_QUARTER_ROTATION_GRAPHICS;
        } else if ([features isFeature:graphicsFeatureFactory->IMAGE_ROTATION_ON_THE_FLY]) {
            graphicsFeature = graphicsFeatureFactory->IMAGE_ROTATION_ON_THE_FLY;
        }
        return [self getStringForFeature:graphicsFeature];
}


// throws Exception
- (const char*) getStringForFeature:(GraphicsFeature*)graphicsFeature {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        GraphicsFeatureFactory* graphicsFeatureFactory = [GraphicsFeatureFactory getInstance];
        [stringBuffer delete:0 :[stringBuffer length]];
        Features* features = [Features getInstance];
        if ([features isFeature:graphicsFeatureFactory->VECTOR_GRAPHICS]) {
        } else if ([features isFeature:graphicsFeatureFactory->IMAGE_GRAPHICS]) {
            if (graphicsFeature == graphicsFeatureFactory->IMAGE_TO_ARRAY_GRAPHICS || graphicsFeature == graphicsFeatureFactory->IMAGE_ROTATION_ON_THE_FLY) {
            } else if (graphicsFeature == graphicsFeatureFactory->SPRITE_FULL_GRAPHICS) {
                [stringBuffer append:self->SPRITE];
            } else if (graphicsFeature == graphicsFeatureFactory->SPRITE_QUARTER_ROTATION_GRAPHICS) {
                [stringBuffer append:self->QUARTER];
                [stringBuffer append:self->SPRITE];
            } else {
                java_throw(java_exception_new("Exception", "None/Unknown Sub Image Resource Type Specified"));
            }
        } else if ([[OpenGLFeatureUtil getInstance] isAnyThreed]) {
            [stringBuffer append:[CanvasStrings getInstance]->OBJ_MODEL];
        } else {
            java_throw(java_exception_new("Exception", "None/Unknown Main Image Resource Type Specified"));
        }
        return [stringBuffer toString];
}


- (const char*) getName {
        return self->name;
}

@end

