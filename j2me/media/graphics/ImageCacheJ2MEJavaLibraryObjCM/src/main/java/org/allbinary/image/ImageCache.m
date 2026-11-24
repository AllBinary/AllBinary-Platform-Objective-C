// Generated Code Do Not Modify
#include "org/allbinary/image/ImageCache.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/NullImage.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/data/resource/ResourceUtil.h"
#include "org/allbinary/game/gd/resource/GDResources.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/system/Memory.h"
#include "org/allbinary/image/ImageCacheBase.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


ImageCache* ImageCache_NULL_IMAGE_CACHE;

void ImageCache_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ImageCache_NULL_IMAGE_CACHE = ((ImageCache*) [((ImageCache*) [ImageCache alloc]) init]);
}

@implementation ImageCache

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
    self->tsUtil = [TsUtil getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) addListener:(id)renderer {
}


- (int32_t) getIndex:(id)key {
        GDResources* gdResources = [GDResources getInstance];
        const char** resourceStringArray = gdResources->resourceStringArray;
        int32_t size = java_array_length(resourceStringArray);
        for (int32_t index = 0; index < size; index++) {
            if (resourceStringArray[index] == key) {
                return index;
            }
        }
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"unable to find key: "] append:[[StringUtil getInstance] toString:key]] toString] :self :self->commonStrings->RUN];
        java_throw(java_exception_new("RuntimeException", ""));
}


// throws Exception
- (Image*) get:(const char*)caller :(int32_t)width :(int32_t)height {
        int32_t foundIndex = [self getIndexWH:width :height];
        Image* image = [self getFromAvailable:foundIndex :width :height];
        if (image == (NullImage_staticInit(), NullImage_NULL_IMAGE)) {
            self->volume += width * height;
            if (self->volume > 32000) {
                [self->tsUtil gc];
                self->volume = 0;
            }
            image = [self createImage:caller :width :height];
            int32_t* widths = self->widths;
            if (self->nextIndex > java_array_length(widths) - 1) {
                if (foundIndex == -1) {
                    foundIndex = self->nextIndex;
                    widths[self->nextIndex] = width;
                    self->heights[self->nextIndex] = height;
                    self->nextIndex++;
                }
                [self->listOfList[foundIndex] add:image];
            }
        }
        return image;
}


// throws Exception
- (Image*) getWithKey:(id)key {
        Image* image = [self getImage:key];
        if (image == (NullImage_staticInit(), NullImage_NULL_IMAGE)) {
            ResourceUtil* resourceUtil = [ResourceUtil getInstance];
            InputStream* resourceInputStream = [resourceUtil getResourceAsStream:((const char*) key)];
            if (resourceInputStream == nil) {
                java_throw(java_exception_new("RuntimeException", [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Image resource is not available for key: "] append:[[StringUtil getInstance] toString:key]] toString]));
            }
            JAVA_TRY {
                image = [self createImageFromInputStream:key :resourceInputStream];
            } JAVA_CATCH(Exception, e) {
                [self->logUtil put:"Exception: Trying Again After GC" :self :self->commonStrings->GET :e];
                [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"InputStream: "] append:[[StringUtil getInstance] toString:resourceInputStream]] toString] :self :self->commonStrings->GET];
                [self->tsUtil gc];
                [self->tsUtil gc];
                [self->logUtil putF:[Memory getInfo] :self :self->commonStrings->GET];
                java_sleep(100);
                image = [self createImageFromInputStream:key :resourceInputStream];
            } JAVA_END_TRY;
            if ([J2MEUtil isHTML]) {
            } else {
                [resourceInputStream close];
            }
            [self->hashtable put:JAVA_BOX(key) :JAVA_BOX(image)];
        }
        return image;
}


// throws Exception
- (void) loadImageForAnimation {
}


- (void) progressEnded {
}


- (void) runTask {
}


- (bool) isLazy {
        return false;
}

@end

