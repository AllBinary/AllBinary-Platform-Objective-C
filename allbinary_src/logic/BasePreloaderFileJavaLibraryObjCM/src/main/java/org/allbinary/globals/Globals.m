// Generated Code Do Not Modify
#include "org/allbinary/globals/Globals.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringValidationUtil.h"
#include "org/allbinary/logic/system/loader/WebappClassLoaderInfo.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/globals/AppUrlGlobals.h"
#include "org/allbinary/globals/URLGLOBALS.h"
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif


static Globals* Globals_instance;

void Globals_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    Globals_instance = ((Globals*) [((Globals*) [Globals alloc]) init]);
}

@implementation Globals

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}


+ (Globals*) getInstance {
        return (Globals_staticInit(), Globals_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) initMethod:(ClassLoader*)classLoader :(const char*)pathString {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        AppUrlGlobals* appUrlGlobals = ((AppUrlGlobals*) [((AppUrlGlobals*) [AppUrlGlobals alloc]) init]);
        [appUrlGlobals setWebappPath:pathString];
        [URLGLOBALS initMethod:appUrlGlobals];
        [WebappClassLoaderInfo setLoader:classLoader];
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"Setting Up AllBinary System Configuration Args: "];
        [stringBuffer append:pathString];
        [stringBuffer append:" ClassLoader: "];
        [stringBuffer append:java_objc_class_name(classLoader)];
        [self->logUtil putF:[stringBuffer toString] :self :commonStrings->INIT];
        StringValidationUtil* stringValidationUtil = [StringValidationUtil getInstance];
        if ([stringValidationUtil isEmpty:pathString]) {
            [stringBuffer delete:0 :[stringBuffer length]];
            [stringBuffer append:"No Path Provided. Using Process Path: "];
            [stringBuffer append:pathString];
            [stringBuffer append:[CommonSeps getInstance]->SPACE];
            [stringBuffer append:[CommonSeps getInstance]->EQUALS];
            [stringBuffer append:[CommonSeps getInstance]->SPACE];
            [stringBuffer append:[URLGLOBALS getWebappPath]];
            [self->logUtil putF:[stringBuffer toString] :self :commonStrings->INIT];
        }
        [stringBuffer delete:0 :[stringBuffer length]];
        [stringBuffer append:"Webapp Path Set To: "];
        [stringBuffer append:[URLGLOBALS getWebappPath]];
        [self->logUtil putF:[stringBuffer toString] :self :commonStrings->INIT];
}

@end

