// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "javax/microedition/lcdui/Displayable.h"
#include "org/allbinary/AndroidUtil.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEvent.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h"
#include "org/allbinary/graphics/displayable/event/LastDisplayChangeEventHandler.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#include "org/allbinary/graphics/threed/SWTJOGLProcessor.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/graphics/displayable/BaseScalable.h"
#include "org/allbinary/graphics/displayable/ScalableListener.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
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
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/system/os/OperatingSystemFactory.h")
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
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
#if __has_include("org/allbinary/graphics/threed/SWTJOGLProcessor.h")
#include "org/allbinary/graphics/threed/SWTJOGLProcessor.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h")
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/event/LastDisplayChangeEventHandler.h")
#include "org/allbinary/graphics/displayable/event/LastDisplayChangeEventHandler.h"
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
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/system/os/OperatingSystemFactory.h")
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
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
#if __has_include("org/allbinary/graphics/threed/SWTJOGLProcessor.h")
#include "org/allbinary/graphics/threed/SWTJOGLProcessor.h"
#endif


static DisplayInfoSingleton* DisplayInfoSingleton_SINGLETON;

void DisplayInfoSingleton_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DisplayInfoSingleton_SINGLETON = ((DisplayInfoSingleton*) [((DisplayInfoSingleton*) [DisplayInfoSingleton alloc]) init]);
}

@implementation DisplayInfoSingleton

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonLabels = [CommonLabels getInstance];
    self->commonSeps = [CommonSeps getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->ORIENTATION = "ORIENTATION";
    self->ADJUSTING_FOR_SCALING_IN_PORTRAIT = "Adjusting for Scaling in portrait display ratio: ";
    self->ADJUSTING_FOR_SCALING_IN_LANDSCAPE = "Adjusting for Scaling in landscape display ratio: ";
    self->last = ((int32_t*) java_array_new(sizeof(int32_t), 4));
    self->lastHalf = ((int32_t*) java_array_new(sizeof(int32_t), 4));
    self->full = ((int32_t*) java_array_new(sizeof(int32_t), 4));
    self->top = 0;
    self->left = 0;
    self->xOffset = 0;
    self->yOffset = 0;
    self->scaleLargestTo = 0.0f;
    self->WIDTH = 0;
    self->HEIGHT = 1;
    self->CUSTOM_WIDTH = 2;
    self->CUSTOM_HEIGHT = 3;
    self->scalableListener = ((BaseScalable*) [((BaseScalable*) [BaseScalable alloc]) init]);
    self->displayRatio = 0.0f;
    self->ratio = 1.0f;
    self->SET_LAST_SIZE_METHOD_NAME = "setLastSize";
    self->FULL_WIDTH = " FullWidth: ";
    self->FULL_HEIGHT = " FullHeight: ";
    self->LAST_WIDTH = "LastWidth: ";
    self->LAST_HEIGHT = " LastHeight: ";
    self->PORTRAIT = "Portrait";
    self->LANDSCAPE = "Landscape";
    self->displayChangeEvent = ((DisplayChangeEvent*) [((DisplayChangeEvent*) [DisplayChangeEvent alloc]) init:self]);
    self->FIRE_METHOD_NAME = "fire";
    self->REASON = "reason: ";
    self->UPDATE_FROM_ORIENTATION_CHANGE = "Updating from Orientation Change ";
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    self->DISPLAY_INFO = "Display Info: ";
    self->FULL = "full";
    self->LAST = "last";
    self->LAST_HALF = "lastHalf";
}


