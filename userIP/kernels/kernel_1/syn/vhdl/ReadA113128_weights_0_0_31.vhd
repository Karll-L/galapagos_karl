-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA113128_weights_0_0_31_rom is 
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


architecture rtl of ReadA113128_weights_0_0_31_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10101010001010010001010011001011", 
    1 => "00010001111000010000100101001010", 
    2 => "11100110000110010100110111100000", 
    3 => "01000011110101100001000011110101", 
    4 => "00100001001110001111100100010100", 
    5 => "00011001000010001111111111100010", 
    6 => "00000111110100100000010000101001", 
    7 => "00000100111111011110000011111010", 
    8 => "00011110000010001111111100010010", 
    9 => "11011001000010000000111011110111", 
    10 => "11111100000111111101100011110001", 
    11 => "11110011111100101110101011110010", 
    12 => "00001000111110100010101011111010", 
    13 => "00010110111010001110100000000011", 
    14 => "00001010110010110001111011000100", 
    15 => "00110000110101101111000000100011", 
    16 => "00010000000010001110001000110000", 
    17 => "11100001000110101111110011011101", 
    18 => "00100001001100010010011100000010", 
    19 => "00001101101101001111100011100010", 
    20 => "00010000101100111100011010111011", 
    21 => "00010000110101011110011100000001", 
    22 => "11110000110111110000101111111000", 
    23 => "00001000111101010000111011111000", 
    24 => "00101010000101101101110110100101", 
    25 => "00001100111001101111000111101111", 
    26 => "11111111110111110001101011011011", 
    27 => "11010000001101100011010111101100", 
    28 => "00001000001011000010001011110110", 
    29 => "11100111111010011110111100001110", 
    30 => "00000011111101101111101011000001", 
    31 => "11111000000100110001111111111010", 
    32 => "11100000000101111110001010111100", 
    33 => "00001000111110001111111111111011", 
    34 => "11101101111101001111011100011111", 
    35 => "01011111111011001100111000000111", 
    36 => "11011010111110101110000100111100", 
    37 => "11101011111000011110110011111000", 
    38 => "11111011000100011101111111011110", 
    39 => "11111101000010000001001111101110", 
    40 => "00100001111001110001110111110100", 
    41 => "00011110111101011111001011100111", 
    42 => "00111011000001011010001111110000", 
    43 => "01011011111111001110011111010010", 
    44 => "00101011000001001010110100000100", 
    45 => "11111100111101010000111000001010", 
    46 => "00111101001010011111110100001000", 
    47 => "00001110111001000000001100010011", 
    48 => "00001101111010101110011011111011", 
    49 => "11111001001111001111110011100000", 
    50 => "11001011101110000001100000001011", 
    51 => "00100000000110100000010011110101", 
    52 => "00011101000000100001010011111011", 
    53 => "00101011110111110001101100100101", 
    54 => "11110101111001110000001111110000", 
    55 => "11110100111111101100110011111101", 
    56 => "00011110111111101110011000011001", 
    57 => "10101011110011101101111111110100", 
    58 => "11010111111101100000010100100110", 
    59 => "00011110101101001110001001011011", 
    60 => "11100100110011111111100111111110", 
    61 => "11011001000100001111101100101100", 
    62 => "11110101001100101111100111110000", 
    63 => "01001100000010001101110011000100", 
    64 => "00000111000001011110111111111100", 
    65 => "00001001110101000001011100100000", 
    66 => "11101011111110000011000011010111", 
    67 => "11111001111101101111111000001010", 
    68 => "11110100000000001011110100101111", 
    69 => "11111010001001010000101100000011", 
    70 => "11111010110111010001010000001010", 
    71 => "11010110111100110000101100001001", 
    72 => "00011101111110111100110111100001", 
    73 => "00010011000101011111000111010010", 
    74 => "00100010111011111110011100010001", 
    75 => "11101101000011000001100000011100", 
    76 => "00010100111110101101001111011111", 
    77 => "00011011111100000000000000001010", 
    78 => "00000010110111100001110011111010", 
    79 => "00011000111010100010010000001100", 
    80 => "11101000111111010001011111111000", 
    81 => "11111100000000001111011000011111", 
    82 => "11010100000010001111101100100111", 
    83 => "11000011000110111111010100111100", 
    84 => "00011000000100000000011100011111", 
    85 => "00111001001101100000000000000011", 
    86 => "11110110000000111101010000011010", 
    87 => "11111001000110100001000001000111", 
    88 => "11110010111101101111000011111000", 
    89 => "11110010000111110001100111101101", 
    90 => "11111001111001111111010000011111", 
    91 => "11011010110110000001110000000001", 
    92 => "00011011001101000100010100011101", 
    93 => "11111010111011111111110000101000", 
    94 => "00010000111010010010011000001000", 
    95 => "00010001111001010000111100010000", 
    96 => "11111101000011101111011000001110", 
    97 => "00000000000110000001000100100000", 
    98 => "00001010001001011111000000010110", 
    99 => "00000101000010011110001011110010", 
    100 => "11110100000000101111101101101011", 
    101 => "11010111111011100000000110110100", 
    102 => "11011001110010100101100011101001", 
    103 => "11111100110011111111001111000100", 
    104 => "11011110001001101100111000010111", 
    105 => "11001000111110000001010000010100", 
    106 => "11101110110111001111101000010001", 
    107 => "11010101111101011110101100010110", 
    108 => "11101110111111000000110100001010", 
    109 => "11010001000000100001111100010001", 
    110 => "00100010111110001101011111101101", 
    111 => "00101111001011010001100100001111", 
    112 => "00000000110111100010100100000011", 
    113 => "00010001000001011111110100001111", 
    114 => "00000001111100101111110000000000", 
    115 => "00001101000001110000000111011100", 
    116 => "11010011001001000001101111111011", 
    117 => "11111110111100001111010100011000", 
    118 => "11110100000000010000110011100110", 
    119 => "11111100000101000000011111011011", 
    120 => "11110000000011001011111111110111", 
    121 => "00010111111100100001101011000010", 
    122 => "11010000000001011110100111110101", 
    123 => "11110111000101111111111100000000", 
    124 => "00110101000101100001110011111100", 
    125 => "11111100000101010000101000010110", 
    126 => "11111111111110100000101000100010", 
    127 => "11011110110001001111110011100011", 
    128 => "00110110010001011111001100111111", 
    129 => "00001001111011001100010000000110", 
    130 => "11011101001001010001011011110111", 
    131 => "00100010000000010000100000000011", 
    132 => "11011100000111010011110011001010", 
    133 => "11111000000000000000010000001011", 
    134 => "11011010000101101100011000011001", 
    135 => "11101000010001011111011100011001", 
    136 => "11001111111010110001000111111111", 
    137 => "11100101000010011110101100001100", 
    138 => "00010000000010010010001000001001", 
    139 => "00001011000101111111101100001110", 
    140 => "11101100110111001111110111110000", 
    141 => "00011011000101010001101011100010", 
    142 => "00111100000001111101110000111111", 
    143 => "11110010011000010000110000011011", 
    144 => "00110100001000110100001100100000", 
    145 => "00011100000100110001011111011010", 
    146 => "11100100101111011111011000101101", 
    147 => "11000111000010000000110101000011", 
    148 => "11111111001001010000010111100000", 
    149 => "01001010000100110000110111111000", 
    150 => "01000010111100101110011000101100", 
    151 => "00100010001110000011100000000000", 
    152 => "11000111111111001010110100110001", 
    153 => "11111000111001100000101100000010", 
    154 => "11001100001011011011000000010101", 
    155 => "11110110001001100010001111011000", 
    156 => "00010100000011101110011000001110", 
    157 => "11100111110110010000100111110100", 
    158 => "00000111111011011100000000000010", 
    159 => "11110101000100000000000100101101", 
    160 => "11111011111011001100001100010111", 
    161 => "00000001000100101111111011011101", 
    162 => "11111101110100100001011000100111", 
    163 => "10010011110101011101111100100111", 
    164 => "00000110000111001100000100001111", 
    165 => "00000110111110101111101011010110", 
    166 => "00101101111011000010101100000010", 
    167 => "11110000111011111111000000010011", 
    168 => "11111101101111111010001111110010", 
    169 => "11110001000100000000110100110001", 
    170 => "11110110111010110001010011010011", 
    171 => "11100010111100101111011100100000", 
    172 => "11101010111000011010101100001010", 
    173 => "00010011001000101111000000110111", 
    174 => "11001101000110100010101001001001", 
    175 => "00001001000100011111101111000100", 
    176 => "11010010000111000000011111011101", 
    177 => "00100100111101100001001001001100", 
    178 => "11111011111000000001111011110110", 
    179 => "00001111000000011111100111101001", 
    180 => "11100101111110101111011100010001", 
    181 => "00000101000011011111111100100110", 
    182 => "11101011101100111111000101011100", 
    183 => "10111101001011101110100000000100", 
    184 => "00010101111100111111011011111001", 
    185 => "11111010000111001110110000111101", 
    186 => "00011000000010100010010101000001", 
    187 => "11110110111111101101110011101110", 
    188 => "01001000111001011110001000001101", 
    189 => "11110001001000100010011110101111", 
    190 => "00000111110011111111000111110111", 
    191 => "00000001000001101111001000011011", 
    192 => "11101000000010000100000000100100", 
    193 => "11111010111010110001001011110111", 
    194 => "11010100110001010000001000001000", 
    195 => "11010011010001110001010000000011", 
    196 => "00001100111000001111011011010101", 
    197 => "00110110111110110001010011100000", 
    198 => "11100010001000101111110011101101", 
    199 => "11100001111101111111101011001110", 
    200 => "11010010111010100010001100011000", 
    201 => "11000110001011001101110111100110", 
    202 => "00011001000110100100000100100010", 
    203 => "11101000110110100001100100110101", 
    204 => "11111111000110101110100011110011", 
    205 => "01001001111011101110111011101101", 
    206 => "00000000000010110010101100010111", 
    207 => "00100011000011100000000100000000", 
    208 => "00010111001000010010000000000110", 
    209 => "00001111000011101101010000001100", 
    210 => "11101011111000101011001100100010", 
    211 => "00010010111110011110000000100011", 
    212 => "00010011001110100010101111001111", 
    213 => "00001000100111001110011000001011", 
    214 => "11111011001010110010101111111011", 
    215 => "00011000000011100000111011011100", 
    216 => "11110000110011000001100011100110", 
    217 => "00000111001011011111001000000111", 
    218 => "00010010000111110010000000001110", 
    219 => "00000001101101110001010111100111", 
    220 => "00001010001001100010010111100011", 
    221 => "00010000111011100000011111010110", 
    222 => "00001010000010000000010011101011", 
    223 => "00101111000101010001110111010011", 
    224 => "00100111000100100000011011010111", 
    225 => "11011101101010111110111100101100", 
    226 => "00000011000101111111110011111001", 
    227 => "11110010111110000000110111100001", 
    228 => "11011100110100111101110011101001", 
    229 => "00000101110111110010110111011111", 
    230 => "00011111001101010001010011000010", 
    231 => "00011010001101101111101000010001", 
    232 => "11110111001100101110011011011011", 
    233 => "00110101111110001111100100000001", 
    234 => "11100000000101001001011011111011", 
    235 => "11111111111011010011000000111101", 
    236 => "00110111000010100001110110110100", 
    237 => "01000000111011101110111111010001", 
    238 => "00100010001110110010100100100100", 
    239 => "11101001110100010000111111011111", 
    240 => "11110010111010000101010011000101", 
    241 => "00110110111111010010100011001111", 
    242 => "11110010000101011111110111110010", 
    243 => "10100010000010010000101111110001", 
    244 => "00011001111010101111011100001011", 
    245 => "11100011000110010000110100111000", 
    246 => "11100111111001111110101100001100", 
    247 => "00011000001101011110001100010100", 
    248 => "11110011000011011111000000011100", 
    249 => "11011100001110010010001100011011", 
    250 => "00011100111100101111101100011000", 
    251 => "00000001111000010010100000100100", 
    252 => "11111001111010011011111111111001", 
    253 => "00100110000100001111110011111011", 
    254 => "11110011000100010011111001010100", 
    255 => "11101010000010000000001111100101", 
    256 => "11111010000101010010001011110010", 
    257 => "11100000111100000001001111111100", 
    258 => "11100111000101110000000100000100", 
    259 => "00100110000001101110010000001001", 
    260 => "11110011001010001111111111100101", 
    261 => "00000011111110001110001111000101", 
    262 => "00110101111110101110001011110001", 
    263 => "11011101111110101111001100100011", 
    264 => "00001100111110100000001011100010", 
    265 => "11101010111111000000010100000000", 
    266 => "11110010000100111101001100000010", 
    267 => "00000001001110000000000011110011", 
    268 => "11010000000001001110010100010001", 
    269 => "11100001111001010000101000000110", 
    270 => "11010000111001001110110100101000", 
    271 => "11011110000100111101110100010000", 
    272 => "11110000000001110000001011011110", 
    273 => "00001010111111111110111011110110", 
    274 => "11110010000001110000000100010101", 
    275 => "00010010110011110000110111111111", 
    276 => "11010101110110001110011111101100", 
    277 => "00100001111110011111100000000010", 
    278 => "11101010000001101111100111101111", 
    279 => "00100001111011111111001011101110", 
    280 => "00000101000011111111101011110010", 
    281 => "00010001000000101100111011101101", 
    282 => "11110101111010010000001011101010", 
    283 => "00000000111000010000101111110000", 
    284 => "11111101000011110000011111110101", 
    285 => "11111100111110101110110011100010", 
    286 => "11111000010000011111000100000100", 
    287 => "11101001110110101111100000001100", 
    288 => "00001101111101111111110000000010", 
    289 => "11101100000010100001111000011000", 
    290 => "11110001110011110001100011110111", 
    291 => "00111011111100111100111000010010", 
    292 => "11111100110111000000010111100111", 
    293 => "11111111111000000010000100011111", 
    294 => "11101101110101011101001000001111", 
    295 => "11111010001110100000001000100101", 
    296 => "11101011111010111110001100011100", 
    297 => "00110000000010000000111011100011", 
    298 => "11111111111111001111010100000001", 
    299 => "00011011111111101110000111110110", 
    300 => "00001110110111010010111011110101", 
    301 => "11101111111110111111000111100001", 
    302 => "11110110111110100010001111100110", 
    303 => "00011010110110001110000100000110", 
    304 => "00011111111110100000001000100000", 
    305 => "11111010000101001110100111011000", 
    306 => "00010001110111010010000000111001", 
    307 => "00000110001111001110011111011111", 
    308 => "00011000000011000000001000001001", 
    309 => "00110011111110001110100000100000", 
    310 => "00001011000100010010010000100001", 
    311 => "11111100111010001101111111011111", 
    312 => "00001100111011110000110111110001", 
    313 => "11111100000001001101001000101101", 
    314 => "11111100111110001101011100001000", 
    315 => "00011000110111101111110000010010", 
    316 => "00010000111010010001001100010101", 
    317 => "11110001110101110001011100010011", 
    318 => "00000101000000100010010011101100", 
    319 => "00001010001001010001011011111100", 
    320 => "00011100110101111101100011010110", 
    321 => "00010011111110100001010100001001", 
    322 => "01000000110101000010110100000110", 
    323 => "00010010001111100001110111110001", 
    324 => "11011101000010001111101000010011", 
    325 => "00101100000111100001100000110100", 
    326 => "00000100010010111101111100101110", 
    327 => "00000111111010101111011100110100", 
    328 => "00010110111010101110000000010111", 
    329 => "00010011110010100001100011010100", 
    330 => "00111111000000101110011100010000", 
    331 => "00001110000001001110011100100110", 
    332 => "11101010000110001111100011101110", 
    333 => "00001000000011111101101111111011", 
    334 => "11011011001000000101000101000101", 
    335 => "11110110111100100010110011011111", 
    336 => "00010001110001001101010111111010", 
    337 => "00011100111001100011011000000010", 
    338 => "00011010001001100001000001000101", 
    339 => "11101011010000110001010011111010", 
    340 => "00000011101111011111010000010110", 
    341 => "00010010111001000000111011101010", 
    342 => "11101010000011100000001111001101", 
    343 => "11110110000011000001000100001010", 
    344 => "00111000001000100000110111101111", 
    345 => "00000101111011000001100111111001", 
    346 => "00101100111001000000001001010101", 
    347 => "00010110000101010000111100100101", 
    348 => "00000000001101010001100111011010", 
    349 => "01001101000100110001000111111110", 
    350 => "00001100001011001110100100011010", 
    351 => "11110110111110101110100111000001", 
    352 => "11110010111111000011001000001001", 
    353 => "11011111110110011100110100000111", 
    354 => "11100000111111001110010000011011", 
    355 => "00010111111010100001110000010001", 
    356 => "00010101000011001101100100001011", 
    357 => "00100010000100001111100000100111", 
    358 => "11111100111010011111010100001000", 
    359 => "00001011000001001110111011110000", 
    360 => "11111000000010010000110011011001", 
    361 => "00111110001001111101100100110000", 
    362 => "00000101000000001101010010111011", 
    363 => "11101010000110000000111011110011", 
    364 => "00001011111010011010100000010110", 
    365 => "10111011110010100010110111101101", 
    366 => "00101100111010110000111111001011", 
    367 => "00010100110100011110111001001001", 
    368 => "11111101000001111111011011110111", 
    369 => "00110110000011010000101011110000", 
    370 => "00011000000001010001011111100011", 
    371 => "00110010111001000001001111110110", 
    372 => "00110111110110001010101000000001", 
    373 => "00111011010000001101110011101110", 
    374 => "11110100111101011101000100000110", 
    375 => "10100100000001101101000111011100", 
    376 => "00010101111001110000100101001000", 
    377 => "00000000000011110000101011101000", 
    378 => "11101110001001001011100100010101", 
    379 => "00000001000100001111100100010000", 
    380 => "11101001001110011110000000000001", 
    381 => "11110100001000001100110111011111", 
    382 => "11010110000010001110000111111101", 
    383 => "00011001001000010000001011000011", 
    384 => "00100101111101110010011000001001", 
    385 => "00001101101110111110100000101011", 
    386 => "11000111111100011111010000110101", 
    387 => "00000011001011111101010111011110", 
    388 => "11111101001011001101000111110001", 
    389 => "00100111111100011110100100011001", 
    390 => "11101011110110101110000011110011", 
    391 => "00100100110011101100010011110010", 
    392 => "01100010110110001011011100001100", 
    393 => "00001011001000110001000111101011", 
    394 => "00100100111101010010010011101011", 
    395 => "00001000000110110000100100010000", 
    396 => "00011111001011001111100000010010", 
    397 => "11111011000101001111111100001111", 
    398 => "00100000000100001110111011101000", 
    399 => "00101010110010000001111100011001", 
    400 => "11100010111100111101101000001100", 
    401 => "00001100110100111111101100010010", 
    402 => "11001100001001011111011111011001", 
    403 => "01000111111101110001011000000011", 
    404 => "11101111110100001110110011100101", 
    405 => "00000000001101011111110111111110", 
    406 => "01000010110100101101111100010000", 
    407 => "00101110001011101111111000000100", 
    408 => "00010000111101011110100000001100", 
    409 => "11011001000001000001001000100111", 
    410 => "11111110111000001111111100010100", 
    411 => "00000001001100101110000000001110", 
    412 => "00010010111000111101101111011001", 
    413 => "01001100111010110010110111110010", 
    414 => "00011110111000001110101111001100", 
    415 => "00101101000001010000011100010001", 
    416 => "00001110110110001110111011111001", 
    417 => "11010010110110010001000000000110", 
    418 => "00000111000001110001100111011111", 
    419 => "00001011111111101101110011111110", 
    420 => "11000111000001010000100111010110", 
    421 => "00011011001011110000101011110001", 
    422 => "00000011000001001111101111011011", 
    423 => "00000000110100001110100000110110", 
    424 => "00001011101110101111101011111011", 
    425 => "11111110111101000000100011101101", 
    426 => "11011000001111111111101000100100", 
    427 => "11010100000000100010001100000000", 
    428 => "11010110110101001111001000010111", 
    429 => "00001010001001011100011111010101", 
    430 => "00000101111101010000011011010110", 
    431 => "11011001000010110001111111011111", 
    432 => "11100011001100000010010011110000", 
    433 => "00000111001000100000010111100101", 
    434 => "11111010001110101111111011100011", 
    435 => "00001000000000000000110011000111", 
    436 => "00010101000110111110100100011111", 
    437 => "00100011000000101111010000011111", 
    438 => "11110101000011111111011111100001", 
    439 => "11100011001000100001001011110000", 
    440 => "00111001110110000100000000001011", 
    441 => "10101110001101010000000100101010", 
    442 => "00000011001011001100010011111001", 
    443 => "11110100000010000000101000011111", 
    444 => "11101000000110111110101011010011", 
    445 => "01001001000010010001110111111100", 
    446 => "11010011110011000000110000000010", 
    447 => "01000000110110011110001111110110", 
    448 => "11111001111001000001100111101100", 
    449 => "11101101111111011100111100100010", 
    450 => "00000110001010000000010011100101", 
    451 => "00010100110011011101110100001001", 
    452 => "11110110000101001100001111100001", 
    453 => "00000010001001001110010000001101", 
    454 => "11111010111001011101100000011001", 
    455 => "00000001000000110000011011101101", 
    456 => "11100101000011101101000111101010", 
    457 => "00100011111001101111111011110010", 
    458 => "00000110111001011111110011110011", 
    459 => "00001110000001011111010111110101", 
    460 => "00010111010000010001001011101100", 
    461 => "00010010000000000000110000111010", 
    462 => "00010110001001110010000000100100", 
    463 => "11110011000111110000010011110011", 
    464 => "00011000111010111111001000001110", 
    465 => "00100100001100110001101100000111", 
    466 => "00001111000111111111101011011001", 
    467 => "11110101111011110000000000010011", 
    468 => "11111110001011101111011100111000", 
    469 => "00010000111100010001001100010111", 
    470 => "11111010111011010001100100000111", 
    471 => "11101000000011010000101011111101", 
    472 => "11100000110100101100101000010110", 
    473 => "11000111111010100010001011101111", 
    474 => "11100111111100111101010100000100", 
    475 => "00000111000000111111100100011100", 
    476 => "00000001000000100001010111101001", 
    477 => "11111110111111001110110111110000", 
    478 => "00000011110011111110000111110101", 
    479 => "11011111000100111101001100100011", 
    480 => "11101110001011011111010011110001", 
    481 => "11111110000010101110111011111110", 
    482 => "11111110000001011100101011101110", 
    483 => "11100110000011111111110100001000", 
    484 => "11111110111011100000100011101001", 
    485 => "00001000000011101111101000001110", 
    486 => "11011011010010101101111100101100", 
    487 => "11110111111010101100000000001010", 
    488 => "00010010111010001101101011111010", 
    489 => "11110110111010101101000100011011", 
    490 => "00000110111101011111111011100101", 
    491 => "00010101000001010000000000000000", 
    492 => "11111110000000000010100000000111", 
    493 => "00000010111111011111110100001010", 
    494 => "00000100100111000010000000010000", 
    495 => "00000100110010110011100000001111", 
    496 => "11111001001000001111110111111100", 
    497 => "00110001000011001111100011100101", 
    498 => "11101101000100101111100000100111", 
    499 => "00000010111101101100010100100101", 
    500 => "11101110111100011111111011101111", 
    501 => "11110101111000010000100111101101", 
    502 => "11110011000001010010110111111100", 
    503 => "11111010110111101110000011010001", 
    504 => "11111101111101110001101011111111", 
    505 => "11110101000000101111100000011001", 
    506 => "00010000111100101111101111101110", 
    507 => "11111100111011001110110100010011", 
    508 => "11111101110000111101001111101011", 
    509 => "11111110000101111011101011111001", 
    510 => "00001100001101100001000111010111", 
    511 => "00000011111110000100000000100000", 
    512 => "00100000010011111110000011010010", 
    513 => "11110100111011100001010010100000", 
    514 => "11111110111011110001001111011010", 
    515 => "00111111111111100001000000001001", 
    516 => "00001100000100100001110011110110", 
    517 => "11101000110111110000010001101010", 
    518 => "11111101000100011110011011111100", 
    519 => "11111100111100101111110100010100", 
    520 => "00010001111101011110011011100010", 
    521 => "00010000010000110001011100000110", 
    522 => "11110000001101000011010000000000", 
    523 => "00000001111101010010000000011001", 
    524 => "00010000001101110000010000110110", 
    525 => "11110110101001100001101111011001", 
    526 => "11100111111011001100011011111000", 
    527 => "11111111000100110010011111110110", 
    528 => "00101011110110111110001000000010", 
    529 => "10111100111001100010000000011110", 
    530 => "00100001111100110010100011110001", 
    531 => "00000010000001001111111011110000", 
    532 => "11111011000010101110110111111110", 
    533 => "11010011001010011111000011111110", 
    534 => "11101011111101101110101111100000", 
    535 => "00011000111100011110011011110010", 
    536 => "00010100001100100000101011100001", 
    537 => "11110001001000100000100011010001", 
    538 => "00011001001101010000010000011001", 
    539 => "00001011010011010001100011110011", 
    540 => "11101101000001100000011011111111", 
    541 => "00101001001010111111110100010000", 
    542 => "00011011111111011101011000000001", 
    543 => "11111101001011110000011111100010", 
    544 => "00001000000100010010000011110001", 
    545 => "11110001111111110001011011010100", 
    546 => "11110010000101010000000100001100", 
    547 => "00101100000010011111011000100010", 
    548 => "00010110111110100010111000001001", 
    549 => "11011110001111001111000000000011", 
    550 => "00000011000111011111111100100111", 
    551 => "11110100111101000010110000011110", 
    552 => "00001000000011101111111100101111", 
    553 => "00000011001001110000100111011111", 
    554 => "00100110111101110010101100001000", 
    555 => "11110000111110101111101000010001", 
    556 => "00000000001111010011101100011100", 
    557 => "11010100001001111101101100000111", 
    558 => "00101100110100110010000000010011", 
    559 => "11111011111001110000001000011000", 
    560 => "00110000000101100001000011110110", 
    561 => "11111010110111100000100100100111", 
    562 => "11110101001010110010000111100101", 
    563 => "11110000001011100000101011111110", 
    564 => "00000111111101111110111011111010", 
    565 => "11100011110110111111101111110111", 
    566 => "00100111000010010001000011110110", 
    567 => "11001100001000101111100001011011", 
    568 => "00000111111111101110001111110011", 
    569 => "11111010011111100001100110101011", 
    570 => "00000000001101101101001111101011", 
    571 => "00001101000001010000000000011000", 
    572 => "00010011111110010001111000100000", 
    573 => "00101001110111000000001000000010", 
    574 => "11110101110111001111100011111100", 
    575 => "11101111111110110001100000001110", 
    576 => "00010010111010111101011011010100", 
    577 => "11010110000100011111101011111100", 
    578 => "00000111111110110000001100101011", 
    579 => "00001110110111000001100000000110", 
    580 => "11010010001001111111100111101000", 
    581 => "11011111111011111110110000010101", 
    582 => "11101100000101110001000011111101", 
    583 => "11110111000011110010011000011011", 
    584 => "11111010001000010110010100000111", 
    585 => "11111011111110010100011111100011", 
    586 => "11111000101110100011000100000000", 
    587 => "00101010111011010000101011001001", 
    588 => "00100101111100100000011011011001", 
    589 => "00010001110110010010101000011011", 
    590 => "00010111110100101111001111001111", 
    591 => "00101101000010000100001111100000", 
    592 => "11101011110100110000011111010001", 
    593 => "11111000111101100000000000111000", 
    594 => "11000000110001111111110100110001", 
    595 => "01100100111100000010100100011111", 
    596 => "00000110110100001011111011110110", 
    597 => "11011111101010001110100000011100", 
    598 => "11011000000000101111111100010110", 
    599 => "00100111111110010010110000000000", 
    600 => "00001111111010011110001111011111", 
    601 => "11010010111000101101111111110001", 
    602 => "00001110111110100000010000000111", 
    603 => "00011111111000011110110111010010", 
    604 => "11110101001110000001110111100001", 
    605 => "00010101001001010000010000111010", 
    606 => "00100010111001100001100010111110", 
    607 => "00001000000001000010100010101000", 
    608 => "11100111000001101101001100101000", 
    609 => "00000011000011011111100111100100", 
    610 => "00010101110000110000100111110110", 
    611 => "11010001111110001111100100110000", 
    612 => "00011001001000000000000000011000", 
    613 => "11110110111101010000010111111000", 
    614 => "00010010111010101100110000000101", 
    615 => "00010000111011000001111111001110", 
    616 => "11000001110100100000001011010110", 
    617 => "11100010001010011010001011000001", 
    618 => "11011110010000000001110111100110", 
    619 => "11011111010011101010111000001000", 
    620 => "11111010000010100100001100010100", 
    621 => "11101111001010010010001000001110", 
    622 => "10110100001100001101111011010101", 
    623 => "11000010000101011111001111110111", 
    624 => "11110100001000010100100111110001", 
    625 => "10111010110101000000000011101001", 
    626 => "11100001001111101100101011111100", 
    627 => "11110101111101110010011000001000", 
    628 => "00001111000010110001100000000100", 
    629 => "00001111110110100001000001001000", 
    630 => "00101100000010111110111000100111", 
    631 => "11111000111101000000111000010000", 
    632 => "00101101000110010010111111110010", 
    633 => "01010111000000011010011100010010", 
    634 => "11111001000101001111100101001101", 
    635 => "00011000001100000001101011111110", 
    636 => "10111101100101001111000100001101", 
    637 => "11001110000010011100100000000111", 
    638 => "11101110000101110010000011111101", 
    639 => "00110100000010111101010111110010", 
    640 => "00011110101110101100011101101111", 
    641 => "11110111111110000010111000010100", 
    642 => "11101001001000001110011100000100", 
    643 => "00010000000101100000111011100000", 
    644 => "11011010111000100011010100111110", 
    645 => "11010111000111101111100111101111", 
    646 => "11110011000010111101110100001000", 
    647 => "00101101111110111101000100001011", 
    648 => "00011001000100110000000111000011", 
    649 => "00001101000010101111110111111100", 
    650 => "00000000111110101110001100001101", 
    651 => "11110111000100001111101100010010", 
    652 => "11100100111010011100101000010000", 
    653 => "00001101000000001110110100011000", 
    654 => "11101110000001111110111111011110", 
    655 => "11101000111100100001000011110100", 
    656 => "11110100000010011101101100010011", 
    657 => "00010000111111111111101100000110", 
    658 => "11111111000000001111110011100110", 
    659 => "00001000111101000000000011101101", 
    660 => "10111100000110010001100011011101", 
    661 => "11111101111111000000010011101110", 
    662 => "11000111001101101111111000100001", 
    663 => "00000110001011100011101010110000", 
    664 => "01000111000110001010000111101100", 
    665 => "11100110111100011110010111111100", 
    666 => "00010010111010100100011100010110", 
    667 => "11100010001011000001001111110000", 
    668 => "11011010000100110011111100110110", 
    669 => "11011111110101010000100111101100", 
    670 => "11010010000111110101000000000111", 
    671 => "00101111111100111111111011110000", 
    672 => "00101110000001111110001000000111", 
    673 => "00100001111001001100111100010111", 
    674 => "11111101000110001110011111110011", 
    675 => "00101001110111000000001000011110", 
    676 => "11011010000000010110110110111001", 
    677 => "00110111110011000010100100100001", 
    678 => "00010111111010001010101101011001", 
    679 => "11110100111101001111101111101001", 
    680 => "00010101010001101111010011110000", 
    681 => "11000010111101101111111110011011", 
    682 => "00010000011000000101010100001010", 
    683 => "00011110000111001111111010110001", 
    684 => "11101011001010001010101111100111", 
    685 => "11111010000000110010000111010100", 
    686 => "00000110111100111100001011101001", 
    687 => "11110111110011100000000111110111", 
    688 => "11110001000110111110101100010001", 
    689 => "00011011001001100010011010111111", 
    690 => "11100000001010011110000111110111", 
    691 => "11110101111001010000100000001010", 
    692 => "00000000110100100010100000000101", 
    693 => "11101000111110001110001000111011", 
    694 => "11101101110101010010111100001001", 
    695 => "11010011000101110000100000010001", 
    696 => "00100001000101010001011011010101", 
    697 => "00100001000000001110011100000011", 
    698 => "00001101111100010000010100110010", 
    699 => "11111100111101010001011011111101", 
    700 => "00110110110001101110010101000000", 
    701 => "10111010001001111110011100100100", 
    702 => "11110011000011110111111011111110", 
    703 => "11111000000101000011010011001100", 
    704 => "00000010000100111111010011110011", 
    705 => "11111001001011011110001000101011", 
    706 => "00100111000001101101011111101011", 
    707 => "11011101000011111111100000001111", 
    708 => "00010110000111101101001011110001", 
    709 => "11100110000010011110110000110011", 
    710 => "00000001000011111110010100011111", 
    711 => "00011110111001000000110100000110", 
    712 => "00000101000110111110101011100001", 
    713 => "00011000000100100000101111111111", 
    714 => "11001110000111001111001000001101", 
    715 => "00001100111001111110100011110110", 
    716 => "10111001001000011101000111110111", 
    717 => "11111001000001010011000111001011", 
    718 => "00001011000010010010101011110110", 
    719 => "00010100110101100000010111101100", 
    720 => "10111110001101101110101111111101", 
    721 => "11111100111000011111111111100001", 
    722 => "00000011000010010000001011100001", 
    723 => "11110111111110001111110111100010", 
    724 => "00010101010001110010110000000010", 
    725 => "11110000111100100010001000100001", 
    726 => "00010000111111001110111000110100", 
    727 => "00011001001010110000101000001110", 
    728 => "11111101111111000000010000111001", 
    729 => "01001101101110010010100011101000", 
    730 => "00001111000001011110010010111100", 
    731 => "11110111000101100000100000100001", 
    732 => "00011100001011010001100000010000", 
    733 => "11110011001011011110011000100000", 
    734 => "00101001001000000000110000000001", 
    735 => "11010110001011101110100011111101", 
    736 => "11000011110111000000001100111011", 
    737 => "11111111111101000010111011101100", 
    738 => "00000101110101110001100011101110", 
    739 => "11111111001000001110110011100100", 
    740 => "11011011111110111110011100000011", 
    741 => "11110000000001110011000011001011", 
    742 => "00010000111101011110100100011001", 
    743 => "11111100111100101111011000100111", 
    744 => "00011000111000100100101111010110", 
    745 => "11110100111000001011111111101011", 
    746 => "00111111111100001111010000001110", 
    747 => "00000110000100110010011100011001", 
    748 => "00000110111101011110100011110011", 
    749 => "00001010000010011110001000011100", 
    750 => "11111101000000111111010111101000", 
    751 => "11100100111110000001101111111101", 
    752 => "11111100111011110010000100001110", 
    753 => "11101100111100111111000011000110", 
    754 => "00001001101111010011000111000001", 
    755 => "00101000001000110000001100001001", 
    756 => "00010110001000000010111100001100", 
    757 => "00001011110110010000001100000000", 
    758 => "11111101000010101110011111011110", 
    759 => "11111101001100001011111000001011", 
    760 => "11110111110100111111000100000110", 
    761 => "11101100000010100001001000011000", 
    762 => "00010100000100010011101011110100", 
    763 => "00001000000100010000101011011011", 
    764 => "00000111111110110001100011101111", 
    765 => "11100000000010010000111100000110", 
    766 => "11001001000000110100110100010100", 
    767 => "11011001000011110010011111010100" );

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

entity ReadA113128_weights_0_0_31 is
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

architecture arch of ReadA113128_weights_0_0_31 is
    component ReadA113128_weights_0_0_31_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA113128_weights_0_0_31_rom_U :  component ReadA113128_weights_0_0_31_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

