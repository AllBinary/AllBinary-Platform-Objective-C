// Generated Code Do Not Modify
#include "org/allbinary/game/score/RecordStoreHighScores.h"
#include "javax/microedition/rms/RecordComparator.h"
#include "javax/microedition/rms/RecordEnumeration.h"
#include "javax/microedition/rms/RecordStore.h"
#include "javax/microedition/rms/RecordStoreException.h"
#include "javax/microedition/rms/RecordStoreNotFoundException.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/game/configuration/persistance/NullRecordComparator.h"
#include "org/allbinary/game/configuration/persistance/NullRecordFilter.h"
#include "org/allbinary/game/configuration/persistance/NullRecordStore.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/persistance/PlatformRecordIdUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/score/HighScores.h"
#include "org/allbinary/game/score/HighScore.h"
#include "org/allbinary/game/score/ScoreComparator.h"


static ABHashtable* RecordStoreHighScores_hashTable;

void RecordStoreHighScores_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RecordStoreHighScores_hashTable = [[StdUtil getInstance] createHashtable];
}

@implementation RecordStoreHighScores

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->platformRecordIdUtil = [PlatformRecordIdUtil getInstance];
    self->tsUtil = [TsUtil getInstance];
    self->RECORD_ID = "_HS";
    self->MAXHIGHSCORES = 100;
    
    
    
}


- (instancetype) init:(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo :(const char*)name :(const char*)heading :(const char*)columnTwoHeading :(RecordComparator*)recordComparatorInterface {
        self = [super init:name :heading :columnTwoHeading];
        [self initFields];
        self->abeClientInformation = abeClientInformation;
        self->gameInfo = gameInfo;
        self->recordComparatorInterface = recordComparatorInterface;
        [self load_];
    return self;
}


// synchronized
+ (HighScores*) getInstance:(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo :(const char*)highScoreName :(const char*)heading :(const char*)columnTwoHeading :(RecordComparator*)recordComparatorInterface {
        id highScoresCanBeNull = [(RecordStoreHighScores_staticInit(), RecordStoreHighScores_hashTable) get:JAVA_BOX(((id) highScoreName))];
        if (highScoresCanBeNull == nil) {
            HighScores* highScores = [((RecordStoreHighScores*) [RecordStoreHighScores alloc]) init:abeClientInformation :gameInfo :highScoreName :heading :columnTwoHeading :recordComparatorInterface];
            [(RecordStoreHighScores_staticInit(), RecordStoreHighScores_hashTable) put:JAVA_BOX([highScores getName]) :JAVA_BOX(highScores)];
            return highScores;
        }
        return ((HighScores*) highScoresCanBeNull);
}


- (const char*) getRecordId:(AbeClientInformationInterface*)abeClientInformation {
        return [self->platformRecordIdUtil getRecordId:abeClientInformation :[[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonSeps getInstance]->UNDERSCORE] append:[self getName]] append:self->RECORD_ID] toString]];
}


// synchronized
- (void) addHighScore:(HighScore*)newHighScore {
        RecordStore* recordStore = (NullRecordStore_staticInit(), NullRecordStore_NULL_RECORD_STORE);
        JAVA_TRY {
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Adding HighScore: "] appendlong:[newHighScore getScore]] toString] :self :self->commonStrings->ADD];
            if ([self isTooManyHighScores]) {
                [self->logUtil putF:"Removing Lowest Score" :self :self->commonStrings->ADD];
                [self removeLowestHighScore];
            }
            recordStore = [RecordStore openRecordStore:[self getRecordId:self->abeClientInformation] :true];
            int8_t* highScoreBytes = [newHighScore getAsBytes];
            int32_t recordId = [recordStore addRecord:highScoreBytes :0 :java_array_length(highScoreBytes)];
            [self load_];
        } JAVA_CATCH(RecordStoreException, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->ADD :e];
        } JAVA_CATCH(IOException, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->ADD :e];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->ADD :e];
        } JAVA_FINALLY {
            JAVA_TRY {
                if (recordStore != nil) {
                    [PreLogUtil put:"Closing RecordStore" :self :self->commonStrings->ADD];
                    [recordStore closeRecordStore];
                }
            } JAVA_CATCH(RecordStoreException, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->ADD :e];
            } JAVA_END_TRY;
        } JAVA_END_TRY;
}


