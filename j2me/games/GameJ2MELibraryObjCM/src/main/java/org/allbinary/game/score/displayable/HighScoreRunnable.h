
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
        



        #ifndef ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORERUNNABLE_H
        #define ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORERUNNABLE_H

        
        #pragma push_macro("JAVA_COMPLETE_TYPES")
        #undef JAVA_COMPLETE_TYPES
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
            #include "java/lang/Exception.h"
        
class J2MEUtil;
class ABSystemWrapper;
class LogUtil;
class StringMaker;
class CommonStrings;
#include <org/allbinary/thread/ARunnable.h>
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        class HighScoresCanvas;

                                
        #pragma pop_macro("JAVA_COMPLETE_TYPES")

        
class HighScoreRunnable: public ARunnable {

    public: HighScoresCanvas* highScoresCanvas;

public: HighScoreRunnable(HighScoresCanvas* highScoresCanvas);

    public: void run();

};

            


        #endif //ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORERUNNABLE_H

        
        #if defined(JAVA_COMPLETE_TYPES) && !defined(ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORERUNNABLE_H_COMPLETE)
        #define ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORERUNNABLE_H_COMPLETE
        #if __has_include(<org/allbinary/J2MEUtil.h>)
#include <org/allbinary/J2MEUtil.h>
#endif
#if __has_include(<org/allbinary/logic/ABSystemWrapper.h>)
#include <org/allbinary/logic/ABSystemWrapper.h>
#endif
#if __has_include(<org/allbinary/logic/communication/log/LogUtil.h>)
#include <org/allbinary/logic/communication/log/LogUtil.h>
#endif
#if __has_include(<org/allbinary/logic/string/StringMaker.h>)
#include <org/allbinary/logic/string/StringMaker.h>
#endif
#if __has_include(<org/allbinary/string/CommonStrings.h>)
#include <org/allbinary/string/CommonStrings.h>
#endif
#if __has_include(<org/allbinary/thread/ARunnable.h>)
#include <org/allbinary/thread/ARunnable.h>
#endif
#if __has_include("org/allbinary/game/score/displayable/HighScoresCanvas.h")
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#endif

        #endif
    
