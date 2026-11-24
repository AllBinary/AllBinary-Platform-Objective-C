// Generated Code Do Not Modify
#include "org/allbinary/image/ImageCacheBase.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/NullImage.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/image/ImageFactory.h"
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif



void ImageCacheBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageCacheBase

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->imageFactory = [ImageFactory getInstance];
    self->hashtable = [[StdUtil getInstance] createHashtable];
    self->SIZE = 128;
    self->widths = ((int32_t*) java_array_new(sizeof(int32_t), self->SIZE));
    self->heights = ((int32_t*) java_array_new(sizeof(int32_t), self->SIZE));
    self->listOfList = ((BasicArrayList**) java_array_new(sizeof(BasicArrayList*), self->SIZE));
    self->availableListOfList = ((BasicArrayList**) java_array_new(sizeof(BasicArrayList*), self->SIZE));
    self->volume = 0;
    self->nextIndex = 0;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        for (int32_t index = java_array_length(self->listOfList) - 1; index >= 0; index--) {
            self->listOfList[index] = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
        }
        for (int32_t index = java_array_length(self->availableListOfList) - 1; index >= 0; index--) {
            self->availableListOfList[index] = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
        }
    return self;
}


- (Image*) getImage:(id)resourceId {
        id imageCanBeNull = [self->hashtable get:JAVA_BOX(resourceId)];
        if (imageCanBeNull == nil) {
            return (NullImage_staticInit(), NullImage_NULL_IMAGE);
        }
        return ((Image*) imageCanBeNull);
}


- (void) releaseAll {
        for (int32_t index = java_array_length(self->listOfList) - 1; index >= 0; index--) {
            [self->availableListOfList[index] clear];
            [self->availableListOfList[index] addAllList:self->listOfList[index]];
        }
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"ImageCache: "] append:[self toString]] toString] :self :"releaseAll"];
}


- (int32_t) getIndexWH:(int32_t)width :(int32_t)height {
        int32_t foundIndex = -1;
        int32_t size = java_array_length(self->widths);
        for (int32_t index = 0; index < size; index++) {
            if (self->widths[index] == width && self->heights[index] == height) {
                foundIndex = index;
                return foundIndex;
            }
        }
        return foundIndex;
}


- (Image*) getFromAvailable:(int32_t)foundIndex :(int32_t)width :(int32_t)height {
        if (foundIndex != -1) {
            if ([self->availableListOfList[foundIndex] size] > 0) {
                BasicArrayList* list = self->availableListOfList[foundIndex];
                return ((Image*) [list removeAt:[list size] - 1]);
            }
        }
        return (NullImage_staticInit(), NullImage_NULL_IMAGE);
}


// throws Exception
- (Image*) get:(const char*)caller :(int32_t)width :(int32_t)height {
        java_throw(java_exception_new("RuntimeException", ""));
}


// throws Exception
- (Image*) getWithKey:(id)key {
        java_throw(java_exception_new("RuntimeException", ""));
}


// throws Exception
- (Image*) createImage:(const char*)caller :(int32_t)width :(int32_t)height {
        return [self->imageFactory createImage:caller :width :height];
}


// throws Exception
- (Image*) createImageFromInputStream:(id)key :(InputStream*)inputStream {
        return [self->imageFactory createImageFromInputStream:key :inputStream];
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        for (int32_t index = self->nextIndex - 1; index >= 0; index--) {
            int32_t width = self->widths[index];
            int32_t height = self->heights[index];
            int32_t total = [self->listOfList[index] size];
            int32_t totalAvailable = [self->availableListOfList[index] size];
            [stringBuffer append:" w: "];
            [stringBuffer appendint:width];
            [stringBuffer append:" h: "];
            [stringBuffer appendint:height];
            [stringBuffer append:[CommonSeps getInstance]->SPACE];
            [stringBuffer append:[CommonLabels getInstance]->TOTAL_LABEL];
            [stringBuffer appendint:total];
            [stringBuffer append:" available: "];
            [stringBuffer appendint:totalAvailable];
        }
        return [stringBuffer toString];
}


- (ABHashtable*) getHashtableP {
        return self->hashtable;
}


- (void) initMethod:(Image*)image {
}


- (void) initProgress {
}

@end

