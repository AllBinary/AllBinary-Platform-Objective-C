// Generated Code Do Not Modify
#include "org/allbinary/game/input/GameInputProcessorComposite.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/input/PlayerGameInput.h"
#include "org/allbinary/game/input/GameInputProcessorInterface.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void GameInputProcessorComposite_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameInputProcessorComposite

- (void) initFields {
    
    
    self->NAME_LABEL = " GameInputProcessorInterface: ";
}


- (instancetype) init:(const char*)name :(GameInputProcessorInterface*)gameInputProcessorInterface {
        self = [super init:((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]) :((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]) :-1];
        [self initFields];
        self->name = name;
        self->gameInputProcessorInterface = gameInputProcessorInterface;
    return self;
}


// synchronized
- (void) update {
        JAVA_TRY {
            BasicArrayList* list = [self getGameKeyEventList];
            [((id<GameInputProcessorInterface>) self->gameInputProcessorInterface) onInput:list];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->UPDATE :e];
        } JAVA_END_TRY;
}


- (const char*) toString {
        return [[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:[super toString]] append:self->NAME_LABEL] append:self->name] toString];
}

@end