- (void) removeLowestHighScore {
        RecordStore* recordStore = (NullRecordStore_staticInit(), NullRecordStore_NULL_RECORD_STORE);
        JAVA_TRY {
            recordStore = [RecordStore openRecordStore:[self getRecordId:self->abeClientInformation] :true];
            RecordEnumeration* recordEnum = [recordStore enumerateRecords:(NullRecordFilter_staticInit(), NullRecordFilter_NULL_RECORD_FILTER) :(NullRecordComparator_staticInit(), NullRecordComparator_NULL_RECORD_COMPARATOR) :true];
            ScoreComparator* scoreComparator = (((ScoreComparator*) self->recordComparatorInterface));
            HighScore* bestHighScore = [((HighScore*) [HighScore alloc]) init:-1 :"none" :(GameInfo_staticInit(), GameInfo_NONE) :[scoreComparator getBestScore]];
            int8_t* recordAsBytes = nullptr;
            ByteArrayInputStream* byteArrayInputStream = nullptr;
            DataInputStream* inputStream = nullptr;
            while ([recordEnum hasNextElement]) {
                int32_t id_ = [recordEnum nextRecordId];
                recordAsBytes = [self->tsUtil getRecord:recordStore :id_];
                if (recordAsBytes != nil) {
                    byteArrayInputStream = [((ByteArrayInputStream*) [ByteArrayInputStream alloc]) init:recordAsBytes];
                    inputStream = [((DataInputStream*) [DataInputStream alloc]) init:byteArrayInputStream];
                    const char* name = [inputStream readUTF];
                    int64_t nextScore = [inputStream readLong];
                    HighScore* nextCurrentHighScore = [((HighScore*) [HighScore alloc]) init:id_ :name :(GameInfo_staticInit(), GameInfo_NONE) :nextScore];
                    if ([self->recordComparatorInterface compare:[nextCurrentHighScore getAsBytes] :[bestHighScore getAsBytes]] == (RecordComparator_staticInit(), RecordComparator_FOLLOWS)) {
                        bestHighScore = nextCurrentHighScore;
                    }
                }
            }
            if ([bestHighScore getId] != -1) {
                [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Removing Lowest HighScore: "] appendlong:[bestHighScore getScore]] toString] :self :self->commonStrings->LOAD];
                [recordStore deleteRecord:[bestHighScore getId]];
            }
        } JAVA_CATCH(RecordStoreException, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"removeLowestHighScore" :e];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"removeLowestHighScore" :e];
        } JAVA_FINALLY {
            JAVA_TRY {
                if (recordStore != nil) {
                    [PreLogUtil put:"Closing RecordStore" :self :"removeLowestHighScore"];
                    [recordStore closeRecordStore];
                }
            } JAVA_CATCH(RecordStoreException, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :"removeLowestHighScore" :e];
            } JAVA_END_TRY;
        } JAVA_END_TRY;
}


