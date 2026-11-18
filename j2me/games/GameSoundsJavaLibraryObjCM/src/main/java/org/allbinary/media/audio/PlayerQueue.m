// Generated Code Do Not Modify
#include "org/allbinary/media/audio/PlayerQueue.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/media/audio/Sound.h"
#include "org/allbinary/media/audio/NoSound.h"
#if __has_include("org/allbinary/media/audio/Player.h")
#include "org/allbinary/media/audio/Player.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/Player.h")
#include "org/allbinary/logic/communication/log/Player.h"
#endif
#if __has_include("org/allbinary/logic/string/Player.h")
#include "org/allbinary/logic/string/Player.h"
#endif
#if __has_include("org/allbinary/logic/string/Player.h")
#include "org/allbinary/logic/string/Player.h"
#endif
#if __has_include("org/allbinary/string/Player.h")
#include "org/allbinary/string/Player.h"
#endif
#if __has_include("org/allbinary/util/Player.h")
#include "org/allbinary/util/Player.h"
#endif
#if __has_include("org/allbinary/util/Player.h")
#include "org/allbinary/util/Player.h"
#endif


static const char* PlayerQueue_TOTAL = "Sounds In Queue: ";

void PlayerQueue_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PlayerQueue

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
    self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    
}


- (instancetype) init:(int32_t)max {
    self = [super init];
    [self initFields];
        self->max = max;
    return self;
}


- (void) add:(Sound*)sound {
        JAVA_TRY {
            if (![self->list contains:sound]) {
                [self->list add:sound];
            }
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->ADD];
        } JAVA_END_TRY;
}


- (bool) process {
        Sound* sound = [NoSound getInstance];
        JAVA_TRY {
            bool played = false;
            if ([self->list size] > 0) {
                sound = ((Sound*) [self->list removeAt:0]);
                if (sound != nil) {
                    [[sound getPlayerP] start];
                }
                while ([self->list size] > self->max) {
                    [self->list removeAt:0];
                }
                played = true;
            }
            return played;
        } JAVA_CATCH(Exception, e) {
            const char* resource = [StringUtil getInstance]->EMPTY_STRING;
            if (sound != nil) {
                resource = [sound getResource];
            }
            [PreLogUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonStrings->EXCEPTION_LABEL] append:resource] toString] :self :self->commonStrings->PROCESS];
            return false;
        } JAVA_END_TRY;
}


- (void) clear {
        [self->list clear];
}


- (const char*) toString {
        return [[[[((StringMaker*) [StringMaker alloc]) init] append:PlayerQueue_TOTAL] appendint:[self->list size]] toString];
}

@end

