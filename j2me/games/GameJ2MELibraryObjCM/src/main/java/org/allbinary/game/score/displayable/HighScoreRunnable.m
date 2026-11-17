
        /*
                * 
                *  AllBinary Open License Version 1
                *  Copyright (c) 2011 AllBinary
                *  
                *  By agreeing to this license you and any business entity you represent are
                *  legally bound to the AllBinary Open License Version 1 legal agreement.
                *  
                *  You may obtain the AllBinary Open License Version 1 legal agreement from
                *  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
                *  
                *  Created By: Travis Berthelot  
        */
        
        /* Generated Code Do Not Modify */
        



        #ifndef ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORERUNNABLE_CPP
        #define ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORERUNNABLE_CPP

        #ifndef JAVA_COMPLETE_TYPES
        #define JAVA_COMPLETE_TYPES
        #endif
        
        #include "org/allbinary/game/score/displayable/HighScoreRunnable.h"
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Exception.h"
        
#include <org/allbinary/J2MEUtil.h>

      
#include <org/allbinary/logic/ABSystemWrapper.h>

      
#include <org/allbinary/logic/communication/log/LogUtil.h>

      
#include <org/allbinary/logic/string/StringMaker.h>

      
#include <org/allbinary/string/CommonStrings.h>

      
#include <org/allbinary/thread/ARunnable.h>

      
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        #include "org/allbinary/game/score/displayable/HighScoresCanvas.h"


HighScoreRunnable::HighScoreRunnable(HighScoresCanvas* highScoresCanvas){
this->highScoresCanvas= highScoresCanvas;
    
}


    auto HighScoreRunnable::run() -> void{

    CommonStrings* commonStrings = CommonStrings::getInstance();;
    

    LogUtil* logUtil = LogUtil::getInstance();;
    

    HighScoresCanvas* highScoresCanvas = this->highScoresCanvas;;
    

        try {
            
    bool isHTML = J2MEUtil::isHTML();;
    

                        if(!isHTML)
                        
                                    {
                                    
        while(!highScoresCanvas->hasPainted)
        {
}

highScoresCanvas->hasPainted= false;
    

                                    }
                                

    StringMaker* stringMaker = new StringMaker();;
    

    ABSystemWrapper* systemWrapper = ABSystemWrapper::getInstance();;
    

    int64_t currentTimeMillis = systemWrapper->currentTimeMillis();;
    
logUtil->putF(JavaString::valueOf(stringMaker->append("HighScoresCanvas - Request repaint to be sure: ")->appendlong(currentTimeMillis)), this, commonStrings->RUN);
    
highScoresCanvas->repaintBehavior->onChangeRepaint(highScoresCanvas);
    

                        if(!isHTML)
                        
                                    {
                                    
        while(!highScoresCanvas->hasPainted)
        {
}


                                    }
                                
stringMaker->delete_(0, stringMaker->length());
    
logUtil->putF(JavaString::valueOf(stringMaker->append("HighScoresCanvas - Now that the canvas has completed repaint go ahead and fetch the scores: ")->appendlong(currentTimeMillis)), this, commonStrings->RUN);
    
highScoresCanvas->executeUpdate();
    

                //: 
} catch(Exception& e) 
            {
logUtil->put(commonStrings->EXCEPTION, this, commonStrings->RUN, &e);
    
}

}




        #endif //ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORERUNNABLE_CPP
