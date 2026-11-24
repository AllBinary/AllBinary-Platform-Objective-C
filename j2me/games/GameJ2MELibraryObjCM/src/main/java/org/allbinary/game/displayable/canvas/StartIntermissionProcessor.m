// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/StartIntermissionProcessor.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#if __has_include("org/allbinary/game/displayable/canvas/TimeDelayHelper.h")
#include "org/allbinary/game/displayable/canvas/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/canvas/TimeDelayHelper.h")
#include "org/allbinary/canvas/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/TimeDelayHelper.h")
#include "org/allbinary/logic/communication/log/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/string/TimeDelayHelper.h")
#include "org/allbinary/string/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/IntermissionInterface.h")
#include "org/allbinary/game/displayable/canvas/IntermissionInterface.h"
#endif
#if __has_include("org/allbinary/canvas/IntermissionInterface.h")
#include "org/allbinary/canvas/IntermissionInterface.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/IntermissionInterface.h")
#include "org/allbinary/logic/communication/log/IntermissionInterface.h"
#endif
#if __has_include("org/allbinary/string/IntermissionInterface.h")
#include "org/allbinary/string/IntermissionInterface.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/IntermissionInterface.h")
#include "org/allbinary/game/displayable/canvas/IntermissionInterface.h"
#endif
#if __has_include("org/allbinary/canvas/IntermissionInterface.h")
#include "org/allbinary/canvas/IntermissionInterface.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/IntermissionInterface.h")
#include "org/allbinary/logic/communication/log/IntermissionInterface.h"
#endif
#if __has_include("org/allbinary/string/IntermissionInterface.h")
#include "org/allbinary/string/IntermissionInterface.h"
#endif



void StartIntermissionProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation StartIntermissionProcessor

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    
    self->WAIT = 5000LL;
}


- (instancetype) init:(AllBinaryGameCanvas*)gameCanvas {
    self = [super init];
    [self initFields];
        self->gameCanvas = gameCanvas;
    return self;
}


// throws Exception
- (void) process {
        if ([[((id<IntermissionInterface>) [self->gameCanvas getStartIntermissionInterface]) getTimeDelayHelper] isElapsedTNT:self->WAIT]) {
            [self->logUtil putF:"Intermission End" :self :self->commonStrings->PROCESS];
            [((id<IntermissionInterface>) [self->gameCanvas getStartIntermissionInterface]) setEnabled:false];
        }
}

@end

