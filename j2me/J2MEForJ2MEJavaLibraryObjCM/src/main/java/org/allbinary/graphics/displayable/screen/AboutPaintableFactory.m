// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/screen/AboutPaintableFactory.h"
#include "org/allbinary/game/paint/AboutPaintable.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#include "org/allbinary/logic/string/StringUtil.h"


static AboutPaintableFactory* AboutPaintableFactory_instance;

void AboutPaintableFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AboutPaintableFactory_instance = [((AboutPaintableFactory*) [AboutPaintableFactory alloc]) init];
}

@implementation AboutPaintableFactory

- (void) initFields {
    self->paintableArray = ((Paintable**) java_array_from(sizeof(Paintable*), sizeof((Paintable*[]){ [NullPaintable getInstance] }) / sizeof(Paintable*), (Paintable*[]){ [NullPaintable getInstance] }));
}


+ (AboutPaintableFactory*) getInstance {
        return (AboutPaintableFactory_staticInit(), AboutPaintableFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        const char** INFO = ((const char**) java_array_from(sizeof(const char*), sizeof((const char*[]){ "Built with the", "AllBinary Platform", [StringUtil getInstance]->EMPTY_STRING, "Comments or Questions:", "support@allbinary.com" }) / sizeof(const char*), (const char*[]){ "Built with the", "AllBinary Platform", [StringUtil getInstance]->EMPTY_STRING, "Comments or Questions:", "support@allbinary.com" }));
        const char** DEVELOPERS = ((const char**) java_array_from(sizeof(const char*), sizeof((const char*[]){ "Developed By:", "Travis Berthelot" }) / sizeof(const char*), (const char*[]){ "Developed By:", "Travis Berthelot" }));
        self->paintableArray = [[AboutPaintable getInstance:INFO :DEVELOPERS] getPaintableArrayInstance];
    return self;
}

@end