- (void) load_ {
        RecordStore* recordStore = (NullRecordStore_staticInit(), NullRecordStore_NULL_RECORD_STORE);
        JAVA_TRY {
            recordStore = [RecordStore openRecordStore:[self getRecordId:self->abeClientInformation] :true];
            [self setList:[((BasicArrayListD*) [BasicArrayListD alloc]) init]];
            RecordEnumeration* recordEnum = [recordStore enumerateRecords:(NullRecordFilter_staticInit(), NullRecordFilter_NULL_RECORD_FILTER) :(NullRecordComparator_staticInit(), NullRecordComparator_NULL_RECORD_COMPARATOR) :true];
            int8_t* recordAsBytes = nullptr;
            ByteArrayInputStream* byteArrayInputStream = nullptr;
            DataInputStream* inputStream = nullptr;
            while ([recordEnum hasNextElement]) {
                int32_t id_ = [recordEnum nextRecordId];
                recordAsBytes = [self->tsUtil getRecord:recordStore :id_];
                if (recordAsBytes != nil) {
                    byteArrayInputStream = [((ByteArrayInputStream*) [ByteArrayInputStream alloc]) init:recordAsBytes];
                    inputStream = [((DataInputStream*) [DataInputStream alloc]) init:byteArrayInputStream];
                    JAVA_TRY {
                        const char* name = [inputStream readUTF];
                        int64_t score = [inputStream readLong];
                        HighScore* newHighScore = [((HighScore*) [HighScore alloc]) init:id_ :name :(GameInfo_staticInit(), GameInfo_NONE) :score];
                        BasicArrayList* list = [self getList];
                        int32_t size = [list size];
                        int32_t lastIndex = size;
                        for (int32_t index = 0; index < size; index++) {
                            HighScore* highScore = ((HighScore*) list->objectArray[index]);
                            if ([self->recordComparatorInterface compare:[newHighScore getAsBytes] :[highScore getAsBytes]] == (RecordComparator_staticInit(), RecordComparator_PRECEDES)) {
                                lastIndex = index;
                                break;
                            }
                        }
                        [list addAt:lastIndex :newHighScore];
                    } JAVA_CATCH(EOFException, e) {
                        [self->logUtil put:"EOF" :self :self->commonStrings->LOAD :e];
                        java_throw(e);
                    } JAVA_END_TRY;
                }
            }
        } JAVA_CATCH(RecordStoreNotFoundException, e) {
            [self->logUtil put:"No High Scores" :self :self->commonStrings->LOAD :e];
        } JAVA_CATCH(RecordStoreException, e) {
            [self->logUtil put:self->commonStrings->UNKNOWN :self :self->commonStrings->LOAD :e];
        } JAVA_CATCH(IOException, e) {
            [self->logUtil put:self->commonStrings->UNKNOWN :self :self->commonStrings->LOAD :e];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->UNKNOWN :self :self->commonStrings->LOAD :e];
        } JAVA_FINALLY {
            JAVA_TRY {
                if (recordStore != nil) {
                    [PreLogUtil put:"Closing RecordStore" :self :self->commonStrings->LOAD];
                    [recordStore closeRecordStore];
                }
            } JAVA_CATCH(RecordStoreException, e) {
                [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->LOAD :e];
            } JAVA_END_TRY;
        } JAVA_END_TRY;
}


- (bool) isTooManyHighScores {
        if ([self getList] != nil && [[self getList] size] < self->MAXHIGHSCORES) {
            return false;
        } else {
            [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:"HighScores RecordStore Max Reached: "] appendint:self->MAXHIGHSCORES] toString] :self :"isTooManyHighScores"];
            return true;
        }
}


// throws Exception
// synchronized
- (bool) isBestScore:(HighScore*)newHighScore {
        JAVA_TRY {
            if (![self isTooManyHighScores]) {
                [self->logUtil putF:"Slot Available for a High Score" :self :"isBestScore"];
                return true;
            } else {
                BasicArrayList* list = [self getList];
                int32_t size = [list size];
                for (int32_t index = 0; index < size; index++) {
                    HighScore* highScore = ((HighScore*) list->objectArray[index]);
                    if ([self->recordComparatorInterface compare:[newHighScore getAsBytes] :[highScore getAsBytes]] == (RecordComparator_staticInit(), RecordComparator_FOLLOWS)) {
                        [self->logUtil putF:"Obtained a High Score" :self :"isBestScore"];
                        return true;
                    }
                }
            }
            [self->logUtil putF:"Not a High Score" :self :"isBestScore"];
            return false;
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->ADD :e];
            java_throw(e);
        } JAVA_END_TRY;
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:[super toString]];
        BasicArrayList* list = [self getList];
        int32_t size = [list size];
        for (int32_t index = 0; index < size; index++) {
            HighScore* highScore = ((HighScore*) list->objectArray[index]);
            [stringBuffer append:[highScore getScoreString]];
            [stringBuffer append:[CommonSeps getInstance]->COMMA_SEP];
        }
        return [stringBuffer toString];
}

@end

