// Generated Code Do Not Modify
#include "javax/microedition/lcdui/NullImage.h"
#include "javax/microedition/lcdui/Image.h"


Image** NullImage_NULL_IMAGE_ARRAY;
Image* NullImage_NULL_IMAGE;

void NullImage_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullImage_NULL_IMAGE_ARRAY = ((Image**) java_array_new(sizeof(Image*), 0));
    NullImage_NULL_IMAGE = [((Image*) [Image alloc]) init];
}

@implementation NullImage

- (instancetype) init {
    self = [super init];
    return self;
}

@end

