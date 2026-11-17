
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
        



        #ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_MULTITOUCHRELEASEHELPER_H
        #define ORG_ALLBINARY_INPUT_MOTION_BUTTON_MULTITOUCHRELEASEHELPER_H

        
        #pragma push_macro("JAVA_COMPLETE_TYPES")
        #undef JAVA_COMPLETE_TYPES
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Exception.h"
        
class GameKeyEvent;
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        #include "org/allbinary/input/motion/button/ReleaseHelper.h"
class TouchButtonRecognizer;
class CancelTouchButtonInputFactory;
class TouchButtonInput;

                                
        #pragma pop_macro("JAVA_COMPLETE_TYPES")

        
class MultitouchReleaseHelper: public ReleaseHelper {

public: MultitouchReleaseHelper(TouchButtonRecognizer* touchButtonRecognizer);

                //@Throws(Exception.constructor)
            
    public: void release(TouchButtonInput* touchButtonInput, int32_t deviceId);

};

            


        #endif //ORG_ALLBINARY_INPUT_MOTION_BUTTON_MULTITOUCHRELEASEHELPER_H

        
        #if defined(JAVA_COMPLETE_TYPES) && !defined(ORG_ALLBINARY_INPUT_MOTION_BUTTON_MULTITOUCHRELEASEHELPER_H_COMPLETE)
        #define ORG_ALLBINARY_INPUT_MOTION_BUTTON_MULTITOUCHRELEASEHELPER_H_COMPLETE
        #if __has_include(<org/allbinary/game/input/event/GameKeyEvent.h>)
#include <org/allbinary/game/input/event/GameKeyEvent.h>
#endif
#if __has_include("org/allbinary/input/motion/button/ReleaseHelper.h")
#include "org/allbinary/input/motion/button/ReleaseHelper.h"
#endif
#if __has_include("org/allbinary/input/motion/button/TouchButtonRecognizer.h")
#include "org/allbinary/input/motion/button/TouchButtonRecognizer.h"
#endif
#if __has_include("org/allbinary/input/motion/button/CancelTouchButtonInputFactory.h")
#include "org/allbinary/input/motion/button/CancelTouchButtonInputFactory.h"
#endif
#if __has_include("org/allbinary/input/motion/button/TouchButtonInput.h")
#include "org/allbinary/input/motion/button/TouchButtonInput.h"
#endif

        #endif
    
