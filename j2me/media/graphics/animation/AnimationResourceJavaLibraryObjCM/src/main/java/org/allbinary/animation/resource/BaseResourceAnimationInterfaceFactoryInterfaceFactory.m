// Generated Code Do Not Modify
#include "org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/animation/BasicAnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/game/resource/ResourceLoadingLevelFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/RectangleFactory.h"
#include "org/allbinary/image/ImageCache.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/animation/resource/FeatureResourceAnimationInterfaceFactoryInterface.h"



void BaseResourceAnimationInterfaceFactoryInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BaseResourceAnimationInterfaceFactoryInterfaceFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    
    
    
    
    self->initialized = false;
}


- (instancetype) init:(const char*)name :(ABHashtable*)hashtable :(ABHashtable*)rectangleHashtable :(ABHashtable*)rectangleArrayHashtable {
    self = [super init];
    [self initFields];
        self->hashtable = hashtable;
        self->rectangleHashtable = rectangleHashtable;
        self->rectangleArrayOfArraysHashtable = rectangleArrayHashtable;
        self->name = name;
    return self;
}


- (const char*) getName {
        return self->name;
}


// throws Exception
- (void) init_:(int32_t)level {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Available List of Animations: "] append:[self->hashtable toString]] toString] :self :commonStrings->INIT];
        [self setInitialized:true];
}


// throws Exception
- (void) initImageCache:(ImageCache*)imageCache :(int32_t)level {
}


// throws Exception
- (void) add:(const char*)resource :(BasicAnimationInterfaceFactoryInterface*)animationInterfaceFactoryInterface {
        if ([self->hashtable containsKey:JAVA_BOX(((id) resource))]) {
            java_throw(java_exception_new("Exception", [[[[((StringMaker*) [StringMaker alloc]) init] append:"Resource Already Created: "] append:resource] toString]));
        }
        [self->hashtable put:JAVA_BOX(resource) :JAVA_BOX(animationInterfaceFactoryInterface)];
}


// throws Exception
- (BasicAnimationInterfaceFactoryInterface*) getBasicAnimationInterfaceFactoryInstance:(const char*)resource {
        id basicAnimationInterfaceFactoryInterfaceCanBeNull = [self->hashtable get:JAVA_BOX(resource)];
        if (basicAnimationInterfaceFactoryInterfaceCanBeNull == nil) {
            return (NullAnimationFactory_staticInit(), NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORY);
        }
        return ((BasicAnimationInterfaceFactoryInterface*) basicAnimationInterfaceFactoryInterfaceCanBeNull);
}


// throws Exception
- (Rectangle*) getRectangle:(const char*)resource {
        id rectangleCanBeNull = [self->rectangleHashtable get:JAVA_BOX(resource)];
        if (rectangleCanBeNull == nil) {
            return (RectangleFactory_staticInit(), RectangleFactory_SINGLETON);
        }
        return ((Rectangle*) rectangleCanBeNull);
}


// throws Exception
- (void) addRectangle:(const char*)resource :(Rectangle*)rectangle {
        [self->rectangleHashtable put:JAVA_BOX(resource) :JAVA_BOX(rectangle)];
}


// throws Exception
- (Rectangle***) getRectangleArrayOfArrays:(const char*)resource {
        id valueCanBeNull = [self->rectangleArrayOfArraysHashtable get:JAVA_BOX(resource)];
        if (valueCanBeNull != nil) {
            Rectangle*** rectangleArrayOfArrays = ((Rectangle***) valueCanBeNull);
            return rectangleArrayOfArrays;
        } else {
            return (RectangleFactory_staticInit(), RectangleFactory_ARRAY_OF_ARRAYS);
        }
}


// throws Exception
- (void) addRectangleArrayOfArrays:(const char*)resource :(Rectangle***)rectangleArrayOfArrays {
        [self->rectangleArrayOfArraysHashtable put:JAVA_BOX(resource) :JAVA_BOX(rectangleArrayOfArrays)];
}


- (bool) isFeature {
        return false;
}


- (bool) isLoadingLevel:(int32_t)level {
        ResourceLoadingLevelFactory* resourceLoadingLevelFactory = [ResourceLoadingLevelFactory getInstance];
        if (level == [resourceLoadingLevelFactory->LOAD_ALL getLevel]) {
            return true;
        } else {
            return false;
        }
}


- (const char*) toString {
        return [[[[[[((StringMaker*) [StringMaker alloc]) init] append:java_objc_class_name(self)] append:[CommonSeps getInstance]->SEMICOLON] append:[CommonSeps getInstance]->SPACE] append:self->name] toString];
}


- (ABHashtable*) getHashtable {
        return self->hashtable;
}


- (ABHashtable*) getRectangleHashtable {
        return self->rectangleHashtable;
}


- (ABHashtable*) getRectangleArrayOfArraysHashtable {
        return self->rectangleArrayOfArraysHashtable;
}


- (void) setInitialized:(bool)initialized {
        self->initialized = initialized;
}


- (bool) isInitialized {
        return self->initialized;
}

@end

