// Generated Code Do Not Modify
#include "org/allbinary/util/HashtableUtil.h"
#include "org/allbinary/util/EnumerationUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayListS.h"
#include "org/allbinary/util/BasicArrayList.h"


static HashtableUtil* HashtableUtil_instance;

void HashtableUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    HashtableUtil_instance = [((HashtableUtil*) [HashtableUtil alloc]) init];
}

@implementation HashtableUtil

- (void) initFields {
    self->enumerationUtil = [EnumerationUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (HashtableUtil*) getInstance {
        return (HashtableUtil_staticInit(), HashtableUtil_instance);
}


- (void) putAll:(ABHashtable*)fromHashtable :(ABHashtable*)hashtable {
        Enumeration* enumeration = [fromHashtable keys];
        id keyCanBeNull = nullptr;
        id valueCanBeNull = nullptr;
        while ([self->enumerationUtil hasMoreElements:enumeration]) {
            keyCanBeNull = [self->enumerationUtil nextElement:enumeration];
            valueCanBeNull = [hashtable get:JAVA_BOX(keyCanBeNull)];
            if (valueCanBeNull == nil) {
            } else {
                [hashtable put:JAVA_BOX(keyCanBeNull) :JAVA_BOX(valueCanBeNull)];
            }
        }
}


- (id*) getKeysAsArray:(ABHashtable*)hashtable {
        id* objectArray = ((id*) java_array_new(sizeof(id), [hashtable size]));
        int32_t index = 0;
        Enumeration* enumeration = [hashtable keys];
        while ([self->enumerationUtil hasMoreElements:enumeration]) {
            objectArray[index++] = [self->enumerationUtil nextElement:enumeration];
        }
        return objectArray;
}


- (BasicArrayList*) getKeysAsList:(ABHashtable*)hashtable {
        BasicArrayList* list = [((BasicArrayListS*) [BasicArrayListS alloc]) init:[hashtable size]];
        Enumeration* enumeration = [hashtable keys];
        while ([self->enumerationUtil hasMoreElements:enumeration]) {
            [list add:[self->enumerationUtil nextElement:enumeration]];
        }
        return list;
}

@end

