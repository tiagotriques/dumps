#pragma author Tiago Esperança Triques
#pragma description MIFARE 1K cards (4 byte UID)

// Colors stolen from Mifare Classic Tool
str lightGreen = "66FF66";
str darkGreen = "338800";
str purple = "9933FF";
str orange = "FF6600";
str gray = "222222";

// Structs stolen from 010 editor pattern
struct MANUFACTURER_BLOCK {
    u32 UID [[color(purple)]]; 
    u8 LRC;
    u8 Internal[11];
    u8 Data[32] [[color(gray)]];
    u48 Key_A [[color(lightGreen)]];
    u24 Access_Bits [[color(orange)]];
    u8 GPB [[colors(gray)]];
    u48 Key_B [[color(darkGreen)]];
};

struct OTHER_BLOCK {
    u8 Data[48] [[color(gray)]];
    u48 Key_A [[color(lightGreen)]];
    u24 Access_Bits [[color(orange)]];
    u8 GPB [[color(gray)]];
    u48 Key_B [[color(darkGreen)]];
};

struct MIFARE_1K {
    MANUFACTURER_BLOCK manufacturer_block;
    OTHER_BLOCK other_blocks[15];
};

MIFARE_1K card @ 0x0;