+ (DisplayInfoSingleton*) getInstance {
        return (DisplayInfoSingleton_staticInit(), DisplayInfoSingleton_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        int32_t size = java_array_length(self->last);
        for (int32_t index = 0; index < size; index++) {
            self->last[index] = 0;
            self->lastHalf[index] = 0;
            self->full[index] = 0;
        }
        if ([AndroidUtil isAndroid]) {
            self->scaleLargestTo = 640.0f;
        } else {
            self->scaleLargestTo = 1080.0f;
        }
    return self;
}


- (int32_t*) getLastHalf {
        return self->lastHalf;
}


- (int32_t*) getLast {
        return self->last;
}


- (int32_t*) getFull {
        return self->full;
}


- (float) getScaleLargestTo {
        return self->scaleLargestTo;
}


- (void) setScaleLargestTo:(int32_t)scaleLargestTo {
        self->scaleLargestTo = ((float) scaleLargestTo);
}


- (void) setLastSize:(int32_t)aLastWidth :(int32_t)aLastHeight :(const char*)reason {
        if (self->full[self->WIDTH] != aLastWidth || self->full[self->HEIGHT] != aLastHeight) {
            [self setLastSizeForce:aLastWidth :aLastHeight :reason];
        }
}


- (void) setLastSizeForce:(int32_t)aLastWidth :(int32_t)aLastHeight :(const char*)reason {
        StringMaker* stringMaker = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [self->logUtil putF:[[[stringMaker append:[CommonLabels getInstance]->START_LABEL] append:reason] toString] :self :self->SET_LAST_SIZE_METHOD_NAME];
        int32_t aFullWidth = aLastWidth;
        int32_t aFullHeight = aLastHeight;
        [stringMaker delete:0 :[stringMaker length]];
        [self->logUtil putF:[[[[[[stringMaker append:self->FULL_WIDTH] appendint:aFullWidth] append:self->FULL_HEIGHT] appendint:aFullHeight] append:[self toString]] toString] :self :self->SET_LAST_SIZE_METHOD_NAME];
        GenericOperatingSystem* operatingSystemInterface = [[OperatingSystemFactory getInstance] getOperatingSystemInstance];
        if ([operatingSystemInterface isOverScan]) {
            aLastWidth = aLastWidth * [operatingSystemInterface getOverScanXPercent] / 100;
            aLastHeight = aLastHeight * [operatingSystemInterface getOverScanYPercent] / 100;
        }
        if ([operatingSystemInterface isScalable]) {
            if ([self isPortraitWH:aLastWidth :aLastHeight]) {
                if (((float) aLastHeight) > self->scaleLargestTo) {
                    self->displayRatio = self->scaleLargestTo / ((float) aLastHeight);
                    self->ratio = ((float) aLastHeight) / self->scaleLargestTo;
                    [stringMaker delete:0 :[stringMaker length]];
                    [self->logUtil putF:[[[stringMaker append:self->ADJUSTING_FOR_SCALING_IN_PORTRAIT] appendfloat:self->displayRatio] toString] :self :self->SET_LAST_SIZE_METHOD_NAME];
                    aLastWidth = ((int32_t) (((float) aLastWidth) * self->displayRatio));
                    aLastHeight = ((int32_t) (((float) aLastHeight) * self->displayRatio));
                    [self->scalableListener scale:self->ratio];
                } else {
                    self->ratio = 1.0f;
                    [self->scalableListener scale:self->ratio];
                }
            } else {
                if (((float) aLastWidth) > self->scaleLargestTo) {
                    self->displayRatio = self->scaleLargestTo / ((float) aLastWidth);
                    self->ratio = ((float) aLastWidth) / self->scaleLargestTo;
                    [stringMaker delete:0 :[stringMaker length]];
                    [self->logUtil putF:[[[stringMaker append:self->ADJUSTING_FOR_SCALING_IN_LANDSCAPE] appendfloat:self->displayRatio] toString] :self :self->SET_LAST_SIZE_METHOD_NAME];
                    aLastWidth = ((int32_t) (((float) aLastWidth) * self->displayRatio));
                    aLastHeight = ((int32_t) (((float) aLastHeight) * self->displayRatio));
                    [self->scalableListener scale:self->ratio];
                } else {
                    self->ratio = 1.0f;
                    [self->scalableListener scale:self->ratio];
                }
            }
        }
        [stringMaker delete:0 :[stringMaker length]];
        [self->logUtil putF:[[[[[stringMaker append:self->LAST_WIDTH] appendint:aLastWidth] append:self->LAST_HEIGHT] appendint:aLastHeight] toString] :self :self->SET_LAST_SIZE_METHOD_NAME];
        self->xOffset = aFullWidth - aLastWidth;
        self->yOffset = aFullHeight - aLastHeight;
        self->left = [self->scalableListener getLeft:self->xOffset];
        self->top = [self->scalableListener getTop:self->yOffset];
        self->full[self->WIDTH] = aFullWidth;
        self->full[self->HEIGHT] = aFullHeight;
        self->last[self->WIDTH] = aLastWidth;
        self->lastHalf[self->WIDTH] = (self->last[self->WIDTH] >> 1);
        self->last[self->HEIGHT] = aLastHeight;
        self->lastHalf[self->HEIGHT] = (self->last[self->HEIGHT] >> 1);
        [[SWTJOGLProcessor getInstance] setCustom:aLastWidth :aLastHeight :self->ratio];
        [self add:self->SET_LAST_SIZE_METHOD_NAME];
}


- (bool) isPortraitWH:(int32_t)lastWidth :(int32_t)lastHeight {
        if (lastHeight > lastWidth) {
            return true;
        } else {
            return false;
        }
}


- (bool) isPortrait {
        return [self isPortraitWH:self->last[self->WIDTH] :self->last[self->HEIGHT]];
}


- (void) add:(const char*)reason {
        StringMaker* stringMaker = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [self->logUtil putF:[[[stringMaker append:self->REASON] append:reason] toString] :self :self->FIRE_METHOD_NAME];
        [stringMaker delete:0 :[stringMaker length]];
        [self->logUtil putF:[self toStringAppend:stringMaker] :self :self->FIRE_METHOD_NAME];
        [self->list add:reason];
}


- (void) process {
        JAVA_TRY {
            if ([self->list size] > 0) {
                [self processForced];
            }
            [self->list clear];
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil putOE:self->commonStrings->EXCEPTION :self :self->FIRE_METHOD_NAME :e];
        } JAVA_END_TRY;
}


