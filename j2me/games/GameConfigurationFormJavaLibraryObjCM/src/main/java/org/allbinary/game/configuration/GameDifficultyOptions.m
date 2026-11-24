// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/GameDifficultyOptions.h"
#include "javax/microedition/lcdui/Choice.h"
#include "javax/microedition/lcdui/ChoiceGroup.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/NullImage.h"
#include "org/allbinary/MIDPUtil.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/game/configuration/persistance/GameDifficultyFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void GameDifficultyOptions_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameDifficultyOptions

- (void) initFields {
    self->meUtil = [MIDPUtil getInstance];
    
}


- (instancetype) init:(CommandListener*)commandListener :(const char*)title :(BasicArrayList*)list :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:commandListener :title :backgrounBasicColor :foregroundBasicColor];
        [self initFields];
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
        self->list = list;
        [self update];
        [self initCommands:commandListener];
        GameDifficultyFactory* gameDifficultyFactory = [GameDifficultyFactory getInstance];
        [self setSelectedId:[gameDifficultyFactory getLevel]];
    return self;
}


- (void) open {
        [super open];
}


// throws Exception
- (void) close {
        [super close];
        [self save];
}


// throws Exception
- (void) save {
        GameDifficultyFactory* gameDifficultyFactory = [GameDifficultyFactory getInstance];
        [gameDifficultyFactory setLevel:[self getSelectedId]];
}


- (void) initCommands:(CommandListener*)cmdListener {
        GameCommandsFactory* gameCommandsFactory = [GameCommandsFactory getInstance];
        [self removeAllCommands];
        [self addCommand:gameCommandsFactory->CLOSE_AND_SHOW_GAME_CANVAS];
        [self setCommandListener:cmdListener];
}


// throws Exception
- (void) update {
        [self deleteAll];
        [self add:self->list :"Difficulty" :(Choice_staticInit(), Choice_EXCLUSIVE)];
        [super update];
}


- (void) add:(BasicArrayList*)list :(const char*)name :(int32_t)option {
        ChoiceGroup* choiceGroup = [self getChoiceGroup:list :name :option];
        if ([list size] > 0) {
            [choiceGroup setSelectedIndex:0 :true];
        }
        [self->meUtil appendItem:self :choiceGroup];
}


- (ChoiceGroup*) getChoiceGroup:(BasicArrayList*)list :(const char*)name :(int32_t)option {
        const char* METHOD_NAME = "addChoiceGroup";
        const char* NAME = "Adding Choice: ";
        ChoiceGroup* choiceGroup = ((ChoiceGroup*) [((ChoiceGroup*) [ChoiceGroup alloc]) init:name :option :[[StringUtil getInstance] getArrayInstance] :(NullImage_staticInit(), NullImage_NULL_IMAGE_ARRAY)]);
        int32_t size = [list size];
        id anyType = nullptr;
        for (int32_t index = 0; index < size; index++) {
            anyType = list->objectArray[index];
            [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:NAME] append:[anyType toString]] toString] :self :METHOD_NAME];
            [choiceGroup append:[anyType toString] :(NullImage_staticInit(), NullImage_NULL_IMAGE)];
        }
        return choiceGroup;
}


- (void) setSelectedId:(int32_t)id_ {
        ChoiceGroup* choiceGroup = ((ChoiceGroup*) [self get:0]);
        [choiceGroup setSelectedIndex:id_ :true];
}


- (int32_t) getSelectedId {
        ChoiceGroup* choiceGroup = ((ChoiceGroup*) [self get:0]);
        return [choiceGroup getSelectedIndex];
}


- (int32_t) getSelectedText {
        ChoiceGroup* choiceGroup = ((ChoiceGroup*) [self get:0]);
        int32_t value = ((int32_t) (java_string_of([choiceGroup getString:[choiceGroup getSelectedIndex]])));
        return value;
}

@end

