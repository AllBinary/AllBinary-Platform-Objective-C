// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/GameOptionsForm.h"
#include "javax/microedition/lcdui/Choice.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Item.h"
#include "javax/microedition/lcdui/TextField.h"
#include "org/allbinary/MIDPUtil.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.h"
#include "org/allbinary/game/configuration/feature/GameFeatureFormUtil.h"
#include "org/allbinary/game/configuration/feature/GameFeatureItemCommandListener.h"
#include "org/allbinary/game/configuration/feature/GameFeatureItemStateListener.h"
#include "org/allbinary/game/configuration/feature/SensorFeatureFactory.h"
#include "org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton.h"
#include "org/allbinary/game/configuration/persistance/KeyValuePersistance.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/displayable/command/MyCommandsFactory.h"
#include "org/allbinary/input/gyro/OrientationData.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/HashtableUtil.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/configuration/GameConfigurationTextInput.h"
#include "org/allbinary/game/configuration/GameConfigurationSingleton.h"
#include "org/allbinary/game/configuration/GameConfiguration.h"
#include "org/allbinary/game/configuration/GameConfigurationGauge.h"
#include "org/allbinary/game/configuration/GameConfigurationUtil.h"
#include "org/allbinary/game/configuration/GameConfigurationCentral.h"
#if __has_include("org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.h")
#include "org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.h")
#include "org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.h"
#endif
#if __has_include("org/allbinary/input/gyro/OrientationData.h")
#include "org/allbinary/input/gyro/OrientationData.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.h")
#include "org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/SensorFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/SensorFeatureFactory.h"
#endif
#if __has_include("org/allbinary/util/HashtableUtil.h")
#include "org/allbinary/util/HashtableUtil.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/command/MyCommandsFactory.h")
#include "org/allbinary/graphics/displayable/command/MyCommandsFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif



void GameOptionsForm_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameOptionsForm

- (void) initFields {
    self->meUtil = [MIDPUtil getInstance];
}


- (instancetype) init:(CommandListener*)commandListener :(const char*)title :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:commandListener :title :backgrounBasicColor :foregroundBasicColor];
        [self initFields];
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
        [self addConfiguration];
        GameFeatureFormUtil* gameFeatureFormUtil = [GameFeatureFormUtil getInstance];
        [gameFeatureFormUtil addChoiceGroup:self :[[GameFeatureChoiceGroups getExclusiveInstance] get] :(Choice_staticInit(), Choice_EXCLUSIVE)];
        [gameFeatureFormUtil addChoiceGroup:self :[[GameFeatureChoiceGroups getMultipleInstance] get] :(Choice_staticInit(), Choice_MULTIPLE)];
        [self initCommands:commandListener];
        [self setItemStateListener:((GameFeatureItemStateListener*) [((GameFeatureItemStateListener*) [GameFeatureItemStateListener alloc]) init:self])];
        [self addTextFieldsIfSimulated];
    return self;
}


// throws Exception
- (void) closeClientInformation:(AbeClientInformationInterface*)abeClientInformation {
        [super close];
        [self save:abeClientInformation];
}


- (void) addTextFieldsIfSimulated {
        const char* key = [OrientationData getInstance]->ORIENTATION_SENSOR_INPUT;
        ABHashtable* hashtable = [[GameFeatureChoiceGroups getExclusiveInstance] get];
        if (hashtable != nil) {
            id listCanBeNull = [hashtable get:JAVA_BOX(key)];
            if (listCanBeNull != nil) {
                BasicArrayList* list = ((BasicArrayList*) listCanBeNull);
                if ([list contains:[SensorFeatureFactory getInstance]->SIMULATED_ORIENTATION_SENSORS]) {
                    [self addTextFields];
                }
            }
        }
}


