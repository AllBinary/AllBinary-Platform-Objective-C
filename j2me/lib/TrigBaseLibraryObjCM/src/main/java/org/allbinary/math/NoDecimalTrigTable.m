// Generated Code Do Not Modify
#include "org/allbinary/math/NoDecimalTrigTable.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/math/MathUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/math/PositionStrings.h"
#include "org/allbinary/math/Angle.h"
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif


static NoDecimalTrigTable* NoDecimalTrigTable_instance;

void NoDecimalTrigTable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoDecimalTrigTable_instance = ((NoDecimalTrigTable*) [((NoDecimalTrigTable*) [NoDecimalTrigTable alloc]) init]);
}

@implementation NoDecimalTrigTable

- (void) initFields {
    self->mathUtil = [MathUtil getInstance];
    
    
    
    self->SCALE = 10000;
}


+ (NoDecimalTrigTable*) getInstance {
        return (NoDecimalTrigTable_staticInit(), NoDecimalTrigTable_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        int32_t TOTAL_ANGLE = ((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE);
        int64_t MAX_VALUE = (((int64_t) (Integer_staticInit(), Integer_MAX_VALUE)));
        self->noDecimalSin = ((int64_t*) java_array_new(sizeof(int64_t), TOTAL_ANGLE));
        self->noDecimalCos = ((int64_t*) java_array_new(sizeof(int64_t), TOTAL_ANGLE));
        self->noDecimalTan = ((int64_t*) java_array_new(sizeof(int64_t), TOTAL_ANGLE + 1));
        self->noDecimalSin[0] = 0LL;
        self->noDecimalSin[1] = 174LL;
        self->noDecimalSin[2] = 348LL;
        self->noDecimalSin[3] = 523LL;
        self->noDecimalSin[4] = 697LL;
        self->noDecimalSin[5] = 871LL;
        self->noDecimalSin[6] = 1045LL;
        self->noDecimalSin[7] = 1218LL;
        self->noDecimalSin[8] = 1391LL;
        self->noDecimalSin[9] = 1564LL;
        self->noDecimalSin[10] = 1736LL;
        self->noDecimalSin[11] = 1908LL;
        self->noDecimalSin[12] = 2079LL;
        self->noDecimalSin[13] = 2249LL;
        self->noDecimalSin[14] = 2419LL;
        self->noDecimalSin[15] = 2588LL;
        self->noDecimalSin[16] = 2756LL;
        self->noDecimalSin[17] = 2923LL;
        self->noDecimalSin[18] = 3090LL;
        self->noDecimalSin[19] = 3255LL;
        self->noDecimalSin[20] = 3420LL;
        self->noDecimalSin[21] = 3583LL;
        self->noDecimalSin[22] = 3746LL;
        self->noDecimalSin[23] = 3907LL;
        self->noDecimalSin[24] = 4067LL;
        self->noDecimalSin[25] = 4226LL;
        self->noDecimalSin[26] = 4383LL;
        self->noDecimalSin[27] = 4539LL;
        self->noDecimalSin[28] = 4694LL;
        self->noDecimalSin[29] = 4848LL;
        self->noDecimalSin[30] = 4999LL;
        self->noDecimalSin[31] = 5150LL;
        self->noDecimalSin[32] = 5299LL;
        self->noDecimalSin[33] = 5446LL;
        self->noDecimalSin[34] = 5591LL;
        self->noDecimalSin[35] = 5735LL;
        self->noDecimalSin[36] = 5877LL;
        self->noDecimalSin[37] = 6018LL;
        self->noDecimalSin[38] = 6156LL;
        self->noDecimalSin[39] = 6293LL;
        self->noDecimalSin[40] = 6427LL;
        self->noDecimalSin[41] = 6560LL;
        self->noDecimalSin[42] = 6691LL;
        self->noDecimalSin[43] = 6819LL;
        self->noDecimalSin[44] = 6946LL;
        self->noDecimalSin[45] = 7071LL;
        self->noDecimalSin[46] = 7193LL;
        self->noDecimalSin[47] = 7313LL;
        self->noDecimalSin[48] = 7431LL;
        self->noDecimalSin[49] = 7547LL;
        self->noDecimalSin[50] = 7660LL;
        self->noDecimalSin[51] = 7771LL;
        self->noDecimalSin[52] = 7880LL;
        self->noDecimalSin[53] = 7986LL;
        self->noDecimalSin[54] = 8090LL;
        self->noDecimalSin[55] = 8191LL;
        self->noDecimalSin[56] = 8290LL;
        self->noDecimalSin[57] = 8386LL;
        self->noDecimalSin[58] = 8480LL;
        self->noDecimalSin[59] = 8571LL;
        self->noDecimalSin[60] = 8660LL;
        self->noDecimalSin[61] = 8746LL;
        self->noDecimalSin[62] = 8829LL;
        self->noDecimalSin[63] = 8910LL;
        self->noDecimalSin[64] = 8987LL;
        self->noDecimalSin[65] = 9063LL;
        self->noDecimalSin[66] = 9135LL;
        self->noDecimalSin[67] = 9205LL;
        self->noDecimalSin[68] = 9271LL;
        self->noDecimalSin[69] = 9335LL;
        self->noDecimalSin[70] = 9396LL;
        self->noDecimalSin[71] = 9455LL;
        self->noDecimalSin[72] = 9510LL;
        self->noDecimalSin[73] = 9563LL;
        self->noDecimalSin[74] = 9612LL;
        self->noDecimalSin[75] = 9659LL;
        self->noDecimalSin[76] = 9702LL;
        self->noDecimalSin[77] = 9743LL;
        self->noDecimalSin[78] = 9781LL;
        self->noDecimalSin[79] = 9816LL;
        self->noDecimalSin[80] = 9848LL;
        self->noDecimalSin[81] = 9876LL;
        self->noDecimalSin[82] = 9902LL;
        self->noDecimalSin[83] = 9925LL;
        self->noDecimalSin[84] = 9945LL;
        self->noDecimalSin[85] = 9961LL;
        self->noDecimalSin[86] = 9975LL;
        self->noDecimalSin[87] = 9986LL;
        self->noDecimalSin[88] = 9993LL;
        self->noDecimalSin[89] = 9998LL;
        self->noDecimalSin[90] = 10000LL;
        self->noDecimalSin[91] = 9998LL;
        self->noDecimalSin[92] = 9993LL;
        self->noDecimalSin[93] = 9986LL;
        self->noDecimalSin[94] = 9975LL;
        self->noDecimalSin[95] = 9961LL;
        self->noDecimalSin[96] = 9945LL;
        self->noDecimalSin[97] = 9925LL;
        self->noDecimalSin[98] = 9902LL;
        self->noDecimalSin[99] = 9876LL;
        self->noDecimalSin[100] = 9848LL;
        self->noDecimalSin[101] = 9816LL;
        self->noDecimalSin[102] = 9781LL;
        self->noDecimalSin[103] = 9743LL;
        self->noDecimalSin[104] = 9702LL;
        self->noDecimalSin[105] = 9659LL;
        self->noDecimalSin[106] = 9612LL;
        self->noDecimalSin[107] = 9563LL;
        self->noDecimalSin[108] = 9510LL;
        self->noDecimalSin[109] = 9455LL;
        self->noDecimalSin[110] = 9396LL;
        self->noDecimalSin[111] = 9335LL;
        self->noDecimalSin[112] = 9271LL;
        self->noDecimalSin[113] = 9205LL;
        self->noDecimalSin[114] = 9135LL;
        self->noDecimalSin[115] = 9063LL;
        self->noDecimalSin[116] = 8987LL;
        self->noDecimalSin[117] = 8910LL;
        self->noDecimalSin[118] = 8829LL;
        self->noDecimalSin[119] = 8746LL;
        self->noDecimalSin[120] = 8660LL;
        self->noDecimalSin[121] = 8571LL;
        self->noDecimalSin[122] = 8480LL;
        self->noDecimalSin[123] = 8386LL;
        self->noDecimalSin[124] = 8290LL;
        self->noDecimalSin[125] = 8191LL;
        self->noDecimalSin[126] = 8090LL;
        self->noDecimalSin[127] = 7986LL;
        self->noDecimalSin[128] = 7880LL;
        self->noDecimalSin[129] = 7771LL;
        self->noDecimalSin[130] = 7660LL;
        self->noDecimalSin[131] = 7547LL;
        self->noDecimalSin[132] = 7431LL;
        self->noDecimalSin[133] = 7313LL;
        self->noDecimalSin[134] = 7193LL;
        self->noDecimalSin[135] = 7071LL;
        self->noDecimalSin[136] = 6946LL;
        self->noDecimalSin[137] = 6819LL;
        self->noDecimalSin[138] = 6691LL;
        self->noDecimalSin[139] = 6560LL;
        self->noDecimalSin[140] = 6427LL;
        self->noDecimalSin[141] = 6293LL;
        self->noDecimalSin[142] = 6156LL;
        self->noDecimalSin[143] = 6018LL;
        self->noDecimalSin[144] = 5877LL;
        self->noDecimalSin[145] = 5735LL;
        self->noDecimalSin[146] = 5591LL;
        self->noDecimalSin[147] = 5446LL;
        self->noDecimalSin[148] = 5299LL;
        self->noDecimalSin[149] = 5150LL;
        self->noDecimalSin[150] = 4999LL;
        self->noDecimalSin[151] = 4848LL;
        self->noDecimalSin[152] = 4694LL;
        self->noDecimalSin[153] = 4539LL;
        self->noDecimalSin[154] = 4383LL;
        self->noDecimalSin[155] = 4226LL;
        self->noDecimalSin[156] = 4067LL;
        self->noDecimalSin[157] = 3907LL;
        self->noDecimalSin[158] = 3746LL;
        self->noDecimalSin[159] = 3583LL;
        self->noDecimalSin[160] = 3420LL;
        self->noDecimalSin[161] = 3255LL;
        self->noDecimalSin[162] = 3090LL;
        self->noDecimalSin[163] = 2923LL;
        self->noDecimalSin[164] = 2756LL;
        self->noDecimalSin[165] = 2588LL;
        self->noDecimalSin[166] = 2419LL;
        self->noDecimalSin[167] = 2249LL;
        self->noDecimalSin[168] = 2079LL;
        self->noDecimalSin[169] = 1908LL;
        self->noDecimalSin[170] = 1736LL;
        self->noDecimalSin[171] = 1564LL;
        self->noDecimalSin[172] = 1391LL;
        self->noDecimalSin[173] = 1218LL;
        self->noDecimalSin[174] = 1045LL;
        self->noDecimalSin[175] = 871LL;
        self->noDecimalSin[176] = 697LL;
        self->noDecimalSin[177] = 523LL;
        self->noDecimalSin[178] = 348LL;
        self->noDecimalSin[179] = 174LL;
        self->noDecimalSin[180] = 0LL;
        self->noDecimalSin[181] = ((int64_t) (-174));
        self->noDecimalSin[182] = ((int64_t) (-348));
        self->noDecimalSin[183] = ((int64_t) (-523));
        self->noDecimalSin[184] = ((int64_t) (-697));
        self->noDecimalSin[185] = ((int64_t) (-871));
        self->noDecimalSin[186] = ((int64_t) (-1045));
        self->noDecimalSin[187] = ((int64_t) (-1218));
        self->noDecimalSin[188] = ((int64_t) (-1391));
        self->noDecimalSin[189] = ((int64_t) (-1564));
        self->noDecimalSin[190] = ((int64_t) (-1736));
        self->noDecimalSin[191] = ((int64_t) (-1908));
        self->noDecimalSin[192] = ((int64_t) (-2079));
        self->noDecimalSin[193] = ((int64_t) (-2249));
        self->noDecimalSin[194] = ((int64_t) (-2419));
        self->noDecimalSin[195] = ((int64_t) (-2588));
        self->noDecimalSin[196] = ((int64_t) (-2756));
        self->noDecimalSin[197] = ((int64_t) (-2923));
        self->noDecimalSin[198] = ((int64_t) (-3090));
        self->noDecimalSin[199] = ((int64_t) (-3255));
        self->noDecimalSin[200] = ((int64_t) (-3420));
        self->noDecimalSin[201] = ((int64_t) (-3583));
        self->noDecimalSin[202] = ((int64_t) (-3746));
        self->noDecimalSin[203] = ((int64_t) (-3907));
        self->noDecimalSin[204] = ((int64_t) (-4067));
        self->noDecimalSin[205] = ((int64_t) (-4226));
        self->noDecimalSin[206] = ((int64_t) (-4383));
        self->noDecimalSin[207] = ((int64_t) (-4539));
        self->noDecimalSin[208] = ((int64_t) (-4694));
        self->noDecimalSin[209] = ((int64_t) (-4848));
        self->noDecimalSin[210] = ((int64_t) (-5000));
        self->noDecimalSin[211] = ((int64_t) (-5150));
        self->noDecimalSin[212] = ((int64_t) (-5299));
        self->noDecimalSin[213] = ((int64_t) (-5446));
        self->noDecimalSin[214] = ((int64_t) (-5591));
        self->noDecimalSin[215] = ((int64_t) (-5735));
        self->noDecimalSin[216] = ((int64_t) (-5877));
        self->noDecimalSin[217] = ((int64_t) (-6018));
        self->noDecimalSin[218] = ((int64_t) (-6156));
        self->noDecimalSin[219] = ((int64_t) (-6293));
        self->noDecimalSin[220] = ((int64_t) (-6427));
        self->noDecimalSin[221] = ((int64_t) (-6560));
        self->noDecimalSin[222] = ((int64_t) (-6691));
        self->noDecimalSin[223] = ((int64_t) (-6819));
        self->noDecimalSin[224] = ((int64_t) (-6946));
        self->noDecimalSin[225] = ((int64_t) (-7071));
        self->noDecimalSin[226] = ((int64_t) (-7193));
        self->noDecimalSin[227] = ((int64_t) (-7313));
        self->noDecimalSin[228] = ((int64_t) (-7431));
        self->noDecimalSin[229] = ((int64_t) (-7547));
        self->noDecimalSin[230] = ((int64_t) (-7660));
        self->noDecimalSin[231] = ((int64_t) (-7771));
        self->noDecimalSin[232] = ((int64_t) (-7880));
        self->noDecimalSin[233] = ((int64_t) (-7986));
        self->noDecimalSin[234] = ((int64_t) (-8090));
        self->noDecimalSin[235] = ((int64_t) (-8191));
        self->noDecimalSin[236] = ((int64_t) (-8290));
        self->noDecimalSin[237] = ((int64_t) (-8386));
        self->noDecimalSin[238] = ((int64_t) (-8480));
        self->noDecimalSin[239] = ((int64_t) (-8571));
        self->noDecimalSin[240] = ((int64_t) (-8660));
        self->noDecimalSin[241] = ((int64_t) (-8746));
        self->noDecimalSin[242] = ((int64_t) (-8829));
        self->noDecimalSin[243] = ((int64_t) (-8910));
        self->noDecimalSin[244] = ((int64_t) (-8987));
        self->noDecimalSin[245] = ((int64_t) (-9063));
        self->noDecimalSin[246] = ((int64_t) (-9135));
        self->noDecimalSin[247] = ((int64_t) (-9205));
        self->noDecimalSin[248] = ((int64_t) (-9271));
        self->noDecimalSin[249] = ((int64_t) (-9335));
        self->noDecimalSin[250] = ((int64_t) (-9396));
        self->noDecimalSin[251] = ((int64_t) (-9455));
        self->noDecimalSin[252] = ((int64_t) (-9510));
        self->noDecimalSin[253] = ((int64_t) (-9563));
        self->noDecimalSin[254] = ((int64_t) (-9612));
        self->noDecimalSin[255] = ((int64_t) (-9659));
        self->noDecimalSin[256] = ((int64_t) (-9702));
        self->noDecimalSin[257] = ((int64_t) (-9743));
        self->noDecimalSin[258] = ((int64_t) (-9781));
        self->noDecimalSin[259] = ((int64_t) (-9816));
        self->noDecimalSin[260] = ((int64_t) (-9848));
        self->noDecimalSin[261] = ((int64_t) (-9876));
        self->noDecimalSin[262] = ((int64_t) (-9902));
        self->noDecimalSin[263] = ((int64_t) (-9925));
        self->noDecimalSin[264] = ((int64_t) (-9945));
        self->noDecimalSin[265] = ((int64_t) (-9961));
        self->noDecimalSin[266] = ((int64_t) (-9975));
        self->noDecimalSin[267] = ((int64_t) (-9986));
        self->noDecimalSin[268] = ((int64_t) (-9993));
        self->noDecimalSin[269] = ((int64_t) (-9998));
        self->noDecimalSin[270] = ((int64_t) (-10000));
        self->noDecimalSin[271] = ((int64_t) (-9998));
        self->noDecimalSin[272] = ((int64_t) (-9993));
        self->noDecimalSin[273] = ((int64_t) (-9986));
        self->noDecimalSin[274] = ((int64_t) (-9975));
        self->noDecimalSin[275] = ((int64_t) (-9961));
        self->noDecimalSin[276] = ((int64_t) (-9945));
        self->noDecimalSin[277] = ((int64_t) (-9925));
        self->noDecimalSin[278] = ((int64_t) (-9902));
        self->noDecimalSin[279] = ((int64_t) (-9876));
        self->noDecimalSin[280] = ((int64_t) (-9848));
        self->noDecimalSin[281] = ((int64_t) (-9816));
        self->noDecimalSin[282] = ((int64_t) (-9781));
        self->noDecimalSin[283] = ((int64_t) (-9743));
        self->noDecimalSin[284] = ((int64_t) (-9702));
        self->noDecimalSin[285] = ((int64_t) (-9659));
        self->noDecimalSin[286] = ((int64_t) (-9612));
        self->noDecimalSin[287] = ((int64_t) (-9563));
        self->noDecimalSin[288] = ((int64_t) (-9510));
        self->noDecimalSin[289] = ((int64_t) (-9455));
        self->noDecimalSin[290] = ((int64_t) (-9396));
        self->noDecimalSin[291] = ((int64_t) (-9335));
        self->noDecimalSin[292] = ((int64_t) (-9271));
        self->noDecimalSin[293] = ((int64_t) (-9205));
        self->noDecimalSin[294] = ((int64_t) (-9135));
        self->noDecimalSin[295] = ((int64_t) (-9063));
        self->noDecimalSin[296] = ((int64_t) (-8987));
        self->noDecimalSin[297] = ((int64_t) (-8910));
        self->noDecimalSin[298] = ((int64_t) (-8829));
        self->noDecimalSin[299] = ((int64_t) (-8746));
        self->noDecimalSin[300] = ((int64_t) (-8660));
        self->noDecimalSin[301] = ((int64_t) (-8571));
        self->noDecimalSin[302] = ((int64_t) (-8480));
        self->noDecimalSin[303] = ((int64_t) (-8386));
        self->noDecimalSin[304] = ((int64_t) (-8290));
        self->noDecimalSin[305] = ((int64_t) (-8191));
        self->noDecimalSin[306] = ((int64_t) (-8090));
        self->noDecimalSin[307] = ((int64_t) (-7986));
        self->noDecimalSin[308] = ((int64_t) (-7880));
        self->noDecimalSin[309] = ((int64_t) (-7771));
        self->noDecimalSin[310] = ((int64_t) (-7660));
        self->noDecimalSin[311] = ((int64_t) (-7547));
        self->noDecimalSin[312] = ((int64_t) (-7431));
        self->noDecimalSin[313] = ((int64_t) (-7313));
        self->noDecimalSin[314] = ((int64_t) (-7193));
        self->noDecimalSin[315] = ((int64_t) (-7071));
        self->noDecimalSin[316] = ((int64_t) (-6946));
        self->noDecimalSin[317] = ((int64_t) (-6819));
        self->noDecimalSin[318] = ((int64_t) (-6691));
        self->noDecimalSin[319] = ((int64_t) (-6560));
        self->noDecimalSin[320] = ((int64_t) (-6427));
        self->noDecimalSin[321] = ((int64_t) (-6293));
        self->noDecimalSin[322] = ((int64_t) (-6156));
        self->noDecimalSin[323] = ((int64_t) (-6018));
        self->noDecimalSin[324] = ((int64_t) (-5877));
        self->noDecimalSin[325] = ((int64_t) (-5735));
        self->noDecimalSin[326] = ((int64_t) (-5591));
        self->noDecimalSin[327] = ((int64_t) (-5446));
        self->noDecimalSin[328] = ((int64_t) (-5299));
        self->noDecimalSin[329] = ((int64_t) (-5150));
        self->noDecimalSin[330] = ((int64_t) (-5000));
        self->noDecimalSin[331] = ((int64_t) (-4848));
        self->noDecimalSin[332] = ((int64_t) (-4694));
        self->noDecimalSin[333] = ((int64_t) (-4539));
        self->noDecimalSin[334] = ((int64_t) (-4383));
        self->noDecimalSin[335] = ((int64_t) (-4226));
        self->noDecimalSin[336] = ((int64_t) (-4067));
        self->noDecimalSin[337] = ((int64_t) (-3907));
        self->noDecimalSin[338] = ((int64_t) (-3746));
        self->noDecimalSin[339] = ((int64_t) (-3583));
        self->noDecimalSin[340] = ((int64_t) (-3420));
        self->noDecimalSin[341] = ((int64_t) (-3255));
        self->noDecimalSin[342] = ((int64_t) (-3090));
        self->noDecimalSin[343] = ((int64_t) (-2923));
        self->noDecimalSin[344] = ((int64_t) (-2756));
        self->noDecimalSin[345] = ((int64_t) (-2588));
        self->noDecimalSin[346] = ((int64_t) (-2419));
        self->noDecimalSin[347] = ((int64_t) (-2249));
        self->noDecimalSin[348] = ((int64_t) (-2079));
        self->noDecimalSin[349] = ((int64_t) (-1908));
        self->noDecimalSin[350] = ((int64_t) (-1736));
        self->noDecimalSin[351] = ((int64_t) (-1564));
        self->noDecimalSin[352] = ((int64_t) (-1391));
        self->noDecimalSin[353] = ((int64_t) (-1218));
        self->noDecimalSin[354] = ((int64_t) (-1045));
        self->noDecimalSin[355] = ((int64_t) (-871));
        self->noDecimalSin[356] = ((int64_t) (-697));
        self->noDecimalSin[357] = ((int64_t) (-523));
        self->noDecimalSin[358] = ((int64_t) (-348));
        self->noDecimalSin[359] = ((int64_t) (-174));
        self->noDecimalCos[0] = 10000LL;
        self->noDecimalCos[1] = 9998LL;
        self->noDecimalCos[2] = 9993LL;
        self->noDecimalCos[3] = 9986LL;
        self->noDecimalCos[4] = 9975LL;
        self->noDecimalCos[5] = 9961LL;
        self->noDecimalCos[6] = 9945LL;
        self->noDecimalCos[7] = 9925LL;
        self->noDecimalCos[8] = 9902LL;
        self->noDecimalCos[9] = 9876LL;
        self->noDecimalCos[10] = 9848LL;
        self->noDecimalCos[11] = 9816LL;
        self->noDecimalCos[12] = 9781LL;
        self->noDecimalCos[13] = 9743LL;
        self->noDecimalCos[14] = 9702LL;
        self->noDecimalCos[15] = 9659LL;
        self->noDecimalCos[16] = 9612LL;
        self->noDecimalCos[17] = 9563LL;
        self->noDecimalCos[18] = 9510LL;
        self->noDecimalCos[19] = 9455LL;
        self->noDecimalCos[20] = 9396LL;
        self->noDecimalCos[21] = 9335LL;
        self->noDecimalCos[22] = 9271LL;
        self->noDecimalCos[23] = 9205LL;
        self->noDecimalCos[24] = 9135LL;
        self->noDecimalCos[25] = 9063LL;
        self->noDecimalCos[26] = 8987LL;
        self->noDecimalCos[27] = 8910LL;
        self->noDecimalCos[28] = 8829LL;
        self->noDecimalCos[29] = 8746LL;
        self->noDecimalCos[30] = 8660LL;
        self->noDecimalCos[31] = 8571LL;
        self->noDecimalCos[32] = 8480LL;
        self->noDecimalCos[33] = 8386LL;
        self->noDecimalCos[34] = 8290LL;
        self->noDecimalCos[35] = 8191LL;
        self->noDecimalCos[36] = 8090LL;
        self->noDecimalCos[37] = 7986LL;
        self->noDecimalCos[38] = 7880LL;
        self->noDecimalCos[39] = 7771LL;
        self->noDecimalCos[40] = 7660LL;
        self->noDecimalCos[41] = 7547LL;
        self->noDecimalCos[42] = 7431LL;
        self->noDecimalCos[43] = 7313LL;
        self->noDecimalCos[44] = 7193LL;
        self->noDecimalCos[45] = 7071LL;
        self->noDecimalCos[46] = 6946LL;
        self->noDecimalCos[47] = 6819LL;
        self->noDecimalCos[48] = 6691LL;
        self->noDecimalCos[49] = 6560LL;
        self->noDecimalCos[50] = 6427LL;
        self->noDecimalCos[51] = 6293LL;
        self->noDecimalCos[52] = 6156LL;
        self->noDecimalCos[53] = 6018LL;
        self->noDecimalCos[54] = 5877LL;
        self->noDecimalCos[55] = 5735LL;
        self->noDecimalCos[56] = 5591LL;
        self->noDecimalCos[57] = 5446LL;
        self->noDecimalCos[58] = 5299LL;
        self->noDecimalCos[59] = 5150LL;
        self->noDecimalCos[60] = 5000LL;
        self->noDecimalCos[61] = 4848LL;
        self->noDecimalCos[62] = 4694LL;
        self->noDecimalCos[63] = 4539LL;
        self->noDecimalCos[64] = 4383LL;
        self->noDecimalCos[65] = 4226LL;
        self->noDecimalCos[66] = 4067LL;
        self->noDecimalCos[67] = 3907LL;
        self->noDecimalCos[68] = 3746LL;
        self->noDecimalCos[69] = 3583LL;
        self->noDecimalCos[70] = 3420LL;
        self->noDecimalCos[71] = 3255LL;
        self->noDecimalCos[72] = 3090LL;
        self->noDecimalCos[73] = 2923LL;
        self->noDecimalCos[74] = 2756LL;
        self->noDecimalCos[75] = 2588LL;
        self->noDecimalCos[76] = 2419LL;
        self->noDecimalCos[77] = 2249LL;
        self->noDecimalCos[78] = 2079LL;
        self->noDecimalCos[79] = 1908LL;
        self->noDecimalCos[80] = 1736LL;
        self->noDecimalCos[81] = 1564LL;
        self->noDecimalCos[82] = 1391LL;
        self->noDecimalCos[83] = 1218LL;
        self->noDecimalCos[84] = 1045LL;
        self->noDecimalCos[85] = 871LL;
        self->noDecimalCos[86] = 697LL;
        self->noDecimalCos[87] = 523LL;
        self->noDecimalCos[88] = 348LL;
        self->noDecimalCos[89] = 174LL;
        self->noDecimalCos[90] = 0LL;
        self->noDecimalCos[91] = ((int64_t) (-174));
        self->noDecimalCos[92] = ((int64_t) (-348));
        self->noDecimalCos[93] = ((int64_t) (-523));
        self->noDecimalCos[94] = ((int64_t) (-697));
        self->noDecimalCos[95] = ((int64_t) (-871));
        self->noDecimalCos[96] = ((int64_t) (-1045));
        self->noDecimalCos[97] = ((int64_t) (-1218));
        self->noDecimalCos[98] = ((int64_t) (-1391));
        self->noDecimalCos[99] = ((int64_t) (-1564));
        self->noDecimalCos[100] = ((int64_t) (-1736));
        self->noDecimalCos[101] = ((int64_t) (-1908));
        self->noDecimalCos[102] = ((int64_t) (-2079));
        self->noDecimalCos[103] = ((int64_t) (-2249));
        self->noDecimalCos[104] = ((int64_t) (-2419));
        self->noDecimalCos[105] = ((int64_t) (-2588));
        self->noDecimalCos[106] = ((int64_t) (-2756));
        self->noDecimalCos[107] = ((int64_t) (-2923));
        self->noDecimalCos[108] = ((int64_t) (-3090));
        self->noDecimalCos[109] = ((int64_t) (-3255));
        self->noDecimalCos[110] = ((int64_t) (-3420));
        self->noDecimalCos[111] = ((int64_t) (-3583));
        self->noDecimalCos[112] = ((int64_t) (-3746));
        self->noDecimalCos[113] = ((int64_t) (-3907));
        self->noDecimalCos[114] = ((int64_t) (-4067));
        self->noDecimalCos[115] = ((int64_t) (-4226));
        self->noDecimalCos[116] = ((int64_t) (-4383));
        self->noDecimalCos[117] = ((int64_t) (-4539));
        self->noDecimalCos[118] = ((int64_t) (-4694));
        self->noDecimalCos[119] = ((int64_t) (-4848));
        self->noDecimalCos[120] = ((int64_t) (-4999));
        self->noDecimalCos[121] = ((int64_t) (-5150));
        self->noDecimalCos[122] = ((int64_t) (-5299));
        self->noDecimalCos[123] = ((int64_t) (-5446));
        self->noDecimalCos[124] = ((int64_t) (-5591));
        self->noDecimalCos[125] = ((int64_t) (-5735));
        self->noDecimalCos[126] = ((int64_t) (-5877));
        self->noDecimalCos[127] = ((int64_t) (-6018));
        self->noDecimalCos[128] = ((int64_t) (-6156));
        self->noDecimalCos[129] = ((int64_t) (-6293));
        self->noDecimalCos[130] = ((int64_t) (-6427));
        self->noDecimalCos[131] = ((int64_t) (-6560));
        self->noDecimalCos[132] = ((int64_t) (-6691));
        self->noDecimalCos[133] = ((int64_t) (-6819));
        self->noDecimalCos[134] = ((int64_t) (-6946));
        self->noDecimalCos[135] = ((int64_t) (-7071));
        self->noDecimalCos[136] = ((int64_t) (-7193));
        self->noDecimalCos[137] = ((int64_t) (-7313));
        self->noDecimalCos[138] = ((int64_t) (-7431));
        self->noDecimalCos[139] = ((int64_t) (-7547));
        self->noDecimalCos[140] = ((int64_t) (-7660));
        self->noDecimalCos[141] = ((int64_t) (-7771));
        self->noDecimalCos[142] = ((int64_t) (-7880));
        self->noDecimalCos[143] = ((int64_t) (-7986));
        self->noDecimalCos[144] = ((int64_t) (-8090));
        self->noDecimalCos[145] = ((int64_t) (-8191));
        self->noDecimalCos[146] = ((int64_t) (-8290));
        self->noDecimalCos[147] = ((int64_t) (-8386));
        self->noDecimalCos[148] = ((int64_t) (-8480));
        self->noDecimalCos[149] = ((int64_t) (-8571));
        self->noDecimalCos[150] = ((int64_t) (-8660));
        self->noDecimalCos[151] = ((int64_t) (-8746));
        self->noDecimalCos[152] = ((int64_t) (-8829));
        self->noDecimalCos[153] = ((int64_t) (-8910));
        self->noDecimalCos[154] = ((int64_t) (-8987));
        self->noDecimalCos[155] = ((int64_t) (-9063));
        self->noDecimalCos[156] = ((int64_t) (-9135));
        self->noDecimalCos[157] = ((int64_t) (-9205));
        self->noDecimalCos[158] = ((int64_t) (-9271));
        self->noDecimalCos[159] = ((int64_t) (-9335));
        self->noDecimalCos[160] = ((int64_t) (-9396));
        self->noDecimalCos[161] = ((int64_t) (-9455));
        self->noDecimalCos[162] = ((int64_t) (-9510));
        self->noDecimalCos[163] = ((int64_t) (-9563));
        self->noDecimalCos[164] = ((int64_t) (-9612));
        self->noDecimalCos[165] = ((int64_t) (-9659));
        self->noDecimalCos[166] = ((int64_t) (-9702));
        self->noDecimalCos[167] = ((int64_t) (-9743));
        self->noDecimalCos[168] = ((int64_t) (-9781));
        self->noDecimalCos[169] = ((int64_t) (-9816));
        self->noDecimalCos[170] = ((int64_t) (-9848));
        self->noDecimalCos[171] = ((int64_t) (-9876));
        self->noDecimalCos[172] = ((int64_t) (-9902));
        self->noDecimalCos[173] = ((int64_t) (-9925));
        self->noDecimalCos[174] = ((int64_t) (-9945));
        self->noDecimalCos[175] = ((int64_t) (-9961));
        self->noDecimalCos[176] = ((int64_t) (-9975));
        self->noDecimalCos[177] = ((int64_t) (-9986));
        self->noDecimalCos[178] = ((int64_t) (-9993));
        self->noDecimalCos[179] = ((int64_t) (-9998));
        self->noDecimalCos[180] = ((int64_t) (-10000));
        self->noDecimalCos[181] = ((int64_t) (-9998));
        self->noDecimalCos[182] = ((int64_t) (-9993));
        self->noDecimalCos[183] = ((int64_t) (-9986));
        self->noDecimalCos[184] = ((int64_t) (-9975));
        self->noDecimalCos[185] = ((int64_t) (-9961));
        self->noDecimalCos[186] = ((int64_t) (-9945));
        self->noDecimalCos[187] = ((int64_t) (-9925));
        self->noDecimalCos[188] = ((int64_t) (-9902));
        self->noDecimalCos[189] = ((int64_t) (-9876));
        self->noDecimalCos[190] = ((int64_t) (-9848));
        self->noDecimalCos[191] = ((int64_t) (-9816));
        self->noDecimalCos[192] = ((int64_t) (-9781));
        self->noDecimalCos[193] = ((int64_t) (-9743));
        self->noDecimalCos[194] = ((int64_t) (-9702));
        self->noDecimalCos[195] = ((int64_t) (-9659));
        self->noDecimalCos[196] = ((int64_t) (-9612));
        self->noDecimalCos[197] = ((int64_t) (-9563));
        self->noDecimalCos[198] = ((int64_t) (-9510));
        self->noDecimalCos[199] = ((int64_t) (-9455));
        self->noDecimalCos[200] = ((int64_t) (-9396));
        self->noDecimalCos[201] = ((int64_t) (-9335));
        self->noDecimalCos[202] = ((int64_t) (-9271));
        self->noDecimalCos[203] = ((int64_t) (-9205));
        self->noDecimalCos[204] = ((int64_t) (-9135));
        self->noDecimalCos[205] = ((int64_t) (-9063));
        self->noDecimalCos[206] = ((int64_t) (-8987));
        self->noDecimalCos[207] = ((int64_t) (-8910));
        self->noDecimalCos[208] = ((int64_t) (-8829));
        self->noDecimalCos[209] = ((int64_t) (-8746));
        self->noDecimalCos[210] = ((int64_t) (-8660));
        self->noDecimalCos[211] = ((int64_t) (-8571));
        self->noDecimalCos[212] = ((int64_t) (-8480));
        self->noDecimalCos[213] = ((int64_t) (-8386));
        self->noDecimalCos[214] = ((int64_t) (-8290));
        self->noDecimalCos[215] = ((int64_t) (-8191));
        self->noDecimalCos[216] = ((int64_t) (-8090));
        self->noDecimalCos[217] = ((int64_t) (-7986));
        self->noDecimalCos[218] = ((int64_t) (-7880));
        self->noDecimalCos[219] = ((int64_t) (-7771));
        self->noDecimalCos[220] = ((int64_t) (-7660));
        self->noDecimalCos[221] = ((int64_t) (-7547));
        self->noDecimalCos[222] = ((int64_t) (-7431));
        self->noDecimalCos[223] = ((int64_t) (-7313));
        self->noDecimalCos[224] = ((int64_t) (-7193));
        self->noDecimalCos[225] = ((int64_t) (-7071));
        self->noDecimalCos[226] = ((int64_t) (-6946));
        self->noDecimalCos[227] = ((int64_t) (-6819));
        self->noDecimalCos[228] = ((int64_t) (-6691));
        self->noDecimalCos[229] = ((int64_t) (-6560));
        self->noDecimalCos[230] = ((int64_t) (-6427));
        self->noDecimalCos[231] = ((int64_t) (-6293));
        self->noDecimalCos[232] = ((int64_t) (-6156));
        self->noDecimalCos[233] = ((int64_t) (-6018));
        self->noDecimalCos[234] = ((int64_t) (-5877));
        self->noDecimalCos[235] = ((int64_t) (-5735));
        self->noDecimalCos[236] = ((int64_t) (-5591));
        self->noDecimalCos[237] = ((int64_t) (-5446));
        self->noDecimalCos[238] = ((int64_t) (-5299));
        self->noDecimalCos[239] = ((int64_t) (-5150));
        self->noDecimalCos[240] = ((int64_t) (-5000));
        self->noDecimalCos[241] = ((int64_t) (-4848));
        self->noDecimalCos[242] = ((int64_t) (-4694));
        self->noDecimalCos[243] = ((int64_t) (-4539));
        self->noDecimalCos[244] = ((int64_t) (-4383));
        self->noDecimalCos[245] = ((int64_t) (-4226));
        self->noDecimalCos[246] = ((int64_t) (-4067));
        self->noDecimalCos[247] = ((int64_t) (-3907));
        self->noDecimalCos[248] = ((int64_t) (-3746));
        self->noDecimalCos[249] = ((int64_t) (-3583));
        self->noDecimalCos[250] = ((int64_t) (-3420));
        self->noDecimalCos[251] = ((int64_t) (-3255));
        self->noDecimalCos[252] = ((int64_t) (-3090));
        self->noDecimalCos[253] = ((int64_t) (-2923));
        self->noDecimalCos[254] = ((int64_t) (-2756));
        self->noDecimalCos[255] = ((int64_t) (-2588));
        self->noDecimalCos[256] = ((int64_t) (-2419));
        self->noDecimalCos[257] = ((int64_t) (-2249));
        self->noDecimalCos[258] = ((int64_t) (-2079));
        self->noDecimalCos[259] = ((int64_t) (-1908));
        self->noDecimalCos[260] = ((int64_t) (-1736));
        self->noDecimalCos[261] = ((int64_t) (-1564));
        self->noDecimalCos[262] = ((int64_t) (-1391));
        self->noDecimalCos[263] = ((int64_t) (-1218));
        self->noDecimalCos[264] = ((int64_t) (-1045));
        self->noDecimalCos[265] = ((int64_t) (-871));
        self->noDecimalCos[266] = ((int64_t) (-697));
        self->noDecimalCos[267] = ((int64_t) (-523));
        self->noDecimalCos[268] = ((int64_t) (-348));
        self->noDecimalCos[269] = ((int64_t) (-174));
        self->noDecimalCos[270] = 0LL;
        self->noDecimalCos[271] = 174LL;
        self->noDecimalCos[272] = 348LL;
        self->noDecimalCos[273] = 523LL;
        self->noDecimalCos[274] = 697LL;
        self->noDecimalCos[275] = 871LL;
        self->noDecimalCos[276] = 1045LL;
        self->noDecimalCos[277] = 1218LL;
        self->noDecimalCos[278] = 1391LL;
        self->noDecimalCos[279] = 1564LL;
        self->noDecimalCos[280] = 1736LL;
        self->noDecimalCos[281] = 1908LL;
        self->noDecimalCos[282] = 2079LL;
        self->noDecimalCos[283] = 2249LL;
        self->noDecimalCos[284] = 2419LL;
        self->noDecimalCos[285] = 2588LL;
        self->noDecimalCos[286] = 2756LL;
        self->noDecimalCos[287] = 2923LL;
        self->noDecimalCos[288] = 3090LL;
        self->noDecimalCos[289] = 3255LL;
        self->noDecimalCos[290] = 3420LL;
        self->noDecimalCos[291] = 3583LL;
        self->noDecimalCos[292] = 3746LL;
        self->noDecimalCos[293] = 3907LL;
        self->noDecimalCos[294] = 4067LL;
        self->noDecimalCos[295] = 4226LL;
        self->noDecimalCos[296] = 4383LL;
        self->noDecimalCos[297] = 4539LL;
        self->noDecimalCos[298] = 4694LL;
        self->noDecimalCos[299] = 4848LL;
        self->noDecimalCos[300] = 5000LL;
        self->noDecimalCos[301] = 5150LL;
        self->noDecimalCos[302] = 5299LL;
        self->noDecimalCos[303] = 5446LL;
        self->noDecimalCos[304] = 5591LL;
        self->noDecimalCos[305] = 5735LL;
        self->noDecimalCos[306] = 5877LL;
        self->noDecimalCos[307] = 6018LL;
        self->noDecimalCos[308] = 6156LL;
        self->noDecimalCos[309] = 6293LL;
        self->noDecimalCos[310] = 6427LL;
        self->noDecimalCos[311] = 6560LL;
        self->noDecimalCos[312] = 6691LL;
        self->noDecimalCos[313] = 6819LL;
        self->noDecimalCos[314] = 6946LL;
        self->noDecimalCos[315] = 7071LL;
        self->noDecimalCos[316] = 7193LL;
        self->noDecimalCos[317] = 7313LL;
        self->noDecimalCos[318] = 7431LL;
        self->noDecimalCos[319] = 7547LL;
        self->noDecimalCos[320] = 7660LL;
        self->noDecimalCos[321] = 7771LL;
        self->noDecimalCos[322] = 7880LL;
        self->noDecimalCos[323] = 7986LL;
        self->noDecimalCos[324] = 8090LL;
        self->noDecimalCos[325] = 8191LL;
        self->noDecimalCos[326] = 8290LL;
        self->noDecimalCos[327] = 8386LL;
        self->noDecimalCos[328] = 8480LL;
        self->noDecimalCos[329] = 8571LL;
        self->noDecimalCos[330] = 8660LL;
        self->noDecimalCos[331] = 8746LL;
        self->noDecimalCos[332] = 8829LL;
        self->noDecimalCos[333] = 8910LL;
        self->noDecimalCos[334] = 8987LL;
        self->noDecimalCos[335] = 9063LL;
        self->noDecimalCos[336] = 9135LL;
        self->noDecimalCos[337] = 9205LL;
        self->noDecimalCos[338] = 9271LL;
        self->noDecimalCos[339] = 9335LL;
        self->noDecimalCos[340] = 9396LL;
        self->noDecimalCos[341] = 9455LL;
        self->noDecimalCos[342] = 9510LL;
        self->noDecimalCos[343] = 9563LL;
        self->noDecimalCos[344] = 9612LL;
        self->noDecimalCos[345] = 9659LL;
        self->noDecimalCos[346] = 9702LL;
        self->noDecimalCos[347] = 9743LL;
        self->noDecimalCos[348] = 9781LL;
        self->noDecimalCos[349] = 9816LL;
        self->noDecimalCos[350] = 9848LL;
        self->noDecimalCos[351] = 9876LL;
        self->noDecimalCos[352] = 9902LL;
        self->noDecimalCos[353] = 9925LL;
        self->noDecimalCos[354] = 9945LL;
        self->noDecimalCos[355] = 9961LL;
        self->noDecimalCos[356] = 9975LL;
        self->noDecimalCos[357] = 9986LL;
        self->noDecimalCos[358] = 9993LL;
        self->noDecimalCos[359] = 9998LL;
        self->noDecimalTan[0] = 0LL;
        self->noDecimalTan[1] = 174LL;
        self->noDecimalTan[2] = 349LL;
        self->noDecimalTan[3] = 524LL;
        self->noDecimalTan[4] = 699LL;
        self->noDecimalTan[5] = 874LL;
        self->noDecimalTan[6] = 1051LL;
        self->noDecimalTan[7] = 1227LL;
        self->noDecimalTan[8] = 1405LL;
        self->noDecimalTan[9] = 1583LL;
        self->noDecimalTan[10] = 1763LL;
        self->noDecimalTan[11] = 1943LL;
        self->noDecimalTan[12] = 2125LL;
        self->noDecimalTan[13] = 2308LL;
        self->noDecimalTan[14] = 2493LL;
        self->noDecimalTan[15] = 2679LL;
        self->noDecimalTan[16] = 2867LL;
        self->noDecimalTan[17] = 3057LL;
        self->noDecimalTan[18] = 3249LL;
        self->noDecimalTan[19] = 3443LL;
        self->noDecimalTan[20] = 3639LL;
        self->noDecimalTan[21] = 3838LL;
        self->noDecimalTan[22] = 4040LL;
        self->noDecimalTan[23] = 4244LL;
        self->noDecimalTan[24] = 4452LL;
        self->noDecimalTan[25] = 4663LL;
        self->noDecimalTan[26] = 4877LL;
        self->noDecimalTan[27] = 5095LL;
        self->noDecimalTan[28] = 5317LL;
        self->noDecimalTan[29] = 5543LL;
        self->noDecimalTan[30] = 5773LL;
        self->noDecimalTan[31] = 6008LL;
        self->noDecimalTan[32] = 6248LL;
        self->noDecimalTan[33] = 6494LL;
        self->noDecimalTan[34] = 6745LL;
        self->noDecimalTan[35] = 7002LL;
        self->noDecimalTan[36] = 7265LL;
        self->noDecimalTan[37] = 7535LL;
        self->noDecimalTan[38] = 7812LL;
        self->noDecimalTan[39] = 8097LL;
        self->noDecimalTan[40] = 8390LL;
        self->noDecimalTan[41] = 8692LL;
        self->noDecimalTan[42] = 9004LL;
        self->noDecimalTan[43] = 9325LL;
        self->noDecimalTan[44] = 9656LL;
        self->noDecimalTan[45] = 9999LL;
        self->noDecimalTan[46] = 10355LL;
        self->noDecimalTan[47] = 10723LL;
        self->noDecimalTan[48] = 11106LL;
        self->noDecimalTan[49] = 11503LL;
        self->noDecimalTan[50] = 11917LL;
        self->noDecimalTan[51] = 12348LL;
        self->noDecimalTan[52] = 12799LL;
        self->noDecimalTan[53] = 13270LL;
        self->noDecimalTan[54] = 13763LL;
        self->noDecimalTan[55] = 14281LL;
        self->noDecimalTan[56] = 14825LL;
        self->noDecimalTan[57] = 15398LL;
        self->noDecimalTan[58] = 16003LL;
        self->noDecimalTan[59] = 16642LL;
        self->noDecimalTan[60] = 17320LL;
        self->noDecimalTan[61] = 18040LL;
        self->noDecimalTan[62] = 18807LL;
        self->noDecimalTan[63] = 19626LL;
        self->noDecimalTan[64] = 20503LL;
        self->noDecimalTan[65] = 21445LL;
        self->noDecimalTan[66] = 22460LL;
        self->noDecimalTan[67] = 23558LL;
        self->noDecimalTan[68] = 24750LL;
        self->noDecimalTan[69] = 26050LL;
        self->noDecimalTan[70] = 27474LL;
        self->noDecimalTan[71] = 29042LL;
        self->noDecimalTan[72] = 30776LL;
        self->noDecimalTan[73] = 32708LL;
        self->noDecimalTan[74] = 34874LL;
        self->noDecimalTan[75] = 37320LL;
        self->noDecimalTan[76] = 40107LL;
        self->noDecimalTan[77] = 43314LL;
        self->noDecimalTan[78] = 47046LL;
        self->noDecimalTan[79] = 51445LL;
        self->noDecimalTan[80] = 56712LL;
        self->noDecimalTan[81] = 63137LL;
        self->noDecimalTan[82] = 71153LL;
        self->noDecimalTan[83] = 81443LL;
        self->noDecimalTan[84] = 95143LL;
        self->noDecimalTan[85] = 114300LL;
        self->noDecimalTan[86] = 143006LL;
        self->noDecimalTan[87] = 190811LL;
        self->noDecimalTan[88] = 286362LL;
        self->noDecimalTan[89] = 572899LL;
        self->noDecimalTan[90] = MAX_VALUE;
        self->noDecimalTan[91] = ((int64_t) (-572899));
        self->noDecimalTan[92] = ((int64_t) (-286362));
        self->noDecimalTan[93] = ((int64_t) (-190811));
        self->noDecimalTan[94] = ((int64_t) (-143006));
        self->noDecimalTan[95] = ((int64_t) (-114300));
        self->noDecimalTan[96] = ((int64_t) (-95143));
        self->noDecimalTan[97] = ((int64_t) (-81443));
        self->noDecimalTan[98] = ((int64_t) (-71153));
        self->noDecimalTan[99] = ((int64_t) (-63137));
        self->noDecimalTan[100] = ((int64_t) (-56712));
        self->noDecimalTan[101] = ((int64_t) (-51445));
        self->noDecimalTan[102] = ((int64_t) (-47046));
        self->noDecimalTan[103] = ((int64_t) (-43314));
        self->noDecimalTan[104] = ((int64_t) (-40107));
        self->noDecimalTan[105] = ((int64_t) (-37320));
        self->noDecimalTan[106] = ((int64_t) (-34874));
        self->noDecimalTan[107] = ((int64_t) (-32708));
        self->noDecimalTan[108] = ((int64_t) (-30776));
        self->noDecimalTan[109] = ((int64_t) (-29042));
        self->noDecimalTan[110] = ((int64_t) (-27474));
        self->noDecimalTan[111] = ((int64_t) (-26050));
        self->noDecimalTan[112] = ((int64_t) (-24750));
        self->noDecimalTan[113] = ((int64_t) (-23558));
        self->noDecimalTan[114] = ((int64_t) (-22460));
        self->noDecimalTan[115] = ((int64_t) (-21445));
        self->noDecimalTan[116] = ((int64_t) (-20503));
        self->noDecimalTan[117] = ((int64_t) (-19626));
        self->noDecimalTan[118] = ((int64_t) (-18807));
        self->noDecimalTan[119] = ((int64_t) (-18040));
        self->noDecimalTan[120] = ((int64_t) (-17320));
        self->noDecimalTan[121] = ((int64_t) (-16642));
        self->noDecimalTan[122] = ((int64_t) (-16003));
        self->noDecimalTan[123] = ((int64_t) (-15398));
        self->noDecimalTan[124] = ((int64_t) (-14825));
        self->noDecimalTan[125] = ((int64_t) (-14281));
        self->noDecimalTan[126] = ((int64_t) (-13763));
        self->noDecimalTan[127] = ((int64_t) (-13270));
        self->noDecimalTan[128] = ((int64_t) (-12799));
        self->noDecimalTan[129] = ((int64_t) (-12348));
        self->noDecimalTan[130] = ((int64_t) (-11917));
        self->noDecimalTan[131] = ((int64_t) (-11503));
        self->noDecimalTan[132] = ((int64_t) (-11106));
        self->noDecimalTan[133] = ((int64_t) (-10723));
        self->noDecimalTan[134] = ((int64_t) (-10355));
        self->noDecimalTan[135] = ((int64_t) (-10000));
        self->noDecimalTan[136] = ((int64_t) (-9656));
        self->noDecimalTan[137] = ((int64_t) (-9325));
        self->noDecimalTan[138] = ((int64_t) (-9004));
        self->noDecimalTan[139] = ((int64_t) (-8692));
        self->noDecimalTan[140] = ((int64_t) (-8390));
        self->noDecimalTan[141] = ((int64_t) (-8097));
        self->noDecimalTan[142] = ((int64_t) (-7812));
        self->noDecimalTan[143] = ((int64_t) (-7535));
        self->noDecimalTan[144] = ((int64_t) (-7265));
        self->noDecimalTan[145] = ((int64_t) (-7002));
        self->noDecimalTan[146] = ((int64_t) (-6745));
        self->noDecimalTan[147] = ((int64_t) (-6494));
        self->noDecimalTan[148] = ((int64_t) (-6248));
        self->noDecimalTan[149] = ((int64_t) (-6008));
        self->noDecimalTan[150] = ((int64_t) (-5773));
        self->noDecimalTan[151] = ((int64_t) (-5543));
        self->noDecimalTan[152] = ((int64_t) (-5317));
        self->noDecimalTan[153] = ((int64_t) (-5095));
        self->noDecimalTan[154] = ((int64_t) (-4877));
        self->noDecimalTan[155] = ((int64_t) (-4663));
        self->noDecimalTan[156] = ((int64_t) (-4452));
        self->noDecimalTan[157] = ((int64_t) (-4244));
        self->noDecimalTan[158] = ((int64_t) (-4040));
        self->noDecimalTan[159] = ((int64_t) (-3838));
        self->noDecimalTan[160] = ((int64_t) (-3639));
        self->noDecimalTan[161] = ((int64_t) (-3443));
        self->noDecimalTan[162] = ((int64_t) (-3249));
        self->noDecimalTan[163] = ((int64_t) (-3057));
        self->noDecimalTan[164] = ((int64_t) (-2867));
        self->noDecimalTan[165] = ((int64_t) (-2679));
        self->noDecimalTan[166] = ((int64_t) (-2493));
        self->noDecimalTan[167] = ((int64_t) (-2308));
        self->noDecimalTan[168] = ((int64_t) (-2125));
        self->noDecimalTan[169] = ((int64_t) (-1943));
        self->noDecimalTan[170] = ((int64_t) (-1763));
        self->noDecimalTan[171] = ((int64_t) (-1583));
        self->noDecimalTan[172] = ((int64_t) (-1405));
        self->noDecimalTan[173] = ((int64_t) (-1227));
        self->noDecimalTan[174] = ((int64_t) (-1051));
        self->noDecimalTan[175] = ((int64_t) (-874));
        self->noDecimalTan[176] = ((int64_t) (-699));
        self->noDecimalTan[177] = ((int64_t) (-524));
        self->noDecimalTan[178] = ((int64_t) (-349));
        self->noDecimalTan[179] = ((int64_t) (-174));
        self->noDecimalTan[180] = 0LL;
        self->noDecimalTan[181] = 174LL;
        self->noDecimalTan[182] = 349LL;
        self->noDecimalTan[183] = 524LL;
        self->noDecimalTan[184] = 699LL;
        self->noDecimalTan[185] = 874LL;
        self->noDecimalTan[186] = 1051LL;
        self->noDecimalTan[187] = 1227LL;
        self->noDecimalTan[188] = 1405LL;
        self->noDecimalTan[189] = 1583LL;
        self->noDecimalTan[190] = 1763LL;
        self->noDecimalTan[191] = 1943LL;
        self->noDecimalTan[192] = 2125LL;
        self->noDecimalTan[193] = 2308LL;
        self->noDecimalTan[194] = 2493LL;
        self->noDecimalTan[195] = 2679LL;
        self->noDecimalTan[196] = 2867LL;
        self->noDecimalTan[197] = 3057LL;
        self->noDecimalTan[198] = 3249LL;
        self->noDecimalTan[199] = 3443LL;
        self->noDecimalTan[200] = 3639LL;
        self->noDecimalTan[201] = 3838LL;
        self->noDecimalTan[202] = 4040LL;
        self->noDecimalTan[203] = 4244LL;
        self->noDecimalTan[204] = 4452LL;
        self->noDecimalTan[205] = 4663LL;
        self->noDecimalTan[206] = 4877LL;
        self->noDecimalTan[207] = 5095LL;
        self->noDecimalTan[208] = 5317LL;
        self->noDecimalTan[209] = 5543LL;
        self->noDecimalTan[210] = 5773LL;
        self->noDecimalTan[211] = 6008LL;
        self->noDecimalTan[212] = 6248LL;
        self->noDecimalTan[213] = 6494LL;
        self->noDecimalTan[214] = 6745LL;
        self->noDecimalTan[215] = 7002LL;
        self->noDecimalTan[216] = 7265LL;
        self->noDecimalTan[217] = 7535LL;
        self->noDecimalTan[218] = 7812LL;
        self->noDecimalTan[219] = 8097LL;
        self->noDecimalTan[220] = 8390LL;
        self->noDecimalTan[221] = 8692LL;
        self->noDecimalTan[222] = 9004LL;
        self->noDecimalTan[223] = 9325LL;
        self->noDecimalTan[224] = 9656LL;
        self->noDecimalTan[225] = 9999LL;
        self->noDecimalTan[226] = 10355LL;
        self->noDecimalTan[227] = 10723LL;
        self->noDecimalTan[228] = 11106LL;
        self->noDecimalTan[229] = 11503LL;
        self->noDecimalTan[230] = 11917LL;
        self->noDecimalTan[231] = 12348LL;
        self->noDecimalTan[232] = 12799LL;
        self->noDecimalTan[233] = 13270LL;
        self->noDecimalTan[234] = 13763LL;
        self->noDecimalTan[235] = 14281LL;
        self->noDecimalTan[236] = 14825LL;
        self->noDecimalTan[237] = 15398LL;
        self->noDecimalTan[238] = 16003LL;
        self->noDecimalTan[239] = 16642LL;
        self->noDecimalTan[240] = 17320LL;
        self->noDecimalTan[241] = 18040LL;
        self->noDecimalTan[242] = 18807LL;
        self->noDecimalTan[243] = 19626LL;
        self->noDecimalTan[244] = 20503LL;
        self->noDecimalTan[245] = 21445LL;
        self->noDecimalTan[246] = 22460LL;
        self->noDecimalTan[247] = 23558LL;
        self->noDecimalTan[248] = 24750LL;
        self->noDecimalTan[249] = 26050LL;
        self->noDecimalTan[250] = 27474LL;
        self->noDecimalTan[251] = 29042LL;
        self->noDecimalTan[252] = 30776LL;
        self->noDecimalTan[253] = 32708LL;
        self->noDecimalTan[254] = 34874LL;
        self->noDecimalTan[255] = 37320LL;
        self->noDecimalTan[256] = 40107LL;
        self->noDecimalTan[257] = 43314LL;
        self->noDecimalTan[258] = 47046LL;
        self->noDecimalTan[259] = 51445LL;
        self->noDecimalTan[260] = 56712LL;
        self->noDecimalTan[261] = 63137LL;
        self->noDecimalTan[262] = 71153LL;
        self->noDecimalTan[263] = 81443LL;
        self->noDecimalTan[264] = 95143LL;
        self->noDecimalTan[265] = 114300LL;
        self->noDecimalTan[266] = 143006LL;
        self->noDecimalTan[267] = 190811LL;
        self->noDecimalTan[268] = 286362LL;
        self->noDecimalTan[269] = 572899LL;
        self->noDecimalTan[270] = MAX_VALUE;
        self->noDecimalTan[271] = ((int64_t) (-572899));
        self->noDecimalTan[272] = ((int64_t) (-286362));
        self->noDecimalTan[273] = ((int64_t) (-190811));
        self->noDecimalTan[274] = ((int64_t) (-143006));
        self->noDecimalTan[275] = ((int64_t) (-114300));
        self->noDecimalTan[276] = ((int64_t) (-95143));
        self->noDecimalTan[277] = ((int64_t) (-81443));
        self->noDecimalTan[278] = ((int64_t) (-71153));
        self->noDecimalTan[279] = ((int64_t) (-63137));
        self->noDecimalTan[280] = ((int64_t) (-56712));
        self->noDecimalTan[281] = ((int64_t) (-51445));
        self->noDecimalTan[282] = ((int64_t) (-47046));
        self->noDecimalTan[283] = ((int64_t) (-43314));
        self->noDecimalTan[284] = ((int64_t) (-40107));
        self->noDecimalTan[285] = ((int64_t) (-37320));
        self->noDecimalTan[286] = ((int64_t) (-34874));
        self->noDecimalTan[287] = ((int64_t) (-32708));
        self->noDecimalTan[288] = ((int64_t) (-30776));
        self->noDecimalTan[289] = ((int64_t) (-29042));
        self->noDecimalTan[290] = ((int64_t) (-27474));
        self->noDecimalTan[291] = ((int64_t) (-26050));
        self->noDecimalTan[292] = ((int64_t) (-24750));
        self->noDecimalTan[293] = ((int64_t) (-23558));
        self->noDecimalTan[294] = ((int64_t) (-22460));
        self->noDecimalTan[295] = ((int64_t) (-21445));
        self->noDecimalTan[296] = ((int64_t) (-20503));
        self->noDecimalTan[297] = ((int64_t) (-19626));
        self->noDecimalTan[298] = ((int64_t) (-18807));
        self->noDecimalTan[299] = ((int64_t) (-18040));
        self->noDecimalTan[300] = ((int64_t) (-17320));
        self->noDecimalTan[301] = ((int64_t) (-16642));
        self->noDecimalTan[302] = ((int64_t) (-16003));
        self->noDecimalTan[303] = ((int64_t) (-15398));
        self->noDecimalTan[304] = ((int64_t) (-14825));
        self->noDecimalTan[305] = ((int64_t) (-14281));
        self->noDecimalTan[306] = ((int64_t) (-13763));
        self->noDecimalTan[307] = ((int64_t) (-13270));
        self->noDecimalTan[308] = ((int64_t) (-12799));
        self->noDecimalTan[309] = ((int64_t) (-12348));
        self->noDecimalTan[310] = ((int64_t) (-11917));
        self->noDecimalTan[311] = ((int64_t) (-11503));
        self->noDecimalTan[312] = ((int64_t) (-11106));
        self->noDecimalTan[313] = ((int64_t) (-10723));
        self->noDecimalTan[314] = ((int64_t) (-10355));
        self->noDecimalTan[315] = ((int64_t) (-10000));
        self->noDecimalTan[316] = ((int64_t) (-9656));
        self->noDecimalTan[317] = ((int64_t) (-9325));
        self->noDecimalTan[318] = ((int64_t) (-9004));
        self->noDecimalTan[319] = ((int64_t) (-8692));
        self->noDecimalTan[320] = ((int64_t) (-8390));
        self->noDecimalTan[321] = ((int64_t) (-8097));
        self->noDecimalTan[322] = ((int64_t) (-7812));
        self->noDecimalTan[323] = ((int64_t) (-7535));
        self->noDecimalTan[324] = ((int64_t) (-7265));
        self->noDecimalTan[325] = ((int64_t) (-7002));
        self->noDecimalTan[326] = ((int64_t) (-6745));
        self->noDecimalTan[327] = ((int64_t) (-6494));
        self->noDecimalTan[328] = ((int64_t) (-6248));
        self->noDecimalTan[329] = ((int64_t) (-6008));
        self->noDecimalTan[330] = ((int64_t) (-5773));
        self->noDecimalTan[331] = ((int64_t) (-5543));
        self->noDecimalTan[332] = ((int64_t) (-5317));
        self->noDecimalTan[333] = ((int64_t) (-5095));
        self->noDecimalTan[334] = ((int64_t) (-4877));
        self->noDecimalTan[335] = ((int64_t) (-4663));
        self->noDecimalTan[336] = ((int64_t) (-4452));
        self->noDecimalTan[337] = ((int64_t) (-4244));
        self->noDecimalTan[338] = ((int64_t) (-4040));
        self->noDecimalTan[339] = ((int64_t) (-3838));
        self->noDecimalTan[340] = ((int64_t) (-3639));
        self->noDecimalTan[341] = ((int64_t) (-3443));
        self->noDecimalTan[342] = ((int64_t) (-3249));
        self->noDecimalTan[343] = ((int64_t) (-3057));
        self->noDecimalTan[344] = ((int64_t) (-2867));
        self->noDecimalTan[345] = ((int64_t) (-2679));
        self->noDecimalTan[346] = ((int64_t) (-2493));
        self->noDecimalTan[347] = ((int64_t) (-2308));
        self->noDecimalTan[348] = ((int64_t) (-2125));
        self->noDecimalTan[349] = ((int64_t) (-1943));
        self->noDecimalTan[350] = ((int64_t) (-1763));
        self->noDecimalTan[351] = ((int64_t) (-1583));
        self->noDecimalTan[352] = ((int64_t) (-1405));
        self->noDecimalTan[353] = ((int64_t) (-1227));
        self->noDecimalTan[354] = ((int64_t) (-1051));
        self->noDecimalTan[355] = ((int64_t) (-874));
        self->noDecimalTan[356] = ((int64_t) (-699));
        self->noDecimalTan[357] = ((int64_t) (-524));
        self->noDecimalTan[358] = ((int64_t) (-349));
        self->noDecimalTan[359] = ((int64_t) (-174));
        self->noDecimalTan[0] = ((int64_t) (-174));
    return self;
}


- (int64_t) sin:(int32_t)angle {
        return self->noDecimalSin[angle];
}


- (int64_t) cos:(int32_t)angle {
        return self->noDecimalCos[angle];
}


- (int64_t) tan:(int32_t)angle {
        return self->noDecimalTan[angle];
}


// throws Exception
- (int16_t) antiTan:(int32_t)dx :(int32_t)dy {
        int64_t MAX_VALUE = (((int64_t) (Integer_staticInit(), Integer_MAX_VALUE)));
        int64_t MIN_VALUE = (((int64_t) (Integer_staticInit(), Integer_MIN_VALUE)));
        int64_t ratio = (MAX_VALUE - 1LL);
        if (dy != 0) {
            int64_t dxl = (((int64_t) dx));
            ratio = ((int64_t) self->SCALE) * dxl / ((int64_t) dy);
            if (dx <= 0 && dy < 0) {
                ratio = [self->mathUtil abslong:ratio];
            }
        }
        if ((dx >= 0 && dy < 0)) {
            for (int32_t index = 180; index > 90; index--) {
                if (ratio <= self->noDecimalTan[index]) {
                    if (ratio > self->noDecimalTan[index - 1]) {
                        return (((int16_t) index));
                    } else if (self->noDecimalTan[index - 1] == MAX_VALUE && ratio > MIN_VALUE) {
                        return (((int16_t) index));
                    }
                }
            }
        } else if ((dx < 0 && dy <= 0)) {
            for (int32_t index = 270; index > 180; index--) {
                if (ratio < self->noDecimalTan[index] && ratio >= self->noDecimalTan[index - 1]) {
                    return (((int16_t) index));
                }
            }
        } else if ((dx < 0 && dy > 0)) {
            for (int32_t index = (java_array_length(self->noDecimalTan) - 1); index > 270; index--) {
                if (ratio < self->noDecimalTan[index]) {
                    if (ratio >= self->noDecimalTan[index - 1]) {
                        return (((int16_t) index));
                    } else if (self->noDecimalTan[index - 1] == MAX_VALUE && ratio >= MIN_VALUE) {
                        return (((int16_t) index));
                    }
                }
            }
        } else if ((dx >= 0 && dy >= 0)) {
            for (int32_t index = 90; index > 0; index--) {
                if (ratio < self->noDecimalTan[index] && ratio >= self->noDecimalTan[index - 1]) {
                    return (((int16_t) index));
                }
            }
        }
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"Invalid Ratio: "];
        [stringBuffer appendlong:ratio];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:[PositionStrings getInstance]->DX_LABEL];
        [stringBuffer appendint:dx];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:[PositionStrings getInstance]->DX_LABEL];
        [stringBuffer appendint:dy];
        java_throw(java_exception_new("Exception", [stringBuffer toString]));
}


