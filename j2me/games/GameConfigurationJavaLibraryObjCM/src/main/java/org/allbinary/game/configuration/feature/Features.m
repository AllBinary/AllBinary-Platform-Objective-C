// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/event/GameFeatureEvent.h"
#include "org/allbinary/game/configuration/event/GameFeatureEventHandler.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/configuration/feature/Feature.h"
#include "org/allbinary/game/configuration/feature/GameFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/InputFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/SensorFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/TouchFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"


static id Features_SINGLETON;

void Features_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    Features_SINGLETON = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation Features

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    
    
}


+ (Features*) getInstance {
        if ((Features_staticInit(), Features_SINGLETON) == [NullUtil getInstance]->NULL_OBJECT) {
            Features_SINGLETON = [((Features*) [Features alloc]) init];
        }
        return ((Features*) (Features_staticInit(), Features_SINGLETON));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
        self->defaultList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
        [self init_];
    return self;
}


// throws Exception
- (void) addDefault:(Feature*)gameFeature {
        [self add:gameFeature];
        if (![self->defaultList contains:gameFeature]) {
            [self->defaultList add:gameFeature];
        }
}


// throws Exception
- (void) add:(Feature*)gameFeature {
        if (![self->list contains:gameFeature]) {
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->START_LABEL] append:[gameFeature toString]] toString] :self :self->commonStrings->ADD];
            [self->list add:gameFeature];
            [[GameFeatureEventHandler getInstance] fireEvent:[((GameFeatureEvent*) [GameFeatureEvent alloc]) init:gameFeature :[gameFeature toString]]];
        }
}


// throws Exception
- (void) removeDefault:(Feature*)gameFeature {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->START_LABEL] append:[gameFeature toString]] toString] :self :"removeDefault"];
        [self remove:gameFeature];
        [self->defaultList remove:gameFeature];
}


// throws Exception
- (void) remove:(Feature*)gameFeature {
        if ([self->list contains:gameFeature]) {
            [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->REMOVE];
            [self->list remove:gameFeature];
            [[GameFeatureEventHandler getInstance] fireEvent:[((GameFeatureEvent*) [GameFeatureEvent alloc]) init:gameFeature :[gameFeature toString]]];
        }
}


- (void) init_ {
        JAVA_TRY {
            GameFeatureFactory* gameFeatureFactory = [GameFeatureFactory getInstance];
            InputFeatureFactory* inputFeatureFactory = [InputFeatureFactory getInstance];
            SensorFeatureFactory* sensorFeatureFactory = [SensorFeatureFactory getInstance];
            TouchFeatureFactory* touchFeatureFactory = [TouchFeatureFactory getInstance];
            [self addDefault:gameFeatureFactory->ARTIFICIAL_INTELLEGENCE_PROCESSOR];
            [self addDefault:gameFeatureFactory->COLLIDABLE_INTERFACE_LAYER_PROCESSOR];
            [self addDefault:gameFeatureFactory->GAME_INPUT_LAYER_PROCESSOR];
            [self addDefault:gameFeatureFactory->TICKABLE_LAYER_PROCESSOR];
            [self addDefault:inputFeatureFactory->MULTI_KEY_PRESS];
            [self addDefault:inputFeatureFactory->REMOVE_DUPLICATE_KEY_PRESSES];
            [self addDefault:gameFeatureFactory->SCREEN_SHAKE];
            [self addDefault:gameFeatureFactory->POST_IMAGE_LOADING_MODIFICATION];
            GenericOperatingSystem* operatingSystemInterface = [[OperatingSystemFactory getInstance] getOperatingSystemInstance];
            if ([operatingSystemInterface isOverScan]) {
                [self addDefault:sensorFeatureFactory->NO_ORIENTATION];
                [self addDefault:touchFeatureFactory->HIDE_SCREEN_BUTTONS];
            } else {
                [self addDefault:sensorFeatureFactory->ORIENTATION_SENSORS];
                [self addDefault:touchFeatureFactory->AUTO_HIDE_SHOW_SCREEN_BUTTONS];
            }
            [self addDefault:touchFeatureFactory->TOUCH_ENABLED];
            [self addDefault:[MainFeatureFactory getInstance]->FULL_SCREEN];
            [self addDefault:[MainFeatureFactory getInstance]->LOAD_ONDEMAND];
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil putOE:self->commonStrings->EXCEPTION :self :self->commonStrings->INIT :e];
        } JAVA_END_TRY;
}


- (bool) isDefault:(Feature*)gameFeature {
        return [self->defaultList contains:gameFeature];
}


- (bool) isFeature:(Feature*)gameFeature {
        return [self->list contains:gameFeature];
}


// throws Exception
- (void) toggle:(Feature*)gameFeature {
        if ([self isFeature:gameFeature]) {
            [self remove:gameFeature];
        } else {
            [self add:gameFeature];
        }
}

@end

