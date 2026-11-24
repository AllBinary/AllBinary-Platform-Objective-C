// Generated Code Do Not Modify
#include "org/allbinary/MIDPUtil.h"
#include "javax/microedition/lcdui/Form.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/Item.h"
#include "javax/microedition/media/Manager.h"
#include "javax/microedition/media/MediaException.h"
#include "javax/microedition/media/Player.h"


static MIDPUtil* MIDPUtil_instance;

void MIDPUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MIDPUtil_instance = ((MIDPUtil*) [((MIDPUtil*) [MIDPUtil alloc]) init]);
}

@implementation MIDPUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (MIDPUtil*) getInstance {
        return (MIDPUtil_staticInit(), MIDPUtil_instance);
}


- (Image*) createImageWH:(int32_t)width :(int32_t)height {
        return [Image createImageWH:width :height];
}


- (Image*) createImageFromByteArray:(int8_t*)imageData :(int32_t)imageOffset :(int32_t)imageLength {
        return [Image createImageFromByteArray:imageData :imageOffset :imageLength];
}


// throws IOException
- (Image*) createImageFromInputStream:(InputStream*)inputStream {
        return [Image createImageFromInputStream:inputStream];
}


// throws IOException, MediaException
- (Player*) createPlayerFromInputStream:(InputStream*)inputStream :(const char*)type {
        return [Manager createPlayerFromInputStream:inputStream :type];
}


- (int32_t) appendItem:(Form*)form :(Item*)item {
        return [form append:item];
}

@end

