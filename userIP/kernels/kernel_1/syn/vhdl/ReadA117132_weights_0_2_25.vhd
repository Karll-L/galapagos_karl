-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA117132_weights_0_2_25_rom is 
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


architecture rtl of ReadA117132_weights_0_2_25_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00010101000001110011010100110110", 
    1 => "11110111111010110000001000010000", 
    2 => "01001110111101001111010111011001", 
    3 => "00100010101011100000000000010011", 
    4 => "01000010000001011010011000100101", 
    5 => "10101010111111010001110011101011", 
    6 => "11100011000101101111101011111100", 
    7 => "11111110111110101111101011100010", 
    8 => "00000010110110111111011101001011", 
    9 => "11101100111110100000110110101110", 
    10 => "11111100000000111111011000100011", 
    11 => "11111010111010001111110100000011", 
    12 => "00100001001001011111010011100100", 
    13 => "11111101111111011111000100011110", 
    14 => "00001100111111101101101011110010", 
    15 => "11110101111010110001000101001110", 
    16 => "00000010110010000010101111010111", 
    17 => "11101100001001011111011100001000", 
    18 => "00001000111100010000100100010111", 
    19 => "11110001000011001111110100001010", 
    20 => "11101100111001111101101011010011", 
    21 => "11111011110111101111001111010111", 
    22 => "00000100000101001111000000000110", 
    23 => "11111011000011000000010111010011", 
    24 => "11111101000000110000100100001000", 
    25 => "00011001001001011111100111110111", 
    26 => "00101011110110011111011100000111", 
    27 => "11111010000100011010100100000011", 
    28 => "00001110111000110010001011101010", 
    29 => "00001000000100101110011100011110", 
    30 => "11110100000100001110000011110110", 
    31 => "11101110101111000000111011101001", 
    32 => "11111011000010011110000011011010", 
    33 => "11101111001011011111111011010110", 
    34 => "11100000110000010000011110110101", 
    35 => "00001110111101000000101011011111", 
    36 => "00000011111101010001111010111110", 
    37 => "11111110000010101101110111011001", 
    38 => "10101010111010111101100000000011", 
    39 => "11110010111101101111110111010101", 
    40 => "00010111001101110001100011000001", 
    41 => "11101000111111010001010011001110", 
    42 => "00001010110101011101110111100100", 
    43 => "00010011111111101111010011111010", 
    44 => "11100001111111110100010011100100", 
    45 => "11000111000101101011111111111000", 
    46 => "11110110111111010000011011011101", 
    47 => "11111011111010000010000100001010", 
    48 => "11011001111110100001010011110000", 
    49 => "00100111111101000000100100101110", 
    50 => "11011011111100001110011100010010", 
    51 => "11100101111101010001011000000000", 
    52 => "00000101001010101110110011111100", 
    53 => "00000000001010100001100111111111", 
    54 => "11101110111010000010011100100001", 
    55 => "11101101000011001101110011101110", 
    56 => "11110111001001001101111100010111", 
    57 => "11101100000000000001010011010110", 
    58 => "11101011111000111110101000110010", 
    59 => "11110110000000000001110111000011", 
    60 => "00100111000101111111011100101110", 
    61 => "00000001000110111101111111101100", 
    62 => "00010110111111111100111000001100", 
    63 => "10000010111111100000111011110000", 
    64 => "00000000001011011110110111110010", 
    65 => "00000110111010111110011100110111", 
    66 => "10111000000101111111010111101000", 
    67 => "00100100111010000001001011110000", 
    68 => "11110001110001111101010100010000", 
    69 => "11111101000101001110001010111000", 
    70 => "00010100000100110010100111101100", 
    71 => "00010011111111010000000001000110", 
    72 => "11011001111000100000010100000111", 
    73 => "11101100111010111101000110110111", 
    74 => "00011111111001101110110111110101", 
    75 => "00000110000001110000000000011010", 
    76 => "00000011111100111111010000001000", 
    77 => "00000111111101001110100111101111", 
    78 => "00000010001010000000101100000111", 
    79 => "00000001000010101101000011110011", 
    80 => "11100100111000010001111011001101", 
    81 => "00101101111100001110100011110101", 
    82 => "11110100110101100001100000001101", 
    83 => "00001111111111100010001100000010", 
    84 => "00000001110001011110110011000111", 
    85 => "11010100001111000001011011010011", 
    86 => "00011100111100011101110011110110", 
    87 => "11111101111110010000011111110111", 
    88 => "11111000001011000000110100001011", 
    89 => "00110011010100101101010100011111", 
    90 => "11111001110111011101111011011001", 
    91 => "00011111000011100000000000001101", 
    92 => "01001011001000000001111111011110", 
    93 => "01000001111111110000001110011111", 
    94 => "10110111001101010000001100001111", 
    95 => "11101110111001100000001011110010", 
    96 => "00100000000010111110000011111111", 
    97 => "00001010000100111111000011110001", 
    98 => "00000110000011110010100110111100", 
    99 => "11011110001101011101110000010111", 
    100 => "11100000000110101111101100010011", 
    101 => "00000100000000011111000100110100", 
    102 => "11100101000101011111111100001000", 
    103 => "11111001001100011111010111010011", 
    104 => "00010010000110000010001111101001", 
    105 => "00101101110100010000011000010101", 
    106 => "00001101111010101111111011101101", 
    107 => "00001000000110110001011100001011", 
    108 => "11111101110011110000001111111000", 
    109 => "00011100000101110001100000001010", 
    110 => "11110010000100101100000011011011", 
    111 => "01010001111111001101111011000110", 
    112 => "00010011110101001110101100100011", 
    113 => "00000111000101111110100011101011", 
    114 => "11111101111111000000111100000000", 
    115 => "11110100000010110001000111010001", 
    116 => "11111101111011001110100000001010", 
    117 => "11111010000011110000011100000001", 
    118 => "00010001000001111111000000001000", 
    119 => "00100000101111010001011100001001", 
    120 => "11010011111101100010000000000101", 
    121 => "11110101000100110010011010101001", 
    122 => "00001001111101000000111111101100", 
    123 => "00001001000100001111001111011010", 
    124 => "00011101000000010000010000111100", 
    125 => "00011100001111010100011111010101", 
    126 => "00100001111111101111011000010001", 
    127 => "00001000000011100000011000011000", 
    128 => "00001100000011011111100100101010", 
    129 => "00001000000011100000000111111110", 
    130 => "00010000000000011111111100000010", 
    131 => "00001110111111001111011011011111", 
    132 => "11110100111011010000011111111111", 
    133 => "11011101000111000000000111010101", 
    134 => "11010110110111110011100100000101", 
    135 => "00100100111110111111110100001101", 
    136 => "00011101110101000001011011000111", 
    137 => "11110101001011111111010000101010", 
    138 => "00001110001100100000100011111101", 
    139 => "00000001111110111110101110110001", 
    140 => "00000111111110110000100011111100", 
    141 => "01001001000100101110110011100111", 
    142 => "11101101010001011111001111110001", 
    143 => "00011011111011111111100111111101", 
    144 => "00100111111110101110010111101001", 
    145 => "00101000000100111110011111111111", 
    146 => "11000111111111001101101100011111", 
    147 => "00100010111101000001101111100110", 
    148 => "11011111000101010001100011111000", 
    149 => "11110101110100011101000011101100", 
    150 => "11001011001001110000000110011000", 
    151 => "11110001110110010001101100000001", 
    152 => "00111000000110101101111111001101", 
    153 => "00000111000001001110100100100000", 
    154 => "11111111000101000011100100101110", 
    155 => "00000010111100100000100111110111", 
    156 => "11111100111111001111000111111000", 
    157 => "00110001001000111111110011101111", 
    158 => "00000100000100001110111100100101", 
    159 => "00110010111100111110100111111111", 
    160 => "00010000000010110000111000000000", 
    161 => "00001000000011010000011000000010", 
    162 => "00010011001010111111110011100101", 
    163 => "11100101111011100000101000111100", 
    164 => "11010011000101001100111100100111", 
    165 => "00001010111100000001101000010001", 
    166 => "00001100111111000001111011110100", 
    167 => "00011101001000011101111001001001", 
    168 => "01100010101111110000110100011001", 
    169 => "00110100001111101111111000000001", 
    170 => "11001011110100000000100011011010", 
    171 => "10111110000101010010110100101000", 
    172 => "11010011000001110100010100011011", 
    173 => "00000111010010010000101000011001", 
    174 => "11010001001000001111110010100101", 
    175 => "00111110111011001110010100001010", 
    176 => "00000011100100011011101111111010", 
    177 => "00001110000001110011101011000100", 
    178 => "11111011111011000000001111101100", 
    179 => "00001000110011011110100100001110", 
    180 => "00000101000000011110010000000001", 
    181 => "00011101111001111101111011110100", 
    182 => "11100000111111010011000000011010", 
    183 => "00001011000001000001100100111001", 
    184 => "11101011111011001111111100000010", 
    185 => "00011101110011101011100000001001", 
    186 => "00000010111101111101110000101001", 
    187 => "00010101110100011100000100011011", 
    188 => "11101110111101011110110011010111", 
    189 => "00001000000100010000000100010110", 
    190 => "00000100111010001111001000000000", 
    191 => "00100010111011101111110100011000", 
    192 => "11111101111110011111010111101111", 
    193 => "11110011000101110010100010111011", 
    194 => "11101000111011010000011100000011", 
    195 => "00110000001011010011100111100100", 
    196 => "11010110000001110000000111101111", 
    197 => "00011001111010101110000100010101", 
    198 => "01001011111110110000101000011010", 
    199 => "00011010110011001110011000000100", 
    200 => "11100011000001011101111100000100", 
    201 => "00001010111101110000110000000101", 
    202 => "00111110000011011100111000000111", 
    203 => "00111010011001011111100100000010", 
    204 => "11111110001010001111010100001111", 
    205 => "11101110110101000000110000011110", 
    206 => "11010101000000110010010011100100", 
    207 => "10111010111011011110010111111100", 
    208 => "01000011001001110000001111001101", 
    209 => "00010000111111011110111000001010", 
    210 => "11011111111000111110101111111110", 
    211 => "00000010111100100000011100000011", 
    212 => "00001111001110010000101111010111", 
    213 => "00011011111111111111001010011000", 
    214 => "11110111000100110000010100000111", 
    215 => "00001111001111001111101111010100", 
    216 => "11111011000110110000011111111100", 
    217 => "11101111111011111111111100011110", 
    218 => "11110110110110011011010011011001", 
    219 => "11111100001011011111011011110100", 
    220 => "11110001111110101111111011111100", 
    221 => "11101001000001101111000011000000", 
    222 => "11110001000010101110010111111011", 
    223 => "11001010111000100010100100001100", 
    224 => "10111100000011010000000100100111", 
    225 => "11100011001001101111000011100000", 
    226 => "11100011110110111111100000000110", 
    227 => "00010010000110111110110000000110", 
    228 => "00000001111001010000101000011111", 
    229 => "00010010110111111111100011101101", 
    230 => "11111101001000010001011000010001", 
    231 => "00001011111010101110000000001110", 
    232 => "10111101001000010010001100001000", 
    233 => "00001010000010001101011000001110", 
    234 => "11111010111101100011000010110100", 
    235 => "11011100001101000001011111001011", 
    236 => "11111001000100100001101001010100", 
    237 => "11011110110100010001011000111011", 
    238 => "11110101001000011110100000001101", 
    239 => "11010100010100110001111011011110", 
    240 => "11100001001001010000100111110101", 
    241 => "00001001111110010001011111111101", 
    242 => "00011110000010000000101011110011", 
    243 => "00110010111110110010001011101000", 
    244 => "11010011001010010010001011100011", 
    245 => "11101100111010000010010111111100", 
    246 => "11100010110001001111111000001100", 
    247 => "11100000000000010000100100011011", 
    248 => "11111101110011101110010000110001", 
    249 => "00000000001111000010000011111000", 
    250 => "11001110111010110011010111110011", 
    251 => "00011100001011110000001111100100", 
    252 => "11011001111011100000010100101000", 
    253 => "00000000111101001110011011110011", 
    254 => "00100001111111011111011011111001", 
    255 => "00101100010000100001111100110111", 
    256 => "00100101110110001110000111111010", 
    257 => "11110010000011010000110111110101", 
    258 => "00011100111011110000010100000110", 
    259 => "00001100111100101111100100000000", 
    260 => "11111110111101001110101011110110", 
    261 => "11101101000010010001010100001011", 
    262 => "11010110111111110001110100000000", 
    263 => "11101011111101100001111011100000", 
    264 => "00001100000111011111001000000110", 
    265 => "00110010000011100001010111110000", 
    266 => "00011010000010111110110111111011", 
    267 => "00001111000101111111110100000101", 
    268 => "00000111001111100000001011100101", 
    269 => "00010010111101111111001000011010", 
    270 => "11100001001000111111000000011100", 
    271 => "00010111110010111100101000111011", 
    272 => "00010100000010100000001100000100", 
    273 => "00001001110110001100010000010111", 
    274 => "01011100110110111111110000001110", 
    275 => "00000110111101011111111000000111", 
    276 => "00010010001011100000100011110111", 
    277 => "11110000111100100010011011111011", 
    278 => "00001011000111111110110011000100", 
    279 => "11100100000000110001111011110101", 
    280 => "11110011111111100000011111110111", 
    281 => "00010010111010110001011111101001", 
    282 => "00001010111101100000010111101010", 
    283 => "00011110000101100011100100111001", 
    284 => "11111001111110011110001111010111", 
    285 => "11111001111010110000010100001101", 
    286 => "00000010000011011111111000000110", 
    287 => "11100111110101111111110111101100", 
    288 => "00111001111000001110010000100010", 
    289 => "00010001000011010001000011110100", 
    290 => "00101011000100001111100011110011", 
    291 => "00000000000111001101111000011000", 
    292 => "00100111001000111111100100101010", 
    293 => "11111011000100000000100111001100", 
    294 => "11111111000010000000100111110111", 
    295 => "00011111111100000000101011101101", 
    296 => "00001110001011111100000011111110", 
    297 => "11100000000011111110010000011001", 
    298 => "00010001101101011111001011100100", 
    299 => "00001110000010111101111011101111", 
    300 => "11111110111001101110010000010011", 
    301 => "00001011001000101101100001001100", 
    302 => "00001000111100010001001100000010", 
    303 => "11111001001110101111100111110001", 
    304 => "00111001000100001110111011110110", 
    305 => "11101111111101010000000000010011", 
    306 => "00110001000110100001000111100100", 
    307 => "11110111110011111100110100011111", 
    308 => "00001100000100001111110100011111", 
    309 => "11111000000101000001000100101001", 
    310 => "00100110000111000011011100101011", 
    311 => "00101011111001101111001111001000", 
    312 => "11110110111100111110111000010110", 
    313 => "11111101000101111110110011010001", 
    314 => "00010011000011100001000000000100", 
    315 => "11100010111100000001000100010110", 
    316 => "00100000000111010000010100000111", 
    317 => "11110011111011110000011111111011", 
    318 => "00000100000011100000100100001100", 
    319 => "00000000111111000001010100001111", 
    320 => "00000010110111010001101000101011", 
    321 => "00000101111010111111000000000011", 
    322 => "11101000111111010000011100010000", 
    323 => "00100010111101011111010011110101", 
    324 => "10001110111100111110111011100100", 
    325 => "00101010111101011101010110100111", 
    326 => "11100111111011011110110011010001", 
    327 => "11001000001101101111000100010101", 
    328 => "00010011000100100001111000000100", 
    329 => "00010001000111011101111000001000", 
    330 => "11111001111111110001001100000000", 
    331 => "00110110000111001101000100110100", 
    332 => "11111011111011100000010011111000", 
    333 => "11011110111111111111001011110100", 
    334 => "00011010111001110001101000000010", 
    335 => "11111011000001101100100000001110", 
    336 => "11111001111100011111100000011110", 
    337 => "00010111001000100010101000010101", 
    338 => "11100111000000110000101000001010", 
    339 => "11101111000000111101111011110111", 
    340 => "00000011001110110010011000001101", 
    341 => "11010100111110110010110001000100", 
    342 => "11111101111111001011001000000110", 
    343 => "11010101010011000000111010000001", 
    344 => "11110011000010000001101011111011", 
    345 => "10111000111010100001001011011110", 
    346 => "11110111110110101101101000000010", 
    347 => "11001101111011110000100000011111", 
    348 => "00000101001101110000111111101011", 
    349 => "00011111111010010011111111010110", 
    350 => "00000110111001110000111000000001", 
    351 => "11101111001001100000000111100000", 
    352 => "00100001111000010000000011110010", 
    353 => "11110011110110110000101011010110", 
    354 => "00100100111001011111001000010100", 
    355 => "00010000111111111110110100101110", 
    356 => "11110001000110101111101010011000", 
    357 => "11010110111011000001101000001110", 
    358 => "00000101010000100000011011001011", 
    359 => "11110111000001010010101100000011", 
    360 => "00110110110111111110010000010110", 
    361 => "11100111001001100011011111100110", 
    362 => "11111110000000111111011111011101", 
    363 => "11101001000111010000011011010000", 
    364 => "11100001001011100000110100100011", 
    365 => "11101101111111110010110111000111", 
    366 => "11111010111111111110101011101011", 
    367 => "11110011111110101101011000001000", 
    368 => "00010010111110110000010111101100", 
    369 => "11110110111111011100111011011101", 
    370 => "00001010111101010010001100001100", 
    371 => "11110111110100001101111111000011", 
    372 => "11011101000111100000010000001011", 
    373 => "00001011000110110001101100000101", 
    374 => "11110111101111100011010011011101", 
    375 => "11110000110100000000010011011110", 
    376 => "11011100111010111111110100011001", 
    377 => "11111001111001110000110100010011", 
    378 => "10110101000001101111111000110011", 
    379 => "11010001000101100100110111110101", 
    380 => "11101011111011100000110000011011", 
    381 => "11100000000100011111000100101011", 
    382 => "11011010001011100011011011101000", 
    383 => "11010100110110111111101011111100", 
    384 => "00001111001111010010011100110010", 
    385 => "00000100000100101110110100001100", 
    386 => "11010111000111101110110100011000", 
    387 => "01010001000000010001011110101110", 
    388 => "11100011001000011111000011101101", 
    389 => "11100110111000000010011011000001", 
    390 => "00010011110110011010110111111001", 
    391 => "11101110000101100001000011110101", 
    392 => "11101001000000100011101011100111", 
    393 => "00000000111110101110101110101011", 
    394 => "01000001101010011100011000100000", 
    395 => "00010000011000100000001100010110", 
    396 => "11001100001010111100110100000100", 
    397 => "00001011111111100011000000000010", 
    398 => "11111101000111110001000000001111", 
    399 => "00001111111110100010010100001001", 
    400 => "11111111001001100001010011110110", 
    401 => "11110101111010001100110011101000", 
    402 => "11111011111101110001000111111000", 
    403 => "11111101111011100000000111000000", 
    404 => "00001101111110011011101100011010", 
    405 => "11100100000011110000001000100101", 
    406 => "11001101000010000010011011010101", 
    407 => "00010001001010010001000110111100", 
    408 => "00010010000011100000101100001111", 
    409 => "00001011111000111101000000011011", 
    410 => "00011110000001101111100011101011", 
    411 => "11111010000110010000010100000011", 
    412 => "00011011000111110010111100011010", 
    413 => "11110000000000100000100011010110", 
    414 => "00001100010110101100111100000001", 
    415 => "11101011111001010001100011111111", 
    416 => "00010001111110100001000111100010", 
    417 => "11000110000001001111000011100101", 
    418 => "00010101111110010001101111011111", 
    419 => "00001011110010111111011000001100", 
    420 => "00010100111111010000011100001011", 
    421 => "11110010000010001110011100001001", 
    422 => "00010110110000111011010000011110", 
    423 => "00011111000010101101101100001101", 
    424 => "11011101011111101110100110111100", 
    425 => "11100100001101110011001111010101", 
    426 => "11111010000011000000100000011010", 
    427 => "11110001111111100000010111111101", 
    428 => "11100001110111001111110100010000", 
    429 => "01001011000101000001001101001100", 
    430 => "11101110111110110000100100001001", 
    431 => "11100011111011001100110010110100", 
    432 => "10101011001000010000011011000001", 
    433 => "11000101001100111111011000000001", 
    434 => "10111011000111100000011100011010", 
    435 => "00100101111001011111100111001101", 
    436 => "11010101001010100000100011111001", 
    437 => "11111000000010000010111111001001", 
    438 => "11111110110110110001111111010000", 
    439 => "11110110111100110000000011101001", 
    440 => "11101101001000111111110110110000", 
    441 => "00011001000001100100011011100001", 
    442 => "11111010000011110010111000000000", 
    443 => "00000110000111001110111100000000", 
    444 => "11110100111001111100011011101110", 
    445 => "11111010000001011111100011111100", 
    446 => "11110001111110111101001100010110", 
    447 => "11101011111111110001011011110110", 
    448 => "00100100111111111110100111110100", 
    449 => "00000100001110111110100011110010", 
    450 => "00000101000101110010110111100010", 
    451 => "11101110001001011110001000011111", 
    452 => "11100101111111010001100011100100", 
    453 => "11100000001000100000100011111000", 
    454 => "00001111000011101111100011110101", 
    455 => "11110101111001000001010011111110", 
    456 => "00110000000001010010110011010000", 
    457 => "11111011000111000001000100100001", 
    458 => "11110101000100000000100000001001", 
    459 => "00000000111011011111110111111110", 
    460 => "00000001000011010000010111011011", 
    461 => "00100100000110111110010100011001", 
    462 => "11101100110101010010001000001100", 
    463 => "00101011000011001110101011010010", 
    464 => "00011101000110100000110111101101", 
    465 => "00001001000010110001011000000100", 
    466 => "11010000000111001110011011111100", 
    467 => "11111111110110001111111000010110", 
    468 => "00001011000010101011100011011101", 
    469 => "11101101000011100001100111011011", 
    470 => "11111110000100100000111100000010", 
    471 => "00001011110110100001101100000001", 
    472 => "11111011111011010011000111111000", 
    473 => "00101011111110110001110111110101", 
    474 => "11110001000011110000100011011100", 
    475 => "11101010111111010010100011110001", 
    476 => "11111101111101101110000000010011", 
    477 => "00111010111100101111000100011010", 
    478 => "00000100110100100000011100000100", 
    479 => "11111000000101110000000000000101", 
    480 => "11100100000100010000100000001001", 
    481 => "00010101000110111111110011111000", 
    482 => "00000010000001101111010100011000", 
    483 => "11100011111100100001100011101100", 
    484 => "00100010111110000000001000000011", 
    485 => "11111100111010110000101000000001", 
    486 => "11011001000111110000011011110011", 
    487 => "11011110110001111111101100001110", 
    488 => "10101000000111111110001111100111", 
    489 => "11110010100110111111111100110001", 
    490 => "00000000000011100000000011101001", 
    491 => "11100111111000110000110011110110", 
    492 => "00001011111101111101101100011111", 
    493 => "11111011111000100000001100001111", 
    494 => "00111100000101110000011100010111", 
    495 => "00000010111101110100010011111100", 
    496 => "00000001111101100010011000001000", 
    497 => "11111111111101101111100100001001", 
    498 => "00010101000110000000001111111000", 
    499 => "00011011111111111111110101001000", 
    500 => "11001100001001000000011011111101", 
    501 => "11111100000011110000100111101010", 
    502 => "11010100001111111100001111101011", 
    503 => "11100110010001000010001000100100", 
    504 => "11100011111101010001000000011101", 
    505 => "00000000111100111111100100001001", 
    506 => "00000001111110101110111011111111", 
    507 => "11011000111110100000001100110001", 
    508 => "00111011000101100000100111100001", 
    509 => "11100010001011001101000100010101", 
    510 => "00100100000001100001011100100111", 
    511 => "11100101110000011111010011010110", 
    512 => "10111000001101000010100111110001", 
    513 => "11100101111000110001111000110010", 
    514 => "11011001000000011110111100000110", 
    515 => "11111101111101001111110000100001", 
    516 => "11011011010001110001001000010100", 
    517 => "11100000111100000001110011110001", 
    518 => "11011100110010100001111000010111", 
    519 => "11111010001101011111000000001010", 
    520 => "00110111111111011111100000100010", 
    521 => "11111100111001001111011100100011", 
    522 => "11011000000100000000010000011110", 
    523 => "00001001110110111111001111111000", 
    524 => "01010100111100100000001111110100", 
    525 => "11010011001001100000001000101101", 
    526 => "00110101111111000001011000110010", 
    527 => "11110001001001000010010011110011", 
    528 => "00110001111000111101110111010010", 
    529 => "00010101001000111111110101000011", 
    530 => "00000101000000010001011100000001", 
    531 => "11110101000101000001010101011010", 
    532 => "00100011001011101110001011110101", 
    533 => "00010000111111000000001111111011", 
    534 => "11101111000000110010001000001011", 
    535 => "00010101000010010010000011110011", 
    536 => "11101011111001100000100111110111", 
    537 => "11110111101110101111110100010100", 
    538 => "11111100001001011101001011101011", 
    539 => "11001000110101101011101100010000", 
    540 => "00000000000001011110000011011100", 
    541 => "00101010101010010000000000111001", 
    542 => "00000100111010011110010011100111", 
    543 => "00001000000010100001111011011001", 
    544 => "11100101111011110000001111111110", 
    545 => "11110111111000000000010000010000", 
    546 => "00010110111111110000101100100011", 
    547 => "11100011111110110001011111101001", 
    548 => "00110000001100011111101011110000", 
    549 => "11111001001000101100101011110011", 
    550 => "11100111001010110000110000110011", 
    551 => "11110011000011101111010111111010", 
    552 => "00000101111001001110011000110000", 
    553 => "11011110000100000000011011100000", 
    554 => "11111110111100000001110100000100", 
    555 => "00010101000101001111100100111011", 
    556 => "11100111000110000001011000000010", 
    557 => "00000000111100010101110011010010", 
    558 => "00001100000000100000101100110110", 
    559 => "00011010001011000000100000100001", 
    560 => "00000100111100100001100011100101", 
    561 => "11111110001101100000010100010011", 
    562 => "00000111111110011111001000010010", 
    563 => "11111010111110110000001011100010", 
    564 => "11001110000000111111101100001111", 
    565 => "11111110111100110011010100110110", 
    566 => "00110100000011000000000011100010", 
    567 => "00011010111100000000111000101111", 
    568 => "11000011111110011101100111011110", 
    569 => "00011010110101011111000111111111", 
    570 => "11110100111100110000111100001011", 
    571 => "11001101111011000001101100010010", 
    572 => "00010110111100011111001011101000", 
    573 => "11111100001000101101110100110000", 
    574 => "11101111110100000000010011100001", 
    575 => "11010101110001110000111101000011", 
    576 => "00111110111010100000111111101111", 
    577 => "11001000110001011101101111110010", 
    578 => "11111110111000100011100011111001", 
    579 => "00010001110101111011010011110111", 
    580 => "00010001000011110001111000001011", 
    581 => "11111010000000010010011000000001", 
    582 => "00100000111001101110110100011010", 
    583 => "11000101001100101101111011101000", 
    584 => "11010110111011000001111100001100", 
    585 => "11100010110010110011011001010100", 
    586 => "00100010111011110000001100000001", 
    587 => "00001001110101101110010000110101", 
    588 => "00001001001011000110100100011001", 
    589 => "11110101010001111111111110110000", 
    590 => "00100001010110011110111111111010", 
    591 => "00001011001110100000110100000110", 
    592 => "11110100111100010011001011100101", 
    593 => "11011001110000110000011100100111", 
    594 => "11111010000001101101101111001001", 
    595 => "11110101110110010001101011100101", 
    596 => "11110101000010011111111100011011", 
    597 => "00110001110110110010001101011011", 
    598 => "11111100111110001101000000010001", 
    599 => "11111011111001101110100111100000", 
    600 => "00100011111110001110000011011000", 
    601 => "11101111111101101110100000001111", 
    602 => "00011100111101011111000011010111", 
    603 => "11111111110111000000011100111101", 
    604 => "11110000111010100001001011110111", 
    605 => "00011010001100000010001100100011", 
    606 => "01101000101111011111110111110110", 
    607 => "01010011001110010010101011100110", 
    608 => "00010110110000011111010011011111", 
    609 => "00010000001100011111110111110000", 
    610 => "11100000111001011111100011101011", 
    611 => "00011111111111111111000011101101", 
    612 => "11101010000100000010101100000110", 
    613 => "00101011001011000000011111001011", 
    614 => "00011101000001110000000101000101", 
    615 => "11011111001100101100011100010101", 
    616 => "11101011000111000001001011101100", 
    617 => "00101101001011101110100011110011", 
    618 => "01001000110111001110110100100110", 
    619 => "11011010111110101110110100001001", 
    620 => "10101110111110011011110100101110", 
    621 => "11101010001001000001001001100011", 
    622 => "01001000111000010000000100111100", 
    623 => "10101101001000100001000000101011", 
    624 => "10110100000000010010011000001100", 
    625 => "11111110111100110000010011101100", 
    626 => "01011110001011001011110100000001", 
    627 => "11011110111000111110000011011100", 
    628 => "10110110001100001111001111011100", 
    629 => "01001001111101000010011100010000", 
    630 => "10101000110101001101010011111011", 
    631 => "00000010000101111111000000010100", 
    632 => "11110000001001011010011111000100", 
    633 => "11010110110110111011111111101101", 
    634 => "00111110000010011111100100101011", 
    635 => "00011010010000110010111100010101", 
    636 => "00000101111000111111000011010001", 
    637 => "11110010000101001101000111110100", 
    638 => "11100100111011100000110011011110", 
    639 => "00110000111000100000100000011000", 
    640 => "11011101001010001101100011101000", 
    641 => "00110110000001110011000011101001", 
    642 => "00010000000010000001111011100101", 
    643 => "11110010000010000001101011100110", 
    644 => "11110100001100000000000011010000", 
    645 => "00000101111100010001100100011011", 
    646 => "00000101111100001100001011101101", 
    647 => "00000100111001111101100100011011", 
    648 => "11111100000101010010111111110101", 
    649 => "00100000111100100000111100010001", 
    650 => "00011011111010011111010111001110", 
    651 => "00001111110111111101001000011100", 
    652 => "11011011000010010000110100100011", 
    653 => "00000000111111100000001011101111", 
    654 => "00001010000011100001001011100101", 
    655 => "11110100111010100000011000010100", 
    656 => "00010110111111000010001111101101", 
    657 => "00001101110101000001100000000100", 
    658 => "00101011000111000000100111111011", 
    659 => "11111110000111101110000100001000", 
    660 => "00011100111010100001110100001001", 
    661 => "00010001000111110000100100001100", 
    662 => "00011100000001000000100111100101", 
    663 => "00000011000110000001010111111001", 
    664 => "11001110101000001100111000000000", 
    665 => "11110111000111110001101000001001", 
    666 => "11101010001101101111011100000010", 
    667 => "11110000000010010010010011100011", 
    668 => "00100011111100111110010000100101", 
    669 => "00011110010011000010011000011010", 
    670 => "11111001000000011101110111101001", 
    671 => "00111101000110111110110011000100", 
    672 => "00000000111011000001001000001111", 
    673 => "00011000110000111111110011110000", 
    674 => "11100011000111110000010100001111", 
    675 => "11101100111100111110011000011111", 
    676 => "11110001111010100001101100010000", 
    677 => "00100101000010101011101100100001", 
    678 => "00011110001010000000100000000100", 
    679 => "11100000111101010000101111101100", 
    680 => "00010000000010101011100100000110", 
    681 => "11110101000001010000000100101111", 
    682 => "11100111010000110001011011011110", 
    683 => "11010110000100011110010100011000", 
    684 => "11010110000010000000101000011010", 
    685 => "11010110000101100001010100100101", 
    686 => "11101110000010001110100100001000", 
    687 => "11010010110101001100111100011101", 
    688 => "11111111001011011110011000011011", 
    689 => "11110001111011010000000111100011", 
    690 => "00001101000000101110111011111010", 
    691 => "11100000000010000010101000011000", 
    692 => "11100000110100001110100000011101", 
    693 => "00011110000010011110001000010100", 
    694 => "11110111110001011110000011110011", 
    695 => "11111001111101110001111111111000", 
    696 => "00011010000000111101100111100110", 
    697 => "00001011111100011101111100000110", 
    698 => "00101001001010011110100000001000", 
    699 => "11101011111010000010110100001000", 
    700 => "11110000110100010001001100010101", 
    701 => "00010000000010100001000000000101", 
    702 => "11011001111011100000010011110100", 
    703 => "11000111111010111111111000000100", 
    704 => "11111000110101101111001011111000", 
    705 => "00010110001100101110000000010001", 
    706 => "00110111000011000000011111110111", 
    707 => "11111101001001111111001011011011", 
    708 => "00010101111110011111010100001000", 
    709 => "00000111111111001111111111101111", 
    710 => "11110000111011011111111101001110", 
    711 => "11110110000001110001100101001011", 
    712 => "11110010000010111101010011011111", 
    713 => "11111111000110110001101111010110", 
    714 => "01100010000010101011000100100111", 
    715 => "11110101111101100000000011101100", 
    716 => "00001100000101001101010111111001", 
    717 => "11111000001011000000111000100101", 
    718 => "11111011010000011111001000010001", 
    719 => "00011100111010001101000100010010", 
    720 => "11001010000000011110101111101000", 
    721 => "11100010110011100001110100110000", 
    722 => "11110111001001010001111000001100", 
    723 => "11001110111110111101011011110100", 
    724 => "00010100000100011100110100010100", 
    725 => "00100111000011001111101011110111", 
    726 => "00000101110100110011001011110010", 
    727 => "11100100111110111011101100001001", 
    728 => "11011111000011100010001111101000", 
    729 => "11111000110010011110110011001110", 
    730 => "00001110000111111110111111100101", 
    731 => "00011000000001111110101100000000", 
    732 => "00101011111001011110111000011001", 
    733 => "00000100001000000001001011111000", 
    734 => "00000000110101100000011111111011", 
    735 => "11010111000100111111101011001011", 
    736 => "00011000110101011111111100000011", 
    737 => "00010101110001101110000000000010", 
    738 => "00000001111100000000000000101011", 
    739 => "00101000110010101101100011100011", 
    740 => "11110100000001100010110000011010", 
    741 => "00010111000001110001000001000000", 
    742 => "00100100111001011101100111000010", 
    743 => "00100010111110010011000000010001", 
    744 => "00000010111001110010010011011011", 
    745 => "00110010000110110000111000111101", 
    746 => "00011001111101100000000111010101", 
    747 => "11101101110110001100111110011000", 
    748 => "11011111000011010001001011111010", 
    749 => "11110011111000101101110111110010", 
    750 => "11111110000100111110111111111000", 
    751 => "11111000111000100001001000000011", 
    752 => "00001101111100000001110011001011", 
    753 => "00110000111000111100110000100111", 
    754 => "11110000001101101100000011101101", 
    755 => "11101001000010100110110100001100", 
    756 => "11010011000110001101000011111110", 
    757 => "11110111110000001100110011110110", 
    758 => "11100010000100010001010100001001", 
    759 => "00100010001000101101111100100010", 
    760 => "11011011010001111111000011111001", 
    761 => "11011010000001001010110000100000", 
    762 => "00000010111100001111011000000000", 
    763 => "11110010111001001101110100000100", 
    764 => "00000000000000011110111000010011", 
    765 => "00000101000011111111100011100010", 
    766 => "01001000001110001111000111100111", 
    767 => "00001000000010100000000001001111" );

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

entity ReadA117132_weights_0_2_25 is
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

architecture arch of ReadA117132_weights_0_2_25 is
    component ReadA117132_weights_0_2_25_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA117132_weights_0_2_25_rom_U :  component ReadA117132_weights_0_2_25_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

