-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA113128_weights_0_0_7_rom is 
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


architecture rtl of ReadA113128_weights_0_0_7_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00000101000000000010100111111001", 
    1 => "11011110000011011101101000010000", 
    2 => "00001100110111101111010000011110", 
    3 => "00011011001010000001111000000000", 
    4 => "11010101000101011110101111110111", 
    5 => "11110001000010000000110010110101", 
    6 => "11111110111001110000001011101001", 
    7 => "11101001111111101100010011110011", 
    8 => "00100100000110101111110100001001", 
    9 => "00101011000100011110001110111001", 
    10 => "11101000111010001110011011010110", 
    11 => "11010000111011111110101111110011", 
    12 => "00001000000010100000000100010110", 
    13 => "00010101101010110100011000100011", 
    14 => "00010100010001101111001100000110", 
    15 => "11111101000111110011001011111110", 
    16 => "11111110111111101111110011010011", 
    17 => "00011001101100111111010100011000", 
    18 => "11110001001011100101010000100001", 
    19 => "00101110000011101111111000101101", 
    20 => "00111100000111101111011011101011", 
    21 => "11010110001100001111101110101100", 
    22 => "00001111010011100000100100100011", 
    23 => "11011111001010000000001100100000", 
    24 => "00010001000000111111110011110110", 
    25 => "00001110000111100001101100010000", 
    26 => "00001110000010011111111000110111", 
    27 => "00011110001101101101001011100011", 
    28 => "11111100111110001111100000101111", 
    29 => "00001010000000010010011100101100", 
    30 => "00101110101100100001101011110011", 
    31 => "00011011111010101111010111101111", 
    32 => "11111101111111111110111100101111", 
    33 => "11110110111010011101110000110001", 
    34 => "00011110000100101110011111110010", 
    35 => "00010011110111111110110111011011", 
    36 => "00010111111010000000110111101010", 
    37 => "11111010000101100000111100000100", 
    38 => "00010110000010110000010110111010", 
    39 => "11110001000110111111111100110010", 
    40 => "00101001110111110000011011100000", 
    41 => "11100011111000000000000100011100", 
    42 => "11010101111001110001111000001111", 
    43 => "00100001111011000011010100011111", 
    44 => "00101101111100111110010011011110", 
    45 => "00000111000011001111110000000000", 
    46 => "00001110110000101101010100101011", 
    47 => "00100111000011110010000111100101", 
    48 => "11101001001001011111100011101111", 
    49 => "00101110000100000000001100100110", 
    50 => "11010110001000000010111111110000", 
    51 => "00110001111111000001010111011110", 
    52 => "11000110001101111111010111110111", 
    53 => "11100010111111100000001011001010", 
    54 => "11101101111100101111110111010000", 
    55 => "11011101101111110011001001000011", 
    56 => "00100000100000011100010100001000", 
    57 => "11101110111000010001100011111010", 
    58 => "00100110111100101111010111001011", 
    59 => "11110100111000111110011100011011", 
    60 => "00000010001010100001100100001110", 
    61 => "00111011110011111111101000100001", 
    62 => "00100100110100010010011011101011", 
    63 => "00000001010001111100010000000011", 
    64 => "00001011110001101110111011111001", 
    65 => "00001001011000111111010111011110", 
    66 => "11111000111100100001001011111101", 
    67 => "11110111000111001101111011111110", 
    68 => "00001001000101011111111011011011", 
    69 => "11101001111101011111001111100001", 
    70 => "00010010000110110010011000011111", 
    71 => "11111011110001111111101100101001", 
    72 => "11100001111001010000010000001001", 
    73 => "00010100001011101111001111100011", 
    74 => "11101011001001011111010000011000", 
    75 => "00001001000001100000001100000000", 
    76 => "00000100111011101110011000001000", 
    77 => "11110111111101000000110011110001", 
    78 => "00011001000001101111010111101001", 
    79 => "00100011001001010000000011010010", 
    80 => "00001001000001100000010000010011", 
    81 => "00000110110010101111010111100100", 
    82 => "00001001110110111110011000000100", 
    83 => "11010010111001010000010100000110", 
    84 => "11110010111100100000111000000000", 
    85 => "11110101111100110001101000010010", 
    86 => "11011111100111100001100100000011", 
    87 => "11110000000000101111010111100001", 
    88 => "00011111001100010001010011111011", 
    89 => "11101010111110101110011100010010", 
    90 => "11100010011000001111111011110110", 
    91 => "11010010110101000000011011100101", 
    92 => "11111001000101111111010111101010", 
    93 => "00000100000000100000011100100001", 
    94 => "11101001000010011111011100001100", 
    95 => "11011111111110001110111100010110", 
    96 => "11111110111110111110111100110100", 
    97 => "11111011110100100010111100000000", 
    98 => "00100000001000011111110000011001", 
    99 => "00010010000100110001100011011000", 
    100 => "11110001000111110000011100000010", 
    101 => "00001111111101111110010111101001", 
    102 => "00100010000000100001001100100000", 
    103 => "00000000111110001111011000010000", 
    104 => "10111010111010000001101100011000", 
    105 => "11111111111100001101111011001101", 
    106 => "00111000111100100001110100010010", 
    107 => "01100000000110010010011111111001", 
    108 => "00000011111101110001100011111010", 
    109 => "00001000000101111111001100010101", 
    110 => "11111110000011100000110011110111", 
    111 => "11111100111111111111000100001000", 
    112 => "00001011111111100000101100111110", 
    113 => "11001100000001100011000010101000", 
    114 => "00100101001100101111101111101000", 
    115 => "11111011001010001111000111111011", 
    116 => "00000010010000010001010011011110", 
    117 => "11110111001010010001010000001101", 
    118 => "00010110111111010010000011001111", 
    119 => "11100000000000010000110111001110", 
    120 => "11100111000010000000100100100010", 
    121 => "11101101000001100000110111111000", 
    122 => "11111001111100011111000011111000", 
    123 => "00100100000001101111000000011000", 
    124 => "00001101000010001110100011001110", 
    125 => "00100100000101101110111011100110", 
    126 => "10111101111110101111010000000111", 
    127 => "00011110000110001111001110101111", 
    128 => "00110000110111111110100001000101", 
    129 => "11011111010111011111100010111110", 
    130 => "11011111111000010010011100010010", 
    131 => "11101110111110110000001100100000", 
    132 => "11110011000000101111010100000010", 
    133 => "11110011000011000000011000011000", 
    134 => "11101010001000110011010000000100", 
    135 => "00000111110111000010110111100010", 
    136 => "11111111001101101110100000000111", 
    137 => "11000010101111111111101111100011", 
    138 => "00001111110100111110011111011101", 
    139 => "00100010000001011110011011001101", 
    140 => "00001001000011001100100000110100", 
    141 => "00001001001010101111000011111000", 
    142 => "11110111001100001111111100001111", 
    143 => "11101000111110010010000011110001", 
    144 => "00010100000001001111110100010001", 
    145 => "00111010001010101111101101001010", 
    146 => "00011110010000111111011100111000", 
    147 => "11111010110010100001111000000111", 
    148 => "11001111011111101111101000011111", 
    149 => "11110111001000010000101100011010", 
    150 => "11111011001001000011010100001010", 
    151 => "11100111000101111100101000011100", 
    152 => "00111000110010011110110111011111", 
    153 => "11111111111101111110110100011111", 
    154 => "00000101111010100000001011110001", 
    155 => "11110100111000101111111011110011", 
    156 => "00000100101111111111111100110000", 
    157 => "00010000110101110010100100101110", 
    158 => "11100010000010001100011001011101", 
    159 => "11110111000000110101011100100100", 
    160 => "11110111000110100001110000010111", 
    161 => "01001100000110001111110000100010", 
    162 => "11111111000100001111110100001010", 
    163 => "00000100000010010000011011110010", 
    164 => "11100110001000101110100100011011", 
    165 => "11101011111111100010001111111111", 
    166 => "11000111000101100000010100000110", 
    167 => "11100001111010000000001000010110", 
    168 => "00100000111101100001100100001000", 
    169 => "00000101111111110000011011111011", 
    170 => "11101110110101010010111110101110", 
    171 => "11111101001101101111010111001100", 
    172 => "11101110101101011100100111001000", 
    173 => "11110101001001010011100011011000", 
    174 => "10100001110001000000010110111111", 
    175 => "11010000110111011100110000011111", 
    176 => "11111101000100111111110001111110", 
    177 => "11110011111000000100010000111010", 
    178 => "00111111111110010001110011010011", 
    179 => "11000000011101111101111000101000", 
    180 => "00101011000001000000000011110100", 
    181 => "00001011000101010000001111011001", 
    182 => "00010000001101001111101011000001", 
    183 => "11100011000001111100111000001011", 
    184 => "00000100000001001111100000011011", 
    185 => "00101010000001011111100000011000", 
    186 => "10111111111111101111001100110001", 
    187 => "10011110111011110010000000110001", 
    188 => "11101001000011101111110111101101", 
    189 => "11110010001010111111010011100110", 
    190 => "11111010111101000000010000000000", 
    191 => "00011101000001001101000111101001", 
    192 => "00000101111100101110101111010110", 
    193 => "01010001110001110010010100101111", 
    194 => "10111001001011001110010010111000", 
    195 => "00000101111010101111110010110111", 
    196 => "00001111000010000000011000001111", 
    197 => "11111100000111110000110011101100", 
    198 => "00010011000010011110011000011110", 
    199 => "11010111010101100001100111011000", 
    200 => "00000101001100001110100000001000", 
    201 => "11010101111110101111101011010101", 
    202 => "11100000111101010000010000010001", 
    203 => "00000100001011000001010000000100", 
    204 => "00100111110111010000000111101011", 
    205 => "11111111000000110000000000010100", 
    206 => "11101100110111111110001011010110", 
    207 => "00000011111110010000000100000110", 
    208 => "11001011001001001110001000011010", 
    209 => "11011101000110000000111011011110", 
    210 => "00010001000010001111110000000101", 
    211 => "00010001010010101101111100010111", 
    212 => "00011011111001101111011000000010", 
    213 => "01010011001010000000101000100011", 
    214 => "11010011001000010000011111001111", 
    215 => "11110100101110111111001011101110", 
    216 => "00001010000010011110101011010111", 
    217 => "11110000010011101100111111100010", 
    218 => "01000000110101100010001011001110", 
    219 => "11011100000000100010010111110101", 
    220 => "11011110111011001111001011100111", 
    221 => "00000110000110011110100011111101", 
    222 => "11110001000011111101000000101100", 
    223 => "11010101001011011110111011111000", 
    224 => "00010010110101100000010000010011", 
    225 => "11101110001011000011110000010100", 
    226 => "00001010111000101101110100001010", 
    227 => "11110101001000010000010111011010", 
    228 => "11111100111001100011001100000001", 
    229 => "00010101001001011111111000011010", 
    230 => "11111100000001111101011011111101", 
    231 => "11001101110100100010100000101000", 
    232 => "10111101111100011111011100011000", 
    233 => "11100110000010011111101111110111", 
    234 => "11111111000000001101000100011000", 
    235 => "00011011000010111101111100000110", 
    236 => "00010101000001010000110111010011", 
    237 => "00001000111001001111100010000001", 
    238 => "11100101001011001110001000000100", 
    239 => "00000101111110111101100000100000", 
    240 => "11011110111010110000101100010001", 
    241 => "00001010111011111110001011111010", 
    242 => "00100111111001111110011011011010", 
    243 => "00001110000111010000011100111010", 
    244 => "11101110111111100001101011101000", 
    245 => "11110011111000010011000011010010", 
    246 => "11111010101101001111011101001110", 
    247 => "01000010110001110011001000000011", 
    248 => "11001000000001111111000111111001", 
    249 => "00100111110100101011100111001011", 
    250 => "00101010111100011111000000011001", 
    251 => "11110111111111110001000100001001", 
    252 => "00001111000000111111000111111000", 
    253 => "00000011111000000011101000001101", 
    254 => "11011011000010100001000011110111", 
    255 => "00101110111000011110100000001001", 
    256 => "00010001000101000000101100011110", 
    257 => "11101011111000110001000011110100", 
    258 => "00010111001000111111011011111101", 
    259 => "00001100110101101110111011111100", 
    260 => "11111100110101001101000100010010", 
    261 => "00000110001011000000111100001100", 
    262 => "00000101111000011111011000011010", 
    263 => "00011110001000100001011111111101", 
    264 => "00001011111011110000000000100001", 
    265 => "00100101111010001111101111111011", 
    266 => "11101000001101010001011000000001", 
    267 => "11111001000100000000110000000001", 
    268 => "11101101000000101110110100101001", 
    269 => "11110111111110100000110000011001", 
    270 => "00001100110100110001001000001100", 
    271 => "11110000111100011110010100001000", 
    272 => "00010000000111111111110111100100", 
    273 => "11100011000011001111010011101001", 
    274 => "00111000111100110000001011110110", 
    275 => "00011100101101010001011110110110", 
    276 => "00011000000110110000111111111001", 
    277 => "11011010111000011111001000101001", 
    278 => "00001100111010001111100100001010", 
    279 => "00001000110110110010000000010001", 
    280 => "11010110000001000000101011100010", 
    281 => "11111010001001011111110100000110", 
    282 => "11111000000111101111101011110111", 
    283 => "11111100110110000001000011011010", 
    284 => "11100100101110001101000111110001", 
    285 => "11110110111011010000100011100010", 
    286 => "00000010001011101110011011110111", 
    287 => "11010110111010010010001111100000", 
    288 => "11101100000010110000110000010001", 
    289 => "00001111001000001111101011010100", 
    290 => "00001010110100000001110000110011", 
    291 => "11111001000000101111000000000111", 
    292 => "00100000001110101111011100001110", 
    293 => "00001001000101110000010100000101", 
    294 => "11110110111100000010011100000100", 
    295 => "00011000111101011111110011101101", 
    296 => "11110001111011011110111000011100", 
    297 => "00000101111100110000010111111011", 
    298 => "00000110000101110000000111111100", 
    299 => "00000111000000101110010100000011", 
    300 => "11111100111010110000001000000110", 
    301 => "00000011001000010000011111111100", 
    302 => "00000110000101000000101111110000", 
    303 => "00011110000000011110011111110010", 
    304 => "00000001110100010001010011101111", 
    305 => "00001101111011100000101100101101", 
    306 => "11011101110111100000000100000111", 
    307 => "11110101000001000000101100011111", 
    308 => "00011001001000010011001100100101", 
    309 => "00010100110111000001011111011110", 
    310 => "00010011111000110000001000000111", 
    311 => "11100010001010001101101000101101", 
    312 => "11101100111110111111011111101110", 
    313 => "00010100111110000000111100011001", 
    314 => "00000011010100101111010000001111", 
    315 => "11010100111000000000001111110110", 
    316 => "11100010111010000000110111111110", 
    317 => "11111110000101100001011011101101", 
    318 => "00001101111010000000011011111010", 
    319 => "11100011010101101111011100001110", 
    320 => "11011110110101011111010000001111", 
    321 => "00010100111100000000101000011011", 
    322 => "11001000110100011111110000011101", 
    323 => "11001101111110000010100011111000", 
    324 => "10110000000011010001100011101111", 
    325 => "00101110110001001111111011110011", 
    326 => "11110100000011101101111111101010", 
    327 => "00100100000100110000000011101000", 
    328 => "00000000001110010000101111111101", 
    329 => "00101000001010010001101011101010", 
    330 => "11101001001001111101001100001001", 
    331 => "10110101111100001101011100101101", 
    332 => "00010111000011001110101010011111", 
    333 => "00001000000110001011101101000101", 
    334 => "00100010001001000000011100101000", 
    335 => "00000010000111100000001111100100", 
    336 => "00001010101111101101010001010000", 
    337 => "00101010000010011101110000111111", 
    338 => "00111011110110101111101100011111", 
    339 => "00000001111111000010101011111001", 
    340 => "00110001111011000001110000000000", 
    341 => "00110011001010100001101011111001", 
    342 => "00011011111100010001000100011100", 
    343 => "00010010111110110001101000001110", 
    344 => "11100000001011101101100000001100", 
    345 => "00011000111011010000111100101111", 
    346 => "11111000110001101111111111111110", 
    347 => "11110100001111110000110011110100", 
    348 => "00111001111000100001011011011011", 
    349 => "11101110110010001111011000010011", 
    350 => "11101100001101010100101100010001", 
    351 => "11101000000010110000101100000101", 
    352 => "11111100010100011111100011101101", 
    353 => "11101011111111100000011000011101", 
    354 => "00100000111100010001100100000110", 
    355 => "00001001111100101110100011111101", 
    356 => "11100000000011001110001011000110", 
    357 => "10111101000011010001100111100100", 
    358 => "00000001111010011010101110101001", 
    359 => "11111110000000011100101111000001", 
    360 => "00010100000100011100010011011110", 
    361 => "01001100111011110001100100110000", 
    362 => "11110010110110111111011011010111", 
    363 => "11101111000011010000101010111100", 
    364 => "00010001110111000000101111100000", 
    365 => "00011010001100010010110111101100", 
    366 => "11010101000111010000111000110011", 
    367 => "00010000000010111110100100101010", 
    368 => "00001111000100011110010010101000", 
    369 => "11101110101111110000101011100010", 
    370 => "11100010010000100001001000001001", 
    371 => "00000001111010010100100011111010", 
    372 => "00001001000110001101110100000110", 
    373 => "00110110000011000010111011010011", 
    374 => "11001010000100100010000000010100", 
    375 => "11110000111101100011100111100010", 
    376 => "11110111110101001110010000101011", 
    377 => "00101010001101110001010100100001", 
    378 => "11011011111010100010100110110001", 
    379 => "11000100110101001101111111011010", 
    380 => "11101111110100001100010111111011", 
    381 => "00111100000001000011000100010000", 
    382 => "11010010101111111110001000010000", 
    383 => "11111011111101001110101011011100", 
    384 => "11101000111110110001110100010000", 
    385 => "00110100000111011101110000100011", 
    386 => "11001010001110011101100011101111", 
    387 => "11100111001011001100110101001011", 
    388 => "11101101111110101110110100000101", 
    389 => "00000101001010011110100111100010", 
    390 => "00000000000111110000010011100001", 
    391 => "11110111001001000011000101001111", 
    392 => "11110111000110101101110111010011", 
    393 => "00110101111010101111000100001001", 
    394 => "00110011110010110001010100000010", 
    395 => "00110000001000101100111111111110", 
    396 => "11101101000010001111110100001100", 
    397 => "00010101111010001110100000001101", 
    398 => "11011110101001111110101101010001", 
    399 => "00000111101110100001101100000100", 
    400 => "11111011010000010000000011110111", 
    401 => "11100000110011101110010000011110", 
    402 => "00000010000101010000000100000001", 
    403 => "11100010111110001111010010100010", 
    404 => "11110010111100100001000000000000", 
    405 => "00101001000111101101111100110001", 
    406 => "11101011111101110000110011110111", 
    407 => "11110011110100011110111011111101", 
    408 => "00001100111111100000010111010001", 
    409 => "00000001000000001110010111001100", 
    410 => "10111111001010001100110100000011", 
    411 => "00010100101100010010110000011100", 
    412 => "11001000111110011111000011111101", 
    413 => "11101010001000000100001011111111", 
    414 => "00110010000110110001001111100010", 
    415 => "11101011010011000001001011110000", 
    416 => "11100010111111110001011000010010", 
    417 => "00000111101111000000110000001110", 
    418 => "10111011000011110010111011100111", 
    419 => "10110011111110000100111000001110", 
    420 => "10011011111001011111101011110110", 
    421 => "00000011001001001111101000111110", 
    422 => "00011010111000000001001111101110", 
    423 => "00000110001001001111001100101110", 
    424 => "11110100000010000000010011011011", 
    425 => "00000010000100001111110000000000", 
    426 => "00010100000111010001111011110101", 
    427 => "01001101001000010000111011110001", 
    428 => "11011111000101100010100011110100", 
    429 => "11111011000010011110101011111110", 
    430 => "11100001001011111111001100010100", 
    431 => "00010011000100011111110011011110", 
    432 => "00011001000111011111011011110111", 
    433 => "00001100001111111110010100010101", 
    434 => "00101001000101111111010111110101", 
    435 => "01000011111110111101111011110111", 
    436 => "11111111110110010001000101001010", 
    437 => "11001011111010111111111100001100", 
    438 => "00010100000010001101110000010010", 
    439 => "00001100001101101110100100100010", 
    440 => "11000000110000101110000110110111", 
    441 => "11110011001011000001100011001101", 
    442 => "11010101111001001110011011011110", 
    443 => "11100010100111100001110101001000", 
    444 => "00011010000011001110100111110101", 
    445 => "00100000111100011111100111110000", 
    446 => "11110011110101110000010111111001", 
    447 => "00101111001001000011100000010001", 
    448 => "11110011000110001111100000001011", 
    449 => "11111001000101001111110100000111", 
    450 => "11111000000100010010011011111001", 
    451 => "11001001000011000001000111111110", 
    452 => "11100100001000100001110111100110", 
    453 => "00010001000001000001001111001010", 
    454 => "11110000001101000001011100001100", 
    455 => "00010001110110110000000000010001", 
    456 => "00000110000000011101100011111100", 
    457 => "00000110111011111111100111100101", 
    458 => "11100101000011010000001011111001", 
    459 => "00001011000001111111110111110110", 
    460 => "00000010001001111111101100000010", 
    461 => "11101110111100000000011000100100", 
    462 => "11101100000001001111110000001110", 
    463 => "11110101111011111111110100001010", 
    464 => "00010000000001011111100111111001", 
    465 => "11110010000100111111101111101100", 
    466 => "00100011111110110000010111101100", 
    467 => "00010000000010001110100011111101", 
    468 => "11111011000011111111101110111111", 
    469 => "11010001001000100000011100010010", 
    470 => "00101111111101101100100111111100", 
    471 => "00001100001101000000001101010110", 
    472 => "00001000111001111110111011111110", 
    473 => "00101011101101000000101011110110", 
    474 => "11011010110010011100111011010111", 
    475 => "00011101000001011110100111111111", 
    476 => "00000111001000000000010100000101", 
    477 => "11110010000010001111011111100011", 
    478 => "00100001001111001111010111100111", 
    479 => "11011011110110011111100101110011", 
    480 => "00000101000101100001110011101000", 
    481 => "00001100000001011110100011010010", 
    482 => "00001100000001000000101111011010", 
    483 => "11110111111101011111111011111001", 
    484 => "11101100000011001011011000000110", 
    485 => "00100101000010000001100111001101", 
    486 => "10110110110000011111001111111101", 
    487 => "00100001001101101100101111100001", 
    488 => "00000001111101110001110111111100", 
    489 => "00001101000000101101011100010110", 
    490 => "11101101001010100100100000011111", 
    491 => "11001111111101000000010100100011", 
    492 => "01000100010111001111010010110110", 
    493 => "00000011111000101111000111110000", 
    494 => "00011000000001111110110111111000", 
    495 => "11110110001000011110010100001001", 
    496 => "11111000000010010001010111111001", 
    497 => "00000110111100110000001111110110", 
    498 => "00001011110101000000010011110111", 
    499 => "11110111101111011111101011001111", 
    500 => "11110100111110111111010011111100", 
    501 => "11011010110111100000011111011001", 
    502 => "00000100111000111110011111101000", 
    503 => "00010100000001000000100100001010", 
    504 => "00010111010100101111111100000111", 
    505 => "11100000111111110011011110110011", 
    506 => "11111010000111110101000000001001", 
    507 => "11111101001000101100011011111110", 
    508 => "11110101111110101111000000010111", 
    509 => "00000000111000010000010100000111", 
    510 => "11101101000011101101100000101011", 
    511 => "11101001111011110001111011011001", 
    512 => "00000010000110001111111011101011", 
    513 => "11110100001011111110101000010111", 
    514 => "11011111000010100001010000001001", 
    515 => "11010000111100010001001100101111", 
    516 => "11111110010000010010001000101010", 
    517 => "00010111001001001111001111100001", 
    518 => "00101111000101100000101000000100", 
    519 => "11110010010100010001000011110000", 
    520 => "11010101000000010000110011000000", 
    521 => "11100101000010101111010011111100", 
    522 => "00011100111110111111110011110111", 
    523 => "11111100110110010010100011100010", 
    524 => "00000101000101011111000100010100", 
    525 => "11010101000001011101111100001001", 
    526 => "00010110110111101111100111100001", 
    527 => "00111010111011100011000011000111", 
    528 => "11010110101100110000011100100000", 
    529 => "11110111101011001110111111101111", 
    530 => "00011001000011111111010100000110", 
    531 => "00000001000010011110101111100001", 
    532 => "00001000110011010000011011011110", 
    533 => "00001001111101110000010011010000", 
    534 => "00001000000110111110110000001100", 
    535 => "00000000000110110011011001000011", 
    536 => "00110101001011001110111000010101", 
    537 => "00001000000100111111001000000000", 
    538 => "00000001110111110001011000001100", 
    539 => "11101011000010010000011111111010", 
    540 => "00011001111100010001000100001010", 
    541 => "11101100000011011111101000110011", 
    542 => "11101000000100010000100011111000", 
    543 => "00001110000110011110100000011000", 
    544 => "11110111000011010000000011111000", 
    545 => "00101111101100000001100100010010", 
    546 => "00001011111110111101010011100001", 
    547 => "00010101111001101111010000000001", 
    548 => "11101000111101011110101011111001", 
    549 => "00000100111101100000101011100000", 
    550 => "00000111111010000010110100011100", 
    551 => "00011110000010111111011111101010", 
    552 => "11001101111101111111111000100110", 
    553 => "11110001111010011111011100100010", 
    554 => "00000001111110110000001111110110", 
    555 => "01000010111111101111100101000010", 
    556 => "11100000001110110000001111111111", 
    557 => "00011000111111111110111111110001", 
    558 => "11101010000101100000010111111100", 
    559 => "00010100110110010010110000000111", 
    560 => "00000100000100101111101111110101", 
    561 => "00010101111011000000010100001100", 
    562 => "00001000110101010000010111100000", 
    563 => "00001011000011100001000011001110", 
    564 => "00000010110010001110111111010001", 
    565 => "00000000110011010010101011111111", 
    566 => "00001111000110110000000111101100", 
    567 => "00001010101101000001111000000100", 
    568 => "00010101000101110001101111101001", 
    569 => "00100110110011010000110111111010", 
    570 => "00101010110111101110110011101010", 
    571 => "11111010001000110000111011111101", 
    572 => "00000111001000101111000011000001", 
    573 => "11110101001001110010001111111001", 
    574 => "00011101000001100000010111000110", 
    575 => "11110101010101100000000000001110", 
    576 => "00000001111011000000001011100100", 
    577 => "11011101001011100010110100001010", 
    578 => "00011101110110111111001011111110", 
    579 => "00011110000010010110001111001101", 
    580 => "11110100111011111110010010111101", 
    581 => "11101010111111101111011100001100", 
    582 => "11111110101000001111100011010111", 
    583 => "11111111111000000011100000100010", 
    584 => "11111111010001000010100100001010", 
    585 => "00001000000011011111100111011011", 
    586 => "00001011000101001111101111010100", 
    587 => "00110001101001100011011011001100", 
    588 => "11000111111110011110100011100001", 
    589 => "00101010110010001100111100100011", 
    590 => "00000100001000101100110000011111", 
    591 => "00101010111011110100100100110101", 
    592 => "00011101111110000011001111111110", 
    593 => "11010001000001101110011101110111", 
    594 => "00001011110100000001000010111101", 
    595 => "00100111111000000110110011010011", 
    596 => "10010010111010000011001000010010", 
    597 => "00011000101110010001011011001111", 
    598 => "00110001111100111111110100000011", 
    599 => "11111010111101110000010011110110", 
    600 => "00001010001010100000001111111011", 
    601 => "11101000110100111111000011100101", 
    602 => "00010001111101001101011111010000", 
    603 => "11010110001100001110000000001100", 
    604 => "00110010111100011111001111100001", 
    605 => "11111001000101001111111100001110", 
    606 => "00111001111001101111011000011111", 
    607 => "00101000000110011110101000010100", 
    608 => "10111111111011001110101111010110", 
    609 => "00000100000100001110010011100100", 
    610 => "00010000110111100000101011110101", 
    611 => "10110101000010001110010011011010", 
    612 => "11101001000001010000111011111001", 
    613 => "00000101001000000010001011101100", 
    614 => "01010100000000111110110111110010", 
    615 => "11101110001011010011010000100111", 
    616 => "11010011000011100001000111100101", 
    617 => "11100111111110001100001100010101", 
    618 => "11100001000001010000011111011011", 
    619 => "00111011000010110010110011011100", 
    620 => "00100001000101000000010100100001", 
    621 => "00110110001110110010000011101111", 
    622 => "11010111000001001110101100110100", 
    623 => "11110111000110111100011000010100", 
    624 => "00001000000110011111011111011001", 
    625 => "00000001001010100000011100000101", 
    626 => "11111001111100101110011000000001", 
    627 => "11011111010111100010001000110000", 
    628 => "00110001111101000001000011101111", 
    629 => "00101111110100011111110011011100", 
    630 => "00000110001010110000111000010101", 
    631 => "11110001110100111110110100001101", 
    632 => "00010010000110011111111100111110", 
    633 => "00100000110010111100111000100111", 
    634 => "00100010001011001110111011100100", 
    635 => "00011011000010100000010000011100", 
    636 => "00010001110100011111111001001110", 
    637 => "01011110000010000000100111110100", 
    638 => "11110010000010110000100011100011", 
    639 => "11110100000100011110011011000101", 
    640 => "00101000000110000000010011110001", 
    641 => "11111100001101101111001111101100", 
    642 => "00000110000010111111100011110100", 
    643 => "00010000001001001110110011111111", 
    644 => "11101110001011010001000100001001", 
    645 => "11010000001110001100010000100101", 
    646 => "00010000000000010001110000000100", 
    647 => "00001110010100101111001011111110", 
    648 => "00100100111011000001000000000010", 
    649 => "00011000110110001111101000000110", 
    650 => "00000010000100001111111000010110", 
    651 => "00001010111110010000000100000110", 
    652 => "00011111000011010001010011100010", 
    653 => "11110110111010100001111100000110", 
    654 => "00010010001110001010111000100101", 
    655 => "00100010001110000001001000011100", 
    656 => "11001100000010010000111000101001", 
    657 => "11100001110110001101001111101010", 
    658 => "00001000000101001111101011111111", 
    659 => "11101100000111011111011000001101", 
    660 => "00001000000011110000010111101111", 
    661 => "11110101010111001110000111110000", 
    662 => "00011100110111101101110100011101", 
    663 => "00100110110101110011011111111000", 
    664 => "11010011111100111111001111101000", 
    665 => "01010000111011000110101000000101", 
    666 => "11110001001001011111101011101011", 
    667 => "00000100111010111110111111001101", 
    668 => "00011010111110111111101011101110", 
    669 => "11101100001011010001010011110000", 
    670 => "01100001000010001111001101001100", 
    671 => "00001110001110010011010111111100", 
    672 => "00001011110110010011101110111010", 
    673 => "11010010111010110001100000000010", 
    674 => "11111001000011001100101111111101", 
    675 => "00000100000001101111101011100001", 
    676 => "00011101111110011111101111110101", 
    677 => "00010000111010000100001111011010", 
    678 => "11100111001101101111001100001001", 
    679 => "00001010110110000001010000000100", 
    680 => "11111001111001000000010011111100", 
    681 => "00010010000100101101000111011101", 
    682 => "11101110000111111111010100001101", 
    683 => "00010100000011110000101111111001", 
    684 => "00010111111110000001111100010111", 
    685 => "11111010110100011111000111110000", 
    686 => "11110100111110010000000100000111", 
    687 => "11111110110110000000111100110000", 
    688 => "11100011000000101110101011101011", 
    689 => "11010101000111000001001011101001", 
    690 => "11110101000111101110100011101010", 
    691 => "00100001010001110000001011001011", 
    692 => "00001101111000110001001011100111", 
    693 => "00000011000101001111100000011111", 
    694 => "00100011000000001111101011011111", 
    695 => "00000001011111101111011100001110", 
    696 => "11111011111001100001110000001001", 
    697 => "11101111010110011110110100000010", 
    698 => "00011010000001100000000100000100", 
    699 => "00001010111010000000111111101001", 
    700 => "11010011111011000001100011100111", 
    701 => "11011100000001110000110011010010", 
    702 => "11111011111110110000111000001001", 
    703 => "00000011010000000010001000100101", 
    704 => "11100010000010000001011111111101", 
    705 => "00111100110101100001100000100011", 
    706 => "11100100110110100001010011111010", 
    707 => "00101001110001010010100111000110", 
    708 => "00000111110111001100111100100011", 
    709 => "00110001110011011110110011110111", 
    710 => "11110100111100000011110111100110", 
    711 => "11011000111110010010000111011111", 
    712 => "11011101111100111111111100000011", 
    713 => "11000101000111011110100111011101", 
    714 => "00010100000110001110010100001011", 
    715 => "00000001110111011110011111111010", 
    716 => "11111000000011000010010111011010", 
    717 => "11110000111000011111001000001010", 
    718 => "11110101000101001111001100001100", 
    719 => "11101110000001011111110111110010", 
    720 => "00000000000100010000110111110011", 
    721 => "00101001001001010000111100010010", 
    722 => "11111011001000100001101100011001", 
    723 => "00100010110000000001100011100100", 
    724 => "11011101111001101101101011001110", 
    725 => "00010010001011010000000011011100", 
    726 => "00111000001111000011100001001110", 
    727 => "00101001001110001101011101010010", 
    728 => "11011010000111111110111111100110", 
    729 => "00011011001010111111101011111100", 
    730 => "00000010111110010010000000001011", 
    731 => "11010011110101001101101000000100", 
    732 => "11101101010000000001101100100110", 
    733 => "00010011000100011101100000001100", 
    734 => "11100111001100000010000100111001", 
    735 => "00011101110100111101011011110001", 
    736 => "00001101000100011101001011110101", 
    737 => "00000110111001100010001100100110", 
    738 => "00000010111110101110001111111110", 
    739 => "11101101111100111110110011000101", 
    740 => "11100101000100100011110011111010", 
    741 => "11110011000011000000100011111010", 
    742 => "11001010111001010000000000011101", 
    743 => "00000100110111101110110011100100", 
    744 => "00000001001000100001011100001100", 
    745 => "11111011001000010000000100000001", 
    746 => "11101011001010010000000111110110", 
    747 => "11010110111011011111011011101001", 
    748 => "00011111001100010000100100010101", 
    749 => "00110111010000110000101010110010", 
    750 => "11110010110010000000110111110001", 
    751 => "00100101000010100000001000000000", 
    752 => "00011101111110010000011011101000", 
    753 => "11110100001011000000110000100011", 
    754 => "11111110000010110010000111000111", 
    755 => "11111110111010101100011001000100", 
    756 => "00001010000110010000100101001101", 
    757 => "00001110110111111011110100010101", 
    758 => "00110010000110000000110000001001", 
    759 => "11010111110010101100110100101101", 
    760 => "11110100111101010001111000000001", 
    761 => "10011001111111000000010011001111", 
    762 => "11010000001000101111111111111001", 
    763 => "00000111000011011110011000001111", 
    764 => "11111010000010010000110100000101", 
    765 => "11111100000101000001001000000100", 
    766 => "11110011111010010011011011000001", 
    767 => "11111111111110101100100111110010" );

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

entity ReadA113128_weights_0_0_7 is
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

architecture arch of ReadA113128_weights_0_0_7 is
    component ReadA113128_weights_0_0_7_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA113128_weights_0_0_7_rom_U :  component ReadA113128_weights_0_0_7_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

