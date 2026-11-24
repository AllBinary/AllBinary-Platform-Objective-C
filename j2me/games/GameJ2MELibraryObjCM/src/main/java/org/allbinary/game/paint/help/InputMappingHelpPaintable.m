// Generated Code Do Not Modify
#include "org/allbinary/game/paint/help/InputMappingHelpPaintable.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#include "org/allbinary/game/input/Input.h"
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#include "org/allbinary/game/input/mapping/GameInputMapping.h"
#include "org/allbinary/game/input/mapping/PersistentInputMapping.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/color/BasicColorUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/paint/help/HelpPaintable.h"
#include "org/allbinary/game/paint/help/UpdateMyFontProperties.h"
#if __has_include("org/allbinary/game/input/GameKeyFactory.h")
#include "org/allbinary/game/input/GameKeyFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorUtil.h")
#include "org/allbinary/graphics/color/BasicColorUtil.h"
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
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif
#if __has_include("org/allbinary/game/input/PlatformInputMappingFactory.h")
#include "org/allbinary/game/input/PlatformInputMappingFactory.h"
#endif
#if __has_include("org/allbinary/game/paint/help/InputToGameKeyMapping.h")
#include "org/allbinary/game/paint/help/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
#endif
#if __has_include("javax/microedition/lcdui/InputToGameKeyMapping.h")
#include "javax/microedition/lcdui/InputToGameKeyMapping.h"
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
#if __has_include("org/allbinary/graphics/color/InputToGameKeyMapping.h")
#include "org/allbinary/graphics/color/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/InputToGameKeyMapping.h")
#include "org/allbinary/logic/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/InputToGameKeyMapping.h")
#include "org/allbinary/logic/communication/log/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/InputToGameKeyMapping.h")
#include "org/allbinary/logic/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/string/InputToGameKeyMapping.h")
#include "org/allbinary/logic/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/string/InputToGameKeyMapping.h")
#include "org/allbinary/string/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/string/InputToGameKeyMapping.h")
#include "org/allbinary/string/InputToGameKeyMapping.h"
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
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif


static const char* InputMappingHelpPaintable_AND = " and ";
static const char* InputMappingHelpPaintable_SEP = ", ";
static const char* InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_AND = ", and ";

void InputMappingHelpPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation InputMappingHelpPaintable

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->commonSeps = [CommonSeps getInstance];
    self->stringUtil = [StringUtil getInstance];
    self->basicColorFactory = [BasicColorFactory getInstance];
    self->NONE = [GameKeyFactory getInstance]->NONE;
    self->EMPTY_STRING = [StringUtil getInstance]->EMPTY_STRING;
    
    self->keyMappingArray = ((BasicArrayList**) java_array_new(sizeof(BasicArrayList*), 0));
    self->actionBasicColor = [BasicColorUtil getInstance]->ZERO_ARRAY;
    self->inputBasicColorArray = ((BasicColor***) java_array_new2(sizeof(BasicColor*), 0, 0));
    self->selectedBasicColor = nullptr;
    self->updateMyFontProperties = ((UpdateMyFontProperties*) [((UpdateMyFontProperties*) [UpdateMyFontProperties alloc]) init]);
}


