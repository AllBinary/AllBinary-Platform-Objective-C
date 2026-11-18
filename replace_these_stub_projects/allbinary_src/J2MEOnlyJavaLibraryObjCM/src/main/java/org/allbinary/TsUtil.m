// Generated Code Do Not Modify
#include "org/allbinary/TsUtil.h"
#include "javax/microedition/lcdui/Displayable.h"
#include "javax/microedition/lcdui/Form.h"
#include "javax/microedition/rms/InvalidRecordIDException.h"
#include "javax/microedition/rms/RecordStore.h"
#include "javax/microedition/rms/RecordStoreException.h"
#include "javax/microedition/rms/RecordStoreNotOpenException.h"
#include "org/allbinary/logic/NullUtil.h"


static TsUtil* TsUtil_instance;

void TsUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TsUtil_instance = [((TsUtil*) [TsUtil alloc]) init];
}

@implementation TsUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (TsUtil*) getInstance {
        return (TsUtil_staticInit(), TsUtil_instance);
}


- (int32_t) hashCode:(id)anyType {
        return [anyType hashCode];
}


// throws InterruptedException
- (void) waitFor:(id)any :(int64_t)timeoutMillis {
        id anyType = ((id) any);
        [anyType wait:timeoutMillis];
}


// throws RecordStoreNotOpenException, InvalidRecordIDException, RecordStoreException
- (int8_t*) getRecord:(id)anyType :(int32_t)recordId {
        RecordStore* recordStore = ((RecordStore*) anyType);
        int8_t* data = nullptr;
        java_monitor_enter(self);
        {
            data = ((int8_t*) java_array_new(sizeof(int8_t), [recordStore getRecordSize:recordId]));
            [recordStore getRecord:recordId :data :0];
        }
        java_monitor_exit(self);
        return (java_array_length(data) < 1 ? [NullUtil getInstance]->NULL_BYTE_ARRAY : data);
}


- (int32_t) compareTo:(const char*)a :(const char*)b {
        return strcmp(a, b);
}


- (bool) equalIgnoreCase:(const char*)a :(const char*)b {
        return (strcasecmp(a, b) == 0);
}


- (bool) equalsNotstring:(id)anyType :(id)object2 {
        return [anyType equals:object2];
}


- (int32_t) toNumberFromChar:(uint16_t)value {
        return ((int32_t) value);
}


- (int32_t) toNumber:(int32_t)value {
        return value;
}


- (int8_t*) getByteArray:(const char*)string {
        return java_string_getBytes(string);
}


- (bool) isItemListener:(Displayable*)owner {
        if (java_objc_instanceof(owner, [Form class])) {
            return true;
        } else {
            return false;
        }
}


- (void) printAvailableMethods:(id)anyType {
}


- (void) gc {
        ((void) 0);
}

@end

