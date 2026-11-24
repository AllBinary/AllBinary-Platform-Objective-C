// Generated Code Do Not Modify
#include "org/allbinary/configuration/ApplicationConfiguration.h"
#include "org/allbinary/game/configuration/feature/Feature.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/io/AbDataInputStream.h"
#include "org/allbinary/logic/io/AbDataOutputStream.h"
#include "org/allbinary/logic/io/FileStreamFactory.h"
#include "org/allbinary/logic/io/NullCloseable.h"
#include "org/allbinary/logic/io/StreamUtil.h"
#include "org/allbinary/logic/io/file/FileFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/io/file/FileFactory.h")
#include "org/allbinary/logic/io/file/FileFactory.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/io/StreamUtil.h")
#include "org/allbinary/logic/io/StreamUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
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
    self->FILE = "ReloadConfiguration.dat";
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
            if ([[FileFactory getInstance] isFile:self->FILE]) {
                [self read];
            } else {
                [self write];
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->CONSTRUCTOR :e];
        } JAVA_END_TRY;
    return self;
}


// throws Exception
- (void) read {
        FileStreamFactory* fileInputStreamFactory = [FileStreamFactory getInstance];
        InputStream* fileInputStream = [fileInputStreamFactory getFileInputStreamInstance:[StringUtil getInstance]->EMPTY_STRING :self->FILE];
        AbDataInputStream* dataInputStream = ((AbDataInputStream*) [((AbDataInputStream*) [AbDataInputStream alloc]) init:fileInputStream]);
        int32_t fullScreen = [dataInputStream readInt];
        if (fullScreen == 0) {
            [self setFullscreen:false];
        } else if (fullScreen == 1) {
            [self setFullscreen:true];
        } else {
            java_throw(java_exception_new("Exception", "Invalid FullScreen ActivityConfiguration"));
        }
        int32_t progressBarView = [dataInputStream readInt];
        if (progressBarView == 0) {
            [self setProgressBarView:false];
        } else if (progressBarView == 1) {
            [self setProgressBarView:true];
        } else {
            java_throw(java_exception_new("Exception", "Invalid ProgressBarView ActivityConfiguration"));
        }
        int32_t showTitleBar = [dataInputStream readInt];
        if (showTitleBar == 0) {
            [self setShowTitleBar:false];
        } else if (showTitleBar == 1) {
            [self setShowTitleBar:true];
        } else {
            java_throw(java_exception_new("Exception", "Invalid ShowTitleBar ActivityConfiguration"));
        }
        [self->logUtil putF:java_concat("Read Configuration: ", [self toString]) :self :"read"];
}


// throws Exception
- (void) write {
        Closeable* closeable = (NullCloseable_staticInit(), NullCloseable_NULL_CLOSEABLE);
        JAVA_TRY {
            [self->logUtil putF:java_concat("Write Configuration: ", [self toString]) :self :"write"];
            FileStreamFactory* fileInputStreamFactory = [FileStreamFactory getInstance];
            OutputStream* fileOutputStream = [fileInputStreamFactory getFileOutputStreamInstance:[StringUtil getInstance]->EMPTY_STRING :self->FILE];
            AbDataOutputStream* dataOutputStream = ((AbDataOutputStream*) [((AbDataOutputStream*) [AbDataOutputStream alloc]) init:fileOutputStream]);
            closeable = dataOutputStream;
            if ([self isFullscreen]) {
                [dataOutputStream writeInt:1];
            } else {
                [dataOutputStream writeInt:0];
            }
            if ([self isProgressBarView]) {
                [dataOutputStream writeInt:1];
            } else {
                [dataOutputStream writeInt:0];
            }
            if ([self isShowTitleBar]) {
                [dataOutputStream writeInt:1];
            } else {
                [dataOutputStream writeInt:0];
            }
            [dataOutputStream flush];
        } JAVA_CATCH(Exception, e) {
            java_throw(e);
        } JAVA_FINALLY {
            [[StreamUtil getInstance] close:closeable];
        } JAVA_END_TRY;
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

