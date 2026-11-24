// Generated Code Do Not Modify
#include "org/allbinary/configuration/ApplicationConfiguration.h"
#include "org/allbinary/game/configuration/feature/Feature.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/MainFeatureFactory.h")
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#endif


static id ApplicationConfiguration_instance;

void ApplicationConfiguration_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ApplicationConfiguration_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation ApplicationConfiguration

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->fullscreen = true;
    self->showTitleBar = false;
    self->progressBarView = false;
}


+ (ApplicationConfiguration*) getInstance {
        if ((ApplicationConfiguration_staticInit(), ApplicationConfiguration_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            ApplicationConfiguration_instance = ((ApplicationConfiguration*) [((ApplicationConfiguration*) [ApplicationConfiguration alloc]) init]);
        }
        return ((ApplicationConfiguration*) (ApplicationConfiguration_staticInit(), ApplicationConfiguration_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        JAVA_TRY {
            [self read];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->CONSTRUCTOR :e];
        } JAVA_END_TRY;
    return self;
}


// throws Exception
- (void) read {
        [self setFullscreen:true];
        [self setProgressBarView:false];
        [self setShowTitleBar:false];
        [self->logUtil putF:java_concat("Read Configuration: ", [self toString]) :self :"read"];
}


// throws Exception
- (void) write {
}


// throws Exception
- (void) update:(Feature*)gameFeature {
        if (gameFeature == [MainFeatureFactory getInstance]->FULL_SCREEN) {
            Features* features = [Features getInstance];
            if ([features isFeature:gameFeature]) {
                if (![self isFullscreen]) {
                    [self setFullscreen:true];
                    [self write];
                }
            } else {
                if ([self isFullscreen]) {
                    [self setFullscreen:false];
                    [self write];
                }
            }
        }
}


- (void) setFullscreen:(bool)fullscreen {
        self->fullscreen = fullscreen;
}


- (bool) isFullscreen {
        return self->fullscreen;
}


- (void) setShowTitleBar:(bool)showTitleBar {
        self->showTitleBar = showTitleBar;
}


- (bool) isShowTitleBar {
        return self->showTitleBar;
}


- (void) setProgressBarView:(bool)progressBarView {
        self->progressBarView = progressBarView;
}


- (bool) isProgressBarView {
        return self->progressBarView;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"isFullscreen: "];
        [stringBuffer appendboolean:[self isFullscreen]];
        [stringBuffer append:" isProgressBarView: "];
        [stringBuffer appendboolean:[self isProgressBarView]];
        [stringBuffer append:" isShowTitleBar: "];
        [stringBuffer appendboolean:[self isShowTitleBar]];
        return [stringBuffer toString];
}

@end

