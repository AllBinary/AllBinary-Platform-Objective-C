// Generated Code Do Not Modify
#include "org/allbinary/game/layer/identification/GroupLayerManagerListener.h"
#include "org/allbinary/game/identification/Group.h"
#include "org/allbinary/game/identification/GroupInterfaceCompositeInterface.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/event/LayerManagerEvent.h"
#include "org/allbinary/layer/event/LayerManagerEventHandler.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#if __has_include("org/allbinary/layer/event/LayerManagerEventHandler.h")
#include "org/allbinary/layer/event/LayerManagerEventHandler.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif
#if __has_include("org/allbinary/game/identification/Group.h")
#include "org/allbinary/game/identification/Group.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/game/identification/Group.h")
#include "org/allbinary/game/identification/Group.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif


static GroupLayerManagerListener* GroupLayerManagerListener_SINGLETON;

void GroupLayerManagerListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GroupLayerManagerListener_SINGLETON = ((GroupLayerManagerListener*) [((GroupLayerManagerListener*) [GroupLayerManagerListener alloc]) init]);
}

@implementation GroupLayerManagerListener

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


+ (GroupLayerManagerListener*) getInstance {
        return (GroupLayerManagerListener_staticInit(), GroupLayerManagerListener_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        [[LayerManagerEventHandler getInstance] addListener:self];
    return self;
}


- (void) clear {
        BasicArrayList* groupList = nullptr;
        int32_t size = [self->list size];
        for (int32_t index = size - 1; index >= 0; index--) {
            groupList = ((BasicArrayList*) self->list->objectArray[index]);
            [groupList clear];
        }
}


- (int32_t) getGroupSizeFromInterface:(GroupInterfaceCompositeInterface*)groupInterfaceCompositeInterface {
        Group** groupInterfaceArray = [((id<GroupInterfaceCompositeInterface>) groupInterfaceCompositeInterface) getGroupInterface];
        return [self getGroupSize:groupInterfaceArray[0]];
}


- (int32_t) getGroupSize:(Group*)groupInterface {
        int32_t id_ = ((int32_t) [groupInterface getGroupId]);
        return [self getGroupSizeById:id_];
}


- (BasicArrayList*) getList:(Group*)groupInterface {
        int32_t id_ = ((int32_t) [groupInterface getGroupId]);
        return [self getListById:id_];
}


- (BasicArrayList*) getListById:(int32_t)groupId {
        BasicArrayList* groupList = ((BasicArrayList*) self->list->objectArray[groupId]);
        return groupList;
}


- (int32_t) getGroupSizeById:(int32_t)groupId {
        BasicArrayList* groupList = ((BasicArrayList*) self->list->objectArray[groupId]);
        int32_t size = [groupList size];
        return size;
}


- (bool) areAllOtherGroupsEmpty:(Group*)groupInterface {
        int32_t id_ = ((int32_t) [groupInterface getGroupId]);
        int32_t size = [self->list size];
        for (int32_t index = size - 1; index >= 0; index--) {
            if (id_ != index) {
                int32_t groupSize = [self getGroupSizeById:index];
                if (groupSize != 0) {
                    [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Group Size: "] appendint:groupSize] toString] :self :"areAllOtherGroupsEmpty"];
                    return false;
                }
            }
        }
        return true;
}


- (bool) isIdInList:(int32_t)id_ :(BasicArrayList*)excludeGroupList {
        int32_t size = [excludeGroupList size];
        Group** groupInterfaceArray = nullptr;
        Group* groupInterface = nullptr;
        int32_t groupId = 0;
        for (int32_t index = size - 1; index >= 0; index--) {
            groupInterfaceArray = ((Group**) excludeGroupList->objectArray[index]);
            int32_t size2 = java_array_length(groupInterfaceArray);
            for (int32_t index2 = 0; index2 < size2; index2++) {
                groupInterface = groupInterfaceArray[index2];
                groupId = ((int32_t) [groupInterface getGroupId]);
                if (groupId == id_) {
                    return true;
                }
            }
        }
        return false;
}


- (bool) areAllOtherGroupsLessThan:(BasicArrayList*)excludeGroupList :(int32_t)maxSize {
        int32_t size = [self->list size];
        for (int32_t index = size - 1; index >= 0; index--) {
            if (![self isIdInList:index :excludeGroupList]) {
                int32_t groupSize = [self getGroupSizeById:index];
                if (groupSize >= maxSize) {
                    return false;
                }
            }
        }
        return true;
}


- (void) initMethod:(int32_t)total {
        while ([self->list size] <= total + 1) {
            [self->list add:((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init])];
        }
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


// throws Exception
- (void) onCreateLayerManagerEvent:(LayerManagerEvent*)layerManagerEvent {
        AllBinaryLayer* layerInterface = [layerManagerEvent getLayerInterface];
        Group** groupInterfaceArray = [layerInterface getGroupInterface];
        int32_t size = java_array_length(groupInterfaceArray);
        int32_t id_ = 0;
        BasicArrayList* groupList = nullptr;
        for (int32_t index = 0; index < size; index++) {
            id_ = ((int32_t) [groupInterfaceArray[index] getGroupId]);
            groupList = ((BasicArrayList*) self->list->objectArray[id_]);
            if (groupList == nil) {
                [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"id: "] appendint:id_] toString] :self :"onCreateLayerManagerEvent"];
            }
            if (![groupList contains:layerInterface]) {
                [groupList add:layerInterface];
            } else {
            }
        }
}


// throws Exception
- (void) onDeleteLayerManagerEvent:(LayerManagerEvent*)layerManagerEvent {
        AllBinaryLayer* layerInterface = [layerManagerEvent getLayerInterface];
        Group** groupInterfaceArray = [layerInterface getGroupInterface];
        int32_t size = java_array_length(groupInterfaceArray);
        int32_t id_ = 0;
        BasicArrayList* groupList = nullptr;
        for (int32_t index = 0; index < size; index++) {
            id_ = ((int32_t) [groupInterfaceArray[index] getGroupId]);
            groupList = ((BasicArrayList*) self->list->objectArray[id_]);
            [groupList remove:layerInterface];
        }
}


- (void) log {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        const char* GROUP = "Group: ";
        const char* SPACE = [CommonSeps getInstance]->SPACE;
        const char* TOTAL_LABEL = [CommonLabels getInstance]->TOTAL_LABEL;
        int32_t size = [self->list size];
        for (int32_t index = size - 1; index >= 0; index--) {
            BasicArrayList* groupList = ((BasicArrayList*) self->list->objectArray[index]);
            [stringBuffer append:GROUP];
            [stringBuffer appendint:index];
            [stringBuffer append:SPACE];
            [stringBuffer append:TOTAL_LABEL];
            [stringBuffer appendint:[groupList size]];
            [stringBuffer append:SPACE];
        }
        [self->logUtil putF:[stringBuffer toString] :self :"log"];
}

@end

