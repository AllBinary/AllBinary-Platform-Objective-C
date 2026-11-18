// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScoresPaintable.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/color/ColorChangeEvent.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/score/NullHighScoresSingletonFactory.h"
#include "org/allbinary/game/score/HighScores.h"
#include "org/allbinary/game/score/HighScore.h"



void HighScoresPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScoresPaintable

- (void) initFields {
    self->displayInfoSingleton = [DisplayInfoSingleton getInstance];
    self->myFontProcessor = [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self];
    self->basicColor = [BasicColorFactory getInstance]->WHITE;
    self->highScores = [NullHighScoresSingletonFactory getInstance];
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
    self->charHeight = 0;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->charHeight = [font getHeight];
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        ColorChangeEvent* colorChangeEvent = ((ColorChangeEvent*) eventObject);
        self->basicColor = [colorChangeEvent getBasicColorP];
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        int32_t width = [self->displayInfoSingleton getLastWidth];
        int32_t height = [self->displayInfoSingleton getLastHeight];
        [graphics setColor:[[self getBasicColorP] intValue]];
        const char* heading = [self->highScores getHeading];
        int32_t topScoresWidth = ([[graphics getFont] stringWidth:heading] >> 1);
        int32_t charHeight = self->charHeight;
        [graphics drawString:heading :(width >> 1) - topScoresWidth :charHeight :self->anchor];
        [graphics drawString:[self->highScores getColumnOneHeading] :10 :charHeight * 3 :self->anchor];
        const char* columnTwoHeading = [self->highScores getColumnTwoHeading];
        int32_t columnTwoHeadingWidth = [[graphics getFont] stringWidth:columnTwoHeading];
        [graphics drawString:columnTwoHeading :width - 10 - columnTwoHeadingWidth :charHeight * 3 :self->anchor];
        int32_t index = 4;
        int32_t largestSecondColumnWidth = columnTwoHeadingWidth;
        BasicArrayList* list = [self->highScores getList];
        int32_t size = [list size];
        int32_t vectorIndex = 0;
        HighScore* highScore = nullptr;
        while (vectorIndex < size && charHeight * index < height - (charHeight * 2)) {
            highScore = ((HighScore*) list->objectArray[vectorIndex]);
            int32_t nextScoreWidth = [[graphics getFont] stringWidth:[highScore getScoreString]];
            if (nextScoreWidth > largestSecondColumnWidth) {
                largestSecondColumnWidth = nextScoreWidth;
            }
            vectorIndex++;
        }
        vectorIndex = 0;
        while (vectorIndex < size && charHeight * index < height - (charHeight * 2)) {
            highScore = ((HighScore*) list->objectArray[vectorIndex]);
            [graphics drawString:[highScore getName] :10 :charHeight * index :self->anchor];
            [graphics drawString:[highScore getScoreString] :width - 10 - largestSecondColumnWidth :charHeight * index :self->anchor];
            index++;
            vectorIndex++;
        }
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        self->basicColor = basicColor;
}


- (BasicColor*) getBasicColorP {
        return self->basicColor;
}


- (void) setHighScores:(HighScores*)highScores {
        self->highScores = highScores;
}

@end

