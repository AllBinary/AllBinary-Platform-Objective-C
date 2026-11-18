// Generated Code Do Not Modify
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"



void UpdateMyFontProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation UpdateMyFontProcessor

- (void) initFields {
    
}


- (instancetype) init:(UpdateMyFontInterface*)keyValueDrawCharArray {
    self = [super init];
    [self initFields];
        self->updateMeasurementProcessor = keyValueDrawCharArray;
    return self;
}


- (void) process:(Graphics*)graphics {
        [self->updateMeasurementProcessor updateMeasurement:graphics];
}

@end

