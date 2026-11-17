
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
        



        #ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_RELEASEHELPER_CPP
        #define ORG_ALLBINARY_INPUT_MOTION_BUTTON_RELEASEHELPER_CPP

        #ifndef JAVA_COMPLETE_TYPES
        #define JAVA_COMPLETE_TYPES
        #endif
        
        #include "org/allbinary/input/motion/button/ReleaseHelper.h"
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Object.h"
        
            #include "java/lang/Exception.h"
        
#include <org/allbinary/game/input/event/GameKeyEvent.h>

      
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        #include "org/allbinary/input/motion/button/TouchButtonRecognizer.h"
#include "org/allbinary/input/motion/button/TouchButtonInput.h"


ReleaseHelper::ReleaseHelper(TouchButtonRecognizer* touchButtonRecognizer){
this->touchButtonRecognizer= touchButtonRecognizer;
    
}


                //@Throws(Exception.constructor)
            
    auto ReleaseHelper::release(TouchButtonInput* touchButtonInput, int32_t deviceId) -> void{

    TouchButtonInput* nextTouchButtonInput;;
    

    GameKeyEvent* gameKeyEvent;;
    




                        for (
    int32_t index = this->touchButtonRecognizer->currentlyPressedTouchButtonSingleton->size() -1;index >= 0; index--)
        {
nextTouchButtonInput= this->touchButtonRecognizer->currentlyPressedTouchButtonSingleton->get(index);
    
gameKeyEvent= nextTouchButtonInput->getGameKeyEvent();
    
this->touchButtonRecognizer->upGameKeyEventHandler->fireEvent(gameKeyEvent);
    
this->touchButtonRecognizer->upGameKeyEventHandler->getInstanceForDevice(deviceId)->fireEvent(gameKeyEvent);
    
this->touchButtonRecognizer->currentlyPressedTouchButtonSingleton->removeAt(index);
    
}

}




        #endif //ORG_ALLBINARY_INPUT_MOTION_BUTTON_RELEASEHELPER_CPP
