-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA119134_weights_0_3_30_rom is 
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


architecture rtl of ReadA119134_weights_0_3_30_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00101011000110000000011011001010", 
    1 => "00100100111010111110010011110111", 
    2 => "11110110101001100001011111010010", 
    3 => "11010100110000100010101111001101", 
    4 => "00101110001111110011101000010001", 
    5 => "11100110100011011100011000000111", 
    6 => "00001010000100010000011111111110", 
    7 => "11101100001010001111000011100000", 
    8 => "11100011000001010010111000000100", 
    9 => "11110000110001110000000010110100", 
    10 => "00000011111111110001110100001100", 
    11 => "11110011110101101110000000010100", 
    12 => "11100010001001010001110000000111", 
    13 => "11011000101000100000001111101001", 
    14 => "11100110000111001110110011100100", 
    15 => "11101011010110000010010001000001", 
    16 => "11011100000001010000010011101011", 
    17 => "00011011101110111101011000001011", 
    18 => "11011000000010000000110000001000", 
    19 => "11011001001001101110001100001001", 
    20 => "00011010000101111110111001001000", 
    21 => "00000000111111001101100010110001", 
    22 => "11110001000100100010100000011111", 
    23 => "00100011110111000010001111110011", 
    24 => "11111100001100100011011000100000", 
    25 => "00001010000010111101100000001000", 
    26 => "00010001010011001111111000110110", 
    27 => "11100000111111111111100111001010", 
    28 => "00000001001110110011010000000011", 
    29 => "00101011111100101101100111111000", 
    30 => "00111110111011001010100111101001", 
    31 => "00001110110101100000100100000010", 
    32 => "00011111000110000000101000100010", 
    33 => "11011100101010111110100111110101", 
    34 => "00100001010001011011000111011111", 
    35 => "00010000000000010001010011001011", 
    36 => "00001100000100100011001011111101", 
    37 => "00000010111001101110001111000101", 
    38 => "11111011000111111001001011110001", 
    39 => "01001111101000110001011111010001", 
    40 => "00001001111010000000111111110101", 
    41 => "10101010001001110000100100111010", 
    42 => "11111101011010110001000011011110", 
    43 => "10000110101010011011010100100101", 
    44 => "01000100000000101011100100000010", 
    45 => "11111111010010010000101100010111", 
    46 => "11100101000000101101110111001101", 
    47 => "00011100101111101100111000101011", 
    48 => "00001000111011010010010100000110", 
    49 => "01010111100101101111101011111000", 
    50 => "00001011111011110001010110110110", 
    51 => "00100001111001111101101011011111", 
    52 => "11111101111101010101100100000000", 
    53 => "00011011110111101100101000111001", 
    54 => "11111000000010010000101111111010", 
    55 => "11111001001011011111011000000101", 
    56 => "11111111001110010010100111001001", 
    57 => "00000111110111110001110111011110", 
    58 => "00010000111100010110001000001100", 
    59 => "11100011000101100010110111011011", 
    60 => "00000111000111011100100000101001", 
    61 => "00011111011001000010100000010010", 
    62 => "11000001111111100001001011011101", 
    63 => "00001001110010100101000100001110", 
    64 => "11001101110111000001010000000100", 
    65 => "00001001000001011110011100111111", 
    66 => "11101001110100001101100011110000", 
    67 => "11110100111011011111111011111000", 
    68 => "10111111110111110110010011101011", 
    69 => "01000000001100110000000000111011", 
    70 => "00000001111000111111001100010000", 
    71 => "11111101110111111111000011101100", 
    72 => "11111010000101011011101001000000", 
    73 => "11011100110101010000001101000101", 
    74 => "11100111000100100000000000010010", 
    75 => "11101011110111100010110100001101", 
    76 => "11111110000000111110110100100101", 
    77 => "11111110000010010001000000011111", 
    78 => "11110100111100111011111011100011", 
    79 => "11000110000100101111101111101111", 
    80 => "11010111001000001101011000011111", 
    81 => "11010011110111000010010111100011", 
    82 => "00001011110101011101101100010110", 
    83 => "00110110110001111101011100111111", 
    84 => "11010100000101000011100011110001", 
    85 => "11011001110101110001110000100100", 
    86 => "00100001111100100001110111111000", 
    87 => "11111100001110000011101100101101", 
    88 => "00001001111101010000011100110011", 
    89 => "11100111111111110000111100100001", 
    90 => "00001001000011000001101111011010", 
    91 => "11010011110001010011001000000000", 
    92 => "00001010110111110001010111001011", 
    93 => "01000101001101111111000100011010", 
    94 => "11111110111000110011101000011101", 
    95 => "01010001110100111111100011001100", 
    96 => "11111001000011110000111000100011", 
    97 => "00001010000110100000011111010111", 
    98 => "00101011000001010000010011011101", 
    99 => "00000101110100100000111111011010", 
    100 => "11001101010110001001000000100111", 
    101 => "00100110001111011101001111010001", 
    102 => "00100010110010101011010000001111", 
    103 => "00011110100101011111010011100100", 
    104 => "11111111000001001110000000011010", 
    105 => "00111001001000001111110100000011", 
    106 => "00011101000010101111101011101101", 
    107 => "00100010001001011110101011110100", 
    108 => "11101000111000010000001111011001", 
    109 => "00010100001100001110110000100010", 
    110 => "11001110111100110001010011111001", 
    111 => "11100011000111000010010111001010", 
    112 => "00000001010001111100000010110110", 
    113 => "00100011111001001111100111011111", 
    114 => "00011011000101111111111111100010", 
    115 => "00011100111110011111111100000100", 
    116 => "00100111001010010000101100011001", 
    117 => "00111110111010001101111111001110", 
    118 => "00101101000000111110011011011110", 
    119 => "10110011001101001111011111111010", 
    120 => "01010111101111100001110011111101", 
    121 => "00101001101011110010100001001111", 
    122 => "00011000111101111101111011110010", 
    123 => "11101010000001100001010000010101", 
    124 => "10101011001100110011000011111010", 
    125 => "00100011101101111010010000111111", 
    126 => "00000001111111011110100111110100", 
    127 => "11011110000100000001000100001011", 
    128 => "00100001101010011101001000001100", 
    129 => "11000110010000111101011100101010", 
    130 => "11010111000100101111011100100000", 
    131 => "11000000000001010010000111111101", 
    132 => "00000010111111010010001111010010", 
    133 => "11110100000000011100111101000001", 
    134 => "00001000001001000010100000011001", 
    135 => "00100001110000011110111000001110", 
    136 => "00111001000001000100110011111000", 
    137 => "11110101000000010001000011100101", 
    138 => "10111100000001011111000100000100", 
    139 => "11100111110010011110110111100110", 
    140 => "00000000111110000110110000011100", 
    141 => "11001100101110010001111011100111", 
    142 => "11100100000110110001000011101011", 
    143 => "00001011111000111111111100010010", 
    144 => "01000001111111110001101101001010", 
    145 => "10101100000011011011100000010100", 
    146 => "00010011110111000010000011110110", 
    147 => "11101000000111000000010011111111", 
    148 => "11110011111111110000010000110111", 
    149 => "11101010111011110011001000011001", 
    150 => "00100100111001010000100100001011", 
    151 => "00001101000110011111000111110100", 
    152 => "11000110000011010010000011011000", 
    153 => "00000100000110100010001111000010", 
    154 => "00000110111111010001011000100111", 
    155 => "00001110000011010001000111101110", 
    156 => "00011110111111000001010000001011", 
    157 => "11000100111011111110001100010010", 
    158 => "00000101111101000010000011100011", 
    159 => "00001000111001101110001011110011", 
    160 => "00000110000100101111110011111110", 
    161 => "11000111110010101111111011101111", 
    162 => "11101010001111001101001000001010", 
    163 => "11001001001010101110000110110110", 
    164 => "00100011000110111111010111110010", 
    165 => "00010000000100101110110111111101", 
    166 => "11110101001101001111011111111101", 
    167 => "11001110111010011110001011011101", 
    168 => "00000110111110110100111011001001", 
    169 => "00010001000101111110001100001101", 
    170 => "00010001110000001100000000011001", 
    171 => "00110111010101010001001000011111", 
    172 => "00100010000110111101101100000001", 
    173 => "00000110101110101100011111001100", 
    174 => "00010001001000101110001011101000", 
    175 => "01010110110101011111111010100111", 
    176 => "11000001000011100110011110110101", 
    177 => "00100101000010100000100000100001", 
    178 => "11101011000101100001101100010110", 
    179 => "11110000111011011110101000000010", 
    180 => "01000110000000000011100111000011", 
    181 => "00000111110111101111111111011011", 
    182 => "11011100111011110000000100100100", 
    183 => "11111011111111011110111000111001", 
    184 => "11110010000110111110110111000110", 
    185 => "00000010110100100010010111101101", 
    186 => "11111011000101011111011100011000", 
    187 => "00000100101101110100111000111010", 
    188 => "01101010000110110000000000110101", 
    189 => "00001011000101110000011001001101", 
    190 => "00100101000011011111001111111111", 
    191 => "11111110000000001110011011011101", 
    192 => "11111110110001010011000011111110", 
    193 => "00000110000011111110110100001000", 
    194 => "00001000110110000010100100111001", 
    195 => "00101101000011101101110011100101", 
    196 => "10111001110010101110010000011111", 
    197 => "00000111111010111111100100101111", 
    198 => "00010000110001000000011111011011", 
    199 => "11110001000101010001111100100000", 
    200 => "00100000111000001111001011110010", 
    201 => "00010101110011100010110110111010", 
    202 => "00010101110110001111100100001101", 
    203 => "11110001011001101110101100100100", 
    204 => "11110101001010010000001000001001", 
    205 => "11110111000100111011000011101011", 
    206 => "11011000000000101010001111111100", 
    207 => "10100000111101011110100000101010", 
    208 => "11011010000010110001000111111010", 
    209 => "00001111110100110001000101101111", 
    210 => "00011010001001111101101000010111", 
    211 => "00001001111110001110101111010110", 
    212 => "11101010110011101110101111010101", 
    213 => "00111001000011100001001000011011", 
    214 => "11111011110111100001001000100001", 
    215 => "00010100001110011111101011101010", 
    216 => "11101110000001101111101100111000", 
    217 => "11110110110101111011111000011011", 
    218 => "00000110110000110010111011100001", 
    219 => "00101101111110100000001011111111", 
    220 => "01000101001001000001011011001100", 
    221 => "11111110000010010001010000001111", 
    222 => "11111000001010100000100000110101", 
    223 => "11111101000101011111011110001101", 
    224 => "11100110110110100000011011110010", 
    225 => "00001010000000001111010001101001", 
    226 => "00100101111010000001011000011010", 
    227 => "00000101111110111111011100010110", 
    228 => "11110100000110011111011011111001", 
    229 => "11000100000100100000011011111010", 
    230 => "11011110001101011101100100010101", 
    231 => "11100111001100111111100010110101", 
    232 => "00000101000101111111011111101111", 
    233 => "00011010111000110000001011110101", 
    234 => "10110100000110010000001111100111", 
    235 => "00010010110001111100010011110011", 
    236 => "11111111001010000100111111010110", 
    237 => "00011101111110011101110001010100", 
    238 => "00010001000000101101100011111000", 
    239 => "11101010111000000010011111101111", 
    240 => "00000101000000110000011111011111", 
    241 => "11111110101100010000110111111000", 
    242 => "11111111111001100011010000111010", 
    243 => "00010110000101011110010010111011", 
    244 => "11101110000010110100011111101100", 
    245 => "11011001101101110000111000000110", 
    246 => "11110101001000111101000111111001", 
    247 => "00011011110111010011110000010100", 
    248 => "00011101000000000100001111101100", 
    249 => "11111111001100000010000110110000", 
    250 => "11010100000010001100010100001001", 
    251 => "11000000111010000001011001000000", 
    252 => "11110100000011111111100101010100", 
    253 => "11011111000001101111111111100111", 
    254 => "11011101101011101111010111111101", 
    255 => "00101101001000011110100100011000", 
    256 => "00000011000001110000011100011001", 
    257 => "11111000000001010001010100001011", 
    258 => "11110101111110100010010100001001", 
    259 => "00010000010101001110011111101100", 
    260 => "00101000111110100000111000001111", 
    261 => "00100111000010100001110111100011", 
    262 => "10111001000011110010011111000011", 
    263 => "00011001000111110001000000011101", 
    264 => "11010101001101000000010100011111", 
    265 => "00000011000100000000111011100010", 
    266 => "11110101111000101101101000000111", 
    267 => "11010011110010100000010000001100", 
    268 => "11110010111111110010010011111000", 
    269 => "00001101111101101110101011011111", 
    270 => "11001101000101001010010111001001", 
    271 => "00010100000001101101001110111101", 
    272 => "00010000110000010110000000001101", 
    273 => "00011001000001101101101011111001", 
    274 => "11101011000011100001110000100111", 
    275 => "11100111010001110001010100110001", 
    276 => "00101111111000100001011111111011", 
    277 => "00001111111111000000110100010001", 
    278 => "00001001000010110010011011001100", 
    279 => "00110100001000000001001111110111", 
    280 => "00100011111111010010110111110110", 
    281 => "11111111111111100000001000100010", 
    282 => "00001110000100100000000000010110", 
    283 => "00010100110110100010000101010000", 
    284 => "00011001111110010001110011111011", 
    285 => "11111001000100100001011100010101", 
    286 => "00001001000100111110110110111111", 
    287 => "11111101110100110000111011110110", 
    288 => "00100001110100111111101011111001", 
    289 => "11100001110011110000100111100111", 
    290 => "11111010111001111111111100011110", 
    291 => "00011011111000001110111111100101", 
    292 => "11101000000111011101000011010000", 
    293 => "00101110000010000000110100101110", 
    294 => "11101101000110100010101100010000", 
    295 => "00011000110101001110110100001111", 
    296 => "11111101111011110000101011010110", 
    297 => "11111100111000110000110011110111", 
    298 => "11011001001111100010011100011001", 
    299 => "10111100000000011111110111101111", 
    300 => "11110010001000111110110100011110", 
    301 => "00000011110010110010001111000000", 
    302 => "11100110111101001011110111111101", 
    303 => "11111001000101111101101011000110", 
    304 => "10110110001010000000010000000110", 
    305 => "00111000010010111110101111010101", 
    306 => "00010101111111010000110111111110", 
    307 => "00000011110111100001101000100010", 
    308 => "00010100000001000001010000101010", 
    309 => "11100100001010010000011100101001", 
    310 => "11011011000011001101100111100101", 
    311 => "00101000001000000000010000011010", 
    312 => "11100111000101110011010111111100", 
    313 => "11110000001001000010010011110011", 
    314 => "00000000000100000100001000001001", 
    315 => "11111011000101101111110000000000", 
    316 => "00001111000010010010100011100111", 
    317 => "11111110111100011110001111110010", 
    318 => "11111100110101010010011100010000", 
    319 => "00010010111101101111100000110100", 
    320 => "11111000110100101111111111111011", 
    321 => "11100011111101001010000111010110", 
    322 => "00001101111101011101101000100100", 
    323 => "00111110111100010001100011011111", 
    324 => "00110011000001010001101100001101", 
    325 => "00000001101011000001100000110010", 
    326 => "11100101010001100011001100000101", 
    327 => "00001110110100100101010000110110", 
    328 => "11001010000111011111011111110010", 
    329 => "01100010000001000111011100100001", 
    330 => "11101100001010011111001100000110", 
    331 => "00010011000000011111100100001011", 
    332 => "11101110111100000000001111100000", 
    333 => "00001010000110001110100100100011", 
    334 => "11100001111001010010000011110111", 
    335 => "00000000010100011101011000000101", 
    336 => "11101001000110100001110000000100", 
    337 => "00011011000001000001001111111001", 
    338 => "11110000000101100000001111110000", 
    339 => "00000011111101011111110011110010", 
    340 => "00101011001110111111100100000111", 
    341 => "11110011110101111110111100000000", 
    342 => "00010110111111110001101100011101", 
    343 => "00000110001100010000000000011111", 
    344 => "00011010111100000010000011100010", 
    345 => "11110100111110000000011100000101", 
    346 => "10110110001011010010011100000110", 
    347 => "11100111010001111100100000001101", 
    348 => "00100010000111000001110000110001", 
    349 => "11001101110011010000100000010000", 
    350 => "00101100110110001111110100110001", 
    351 => "11110111000011111111100000011110", 
    352 => "11010110000110110001111100000010", 
    353 => "11110011000001101100100011111110", 
    354 => "11000000111101111111101000001010", 
    355 => "00010111000011100010111011100010", 
    356 => "00000010000111010101111000100001", 
    357 => "11001110111010001110011000110011", 
    358 => "00101101110111001101000011011100", 
    359 => "11110110111011010100111000000110", 
    360 => "00011110110100111111111001000010", 
    361 => "11110111110011011110110001010011", 
    362 => "00010111001011101111011000001101", 
    363 => "11110010101000010000101110111100", 
    364 => "11101001001001110001101011100001", 
    365 => "11100011010101000000001100001110", 
    366 => "11001000000011001101100100101001", 
    367 => "00111100010010101111111000010110", 
    368 => "11011111110110101101110011110001", 
    369 => "11110110000011101111010011011111", 
    370 => "11011101111111110000011000001011", 
    371 => "00000101000010011111010111111110", 
    372 => "00100101110000010001111111101110", 
    373 => "00100010111000101110110111101111", 
    374 => "11000111110000111110111011100100", 
    375 => "11000101001101001111101111010000", 
    376 => "11110110010000011110101011011010", 
    377 => "11100001111010001110110100110001", 
    378 => "00001111111110101111110011011000", 
    379 => "10111111010101000010000011000101", 
    380 => "11110100111111011111110010100000", 
    381 => "00001111101011110001010010111100", 
    382 => "11011110000011010100000011110101", 
    383 => "00011111001000001111110100001110", 
    384 => "00101101001101010010111000001111", 
    385 => "11110111111001100000110100001011", 
    386 => "11001101111110100011000100011001", 
    387 => "11001010110001101110001000000001", 
    388 => "11010010001110100001011100001101", 
    389 => "11110011111011000000001000000010", 
    390 => "00001111000111000001101111100111", 
    391 => "00001010000011110010001010101110", 
    392 => "01000101110000010100110100000111", 
    393 => "00110001000110101111000111001100", 
    394 => "00101010110101000000110111101011", 
    395 => "00111101000000000001100011101111", 
    396 => "00001100111101010001010100010000", 
    397 => "00011110011111101110101011100111", 
    398 => "11111101000000011111010100000000", 
    399 => "00100011001011011110101100010001", 
    400 => "00100110001101100001010111110100", 
    401 => "11011011000100110010001100010000", 
    402 => "00101110111111011101011000011011", 
    403 => "11001101000001010010101101000110", 
    404 => "00100110111010110001000000010111", 
    405 => "11011111000001101100100100101110", 
    406 => "11011011111001011101001100101111", 
    407 => "11110100001101011111100111000001", 
    408 => "11111111111111100010001100110010", 
    409 => "10111111001101011111011100100100", 
    410 => "11101011000001110001001100001011", 
    411 => "00001110001011001101001111110011", 
    412 => "11111111000100100011001100011011", 
    413 => "11110100101011000010001000010111", 
    414 => "00011010111111110000000111010111", 
    415 => "00001000111001110001110011000100", 
    416 => "11100110111011010000100011111111", 
    417 => "11110110010100110001000100010100", 
    418 => "11100100111110001111011100011011", 
    419 => "00100000000001000001010100000100", 
    420 => "00011011000001000001111000001001", 
    421 => "00101010111011101101111011111100", 
    422 => "10101011110010100000100100100000", 
    423 => "00100011000000011101011100001000", 
    424 => "11110001001010011111111010111100", 
    425 => "11001110000011101111000101001011", 
    426 => "00001111110011100001101100000100", 
    427 => "00000100000011111110100100000001", 
    428 => "00101001111011110001111000100001", 
    429 => "11101011000011000000000111111001", 
    430 => "00011010110001101100110100001001", 
    431 => "11111010000000111111011000100010", 
    432 => "00000010111010010001010000010010", 
    433 => "11111011110010000010010111101111", 
    434 => "01001000111100100010111000111111", 
    435 => "11110011101011110001000100010111", 
    436 => "00010100111010111100010100000100", 
    437 => "00000101000100111101110011101101", 
    438 => "11101011111010111100110011110110", 
    439 => "11010010010011110001100011010000", 
    440 => "10111101001000110000010000100100", 
    441 => "00011000000100000100000111011001", 
    442 => "00000101001111100101000000010001", 
    443 => "01001011111111110000010110011011", 
    444 => "00001100111101011100001000000101", 
    445 => "00001111101100000000010100001001", 
    446 => "00000110111101011101100111101111", 
    447 => "11010010000010101111100011111110", 
    448 => "11111111111011001101000100011100", 
    449 => "00110001110111111111000111011110", 
    450 => "11101001111010101110011100010000", 
    451 => "11110001000010001111111011011010", 
    452 => "00010001001011001110010011101101", 
    453 => "11110100000100011101100111011001", 
    454 => "00010011000110101110010011100111", 
    455 => "11110000000110111111010111010100", 
    456 => "11101000000101100001111011101011", 
    457 => "00000001101111101110010011011100", 
    458 => "00011011000011010001111100001001", 
    459 => "00000011111111101110010100000001", 
    460 => "11101001111001011011001011111011", 
    461 => "00010000111111000000000100000111", 
    462 => "10000001001001000001101111111100", 
    463 => "00010011010001011111000111100111", 
    464 => "00001111000101001101001011101111", 
    465 => "11011000000001001111000100100101", 
    466 => "11110011001101000010110100011111", 
    467 => "00110100110101110001100000010110", 
    468 => "00011001111000000001001000001110", 
    469 => "11101100110111001111001100000000", 
    470 => "00011111001010101111000000001111", 
    471 => "11111101111110000001001100010000", 
    472 => "11011111000001101111001100011010", 
    473 => "00001001000111101100100100000111", 
    474 => "11110111001000111110101111101010", 
    475 => "00001111111010001111001100001011", 
    476 => "00000001000000110000001111110001", 
    477 => "00010011000011000001000011110100", 
    478 => "11101010000100010001110000011100", 
    479 => "11101101010110101100011100000101", 
    480 => "11101010000111111101011011011111", 
    481 => "11101110000100100001100100010000", 
    482 => "00001100111101010000011000010001", 
    483 => "11100000000010010001101000000101", 
    484 => "00000001111011001110100011111110", 
    485 => "11100101000001010001000011111000", 
    486 => "00000010000000010011110111100111", 
    487 => "00011001000101111111011100100011", 
    488 => "00001000010000101111110011100000", 
    489 => "00101100111100000000000100000010", 
    490 => "11111000111011110001010111111000", 
    491 => "00100001111101101111010111101110", 
    492 => "00011010111110100000010100010100", 
    493 => "00001010000000001111110000011010", 
    494 => "00001001001011000000100111101111", 
    495 => "00000111000010111110001100000000", 
    496 => "11101110110111101111100100010010", 
    497 => "11100111111101001101111111110000", 
    498 => "11110111001010110001001000111101", 
    499 => "11011101001000000000010011101110", 
    500 => "11111111111000111111101000000111", 
    501 => "11100111111000011111110100100000", 
    502 => "11110101001101101110111011100110", 
    503 => "00000001001100101110011000001001", 
    504 => "11011110000110011101111100010011", 
    505 => "11110000111101001110111111111100", 
    506 => "00001010111011100001111111011110", 
    507 => "11111111111101110000101100000000", 
    508 => "11000010110111011100011111110010", 
    509 => "11100111000000000011100100110001", 
    510 => "11001110111111110000100001001100", 
    511 => "00101010000100101111001011010001", 
    512 => "00000110000110000010010100010001", 
    513 => "00110001110110111111100100010011", 
    514 => "11001000000011100001011100000011", 
    515 => "00011000111010010000101111111101", 
    516 => "11100011111010110001110011100111", 
    517 => "11111000000100101110010100010000", 
    518 => "11111110111101101110101111101011", 
    519 => "00000000111111101110100000001110", 
    520 => "00010101000000001011101100110000", 
    521 => "00011010100110011111010100010101", 
    522 => "11001011111011010010101111100111", 
    523 => "00001001000000010000001011111010", 
    524 => "11000001100101100011101000001000", 
    525 => "01001001111001101111011000011001", 
    526 => "00010001001001010001110100000101", 
    527 => "00011000110110011110110011101101", 
    528 => "00101110000110011011100100011000", 
    529 => "00011001110110011111100000000100", 
    530 => "00000001000100100001100111111110", 
    531 => "00011000111011001111011000000000", 
    532 => "00000010001110100000100011111111", 
    533 => "00011011000010101111110111111101", 
    534 => "11100010111011010001011111011011", 
    535 => "00011111000010001110110000100011", 
    536 => "11011010111011111110011100000101", 
    537 => "00001100001011010010011111101111", 
    538 => "00000010001100101110000000010000", 
    539 => "11111111110101010000011100001011", 
    540 => "00100010000010111111000011101111", 
    541 => "11111101010000000000010110011100", 
    542 => "11111110111111011101111011011110", 
    543 => "11111010111000011111000110111000", 
    544 => "11101111000000011111110011111111", 
    545 => "00100000000010100000000000011001", 
    546 => "00000100111001110010000011111110", 
    547 => "11100011111111011111101100010101", 
    548 => "00000111110111011101010000001000", 
    549 => "00010110111101100000010000111011", 
    550 => "11100111000100010001010000010001", 
    551 => "00001110001000101111100000011011", 
    552 => "10010000000011010010011100011111", 
    553 => "00000001011111100000010100001010", 
    554 => "00010001000010111100110011111100", 
    555 => "00011100001001011111111111111100", 
    556 => "11100100001000010101011111101111", 
    557 => "00011010000110111010001111110010", 
    558 => "11011000000001100011010100101000", 
    559 => "00010000000000001111001100001110", 
    560 => "00000101000010011101101000101001", 
    561 => "00000000111101001111010000110100", 
    562 => "11111100110010111110010011101010", 
    563 => "11110010000000110000101100011010", 
    564 => "00101101000000111110101100000001", 
    565 => "00001111000110110000101100010010", 
    566 => "10111110111111011100100000111000", 
    567 => "01101011001111000001000111101000", 
    568 => "00011010001110111110111111110110", 
    569 => "11000100000100100100000110111101", 
    570 => "11110001000000111111100000010001", 
    571 => "00011010110100100000100100001111", 
    572 => "00001111001001010000100111100110", 
    573 => "11101000010010110000000001101010", 
    574 => "00000111111011110001110011110011", 
    575 => "11001111111101011111111101000111", 
    576 => "00010000010101101111100011111011", 
    577 => "00010001110101011101100111101110", 
    578 => "11011110010010101110010011100111", 
    579 => "10111110111011010010000011110010", 
    580 => "00010111000101110010000111111110", 
    581 => "00010101000011111111101000000001", 
    582 => "11000101001010100011011000101000", 
    583 => "00001111000111100010100100100010", 
    584 => "11011110001100111100101100010001", 
    585 => "10111001010001010001001101100101", 
    586 => "00000000000001000011010000100011", 
    587 => "11111100000101111110100100011111", 
    588 => "11010100001010001101101111000111", 
    589 => "00000001110110000000110110011000", 
    590 => "10110110000010001101110011011000", 
    591 => "11110010111101110000111100001000", 
    592 => "11110111000011111110100011110001", 
    593 => "00001001000001000010100101000111", 
    594 => "01000010111011011110111011011110", 
    595 => "11000101001111011111000011011011", 
    596 => "11011011000100101100010011100001", 
    597 => "11110110111000101010000001100100", 
    598 => "00100000111100101100011000001011", 
    599 => "11000010111010101110011111100111", 
    600 => "11011110111100111101011100000110", 
    601 => "11110000000111100000000011100110", 
    602 => "00000110111100011011111100001110", 
    603 => "00110001111110001101000100111100", 
    604 => "00011001001100011111110001111110", 
    605 => "00100010111010111110100111010101", 
    606 => "11110000111001100010011111000010", 
    607 => "00010011111101001101100010101010", 
    608 => "11010110110101010000101101010010", 
    609 => "11111011110101011111010111111001", 
    610 => "11010111111011000011111100010000", 
    611 => "00000011111000101111111110111110", 
    612 => "00001110111110110010110011111011", 
    613 => "00100100111011010100001100100011", 
    614 => "11100111010010001110110100010101", 
    615 => "00000001000001111110010100001111", 
    616 => "01000011111010010100001011110010", 
    617 => "00110011111000011111111100010010", 
    618 => "00000110110010001101111111011110", 
    619 => "11111111010101010001000100101000", 
    620 => "10111111100110011011001100111110", 
    621 => "10110011010110000011010111111111", 
    622 => "11110010000111000001000000010011", 
    623 => "00001101110011111111011111011111", 
    624 => "00100101001010010010110011010111", 
    625 => "00000101000111010000111100000111", 
    626 => "11011010110100100001011011111110", 
    627 => "11000011001010011101110110011100", 
    628 => "00001111111101011101000000001100", 
    629 => "10111111000000000001100111110001", 
    630 => "10111010000011000000000100011100", 
    631 => "11101001000011000000111011110101", 
    632 => "11101110110000010000010111101101", 
    633 => "00011010010000111111010100101001", 
    634 => "00000101000111111110100000000110", 
    635 => "11101101110111111011101111111011", 
    636 => "00100000101011111010100010101110", 
    637 => "00000011011110001111011011101000", 
    638 => "11111111000100110010001111111100", 
    639 => "00000100000111100010001111001000", 
    640 => "11011010000011111011111001010111", 
    641 => "11100111111000100010010100000010", 
    642 => "00011110000101101101001011110011", 
    643 => "00000000001111101111100000000100", 
    644 => "00010110001011111110100000110110", 
    645 => "00001110110101010001110110111110", 
    646 => "00011101000100101101111000011000", 
    647 => "11100011000001010000001000100000", 
    648 => "00000100111110111101100000000101", 
    649 => "11110110000100101011011011110010", 
    650 => "00011100000000111010110000100111", 
    651 => "11110011111001010001001000101011", 
    652 => "00011101111001001110101011111011", 
    653 => "11110001000011100000010000100011", 
    654 => "00011100000111110000010000101001", 
    655 => "00011010110101110000100100100110", 
    656 => "00100001000001100001110111110000", 
    657 => "11101100000000111110101111111111", 
    658 => "11101011000111000001000000000100", 
    659 => "11111100111011000000110000001010", 
    660 => "00001000001011000001010100000001", 
    661 => "00110001110111111111011011101001", 
    662 => "11100010001101101110001000100000", 
    663 => "11001001111101110001101011111011", 
    664 => "11000100110110111010110100100010", 
    665 => "11110001000010000000001000011011", 
    666 => "11111110111111011111001100001001", 
    667 => "11011101111110010010000100001100", 
    668 => "00010010110110100110000111100111", 
    669 => "11001100000101111110001011011011", 
    670 => "11011011110101001101011011110000", 
    671 => "01001000001100111101010111010010", 
    672 => "00100001111100101100111000000011", 
    673 => "00000001111110110000011100100100", 
    674 => "11110010111010011111110011101011", 
    675 => "11111100001000110000111100000010", 
    676 => "01000011101011101110111111100001", 
    677 => "11110110111011001011111000011000", 
    678 => "11101011000111100000011111101101", 
    679 => "11011011110001110011001000010010", 
    680 => "00000000000011100001001011101101", 
    681 => "11001110000011101101111000101011", 
    682 => "10111010010101111111101011101100", 
    683 => "10011110111000100001000100000001", 
    684 => "11101000000111100001110011011000", 
    685 => "11100000111100001111111000110110", 
    686 => "00011100001010111111101000000111", 
    687 => "00011000010010011111101100001111", 
    688 => "00001001001001011111111100010001", 
    689 => "11100110000011001111110111111011", 
    690 => "11011000111110110010101111110000", 
    691 => "11110110110101010010010111111001", 
    692 => "01000000110100001101000011101010", 
    693 => "01000011000100100001111011010100", 
    694 => "00000001110111110100111011111011", 
    695 => "00000010001100001111111000011100", 
    696 => "11100110111010010000011100100111", 
    697 => "11001111000111010001001000001111", 
    698 => "00000110111111010011101000010100", 
    699 => "00000111111000000010000111101100", 
    700 => "00000100110000000001000000001110", 
    701 => "11101001000110110000001110011010", 
    702 => "11110000000010001101101100001111", 
    703 => "00111010000010011111110011110101", 
    704 => "11001101111101001100010100101010", 
    705 => "00100001101110011101110111001001", 
    706 => "00011110110111010000010000100111", 
    707 => "00000011001000000000010011110110", 
    708 => "00011001110110001111000011111001", 
    709 => "11100001000001000001001011011010", 
    710 => "11101101111100010001110000011000", 
    711 => "00000011001011011111101011101100", 
    712 => "00100000111100101011000111110010", 
    713 => "00010011110001000000111011010111", 
    714 => "11001100101011010001011111001010", 
    715 => "11100010111100001111000100101010", 
    716 => "11101110111011111111011100011111", 
    717 => "11001100101100110001001111111001", 
    718 => "00110011110101010001001011111011", 
    719 => "11111100111010010000010000111011", 
    720 => "00010011001010010001100100111100", 
    721 => "11100000111100110000101111111100", 
    722 => "11110100111001111110110000001000", 
    723 => "11110100110011111111001011111100", 
    724 => "11111010001000101110110010111000", 
    725 => "11111111110101101110111111111001", 
    726 => "00100110000101001011111000001010", 
    727 => "00100110001110110010010011111000", 
    728 => "11011101111001101100001100110100", 
    729 => "11100101101101000011111100100111", 
    730 => "11110011111101000000010100010000", 
    731 => "00001011111100111110100011111100", 
    732 => "11111001001011000001111000001101", 
    733 => "00000010111100111110110000000110", 
    734 => "11110011001001100010100011100010", 
    735 => "00010011000000111011000011000011", 
    736 => "11010010000011011101110000000111", 
    737 => "11000111010000010000011111111111", 
    738 => "00001001000111101110101111110011", 
    739 => "11100010000001100001011011000111", 
    740 => "00000111111000000011011000011001", 
    741 => "00001000010000010010000100110101", 
    742 => "11110100000010010010010101000101", 
    743 => "00011010001001010010111000000000", 
    744 => "11110011010100011110110011011110", 
    745 => "00101010000010001110100011110111", 
    746 => "11010011001010001111110100000100", 
    747 => "10110011000111101111100110111000", 
    748 => "11111010111000110000000011100000", 
    749 => "00010010000101101110111000000111", 
    750 => "00100010111111101111001100000110", 
    751 => "00010010111011011101110111110100", 
    752 => "10101000001110110001110011111000", 
    753 => "11101010001001010000100100001101", 
    754 => "00101111111110101101111000011001", 
    755 => "00000010001100011110001100101001", 
    756 => "00001110111101101011010111111111", 
    757 => "11110000010100010001110100101001", 
    758 => "11110010110111010010001011111101", 
    759 => "00001111000110010001110111101001", 
    760 => "11011010101110000000101011101100", 
    761 => "00001011000110100001101011110111", 
    762 => "11011100001001001110110000101001", 
    763 => "11011001111010111111110011100010", 
    764 => "00100101111100000010000111111010", 
    765 => "11100100110000001111110011111010", 
    766 => "11100110000001010001010011011111", 
    767 => "00010000110001000000001111110001" );

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

entity ReadA119134_weights_0_3_30 is
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

architecture arch of ReadA119134_weights_0_3_30 is
    component ReadA119134_weights_0_3_30_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA119134_weights_0_3_30_rom_U :  component ReadA119134_weights_0_3_30_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