- (void) processForced {
        JAVA_TRY {
            SWTJOGLProcessor* swtJOGLProcessor = [SWTJOGLProcessor getInstance];
            [swtJOGLProcessor clear];
            [[DisplayChangeEventHandler getInstance] fireEvent:self->displayChangeEvent];
            [[LastDisplayChangeEventHandler getInstance] fireEvent:self->displayChangeEvent];
            [swtJOGLProcessor onSurfaceChanged];
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil putOE:self->commonStrings->EXCEPTION :self :self->FIRE_METHOD_NAME :e];
        } JAVA_END_TRY;
}


- (void) update:(Displayable*)displayable :(const char*)reason {
        int32_t aLastWidth = [displayable getWidth];
        int32_t aLastHeight = [displayable getHeight];
        int32_t aFullWidth = aLastWidth;
        int32_t aFullHeight = aLastHeight;
        StringMaker* stringMaker = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [self->logUtil putF:[[[[[[[[[stringMaker append:[CommonLabels getInstance]->START_LABEL] append:reason] append:self->LAST_WIDTH] appendint:aLastWidth] append:self->LAST_HEIGHT] appendint:aLastHeight] append:self->commonSeps->SPACE] append:[self toString]] toString] :self :self->commonStrings->UPDATE];
        if (aLastWidth > 0 && aLastHeight > 0) {
            Features* features = [Features getInstance];
            OpenGLFeatureFactory* openGLFeatureFactory = [OpenGLFeatureFactory getInstance];
            if (![features isDefault:openGLFeatureFactory->OPENGL] || self->last[self->WIDTH] != aLastWidth || self->last[self->HEIGHT] != aLastHeight) {
                [stringMaker delete:0 :[stringMaker length]];
                [self->logUtil putF:[[stringMaker append:self->UPDATE_FROM_ORIENTATION_CHANGE] toString] :self :self->commonStrings->UPDATE];
                GenericOperatingSystem* operatingSystemInterface = [[OperatingSystemFactory getInstance] getOperatingSystemInstance];
                if ([operatingSystemInterface isOverScan]) {
                    aLastWidth = aLastWidth * [operatingSystemInterface getOverScanXPercent] / 100;
                    aLastHeight = aLastHeight * [operatingSystemInterface getOverScanYPercent] / 100;
                }
                if ([operatingSystemInterface isScalable]) {
                    if ([self isPortraitWH:aLastWidth :aLastHeight]) {
                        if (((float) aLastHeight) > self->scaleLargestTo) {
                            self->displayRatio = self->scaleLargestTo / ((float) aLastHeight);
                            self->ratio = ((float) aLastHeight) / self->scaleLargestTo;
                            [stringMaker delete:0 :[stringMaker length]];
                            [self->logUtil putF:[[[stringMaker append:self->ADJUSTING_FOR_SCALING_IN_PORTRAIT] appendfloat:self->displayRatio] toString] :self :self->commonStrings->UPDATE];
                            aLastWidth = ((int32_t) (((float) aLastWidth) * self->displayRatio));
                            aLastHeight = ((int32_t) (((float) aLastHeight) * self->displayRatio));
                            [self->scalableListener scale:self->ratio];
                        } else {
                            self->ratio = 1.0f;
                            [self->scalableListener scale:self->ratio];
                        }
                    } else {
                        if (((float) aLastWidth) > self->scaleLargestTo) {
                            self->displayRatio = self->scaleLargestTo / ((float) aLastWidth);
                            self->ratio = ((float) aLastWidth) / self->scaleLargestTo;
                            [stringMaker delete:0 :[stringMaker length]];
                            [self->logUtil putF:[[[stringMaker append:self->ADJUSTING_FOR_SCALING_IN_LANDSCAPE] appendfloat:self->displayRatio] toString] :self :self->commonStrings->UPDATE];
                            aLastWidth = ((int32_t) (((float) aLastWidth) * self->displayRatio));
                            aLastHeight = ((int32_t) (((float) aLastHeight) * self->displayRatio));
                            [self->scalableListener scale:self->ratio];
                        } else {
                            self->ratio = 1.0f;
                            [self->scalableListener scale:self->ratio];
                        }
                    }
                }
                [stringMaker delete:0 :[stringMaker length]];
                [self->logUtil putF:[[[[[[stringMaker append:self->UPDATE_FROM_ORIENTATION_CHANGE] append:self->LAST_WIDTH] appendint:aLastWidth] append:self->LAST_HEIGHT] appendint:aLastHeight] toString] :self :self->commonStrings->UPDATE];
                self->xOffset = aFullWidth - aLastWidth;
                self->yOffset = aFullHeight - aLastHeight;
                self->left = [self->scalableListener getLeft:self->xOffset];
                self->top = [self->scalableListener getTop:self->yOffset];
                self->full[self->WIDTH] = aFullWidth;
                self->full[self->HEIGHT] = aFullHeight;
                self->last[self->WIDTH] = aLastWidth;
                self->lastHalf[self->WIDTH] = (self->last[self->WIDTH] >> 1);
                self->last[self->HEIGHT] = aLastHeight;
                self->lastHalf[self->HEIGHT] = (self->last[self->HEIGHT] >> 1);
                [[SWTJOGLProcessor getInstance] setCustom:aLastWidth :aLastHeight :self->ratio];
                [self add:self->commonStrings->UPDATE];
            }
        }
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        return [self toStringAppend:stringBuffer];
}


