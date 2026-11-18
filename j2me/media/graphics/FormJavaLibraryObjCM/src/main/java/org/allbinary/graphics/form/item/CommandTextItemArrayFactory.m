// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/CommandTextItemArrayFactory.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/ImageItem.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/form/ScreenInfo.h"
#include "org/allbinary/logic/VectorUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/util/visitor/Visitor.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/graphics/form/item/CommandTextItem.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"



void CommandTextItemArrayFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CommandTextItemArrayFactory

- (void) initFields {
    self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    
}


- (instancetype) init:(Visitor*)visitorInterface {
    self = [super init];
    [self initFields];
        self->visitorInterface = visitorInterface;
    return self;
}


- (ABCustomItem**) getInstance:(id)vector :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        VectorUtil* vectorUtil = [VectorUtil getInstance];
        int32_t size = [vectorUtil getSize:vector];
        [self->list clear];
        CommandTextItem* textItem = nullptr;
        int32_t priorityLimit = 7;
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        bool isLargeEnoughDisplayForBigMenu = ([displayInfo isPortrait] && [displayInfo getLastHeight] >= [ScreenInfo getInstance]->MEDIUM_WIDTH) || (![displayInfo isPortrait] && [displayInfo getLastWidth] >= [ScreenInfo getInstance]->MEDIUM_WIDTH);
        if (!isLargeEnoughDisplayForBigMenu && size > 3) {
            priorityLimit = 3;
        }
        Command* command = nullptr;
        for (int32_t index = 0; index < size; index++) {
            command = ((Command*) [vectorUtil elementAt:vector :index]);
            if ([command getPriority] < priorityLimit) {
                bool aBoolean = ((bool) [self->visitorInterface visit:command]);
                if (((bool) (aBoolean))) {
                    textItem = [((CommandTextItem*) [CommandTextItem alloc]) init:command :(ImageItem_staticInit(), ImageItem_LAYOUT_DEFAULT) :[StringUtil getInstance]->EMPTY_STRING :backgroundBasicColor :foregroundBasicColor];
                    [self->list add:textItem];
                }
            }
        }
        ABCustomItem** textItemArray = ((ABCustomItem**) java_array_new(sizeof(ABCustomItem*), [self->list size]));
        int32_t size2 = java_array_length(textItemArray);
        for (int32_t index = 0; index < size2; index++) {
            textItemArray[index] = ((ABCustomItem*) self->list->objectArray[index]);
        }
        return textItemArray;
}

@end

