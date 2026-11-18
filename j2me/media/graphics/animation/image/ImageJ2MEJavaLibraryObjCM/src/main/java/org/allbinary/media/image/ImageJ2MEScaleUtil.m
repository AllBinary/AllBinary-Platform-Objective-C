// Generated Code Do Not Modify
#include "org/allbinary/media/image/ImageJ2MEScaleUtil.h"
#include "javax/microedition/lcdui/Image.h"


static ImageJ2MEScaleUtil* ImageJ2MEScaleUtil_instance;

void ImageJ2MEScaleUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ImageJ2MEScaleUtil_instance = [((ImageJ2MEScaleUtil*) [ImageJ2MEScaleUtil alloc]) init];
}

@implementation ImageJ2MEScaleUtil


+ (ImageJ2MEScaleUtil*) getInstance {
        return (ImageJ2MEScaleUtil_staticInit(), ImageJ2MEScaleUtil_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (Image**) scaleArray:(Image**)images :(int32_t)width :(int32_t)height {
        Image** scaledImages = ((Image**) java_array_new(sizeof(Image*), java_array_length(images)));
        for (int32_t index = java_array_length(images); --index >= 0; ) {
            scaledImages[index] = [self scale:images[index] :width :height];
        }
        return scaledImages;
}


// throws Exception
- (Image*) scale:(Image*)image :(int32_t)width :(int32_t)height {
        int32_t sourceWidth = [image getWidth];
        int32_t sourceHeight = [image getHeight];
        int32_t* originalData = ((int32_t*) java_array_new(sizeof(int32_t), [image getWidth] * [image getHeight]));
        [image getRGB:originalData :0 :[image getWidth] :0 :0 :[image getWidth] :[image getHeight]];
        int32_t* scaledData = ((int32_t*) java_array_new(sizeof(int32_t), width * height));
        int32_t heightRatioFactor = (8 * sourceHeight) / height;
        int32_t widthRatioFactor = (8 * sourceWidth) / width;
        int32_t scaledIndex = java_array_length(scaledData) - 1;
        int32_t dx = 0;
        int32_t dy = 0;
        for (int32_t index = height; --index >= 0; ) {
            dy = (index * heightRatioFactor) >> 3;
            for (int32_t index2 = width; --index2 >= 0; ) {
                dx = (index2 * widthRatioFactor) >> 3;
                scaledData[scaledIndex--] = originalData[(sourceWidth * dy) + dx];
            }
        }
        Image* scaledImage = [Image createRGBImage:scaledData :width :height :true];
        return scaledImage;
}

@end