// throws Exception
- (int16_t) antiTanDebug:(int32_t)screenX :(int32_t)screenY :(int32_t)targetX :(int32_t)targetY {
        const char* METHOD_NAME = "antiTanDebug";
        const char* TARGET_ANGLE = " Targeting angle: ";
        StringMaker* stringMaker = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [PreLogUtil put:[[[[[[[[[stringMaker append:"screenX: "] appendint:screenX] append:" screenY: "] appendint:screenY] append:" targetX: "] appendint:targetX] append:" targetY: "] appendint:targetY] toString] :self :METHOD_NAME];
        int32_t targetX2 = -targetX;
        int32_t targetY2 = -targetY;
        int32_t screenX2 = -screenX;
        int32_t screenY2 = -screenY;
        int32_t* dx = ((int32_t*) java_array_new(sizeof(int32_t), 4));
        dx[0] = (screenX - targetX);
        dx[1] = (screenX - targetX2);
        dx[2] = (screenX2 - targetX);
        dx[3] = (screenX2 - targetX2);
        int32_t* dy = ((int32_t*) java_array_new(sizeof(int32_t), 4));
        dy[0] = (screenY - targetY);
        dy[1] = (screenY - targetY2);
        dy[2] = (screenY2 - targetY);
        dy[3] = (screenY2 - targetY2);
        int16_t angleOfTarget = 0;
        AngleFactory* angleFactory = [AngleFactory getInstance];
        Angle* angle = nullptr;
        for (int32_t index = 0; index < java_array_length(dx); index++) {
            for (int32_t index2 = 0; index2 < java_array_length(dy); index2++) {
                angleOfTarget = [self antiTan:dx[index] :dy[index2]];
                angle = [angleFactory getAt:((int32_t) angleOfTarget)];
                [stringMaker delete:0 :[stringMaker length]];
                [PreLogUtil put:[[[[[[[[[[[[[stringMaker append:[CommonLabels getInstance]->INDEX_LABEL] appendint:index] append:" index2: "] appendint:index2] append:[PositionStrings getInstance]->DX_LABEL] appendint:dx[index]] append:[PositionStrings getInstance]->DY_LABEL] appendint:dy[index2]] append:TARGET_ANGLE] appendshort:angleOfTarget] append:[CommonSeps getInstance]->EQUALS] appendshort:[angle getValue]] toString] :self :METHOD_NAME];
            }
        }
        angleOfTarget = [self antiTan:dx[0] :dy[0]];
        return angleOfTarget;
}

@end

