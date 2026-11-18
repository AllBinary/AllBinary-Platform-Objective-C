// Generated Code Do Not Modify
#include "org/allbinary/audio/AudioContentTypeDataFactory.h"
#include "org/allbinary/audio/AudioContentTypeData.h"


static AudioContentTypeDataFactory* AudioContentTypeDataFactory_instance;

void AudioContentTypeDataFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AudioContentTypeDataFactory_instance = [((AudioContentTypeDataFactory*) [AudioContentTypeDataFactory alloc]) init];
}

@implementation AudioContentTypeDataFactory

- (void) initFields {
    self->MIME_AUDIO_TONE = [((AudioContentTypeData*) [AudioContentTypeData alloc]) init:"audio/x-tone-seq"];
    self->MIME_AUDIO_AMR = [((AudioContentTypeData*) [AudioContentTypeData alloc]) init:"audio/amr"];
    self->MIME_AUDIO_AMR_WB = [((AudioContentTypeData*) [AudioContentTypeData alloc]) init:"audio/amr-wb"];
    self->MIME_AUDIO_WAV = [((AudioContentTypeData*) [AudioContentTypeData alloc]) init:"audio/x-wav"];
    self->MIME_AUDIO_MIDI = [((AudioContentTypeData*) [AudioContentTypeData alloc]) init:"audio/midi"];
    self->MIME_AUDIO_SP_MIDI = [((AudioContentTypeData*) [AudioContentTypeData alloc]) init:"audio/sp-midi"];
}


+ (AudioContentTypeDataFactory*) getInstance {
        return (AudioContentTypeDataFactory_staticInit(), AudioContentTypeDataFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

