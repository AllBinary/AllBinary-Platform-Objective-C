// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/NullCommandListener.h"
#include "org/allbinary/graphics/displayable/command/MyCommandsFactory.h"
#include "org/allbinary/input/TouchJ2ME.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/media/audio/Sound.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABStack.h"
#include "org/allbinary/graphics/displayable/DisplayableInterface.h"
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"



void MyCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MyCanvas

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->canvasStrings = [CanvasStrings getInstance];
    self->stringUtil = [StringUtil getInstance];
    self->displayInfo = [DisplayInfoSingleton getInstance];
    
    
    
    self->commandListener = (NullCommandListener_staticInit(), NullCommandListener_NULL_COMMAND_LISTENER);
    self->paused = false;
    self->touchME = [((TouchJ2ME*) [TouchJ2ME alloc]) init];
}


- (instancetype) init:(const char*)name :(BasicArrayList*)childNameList {
    self = [super init];
    [self initFields];
        [self->logUtil putF:self->commonStrings->CONSTRUCTOR :self :self->commonStrings->CONSTRUCTOR];
        [self->displayInfo update:self :self->canvasStrings->CONSTRUCTOR];
        self->name = name;
        self->childNameList = childNameList;
        self->commandStack = [[StdUtil getInstance] createStack];
    return self;
}


- (int32_t) getWidth {
        return [super getWidth];
}


- (int32_t) getHeight {
        return [super getHeight];
}


- (void) setFullScreenMode:(bool)mode {
        [super setFullScreenMode:mode];
        [self->displayInfo update:self :self->canvasStrings->SET_FULL_SCREEN_MODE];
}


- (void) sizeChanged:(int32_t)w :(int32_t)h {
        [self->displayInfo update:self :self->canvasStrings->SIZE_CHANGED];
}


- (ABStack*) getCommandStack {
        return self->commandStack;
}


// synchronized
- (bool) isCommand:(Command*)command {
        return [self->commandStack contains:command];
}


// synchronized
- (void) addCommand:(Command*)command {
        if (![self->commandStack contains:command]) {
            [self->commandStack push:command];
            [super addCommand:command];
        }
}


// synchronized
- (void) removeCommand:(Command*)command {
        [self->commandStack removeElement:command];
        [super removeCommand:command];
}


// synchronized
- (void) removeAllCommands {
        int32_t size = [self->commandStack size];
        for (int32_t index = 0; index < size; index++) {
            [super removeCommand:((Command*) [self->commandStack pop])];
        }
}


- (void) setCommandListener:(CommandListener*)l {
        [super setCommandListener:l];
        self->commandListener = l;
}


- (CommandListener*) getCustomCommandListener {
        return self->commandListener;
}


// synchronized
- (bool) isPaused {
        return self->paused;
}


- (void) removePauseCommand {
        [self removeCommand:[MyCommandsFactory getInstance]->PAUSE_COMMAND];
}


// synchronized
- (void) pause {
        [self->logUtil putF:self->commonStrings->START :self :self->canvasStrings->PAUSE];
        [self removePauseCommand];
        [self addCommand:[MyCommandsFactory getInstance]->RESUME_COMMAND];
        [self setPaused:true];
}


// synchronized
- (void) unPause {
        [self->logUtil putF:self->commonStrings->START :self :self->canvasStrings->UN_PAUSE];
        [self removeCommand:[MyCommandsFactory getInstance]->RESUME_COMMAND];
        [self addCommand:[MyCommandsFactory getInstance]->PAUSE_COMMAND];
        [self setPaused:false];
}


// throws Exception
- (void) process {
        [self->displayInfo process];
}


- (void) paint:(Graphics*)graphics {
}


- (void) draw:(Graphics*)graphics {
}


- (bool) hasChild:(MyCanvas*)displayable {
        return [self->childNameList contains:displayable->name];
}


- (void) destroy {
        [self->logUtil putF:"Destroyed MyCanvas" :self :"destroy"];
}


- (void) setPaused:(bool)isPaused {
        self->paused = isPaused;
}


- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId {
}


- (void) keyRepeatedByDevice:(int32_t)keyCode :(int32_t)deviceId {
}


- (void) keyReleasedByDevice:(int32_t)keyCode :(int32_t)deviceId {
}


- (void) pointerDragged:(int32_t)x :(int32_t)y {
        [self->touchME pointerDragged:x :y];
}


- (void) pointerPressed:(int32_t)x :(int32_t)y {
        [self->touchME pointerPressed:x :y];
}


- (void) pointerReleased:(int32_t)x :(int32_t)y {
        [self->touchME pointerReleased:x :y];
}


- (void) nextSong:(Sound*)nextSongSound :(int32_t)leftVolume :(int32_t)rightVolume {
}

@end

