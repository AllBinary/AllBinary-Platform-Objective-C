// Generated Code Do Not Modify
#include "org/allbinary/game/input/InputPersistance.h"
#include "javax/microedition/rms/RecordEnumeration.h"
#include "javax/microedition/rms/RecordStore.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/game/configuration/persistance/NullRecordComparator.h"
#include "org/allbinary/game/configuration/persistance/NullRecordFilter.h"
#include "org/allbinary/game/configuration/persistance/NullRecordStore.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/HashtableUtil.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/input/Input.h"
#include "org/allbinary/game/input/GameKeyMappingFactory.h"
#include "org/allbinary/game/input/InputFactory.h"
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



void InputPersistance_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation InputPersistance

- (void) initFields {
    self->tsUtil = [TsUtil getInstance];
    self->hashtableUtil = [HashtableUtil getInstance];
}


- (instancetype) init:(const char*)name {
        self = [super init:name];
        [self initFields];
    return self;
}


// throws Exception
- (void) loadAll:(AbeClientInformationInterface*)abeClientInformation {
        RecordStore* recordStore = (NullRecordStore_staticInit(), NullRecordStore_NULL_RECORD_STORE);
        JAVA_TRY {
            recordStore = [RecordStore openRecordStore:[self getRecordId:abeClientInformation] :true];
            RecordEnumeration* recordEnum = [recordStore enumerateRecords:(NullRecordFilter_staticInit(), NullRecordFilter_NULL_RECORD_FILTER) :(NullRecordComparator_staticInit(), NullRecordComparator_NULL_RECORD_COMPARATOR) :true];
            int64_t gameActionInputId = 0;
            int64_t inputId = 0;
            Input* gameActionInput = nullptr;
            Input* input = nullptr;
            ABHashtable* hashtable = nullptr;
            GameKeyMappingFactory* gameKeyFactory = [GameKeyMappingFactory getInstance];
            StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
            InputFactory* inputFactory = [InputFactory getInstance];
            SmallIntegerSingletonFactory* smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
            StdUtil* stdUtil = [StdUtil getInstance];
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
                    hashtable = [stdUtil createHashtable];
                    int32_t value = 0;
                    while ([inputStream available] > 0) {
                        const char* gameActionInputIdAsString = [inputStream readUTF];
                        value = ((int32_t) strtol(gameActionInputIdAsString, nullptr, 10));
                        gameActionInputId = ((int64_t) value);
                        [inputStream readUTF];
                        value = ((int32_t) strtol([inputStream readUTF], nullptr, 10));
                        inputId = ((int64_t) value);
                        gameActionInput = [gameKeyFactory getGameKey:((int32_t) gameActionInputId)];
                        input = [inputFactory getInstanceById:((int32_t) inputId)];
                        if (input == inputFactory->NO_INPUT || gameActionInput == nil) {
                            [stringBuffer delete:0 :[stringBuffer length]];
                            if (input == inputFactory->NO_INPUT) {
                                [stringBuffer append:self->persistanceStrings->ERROR_LOADING_ID];
                                [stringBuffer appendlong:inputId];
                                [stringBuffer append:self->persistanceStrings->GAME_ACTION_INPUT];
                                [stringBuffer appendlong:gameActionInputId];
                                [PreLogUtil put:[stringBuffer toString] :self :self->persistanceStrings->LOAD_ALL];
                            }
                            if (gameActionInput == nil) {
                                [stringBuffer delete:0 :[stringBuffer length]];
                                [stringBuffer append:self->persistanceStrings->ERROR_LOADING];
                                [stringBuffer appendlong:gameActionInputId];
                                [stringBuffer append:self->persistanceStrings->ID];
                                [stringBuffer appendlong:inputId];
                                [PreLogUtil put:[stringBuffer toString] :self :self->persistanceStrings->LOAD_ALL];
                            }
                        } else {
                        }
                        [hashtable put:JAVA_BOX(input) :JAVA_BOX(gameActionInput)];
                    }
                    [self->valueList add:hashtable];
                    [self->idList add:JAVA_BOX([smallIntegerSingletonFactory getAt:id_])];
                } else {
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
            StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
            [PreLogUtil put:[[[stringBuffer append:self->persistanceStrings->SAVING] append:[[StringUtil getInstance] toString:hashtable]] toString] :self :self->commonStrings->SAVE];
            recordStore = [RecordStore openRecordStore:[self getRecordId:abeClientInformation] :true];
            ByteArrayOutputStream* byteArrayOutputStream = ((ByteArrayOutputStream*) [((ByteArrayOutputStream*) [ByteArrayOutputStream alloc]) init]);
            DataOutputStream* outputStream = ((DataOutputStream*) [((DataOutputStream*) [DataOutputStream alloc]) init:byteArrayOutputStream]);
            Input* gameActionInput = nullptr;
            BasicArrayList* list = nullptr;
            Input* input = nullptr;
            int8_t* savedGameBytes = nullptr;
            CommonSeps* commonSeps = [CommonSeps getInstance];
            SmallIntegerSingletonFactory* smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
            id* inputObjectArray = [self->hashtableUtil getKeysAsArray:hashtable];
            int32_t size = java_array_length(inputObjectArray);
            for (int32_t index = 0; index < size; index++) {
                gameActionInput = ((Input*) inputObjectArray[index]);
                list = ((BasicArrayList*) [hashtable get:JAVA_BOX(((id) inputObjectArray[index]))]);
                for (int32_t index2 = 0; index2 < [list size]; index2++) {
                    const char* gameActionInputIdAsString = [[smallIntegerSingletonFactory getAt:[gameActionInput getId]] toString];
                    [outputStream writeUTF:gameActionInputIdAsString];
                    [outputStream writeUTF:commonSeps->EQUALS];
                    input = ((Input*) list->objectArray[index2]);
                    const char* inputIdAsString = [[smallIntegerSingletonFactory getAt:[input getId]] toString];
                    [outputStream writeUTF:inputIdAsString];
                }
            }
            savedGameBytes = [byteArrayOutputStream toByteArray];
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

@end