- (void) addTextFields {
        ABHashtable* hashtable = [GameConfigurationTextInput getHashtable];
        int32_t size = [hashtable size];
        id* objectArray = [[HashtableUtil getInstance] getKeysAsArray:hashtable];
        GameConfigurationTextInput* gameConfigurationTextInput = nullptr;
        TextField* textField = nullptr;
        for (int32_t index = 0; index < size; index++) {
            gameConfigurationTextInput = ((GameConfigurationTextInput*) [hashtable get:JAVA_BOX(((id) objectArray[index]))]);
            textField = ((TextField*) [((TextField*) [TextField alloc]) init:[gameConfigurationTextInput getLabel] :[gameConfigurationTextInput getText] :30 :(TextField_staticInit(), TextField_ANY)]);
            [self->meUtil appendItem:self :textField];
        }
}


- (void) addConfiguration {
        const char* METHOD_NAME = "addConfiguration";
        const char* NAME = "Name: ";
        BasicArrayList* list = [[GameConfigurationSingleton getInstance] getOptionsBasicArrayList];
        Command* GAUGE_CHANGE = [MyCommandsFactory getInstance]->GAUGE_CHANGE;
        StringMaker* stringMaker = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        int32_t size = [list size];
        GameConfiguration* gameConfiguration = nullptr;
        GameConfigurationGauge* gauge = nullptr;
        for (int32_t index = 0; index < size; index++) {
            gameConfiguration = ((GameConfiguration*) list->objectArray[index]);
            [stringMaker delete:0 :[stringMaker length]];
            [self->logUtil putF:[[[stringMaker append:NAME] append:[gameConfiguration toString]] toString] :self :METHOD_NAME];
            gauge = ((GameConfigurationGauge*) [((GameConfigurationGauge*) [GameConfigurationGauge alloc]) init:gameConfiguration]);
            [gauge setDefaultCommand:GAUGE_CHANGE];
            [gauge setItemCommandListener:((GameFeatureItemCommandListener*) [((GameFeatureItemCommandListener*) [GameFeatureItemCommandListener alloc]) init:self])];
            [self->meUtil appendItem:self :gauge];
        }
}


- (void) initCommands:(CommandListener*)cmdListener {
        GameCommandsFactory* gameCommandsFactory = [GameCommandsFactory getInstance];
        [self removeAllCommands];
        [self addCommand:gameCommandsFactory->CLOSE_OPTIONS];
        [self addCommand:gameCommandsFactory->DEFAULT_OPTIONS];
        [self setCommandListener:cmdListener];
}


// throws Exception
- (void) save:(AbeClientInformationInterface*)abeClientInformation {
        int32_t size = [self size];
        Item* item = nullptr;
        for (int32_t index = 0; index < size; index++) {
            item = [self get:index];
            if (java_objc_instanceof(item, [GameConfigurationGauge class])) {
                [[GameConfigurationUtil getInstance] update:((GameConfigurationGauge*) item)];
            } else if (java_objc_instanceof(item, [TextField class])) {
                [GameConfigurationTextInput update:((TextField*) item)];
            }
        }
        [[GameConfigurationUtil getInstance] updateCompetitionValue];
        ABHashtable* hashtable = [[StdUtil getInstance] createHashtable];
        GameConfiguration* SCALE = [GameConfigurationCentral getInstance]->SCALE;
        [hashtable put:JAVA_BOX([SCALE getName]) :JAVA_BOX(java_string_of(((int32_t) ([SCALE getValue]))))];
        KeyValuePersistance* keyValuePersistance = [GameConfigurationPersistanceSingleton getInstance];
        [keyValuePersistance clear];
        [keyValuePersistance loadAll:abeClientInformation];
        BasicArrayList* list = [keyValuePersistance getIds];
        [keyValuePersistance save:abeClientInformation :hashtable];
        int32_t size2 = [list size];
        int32_t integer = 0;
        for (int32_t index = 0; index < size2; index++) {
            integer = ((int32_t) list->objectArray[index]);
            [keyValuePersistance delete:abeClientInformation :((int32_t) (integer))];
        }
}

@end

