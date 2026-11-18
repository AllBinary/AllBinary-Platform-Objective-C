// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScoreNamePersistanceSingleton.h"
#include "javax/microedition/rms/RecordEnumeration.h"
#include "javax/microedition/rms/RecordStore.h"
#include "javax/microedition/rms/RecordStoreException.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/game/configuration/persistance/NullRecordComparator.h"
#include "org/allbinary/game/configuration/persistance/NullRecordFilter.h"
#include "org/allbinary/game/configuration/persistance/NullRecordStore.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/java/exception/ExceptionUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/persistance/PlatformRecordIdUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"


static HighScoreNamePersistanceSingleton* HighScoreNamePersistanceSingleton_SINGLETON;

void HighScoreNamePersistanceSingleton_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    HighScoreNamePersistanceSingleton_SINGLETON = [((HighScoreNamePersistanceSingleton*) [HighScoreNamePersistanceSingleton alloc]) init];
}

@implementation HighScoreNamePersistanceSingleton

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->tsUtil = [TsUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->platformRecordIdUtil = [PlatformRecordIdUtil getInstance];
    self->RECORD_ID = "_SN";
    self->name = [StringUtil getInstance]->EMPTY_STRING;
    self->nameBasicArrayList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (HighScoreNamePersistanceSingleton*) getInstance {
        return (HighScoreNamePersistanceSingleton_staticInit(), HighScoreNamePersistanceSingleton_SINGLETON);
}


- (void) clear {
        self->name = [StringUtil getInstance]->EMPTY_STRING;
}


// throws Exception
- (void) deleteAll:(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo {
        int32_t size = [self->nameBasicArrayList size];
        for (int32_t index = 0; index < size; index++) {
            int32_t integer = ((int32_t) self->nameBasicArrayList->objectArray[index]);
            [self delete:abeClientInformation :gameInfo :((int32_t) (integer))];
        }
        [self clear];
}


- (const char*) getRecordId:(AbeClientInformationInterface*)abeClientInformation {
        return [self->platformRecordIdUtil getRecordId:abeClientInformation :self->RECORD_ID];
}


// throws Exception
- (void) delete:(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo :(int32_t)deleteId {
        RecordStore* recordStore = (NullRecordStore_staticInit(), NullRecordStore_NULL_RECORD_STORE);
        JAVA_TRY {
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Deleting: "] appendint:deleteId] toString] :self :self->commonStrings->delete];
            recordStore = [RecordStore openRecordStore:[self getRecordId:abeClientInformation] :true];
            [recordStore deleteRecord:deleteId];
        } JAVA_CATCH(Exception, e) {
            java_throw(e);
        } JAVA_FINALLY {
            if (recordStore != nil) {
                [PreLogUtil put:"Closing RecordStore" :self :self->commonStrings->delete];
                [recordStore closeRecordStore];
            }
        } JAVA_END_TRY;
}


- (BasicArrayList*) getIds {
        return self->nameBasicArrayList;
}


- (const char*) load_:(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo {
        RecordStore* recordStore = (NullRecordStore_staticInit(), NullRecordStore_NULL_RECORD_STORE);
        JAVA_TRY {
            if (self->name == [StringUtil getInstance]->EMPTY_STRING) {
                const char* LOADING_ID = "Loading id: ";
                recordStore = [RecordStore openRecordStore:[self getRecordId:abeClientInformation] :true];
                RecordEnumeration* recordEnum = [recordStore enumerateRecords:(NullRecordFilter_staticInit(), NullRecordFilter_NULL_RECORD_FILTER) :(NullRecordComparator_staticInit(), NullRecordComparator_NULL_RECORD_COMPARATOR) :true];
                SmallIntegerSingletonFactory* smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
                int8_t* recordAsBytes = nullptr;
                ByteArrayInputStream* byteArrayInputStream = nullptr;
                DataInputStream* inputStream = nullptr;
                while ([recordEnum hasNextElement]) {
                    int32_t id_ = [recordEnum nextRecordId];
                    [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:LOADING_ID] appendint:id_] toString] :self :self->commonStrings->LOAD];
                    recordAsBytes = [self->tsUtil getRecord:recordStore :id_];
                    byteArrayInputStream = [((ByteArrayInputStream*) [ByteArrayInputStream alloc]) init:recordAsBytes];
                    inputStream = [((DataInputStream*) [DataInputStream alloc]) init:byteArrayInputStream];
                    while ([inputStream available] > 0) {
                        self->name = [inputStream readUTF];
                    }
                    [self->nameBasicArrayList add:JAVA_BOX([smallIntegerSingletonFactory getAt:id_])];
                }
            }
        } JAVA_CATCH(Exception, e) {
            [self save:abeClientInformation :gameInfo :self->name];
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonStrings->EXCEPTION_LABEL] append:[[ExceptionUtil getInstance] getStackTrace:e]] toString] :self :self->commonStrings->LOAD];
        } JAVA_FINALLY {
            JAVA_TRY {
                if (recordStore != nil) {
                    [PreLogUtil put:"Closing RecordStore" :self :self->commonStrings->LOAD];
                    [recordStore closeRecordStore];
                }
            } JAVA_CATCH(RecordStoreException, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->LOAD :e];
            } JAVA_END_TRY;
        } JAVA_END_TRY;
        return self->name;
}


- (void) save:(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo :(const char*)name {
        RecordStore* recordStore = (NullRecordStore_staticInit(), NullRecordStore_NULL_RECORD_STORE);
        JAVA_TRY {
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Saving: "] append:name] toString] :self :self->commonStrings->SAVE];
            recordStore = [RecordStore openRecordStore:[self getRecordId:abeClientInformation] :true];
            ByteArrayOutputStream* byteArrayOutputStream = [((ByteArrayOutputStream*) [ByteArrayOutputStream alloc]) init];
            DataOutputStream* outputStream = [((DataOutputStream*) [DataOutputStream alloc]) init:byteArrayOutputStream];
            [outputStream writeUTF:name];
            int8_t* savedGameBytes = [byteArrayOutputStream toByteArray];
            [recordStore addRecord:savedGameBytes :0 :java_array_length(savedGameBytes)];
            self->name = name;
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->SAVE :e];
        } JAVA_FINALLY {
            JAVA_TRY {
                if (recordStore != nil) {
                    [PreLogUtil put:"Closing RecordStore" :self :self->commonStrings->SAVE];
                    [recordStore closeRecordStore];
                }
            } JAVA_CATCH(RecordStoreException, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->SAVE :e];
            } JAVA_END_TRY;
        } JAVA_END_TRY;
}

@end

