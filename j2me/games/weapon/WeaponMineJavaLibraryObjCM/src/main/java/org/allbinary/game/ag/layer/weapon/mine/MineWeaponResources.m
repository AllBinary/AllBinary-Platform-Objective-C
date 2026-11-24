// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/weapon/mine/MineWeaponResources.h"
#include "org/allbinary/logic/NullUtil.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


static id MineWeaponResources_instance;

void MineWeaponResources_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MineWeaponResources_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation MineWeaponResources

- (void) initFields {
    self->DROP_TEXT_RESOURCE = "/mine_drop_text_20_by_20.png";
    self->DROP_RESOURCE = "/mine_drop_20_by_20.png";
    self->DROP_ICON_RESOURCE = "/mine_drop_icon_20_by_20.png";
}


+ (MineWeaponResources*) getInstance {
        if ((MineWeaponResources_staticInit(), MineWeaponResources_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            MineWeaponResources_instance = ((MineWeaponResources*) [((MineWeaponResources*) [MineWeaponResources alloc]) init]);
        }
        return ((MineWeaponResources*) (MineWeaponResources_staticInit(), MineWeaponResources_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        const char* ROOT = "/mine";
        const char* SMALL = "_20_by_20.png";
        const char* MEDIUM = SMALL;
        const char* SIZE_FOUR = SMALL;
        const char* SIZE_FIVE = SMALL;
        const char* SIZE_SIX = SMALL;
        const char** SIZE = ((const char**) java_array_from(sizeof(const char*), sizeof((const char*[]){ SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX }) / sizeof(const char*), (const char*[]){ SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX }));
        [super initMethod:ROOT :SIZE];
    return self;
}

@end

