// Generated Code Do Not Modify
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


GameKeyEvent* GameKeyEvent_NONE;

void GameKeyEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameKeyEvent_NONE = ((GameKeyEvent*) [((GameKeyEvent*) [GameKeyEvent alloc]) init:[NullUtil getInstance]->NULL_OBJECT :-1 :-1 :-1 :-1 :false]);
}

@implementation GameKeyEvent

- (void) initFields {
    
    self->repeated = false;
    
    self->gameActionKey = 0;
    self->originalKey = 0;
}


+ (GameKeyEvent*) createEvent:(id)anyType :(int32_t)sourceId :(int32_t)key {
        return ((GameKeyEvent*) [((GameKeyEvent*) [GameKeyEvent alloc]) init:anyType :sourceId :0 :0 :key :false]);
}


- (instancetype) init:(id)anyType :(int32_t)sourceId :(int32_t)originalKey :(int32_t)gameActionKey :(int32_t)key :(bool)repeated {
        self = [super init:anyType];
        [self initFields];
        self->sourceId = sourceId;
        [self setOriginalKey:originalKey];
        self->key = key;
        [self setGameActionKey:gameActionKey];
        [self setRepeatEvents:repeated];
    return self;
}


- (void) initMethod:(id)anyType {
        [self setSource:anyType];
}


- (void) setRepeatEvents:(bool)repeated {
        self->repeated = repeated;
}


- (bool) hasRepeatEvents {
        return self->repeated;
}


- (int32_t) getKey {
        return self->key;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"\nKey: "];
        [stringBuffer appendint:[self getKey]];
        return [stringBuffer toString];
}


- (int32_t) getOriginalKey {
        return self->originalKey;
}


- (void) setOriginalKey:(int32_t)originalKey {
        self->originalKey = originalKey;
}


- (int32_t) getGameActionKey {
        return self->gameActionKey;
}


- (void) setGameActionKey:(int32_t)gameActionKey {
        self->gameActionKey = gameActionKey;
}


- (int32_t) getSourceId {
        return self->sourceId;
}

@end

