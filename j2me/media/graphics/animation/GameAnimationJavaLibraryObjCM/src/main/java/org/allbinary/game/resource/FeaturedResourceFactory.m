// Generated Code Do Not Modify
#include "org/allbinary/game/resource/FeaturedResourceFactory.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/GameFeatureControlledInterface.h"
#include "org/allbinary/game/configuration/feature/GraphicsFeatureFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/resource/ResourceLoadingLevelFactory.h"



void FeaturedResourceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation FeaturedResourceFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->commonStrings = [CommonStrings getInstance];
    self->ANIMATION_FEATURES = "Animation Features: Vector: ";
    self->IMAGE_LABEL = " Image: ";
    self->IMAGE_GRAPHICS_ARRAY = "Image Array: ";
    self->IMAGE_GRAPHICS_ROTATION = "Image Rotate: ";
    self->SPRITE_QUARTER = " Sprite Quarter: ";
    self->SPRITE_FULL = " Sprite Full: ";
    self->IS_LOADING_LEVEL_LABEL = " isLoadingLevel ";
    self->IS_FEATURE = " isFeature: ";
    self->GAME_FEATURE_CONTROLLED = "GameFeatureControlledInterface: ";
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (void) init_:(int32_t)level {
        int32_t size = [self->list size];
        for (int32_t index = 0; index < size; index++) {
            GameFeatureControlledInterface* featureInterface = ((GameFeatureControlledInterface*) self->list->objectArray[index]);
            bool isLoadingLevel = [featureInterface isLoadingLevel:level];
            bool isFeature = [featureInterface isFeature];
            [self->logUtil putF:[[[[[[[[[[((StringMaker*) [StringMaker alloc]) init] append:self->GAME_FEATURE_CONTROLLED] append:[featureInterface toString]] append:self->IS_LOADING_LEVEL_LABEL] append:[[ResourceLoadingLevelFactory getInstance] getLevelString:level]] append:[CommonSeps getInstance]->COLON_SEP] appendboolean:isLoadingLevel] append:self->IS_FEATURE] appendboolean:isFeature] toString] :self :self->commonStrings->INIT];
            if (isLoadingLevel && isFeature) {
                [featureInterface init_:level];
            }
        }
        Features* features = [Features getInstance];
        GraphicsFeatureFactory* graphicsFeatureFactory = [GraphicsFeatureFactory getInstance];
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:self->ANIMATION_FEATURES];
        [stringBuffer appendboolean:[features isFeature:graphicsFeatureFactory->VECTOR_GRAPHICS]];
        [stringBuffer append:self->IMAGE_LABEL];
        [stringBuffer appendboolean:[features isFeature:graphicsFeatureFactory->IMAGE_GRAPHICS]];
        [self->logUtil putF:[stringBuffer toString] :self :self->commonStrings->INIT];
        if ([features isFeature:graphicsFeatureFactory->IMAGE_GRAPHICS]) {
            [stringBuffer delete:0 :[stringBuffer length]];
            [stringBuffer append:self->IMAGE_GRAPHICS_ARRAY];
            [stringBuffer appendboolean:[features isFeature:graphicsFeatureFactory->IMAGE_TO_ARRAY_GRAPHICS]];
            [stringBuffer append:self->IMAGE_GRAPHICS_ROTATION];
            [stringBuffer appendboolean:[features isFeature:graphicsFeatureFactory->IMAGE_TO_ARRAY_GRAPHICS]];
            [stringBuffer append:self->SPRITE_QUARTER];
            [stringBuffer appendboolean:[features isFeature:graphicsFeatureFactory->SPRITE_QUARTER_ROTATION_GRAPHICS]];
            [stringBuffer append:self->SPRITE_FULL];
            [stringBuffer appendboolean:[features isFeature:graphicsFeatureFactory->SPRITE_FULL_GRAPHICS]];
            [self->logUtil putF:[stringBuffer toString] :self :self->commonStrings->INIT];
        }
}


- (void) clear {
        [self->list clear];
}


- (void) add:(GameFeatureControlledInterface*)featureInterface {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->START_LABEL] append:[[StringUtil getInstance] toString:featureInterface]] toString] :self :self->commonStrings->ADD];
        [self->list add:featureInterface];
}


- (BasicArrayList*) getList {
        return self->list;
}

@end

