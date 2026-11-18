// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/GameFeatureUtil.h"
#include "javax/microedition/lcdui/ChoiceGroup.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/EnumerationUtil.h"
#include "org/allbinary/util/HashtableUtil.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/Feature.h"
#include "org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.h"


static GameFeatureUtil* GameFeatureUtil_instance;

void GameFeatureUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameFeatureUtil_instance = [((GameFeatureUtil*) [GameFeatureUtil alloc]) init];
}

@implementation GameFeatureUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->tsUtil = [TsUtil getInstance];
    self->enumerationUtil = [EnumerationUtil getInstance];
    self->ON_GAME_FEATURE_CHANGE = "onGameFeatureChange";
    self->GAME_FEATURE_CHANGED = "Game Feature Changed: ";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameFeatureUtil*) getInstance {
        return (GameFeatureUtil_staticInit(), GameFeatureUtil_instance);
}


// throws Exception
- (void) setDefault:(ChoiceGroup*)choiceGroup {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        const char* METHOD_NAME = "setDefault";
        const char* SELECTED_ARRAY_RETURN = "selectedArray_return[";
        const char* SELECTED_SEP = "] = ";
        bool* selectedArray_return = ((bool*) java_array_new(sizeof(bool), [choiceGroup size]));
        int32_t total = [choiceGroup getSelectedFlags:selectedArray_return];
        [stringBuffer append:"Multiple Total Choices: "];
        [stringBuffer appendint:total];
        [self->logUtil putF:[stringBuffer toString] :self :METHOD_NAME];
        Features* features = [Features getInstance];
        for (int32_t index = 0; index < java_array_length(selectedArray_return); index++) {
            bool isSelected = selectedArray_return[index];
            [stringBuffer delete:0 :[stringBuffer length]];
            [stringBuffer append:SELECTED_ARRAY_RETURN];
            [stringBuffer appendint:index];
            [stringBuffer append:SELECTED_SEP];
            [stringBuffer appendboolean:isSelected];
            [self->logUtil putF:[stringBuffer toString] :self :METHOD_NAME];
            const char* selectedChoiceLabel = [choiceGroup getString:index];
            Feature* gameFeature = [Feature getInstance:selectedChoiceLabel];
            if ([features isDefault:gameFeature]) {
                [features add:gameFeature];
                [choiceGroup setSelectedIndex:index :true];
            } else {
                [features remove:gameFeature];
                [choiceGroup setSelectedIndex:index :false];
            }
        }
}


// throws Exception
- (void) updateMultiple:(ChoiceGroup*)choiceGroup {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        const char* METHOD_NAME = "updateMultiple";
        const char* SELECTED_ARRAY_RETURN = "selectedArray_return[";
        const char* SELECTED_SEP = "] = ";
        bool* selectedArray_return = ((bool*) java_array_new(sizeof(bool), [choiceGroup size]));
        int32_t total = [choiceGroup getSelectedFlags:selectedArray_return];
        [stringBuffer append:"Multiple Total Choices: "];
        [stringBuffer appendint:total];
        [self->logUtil putF:[stringBuffer toString] :self :METHOD_NAME];
        Features* features = [Features getInstance];
        for (int32_t index = 0; index < java_array_length(selectedArray_return); index++) {
            bool isSelected = selectedArray_return[index];
            [stringBuffer delete:0 :[stringBuffer length]];
            [stringBuffer append:SELECTED_ARRAY_RETURN];
            [stringBuffer appendint:index];
            [stringBuffer append:SELECTED_SEP];
            [stringBuffer appendboolean:isSelected];
            [self->logUtil putF:[stringBuffer toString] :self :METHOD_NAME];
            const char* selectedChoiceLabel = [choiceGroup getString:index];
            Feature* gameFeature = [Feature getInstance:selectedChoiceLabel];
            if (!isSelected && [features isFeature:gameFeature]) {
                [features remove:gameFeature];
            } else if (isSelected && ![features isFeature:gameFeature]) {
                [features add:gameFeature];
            }
        }
}


// throws Exception
- (void) updateExclusiveForChoiceGroup:(ChoiceGroup*)choiceGroup {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        const char* METHOD_NAME = "updateExclusive";
        const char* SELECTED_ARRAY_RETURN = "selectedArray_return[";
        const char* SELECTED_SEP = "] = ";
        bool* selectedArray_return = ((bool*) java_array_new(sizeof(bool), [choiceGroup size]));
        int32_t total = [choiceGroup getSelectedFlags:selectedArray_return];
        [stringBuffer append:"Exclusive Total Choices: 1=="];
        [stringBuffer appendint:total];
        [self->logUtil putF:[stringBuffer toString] :self :METHOD_NAME];
        for (int32_t index = 0; index < java_array_length(selectedArray_return); index++) {
            bool isSelected = selectedArray_return[index];
            [stringBuffer delete:0 :[stringBuffer length]];
            [stringBuffer append:SELECTED_ARRAY_RETURN];
            [stringBuffer appendint:index];
            [stringBuffer append:SELECTED_SEP];
            [stringBuffer appendboolean:isSelected];
            [self->logUtil putF:[stringBuffer toString] :self :METHOD_NAME];
            if (isSelected) {
                const char* selectedChoiceLabel = [choiceGroup getString:index];
                [self updateExclusive:selectedChoiceLabel];
            }
        }
}


- (bool) isExclusive:(const char*)itemLabel {
        Enumeration* enumeration = [[[GameFeatureChoiceGroups getExclusiveInstance] get] keys];
        const char* name = nullptr;
        while ([self->enumerationUtil hasMoreElements:enumeration]) {
            name = ((const char*) [self->enumerationUtil nextElement:enumeration]);
            if ([self->tsUtil compareTo:itemLabel :name] == 0) {
                return true;
            }
        }
        return false;
}


// throws Exception
- (void) updateExclusive:(const char*)selectedChoiceLabel {
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->ITEM_LABEL] append:selectedChoiceLabel] toString] :self :"updateExclusive"];
        Feature* gameFeature = [Feature getInstance:selectedChoiceLabel];
        ABHashtable* hashtable = [[GameFeatureChoiceGroups getExclusiveInstance] get];
        id* objectArray = [[HashtableUtil getInstance] getKeysAsArray:hashtable];
        BasicArrayList* basicArrayList = nullptr;
        id anyType = nullptr;
        int32_t size = java_array_length(objectArray);
        for (int32_t index = 0; index < size; index++) {
            anyType = ((id) objectArray[index]);
            basicArrayList = ((BasicArrayList*) [hashtable get:JAVA_BOX(anyType)]);
            [self updateExclusiveList:gameFeature :basicArrayList];
        }
}


// throws Exception
- (void) updateExclusiveList:(Feature*)gameFeature :(BasicArrayList*)list {
        if ([list contains:gameFeature]) {
            Features* features = [Features getInstance];
            int32_t addIndex = [list indexOf:gameFeature];
            int32_t size = [list size];
            for (int32_t index = 0; index < size; index++) {
                if (addIndex != index) {
                    [features remove:((Feature*) list->objectArray[index])];
                } else {
                    [features add:((Feature*) list->objectArray[index])];
                }
            }
        }
}

@end

