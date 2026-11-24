// Generated Code Do Not Modify
#include "org/allbinary/game/paint/help/BasicInputMappingHelpPaintable.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#include "org/allbinary/game/input/Input.h"
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#include "org/allbinary/game/input/mapping/GameInputMapping.h"
#include "org/allbinary/game/input/mapping/PersistentInputMapping.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/paint/help/HelpPaintable.h"
#if __has_include("org/allbinary/game/input/GameKeyFactory.h")
#include "org/allbinary/game/input/GameKeyFactory.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/game/input/PlatformInputMappingFactory.h")
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#endif
#if __has_include("org/allbinary/game/paint/help/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/help/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/graphics/color/InputToGameKeyMapping.h")
#include "org/allbinary/graphics/color/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/graphics/color/InputToGameKeyMapping.h")
#include "org/allbinary/graphics/color/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/InputToGameKeyMapping.h")
#include "org/allbinary/logic/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/string/InputToGameKeyMapping.h")
#include "org/allbinary/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/util/InputToGameKeyMapping.h")
#include "org/allbinary/util/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void BasicInputMappingHelpPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicInputMappingHelpPaintable

- (void) initFields {
    
    self->NONE = [GameKeyFactory getInstance]->NONE;
}


- (instancetype) init:(GameInputMapping**)gameInputMappingArray :(BasicColor*)basicColor {
        self = [super init:"Help Screen" :[BasicColorFactory getInstance]->BLACK :basicColor];
        [self initFields];
        self->gameInputMappingArray = gameInputMappingArray;
        [self update:self->NONE :self->NONE];
    return self;
}


- (void) update:(GameKey*)selectedGameKey :(Input*)selectedInput {
        PersistentInputMapping* gameKeyMapping = [[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance];
        const char* EQUAL = " = ";
        StringMaker* stringMaker = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        int32_t size = java_array_length(self->gameInputMappingArray);
        const char** keyInfo = ((const char**) java_array_new(sizeof(const char*), size));
        GameInputMapping* gameInputMapping = nullptr;
        GameKey* gameKey = nullptr;
        BasicArrayList* list = nullptr;
        for (int32_t index = 0; index < size; index++) {
            gameInputMapping = self->gameInputMappingArray[index];
            gameKey = [gameInputMapping getGameKey];
            list = [[gameKeyMapping getInputMapping] getMappedInput:gameKey];
            [stringMaker delete:0 :[stringMaker length]];
            keyInfo[index] = [[[[stringMaker append:[gameInputMapping getName]] append:EQUAL] append:[self get:list]] toString];
        }
        [super setInputInfoP:keyInfo];
}


- (const char*) get:(BasicArrayList*)keyList {
        CommonSeps* commonSeps = [CommonSeps getInstance];
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        const char* AND = "and ";
        Input* key = nullptr;
        int32_t size = [keyList size];
        for (int32_t index = 0; index < size; index++) {
            key = ((Input*) keyList->objectArray[index]);
            [stringBuffer append:[key getName]];
            if (index + 1 < [keyList size]) {
                if ([keyList size] == 2) {
                    [[stringBuffer append:commonSeps->SPACE] append:AND];
                } else {
                    if (index + 2 == [keyList size]) {
                        [stringBuffer append:commonSeps->COMMA_SEP];
                        [stringBuffer append:AND];
                    } else {
                        [stringBuffer append:commonSeps->COMMA_SEP];
                    }
                }
            }
        }
        return [stringBuffer toString];
}

@end

