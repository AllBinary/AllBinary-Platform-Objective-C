// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/GameFeatureFormUtil.h"
#include "javax/microedition/lcdui/ChoiceGroup.h"
#include "javax/microedition/lcdui/Item.h"
#include "javax/microedition/lcdui/NullImage.h"
#include "org/allbinary/MIDPUtil.h"
#include "org/allbinary/game/configuration/GameConfigurationGauge.h"
#include "org/allbinary/game/configuration/GameConfigurationUtil.h"
#include "org/allbinary/graphics/displayable/screen/CommandForm.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/HashtableUtil.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/Feature.h"
#include "org/allbinary/game/configuration/feature/GameFeatureUtil.h"


static GameFeatureFormUtil* GameFeatureFormUtil_instance;

void GameFeatureFormUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameFeatureFormUtil_instance = [((GameFeatureFormUtil*) [GameFeatureFormUtil alloc]) init];
}

@implementation GameFeatureFormUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->meUtil = [MIDPUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameFeatureFormUtil*) getInstance {
        return (GameFeatureFormUtil_staticInit(), GameFeatureFormUtil_instance);
}


- (ChoiceGroup*) getChoiceGroup:(ABHashtable*)hashtable :(const char*)name :(int32_t)option {
        StringMaker* stringMaker = [((StringMaker*) [StringMaker alloc]) init];
        ChoiceGroup* choiceGroup = [((ChoiceGroup*) [ChoiceGroup alloc]) init:name :option :[[StringUtil getInstance] getArrayInstance] :(NullImage_staticInit(), NullImage_NULL_IMAGE_ARRAY)];
        BasicArrayList* list = ((BasicArrayList*) [hashtable get:JAVA_BOX(((id) name))]);
        Features* features = [Features getInstance];
        const char* ADD_CHOICE = ": Adding Choice: ";
        const char* GET_CHOICE_GROUP = "getChoiceGroup";
        int32_t size = [list size];
        for (int32_t index = 0; index < size; index++) {
            Feature* gameFeature = ((Feature*) list->objectArray[index]);
            [stringMaker delete:0 :[stringMaker length]];
            [self->logUtil putF:[[[[stringMaker append:name] append:ADD_CHOICE] append:[gameFeature toString]] toString] :self :GET_CHOICE_GROUP];
            [choiceGroup append:[gameFeature toString] :(NullImage_staticInit(), NullImage_NULL_IMAGE)];
            if ([features isFeature:gameFeature]) {
                [choiceGroup setSelectedIndex:index :true];
            }
        }
        return choiceGroup;
}


- (void) addChoiceGroup:(CommandForm*)form :(ABHashtable*)hashtable :(int32_t)option {
        StringMaker* stringMaker = [((StringMaker*) [StringMaker alloc]) init];
        const char* ADDING_CHOICE_GROUP = "Adding Choice Group: ";
        const char* ADD_CHOICE_GROUP = "addChoiceGroup";
        int32_t size = [hashtable size];
        id* objectArray = [[HashtableUtil getInstance] getKeysAsArray:hashtable];
        const char* name = nullptr;
        for (int32_t index = 0; index < size; index++) {
            name = ((const char*) objectArray[index]);
            [stringMaker delete:0 :[stringMaker length]];
            [self->logUtil putF:[[[stringMaker append:ADDING_CHOICE_GROUP] append:name] toString] :self :ADD_CHOICE_GROUP];
            [self->meUtil appendItem:form :[self getChoiceGroup:hashtable :name :option]];
        }
}


// throws Exception
- (void) setDefault:(CommandForm*)form {
        int32_t size = [form size];
        for (int32_t index = 0; index < size; index++) {
            Item* item = [form get:index];
            if (java_objc_instanceof(item, [GameConfigurationGauge class])) {
                [[GameConfigurationUtil getInstance] setDefault:((GameConfigurationGauge*) item)];
            } else if (java_objc_instanceof(item, [ChoiceGroup class])) {
                [[GameFeatureUtil getInstance] setDefault:((ChoiceGroup*) item)];
            }
        }
}

@end

