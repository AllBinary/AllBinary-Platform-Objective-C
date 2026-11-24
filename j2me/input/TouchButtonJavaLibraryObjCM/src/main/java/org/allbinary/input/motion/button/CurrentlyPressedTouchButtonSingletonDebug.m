// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingletonDebug.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/input/motion/button/CurrentlyPressedTouchButtonSingleton.h"
#include "org/allbinary/input/motion/button/TouchButtonInput.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
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
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
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


static CurrentlyPressedTouchButtonSingletonDebug* CurrentlyPressedTouchButtonSingletonDebug_instanceC;

void CurrentlyPressedTouchButtonSingletonDebug_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CurrentlyPressedTouchButtonSingletonDebug_instanceC = ((CurrentlyPressedTouchButtonSingletonDebug*) [((CurrentlyPressedTouchButtonSingletonDebug*) [CurrentlyPressedTouchButtonSingletonDebug alloc]) init]);
}

@implementation CurrentlyPressedTouchButtonSingletonDebug

- (void) initFields {
    self->string = [StringUtil getInstance]->EMPTY_STRING;
    self->listString = [StringUtil getInstance]->EMPTY_STRING;
    self->appendText = [StringUtil getInstance]->EMPTY_STRING;
    self->PRESSED_AND_FIRED = "pressed & fired";
    self->PRESSED_AND_NOT_FIRED = "pressed in button but not fired";
    self->ASSOCIATED_RELEASED_AND_FIRED = "assoc. rel & fired";
    self->RELEASED_AND_FIRED = "rel & fired 1";
    self->RELEASED_AND_FIRED_2 = "rel & fired 2";
    self->RELEASED_AND_NOT_FIRED = "rel & not fired";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CurrentlyPressedTouchButtonSingleton*) getInstance {
        return (CurrentlyPressedTouchButtonSingletonDebug_staticInit(), CurrentlyPressedTouchButtonSingletonDebug_instanceC);
}


- (void) appendTouchButtonInput:(const char*)append :(TouchButtonInput*)touchButtonInput {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:[touchButtonInput toString]];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:append];
        self->appendText = [stringBuffer toString];
        self->string = [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->listString] append:self->appendText] toString];
}


- (void) append:(const char*)append {
        self->appendText = [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->appendText] append:append] toString];
        self->string = [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->listString] append:self->appendText] toString];
}


- (void) clearLog:(int32_t)x :(int32_t)y {
        self->appendText = [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:[GPoint toStringStatic:x :y :0]] append:[CommonSeps getInstance]->SPACE] toString];
        self->string = [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->listString] append:self->appendText] toString];
}


- (void) releaseAndNotFired {
        [self append:self->RELEASED_AND_NOT_FIRED];
}


- (void) releaseAndFired:(TouchButtonInput*)touchButtonInput {
        [self appendTouchButtonInput:self->RELEASED_AND_FIRED :touchButtonInput];
}


- (void) releaseAndFired2:(TouchButtonInput*)touchButtonInput {
        [self appendTouchButtonInput:self->RELEASED_AND_FIRED_2 :touchButtonInput];
}


- (void) releaseAndFiredAssociated:(TouchButtonInput*)touchButtonInput {
        [self appendTouchButtonInput:self->ASSOCIATED_RELEASED_AND_FIRED :touchButtonInput];
}


- (void) pressedAndFired:(TouchButtonInput*)touchButtonInput {
        [self appendTouchButtonInput:self->PRESSED_AND_FIRED :touchButtonInput];
}


- (void) pressedAndNotFired:(TouchButtonInput*)touchButtonInput {
        [self appendTouchButtonInput:self->PRESSED_AND_NOT_FIRED :touchButtonInput];
}


- (TouchButtonInput*) removeAt:(int32_t)index {
        TouchButtonInput* touchButtonInput = [super removeAt:index];
        self->listString = [self->list toString];
        self->string = [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->listString] append:self->appendText] toString];
        return touchButtonInput;
}


- (bool) remove:(TouchButtonInput*)touchButtonInput {
        bool isRemoved = [super remove:touchButtonInput];
        self->listString = [self->list toString];
        self->string = [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->listString] append:self->appendText] toString];
        return isRemoved;
}


- (void) add:(TouchButtonInput*)touchButtonInput {
        [super add:touchButtonInput];
        self->listString = [self->list toString];
        self->string = [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->listString] append:self->appendText] toString];
}


- (const char*) toString {
        return self->string;
}

@end

