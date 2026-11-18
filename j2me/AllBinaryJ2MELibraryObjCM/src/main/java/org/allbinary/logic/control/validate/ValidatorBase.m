// Generated Code Do Not Modify
#include "org/allbinary/logic/control/validate/ValidatorBase.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/logic/java/bool/BooleanFactory.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/logic/control/validate/ValidatorBaseInterface.h"


static ValidatorBase* ValidatorBase_instance;

void ValidatorBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ValidatorBase_instance = [((ValidatorBase*) [ValidatorBase alloc]) init];
}

@implementation ValidatorBase


+ (ValidatorBase*) getInstance {
        return (ValidatorBase_staticInit(), ValidatorBase_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (bool) isValid {
        return [BooleanFactory getInstance]->TRUE;
}


- (const char*) validationInfo {
        return [StringUtil getInstance]->EMPTY_STRING;
}


- (ABHashtable*) toHashtable {
        return [StdUtil getInstance]->NULL_TABLE;
}


- (BasicArrayList*) toList {
        return [[BasicArrayListUtil getInstance] getImmutableInstance];
}

@end

