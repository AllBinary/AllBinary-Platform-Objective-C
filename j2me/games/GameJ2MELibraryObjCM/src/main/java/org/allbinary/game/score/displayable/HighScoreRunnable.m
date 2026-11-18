// Generated Code Do Not Modify
#include "org/allbinary/game/score/displayable/HighScoreRunnable.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/logic/ABSystemWrapper.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"



void HighScoreRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScoreRunnable

- (void) initFields {
    
}


- (instancetype) init:(HighScoresCanvas*)highScoresCanvas {
    self = [super init];
    [self initFields];
        self->highScoresCanvas = highScoresCanvas;
    return self;
}


- (void) run {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        LogUtil* logUtil = [LogUtil getInstance];
        HighScoresCanvas* highScoresCanvas = self->highScoresCanvas;
        JAVA_TRY {
            bool isHTML = [J2MEUtil isHTML];
            if (!isHTML) {
                while (!highScoresCanvas->hasPainted) {
                }
                highScoresCanvas->hasPainted = false;
            }
            StringMaker* stringMaker = [((StringMaker*) [StringMaker alloc]) init];
            ABSystemWrapper* systemWrapper = [ABSystemWrapper getInstance];
            int64_t currentTimeMillis = [systemWrapper currentTimeMillis];
            [logUtil putF:[[[stringMaker append:"HighScoresCanvas - Request repaint to be sure: "] appendlong:currentTimeMillis] toString] :self :commonStrings->RUN];
            [highScoresCanvas->repaintBehavior onChangeRepaint:highScoresCanvas];
            if (!isHTML) {
                while (!highScoresCanvas->hasPainted) {
                }
            }
            [stringMaker delete:0 :[stringMaker length]];
            [logUtil putF:[[[stringMaker append:"HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: "] appendlong:currentTimeMillis] toString] :self :commonStrings->RUN];
            [highScoresCanvas executeUpdate];
        } JAVA_CATCH(Exception, e) {
            [logUtil put:commonStrings->EXCEPTION :self :commonStrings->RUN :e];
        } JAVA_END_TRY;
}

@end

