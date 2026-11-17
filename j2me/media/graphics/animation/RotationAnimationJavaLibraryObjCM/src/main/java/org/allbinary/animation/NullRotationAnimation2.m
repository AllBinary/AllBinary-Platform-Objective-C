
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
        



        #ifndef ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATION2_CPP
        #define ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATION2_CPP

        #ifndef JAVA_COMPLETE_TYPES
        #define JAVA_COMPLETE_TYPES
        #endif
        
        #include "org/allbinary/animation/NullRotationAnimation2.h"
        

            #include <cstdint>
            #include <memory>
            #include <string>
            #include "java/lang/String.h"

        
#include <javax/microedition/lcdui/Graphics.h>

      
#include <org/allbinary/math/AngleFactory.h>

      
#include <org/allbinary/math/AngleInfo.h>

      
#include <org/allbinary/util/CircularIndexUtil.h>

      
















                                        
        //Current folder imports from return types, extended types, and scope (deduplicated)
        #include "org/allbinary/animation/NullRotationAnimation.h"
#include "org/allbinary/animation/IndexedAnimationBehavior.h"


NullRotationAnimation2::NullRotationAnimation2() : NullRotationAnimation(AngleInfo::getInstance(AngleFactory::getInstance()->QUARTER_TOTAL_ANGLE), CircularIndexUtil::createInstance(4), new IndexedAnimationBehavior(1, 250)){

                        //super/this constructor call is in the constructor initializer list.
                    

                            //For kotlin this is before the body of the constructor.
                    
}


    auto NullRotationAnimation2::paintXY(Graphics* graphics, int32_t x, int32_t y) -> void{
}




        #endif //ORG_ALLBINARY_ANIMATION_NULLROTATIONANIMATION2_CPP
