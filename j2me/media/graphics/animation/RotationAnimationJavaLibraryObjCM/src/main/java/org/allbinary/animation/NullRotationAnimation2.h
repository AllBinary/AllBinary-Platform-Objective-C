
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
        



        #ifndef ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATION2_H
        #define ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATION2_H

        
        #pragma push_macro("JAVA_COMPLETE_TYPES")
        #undef JAVA_COMPLETE_TYPES
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
class Graphics;
class AngleFactory;
class AngleInfo;
class CircularIndexUtil;
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        #include "org/allbinary/animation/NullRotationAnimation.h"
class IndexedAnimationBehavior;

                                
        #pragma pop_macro("JAVA_COMPLETE_TYPES")

        
class NullRotationAnimation2: public NullRotationAnimation {

public: NullRotationAnimation2();

    public: void paintXY(Graphics* graphics, int32_t x, int32_t y);

};

            


        #endif //ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATION2_H

        
        #if defined(JAVA_COMPLETE_TYPES) && !defined(ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATION2_H_COMPLETE)
        #define ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATION2_H_COMPLETE
        #if __has_include(<javax/microedition/lcdui/Graphics.h>)
#include <javax/microedition/lcdui/Graphics.h>
#endif
#if __has_include(<org/allbinary/math/AngleFactory.h>)
#include <org/allbinary/math/AngleFactory.h>
#endif
#if __has_include(<org/allbinary/math/AngleInfo.h>)
#include <org/allbinary/math/AngleInfo.h>
#endif
#if __has_include(<org/allbinary/util/CircularIndexUtil.h>)
#include <org/allbinary/util/CircularIndexUtil.h>
#endif
#if __has_include("org/allbinary/animation/NullRotationAnimation.h")
#include "org/allbinary/animation/NullRotationAnimation.h"
#endif
#if __has_include("org/allbinary/animation/IndexedAnimationBehavior.h")
#include "org/allbinary/animation/IndexedAnimationBehavior.h"
#endif

        #endif
    
