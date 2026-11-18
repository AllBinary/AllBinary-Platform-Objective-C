// Generated Code Do Not Modify
#include "org/allbinary/game/input/TestingInputSingleton.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/graphics/RectangleFactory.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/view/ViewPosition.h"
#include "org/allbinary/game/input/GameInputInterface.h"
#include "org/allbinary/game/input/GameInputProcessor.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/game/input/GameInputProcessorUtil.h"
#include "org/allbinary/game/input/TestInputInterface.h"


static TestingInputSingleton* TestingInputSingleton_instance;

void TestingInputSingleton_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TestingInputSingleton_instance = [((TestingInputSingleton*) [TestingInputSingleton alloc]) init];
}

@implementation TestingInputSingleton

- (void) initFields {
    self->inputProcessorArray = ((GameInputProcessor**) java_array_new(sizeof(GameInputProcessor*), [InputFactory getInstance]->MAX));
    self->testInputPaintable = [NullPaintable getInstance];
}


+ (TestingInputSingleton*) getInstance {
        return (TestingInputSingleton_staticInit(), TestingInputSingleton_instance);
}


- (instancetype) init {
        self = [super init:[StringUtil getInstance]->EMPTY_STRING :(RectangleFactory_staticInit(), RectangleFactory_SINGLETON) :[ViewPosition getInstanceD]];
        [self initFields];
        [GameInputProcessorUtil init_:self->inputProcessorArray];
    return self;
}


- (void) initInputProcessors {
}


- (void) initInputProcessorsForTestInput:(TestInputInterface*)aTestInputInterface {
        TestInputInterface* testInputInterface = aTestInputInterface;
        self->testInputPaintable = testInputInterface;
        self->inputProcessorArray[(Canvas_staticInit(), Canvas_UP)] = [((GameInputProcessor*) [GameInputProcessor alloc]) init]
#if 0 /* Java anonymous class body: implement it as a named subclass */
            

        // throws Exception
        - (void) processEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent {
                [testInputInterface up];
        }
#endif
;
        self->inputProcessorArray[(Canvas_staticInit(), Canvas_DOWN)] = [((GameInputProcessor*) [GameInputProcessor alloc]) init]
#if 0 /* Java anonymous class body: implement it as a named subclass */
            

        // throws Exception
        - (void) processEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent {
                [testInputInterface down];
        }
#endif
;
        self->inputProcessorArray[(Canvas_staticInit(), Canvas_LEFT)] = [((GameInputProcessor*) [GameInputProcessor alloc]) init]
#if 0 /* Java anonymous class body: implement it as a named subclass */
            

        // throws Exception
        - (void) processEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent {
                [testInputInterface left];
        }
#endif
;
        self->inputProcessorArray[(Canvas_staticInit(), Canvas_RIGHT)] = [((GameInputProcessor*) [GameInputProcessor alloc]) init]
#if 0 /* Java anonymous class body: implement it as a named subclass */
            

        // throws Exception
        - (void) processEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent {
                [testInputInterface right];
        }
#endif
;
        self->inputProcessorArray[(Canvas_staticInit(), Canvas_KEY_NUM7)] = [((GameInputProcessor*) [GameInputProcessor alloc]) init]
#if 0 /* Java anonymous class body: implement it as a named subclass */
            

        // throws Exception
        - (void) processEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent {
                [testInputInterface strafeLeft];
        }
#endif
;
        self->inputProcessorArray[(Canvas_staticInit(), Canvas_KEY_NUM9)] = [((GameInputProcessor*) [GameInputProcessor alloc]) init]
#if 0 /* Java anonymous class body: implement it as a named subclass */
            

        // throws Exception
        - (void) processEvent:(AllBinaryLayerManager*)allbinaryLayerManager :(GameKeyEvent*)gameKeyEvent {
                [testInputInterface strafeRight];
        }
#endif
;
        [GameInputProcessorUtil init_:self->inputProcessorArray];
}


// throws Exception
// synchronized
- (void) processInputList:(AllBinaryLayerManager*)allbinaryLayerManager :(BasicArrayList*)list {
        int32_t key = 0;
        GameKeyEvent* gameKeyEvent = nullptr;
        int32_t size = [list size];
        for (int32_t index = 0; index < size; index++) {
            gameKeyEvent = (((GameKeyEvent*) list->objectArray[index]));
            key = [gameKeyEvent getKey];
            [self->inputProcessorArray[key] processEvent:allbinaryLayerManager :(GameKeyEvent_staticInit(), GameKeyEvent_NONE)];
        }
}


// throws Exception
// synchronized
- (void) processInput:(AllBinaryLayerManager*)allbinaryLayerManager {
        [self processInputList:allbinaryLayerManager :[self getGameKeyEventList]];
        [[self getGameKeyEventList] clear];
}


- (void) paint:(Graphics*)graphics {
        [self->testInputPaintable paint:graphics];
}


- (bool) implmentsGameInputInterface {
        return true;
}

@end

