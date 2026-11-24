// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/ABCustomForm.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/graphics/form/CustomScreen.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void ABCustomForm_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ABCustomForm

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
}


- (instancetype) init:(const char*)title :(ABCustomItem**)items :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
    self = [super init];
    [self initFields];
    return self;
}


- (ABCustomItem**) getAllitems {
        return ((ABCustomItem**) java_array_new(sizeof(ABCustomItem*), 0));
}


- (int32_t) size {
        return 0;
}


- (void) setSelectedIndex:(int32_t)index {
}


- (int32_t) getSelectedIndex {
        return 0;
}


- (void) deleteAll {
}


- (void) delete:(int32_t)itemNum {
}


- (int32_t) append:(ABCustomItem*)item {
        return -1;
}


- (void) insert:(int32_t)itemNum :(ABCustomItem*)item {
}


- (void) set:(int32_t)itemNum :(ABCustomItem*)item {
}


- (ABCustomItem*) get:(int32_t)itemNum {
        return [ABCustomItem getNullInstance];
}


- (int32_t) getWidth {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) paint:(Graphics*)graphics {
}


- (const char*) getTitle {
        return [StringUtil getInstance]->EMPTY_STRING;
}

@end

