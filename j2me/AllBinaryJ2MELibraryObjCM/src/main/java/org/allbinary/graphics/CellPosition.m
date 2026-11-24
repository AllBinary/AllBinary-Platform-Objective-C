// Generated Code Do Not Modify
#include "org/allbinary/graphics/CellPosition.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"



void CellPosition_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CellPosition

- (void) initFields {
    
    
    
}


- (instancetype) init:(int32_t)column :(int32_t)row :(int32_t)columns :(int32_t)rows {
    self = [super init];
    [self initFields];
        self->column = column;
        self->row = row;
        self->id_ = (row * columns) + column;
    return self;
}


- (int32_t) getColumn {
        return self->column;
}


- (int32_t) getRow {
        return self->row;
}


- (const char*) toString {
        return [CellPosition toStringColRow:[self getColumn] :[self getRow]];
}


+ (const char*) toStringCellPosition:(CellPosition*)basicGeographicMapCellPosition {
        return [CellPosition toStringColRow:[basicGeographicMapCellPosition getColumn] :[basicGeographicMapCellPosition getRow]];
}


+ (const char*) toStringColRow:(int32_t)i_column :(int32_t)i_row {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        CommonSeps* commonSeps = [CommonSeps getInstance];
        [stringBuffer append:commonSeps->PARENTHESIS_OPEN];
        [stringBuffer appendint:i_column];
        [stringBuffer append:commonSeps->COMMA];
        [stringBuffer appendint:i_row];
        [stringBuffer append:commonSeps->PARENTHESIS_CLOSE];
        return [stringBuffer toString];
}


- (int32_t) getId {
        return self->id_;
}

@end

