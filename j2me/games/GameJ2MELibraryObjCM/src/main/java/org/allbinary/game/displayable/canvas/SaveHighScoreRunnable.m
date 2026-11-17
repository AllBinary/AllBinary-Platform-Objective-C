
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
        



        #ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_SAVEHIGHSCORERUNNABLE_CPP
        #define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_SAVEHIGHSCORERUNNABLE_CPP

        #ifndef JAVA_COMPLETE_TYPES
        #define JAVA_COMPLETE_TYPES
        #endif
        
        #include "org/allbinary/game/displayable/canvas/SaveHighScoreRunnable.h"
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Object.h"
        
            #include "java/lang/Exception.h"
        
            #include "java/lang/Runnable.h"
        
#include <org/allbinary/game/score/displayable/HighScoreTextBox.h>

      
#include <org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h>

      
#include <org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h>

      
#include <org/allbinary/logic/communication/log/LogUtil.h>

      
#include <org/allbinary/string/CommonStrings.h>

      
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        

SaveHighScoreRunnable::SaveHighScoreRunnable(bool isLast, HighScoreTextBox* textBox) : progressCanvas(ProgressCanvasFactory::getInstance()){
this->isLast= isLast;
    
this->textBox= textBox;
    
}


    auto SaveHighScoreRunnable::run() -> void{

    LogUtil* logUtil = LogUtil::getInstance();;
    

        try {
            
                        if(this->isLast)
                        
                                    {
                                    this->textBox->submit();
    

                                    }
                                
                        else {
                            this->textBox->saveHighScore();
    

                        }
                            

                //: 
} catch(Exception& e) 
            {

    CommonStrings* commonStrings = CommonStrings::getInstance();;
    
logUtil->put(commonStrings->EXCEPTION, this, "run", &e);
    
this->progressCanvas->end();
    
}

}




        #endif //ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_SAVEHIGHSCORERUNNABLE_CPP
