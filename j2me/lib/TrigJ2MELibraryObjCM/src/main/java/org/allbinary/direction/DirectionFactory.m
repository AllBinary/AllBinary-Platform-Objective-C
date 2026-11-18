// Generated Code Do Not Modify
#include "org/allbinary/direction/DirectionFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonPhoneStrings.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/direction/Direction.h"


static DirectionFactory* DirectionFactory_instance;

void DirectionFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DirectionFactory_instance = [((DirectionFactory*) [DirectionFactory alloc]) init];
}

@implementation DirectionFactory

- (void) initFields {
    self->NAME = "DIRECTION";
    self->LEFT = [((Direction*) [Direction alloc]) init:[CommonPhoneStrings getInstance]->LEFT :"WEST" :0 :1];
    self->RIGHT = [((Direction*) [Direction alloc]) init:[CommonPhoneStrings getInstance]->RIGHT :"EAST" :1 :0];
    self->DOWN = [((Direction*) [Direction alloc]) init:[CommonPhoneStrings getInstance]->DOWN :"SOUTH" :2 :0];
    self->UP = [((Direction*) [Direction alloc]) init:[CommonPhoneStrings getInstance]->UP :"NORTH" :3 :0];
    
    
    
    
    self->NOT_BORDERED_WITH = [((Direction*) [Direction alloc]) init:"NOT_BORDERED_WITH" :"NOT_BORDERED_WITH" :8 :0];
    self->NO_DIRECTION = [((Direction*) [Direction alloc]) init:"NO_DIRECTION" :"NO_DIRECTION" :9 :0];
    self->TOP = [((Direction*) [Direction alloc]) init:"TOP" :"TOP" :10 :0];
    self->BOTTOM = [((Direction*) [Direction alloc]) init:"BOTTOM" :"BOTTOM" :11 :0];
    self->ALL_DIRECTION = [((Direction*) [Direction alloc]) init:"ALL_DIRECTION" :"ALL_DIRECTION" :12 :0];
}


+ (DirectionFactory*) getInstance {
        return (DirectionFactory_staticInit(), DirectionFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        CommonSeps* commonSeps = [CommonSeps getInstance];
        self->UP_LEFT = [((Direction*) [Direction alloc]) init:"UP LEFT" :[[[[stringBuffer append:[self->UP getOtherName]] append:commonSeps->SPACE] append:[self->LEFT getOtherName]] toString] :4 :0];
        [stringBuffer delete:0 :[stringBuffer length]];
        self->UP_RIGHT = [((Direction*) [Direction alloc]) init:"UP RIGHT" :[[[[stringBuffer append:[self->UP getOtherName]] append:commonSeps->SPACE] append:[self->RIGHT getOtherName]] toString] :5 :0];
        [stringBuffer delete:0 :[stringBuffer length]];
        self->DOWN_LEFT = [((Direction*) [Direction alloc]) init:"DOWN LEFT" :[[[[stringBuffer append:[self->DOWN getOtherName]] append:commonSeps->SPACE] append:[self->LEFT getOtherName]] toString] :6 :0];
        [stringBuffer delete:0 :[stringBuffer length]];
        self->DOWN_RIGHT = [((Direction*) [Direction alloc]) init:"DOWN RIGHT" :[[[[stringBuffer append:[self->DOWN getOtherName]] append:commonSeps->SPACE] append:[self->RIGHT getOtherName]] toString] :7 :0];
    return self;
}

@end

