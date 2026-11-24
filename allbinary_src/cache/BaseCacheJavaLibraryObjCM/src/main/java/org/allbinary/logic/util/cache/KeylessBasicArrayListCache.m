// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/KeylessBasicArrayListCache.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/logic/util/cache/IndexedBasicArrayListCache.h"



void KeylessBasicArrayListCache_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation KeylessBasicArrayListCache

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->basicArrayListUtil = [BasicArrayListUtil getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (BasicArrayList*) get {
        JAVA_TRY {
            if (self->index >= [self->list size]) {
                [self addDefault];
            }
            BasicArrayList* list = ((BasicArrayList*) [self getAt:self->index++]);
            return list;
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->GET :e];
            return [self->basicArrayListUtil getImmutableInstance];
        } JAVA_END_TRY;
}


- (void) clear {
        [super clear];
        BasicArrayList* basicArrayList = nullptr;
        for (int32_t index = [self->list size] - 1; index >= 0; index--) {
            basicArrayList = (((BasicArrayList*) self->list->objectArray[index]));
            [basicArrayList clear];
        }
}


- (const char*) log {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"S: "];
        [stringBuffer appendint:[self->list size]];
        const char* S_LABEL = " s: ";
        BasicArrayList* basicArrayList = nullptr;
        for (int32_t index = [self->list size] - 1; index >= 0; index--) {
            [stringBuffer append:S_LABEL];
            basicArrayList = (((BasicArrayList*) self->list->objectArray[index]));
            [stringBuffer appendint:[basicArrayList size]];
        }
        return [stringBuffer toString];
}

@end

