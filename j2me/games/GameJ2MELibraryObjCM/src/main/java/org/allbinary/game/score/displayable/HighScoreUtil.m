// Generated Code Do Not Modify
#include "org/allbinary/game/score/displayable/HighScoreUtil.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/game/score/HighScore.h"
#include "org/allbinary/game/score/HighScoreNamePersistanceSingleton.h"
#include "org/allbinary/game/score/HighScores.h"
#include "org/allbinary/game/score/HighScoresFactoryInterface.h"
#include "org/allbinary/game/score/HighScoresHelperBaseInterface.h"
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/game/score/HighScoreNamePersistanceSingleton.h")
#include "org/allbinary/game/score/HighScoreNamePersistanceSingleton.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif


Command* HighScoreUtil_SUBMIT_TEXTBOX_COMMAND;

void HighScoreUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    HighScoreUtil_SUBMIT_TEXTBOX_COMMAND = ((Command*) [((Command*) [Command alloc]) init:"Submit" :[StringUtil getInstance]->EMPTY_STRING :(Command_staticInit(), Command_SCREEN) :1]);
}

@implementation HighScoreUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    
    
    
    
    
    
    self->firstTime = true;
}


- (instancetype) init:(HighScoresFactoryInterface*)highScoresFactoryInterface :(HighScoresHelperBaseInterface*)highScoresHelper :(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo :(CommandListener*)cmdListener :(const char*)name :(HighScore*)highScore {
    self = [super init];
    [self initFields];
        self->highScoresFactoryInterface = highScoresFactoryInterface;
        self->highScoresHelper = highScoresHelper;
        self->highScoresArray = [((id<HighScoresHelperBaseInterface>) self->highScoresHelper) getHighScoresArray];
        self->highScore = highScore;
        self->abeClientInformation = abeClientInformation;
        self->gameInfo = gameInfo;
    return self;
}


- (void) setHighScoresArray:(HighScores**)highScoresArray {
        self->highScoresArray = highScoresArray;
        self->firstTime = false;
        [self saveHighScore];
}


- (void) update:(const char*)name {
        [[HighScoreNamePersistanceSingleton getInstance] save:self->abeClientInformation :self->gameInfo :name];
        [self->highScore setName:name];
}


- (void) saveHighScore {
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->commonStrings->START] append:[[StringUtil getInstance] toString:self->highScore]] toString] :self :"saveHighScore"];
        int32_t size = java_array_length(self->highScoresArray);
        if (self->firstTime && size == 0) {
            [self->logUtil putF:"Games canvas did not give us any HighScores" :self :"saveHighScore"];
            [((id<HighScoresFactoryInterface>) self->highScoresFactoryInterface) fetchHighScores:self->gameInfo :self];
            return;
        }
        HighScores* highScores = nullptr;
        const char* highScoresAsString = nullptr;
        for (int32_t index = 0; index < size; index++) {
            highScores = self->highScoresArray[index];
            [highScores addHighScore:self->highScore];
            highScoresAsString = [highScores toString];
            [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Added/Adding Score: "] append:highScoresAsString] toString] :self :"saveHighScore"];
        }
        [((id<HighScoresHelperBaseInterface>) self->highScoresHelper) setHighScoresArray:self->highScoresArray];
}


- (void) submit:(MyCanvas*)myCanvas {
        CommandListener* commandListener = [myCanvas getCustomCommandListener];
        [((id<CommandListener>) commandListener) commandAction:(HighScoreUtil_staticInit(), HighScoreUtil_SUBMIT_TEXTBOX_COMMAND) :myCanvas];
}

@end

