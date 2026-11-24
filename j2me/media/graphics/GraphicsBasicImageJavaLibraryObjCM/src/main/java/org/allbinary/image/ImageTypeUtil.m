// Generated Code Do Not Modify
#include "org/allbinary/image/ImageTypeUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"


static ImageTypeUtil* ImageTypeUtil_SINGLETON;

void ImageTypeUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ImageTypeUtil_SINGLETON = ((ImageTypeUtil*) [((ImageTypeUtil*) [ImageTypeUtil alloc]) init]);
}

@implementation ImageTypeUtil

- (void) initFields {
    self->PNG = "png";
    self->JPG = "jpg";
    self->GIF = "gif";
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        [self->list add:self->JPG];
        [self->list add:self->GIF];
        [self->list add:self->PNG];
    return self;
}


- (bool) isSupported:(const char*)mediaFileType {
        mediaFileType = java_string_toLowerCase(mediaFileType);
        for (int32_t index = [self->list size] - 1; index >= 0; index--) {
            const char* name = ((const char*) [self->list get:index]);
            if (strcmp(mediaFileType, name) == 0) {
                return true;
            }
        }
        return false;
}


+ (ImageTypeUtil*) getInstance {
        return (ImageTypeUtil_staticInit(), ImageTypeUtil_SINGLETON);
}

@end

