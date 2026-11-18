// Generated Code Do Not Modify
#include "org/allbinary/layer/LayerManagerLogging.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/layer/LayerManagerLoggingBase.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/LayerManager.h"


static LayerManagerLogging* LayerManagerLogging_instance;
static bool LayerManagerLogging_removeFailed = false;

void LayerManagerLogging_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LayerManagerLogging_instance = [((LayerManagerLogging*) [LayerManagerLogging alloc]) init];
}

@implementation LayerManagerLogging

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->stringBuilder = [((StringMaker*) [StringMaker alloc]) init];
    self->APPEND = "append";
    self->APPEND_ = " append: ";
    self->_AT__ = " at: ";
    self->ATTEMPT_REMOVE_ = " Remove Attempt: ";
    self->REMOVE_ = " Remove: ";
    self->REMOVE = "remove";
    self->DID_NOT_REMOVE = " Did not remove: ";
    self->CLEAR = " Clear List";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (LayerManagerLogging*) getInstance {
        return (LayerManagerLogging_staticInit(), LayerManagerLogging_instance);
}


// throws Exception
- (void) append:(AllBinaryLayer*)layerInterface {
        [self->stringBuilder delete:0 :[self->stringBuilder length]];
        [self->logUtil putF:[[[[self->stringBuilder appendint:[[TsUtil getInstance] hashCode:self]] append:self->APPEND_] append:[layerInterface getName]] toString] :self :self->APPEND];
}


- (void) appendAt:(AllBinaryLayer*)layerInterface :(int32_t)index {
        [self->stringBuilder delete:0 :[self->stringBuilder length]];
        [self->logUtil putF:[[[[[[self->stringBuilder appendint:[[TsUtil getInstance] hashCode:self]] append:self->APPEND_] append:[layerInterface getName]] append:self->_AT__] appendint:index] toString] :self :self->APPEND];
}


- (void) remove:(AllBinaryLayer*)layerInterface {
        if (layerInterface == nil) {
            [self->stringBuilder delete:0 :[self->stringBuilder length]];
            [self->logUtil putF:[[[[self->stringBuilder appendint:[[TsUtil getInstance] hashCode:self]] append:self->ATTEMPT_REMOVE_] append:[[StringUtil getInstance] toString:layerInterface]] toString] :self :self->REMOVE];
        } else {
            [self->stringBuilder delete:0 :[self->stringBuilder length]];
            [self->logUtil putF:[[[[self->stringBuilder appendint:[[TsUtil getInstance] hashCode:self]] append:self->ATTEMPT_REMOVE_] append:[layerInterface getName]] toString] :self :self->REMOVE];
        }
}


- (void) removeResult:(LayerManager*)layerManager :(AllBinaryLayer*)layerInterface :(bool)result {
        if (layerInterface == nil) {
            [self->stringBuilder delete:0 :[self->stringBuilder length]];
            [self->logUtil putF:[[[[self->stringBuilder appendint:[[TsUtil getInstance] hashCode:self]] append:self->REMOVE_] append:[[StringUtil getInstance] toString:layerInterface]] toString] :self :self->REMOVE];
        } else if (result) {
            if (LayerManagerLogging_removeFailed) {
                [self->stringBuilder delete:0 :[self->stringBuilder length]];
                [self->logUtil putF:[[[[self->stringBuilder appendint:[[TsUtil getInstance] hashCode:self]] append:self->REMOVE_] append:[layerInterface getName]] toString] :self :self->REMOVE];
            }
        } else {
            [self->stringBuilder delete:0 :[self->stringBuilder length]];
            [self->logUtil putF:[[[[self->stringBuilder appendint:[[TsUtil getInstance] hashCode:self]] append:self->DID_NOT_REMOVE] append:[layerInterface getName]] toString] :self :self->REMOVE];
            LayerManagerLogging_removeFailed = true;
        }
}


- (void) log:(LayerManager*)layerManager {
        [self->stringBuilder delete:0 :[self->stringBuilder length]];
        int32_t size = [layerManager getSize];
        CommonSeps* commonSeps = [CommonSeps getInstance];
        [[self->stringBuilder append:[Integer toHexString:[[TsUtil getInstance] hashCode:layerManager]]] append:commonSeps->COLON_SEP];
        [[self->stringBuilder appendint:size] append:commonSeps->COLON_SEP];
        AllBinaryLayer* allBinaryLayer = nullptr;
        for (int32_t index = 0; index < size; index++) {
            allBinaryLayer = (((AllBinaryLayer*) [layerManager getLayerAt:index]));
            [[self->stringBuilder append:[allBinaryLayer getName]] append:commonSeps->COMMA];
        }
        [self->logUtil putF:[self->stringBuilder toString] :self :self->REMOVE];
}


- (void) clear {
        [self->stringBuilder delete:0 :[self->stringBuilder length]];
        [self->logUtil putF:[[[self->stringBuilder appendint:[[TsUtil getInstance] hashCode:self]] append:self->CLEAR] toString] :self :self->CLEAR];
}

@end

