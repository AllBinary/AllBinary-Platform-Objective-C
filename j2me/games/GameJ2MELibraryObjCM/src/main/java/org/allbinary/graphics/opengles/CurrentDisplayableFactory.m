// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/CurrentDisplayableFactory.h"
#include "javax/microedition/lcdui/Displayable.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#include "org/allbinary/game/displayable/canvas/DemoCanvas.h"
#include "org/allbinary/game/displayable/canvas/GameInputMappingCanvas.h"
#include "org/allbinary/game/displayable/canvas/GameInputMappingInstructionsCanvas.h"
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"
#include "org/allbinary/game/displayable/canvas/NullDisplayable.h"
#include "org/allbinary/game/displayable/canvas/NullWaitGameRunnable.h"
#include "org/allbinary/game/layer/SWTUtil.h"
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#include "org/allbinary/graphics/GraphicsStrings.h"
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/thread/NullRunnable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"


static CurrentDisplayableFactory* CurrentDisplayableFactory_instance;

void CurrentDisplayableFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CurrentDisplayableFactory_instance = [((CurrentDisplayableFactory*) [CurrentDisplayableFactory alloc]) init];
}

@implementation CurrentDisplayableFactory

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
    self->canvasStrings = [CanvasStrings getInstance];
    self->stringUtil = [StringUtil getInstance];
    self->SET_DISPLAYABLE = "setDisplayable";
    self->SET_RUNNABLE = "setRunnable";
    self->CLEAR_RUNNABLE = "clearRunnable";
    self->SET_USED_RUNNABLE = "setUsedRunnable";
    self->RUNNABLE = "Runnable: ";
    self->RUNNABLE_WAS_ALREADY_IN_USE = "Runnable was already in use: ";
    self->DEFAULT_CHILD_NAME_LIST = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->displayable = [NullDisplayable getInstance];
    self->openGlReadydisplayable = [NullDisplayable getInstance];
    self->runnable = [NullWaitGameRunnable getInstance];
    self->usedRunnable = [NullWaitGameRunnable getInstance];
}


+ (CurrentDisplayableFactory*) getInstance {
        return (CurrentDisplayableFactory_staticInit(), CurrentDisplayableFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        [self->DEFAULT_CHILD_NAME_LIST add:self->canvasStrings->ABOUT];
        [self->DEFAULT_CHILD_NAME_LIST add:self->canvasStrings->OPTIONS];
        [self->DEFAULT_CHILD_NAME_LIST add:(GameInputMappingCanvas_staticInit(), GameInputMappingCanvas_NAME)];
        [self->DEFAULT_CHILD_NAME_LIST add:(GameInputMappingInstructionsCanvas_staticInit(), GameInputMappingInstructionsCanvas_NAME)];
        [self->DEFAULT_CHILD_NAME_LIST add:(HighScoresCanvas_staticInit(), HighScoresCanvas_NAME)];
    return self;
}


- (void) setMyCanvas:(MyCanvas*)displayable {
        if (java_objc_instanceof(self->displayable, [MyCanvas class])) {
            if ([displayable hasChild:((MyCanvas*) self->displayable)]) {
                [PreLogUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Child Displayable is already set for: "] append:[self->stringUtil toString:displayable]] toString] :self :self->SET_DISPLAYABLE];
                return;
            }
        }
        [self setDisplayable:displayable];
}


- (void) setDisplayable:(Displayable*)displayable {
        self->displayable = displayable;
        [self setOpenGlReadydisplayable:displayable];
}


- (void) setOpenGlReadydisplayable:(Displayable*)openGlReadydisplayable {
        self->openGlReadydisplayable = openGlReadydisplayable;
        [self update];
}


- (Displayable*) getOpenGlReadydisplayable {
        return self->openGlReadydisplayable;
}


- (void) setRunnable:(GameRunnable*)runnable {
        [PreLogUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->RUNNABLE] append:[self->stringUtil toString:runnable]] toString] :self :self->SET_RUNNABLE];
        self->runnable = runnable;
        if (self->usedRunnable != self->runnable) {
            [self update];
        } else {
            [PreLogUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->RUNNABLE_WAS_ALREADY_IN_USE] append:[self->stringUtil toString:runnable]] toString] :self :self->SET_RUNNABLE];
        }
}


- (void) clearRunnable {
        [PreLogUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->RUNNABLE] append:[self->stringUtil toString:[NullRunnable getInstance]]] toString] :self :self->CLEAR_RUNNABLE];
        [self setUsedRunnable:[NullWaitGameRunnable getInstance]];
}


- (void) update {
        java_monitor_enter(self);
        {
            CommonSeps* commonSeps = [CommonSeps getInstance];
            Features* features = [Features getInstance];
            StringMaker* stringMaker = [((StringMaker*) [StringMaker alloc]) init];
            [stringMaker append:[self->stringUtil toString:self->openGlReadydisplayable]];
            if ((SWTUtil_staticInit(), SWTUtil_isSWT) && ![features isDefault:[OpenGLFeatureFactory getInstance]->OPENGL]) {
                [PreLogUtil put:[[[[[[stringMaker append:commonSeps->SPACE] append:(SWTUtil_staticInit(), SWTUtil_SWT)] append:commonSeps->SPACE] append:self->RUNNABLE] append:[self->stringUtil toString:[NullRunnable getInstance]]] toString] :self :self->commonStrings->UPDATE];
                [self setUsedRunnable:[NullWaitGameRunnable getInstance]];
            } else if ([J2MEUtil isHTML]) {
                [PreLogUtil put:[[[[[[stringMaker append:commonSeps->SPACE] append:[GraphicsStrings getInstance]->HTML] append:commonSeps->SPACE] append:self->RUNNABLE] append:[self->stringUtil toString:self->runnable]] toString] :self :self->commonStrings->UPDATE];
                [self setUsedRunnable:self->runnable];
            } else if (java_objc_instanceof(self->openGlReadydisplayable, [DemoCanvas class]) || java_objc_instanceof(self->openGlReadydisplayable, [AllBinaryGameCanvas class]) || [features isDefault:[OpenGLFeatureFactory getInstance]->OPENGL]) {
                [PreLogUtil put:[[[[[[stringMaker append:commonSeps->SPACE] append:[[OpenGLFeatureFactory getInstance]->OPENGL toString]] append:commonSeps->SPACE] append:self->RUNNABLE] append:[self->stringUtil toString:self->runnable]] toString] :self :self->commonStrings->UPDATE];
                [self setUsedRunnable:self->runnable];
            } else {
                [PreLogUtil put:[[[stringMaker append:self->RUNNABLE] append:[self->stringUtil toString:[NullRunnable getInstance]]] toString] :self :self->commonStrings->UPDATE];
                [self setUsedRunnable:[NullWaitGameRunnable getInstance]];
            }
        }
        java_monitor_exit(self);
}


- (Displayable*) getDisplayable {
        return self->displayable;
}


- (GameRunnable*) getUsedRunnable {
        return self->usedRunnable;
}


- (void) setUsedRunnable:(GameRunnable*)usedRunnable {
        [PreLogUtil put:[[[[[[((StringMaker*) [StringMaker alloc]) init] append:self->RUNNABLE] append:[self->stringUtil toString:self->runnable]] append:[CommonSeps getInstance]->COLON_SEP] append:[self->stringUtil toString:usedRunnable]] toString] :self :self->SET_USED_RUNNABLE];
        self->usedRunnable = usedRunnable;
}

@end

