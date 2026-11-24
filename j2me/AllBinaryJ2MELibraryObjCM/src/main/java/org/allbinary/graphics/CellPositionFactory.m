// Generated Code Do Not Modify
#include "org/allbinary/graphics/CellPositionFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/graphics/CellPosition.h"
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


static CellPositionFactory* CellPositionFactory_SINGLETON;

void CellPositionFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CellPositionFactory_SINGLETON = ((CellPositionFactory*) [((CellPositionFactory*) [CellPositionFactory alloc]) init]);
}

@implementation CellPositionFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->NONE = ((CellPosition*) [((CellPosition*) [CellPosition alloc]) init:-1 :-1 :-1 :-1]);
    self->cellPositionArray = ((CellPosition***) java_array_new2(sizeof(CellPosition*), 0, 0));
    self->columns = 0;
    self->rows = 0;
}


+ (CellPositionFactory*) getInstance {
        return (CellPositionFactory_staticInit(), CellPositionFactory_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) initMethod:(int32_t)columns :(int32_t)rows {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"Init: columns: "];
        [stringBuffer appendint:columns];
        [stringBuffer append:" rows: "];
        [stringBuffer appendint:rows];
        [self->logUtil putF:[stringBuffer toString] :self :commonStrings->INIT];
        self->cellPositionArray = ((CellPosition***) java_array_new2(sizeof(CellPosition*), columns, rows));
        self->columns = columns;
        self->rows = rows;
        for (int32_t column = 0; column < columns; column++) {
            for (int32_t row = 0; row < rows; row++) {
                [self createInstance:column :row];
            }
        }
}


- (CellPosition*) getInstanceColRow:(int32_t)i_column :(int32_t)i_row {
        JAVA_TRY {
            return self->cellPositionArray[i_column][i_row];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:[[[[[[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"columns: "] appendint:[self getColumns]] append:" rows: "] appendint:[self getRows]] append:" col: "] appendint:i_column] append:" row: "] appendint:i_row] toString] :self :commonStrings->GET_INSTANCE :e];
            return self->NONE;
        } JAVA_END_TRY;
}


- (CellPosition*) createInstance:(int32_t)i_column :(int32_t)i_row {
        CellPosition* cellPositionCanBeNull = self->cellPositionArray[i_column][i_row];
        if (cellPositionCanBeNull == nil) {
            cellPositionCanBeNull = ((CellPosition*) [((CellPosition*) [CellPosition alloc]) init:i_column :i_row :self->columns :self->rows]);
            self->cellPositionArray[i_column][i_row] = cellPositionCanBeNull;
        }
        return cellPositionCanBeNull;
}


- (int32_t) getColumns {
        return self->columns;
}


- (int32_t) getRows {
        return self->rows;
}

@end

