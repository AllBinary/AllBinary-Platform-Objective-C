// Generated Code Do Not Modify
#include "org/allbinary/animation/text/CustomTextBoxIndexedAnimationFactory.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/TextField.h"
#include "org/allbinary/graphics/form/item/CustomTextBox.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/game/canvas/ABToGBUtil.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/text/CustomTextBox2.h"
#include "org/allbinary/animation/text/CustomTextBoxIndexedAnimation.h"
#if __has_include("org/allbinary/animation/text/AllBinaryGameLayerManager.h")
#include "org/allbinary/animation/text/AllBinaryGameLayerManager.h"
#endif
#if __has_include("javax/microedition/lcdui/AllBinaryGameLayerManager.h")
#include "javax/microedition/lcdui/AllBinaryGameLayerManager.h"
#endif
#if __has_include("javax/microedition/lcdui/AllBinaryGameLayerManager.h")
#include "javax/microedition/lcdui/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/AllBinaryGameLayerManager.h")
#include "org/allbinary/graphics/form/item/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/animation/AllBinaryGameLayerManager.h")
#include "org/allbinary/animation/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/animation/AllBinaryGameLayerManager.h")
#include "org/allbinary/animation/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/game/canvas/AllBinaryGameLayerManager.h")
#include "org/allbinary/game/canvas/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/AllBinaryGameLayerManager.h")
#include "org/allbinary/game/displayable/canvas/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/AllBinaryGameLayerManager.h")
#include "org/allbinary/logic/communication/log/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/string/AllBinaryGameLayerManager.h")
#include "org/allbinary/string/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/logic/string/AllBinaryGameLayerManager.h")
#include "org/allbinary/logic/string/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/media/AllBinaryGameLayerManager.h")
#include "org/allbinary/media/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/animation/text/AllBinaryGameLayerManager.h")
#include "org/allbinary/animation/text/AllBinaryGameLayerManager.h"
#endif
#if __has_include("javax/microedition/lcdui/AllBinaryGameLayerManager.h")
#include "javax/microedition/lcdui/AllBinaryGameLayerManager.h"
#endif
#if __has_include("javax/microedition/lcdui/AllBinaryGameLayerManager.h")
#include "javax/microedition/lcdui/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/AllBinaryGameLayerManager.h")
#include "org/allbinary/graphics/form/item/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/animation/AllBinaryGameLayerManager.h")
#include "org/allbinary/animation/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/animation/AllBinaryGameLayerManager.h")
#include "org/allbinary/animation/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/game/canvas/AllBinaryGameLayerManager.h")
#include "org/allbinary/game/canvas/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/AllBinaryGameLayerManager.h")
#include "org/allbinary/game/displayable/canvas/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/AllBinaryGameLayerManager.h")
#include "org/allbinary/logic/communication/log/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/string/AllBinaryGameLayerManager.h")
#include "org/allbinary/string/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/logic/string/AllBinaryGameLayerManager.h")
#include "org/allbinary/logic/string/AllBinaryGameLayerManager.h"
#endif
#if __has_include("org/allbinary/media/AllBinaryGameLayerManager.h")
#include "org/allbinary/media/AllBinaryGameLayerManager.h"
#endif



void CustomTextBoxIndexedAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CustomTextBoxIndexedAnimationFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    
}


- (instancetype) init:(int32_t)fontSize :(int32_t)maxLength {
    self = [super init];
    [self initFields];
        self->scaleProperties = [((ScaleProperties*) [ScaleProperties alloc]) init];
        self->scaleProperties->scaleHeight = fontSize;
        self->maxLength = maxLength;
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        ABToGBUtil* abToGBUtil = [ABToGBUtil getInstance];
        AllBinaryGameCanvas* abCanvas = ((AllBinaryGameCanvas*) abToGBUtil->abCanvas);
        Font* font = [Font getFont:(Font_staticInit(), Font_FACE_SYSTEM) :(Font_staticInit(), Font_STYLE_PLAIN) :self->scaleProperties->scaleHeight];
        CustomTextBox* customTextBox = [((CustomTextBox2*) [CustomTextBox2 alloc]) init:[abCanvas getCustomCommandListener] :[StringUtil getInstance]->EMPTY_STRING :[StringUtil getInstance]->EMPTY_STRING :self->maxLength :(TextField_staticInit(), TextField_ANY) :font :[[abCanvas getLayerManager] getBackgroundBasicColor] :[[abCanvas getLayerManager] getForegroundBasicColor]];
        return [((CustomTextBoxIndexedAnimation*) [CustomTextBoxIndexedAnimation alloc]) init:customTextBox];
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
        int32_t fontSize = self->scaleProperties->scaleHeight;
        self->scaleProperties = scaleProperties;
        if (self->scaleProperties->scaleHeight < 6) {
            self->scaleProperties->scaleHeight = fontSize;
        }
}

@end

