// Generated Code Do Not Modify
#include "org/allbinary/game/input/mapping/PersistentInputMapping.h"
#include "org/allbinary/game/configuration/persistance/GamePersistanceStrings.h"
#include "org/allbinary/game/input/Input.h"
#include "org/allbinary/game/input/InputPersistance.h"
#include "org/allbinary/game/input/mapping/event/InputMappingEvent.h"
#include "org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface.h"
#include "org/allbinary/game/input/mapping/event/NullInputMappingEventListener.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/EnumerationUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/game/configuration/persistance/GamePersistanceStrings.h")
#include "org/allbinary/game/configuration/persistance/GamePersistanceStrings.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface.h")
#include "org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface.h"
#endif


id PersistentInputMapping_instance;

void PersistentInputMapping_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PersistentInputMapping_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation PersistentInputMapping

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->enumerationUtil = [EnumerationUtil getInstance];
    self->inputMapping = ((InputToGameKeyMapping*) [((InputToGameKeyMapping*) [InputToGameKeyMapping alloc]) init]);
    self->inputMappingEventListenerInterface = (NullInputMappingEventListener_staticInit(), NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENER);
    
    self->inputMappingEvent = ((InputMappingEvent*) [((InputMappingEvent*) [InputMappingEvent alloc]) init:self]);
}


+ (PersistentInputMapping*) getNullInstance {
        if ((PersistentInputMapping_staticInit(), PersistentInputMapping_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            PersistentInputMapping_instance = ((PersistentInputMapping*) [((PersistentInputMapping*) [PersistentInputMapping alloc]) init:[GamePersistanceStrings getInstance]->SAVED_INPUT_CONFIGURATION_RECORD_ID]);
        }
        return ((PersistentInputMapping*) (PersistentInputMapping_staticInit(), PersistentInputMapping_instance));
}


- (instancetype) init:(const char*)name {
    self = [super init];
    [self initFields];
        self->inputPersistance = ((InputPersistance*) [((InputPersistance*) [InputPersistance alloc]) init:name]);
    return self;
}


- (int32_t) getTotalMapped {
        return [[[self getInputMapping] getHashtable] size];
}


- (bool) isDefaultNew {
        return false;
}


- (InputToGameKeyMapping*) getDefault {
        return [InputToGameKeyMapping getNullInstance];
}


// throws Exception
- (void) setDefault:(AbeClientInformationInterface*)abeClientInformation {
        [[self getInputMapping] removeAll];
        [[self getInputMapping] addMapping:[self getDefault]];
        [self save:abeClientInformation];
}


// throws Exception
- (void) update:(AbeClientInformationInterface*)abeClientInformation {
        [self->inputPersistance deleteAll:abeClientInformation];
        [self save:abeClientInformation];
}


// throws Exception
- (void) save:(AbeClientInformationInterface*)abeClientInformation {
        [self->inputPersistance save:abeClientInformation :[[self getInputMapping] getHashtable]];
        [self->inputMappingEvent setInputToGameKeyMapping:[self getInputMapping]];
        if ([self getInputMappingEventListenerInterface] != nil) {
            [((id<InputMappingEventListenerInterface>) [self getInputMappingEventListenerInterface]) onInputMappingEvent:self->inputMappingEvent];
        }
}


// throws Exception
- (void) initMethod:(AbeClientInformationInterface*)abeClientInformation {
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->INIT];
        JAVA_TRY {
            [self->inputPersistance loadAll:abeClientInformation];
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil putOE:self->commonStrings->EXCEPTION :self :self->commonStrings->INIT :e];
            [self->inputPersistance deleteRecoreStore:abeClientInformation];
            [self setDefault:abeClientInformation];
            [self->inputPersistance loadAll:abeClientInformation];
        } JAVA_END_TRY;
        BasicArrayList* list = [self->inputPersistance getList];
        int32_t totalMappedTo = 0;
        int32_t size = [list size];
        ABHashtable* hashtable = nullptr;
        Enumeration* enumeration = nullptr;
        Input* mappedToInput = nullptr;
        Input* gameActionInput = nullptr;
        for (int32_t index = 0; index < size; index++) {
            hashtable = ((ABHashtable*) list->objectArray[index]);
            enumeration = [hashtable keys];
            while ([self->enumerationUtil hasMoreElements:enumeration]) {
                mappedToInput = ((Input*) [self->enumerationUtil nextElement:enumeration]);
                gameActionInput = ((Input*) [hashtable get:JAVA_BOX(mappedToInput)]);
                totalMappedTo++;
                [[self getInputMapping] add:gameActionInput :mappedToInput];
            }
        }
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"End - Total Loaded Keys Mapped: "];
        [stringBuffer appendint:[self getTotalMapped]];
        [stringBuffer append:" to: "];
        [stringBuffer appendint:totalMappedTo];
        [self->logUtil putF:[stringBuffer toString] :self :self->commonStrings->INIT];
}


- (void) setInputMappingEventListenerInterface:(InputMappingEventListenerInterface*)inputMappingEventListenerInterface {
        self->inputMappingEventListenerInterface = inputMappingEventListenerInterface;
}


- (InputMappingEventListenerInterface*) getInputMappingEventListenerInterface {
        return self->inputMappingEventListenerInterface;
}


- (InputToGameKeyMapping*) getInputMapping {
        return self->inputMapping;
}


// throws Exception
- (bool) isDelete:(Input*)input {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (bool) isSystemInput:(Input*)input {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}

@end