- (instancetype) init:(GameInputMapping**)gameInputMappingArray :(BasicColor*)backgroundBasicColor :(BasicColor*)basicColor {
        self = [super init:"Input Mapping" :backgroundBasicColor :basicColor];
        [self initFields];
        self->gameInputMappingArray = gameInputMappingArray;
        [self update:self->NONE :self->NONE];
        if (backgroundBasicColor == self->basicColorFactory->WHITE || basicColor == self->basicColorFactory->WHITE) {
            self->selectedBasicColor = self->basicColorFactory->RED;
        } else {
            self->selectedBasicColor = self->basicColorFactory->WHITE;
        }
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        UpdateMyFontProperties* updateMyFontProperties = ((UpdateMyFontProperties*) [((UpdateMyFontProperties*) [UpdateMyFontProperties alloc]) init]);
        updateMyFontProperties->charHeight = [font getHeight];
        StringMaker* stringMaker = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        const char** inputInfo = self->inputInfo;
        int32_t size = java_array_length(inputInfo);
        updateMyFontProperties->actionStringArray = ((const char**) java_array_new(sizeof(const char*), size));
        updateMyFontProperties->keymappingBeginWidthArray = ((int32_t*) java_array_new(sizeof(int32_t), size));
        updateMyFontProperties->actionStringDeltaXArray = ((int32_t*) java_array_new(sizeof(int32_t), size));
        updateMyFontProperties->inputDeltaXArray = ((int32_t**) java_array_new2(sizeof(int32_t), size, 0));
        updateMyFontProperties->sepArray = ((const char***) java_array_new2(sizeof(const char*), size, 0));
        updateMyFontProperties->sepWidthArray = ((int32_t**) java_array_new2(sizeof(int32_t), size, 0));
        BasicArrayList* list = nullptr;
        const char* keyMappings = nullptr;
        const char* actionString = nullptr;
        Input* input = nullptr;
        int32_t size2 = 0;
        for (int32_t index = 0; index < size; index++) {
            list = self->keyMappingArray[index];
            keyMappings = [self get:list];
            [stringMaker delete:0 :[stringMaker length]];
            actionString = [[[[[stringMaker append:inputInfo[index]] append:self->commonSeps->COLON] append:self->commonSeps->SPACE] append:self->commonSeps->SPACE] toString];
            updateMyFontProperties->actionStringArray[index] = actionString;
            [stringMaker delete:0 :[stringMaker length]];
            updateMyFontProperties->keymappingBeginWidthArray[index] = ([font stringWidth:[[[stringMaker append:updateMyFontProperties->actionStringArray[index]] append:keyMappings] toString]] >> 1);
            updateMyFontProperties->actionStringDeltaXArray[index] = [font stringWidth:actionString];
            size2 = [list size];
            updateMyFontProperties->inputDeltaXArray[index] = ((int32_t*) java_array_new(sizeof(int32_t), size2));
            updateMyFontProperties->sepArray[index] = ((const char**) java_array_new(sizeof(const char*), size2));
            updateMyFontProperties->sepWidthArray[index] = ((int32_t*) java_array_new(sizeof(int32_t), size2));
            for (int32_t index2 = 0; index2 < size2; index2++) {
                input = ((Input*) list->objectArray[index2]);
                updateMyFontProperties->inputDeltaXArray[index][index2] = [font stringWidth:[input getName]];
                updateMyFontProperties->sepArray[index][index2] = self->EMPTY_STRING;
                if (index2 + 1 < [list size]) {
                    if ([list size] == 2) {
                        updateMyFontProperties->sepArray[index][index2] = InputMappingHelpPaintable_AND;
                    } else {
                        if (index2 + 2 == [list size]) {
                            updateMyFontProperties->sepArray[index][index2] = InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_AND;
                        } else {
                            updateMyFontProperties->sepArray[index][index2] = InputMappingHelpPaintable_SEP;
                        }
                    }
                }
                if (updateMyFontProperties->sepArray[index][index2] != self->EMPTY_STRING) {
                    updateMyFontProperties->sepWidthArray[index][index2] = [font stringWidth:updateMyFontProperties->sepArray[index][index2]];
                }
            }
        }
        self->updateMyFontProperties = updateMyFontProperties;
        [super updateMeasurement:graphics];
}


