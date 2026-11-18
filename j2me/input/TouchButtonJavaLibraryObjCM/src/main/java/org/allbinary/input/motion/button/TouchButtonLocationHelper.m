// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonLocationHelper.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/input/motion/button/CommonButtons.h"



void TouchButtonLocationHelper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TouchButtonLocationHelper

- (void) initFields {
    
    
    
    
    
    
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        int32_t buttonSize = [CommonButtons getInstance]->STANDARD_BUTTON_SIZE;
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        self->totalColumns = ((int64_t) llround(((float) [displayInfo getLastWidth]) / ((float) buttonSize)));
        self->totalRows = ((int64_t) llround(((float) [displayInfo getLastHeight]) / ((float) buttonSize)));
        self->columnsRemainder = [displayInfo getLastWidth] % buttonSize;
        self->columnsRemainderHalf = (self->columnsRemainder >> 1);
        self->rowsRemainder = [displayInfo getLastHeight] % buttonSize;
        self->rowsRemainderHalf = (self->rowsRemainder >> 1);
    return self;
}


- (int32_t) getTotalColumns {
        return self->totalColumns;
}


- (int32_t) getTotalRows {
        return self->totalRows;
}


- (int32_t) getColumnsRemainder {
        return self->columnsRemainder;
}


- (int32_t) getRowsRemainder {
        return self->rowsRemainder;
}


- (int32_t) getColumnsRemainderHalf {
        return self->columnsRemainderHalf;
}


- (int32_t) getRowsRemainderHalf {
        return self->rowsRemainderHalf;
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:"totalColumns: "];
        [stringBuffer appendint:self->totalColumns];
        [stringBuffer append:" totalRows: "];
        [stringBuffer appendint:self->totalRows];
        [stringBuffer append:" columnsRemainder: "];
        [stringBuffer appendint:self->columnsRemainder];
        [stringBuffer append:" rowsRemainder: "];
        [stringBuffer appendint:self->rowsRemainder];
        [stringBuffer append:" columnsRemainderHalf: "];
        [stringBuffer appendint:self->columnsRemainderHalf];
        [stringBuffer append:" rowsRemainderHalf: "];
        [stringBuffer appendint:self->rowsRemainderHalf];
        return [stringBuffer toString];
}

@end

