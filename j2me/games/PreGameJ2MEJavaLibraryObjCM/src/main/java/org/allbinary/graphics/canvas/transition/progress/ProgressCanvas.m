// Generated Code Do Not Modify
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/NullCanvas.h"
#include "javax/microedition/lcdui/NullCommandListener.h"
#include "org/allbinary/canvas/Processor.h"
#include "org/allbinary/game/commands/GameCommandsFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/graphics/form/item/ABCustomGaugeItem.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/midlet/AllBinaryMidlet.h"
#include "org/allbinary/thread/PathFindingThreadPool.h"
#include "org/allbinary/thread/ThreadPool.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressPaintable.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressEndListener.h"



void ProgressCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ProgressCanvas

- (void) initFields {
    self->hasPainted = false;
    
    self->GAUGE_PAINTABLE = [((ProgressPaintable*) [ProgressPaintable alloc]) init:self];
    self->maxValue = 100.0f;
    
    self->TEXT = self->commonStrings->LOADING;
    self->updateMyFontProcessor = [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self];
    self->myFontProcessor = self->updateMyFontProcessor;
    self->allbinaryMidlet = [AllBinaryMidlet getNullInstance];
    self->value = 0.0f;
    self->text = self->TEXT;
    self->background = true;
    self->paintable = self->GAUGE_PAINTABLE;
    self->inProgress = false;
    self->IN_GAME_PROCESSOR = [((Processor*) [Processor alloc]) init]
#if 0 /* Java anonymous class body: implement it as a named subclass */
        self->pathFindingThreadPool = [PathFindingThreadPool getInstance];
        

    // throws Exception
    - (void) process {
            [self->pathFindingThreadPool runAPriorityTask];
    }
#endif
;
    self->inGameProcessor = [Processor getInstance];
    self->progressEndListener = (ProgressEndListener_staticInit(), ProgressEndListener_instance);
    self->backgroundLabel = "Background AI Game Loading...";
    self->START_BACKGROUND = "startBackground";
    self->ADD_PORTION = "addPortion";
    self->ADD_EARLY_PORTION = "addEarlyPortion";
}


- (instancetype) init:(const char*)title :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:(NullCommandListener_staticInit(), NullCommandListener_NULL_COMMAND_LISTENER) :[CanvasStrings getInstance]->EMPTY_CHILD_NAME_LIST :false];
        [self initFields];
        self->backgroundBasicColor = backgroundBasicColor;
        self->gauge = [((ABCustomGaugeItem*) [ABCustomGaugeItem alloc]) init:[StringUtil getInstance]->EMPTY_STRING :((int32_t) self->maxValue) :0 :backgroundBasicColor :foregroundBasicColor];
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        [self->gauge setHeight:[font getHeight] + 2];
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) init_:(AllBinaryMidlet*)gameMidlet {
        self->allbinaryMidlet = gameMidlet;
}


// throws Exception
- (void) update:(Graphics*)graphics {
}


- (void) initCommands:(CommandListener*)cmdListener {
}


- (float) getMaxValue {
        return self->maxValue;
}


- (void) start {
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->START_METHOD_NAME];
        [self setBackground:true];
        [self->gauge setHeight:30];
        [self->gauge setLabel:self->commonStrings->PLEASE_WAIT];
        [self setText:self->TEXT];
        [self setValue:0];
        self->inGameProcessor = [Processor getInstance];
        self->paintable = self->GAUGE_PAINTABLE;
        self->inProgress = true;
}


- (void) startBackground:(bool)background {
        [self->logUtil putF:self->commonStrings->START :self :self->START_BACKGROUND];
        [self setBackground:background];
        self->myFontProcessor = self->updateMyFontProcessor;
        [self->gauge setLabel:self->backgroundLabel];
        [self setText:self->TEXT];
        [self setValue:0];
        self->inGameProcessor = [Processor getInstance];
        self->paintable = self->GAUGE_PAINTABLE;
}


- (void) endActual {
        [self->allbinaryMidlet commandAction:[GameCommandsFactory getInstance]->SHOW_GAME_CANVAS :(NullCanvas_staticInit(), NullCanvas_NULL_CANVAS)];
        self->inProgress = false;
        [self inGame];
}


- (void) inGame {
        [self->progressEndListener onEndEvent];
        self->inGameProcessor = self->IN_GAME_PROCESSOR;
}


- (void) end {
        [self->logUtil putF:self->commonStrings->START :self :self->commonStrings->END_METHOD_NAME];
        [self->gauge setValue:[self getMaxValue]];
        [self endActual];
        self->paintable = [NullPaintable getInstance];
}


- (void) endFromInitialLazyLoadingComplete {
        [self->progressEndListener onEndEvent];
        [self->gauge setValue:[self getMaxValue]];
        self->inGameProcessor = self->IN_GAME_PROCESSOR;
}


- (bool) isInGame {
        if (self->inGameProcessor == self->IN_GAME_PROCESSOR) {
            return true;
        }
        return false;
}


- (void) endIfPaintedSinceStart {
}


- (void) addEarlyPortion:(int32_t)value :(const char*)text :(int32_t)index {
        [self setText:[[[[((StringMaker*) [StringMaker alloc]) init] append:text] append:[[[SmallIntegerSingletonFactory getInstance] getAt:index] toString]] toString]];
        [self->gauge setValue:[self->gauge getValue] + [self getMaxValue] / ((float) value)];
}


- (void) addPortion:(int32_t)value :(const char*)text :(int32_t)index {
        [self setText:[[[[((StringMaker*) [StringMaker alloc]) init] append:text] append:[[[SmallIntegerSingletonFactory getInstance] getAt:index] toString]] toString]];
        [PreLogUtil put:self->text :self :self->ADD_PORTION];
        [self->gauge setValue:[self->gauge getValue] + [self getMaxValue] / ((float) value)];
}


- (void) addNormalPortion:(int32_t)value :(const char*)text {
        if (self->text != text) {
            [PreLogUtil put:text :self :self->ADD_PORTION];
        }
        [self setText:text];
        [self->gauge setValue:[self->gauge getValue] + [self getMaxValue] / ((float) value)];
}


- (void) setValue:(int32_t)value {
        self->value = ((float) value);
        [self->gauge setValue:((float) value)];
}


- (void) paint:(Graphics*)graphics {
        [self->paintable paint:graphics];
}


- (void) paint2:(Graphics*)graphics {
        [self->myFontProcessor process:graphics];
        [graphics setColor:[self->backgroundBasicColor intValue]];
        [graphics fillRect:0 :0 :[self->displayInfo getLastWidth] :[self->displayInfo getLastHeight]];
        [self->gauge paintXY:graphics :0 :0];
        self->hasPainted = true;
}


- (void) paintThreed:(Graphics*)graphics {
}


- (float) getValue {
        return self->value;
}


- (void) setText:(const char*)text {
        self->text = text;
}


- (const char*) getText {
        return self->text;
}


- (void) setBackground:(bool)background {
        self->background = background;
}


- (bool) isBackground {
        return self->background;
}

@end

