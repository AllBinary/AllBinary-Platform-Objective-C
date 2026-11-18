// Generated Code Do Not Modify
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface.h"
#include "org/allbinary/game/configuration/GameConfigurationCentral.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/RectangleFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/BasicAnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#if __has_include("org/allbinary/animation/Any.h")
#include "org/allbinary/animation/Any.h"
#endif
#if __has_include("org/allbinary/animation/resource/Any.h")
#include "org/allbinary/animation/resource/Any.h"
#endif
#if __has_include("org/allbinary/game/configuration/Any.h")
#include "org/allbinary/game/configuration/Any.h"
#endif
#if __has_include("org/allbinary/game/resource/Any.h")
#include "org/allbinary/game/resource/Any.h"
#endif
#if __has_include("org/allbinary/graphics/Any.h")
#include "org/allbinary/graphics/Any.h"
#endif
#if __has_include("org/allbinary/graphics/Any.h")
#include "org/allbinary/graphics/Any.h"
#endif
#if __has_include("org/allbinary/graphics/Any.h")
#include "org/allbinary/graphics/Any.h"
#endif
#if __has_include("org/allbinary/logic/string/Any.h")
#include "org/allbinary/logic/string/Any.h"
#endif
#if __has_include("org/allbinary/logic/string/Any.h")
#include "org/allbinary/logic/string/Any.h"
#endif
#if __has_include("org/allbinary/string/Any.h")
#include "org/allbinary/string/Any.h"
#endif
#if __has_include("org/allbinary/util/Any.h")
#include "org/allbinary/util/Any.h"
#endif
#if __has_include("org/allbinary/util/Any.h")
#include "org/allbinary/util/Any.h"
#endif
#if __has_include("org/allbinary/animation/ABHashtable.h")
#include "org/allbinary/animation/ABHashtable.h"
#endif
#if __has_include("org/allbinary/animation/resource/ABHashtable.h")
#include "org/allbinary/animation/resource/ABHashtable.h"
#endif
#if __has_include("org/allbinary/game/configuration/ABHashtable.h")
#include "org/allbinary/game/configuration/ABHashtable.h"
#endif
#if __has_include("org/allbinary/game/resource/ABHashtable.h")
#include "org/allbinary/game/resource/ABHashtable.h"
#endif
#if __has_include("org/allbinary/graphics/ABHashtable.h")
#include "org/allbinary/graphics/ABHashtable.h"
#endif
#if __has_include("org/allbinary/graphics/ABHashtable.h")
#include "org/allbinary/graphics/ABHashtable.h"
#endif
#if __has_include("org/allbinary/graphics/ABHashtable.h")
#include "org/allbinary/graphics/ABHashtable.h"
#endif
#if __has_include("org/allbinary/logic/string/ABHashtable.h")
#include "org/allbinary/logic/string/ABHashtable.h"
#endif
#if __has_include("org/allbinary/logic/string/ABHashtable.h")
#include "org/allbinary/logic/string/ABHashtable.h"
#endif
#if __has_include("org/allbinary/string/ABHashtable.h")
#include "org/allbinary/string/ABHashtable.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif


static FeaturedAnimationInterfaceFactoryInterfaceFactory* FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCE;

void FeaturedAnimationInterfaceFactoryInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCE = [((FeaturedAnimationInterfaceFactoryInterfaceFactory*) [FeaturedAnimationInterfaceFactoryInterfaceFactory alloc]) init];
}

@implementation FeaturedAnimationInterfaceFactoryInterfaceFactory


- (instancetype) init {
    self = [super init];
    return self;
}


+ (FeaturedAnimationInterfaceFactoryInterfaceFactory*) getInstance {
        return (FeaturedAnimationInterfaceFactoryInterfaceFactory_staticInit(), FeaturedAnimationInterfaceFactoryInterfaceFactory_INSTANCE);
}


// throws Exception
- (Rectangle*) getRectangle:(const char*)resource {
        return [self getRectangleXY:resource :0 :0];
}


