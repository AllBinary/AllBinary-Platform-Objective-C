
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
        



        #ifndef ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NOTIFICATION_NOGAMEGAMENOTIFICATIONHUD_H
        #define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NOTIFICATION_NOGAMEGAMENOTIFICATIONHUD_H

        
        #pragma push_macro("JAVA_COMPLETE_TYPES")
        #undef JAVA_COMPLETE_TYPES
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
class BasicHudFactory;
class BasicColorFactory;
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        #include "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud.h"

                                
        #pragma pop_macro("JAVA_COMPLETE_TYPES")

        
class NoGameGameNotificationHud: public GameNotificationHud {

public: NoGameGameNotificationHud();

};

            


        #endif //ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NOTIFICATION_NOGAMEGAMENOTIFICATIONHUD_H

        
        #if defined(JAVA_COMPLETE_TYPES) && !defined(ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NOTIFICATION_NOGAMEGAMENOTIFICATIONHUD_H_COMPLETE)
        #define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NOTIFICATION_NOGAMEGAMENOTIFICATIONHUD_H_COMPLETE
        #if __has_include(<org/allbinary/game/graphics/hud/BasicHudFactory.h>)
#include <org/allbinary/game/graphics/hud/BasicHudFactory.h>
#endif
#if __has_include(<org/allbinary/graphics/color/BasicColorFactory.h>)
#include <org/allbinary/graphics/color/BasicColorFactory.h>
#endif
#if __has_include("org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud.h")
#include "org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud.h"
#endif

        #endif
    
