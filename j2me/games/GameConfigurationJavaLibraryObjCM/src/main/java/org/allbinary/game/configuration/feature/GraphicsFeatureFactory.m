// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/GraphicsFeatureFactory.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/game/configuration/feature/GraphicsFeature.h"


static GraphicsFeatureFactory* GraphicsFeatureFactory_instance;

void GraphicsFeatureFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GraphicsFeatureFactory_instance = [((GraphicsFeatureFactory*) [GraphicsFeatureFactory alloc]) init];
}

@implementation GraphicsFeatureFactory

- (void) initFields {
    self->NONE = [((GraphicsFeature*) [GraphicsFeature alloc]) init:[StringUtil getInstance]->NULL_STRING];
    self->TRANSPARENT_IMAGE_CREATION = [((GraphicsFeature*) [GraphicsFeature alloc]) init:"Transparent Image Creation"];
    self->IMAGE_GRAPHICS = [((GraphicsFeature*) [GraphicsFeature alloc]) init:"Image Graphics"];
    self->IMAGE_ROTATION_ON_THE_FLY = [((GraphicsFeature*) [GraphicsFeature alloc]) init:"Image Rotated On The Fly"];
    self->IMAGE_TO_ARRAY_GRAPHICS = [((GraphicsFeature*) [GraphicsFeature alloc]) init:"Image To Array Graphics"];
    self->SPRITE_QUARTER_ROTATION_GRAPHICS = [((GraphicsFeature*) [GraphicsFeature alloc]) init:"Sprite Quarter Rotation Graphics"];
    self->SPRITE_FULL_GRAPHICS = [((GraphicsFeature*) [GraphicsFeature alloc]) init:"Sprite Full Rotation Graphics"];
    self->VECTOR_GRAPHICS = [((GraphicsFeature*) [GraphicsFeature alloc]) init:"BasicArrayList Graphics"];
    self->VECTOR_TO_IMAGE_GRAPHICS = [((GraphicsFeature*) [GraphicsFeature alloc]) init:"BasicArrayList To Image Graphics"];
}


+ (GraphicsFeatureFactory*) getInstance {
        return (GraphicsFeatureFactory_staticInit(), GraphicsFeatureFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

