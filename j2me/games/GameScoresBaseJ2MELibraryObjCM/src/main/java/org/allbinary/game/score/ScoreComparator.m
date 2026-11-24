// Generated Code Do Not Modify
#include "org/allbinary/game/score/ScoreComparator.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"



void ScoreComparator_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ScoreComparator

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
}


- (instancetype) init:(bool)isHighestBest {
    self = [super init];
    [self initFields];
        self->isHighestBest = isHighestBest;
    return self;
}


- (int64_t) getBestScore {
        return (self->isHighestBest ? (Long_staticInit(), Long_MAX_VALUE) : 0);
}


- (int32_t) compare:(int8_t*)recordOne :(int8_t*)recordTwo {
        ByteArrayInputStream* byteArrayInputStreamOne = ((ByteArrayInputStream*) [((ByteArrayInputStream*) [ByteArrayInputStream alloc]) init:recordOne]);
        DataInputStream* inputStreamOne = ((DataInputStream*) [((DataInputStream*) [DataInputStream alloc]) init:byteArrayInputStreamOne]);
        ByteArrayInputStream* byteArrayInputStreamTwo = ((ByteArrayInputStream*) [((ByteArrayInputStream*) [ByteArrayInputStream alloc]) init:recordTwo]);
        DataInputStream* inputStreamTwo = ((DataInputStream*) [((DataInputStream*) [DataInputStream alloc]) init:byteArrayInputStreamTwo]);
        int64_t scoreOne = 0LL;
        int64_t scoreTwo = 0LL;
        JAVA_TRY {
            [inputStreamOne readUTF];
            [inputStreamTwo readUTF];
            scoreOne = [inputStreamOne readLong];
            scoreTwo = [inputStreamTwo readLong];
        } JAVA_CATCH(EOFException, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :"compare" :e];
        } JAVA_CATCH(IOException, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :"compare" :e];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :"compare" :e];
        } JAVA_END_TRY;
        if (self->isHighestBest) {
            return [self getHighTooLow:scoreOne :scoreTwo];
        } else {
            return [self getLowTooHigh:scoreOne :scoreTwo];
        }
}


- (int32_t) getHighTooLow:(int64_t)scoreOne :(int64_t)scoreTwo {
        if (scoreOne > scoreTwo) {
            return (RecordComparator_staticInit(), RecordComparator_PRECEDES);
        } else if (scoreOne < scoreTwo) {
            return (RecordComparator_staticInit(), RecordComparator_FOLLOWS);
        } else {
            return (RecordComparator_staticInit(), RecordComparator_EQUIVALENT);
        }
}


- (int32_t) getLowTooHigh:(int64_t)scoreOne :(int64_t)scoreTwo {
        if (scoreOne < scoreTwo) {
            return (RecordComparator_staticInit(), RecordComparator_PRECEDES);
        } else if (scoreOne > scoreTwo) {
            return (RecordComparator_staticInit(), RecordComparator_FOLLOWS);
        } else {
            return (RecordComparator_staticInit(), RecordComparator_EQUIVALENT);
        }
}

@end

