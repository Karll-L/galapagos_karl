-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity ReadA119134_weights_0_3_24_rom is 
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


architecture rtl of ReadA119134_weights_0_3_24_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "11111100000001100000100000000110", 
    1 => "11100011001011010011110110011010", 
    2 => "11110101000010011100110000010111", 
    3 => "11110101111110101100000111101011", 
    4 => "00000100000101010000110100001001", 
    5 => "11110000101101010001001000101110", 
    6 => "00100001000010100000100011111011", 
    7 => "11110000000000101111100100100001", 
    8 => "11101011000000101110110011111101", 
    9 => "10111000111101011110101111111110", 
    10 => "00001011111100010000011100000011", 
    11 => "00111000001001011110011011001111", 
    12 => "00000001001011010001111111111000", 
    13 => "11100110111000101110000000001010", 
    14 => "11111101010010010000101111111101", 
    15 => "00011010111001000001001111101011", 
    16 => "00000000001010001111110000000010", 
    17 => "00101100111001001011011100010010", 
    18 => "00100100110100000010000111101011", 
    19 => "00100101011100010000001001010111", 
    20 => "00110110001011110011010011111110", 
    21 => "00000010001001000010000100010111", 
    22 => "11111110000111111111001111110110", 
    23 => "00101110000110111111100000100001", 
    24 => "00010101000010100001111111100101", 
    25 => "00100001000010111110001000111010", 
    26 => "01100010110100010010101011001101", 
    27 => "11110100110100100100000111101110", 
    28 => "00010001110111010000000000001100", 
    29 => "11010010000100011111001100011100", 
    30 => "11010111001111101111010100101001", 
    31 => "00000000111100000010010011100001", 
    32 => "00011001000010011110000011101111", 
    33 => "00001100000010011010011011000110", 
    34 => "00000000111101001111110000000101", 
    35 => "00001111101110101111011100001001", 
    36 => "00100000001101111111111100001011", 
    37 => "00011011111100010001000000001111", 
    38 => "00000011000010110001010000010100", 
    39 => "00010100110001110000100011001101", 
    40 => "00001001111100101110101011101100", 
    41 => "11101110000010111011010111101101", 
    42 => "00100001001000001111000100011101", 
    43 => "00001010111111100110100000001011", 
    44 => "11111100000110101100001011110110", 
    45 => "11110001000101101110100111011000", 
    46 => "11101100111101111101011101001111", 
    47 => "11100110001000000001011011101101", 
    48 => "00111110000010111111100111110010", 
    49 => "11110000000011011111000000100111", 
    50 => "00000101010011101101111100100000", 
    51 => "00011001101010111101010000010100", 
    52 => "00001001000100111111111011111111", 
    53 => "11110000111111010001101111010001", 
    54 => "11110010000101100000000011111110", 
    55 => "11011011000110110000010100000010", 
    56 => "11111100111110011101011000011110", 
    57 => "11101101111100000011100111110001", 
    58 => "11111100111111101101111000110010", 
    59 => "00110010001010000100001111011110", 
    60 => "01000010010000001111000011010011", 
    61 => "00011000010010101010111011010001", 
    62 => "11010101010100111111011000100111", 
    63 => "11111010001001011101110111100011", 
    64 => "11100010000000010100111000100000", 
    65 => "11110000110101011101101111100011", 
    66 => "00010001000011011111100011110101", 
    67 => "00001110000011001110101111101100", 
    68 => "00000010111101010010100011110000", 
    69 => "11110000111100110001010011111111", 
    70 => "11110100111110100001001000011000", 
    71 => "01010011001101001010110100001000", 
    72 => "00100001111101110010011111110000", 
    73 => "11100101111110111100100001000111", 
    74 => "00010011111110100000100111110101", 
    75 => "11101100000101111110110111001010", 
    76 => "11111100111100100001011111110011", 
    77 => "11101000111101100000000000001000", 
    78 => "11100110000111101111001111110010", 
    79 => "11101101001101001111111100000110", 
    80 => "00111000111000011101100100001101", 
    81 => "00100101000011000000011011100110", 
    82 => "10111010111110101100100111111000", 
    83 => "00101000000010010000100011110101", 
    84 => "11101011000001000001111011100001", 
    85 => "00000001110100111110011000011010", 
    86 => "00001001111101100001110100001110", 
    87 => "00100000010101010100111110111111", 
    88 => "11110111111111000010001111101110", 
    89 => "11100001101111000001010011101000", 
    90 => "00010100010001001100010011010101", 
    91 => "00100100110101100100010000001101", 
    92 => "00011101000100000001110011110000", 
    93 => "11101111000001010010011111111101", 
    94 => "00010011110100001100000011101111", 
    95 => "00011000111010101110011000100010", 
    96 => "00010110110110111110100011100000", 
    97 => "00101011111101010000000111110011", 
    98 => "00011001001010101101100000001111", 
    99 => "11011010111011110001101110111001", 
    100 => "00000011010000010011000011100101", 
    101 => "11000001000001011100010000000010", 
    102 => "11100111111011001111011111100001", 
    103 => "11111111111010011110010011010110", 
    104 => "11110010110111010000100000101100", 
    105 => "01000001000000110000100100010101", 
    106 => "11110100000001110000111111110100", 
    107 => "00001110000110111111000100001100", 
    108 => "00000010111110001101110011100110", 
    109 => "00011000111111100001111100100111", 
    110 => "11011100110111011101000100110010", 
    111 => "00110111001101001101011111011010", 
    112 => "11100011111101110011100011100100", 
    113 => "00010000110100001110010100010101", 
    114 => "11110101111100100000011100001100", 
    115 => "11101011111100001111111000011001", 
    116 => "00010010000010110000001000010001", 
    117 => "11101111000111010001001111101100", 
    118 => "11110000110001100001001000010001", 
    119 => "00001010001001011111000001011110", 
    120 => "00011010010000000001001000110110", 
    121 => "11000001010001110011000011110100", 
    122 => "11111110111111100000000011100111", 
    123 => "11101000000011001110011111110111", 
    124 => "11111100000100000001000100000111", 
    125 => "00111100000001110001100011100001", 
    126 => "11111110000011000000010000000001", 
    127 => "11101011111110000001100100001010", 
    128 => "00001011000000111110000100000100", 
    129 => "11111110000001010000100111110011", 
    130 => "00000110000001010010001000010001", 
    131 => "00100101000101110000111111101011", 
    132 => "11101101001000000010010100100100", 
    133 => "00100101001000010001000100011011", 
    134 => "10101110001000101111011111011000", 
    135 => "11110000110111111110101001001010", 
    136 => "11111011000101100001111011110111", 
    137 => "00000001001000111111000011100100", 
    138 => "00010100000100010000101000010100", 
    139 => "11010000000010000010100011101100", 
    140 => "01101100111101110001010011110111", 
    141 => "10111101000000011110111000001100", 
    142 => "11110001000000101011111110111000", 
    143 => "00011010111110100101010011011011", 
    144 => "11111100110101111110101111110100", 
    145 => "00100111000010101101101010111011", 
    146 => "00000100111111101110010000100001", 
    147 => "00011010111100001111010000010000", 
    148 => "00100001111111100001011000100000", 
    149 => "00011011111010011100110111100101", 
    150 => "11101100111010011100100000010001", 
    151 => "01100111110100110110000000000010", 
    152 => "11101100000011110101011000100000", 
    153 => "11101100001000011110111101000000", 
    154 => "00000100111010101111101011011111", 
    155 => "00010010110111010001001000000100", 
    156 => "00001110111100011111110000001110", 
    157 => "11010100000011000001100011110000", 
    158 => "11110101111011001110100111101000", 
    159 => "11111101000110000011111100011010", 
    160 => "00010010001010100010000000010000", 
    161 => "00100110010010010011000110110111", 
    162 => "00101000000000101110100100011110", 
    163 => "11110010001011111111100111111100", 
    164 => "00010100000011010100011100000111", 
    165 => "00001011111110110000011111110001", 
    166 => "00110101111100011100110100100001", 
    167 => "11011010000010001100101000000010", 
    168 => "11111111111000100010000111110010", 
    169 => "11101000000011101101100100111001", 
    170 => "00001111000001110000011000010010", 
    171 => "11110001110000010000001000010011", 
    172 => "11111000111011100101000100010000", 
    173 => "00011101000110000010001100110111", 
    174 => "00101110001001101111011011100011", 
    175 => "11001011111111110011100111010101", 
    176 => "11110011111101000010110011111000", 
    177 => "00000111111011110011101000010010", 
    178 => "00000001111011001110000011101011", 
    179 => "10111001111111011110001111000111", 
    180 => "10100011000001010010000000001110", 
    181 => "01001111000010100001001011100111", 
    182 => "00101001110011101011110000011110", 
    183 => "11010110000101110010011111000101", 
    184 => "11011100110101010011011010111110", 
    185 => "00000011111111101110110000001000", 
    186 => "11111011110101001001000111100010", 
    187 => "10111000110000010010110000010010", 
    188 => "00100101000011101100111000000111", 
    189 => "11011001111011100001000010100010", 
    190 => "00000110111110111110110011110100", 
    191 => "11110001000100111111000000010110", 
    192 => "01000001000100110011100111111101", 
    193 => "11001011111000101110101111011000", 
    194 => "00000010000000100000100100100101", 
    195 => "11001010000011001111001100110011", 
    196 => "11101111001101011110010000100001", 
    197 => "11010110101110110000011011111011", 
    198 => "11111111111011000000100000000111", 
    199 => "11100110111101000001011111100111", 
    200 => "00100101111100100011011111100001", 
    201 => "00001111111010000010000000010000", 
    202 => "00011100110110000011111101110101", 
    203 => "11100001000111100000100010110011", 
    204 => "11101111001011100001001011000011", 
    205 => "11110101000000001110001011101101", 
    206 => "11100010110100100000010110111101", 
    207 => "10111011011110111111101011110111", 
    208 => "00000010001110000001010011011100", 
    209 => "11001010010000100011101100001101", 
    210 => "11111000000010001110011011110101", 
    211 => "01001001000110111110110111110001", 
    212 => "00111011001001101111000100001010", 
    213 => "00001110010101101101110111101110", 
    214 => "11000101001000101111100000000100", 
    215 => "11111001001010101110010100001001", 
    216 => "00000110010010001111100000000110", 
    217 => "11011001001011011111001100011001", 
    218 => "00010000101110010011110000010101", 
    219 => "11011111111110101111010011100011", 
    220 => "00110110111100100011111111110100", 
    221 => "11010111001001111110101000010011", 
    222 => "00010011000111001110001000000101", 
    223 => "00001011000111110001110111110001", 
    224 => "11110110110000110011111011111100", 
    225 => "11111101101101111110100111001011", 
    226 => "00010011101101110001110101000000", 
    227 => "00010010111001110001010011100001", 
    228 => "11101010000110101101100100010101", 
    229 => "00000110111111000001001011010111", 
    230 => "11101110110010110011000111001011", 
    231 => "01000101001011010011110000100111", 
    232 => "00110011111011011100001010111110", 
    233 => "00000011001100000001010011110010", 
    234 => "11111101101000001100011111111111", 
    235 => "00111110111101100011001111010100", 
    236 => "11001100001110110101110011111000", 
    237 => "00110000100111001100001100010110", 
    238 => "11111010111011000001101100001111", 
    239 => "11100011000111001110111111000011", 
    240 => "00000110000001111000111100001100", 
    241 => "00010101110010001111011000111110", 
    242 => "11111011001101001111110000111011", 
    243 => "11011101000000111111110100010011", 
    244 => "00001010000100001100011000000001", 
    245 => "11101001110011110001110100001010", 
    246 => "00111100110010110001100011101110", 
    247 => "00001000111010001110010011000111", 
    248 => "00010101110111010001000100100000", 
    249 => "00000010110010001111011011110011", 
    250 => "00100110000011111110110100100100", 
    251 => "00000100101110101111111100111010", 
    252 => "11101111001010011110111111101000", 
    253 => "11010101110011100001101100010111", 
    254 => "11111101111110010001110100101101", 
    255 => "11110000001110000010000100000001", 
    256 => "00011010000111001111000100000001", 
    257 => "11101001000011000000011100100000", 
    258 => "00101101001010110000001111101110", 
    259 => "00011011000001110000010000011001", 
    260 => "11110010000100011111000000000101", 
    261 => "00011001000101010010000000001011", 
    262 => "00100001000100011111000011001101", 
    263 => "00001101111111001101110000000010", 
    264 => "11101001110110110001010111101010", 
    265 => "00010100000001011110111000111001", 
    266 => "11101010001000011111110111110100", 
    267 => "11001110110001001110101110001111", 
    268 => "11101011001001101110111100001111", 
    269 => "11110100110111100000010011010110", 
    270 => "10110111001101001110010100001001", 
    271 => "01000011010100010000110100100010", 
    272 => "11101000001010110011011011111010", 
    273 => "11110110110110011110111100010101", 
    274 => "00000100000100001111001111111100", 
    275 => "11000110000101111111101011001101", 
    276 => "11111001000001101111010000001111", 
    277 => "00011011000111100000000100110100", 
    278 => "00101010110110100000001100000000", 
    279 => "11110000000001101111000011011011", 
    280 => "11100100111010100001110100010110", 
    281 => "11100100111111100000101011110111", 
    282 => "11010111001001101111110100010110", 
    283 => "00011000111000100010100000000100", 
    284 => "11110000111100100001001100001110", 
    285 => "11111111111011000000100000011000", 
    286 => "11110010000010000001110011010111", 
    287 => "11101101000110010011000011001010", 
    288 => "00000110001000001111010100001000", 
    289 => "00000001000010001111001000000010", 
    290 => "11110110000000011111100111011010", 
    291 => "11011101001010110000000100100000", 
    292 => "00001011000001011111111011101100", 
    293 => "11100000111101001110100111111000", 
    294 => "11110000111000011110101000011010", 
    295 => "11111001111110000001000011100111", 
    296 => "00011000111011011110111111110100", 
    297 => "00000000111001001011101011111010", 
    298 => "01001000111001110010010100001100", 
    299 => "11101011111011101111000100001011", 
    300 => "00010111111011010010001011110111", 
    301 => "00101000001110000000000011001001", 
    302 => "00010101111001001101000011111100", 
    303 => "11110111000011001110010100001110", 
    304 => "00001000000001100001001111110100", 
    305 => "00000111000101111111111100001011", 
    306 => "00000111000001011111011100101001", 
    307 => "11101011111110111110001111110000", 
    308 => "11101101111111110001100011100101", 
    309 => "11001000111110000001000000010100", 
    310 => "00001000000010011111100011001011", 
    311 => "00001011110111110000101100001111", 
    312 => "11111011000011110001100011101000", 
    313 => "11111101000100000000111100011001", 
    314 => "11101101110111001111000011010010", 
    315 => "00000001111100000010101011011000", 
    316 => "00010010101100111100111000001010", 
    317 => "00010100001101011111010100011010", 
    318 => "11100010110101011101111111101110", 
    319 => "00101101001010011110011111011100", 
    320 => "11101101111110001100000000001010", 
    321 => "11110100111100011110010000001101", 
    322 => "00110100010010000011101100001100", 
    323 => "00110000111101001111110011110011", 
    324 => "00110110110100011101000111010010", 
    325 => "11100000111010100000010011110110", 
    326 => "11110100110110011101000011011110", 
    327 => "00001101111110000000010000011100", 
    328 => "11110101111100101111101111010001", 
    329 => "00011101000011010010000100100010", 
    330 => "00010010000100001111011000001001", 
    331 => "00110110111100000001011100001110", 
    332 => "00001111110100110100010000100001", 
    333 => "11110101111001011110111011101100", 
    334 => "11010100110010101111010100111111", 
    335 => "00000101110010100000001000011010", 
    336 => "11101000000000011010111100010000", 
    337 => "11110011000110011111100000010011", 
    338 => "11111101000110010010100100000000", 
    339 => "11111010111100100001001011101001", 
    340 => "11001010110111011011010100011010", 
    341 => "11110111000001001110100111110000", 
    342 => "11111110000000101100111011100100", 
    343 => "11011110001011111111111000000000", 
    344 => "11100101111101111110100111111011", 
    345 => "11111110001101011111000100001001", 
    346 => "00100001111010111100101100011000", 
    347 => "00100001000000110010101000100010", 
    348 => "00001011111000100001110000011111", 
    349 => "11001100111001000010001011010010", 
    350 => "11101100111000111100100011110110", 
    351 => "10101110111011110010001111110010", 
    352 => "11010010101111010001001100001000", 
    353 => "00001110000000101001001100011011", 
    354 => "11101011110111011110110111111110", 
    355 => "00010111001110101111011100010010", 
    356 => "11110010111101001100101100010100", 
    357 => "00000101111001101101110011101110", 
    358 => "11110011000001111101110111110000", 
    359 => "00001100111111111110011111000010", 
    360 => "00100100000011011111101111110011", 
    361 => "11011101000011001100000111011101", 
    362 => "00101100111001000100111111111000", 
    363 => "11011111110011110000110111100011", 
    364 => "10011100001000000001100100101101", 
    365 => "00010101111001110010010111110101", 
    366 => "00010001110101001100011111111000", 
    367 => "00011100001100110000110000000111", 
    368 => "11100001001101011101100000000010", 
    369 => "11110110000101110000000011110100", 
    370 => "11101110111000011111001110010101", 
    371 => "00000100111101110100000000110111", 
    372 => "00110111001100111011111011111101", 
    373 => "11111011000001010001011000100001", 
    374 => "00000011000001010001000000100100", 
    375 => "11000000110101110000101001000110", 
    376 => "00010001000001011100111111011100", 
    377 => "11111001111101000001010000001101", 
    378 => "10111111000001101100100000011001", 
    379 => "11001010000010001111010111000001", 
    380 => "11010111111000010011000000001010", 
    381 => "11011101011100101111101011110010", 
    382 => "11110100000001101100000000100011", 
    383 => "11111000011100011101101111110111", 
    384 => "00110001111111101111010100001111", 
    385 => "10100001110011110011101100100010", 
    386 => "11011010001001111111001000110000", 
    387 => "11101101111010000011111011100011", 
    388 => "11110110110001111110111111010011", 
    389 => "10110111111111101111101011110011", 
    390 => "00010011111000010100011111111001", 
    391 => "11011110000000111110100100011010", 
    392 => "11111010110011100001000000000111", 
    393 => "11011100111010011111001110111011", 
    394 => "00011101000101101110100100000111", 
    395 => "00001110000111101111010100011001", 
    396 => "00010100110110000001101011000001", 
    397 => "00000111000011111101101000001010", 
    398 => "11000111111010100001001111110110", 
    399 => "00000111111001110010000100100000", 
    400 => "00000001110100011110101111111011", 
    401 => "00111001000111011100010111111010", 
    402 => "11110001111000101111001000100110", 
    403 => "00000010001100010100100100100100", 
    404 => "00100100111110110000110100010110", 
    405 => "00100000000011000000110111111011", 
    406 => "00100101000001111011101011110001", 
    407 => "11000000110010100001001011111110", 
    408 => "00001010110110101110101100001000", 
    409 => "00011010000011110001001111111110", 
    410 => "11101110111000111110100011101011", 
    411 => "00001010000101011110010100010100", 
    412 => "11110010111001100010000000100000", 
    413 => "11011100111100001110000011100000", 
    414 => "11101000110100111110111011110101", 
    415 => "11110010000001011101100000010101", 
    416 => "11110100000010000011000111111001", 
    417 => "11111111000100011111000111110011", 
    418 => "11100110110101010000100010111101", 
    419 => "00010010111101101101111111011111", 
    420 => "11111111110010010001011111110111", 
    421 => "00011110110001111110101111100010", 
    422 => "11001110000110111101101000010100", 
    423 => "10110100110100101111001100001110", 
    424 => "11101110000011111001100011111010", 
    425 => "00101001111010111110100011100001", 
    426 => "00100001111101100000101000101010", 
    427 => "11000100001110110001101111101101", 
    428 => "11011100111001011110010111001011", 
    429 => "00001001111010010000110011110101", 
    430 => "00011111110010001110111100000111", 
    431 => "00000111001001001101011000101101", 
    432 => "00010011000011111101001100011110", 
    433 => "01001010110100111101111100011110", 
    434 => "00101001001000000001111111110011", 
    435 => "11011111001011011100010100001111", 
    436 => "11000101110110101101101111110000", 
    437 => "00110100000100011110101011111010", 
    438 => "00000101000111100010110111110010", 
    439 => "10111001111010111101011011110100", 
    440 => "00010101000011100010011100100010", 
    441 => "10111101000101101100011000110001", 
    442 => "00001101111000001110001100000110", 
    443 => "11010010111000100100000111010001", 
    444 => "00010110001011000000010100110000", 
    445 => "11101011111001011101001011110110", 
    446 => "11001111110110011101001100110110", 
    447 => "00001010110010000000000011000100", 
    448 => "11110000000111011111101111110000", 
    449 => "11101010111010101101000111101011", 
    450 => "00001010000100010000010111111011", 
    451 => "11110010111111101101100111101001", 
    452 => "00000100001000010001010000011011", 
    453 => "00011110111100101111011100011010", 
    454 => "00001010000001010000100100010010", 
    455 => "11110011010001110000110011111001", 
    456 => "00001001000000000011001000100101", 
    457 => "00011001000001011110011111101010", 
    458 => "11000110000110001111011011110011", 
    459 => "00000011000101110001011111111010", 
    460 => "11110011000100100010110100000000", 
    461 => "00101001000000011101101111111111", 
    462 => "11100001111100111111010111100111", 
    463 => "11001111111011010001111100001000", 
    464 => "00001100000011000000011100000111", 
    465 => "11111010111111101111111000011101", 
    466 => "00100100110101001111010100101101", 
    467 => "11110001111100001110101111111001", 
    468 => "11111101111001011110100100011110", 
    469 => "00001001000001010001011111011011", 
    470 => "00001101111101101111000100000110", 
    471 => "00001100110111101110110000100101", 
    472 => "10111000001101101101110011111011", 
    473 => "00000100111101111111100011111111", 
    474 => "11110000111110000000110100010111", 
    475 => "11111111111011110000001011001111", 
    476 => "00000110111110101111111100000001", 
    477 => "11110010000101100001011011101011", 
    478 => "00001001001001011101101100101101", 
    479 => "00011100111011011110100111110111", 
    480 => "00100010111111000000000111110010", 
    481 => "00010011111001011101100110100110", 
    482 => "00100000000000001110011100011010", 
    483 => "00100101111110100000110000000000", 
    484 => "11111110111100110001110011101011", 
    485 => "00011000000100001111101000000011", 
    486 => "00101000111110010010110111111111", 
    487 => "00101000000011000010110111110001", 
    488 => "11111011000010010001001000101011", 
    489 => "00011100001001110010111111100010", 
    490 => "11111000111100111110011111101000", 
    491 => "00100111000111101100101100010001", 
    492 => "11111000111111111111111011100111", 
    493 => "11111000111000000001110000011000", 
    494 => "00101001111100101101011000110010", 
    495 => "00001010010110110000010101001101", 
    496 => "11011000000111100000101100000011", 
    497 => "00011001000000110000110111111111", 
    498 => "00001001000000010010010000000010", 
    499 => "11001100001101001110011100000011", 
    500 => "11101011001000000000011100010011", 
    501 => "11110101111111111110101111101000", 
    502 => "11010101001100011111010011111101", 
    503 => "00000110111010010000111011110001", 
    504 => "11111110111001000000101100000010", 
    505 => "00001011000101100000000000001000", 
    506 => "11100101111100000000001100001110", 
    507 => "11111111000001011111100111111101", 
    508 => "11111111000100110001011111010001", 
    509 => "00010101111011011110111111010111", 
    510 => "00011110000001101111010000001001", 
    511 => "00011101111000101101011011111111", 
    512 => "11101110110001001100011100010010", 
    513 => "11010011101111111110010100000010", 
    514 => "11101010000011100000001000000000", 
    515 => "00010000001110010010010100011000", 
    516 => "11111111001001010011111011010011", 
    517 => "00000111001000101110011100000101", 
    518 => "11111001110101100001101100010110", 
    519 => "00000110111100101101100000101011", 
    520 => "00001101111111010000000111011110", 
    521 => "11100111001010101100011111000000", 
    522 => "00011011111111011111001100011110", 
    523 => "11110011000011010000010000011011", 
    524 => "11000011000110111110100100010001", 
    525 => "00000101000101111110101010110111", 
    526 => "00010100111000011111001111101011", 
    527 => "00000100111100100000000100010001", 
    528 => "00001100110001111110111000010110", 
    529 => "11100110111101110010111000010100", 
    530 => "11111000111101110000011100010011", 
    531 => "11010110110111001111000110111001", 
    532 => "11111111000101100000001111101000", 
    533 => "11110010111111000000011100010000", 
    534 => "11110111111111010001101111111110", 
    535 => "00101100111110110001001000001000", 
    536 => "11101001110011111111110000100011", 
    537 => "00000011110001110000100000011110", 
    538 => "00000101111100101110010000011100", 
    539 => "11001110111010110000110000001001", 
    540 => "11101110111010111101010000001100", 
    541 => "11110010111011001111110111101010", 
    542 => "11101010111000101110111011111111", 
    543 => "00111100000110010100001100011010", 
    544 => "00100000110111100001000011110111", 
    545 => "11100111001001111111100100011001", 
    546 => "00010111001011000010010011111010", 
    547 => "11011100000101001111010000011100", 
    548 => "00000000000001111111011111010011", 
    549 => "11000011001001011111010000001110", 
    550 => "00101101001000101111111111101101", 
    551 => "11001101111111000000110111110000", 
    552 => "11100101000011101111110000011001", 
    553 => "00000100111110110000001000100000", 
    554 => "00000100000000101110100111101011", 
    555 => "00101100000000100001011100000011", 
    556 => "11110010110110110010111101000010", 
    557 => "00011010101010111111010111110010", 
    558 => "00011010000100100000100011101000", 
    559 => "11001000110111101100011100010110", 
    560 => "11011000111000011111101011111001", 
    561 => "00101001111101101111110100010111", 
    562 => "11101011111100010000100111110110", 
    563 => "00010101000010000011000100000111", 
    564 => "11001111000011010001010111000100", 
    565 => "11100101110001101101010100110001", 
    566 => "11011000000001001100111111100101", 
    567 => "00001000000100100001011100010011", 
    568 => "11110111111001000010011011111111", 
    569 => "11100110111111000001110100001000", 
    570 => "11110100111100101011111011100000", 
    571 => "11100110111011011111011011110011", 
    572 => "11000100001111110001101000010110", 
    573 => "00010001111010100000101011111110", 
    574 => "11110111111111101110110100001000", 
    575 => "11100010111010000001101000000010", 
    576 => "00010011110010101111111100011011", 
    577 => "00000001000001110100100100000000", 
    578 => "11010111111010010000100101000101", 
    579 => "00010101001001011100110100001110", 
    580 => "11011101111110010000001011010101", 
    581 => "00011001001011010000101100010001", 
    582 => "11010110000001001110110000101111", 
    583 => "00000101110011101101011111110000", 
    584 => "11111000101111101111000101010001", 
    585 => "00110111001110111101010111011101", 
    586 => "00001000110110100001100100000100", 
    587 => "11110100000100101111010100000110", 
    588 => "10101000010000000001001101010111", 
    589 => "11110010001101101100010010010101", 
    590 => "11111101000001001111101010110010", 
    591 => "00100101000011011101111011000101", 
    592 => "11001011000001100001100111101101", 
    593 => "00000000111111010000001100001011", 
    594 => "11101010000010000100011111010011", 
    595 => "11011010001011011101001011111011", 
    596 => "00000110110111010001010011010010", 
    597 => "11011100001001101111110011011000", 
    598 => "11100110000101001101111100100110", 
    599 => "00000110111100111111010111110100", 
    600 => "00111010111111001111100001101000", 
    601 => "00001000111111011101010110111110", 
    602 => "11111010110011000001011111110011", 
    603 => "01010011001001100000111111111101", 
    604 => "00010011000101011111111111111100", 
    605 => "11010100110010111111111011010010", 
    606 => "11100110000011011111101011101101", 
    607 => "11000101010101000010010100101110", 
    608 => "00111100101100001111000011000010", 
    609 => "11100100001000111111110011111001", 
    610 => "00000110000100110010000100011111", 
    611 => "10011111001011101101111111110010", 
    612 => "00001101111010010001101011111110", 
    613 => "00100010000100101000101111111010", 
    614 => "11011010001111011100000100110111", 
    615 => "00001000000101010101111011010110", 
    616 => "00001100001011001110000100111000", 
    617 => "10110000110001111101101000001100", 
    618 => "00010010111101110000100111100011", 
    619 => "00101110000010100010010000100011", 
    620 => "00101101001000110000010100000011", 
    621 => "11100001000011111110010000110001", 
    622 => "11100001000011001101110110011000", 
    623 => "00110011000101000000010000101111", 
    624 => "01000001001111001011101000011111", 
    625 => "00111100000101010001011000001010", 
    626 => "00010011111001100001011111110111", 
    627 => "11111000111101000011100111110011", 
    628 => "11101011111110001100100000000000", 
    629 => "11001001001010010001111011011010", 
    630 => "11000111101111000011101000001011", 
    631 => "10111011000101000001110100111000", 
    632 => "00001000001111100010010000111001", 
    633 => "11011101000100110010011110111100", 
    634 => "00000110111010000000001000010100", 
    635 => "00101010000010011110110000010110", 
    636 => "00011000111010000001000110111101", 
    637 => "00000001111101010010100111101110", 
    638 => "11001100000000111011111100000100", 
    639 => "00010000111110000001010011000111", 
    640 => "11110001111110011100110000000001", 
    641 => "00110101110011000000000011000111", 
    642 => "00001110111100000000010011100011", 
    643 => "00000001000110000001110000101111", 
    644 => "00010100000100101110000000010100", 
    645 => "00001111111000010001011011011101", 
    646 => "11011010000100011110011100100000", 
    647 => "00100010000001000001110111101000", 
    648 => "11001101000011011101000111101100", 
    649 => "11001101000101101101010000011001", 
    650 => "11010111001000001111000111011111", 
    651 => "00011010110100101111010111011011", 
    652 => "00011100111100101101110011011010", 
    653 => "00111101000110000001101011101000", 
    654 => "11111100001000110010000100010011", 
    655 => "11110111111111110000001011100110", 
    656 => "00011000111111111111011011111110", 
    657 => "11100011000001000001011100011011", 
    658 => "01000011111111000000011011110101", 
    659 => "00100100110101001110110011100111", 
    660 => "00110000110101100000011000100111", 
    661 => "11010111000110010001001100001001", 
    662 => "00111110111011110000110011111111", 
    663 => "00001010001101010000010111111110", 
    664 => "11001000001100100001111100110111", 
    665 => "00001110111100111111000011011100", 
    666 => "00001011000010101111111111100110", 
    667 => "00101001110101010001010100000101", 
    668 => "11100011000101100000101000000101", 
    669 => "11110010000111101110110011111101", 
    670 => "11110010000111101110110000001001", 
    671 => "11111110110101100001000100001110", 
    672 => "11110110001000011101100011010011", 
    673 => "11001011111011100000101011010101", 
    674 => "00001110001010010000000111111001", 
    675 => "11011001110111011111001100001001", 
    676 => "11001110000000101110111011100110", 
    677 => "11101000111000101011101110111010", 
    678 => "01001111111110111011111111000001", 
    679 => "00001111001110001110111111100100", 
    680 => "00001110000000100011011100011010", 
    681 => "00001000110101101110010011011101", 
    682 => "00000000001000001110110011111010", 
    683 => "00111001111001110010000111100101", 
    684 => "11110100000001100001101100010110", 
    685 => "00001011111100000001100100011100", 
    686 => "00000011001011000100010100001000", 
    687 => "11100110110011111111111100001110", 
    688 => "11000011000000101111111000000010", 
    689 => "00100000111110001110010111111011", 
    690 => "11110101000000001100001111001010", 
    691 => "11101010111001000000101111010010", 
    692 => "11011100001110111100000100010000", 
    693 => "11111110000101000001100111101011", 
    694 => "00010010000011011011101100010010", 
    695 => "11110101000011110001100100000000", 
    696 => "11001110000100001111110000010000", 
    697 => "00101111000110101110110011111110", 
    698 => "00100100111001101101011011110001", 
    699 => "00010001000010111111011011000111", 
    700 => "00010110111101011111101111001111", 
    701 => "11100000110101011111101111010111", 
    702 => "11000111111111101100100011111001", 
    703 => "00010110111101000001101000110110", 
    704 => "00011001000010000010010011100010", 
    705 => "10000110000010011011100000010100", 
    706 => "00001001001111011110110100000000", 
    707 => "11001010110110110001101011111101", 
    708 => "11111010000101110010101000100110", 
    709 => "00010000110111101111010011110001", 
    710 => "00011000001101001101010100011011", 
    711 => "11110110001111100001000111110000", 
    712 => "00100011000001111100101111011011", 
    713 => "11110010110100111100100111111111", 
    714 => "00000100110101110100110100110011", 
    715 => "11101010001100001101011100011111", 
    716 => "00011000111111010000001000010101", 
    717 => "00100110111010001011101100000011", 
    718 => "11100001111010000001111111011111", 
    719 => "00000101111101110001101111100010", 
    720 => "00000000111010001111111111011111", 
    721 => "11110011111111101010101011011010", 
    722 => "11100001000001101101111011101001", 
    723 => "00101101000111000100100100001111", 
    724 => "11100101000011011101011000101011", 
    725 => "00001011000100101110100011100101", 
    726 => "00100011110100011111001011100010", 
    727 => "11100001110000101111001101000011", 
    728 => "11100111000100011011001000000100", 
    729 => "11111100111100001111011100000011", 
    730 => "00101001111010110001001100010001", 
    731 => "11101010000101100010101011110000", 
    732 => "00011111110000000000100011010000", 
    733 => "11101001111101110001011000010000", 
    734 => "00110001110100101110011011100010", 
    735 => "11001101111110001100110000011010", 
    736 => "00100100111100001110010100110011", 
    737 => "11110010111100000110000011101011", 
    738 => "00001000000001110000010000011111", 
    739 => "11010100000100001110000011101011", 
    740 => "11011001000011001111011100110101", 
    741 => "11111111001000010001001111010011", 
    742 => "00010100110101100001010111110011", 
    743 => "11100010000000010100001000000001", 
    744 => "00011101001000100001011111111011", 
    745 => "00011001101111011111011000101011", 
    746 => "11101011111011100010011011000110", 
    747 => "11111000111010100000000111100110", 
    748 => "11101101110111001111000100001011", 
    749 => "11000000110100000010011011000100", 
    750 => "00000001111000101111000000010101", 
    751 => "00010000111000010000001011101111", 
    752 => "11001001111001101110111100010000", 
    753 => "00100001001100100100110000000101", 
    754 => "11110101010000001110011111010111", 
    755 => "00010010110101001101010000001001", 
    756 => "11010100101111101100000111110010", 
    757 => "00011100010100101110101111001001", 
    758 => "11111011110011111101110111110000", 
    759 => "00001011111100100000100100001001", 
    760 => "11110110001001001110100111010100", 
    761 => "11011101111010101101111111011001", 
    762 => "11110011001000101111001000000011", 
    763 => "11011010110000010000010111111001", 
    764 => "11100000000000100000001000000011", 
    765 => "11111000001001010000101011111101", 
    766 => "11111000000001101111000001011110", 
    767 => "00101011001011101101100000010111" );

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

entity ReadA119134_weights_0_3_24 is
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

architecture arch of ReadA119134_weights_0_3_24 is
    component ReadA119134_weights_0_3_24_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    ReadA119134_weights_0_3_24_rom_U :  component ReadA119134_weights_0_3_24_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;

