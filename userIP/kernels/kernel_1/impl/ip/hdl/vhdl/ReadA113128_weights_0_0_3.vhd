-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA113128_weights_0_0_3_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 10; 
             MEM_SIZE    : integer := 768
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of ReadA113128_weights_0_0_3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11101100000001110010000011111100", 
    1 => "00010100010011001110011011111001", 
    2 => "00011110001000000000110111100111", 
    3 => "00001010111011111110101111111110", 
    4 => "11110111111101000000000011110110", 
    5 => "11110111111101101110000000010000", 
    6 => "11100000111010100000100011101101", 
    7 => "00100000111101000000011000000111", 
    8 => "01100000110010101111100011111111", 
    9 => "00111010000111000000111111011110", 
    10 => "00010111111101111110110100100000", 
    11 => "11111010111110101101111100000000", 
    12 => "01001101000010110001010010101111", 
    13 => "11011111011000000000111100010011", 
    14 => "00001100000010101110001100011011", 
    15 => "00110010110001011011010100111010", 
    16 => "11111110110011101110101011101000", 
    17 => "00001100000000011101010000001110", 
    18 => "00100100000010000001110000111101", 
    19 => "00000000111000110010010100011001", 
    20 => "00001000000110110001001111001010", 
    21 => "11110101111011101101010000011010", 
    22 => "00000011001100110001010100000110", 
    23 => "11110101111110101110001011101100", 
    24 => "00010001000010010000001000010011", 
    25 => "11111110111100100000100011101110", 
    26 => "11111000111101001100110011010010", 
    27 => "00011011111011101111101011101011", 
    28 => "11100000000011101101001011111111", 
    29 => "00000011001011011111110100000010", 
    30 => "11111000111101011111101100101011", 
    31 => "00010001000011110001101011111000", 
    32 => "00010000111100101110011100000010", 
    33 => "11001010110110011100101100011000", 
    34 => "11011010111001011101110000100001", 
    35 => "11011011000010100001101000010010", 
    36 => "00000001111101000000001111101001", 
    37 => "00101011111110100010101000010101", 
    38 => "00010001110011001111111100000011", 
    39 => "11101111111101111111010100100000", 
    40 => "00001000111111111101010001001011", 
    41 => "11101111001100001111000000011011", 
    42 => "00011011111111000001101111010000", 
    43 => "11001000000001101110100000101001", 
    44 => "11111001000001001111100111011101", 
    45 => "00000000111011000001111100011110", 
    46 => "00000000001010101110001111111010", 
    47 => "00110101000011100001011011111000", 
    48 => "11110000010010100000100111100010", 
    49 => "11110111110101011111001000011110", 
    50 => "00110000111011101111111011110010", 
    51 => "00101100000000011111011100010111", 
    52 => "00100011001000000001010100101101", 
    53 => "00011011111110011110111000001110", 
    54 => "11111100111001010000101011110001", 
    55 => "00001000010001000100101000001100", 
    56 => "00101000111101101101010110111101", 
    57 => "11001111111110010000111000011010", 
    58 => "00000010111111110001001111101000", 
    59 => "00110100101001100010100100000010", 
    60 => "00010101111101001111111100110111", 
    61 => "11111111000001011111001111110100", 
    62 => "00000111000101001111101011101001", 
    63 => "00000001001000011101011111010110", 
    64 => "00001010000001101111011111111001", 
    65 => "00011001111110100010001000010011", 
    66 => "11100101111011101111001100010100", 
    67 => "00010001010000000000011011000010", 
    68 => "00001100000010001110001100000000", 
    69 => "11011111000110011111011111100010", 
    70 => "00101000111110001111110100010111", 
    71 => "11100001000001000101010110111110", 
    72 => "00000111000101000001010100001011", 
    73 => "11111100111011111101011100000001", 
    74 => "00000110111110101110110100000101", 
    75 => "11100110111001001110100111110110", 
    76 => "11111111111011100001011111011101", 
    77 => "00100000000110000001000000000101", 
    78 => "11111110111101000000101100000111", 
    79 => "00010011000010111101101111100000", 
    80 => "00001001000001011111100011111000", 
    81 => "11111001001010100100010011101100", 
    82 => "11101001000100111111110011111011", 
    83 => "00000001000011100101111111101010", 
    84 => "00011110000010111111000111111000", 
    85 => "00010011000111011111011100010001", 
    86 => "00011111111111010000000011100001", 
    87 => "11100000000001110010000111110101", 
    88 => "11110001110101111100101111111111", 
    89 => "00011111110111101011000100001110", 
    90 => "00001100111100101110010011111011", 
    91 => "00100111111011000010110011100100", 
    92 => "00011010110111110000110110111100", 
    93 => "00001111111100100001100000011011", 
    94 => "11110101000100010001011000001001", 
    95 => "00010000000100000000111100000100", 
    96 => "11111010111100000000110100100000", 
    97 => "00100111000111000001101100110101", 
    98 => "11101100110010000001111100010010", 
    99 => "00010000111010111101001111111101", 
    100 => "00011000000110010001001111111110", 
    101 => "11101011111111000000101100101000", 
    102 => "00010000111111001110100111101100", 
    103 => "11100010000011000001000001000001", 
    104 => "11111110111010101111000011101000", 
    105 => "11100111000101001111101100010000", 
    106 => "00100010111101010011000111101011", 
    107 => "00010000110010000010010100100010", 
    108 => "11011111110110001101010011111111", 
    109 => "00000000110110100001111100100111", 
    110 => "00000001111111010000001111110010", 
    111 => "11110010111001110101101011101000", 
    112 => "00000010000101011111110100011100", 
    113 => "00010010110101101110101011111001", 
    114 => "11100110111001010010111011101001", 
    115 => "11111111111010011101001001000100", 
    116 => "11111011000000110000111100001001", 
    117 => "11111001111010100011000011110010", 
    118 => "00010111000001101111001011011110", 
    119 => "00011100111000000000011000011000", 
    120 => "00001110000101000001100100100101", 
    121 => "00001001111010011110110111100110", 
    122 => "00000001000011001111100111110101", 
    123 => "00000010001001111110010000001011", 
    124 => "11011000111011111111100111000010", 
    125 => "00011000111010010001000000010110", 
    126 => "00100111111011000100000011001101", 
    127 => "11100110000001111011000000010010", 
    128 => "00000001101010011110110000010110", 
    129 => "00011001000000100011000100000010", 
    130 => "00010100001101000001011100001000", 
    131 => "11111000111011110110101100011010", 
    132 => "11111101000011010001001011110011", 
    133 => "11101010111001111000000111110100", 
    134 => "11111100110100111111001100000000", 
    135 => "11100111110110100010000000000001", 
    136 => "00011111111110001100100100001110", 
    137 => "11011101111101011001011000000001", 
    138 => "10110110000001100001001100101000", 
    139 => "00000000111101110010100011111010", 
    140 => "00110100110100110000100100010000", 
    141 => "11101001111111100001011011100110", 
    142 => "00001001000101111101110011110001", 
    143 => "11110001001011110001110111000100", 
    144 => "11010001000011010000010011111100", 
    145 => "00010000111011000001000100110001", 
    146 => "11100100111101110001101010111011", 
    147 => "10100011110011110010111011011110", 
    148 => "11100011001100101011110110011001", 
    149 => "11111100010101010000110000100000", 
    150 => "00100111001000011100010011110011", 
    151 => "01000110001111110000110001011100", 
    152 => "11110101110111011111111100001011", 
    153 => "11011001010011111100000011101011", 
    154 => "11011101001011110001110100010011", 
    155 => "00001001000000100000110000001000", 
    156 => "00000011111000001101101000101000", 
    157 => "11011101111110110111111011011001", 
    158 => "11100111001101000001010111111000", 
    159 => "11000010111001000010100111111100", 
    160 => "11011111110101010100110000110011", 
    161 => "00001100111000111111010000101011", 
    162 => "11101111111101001110011011111110", 
    163 => "11101111111100111000000111010000", 
    164 => "11110011001100010000101100100001", 
    165 => "11111100000111111101111100011010", 
    166 => "00001101110101110001100111101111", 
    167 => "00001110001011000110111011111100", 
    168 => "11101100110001111110001100001010", 
    169 => "00100011111100011000000111111110", 
    170 => "00010101111000000001011100111001", 
    171 => "00011111000010111101111000100001", 
    172 => "00000001111010100010101111111111", 
    173 => "00001101001101010011000111010101", 
    174 => "00000110010001101101010111111010", 
    175 => "01000010000010101110001111101111", 
    176 => "00010101111010101100010111110011", 
    177 => "11011011000001000011111011110110", 
    178 => "00110111110011101110111000000101", 
    179 => "00001011111101000110101011010111", 
    180 => "11101000111001011101001111000000", 
    181 => "11000001111011101011100111011110", 
    182 => "00111101000011001110111000101001", 
    183 => "11110011001000010000000000010011", 
    184 => "11011000111011100001011011110000", 
    185 => "11101011110101001111010000110011", 
    186 => "11110010000011101101111000000101", 
    187 => "11010000000110011110111011111100", 
    188 => "01001010000111001101101100101010", 
    189 => "00001111111101010111000010101011", 
    190 => "00001000111011010001010111001010", 
    191 => "00100011000010100111110000001111", 
    192 => "11100011101110010011101111010010", 
    193 => "11010111110101011100100110111001", 
    194 => "00000000001010111101101100001011", 
    195 => "10101101001000011010000111001010", 
    196 => "11001010111010100001111100111101", 
    197 => "00011010011100000111010111100111", 
    198 => "00101001010010100010101111011101", 
    199 => "01010011000000010001000100000100", 
    200 => "00100011110111011111010000100111", 
    201 => "11101100101110000010011111111010", 
    202 => "11010011000001001101010011011111", 
    203 => "11111110111111110011001010111110", 
    204 => "11110011010100110001111011011101", 
    205 => "11101000111101101101110100000101", 
    206 => "11101111000011111101100011110111", 
    207 => "00111100000000110001111100101010", 
    208 => "11101110111110000011001011110101", 
    209 => "00011010000000011100111111110010", 
    210 => "11110111000001011101011010111100", 
    211 => "00100110000000000010001000101011", 
    212 => "10101101111001100010000001011001", 
    213 => "00011001110010100100101011011000", 
    214 => "10010110001010111101011011001001", 
    215 => "11110111000101001101000010110110", 
    216 => "11111010000111000001010011101110", 
    217 => "11110000110001000001001000011100", 
    218 => "00001001000101001110101111110011", 
    219 => "00011010111010000000001011010100", 
    220 => "11101101111011100010001011110110", 
    221 => "00001010111111000001010100010111", 
    222 => "11101000111100101110000000100101", 
    223 => "11101100111100111010110100001000", 
    224 => "11101001000101010011110111101100", 
    225 => "11110000111111110010100111101000", 
    226 => "00011011111101110000000011101001", 
    227 => "00000110110101000010001100010000", 
    228 => "11010001000011111110110100011000", 
    229 => "00001111001110101100100100110010", 
    230 => "11011100000000111111000000100010", 
    231 => "11000100000101011111000111110101", 
    232 => "11101110000100100000000011001010", 
    233 => "11111010111110010100011100010010", 
    234 => "00001010000110000011011111110101", 
    235 => "00010100111001001111111001000101", 
    236 => "11100001000001111101100111110101", 
    237 => "00000110010101010001100010111111", 
    238 => "11101111111100111110101111101001", 
    239 => "11100111000000111110101000110001", 
    240 => "00011010000110100011000111111110", 
    241 => "11100010000001010010110100010010", 
    242 => "11110100001111010001100000101100", 
    243 => "00010111000111010011011011111001", 
    244 => "11110010000010110010110000000100", 
    245 => "11001101110011101101110000010001", 
    246 => "00010111000011100000110100000011", 
    247 => "01110011000001001011011000110011", 
    248 => "11011000001001101100111011100100", 
    249 => "11100000010001101101100000001110", 
    250 => "11000110110100110010011011101010", 
    251 => "11101101000100101101010011111010", 
    252 => "11100101000000111111000100001101", 
    253 => "11110000000001101101000011100101", 
    254 => "00011110000110011100100000001011", 
    255 => "11110110000100111110011000001111", 
    256 => "00011110000101001110100011110000", 
    257 => "00000000000011000000110011100110", 
    258 => "11011111000001101110111011111101", 
    259 => "00010001000110001111110111000111", 
    260 => "00010110111111100000011011111010", 
    261 => "11100110111001100000001111100000", 
    262 => "00001000000100011100110100010111", 
    263 => "11101000001111110001010000010011", 
    264 => "00100011110011011110001000011011", 
    265 => "11111010000000110000101000001100", 
    266 => "11111111111110010010100111110010", 
    267 => "11101010101110001111111100100100", 
    268 => "00100001001001011110101011111110", 
    269 => "00111100010000001110001011110000", 
    270 => "11111000000111100001010011100010", 
    271 => "00000110000110001111000011111011", 
    272 => "11111100111111100000100100100001", 
    273 => "11111100000100010000100100000100", 
    274 => "00000000000111110011010000010011", 
    275 => "11110101110110110010000000100101", 
    276 => "11111011111010111101011000011011", 
    277 => "00001001111001001110101100011001", 
    278 => "00010110000111101110011000000010", 
    279 => "00000111111100110001111111111111", 
    280 => "11111001111110100000000111001000", 
    281 => "00001001111100011110111000010101", 
    282 => "00011011000100010000000111110010", 
    283 => "00010101000011010000001011100010", 
    284 => "11001110111111011111000000000000", 
    285 => "11111111111100001111110000000010", 
    286 => "11111101000011001110111111111101", 
    287 => "00000000000100010001010000000100", 
    288 => "11101100000101111111001000000101", 
    289 => "00001101111101111101110011110111", 
    290 => "00000011111111100010000000010111", 
    291 => "00001010000010101100101111101111", 
    292 => "11110000111001010000010011101101", 
    293 => "11100110000001001011101111001110", 
    294 => "00001001111110001111100000010111", 
    295 => "00010001000001000010001101001010", 
    296 => "11111000111001000000111000011001", 
    297 => "00100110000101101111100100011101", 
    298 => "00011101000000110000111100000101", 
    299 => "11110111111111101111101000011001", 
    300 => "11110001111101110000000100010010", 
    301 => "11011101000011001110101011111111", 
    302 => "11110000111111001111001100011001", 
    303 => "11101011000010100000101011100110", 
    304 => "00100000110111011111011000001001", 
    305 => "11101000000001110001000111011111", 
    306 => "00011100000100110001000100001111", 
    307 => "11101110000010001111100000001001", 
    308 => "11111110111011110000110011000100", 
    309 => "11101100111101101110100100000001", 
    310 => "00010100000010010001011101010101", 
    311 => "00001110000001011110100011101110", 
    312 => "00001111111110111111111100011111", 
    313 => "11101110110100111110000100101011", 
    314 => "11110001001010001101111100001000", 
    315 => "11101010000110001111010100000011", 
    316 => "11111010111100110000000011101001", 
    317 => "11100011111011010001111000000110", 
    318 => "00010001000011001111000000011001", 
    319 => "00000101110101010001110011111110", 
    320 => "00001011000000011101100100110001", 
    321 => "11110010001001000000000011001010", 
    322 => "00011011111101111110000111001110", 
    323 => "00011011000001010001110110111111", 
    324 => "10110100110110100000000100010110", 
    325 => "11110101111110001110010000001111", 
    326 => "00011101000100000001110100110101", 
    327 => "00100100110110100010001011111001", 
    328 => "00011000111101010100101000000010", 
    329 => "00000100111000100001000011111010", 
    330 => "11111000000101011101101000110011", 
    331 => "00100101111001111101111100101011", 
    332 => "01000110110010010010110000010111", 
    333 => "00010111000110001011011011011011", 
    334 => "11011111110101011111010100010101", 
    335 => "00001010000111001111011011110010", 
    336 => "00101101000110000000010000001001", 
    337 => "11000001000110010000011011110000", 
    338 => "11111111110111110100000000010001", 
    339 => "11101010000010001111001100011110", 
    340 => "00011011010000000011010001000001", 
    341 => "00100100000111101110010000000010", 
    342 => "11100110111110001001011011010100", 
    343 => "00001001111101011101101011010001", 
    344 => "00110001000101101110010011111110", 
    345 => "11101110111010011111001000000111", 
    346 => "00110100000111000011111011001001", 
    347 => "11010111111010010000101000000101", 
    348 => "00111011000001101101111100011101", 
    349 => "00001011111000000000111000001010", 
    350 => "11101001111001111111111000011001", 
    351 => "00011101000000001101110111110100", 
    352 => "11110010110010110001001111100000", 
    353 => "11100011111010110001001100011110", 
    354 => "00001001111101100001100011101010", 
    355 => "00101111111110011111011100010010", 
    356 => "11111000000101010011010100001110", 
    357 => "10101110110111011110101100100111", 
    358 => "11101000110110010010010100010001", 
    359 => "00010011110010100000001100011010", 
    360 => "00100100111011010000100111001001", 
    361 => "00100010000010100000010111010111", 
    362 => "11011011001000011101010000010111", 
    363 => "11011111110110110010000111011101", 
    364 => "00100101111100110000111111010111", 
    365 => "00011001000110001111100100001001", 
    366 => "00011110011010001111111111100100", 
    367 => "00001001011110100010110111010101", 
    368 => "11110011111010000010011000000110", 
    369 => "00000011111001010010010111111011", 
    370 => "00101011000010011111111111100010", 
    371 => "11101111000101101110100011111101", 
    372 => "01011001000101101110000111001111", 
    373 => "00010000111001000001000100001100", 
    374 => "00101011111010010000000111110111", 
    375 => "11011111110100100010001100011011", 
    376 => "11111001111101010010010011111010", 
    377 => "11100010111101101111100111111111", 
    378 => "01001111001101001110110011111111", 
    379 => "11111011000100000010010011110101", 
    380 => "11101111000011011111011100111010", 
    381 => "00011010111011010000011100011101", 
    382 => "00010000000011011111111000000001", 
    383 => "00101100000001100011101100101100", 
    384 => "01011011111111010010111100011101", 
    385 => "11110100001000101110011011101001", 
    386 => "00001111001001011111001000110100", 
    387 => "00001110110011100000101111011101", 
    388 => "11101010111101001100011111011110", 
    389 => "10100111110111011110000100110100", 
    390 => "00011010000001010001111111101010", 
    391 => "00100010000011100000101100110011", 
    392 => "01000010110001011100001111101000", 
    393 => "00001110000110101111010011111001", 
    394 => "11111101000011110011111100111010", 
    395 => "11110000111011001111100011111000", 
    396 => "11111100111001110000001111111000", 
    397 => "11101001001010101111011100010000", 
    398 => "00011010001010100100111011010001", 
    399 => "00000011111110010000010000000111", 
    400 => "11011011000001000001110100110111", 
    401 => "00001111110010010000101101100010", 
    402 => "00000000111101101010100100001100", 
    403 => "00000101110001111101111100000100", 
    404 => "11110110111101100001101100111011", 
    405 => "11100111000101100000001011111100", 
    406 => "00000010111111110000101000000111", 
    407 => "00111110110111110011001000010100", 
    408 => "00001100000100101100110111000111", 
    409 => "11101110000011101111110011110011", 
    410 => "00011010001001100001001000001101", 
    411 => "11011000000110010000101011110100", 
    412 => "00010101000101001110101011100010", 
    413 => "11001010111100111111110100001110", 
    414 => "00011101000110011110100100000110", 
    415 => "11110111111010000000001011110100", 
    416 => "11111000000100111111000000101011", 
    417 => "00110101000110101111010000001011", 
    418 => "11011111000001100000101000000100", 
    419 => "11100111001101110000001100011010", 
    420 => "00010110110111000000000111011010", 
    421 => "11101001000000100010010001000111", 
    422 => "11100111111110000001000111100100", 
    423 => "00010100000110001110110000001100", 
    424 => "11110100111111100000001100111111", 
    425 => "11100010000101111111010100000111", 
    426 => "00000000000100100101001100011011", 
    427 => "00010101000111010001001111011101", 
    428 => "11111110001010101110110000001010", 
    429 => "11111011000000011111101111101001", 
    430 => "11111010000000000000110100111101", 
    431 => "11100000000111011111001011110001", 
    432 => "00001000111011011110000100001111", 
    433 => "00011111000100010001001111100001", 
    434 => "00000101111111000000101000000000", 
    435 => "11110001101000011110101100011011", 
    436 => "11111110001010010001100000001001", 
    437 => "11011110000110000000101011100110", 
    438 => "00000001111000001110110100100100", 
    439 => "11101100000101010010111000001010", 
    440 => "00101001000101101110010111111001", 
    441 => "11111010101011000000001000000100", 
    442 => "11110101000010100001101111001010", 
    443 => "11110110110111101111111000010111", 
    444 => "00010000111001001110101011111011", 
    445 => "00010000111110001110111111110100", 
    446 => "00100110110110101111100000000000", 
    447 => "00001111110111001110111000001100", 
    448 => "11111101000000010000011111111100", 
    449 => "00000010000100011110101000010110", 
    450 => "11111110000100110010000100001011", 
    451 => "11100111000101011000000100001001", 
    452 => "11111111111111000001111000011111", 
    453 => "11100000111100001111101011101111", 
    454 => "00010000000001110000011111110010", 
    455 => "00010011000010011110010111110111", 
    456 => "00000111000100011111111000000000", 
    457 => "11110100000111010010111011100111", 
    458 => "11110111111001110000000011101101", 
    459 => "00011111111001001101100111010001", 
    460 => "11110101111101011111101111110110", 
    461 => "11100111111000101111101000000101", 
    462 => "11111010000010010000110011101110", 
    463 => "00001011000000000011010100000001", 
    464 => "00000000000010000000110100010101", 
    465 => "11111101000001010001010011001111", 
    466 => "11100001111111101101111100000100", 
    467 => "11101110111110111110011000000110", 
    468 => "00001000000100111011111111100010", 
    469 => "11101011000101101110011000011101", 
    470 => "11011110000100010000101011101001", 
    471 => "11110100001100110110001000100001", 
    472 => "11110000110101110011101100011101", 
    473 => "00110011000110100011111011001011", 
    474 => "11100111010010001110011011100010", 
    475 => "00000010001100011101001100001001", 
    476 => "11111000000010110000011000110111", 
    477 => "00001100000010100000100100000101", 
    478 => "00000010000101100001011011110100", 
    479 => "11111001111101011110000000100111", 
    480 => "00000100000011000000100011100101", 
    481 => "11001100000010001100010000001011", 
    482 => "00000001111111100000011100011001", 
    483 => "11111111000000001111100111101000", 
    484 => "00100000110110110100000000110100", 
    485 => "00000111111101001110110100010110", 
    486 => "00001010001011100000001111110101", 
    487 => "00000111000101011111000000000110", 
    488 => "11111110111010010000010011111011", 
    489 => "11110011111101111110010000000101", 
    490 => "00000111111011010000011011011010", 
    491 => "00000000000110000001110011001101", 
    492 => "01001001111100011111011111111010", 
    493 => "00100110001001011111001011110001", 
    494 => "00001101001000010000011111110111", 
    495 => "11011100111100110110000111011110", 
    496 => "11110000000000101111101011011101", 
    497 => "11110100111110101111000111101110", 
    498 => "11111100001110101101101100111100", 
    499 => "11111011111100101111010000011110", 
    500 => "00010001111111011110110011110110", 
    501 => "00000111111001011011001000000101", 
    502 => "11100010000100111110110100000010", 
    503 => "11111100111100010101010011100100", 
    504 => "11101111001101100011010100001001", 
    505 => "11100011111010011000011000000100", 
    506 => "00101000000011110000001011010010", 
    507 => "11011000111101111011111100111000", 
    508 => "00010101111110100001001011100000", 
    509 => "11111111000001111111010111100000", 
    510 => "11010111000001111100111100010001", 
    511 => "11111011111001000010111011100010", 
    512 => "11110110111110110000011011101011", 
    513 => "00001101001011000010011100001001", 
    514 => "00001001000011100000011100000011", 
    515 => "11111111111110110000111000001010", 
    516 => "00011010000011001111111110111011", 
    517 => "00010011000110001110100100000001", 
    518 => "00010111111010101111111100000000", 
    519 => "11001111111111100001010100001101", 
    520 => "00011100110111111111011100110111", 
    521 => "00000100110110111111011000010000", 
    522 => "11101100000101000000010110010111", 
    523 => "00000101001000110001010111110100", 
    524 => "00001111001000110000100100000100", 
    525 => "11110000000010101111001100000110", 
    526 => "11110100111110000001101111011011", 
    527 => "00010011000111010001000011100000", 
    528 => "00011001001000011111101011100010", 
    529 => "11011110001001010010000111011001", 
    530 => "11101110000110010010010011000001", 
    531 => "00001001000110000000110000010011", 
    532 => "11111101001010110000110100011010", 
    533 => "11111010001111000100001011110110", 
    534 => "11101010001000111111010100110101", 
    535 => "11100001000001111110000111100101", 
    536 => "11111010000001111110111100000110", 
    537 => "11101100000101011111101000100010", 
    538 => "11100100111111001111101100011000", 
    539 => "00001101001000111101010111010010", 
    540 => "00000110111101100001011110111100", 
    541 => "00000100000110001111111000110000", 
    542 => "00100100000010010000111000100011", 
    543 => "00010000000101100010010000001110", 
    544 => "00101000111100000000111100001011", 
    545 => "00000111110100110010011011111100", 
    546 => "00010011111111100001011100101011", 
    547 => "11100001000011010000100000000001", 
    548 => "00000111110110011111000100011011", 
    549 => "11101110110111110001011000100011", 
    550 => "00001000110110011111100000010010", 
    551 => "00110010110110110000100000100101", 
    552 => "00000011111011011110001111101110", 
    553 => "11101110111001000011111111101110", 
    554 => "00000010000011000001100100110111", 
    555 => "00000111010011001111011111111000", 
    556 => "00001111000000100001011011111100", 
    557 => "00011100010010011111011000000101", 
    558 => "00010111001000111110110011100011", 
    559 => "11101110000101011100110100111001", 
    560 => "00000100000100101111100111110111", 
    561 => "00011000111100010011000000000101", 
    562 => "00000100000101010001110000001101", 
    563 => "01010101000110000011010000000101", 
    564 => "00011000000011010000110100110110", 
    565 => "11110100000010110001110100011010", 
    566 => "00010000000010010000010111111101", 
    567 => "00001111000010101111000011101101", 
    568 => "00001000000101010011100000010000", 
    569 => "00000011000100010010101111100111", 
    570 => "00001100111010011110011100010101", 
    571 => "11101010000010010000000111011001", 
    572 => "11111110000110001110001110111011", 
    573 => "11101010111111100001100011110011", 
    574 => "00000101000111001100101111111101", 
    575 => "11101110111111011111000000001111", 
    576 => "01010000111110001100011100000011", 
    577 => "00011001000010111100001111110001", 
    578 => "11100001111110011111001000001011", 
    579 => "00111111111100110010011000100100", 
    580 => "01001011000110001110011111111101", 
    581 => "00010111000101110010100101010110", 
    582 => "00011000111010111110101011011000", 
    583 => "11101000001100001100011101001101", 
    584 => "11111110001000000000100000001001", 
    585 => "00010100000101111101111011011011", 
    586 => "00011011000001000000110011111110", 
    587 => "10111001001110111111001011111011", 
    588 => "11001010110100110000000001001100", 
    589 => "00101110001100000001010011011110", 
    590 => "11011001111101110000101100101110", 
    591 => "00100001000011010000110111010100", 
    592 => "11100010001010010010101111010010", 
    593 => "01000010001100111111100000000101", 
    594 => "00101111001001011111111111110111", 
    595 => "00011100111000100000101100010101", 
    596 => "11110011101100101101110000100111", 
    597 => "11110101000010011101111100011001", 
    598 => "11111010000001011110011100010011", 
    599 => "00001110000000100000001000100101", 
    600 => "00011100110111000000001100111101", 
    601 => "11011000001011000010001111010001", 
    602 => "00010010111100011100000100010011", 
    603 => "00010100000000100000010110111001", 
    604 => "00010010111101011101110011110011", 
    605 => "00000110000011101111110000010111", 
    606 => "10100011111010111010011011101010", 
    607 => "11010010001000010011001111110111", 
    608 => "01000111000010000001001100100001", 
    609 => "11011100101100101101100111110100", 
    610 => "10111001111111011111111011111101", 
    611 => "00001000111111100001000111111101", 
    612 => "11110100111101000001000111011000", 
    613 => "11111100101111110011111100001101", 
    614 => "11110001000001001011000100111011", 
    615 => "00001110001011100010100111111111", 
    616 => "00101101000111111101011111101011", 
    617 => "00010011001111111101000011010110", 
    618 => "00010011001011010101111000100001", 
    619 => "11100010001010011111101011011010", 
    620 => "00001000111011110000110000100110", 
    621 => "11011000110101001111011111110011", 
    622 => "10100010000011101100111100010101", 
    623 => "00110010111010101110100100001101", 
    624 => "11011001111110101110011000001010", 
    625 => "01001000111111101100111011110000", 
    626 => "00010010111000001100101000000011", 
    627 => "11101111000101101100011100011101", 
    628 => "11110111000001001101000011000010", 
    629 => "11101100111001101111011011101010", 
    630 => "11111001001010010011111100010111", 
    631 => "11101111001101101110010111110011", 
    632 => "00100011001001111101101100110000", 
    633 => "10110111000110010001000100001010", 
    634 => "00011000101111111110000111101000", 
    635 => "11100110000000101100111000000100", 
    636 => "00011110100110100001000100111100", 
    637 => "00110010111001101101100000000000", 
    638 => "11010101001001000010100011001001", 
    639 => "00101001000000011101101111110110", 
    640 => "11111011000000010000001111010000", 
    641 => "11110010110110111000001000010001", 
    642 => "11110011000100001111000000010001", 
    643 => "00000111000001001000000100100011", 
    644 => "00001011111101100011010111110101", 
    645 => "00000100111001010000000000000010", 
    646 => "00011011001001100001000011101000", 
    647 => "00000111110000101001010100111010", 
    648 => "11110010111111101110001111101101", 
    649 => "11111011111011111000000100001000", 
    650 => "11101000001000100000001011101111", 
    651 => "00000101000000111100010111111000", 
    652 => "00000010000001011111101000000101", 
    653 => "00000010001100110111011111100000", 
    654 => "11011111110110011100001000100100", 
    655 => "00100110000000001011010111111000", 
    656 => "00100000000011101101001011111110", 
    657 => "00000101111101101100110000000101", 
    658 => "00001011111111010001100111110010", 
    659 => "11100010110110101000000111111010", 
    660 => "10100101111110001111001011000111", 
    661 => "00000111000010100100101011110101", 
    662 => "00100011001000000011000000100010", 
    663 => "11010111110110100011101011001100", 
    664 => "11011001001001010000011000101010", 
    665 => "00010111000011000010000100010101", 
    666 => "00001110001110101101110100011001", 
    667 => "00001010111111001110110100010111", 
    668 => "11111010000100110000100011011000", 
    669 => "11110001111111000100111100100000", 
    670 => "00000100111100101110000000011101", 
    671 => "11110111110111001110011000001000", 
    672 => "00100000110100101100100011011010", 
    673 => "00001000001001100110101000000000", 
    674 => "11011001000001001111110000010010", 
    675 => "11111100000001101101100000010011", 
    676 => "00011001111111100010001100011011", 
    677 => "00011101001000010111111000110111", 
    678 => "11100111111001010001101111111011", 
    679 => "11110101000101000110100100000010", 
    680 => "11100110110111111101100111111000", 
    681 => "00000011110111101101000000101100", 
    682 => "00100101111110101111010111101101", 
    683 => "11011111000101011001110111111000", 
    684 => "01000011000011001110110011100110", 
    685 => "11000001000100101100000000110000", 
    686 => "00111100000011101110001111100000", 
    687 => "11101101000001111000101001001000", 
    688 => "00011000111100111111111011101000", 
    689 => "11110010000001111111100011011000", 
    690 => "00100001001101101101011011000111", 
    691 => "01010010001011110101010101000011", 
    692 => "10110011111101001111111011100111", 
    693 => "11111001111111011001100011011110", 
    694 => "00001100111100011100111100001101", 
    695 => "00010101000100111000001000101101", 
    696 => "00000011111000100010101000101111", 
    697 => "00000010111111110000001111110001", 
    698 => "11110110000010110000101000000100", 
    699 => "00011010000101101101100111111110", 
    700 => "11110101111101100001111011101000", 
    701 => "00000101000101000101100000000110", 
    702 => "11111101000101001111001000100110", 
    703 => "11110110111011011101111100000001", 
    704 => "00000000000001110001000100011101", 
    705 => "00000111111111000010001111010111", 
    706 => "11010111111111001101011100101111", 
    707 => "00001101111000010001011100100010", 
    708 => "00000000111010010001010111110100", 
    709 => "00000010111011100011000100100101", 
    710 => "11000010101100110000101011001100", 
    711 => "00100111000010111101111100010011", 
    712 => "11101000111100000001010111100110", 
    713 => "00001001000101110001100000000111", 
    714 => "00111011001000101111101100001100", 
    715 => "11100001001011100010011000000110", 
    716 => "11110001001100001111010100001001", 
    717 => "00100100000100000011011111111101", 
    718 => "11011001111010111111011111101010", 
    719 => "11110011001011101010011111101111", 
    720 => "11110110000111001111100000001000", 
    721 => "11110110110111011101111000000101", 
    722 => "11010111001010001100001111110101", 
    723 => "11110110111010100001000111101010", 
    724 => "11010101001000010001010000000101", 
    725 => "00001011110111011011000111110111", 
    726 => "00010111000100100001111011101111", 
    727 => "00001110110110011100001111110110", 
    728 => "00011000110101010001111000100110", 
    729 => "11101111111111001111100111101111", 
    730 => "11101101000010101110111000000010", 
    731 => "11111101000010011110111100001010", 
    732 => "00000000001001000000001100010010", 
    733 => "11010001000010100001001111110101", 
    734 => "11010010111000111111000000001000", 
    735 => "11011110111111001001111000001010", 
    736 => "00101001110101001111110100000000", 
    737 => "00010001111000101100010000000111", 
    738 => "00011111001001000100000100001101", 
    739 => "00000100111011100000100011111011", 
    740 => "11101110111010110000011011010101", 
    741 => "00001010000101001100001111110010", 
    742 => "11100000111001100000110111001010", 
    743 => "00101111111101110010101100011101", 
    744 => "00000011111100011111100100010111", 
    745 => "11000000010000010010100000001110", 
    746 => "00100101110101100001000000100001", 
    747 => "11011101001101100001110011100101", 
    748 => "11101000111111011111110011010101", 
    749 => "00000000101110110000001111111100", 
    750 => "00110101111111011111000011111101", 
    751 => "11111011110010100011110100110100", 
    752 => "00100011001100001111010100111010", 
    753 => "11011011111100111110100000000111", 
    754 => "01001101001001011110100010101101", 
    755 => "00011111000011000100000000011111", 
    756 => "11110111111101001110010000111011", 
    757 => "11101110111101111111100000000001", 
    758 => "11100101111001110010010100110100", 
    759 => "11111101010010110010000011001111", 
    760 => "00010100111101010010110011010110", 
    761 => "00100001111001000010000100001100", 
    762 => "11101100110101011110111100010011", 
    763 => "11101110000010101110000100010101", 
    764 => "00011110001011010000000000011110", 
    765 => "00000111001000111100001100001010", 
    766 => "00100101000101100010110100110110", 
    767 => "00001010000000001011010100000100" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "auto";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "hls_ultra";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity ReadA113128_weights_0_0_3 is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 768;
        AddressWidth : INTEGER := 10);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of ReadA113128_weights_0_0_3 is
    component ReadA113128_weights_0_0_3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA113128_weights_0_0_3_rom_U :  component ReadA113128_weights_0_0_3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

