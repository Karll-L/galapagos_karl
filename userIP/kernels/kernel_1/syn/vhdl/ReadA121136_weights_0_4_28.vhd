-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA121136_weights_0_4_28_rom is 
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


architecture rtl of ReadA121136_weights_0_4_28_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00010101001010101111100111101111", 
    1 => "00011110000100011100111111001111", 
    2 => "10111100010100001111000100000000", 
    3 => "00101000111111011101010100110001", 
    4 => "11111110001100000001011000000110", 
    5 => "00110010101101111101010100110000", 
    6 => "00011100000110101111000011111000", 
    7 => "11110000010100101110100100010010", 
    8 => "00000010110111110000001000101100", 
    9 => "01000100000101101101000000001000", 
    10 => "11110110001100100000000111101010", 
    11 => "11101110000111001110111111110010", 
    12 => "00101101111100001110111000011110", 
    13 => "00011100110100001111110011101100", 
    14 => "00001100000111000000010000100011", 
    15 => "11111101101000101110110000101000", 
    16 => "11001101000111001110100100001010", 
    17 => "00010110100101010011010100110110", 
    18 => "11100010000101101110000100000011", 
    19 => "00111111111011011101111111100001", 
    20 => "11101000000011110000101011100111", 
    21 => "00001110000001111110100111111110", 
    22 => "00011000101011001111110111101100", 
    23 => "11011101110001100001010001001000", 
    24 => "11101011000001000000100011101011", 
    25 => "00010001110010000001011101010010", 
    26 => "11100101111111110000110000010000", 
    27 => "00010100101001111111101000010100", 
    28 => "00100010000110110000001100010110", 
    29 => "11001100001100011110101011000010", 
    30 => "00000101000110001110100000001001", 
    31 => "11111011000011001111011011111010", 
    32 => "01000100110111000000000111010000", 
    33 => "11100100001001000100010000001111", 
    34 => "00000100000010000000001011010011", 
    35 => "11111000001011011000000111010010", 
    36 => "00001010001111101111101111100110", 
    37 => "00100001110111010100100011010111", 
    38 => "00010100101010100000111000001000", 
    39 => "11110011000010110001110011111100", 
    40 => "00111100001100111111010100101100", 
    41 => "11111100001111101010000101011000", 
    42 => "00001011001111100000101111100101", 
    43 => "11110000111110111101110100110111", 
    44 => "11110101001001111111011111010101", 
    45 => "11011100001011111110101100100011", 
    46 => "00001000111001001101110100001111", 
    47 => "00100100111000100001010100101001", 
    48 => "00011001111010100000010011100001", 
    49 => "00001110111111101010110100110101", 
    50 => "11100100111111000001110000111010", 
    51 => "11011110110110010010100101011000", 
    52 => "11011010111111000010111011100011", 
    53 => "11100000111100011110101010111011", 
    54 => "11011100010001011111100011100110", 
    55 => "00011100000010000011110111111001", 
    56 => "00101110110110100000100011000010", 
    57 => "11111011111001100011010100011010", 
    58 => "01010011000001011111101011111011", 
    59 => "00010011110010010011001000000011", 
    60 => "11111101010001010000110011000110", 
    61 => "00101100110010011111011000010111", 
    62 => "00001100111110100001000111011110", 
    63 => "11000101110101010000011100000011", 
    64 => "11000100110001000000011011110111", 
    65 => "11110111000010001111010011100000", 
    66 => "11110111110110100000010011100001", 
    67 => "11101000111101100000110000001111", 
    68 => "11001000000111111111101100010100", 
    69 => "00001001110011100001010001001011", 
    70 => "00110111000001010000101100101001", 
    71 => "00001010000110110001010011101101", 
    72 => "00001011111010000001010111100100", 
    73 => "11010100110001110101010000010011", 
    74 => "00010010000001101110100111110101", 
    75 => "00110110000000100000101111011011", 
    76 => "11101010110000101110011100011110", 
    77 => "00001100000001011110011000010100", 
    78 => "00101110000110010000001000000101", 
    79 => "11111111110110000011011100111100", 
    80 => "00000000000000100001000111101001", 
    81 => "11101000000011010100100100111100", 
    82 => "00001101000100010000111111111011", 
    83 => "00010101000011100000000010100101", 
    84 => "00010000000110111111111011100101", 
    85 => "11100111010001011111010000001010", 
    86 => "01010110111011001111110001000011", 
    87 => "11101111000010110000001000001000", 
    88 => "11001001110000011111001100000101", 
    89 => "11111000001100001111110100001100", 
    90 => "11010110001010101111010111000001", 
    91 => "00000010001000010011010100000101", 
    92 => "00001001000001001110111000001001", 
    93 => "11110001110110100001000111100011", 
    94 => "11011011000101110000110000010110", 
    95 => "11111010111101110011011100100100", 
    96 => "00100011001101101111010000011101", 
    97 => "11100010111001000000001000010011", 
    98 => "00000010001001000000110011111101", 
    99 => "00000000000000000010011000011100", 
    100 => "10111111110010010000010000011011", 
    101 => "11101010111100001110000011101000", 
    102 => "11000100101100100000010000111001", 
    103 => "11100100000000111111101000001001", 
    104 => "00000011111010001111101111110111", 
    105 => "11111110110111000001101100010100", 
    106 => "00010000000000000001000011111110", 
    107 => "00001010110000101111001011110101", 
    108 => "11010011111111000001100111010111", 
    109 => "00001110110100110001101011111100", 
    110 => "00001111110001100001000011001101", 
    111 => "11100001010011101100111111001000", 
    112 => "10101111001011000001000111111000", 
    113 => "00000111111011000000110100010000", 
    114 => "00011101000010111111001100010011", 
    115 => "11011010000111000000111000100000", 
    116 => "11111101000000011110110000000111", 
    117 => "11101101001010110001010000010100", 
    118 => "00010110111110110001111111101000", 
    119 => "11111001001000100000010000001011", 
    120 => "00110100000100011111011111000110", 
    121 => "00001011110101001111111011010100", 
    122 => "00000000000111100000000100001011", 
    123 => "00000110000011011011001001000100", 
    124 => "11100010110110010010111100001001", 
    125 => "11011100111100001010100111001111", 
    126 => "01000000111001010000000000000001", 
    127 => "11110101000100000000010011011101", 
    128 => "11011100001000000000101100000100", 
    129 => "11111010110110000010010011001110", 
    130 => "11100111111111011111110111111101", 
    131 => "11011001000101100001011011111100", 
    132 => "00011010000011011111000000001000", 
    133 => "00111001001010101110010100111100", 
    134 => "11110000000101000010100010110111", 
    135 => "11100111000111010010100110100111", 
    136 => "00010011110101101111010111101011", 
    137 => "00011010111010000000100100010001", 
    138 => "11011101000110111111011000101111", 
    139 => "00010011000011101110110111110011", 
    140 => "11001001110100011110000111111001", 
    141 => "00001100111000011101000100101111", 
    142 => "11001110110000100001010111100000", 
    143 => "00101111001011111110000010111111", 
    144 => "11110110111100000001100011101100", 
    145 => "00100011010001100010010111000111", 
    146 => "00110011101111011101100000000001", 
    147 => "11111111110111101111011111001110", 
    148 => "11110100001000100010001111101110", 
    149 => "11011111110100111110101111110101", 
    150 => "00101011001001011111111011110111", 
    151 => "11100111001100010000110011110010", 
    152 => "00101001101110001110101011110011", 
    153 => "00010001000000010011101001110100", 
    154 => "11011000110111000001000011110000", 
    155 => "11010100000101111111110011011011", 
    156 => "00011010000000110001000000011011", 
    157 => "11110001000001101111111100000101", 
    158 => "00010111000001110000110100010001", 
    159 => "11111111000100001110001111001110", 
    160 => "00100010010000100000110100110111", 
    161 => "00100000111101110000000000010001", 
    162 => "11110111101100100000111000000111", 
    163 => "11110111111000001111101011100011", 
    164 => "00000111001100001110110011111111", 
    165 => "00100010110111101101101100001001", 
    166 => "11100011001011100001010111011010", 
    167 => "11010011111111000001101010110011", 
    168 => "11110101111101001111111111111001", 
    169 => "00111000000111110001011101000110", 
    170 => "11111110000110011111010011011101", 
    171 => "00000111111110110000101111000101", 
    172 => "11110100111000110010010000101011", 
    173 => "01010001000100000001110110001100", 
    174 => "00010010111100111111000111010000", 
    175 => "11010111001011001110100000001001", 
    176 => "11011111111011011111101111011111", 
    177 => "00100110110111000000110111111010", 
    178 => "11100011010011001111110000000100", 
    179 => "11101101111111101111100011101111", 
    180 => "00111100000011011110010000010111", 
    181 => "11010111111000011111111100111010", 
    182 => "11010110101011010000100111100011", 
    183 => "11011011000000110010101000100000", 
    184 => "11101010001010010000110100101011", 
    185 => "00001100110000001110100010111001", 
    186 => "11011101001001110000001010110010", 
    187 => "11001011111111011110111111100011", 
    188 => "00001000110111001111101100100110", 
    189 => "11101111010001010001101011100100", 
    190 => "11111100111111111111010100001001", 
    191 => "00101100111101011101011000010110", 
    192 => "00000100001001001110000000001000", 
    193 => "11100000001010000010111001001011", 
    194 => "11110110000101111111111000110101", 
    195 => "00110010000101110000101011010000", 
    196 => "11100111000100110001011100000100", 
    197 => "11011011111110010000101000101100", 
    198 => "00010100000101100000010000001010", 
    199 => "00000111000011011110011110000011", 
    200 => "00100100111011111110111100010111", 
    201 => "11011100000001011111101111101001", 
    202 => "11111011111011000000100111100100", 
    203 => "00000010010010000000010000000110", 
    204 => "11101100000000010000011111110111", 
    205 => "10111000111111000001010011100011", 
    206 => "01010100111110111111011111110110", 
    207 => "11101111001000010100010000100111", 
    208 => "10110111110111110000011100011001", 
    209 => "11100011001111001101001110001110", 
    210 => "11111000111100011110110111100110", 
    211 => "00011000000111011110111011010100", 
    212 => "11001101110101001110110101001000", 
    213 => "00100001001010101101001011110011", 
    214 => "01010010110101110001100011011001", 
    215 => "11111100001100100010011100000011", 
    216 => "11001111001001100000000101000100", 
    217 => "11011101000011001110110001100101", 
    218 => "00000011110011101110010100011110", 
    219 => "00110001001001110010101011101110", 
    220 => "11011110000000011111001000010001", 
    221 => "00111001111011000000001100110011", 
    222 => "11100001000011010000111111111111", 
    223 => "11111100111100000001001100101001", 
    224 => "11001011111011000000000111111111", 
    225 => "00100111000001001110010011011100", 
    226 => "11101010110001011110001100101111", 
    227 => "11000100001011101111010110100101", 
    228 => "11011101000011010001000011110100", 
    229 => "00001101000000111101110000100010", 
    230 => "11100101111101110001110100010000", 
    231 => "00001110000001001111011111011101", 
    232 => "11100110000001110000011111100111", 
    233 => "11011110111101001110111011010110", 
    234 => "11101010111100001111101100000000", 
    235 => "00000110111111101101101000000111", 
    236 => "10111011000000000001011000001100", 
    237 => "00001000111010001101001010000001", 
    238 => "00100101111101001110001000000100", 
    239 => "10111000010001110001011001000010", 
    240 => "00101100111100100000000000110000", 
    241 => "00010101111001000001011111110101", 
    242 => "00000000110110010000000000011000", 
    243 => "11111100000100100001001111011101", 
    244 => "00101111111010000001001100101011", 
    245 => "00001101111101011101101111100011", 
    246 => "01100001000101001101111000010110", 
    247 => "11011100010000001110110111011111", 
    248 => "00001001111110010000111100100100", 
    249 => "00011111010101100001011011111011", 
    250 => "00010000110011001110001111111100", 
    251 => "11110000001011011100011000000110", 
    252 => "00010010111101110001110111111110", 
    253 => "11111000000101001101100100000000", 
    254 => "00011011000011001110100100011011", 
    255 => "11111000000101100001111100000010", 
    256 => "11111011001000000001001000110010", 
    257 => "00001111001101010001101011110100", 
    258 => "11101001111111010000011011011111", 
    259 => "11110100000011001101100000011110", 
    260 => "00011001000111100001001011000100", 
    261 => "11110000001011010000001011010100", 
    262 => "11110000111101001111011000100100", 
    263 => "11100110000011011110111000101100", 
    264 => "11111011111101001110110011010000", 
    265 => "00010000001011010001010100010001", 
    266 => "11010010000111110001100011101111", 
    267 => "11111111111110011100111000000110", 
    268 => "00000000000010101111100100010001", 
    269 => "11011001000001101100000011110110", 
    270 => "11111001000011100000111100110001", 
    271 => "00001111000110101110000000010101", 
    272 => "00100011111010111101100000010000", 
    273 => "00010100001101101110110111011000", 
    274 => "00000110000010001101100000001110", 
    275 => "11111101001101101111000000010010", 
    276 => "00011110111110110001011111001011", 
    277 => "11111100001100100000100011011001", 
    278 => "00100001000000000001111000000011", 
    279 => "00000011000110100011001011011001", 
    280 => "11001000000101110000000111001100", 
    281 => "00110011001011011111111000010011", 
    282 => "00110010111110010001101100001101", 
    283 => "00000101110101111110010100111101", 
    284 => "00100000111101001111101111101011", 
    285 => "00001101000110001111010000111101", 
    286 => "00010111111101011111111011110101", 
    287 => "11110011000101100001111111001111", 
    288 => "11111101000101110001001011010011", 
    289 => "11111000111001111111000011110000", 
    290 => "00101110001100011111010000100011", 
    291 => "00000110000010000000111000101010", 
    292 => "10110001111101111110100000110010", 
    293 => "11111001000011011110101111110010", 
    294 => "00100110001001101110010111101111", 
    295 => "00000100000000010011100111110101", 
    296 => "00010011010000010001001010111001", 
    297 => "11010110001001011101111000001010", 
    298 => "00010001000110110000011000010110", 
    299 => "11110000111010111101110000000010", 
    300 => "01001110110001011111001000011010", 
    301 => "11100100101000001110110000111011", 
    302 => "00011101000010100001111111010111", 
    303 => "00000111111010101110011011101111", 
    304 => "00000011110101100000010100010001", 
    305 => "11111000001000101110001011111001", 
    306 => "00111010000001001111001100010101", 
    307 => "11001101000010111111111111111111", 
    308 => "00101000001000001111010100100101", 
    309 => "00001101111111000000110000011101", 
    310 => "11100111001110001111010111101000", 
    311 => "11110001000101100000101100110001", 
    312 => "11110101111000010001110111100010", 
    313 => "11011111000100000010000111101000", 
    314 => "11101001010011111111101000001010", 
    315 => "11110101000000100001110000000000", 
    316 => "00111101000100000000110111101110", 
    317 => "00011110111011110000000100001101", 
    318 => "11011001000111000000101011111101", 
    319 => "11100111001011111111011100000000", 
    320 => "00100000111110110000100111110001", 
    321 => "00101011111100010001011101111011", 
    322 => "00010010110010110001110011101001", 
    323 => "00010110111010110000101111011111", 
    324 => "11000011101111011110101000101001", 
    325 => "00010101111001111101100000000011", 
    326 => "00001000111000101101010100101111", 
    327 => "00001011111111000011100010001100", 
    328 => "10011111000100010010000000010111", 
    329 => "11110101010000111111001000011111", 
    330 => "11100000111101011111000100011110", 
    331 => "11100100110101111110111000100100", 
    332 => "00000011111111100000101100001000", 
    333 => "11110000000101001111110011010010", 
    334 => "11100100111100010001010100010000", 
    335 => "00111111111100000010011010110111", 
    336 => "10111111111101011101010100001100", 
    337 => "00000000101110011101000010111001", 
    338 => "11100101111000101111100111111111", 
    339 => "11111111111110010000111101010011", 
    340 => "00010011000000110000101111110101", 
    341 => "11110110000010110000111111111110", 
    342 => "00001110111110110001011011101101", 
    343 => "01011010000110011110011000110011", 
    344 => "10100111001100110000000100011001", 
    345 => "00100111000000010001011111101011", 
    346 => "11101010001001100000010100010101", 
    347 => "11101101111110100000111100100100", 
    348 => "00000100000010100000101000111110", 
    349 => "00001001111100101100101100101100", 
    350 => "11011011001001001110001011111111", 
    351 => "00010001110101111111111000010110", 
    352 => "11100101001011000000011000011111", 
    353 => "11101001111101011101110011111111", 
    354 => "11010001000001110000011100001100", 
    355 => "00000010111011111101000111111011", 
    356 => "00000010000010000001111011010111", 
    357 => "00011101111000101101101100111111", 
    358 => "11101000001001001101011011100011", 
    359 => "00011001111001110000101011011000", 
    360 => "11100000100010110010101111110000", 
    361 => "01000100111110101100001000010000", 
    362 => "00111000111011011101001011110001", 
    363 => "11111011000001000001101100100010", 
    364 => "11010111000001100000001011100001", 
    365 => "10111010111100000000000011000110", 
    366 => "00010111001110001110110011101011", 
    367 => "00101101010000001100101001111110", 
    368 => "11010110110110100000010011110110", 
    369 => "00100000111010110000110100001110", 
    370 => "00010000000011010010010000101101", 
    371 => "00000100111111101100100000110000", 
    372 => "00011101001010110000001100000001", 
    373 => "00110001111001111110010011000100", 
    374 => "11101100111001001111101111111011", 
    375 => "00011101001010100011000000000101", 
    376 => "00011100111010110010100011001110", 
    377 => "11100011111111010010001001111110", 
    378 => "00011110000110111101001100001011", 
    379 => "11101001010001100000111110101100", 
    380 => "00110101111011111111100111100111", 
    381 => "11101001001010010010111000000110", 
    382 => "11001011111011010000111111010000", 
    383 => "00110111001001011110101111111100", 
    384 => "11110110000110010010010001001100", 
    385 => "00010101110100010001011111101110", 
    386 => "11001111000000000000100100000001", 
    387 => "11100001011100100100011100101001", 
    388 => "00011011111110101111101100011101", 
    389 => "11101010110100011110100011010100", 
    390 => "00001101000011111111010111001010", 
    391 => "11010110001011101111110000100011", 
    392 => "10101111000100011110011011001100", 
    393 => "11111001111001100001101011010001", 
    394 => "00010110111010000000101100000001", 
    395 => "11110110000010001110100000001100", 
    396 => "11001100110100011111001000011011", 
    397 => "00101000000100010011010000001001", 
    398 => "11001010111101101110101000101001", 
    399 => "00011101000110001110110100100011", 
    400 => "11111001111111010000000100000101", 
    401 => "11011011000111101111001100011001", 
    402 => "00110101000111110001101000000111", 
    403 => "01111110000010011111000111111001", 
    404 => "00110100111011011111110111110000", 
    405 => "00100110110110010001010100111001", 
    406 => "11010100101111101101101111010001", 
    407 => "01000010001110011111110111111101", 
    408 => "00100110111100101110100100001011", 
    409 => "11111101010010001110101111101101", 
    410 => "11101010110100010000011111111011", 
    411 => "11100100000010101110010111000011", 
    412 => "10111111111110011111010011111111", 
    413 => "00101010000111110010000011000110", 
    414 => "11101010111110010000101101010010", 
    415 => "11111010000100110000010000110010", 
    416 => "11010101111100000001010100010000", 
    417 => "11111110110101001101111011000111", 
    418 => "11100101110011010001110100010000", 
    419 => "11101100001010100000110100101110", 
    420 => "11110111111111000000100111110110", 
    421 => "00000111110000101111001111101110", 
    422 => "01000111001001111111001000001001", 
    423 => "00110011000000100001011111011110", 
    424 => "00000110110100100011010000000101", 
    425 => "00011000111100000001011111111101", 
    426 => "01011110000000000001011111100101", 
    427 => "00000001111101111111011000011000", 
    428 => "00100011111001110010111111010010", 
    429 => "11110111110000000000011000010000", 
    430 => "00001001100111001111100111111000", 
    431 => "00101111001001100001111100011001", 
    432 => "01000110001110011111001000010101", 
    433 => "00000010000011001110001111010000", 
    434 => "11011101110010110001000000001101", 
    435 => "01100001000011101101001111011100", 
    436 => "11111001010011100000001111110011", 
    437 => "11101111111100000010101000110101", 
    438 => "11111110001001001111100100000110", 
    439 => "00000011000001100011101011001100", 
    440 => "00100010000101000000101000001101", 
    441 => "01000110111100011110011011110110", 
    442 => "11101000000010001111001111111010", 
    443 => "11110110000101100000011011110100", 
    444 => "00101101111110111111111011001101", 
    445 => "11101011110111000000110000001111", 
    446 => "11001111001000010000010111011000", 
    447 => "11100010111010111101010111101000", 
    448 => "11101011111111000000110011010001", 
    449 => "01011001111111100100010000001000", 
    450 => "11011111000001011111110000011000", 
    451 => "00011011111010110000001100100000", 
    452 => "00101010110101101111111000000000", 
    453 => "00001010000011010011110111100001", 
    454 => "00010110000011111101000111101000", 
    455 => "11111111110101111111101001100001", 
    456 => "11111100000100111111111011011100", 
    457 => "11110101111010000000000000001010", 
    458 => "11111110000111010000110011111001", 
    459 => "11110110000111001111100100001110", 
    460 => "10111001110000000010111000101001", 
    461 => "00001011111100111101000101000110", 
    462 => "11110001110010100001000100000111", 
    463 => "00001010010011100010101111110000", 
    464 => "00001010001010000000110100001010", 
    465 => "00011100111101010001000111110011", 
    466 => "00000001111011011110001111111100", 
    467 => "11111101010011110001110011001110", 
    468 => "00011100000110001111100100011010", 
    469 => "00000101000000110010111011110001", 
    470 => "11101011000110110000110011110111", 
    471 => "00001111111010111101101011101111", 
    472 => "00001101101101000000000000000011", 
    473 => "00001100000010000010000000000001", 
    474 => "00010111000011011111110100000010", 
    475 => "11111111111101110000010100101111", 
    476 => "00100110111111001111000000000001", 
    477 => "11110101000110000010010111110110", 
    478 => "00010011110100010001100000011101", 
    479 => "00010110111100100000000000011111", 
    480 => "00010111000111110000110000011100", 
    481 => "11110100000010010000001010111110", 
    482 => "11100011111100001111110000010000", 
    483 => "11111001000001001111011111000100", 
    484 => "11110000111110010000001100101111", 
    485 => "00010010111000100000110111101101", 
    486 => "11111000111101010010010111001001", 
    487 => "00111110000110110001001011110001", 
    488 => "00100000111101111110101111101100", 
    489 => "11001010000011000000000111110110", 
    490 => "00010101000111100000111100011001", 
    491 => "00010010000011001111110011011011", 
    492 => "00001001001011011111100100000110", 
    493 => "11111011111001010000100111100100", 
    494 => "00110000000101011111000100001001", 
    495 => "11101010001100001111000111111100", 
    496 => "00010011000111101110100000000110", 
    497 => "00001010111000100000011000011011", 
    498 => "11100001000110111111110011111001", 
    499 => "00010011001011111111000000111001", 
    500 => "00000101000101011111010011110111", 
    501 => "11111010000011010000010000000111", 
    502 => "11110101111110000001110110001001", 
    503 => "11011000000001001100101111010010", 
    504 => "11111001111001111111101000000011", 
    505 => "00001000111101001101100011111110", 
    506 => "11111110111110110001011111101000", 
    507 => "00000000111111010001000000000011", 
    508 => "00111011001001110001010111111010", 
    509 => "11111010111111010000010001001111", 
    510 => "11100010111010010001110111001101", 
    511 => "11010011000111100000010000100010", 
    512 => "11110101000011111111000111101000", 
    513 => "00000011101000001100100000001101", 
    514 => "11110010110111111111001000010110", 
    515 => "00000001001011011111100011111111", 
    516 => "00101110111010001110111100100100", 
    517 => "00000101000000110101011111000101", 
    518 => "00100101000000111111000100101011", 
    519 => "00100100000011100001000000010010", 
    520 => "00010110110100100001000000010001", 
    521 => "01000001111001000010100011001110", 
    522 => "11101011110101001111100100101010", 
    523 => "11110110111010111110101111100111", 
    524 => "00010011000011101100101011111011", 
    525 => "11100101111010101110111011010011", 
    526 => "11110111000000101110000000001100", 
    527 => "00100101111101000000001100010111", 
    528 => "11011100001000000001010100000011", 
    529 => "00000001111100001111010011111000", 
    530 => "11101000111111100000010000100111", 
    531 => "00011111111100100000011111100111", 
    532 => "11110111111110111110110000010100", 
    533 => "11111001111001001110101011010011", 
    534 => "11001011000001010000000000011111", 
    535 => "00011100001010001110111011011111", 
    536 => "11010110110110100000001111100001", 
    537 => "11100111000000101101001111110101", 
    538 => "11101011000110001110011111101001", 
    539 => "00011011110011001101010111010111", 
    540 => "00000110110101111101011100000111", 
    541 => "11110110000010111110101000001000", 
    542 => "00000100111111001110100000001010", 
    543 => "11101110111010001101100100100000", 
    544 => "00011110111101001111110000011101", 
    545 => "11100011000110001110011100001111", 
    546 => "00101000111010110001000011101101", 
    547 => "11001000000101000000111000011010", 
    548 => "11100110000111000001001100100111", 
    549 => "11011011010001101101010000000111", 
    550 => "10101010110011101110110100011000", 
    551 => "11001111000100011110111111101111", 
    552 => "10111111111010010011010100000101", 
    553 => "01000100111011111111000001000000", 
    554 => "11111001000111000001101111111100", 
    555 => "11101111101111100000101011011000", 
    556 => "00001010111000010000111100000100", 
    557 => "00100001110111001101010111010000", 
    558 => "11001010111100010010011000010010", 
    559 => "11110011100111111101101100101000", 
    560 => "11110101000001110001000011010100", 
    561 => "00001110110110000011111000001000", 
    562 => "00100000000010011111111111101011", 
    563 => "11110101000111010001111111110011", 
    564 => "00000010000100101110110000010111", 
    565 => "11011101000100011111110111001000", 
    566 => "00001010010000101111001011111000", 
    567 => "11100110000100010000110100010111", 
    568 => "11110001000111100000110011111011", 
    569 => "11000110110111111111101000000001", 
    570 => "11101010000100001111100100111100", 
    571 => "00010110110111110001110011001100", 
    572 => "00011111110000000000110111101100", 
    573 => "00000010111000110010001000010001", 
    574 => "11010011001101100000011100101011", 
    575 => "11100110111011101111101011101101", 
    576 => "00101011010101100001001011111001", 
    577 => "11110111110001010000110011110110", 
    578 => "11100011110011001111111100101100", 
    579 => "11101110001101110011111011101001", 
    580 => "00000111000100001101110000001100", 
    581 => "11101000111100111011111011011111", 
    582 => "00100101110111100000100010111111", 
    583 => "00000000111101011110110101000101", 
    584 => "11111101111111111110101000000101", 
    585 => "11110011010001011100101100000000", 
    586 => "00100111001010001110100000100110", 
    587 => "11101111000010111101001010110100", 
    588 => "11111000011001100100101111010010", 
    589 => "11100110000101101111011100011010", 
    590 => "11111011000110011110001100101100", 
    591 => "00001000010000000000100011110011", 
    592 => "00001111110110000000011011100100", 
    593 => "00010000000000111101110011100010", 
    594 => "00000100001001110010110111001001", 
    595 => "11110011000101001110101101000001", 
    596 => "00100001011000100011011111000100", 
    597 => "10010110111110111001011101011010", 
    598 => "00101010111000011111010100100001", 
    599 => "00010000111011001110000111111111", 
    600 => "00001100011101000011111011010011", 
    601 => "11111001111101010011100001110111", 
    602 => "11011111111111111100100111000101", 
    603 => "11001010000101010101011100001111", 
    604 => "00010000001001001110101100000100", 
    605 => "00111010111100001100000101111010", 
    606 => "00001101101000111110011000101011", 
    607 => "00100100111001001110111111101110", 
    608 => "00000000110110111110100100000100", 
    609 => "11100001111111111100011111111111", 
    610 => "00010010111101001110110100011111", 
    611 => "00001111111111100011100100100100", 
    612 => "11011101000010000000100011110101", 
    613 => "00001010000001110011001010000110", 
    614 => "00101101101110011111000000001011", 
    615 => "00011110101100100001111101101111", 
    616 => "11110010000010101111111100000110", 
    617 => "11010001000101001111000100001110", 
    618 => "00000101110100111110000011001010", 
    619 => "11111010001010110000100011101000", 
    620 => "11111010110011010000000011111110", 
    621 => "11111000001010110101000000101111", 
    622 => "00001100101000010001001001000011", 
    623 => "11010101001010111100100100110011", 
    624 => "11011010101110000000100100001010", 
    625 => "11101001001000111011101101000101", 
    626 => "00101000111100111100000111111111", 
    627 => "10000111111000111111001111010100", 
    628 => "00100010110111110001000100101001", 
    629 => "00001011110110101100001111001111", 
    630 => "11010101110010111011010011010000", 
    631 => "11110111000101101100100111111001", 
    632 => "11111101111101011111111011000100", 
    633 => "01011011000010001110001001101100", 
    634 => "11110110110111101111111000010001", 
    635 => "11100100001101101101011000010111", 
    636 => "11110101000111111101111111111010", 
    637 => "00000011111100010000101111000110", 
    638 => "00010100000111011111100111100111", 
    639 => "11100000111001111100010100011110", 
    640 => "11110000010001111110101011001011", 
    641 => "11010010001110100000000111100101", 
    642 => "00100010000011100001001111110111", 
    643 => "11011111000010110010111111011010", 
    644 => "00001000000100100001100100001110", 
    645 => "11111101111100110001100110101101", 
    646 => "00001001111101001110110011101101", 
    647 => "11101011001010101011110101011000", 
    648 => "11100111111011001111111000000011", 
    649 => "11011111110110000000001011110000", 
    650 => "11110111000000001110111011011111", 
    651 => "00010111001001111010001100010111", 
    652 => "01001001111100101111111010110100", 
    653 => "00001110000100011110110111110011", 
    654 => "11011100000000000000010111101101", 
    655 => "11100110111011101110001100001101", 
    656 => "11101100111110001111101100000111", 
    657 => "11111000000101111110000000011000", 
    658 => "01000001111011001111001000011101", 
    659 => "11000011111000011010100100011111", 
    660 => "00011010111111010001011000001000", 
    661 => "00010001000100110010001011010110", 
    662 => "00010010000011100000110011001111", 
    663 => "11111000001110011101111010111001", 
    664 => "00101111111111100001000100000100", 
    665 => "00001100000001010010011001011100", 
    666 => "11100110001000110000011100000101", 
    667 => "11101101000011010001010011111010", 
    668 => "11101111001001011111100111111100", 
    669 => "00000111110010010000111011100110", 
    670 => "11110111000111010000001100001000", 
    671 => "00000101111110101110010000100001", 
    672 => "11100111000111001111101011001000", 
    673 => "11111100111111111111000100000001", 
    674 => "00011101111111111110111000010101", 
    675 => "11101001111010101111011101011100", 
    676 => "10101011000000101110111101000010", 
    677 => "00000110000001001110000100000100", 
    678 => "00000010001001010000000111001010", 
    679 => "11010010110001100100001101110000", 
    680 => "11001010000000010001111100010010", 
    681 => "00010101110110001101110100011110", 
    682 => "11111010001010000001000000100110", 
    683 => "11101000110001111111110011001010", 
    684 => "00101110001001010000011111011110", 
    685 => "11111011110101010000011110110011", 
    686 => "00011000111101001110011000111110", 
    687 => "11011010111101101100101000010010", 
    688 => "11011011001010010000110000000010", 
    689 => "00010010000001011111011110000001", 
    690 => "11100000000110001111011011011011", 
    691 => "11100100000111001010101000000010", 
    692 => "11111001110011100000111100000111", 
    693 => "00101100000110100000100111000011", 
    694 => "00010000000010001111111000010000", 
    695 => "00110111000010010011101011011111", 
    696 => "11110111111110011111011100000110", 
    697 => "00001010111101111111101100110000", 
    698 => "00001000001101111111001011101011", 
    699 => "00000111000000001101100100000000", 
    700 => "11110001111010010000110010111011", 
    701 => "00011011001000010010100010111101", 
    702 => "11001101111000111111111111111100", 
    703 => "00111001000001011110100010001101", 
    704 => "00000011101000111100001000010000", 
    705 => "00100101111011000010111100101000", 
    706 => "00010001111111111101011011110000", 
    707 => "11010101000010010000101011110100", 
    708 => "00011011000010100110101111110111", 
    709 => "00011001000011010000111011100101", 
    710 => "11001010110110000010000101100011", 
    711 => "11011100110110110001000110111001", 
    712 => "00001001111010101111011111110110", 
    713 => "00001011000100000010101111111110", 
    714 => "11111001000001111101011011101001", 
    715 => "11110000001111110010101100110111", 
    716 => "11011101101110010001110011110011", 
    717 => "00011100000001110001110011010010", 
    718 => "00010001111110101110011111110110", 
    719 => "10111000110011011101011100011011", 
    720 => "00010011000000101100110011111011", 
    721 => "11100111001011000000011000101110", 
    722 => "11111100000101110010110011110100", 
    723 => "01000011111011101110111100010111", 
    724 => "11010001000101111111010111110010", 
    725 => "11011001111110100001100011011111", 
    726 => "11110000111001000010011000010010", 
    727 => "11110111110111110010000011100110", 
    728 => "11100000101110110010111000100010", 
    729 => "00000101000010001100110011110001", 
    730 => "00101101001000110010100100000100", 
    731 => "00011010001011011111011111111011", 
    732 => "01000011101110111111101100100010", 
    733 => "11101110110111001101111111011000", 
    734 => "00001011111100110010110100011111", 
    735 => "00110010000011101110000011110101", 
    736 => "11111000101101011110000000011101", 
    737 => "00110011110100001111011001000110", 
    738 => "11101100000100000101000000001001", 
    739 => "11010010001001100100001000100101", 
    740 => "00100111111001010100000111111110", 
    741 => "00101011001001010010000100001100", 
    742 => "00011011111101000110111111110001", 
    743 => "00000101000010000000001111011000", 
    744 => "11001100111111000111110111010111", 
    745 => "00100111000000011110011000011010", 
    746 => "11101111110100011101101001010111", 
    747 => "00000110000110011110110000011000", 
    748 => "00110011000001111100110111110011", 
    749 => "00011011111110101111001100101001", 
    750 => "00001111111110001111010111100101", 
    751 => "00001000001000101111110100001111", 
    752 => "00010001110001000001100011000110", 
    753 => "00000100110001001101100011010001", 
    754 => "00001111001010001111000000010000", 
    755 => "11011101001001010011010000000100", 
    756 => "00101110010010110010011111000011", 
    757 => "11010011010011010000010111110011", 
    758 => "11101011001000100011101000100110", 
    759 => "00011000110101000011011100011001", 
    760 => "00010011111011011100111011100011", 
    761 => "11111101111101010011100100101100", 
    762 => "11110011000101000000110100010000", 
    763 => "00101010000011110011001000011111", 
    764 => "00001001111101110111111011101000", 
    765 => "11110010111110011100110000101000", 
    766 => "11011101000011000110100111110111", 
    767 => "11111011000100110010100111011000" );

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

entity ReadA121136_weights_0_4_28 is
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

architecture arch of ReadA121136_weights_0_4_28 is
    component ReadA121136_weights_0_4_28_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA121136_weights_0_4_28_rom_U :  component ReadA121136_weights_0_4_28_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

