-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA115130_weights_0_1_6_rom is 
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


architecture rtl of ReadA115130_weights_0_1_6_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00000111001111010000100100001111", 
    1 => "11001100111000010000111010100110", 
    2 => "00110111000001010010011111111101", 
    3 => "00001010000010001110100100001001", 
    4 => "00011101000101100000000011101100", 
    5 => "00010100111110111110110111110000", 
    6 => "00100000000111000000001100011001", 
    7 => "00110101000001000000000100010000", 
    8 => "11110010111111000110101000100100", 
    9 => "11110101111001110011101000010111", 
    10 => "11111100111110110001101100001100", 
    11 => "00011000111101001111000000110110", 
    12 => "00000100000101110100110000011101", 
    13 => "00101001000000001111110100010001", 
    14 => "00011001000110011110011111010110", 
    15 => "11010100111111110100101111011111", 
    16 => "11001000111100100000011011111000", 
    17 => "01000111110011111100011000010100", 
    18 => "00000101000100010000101011111001", 
    19 => "11001100110011111111000011110101", 
    20 => "01010001010100010001101111110011", 
    21 => "01000000111010011011110100011011", 
    22 => "00000101101100010000010111110011", 
    23 => "01001001111011111001101010111100", 
    24 => "00001000111011101111010100010100", 
    25 => "00011111111101101111000111101100", 
    26 => "00011111001111111110100000100011", 
    27 => "11101101000010011100010111011100", 
    28 => "11111000000011001111101001000100", 
    29 => "11100001010111110010000011111110", 
    30 => "11111101000110110000100111111100", 
    31 => "00010011111011111110010101101000", 
    32 => "11101100111001001101100100111111", 
    33 => "01100000111100101001110110101011", 
    34 => "11010000000000101111100000001110", 
    35 => "10011100111100110100010100010110", 
    36 => "11110110000000101111000100000001", 
    37 => "10000001111011000011001100001010", 
    38 => "11100011111110010010000010101111", 
    39 => "01100110001100001100010001000010", 
    40 => "00001101111100001100110011000100", 
    41 => "00011001000010110010100011110110", 
    42 => "00010011000010001110100011110010", 
    43 => "00000010000110011111101100011101", 
    44 => "00100100111111110000001100000101", 
    45 => "11111110000110010000110011110000", 
    46 => "00000001111110111101010000010100", 
    47 => "00000000001101011110010000110100", 
    48 => "01000101110001101100111101000100", 
    49 => "00000001001000000001000000000111", 
    50 => "10101111000001000001100000011000", 
    51 => "00001100111110001110111001000100", 
    52 => "11111111111101110010010111101111", 
    53 => "00000011001001001011010011111111", 
    54 => "11110011000001001111011100000001", 
    55 => "00011111110000101111000100001110", 
    56 => "00001101110101111111011011010111", 
    57 => "00111010111000110001011011011001", 
    58 => "00110010111010010001101000111010", 
    59 => "10110010110111100110000111011001", 
    60 => "00001110101010000010011010011111", 
    61 => "00011101111100001010000011111011", 
    62 => "00010110000101111110110100001101", 
    63 => "10111111111001010000111011111001", 
    64 => "00011111000100011101000011110101", 
    65 => "11101010000000001111110000000011", 
    66 => "11111011111100100001011100101111", 
    67 => "11101100111010001100110011110001", 
    68 => "00000101111111110000001100001101", 
    69 => "00111100110111101110000111111010", 
    70 => "00000011101111001110111100010111", 
    71 => "01001111000101011000110111111010", 
    72 => "00010000111010001110100111010100", 
    73 => "11110111000100100001100000001000", 
    74 => "00011010111111111110110100011101", 
    75 => "11101001000011100001010111101111", 
    76 => "00001001000101000000111100001110", 
    77 => "00001010111111011011101101000001", 
    78 => "11111001111101001110110111101010", 
    79 => "00000111111100000010010111110001", 
    80 => "00010110000111110001011000100101", 
    81 => "10001100000000110100100000110101", 
    82 => "11111010001000010010011000101100", 
    83 => "00001100000001111101000000000110", 
    84 => "11111110000100110001100000011110", 
    85 => "11110000110111010001001100101010", 
    86 => "00001010001101101111001111110011", 
    87 => "11010001111100110100010000001111", 
    88 => "00010110110111110010010111100111", 
    89 => "00000111111100111100100000100101", 
    90 => "11101010111010111111001111101110", 
    91 => "00010111000110111101110111101100", 
    92 => "00000111000011100011101111100101", 
    93 => "10111111000110010010100000001111", 
    94 => "11110111111101010010101011011111", 
    95 => "00000001000100011100101111101101", 
    96 => "00010100000001101111100111111000", 
    97 => "00010110000010101011010000001000", 
    98 => "11110001111010010011010000000100", 
    99 => "11110001111011100001010111010010", 
    100 => "00000011000010011111101100100010", 
    101 => "11111100001101111100111100001100", 
    102 => "00001111001111000000000101000100", 
    103 => "11101000000001100000011111000000", 
    104 => "11010101111100100010001011111110", 
    105 => "10111010000001100000110011011101", 
    106 => "00110101000101000000000011101100", 
    107 => "00011111000001010000101011001111", 
    108 => "00101000110110010001100100101001", 
    109 => "11010111111111010010010000100011", 
    110 => "11101011111010011110011011110010", 
    111 => "11000010000000000011101011111001", 
    112 => "00000110000100011111100011110001", 
    113 => "11111100000000100110110000010011", 
    114 => "00011001000010010011011110111110", 
    115 => "00110100000001111010110100010110", 
    116 => "00100010000000011111110100000111", 
    117 => "11010001111111010001111011100101", 
    118 => "11100000111101001110110000001001", 
    119 => "00001101000000101111111011111011", 
    120 => "00011011000001000001011111110011", 
    121 => "11101010000111010000101100001111", 
    122 => "11110001000100010001001000010100", 
    123 => "00000011111010111110010111101100", 
    124 => "00010110000010111110000111111100", 
    125 => "11111111000000100010101100100100", 
    126 => "00100011111110011110001100000011", 
    127 => "01000001111101001010000000011000", 
    128 => "00101010000111000001010011010100", 
    129 => "00010111000010100010000111011010", 
    130 => "11000111000101000000111111110111", 
    131 => "00001101001010000001100000001001", 
    132 => "11000110111011001111111100000000", 
    133 => "11101100111101101110010000010101", 
    134 => "00001010000101000010101011011010", 
    135 => "00110000001011110000111011001001", 
    136 => "10101011001001001111111111010000", 
    137 => "11111110001111001101000000101111", 
    138 => "00011010111000001111010000101000", 
    139 => "00001111000101101101100000010001", 
    140 => "11100101111111011111100000001110", 
    141 => "11110010111111010010011100001010", 
    142 => "11001011000001101100001111101010", 
    143 => "11111111111101001110001100010101", 
    144 => "00001011110000110000011000100010", 
    145 => "11101000111100110011001011101110", 
    146 => "11101111110100101111110011000100", 
    147 => "11111010000101101110111100000011", 
    148 => "00110110001011111011001111111101", 
    149 => "11100111000010001101110000010110", 
    150 => "11101101000100010001000000101101", 
    151 => "00011111000101010011100111100111", 
    152 => "00010110000101101101011000110011", 
    153 => "11111100001111111011010000100010", 
    154 => "01100011000010001110001111110101", 
    155 => "11010011000010101100101100001001", 
    156 => "11111101010001111101001100110001", 
    157 => "01010010111111000100010010101100", 
    158 => "11100101111011000001000011101111", 
    159 => "10111000111001001100001100010010", 
    160 => "00110001111010110011110011110001", 
    161 => "00101110111110010111111000000010", 
    162 => "11110111111110010000001011111110", 
    163 => "00000010111101111110001111101010", 
    164 => "11111101110101000001110000011000", 
    165 => "11110111000111110010010000001101", 
    166 => "11000101110111101111111011110001", 
    167 => "11111000000110110010001111110110", 
    168 => "00101110001001000011100000010111", 
    169 => "00111010111110111111001111001011", 
    170 => "00011011000010101001011011011011", 
    171 => "00011010111111101111100000011101", 
    172 => "00000011111101010000111001001000", 
    173 => "10100110110110111110010000000111", 
    174 => "11011110111010011110001111101111", 
    175 => "11101110000010001101111000000100", 
    176 => "11100110001000100001100110110101", 
    177 => "00010010111111101111110100000010", 
    178 => "11101111010010010000011111110100", 
    179 => "00111001110010000000101111111100", 
    180 => "00011000111100111111100111111001", 
    181 => "00101111000011010011010011110101", 
    182 => "00110011111100111101010000010100", 
    183 => "00100011110110010011101000001100", 
    184 => "00101010111000000010110011100001", 
    185 => "11100101000010100001100111001010", 
    186 => "10111010111100011110101111100010", 
    187 => "11110111001000001011010101001100", 
    188 => "00000101001001111110101100001101", 
    189 => "11011111000000011111000100001101", 
    190 => "00011101000000110000011100011101", 
    191 => "00110001000011100010100100000011", 
    192 => "11110100110110100010101100010001", 
    193 => "00110000111001110100011111001010", 
    194 => "00010101000100001111101100001100", 
    195 => "10100110110101100110111000110111", 
    196 => "00010000110110011101111011100111", 
    197 => "00000101111011011110010011010111", 
    198 => "00001000110111111111110111101010", 
    199 => "11101010111011101000000100010000", 
    200 => "00011011001001110000001000001110", 
    201 => "00000110111001011110000100001110", 
    202 => "00100110000001100010000100011101", 
    203 => "00101001111110110000111111101001", 
    204 => "11010010110101001111000100100100", 
    205 => "00000101000100111100111111010010", 
    206 => "11110101111111100010001011111100", 
    207 => "11001111111110111011110000010101", 
    208 => "11100010000100100000111111111010", 
    209 => "11100001110011000101010111111111", 
    210 => "11101110000111010001100100001001", 
    211 => "11100110111110111011100011101011", 
    212 => "11100001000010101110001010000001", 
    213 => "11110011000010000000110010101000", 
    214 => "00001001000001001101100000000001", 
    215 => "11110101001110100001011011110000", 
    216 => "00001101001001010000001000101010", 
    217 => "11111111000100111101110011100100", 
    218 => "00001010110011010001111000010001", 
    219 => "11010010111011100000011111111110", 
    220 => "11000111111100011111110000010101", 
    221 => "00100001111010010000011100000010", 
    222 => "00001000111000000001010100000010", 
    223 => "11000000111110111111010111111001", 
    224 => "11111110001000100011111000011001", 
    225 => "11000110111111101010101011010101", 
    226 => "00010101111011011101110100101001", 
    227 => "00000111000010011111001100000110", 
    228 => "11100101001110001101101100000000", 
    229 => "11111111000110000001110100011010", 
    230 => "11111010000000111110011011110110", 
    231 => "00010001001000100001001000000001", 
    232 => "11101011000001111111110100010011", 
    233 => "00011100001100001010110000110001", 
    234 => "11111000000011000011001111110111", 
    235 => "11100111110111111011101111111101", 
    236 => "11010010110000001111100111111101", 
    237 => "11111010110111110011001000001011", 
    238 => "00100100111110011110100100001001", 
    239 => "11010101111101000001100000000111", 
    240 => "11111110001010011111010111110110", 
    241 => "00101011111010101110001000011100", 
    242 => "00011101000010100100001100100111", 
    243 => "11001101000010111111001111111011", 
    244 => "11101001111110101101011111111101", 
    245 => "11100000000101100010000011100011", 
    246 => "00110101000001001101010111011001", 
    247 => "00000010101000010100101100000010", 
    248 => "00100001111110110001111111101001", 
    249 => "11011011000001111110011000101010", 
    250 => "11110011010000000001001000000000", 
    251 => "00011100010001000000110100111011", 
    252 => "00001010000110100000111000011111", 
    253 => "11010010000000110010100011111101", 
    254 => "11101110110101011110101100000010", 
    255 => "00110000111100011101100011111101", 
    256 => "11100100111101011111001100000010", 
    257 => "11110000000101010000101011011011", 
    258 => "00001001000000011111111000011101", 
    259 => "11011101000010001111101100001010", 
    260 => "11100000111001010000000100010110", 
    261 => "11111111111000000001111011101110", 
    262 => "11111001111001111111100011110001", 
    263 => "11110101000111110001010000000000", 
    264 => "11001011111110000010000100001100", 
    265 => "11110001000000010010010011111100", 
    266 => "11111111111101110001101011010011", 
    267 => "00100110111100110001011011000100", 
    268 => "00001110000110101100111111110100", 
    269 => "00010101111001001110011000011000", 
    270 => "00010011000100011111001011110111", 
    271 => "11101001111101100001000000100000", 
    272 => "11010101111000011110111111110100", 
    273 => "00000110000000001110011111101110", 
    274 => "00001110001111111101100100010001", 
    275 => "00101110001011110000001110101111", 
    276 => "11110111000011110010111000100010", 
    277 => "11110000001000111111000000110000", 
    278 => "00001110000110001110011111100110", 
    279 => "11111101000010000000100111101000", 
    280 => "11111011111001100001011111110110", 
    281 => "11100100111000010001101000100011", 
    282 => "11111011000111111111111011100111", 
    283 => "00010000000110110001001100110101", 
    284 => "11011010000011011110110111111010", 
    285 => "11100000000000101100001111011100", 
    286 => "10111110111100110000101100010010", 
    287 => "11111010111110110000000100011101", 
    288 => "00001110000101110000000011011011", 
    289 => "00001001000000111110011000000110", 
    290 => "00010101001000000001000000010001", 
    291 => "11101110001011010000111000011111", 
    292 => "11110011000100111110110011010010", 
    293 => "11011101000101110000010111101110", 
    294 => "11111011111011111110101000001110", 
    295 => "11100110001011010001000100000010", 
    296 => "00010101010101101101101100001110", 
    297 => "11111100001000001110001011011110", 
    298 => "00000110000111111101010111110001", 
    299 => "11010110101111001111110011111111", 
    300 => "00000001000111011111101100000111", 
    301 => "00001001000000000000111000000001", 
    302 => "11110110111101001111110011111111", 
    303 => "00011010000011000010010011011110", 
    304 => "00000011001001000001100111110111", 
    305 => "00010111111100000001110100011111", 
    306 => "11111000111111011101100000100001", 
    307 => "00010011000000111110011011111101", 
    308 => "00011010110001000010000011011100", 
    309 => "00000100000000100000100011110101", 
    310 => "00001100000110100000011111110111", 
    311 => "11111001111101011101111100101001", 
    312 => "11111000110111100000000000010010", 
    313 => "00001000000110011111000100010000", 
    314 => "11110000111010001100010100101010", 
    315 => "00000111111100000001001111101100", 
    316 => "00011010111010011101110111100111", 
    317 => "11110001000010100000101111100100", 
    318 => "11110010110111010010001100011001", 
    319 => "11110110110111010000010000000100", 
    320 => "11110101001011000001010011101000", 
    321 => "00000100111111001110110000011010", 
    322 => "11001110111100100011010011101111", 
    323 => "00001010111000011110000100110110", 
    324 => "11110000110100011101111011011101", 
    325 => "00100110001011011010011000001101", 
    326 => "00010000000101100010010011101100", 
    327 => "11100011111010111111101100011001", 
    328 => "00110110001101010001111000110101", 
    329 => "10111111110100101111110111011011", 
    330 => "00011101000110001110111111010010", 
    331 => "11001000000000001111010000101001", 
    332 => "11101010000011010000011010111100", 
    333 => "00111001001101111010011100001101", 
    334 => "11111111001000001110101111100011", 
    335 => "11110101000100100001000000100101", 
    336 => "00011000000111000000110011011000", 
    337 => "00010001000011101100001000010100", 
    338 => "11001111110111111101010011100001", 
    339 => "11011101000100010011000000100000", 
    340 => "11010011001010100100000100101110", 
    341 => "00010001111100001100100011101100", 
    342 => "00110001111001000010011111110011", 
    343 => "11100111101110011111110100011101", 
    344 => "11111000111010100011000000100001", 
    345 => "11101110110111000101000000001001", 
    346 => "11100010111101110001010000000101", 
    347 => "00001101001011110001001011110011", 
    348 => "11011111110110110010110011100110", 
    349 => "00010111111010100000111000011000", 
    350 => "11110100000010111110110111011010", 
    351 => "11101000001011110001000011110001", 
    352 => "11110010000001000000001111101000", 
    353 => "10111101111001010001110011110000", 
    354 => "00001001000010010001111100001000", 
    355 => "11100011000011010000011100010110", 
    356 => "00001001101101000111111000101111", 
    357 => "00101001110111101100010111100011", 
    358 => "11011101111001101111110101001101", 
    359 => "00000001000010110000101000000000", 
    360 => "11101110110101101110100000010111", 
    361 => "00011110000000101110111000000100", 
    362 => "11101111111011000001011011101100", 
    363 => "11111001111110110010011011111110", 
    364 => "11110001000000110001011011100110", 
    365 => "11101000011101110001100000001111", 
    366 => "11111001110111101111010011010010", 
    367 => "11101001001111010010110000010110", 
    368 => "00010011111101000001000100011100", 
    369 => "11100101110101100001011100000010", 
    370 => "11101101111110111111110111110001", 
    371 => "11110100111001101101011010111100", 
    372 => "00100000111000000001111011101000", 
    373 => "00100011111111101111001000010010", 
    374 => "11111100000000000000111011001100", 
    375 => "00110010001101000000011100101011", 
    376 => "11001011001110000001110100100100", 
    377 => "00000111111110010000011111111111", 
    378 => "00000111000110100011000011110010", 
    379 => "11110111000010000001100111111001", 
    380 => "11011010000001000000110000010100", 
    381 => "11001100001100100010010001000110", 
    382 => "01001010001010001110101011110111", 
    383 => "11010011001000100100001011010110", 
    384 => "01000001110110110001110111101101", 
    385 => "11110001111111100000000011011110", 
    386 => "10111101000010000000000100010000", 
    387 => "00010001000100100000100100011100", 
    388 => "11101101001100001111001101001100", 
    389 => "00001010110100100000111000000010", 
    390 => "00010111001010001111011111110110", 
    391 => "00010010111011100001010100001010", 
    392 => "11111010110010111110110100000111", 
    393 => "11101110111111101110101100010101", 
    394 => "11111000110010101110111000111010", 
    395 => "00010101111110101111111100101001", 
    396 => "00010100001011000000011100000001", 
    397 => "00010001000000011110010100001011", 
    398 => "11100001000000110001010011101010", 
    399 => "11110010000100010000110100001110", 
    400 => "00010110111000101101010000000000", 
    401 => "00000000111000101111010100010111", 
    402 => "11111001111110010010000111101011", 
    403 => "00100011001011010000011111110101", 
    404 => "11111111000001111111100000010000", 
    405 => "11100010000100111111001100010111", 
    406 => "00001111000101010001111111111000", 
    407 => "11011011000101100010101011110001", 
    408 => "11100110111111110101001000001110", 
    409 => "00011001110110011111111100010000", 
    410 => "00011101010010001011101000101101", 
    411 => "11010011000010101111110111100101", 
    412 => "00101011111010110000011011100001", 
    413 => "11001100000100111111001000111011", 
    414 => "11100111000011010000101101100010", 
    415 => "00011010000010111101101100010010", 
    416 => "00100001001011010000110100011111", 
    417 => "00000010000110001111101011111101", 
    418 => "00000101000100100010010011111011", 
    419 => "00010101111111100001001011111010", 
    420 => "00000100111100101111101000110111", 
    421 => "11010111001101010000110000100101", 
    422 => "11101011111000011110111000011011", 
    423 => "00001101000001011111101100110000", 
    424 => "00000100110100110011000011101101", 
    425 => "00010100111110100000111100110001", 
    426 => "00010000001000000001110011011011", 
    427 => "11011000111000000000010011111101", 
    428 => "11110010001011000010101111101110", 
    429 => "00010110111000001110111100000001", 
    430 => "00010000000110111111000011100000", 
    431 => "11110001000000010000101011100101", 
    432 => "00101101111100101111000111110111", 
    433 => "11100000110010111111001101000001", 
    434 => "10111110110011001101010111111010", 
    435 => "11110011111010101101110011111011", 
    436 => "00011110010010011111101000001101", 
    437 => "00100111110110001111111011010100", 
    438 => "00010111001010101101110100001100", 
    439 => "11110101001000010010000100010111", 
    440 => "00000110000101101111011011011001", 
    441 => "11111001111001111111011111100011", 
    442 => "10100000110001100001011011101111", 
    443 => "00111001111010001110101000001010", 
    444 => "00101001000000100001100011010001", 
    445 => "00101110111111100000011000011010", 
    446 => "00001110000111101011110000110001", 
    447 => "11100011111101001111010100011001", 
    448 => "10111101000001111101110011111011", 
    449 => "00001011111111110001101000001010", 
    450 => "11011100110010101110111000000011", 
    451 => "11100101111000001001001100010001", 
    452 => "11101100110100100010010110110111", 
    453 => "00010001110010110000110001000010", 
    454 => "00011110001011011110111011100011", 
    455 => "00001010000011001100110100000011", 
    456 => "11110001111101000001000000000001", 
    457 => "00000101111101100001111111011110", 
    458 => "00001000111011100001010100001110", 
    459 => "11101000111101011111010111101111", 
    460 => "00000000111111110001111000000000", 
    461 => "00000101110101001011010011111011", 
    462 => "00000110000010000001101000100001", 
    463 => "00011100000010110010000011111110", 
    464 => "11110110000100010001011011101110", 
    465 => "00000111111111000001101011101010", 
    466 => "00100101111001001111100100000010", 
    467 => "00000001111100100000111111101101", 
    468 => "10110011111011010101000100010011", 
    469 => "11111001111000000000110000010011", 
    470 => "11010110000111101110011111101100", 
    471 => "00001000000010100011101111101110", 
    472 => "11111000000001010100011111110100", 
    473 => "00011100001001110100011111100110", 
    474 => "00100000000110010000110000100000", 
    475 => "11110000110111111100101000000000", 
    476 => "11100111111001111110001000010100", 
    477 => "00001000111011101110110011101010", 
    478 => "11101010000001010101011100101000", 
    479 => "11101001111111111011110100010110", 
    480 => "00011110000100101111111111010111", 
    481 => "11010100000000010001001011101010", 
    482 => "11111100111110100000101100010101", 
    483 => "00010101111111110001001011101101", 
    484 => "00101101001000111110101011110100", 
    485 => "00101011000000001110010111111111", 
    486 => "00000010000100000001000000000010", 
    487 => "11111111000001100000101100010110", 
    488 => "11100001001001110000010111111001", 
    489 => "11011111111110111111001011111110", 
    490 => "11111000001101001111011011011001", 
    491 => "11001110111011011110101111010010", 
    492 => "11101101111010001011111000000110", 
    493 => "00011111111010111110001000110111", 
    494 => "00110001111101000000100011101011", 
    495 => "00100001001011000011001011101101", 
    496 => "11100110000011010000001011111111", 
    497 => "11111101000001001111001011100110", 
    498 => "00111110110101111110001001000010", 
    499 => "00001010111110111110010011111000", 
    500 => "00001010111110110001100000001100", 
    501 => "11011010111110010000111000011100", 
    502 => "00101111111011010000111111100000", 
    503 => "00111010000001110100100011111101", 
    504 => "11010010111110001111101001100101", 
    505 => "11111011000110001010111111101000", 
    506 => "11100101110010101110001100001101", 
    507 => "00010001000101111100101000100011", 
    508 => "00000110000000000001110000000110", 
    509 => "11111000000000000000001100010010", 
    510 => "11001110111110110011111100010110", 
    511 => "00110001111110111100111100011101", 
    512 => "11101101000110001110011111111011", 
    513 => "11101110000011010010001000110101", 
    514 => "11100001000000101101111000100110", 
    515 => "11111001110100110010010100111000", 
    516 => "11011111110111011110110011100110", 
    517 => "00110001111001101111000000001001", 
    518 => "00000111111110111100111000010100", 
    519 => "11100111000100010000011011110001", 
    520 => "00010001000010100001101011110001", 
    521 => "11100111000011001110010100100110", 
    522 => "11010000001011010010110100010100", 
    523 => "00000101110110101110001011010100", 
    524 => "00010110110000010000111011001100", 
    525 => "11100101001001000001100011101000", 
    526 => "11010100111010010011101111111001", 
    527 => "11101001111011001110110111000011", 
    528 => "11101011111101111101000111101010", 
    529 => "11110110000011101101000111110100", 
    530 => "00011101101100010011000000011000", 
    531 => "11010001000011110100110010011111", 
    532 => "00000001001000011011101100010010", 
    533 => "10100000000000010100011000100111", 
    534 => "00001111110110111110111000011101", 
    535 => "11001010000001010000010011101001", 
    536 => "11111100111100000001110111011100", 
    537 => "11111110000000110100001000001000", 
    538 => "00100111001010010000110111100101", 
    539 => "11010011010011011100111100010001", 
    540 => "00010010001001000000000111111110", 
    541 => "11111111111010001100100111101101", 
    542 => "11111110000111011111000000001101", 
    543 => "11110110001010011100100100001110", 
    544 => "11100100110100000000000100100010", 
    545 => "00001010000101001101011100001001", 
    546 => "11101000111110101101111100001001", 
    547 => "11101100111001011101100011101000", 
    548 => "11110111111000011111111111100001", 
    549 => "00001001110111010010001011110101", 
    550 => "11001101001010000000000100000100", 
    551 => "11010000001010110010001111011011", 
    552 => "11110011111000001100111110110010", 
    553 => "00000001000111011011110100111101", 
    554 => "11101001110111111100111100001011", 
    555 => "00111111110101111110101100000011", 
    556 => "11011101001011101111111000010011", 
    557 => "11000011000001011101001100010001", 
    558 => "00001001110111111110111000011100", 
    559 => "11010011000111111110101011101000", 
    560 => "00011010111111110001101000000101", 
    561 => "11110011111110000010101000000001", 
    562 => "11101000111110010010111101000011", 
    563 => "11110111110100000010010011101110", 
    564 => "00010000110110001100101111010010", 
    565 => "00101101111111101100110100000001", 
    566 => "11110011001000010000100000010000", 
    567 => "11111001001100001110100111110001", 
    568 => "11011010101111111101110111101100", 
    569 => "00010101111011010100000010001010", 
    570 => "10111110000110011111100111110110", 
    571 => "00001111000001110010110011111000", 
    572 => "00001010000001100000010000010110", 
    573 => "00011110111001100001100000011101", 
    574 => "11101111111111101001111100111010", 
    575 => "00000001110100010010001011101010", 
    576 => "11001101111001011100001011110101", 
    577 => "00101101000111011111010011110110", 
    578 => "00111110001001001111110000111010", 
    579 => "11110010110110010000100111010110", 
    580 => "11110000110000100001110000101010", 
    581 => "01010101001011100001001011111100", 
    582 => "11011001010100001100001111111000", 
    583 => "01010100001000001010010000010100", 
    584 => "11110001110011010011011000000111", 
    585 => "01001011001100101010001011110011", 
    586 => "00001001000010100000011000110010", 
    587 => "00110010101100101000000100001111", 
    588 => "11011000001110100000001111110001", 
    589 => "11011101110011011111101011111100", 
    590 => "00001101111011010010100100010001", 
    591 => "11111010111011000011000000000101", 
    592 => "11111100111010111101101100011100", 
    593 => "01000111111011001010000011101010", 
    594 => "00011100110100110100111001010000", 
    595 => "00000101110101100000001011100010", 
    596 => "11011010111110001110011011001000", 
    597 => "00000011000101111111001100100011", 
    598 => "11100110111111100000100100110101", 
    599 => "11010000000010111111101111111011", 
    600 => "11101000001100001110011000001010", 
    601 => "01111110111100101010101000011011", 
    602 => "00110000000001111111000111011000", 
    603 => "11000111010100010001011111101010", 
    604 => "00110001111001110001011100100001", 
    605 => "11100000000011011111011011100011", 
    606 => "00000011111001111111111000000011", 
    607 => "10010101010000110110001011100100", 
    608 => "11101001000101110001100000000011", 
    609 => "11010101111010100011001000100010", 
    610 => "11101100110110100000011001000111", 
    611 => "00011110111001111101110000100001", 
    612 => "00011100111111111110010011110111", 
    613 => "00010000000000000011001011111010", 
    614 => "00100111111001101111000011011111", 
    615 => "00101110111101110010110100011011", 
    616 => "00110011000110001111011011111010", 
    617 => "01011010111111001001011011101000", 
    618 => "11101111000000101111111011110100", 
    619 => "00101111110111100000111100011101", 
    620 => "00010100111100101110100000001111", 
    621 => "11110011111011001100011011010000", 
    622 => "00011111000111010010010011100111", 
    623 => "00001010000101001110010011001111", 
    624 => "00001000111010110101101100110110", 
    625 => "00100110111011111111000001000111", 
    626 => "11101010001010001010010111001111", 
    627 => "11110010111010001110010011110110", 
    628 => "11100111111001101111001000000000", 
    629 => "00011100001010011110010000110101", 
    630 => "00100000111100010001101011011010", 
    631 => "11010001100000011111111010111100", 
    632 => "11101110111110100010001100100011", 
    633 => "00010010000000011110011101000010", 
    634 => "00000010111010011111000111111011", 
    635 => "11111111001101011111001001001110", 
    636 => "00010011000010000010011000000010", 
    637 => "10010111001010000010111011111101", 
    638 => "00100110010000001101111100100011", 
    639 => "11110001110101100100010000101001", 
    640 => "11101110000101010011011111101001", 
    641 => "00000001000110010000011000000000", 
    642 => "11101100111111100001101011000111", 
    643 => "11110001000001011110001011101111", 
    644 => "00000000000101111111100011011010", 
    645 => "01000111001110100110101001000011", 
    646 => "11100101000101101110111011101000", 
    647 => "01100101001100110011001100100000", 
    648 => "00001100000000011111001100011001", 
    649 => "00010100000000010001010000010101", 
    650 => "00000011111100011111110111101011", 
    651 => "11100001000011111111011000010101", 
    652 => "00010000110100010010110000001100", 
    653 => "00001101110011001010100111111111", 
    654 => "11001101110110000000011011100001", 
    655 => "00101100111100100000100111110111", 
    656 => "11111110001001100100000100100001", 
    657 => "00000001000010000010111011111001", 
    658 => "11110111000011011111001000011100", 
    659 => "00101111111011001111111111100000", 
    660 => "11111010111000111101001111111101", 
    661 => "11110111000010101111001100010000", 
    662 => "11100000111101001111000100101001", 
    663 => "11100010000110011111100100000100", 
    664 => "00101111111100010000101111011110", 
    665 => "11011111111001011010001011110110", 
    666 => "11110110111011101101100011111101", 
    667 => "00000100110111101111000000011000", 
    668 => "00000011001001110000011000100010", 
    669 => "00000111000110100000011100010111", 
    670 => "11010010000001010000000011011000", 
    671 => "00011011000101010101101011111100", 
    672 => "00011001111101111111100011111100", 
    673 => "10101000111001011110110100111101", 
    674 => "11101111111000000000101000011000", 
    675 => "11100100000100010010001100010101", 
    676 => "00000110001000011110110111110010", 
    677 => "11100000111111101101110111110100", 
    678 => "11110100111001001110111011100010", 
    679 => "01001000111100100000000111111010", 
    680 => "00011001111100100010100000000101", 
    681 => "00100100000011100000000100011111", 
    682 => "11100100000100110001001100101010", 
    683 => "01000110111011001111001000001011", 
    684 => "11110000001101010001110011100011", 
    685 => "11000111000010100010111011101010", 
    686 => "11101010111011010001111100010011", 
    687 => "11011001111011101101011100000001", 
    688 => "00000001111100111111011111011111", 
    689 => "00111010000010010011100100001101", 
    690 => "11100111111100100010000100100011", 
    691 => "10101110101111011001110111100111", 
    692 => "00101100111111111111000011110111", 
    693 => "00110000001010100010110000000100", 
    694 => "11010000110111100010001100001100", 
    695 => "11100000000100100001011011101001", 
    696 => "11111111110010101111101011110011", 
    697 => "00110100110110111110111011010001", 
    698 => "00010101111111000001100011101000", 
    699 => "11111001111001011111101100001111", 
    700 => "11101101101100101110111000000000", 
    701 => "11101001111010111100111100000111", 
    702 => "00010111111011011110000111100010", 
    703 => "00011110000100110000101000010001", 
    704 => "11111111111100100001000111011000", 
    705 => "11110000111111110001110010110101", 
    706 => "00010000110001010001010011011010", 
    707 => "00000100000101101111001100100100", 
    708 => "11111001111001100010100111101000", 
    709 => "00001110001111001111100000100101", 
    710 => "00111000110111011101001100010100", 
    711 => "11110000000000111101001011011110", 
    712 => "00010011010110010000110000110001", 
    713 => "11001000111001110100001100000000", 
    714 => "11101111111111000010001000110011", 
    715 => "11100011110100100100010000100011", 
    716 => "11110101000110001111001111111000", 
    717 => "00010101111100110001111111101011", 
    718 => "00010001000000111101111000011110", 
    719 => "00101001111011011101001000000010", 
    720 => "00000110110110111110101111010011", 
    721 => "00110111000011101100111000011111", 
    722 => "11111000000001101011111111101110", 
    723 => "00101010111101111110010100000101", 
    724 => "11111000111100111111100100000000", 
    725 => "10100010111111110111101011110111", 
    726 => "00000100110101111111010010111100", 
    727 => "10110110000111110101010011111100", 
    728 => "00010000000001000011000011101010", 
    729 => "01011010111100111101110000000010", 
    730 => "11111101000110000001110111101101", 
    731 => "11011000000001100100011101010100", 
    732 => "11110100111011000001100111010110", 
    733 => "01011010111111001010100111111100", 
    734 => "11110110000010110010000011100010", 
    735 => "11110001111111101111100000000110", 
    736 => "00000101101111101101100100010100", 
    737 => "11101101111110101111111111101100", 
    738 => "11101110111101111111101100100001", 
    739 => "00110111001000101011010000000111", 
    740 => "00101101111001101110101011111111", 
    741 => "01100110111110001001001111101000", 
    742 => "00000111000000101110000100001010", 
    743 => "11011010111010101110100100101001", 
    744 => "00001110000101101111101011010001", 
    745 => "00010101000001110010101000011000", 
    746 => "10111110111001001110011110111000", 
    747 => "00101100111110000001100001000001", 
    748 => "00101011001000111100111100101011", 
    749 => "10000001111100100100100011100000", 
    750 => "00101001111100000000101100100110", 
    751 => "11101000111000010101000000011001", 
    752 => "11001010111110011111111000010111", 
    753 => "00100010111110110010101100111000", 
    754 => "00100000000000001110111011111100", 
    755 => "01111110001110101000011111111111", 
    756 => "11101010000010010001111111110001", 
    757 => "10101101111101011110010100001001", 
    758 => "11001101000101111110000111110011", 
    759 => "01100011111000101010111011010010", 
    760 => "00010111111100011111001011100010", 
    761 => "00001011000000011110010000001111", 
    762 => "00111101111101000001111000110100", 
    763 => "11010110111011111111001111111110", 
    764 => "00100011111111011111110011110100", 
    765 => "00000100000011001010001111010011", 
    766 => "11000011000011001110110111010011", 
    767 => "10110111000010001101100000111101" );

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

entity ReadA115130_weights_0_1_6 is
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

architecture arch of ReadA115130_weights_0_1_6 is
    component ReadA115130_weights_0_1_6_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA115130_weights_0_1_6_rom_U :  component ReadA115130_weights_0_1_6_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

