-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA113128_weights_0_0_1_rom is 
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


architecture rtl of ReadA113128_weights_0_0_1_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00001010111010110101101111010010", 
    1 => "11100111011000110010001111100111", 
    2 => "11010101001001100101000100001101", 
    3 => "00011110001011110010001000010010", 
    4 => "00101100110101011110111111100001", 
    5 => "11101011000101011110011000010111", 
    6 => "00100111010000101100010011100110", 
    7 => "00100001111101010000100100001100", 
    8 => "11101010100001011101001111011110", 
    9 => "11001110010010101101000011101100", 
    10 => "00101010001011110001000111100010", 
    11 => "00100000000000000001011100000110", 
    12 => "00110001111110010001100100101001", 
    13 => "00010011000011010101001111110000", 
    14 => "11001101001011110001000000001111", 
    15 => "00100011110100100100000100100001", 
    16 => "11010100000001000001011011010100", 
    17 => "00011010110111000001100011011001", 
    18 => "00011000000100111100101000011011", 
    19 => "11101100110111011110010011110000", 
    20 => "11110100111101111111100011101111", 
    21 => "01010100111111000000101100100111", 
    22 => "00110000000110100000010100010011", 
    23 => "11111100001101111111001111111101", 
    24 => "11100100000100010001110011101011", 
    25 => "11111011111111110010110011100011", 
    26 => "10100100000010110010101000001000", 
    27 => "00111100111111110011100000001000", 
    28 => "11111010111001101101010111100110", 
    29 => "11100100000010001011000000100010", 
    30 => "00001101000011111101010011100101", 
    31 => "11101011000011011111011000001001", 
    32 => "00011010111011001101111111011010", 
    33 => "11111011001000001110111100000111", 
    34 => "11101010001101000000111000001110", 
    35 => "11111111000101010010001111101100", 
    36 => "00001000110101010001010111110001", 
    37 => "00001001110010011111001100010110", 
    38 => "00101111001000110110110000000100", 
    39 => "00001101111011011111110011010100", 
    40 => "00111000110010111110000010111000", 
    41 => "00110001001000000001001000001001", 
    42 => "00010000000011110000110011110001", 
    43 => "01000000110110010100000100101111", 
    44 => "11011111000111000011010100010000", 
    45 => "11111100000111010000110111100011", 
    46 => "11010000111001111110011000000010", 
    47 => "00000111000001010001010011010001", 
    48 => "00100001010111111100001011100000", 
    49 => "00111000011011100010001000100100", 
    50 => "11000110000111110010010111100010", 
    51 => "11101111110101001100001100011010", 
    52 => "00011010110101101101101000000111", 
    53 => "11110000001000011110111000001010", 
    54 => "11111010001010000001010111111111", 
    55 => "11101001000100001100111100100100", 
    56 => "11101100111111011110101000010101", 
    57 => "11111001111010100010011100100010", 
    58 => "11101100111110101101011111101110", 
    59 => "00110000101100000001000011111011", 
    60 => "11011100000101110010000111111111", 
    61 => "00101110000001001111011100100001", 
    62 => "00000110001111111110100000000001", 
    63 => "10111011110100011101111101000000", 
    64 => "00100000000110110001000111110111", 
    65 => "01001001110111010010000010111100", 
    66 => "11111010111000010011001000001110", 
    67 => "10010111111110010000011100000010", 
    68 => "00000111110100101111110000000011", 
    69 => "00000001111010000000101111110111", 
    70 => "11001000000001110001001100010100", 
    71 => "11111101001001001011101011010111", 
    72 => "00001110000110110001111011110010", 
    73 => "00001111001010100000000100101101", 
    74 => "11101001111011100000000011101010", 
    75 => "11111001111110101110101011100011", 
    76 => "11110000000000100000010000010001", 
    77 => "10101000111110001111000011100000", 
    78 => "11111111001001001111010111110100", 
    79 => "00001001000111010000100111011011", 
    80 => "11111101101101011111101011101110", 
    81 => "11000110001001101110000111111001", 
    82 => "00000000110111001110000100001000", 
    83 => "11110010101101100001000000001111", 
    84 => "00010010000000111111111000010011", 
    85 => "11011100110101111111101100000101", 
    86 => "00101011001011110011100100010010", 
    87 => "00010000001111101111000111000010", 
    88 => "11000010001000000001100111111101", 
    89 => "00010100101011010011010101110101", 
    90 => "11100111110111000000001100000100", 
    91 => "00001111000000010001111100000011", 
    92 => "11101001001100101111111011101000", 
    93 => "00100011000001111111010100010011", 
    94 => "00011110111100000000100011111100", 
    95 => "11110101111011011111000000011001", 
    96 => "00001101000010101110010111110110", 
    97 => "00001001111110011110111111101111", 
    98 => "11110100001010010001011000011110", 
    99 => "11001110000100101101100111000110", 
    100 => "00000100111111001111101100001010", 
    101 => "00001101000000110010101000000011", 
    102 => "00000101111011011111010011101101", 
    103 => "00000011001001010010001011101011", 
    104 => "00001001001001111111110111110001", 
    105 => "11111100000011001111110011111101", 
    106 => "00001001000110110000001111100100", 
    107 => "11101101000111110010011100001111", 
    108 => "11110011000010100000111111100000", 
    109 => "00010000111111011111001011001110", 
    110 => "00001111111110100001110100000111", 
    111 => "11100110000001000001000100010010", 
    112 => "00000101111001001111011000001111", 
    113 => "00010000110100001110101000001110", 
    114 => "00111100010100011101100011100001", 
    115 => "00100100000010111110000111001110", 
    116 => "00001100000000110001000000110011", 
    117 => "11011001111111010001000011110111", 
    118 => "11101011111011001110101111101001", 
    119 => "00100100110001111101100011111110", 
    120 => "11010110000011011110000111101001", 
    121 => "11101000111101100000011000010000", 
    122 => "00000000000101000000100111011101", 
    123 => "11110111001110011110110111101000", 
    124 => "00011011010010000000100111100000", 
    125 => "11111011111011000001111011110001", 
    126 => "11111011001010111101100011010011", 
    127 => "00011000000010111101110000000001", 
    128 => "11110000111111010001110101111110", 
    129 => "11111101000011000001101011101010", 
    130 => "11100001110011000001110111010101", 
    131 => "00010001001110110011001011111011", 
    132 => "00000111111101001110000100010100", 
    133 => "11101101111101110000000000011100", 
    134 => "00011100000010100001001111111100", 
    135 => "00000000111001111111010011101101", 
    136 => "11100110111001101101100000011111", 
    137 => "11100011001000011110100011101111", 
    138 => "00001011111100101110110100010110", 
    139 => "11100011110111011111011111011001", 
    140 => "00000001111111111111111100001110", 
    141 => "11100010001000110010011011110101", 
    142 => "00001111001100101111011000101010", 
    143 => "00010001000001111101111111110100", 
    144 => "00011011010010010100011111110000", 
    145 => "00101111111101100001111111101101", 
    146 => "11100100000000001111001000101011", 
    147 => "11101111000011011101000011110110", 
    148 => "00101110111100101110100011001011", 
    149 => "00000110010010011111011011100111", 
    150 => "11110010110111010001100011101111", 
    151 => "00000000111110100001010000000111", 
    152 => "11111000001010001110101000000110", 
    153 => "00011111000010010000101100010100", 
    154 => "11111010001000110011001011110101", 
    155 => "11111000111001000000000100001010", 
    156 => "11101101000100111110001111111111", 
    157 => "11110100000110100011111100011110", 
    158 => "00010010001011010000111000001111", 
    159 => "10011100001110011001111011101011", 
    160 => "00110100000100101111100111110011", 
    161 => "00100011111000110101010000011001", 
    162 => "11110010000010101111010100011111", 
    163 => "11101101001011001110100000010000", 
    164 => "11101011110010110000100000000110", 
    165 => "00011011101101001110110100000110", 
    166 => "01001011000000110000011111111010", 
    167 => "11101101111111101111110000100110", 
    168 => "11110001110111011101101000001000", 
    169 => "00001001111011101110100000100000", 
    170 => "00011100000100101110000000101101", 
    171 => "01011001000001110001100000011100", 
    172 => "00110111111010111110110111011110", 
    173 => "11110011000010001110001110110011", 
    174 => "01000001111010001111101110110000", 
    175 => "11011011000111001100101110111000", 
    176 => "11111110111101101111110100101010", 
    177 => "10110101111111001111110101000001", 
    178 => "11111110110000011110010000001111", 
    179 => "00111000110101010010101000000000", 
    180 => "11011100111110111100001011011111", 
    181 => "00101101000101010001100111110100", 
    182 => "10101101000001101101000100000011", 
    183 => "00100000111111110010101111011110", 
    184 => "11100110000100110001100010110010", 
    185 => "11101011111101000001100111101100", 
    186 => "11110011000000111111101001000011", 
    187 => "11001010111110101101111100000010", 
    188 => "00110011001000110001101000011001", 
    189 => "11110001001001101100101000110000", 
    190 => "00000111111010000010101111110101", 
    191 => "11110001000011100011010111101010", 
    192 => "10101001000000111101110011010011", 
    193 => "11101000110100001100001111011111", 
    194 => "01011111000101010000111010011001", 
    195 => "11100100000011010000101111100000", 
    196 => "00011011111100110011110100001011", 
    197 => "01000111110111000000100100001101", 
    198 => "00100100111010010001010100101010", 
    199 => "10011000110111001110110001010100", 
    200 => "11111011000100010000110000000001", 
    201 => "00000101110101100001010000011001", 
    202 => "00000111110110110001110000001111", 
    203 => "00010101001100010000001111000110", 
    204 => "00000010111111101110111111110010", 
    205 => "00001100111011010010100011110011", 
    206 => "11111100111001100001011100111001", 
    207 => "00000100110011010001010100110110", 
    208 => "00001101001011100000000100101110", 
    209 => "00010001001000110010111100100001", 
    210 => "00110100111110100000000000100000", 
    211 => "10100110000101011111011000010001", 
    212 => "11011011000011000000010011101101", 
    213 => "11100001110100010000100100010001", 
    214 => "00001011000011100001101100001100", 
    215 => "11111011001000010000000100000110", 
    216 => "11111111001001110011001111101101", 
    217 => "11011111111100101110100011001101", 
    218 => "11110000000101010001110100000110", 
    219 => "11010000110100010010101000110000", 
    220 => "00100101000110010000111111101111", 
    221 => "11011010001110001110000000000111", 
    222 => "00010011110010100000110011010001", 
    223 => "00100100111100010001011011111101", 
    224 => "01011000111111001111000111011111", 
    225 => "11101001111000010001111011100101", 
    226 => "00101110111010010001011100000000", 
    227 => "11011110001100010000110110100001", 
    228 => "00101100111101110000001111111100", 
    229 => "00001110000010111110101100100101", 
    230 => "11011110111100101110110111100110", 
    231 => "10111010111100100001000000101000", 
    232 => "00110001101010110000011000011010", 
    233 => "11110010111111110000100100101000", 
    234 => "11110010001010010000011100001011", 
    235 => "11100000000101100001100111000100", 
    236 => "00101001000110101101100100100001", 
    237 => "00011110000101011101011100010111", 
    238 => "11011011110111001101100100001111", 
    239 => "00001110000111011111001000111111", 
    240 => "11111100111101011111101110110000", 
    241 => "11101110001011000001010011101010", 
    242 => "00010101000010111111001101001100", 
    243 => "11010011101111110000010100011000", 
    244 => "00011011111111111110110011101011", 
    245 => "00000101111000001101111000100010", 
    246 => "01000101000100010001011011010100", 
    247 => "11010111110101111110101111001101", 
    248 => "11111101000110100000011000001101", 
    249 => "11111001000011010011000000011000", 
    250 => "11100110111100110101010100100100", 
    251 => "11110010101010010100010011010111", 
    252 => "00011001111000001111011100111110", 
    253 => "11110100000010001111101111110111", 
    254 => "11111011111101010000100011000101", 
    255 => "11010000111011100001001111110100", 
    256 => "11000000111111000000101011101110", 
    257 => "11111001000101001110010000010011", 
    258 => "11101001000101100001011100001001", 
    259 => "00000100111010010001110011100111", 
    260 => "11100000111011001111101011111011", 
    261 => "00010001001101011111100000010000", 
    262 => "11110100110101011111010011111001", 
    263 => "00000101010000001101100000010011", 
    264 => "00011100000010000000101111110001", 
    265 => "00001101001110100001001000001101", 
    266 => "00010100000111001101110000000100", 
    267 => "00100111001000101110000111100001", 
    268 => "11100001111100011110010111011011", 
    269 => "01000000111111000010111111100011", 
    270 => "11100000000111000000101000101111", 
    271 => "00011001001011101100111111011101", 
    272 => "00011111000100100000111111011101", 
    273 => "00010111000101110010001100011111", 
    274 => "11100101000001011110010011101100", 
    275 => "00011110000010001111001100010001", 
    276 => "00011010000000110000111000001110", 
    277 => "00101011111101111101010011010111", 
    278 => "11100110000001101110011000001010", 
    279 => "00101011000011100001100000100011", 
    280 => "00011011111010111101011000011011", 
    281 => "00010101111010010000000100001001", 
    282 => "00001100110111101111010000100011", 
    283 => "11111101000001010001100000101001", 
    284 => "00001000000111010000111100101101", 
    285 => "11010101111011100000000011011100", 
    286 => "11100001000001110010000011100101", 
    287 => "00001111111111010011110111110001", 
    288 => "00010100110101111101100000000001", 
    289 => "00010001111000101101010010111011", 
    290 => "11011110111011011111011000000000", 
    291 => "00100011111011011111111111010000", 
    292 => "11110000000010111110110111110100", 
    293 => "11110111001111001101000111101110", 
    294 => "00011000000010011111010100011001", 
    295 => "00001111000010010000010111011010", 
    296 => "11011110001000010000011011111111", 
    297 => "00011011000001000000000100100000", 
    298 => "11100100000001100000000011110000", 
    299 => "00000111000101011111110111111000", 
    300 => "00100011111110000000000111110010", 
    301 => "00110000110100101110111000010110", 
    302 => "00010000000001011110110111101010", 
    303 => "00011101001010001111101100011111", 
    304 => "00111101000000001111111000010111", 
    305 => "11101111001101100000101011001100", 
    306 => "00000110111011101101101011100110", 
    307 => "00000001111110001111011000010011", 
    308 => "00001001000011000000001111101011", 
    309 => "00101011110111001111011000101101", 
    310 => "11100100111101110000001100001000", 
    311 => "11011110110000100000100100010011", 
    312 => "00001111111111000010101100110101", 
    313 => "11011101101111000000000000000001", 
    314 => "01000110111110000000100000110001", 
    315 => "00001001111101001110100000000010", 
    316 => "00000101111000000000111111111111", 
    317 => "00010111000001101111010111010011", 
    318 => "11001111110110111111001100001010", 
    319 => "11110100111011100010001000110101", 
    320 => "00010100110101011111010011100001", 
    321 => "00010100110101110010101111110101", 
    322 => "00000101001100000011010000100000", 
    323 => "11110111100101000001100111010110", 
    324 => "00011010000000011110001000010101", 
    325 => "11111001111101010000011111110000", 
    326 => "00000101001100001111100111010100", 
    327 => "00110000000100001111111000101110", 
    328 => "00000100000101111111111100010001", 
    329 => "11100111111011001111001111101000", 
    330 => "11010011000011111110010011110011", 
    331 => "00011111000001011111110111001001", 
    332 => "00000010000101100010010111110100", 
    333 => "00011100111101010011100100001100", 
    334 => "11000001001000111110110000010111", 
    335 => "00101000111111111110111100010101", 
    336 => "11101000000011011100110000111110", 
    337 => "00001011111111000001010000011100", 
    338 => "11111101111011010000000100000101", 
    339 => "11111000111010111110111111000010", 
    340 => "00010110111100110000010011110011", 
    341 => "00100010001001011101001011111000", 
    342 => "00011100000111111010010000110100", 
    343 => "01011000000111110000000011001110", 
    344 => "11100110101111110011100011110011", 
    345 => "11011011000111011101110100010011", 
    346 => "11110010010001010100111000011010", 
    347 => "11110110110101011111011100011111", 
    348 => "00000100000010011111101100010110", 
    349 => "11101100111101001011010100000011", 
    350 => "00110101111111100001011011100011", 
    351 => "00110011111110110000001100100101", 
    352 => "11110101111110101101010111010010", 
    353 => "11011110000101000000001111110101", 
    354 => "11101110000100100000110000001000", 
    355 => "11110000101111101110101100010110", 
    356 => "10101110111100011111111000110000", 
    357 => "00010101101110110100011011100100", 
    358 => "11111001000100110001000011110110", 
    359 => "11110111111100010001000111010010", 
    360 => "11111110000001110000101111010110", 
    361 => "01100110110011000100000000100001", 
    362 => "00101110111000001111111111110001", 
    363 => "00010111001001001110101111101000", 
    364 => "00010111111010000000001011111100", 
    365 => "00100000110110111111111000001011", 
    366 => "00010101000010011111100101101110", 
    367 => "11100111000001011101101100001110", 
    368 => "00100000000000100010100100011000", 
    369 => "00001001000110110000001000000110", 
    370 => "11000011001011011111110000001101", 
    371 => "00000000000001001101110100000111", 
    372 => "00100101111110001111100100100001", 
    373 => "11010011110111111100011111111111", 
    374 => "00011111000100011111010000001110", 
    375 => "00000101000001101101110111010100", 
    376 => "00001011110010111101000011101101", 
    377 => "00001000111110000001000000100001", 
    378 => "00001000000011001100011100110111", 
    379 => "00001000001000000010100000001100", 
    380 => "00111111110111001111111011110111", 
    381 => "11100000000110101100010111110101", 
    382 => "11100000000110010001100100111000", 
    383 => "00000100000100111111101100011110", 
    384 => "00100011111000001111111000010001", 
    385 => "00101101000010000000111100101101", 
    386 => "00010011111100100000011000000010", 
    387 => "00001111001111011110111111100100", 
    388 => "11110100111000000000110111111010", 
    389 => "00010000110000001111001000101011", 
    390 => "11011111111011111100110000000101", 
    391 => "11111001110111010000010000111010", 
    392 => "11010000001101011111011100100110", 
    393 => "11001100110110001111111111011111", 
    394 => "00000111101110100000011111000100", 
    395 => "00010011000100000011110010100100", 
    396 => "11101101000100111101101100001101", 
    397 => "00000010001010101101010111011101", 
    398 => "00111101000100111111000100011001", 
    399 => "00010100110010100010000000111001", 
    400 => "10110001000101001110111011101010", 
    401 => "11110111111110100001100000100010", 
    402 => "00010101000101001101110011111001", 
    403 => "01001000000110110000111000000110", 
    404 => "11101011110011010001011011110111", 
    405 => "11010000111100001110000111101111", 
    406 => "00000100001000110001100011110010", 
    407 => "00010001000001100001010111001111", 
    408 => "00000100000101000000110100100111", 
    409 => "00011010111111010001000101100001", 
    410 => "00100001111111011100001000111010", 
    411 => "00100101000111101111010000001010", 
    412 => "11110111111001111111100111011010", 
    413 => "11100100001001101010110000000111", 
    414 => "11111110001110101111111111111011", 
    415 => "11111111001100010001011010110110", 
    416 => "11111101000011101111001100010001", 
    417 => "11000110110010011111100011111011", 
    418 => "11111101111100011110100111111101", 
    419 => "11101110111100110000000110100010", 
    420 => "11010111000011111111001011111011", 
    421 => "00101110000001000000011110111100", 
    422 => "00010001111011100000000100000010", 
    423 => "00100110101011101110011100010001", 
    424 => "11110001111111000000000011111011", 
    425 => "00001110000100100000111100011010", 
    426 => "10010101110000100001100011110000", 
    427 => "00101100101100101111110100000110", 
    428 => "00001001001000000001000011001111", 
    429 => "11111110001000110000111111110101", 
    430 => "11110100111111011111101011111111", 
    431 => "11101111111100111110111011110111", 
    432 => "00100001111000000000110100000010", 
    433 => "00101100000111010101111100111000", 
    434 => "11001001001110011100000011101111", 
    435 => "00000010010001010010011000101000", 
    436 => "11100010111110100101000011110010", 
    437 => "00110101000000010011100101001101", 
    438 => "11111101111001100010000000101111", 
    439 => "11111001110111010010101100001001", 
    440 => "00100001000110011111111000010000", 
    441 => "00101001110100100011000100101001", 
    442 => "11110101001000001111011011100010", 
    443 => "00010111111011010011001011110010", 
    444 => "01000110110111011110111011101100", 
    445 => "00110100111100111010010111011111", 
    446 => "00001100001011101111111100010111", 
    447 => "11011101110010100011010100011110", 
    448 => "11110001111111010001100000001110", 
    449 => "00001100000010011111101100001110", 
    450 => "00000100000011100000111100101001", 
    451 => "00000011110100110011001000010010", 
    452 => "00010001001011100010011000011010", 
    453 => "00010001100110010100010000010100", 
    454 => "00010111111010111111101011110000", 
    455 => "00001000111110001110100011110010", 
    456 => "00000010111100000001011000010101", 
    457 => "11011110000000100010110011111001", 
    458 => "11100110000100000001000011100001", 
    459 => "00100101111111111111111100001001", 
    460 => "11110011111011101111111000000101", 
    461 => "00011111110000000000111011111100", 
    462 => "11110111111110111110101111111010", 
    463 => "00000110111110111111001000100111", 
    464 => "00000100000000101111101011101101", 
    465 => "00001010111111001110110000000011", 
    466 => "11110001000000010001100111110110", 
    467 => "00001001111111001100010000001011", 
    468 => "11111001000010110001110111111010", 
    469 => "00010011000010111111111000011000", 
    470 => "11111011110111011101000111110101", 
    471 => "00110110111011000000110100000111", 
    472 => "11111000001001101100010111110101", 
    473 => "11110001111101110011100111101110", 
    474 => "00010101111101000000110111100010", 
    475 => "01000001110011101110100111010010", 
    476 => "11111000111111011110100000000001", 
    477 => "11010100111111101111111111111001", 
    478 => "00011110000010101110001000010010", 
    479 => "11001010010000010011110111010000", 
    480 => "11101010111110111111000000000110", 
    481 => "00000100000010000010011000000111", 
    482 => "11110000111111010001001011110001", 
    483 => "11111001000000101101111100000010", 
    484 => "11010010111110000000010111110101", 
    485 => "00100111111111011100111111111100", 
    486 => "00010010111011001101100011111000", 
    487 => "00001101000010111101000000111110", 
    488 => "00000000111011101111101000100000", 
    489 => "00000011111101001111011000001100", 
    490 => "00000101110110010000100100011000", 
    491 => "10110111111100011110111000001110", 
    492 => "11000000111001110011101000010001", 
    493 => "00000100000001110000000111010001", 
    494 => "00010010000110100000000100001010", 
    495 => "11001110111111111111001111010100", 
    496 => "11101011111110100000101100000110", 
    497 => "11111001111111110001010000100000", 
    498 => "00111011000010011100011011011000", 
    499 => "11110001000011001111010111101000", 
    500 => "00000101111100000000100100001100", 
    501 => "00011011000101010010001100000111", 
    502 => "11101010000010001111101000000100", 
    503 => "11100101111111111111111000000101", 
    504 => "00111000001110011101000000110000", 
    505 => "11100111111101010010001011101011", 
    506 => "11101010111010001110011000111101", 
    507 => "11100010000000000011010111111110", 
    508 => "11110011110111011111110000001010", 
    509 => "00010001000110101110110000010001", 
    510 => "01000110110110010000100111101011", 
    511 => "11111111111000101110100011000001", 
    512 => "11110010000001101111110011111101", 
    513 => "00001111000100111111110100001001", 
    514 => "00101001111101101110111111111110", 
    515 => "00000010111000110000010000000111", 
    516 => "00101100001110111110100000001000", 
    517 => "00000111111110001110110011111011", 
    518 => "11101111111001110001010111110001", 
    519 => "00011000111010010000101111111010", 
    520 => "00101000000111010000111000000001", 
    521 => "11111001000000110001001111101101", 
    522 => "11110101111000111101111100110000", 
    523 => "11110101000101000000011111110100", 
    524 => "00010011111011011101010000000001", 
    525 => "11011100110000111111010111111011", 
    526 => "00000111111110011111011000010001", 
    527 => "00010011101101100010110100010100", 
    528 => "00100011000100011111101000100101", 
    529 => "00010111000110001101010111011010", 
    530 => "00011110111001101101101100100100", 
    531 => "00111000001000101111110111011010", 
    532 => "00000000110000000011101000011001", 
    533 => "10011101000000101110011011001001", 
    534 => "00110011000000111111111011101001", 
    535 => "00000000001101101101110011011111", 
    536 => "00101111001001101110100000010100", 
    537 => "00110000111110000000101011010010", 
    538 => "00000111110011010001110111111101", 
    539 => "00100001000101110000001000010001", 
    540 => "00100000110100101111100011111110", 
    541 => "00001111000001110000101011111010", 
    542 => "11101111111000011110101111101110", 
    543 => "11101101001000111111010100000001", 
    544 => "00000000110110101101110011111000", 
    545 => "11110100001100111101111011011100", 
    546 => "00001100110101001101111100010111", 
    547 => "00111000111011010011000100011011", 
    548 => "00001100000110110000010000101011", 
    549 => "11111011000000111111101011001011", 
    550 => "00000101111010101110001100010111", 
    551 => "11111100111011101110001000010001", 
    552 => "11111011111100011110100111110011", 
    553 => "00100101110101111111000000000110", 
    554 => "00010010111111011101000000011011", 
    555 => "00110111101111101111100010101101", 
    556 => "10111001000011010000011011111110", 
    557 => "11111111111011000011100011110100", 
    558 => "11000000110111110001001000000100", 
    559 => "00001011000011110000011111011001", 
    560 => "11111100001001011101111100011001", 
    561 => "11100100000111101101101000001100", 
    562 => "11100000000101011110011000010100", 
    563 => "00101110001001011100011111110111", 
    564 => "00110000111000101110100100011110", 
    565 => "00101111000011110011010111111001", 
    566 => "11111011000000100010000100010101", 
    567 => "11111110000100011111101011101101", 
    568 => "00001101000010100010011100111011", 
    569 => "00000110001101000001101100011000", 
    570 => "11101110000110000001001111111010", 
    571 => "00000010000111011110100000001110", 
    572 => "11000011000000000011000111110001", 
    573 => "00000000001001111010011111111000", 
    574 => "11111111000001111111011100010010", 
    575 => "00001011001000001101010100000100", 
    576 => "00000001001100000010000011100101", 
    577 => "00011001110010110001000100010100", 
    578 => "00110111000100011110011111111111", 
    579 => "11010101110110010000011011111110", 
    580 => "01010100001010010000000111010011", 
    581 => "11111111101101000001011111111111", 
    582 => "11111010001010110000101011111001", 
    583 => "11001101001000000011100011100110", 
    584 => "11011110001000100011111111100010", 
    585 => "11111110010110011111000111000011", 
    586 => "00111101110010111101000001001010", 
    587 => "00111101000000000010100111011111", 
    588 => "10101000001011100001001011010110", 
    589 => "11001100000010110101010111110101", 
    590 => "11010100000010001111010000001000", 
    591 => "11111100000110110000101111001011", 
    592 => "00011010000110101111010000011010", 
    593 => "00100000010001110000011100111001", 
    594 => "11100011000100101100100000011110", 
    595 => "11101101110110110011111100111100", 
    596 => "11111010000100100001011100011000", 
    597 => "11101110000111001101010100101001", 
    598 => "11100111111011000010101100110001", 
    599 => "01001010111011010001111000100011", 
    600 => "00100001000101000010110111110111", 
    601 => "11101111111111011111010100101111", 
    602 => "00100001000100000001001001001110", 
    603 => "00011000111101000000111111100110", 
    604 => "11101100000100100001111011100010", 
    605 => "11110010110100100010010111010001", 
    606 => "11011000001100001111001100001101", 
    607 => "10101000000001111111110110110100", 
    608 => "00000001001100001111111100000001", 
    609 => "11111100001100000010010111001110", 
    610 => "00101001000011110100101100110001", 
    611 => "00001001110100100001101111010010", 
    612 => "11110000110111101110001000010100", 
    613 => "11001011111100011100101000100100", 
    614 => "10110101010111011011101011101111", 
    615 => "00000001000000000001101100101100", 
    616 => "00001110010001001010101111001000", 
    617 => "01000110000001000000000011111011", 
    618 => "11100101000011100000010000001110", 
    619 => "00100001111000110010000000000110", 
    620 => "11101110110111101111110111011000", 
    621 => "00010101110100000010111111111000", 
    622 => "10111110000111101110010011000000", 
    623 => "01001101110101000011000100000001", 
    624 => "11110001111100110010111000101011", 
    625 => "11110100000000110001000011101010", 
    626 => "10001100111110010000011111101000", 
    627 => "11111101001100000010110011100101", 
    628 => "11110110001000011011111100001110", 
    629 => "00101011111110101110000011111010", 
    630 => "11100010111000000110010111110001", 
    631 => "11010101000010101101110000100000", 
    632 => "11100111011100111100100000101010", 
    633 => "00111101111000100001000111010011", 
    634 => "11111101111111111110010100111001", 
    635 => "00000100010011001111101100000011", 
    636 => "00010010000000110010101000000000", 
    637 => "00101100110101111111001011110010", 
    638 => "11000110111110110000001111110011", 
    639 => "00111001000111001011111100010110", 
    640 => "11111101000011010011000100110000", 
    641 => "11011110001000010001000000010001", 
    642 => "11111011111001100000000111110110", 
    643 => "11101011111100110000000011011110", 
    644 => "00101000001001110001000100000110", 
    645 => "00000111001101101110001111111110", 
    646 => "00000110110110000010101100001100", 
    647 => "00011110111010010001100111111011", 
    648 => "00001011000100010001011100101110", 
    649 => "11011110111110100000011011011111", 
    650 => "11110001000010001110110011101111", 
    651 => "00001100111010110000011100011100", 
    652 => "00001101001100010010000110011111", 
    653 => "11111010111001011101111000000010", 
    654 => "11101110110010110001111111101001", 
    655 => "11100111111001101100010011010010", 
    656 => "00000111111001111110110100110100", 
    657 => "11010100000101010000001000000100", 
    658 => "00000000111100100000011011101000", 
    659 => "00011001000011101110111011111101", 
    660 => "00000000000000011101000000110111", 
    661 => "00010110111000001111010100011101", 
    662 => "11111100001000010000011000000010", 
    663 => "00110101111011100010100111110111", 
    664 => "00001100001001011110100011000100", 
    665 => "11111010110111111101010011100110", 
    666 => "00010100000000101111110011101011", 
    667 => "00010011111101001101111111110011", 
    668 => "00001010111100101101100011111000", 
    669 => "00101111000100011110111100001001", 
    670 => "00010010000101110001111111100000", 
    671 => "00011000001000001110110101010111", 
    672 => "00110010001011110001110101011101", 
    673 => "00111100111101100010010011010000", 
    674 => "11010110111001001110011111100101", 
    675 => "00011110000001111111101111001100", 
    676 => "00001100111100011101110011000111", 
    677 => "00011101111111000001011011101000", 
    678 => "00100110111011110000110011110101", 
    679 => "00000000111000111110110000011100", 
    680 => "00011101111011111110100000111101", 
    681 => "00101010000100001110000011100111", 
    682 => "00011010110011110000000100010111", 
    683 => "11010010000101000001100000001101", 
    684 => "00011111111100110000001111110101", 
    685 => "11110000001101110000101100011100", 
    686 => "00000101000111000001000011001010", 
    687 => "11111000111001010010010000100110", 
    688 => "11100001110101101111110011101011", 
    689 => "00100000111010110000111111011010", 
    690 => "00000100000110101110101111111100", 
    691 => "00100000000011001101011100011010", 
    692 => "00001001001000011111101111111111", 
    693 => "00001111000000001110111011110110", 
    694 => "11111000110101011110110011111011", 
    695 => "11111000000010010000000000100111", 
    696 => "11101111111011001110100100000011", 
    697 => "00011001111111111101101011110101", 
    698 => "00010000000100010000001011001101", 
    699 => "00000001111101001111111011111111", 
    700 => "00101110000100000001011000001110", 
    701 => "00010000110101100000100111111111", 
    702 => "11110100000010110010001100001000", 
    703 => "11101101111001100010000000010100", 
    704 => "11110100000111000000110000010001", 
    705 => "00001000000100110011111011101100", 
    706 => "00100011000000101101110000000011", 
    707 => "00010111111110010010000100100100", 
    708 => "11011110111011011110111011111100", 
    709 => "11111100111101011111111011110010", 
    710 => "00000101101101000001101100100101", 
    711 => "11000100000101001100111100101010", 
    712 => "00100011000111110010000011101111", 
    713 => "00010001000100010010100111110010", 
    714 => "00010101010101011110110100001010", 
    715 => "00000010000100000001110011100100", 
    716 => "00001011000000100001101011101000", 
    717 => "11000011001000111110100100100100", 
    718 => "11100011000011000000011011100101", 
    719 => "00011110111110000000101011101110", 
    720 => "11101011000111011100100111111111", 
    721 => "00010001010010101100000111110101", 
    722 => "00010110111010001111001000100011", 
    723 => "11000111001100100010010111011011", 
    724 => "11101110111101010001001111111000", 
    725 => "11011001111011011101000011110000", 
    726 => "11110000110100000010000000010010", 
    727 => "00110101111001101111010000110110", 
    728 => "11110010000010110001011100001101", 
    729 => "11011000001111000010000011011100", 
    730 => "11111110000111101110110001000011", 
    731 => "00110100000010111100100100100111", 
    732 => "00110101111110111101011100001101", 
    733 => "00010011001100111101101011110101", 
    734 => "00010100010001000000010011100001", 
    735 => "00110001001111011101110011101000", 
    736 => "11110010010010100000110011110001", 
    737 => "00011011110111001101001000001011", 
    738 => "00010011111001110010001000001110", 
    739 => "00001110000110001101001100001101", 
    740 => "00000100000111110001110000110000", 
    741 => "00000010111111110010011111101000", 
    742 => "11111000111010001111100111011101", 
    743 => "00010010101100111111111100010000", 
    744 => "00000101001100001110101000001010", 
    745 => "11110101111100010000000111111111", 
    746 => "00001001000111010000001011101100", 
    747 => "11111100001010100010110111101110", 
    748 => "00001110111001001110110111011011", 
    749 => "11100011000010100000000110111110", 
    750 => "11010110000011110010101000001100", 
    751 => "11011100101101110001010111000111", 
    752 => "00000100010101000001100111101101", 
    753 => "00000011111010000011000011010100", 
    754 => "11001101000011010000011111101011", 
    755 => "00101111010000100010110000010100", 
    756 => "11100111001010101110011000101001", 
    757 => "00010111001010110000100111111100", 
    758 => "11000111110100010010111111101011", 
    759 => "00001001111000110000100000011110", 
    760 => "00100100110111110000000000001011", 
    761 => "11111110111101111110011000000010", 
    762 => "11111011110010110011000000010111", 
    763 => "11111001000111101111111011110011", 
    764 => "00101101000111101111010111001001", 
    765 => "11111100001011010001111010111110", 
    766 => "00000000111100100001110100001011", 
    767 => "00110100111101010011000101000101" );

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

entity ReadA113128_weights_0_0_1 is
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

architecture arch of ReadA113128_weights_0_0_1 is
    component ReadA113128_weights_0_0_1_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA113128_weights_0_0_1_rom_U :  component ReadA113128_weights_0_0_1_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

