// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/OpenGLOptions.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"



void OpenGLOptions_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OpenGLOptions

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) init_ {
        OpenGLFeatureFactory* openGLFeatureFactory = [OpenGLFeatureFactory getInstance];
        if ([[Features getInstance] isFeature:openGLFeatureFactory->OPENGL_OPTIONS]) {
            BasicArrayList* openGLMultipleList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
            [openGLMultipleList add:openGLFeatureFactory->OPENGL];
            [[GameFeatureChoiceGroups getMultipleInstance] add:"OpenGL (Complete Restart)" :openGLMultipleList];
            BasicArrayList* openGLVersionSelectorMultipleList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
            [openGLVersionSelectorMultipleList add:openGLFeatureFactory->OPENGL_AUTO_SELECT];
            [openGLVersionSelectorMultipleList add:openGLFeatureFactory->OPENGL_MINIMUM];
            [[GameFeatureChoiceGroups getExclusiveInstance] add:"OpenGL Version Selector" :openGLVersionSelectorMultipleList];
            BasicArrayList* openGLImageColorMultipleList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
            [openGLImageColorMultipleList add:openGLFeatureFactory->IMAGE_COLOR_DEPTH_4444];
            [openGLImageColorMultipleList add:openGLFeatureFactory->IMAGE_COLOR_DEPTH_8888];
            [[GameFeatureChoiceGroups getExclusiveInstance] add:"OpenGL Image Color RGBA" :openGLImageColorMultipleList];
        }
}

@end

