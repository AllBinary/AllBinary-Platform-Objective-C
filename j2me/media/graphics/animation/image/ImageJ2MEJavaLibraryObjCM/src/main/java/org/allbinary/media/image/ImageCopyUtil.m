// Generated Code Do Not Modify
#include "org/allbinary/media/image/ImageCopyUtil.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/GameFeatureFactory.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/media/image/ImageCreationUtil.h"


static ImageCopyUtil* ImageCopyUtil_instance;

void ImageCopyUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ImageCopyUtil_instance = [((ImageCopyUtil*) [ImageCopyUtil alloc]) init];
}

@implementation ImageCopyUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->imageCreationUtil = [ImageCreationUtil getInstance];
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
    self->gameFeatureFactory = [GameFeatureFactory getInstance];
    self->features = [Features getInstance];
    self->NO_COPY = "J2ME does not need to copy images after initial loading";
}


+ (ImageCopyUtil*) getInstance {
        return (ImageCopyUtil_staticInit(), ImageCopyUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (Image*) createImageForRotation:(Image*)originalImage {
        return [self createImage:originalImage];
}


// throws Exception
- (Image*) createImage:(Image*)originalImage {
        if (![self->features isFeature:self->gameFeatureFactory->POST_IMAGE_LOADING_MODIFICATION]) {
            [self->logUtil put:self->NO_COPY :self :self->commonStrings->CONSTRUCTOR :java_exception_new("Exception", "")];
            return originalImage;
        }
        Image* image = [self->imageCreationUtil createImageWH:[originalImage getWidth] :[originalImage getHeight]];
        if ([image isMutable]) {
            [[image getGraphics] drawImage:originalImage :0 :0 :self->anchor];
            return image;
        } else {
            java_throw(java_exception_new("Exception", "Not Mutable"));
        }
}


// throws Exception
- (Image*) createImageScale:(Image*)originalImage :(float)canvasScale :(bool)resize {
        if (![self->features isFeature:self->gameFeatureFactory->POST_IMAGE_LOADING_MODIFICATION]) {
            [self->logUtil put:self->NO_COPY :self :self->commonStrings->CONSTRUCTOR :java_exception_new("Exception", "")];
            return originalImage;
        }
        int32_t newWidth = ((int32_t) ([originalImage getWidth] * canvasScale));
        int32_t newHeight = ((int32_t) ([originalImage getHeight] * canvasScale));
        if (resize) {
            if (newWidth < newHeight) {
                newWidth = newHeight;
            }
            if (newHeight < newWidth) {
                newHeight = newWidth;
            }
        }
        Image* image = [self->imageCreationUtil createImageWH:newWidth :newHeight];
        if ([image isMutable]) {
            int32_t halfWidthDelta = (newWidth - [originalImage getWidth]) / 2;
            int32_t halfHeightDelta = (newHeight - [originalImage getHeight]) / 2;
            Graphics* graphics = [image getGraphics];
            [graphics drawImage:originalImage :halfWidthDelta :halfHeightDelta :self->anchor];
            return image;
        } else {
            java_throw(java_exception_new("Exception", "Not Mutable"));
        }
}

@end

