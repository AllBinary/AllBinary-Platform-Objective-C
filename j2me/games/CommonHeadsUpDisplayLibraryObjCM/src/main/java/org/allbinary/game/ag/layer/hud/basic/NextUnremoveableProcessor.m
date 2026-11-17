
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
        



        #ifndef ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NEXTUNREMOVEABLEPROCESSOR_CPP
        #define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NEXTUNREMOVEABLEPROCESSOR_CPP

        #ifndef JAVA_COMPLETE_TYPES
        #define JAVA_COMPLETE_TYPES
        #endif
        
        #include "org/allbinary/game/ag/layer/hud/basic/NextUnremoveableProcessor.h"
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Exception.h"
        
#include <org/allbinary/canvas/Processor.h>

      
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        #include "org/allbinary/game/ag/layer/hud/basic/PlayerGameNotificationHud.h"


NextUnremoveableProcessor::NextUnremoveableProcessor(PlayerGameNotificationHud* updateMeasurementProcessor){
this->updateMeasurementProcessor= updateMeasurementProcessor;
    
}


                //@Throws(Exception.constructor)
            
    auto NextUnremoveableProcessor::process() -> void{
this->updateMeasurementProcessor->setNextUnremoveableProcess();
    
}




        #endif //ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NEXTUNREMOVEABLEPROCESSOR_CPP
