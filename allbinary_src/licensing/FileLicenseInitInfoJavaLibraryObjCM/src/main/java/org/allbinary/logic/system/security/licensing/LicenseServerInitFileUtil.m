// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/LicenseServerInitFileUtil.h"
#include "org/allbinary/business/init/LicenseInitInfoUtil.h"
#include "org/allbinary/data/resource/ResourceUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/io/FileStreamFactory.h"
#include "org/allbinary/logic/io/StreamUtil.h"
#include "org/allbinary/logic/io/file/FileFactory.h"
#include "org/allbinary/logic/io/file/SimpleFileUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/business/init/LicenseInitInfoUtil.h")
#include "org/allbinary/business/init/LicenseInitInfoUtil.h"
#endif
#if __has_include("org/allbinary/business/init/LicenseInitInfoUtil.h")
#include "org/allbinary/business/init/LicenseInitInfoUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/io/file/FileFactory.h")
#include "org/allbinary/logic/io/file/FileFactory.h"
#endif
#if __has_include("org/allbinary/logic/io/StreamUtil.h")
#include "org/allbinary/logic/io/StreamUtil.h"
#endif
#if __has_include("org/allbinary/business/init/LicenseInitInfoUtil.h")
#include "org/allbinary/business/init/LicenseInitInfoUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void LicenseServerInitFileUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LicenseServerInitFileUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->NULL_OUTPUT_STREAM = [SimpleFileUtil nullOutputStream];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) initMethod {
        JAVA_TRY {
            const char* filePath = [LicenseInitInfoUtil getInstance]->INITFILENAME;
            [[LicenseInitInfoUtil getInstance] setFilePath:[StringUtil getInstance]->EMPTY_STRING];
            if ([[FileFactory getInstance] isFile:filePath]) {
                [self->logUtil putF:"Using Existing License File" :self :self->commonStrings->INIT];
            } else {
                [self write];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->INIT :e];
        } JAVA_END_TRY;
}


- (void) write {
        OutputStream* fileOutputStream = self->NULL_OUTPUT_STREAM;
        JAVA_TRY {
            ResourceUtil* resourceUtil = [ResourceUtil getInstance];
            const char* filePath = [LicenseInitInfoUtil getInstance]->INITFILENAME;
            InputStream* inputStream = [resourceUtil getResourceAsStream:filePath];
            [self->logUtil putF:"Writing Default License File" :self :self->commonStrings->INIT];
            FileStreamFactory* fileStreamFactory = [FileStreamFactory getInstance];
            fileOutputStream = [fileStreamFactory getFileOutputStreamInstance:[StringUtil getInstance]->EMPTY_STRING :filePath];
            int32_t b = 0;
            int32_t index = 0;
            while (true) {
                b = [inputStream read];
                if (b == -1) {
                    break;
                }
                [fileOutputStream write:b];
                index++;
            }
            [self->logUtil putF:java_concat("Wrote Bytes: ", java_string_of(index)) :self :self->commonStrings->INIT];
            [fileOutputStream flush];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->INIT :e];
        } JAVA_FINALLY {
            [[StreamUtil getInstance] close:fileOutputStream];
        } JAVA_END_TRY;
}

@end

