// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/hud/basic/PlayerGameNotificationHud.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/business/advertisement/GameAdStateFactory.h"
#include "org/allbinary/canvas/Processor.h"
#include "org/allbinary/game/GameAdState.h"
#include "org/allbinary/game/ag/layer/hud/basic/notification/GameNotification.h"
#include "org/allbinary/game/layer/hud/event/GameNotificationEventHandler.h"
#include "org/allbinary/graphics/CustomGPoint.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/game/ag/layer/hud/basic/SetAndRemoveProcessor.h"
#include "org/allbinary/game/ag/layer/hud/basic/NextUnremoveableProcessor.h"



void PlayerGameNotificationHud_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PlayerGameNotificationHud

- (void) initFields {
    self->gameTickTimeDelayHelper = [GameTickTimeDelayHelperFactory getInstance];
    self->EMPTY_STRING = [StringUtil getInstance]->EMPTY_STRING;
    self->displayInfo = [DisplayInfoSingleton getInstance];
    self->timeDelayHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:0];
    
    self->gameNotification = [((GameNotification*) [GameNotification alloc]) init];
    self->permanentGameNotification = [((GameNotification*) [GameNotification alloc]) init];
    self->setAndRemoveProcessor = [((SetAndRemoveProcessor*) [SetAndRemoveProcessor alloc]) init:self];
    self->nextUnremoveableProcessor = [((NextUnremoveableProcessor*) [NextUnremoveableProcessor alloc]) init:self];
    self->processor = [Processor getInstance];
    self->PERMANENT_GAME_NOTIFICATION = "Permanent Game Notification: ";
    self->lastString = [StringUtil getInstance]->EMPTY_STRING;
    self->string = self->EMPTY_STRING;
    self->point = (CustomGPoint_staticInit(), CustomGPoint_NULL_CUSTOM_POINT);
    self->width = 0;
}


- (instancetype) init:(int32_t)location :(int32_t)direction :(int32_t)bufferZone :(BasicColor*)basicColor {
        self = [super init:location :direction :bufferZone :basicColor];
        [self initFields];
        self->circularIndexUtil = [CircularIndexUtil createInstance:0];
        GameNotificationEventHandler* gameNotificationEventHandler = [GameNotificationEventHandler getInstance];
        [gameNotificationEventHandler removeAllListeners];
        [gameNotificationEventHandler addListenerInterface:self];
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        JAVA_TRY {
            [super updateMeasurement:graphics];
            Font* font = [graphics getFont];
            self->width = [font stringWidth:self->string];
            [self->processor process];
            self->processor = [Processor getInstance];
        } JAVA_CATCH(Exception, e) {
            LogUtil* logUtil = [LogUtil getInstance];
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [logUtil put:commonStrings->EXCEPTION :self :commonStrings->UPDATE :e];
        } JAVA_END_TRY;
}


- (GPoint*) getPoint:(int32_t)x :(int32_t)y {
        self->point = [CustomGPoint getInstance3:0 :0];
        [self->point setX:x];
        [self->point setY:y];
        return self->point;
}


- (void) add:(const char*)string :(int32_t)seconds :(BasicColor*)basicColor :(bool)permanent {
        if (((bool) (permanent))) {
            if (self->lastString != string) {
                self->lastString = string;
                [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->PERMANENT_GAME_NOTIFICATION] append:string] toString] :self :self->commonStrings->ADD];
            }
            [self->permanentGameNotification add:string :seconds :basicColor];
            [self->circularIndexUtil setSize:[self->permanentGameNotification getSize]];
        } else {
            [self->gameNotification add:string :seconds :basicColor];
        }
}


// throws Exception
- (void) processTick {
        if ([self->timeDelayHelper isTime:self->gameTickTimeDelayHelper->startTime]) {
            GameAdState* gameAdState = [[GameAdStateFactory getInstance] getCurrentInstance];
            if ([gameAdState isShowingAtLocation:[self getLocation]]) {
                self->offsetY = -54;
            } else {
                self->offsetY = 0;
            }
            if ([self->gameNotification getSize] > 0) {
                [self setAndRemove];
            } else if ([self->permanentGameNotification getSize] > 0) {
                [self setNextUnremoveable];
            } else {
                self->string = self->EMPTY_STRING;
            }
        }
}


// throws Exception
- (void) setAndRemove {
        self->string = ((const char*) [self->gameNotification->stringList removeAt:0]);
        self->processor = self->setAndRemoveProcessor;
}


// throws Exception
- (void) setAndRemoveProcess {
        [self setX:([self->displayInfo getLastWidth] - self->width) >> 1];
        [self->point setX:[self getX]];
        [self->point setY:[self getY]];
        int32_t time = ((int32_t) [self->gameNotification->timeList removeAt:0]);
        int32_t iTime = ((int32_t) (time)) * 1000;
        if (iTime == 0) {
            iTime = 500;
        }
        self->timeDelayHelper->delay = iTime;
        [self setBasicColorP:((BasicColor*) [self->gameNotification->colorList removeAt:0])];
}


// throws Exception
- (void) setNextUnremoveable {
        int32_t index = [self->circularIndexUtil getIndex];
        self->string = ((const char*) self->permanentGameNotification->stringList->objectArray[index]);
        self->processor = self->nextUnremoveableProcessor;
}


// throws Exception
- (void) setNextUnremoveableProcess {
        int32_t index = [self->circularIndexUtil getIndex];
        [self setX:([self->displayInfo getLastWidth] - self->width) >> 1];
        [self->point setX:[self getX]];
        [self->point setY:[self getY]];
        int32_t time = ((int32_t) self->permanentGameNotification->timeList->objectArray[index]);
        self->timeDelayHelper->delay = ((int32_t) (time)) * 1000;
        [self setBasicColorP:((BasicColor*) self->permanentGameNotification->colorList->objectArray[index])];
        [self->circularIndexUtil next];
}


- (void) clear {
        [self->gameNotification clear];
        [self->permanentGameNotification clear];
}


- (void) paint:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        [super paintString:graphics :self->string];
}

@end

