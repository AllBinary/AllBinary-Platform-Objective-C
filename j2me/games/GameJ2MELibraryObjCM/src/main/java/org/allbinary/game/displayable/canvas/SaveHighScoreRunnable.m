// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/SaveHighScoreRunnable.h"
#include "org/allbinary/game/score/displayable/HighScoreTextBox.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"



void SaveHighScoreRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SaveHighScoreRunnable

- (void) initFields {
    self->progressCanvas = [ProgressCanvasFactory getInstance];
    
    
}


- (instancetype) init:(bool)isLast :(HighScoreTextBox*)textBox {
    self = [super init];
    [self initFields];
        self->isLast = isLast;
        self->textBox = textBox;
    return self;
}


- (void) run {
        LogUtil* logUtil = [LogUtil getInstance];
        JAVA_TRY {
            if (self->isLast) {
                [self->textBox submit];
            } else {
                [self->textBox saveHighScore];
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [logUtil put:commonStrings->EXCEPTION :self :"run" :e];
            [self->progressCanvas end];
        } JAVA_END_TRY;
}

@end

