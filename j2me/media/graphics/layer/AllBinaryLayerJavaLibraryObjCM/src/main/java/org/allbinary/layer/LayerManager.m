// Generated Code Do Not Modify
#include "org/allbinary/layer/LayerManager.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/thread/SynchObject.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/logic/ABSystemWrapper.h"
#include "org/allbinary/layer/LayerManagerLoggingBase.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/Layer.h"



void LayerManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LayerManager

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->systemWrapper = [ABSystemWrapper getInstance];
    self->tsUtil = [TsUtil getInstance];
    
    self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->anyType = [((SynchObject*) [SynchObject alloc]) init];
}


- (instancetype) init:(LayerManagerLoggingBase*)layerManagerLogging {
    self = [super init];
    [self initFields];
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->CONSTRUCTOR];
        self->layerManagerLogging = layerManagerLogging;
    return self;
}


- (bool) contains:(AllBinaryLayer*)layerInterface {
        return [self->list contains:layerInterface];
}


// throws Exception
- (void) update:(AllBinaryLayer*)layerInterface {
        bool had = [self->list remove:layerInterface];
        if (had) {
            AllBinaryLayer* nextLayerInterface = nullptr;
            int32_t size = [self->list size];
            for (int32_t index = 0; index < size; index++) {
                nextLayerInterface = ((AllBinaryLayer*) [self->list get:index]);
                if ([layerInterface getZP] > [nextLayerInterface getZP]) {
                    [self->list addAt:index :layerInterface];
                    return;
                }
            }
            [self->list add:layerInterface];
        }
}


// throws Exception
- (void) insert:(AllBinaryLayer*)layerInterface {
        AllBinaryLayer* nextLayerInterface = nullptr;
        int32_t size = [self->list size];
        for (int32_t index = 0; index < size; index++) {
            nextLayerInterface = ((AllBinaryLayer*) [self->list get:index]);
            if ([layerInterface getZP] > [nextLayerInterface getZP]) {
                [self appendAt:layerInterface :index];
                return;
            }
        }
        [self append:layerInterface];
}


// throws Exception
- (void) append:(AllBinaryLayer*)layerInterface {
        [self->layerManagerLogging append:layerInterface];
        [self->list add:layerInterface];
}


// throws Exception
- (void) appendAt:(AllBinaryLayer*)layerInterface :(int32_t)index {
        [self->layerManagerLogging appendAt:layerInterface :index];
        [self->list addAt:index :layerInterface];
}


// throws Exception
- (void) remove:(AllBinaryLayer*)layerInterface {
        java_monitor_enter(self->anyType);
        {
            [self->layerManagerLogging remove:layerInterface];
            bool result = [self->list remove:layerInterface];
            [self->layerManagerLogging removeResult:self :layerInterface :result];
        }
        java_monitor_exit(self->anyType);
}


- (Layer*) getLayerAt:(int32_t)index {
        return ((Layer*) self->list->objectArray[index]);
}


- (int32_t) getSize {
        return [self->list size];
}


// throws Exception
- (void) cleanup {
        java_monitor_enter(self->anyType);
        {
            [self->list clear];
            [self->layerManagerLogging clear];
            [self->tsUtil gc];
            [self->tsUtil gc];
        }
        java_monitor_exit(self->anyType);
}


- (void) paint:(Graphics*)g :(int32_t)x :(int32_t)y {
        java_monitor_enter(self->anyType);
        {
            Layer* comp = nullptr;
            for (int32_t index = [self->list size]; --index >= 0; ) {
                comp = ((Layer*) self->list->objectArray[index]);
                if (comp != nil && [comp isVisible]) {
                    [comp paint:g];
                }
            }
        }
        java_monitor_exit(self->anyType);
}

@end

