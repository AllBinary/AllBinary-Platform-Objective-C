// Generated Code Do Not Modify
#include "org/allbinary/midlet/ExitRunnable.h"
#include "javax/microedition/lcdui/NullCanvas.h"
#include "org/allbinary/canvas/Processor.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/midlet/AllBinaryMidlet.h"



void ExitRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ExitRunnable

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    
    
    
}


- (instancetype) init:(AllBinaryMidlet*)midlet :(Processor*)processor :(bool)isProgress {
    self = [super init];
    [self initFields];
        self->midlet = midlet;
        self->isProgress = isProgress;
        self->processor = processor;
    return self;
}


- (void) run {
        JAVA_TRY {
            [self->logUtil putF:self->commonStrings->START_RUNNABLE :self :self->commonStrings->RUN];
            [self->midlet destroyAppInRunnable:false :self->isProgress];
            [self->midlet setDisplay:(NullCanvas_staticInit(), NullCanvas_NULL_CANVAS)];
            [self->midlet notifyDestroyed];
            [self->logUtil putF:self->commonStrings->END_RUNNABLE :self :self->commonStrings->RUN];
            [self->processor process];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->RUN :e];
            JAVA_TRY {
                [self->processor process];
            } JAVA_CATCH(Exception, e2) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->RUN :e];
            } JAVA_END_TRY;
        } JAVA_END_TRY;
}

@end

