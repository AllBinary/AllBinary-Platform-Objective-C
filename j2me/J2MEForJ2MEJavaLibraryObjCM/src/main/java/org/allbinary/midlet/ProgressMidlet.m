// Generated Code Do Not Modify
#include "org/allbinary/midlet/ProgressMidlet.h"
#include "org/allbinary/canvas/Processor.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/logic/system/security/licensing/ClientInformationFactory.h"
#include "org/allbinary/thread/PrimaryThreadPool.h"
#include "org/allbinary/thread/ThreadPool.h"
#include "org/allbinary/midlet/AllBinaryMidlet.h"
#include "org/allbinary/midlet/MidletExitProcessorFactory.h"
#include "org/allbinary/midlet/ExitRunnable.h"



void ProgressMidlet_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ProgressMidlet

- (void) initFields {
    
}


- (instancetype) init:(ClientInformationFactory*)clientInformationFactory {
    self = [super init];
    [self initFields];
        [self preInit];
        self->abeClientInformation = [clientInformationFactory getInstance];
    return self;
}


- (void) preInit {
}


- (void) exitProgress:(bool)isProgress {
        Processor* processor = [[MidletExitProcessorFactory getInstance] getExitInstance:self];
        JAVA_TRY {
            ThreadPool* primaryThreadPool = [PrimaryThreadPool getInstance];
            Runnable* runnable = [((ExitRunnable*) [ExitRunnable alloc]) init:self :processor :isProgress];
            [primaryThreadPool runTask:runnable];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"exit" :e];
            JAVA_TRY {
                [processor process];
            } JAVA_CATCH(Exception, e2) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :"exit" :e];
            } JAVA_END_TRY;
        } JAVA_END_TRY;
}

@end

