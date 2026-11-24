// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/persistance/BasicPersitance.h"
#include "javax/microedition/rms/RecordStore.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/persistance/PlatformRecordIdUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/configuration/persistance/PersistanceStrings.h"
#include "org/allbinary/game/configuration/persistance/NullRecordStore.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void BasicPersitance_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicPersitance

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->persistanceStrings = [PersistanceStrings getInstance];
    self->platformRecordIdUtil = [PlatformRecordIdUtil getInstance];
    
    self->valueList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    self->idList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


- (instancetype) init:(const char*)recordId {
    self = [super init];
    [self initFields];
        self->recordId = recordId;
    return self;
}


// throws Exception
- (void) deleteRecoreStore:(AbeClientInformationInterface*)abeClientInformation {
        [RecordStore deleteRecordStore:[self getRecordId:abeClientInformation]];
}


// throws Exception
- (void) deleteAll:(AbeClientInformationInterface*)abeClientInformation {
        int32_t size = [self->idList size];
        for (int32_t index = 0; index < size; index++) {
            int32_t integer = ((int32_t) self->idList->objectArray[index]);
            [self delete:abeClientInformation :((int32_t) (integer))];
        }
        [self clear];
}


// throws Exception
- (void) delete:(AbeClientInformationInterface*)abeClientInformation :(int32_t)deleteId {
        RecordStore* recordStore = (NullRecordStore_staticInit(), NullRecordStore_NULL_RECORD_STORE);
        JAVA_TRY {
            [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->persistanceStrings->DELETING_WITH_ID] appendint:deleteId] toString] :self :self->commonStrings->delete];
            recordStore = [RecordStore openRecordStore:[self getRecordId:abeClientInformation] :true];
            [recordStore deleteRecord:deleteId];
        } JAVA_CATCH(Exception, e) {
            java_throw(e);
        } JAVA_FINALLY {
            if (recordStore != nil) {
                [PreLogUtil put:self->persistanceStrings->CLOSING_RECORDSTORE :self :self->commonStrings->delete];
                [recordStore closeRecordStore];
            }
        } JAVA_END_TRY;
}


- (const char*) getRecordId:(AbeClientInformationInterface*)abeClientInformation {
        return [self->platformRecordIdUtil getRecordId:abeClientInformation :self->recordId];
}


- (BasicArrayList*) getList {
        return self->valueList;
}


- (BasicArrayList*) getIds {
        return self->idList;
}


- (void) clear {
        [self->valueList clear];
        [self->idList clear];
}

@end

