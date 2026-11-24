// Generated Code Do Not Modify
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif


static id ProgressCanvasFactory_PROGRESS_FORM_SCREEN;

void ProgressCanvasFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ProgressCanvasFactory_PROGRESS_FORM_SCREEN = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation ProgressCanvasFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ProgressCanvas*) getInstance {
        if ((ProgressCanvasFactory_staticInit(), ProgressCanvasFactory_PROGRESS_FORM_SCREEN) == [NullUtil getInstance]->NULL_OBJECT) {
            ProgressCanvasFactory_PROGRESS_FORM_SCREEN = ((ProgressCanvas*) [((ProgressCanvas*) [ProgressCanvas alloc]) init:[StringUtil getInstance]->EMPTY_STRING :[BasicColorFactory getInstance]->BLACK :[BasicColorFactory getInstance]->WHITE]);
        }
        return ((ProgressCanvas*) (ProgressCanvasFactory_staticInit(), ProgressCanvasFactory_PROGRESS_FORM_SCREEN));
}


+ (PaintableInterface*) getLazyInstance {
        return [NullPaintable getInstance];
}

@end

