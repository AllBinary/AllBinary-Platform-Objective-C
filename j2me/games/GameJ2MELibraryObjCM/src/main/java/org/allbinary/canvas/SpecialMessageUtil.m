// Generated Code Do Not Modify
#include "org/allbinary/canvas/SpecialMessageUtil.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/system/Memory.h"
#include "org/allbinary/canvas/GameStatisticsFactory.h"
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/Features.h")
#include "org/allbinary/game/configuration/feature/Features.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/OpenGLFeatureFactory.h")
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/OpenGLFeatureFactory.h")
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#endif
#if __has_include("org/allbinary/graphics/opengles/OpenGLFeatureFactory.h")
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#endif


static SpecialMessageUtil* SpecialMessageUtil_SINGLETON;

void SpecialMessageUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SpecialMessageUtil_SINGLETON = ((SpecialMessageUtil*) [((SpecialMessageUtil*) [SpecialMessageUtil alloc]) init]);
}

@implementation SpecialMessageUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (SpecialMessageUtil*) getInstance {
        return (SpecialMessageUtil_staticInit(), SpecialMessageUtil_SINGLETON);
}


- (const char*) get {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:[Memory getInfo]];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:[[GameStatisticsFactory getInstance] toString]];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:" Option: "];
        if ([[Features getInstance] isDefault:[OpenGLFeatureFactory getInstance]->OPENGL_AUTO_SELECT]) {
            [stringBuffer append:[[OpenGLFeatureFactory getInstance]->OPENGL_AUTO_SELECT getName]];
        } else {
            [stringBuffer append:[[OpenGLFeatureFactory getInstance]->OPENGL_MINIMUM getName]];
        }
        return [stringBuffer toString];
}

@end

