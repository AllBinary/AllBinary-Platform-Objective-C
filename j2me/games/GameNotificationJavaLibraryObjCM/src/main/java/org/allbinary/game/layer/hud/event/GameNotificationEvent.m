// Generated Code Do Not Modify
#include "org/allbinary/game/layer/hud/event/GameNotificationEvent.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/string/StringUtil.h"



void GameNotificationEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameNotificationEvent

- (void) initFields {
    self->string = [StringUtil getInstance]->EMPTY_STRING;
    
    self->basicColor = [BasicColorFactory getInstance]->BLACK;
    
}


- (instancetype) init:(id)anyType :(const char*)string :(int32_t)seconds :(BasicColor*)basicColor :(bool)permanent {
        self = [super init:anyType];
        [self initFields];
        [self setString:string];
        self->seconds = seconds;
        [self setBasicColorP:basicColor];
        self->removeable = permanent;
    return self;
}


- (const char*) getString {
        return self->string;
}


- (int32_t) getSeconds {
        return self->seconds;
}


- (BasicColor*) getBasicColorP {
        return self->basicColor;
}


- (bool) getPermanent {
        return self->removeable;
}


- (void) setString:(const char*)string {
        self->string = string;
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        self->basicColor = basicColor;
}

@end