// throws Exception
- (Rectangle*) getRectangleXY:(const char*)resource :(int32_t)x :(int32_t)y {
        PointFactory* pointFactory = [PointFactory getInstance];
        BasicArrayList* list = [self getList];
        int32_t scale = ((int32_t) ([[GameConfigurationCentral getInstance]->SCALE getValue]));
        int32_t size = [[self getList] size];
        for (int32_t index = 0; index < size; index++) {
            FeatureResourceAnimationInterfaceFactoryInterface* featureInterface = ((FeatureResourceAnimationInterfaceFactoryInterface*) list->objectArray[index]);
            if ([featureInterface isFeature]) {
                Rectangle* rectangle = [featureInterface getRectangle:resource];
                if (rectangle != (RectangleFactory_staticInit(), RectangleFactory_SINGLETON)) {
                    return [((Rectangle*) [Rectangle alloc]) init:[pointFactory createXY:x :y] :(([rectangle getWidth] * scale) >> 1) :(([rectangle getHeight] * scale) >> 1)];
                }
            }
        }
        java_throw(java_exception_new("Exception", [[[[((StringMaker*) [StringMaker alloc]) init] append:"No rectangle available for current feature selection or Resource: "] append:resource] toString]));
}


// throws Exception
- (ProceduralAnimationInterfaceFactoryInterface*) getProcedural:(const char*)resource {
        return ((ProceduralAnimationInterfaceFactoryInterface*) [self getBasicAnimationInterfaceFactoryInstance:resource]);
}


// throws Exception
- (AnimationInterfaceFactoryInterface*) get:(const char*)resource {
        return ((AnimationInterfaceFactoryInterface*) [self getBasicAnimationInterfaceFactoryInstance:resource]);
}


// throws Exception
- (BasicAnimationInterfaceFactoryInterface*) getBasicAnimationInterfaceFactoryInstance:(const char*)resource {
        BasicArrayList* list = [self getList];
        BasicArrayList* resourceTypeAvailableList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
        int32_t size = [[self getList] size];
        FeatureResourceAnimationInterfaceFactoryInterface* featureInterface = nullptr;
        BasicAnimationInterfaceFactoryInterface* animationInterfaceFactoryInterface = nullptr;
        for (int32_t index = 0; index < size; index++) {
            featureInterface = ((FeatureResourceAnimationInterfaceFactoryInterface*) list->objectArray[index]);
            if ([featureInterface isFeature]) {
                [resourceTypeAvailableList add:featureInterface];
                animationInterfaceFactoryInterface = [featureInterface getBasicAnimationInterfaceFactoryInstance:resource];
                if (animationInterfaceFactoryInterface != (NullAnimationFactory_staticInit(), NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORY)) {
                    return animationInterfaceFactoryInterface;
                }
            }
        }
        if ([resourceTypeAvailableList size] > 0) {
            const char* NO_ANIMATION_AVAILABLE_FROM = "No animation available from: ";
            const char* FOR_FACTORIES = " factories: ";
            const char* FOR_RESOURCE = " for Resource: ";
            const char* HAS_KEY = " has: ";
            const char* RESOURCES_LABEL = " resources ";
            StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
            [stringBuffer append:NO_ANIMATION_AVAILABLE_FROM];
            [stringBuffer appendint:[resourceTypeAvailableList size]];
            [stringBuffer append:[CommonSeps getInstance]->FORWARD_SLASH];
            [stringBuffer appendint:size];
            [stringBuffer append:FOR_FACTORIES];
            int32_t size2 = [resourceTypeAvailableList size];
            for (int32_t index = 0; index < size2; index++) {
                [stringBuffer append:[[resourceTypeAvailableList get:index] toString]];
                [stringBuffer append:[CommonSeps getInstance]->COMMA_SEP];
            }
            [stringBuffer append:FOR_RESOURCE];
            [stringBuffer append:resource];
            for (int32_t index = 0; index < size; index++) {
                [stringBuffer append:[CommonSeps getInstance]->NEW_LINE];
                featureInterface = ((FeatureResourceAnimationInterfaceFactoryInterface*) list->objectArray[index]);
                if ([featureInterface isFeature]) {
                    [stringBuffer append:[[StringUtil getInstance] toString:featureInterface]];
                    [stringBuffer append:HAS_KEY];
                    [stringBuffer appendint:[[featureInterface getHashtable] size]];
                    [stringBuffer append:RESOURCES_LABEL];
                }
            }
            java_throw(java_exception_new("Exception", [stringBuffer toString]));
        } else {
            StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
            for (int32_t index = 0; index < size; index++) {
                featureInterface = ((FeatureResourceAnimationInterfaceFactoryInterface*) list->objectArray[index]);
                [stringBuffer append:[featureInterface toString]];
                [stringBuffer append:[CommonSeps getInstance]->SPACE];
            }
            const char* result = [stringBuffer toString];
            [stringBuffer delete:0 :[stringBuffer length]];
            java_throw(java_exception_new("Exception", [[[[[stringBuffer append:"No feature resource type available for Resource: "] append:resource] append:" Resource Factories Available: "] append:result] toString]));
        }
}

@end

