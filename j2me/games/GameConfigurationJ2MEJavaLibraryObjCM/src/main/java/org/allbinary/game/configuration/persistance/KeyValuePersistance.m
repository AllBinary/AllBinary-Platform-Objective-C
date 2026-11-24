// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/persistance/KeyValuePersistance.h"
#include "javax/microedition/rms/RecordEnumeration.h"
#include "javax/microedition/rms/RecordStore.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/HashtableUtil.h"
#include "org/allbinary/game/configuration/persistance/BasicPersitance.h"
#include "org/allbinary/game/configuration/persistance/NullRecordStore.h"
#include "org/allbinary/game/configuration/persistance/NullRecordFilter.h"
#include "org/allbinary/game/configuration/persistance/NullRecordComparator.h"
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
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/util/HashtableUtil.h")
#include "org/allbinary/util/HashtableUtil.h"
#endif



void KeyValuePersistance_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation KeyValuePersistance

- (void) initFields {
    self->tsUtil = [TsUtil getInstance];
}


- (instancetype) init:(const char*)recordId {
        self = [super init:recordId];
        [self initFields];
    return self;
}


// throws Exception
- (void) loadAll:(AbeClientInformationInterface*)abeClientInformation {
        [self loadAllSize:abeClientInformation :1];
}


// throws Exception
- (void) loadAllSize:(AbeClientInformationInterface*)abeClientInformation :(int32_t)size {
        RecordStore* recordStore = (NullRecordStore_staticInit(), NullRecordStore_NULL_RECORD_STORE);
        JAVA_TRY {
            recordStore = [RecordStore openRecordStore:[self getRecordId:abeClientInformation] :true];
            RecordEnumeration* recordEnum = [recordStore enumerateRecords:(NullRecordFilter_staticInit(), NullRecordFilter_NULL_RECORD_FILTER) :(NullRecordComparator_staticInit(), NullRecordComparator_NULL_RECORD_COMPARATOR) :true];
            ABHashtable* hashtable = nullptr;
            const char* name = nullptr;
            const char* value = nullptr;
            SmallIntegerSingletonFactory* smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
            StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
            int8_t* recordAsBytes = nullptr;
            ByteArrayInputStream* byteArrayInputStream = nullptr;
            DataInputStream* inputStream = nullptr;
            while ([((id<RecordEnumeration>) recordEnum) hasNextElement]) {
                int32_t id_ = [((id<RecordEnumeration>) recordEnum) nextRecordId];
                [stringBuffer delete:0 :[stringBuffer length]];
                [self->logUtil putF:[[[stringBuffer append:self->persistanceStrings->LOADING_ID] appendint:id_] toString] :self :self->persistanceStrings->LOAD_ALL];
                recordAsBytes = [self->tsUtil getRecord:recordStore :id_];
                if (recordAsBytes != nil) {
                    byteArrayInputStream = ((ByteArrayInputStream*) [((ByteArrayInputStream*) [ByteArrayInputStream alloc]) init:recordAsBytes]);
                    inputStream = ((DataInputStream*) [((DataInputStream*) [DataInputStream alloc]) init:byteArrayInputStream]);
                    hashtable = ((ABHashtable*) [((ABHashtable*) [ABHashtable alloc]) init]);
                    for (int32_t index = 0; index < size; index++) {
                        name = [inputStream readUTF];
                        [inputStream readUTF];
                        value = [inputStream readUTF];
                        [hashtable put:JAVA_BOX(name) :JAVA_BOX(value)];
                    }
                    [self->valueList add:hashtable];
                    [self->idList add:JAVA_BOX([smallIntegerSingletonFactory getAt:id_])];
                }
            }
        } JAVA_CATCH(Exception, e) {
            java_throw(e);
        } JAVA_FINALLY {
            if (recordStore != nil) {
                [PreLogUtil put:self->persistanceStrings->CLOSING_RECORDSTORE :self :self->persistanceStrings->LOAD_ALL];
                [recordStore closeRecordStore];
            }
        } JAVA_END_TRY;
}


// throws Exception
- (void) save:(AbeClientInformationInterface*)abeClientInformation :(ABHashtable*)hashtable {
        RecordStore* recordStore = (NullRecordStore_staticInit(), NullRecordStore_NULL_RECORD_STORE);
        JAVA_TRY {
            [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->persistanceStrings->SAVING] append:[[StringUtil getInstance] toString:hashtable]] toString] :self :self->commonStrings->SAVE];
            recordStore = [RecordStore openRecordStore:[self getRecordId:abeClientInformation] :true];
            ByteArrayOutputStream* byteArrayOutputStream = ((ByteArrayOutputStream*) [((ByteArrayOutputStream*) [ByteArrayOutputStream alloc]) init]);
            DataOutputStream* outputStream = ((DataOutputStream*) [((DataOutputStream*) [DataOutputStream alloc]) init:byteArrayOutputStream]);
            const char* value = nullptr;
            CommonSeps* commonSeps = [CommonSeps getInstance];
            id* objectArray = [[HashtableUtil getInstance] getKeysAsArray:hashtable];
            id anyType = nullptr;
            int32_t size = java_array_length(objectArray);
            for (int32_t index = 0; index < size; index++) {
                [outputStream writeUTF:((const char*) objectArray[index])];
                [outputStream writeUTF:commonSeps->EQUALS];
                anyType = ((id) objectArray[index]);
                value = ((const char*) [hashtable get:JAVA_BOX(anyType)]);
                [outputStream writeUTF:value];
            }
            TsUtil* tsUtil = [TsUtil getInstance];
            int8_t* savedGameBytes = [tsUtil getByteArray:[byteArrayOutputStream toString]];
            [recordStore addRecord:savedGameBytes :0 :java_array_length(savedGameBytes)];
        } JAVA_CATCH(Exception, e) {
            java_throw(e);
        } JAVA_FINALLY {
            if (recordStore != nil) {
                [PreLogUtil put:self->persistanceStrings->CLOSING_RECORDSTORE :self :self->commonStrings->SAVE];
                [recordStore closeRecordStore];
            }
        } JAVA_END_TRY;
}


- (ABHashtable*) get:(int32_t)index {
        ABHashtable* hashtable = ((ABHashtable*) self->valueList->objectArray[index]);
        return hashtable;
}

@end

