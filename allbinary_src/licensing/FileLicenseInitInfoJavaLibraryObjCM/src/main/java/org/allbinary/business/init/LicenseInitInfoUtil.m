// Generated Code Do Not Modify
#include "org/allbinary/business/init/LicenseInitInfoUtil.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/globals/PATH_GLOBALS.h"
#include "org/allbinary/globals/URLGLOBALS.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/io/AbDataInputStream.h"
#include "org/allbinary/logic/io/AbDataOutputStream.h"
#include "org/allbinary/logic/io/AbFileInputStream.h"
#include "org/allbinary/logic/io/DataOutputStreamFactory.h"
#include "org/allbinary/logic/io/FileStreamFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/security/crypt/DatabaseEncoder.h"
#include "org/allbinary/logic/system/security/crypt/WeakCrypt.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/business/init/LicenseInitInfo.h"
#if __has_include("org/allbinary/globals/PATH_GLOBALS.h")
#include "org/allbinary/globals/PATH_GLOBALS.h"
#endif
#if __has_include("org/allbinary/logic/io/DataOutputStreamFactory.h")
#include "org/allbinary/logic/io/DataOutputStreamFactory.h"
#endif
#if __has_include("org/allbinary/logic/io/FileStreamFactory.h")
#include "org/allbinary/logic/io/FileStreamFactory.h"
#endif
#if __has_include("org/allbinary/globals/PATH_GLOBALS.h")
#include "org/allbinary/globals/PATH_GLOBALS.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif


static LicenseInitInfoUtil* LicenseInitInfoUtil_instance;

void LicenseInitInfoUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LicenseInitInfoUtil_instance = ((LicenseInitInfoUtil*) [((LicenseInitInfoUtil*) [LicenseInitInfoUtil alloc]) init]);
}

@implementation LicenseInitInfoUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->stringUtil = [StringUtil getInstance];
    self->INITFILENAME = "licenseinitdata.dat";
    self->ABOUT = "about";
    self->PRIVACY_POLICY = "privacy_policy";
    self->filePath = self->stringUtil->EMPTY_STRING;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (LicenseInitInfoUtil*) getInstance {
        return (LicenseInitInfoUtil_staticInit(), LicenseInitInfoUtil_instance);
}


// synchronized
- (void) setFilePath:(const char*)filePath {
        self->filePath = filePath;
}


// throws Exception
// synchronized
- (void) write:(LicenseInitInfo*)initData {
        if (self->filePath == self->stringUtil->EMPTY_STRING) {
            self->filePath = java_concat([URLGLOBALS getMainPath], [PATH_GLOBALS getInstance]->INIT_PATH);
        }
        JAVA_TRY {
            TsUtil* tsUtil = [TsUtil getInstance];
            AbDataOutputStream* dataOutputStream = [[DataOutputStreamFactory getInstance] getInstance:self->filePath :self->INITFILENAME];
            int8_t* licenseIdCrypted = [tsUtil getByteArray:[((WeakCrypt*) [((WeakCrypt*) [WeakCrypt alloc]) init:1]) encrypt:[initData getLicenseId]]];
            [dataOutputStream writeUTF:[DatabaseEncoder encode:licenseIdCrypted]];
            int32_t numberOfLicenseServers = [initData getNumberOfServers];
            [dataOutputStream writeInt:numberOfLicenseServers];
            int8_t* licenseServerCrypted = nullptr;
            for (int32_t index = 0; index < numberOfLicenseServers; index++) {
                licenseServerCrypted = [tsUtil getByteArray:[((WeakCrypt*) [((WeakCrypt*) [WeakCrypt alloc]) init:3]) encrypt:[initData getServer:index]]];
                [dataOutputStream writeUTF:[DatabaseEncoder encode:licenseServerCrypted]];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:java_concat("Command Failed: ", self->INITFILENAME) :self :"write" :e];
            [[FileStreamFactory getInstance] delete:self->filePath :self->INITFILENAME];
            java_throw(e);
        } JAVA_END_TRY;
}


// throws Exception
// synchronized
- (LicenseInitInfo*) read {
        return [self readAgain:0];
}


// throws Exception
// synchronized
- (LicenseInitInfo*) readAgain:(int32_t)initializeCounter {
        const char* METHOD_NAME = "readAgain";
        if (self->filePath == self->stringUtil->EMPTY_STRING) {
            self->filePath = java_concat([URLGLOBALS getMainPath], [PATH_GLOBALS getInstance]->INIT_PATH);
        }
        JAVA_TRY {
            [self->logUtil putF:java_concat("LicenseInitInfo File: ", self->INITFILENAME) :self :METHOD_NAME];
            FileStreamFactory* fileStreamFactory = [FileStreamFactory getInstance];
            AbFileInputStream* iFile = [fileStreamFactory getFileInputStreamInstance:self->filePath :self->INITFILENAME];
            if (iFile != nil) {
                AbDataInputStream* iData = ((AbDataInputStream*) [((AbDataInputStream*) [AbDataInputStream alloc]) init:iFile]);
                LicenseInitInfo* initInfo = ((LicenseInitInfo*) [((LicenseInitInfo*) [LicenseInitInfo alloc]) init]);
                int8_t* decodedByteArray = [DatabaseEncoder decode:[iData readUTF]];
                const char* licenseIdDecoded = java_string_new(decodedByteArray);
                [initInfo setLicenseId:[((WeakCrypt*) [((WeakCrypt*) [WeakCrypt alloc]) init:1]) decrypt:licenseIdDecoded]];
                int32_t numberOfLicenseServers = [iData readInt];
                const char* NEXT_FILE = [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:[CommonLabels getInstance]->NEXT] append:" License Server From File: "] toString];
                const char* licenseServerDecoded = nullptr;
                for (int32_t index = 0; index < numberOfLicenseServers; index++) {
                    decodedByteArray = [DatabaseEncoder decode:[iData readUTF]];
                    licenseServerDecoded = java_string_new(decodedByteArray);
                    [initInfo setServer:[((WeakCrypt*) [((WeakCrypt*) [WeakCrypt alloc]) init:3]) decrypt:licenseServerDecoded] :index];
                    [self->logUtil putF:java_concat(NEXT_FILE, [initInfo getServer:index]) :self :METHOD_NAME];
                }
                return initInfo;
            } else {
                java_throw(java_exception_new("Exception", java_concat("Could Not Load License InitInfo: ", self->INITFILENAME)));
            }
        } JAVA_CATCH(Exception, e) {
            JAVA_TRY {
                [self->logUtil put:java_concat("Command Failed: ", self->INITFILENAME) :self :METHOD_NAME :e];
            } JAVA_CATCH(Exception, e2) {
                [self->logUtil put:java_concat("LicenseInitInfo Read Retry: ", self->INITFILENAME) :self :"readAgain()" :e2];
            } JAVA_END_TRY;
            java_throw(java_exception_new("Exception", java_concat("LicenseInitInfo Read Error: ", self->INITFILENAME)));
        } JAVA_END_TRY;
}


- (const char*) getFilePath {
        return self->filePath;
}

@end