- (void) update:(GameKey*)selectedGameKey :(Input*)selectedInput {
        StringMaker* stringMaker = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [self->logUtil putF:[[[[[[stringMaker append:[CommonLabels getInstance]->START_LABEL] append:"selected GameKey: "] append:[self->stringUtil toString:selectedGameKey]] append:" Input: "] append:[self->stringUtil toString:selectedInput]] toString] :self :self->commonStrings->UPDATE];
        PersistentInputMapping* gameKeyMapping = [[PlatformInputMappingFactory getInstance] getPersistentInputMappingInstance];
        int32_t size = java_array_length(self->gameInputMappingArray);
        const char** keyInfo = ((const char**) java_array_new(sizeof(const char*), size));
        BasicArrayList** keyMappingArray = ((BasicArrayList**) java_array_new(sizeof(BasicArrayList*), size));
        BasicColor** actionBasicColor = ((BasicColor**) java_array_new(sizeof(BasicColor*), size));
        BasicColor*** inputBasicColorArray = ((BasicColor***) java_array_new(sizeof(BasicColor**), size));
        GameInputMapping* gameInputMapping = nullptr;
        GameKey* gameKey = nullptr;
        BasicArrayList* list = nullptr;
        for (int32_t index = 0; index < size; index++) {
            gameInputMapping = self->gameInputMappingArray[index];
            gameKey = [gameInputMapping getGameKey];
            list = [[gameKeyMapping getInputMapping] getMappedInput:gameKey];
            int32_t size2 = [list size];
            inputBasicColorArray[index] = ((BasicColor**) java_array_new(sizeof(BasicColor*), size2));
            for (int32_t index2 = 0; index2 < size2; index2++) {
                inputBasicColorArray[index][index2] = self->basicColor;
            }
            if (gameKey == selectedGameKey) {
                [stringMaker delete:0 :[stringMaker length]];
                [self->logUtil putF:[[[stringMaker append:"Found: selected GameKey: "] append:[self->stringUtil toString:selectedGameKey]] toString] :self :self->commonStrings->UPDATE];
                actionBasicColor[index] = self->selectedBasicColor;
                int32_t indexOfSelectedInput = [list indexOf:selectedInput];
                if (indexOfSelectedInput >= 0) {
                    [stringMaker delete:0 :[stringMaker length]];
                    [self->logUtil putF:[[[stringMaker append:"Found: selected Input: "] append:[self->stringUtil toString:selectedInput]] toString] :self :self->commonStrings->UPDATE];
                    inputBasicColorArray[index][indexOfSelectedInput] = self->selectedBasicColor;
                }
            } else {
                actionBasicColor[index] = self->basicColor;
            }
            keyInfo[index] = [gameInputMapping getName];
            keyMappingArray[index] = list;
        }
        self->keyMappingArray = keyMappingArray;
        self->actionBasicColor = actionBasicColor;
        self->inputBasicColorArray = inputBasicColorArray;
        [super setInputInfoP:keyInfo];
        self->myFontProcessor = self->updateMyFontProcessor;
}


- (const char*) get:(BasicArrayList*)keyList {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        Input* key = nullptr;
        int32_t size = [keyList size];
        for (int32_t index = 0; index < size; index++) {
            key = ((Input*) keyList->objectArray[index]);
            [stringBuffer append:[key getName]];
            if (index + 1 < [keyList size]) {
                if ([keyList size] == 2) {
                    [stringBuffer append:InputMappingHelpPaintable_AND];
                } else {
                    if (index + 2 == [keyList size]) {
                        [stringBuffer append:InputMappingHelpPaintable_MORE_THAN_TWO_IN_LIST_AND];
                    } else {
                        [stringBuffer append:InputMappingHelpPaintable_SEP];
                    }
                }
            }
        }
        return [stringBuffer toString];
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        int32_t halfWidth = [self->displayInfo getLastHalfWidth];
        [graphics setColor:[self->basicColor intValue]];
        [graphics drawString:self->title :halfWidth - self->titleBeginWidth :self->updateMyFontProperties->charHeight :self->anchor];
        const char** inputInfo = self->inputInfo;
        int32_t size = java_array_length(inputInfo);
        int32_t y = 0;
        int32_t deltaX = 0;
        int32_t size2 = 0;
        const char* actionString = nullptr;
        Input* input = nullptr;
        BasicArrayList* list = nullptr;
        const char* sep = nullptr;
        int32_t beginWidth = 0;
        for (int32_t index = 0; index < size; index++) {
            y = (index + 3) * self->updateMyFontProperties->charHeight;
            deltaX = 0;
            list = self->keyMappingArray[index];
            size2 = [list size];
            beginWidth = self->updateMyFontProperties->keymappingBeginWidthArray[index];
            [graphics setColor:[self->actionBasicColor[index] intValue]];
            actionString = self->updateMyFontProperties->actionStringArray[index];
            [graphics drawString:actionString :halfWidth - beginWidth + deltaX :y :self->anchor];
            deltaX += self->updateMyFontProperties->actionStringDeltaXArray[index];
            for (int32_t index2 = 0; index2 < size2; index2++) {
                input = ((Input*) list->objectArray[index2]);
                [graphics setColor:[self->inputBasicColorArray[index][index2] intValue]];
                [graphics drawString:[input getName] :halfWidth - beginWidth + deltaX :y :self->anchor];
                deltaX += self->updateMyFontProperties->inputDeltaXArray[index][index2];
                sep = self->updateMyFontProperties->sepArray[index][index2];
                [graphics setColor:[self->basicColor intValue]];
                [graphics drawString:sep :halfWidth - beginWidth + deltaX :y :self->anchor];
                deltaX += self->updateMyFontProperties->sepWidthArray[index][index2];
            }
        }
}

@end

