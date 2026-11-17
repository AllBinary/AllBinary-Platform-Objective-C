
        /*
                *  
                *  AllBinary Open License Version 1 
                *  Copyright (c) 2022 AllBinary 
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
        



        #ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_REPAINTRUNNABLE_CPP
        #define ORG_ALLBINARY_GAME_DISPLAYABLE_REPAINTRUNNABLE_CPP

        #ifndef JAVA_COMPLETE_TYPES
        #define JAVA_COMPLETE_TYPES
        #endif
        
        #include "org/allbinary/game/displayable/RepaintRunnable.h"
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Exception.h"
        
#include <javax/microedition/lcdui/Canvas.h>

      
#include <org/allbinary/graphics/displayable/DisplayInfoSingleton.h>

      
#include <org/allbinary/logic/communication/log/LogUtil.h>

      
#include <org/allbinary/string/CommonStrings.h>

      
#include <org/allbinary/thread/ARunnable.h>

      
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        

RepaintRunnable::RepaintRunnable(Canvas* canvas){
this->canvas= canvas;
    
}


    auto RepaintRunnable::run() -> void{

        try {
            this->canvas->repaint();
    
DisplayInfoSingleton::getInstance()->process();
    

                //: 
} catch(Exception& e) 
            {

    CommonStrings* commonStrings = CommonStrings::getInstance();;
    

    LogUtil* logUtil = LogUtil::getInstance();;
    
logUtil->put(commonStrings->EXCEPTION, this, commonStrings->RUN, &e);
    
}

}




        #endif //ORG_ALLBINARY_GAME_DISPLAYABLE_REPAINTRUNNABLE_CPP
