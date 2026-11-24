// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScore.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void HighScore_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScore

- (void) initFields {
    
    
    
    
    
}


- (instancetype) init:(int32_t)id_ :(const char*)name :(GameInfo*)gameInfo :(int64_t)score {
    self = [super init];
    [self initFields];
        self->id_ = id_;
        self->name = name;
        self->gameInfo = gameInfo;
        self->score = score;
        self->scoreString = java_string_of(self->score);
    return self;
}


- (int32_t) getId {
        return self->id_;
}


- (const char*) getName {
        return self->name;
}


- (int64_t) getScore {
        return self->score;
}


// throws Exception
- (int8_t*) getAsBytes {
        ByteArrayOutputStream* byteArrayOutputStream = ((ByteArrayOutputStream*) [((ByteArrayOutputStream*) [ByteArrayOutputStream alloc]) init]);
        DataOutputStream* outputStream = ((DataOutputStream*) [((DataOutputStream*) [DataOutputStream alloc]) init:byteArrayOutputStream]);
        [outputStream writeUTF:[self getName]];
        [outputStream writeLong:[self getScore]];
        return [byteArrayOutputStream toByteArray];
}


- (GameInfo*) getGameInfo {
        return self->gameInfo;
}


- (const char*) getScoreString {
        return self->scoreString;
}


- (void) setName:(const char*)name {
        self->name = name;
}


- (const char*) toString {
        CommonSeps* commonSeps = [CommonSeps getInstance];
        return [[[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->name] append:commonSeps->COLON] appendlong:self->score] append:commonSeps->FORWARD_SLASH] append:self->scoreString] toString];
}

@end

