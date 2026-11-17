
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
        



        #ifndef ORG_ALLBINARY_ANIMATION_NULLINDEXEDANIMATIONINNER_H
        #define ORG_ALLBINARY_ANIMATION_NULLINDEXEDANIMATIONINNER_H

        
        #pragma push_macro("JAVA_COMPLETE_TYPES")
        #undef JAVA_COMPLETE_TYPES
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
class Graphics;
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        #include "org/allbinary/animation/NullIndexedAnimation.h"
class IndexedAnimationBehavior;

                                
        #pragma pop_macro("JAVA_COMPLETE_TYPES")

        
class NullIndexedAnimationInner: public NullIndexedAnimation {

public: NullIndexedAnimationInner();

    public: void paintXY(Graphics* graphics, int32_t x, int32_t y);

};

            


        #endif //ORG_ALLBINARY_ANIMATION_NULLINDEXEDANIMATIONINNER_H

        
        #if defined(JAVA_COMPLETE_TYPES) && !defined(ORG_ALLBINARY_ANIMATION_NULLINDEXEDANIMATIONINNER_H_COMPLETE)
        #define ORG_ALLBINARY_ANIMATION_NULLINDEXEDANIMATIONINNER_H_COMPLETE
        #if __has_include(<javax/microedition/lcdui/Graphics.h>)
#include <javax/microedition/lcdui/Graphics.h>
#endif
#if __has_include("org/allbinary/animation/NullIndexedAnimation.h")
#include "org/allbinary/animation/NullIndexedAnimation.h"
#endif
#if __has_include("org/allbinary/animation/IndexedAnimationBehavior.h")
#include "org/allbinary/animation/IndexedAnimationBehavior.h"
#endif

        #endif
    
