// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/CustomTextBox.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/game/input/Input.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/game/input/PlatformKeyFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/form/item/validation/TextItemVisitor.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
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
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("javax/microedition/lcdui/Font.h")
#include "javax/microedition/lcdui/Font.h"
#endif



void CustomTextBox_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CustomTextBox

- (void) initFields {
    
    self->inputFactory = [InputFactory getInstance];
}


- (instancetype) init:(CommandListener*)cmdListener :(const char*)label :(const char*)text :(int32_t)maxSize :(int32_t)constraints :(Font*)font :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:cmdListener :label :backgroundBasicColor :foregroundBasicColor];
        [self initFields];
        StringUtil* stringUtil = [StringUtil getInstance];
        ABTextFieldItem* textFieldItem = ((ABTextFieldItem*) [((ABTextFieldItem*) [ABTextFieldItem alloc]) init:self :((TextItemVisitor*) [((TextItemVisitor*) [TextItemVisitor alloc]) init]) :stringUtil->EMPTY_STRING :stringUtil->EMPTY_STRING :maxSize :0 :stringUtil->EMPTY_STRING :font :backgroundBasicColor :foregroundBasicColor]);
        [textFieldItem setString:text];
        self->textFieldItem = textFieldItem;
        [self setTitle:label];
    return self;
}


- (void) submit {
}


- (void) onEventRaw:(int32_t)keyCode :(int32_t)deviceId :(bool)repeated {
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->commonStrings->START] appendint:keyCode] toString] :self :"onEvent"];
        [self keyPressedByDevice:keyCode :deviceId];
}


- (void) keyPressed:(int32_t)keyCode {
        [self keyPressedByDevice:keyCode :0];
}


- (void) keyReleased:(int32_t)keyCode {
        [self keyReleasedByDevice:keyCode :0];
}


- (void) keyRepeated:(int32_t)keyCode {
        [self keyRepeatedByDevice:keyCode :0];
}


- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId {
        JAVA_TRY {
            [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:[CommonSeps getInstance]->SPACE] appendint:keyCode] toString] :self :self->gameInputStrings->KEY_PRESSED];
            PlatformKeyFactory* platformKeyFactory = [PlatformKeyFactory getInstance];
            Input* input = [self->inputFactory getInstanceById:keyCode];
            if ([platformKeyFactory isSubmission:input]) {
                [self submit];
            } else {
                [self->textFieldItem keyPressed:keyCode];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->gameInputStrings->KEY_PRESSED :e];
        } JAVA_END_TRY;
}


- (void) keyReleasedByDevice:(int32_t)keyCode :(int32_t)deviceId {
}


- (void) paint:(Graphics*)graphics {
        [graphics setColor:self->backgroundColor];
        [graphics fillRect:0 :0 :[self->displayInfo getLastWidth] :[self->displayInfo getLastHeight]];
        [graphics setColor:self->foregroundColor];
        if (![J2MEUtil isJ2ME]) {
            [graphics drawString:[self getTitle] :8 :1 :0];
        }
        [self paintXY:graphics :8 :[[graphics getFont] getHeight] + 2];
        [super paint:graphics];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->textFieldItem paintXY:graphics :x :y];
}


- (ABTextFieldItem*) getTextFieldItem {
        return self->textFieldItem;
}

@end

