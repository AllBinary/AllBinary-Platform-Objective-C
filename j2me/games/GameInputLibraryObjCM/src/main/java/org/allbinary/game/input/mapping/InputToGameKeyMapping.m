// Generated Code Do Not Modify
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#include "org/allbinary/game/input/Input.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/input/mapping/InputMapping.h"


static id InputToGameKeyMapping_instance;

void InputToGameKeyMapping_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    InputToGameKeyMapping_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation InputToGameKeyMapping

- (void) initFields {
    self->gameKeyFactory = [GameKeyFactory getInstance];
    self->mappedGameKeys = ((GameKey**) java_array_from(sizeof(GameKey*), sizeof((GameKey*[]){ self->gameKeyFactory->UP, self->gameKeyFactory->DOWN, self->gameKeyFactory->LEFT, self->gameKeyFactory->RIGHT }) / sizeof(GameKey*), (GameKey*[]){ self->gameKeyFactory->UP, self->gameKeyFactory->DOWN, self->gameKeyFactory->LEFT, self->gameKeyFactory->RIGHT }));
    self->platformToGameKeyMapping = ((GameKey**) java_array_new(sizeof(GameKey*), [InputFactory getInstance]->MAX));
    self->negativePlatformToGameKeyMapping = ((GameKey**) java_array_new(sizeof(GameKey*), 0));
}


+ (InputToGameKeyMapping*) getNullInstance {
        if ((InputToGameKeyMapping_staticInit(), InputToGameKeyMapping_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            InputToGameKeyMapping_instance = [((InputToGameKeyMapping*) [InputToGameKeyMapping alloc]) init];
        }
        return ((InputToGameKeyMapping*) (InputToGameKeyMapping_staticInit(), InputToGameKeyMapping_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
        [self clear];
    return self;
}


- (void) clear {
        for (int32_t index = java_array_length(self->platformToGameKeyMapping) - 1; index >= 0; index--) {
            self->platformToGameKeyMapping[index] = self->gameKeyFactory->NONE;
        }
}


- (void) removeAll {
        [super removeAll];
        [self clear];
}


- (void) addMapping:(InputToGameKeyMapping*)inputToGameKeyMapping {
        for (int32_t index = [inputToGameKeyMapping getMaxMappable] - 1; index >= 0; index--) {
            Input* input = [inputToGameKeyMapping getInstance:index];
            if (input != self->gameKeyFactory->NONE) {
                [self addAll:input :[inputToGameKeyMapping getMappedInput:input]];
            }
        }
}


- (void) addAll:(Input*)input :(BasicArrayList*)list {
        for (int32_t index = [list size] - 1; index >= 0; index--) {
            Input* mappedToInput = ((Input*) list->objectArray[index]);
            [self add:input :mappedToInput];
        }
}


- (void) add:(Input*)input :(Input*)mappedToInput {
        [super add:input :mappedToInput];
        [self set:input :mappedToInput];
}


- (void) remove:(Input*)input :(Input*)mappedToInput {
        [self->logUtil putF:[[[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->START_LABEL] append:[[StringUtil getInstance] toString:input]] append:" == "] append:[[StringUtil getInstance] toString:mappedToInput]] toString] :self :"InputToGameKeyMapping::remove"];
        [super remove:input :mappedToInput];
        [self set:input :self->gameKeyFactory->NONE];
}


- (void) set:(Input*)input :(Input*)mappedToInput {
        int32_t id_ = [mappedToInput getId];
        if (id_ >= 0 && id_ < java_array_length(self->platformToGameKeyMapping)) {
            self->platformToGameKeyMapping[id_] = ((GameKey*) input);
        }
}


- (int32_t) getMaxMappable {
        return java_array_length(self->platformToGameKeyMapping);
}


- (BasicArrayList*) getReverseInstance:(int32_t)id_ {
        BasicArrayList* list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
        InputFactory* inputFactory = [InputFactory getInstance];
        for (int32_t index = 0; index < java_array_length(self->platformToGameKeyMapping); index++) {
            if ([self->platformToGameKeyMapping[index] getId] == id_) {
                Input* input = [inputFactory getInstanceById:index];
                if (input != nil) {
                    [list add:input];
                }
            }
        }
        return list;
}


// throws Exception
- (void) initGameKey:(Canvas*)canvas :(GameKey*)gameKey {
        int32_t key = [canvas getKeyCode:[gameKey getId]];
        if (key < 0 && -key < java_array_length(self->negativePlatformToGameKeyMapping)) {
            self->negativePlatformToGameKeyMapping[-key] = gameKey;
        } else if (key > 0) {
            if (self->platformToGameKeyMapping[key] == self->gameKeyFactory->NONE) {
                self->platformToGameKeyMapping[key] = gameKey;
            }
        } else {
            [PreLogUtil putOE:[[[[[((StringMaker*) [StringMaker alloc]) init] append:[gameKey toString]] append:[CommonSeps getInstance]->COLON_SEP] appendint:key] toString] :self :self->commonStrings->INIT :java_exception_new("Exception", "")];
        }
}


// throws Exception
- (int32_t) getSmallestCanvasGameKeyCode:(Canvas*)canvas {
        int32_t nextKey = 0;
        int32_t smallestKey = 0;
        for (int32_t index = java_array_length(self->mappedGameKeys); --index >= 0; ) {
            nextKey = [canvas getKeyCode:[self->mappedGameKeys[index] getId]];
            if (nextKey < smallestKey) {
                smallestKey = nextKey;
            }
        }
        return smallestKey;
}


- (void) init_:(Canvas*)canvas {
        JAVA_TRY {
            GameKey** negativePlatformToGameKeyMapping = ((GameKey**) java_array_new(sizeof(GameKey*), 0));
            int32_t smallestKey = [self getSmallestCanvasGameKeyCode:canvas];
            if (smallestKey < 0) {
                smallestKey--;
                if (smallestKey < -256) {
                    smallestKey = -256;
                }
                negativePlatformToGameKeyMapping = ((GameKey**) java_array_new(sizeof(GameKey*), -smallestKey));
                for (int32_t index = java_array_length(negativePlatformToGameKeyMapping); --index >= 0; ) {
                    negativePlatformToGameKeyMapping[index] = self->gameKeyFactory->NONE;
                }
                self->negativePlatformToGameKeyMapping = negativePlatformToGameKeyMapping;
            }
            for (int32_t index = java_array_length(self->mappedGameKeys); --index >= 0; ) {
                [self initGameKey:canvas :self->mappedGameKeys[index]];
            }
        } JAVA_CATCH(Throwable, t) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->INIT :t];
        } JAVA_END_TRY;
}


- (GameKey*) getInstanceForCanvas:(Canvas*)canvas :(int32_t)id_ {
        if (id_ >= 0 && id_ < java_array_length(self->platformToGameKeyMapping)) {
            return self->platformToGameKeyMapping[id_];
        } else if (id_ < 0 && -id_ < java_array_length(self->negativePlatformToGameKeyMapping)) {
            return self->negativePlatformToGameKeyMapping[-id_];
        } else {
            return self->gameKeyFactory->NONE;
        }
}


- (GameKey*) getInstance:(int32_t)id_ {
        if (id_ >= 0 && id_ < java_array_length(self->platformToGameKeyMapping)) {
            return self->platformToGameKeyMapping[id_];
        } else if (id_ < 0 && -id_ < java_array_length(self->negativePlatformToGameKeyMapping)) {
            return self->negativePlatformToGameKeyMapping[-id_];
        } else {
            return self->gameKeyFactory->NONE;
        }
}

@end

