// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/LoadGameForm.h"
#include "javax/microedition/lcdui/Choice.h"
#include "javax/microedition/lcdui/ChoiceGroup.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Item.h"
#include "javax/microedition/lcdui/NullImage.h"
#include "javax/microedition/lcdui/StringItem.h"
#include "org/allbinary/MIDPUtil.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/game/configuration/persistance/GamePersistanceSingleton.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/BasicArrayList.h"



void LoadGameForm_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LoadGameForm

- (void) initFields {
    self->meUtil = [MIDPUtil getInstance];
    self->areChoices = false;
}


- (instancetype) init:(CommandListener*)commandListener :(const char*)title :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:commandListener :title :backgrounBasicColor :foregroundBasicColor];
        [self initFields];
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
        [self update];
        [self initCommands:commandListener];
    return self;
}


- (void) initCommands:(CommandListener*)cmdListener {
        GameCommandsFactory* gameCommandsFactory = [GameCommandsFactory getInstance];
        [self removeAllCommands];
        [self addCommand:gameCommandsFactory->LOAD_FILE];
        [self addCommand:gameCommandsFactory->DELETE_FILE];
        [self addCommand:gameCommandsFactory->CLOSE_AND_SHOW_GAME_CANVAS];
        [self setCommandListener:cmdListener];
}


// throws Exception
- (void) update {
        BasicArrayList* list = [[GamePersistanceSingleton getInstance] getIds];
        [self deleteAll];
        if ([list size] > 0) {
            [self add:list :"Select A Saved Game" :(Choice_staticInit(), Choice_EXCLUSIVE)];
            self->areChoices = true;
        } else {
            [self->meUtil appendItem:self :[((StringItem*) [StringItem alloc]) init:"No Saved Games" :[StringUtil getInstance]->EMPTY_STRING :(Item_staticInit(), Item_PLAIN)]];
            self->areChoices = false;
        }
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
        const char* METHOD_NAME = "getChoiceGroup";
        const char* ADDING_CHOICE = "Adding Choice: ";
        ChoiceGroup* choiceGroup = [((ChoiceGroup*) [ChoiceGroup alloc]) init:name :option :[[StringUtil getInstance] getArrayInstance] :(NullImage_staticInit(), NullImage_NULL_IMAGE_ARRAY)];
        int32_t size = [list size];
        for (int32_t index = 0; index < size; index++) {
            id anyType = list->objectArray[index];
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:ADDING_CHOICE] append:[anyType toString]] toString] :self :METHOD_NAME];
            [choiceGroup append:[anyType toString] :(NullImage_staticInit(), NullImage_NULL_IMAGE)];
        }
        return choiceGroup;
}


- (int32_t) getSelectedId {
        if (self->areChoices) {
            ChoiceGroup* choiceGroup = ((ChoiceGroup*) [self get:0]);
            return [choiceGroup getSelectedIndex];
        } else {
            return -1;
        }
}


- (int32_t) getSelectedText {
        if (self->areChoices) {
            ChoiceGroup* choiceGroup = ((ChoiceGroup*) [self get:0]);
            int32_t value = ((int32_t) (java_string_of([choiceGroup getString:[choiceGroup getSelectedIndex]])));
            return value;
        } else {
            return -1;
        }
}

@end

