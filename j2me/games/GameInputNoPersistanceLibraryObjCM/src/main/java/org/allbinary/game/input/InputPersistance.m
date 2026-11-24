// Generated Code Do Not Modify
#include "org/allbinary/game/input/InputPersistance.h"
#include "javax/microedition/rms/RecordEnumeration.h"
#include "javax/microedition/rms/RecordStore.h"
#include "org/allbinary/game/configuration/persistance/NullRecordComparator.h"
#include "org/allbinary/game/configuration/persistance/NullRecordFilter.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/HashtableUtil.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/input/Input.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void InputPersistance_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation InputPersistance

- (void) initFields {
    self->hashtableUtil = [HashtableUtil getInstance];
}


- (instancetype) init:(const char*)name {
        self = [super init:name];
        [self initFields];
    return self;
}


// throws Exception
- (void) loadAll:(AbeClientInformationInterface*)abeClientInformation {
        RecordStore* recordStore = [RecordStore openRecordStore:[self getRecordId:abeClientInformation] :true];
        RecordEnumeration* recordEnum = [recordStore enumerateRecords:(NullRecordFilter_staticInit(), NullRecordFilter_NULL_RECORD_FILTER) :(NullRecordComparator_staticInit(), NullRecordComparator_NULL_RECORD_COMPARATOR) :true];
        ABHashtable* hashtable = nullptr;
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        SmallIntegerSingletonFactory* smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
        int32_t id_ = 0;
        while ([((id<RecordEnumeration>) recordEnum) hasNextElement]) {
            id_ = [((id<RecordEnumeration>) recordEnum) nextRecordId];
            [stringBuffer delete:0 :[stringBuffer length]];
            [self->logUtil putF:[[[stringBuffer append:self->persistanceStrings->LOADING_ID] appendint:id_] toString] :self :self->persistanceStrings->LOAD_ALL];
            hashtable = [[StdUtil getInstance] createHashtable];
            [self->valueList add:hashtable];
            [self->idList add:JAVA_BOX([smallIntegerSingletonFactory getAt:id_])];
        }
        [recordStore closeRecordStore];
}


// throws Exception
- (void) save:(AbeClientInformationInterface*)abeClientInformation :(ABHashtable*)hashtable {
        [PreLogUtil put:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->persistanceStrings->NOT_SAVING] append:[[StringUtil getInstance] toString:hashtable]] toString] :self :self->commonStrings->SAVE];
        RecordStore* recordStore = [RecordStore openRecordStore:[self getRecordId:abeClientInformation] :true];
        Input* gameActionInput = nullptr;
        BasicArrayList* list = nullptr;
        Input* input = nullptr;
        id* inputObjectArray = [self->hashtableUtil getKeysAsArray:hashtable];
        int32_t size = java_array_length(inputObjectArray);
        for (int32_t index = 0; index < size; index++) {
            gameActionInput = ((Input*) inputObjectArray[index]);
            list = ((BasicArrayList*) [hashtable get:JAVA_BOX(inputObjectArray[index])]);
            for (int32_t index2 = 0; index2 < [list size]; index2++) {
                input = ((Input*) [list get:index2]);
            }
        }
        [recordStore closeRecordStore];
}

@end