- (const char*) toStringAppend:(StringMaker*)stringBuffer {
        [stringBuffer append:self->DISPLAY_INFO];
        [stringBuffer append:self->FULL];
        [stringBuffer append:self->commonLabels->WIDTH_LABEL];
        [stringBuffer appendint:self->full[self->WIDTH]];
        [stringBuffer append:self->commonSeps->SPACE];
        [stringBuffer append:self->FULL];
        [stringBuffer append:self->commonLabels->HEIGHT_LABEL];
        [stringBuffer appendint:self->full[self->HEIGHT]];
        [stringBuffer append:self->commonSeps->SPACE];
        [stringBuffer append:self->LAST];
        [stringBuffer append:self->commonLabels->WIDTH_LABEL];
        [stringBuffer appendint:self->last[self->WIDTH]];
        [stringBuffer append:self->commonSeps->SPACE];
        [stringBuffer append:self->LAST];
        [stringBuffer append:self->commonLabels->HEIGHT_LABEL];
        [stringBuffer appendint:self->last[self->HEIGHT]];
        [stringBuffer append:self->commonSeps->SPACE];
        [stringBuffer append:self->LAST_HALF];
        [stringBuffer append:self->commonLabels->WIDTH_LABEL];
        [stringBuffer appendint:self->lastHalf[self->WIDTH]];
        [stringBuffer append:self->commonSeps->SPACE];
        [stringBuffer append:self->LAST_HALF];
        [stringBuffer append:self->commonLabels->HEIGHT_LABEL];
        [stringBuffer appendint:self->lastHalf[self->HEIGHT]];
        [stringBuffer append:self->commonSeps->SPACE];
        [stringBuffer append:([self isPortrait] ? self->PORTRAIT : self->LANDSCAPE)];
        return [stringBuffer toString];
}


- (int32_t) getTop {
        return self->top;
}


- (int32_t) getLeft {
        return self->left;
}


- (int32_t) getLastWidth {
        return self->last[self->WIDTH];
}


- (int32_t) getLastHeight {
        return self->last[self->HEIGHT];
}


- (int32_t) getLastHalfWidth {
        return self->lastHalf[self->WIDTH];
}


- (int32_t) getLastHalfHeight {
        return self->lastHalf[self->HEIGHT];
}


- (int32_t) getCustomLastWidth {
        return self->last[self->CUSTOM_WIDTH];
}


- (int32_t) getCustomLastHeight {
        return self->last[self->CUSTOM_HEIGHT];
}


- (int32_t) getRawLastWidth {
        return self->last[self->WIDTH];
}


- (int32_t) getRawLastHeight {
        return self->last[self->HEIGHT];
}


- (void) setCustom:(int32_t)width :(int32_t)height {
        self->last[self->CUSTOM_WIDTH] = width;
        self->lastHalf[self->CUSTOM_WIDTH] = (self->last[self->CUSTOM_WIDTH] >> 1);
        self->last[self->CUSTOM_HEIGHT] = height;
        self->lastHalf[self->CUSTOM_HEIGHT] = (self->last[self->CUSTOM_HEIGHT] >> 1);
}


- (void) setScalableListener:(BaseScalable*)scalableListener {
        self->scalableListener = scalableListener;
}


- (ScalableListener*) getScalableListener {
        return self->scalableListener;
}


- (float) getRatio {
        return self->ratio;
}


- (float) getDisplayRatio {
        return self->displayRatio;
}


- (void) setOffset:(int32_t)left :(int32_t)top {
        self->left = left;
}


- (int32_t) getxOffset {
        return self->xOffset;
}


- (int32_t) getyOffset {
        return self->yOffset;
}

@end

