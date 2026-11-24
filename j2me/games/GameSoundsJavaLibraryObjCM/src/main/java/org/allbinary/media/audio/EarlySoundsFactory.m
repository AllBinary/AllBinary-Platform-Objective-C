// Generated Code Do Not Modify
#include "org/allbinary/media/audio/EarlySoundsFactory.h"
#include "org/allbinary/media/audio/BaseSoundsFactory.h"
#include "org/allbinary/media/audio/Sound.h"
#include "org/allbinary/media/audio/SelectSound.h"
#include "org/allbinary/media/audio/ErrorSound.h"


static EarlySoundsFactory* EarlySoundsFactory_instance;

void EarlySoundsFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    EarlySoundsFactory_instance = ((EarlySoundsFactory*) [((EarlySoundsFactory*) [EarlySoundsFactory alloc]) init]);
}

@implementation EarlySoundsFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (Sound**) getSoundInterfaceArray {
        Sound** soundInterfaceArray = ((Sound**) java_array_new(sizeof(Sound*), 2));
        int32_t index = 0;
        soundInterfaceArray[index++] = [SelectSound getInstance];
        soundInterfaceArray[index++] = [ErrorSound getInstance];
        return soundInterfaceArray;
}


+ (EarlySoundsFactory*) getInstance {
        return (EarlySoundsFactory_staticInit(), EarlySoundsFactory_instance);
}

@end

