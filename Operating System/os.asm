INT : int
Identifier : KEYBOARD 
;: ;
line no is 1
INT : int
Identifier : MAPSTART 
;: ;
line no is 2
CHAR : char
* : *
Identifier : Buffer 
;: ;
line no is 3
INT : int
Identifier : current_buffer_index 
;: ;
line no is 4
INT : int
Identifier : line 
;: ;
line no is 5
INT : int
Identifier : character 
;: ;
line no is 6
CHAR : char
* : *
Identifier : memory 
;: ;
line no is 7
INT : int
Identifier : displayLock 
;: ;
line no is 8
line no is 9
line no is 10
INT : int
Identifier : seed 
;: ;
line no is 11
INT : int
Identifier : R_food 
;: ;
line no is 12
INT : int
Identifier : C_food 
;: ;
line no is 13
line no is 14
INT : int
Identifier : current_process 
;: ;
line no is 15
INT : int
Identifier : prev_process 
;: ;
line no is 16
INT : int
Identifier : pid 
;: ;
line no is 17
INT : int
* : *
Identifier : os_reg 
;: ;
line no is 18
INT : int
* : *
Identifier : p1_reg 
;: ;
line no is 19
INT : int
* : *
Identifier : p2_reg 
;: ;
line no is 20
INT : int
* : *
Identifier : p3_reg 
;: ;
line no is 21
INT : int
* : *
Identifier : p4_reg 
;: ;
line no is 22
INT : int
* : *
Identifier : temp_reg 
;: ;
line no is 23
INT : int
* : *
Identifier : all_processes 
;: ;
line no is 24
INT : int
* : *
Identifier : from_proc 
;: ;
line no is 25
line no is 26
CHAR : char
Identifier : get_char 
( : (
) : )
line no is 27
{ : {
line no is 28
INT : int
Identifier : k 
;: ;
line no is 29
FOR : for
( : (
;: ;
;: ;
) : )
line no is 30
{ : {
line no is 31
Identifier : k 
= : =
Identifier : memory 
[ : [
Identifier : KEYBOARD 
] : ]
;: ;
COMPILETIME WARNING: assigning char to int
At line : 32
line no is 32
IF : if
( : (
Identifier : k 
NE_OP : !=
I CONST: (0)
) : )
line no is 33
{ : {
line no is 34
RETURN : return
Identifier : k 
;: ;
line no is 35
} : }
line no is 36
} : }
line no is 37
} : }
line no is 38
line no is 39
INT : int
Identifier : strlen 
( : (
CHAR : char
* : *
Identifier : str 
) : )
line no is 40
{ : {
line no is 41
INT : int
Identifier : count 
;: ;
line no is 42
Identifier : count 
= : =
I CONST: (0)
;: ;
line no is 43
FOR : for
( : (
;: ;
;: ;
) : )
line no is 44
{ : {
line no is 45
INT : int
Identifier : ch 
;: ;
line no is 46
Identifier : ch 
= : =
Identifier : str 
[ : [
Identifier : count 
] : ]
;: ;
COMPILETIME WARNING: assigning char to int
At line : 47
line no is 47
IF : if
( : (
Identifier : ch 
EQ_OP : ==
I CONST: (0)
) : )
line no is 48
{ : {
line no is 49
BREAK : break
;: ;
line no is 50
} : }
line no is 51
Identifier : count 
INC_OP : ++
;: ;
line no is 52
} : }
line no is 53
RETURN : return
Identifier : count 
;: ;
line no is 54
} : }
line no is 55
line no is 56
INT : int
Identifier : clear_shell 
( : (
) : )
line no is 57
{ : {
line no is 58
INT : int
Identifier : i 
;: ;
line no is 59
FOR : for
( : (
Identifier : i 
= : =
I CONST: (9599)
;: ;
Identifier : i 
GE_OP : >=
I CONST: (0)
;: ;
Identifier : i 
DEC_OP : --
) : )
line no is 60
{ : {
line no is 61
Identifier : memory 
[ : [
Identifier : i 
] : ]
= : =
I CONST: (0)
;: ;
COMPILETIME WARNING: assigning int to char
At line : 62
line no is 62
} : }
line no is 63
Identifier : line 
= : =
I CONST: (0)
;: ;
line no is 64
Identifier : character 
= : =
I CONST: (0)
;: ;
line no is 65
RETURN : return
I CONST: (0)
;: ;
line no is 66
} : }
line no is 67
line no is 68
INT : int
Identifier : display 
( : (
CHAR : char
* : *
Identifier : arr 
, : ,
INT : int
Identifier : size 
, : ,
INT : int
Identifier : l 
, : ,
INT : int
Identifier : c 
) : )
line no is 69
{ : {
line no is 70
INT : int
Identifier : displayStart 
;: ;
line no is 71
Identifier : displayStart 
= : =
I CONST: (80)
* : *
Identifier : l 
;: ;
line no is 72
line no is 73
INT : int
Identifier : k 
;: ;
line no is 74
line no is 75
FOR : for
( : (
Identifier : k 
= : =
I CONST: (0)
;: ;
Identifier : k 
< : <
I CONST: (8)
;: ;
Identifier : k 
INC_OP : ++
) : )
line no is 76
{ : {
line no is 77
INT : int
Identifier : j 
;: ;
line no is 78
INT : int
Identifier : a 
;: ;
line no is 79
Identifier : a 
= : =
Identifier : k 
* : *
I CONST: (80)
;: ;
line no is 80
FOR : for
( : (
Identifier : j 
= : =
I CONST: (0)
;: ;
Identifier : j 
< : <
Identifier : size 
;: ;
Identifier : j 
INC_OP : ++
) : )
line no is 81
{ : {
line no is 82
INT : int
Identifier : m 
;: ;
line no is 83
Identifier : m 
= : =
Identifier : a 
+ : +
Identifier : j 
+ : +
Identifier : c 
;: ;
line no is 84
IF : if
( : (
Identifier : c 
+ : +
Identifier : j 
GE_OP : >=
I CONST: (80)
) : )
line no is 85
{ : {
line no is 86
BREAK : break
;: ;
line no is 87
} : }
line no is 88
INT : int
Identifier : b 
;: ;
line no is 89
Identifier : b 
= : =
Identifier : arr 
[ : [
Identifier : j 
] : ]
;: ;
COMPILETIME WARNING: assigning char to int
At line : 90
line no is 90
Identifier : b 
= : =
Identifier : b 
* : *
I CONST: (8)
;: ;
line no is 91
Identifier : memory 
[ : [
Identifier : displayStart 
+ : +
Identifier : m 
] : ]
= : =
Identifier : memory 
[ : [
Identifier : MAPSTART 
+ : +
Identifier : b 
+ : +
Identifier : k 
] : ]
;: ;
line no is 92
} : }
line no is 93
} : }
line no is 94
RETURN : return
I CONST: (0)
;: ;
line no is 95
} : }
line no is 96
line no is 97
INT : int
Identifier : welcome_screen 
( : (
) : )
line no is 98
{ : {
line no is 99
CHAR : char
* : *
Identifier : str 
;: ;
line no is 100
Identifier : str 
= : =
String Const: "########################################" 
;: ;
line no is 101
Identifier : display 
( : (
Identifier : str 
, : ,
I CONST: (40)
, : ,
I CONST: (0)
, : ,
I CONST: (0)
) : )
;: ;
line no is 102
Identifier : display 
( : (
Identifier : str 
, : ,
I CONST: (40)
, : ,
I CONST: (29)
, : ,
I CONST: (0)
) : )
;: ;
line no is 103
INT : int
Identifier : i 
;: ;
line no is 104
FOR : for
( : (
Identifier : i 
= : =
I CONST: (1)
;: ;
Identifier : i 
< : <
I CONST: (39)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 105
{ : {
line no is 106
Identifier : str 
[ : [
Identifier : i 
] : ]
= : =
I CONST: (32)
;: ;
COMPILETIME WARNING: assigning int to char
At line : 107
line no is 107
} : }
line no is 108
FOR : for
( : (
Identifier : i 
= : =
I CONST: (1)
;: ;
Identifier : i 
< : <
I CONST: (29)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 109
{ : {
line no is 110
Identifier : display 
( : (
Identifier : str 
, : ,
I CONST: (40)
, : ,
Identifier : i 
, : ,
I CONST: (0)
) : )
;: ;
line no is 111
} : }
line no is 112
CHAR : char
* : *
Identifier : hello 
;: ;
line no is 113
Identifier : hello 
= : =
String Const: "Hello World!!!" 
;: ;
line no is 114
INT : int
Identifier : len 
;: ;
line no is 115
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : hello 
) : )
;: ;
line no is 116
line no is 117
Identifier : display 
( : (
Identifier : hello 
, : ,
Identifier : len 
, : ,
I CONST: (15)
, : ,
I CONST: (13)
) : )
;: ;
line no is 118
line no is 119
INT : int
Identifier : key 
;: ;
line no is 120
FOR : for
( : (
;: ;
;: ;
) : )
line no is 121
{ : {
line no is 122
Identifier : key 
= : =
Identifier : get_char 
( : (
) : )
;: ;
COMPILETIME WARNING: assigning char to int
At line : 123
line no is 123
IF : if
( : (
Identifier : key 
EQ_OP : ==
I CONST: (13)
) : )
line no is 124
{ : {
line no is 125
BREAK : break
;: ;
line no is 126
} : }
line no is 127
} : }
line no is 128
Identifier : clear_shell 
( : (
) : )
;: ;
line no is 129
line no is 130
RETURN : return
I CONST: (0)
;: ;
line no is 131
} : }
line no is 132
line no is 133
INT : int
Identifier : get_line 
( : (
) : )
line no is 134
{ : {
line no is 135
INT : int
Identifier : i 
;: ;
line no is 136
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
I CONST: (40)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 137
{ : {
line no is 138
Identifier : Buffer 
[ : [
Identifier : i 
] : ]
= : =
I CONST: (0)
;: ;
COMPILETIME WARNING: assigning int to char
At line : 139
line no is 139
} : }
line no is 140
Identifier : i 
= : =
I CONST: (0)
;: ;
line no is 141
FOR : for
( : (
;: ;
;: ;
) : )
line no is 142
{ : {
line no is 143
IF : if
( : (
Identifier : i 
EQ_OP : ==
I CONST: (40)
) : )
line no is 144
{ : {
line no is 145
BREAK : break
;: ;
line no is 146
} : }
line no is 147
INT : int
Identifier : temp 
;: ;
line no is 148
Identifier : temp 
= : =
Identifier : get_char 
( : (
) : )
;: ;
COMPILETIME WARNING: assigning char to int
At line : 149
line no is 149
IF : if
( : (
Identifier : temp 
EQ_OP : ==
I CONST: (13)
) : )
line no is 150
{ : {
line no is 151
BREAK : break
;: ;
line no is 152
} : }
line no is 153
ELIF : elif
( : (
Identifier : temp 
EQ_OP : ==
I CONST: (8)
) : )
line no is 154
{ : {
line no is 155
IF : if
( : (
Identifier : i 
NE_OP : !=
I CONST: (0)
) : )
line no is 156
{ : {
line no is 157
Identifier : i 
DEC_OP : --
;: ;
line no is 158
Identifier : Buffer 
[ : [
Identifier : i 
] : ]
= : =
I CONST: (0)
;: ;
COMPILETIME WARNING: assigning int to char
At line : 159
line no is 159
} : }
line no is 160
} : }
line no is 161
ELSE : else
line no is 162
{ : {
line no is 163
Identifier : Buffer 
[ : [
Identifier : i 
] : ]
= : =
Identifier : temp 
;: ;
COMPILETIME WARNING: assigning int to char
At line : 164
line no is 164
Identifier : i 
INC_OP : ++
;: ;
line no is 165
} : }
line no is 166
Identifier : display 
( : (
Identifier : Buffer 
, : ,
I CONST: (35)
, : ,
Identifier : line 
, : ,
Identifier : character 
) : )
;: ;
line no is 167
} : }
line no is 168
Identifier : current_buffer_index 
= : =
I CONST: (0)
;: ;
line no is 169
Identifier : line 
= : =
( : (
Identifier : line 
+ : +
I CONST: (1)
) : )
% : %
I CONST: (30)
;: ;
line no is 170
IF : if
( : (
Identifier : line 
EQ_OP : ==
I CONST: (0)
) : )
line no is 171
{ : {
line no is 172
Identifier : clear_shell 
( : (
) : )
;: ;
line no is 173
} : }
line no is 174
Identifier : character 
= : =
I CONST: (0)
;: ;
line no is 175
RETURN : return
Identifier : i 
;: ;
line no is 176
} : }
line no is 177
line no is 178
INT : int
Identifier : strcmp 
( : (
CHAR : char
* : *
Identifier : str1 
, : ,
CHAR : char
* : *
Identifier : str2 
) : )
line no is 179
{ : {
line no is 180
INT : int
Identifier : len1 
, : ,
Identifier : len2 
;: ;
line no is 181
Identifier : len1 
= : =
Identifier : strlen 
( : (
Identifier : str1 
) : )
;: ;
line no is 182
Identifier : len2 
= : =
Identifier : strlen 
( : (
Identifier : str2 
) : )
;: ;
line no is 183
line no is 184
IF : if
( : (
Identifier : len1 
NE_OP : !=
Identifier : len2 
) : )
line no is 185
{ : {
line no is 186
RETURN : return
I CONST: (1)
;: ;
line no is 187
} : }
line no is 188
line no is 189
INT : int
Identifier : i 
;: ;
line no is 190
INT : int
Identifier : l1 
, : ,
Identifier : l2 
;: ;
line no is 191
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
Identifier : len1 
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 192
{ : {
line no is 193
Identifier : l1 
= : =
Identifier : str1 
[ : [
Identifier : i 
] : ]
;: ;
COMPILETIME WARNING: assigning char to int
At line : 194
line no is 194
Identifier : l2 
= : =
Identifier : str2 
[ : [
Identifier : i 
] : ]
;: ;
COMPILETIME WARNING: assigning char to int
At line : 195
line no is 195
IF : if
( : (
Identifier : l1 
NE_OP : !=
Identifier : l2 
) : )
line no is 196
{ : {
line no is 197
RETURN : return
I CONST: (1)
;: ;
line no is 198
} : }
line no is 199
} : }
line no is 200
RETURN : return
I CONST: (0)
;: ;
line no is 201
} : }
line no is 202
line no is 203
INT : int
Identifier : print_string 
( : (
CHAR : char
* : *
Identifier : buff 
, : ,
INT : int
Identifier : len 
, : ,
INT : int
Identifier : newline 
) : )
line no is 204
{ : {
line no is 205
INT : int
Identifier : i 
;: ;
line no is 206
FOR : for
( : (
;: ;
Identifier : displayLock 
EQ_OP : ==
I CONST: (1)
;: ;
) : )
line no is 207
{ : {
line no is 208
Identifier : i 
= : =
I CONST: (0)
;: ;
line no is 209
} : }
line no is 210
Identifier : displayLock 
= : =
I CONST: (1)
;: ;
line no is 211
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
Identifier : len 
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 212
{ : {
line no is 213
IF : if
( : (
Identifier : character 
EQ_OP : ==
I CONST: (40)
) : )
line no is 214
{ : {
line no is 215
Identifier : line 
= : =
( : (
Identifier : line 
+ : +
I CONST: (1)
) : )
% : %
I CONST: (30)
;: ;
line no is 216
IF : if
( : (
Identifier : line 
EQ_OP : ==
I CONST: (0)
) : )
line no is 217
{ : {
line no is 218
Identifier : clear_shell 
( : (
) : )
;: ;
line no is 219
} : }
line no is 220
Identifier : character 
= : =
I CONST: (0)
;: ;
line no is 221
} : }
line no is 222
IF : if
( : (
Identifier : line 
EQ_OP : ==
I CONST: (30)
) : )
line no is 223
{ : {
line no is 224
Identifier : clear_shell 
( : (
) : )
;: ;
line no is 225
} : }
line no is 226
line no is 227
CHAR : char
* : *
Identifier : b 
;: ;
line no is 228
INT : int
Identifier : bu 
;: ;
line no is 229
Identifier : bu 
= : =
Identifier : buff 
;: ;
COMPILETIME WARNING: assigning *char to int
At line : 230
line no is 230
Identifier : bu 
= : =
Identifier : bu 
+ : +
Identifier : i 
;: ;
line no is 231
Identifier : b 
= : =
Identifier : bu 
;: ;
COMPILETIME WARNING: assigning int to *char
At line : 232
line no is 232
Identifier : display 
( : (
Identifier : b 
, : ,
I CONST: (1)
, : ,
Identifier : line 
, : ,
Identifier : character 
) : )
;: ;
line no is 233
Identifier : character 
INC_OP : ++
;: ;
line no is 234
} : }
line no is 235
IF : if
( : (
Identifier : newline 
EQ_OP : ==
I CONST: (1)
) : )
line no is 236
{ : {
line no is 237
Identifier : line 
= : =
( : (
Identifier : line 
+ : +
I CONST: (1)
) : )
% : %
I CONST: (30)
;: ;
line no is 238
IF : if
( : (
Identifier : line 
EQ_OP : ==
I CONST: (0)
) : )
line no is 239
{ : {
line no is 240
Identifier : clear_shell 
( : (
) : )
;: ;
line no is 241
} : }
line no is 242
Identifier : character 
= : =
I CONST: (0)
;: ;
line no is 243
} : }
line no is 244
Identifier : displayLock 
= : =
I CONST: (0)
;: ;
line no is 245
RETURN : return
I CONST: (0)
;: ;
line no is 246
} : }
line no is 247
line no is 248
INT : int
Identifier : get_string 
( : (
CHAR : char
* : *
Identifier : buff 
) : )
line no is 249
{ : {
line no is 250
INT : int
Identifier : i 
;: ;
line no is 251
Identifier : i 
= : =
I CONST: (0)
;: ;
line no is 252
INT : int
Identifier : current 
;: ;
line no is 253
Identifier : current 
= : =
Identifier : Buffer 
[ : [
Identifier : current_buffer_index 
] : ]
;: ;
COMPILETIME WARNING: assigning char to int
At line : 254
line no is 254
line no is 255
IF : if
( : (
Identifier : current 
EQ_OP : ==
I CONST: (0)
OR_OP : ||
Identifier : current_buffer_index 
GE_OP : >=
I CONST: (40)
) : )
line no is 256
{ : {
line no is 257
Identifier : get_line 
( : (
) : )
;: ;
line no is 258
} : }
line no is 259
line no is 260
FOR : for
( : (
;: ;
;: ;
) : )
line no is 261
{ : {
line no is 262
Identifier : current 
= : =
Identifier : Buffer 
[ : [
Identifier : current_buffer_index 
] : ]
;: ;
COMPILETIME WARNING: assigning char to int
At line : 263
line no is 263
IF : if
( : (
Identifier : current 
EQ_OP : ==
I CONST: (0)
OR_OP : ||
Identifier : current 
EQ_OP : ==
I CONST: (32)
OR_OP : ||
Identifier : current_buffer_index 
GE_OP : >=
I CONST: (40)
) : )
line no is 264
{ : {
line no is 265
Identifier : current_buffer_index 
INC_OP : ++
;: ;
line no is 266
RETURN : return
Identifier : i 
;: ;
line no is 267
} : }
line no is 268
ELSE : else
line no is 269
{ : {
line no is 270
Identifier : buff 
[ : [
Identifier : i 
] : ]
= : =
Identifier : Buffer 
[ : [
Identifier : current_buffer_index 
] : ]
;: ;
line no is 271
Identifier : current_buffer_index 
INC_OP : ++
;: ;
line no is 272
Identifier : i 
INC_OP : ++
;: ;
line no is 273
} : }
line no is 274
} : }
line no is 275
RETURN : return
I CONST: (0)
;: ;
line no is 276
} : }
line no is 277
line no is 278
INT : int
Identifier : get_num 
( : (
) : )
line no is 279
{ : {
line no is 280
CHAR : char
Identifier : buff 
[ : [
I CONST: (10)
] : ]
;: ;
line no is 281
INT : int
Identifier : size 
;: ;
line no is 282
Identifier : size 
= : =
Identifier : get_string 
( : (
Identifier : buff 
) : )
;: ;
line no is 283
INT : int
Identifier : num 
;: ;
line no is 284
Identifier : num 
= : =
I CONST: (0)
;: ;
line no is 285
INT : int
Identifier : i 
;: ;
line no is 286
INT : int
Identifier : b 
;: ;
line no is 287
Identifier : b 
= : =
Identifier : buff 
[ : [
I CONST: (0)
] : ]
;: ;
COMPILETIME WARNING: assigning char to int
At line : 288
line no is 288
IF : if
( : (
Identifier : b 
EQ_OP : ==
I CONST: (45)
) : )
line no is 289
{ : {
line no is 290
FOR : for
( : (
Identifier : i 
= : =
I CONST: (1)
;: ;
Identifier : i 
< : <
Identifier : size 
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 291
{ : {
line no is 292
Identifier : b 
= : =
Identifier : buff 
[ : [
Identifier : i 
] : ]
;: ;
COMPILETIME WARNING: assigning char to int
At line : 293
line no is 293
IF : if
( : (
Identifier : b 
< : <
I CONST: (48)
OR_OP : ||
Identifier : b 
> : >
I CONST: (57)
) : )
line no is 294
{ : {
line no is 295
RETURN : return
I CONST: (0)
;: ;
line no is 296
} : }
line no is 297
Identifier : num 
= : =
Identifier : num 
* : *
I CONST: (10)
;: ;
line no is 298
Identifier : num 
= : =
Identifier : num 
+ : +
Identifier : b 
- : -
I CONST: (48)
;: ;
line no is 299
} : }
line no is 300
RETURN : return
I CONST: (0)
- : -
Identifier : num 
;: ;
line no is 301
} : }
line no is 302
line no is 303
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
Identifier : size 
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 304
{ : {
line no is 305
Identifier : b 
= : =
Identifier : buff 
[ : [
Identifier : i 
] : ]
;: ;
COMPILETIME WARNING: assigning char to int
At line : 306
line no is 306
IF : if
( : (
Identifier : b 
< : <
I CONST: (48)
OR_OP : ||
Identifier : b 
> : >
I CONST: (57)
) : )
line no is 307
{ : {
line no is 308
RETURN : return
I CONST: (0)
;: ;
line no is 309
} : }
line no is 310
Identifier : num 
= : =
Identifier : num 
* : *
I CONST: (10)
;: ;
line no is 311
Identifier : num 
= : =
Identifier : num 
+ : +
Identifier : b 
- : -
I CONST: (48)
;: ;
line no is 312
} : }
line no is 313
RETURN : return
Identifier : num 
;: ;
line no is 314
} : }
line no is 315
line no is 316
INT : int
Identifier : reverse 
( : (
CHAR : char
* : *
Identifier : str 
, : ,
INT : int
Identifier : len 
) : )
line no is 317
{ : {
line no is 318
INT : int
Identifier : i 
;: ;
line no is 319
INT : int
Identifier : j 
;: ;
line no is 320
Identifier : i 
= : =
I CONST: (0)
;: ;
line no is 321
Identifier : j 
= : =
Identifier : len 
- : -
I CONST: (1)
;: ;
line no is 322
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
Identifier : j 
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 323
{ : {
line no is 324
CHAR : char
Identifier : temp 
;: ;
line no is 325
Identifier : temp 
= : =
Identifier : str 
[ : [
Identifier : i 
] : ]
;: ;
line no is 326
Identifier : str 
[ : [
Identifier : i 
] : ]
= : =
Identifier : str 
[ : [
Identifier : j 
] : ]
;: ;
line no is 327
Identifier : str 
[ : [
Identifier : j 
] : ]
= : =
Identifier : temp 
;: ;
line no is 328
Identifier : i 
INC_OP : ++
;: ;
line no is 329
Identifier : j 
DEC_OP : --
;: ;
line no is 330
} : }
line no is 331
RETURN : return
I CONST: (0)
;: ;
line no is 332
} : }
line no is 333
INT : int
Identifier : print_num 
( : (
INT : int
Identifier : num 
, : ,
INT : int
Identifier : newline 
) : )
line no is 334
{ : {
line no is 335
CHAR : char
Identifier : buff 
[ : [
I CONST: (10)
] : ]
;: ;
line no is 336
INT : int
Identifier : i 
;: ;
line no is 337
Identifier : i 
= : =
I CONST: (0)
;: ;
line no is 338
INT : int
Identifier : b 
;: ;
line no is 339
Identifier : b 
= : =
I CONST: (1)
;: ;
line no is 340
IF : if
( : (
Identifier : num 
< : <
I CONST: (0)
) : )
line no is 341
{ : {
line no is 342
Identifier : num 
= : =
I CONST: (0)
- : -
Identifier : num 
;: ;
line no is 343
Identifier : b 
= : =
I CONST: (0)
;: ;
line no is 344
} : }
line no is 345
FOR : for
( : (
;: ;
;: ;
) : )
line no is 346
{ : {
line no is 347
Identifier : buff 
[ : [
Identifier : i 
] : ]
= : =
Identifier : num 
% : %
I CONST: (10)
+ : +
I CONST: (48)
;: ;
COMPILETIME WARNING: assigning int to char
At line : 348
line no is 348
Identifier : i 
INC_OP : ++
;: ;
line no is 349
Identifier : num 
= : =
Identifier : num 
/ : /
I CONST: (10)
;: ;
line no is 350
IF : if
( : (
Identifier : num 
EQ_OP : ==
I CONST: (0)
) : )
line no is 351
{ : {
line no is 352
BREAK : break
;: ;
line no is 353
} : }
line no is 354
} : }
line no is 355
IF : if
( : (
Identifier : b 
EQ_OP : ==
I CONST: (0)
) : )
line no is 356
{ : {
line no is 357
Identifier : buff 
[ : [
Identifier : i 
] : ]
= : =
I CONST: (45)
;: ;
COMPILETIME WARNING: assigning int to char
At line : 358
line no is 358
Identifier : i 
INC_OP : ++
;: ;
line no is 359
} : }
line no is 360
Identifier : reverse 
( : (
Identifier : buff 
, : ,
Identifier : i 
) : )
;: ;
line no is 361
Identifier : print_string 
( : (
Identifier : buff 
, : ,
Identifier : i 
, : ,
Identifier : newline 
) : )
;: ;
line no is 362
RETURN : return
I CONST: (0)
;: ;
line no is 363
} : }
line no is 364
line no is 365
INT : int
Identifier : processReturn 
( : (
) : )
line no is 366
{ : {
line no is 367
ASM : __asm__
( : (
String Const: "label" 
, : ,
String Const: "return_process_begin:" 
, : ,
Identifier : pid 
) : )
;: ;
line no is 368
line no is 369
ASM : __asm__
( : (
String Const: "processReturnEnter" 
, : ,
String Const: "dummy" 
, : ,
Identifier : pid 
) : )
;: ;
line no is 370
line no is 371
INT : int
Identifier : pr_process 
;: ;
line no is 372
ASM : __asm__
( : (
String Const: "store" 
, : ,
String Const: "R11" 
, : ,
Identifier : pr_process 
) : )
;: ;
line no is 373
line no is 374
INT : int
Identifier : curIndex 
;: ;
line no is 375
INT : int
Identifier : i 
;: ;
line no is 376
Identifier : curIndex 
= : =
I CONST: (10)
;: ;
line no is 377
FOR : for
( : (
Identifier : i 
= : =
I CONST: (1)
;: ;
Identifier : i 
< : <
I CONST: (5)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 378
{ : {
line no is 379
IF : if
( : (
Identifier : pr_process 
EQ_OP : ==
Identifier : all_processes 
[ : [
Identifier : i 
] : ]
) : )
line no is 380
{ : {
line no is 381
Identifier : curIndex 
= : =
Identifier : i 
;: ;
line no is 382
} : }
line no is 383
} : }
line no is 384
line no is 385
Identifier : all_processes 
[ : [
Identifier : curIndex 
] : ]
= : =
I CONST: (0)
;: ;
line no is 386
line no is 387
IF : if
( : (
Identifier : curIndex 
EQ_OP : ==
I CONST: (10)
) : )
line no is 388
{ : {
line no is 389
CHAR : char
* : *
Identifier : prompt1 
;: ;
line no is 390
Identifier : prompt1 
= : =
String Const: "Some problem occured, system crashing" 
;: ;
line no is 391
INT : int
Identifier : len 
;: ;
line no is 392
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt1 
) : )
;: ;
line no is 393
Identifier : print_string 
( : (
Identifier : prompt1 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 394
} : }
line no is 395
line no is 396
INT : int
Identifier : next_process 
;: ;
line no is 397
Identifier : next_process 
= : =
I CONST: (10)
;: ;
line no is 398
FOR : for
( : (
Identifier : i 
= : =
Identifier : curIndex 
+ : +
I CONST: (1)
;: ;
Identifier : i 
< : <
I CONST: (5)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 399
{ : {
line no is 400
IF : if
( : (
Identifier : all_processes 
[ : [
Identifier : i 
] : ]
NE_OP : !=
I CONST: (0)
) : )
line no is 401
{ : {
line no is 402
Identifier : next_process 
= : =
Identifier : i 
;: ;
line no is 403
BREAK : break
;: ;
line no is 404
} : }
line no is 405
} : }
line no is 406
line no is 407
IF : if
( : (
Identifier : next_process 
EQ_OP : ==
I CONST: (10)
) : )
line no is 408
{ : {
line no is 409
FOR : for
( : (
Identifier : i 
= : =
I CONST: (1)
;: ;
Identifier : i 
LE_OP : <=
Identifier : curIndex 
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 410
{ : {
line no is 411
IF : if
( : (
Identifier : all_processes 
[ : [
Identifier : i 
] : ]
NE_OP : !=
I CONST: (0)
) : )
line no is 412
{ : {
line no is 413
Identifier : next_process 
= : =
Identifier : i 
;: ;
line no is 414
BREAK : break
;: ;
line no is 415
} : }
line no is 416
} : }
line no is 417
} : }
line no is 418
line no is 419
IF : if
( : (
Identifier : next_process 
EQ_OP : ==
I CONST: (10)
) : )
line no is 420
{ : {
line no is 421
CHAR : char
* : *
Identifier : prompt1 
;: ;
line no is 422
Identifier : prompt1 
= : =
String Const: "Some problem occured, system crashing" 
;: ;
line no is 423
INT : int
Identifier : len 
;: ;
line no is 424
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt1 
) : )
;: ;
line no is 425
Identifier : print_string 
( : (
Identifier : prompt1 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 426
} : }
line no is 427
line no is 428
INT : int
Identifier : next_id 
;: ;
line no is 429
Identifier : next_id 
= : =
Identifier : all_processes 
[ : [
Identifier : next_process 
] : ]
;: ;
line no is 430
line no is 431
ASM : __asm__
( : (
String Const: "load" 
, : ,
String Const: "R11" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 432
IF : if
( : (
Identifier : next_process 
EQ_OP : ==
I CONST: (1)
) : )
line no is 433
{ : {
line no is 434
ASM : __asm__
( : (
String Const: "processReturnExit" 
, : ,
String Const: "dummy" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 435
ASM : __asm__
( : (
String Const: "switch" 
, : ,
String Const: "1" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 436
} : }
line no is 437
ELIF : elif
( : (
Identifier : next_process 
EQ_OP : ==
I CONST: (2)
) : )
line no is 438
{ : {
line no is 439
ASM : __asm__
( : (
String Const: "processReturnExit" 
, : ,
String Const: "dummy" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 440
ASM : __asm__
( : (
String Const: "switch" 
, : ,
String Const: "2" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 441
} : }
line no is 442
ELIF : elif
( : (
Identifier : next_process 
EQ_OP : ==
I CONST: (3)
) : )
line no is 443
{ : {
line no is 444
ASM : __asm__
( : (
String Const: "processReturnExit" 
, : ,
String Const: "dummy" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 445
ASM : __asm__
( : (
String Const: "switch" 
, : ,
String Const: "3" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 446
} : }
line no is 447
ELIF : elif
( : (
Identifier : next_process 
EQ_OP : ==
I CONST: (4)
) : )
line no is 448
{ : {
line no is 449
ASM : __asm__
( : (
String Const: "processReturnExit" 
, : ,
String Const: "dummy" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 450
ASM : __asm__
( : (
String Const: "switch" 
, : ,
String Const: "4" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 451
} : }
line no is 452
RETURN : return
I CONST: (0)
;: ;
line no is 453
} : }
line no is 454
line no is 455
INT : int
Identifier : fork 
( : (
) : )
line no is 456
{ : {
line no is 457
INT : int
Identifier : process 
;: ;
line no is 458
ASM : __asm__
( : (
String Const: "store" 
, : ,
String Const: "R11" 
, : ,
Identifier : process 
) : )
;: ;
line no is 459
line no is 460
INT : int
Identifier : i 
;: ;
line no is 461
INT : int
Identifier : core 
;: ;
line no is 462
Identifier : core 
= : =
I CONST: (10)
;: ;
line no is 463
FOR : for
( : (
Identifier : i 
= : =
I CONST: (1)
;: ;
Identifier : i 
< : <
I CONST: (5)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 464
{ : {
line no is 465
IF : if
( : (
Identifier : all_processes 
[ : [
Identifier : i 
] : ]
EQ_OP : ==
I CONST: (0)
) : )
line no is 466
{ : {
line no is 467
Identifier : core 
= : =
Identifier : i 
;: ;
line no is 468
BREAK : break
;: ;
line no is 469
} : }
line no is 470
} : }
line no is 471
line no is 472
IF : if
( : (
Identifier : core 
EQ_OP : ==
I CONST: (10)
) : )
line no is 473
{ : {
line no is 474
CHAR : char
* : *
Identifier : prompt 
;: ;
line no is 475
INT : int
Identifier : len 
;: ;
line no is 476
Identifier : prompt 
= : =
String Const: "Cannot create a process, process overload" 
;: ;
line no is 477
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 478
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 479
Identifier : len 
= : =
I CONST: (0)
;: ;
line no is 480
ASM : __asm__
( : (
String Const: "forkReturn" 
, : ,
String Const: "dummy" 
, : ,
Identifier : len 
) : )
;: ;
line no is 481
RETURN : return
I CONST: (0)
;: ;
line no is 482
} : }
line no is 483
line no is 484
INT : int
Identifier : id 
;: ;
line no is 485
Identifier : all_processes 
[ : [
Identifier : core 
] : ]
= : =
Identifier : pid 
;: ;
line no is 486
Identifier : id 
= : =
Identifier : pid 
;: ;
line no is 487
INC_OP : ++
Identifier : pid 
;: ;
line no is 488
line no is 489
INT : int
* : *
Identifier : proc_reg 
;: ;
line no is 490
line no is 491
IF : if
( : (
Identifier : core 
EQ_OP : ==
I CONST: (0)
) : )
line no is 492
{ : {
line no is 493
Identifier : proc_reg 
= : =
Identifier : os_reg 
;: ;
line no is 494
} : }
line no is 495
ELIF : elif
( : (
Identifier : core 
EQ_OP : ==
I CONST: (1)
) : )
line no is 496
{ : {
line no is 497
Identifier : proc_reg 
= : =
Identifier : p1_reg 
;: ;
line no is 498
} : }
line no is 499
ELIF : elif
( : (
Identifier : core 
EQ_OP : ==
I CONST: (2)
) : )
line no is 500
{ : {
line no is 501
Identifier : proc_reg 
= : =
Identifier : p2_reg 
;: ;
line no is 502
} : }
line no is 503
ELIF : elif
( : (
Identifier : core 
EQ_OP : ==
I CONST: (3)
) : )
line no is 504
{ : {
line no is 505
Identifier : proc_reg 
= : =
Identifier : p3_reg 
;: ;
line no is 506
} : }
line no is 507
ELIF : elif
( : (
Identifier : core 
EQ_OP : ==
I CONST: (4)
) : )
line no is 508
{ : {
line no is 509
Identifier : proc_reg 
= : =
Identifier : p4_reg 
;: ;
line no is 510
} : }
line no is 511
line no is 512
line no is 513
line no is 514
line no is 515
Identifier : proc_reg 
[ : [
I CONST: (1)
] : ]
= : =
I CONST: (0)
;: ;
line no is 516
line no is 517
Identifier : proc_reg 
[ : [
I CONST: (2)
] : ]
= : =
I CONST: (0)
;: ;
line no is 518
line no is 519
Identifier : proc_reg 
[ : [
I CONST: (3)
] : ]
= : =
I CONST: (0)
;: ;
line no is 520
line no is 521
Identifier : proc_reg 
[ : [
I CONST: (4)
] : ]
= : =
I CONST: (0)
;: ;
line no is 522
line no is 523
Identifier : proc_reg 
[ : [
I CONST: (5)
] : ]
= : =
I CONST: (55000)
+ : +
Identifier : core 
* : *
I CONST: (5000)
;: ;
line no is 524
line no is 525
Identifier : proc_reg 
[ : [
I CONST: (6)
] : ]
= : =
I CONST: (53000)
+ : +
Identifier : core 
* : *
I CONST: (5000)
;: ;
line no is 526
line no is 527
line no is 528
IF : if
( : (
Identifier : process 
EQ_OP : ==
I CONST: (1001)
) : )
line no is 529
{ : {
line no is 530
ASM : __asm__
( : (
String Const: "fork" 
, : ,
String Const: "start_shell" 
, : ,
Identifier : proc_reg 
) : )
;: ;
line no is 531
} : }
line no is 532
ELIF : elif
( : (
Identifier : process 
EQ_OP : ==
I CONST: (1002)
) : )
line no is 533
{ : {
line no is 534
ASM : __asm__
( : (
String Const: "fork" 
, : ,
String Const: "print_A" 
, : ,
Identifier : proc_reg 
) : )
;: ;
line no is 535
} : }
line no is 536
ELIF : elif
( : (
Identifier : process 
EQ_OP : ==
I CONST: (1003)
) : )
line no is 537
{ : {
line no is 538
ASM : __asm__
( : (
String Const: "fork" 
, : ,
String Const: "print_B" 
, : ,
Identifier : proc_reg 
) : )
;: ;
line no is 539
} : }
line no is 540
ELIF : elif
( : (
Identifier : process 
EQ_OP : ==
I CONST: (1004)
) : )
line no is 541
{ : {
line no is 542
ASM : __asm__
( : (
String Const: "fork" 
, : ,
String Const: "print_C" 
, : ,
Identifier : proc_reg 
) : )
;: ;
line no is 543
} : }
line no is 544
ELIF : elif
( : (
Identifier : process 
EQ_OP : ==
I CONST: (1005)
) : )
line no is 545
{ : {
line no is 546
ASM : __asm__
( : (
String Const: "fork" 
, : ,
String Const: "print_D" 
, : ,
Identifier : proc_reg 
) : )
;: ;
line no is 547
} : }
line no is 548
line no is 549
ASM : __asm__
( : (
String Const: "forkReturn" 
, : ,
String Const: "dummy" 
, : ,
Identifier : id 
) : )
;: ;
line no is 550
RETURN : return
I CONST: (0)
;: ;
line no is 551
} : }
line no is 552
line no is 553
INT : int
Identifier : create_process 
( : (
INT : int
Identifier : process 
) : )
line no is 554
{ : {
line no is 555
Identifier : prev_process 
= : =
Identifier : current_process 
;: ;
line no is 556
INT : int
Identifier : cur_core 
;: ;
line no is 557
INT : int
Identifier : i 
;: ;
line no is 558
Identifier : cur_core 
= : =
I CONST: (10)
;: ;
line no is 559
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
I CONST: (5)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 560
{ : {
line no is 561
IF : if
( : (
Identifier : all_processes 
[ : [
Identifier : i 
] : ]
EQ_OP : ==
Identifier : current_process 
) : )
line no is 562
{ : {
line no is 563
Identifier : cur_core 
= : =
Identifier : i 
;: ;
line no is 564
BREAK : break
;: ;
line no is 565
} : }
line no is 566
} : }
line no is 567
line no is 568
IF : if
( : (
Identifier : cur_core 
EQ_OP : ==
I CONST: (0)
) : )
line no is 569
{ : {
line no is 570
Identifier : from_proc 
= : =
Identifier : os_reg 
;: ;
line no is 571
} : }
line no is 572
ELIF : elif
( : (
Identifier : cur_core 
EQ_OP : ==
I CONST: (1)
) : )
line no is 573
{ : {
line no is 574
Identifier : from_proc 
= : =
Identifier : p1_reg 
;: ;
line no is 575
} : }
line no is 576
ELIF : elif
( : (
Identifier : cur_core 
EQ_OP : ==
I CONST: (2)
) : )
line no is 577
{ : {
line no is 578
Identifier : from_proc 
= : =
Identifier : p2_reg 
;: ;
line no is 579
} : }
line no is 580
ELIF : elif
( : (
Identifier : cur_core 
EQ_OP : ==
I CONST: (3)
) : )
line no is 581
{ : {
line no is 582
Identifier : from_proc 
= : =
Identifier : p3_reg 
;: ;
line no is 583
} : }
line no is 584
ELIF : elif
( : (
Identifier : cur_core 
EQ_OP : ==
I CONST: (4)
) : )
line no is 585
{ : {
line no is 586
Identifier : from_proc 
= : =
Identifier : p4_reg 
;: ;
line no is 587
} : }
line no is 588
line no is 589
ASM : __asm__
( : (
String Const: "forkEnter" 
, : ,
String Const: "dummy" 
, : ,
Identifier : process 
) : )
;: ;
line no is 590
ASM : __asm__
( : (
String Const: "label" 
, : ,
String Const: "create_process_return:" 
, : ,
Identifier : process 
) : )
;: ;
line no is 591
INT : int
Identifier : id 
;: ;
line no is 592
ASM : __asm__
( : (
String Const: "store" 
, : ,
String Const: "R11" 
, : ,
Identifier : id 
) : )
;: ;
line no is 593
RETURN : return
Identifier : id 
;: ;
line no is 594
} : }
line no is 595
line no is 596
INT : int
Identifier : switch 
( : (
) : )
line no is 597
{ : {
line no is 598
ASM : __asm__
( : (
String Const: "label" 
, : ,
String Const: "switch_begin:" 
, : ,
Identifier : pid 
) : )
;: ;
line no is 599
ASM : __asm__
( : (
String Const: "switchEnter" 
, : ,
String Const: "dummy" 
, : ,
Identifier : pid 
) : )
;: ;
line no is 600
line no is 601
INT : int
Identifier : pr_process 
;: ;
line no is 602
ASM : __asm__
( : (
String Const: "store" 
, : ,
String Const: "R11" 
, : ,
Identifier : pr_process 
) : )
;: ;
line no is 603
line no is 604
line no is 605
line no is 606
line no is 607
INT : int
Identifier : curIndex 
;: ;
line no is 608
INT : int
Identifier : i 
;: ;
line no is 609
Identifier : curIndex 
= : =
I CONST: (10)
;: ;
line no is 610
FOR : for
( : (
Identifier : i 
= : =
I CONST: (1)
;: ;
Identifier : i 
< : <
I CONST: (5)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 611
{ : {
line no is 612
IF : if
( : (
Identifier : pr_process 
EQ_OP : ==
Identifier : all_processes 
[ : [
Identifier : i 
] : ]
) : )
line no is 613
{ : {
line no is 614
Identifier : curIndex 
= : =
Identifier : i 
;: ;
line no is 615
} : }
line no is 616
} : }
line no is 617
line no is 618
line no is 619
line no is 620
line no is 621
line no is 622
IF : if
( : (
Identifier : curIndex 
EQ_OP : ==
I CONST: (1)
) : )
line no is 623
{ : {
line no is 624
Identifier : from_proc 
= : =
Identifier : p1_reg 
;: ;
line no is 625
} : }
line no is 626
ELIF : elif
( : (
Identifier : curIndex 
EQ_OP : ==
I CONST: (2)
) : )
line no is 627
{ : {
line no is 628
Identifier : from_proc 
= : =
Identifier : p2_reg 
;: ;
line no is 629
} : }
line no is 630
ELIF : elif
( : (
Identifier : curIndex 
EQ_OP : ==
I CONST: (3)
) : )
line no is 631
{ : {
line no is 632
Identifier : from_proc 
= : =
Identifier : p3_reg 
;: ;
line no is 633
} : }
line no is 634
ELIF : elif
( : (
Identifier : curIndex 
EQ_OP : ==
I CONST: (4)
) : )
line no is 635
{ : {
line no is 636
Identifier : from_proc 
= : =
Identifier : p4_reg 
;: ;
line no is 637
} : }
line no is 638
line no is 639
Identifier : from_proc 
[ : [
I CONST: (0)
] : ]
= : =
Identifier : temp_reg 
[ : [
I CONST: (0)
] : ]
;: ;
line no is 640
Identifier : from_proc 
[ : [
I CONST: (1)
] : ]
= : =
Identifier : temp_reg 
[ : [
I CONST: (1)
] : ]
;: ;
line no is 641
Identifier : from_proc 
[ : [
I CONST: (2)
] : ]
= : =
Identifier : temp_reg 
[ : [
I CONST: (2)
] : ]
;: ;
line no is 642
Identifier : from_proc 
[ : [
I CONST: (3)
] : ]
= : =
Identifier : temp_reg 
[ : [
I CONST: (3)
] : ]
;: ;
line no is 643
Identifier : from_proc 
[ : [
I CONST: (4)
] : ]
= : =
Identifier : temp_reg 
[ : [
I CONST: (4)
] : ]
;: ;
line no is 644
Identifier : from_proc 
[ : [
I CONST: (5)
] : ]
= : =
Identifier : temp_reg 
[ : [
I CONST: (5)
] : ]
;: ;
line no is 645
Identifier : from_proc 
[ : [
I CONST: (6)
] : ]
= : =
Identifier : temp_reg 
[ : [
I CONST: (6)
] : ]
;: ;
line no is 646
line no is 647
IF : if
( : (
Identifier : curIndex 
EQ_OP : ==
I CONST: (10)
) : )
line no is 648
{ : {
line no is 649
CHAR : char
* : *
Identifier : prompt1 
;: ;
line no is 650
Identifier : prompt1 
= : =
String Const: "Some problem occured, system crashing" 
;: ;
line no is 651
INT : int
Identifier : len 
;: ;
line no is 652
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt1 
) : )
;: ;
line no is 653
Identifier : print_string 
( : (
Identifier : prompt1 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 654
} : }
line no is 655
INT : int
Identifier : next_process 
;: ;
line no is 656
Identifier : next_process 
= : =
I CONST: (10)
;: ;
line no is 657
FOR : for
( : (
Identifier : i 
= : =
Identifier : curIndex 
+ : +
I CONST: (1)
;: ;
Identifier : i 
< : <
I CONST: (5)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 658
{ : {
line no is 659
IF : if
( : (
Identifier : all_processes 
[ : [
Identifier : i 
] : ]
NE_OP : !=
I CONST: (0)
) : )
line no is 660
{ : {
line no is 661
Identifier : next_process 
= : =
Identifier : i 
;: ;
line no is 662
BREAK : break
;: ;
line no is 663
} : }
line no is 664
} : }
line no is 665
line no is 666
IF : if
( : (
Identifier : next_process 
EQ_OP : ==
I CONST: (10)
) : )
line no is 667
{ : {
line no is 668
FOR : for
( : (
Identifier : i 
= : =
I CONST: (1)
;: ;
Identifier : i 
LE_OP : <=
Identifier : curIndex 
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 669
{ : {
line no is 670
IF : if
( : (
Identifier : all_processes 
[ : [
Identifier : i 
] : ]
NE_OP : !=
I CONST: (0)
) : )
line no is 671
{ : {
line no is 672
Identifier : next_process 
= : =
Identifier : i 
;: ;
line no is 673
BREAK : break
;: ;
line no is 674
} : }
line no is 675
} : }
line no is 676
} : }
line no is 677
IF : if
( : (
Identifier : next_process 
EQ_OP : ==
I CONST: (10)
) : )
line no is 678
{ : {
line no is 679
CHAR : char
* : *
Identifier : prompt1 
;: ;
line no is 680
Identifier : prompt1 
= : =
String Const: "Some problem occured, system crashing" 
;: ;
line no is 681
INT : int
Identifier : len 
;: ;
line no is 682
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt1 
) : )
;: ;
line no is 683
Identifier : print_string 
( : (
Identifier : prompt1 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 684
} : }
line no is 685
line no is 686
line no is 687
line no is 688
line no is 689
INT : int
Identifier : next_id 
;: ;
line no is 690
Identifier : next_id 
= : =
Identifier : all_processes 
[ : [
Identifier : next_process 
] : ]
;: ;
line no is 691
line no is 692
line no is 693
line no is 694
line no is 695
ASM : __asm__
( : (
String Const: "load" 
, : ,
String Const: "R11" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 696
IF : if
( : (
Identifier : next_process 
EQ_OP : ==
I CONST: (1)
) : )
line no is 697
{ : {
line no is 698
ASM : __asm__
( : (
String Const: "switchReturn" 
, : ,
String Const: "dummy" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 699
ASM : __asm__
( : (
String Const: "switch" 
, : ,
String Const: "1" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 700
} : }
line no is 701
ELIF : elif
( : (
Identifier : next_process 
EQ_OP : ==
I CONST: (2)
) : )
line no is 702
{ : {
line no is 703
ASM : __asm__
( : (
String Const: "switchReturn" 
, : ,
String Const: "dummy" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 704
ASM : __asm__
( : (
String Const: "switch" 
, : ,
String Const: "2" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 705
} : }
line no is 706
ELIF : elif
( : (
Identifier : next_process 
EQ_OP : ==
I CONST: (3)
) : )
line no is 707
{ : {
line no is 708
ASM : __asm__
( : (
String Const: "switchReturn" 
, : ,
String Const: "dummy" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 709
ASM : __asm__
( : (
String Const: "switch" 
, : ,
String Const: "3" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 710
} : }
line no is 711
ELIF : elif
( : (
Identifier : next_process 
EQ_OP : ==
I CONST: (4)
) : )
line no is 712
{ : {
line no is 713
ASM : __asm__
( : (
String Const: "switchReturn" 
, : ,
String Const: "dummy" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 714
ASM : __asm__
( : (
String Const: "switch" 
, : ,
String Const: "4" 
, : ,
Identifier : next_id 
) : )
;: ;
line no is 715
} : }
line no is 716
RETURN : return
I CONST: (0)
;: ;
line no is 717
} : }
line no is 718
line no is 719
INT : int
Identifier : print_A 
( : (
) : )
line no is 720
{ : {
line no is 721
INT : int
Identifier : i 
;: ;
line no is 722
INT : int
Identifier : k 
;: ;
line no is 723
INT : int
Identifier : j 
;: ;
line no is 724
CHAR : char
* : *
Identifier : a 
;: ;
line no is 725
Identifier : a 
= : =
String Const: "a" 
;: ;
line no is 726
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
I CONST: (10)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 727
{ : {
line no is 728
FOR : for
( : (
Identifier : j 
= : =
I CONST: (0)
;: ;
Identifier : j 
< : <
I CONST: (10000)
;: ;
Identifier : j 
INC_OP : ++
) : )
line no is 729
{ : {
line no is 730
Identifier : k 
= : =
I CONST: (0)
;: ;
line no is 731
} : }
line no is 732
Identifier : print_string 
( : (
Identifier : a 
, : ,
I CONST: (1)
, : ,
I CONST: (0)
) : )
;: ;
line no is 733
} : }
line no is 734
RETURN : return
I CONST: (0)
;: ;
line no is 735
} : }
line no is 736
line no is 737
INT : int
Identifier : print_B 
( : (
) : )
line no is 738
{ : {
line no is 739
INT : int
Identifier : i 
;: ;
line no is 740
CHAR : char
* : *
Identifier : a 
;: ;
line no is 741
Identifier : a 
= : =
String Const: "b" 
;: ;
line no is 742
INT : int
Identifier : k 
;: ;
line no is 743
INT : int
Identifier : j 
;: ;
line no is 744
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
I CONST: (100)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 745
{ : {
line no is 746
FOR : for
( : (
Identifier : j 
= : =
I CONST: (0)
;: ;
Identifier : j 
< : <
I CONST: (10000)
;: ;
Identifier : j 
INC_OP : ++
) : )
line no is 747
{ : {
line no is 748
Identifier : k 
= : =
I CONST: (0)
;: ;
line no is 749
} : }
line no is 750
Identifier : print_string 
( : (
Identifier : a 
, : ,
I CONST: (1)
, : ,
I CONST: (0)
) : )
;: ;
line no is 751
} : }
line no is 752
line no is 753
FOR : for
( : (
;: ;
;: ;
) : )
line no is 754
{ : {
line no is 755
Identifier : i 
= : =
I CONST: (0)
;: ;
line no is 756
} : }
line no is 757
RETURN : return
I CONST: (0)
;: ;
line no is 758
} : }
line no is 759
line no is 760
INT : int
Identifier : print_C 
( : (
) : )
line no is 761
{ : {
line no is 762
INT : int
Identifier : i 
;: ;
line no is 763
INT : int
Identifier : k 
;: ;
line no is 764
INT : int
Identifier : j 
;: ;
line no is 765
CHAR : char
* : *
Identifier : a 
;: ;
line no is 766
Identifier : a 
= : =
String Const: "c" 
;: ;
line no is 767
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
I CONST: (100)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 768
{ : {
line no is 769
FOR : for
( : (
Identifier : j 
= : =
I CONST: (0)
;: ;
Identifier : j 
< : <
I CONST: (10000)
;: ;
Identifier : j 
INC_OP : ++
) : )
line no is 770
{ : {
line no is 771
Identifier : k 
= : =
I CONST: (0)
;: ;
line no is 772
} : }
line no is 773
Identifier : print_string 
( : (
Identifier : a 
, : ,
I CONST: (1)
, : ,
I CONST: (0)
) : )
;: ;
line no is 774
} : }
line no is 775
line no is 776
FOR : for
( : (
;: ;
;: ;
) : )
line no is 777
{ : {
line no is 778
Identifier : i 
= : =
I CONST: (0)
;: ;
line no is 779
} : }
line no is 780
RETURN : return
I CONST: (0)
;: ;
line no is 781
} : }
line no is 782
line no is 783
INT : int
Identifier : print_D 
( : (
) : )
line no is 784
{ : {
line no is 785
INT : int
Identifier : i 
;: ;
line no is 786
INT : int
Identifier : k 
;: ;
line no is 787
INT : int
Identifier : j 
;: ;
line no is 788
CHAR : char
* : *
Identifier : a 
;: ;
line no is 789
Identifier : a 
= : =
String Const: "d" 
;: ;
line no is 790
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
I CONST: (100)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 791
{ : {
line no is 792
FOR : for
( : (
Identifier : j 
= : =
I CONST: (0)
;: ;
Identifier : j 
< : <
I CONST: (10000)
;: ;
Identifier : j 
INC_OP : ++
) : )
line no is 793
{ : {
line no is 794
Identifier : k 
= : =
I CONST: (0)
;: ;
line no is 795
} : }
line no is 796
Identifier : print_string 
( : (
Identifier : a 
, : ,
I CONST: (1)
, : ,
I CONST: (0)
) : )
;: ;
line no is 797
} : }
line no is 798
line no is 799
FOR : for
( : (
;: ;
;: ;
) : )
line no is 800
{ : {
line no is 801
Identifier : i 
= : =
I CONST: (0)
;: ;
line no is 802
} : }
line no is 803
RETURN : return
I CONST: (0)
;: ;
line no is 804
} : }
line no is 805
line no is 806
INT : int
Identifier : fibonacci 
( : (
) : )
line no is 807
{ : {
line no is 808
CHAR : char
* : *
Identifier : prompt 
;: ;
line no is 809
INT : int
Identifier : len 
;: ;
line no is 810
Identifier : prompt 
= : =
String Const: "Enter n" 
;: ;
line no is 811
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 812
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 813
line no is 814
INT : int
Identifier : num 
;: ;
line no is 815
Identifier : num 
= : =
Identifier : get_num 
( : (
) : )
;: ;
line no is 816
line no is 817
Identifier : prompt 
= : =
String Const: "The " 
;: ;
line no is 818
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 819
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (0)
) : )
;: ;
line no is 820
line no is 821
Identifier : print_num 
( : (
Identifier : num 
, : ,
I CONST: (0)
) : )
;: ;
line no is 822
line no is 823
Identifier : prompt 
= : =
String Const: "th fibonacci number is: " 
;: ;
line no is 824
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 825
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (0)
) : )
;: ;
line no is 826
line no is 827
IF : if
( : (
Identifier : num 
EQ_OP : ==
I CONST: (0)
) : )
line no is 828
{ : {
line no is 829
Identifier : print_num 
( : (
I CONST: (1)
, : ,
I CONST: (1)
) : )
;: ;
line no is 830
} : }
line no is 831
ELIF : elif
( : (
Identifier : num 
EQ_OP : ==
I CONST: (1)
) : )
line no is 832
{ : {
line no is 833
Identifier : print_num 
( : (
I CONST: (1)
, : ,
I CONST: (1)
) : )
;: ;
line no is 834
} : }
line no is 835
ELSE : else
line no is 836
{ : {
line no is 837
INT : int
Identifier : i 
;: ;
line no is 838
INT : int
Identifier : a 
;: ;
line no is 839
INT : int
Identifier : b 
;: ;
line no is 840
Identifier : a 
= : =
I CONST: (1)
;: ;
line no is 841
Identifier : b 
= : =
I CONST: (1)
;: ;
line no is 842
FOR : for
( : (
Identifier : i 
= : =
I CONST: (2)
;: ;
Identifier : i 
LE_OP : <=
Identifier : num 
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 843
{ : {
line no is 844
INT : int
Identifier : temp 
;: ;
line no is 845
Identifier : temp 
= : =
Identifier : b 
;: ;
line no is 846
Identifier : b 
= : =
Identifier : a 
;: ;
line no is 847
Identifier : a 
= : =
Identifier : a 
+ : +
Identifier : temp 
;: ;
line no is 848
} : }
line no is 849
Identifier : print_num 
( : (
Identifier : a 
, : ,
I CONST: (1)
) : )
;: ;
line no is 850
} : }
line no is 851
RETURN : return
I CONST: (0)
;: ;
line no is 852
} : }
line no is 853
line no is 854
INT : int
Identifier : reverse_string 
( : (
) : )
line no is 855
{ : {
line no is 856
CHAR : char
Identifier : str 
[ : [
I CONST: (30)
] : ]
;: ;
line no is 857
INT : int
Identifier : i 
;: ;
line no is 858
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
I CONST: (30)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 859
{ : {
line no is 860
Identifier : str 
[ : [
Identifier : i 
] : ]
= : =
I CONST: (0)
;: ;
COMPILETIME WARNING: assigning int to char
At line : 861
line no is 861
} : }
line no is 862
INT : int
Identifier : clen 
;: ;
line no is 863
line no is 864
CHAR : char
* : *
Identifier : prompt 
;: ;
line no is 865
INT : int
Identifier : len 
;: ;
line no is 866
Identifier : prompt 
= : =
String Const: "Enter the String" 
;: ;
line no is 867
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 868
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 869
line no is 870
Identifier : get_line 
( : (
) : )
;: ;
line no is 871
Identifier : clen 
= : =
Identifier : get_string 
( : (
Identifier : str 
) : )
;: ;
line no is 872
line no is 873
Identifier : prompt 
= : =
String Const: "The Reverse of " 
;: ;
line no is 874
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 875
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (0)
) : )
;: ;
line no is 876
line no is 877
Identifier : print_string 
( : (
Identifier : str 
, : ,
Identifier : clen 
, : ,
I CONST: (0)
) : )
;: ;
line no is 878
line no is 879
INT : int
Identifier : j 
;: ;
line no is 880
Identifier : i 
= : =
I CONST: (0)
;: ;
line no is 881
Identifier : j 
= : =
Identifier : clen 
- : -
I CONST: (1)
;: ;
line no is 882
line no is 883
FOR : for
( : (
;: ;
Identifier : i 
< : <
Identifier : j 
;: ;
) : )
line no is 884
{ : {
line no is 885
CHAR : char
Identifier : temp 
;: ;
line no is 886
Identifier : temp 
= : =
Identifier : str 
[ : [
Identifier : i 
] : ]
;: ;
line no is 887
Identifier : str 
[ : [
Identifier : i 
] : ]
= : =
Identifier : str 
[ : [
Identifier : j 
] : ]
;: ;
line no is 888
Identifier : str 
[ : [
Identifier : j 
] : ]
= : =
Identifier : temp 
;: ;
line no is 889
Identifier : i 
INC_OP : ++
;: ;
line no is 890
Identifier : j 
DEC_OP : --
;: ;
line no is 891
} : }
line no is 892
line no is 893
Identifier : prompt 
= : =
String Const: " is " 
;: ;
line no is 894
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 895
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (0)
) : )
;: ;
line no is 896
line no is 897
Identifier : print_string 
( : (
Identifier : str 
, : ,
Identifier : clen 
, : ,
I CONST: (1)
) : )
;: ;
line no is 898
line no is 899
RETURN : return
I CONST: (0)
;: ;
line no is 900
} : }
line no is 901
line no is 902
INT : int
Identifier : prime 
( : (
) : )
line no is 903
{ : {
line no is 904
CHAR : char
* : *
Identifier : prompt 
;: ;
line no is 905
INT : int
Identifier : len 
;: ;
line no is 906
Identifier : prompt 
= : =
String Const: "Enter the number" 
;: ;
line no is 907
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 908
line no is 909
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 910
line no is 911
INT : int
Identifier : n 
;: ;
line no is 912
Identifier : n 
= : =
Identifier : get_num 
( : (
) : )
;: ;
line no is 913
line no is 914
INT : int
Identifier : b 
;: ;
line no is 915
Identifier : b 
= : =
I CONST: (1)
;: ;
line no is 916
INT : int
Identifier : i 
;: ;
line no is 917
FOR : for
( : (
Identifier : i 
= : =
I CONST: (2)
;: ;
Identifier : i 
LE_OP : <=
( : (
Identifier : n 
/ : /
I CONST: (2)
) : )
AND_OP : &&
Identifier : n 
NE_OP : !=
I CONST: (2)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 918
{ : {
line no is 919
IF : if
( : (
Identifier : n 
% : %
Identifier : i 
EQ_OP : ==
I CONST: (0)
) : )
line no is 920
{ : {
line no is 921
Identifier : b 
= : =
I CONST: (0)
;: ;
line no is 922
BREAK : break
;: ;
line no is 923
} : }
line no is 924
} : }
line no is 925
line no is 926
IF : if
( : (
Identifier : b 
EQ_OP : ==
I CONST: (1)
) : )
line no is 927
{ : {
line no is 928
Identifier : print_num 
( : (
Identifier : n 
, : ,
I CONST: (0)
) : )
;: ;
line no is 929
Identifier : prompt 
= : =
String Const: " is a prime number" 
;: ;
line no is 930
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 931
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 932
} : }
line no is 933
ELSE : else
line no is 934
{ : {
line no is 935
Identifier : print_num 
( : (
Identifier : n 
, : ,
I CONST: (0)
) : )
;: ;
line no is 936
Identifier : prompt 
= : =
String Const: " is not a prime number" 
;: ;
line no is 937
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 938
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 939
} : }
line no is 940
line no is 941
RETURN : return
I CONST: (0)
;: ;
line no is 942
} : }
line no is 943
line no is 944
INT : int
Identifier : partition 
( : (
INT : int
* : *
Identifier : arr 
, : ,
INT : int
Identifier : low 
, : ,
INT : int
Identifier : high 
) : )
line no is 945
{ : {
line no is 946
INT : int
Identifier : pivot 
;: ;
line no is 947
Identifier : pivot 
= : =
Identifier : arr 
[ : [
Identifier : high 
] : ]
;: ;
line no is 948
line no is 949
INT : int
Identifier : i 
;: ;
line no is 950
Identifier : i 
= : =
Identifier : low 
- : -
I CONST: (1)
;: ;
line no is 951
line no is 952
INT : int
Identifier : j 
;: ;
line no is 953
FOR : for
( : (
Identifier : j 
= : =
Identifier : low 
;: ;
Identifier : j 
LE_OP : <=
Identifier : high 
;: ;
Identifier : j 
INC_OP : ++
) : )
line no is 954
{ : {
line no is 955
IF : if
( : (
Identifier : arr 
[ : [
Identifier : j 
] : ]
< : <
Identifier : pivot 
) : )
line no is 956
{ : {
line no is 957
Identifier : i 
INC_OP : ++
;: ;
line no is 958
INT : int
Identifier : temp 
;: ;
line no is 959
Identifier : temp 
= : =
Identifier : arr 
[ : [
Identifier : i 
] : ]
;: ;
line no is 960
Identifier : arr 
[ : [
Identifier : i 
] : ]
= : =
Identifier : arr 
[ : [
Identifier : j 
] : ]
;: ;
line no is 961
Identifier : arr 
[ : [
Identifier : j 
] : ]
= : =
Identifier : temp 
;: ;
line no is 962
} : }
line no is 963
} : }
line no is 964
line no is 965
INT : int
Identifier : t 
;: ;
line no is 966
Identifier : t 
= : =
Identifier : arr 
[ : [
Identifier : i 
+ : +
I CONST: (1)
] : ]
;: ;
line no is 967
Identifier : arr 
[ : [
Identifier : i 
+ : +
I CONST: (1)
] : ]
= : =
Identifier : arr 
[ : [
Identifier : high 
] : ]
;: ;
line no is 968
Identifier : arr 
[ : [
Identifier : high 
] : ]
= : =
Identifier : t 
;: ;
line no is 969
RETURN : return
Identifier : i 
+ : +
I CONST: (1)
;: ;
line no is 970
} : }
line no is 971
line no is 972
INT : int
Identifier : quick_sort 
( : (
INT : int
* : *
Identifier : arr 
, : ,
INT : int
Identifier : low 
, : ,
INT : int
Identifier : high 
) : )
line no is 973
{ : {
line no is 974
IF : if
( : (
Identifier : low 
< : <
Identifier : high 
) : )
line no is 975
{ : {
line no is 976
INT : int
Identifier : pi 
;: ;
line no is 977
Identifier : pi 
= : =
Identifier : partition 
( : (
Identifier : arr 
, : ,
Identifier : low 
, : ,
Identifier : high 
) : )
;: ;
line no is 978
Identifier : quick_sort 
( : (
Identifier : arr 
, : ,
Identifier : low 
, : ,
Identifier : pi 
- : -
I CONST: (1)
) : )
;: ;
line no is 979
Identifier : quick_sort 
( : (
Identifier : arr 
, : ,
Identifier : pi 
+ : +
I CONST: (1)
, : ,
Identifier : high 
) : )
;: ;
line no is 980
} : }
line no is 981
line no is 982
RETURN : return
I CONST: (0)
;: ;
line no is 983
} : }
line no is 984
line no is 985
INT : int
Identifier : sort 
( : (
) : )
line no is 986
{ : {
line no is 987
INT : int
Identifier : n 
;: ;
line no is 988
CHAR : char
* : *
Identifier : prompt 
;: ;
line no is 989
INT : int
Identifier : len 
;: ;
line no is 990
line no is 991
Identifier : prompt 
= : =
String Const: "Enter the number of elements" 
;: ;
line no is 992
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 993
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 994
line no is 995
Identifier : n 
= : =
Identifier : get_num 
( : (
) : )
;: ;
line no is 996
line no is 997
Identifier : prompt 
= : =
String Const: "Enter the elements" 
;: ;
line no is 998
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 999
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 1000
line no is 1001
INT : int
Identifier : arr 
[ : [
Identifier : n 
] : ]
;: ;
line no is 1002
INT : int
Identifier : i 
;: ;
line no is 1003
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
Identifier : n 
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 1004
{ : {
line no is 1005
Identifier : arr 
[ : [
Identifier : i 
] : ]
= : =
Identifier : get_num 
( : (
) : )
;: ;
line no is 1006
} : }
line no is 1007
line no is 1008
Identifier : prompt 
= : =
String Const: "Sorted Array is" 
;: ;
line no is 1009
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 1010
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 1011
line no is 1012
Identifier : quick_sort 
( : (
Identifier : arr 
, : ,
I CONST: (0)
, : ,
Identifier : n 
- : -
I CONST: (1)
) : )
;: ;
line no is 1013
line no is 1014
Identifier : prompt 
= : =
String Const: " " 
;: ;
line no is 1015
Identifier : len 
= : =
I CONST: (1)
;: ;
line no is 1016
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
Identifier : n 
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 1017
{ : {
line no is 1018
Identifier : print_num 
( : (
Identifier : arr 
[ : [
Identifier : i 
] : ]
, : ,
I CONST: (0)
) : )
;: ;
line no is 1019
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (0)
) : )
;: ;
line no is 1020
} : }
line no is 1021
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 1022
line no is 1023
RETURN : return
I CONST: (0)
;: ;
line no is 1024
} : }
line no is 1025
line no is 1026
INT : int
Identifier : getIndex 
( : (
INT : int
* : *
Identifier : values 
, : ,
INT : int
Identifier : n 
) : )
line no is 1027
{ : {
line no is 1028
INT : int
Identifier : i 
;: ;
line no is 1029
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
Identifier : n 
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 1030
{ : {
line no is 1031
IF : if
( : (
Identifier : values 
[ : [
Identifier : i 
] : ]
EQ_OP : ==
I CONST: (0)
- : -
I CONST: (1)
) : )
line no is 1032
{ : {
line no is 1033
RETURN : return
Identifier : i 
;: ;
line no is 1034
} : }
line no is 1035
} : }
line no is 1036
RETURN : return
I CONST: (0)
- : -
I CONST: (1)
;: ;
line no is 1037
} : }
line no is 1038
line no is 1039
INT : int
Identifier : insert 
( : (
INT : int
Identifier : val 
, : ,
INT : int
* : *
Identifier : values 
, : ,
INT : int
* : *
Identifier : left 
, : ,
INT : int
* : *
Identifier : right 
, : ,
INT : int
Identifier : n 
) : )
line no is 1040
{ : {
line no is 1041
IF : if
( : (
Identifier : values 
[ : [
I CONST: (0)
] : ]
EQ_OP : ==
I CONST: (0)
- : -
I CONST: (1)
) : )
line no is 1042
{ : {
line no is 1043
Identifier : values 
[ : [
I CONST: (0)
] : ]
= : =
Identifier : val 
;: ;
line no is 1044
} : }
line no is 1045
ELSE : else
line no is 1046
{ : {
line no is 1047
INT : int
Identifier : root 
;: ;
line no is 1048
Identifier : root 
= : =
I CONST: (0)
;: ;
line no is 1049
FOR : for
( : (
;: ;
;: ;
) : )
line no is 1050
{ : {
line no is 1051
IF : if
( : (
Identifier : values 
[ : [
Identifier : root 
] : ]
EQ_OP : ==
Identifier : val 
) : )
line no is 1052
{ : {
line no is 1053
BREAK : break
;: ;
line no is 1054
} : }
line no is 1055
ELIF : elif
( : (
Identifier : val 
< : <
Identifier : values 
[ : [
Identifier : root 
] : ]
) : )
line no is 1056
{ : {
line no is 1057
IF : if
( : (
Identifier : left 
[ : [
Identifier : root 
] : ]
EQ_OP : ==
I CONST: (0)
- : -
I CONST: (1)
) : )
line no is 1058
{ : {
line no is 1059
INT : int
Identifier : index 
;: ;
line no is 1060
Identifier : index 
= : =
Identifier : getIndex 
( : (
Identifier : values 
, : ,
Identifier : n 
) : )
;: ;
line no is 1061
Identifier : left 
[ : [
Identifier : root 
] : ]
= : =
Identifier : index 
;: ;
line no is 1062
Identifier : values 
[ : [
Identifier : index 
] : ]
= : =
Identifier : val 
;: ;
line no is 1063
BREAK : break
;: ;
line no is 1064
} : }
line no is 1065
ELSE : else
line no is 1066
{ : {
line no is 1067
Identifier : root 
= : =
Identifier : left 
[ : [
Identifier : root 
] : ]
;: ;
line no is 1068
} : }
line no is 1069
} : }
line no is 1070
ELIF : elif
( : (
Identifier : val 
> : >
Identifier : values 
[ : [
Identifier : root 
] : ]
) : )
line no is 1071
{ : {
line no is 1072
IF : if
( : (
Identifier : right 
[ : [
Identifier : root 
] : ]
EQ_OP : ==
I CONST: (0)
- : -
I CONST: (1)
) : )
line no is 1073
{ : {
line no is 1074
INT : int
Identifier : index 
;: ;
line no is 1075
Identifier : index 
= : =
Identifier : getIndex 
( : (
Identifier : values 
, : ,
Identifier : n 
) : )
;: ;
line no is 1076
Identifier : right 
[ : [
Identifier : root 
] : ]
= : =
Identifier : index 
;: ;
line no is 1077
Identifier : values 
[ : [
Identifier : index 
] : ]
= : =
Identifier : val 
;: ;
line no is 1078
BREAK : break
;: ;
line no is 1079
} : }
line no is 1080
ELSE : else
line no is 1081
{ : {
line no is 1082
Identifier : root 
= : =
Identifier : right 
[ : [
Identifier : root 
] : ]
;: ;
line no is 1083
} : }
line no is 1084
} : }
line no is 1085
} : }
line no is 1086
} : }
line no is 1087
RETURN : return
I CONST: (0)
;: ;
line no is 1088
} : }
line no is 1089
line no is 1090
INT : int
Identifier : inorder 
( : (
INT : int
* : *
Identifier : values 
, : ,
INT : int
* : *
Identifier : left 
, : ,
INT : int
* : *
Identifier : right 
, : ,
INT : int
Identifier : index 
) : )
line no is 1091
{ : {
line no is 1092
IF : if
( : (
Identifier : index 
NE_OP : !=
I CONST: (0)
- : -
I CONST: (1)
) : )
line no is 1093
{ : {
line no is 1094
Identifier : inorder 
( : (
Identifier : values 
, : ,
Identifier : left 
, : ,
Identifier : right 
, : ,
Identifier : left 
[ : [
Identifier : index 
] : ]
) : )
;: ;
line no is 1095
Identifier : print_num 
( : (
Identifier : values 
[ : [
Identifier : index 
] : ]
, : ,
I CONST: (0)
) : )
;: ;
line no is 1096
Identifier : print_string 
( : (
String Const: " " 
, : ,
I CONST: (1)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1097
Identifier : inorder 
( : (
Identifier : values 
, : ,
Identifier : left 
, : ,
Identifier : right 
, : ,
Identifier : right 
[ : [
Identifier : index 
] : ]
) : )
;: ;
line no is 1098
} : }
line no is 1099
line no is 1100
RETURN : return
I CONST: (0)
;: ;
line no is 1101
} : }
line no is 1102
line no is 1103
INT : int
Identifier : tree 
( : (
) : )
line no is 1104
{ : {
line no is 1105
INT : int
Identifier : n 
;: ;
line no is 1106
CHAR : char
* : *
Identifier : prompt 
;: ;
line no is 1107
INT : int
Identifier : len 
;: ;
line no is 1108
Identifier : prompt 
= : =
String Const: "Enter the Number of Elements" 
;: ;
line no is 1109
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 1110
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 1111
line no is 1112
Identifier : n 
= : =
Identifier : get_num 
( : (
) : )
;: ;
line no is 1113
line no is 1114
INT : int
Identifier : values 
[ : [
Identifier : n 
] : ]
;: ;
line no is 1115
INT : int
Identifier : left 
[ : [
Identifier : n 
] : ]
;: ;
line no is 1116
INT : int
Identifier : right 
[ : [
Identifier : n 
] : ]
;: ;
line no is 1117
line no is 1118
INT : int
Identifier : i 
;: ;
line no is 1119
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
Identifier : n 
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 1120
{ : {
line no is 1121
Identifier : values 
[ : [
Identifier : i 
] : ]
= : =
I CONST: (0)
- : -
I CONST: (1)
;: ;
line no is 1122
Identifier : left 
[ : [
Identifier : i 
] : ]
= : =
I CONST: (0)
- : -
I CONST: (1)
;: ;
line no is 1123
Identifier : right 
[ : [
Identifier : i 
] : ]
= : =
I CONST: (0)
- : -
I CONST: (1)
;: ;
line no is 1124
} : }
line no is 1125
line no is 1126
Identifier : prompt 
= : =
String Const: "Enter the values" 
;: ;
line no is 1127
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 1128
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 1129
line no is 1130
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
Identifier : n 
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 1131
{ : {
line no is 1132
INT : int
Identifier : k 
;: ;
line no is 1133
Identifier : k 
= : =
Identifier : get_num 
( : (
) : )
;: ;
line no is 1134
Identifier : insert 
( : (
Identifier : k 
, : ,
Identifier : values 
, : ,
Identifier : left 
, : ,
Identifier : right 
, : ,
Identifier : n 
) : )
;: ;
line no is 1135
} : }
line no is 1136
line no is 1137
Identifier : prompt 
= : =
String Const: "Inorder Traversal of the Tree" 
;: ;
line no is 1138
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : prompt 
) : )
;: ;
line no is 1139
Identifier : print_string 
( : (
Identifier : prompt 
, : ,
Identifier : len 
, : ,
I CONST: (1)
) : )
;: ;
line no is 1140
line no is 1141
Identifier : inorder 
( : (
Identifier : values 
, : ,
Identifier : left 
, : ,
Identifier : right 
, : ,
I CONST: (0)
) : )
;: ;
line no is 1142
Identifier : print_string 
( : (
String Const: " " 
, : ,
I CONST: (1)
, : ,
I CONST: (1)
) : )
;: ;
line no is 1143
RETURN : return
I CONST: (0)
;: ;
line no is 1144
} : }
line no is 1145
line no is 1146
INT : int
Identifier : get_keypress 
( : (
) : )
line no is 1147
{ : {
line no is 1148
INT : int
Identifier : k 
;: ;
line no is 1149
Identifier : k 
= : =
Identifier : memory 
[ : [
Identifier : KEYBOARD 
] : ]
;: ;
COMPILETIME WARNING: assigning char to int
At line : 1150
line no is 1150
RETURN : return
Identifier : k 
;: ;
line no is 1151
} : }
line no is 1152
line no is 1153
INT : int
Identifier : Palindrome 
( : (
) : )
line no is 1154
{ : {
line no is 1155
INT : int
Identifier : n 
;: ;
line no is 1156
INT : int
Identifier : len1 
;: ;
line no is 1157
INT : int
Identifier : len2 
;: ;
line no is 1158
INT : int
Identifier : len3 
;: ;
line no is 1159
CHAR : char
* : *
Identifier : str2 
;: ;
line no is 1160
CHAR : char
* : *
Identifier : str3 
;: ;
line no is 1161
CHAR : char
* : *
Identifier : str1 
;: ;
line no is 1162
Identifier : str1 
= : =
String Const: "Enter the number to check palindrome or not: " 
;: ;
line no is 1163
Identifier : len1 
= : =
Identifier : strlen 
( : (
Identifier : str1 
) : )
;: ;
line no is 1164
Identifier : str2 
= : =
String Const: "Palindrome" 
;: ;
line no is 1165
Identifier : len2 
= : =
Identifier : strlen 
( : (
Identifier : str2 
) : )
;: ;
line no is 1166
Identifier : str3 
= : =
String Const: "Not Palindrome" 
;: ;
line no is 1167
Identifier : len3 
= : =
Identifier : strlen 
( : (
Identifier : str3 
) : )
;: ;
line no is 1168
Identifier : print_string 
( : (
Identifier : str1 
, : ,
Identifier : len1 
, : ,
I CONST: (0)
) : )
;: ;
line no is 1169
Identifier : n 
= : =
Identifier : get_num 
( : (
) : )
;: ;
line no is 1170
line no is 1171
INT : int
Identifier : temp 
;: ;
line no is 1172
Identifier : temp 
= : =
Identifier : n 
;: ;
line no is 1173
INT : int
Identifier : res 
;: ;
line no is 1174
Identifier : res 
= : =
I CONST: (0)
;: ;
line no is 1175
FOR : for
( : (
;: ;
Identifier : temp 
NE_OP : !=
I CONST: (0)
;: ;
) : )
line no is 1176
{ : {
line no is 1177
Identifier : res 
= : =
Identifier : res 
* : *
I CONST: (10)
;: ;
line no is 1178
Identifier : res 
= : =
Identifier : res 
+ : +
( : (
Identifier : temp 
% : %
I CONST: (10)
) : )
;: ;
line no is 1179
Identifier : temp 
= : =
Identifier : temp 
/ : /
I CONST: (10)
;: ;
line no is 1180
} : }
line no is 1181
IF : if
( : (
Identifier : res 
EQ_OP : ==
Identifier : n 
) : )
line no is 1182
{ : {
line no is 1183
Identifier : print_string 
( : (
Identifier : str2 
, : ,
Identifier : len2 
, : ,
I CONST: (0)
) : )
;: ;
line no is 1184
} : }
line no is 1185
ELSE : else
line no is 1186
{ : {
line no is 1187
Identifier : print_string 
( : (
Identifier : str3 
, : ,
Identifier : len3 
, : ,
I CONST: (0)
) : )
;: ;
line no is 1188
} : }
line no is 1189
RETURN : return
I CONST: (0)
;: ;
line no is 1190
} : }
line no is 1191
line no is 1192
INT : int
Identifier : SumofNatural 
( : (
) : )
{ : {
line no is 1193
INT : int
Identifier : n 
;: ;
line no is 1194
INT : int
Identifier : len1 
;: ;
line no is 1195
CHAR : char
* : *
Identifier : str1 
;: ;
line no is 1196
Identifier : str1 
= : =
String Const: "Enter the number: " 
;: ;
line no is 1197
Identifier : len1 
= : =
Identifier : strlen 
( : (
Identifier : str1 
) : )
;: ;
line no is 1198
Identifier : print_string 
( : (
Identifier : str1 
, : ,
Identifier : len1 
, : ,
I CONST: (0)
) : )
;: ;
line no is 1199
Identifier : n 
= : =
Identifier : get_num 
( : (
) : )
;: ;
line no is 1200
line no is 1201
line no is 1202
INT : int
Identifier : res 
;: ;
line no is 1203
Identifier : res 
= : =
I CONST: (0)
;: ;
line no is 1204
INT : int
Identifier : i 
;: ;
line no is 1205
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
Identifier : n 
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 1206
{ : {
line no is 1207
Identifier : res 
= : =
Identifier : res 
+ : +
Identifier : i 
;: ;
line no is 1208
} : }
line no is 1209
Identifier : print_string 
( : (
String Const: "Sum of natural numbers is: " 
, : ,
I CONST: (27)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1210
Identifier : print_num 
( : (
Identifier : res 
, : ,
I CONST: (1)
) : )
;: ;
line no is 1211
RETURN : return
I CONST: (0)
;: ;
line no is 1212
} : }
line no is 1213
line no is 1214
INT : int
Identifier : rfactorial 
( : (
INT : int
Identifier : n 
) : )
line no is 1215
{ : {
line no is 1216
IF : if
( : (
Identifier : n 
EQ_OP : ==
I CONST: (0)
OR_OP : ||
Identifier : n 
EQ_OP : ==
I CONST: (1)
) : )
line no is 1217
{ : {
line no is 1218
RETURN : return
I CONST: (1)
;: ;
line no is 1219
} : }
line no is 1220
ELSE : else
{ : {
line no is 1221
RETURN : return
Identifier : n 
* : *
( : (
Identifier : rfactorial 
( : (
Identifier : n 
- : -
I CONST: (1)
) : )
) : )
;: ;
line no is 1222
} : }
line no is 1223
} : }
line no is 1224
INT : int
Identifier : Factorial_ofN 
( : (
) : )
line no is 1225
{ : {
line no is 1226
INT : int
Identifier : n 
;: ;
line no is 1227
INT : int
Identifier : len1 
;: ;
line no is 1228
INT : int
Identifier : len2 
;: ;
line no is 1229
CHAR : char
* : *
Identifier : str2 
;: ;
line no is 1230
line no is 1231
CHAR : char
* : *
Identifier : str1 
;: ;
line no is 1232
Identifier : str1 
= : =
String Const: "Enter the number : " 
;: ;
line no is 1233
Identifier : len1 
= : =
Identifier : strlen 
( : (
Identifier : str1 
) : )
;: ;
line no is 1234
Identifier : str2 
= : =
String Const: "The factorial of given Number is : " 
;: ;
line no is 1235
Identifier : len2 
= : =
Identifier : strlen 
( : (
Identifier : str2 
) : )
;: ;
line no is 1236
Identifier : print_string 
( : (
Identifier : str1 
, : ,
Identifier : len1 
, : ,
I CONST: (0)
) : )
;: ;
line no is 1237
Identifier : n 
= : =
Identifier : get_num 
( : (
) : )
;: ;
line no is 1238
line no is 1239
INT : int
Identifier : temp 
;: ;
line no is 1240
Identifier : temp 
= : =
Identifier : n 
;: ;
line no is 1241
INT : int
Identifier : res 
;: ;
line no is 1242
line no is 1243
Identifier : res 
= : =
Identifier : rfactorial 
( : (
Identifier : n 
) : )
;: ;
line no is 1244
Identifier : print_string 
( : (
Identifier : str2 
, : ,
Identifier : len2 
, : ,
I CONST: (0)
) : )
;: ;
line no is 1245
Identifier : print_num 
( : (
Identifier : res 
, : ,
I CONST: (1)
) : )
;: ;
line no is 1246
line no is 1247
line no is 1248
RETURN : return
I CONST: (0)
;: ;
line no is 1249
} : }
line no is 1250
line no is 1251
INT : int
Identifier : get_random 
( : (
) : )
line no is 1252
{ : {
line no is 1253
INT : int
Identifier : a 
;: ;
line no is 1254
INT : int
Identifier : b 
;: ;
line no is 1255
INT : int
Identifier : m 
;: ;
line no is 1256
Identifier : a 
= : =
I CONST: (307)
;: ;
line no is 1257
Identifier : b 
= : =
I CONST: (401)
;: ;
line no is 1258
Identifier : m 
= : =
I CONST: (821)
;: ;
line no is 1259
line no is 1260
Identifier : seed 
= : =
( : (
Identifier : a 
* : *
Identifier : seed 
+ : +
Identifier : b 
) : )
% : %
Identifier : m 
;: ;
line no is 1261
RETURN : return
Identifier : seed 
;: ;
line no is 1262
} : }
line no is 1263
line no is 1264
line no is 1265
INT : int
Identifier : parse_command 
( : (
) : )
line no is 1266
{ : {
line no is 1267
CHAR : char
Identifier : command 
[ : [
I CONST: (20)
] : ]
;: ;
line no is 1268
INT : int
Identifier : i 
;: ;
line no is 1269
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
I CONST: (20)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 1270
{ : {
line no is 1271
Identifier : command 
[ : [
Identifier : i 
] : ]
= : =
I CONST: (0)
;: ;
COMPILETIME WARNING: assigning int to char
At line : 1272
line no is 1272
} : }
line no is 1273
INT : int
Identifier : clen 
;: ;
line no is 1274
Identifier : get_line 
( : (
) : )
;: ;
line no is 1275
Identifier : clen 
= : =
Identifier : get_string 
( : (
Identifier : command 
) : )
;: ;
line no is 1276
line no is 1277
CHAR : char
* : *
Identifier : clear 
;: ;
line no is 1278
CHAR : char
* : *
Identifier : ls 
;: ;
line no is 1279
CHAR : char
* : *
Identifier : fibo 
;: ;
line no is 1280
CHAR : char
* : *
Identifier : tr 
;: ;
line no is 1281
CHAR : char
* : *
Identifier : qsort 
;: ;
line no is 1282
CHAR : char
* : *
Identifier : pri 
;: ;
line no is 1283
CHAR : char
* : *
Identifier : rev 
;: ;
line no is 1284
CHAR : char
* : *
Identifier : exit 
;: ;
line no is 1285
CHAR : char
* : *
Identifier : command_not_found 
;: ;
line no is 1286
CHAR : char
* : *
Identifier : space 
;: ;
line no is 1287
CHAR : char
* : *
Identifier : palindrome 
;: ;
line no is 1288
CHAR : char
* : *
Identifier : sumofnatural 
;: ;
line no is 1289
CHAR : char
* : *
Identifier : factorialofn 
;: ;
line no is 1290
line no is 1291
Identifier : clear 
= : =
String Const: "clear" 
;: ;
line no is 1292
Identifier : ls 
= : =
String Const: "ls" 
;: ;
line no is 1293
Identifier : fibo 
= : =
String Const: "fibo" 
;: ;
line no is 1294
Identifier : tr 
= : =
String Const: "tree" 
;: ;
line no is 1295
Identifier : qsort 
= : =
String Const: "quicksort" 
;: ;
line no is 1296
Identifier : pri 
= : =
String Const: "prime" 
;: ;
line no is 1297
Identifier : rev 
= : =
String Const: "reverse" 
;: ;
line no is 1298
Identifier : palindrome 
= : =
String Const: "palindrome" 
;: ;
line no is 1299
Identifier : sumofnatural 
= : =
String Const: "sumofnatural" 
;: ;
line no is 1300
Identifier : factorialofn 
= : =
String Const: "factorialofn" 
;: ;
line no is 1301
Identifier : exit 
= : =
String Const: "exit" 
;: ;
line no is 1302
Identifier : command_not_found 
= : =
String Const: "Command Not Found" 
;: ;
line no is 1303
Identifier : space 
= : =
String Const: " " 
;: ;
line no is 1304
line no is 1305
IF : if
( : (
Identifier : strcmp 
( : (
Identifier : command 
, : ,
Identifier : clear 
) : )
EQ_OP : ==
I CONST: (0)
) : )
line no is 1306
{ : {
line no is 1307
Identifier : clear_shell 
( : (
) : )
;: ;
line no is 1308
} : }
line no is 1309
ELIF : elif
( : (
Identifier : strcmp 
( : (
Identifier : command 
, : ,
Identifier : ls 
) : )
EQ_OP : ==
I CONST: (0)
) : )
line no is 1310
{ : {
line no is 1311
Identifier : print_string 
( : (
Identifier : fibo 
, : ,
I CONST: (4)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1312
Identifier : print_string 
( : (
Identifier : space 
, : ,
I CONST: (1)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1313
Identifier : print_string 
( : (
Identifier : qsort 
, : ,
I CONST: (9)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1314
Identifier : print_string 
( : (
Identifier : space 
, : ,
I CONST: (1)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1315
Identifier : print_string 
( : (
Identifier : pri 
, : ,
I CONST: (5)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1316
Identifier : print_string 
( : (
Identifier : space 
, : ,
I CONST: (1)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1317
Identifier : print_string 
( : (
Identifier : rev 
, : ,
I CONST: (7)
, : ,
I CONST: (1)
) : )
;: ;
line no is 1318
line no is 1319
Identifier : print_string 
( : (
Identifier : palindrome 
, : ,
I CONST: (10)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1320
Identifier : print_string 
( : (
Identifier : space 
, : ,
I CONST: (1)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1321
Identifier : print_string 
( : (
Identifier : sumofnatural 
, : ,
I CONST: (12)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1322
Identifier : print_string 
( : (
Identifier : space 
, : ,
I CONST: (1)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1323
Identifier : print_string 
( : (
Identifier : factorialofn 
, : ,
I CONST: (11)
, : ,
I CONST: (1)
) : )
;: ;
line no is 1324
line no is 1325
line no is 1326
line no is 1327
line no is 1328
Identifier : print_string 
( : (
Identifier : space 
, : ,
I CONST: (1)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1329
Identifier : print_string 
( : (
Identifier : clear 
, : ,
I CONST: (5)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1330
Identifier : print_string 
( : (
Identifier : space 
, : ,
I CONST: (1)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1331
Identifier : print_string 
( : (
Identifier : ls 
, : ,
I CONST: (2)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1332
Identifier : print_string 
( : (
Identifier : space 
, : ,
I CONST: (1)
, : ,
I CONST: (0)
) : )
;: ;
line no is 1333
Identifier : print_string 
( : (
Identifier : exit 
, : ,
I CONST: (4)
, : ,
I CONST: (1)
) : )
;: ;
line no is 1334
} : }
line no is 1335
ELIF : elif
( : (
Identifier : strcmp 
( : (
Identifier : command 
, : ,
Identifier : fibo 
) : )
EQ_OP : ==
I CONST: (0)
) : )
line no is 1336
{ : {
line no is 1337
Identifier : fibonacci 
( : (
) : )
;: ;
line no is 1338
} : }
line no is 1339
ELIF : elif
( : (
Identifier : strcmp 
( : (
Identifier : command 
, : ,
Identifier : rev 
) : )
EQ_OP : ==
I CONST: (0)
) : )
line no is 1340
{ : {
line no is 1341
Identifier : reverse_string 
( : (
) : )
;: ;
line no is 1342
} : }
line no is 1343
ELIF : elif
( : (
Identifier : strcmp 
( : (
Identifier : command 
, : ,
Identifier : pri 
) : )
EQ_OP : ==
I CONST: (0)
) : )
line no is 1344
{ : {
line no is 1345
Identifier : prime 
( : (
) : )
;: ;
line no is 1346
} : }
line no is 1347
ELIF : elif
( : (
Identifier : strcmp 
( : (
Identifier : command 
, : ,
Identifier : qsort 
) : )
EQ_OP : ==
I CONST: (0)
) : )
line no is 1348
{ : {
line no is 1349
Identifier : sort 
( : (
) : )
;: ;
line no is 1350
} : }
line no is 1351
ELIF : elif
( : (
Identifier : strcmp 
( : (
Identifier : command 
, : ,
Identifier : palindrome 
) : )
EQ_OP : ==
I CONST: (0)
) : )
line no is 1352
{ : {
line no is 1353
Identifier : Palindrome 
( : (
) : )
;: ;
line no is 1354
} : }
line no is 1355
ELIF : elif
( : (
Identifier : strcmp 
( : (
Identifier : command 
, : ,
Identifier : sumofnatural 
) : )
EQ_OP : ==
I CONST: (0)
) : )
line no is 1356
{ : {
line no is 1357
Identifier : SumofNatural 
( : (
) : )
;: ;
line no is 1358
} : }
line no is 1359
ELIF : elif
( : (
Identifier : strcmp 
( : (
Identifier : command 
, : ,
Identifier : factorialofn 
) : )
EQ_OP : ==
I CONST: (0)
) : )
line no is 1360
{ : {
line no is 1361
Identifier : Factorial_ofN 
( : (
) : )
;: ;
line no is 1362
} : }
line no is 1363
ELIF : elif
( : (
Identifier : strcmp 
( : (
Identifier : command 
, : ,
Identifier : exit 
) : )
EQ_OP : ==
I CONST: (0)
) : )
line no is 1364
{ : {
line no is 1365
RETURN : return
I CONST: (2)
;: ;
line no is 1366
} : }
line no is 1367
ELSE : else
line no is 1368
{ : {
line no is 1369
Identifier : print_string 
( : (
Identifier : command_not_found 
, : ,
I CONST: (17)
, : ,
I CONST: (1)
) : )
;: ;
line no is 1370
} : }
line no is 1371
RETURN : return
I CONST: (1)
;: ;
line no is 1372
} : }
line no is 1373
line no is 1374
INT : int
Identifier : start_shell 
( : (
) : )
line no is 1375
{ : {
line no is 1376
Identifier : welcome_screen 
( : (
) : )
;: ;
line no is 1377
CHAR : char
* : *
Identifier : arrow 
;: ;
line no is 1378
Identifier : arrow 
= : =
String Const: "Team1@CSD:~$" 
;: ;
line no is 1379
INT : int
Identifier : len 
;: ;
line no is 1380
Identifier : len 
= : =
Identifier : strlen 
( : (
Identifier : arrow 
) : )
;: ;
line no is 1381
FOR : for
( : (
;: ;
;: ;
) : )
line no is 1382
{ : {
line no is 1383
Identifier : display 
( : (
Identifier : arrow 
, : ,
Identifier : len 
, : ,
Identifier : line 
, : ,
Identifier : character 
) : )
;: ;
line no is 1384
Identifier : character 
= : =
Identifier : character 
+ : +
I CONST: (4)
;: ;
line no is 1385
INT : int
Identifier : r 
;: ;
line no is 1386
Identifier : r 
= : =
Identifier : parse_command 
( : (
) : )
;: ;
line no is 1387
IF : if
( : (
Identifier : r 
EQ_OP : ==
I CONST: (2)
) : )
line no is 1388
{ : {
line no is 1389
BREAK : break
;: ;
line no is 1390
} : }
line no is 1391
} : }
line no is 1392
RETURN : return
I CONST: (0)
;: ;
line no is 1393
} : }
line no is 1394
line no is 1395
INT : int
Identifier : main 
( : (
) : )
line no is 1396
{ : {
line no is 1397
Identifier : pid 
= : =
I CONST: (1)
;: ;
line no is 1398
Identifier : current_process 
= : =
Identifier : pid 
;: ;
line no is 1399
ASM : __asm__
( : (
String Const: "load" 
, : ,
String Const: "R3" 
, : ,
Identifier : current_process 
) : )
;: ;
line no is 1400
line no is 1401
Identifier : KEYBOARD 
= : =
I CONST: (76000)
;: ;
line no is 1402
Identifier : line 
= : =
I CONST: (0)
;: ;
line no is 1403
Identifier : character 
= : =
I CONST: (0)
;: ;
line no is 1404
Identifier : Buffer 
= : =
MALLOC : malloc
( : (
I CONST: (40)
) : )
;: ;
COMPILETIME WARNING: assigning int to *char
At line : 1405
line no is 1405
Identifier : current_buffer_index 
= : =
I CONST: (0)
;: ;
line no is 1406
Identifier : MAPSTART 
= : =
I CONST: (42368)
;: ;
line no is 1407
Identifier : memory 
= : =
I CONST: (0)
;: ;
COMPILETIME WARNING: assigning int to *char
At line : 1408
line no is 1408
Identifier : displayLock 
= : =
I CONST: (0)
;: ;
line no is 1409
line no is 1410
INT : int
Identifier : i 
;: ;
line no is 1411
FOR : for
( : (
Identifier : i 
= : =
I CONST: (0)
;: ;
Identifier : i 
< : <
I CONST: (40)
;: ;
Identifier : i 
INC_OP : ++
) : )
line no is 1412
{ : {
line no is 1413
Identifier : Buffer 
[ : [
Identifier : i 
] : ]
= : =
I CONST: (0)
;: ;
COMPILETIME WARNING: assigning int to char
At line : 1414
line no is 1414
} : }
line no is 1415
line no is 1416
Identifier : os_reg 
= : =
MALLOC : malloc
( : (
I CONST: (28)
) : )
;: ;
COMPILETIME WARNING: assigning int to *int
At line : 1417
line no is 1417
Identifier : p1_reg 
= : =
MALLOC : malloc
( : (
I CONST: (28)
) : )
;: ;
COMPILETIME WARNING: assigning int to *int
At line : 1418
line no is 1418
Identifier : p2_reg 
= : =
MALLOC : malloc
( : (
I CONST: (28)
) : )
;: ;
COMPILETIME WARNING: assigning int to *int
At line : 1419
line no is 1419
Identifier : p3_reg 
= : =
MALLOC : malloc
( : (
I CONST: (28)
) : )
;: ;
COMPILETIME WARNING: assigning int to *int
At line : 1420
line no is 1420
Identifier : p4_reg 
= : =
MALLOC : malloc
( : (
I CONST: (28)
) : )
;: ;
COMPILETIME WARNING: assigning int to *int
At line : 1421
line no is 1421
Identifier : temp_reg 
= : =
MALLOC : malloc
( : (
I CONST: (28)
) : )
;: ;
COMPILETIME WARNING: assigning int to *int
At line : 1422
line no is 1422
Identifier : all_processes 
= : =
MALLOC : malloc
( : (
I CONST: (20)
) : )
;: ;
COMPILETIME WARNING: assigning int to *int
At line : 1423
line no is 1423
line no is 1424
Identifier : all_processes 
[ : [
I CONST: (0)
] : ]
= : =
Identifier : current_process 
;: ;
line no is 1425
Identifier : all_processes 
[ : [
I CONST: (1)
] : ]
= : =
I CONST: (0)
;: ;
line no is 1426
Identifier : all_processes 
[ : [
I CONST: (2)
] : ]
= : =
I CONST: (0)
;: ;
line no is 1427
Identifier : all_processes 
[ : [
I CONST: (3)
] : ]
= : =
I CONST: (0)
;: ;
line no is 1428
Identifier : all_processes 
[ : [
I CONST: (4)
] : ]
= : =
I CONST: (0)
;: ;
line no is 1429
line no is 1430
INC_OP : ++
Identifier : pid 
;: ;
line no is 1431
INT : int
Identifier : id 
;: ;
line no is 1432
Identifier : id 
= : =
Identifier : create_process 
( : (
I CONST: (1001)
) : )
;: ;
line no is 1433
Identifier : create_process 
( : (
I CONST: (1002)
) : )
;: ;
line no is 1434
Identifier : create_process 
( : (
I CONST: (1003)
) : )
;: ;
line no is 1435
ASM : __asm__
( : (
String Const: "load" 
, : ,
String Const: "R11" 
, : ,
Identifier : id 
) : )
;: ;
line no is 1436
ASM : __asm__
( : (
String Const: "switch" 
, : ,
String Const: "1" 
, : ,
Identifier : id 
) : )
;: ;
line no is 1437
RETURN : return
I CONST: (0)
;: ;
line no is 1438
} : }
line no is 1439
Struct Name = main
	Attributes = 
				Name	DataType	Scope	pointer	
				KEYBOARD		int			0		
				MAPSTART		int			0		
				Buffer		*char			0		
				current_buffer_index		int			0		
				line		int			0		
				character		int			0		
				memory		*char			0		
				displayLock		int			0		
				seed		int			0		
				R_food		int			0		
				C_food		int			0		
				current_process		int			0		
				prev_process		int			0		
				pid		int			0		
				os_reg		*int			0		
				p1_reg		*int			0		
				p2_reg		*int			0		
				p3_reg		*int			0		
				p4_reg		*int			0		
				temp_reg		*int			0		
				all_processes		*int			0		
				from_proc		*int			0		
	Constants = 
				Name	DataType	Scope	pointer	
	Functions = 

		function Name = get_char
			label = label_1
			return value : char
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				k		int			2		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t1		bool			3		
				_t2		int			3		
				_t3		*char			3		
				_t4		int			3		
				_t5		bool			3		
			Code = 
				label_1:
				label_2:
				_t1_3 = #1
				if ( _t1_3 == #0 ) goto label_5
				goto label_3
				label_4:
				goto label_2
				label_3:
				_t2_3 = KEYBOARD_0 * #1
				_t3_3 = memory_0 + _t2_3
				k_2 = *_t3_3
				_t4_3 = #0
				_t5_3 = k_2 != _t4_3
				if ( _t5_3 == #0 ) goto label_6
				Return k_2
				goto label_7
				label_6:
				label_7:
				goto label_4
				label_5:

		function Name = strlen
			label = label_8
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
				str		*char			5		
			localVariables : 
				Name	DataType	Scope	pointer	
				count		int			5		
				ch		int			6		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t6		int			5		
				_t7		bool			6		
				_t8		int			6		
				_t9		*char			6		
				_t10		int			6		
				_t11		bool			6		
				_t12		int			6		
			Code = 
				label_8:
				_t6_5 = #0
				count_5 = _t6_5
				label_9:
				_t7_6 = #1
				if ( _t7_6 == #0 ) goto label_12
				goto label_10
				label_11:
				goto label_9
				label_10:
				_t8_6 = count_5 * #1
				_t9_6 = str_5 + _t8_6
				ch_6 = *_t9_6
				_t10_6 = #0
				_t11_6 = ch_6 == _t10_6
				if ( _t11_6 == #0 ) goto label_13
				goto label_12
				goto label_14
				label_13:
				label_14:
				_t12_6 = count_5
				count_5 = count_5 + #1
				goto label_11
				label_12:
				Return count_5

		function Name = clear_shell
			label = label_15
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				i		int			8		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t13		int			9		
				_t14		int			9		
				_t15		bool			9		
				_t16		int			9		
				_t17		int			9		
				_t18		*char			9		
				_t19		int			9		
				_t20		int			8		
				_t21		int			8		
				_t22		int			8		
			Code = 
				label_15:
				_t13_9 = #9599
				i_8 = _t13_9
				label_16:
				_t14_9 = #0
				_t15_9 = i_8 >= _t14_9
				if ( _t15_9 == #0 ) goto label_19
				goto label_17
				label_18:
				_t16_9 = i_8
				i_8 = i_8 - #1
				goto label_16
				label_17:
				_t17_9 = i_8 * #1
				_t18_9 = memory_0 + _t17_9
				_t19_9 = #0
				*_t18_9 = _t19_9
				goto label_18
				label_19:
				_t20_8 = #0
				line_0 = _t20_8
				_t21_8 = #0
				character_0 = _t21_8
				_t22_8 = #0
				Return _t22_8

		function Name = display
			label = label_20
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
				arr		*char			10		
				size		int			10		
				l		int			10		
				c		int			10		
			localVariables : 
				Name	DataType	Scope	pointer	
				displayStart		int			10		
				k		int			10		
				j		int			11		
				a		int			11		
				m		int			12		
				b		int			12		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t23		int			10		
				_t24		int			10		
				_t25		int			11		
				_t26		int			11		
				_t27		bool			11		
				_t28		int			11		
				_t29		int			11		
				_t30		int			11		
				_t31		int			12		
				_t32		bool			12		
				_t33		int			12		
				_t34		int			12		
				_t35		int			12		
				_t36		int			12		
				_t37		int			12		
				_t38		bool			12		
				_t39		int			12		
				_t40		*char			12		
				_t41		int			12		
				_t42		int			12		
				_t43		int			12		
				_t44		int			12		
				_t45		*char			12		
				_t46		int			12		
				_t47		int			12		
				_t48		int			12		
				_t49		*char			12		
				_t50		int			10		
			Code = 
				label_20:
				_t23_10 = #80
				_t24_10 = _t23_10 * l_10
				displayStart_10 = _t24_10
				_t25_11 = #0
				k_10 = _t25_11
				label_21:
				_t26_11 = #8
				_t27_11 = k_10 < _t26_11
				if ( _t27_11 == #0 ) goto label_24
				goto label_22
				label_23:
				_t28_11 = k_10
				k_10 = k_10 + #1
				goto label_21
				label_22:
				_t29_11 = #80
				_t30_11 = k_10 * _t29_11
				a_11 = _t30_11
				_t31_12 = #0
				j_11 = _t31_12
				label_25:
				_t32_12 = j_11 < size_10
				if ( _t32_12 == #0 ) goto label_28
				goto label_26
				label_27:
				_t33_12 = j_11
				j_11 = j_11 + #1
				goto label_25
				label_26:
				_t34_12 = a_11 + j_11
				_t35_12 = _t34_12 + c_10
				m_12 = _t35_12
				_t36_12 = c_10 + j_11
				_t37_12 = #80
				_t38_12 = _t36_12 >= _t37_12
				if ( _t38_12 == #0 ) goto label_29
				goto label_28
				goto label_30
				label_29:
				label_30:
				_t39_12 = j_11 * #1
				_t40_12 = arr_10 + _t39_12
				b_12 = *_t40_12
				_t41_12 = #8
				_t42_12 = b_12 * _t41_12
				b_12 = _t42_12
				_t43_12 = displayStart_10 + m_12
				_t44_12 = _t43_12 * #1
				_t45_12 = memory_0 + _t44_12
				_t46_12 = MAPSTART_0 + b_12
				_t47_12 = _t46_12 + k_10
				_t48_12 = _t47_12 * #1
				_t49_12 = memory_0 + _t48_12
				*_t45_12 = *_t49_12
				goto label_27
				label_28:
				goto label_23
				label_24:
				_t50_10 = #0
				Return _t50_10

		function Name = welcome_screen
			label = label_31
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				str		*char			14		
				i		int			14		
				hello		*char			14		
				len		int			14		
				key		int			14		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t51		*char			14		
				_t52		int			14		
				_t53		int			14		
				_t54		int			14		
				_t55		int			14		
				_t56		int			14		
				_t57		int			14		
				_t58		int			14		
				_t59		int			14		
				_t60		int			15		
				_t61		int			15		
				_t62		bool			15		
				_t63		int			15		
				_t64		int			15		
				_t65		*char			15		
				_t66		int			15		
				_t67		int			16		
				_t68		int			16		
				_t69		bool			16		
				_t70		int			16		
				_t71		int			16		
				_t72		int			16		
				_t73		int			16		
				_t74		*char			14		
				_t75		int			14		
				_t76		int			14		
				_t77		int			14		
				_t78		int			14		
				_t79		bool			17		
				_t80		char			17		
				_t81		int			17		
				_t82		bool			17		
				_t83		int			14		
				_t84		int			14		
			Code = 
				label_31:
				string _t51_14 "########################################"
				str_14 = _t51_14
				FunctionCall display
				param str_14
				_t52_14 = #40
				param _t52_14
				_t53_14 = #0
				param _t53_14
				_t54_14 = #0
				param _t54_14
				call label_20
				label_32:
				_t55_14 = ReturnVal
				FunctionCall display
				param str_14
				_t56_14 = #40
				param _t56_14
				_t57_14 = #29
				param _t57_14
				_t58_14 = #0
				param _t58_14
				call label_20
				label_33:
				_t59_14 = ReturnVal
				_t60_15 = #1
				i_14 = _t60_15
				label_34:
				_t61_15 = #39
				_t62_15 = i_14 < _t61_15
				if ( _t62_15 == #0 ) goto label_37
				goto label_35
				label_36:
				_t63_15 = i_14
				i_14 = i_14 + #1
				goto label_34
				label_35:
				_t64_15 = i_14 * #1
				_t65_15 = str_14 + _t64_15
				_t66_15 = #32
				*_t65_15 = _t66_15
				goto label_36
				label_37:
				_t67_16 = #1
				i_14 = _t67_16
				label_38:
				_t68_16 = #29
				_t69_16 = i_14 < _t68_16
				if ( _t69_16 == #0 ) goto label_41
				goto label_39
				label_40:
				_t70_16 = i_14
				i_14 = i_14 + #1
				goto label_38
				label_39:
				FunctionCall display
				param str_14
				_t71_16 = #40
				param _t71_16
				param i_14
				_t72_16 = #0
				param _t72_16
				call label_20
				label_42:
				_t73_16 = ReturnVal
				goto label_40
				label_41:
				string _t74_14 "Hello World!!!"
				hello_14 = _t74_14
				FunctionCall strlen
				param hello_14
				call label_8
				label_43:
				_t75_14 = ReturnVal
				len_14 = _t75_14
				FunctionCall display
				param hello_14
				param len_14
				_t76_14 = #15
				param _t76_14
				_t77_14 = #13
				param _t77_14
				call label_20
				label_44:
				_t78_14 = ReturnVal
				label_45:
				_t79_17 = #1
				if ( _t79_17 == #0 ) goto label_48
				goto label_46
				label_47:
				goto label_45
				label_46:
				FunctionCall get_char
				call label_1
				label_49:
				_t80_17 = ReturnVal
				key_14 = _t80_17
				_t81_17 = #13
				_t82_17 = key_14 == _t81_17
				if ( _t82_17 == #0 ) goto label_50
				goto label_48
				goto label_51
				label_50:
				label_51:
				goto label_47
				label_48:
				FunctionCall clear_shell
				call label_15
				label_52:
				_t83_14 = ReturnVal
				_t84_14 = #0
				Return _t84_14

		function Name = get_line
			label = label_53
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				i		int			19		
				temp		int			21		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t85		int			20		
				_t86		int			20		
				_t87		bool			20		
				_t88		int			20		
				_t89		int			20		
				_t90		*char			20		
				_t91		int			20		
				_t92		int			19		
				_t93		bool			21		
				_t94		int			21		
				_t95		bool			21		
				_t96		char			21		
				_t97		int			21		
				_t98		bool			21		
				_t99		int			21		
				_t100		bool			21		
				_t101		int			24		
				_t102		bool			24		
				_t103		int			25		
				_t104		int			25		
				_t105		*char			25		
				_t106		int			25		
				_t107		int			26		
				_t108		*char			26		
				_t109		int			26		
				_t110		int			21		
				_t111		int			21		
				_t112		int			19		
				_t113		int			19		
				_t114		int			19		
				_t115		int			19		
				_t116		int			19		
				_t117		int			19		
				_t118		bool			19		
				_t119		int			27		
				_t120		int			19		
			Code = 
				label_53:
				_t85_20 = #0
				i_19 = _t85_20
				label_54:
				_t86_20 = #40
				_t87_20 = i_19 < _t86_20
				if ( _t87_20 == #0 ) goto label_57
				goto label_55
				label_56:
				_t88_20 = i_19
				i_19 = i_19 + #1
				goto label_54
				label_55:
				_t89_20 = i_19 * #1
				_t90_20 = Buffer_0 + _t89_20
				_t91_20 = #0
				*_t90_20 = _t91_20
				goto label_56
				label_57:
				_t92_19 = #0
				i_19 = _t92_19
				label_58:
				_t93_21 = #1
				if ( _t93_21 == #0 ) goto label_61
				goto label_59
				label_60:
				goto label_58
				label_59:
				_t94_21 = #40
				_t95_21 = i_19 == _t94_21
				if ( _t95_21 == #0 ) goto label_62
				goto label_61
				goto label_63
				label_62:
				label_63:
				FunctionCall get_char
				call label_1
				label_64:
				_t96_21 = ReturnVal
				temp_21 = _t96_21
				_t97_21 = #13
				_t98_21 = temp_21 == _t97_21
				if ( _t98_21 == #0 ) goto label_65
				goto label_61
				goto label_66
				label_65:
				_t99_21 = #8
				_t100_21 = temp_21 == _t99_21
				if ( _t100_21 == #0 ) goto label_67
				_t101_24 = #0
				_t102_24 = i_19 != _t101_24
				if ( _t102_24 == #0 ) goto label_68
				_t103_25 = i_19
				i_19 = i_19 - #1
				_t104_25 = i_19 * #1
				_t105_25 = Buffer_0 + _t104_25
				_t106_25 = #0
				*_t105_25 = _t106_25
				goto label_69
				label_68:
				label_69:
				goto label_66
				label_67:
				_t107_26 = i_19 * #1
				_t108_26 = Buffer_0 + _t107_26
				*_t108_26 = temp_21
				_t109_26 = i_19
				i_19 = i_19 + #1
				label_66:
				FunctionCall display
				param Buffer_0
				_t110_21 = #35
				param _t110_21
				param line_0
				param character_0
				call label_20
				label_70:
				_t111_21 = ReturnVal
				goto label_60
				label_61:
				_t112_19 = #0
				current_buffer_index_0 = _t112_19
				_t113_19 = #1
				_t114_19 = line_0 + _t113_19
				_t115_19 = #30
				_t116_19 = _t114_19 % _t115_19
				line_0 = _t116_19
				_t117_19 = #0
				_t118_19 = line_0 == _t117_19
				if ( _t118_19 == #0 ) goto label_71
				FunctionCall clear_shell
				call label_15
				label_73:
				_t119_27 = ReturnVal
				goto label_72
				label_71:
				label_72:
				_t120_19 = #0
				character_0 = _t120_19
				Return i_19

		function Name = strcmp
			label = label_74
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
				str1		*char			28		
				str2		*char			28		
			localVariables : 
				Name	DataType	Scope	pointer	
				len1		int			28		
				len2		int			28		
				i		int			28		
				l1		int			28		
				l2		int			28		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t121		int			28		
				_t122		int			28		
				_t123		bool			28		
				_t124		int			29		
				_t125		int			30		
				_t126		bool			30		
				_t127		int			30		
				_t128		int			30		
				_t129		*char			30		
				_t130		int			30		
				_t131		*char			30		
				_t132		bool			30		
				_t133		int			31		
				_t134		int			28		
			Code = 
				label_74:
				FunctionCall strlen
				param str1_28
				call label_8
				label_75:
				_t121_28 = ReturnVal
				len1_28 = _t121_28
				FunctionCall strlen
				param str2_28
				call label_8
				label_76:
				_t122_28 = ReturnVal
				len2_28 = _t122_28
				_t123_28 = len1_28 != len2_28
				if ( _t123_28 == #0 ) goto label_77
				_t124_29 = #1
				Return _t124_29
				goto label_78
				label_77:
				label_78:
				_t125_30 = #0
				i_28 = _t125_30
				label_79:
				_t126_30 = i_28 < len1_28
				if ( _t126_30 == #0 ) goto label_82
				goto label_80
				label_81:
				_t127_30 = i_28
				i_28 = i_28 + #1
				goto label_79
				label_80:
				_t128_30 = i_28 * #1
				_t129_30 = str1_28 + _t128_30
				l1_28 = *_t129_30
				_t130_30 = i_28 * #1
				_t131_30 = str2_28 + _t130_30
				l2_28 = *_t131_30
				_t132_30 = l1_28 != l2_28
				if ( _t132_30 == #0 ) goto label_83
				_t133_31 = #1
				Return _t133_31
				goto label_84
				label_83:
				label_84:
				goto label_81
				label_82:
				_t134_28 = #0
				Return _t134_28

		function Name = print_string
			label = label_85
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
				buff		*char			32		
				len		int			32		
				newline		int			32		
			localVariables : 
				Name	DataType	Scope	pointer	
				i		int			32		
				b		*char			34		
				bu		int			34		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t135		int			33		
				_t136		bool			33		
				_t137		int			33		
				_t138		int			32		
				_t139		int			34		
				_t140		bool			34		
				_t141		int			34		
				_t142		int			34		
				_t143		bool			34		
				_t144		int			35		
				_t145		int			35		
				_t146		int			35		
				_t147		int			35		
				_t148		int			35		
				_t149		bool			35		
				_t150		int			36		
				_t151		int			35		
				_t152		int			34		
				_t153		bool			34		
				_t154		int			37		
				_t155		int			34		
				_t156		int			34		
				_t157		int			34		
				_t158		int			34		
				_t159		int			32		
				_t160		bool			32		
				_t161		int			38		
				_t162		int			38		
				_t163		int			38		
				_t164		int			38		
				_t165		int			38		
				_t166		bool			38		
				_t167		int			39		
				_t168		int			38		
				_t169		int			32		
				_t170		int			32		
			Code = 
				label_85:
				label_86:
				_t135_33 = #1
				_t136_33 = displayLock_0 == _t135_33
				if ( _t136_33 == #0 ) goto label_89
				goto label_87
				label_88:
				goto label_86
				label_87:
				_t137_33 = #0
				i_32 = _t137_33
				goto label_88
				label_89:
				_t138_32 = #1
				displayLock_0 = _t138_32
				_t139_34 = #0
				i_32 = _t139_34
				label_90:
				_t140_34 = i_32 < len_32
				if ( _t140_34 == #0 ) goto label_93
				goto label_91
				label_92:
				_t141_34 = i_32
				i_32 = i_32 + #1
				goto label_90
				label_91:
				_t142_34 = #40
				_t143_34 = character_0 == _t142_34
				if ( _t143_34 == #0 ) goto label_94
				_t144_35 = #1
				_t145_35 = line_0 + _t144_35
				_t146_35 = #30
				_t147_35 = _t145_35 % _t146_35
				line_0 = _t147_35
				_t148_35 = #0
				_t149_35 = line_0 == _t148_35
				if ( _t149_35 == #0 ) goto label_96
				FunctionCall clear_shell
				call label_15
				label_98:
				_t150_36 = ReturnVal
				goto label_97
				label_96:
				label_97:
				_t151_35 = #0
				character_0 = _t151_35
				goto label_95
				label_94:
				label_95:
				_t152_34 = #30
				_t153_34 = line_0 == _t152_34
				if ( _t153_34 == #0 ) goto label_99
				FunctionCall clear_shell
				call label_15
				label_101:
				_t154_37 = ReturnVal
				goto label_100
				label_99:
				label_100:
				bu_34 = buff_32
				_t155_34 = bu_34 + i_32
				bu_34 = _t155_34
				b_34 = bu_34
				FunctionCall display
				param b_34
				_t156_34 = #1
				param _t156_34
				param line_0
				param character_0
				call label_20
				label_102:
				_t157_34 = ReturnVal
				_t158_34 = character_0
				character_0 = character_0 + #1
				goto label_92
				label_93:
				_t159_32 = #1
				_t160_32 = newline_32 == _t159_32
				if ( _t160_32 == #0 ) goto label_103
				_t161_38 = #1
				_t162_38 = line_0 + _t161_38
				_t163_38 = #30
				_t164_38 = _t162_38 % _t163_38
				line_0 = _t164_38
				_t165_38 = #0
				_t166_38 = line_0 == _t165_38
				if ( _t166_38 == #0 ) goto label_105
				FunctionCall clear_shell
				call label_15
				label_107:
				_t167_39 = ReturnVal
				goto label_106
				label_105:
				label_106:
				_t168_38 = #0
				character_0 = _t168_38
				goto label_104
				label_103:
				label_104:
				_t169_32 = #0
				displayLock_0 = _t169_32
				_t170_32 = #0
				Return _t170_32

		function Name = get_string
			label = label_108
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
				buff		*char			40		
			localVariables : 
				Name	DataType	Scope	pointer	
				i		int			40		
				current		int			40		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t171		int			40		
				_t172		int			40		
				_t173		*char			40		
				_t174		int			40		
				_t175		bool			40		
				_t176		int			40		
				_t177		bool			40		
				_t178		bool			40		
				_t179		int			41		
				_t180		bool			42		
				_t181		int			42		
				_t182		*char			42		
				_t183		int			42		
				_t184		bool			42		
				_t185		int			42		
				_t186		bool			42		
				_t187		bool			42		
				_t188		int			42		
				_t189		bool			42		
				_t190		bool			42		
				_t191		int			43		
				_t192		int			44		
				_t193		*char			44		
				_t194		int			44		
				_t195		*char			44		
				_t196		int			44		
				_t197		int			44		
				_t198		int			40		
			Code = 
				label_108:
				_t171_40 = #0
				i_40 = _t171_40
				_t172_40 = current_buffer_index_0 * #1
				_t173_40 = Buffer_0 + _t172_40
				current_40 = *_t173_40
				_t174_40 = #0
				_t175_40 = current_40 == _t174_40
				_t176_40 = #40
				_t177_40 = current_buffer_index_0 >= _t176_40
				_t178_40 = _t175_40 || _t177_40
				if ( _t178_40 == #0 ) goto label_109
				FunctionCall get_line
				call label_53
				label_111:
				_t179_41 = ReturnVal
				goto label_110
				label_109:
				label_110:
				label_112:
				_t180_42 = #1
				if ( _t180_42 == #0 ) goto label_115
				goto label_113
				label_114:
				goto label_112
				label_113:
				_t181_42 = current_buffer_index_0 * #1
				_t182_42 = Buffer_0 + _t181_42
				current_40 = *_t182_42
				_t183_42 = #0
				_t184_42 = current_40 == _t183_42
				_t185_42 = #32
				_t186_42 = current_40 == _t185_42
				_t187_42 = _t184_42 || _t186_42
				_t188_42 = #40
				_t189_42 = current_buffer_index_0 >= _t188_42
				_t190_42 = _t187_42 || _t189_42
				if ( _t190_42 == #0 ) goto label_116
				_t191_43 = current_buffer_index_0
				current_buffer_index_0 = current_buffer_index_0 + #1
				Return i_40
				goto label_117
				label_116:
				_t192_44 = i_40 * #1
				_t193_44 = buff_40 + _t192_44
				_t194_44 = current_buffer_index_0 * #1
				_t195_44 = Buffer_0 + _t194_44
				*_t193_44 = *_t195_44
				_t196_44 = current_buffer_index_0
				current_buffer_index_0 = current_buffer_index_0 + #1
				_t197_44 = i_40
				i_40 = i_40 + #1
				label_117:
				goto label_114
				label_115:
				_t198_40 = #0
				Return _t198_40

		function Name = get_num
			label = label_118
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				buff_0		int			45		
				buff		*char			45		buff_0 
				size		int			45		
				num		int			45		
				i		int			45		
				b		int			45		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t199		int			45		
				_t200		int			45		
				_t201		int			45		
				_t202		int			45		
				_t203		int			45		
				_t204		*char			45		
				_t205		int			45		
				_t206		bool			45		
				_t207		int			47		
				_t208		bool			47		
				_t209		int			47		
				_t210		int			47		
				_t211		*char			47		
				_t212		int			47		
				_t213		bool			47		
				_t214		int			47		
				_t215		bool			47		
				_t216		bool			47		
				_t217		int			48		
				_t218		int			47		
				_t219		int			47		
				_t220		int			47		
				_t221		int			47		
				_t222		int			47		
				_t223		int			46		
				_t224		int			46		
				_t225		int			49		
				_t226		bool			49		
				_t227		int			49		
				_t228		int			49		
				_t229		*char			49		
				_t230		int			49		
				_t231		bool			49		
				_t232		int			49		
				_t233		bool			49		
				_t234		bool			49		
				_t235		int			50		
				_t236		int			49		
				_t237		int			49		
				_t238		int			49		
				_t239		int			49		
				_t240		int			49		
			Code = 
				label_118:
				_t199_45 = #10
				buff_0_45 = _t199_45
				memory buff_45 _t199_45 #1
				FunctionCall get_string
				param buff_45
				call label_108
				label_119:
				_t200_45 = ReturnVal
				size_45 = _t200_45
				_t201_45 = #0
				num_45 = _t201_45
				_t202_45 = #0
				_t203_45 = _t202_45 * #1
				_t204_45 = buff_45 + _t203_45
				b_45 = *_t204_45
				_t205_45 = #45
				_t206_45 = b_45 == _t205_45
				if ( _t206_45 == #0 ) goto label_120
				_t207_47 = #1
				i_45 = _t207_47
				label_122:
				_t208_47 = i_45 < size_45
				if ( _t208_47 == #0 ) goto label_125
				goto label_123
				label_124:
				_t209_47 = i_45
				i_45 = i_45 + #1
				goto label_122
				label_123:
				_t210_47 = i_45 * #1
				_t211_47 = buff_45 + _t210_47
				b_45 = *_t211_47
				_t212_47 = #48
				_t213_47 = b_45 < _t212_47
				_t214_47 = #57
				_t215_47 = b_45 > _t214_47
				_t216_47 = _t213_47 || _t215_47
				if ( _t216_47 == #0 ) goto label_126
				_t217_48 = #0
				Return _t217_48
				goto label_127
				label_126:
				label_127:
				_t218_47 = #10
				_t219_47 = num_45 * _t218_47
				num_45 = _t219_47
				_t220_47 = num_45 + b_45
				_t221_47 = #48
				_t222_47 = _t220_47 - _t221_47
				num_45 = _t222_47
				goto label_124
				label_125:
				_t223_46 = #0
				_t224_46 = _t223_46 - num_45
				Return _t224_46
				goto label_121
				label_120:
				label_121:
				_t225_49 = #0
				i_45 = _t225_49
				label_128:
				_t226_49 = i_45 < size_45
				if ( _t226_49 == #0 ) goto label_131
				goto label_129
				label_130:
				_t227_49 = i_45
				i_45 = i_45 + #1
				goto label_128
				label_129:
				_t228_49 = i_45 * #1
				_t229_49 = buff_45 + _t228_49
				b_45 = *_t229_49
				_t230_49 = #48
				_t231_49 = b_45 < _t230_49
				_t232_49 = #57
				_t233_49 = b_45 > _t232_49
				_t234_49 = _t231_49 || _t233_49
				if ( _t234_49 == #0 ) goto label_132
				_t235_50 = #0
				Return _t235_50
				goto label_133
				label_132:
				label_133:
				_t236_49 = #10
				_t237_49 = num_45 * _t236_49
				num_45 = _t237_49
				_t238_49 = num_45 + b_45
				_t239_49 = #48
				_t240_49 = _t238_49 - _t239_49
				num_45 = _t240_49
				goto label_130
				label_131:
				Return num_45

		function Name = reverse
			label = label_134
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
				str		*char			51		
				len		int			51		
			localVariables : 
				Name	DataType	Scope	pointer	
				i		int			51		
				j		int			51		
				temp		char			52		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t241		int			51		
				_t242		int			51		
				_t243		int			51		
				_t244		int			52		
				_t245		bool			52		
				_t246		int			52		
				_t247		int			52		
				_t248		*char			52		
				_t249		int			52		
				_t250		*char			52		
				_t251		int			52		
				_t252		*char			52		
				_t253		int			52		
				_t254		*char			52		
				_t255		int			52		
				_t256		int			52		
				_t257		int			51		
			Code = 
				label_134:
				_t241_51 = #0
				i_51 = _t241_51
				_t242_51 = #1
				_t243_51 = len_51 - _t242_51
				j_51 = _t243_51
				_t244_52 = #0
				i_51 = _t244_52
				label_135:
				_t245_52 = i_51 < j_51
				if ( _t245_52 == #0 ) goto label_138
				goto label_136
				label_137:
				_t246_52 = i_51
				i_51 = i_51 + #1
				goto label_135
				label_136:
				_t247_52 = i_51 * #1
				_t248_52 = str_51 + _t247_52
				temp_52 = *_t248_52
				_t249_52 = i_51 * #1
				_t250_52 = str_51 + _t249_52
				_t251_52 = j_51 * #1
				_t252_52 = str_51 + _t251_52
				*_t250_52 = *_t252_52
				_t253_52 = j_51 * #1
				_t254_52 = str_51 + _t253_52
				*_t254_52 = temp_52
				_t255_52 = i_51
				i_51 = i_51 + #1
				_t256_52 = j_51
				j_51 = j_51 - #1
				goto label_137
				label_138:
				_t257_51 = #0
				Return _t257_51

		function Name = print_num
			label = label_139
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
				num		int			53		
				newline		int			53		
			localVariables : 
				Name	DataType	Scope	pointer	
				buff_0		int			53		
				buff		*char			53		buff_0 
				i		int			53		
				b		int			53		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t258		int			53		
				_t259		int			53		
				_t260		int			53		
				_t261		int			53		
				_t262		bool			53		
				_t263		int			54		
				_t264		int			54		
				_t265		int			54		
				_t266		bool			55		
				_t267		int			55		
				_t268		*char			55		
				_t269		int			55		
				_t270		int			55		
				_t271		int			55		
				_t272		int			55		
				_t273		int			55		
				_t274		int			55		
				_t275		int			55		
				_t276		int			55		
				_t277		bool			55		
				_t278		int			53		
				_t279		bool			53		
				_t280		int			57		
				_t281		*char			57		
				_t282		int			57		
				_t283		int			57		
				_t284		int			53		
				_t285		int			53		
				_t286		int			53		
			Code = 
				label_139:
				_t258_53 = #10
				buff_0_53 = _t258_53
				memory buff_53 _t258_53 #1
				_t259_53 = #0
				i_53 = _t259_53
				_t260_53 = #1
				b_53 = _t260_53
				_t261_53 = #0
				_t262_53 = num_53 < _t261_53
				if ( _t262_53 == #0 ) goto label_140
				_t263_54 = #0
				_t264_54 = _t263_54 - num_53
				num_53 = _t264_54
				_t265_54 = #0
				b_53 = _t265_54
				goto label_141
				label_140:
				label_141:
				label_142:
				_t266_55 = #1
				if ( _t266_55 == #0 ) goto label_145
				goto label_143
				label_144:
				goto label_142
				label_143:
				_t267_55 = i_53 * #1
				_t268_55 = buff_53 + _t267_55
				_t269_55 = #10
				_t270_55 = num_53 % _t269_55
				_t271_55 = #48
				_t272_55 = _t270_55 + _t271_55
				*_t268_55 = _t272_55
				_t273_55 = i_53
				i_53 = i_53 + #1
				_t274_55 = #10
				_t275_55 = num_53 / _t274_55
				num_53 = _t275_55
				_t276_55 = #0
				_t277_55 = num_53 == _t276_55
				if ( _t277_55 == #0 ) goto label_146
				goto label_145
				goto label_147
				label_146:
				label_147:
				goto label_144
				label_145:
				_t278_53 = #0
				_t279_53 = b_53 == _t278_53
				if ( _t279_53 == #0 ) goto label_148
				_t280_57 = i_53 * #1
				_t281_57 = buff_53 + _t280_57
				_t282_57 = #45
				*_t281_57 = _t282_57
				_t283_57 = i_53
				i_53 = i_53 + #1
				goto label_149
				label_148:
				label_149:
				FunctionCall reverse
				param buff_53
				param i_53
				call label_134
				label_150:
				_t284_53 = ReturnVal
				FunctionCall print_string
				param buff_53
				param i_53
				param newline_53
				call label_85
				label_151:
				_t285_53 = ReturnVal
				_t286_53 = #0
				Return _t286_53

		function Name = processReturn
			label = label_152
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				pr_process		int			58		
				curIndex		int			58		
				i		int			58		
				prompt1		*char			61		
				len		int			61		
				next_process		int			58		
				prompt1		*char			67		
				len		int			67		
				next_id		int			58		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t287		int			58		
				_t288		int			59		
				_t289		int			59		
				_t290		bool			59		
				_t291		int			59		
				_t292		int			59		
				_t293		*int			59		
				_t294		bool			59		
				_t295		int			58		
				_t296		*int			58		
				_t297		int			58		
				_t298		int			58		
				_t299		bool			58		
				_t300		*char			61		
				_t301		int			61		
				_t302		int			61		
				_t303		int			61		
				_t304		int			58		
				_t305		int			62		
				_t306		int			62		
				_t307		int			62		
				_t308		bool			62		
				_t309		int			62		
				_t310		int			62		
				_t311		*int			62		
				_t312		int			62		
				_t313		bool			62		
				_t314		int			58		
				_t315		bool			58		
				_t316		int			65		
				_t317		bool			65		
				_t318		int			65		
				_t319		int			65		
				_t320		*int			65		
				_t321		int			65		
				_t322		bool			65		
				_t323		int			58		
				_t324		bool			58		
				_t325		*char			67		
				_t326		int			67		
				_t327		int			67		
				_t328		int			67		
				_t329		int			58		
				_t330		*int			58		
				_t331		int			58		
				_t332		bool			58		
				_t333		int			58		
				_t334		bool			58		
				_t335		int			58		
				_t336		bool			58		
				_t337		int			58		
				_t338		bool			58		
				_t339		int			58		
			Code = 
				label_152:
				asm "label" "return_process_begin:" pid_0 
				asm "processReturnEnter" "dummy" pid_0 
				asm "store" "R11" pr_process_58 
				_t287_58 = #10
				curIndex_58 = _t287_58
				_t288_59 = #1
				i_58 = _t288_59
				label_153:
				_t289_59 = #5
				_t290_59 = i_58 < _t289_59
				if ( _t290_59 == #0 ) goto label_156
				goto label_154
				label_155:
				_t291_59 = i_58
				i_58 = i_58 + #1
				goto label_153
				label_154:
				_t292_59 = i_58 * #4
				_t293_59 = all_processes_0 + _t292_59
				_t294_59 = pr_process_58 == *_t293_59
				if ( _t294_59 == #0 ) goto label_157
				curIndex_58 = i_58
				goto label_158
				label_157:
				label_158:
				goto label_155
				label_156:
				_t295_58 = curIndex_58 * #4
				_t296_58 = all_processes_0 + _t295_58
				_t297_58 = #0
				*_t296_58 = _t297_58
				_t298_58 = #10
				_t299_58 = curIndex_58 == _t298_58
				if ( _t299_58 == #0 ) goto label_159
				string _t300_61 "Some problem occured, system crashing"
				prompt1_61 = _t300_61
				FunctionCall strlen
				param prompt1_61
				call label_8
				label_161:
				_t301_61 = ReturnVal
				len_61 = _t301_61
				FunctionCall print_string
				param prompt1_61
				param len_61
				_t302_61 = #1
				param _t302_61
				call label_85
				label_162:
				_t303_61 = ReturnVal
				goto label_160
				label_159:
				label_160:
				_t304_58 = #10
				next_process_58 = _t304_58
				_t305_62 = #1
				_t306_62 = curIndex_58 + _t305_62
				i_58 = _t306_62
				label_163:
				_t307_62 = #5
				_t308_62 = i_58 < _t307_62
				if ( _t308_62 == #0 ) goto label_166
				goto label_164
				label_165:
				_t309_62 = i_58
				i_58 = i_58 + #1
				goto label_163
				label_164:
				_t310_62 = i_58 * #4
				_t311_62 = all_processes_0 + _t310_62
				_t312_62 = #0
				_t313_62 = *_t311_62 != _t312_62
				if ( _t313_62 == #0 ) goto label_167
				next_process_58 = i_58
				goto label_166
				goto label_168
				label_167:
				label_168:
				goto label_165
				label_166:
				_t314_58 = #10
				_t315_58 = next_process_58 == _t314_58
				if ( _t315_58 == #0 ) goto label_169
				_t316_65 = #1
				i_58 = _t316_65
				label_171:
				_t317_65 = i_58 <= curIndex_58
				if ( _t317_65 == #0 ) goto label_174
				goto label_172
				label_173:
				_t318_65 = i_58
				i_58 = i_58 + #1
				goto label_171
				label_172:
				_t319_65 = i_58 * #4
				_t320_65 = all_processes_0 + _t319_65
				_t321_65 = #0
				_t322_65 = *_t320_65 != _t321_65
				if ( _t322_65 == #0 ) goto label_175
				next_process_58 = i_58
				goto label_174
				goto label_176
				label_175:
				label_176:
				goto label_173
				label_174:
				goto label_170
				label_169:
				label_170:
				_t323_58 = #10
				_t324_58 = next_process_58 == _t323_58
				if ( _t324_58 == #0 ) goto label_177
				string _t325_67 "Some problem occured, system crashing"
				prompt1_61 = _t325_67
				FunctionCall strlen
				param prompt1_61
				call label_8
				label_179:
				_t326_67 = ReturnVal
				len_61 = _t326_67
				FunctionCall print_string
				param prompt1_61
				param len_61
				_t327_67 = #1
				param _t327_67
				call label_85
				label_180:
				_t328_67 = ReturnVal
				goto label_178
				label_177:
				label_178:
				_t329_58 = next_process_58 * #4
				_t330_58 = all_processes_0 + _t329_58
				next_id_58 = *_t330_58
				asm "load" "R11" next_id_58 
				_t331_58 = #1
				_t332_58 = next_process_58 == _t331_58
				if ( _t332_58 == #0 ) goto label_181
				asm "processReturnExit" "dummy" next_id_58 
				asm "switch" "1" next_id_58 
				goto label_182
				label_181:
				_t333_58 = #2
				_t334_58 = next_process_58 == _t333_58
				if ( _t334_58 == #0 ) goto label_183
				asm "processReturnExit" "dummy" next_id_58 
				asm "switch" "2" next_id_58 
				goto label_182
				label_183:
				_t335_58 = #3
				_t336_58 = next_process_58 == _t335_58
				if ( _t336_58 == #0 ) goto label_184
				asm "processReturnExit" "dummy" next_id_58 
				asm "switch" "3" next_id_58 
				goto label_182
				label_184:
				_t337_58 = #4
				_t338_58 = next_process_58 == _t337_58
				if ( _t338_58 == #0 ) goto label_185
				asm "processReturnExit" "dummy" next_id_58 
				asm "switch" "4" next_id_58 
				goto label_182
				label_185:
				label_182:
				_t339_58 = #0
				Return _t339_58

		function Name = fork
			label = label_186
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				process		int			72		
				i		int			72		
				core		int			72		
				prompt		*char			75		
				len		int			75		
				id		int			72		
				proc_reg		*int			72		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t340		int			72		
				_t341		int			73		
				_t342		int			73		
				_t343		bool			73		
				_t344		int			73		
				_t345		int			73		
				_t346		*int			73		
				_t347		int			73		
				_t348		bool			73		
				_t349		int			72		
				_t350		bool			72		
				_t351		*char			75		
				_t352		int			75		
				_t353		int			75		
				_t354		int			75		
				_t355		int			75		
				_t356		int			75		
				_t357		int			72		
				_t358		*int			72		
				_t359		int			72		
				_t360		bool			72		
				_t361		int			72		
				_t362		bool			72		
				_t363		int			72		
				_t364		bool			72		
				_t365		int			72		
				_t366		bool			72		
				_t367		int			72		
				_t368		bool			72		
				_t369		int			72		
				_t370		int			72		
				_t371		*int			72		
				_t372		int			72		
				_t373		int			72		
				_t374		int			72		
				_t375		*int			72		
				_t376		int			72		
				_t377		int			72		
				_t378		int			72		
				_t379		*int			72		
				_t380		int			72		
				_t381		int			72		
				_t382		int			72		
				_t383		*int			72		
				_t384		int			72		
				_t385		int			72		
				_t386		int			72		
				_t387		*int			72		
				_t388		int			72		
				_t389		int			72		
				_t390		int			72		
				_t391		int			72		
				_t392		int			72		
				_t393		int			72		
				_t394		*int			72		
				_t395		int			72		
				_t396		int			72		
				_t397		int			72		
				_t398		int			72		
				_t399		int			72		
				_t400		bool			72		
				_t401		int			72		
				_t402		bool			72		
				_t403		int			72		
				_t404		bool			72		
				_t405		int			72		
				_t406		bool			72		
				_t407		int			72		
				_t408		bool			72		
				_t409		int			72		
			Code = 
				label_186:
				asm "store" "R11" process_72 
				_t340_72 = #10
				core_72 = _t340_72
				_t341_73 = #1
				i_72 = _t341_73
				label_187:
				_t342_73 = #5
				_t343_73 = i_72 < _t342_73
				if ( _t343_73 == #0 ) goto label_190
				goto label_188
				label_189:
				_t344_73 = i_72
				i_72 = i_72 + #1
				goto label_187
				label_188:
				_t345_73 = i_72 * #4
				_t346_73 = all_processes_0 + _t345_73
				_t347_73 = #0
				_t348_73 = *_t346_73 == _t347_73
				if ( _t348_73 == #0 ) goto label_191
				core_72 = i_72
				goto label_190
				goto label_192
				label_191:
				label_192:
				goto label_189
				label_190:
				_t349_72 = #10
				_t350_72 = core_72 == _t349_72
				if ( _t350_72 == #0 ) goto label_193
				string _t351_75 "Cannot create a process, process overload"
				prompt_75 = _t351_75
				FunctionCall strlen
				param prompt_75
				call label_8
				label_195:
				_t352_75 = ReturnVal
				len_75 = _t352_75
				FunctionCall print_string
				param prompt_75
				param len_75
				_t353_75 = #1
				param _t353_75
				call label_85
				label_196:
				_t354_75 = ReturnVal
				_t355_75 = #0
				len_75 = _t355_75
				asm "forkReturn" "dummy" len_75 
				_t356_75 = #0
				Return _t356_75
				goto label_194
				label_193:
				label_194:
				_t357_72 = core_72 * #4
				_t358_72 = all_processes_0 + _t357_72
				*_t358_72 = pid_0
				id_72 = pid_0
				pid_0 = pid_0 + #1
				_t359_72 = #0
				_t360_72 = core_72 == _t359_72
				if ( _t360_72 == #0 ) goto label_197
				proc_reg_72 = os_reg_0
				goto label_198
				label_197:
				_t361_72 = #1
				_t362_72 = core_72 == _t361_72
				if ( _t362_72 == #0 ) goto label_199
				proc_reg_72 = p1_reg_0
				goto label_198
				label_199:
				_t363_72 = #2
				_t364_72 = core_72 == _t363_72
				if ( _t364_72 == #0 ) goto label_200
				proc_reg_72 = p2_reg_0
				goto label_198
				label_200:
				_t365_72 = #3
				_t366_72 = core_72 == _t365_72
				if ( _t366_72 == #0 ) goto label_201
				proc_reg_72 = p3_reg_0
				goto label_198
				label_201:
				_t367_72 = #4
				_t368_72 = core_72 == _t367_72
				if ( _t368_72 == #0 ) goto label_202
				proc_reg_72 = p4_reg_0
				goto label_198
				label_202:
				label_198:
				_t369_72 = #1
				_t370_72 = _t369_72 * #4
				_t371_72 = proc_reg_72 + _t370_72
				_t372_72 = #0
				*_t371_72 = _t372_72
				_t373_72 = #2
				_t374_72 = _t373_72 * #4
				_t375_72 = proc_reg_72 + _t374_72
				_t376_72 = #0
				*_t375_72 = _t376_72
				_t377_72 = #3
				_t378_72 = _t377_72 * #4
				_t379_72 = proc_reg_72 + _t378_72
				_t380_72 = #0
				*_t379_72 = _t380_72
				_t381_72 = #4
				_t382_72 = _t381_72 * #4
				_t383_72 = proc_reg_72 + _t382_72
				_t384_72 = #0
				*_t383_72 = _t384_72
				_t385_72 = #5
				_t386_72 = _t385_72 * #4
				_t387_72 = proc_reg_72 + _t386_72
				_t388_72 = #55000
				_t389_72 = #5000
				_t390_72 = core_72 * _t389_72
				_t391_72 = _t388_72 + _t390_72
				*_t387_72 = _t391_72
				_t392_72 = #6
				_t393_72 = _t392_72 * #4
				_t394_72 = proc_reg_72 + _t393_72
				_t395_72 = #53000
				_t396_72 = #5000
				_t397_72 = core_72 * _t396_72
				_t398_72 = _t395_72 + _t397_72
				*_t394_72 = _t398_72
				_t399_72 = #1001
				_t400_72 = process_72 == _t399_72
				if ( _t400_72 == #0 ) goto label_203
				asm "fork" "start_shell" proc_reg_72 
				goto label_204
				label_203:
				_t401_72 = #1002
				_t402_72 = process_72 == _t401_72
				if ( _t402_72 == #0 ) goto label_205
				asm "fork" "print_A" proc_reg_72 
				goto label_204
				label_205:
				_t403_72 = #1003
				_t404_72 = process_72 == _t403_72
				if ( _t404_72 == #0 ) goto label_206
				asm "fork" "print_B" proc_reg_72 
				goto label_204
				label_206:
				_t405_72 = #1004
				_t406_72 = process_72 == _t405_72
				if ( _t406_72 == #0 ) goto label_207
				asm "fork" "print_C" proc_reg_72 
				goto label_204
				label_207:
				_t407_72 = #1005
				_t408_72 = process_72 == _t407_72
				if ( _t408_72 == #0 ) goto label_208
				asm "fork" "print_D" proc_reg_72 
				goto label_204
				label_208:
				label_204:
				asm "forkReturn" "dummy" id_72 
				_t409_72 = #0
				Return _t409_72

		function Name = create_process
			label = label_209
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
				process		int			86		
			localVariables : 
				Name	DataType	Scope	pointer	
				cur_core		int			86		
				i		int			86		
				id		int			86		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t410		int			86		
				_t411		int			87		
				_t412		int			87		
				_t413		bool			87		
				_t414		int			87		
				_t415		int			87		
				_t416		*int			87		
				_t417		bool			87		
				_t418		int			86		
				_t419		bool			86		
				_t420		int			86		
				_t421		bool			86		
				_t422		int			86		
				_t423		bool			86		
				_t424		int			86		
				_t425		bool			86		
				_t426		int			86		
				_t427		bool			86		
			Code = 
				label_209:
				prev_process_0 = current_process_0
				_t410_86 = #10
				cur_core_86 = _t410_86
				_t411_87 = #0
				i_86 = _t411_87
				label_210:
				_t412_87 = #5
				_t413_87 = i_86 < _t412_87
				if ( _t413_87 == #0 ) goto label_213
				goto label_211
				label_212:
				_t414_87 = i_86
				i_86 = i_86 + #1
				goto label_210
				label_211:
				_t415_87 = i_86 * #4
				_t416_87 = all_processes_0 + _t415_87
				_t417_87 = *_t416_87 == current_process_0
				if ( _t417_87 == #0 ) goto label_214
				cur_core_86 = i_86
				goto label_213
				goto label_215
				label_214:
				label_215:
				goto label_212
				label_213:
				_t418_86 = #0
				_t419_86 = cur_core_86 == _t418_86
				if ( _t419_86 == #0 ) goto label_216
				from_proc_0 = os_reg_0
				goto label_217
				label_216:
				_t420_86 = #1
				_t421_86 = cur_core_86 == _t420_86
				if ( _t421_86 == #0 ) goto label_218
				from_proc_0 = p1_reg_0
				goto label_217
				label_218:
				_t422_86 = #2
				_t423_86 = cur_core_86 == _t422_86
				if ( _t423_86 == #0 ) goto label_219
				from_proc_0 = p2_reg_0
				goto label_217
				label_219:
				_t424_86 = #3
				_t425_86 = cur_core_86 == _t424_86
				if ( _t425_86 == #0 ) goto label_220
				from_proc_0 = p3_reg_0
				goto label_217
				label_220:
				_t426_86 = #4
				_t427_86 = cur_core_86 == _t426_86
				if ( _t427_86 == #0 ) goto label_221
				from_proc_0 = p4_reg_0
				goto label_217
				label_221:
				label_217:
				asm "forkEnter" "dummy" process_86 
				asm "label" "create_process_return:" process_86 
				asm "store" "R11" id_86 
				Return id_86

		function Name = switch
			label = label_222
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				pr_process		int			94		
				curIndex		int			94		
				i		int			94		
				prompt1		*char			101		
				len		int			101		
				next_process		int			94		
				prompt1		*char			107		
				len		int			107		
				next_id		int			94		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t428		int			94		
				_t429		int			95		
				_t430		int			95		
				_t431		bool			95		
				_t432		int			95		
				_t433		int			95		
				_t434		*int			95		
				_t435		bool			95		
				_t436		int			94		
				_t437		bool			94		
				_t438		int			94		
				_t439		bool			94		
				_t440		int			94		
				_t441		bool			94		
				_t442		int			94		
				_t443		bool			94		
				_t444		int			94		
				_t445		int			94		
				_t446		*int			94		
				_t447		int			94		
				_t448		int			94		
				_t449		*int			94		
				_t450		int			94		
				_t451		int			94		
				_t452		*int			94		
				_t453		int			94		
				_t454		int			94		
				_t455		*int			94		
				_t456		int			94		
				_t457		int			94		
				_t458		*int			94		
				_t459		int			94		
				_t460		int			94		
				_t461		*int			94		
				_t462		int			94		
				_t463		int			94		
				_t464		*int			94		
				_t465		int			94		
				_t466		int			94		
				_t467		*int			94		
				_t468		int			94		
				_t469		int			94		
				_t470		*int			94		
				_t471		int			94		
				_t472		int			94		
				_t473		*int			94		
				_t474		int			94		
				_t475		int			94		
				_t476		*int			94		
				_t477		int			94		
				_t478		int			94		
				_t479		*int			94		
				_t480		int			94		
				_t481		int			94		
				_t482		*int			94		
				_t483		int			94		
				_t484		int			94		
				_t485		*int			94		
				_t486		int			94		
				_t487		bool			94		
				_t488		*char			101		
				_t489		int			101		
				_t490		int			101		
				_t491		int			101		
				_t492		int			94		
				_t493		int			102		
				_t494		int			102		
				_t495		int			102		
				_t496		bool			102		
				_t497		int			102		
				_t498		int			102		
				_t499		*int			102		
				_t500		int			102		
				_t501		bool			102		
				_t502		int			94		
				_t503		bool			94		
				_t504		int			105		
				_t505		bool			105		
				_t506		int			105		
				_t507		int			105		
				_t508		*int			105		
				_t509		int			105		
				_t510		bool			105		
				_t511		int			94		
				_t512		bool			94		
				_t513		*char			107		
				_t514		int			107		
				_t515		int			107		
				_t516		int			107		
				_t517		int			94		
				_t518		*int			94		
				_t519		int			94		
				_t520		bool			94		
				_t521		int			94		
				_t522		bool			94		
				_t523		int			94		
				_t524		bool			94		
				_t525		int			94		
				_t526		bool			94		
				_t527		int			94		
			Code = 
				label_222:
				asm "label" "switch_begin:" pid_0 
				asm "switchEnter" "dummy" pid_0 
				asm "store" "R11" pr_process_94 
				_t428_94 = #10
				curIndex_94 = _t428_94
				_t429_95 = #1
				i_94 = _t429_95
				label_223:
				_t430_95 = #5
				_t431_95 = i_94 < _t430_95
				if ( _t431_95 == #0 ) goto label_226
				goto label_224
				label_225:
				_t432_95 = i_94
				i_94 = i_94 + #1
				goto label_223
				label_224:
				_t433_95 = i_94 * #4
				_t434_95 = all_processes_0 + _t433_95
				_t435_95 = pr_process_94 == *_t434_95
				if ( _t435_95 == #0 ) goto label_227
				curIndex_94 = i_94
				goto label_228
				label_227:
				label_228:
				goto label_225
				label_226:
				_t436_94 = #1
				_t437_94 = curIndex_94 == _t436_94
				if ( _t437_94 == #0 ) goto label_229
				from_proc_0 = p1_reg_0
				goto label_230
				label_229:
				_t438_94 = #2
				_t439_94 = curIndex_94 == _t438_94
				if ( _t439_94 == #0 ) goto label_231
				from_proc_0 = p2_reg_0
				goto label_230
				label_231:
				_t440_94 = #3
				_t441_94 = curIndex_94 == _t440_94
				if ( _t441_94 == #0 ) goto label_232
				from_proc_0 = p3_reg_0
				goto label_230
				label_232:
				_t442_94 = #4
				_t443_94 = curIndex_94 == _t442_94
				if ( _t443_94 == #0 ) goto label_233
				from_proc_0 = p4_reg_0
				goto label_230
				label_233:
				label_230:
				_t444_94 = #0
				_t445_94 = _t444_94 * #4
				_t446_94 = from_proc_0 + _t445_94
				_t447_94 = #0
				_t448_94 = _t447_94 * #4
				_t449_94 = temp_reg_0 + _t448_94
				*_t446_94 = *_t449_94
				_t450_94 = #1
				_t451_94 = _t450_94 * #4
				_t452_94 = from_proc_0 + _t451_94
				_t453_94 = #1
				_t454_94 = _t453_94 * #4
				_t455_94 = temp_reg_0 + _t454_94
				*_t452_94 = *_t455_94
				_t456_94 = #2
				_t457_94 = _t456_94 * #4
				_t458_94 = from_proc_0 + _t457_94
				_t459_94 = #2
				_t460_94 = _t459_94 * #4
				_t461_94 = temp_reg_0 + _t460_94
				*_t458_94 = *_t461_94
				_t462_94 = #3
				_t463_94 = _t462_94 * #4
				_t464_94 = from_proc_0 + _t463_94
				_t465_94 = #3
				_t466_94 = _t465_94 * #4
				_t467_94 = temp_reg_0 + _t466_94
				*_t464_94 = *_t467_94
				_t468_94 = #4
				_t469_94 = _t468_94 * #4
				_t470_94 = from_proc_0 + _t469_94
				_t471_94 = #4
				_t472_94 = _t471_94 * #4
				_t473_94 = temp_reg_0 + _t472_94
				*_t470_94 = *_t473_94
				_t474_94 = #5
				_t475_94 = _t474_94 * #4
				_t476_94 = from_proc_0 + _t475_94
				_t477_94 = #5
				_t478_94 = _t477_94 * #4
				_t479_94 = temp_reg_0 + _t478_94
				*_t476_94 = *_t479_94
				_t480_94 = #6
				_t481_94 = _t480_94 * #4
				_t482_94 = from_proc_0 + _t481_94
				_t483_94 = #6
				_t484_94 = _t483_94 * #4
				_t485_94 = temp_reg_0 + _t484_94
				*_t482_94 = *_t485_94
				_t486_94 = #10
				_t487_94 = curIndex_94 == _t486_94
				if ( _t487_94 == #0 ) goto label_234
				string _t488_101 "Some problem occured, system crashing"
				prompt1_101 = _t488_101
				FunctionCall strlen
				param prompt1_101
				call label_8
				label_236:
				_t489_101 = ReturnVal
				len_101 = _t489_101
				FunctionCall print_string
				param prompt1_101
				param len_101
				_t490_101 = #1
				param _t490_101
				call label_85
				label_237:
				_t491_101 = ReturnVal
				goto label_235
				label_234:
				label_235:
				_t492_94 = #10
				next_process_94 = _t492_94
				_t493_102 = #1
				_t494_102 = curIndex_94 + _t493_102
				i_94 = _t494_102
				label_238:
				_t495_102 = #5
				_t496_102 = i_94 < _t495_102
				if ( _t496_102 == #0 ) goto label_241
				goto label_239
				label_240:
				_t497_102 = i_94
				i_94 = i_94 + #1
				goto label_238
				label_239:
				_t498_102 = i_94 * #4
				_t499_102 = all_processes_0 + _t498_102
				_t500_102 = #0
				_t501_102 = *_t499_102 != _t500_102
				if ( _t501_102 == #0 ) goto label_242
				next_process_94 = i_94
				goto label_241
				goto label_243
				label_242:
				label_243:
				goto label_240
				label_241:
				_t502_94 = #10
				_t503_94 = next_process_94 == _t502_94
				if ( _t503_94 == #0 ) goto label_244
				_t504_105 = #1
				i_94 = _t504_105
				label_246:
				_t505_105 = i_94 <= curIndex_94
				if ( _t505_105 == #0 ) goto label_249
				goto label_247
				label_248:
				_t506_105 = i_94
				i_94 = i_94 + #1
				goto label_246
				label_247:
				_t507_105 = i_94 * #4
				_t508_105 = all_processes_0 + _t507_105
				_t509_105 = #0
				_t510_105 = *_t508_105 != _t509_105
				if ( _t510_105 == #0 ) goto label_250
				next_process_94 = i_94
				goto label_249
				goto label_251
				label_250:
				label_251:
				goto label_248
				label_249:
				goto label_245
				label_244:
				label_245:
				_t511_94 = #10
				_t512_94 = next_process_94 == _t511_94
				if ( _t512_94 == #0 ) goto label_252
				string _t513_107 "Some problem occured, system crashing"
				prompt1_101 = _t513_107
				FunctionCall strlen
				param prompt1_101
				call label_8
				label_254:
				_t514_107 = ReturnVal
				len_101 = _t514_107
				FunctionCall print_string
				param prompt1_101
				param len_101
				_t515_107 = #1
				param _t515_107
				call label_85
				label_255:
				_t516_107 = ReturnVal
				goto label_253
				label_252:
				label_253:
				_t517_94 = next_process_94 * #4
				_t518_94 = all_processes_0 + _t517_94
				next_id_94 = *_t518_94
				asm "load" "R11" next_id_94 
				_t519_94 = #1
				_t520_94 = next_process_94 == _t519_94
				if ( _t520_94 == #0 ) goto label_256
				asm "switchReturn" "dummy" next_id_94 
				asm "switch" "1" next_id_94 
				goto label_257
				label_256:
				_t521_94 = #2
				_t522_94 = next_process_94 == _t521_94
				if ( _t522_94 == #0 ) goto label_258
				asm "switchReturn" "dummy" next_id_94 
				asm "switch" "2" next_id_94 
				goto label_257
				label_258:
				_t523_94 = #3
				_t524_94 = next_process_94 == _t523_94
				if ( _t524_94 == #0 ) goto label_259
				asm "switchReturn" "dummy" next_id_94 
				asm "switch" "3" next_id_94 
				goto label_257
				label_259:
				_t525_94 = #4
				_t526_94 = next_process_94 == _t525_94
				if ( _t526_94 == #0 ) goto label_260
				asm "switchReturn" "dummy" next_id_94 
				asm "switch" "4" next_id_94 
				goto label_257
				label_260:
				label_257:
				_t527_94 = #0
				Return _t527_94

		function Name = print_A
			label = label_261
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				i		int			112		
				k		int			112		
				j		int			112		
				a		*char			112		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t528		*char			112		
				_t529		int			113		
				_t530		int			113		
				_t531		bool			113		
				_t532		int			113		
				_t533		int			114		
				_t534		int			114		
				_t535		bool			114		
				_t536		int			114		
				_t537		int			114		
				_t538		int			113		
				_t539		int			113		
				_t540		int			113		
				_t541		int			112		
			Code = 
				label_261:
				string _t528_112 "a"
				a_112 = _t528_112
				_t529_113 = #0
				i_112 = _t529_113
				label_262:
				_t530_113 = #10
				_t531_113 = i_112 < _t530_113
				if ( _t531_113 == #0 ) goto label_265
				goto label_263
				label_264:
				_t532_113 = i_112
				i_112 = i_112 + #1
				goto label_262
				label_263:
				_t533_114 = #0
				j_112 = _t533_114
				label_266:
				_t534_114 = #10000
				_t535_114 = j_112 < _t534_114
				if ( _t535_114 == #0 ) goto label_269
				goto label_267
				label_268:
				_t536_114 = j_112
				j_112 = j_112 + #1
				goto label_266
				label_267:
				_t537_114 = #0
				k_112 = _t537_114
				goto label_268
				label_269:
				FunctionCall print_string
				param a_112
				_t538_113 = #1
				param _t538_113
				_t539_113 = #0
				param _t539_113
				call label_85
				label_270:
				_t540_113 = ReturnVal
				goto label_264
				label_265:
				_t541_112 = #0
				Return _t541_112

		function Name = print_B
			label = label_271
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				i		int			115		
				a		*char			115		
				k		int			115		
				j		int			115		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t542		*char			115		
				_t543		int			116		
				_t544		int			116		
				_t545		bool			116		
				_t546		int			116		
				_t547		int			117		
				_t548		int			117		
				_t549		bool			117		
				_t550		int			117		
				_t551		int			117		
				_t552		int			116		
				_t553		int			116		
				_t554		int			116		
				_t555		bool			118		
				_t556		int			118		
				_t557		int			115		
			Code = 
				label_271:
				string _t542_115 "b"
				a_115 = _t542_115
				_t543_116 = #0
				i_115 = _t543_116
				label_272:
				_t544_116 = #100
				_t545_116 = i_115 < _t544_116
				if ( _t545_116 == #0 ) goto label_275
				goto label_273
				label_274:
				_t546_116 = i_115
				i_115 = i_115 + #1
				goto label_272
				label_273:
				_t547_117 = #0
				j_115 = _t547_117
				label_276:
				_t548_117 = #10000
				_t549_117 = j_115 < _t548_117
				if ( _t549_117 == #0 ) goto label_279
				goto label_277
				label_278:
				_t550_117 = j_115
				j_115 = j_115 + #1
				goto label_276
				label_277:
				_t551_117 = #0
				k_115 = _t551_117
				goto label_278
				label_279:
				FunctionCall print_string
				param a_115
				_t552_116 = #1
				param _t552_116
				_t553_116 = #0
				param _t553_116
				call label_85
				label_280:
				_t554_116 = ReturnVal
				goto label_274
				label_275:
				label_281:
				_t555_118 = #1
				if ( _t555_118 == #0 ) goto label_284
				goto label_282
				label_283:
				goto label_281
				label_282:
				_t556_118 = #0
				i_115 = _t556_118
				goto label_283
				label_284:
				_t557_115 = #0
				Return _t557_115

		function Name = print_C
			label = label_285
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				i		int			119		
				k		int			119		
				j		int			119		
				a		*char			119		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t558		*char			119		
				_t559		int			120		
				_t560		int			120		
				_t561		bool			120		
				_t562		int			120		
				_t563		int			121		
				_t564		int			121		
				_t565		bool			121		
				_t566		int			121		
				_t567		int			121		
				_t568		int			120		
				_t569		int			120		
				_t570		int			120		
				_t571		bool			122		
				_t572		int			122		
				_t573		int			119		
			Code = 
				label_285:
				string _t558_119 "c"
				a_119 = _t558_119
				_t559_120 = #0
				i_119 = _t559_120
				label_286:
				_t560_120 = #100
				_t561_120 = i_119 < _t560_120
				if ( _t561_120 == #0 ) goto label_289
				goto label_287
				label_288:
				_t562_120 = i_119
				i_119 = i_119 + #1
				goto label_286
				label_287:
				_t563_121 = #0
				j_119 = _t563_121
				label_290:
				_t564_121 = #10000
				_t565_121 = j_119 < _t564_121
				if ( _t565_121 == #0 ) goto label_293
				goto label_291
				label_292:
				_t566_121 = j_119
				j_119 = j_119 + #1
				goto label_290
				label_291:
				_t567_121 = #0
				k_119 = _t567_121
				goto label_292
				label_293:
				FunctionCall print_string
				param a_119
				_t568_120 = #1
				param _t568_120
				_t569_120 = #0
				param _t569_120
				call label_85
				label_294:
				_t570_120 = ReturnVal
				goto label_288
				label_289:
				label_295:
				_t571_122 = #1
				if ( _t571_122 == #0 ) goto label_298
				goto label_296
				label_297:
				goto label_295
				label_296:
				_t572_122 = #0
				i_119 = _t572_122
				goto label_297
				label_298:
				_t573_119 = #0
				Return _t573_119

		function Name = print_D
			label = label_299
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				i		int			123		
				k		int			123		
				j		int			123		
				a		*char			123		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t574		*char			123		
				_t575		int			124		
				_t576		int			124		
				_t577		bool			124		
				_t578		int			124		
				_t579		int			125		
				_t580		int			125		
				_t581		bool			125		
				_t582		int			125		
				_t583		int			125		
				_t584		int			124		
				_t585		int			124		
				_t586		int			124		
				_t587		bool			126		
				_t588		int			126		
				_t589		int			123		
			Code = 
				label_299:
				string _t574_123 "d"
				a_123 = _t574_123
				_t575_124 = #0
				i_123 = _t575_124
				label_300:
				_t576_124 = #100
				_t577_124 = i_123 < _t576_124
				if ( _t577_124 == #0 ) goto label_303
				goto label_301
				label_302:
				_t578_124 = i_123
				i_123 = i_123 + #1
				goto label_300
				label_301:
				_t579_125 = #0
				j_123 = _t579_125
				label_304:
				_t580_125 = #10000
				_t581_125 = j_123 < _t580_125
				if ( _t581_125 == #0 ) goto label_307
				goto label_305
				label_306:
				_t582_125 = j_123
				j_123 = j_123 + #1
				goto label_304
				label_305:
				_t583_125 = #0
				k_123 = _t583_125
				goto label_306
				label_307:
				FunctionCall print_string
				param a_123
				_t584_124 = #1
				param _t584_124
				_t585_124 = #0
				param _t585_124
				call label_85
				label_308:
				_t586_124 = ReturnVal
				goto label_302
				label_303:
				label_309:
				_t587_126 = #1
				if ( _t587_126 == #0 ) goto label_312
				goto label_310
				label_311:
				goto label_309
				label_310:
				_t588_126 = #0
				i_123 = _t588_126
				goto label_311
				label_312:
				_t589_123 = #0
				Return _t589_123

		function Name = fibonacci
			label = label_313
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				prompt		*char			127		
				len		int			127		
				num		int			127		
				i		int			130		
				a		int			130		
				b		int			130		
				temp		int			131		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t590		*char			127		
				_t591		int			127		
				_t592		int			127		
				_t593		int			127		
				_t594		int			127		
				_t595		*char			127		
				_t596		int			127		
				_t597		int			127		
				_t598		int			127		
				_t599		int			127		
				_t600		int			127		
				_t601		*char			127		
				_t602		int			127		
				_t603		int			127		
				_t604		int			127		
				_t605		int			127		
				_t606		bool			127		
				_t607		int			128		
				_t608		int			128		
				_t609		int			128		
				_t610		int			127		
				_t611		bool			127		
				_t612		int			129		
				_t613		int			129		
				_t614		int			129		
				_t615		int			130		
				_t616		int			130		
				_t617		int			131		
				_t618		bool			131		
				_t619		int			131		
				_t620		int			131		
				_t621		int			130		
				_t622		int			130		
				_t623		int			127		
			Code = 
				label_313:
				string _t590_127 "Enter n"
				prompt_127 = _t590_127
				FunctionCall strlen
				param prompt_127
				call label_8
				label_314:
				_t591_127 = ReturnVal
				len_127 = _t591_127
				FunctionCall print_string
				param prompt_127
				param len_127
				_t592_127 = #1
				param _t592_127
				call label_85
				label_315:
				_t593_127 = ReturnVal
				FunctionCall get_num
				call label_118
				label_316:
				_t594_127 = ReturnVal
				num_127 = _t594_127
				string _t595_127 "The "
				prompt_127 = _t595_127
				FunctionCall strlen
				param prompt_127
				call label_8
				label_317:
				_t596_127 = ReturnVal
				len_127 = _t596_127
				FunctionCall print_string
				param prompt_127
				param len_127
				_t597_127 = #0
				param _t597_127
				call label_85
				label_318:
				_t598_127 = ReturnVal
				FunctionCall print_num
				param num_127
				_t599_127 = #0
				param _t599_127
				call label_139
				label_319:
				_t600_127 = ReturnVal
				string _t601_127 "th fibonacci number is: "
				prompt_127 = _t601_127
				FunctionCall strlen
				param prompt_127
				call label_8
				label_320:
				_t602_127 = ReturnVal
				len_127 = _t602_127
				FunctionCall print_string
				param prompt_127
				param len_127
				_t603_127 = #0
				param _t603_127
				call label_85
				label_321:
				_t604_127 = ReturnVal
				_t605_127 = #0
				_t606_127 = num_127 == _t605_127
				if ( _t606_127 == #0 ) goto label_322
				FunctionCall print_num
				_t607_128 = #1
				param _t607_128
				_t608_128 = #1
				param _t608_128
				call label_139
				label_324:
				_t609_128 = ReturnVal
				goto label_323
				label_322:
				_t610_127 = #1
				_t611_127 = num_127 == _t610_127
				if ( _t611_127 == #0 ) goto label_325
				FunctionCall print_num
				_t612_129 = #1
				param _t612_129
				_t613_129 = #1
				param _t613_129
				call label_139
				label_326:
				_t614_129 = ReturnVal
				goto label_323
				label_325:
				_t615_130 = #1
				a_130 = _t615_130
				_t616_130 = #1
				b_130 = _t616_130
				_t617_131 = #2
				i_130 = _t617_131
				label_327:
				_t618_131 = i_130 <= num_127
				if ( _t618_131 == #0 ) goto label_330
				goto label_328
				label_329:
				_t619_131 = i_130
				i_130 = i_130 + #1
				goto label_327
				label_328:
				temp_131 = b_130
				b_130 = a_130
				_t620_131 = a_130 + temp_131
				a_130 = _t620_131
				goto label_329
				label_330:
				FunctionCall print_num
				param a_130
				_t621_130 = #1
				param _t621_130
				call label_139
				label_331:
				_t622_130 = ReturnVal
				label_323:
				_t623_127 = #0
				Return _t623_127

		function Name = reverse_string
			label = label_332
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				str_0		int			132		
				str		*char			132		str_0 
				i		int			132		
				clen		int			132		
				prompt		*char			132		
				len		int			132		
				j		int			132		
				temp		char			134		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t624		int			132		
				_t625		int			133		
				_t626		int			133		
				_t627		bool			133		
				_t628		int			133		
				_t629		int			133		
				_t630		*char			133		
				_t631		int			133		
				_t632		*char			132		
				_t633		int			132		
				_t634		int			132		
				_t635		int			132		
				_t636		int			132		
				_t637		int			132		
				_t638		*char			132		
				_t639		int			132		
				_t640		int			132		
				_t641		int			132		
				_t642		int			132		
				_t643		int			132		
				_t644		int			132		
				_t645		int			132		
				_t646		int			132		
				_t647		bool			134		
				_t648		int			134		
				_t649		*char			134		
				_t650		int			134		
				_t651		*char			134		
				_t652		int			134		
				_t653		*char			134		
				_t654		int			134		
				_t655		*char			134		
				_t656		int			134		
				_t657		int			134		
				_t658		*char			132		
				_t659		int			132		
				_t660		int			132		
				_t661		int			132		
				_t662		int			132		
				_t663		int			132		
				_t664		int			132		
			Code = 
				label_332:
				_t624_132 = #30
				str_0_132 = _t624_132
				memory str_132 _t624_132 #1
				_t625_133 = #0
				i_132 = _t625_133
				label_333:
				_t626_133 = #30
				_t627_133 = i_132 < _t626_133
				if ( _t627_133 == #0 ) goto label_336
				goto label_334
				label_335:
				_t628_133 = i_132
				i_132 = i_132 + #1
				goto label_333
				label_334:
				_t629_133 = i_132 * #1
				_t630_133 = str_132 + _t629_133
				_t631_133 = #0
				*_t630_133 = _t631_133
				goto label_335
				label_336:
				string _t632_132 "Enter the String"
				prompt_132 = _t632_132
				FunctionCall strlen
				param prompt_132
				call label_8
				label_337:
				_t633_132 = ReturnVal
				len_132 = _t633_132
				FunctionCall print_string
				param prompt_132
				param len_132
				_t634_132 = #1
				param _t634_132
				call label_85
				label_338:
				_t635_132 = ReturnVal
				FunctionCall get_line
				call label_53
				label_339:
				_t636_132 = ReturnVal
				FunctionCall get_string
				param str_132
				call label_108
				label_340:
				_t637_132 = ReturnVal
				clen_132 = _t637_132
				string _t638_132 "The Reverse of "
				prompt_132 = _t638_132
				FunctionCall strlen
				param prompt_132
				call label_8
				label_341:
				_t639_132 = ReturnVal
				len_132 = _t639_132
				FunctionCall print_string
				param prompt_132
				param len_132
				_t640_132 = #0
				param _t640_132
				call label_85
				label_342:
				_t641_132 = ReturnVal
				FunctionCall print_string
				param str_132
				param clen_132
				_t642_132 = #0
				param _t642_132
				call label_85
				label_343:
				_t643_132 = ReturnVal
				_t644_132 = #0
				i_132 = _t644_132
				_t645_132 = #1
				_t646_132 = clen_132 - _t645_132
				j_132 = _t646_132
				label_344:
				_t647_134 = i_132 < j_132
				if ( _t647_134 == #0 ) goto label_347
				goto label_345
				label_346:
				goto label_344
				label_345:
				_t648_134 = i_132 * #1
				_t649_134 = str_132 + _t648_134
				temp_134 = *_t649_134
				_t650_134 = i_132 * #1
				_t651_134 = str_132 + _t650_134
				_t652_134 = j_132 * #1
				_t653_134 = str_132 + _t652_134
				*_t651_134 = *_t653_134
				_t654_134 = j_132 * #1
				_t655_134 = str_132 + _t654_134
				*_t655_134 = temp_134
				_t656_134 = i_132
				i_132 = i_132 + #1
				_t657_134 = j_132
				j_132 = j_132 - #1
				goto label_346
				label_347:
				string _t658_132 " is "
				prompt_132 = _t658_132
				FunctionCall strlen
				param prompt_132
				call label_8
				label_348:
				_t659_132 = ReturnVal
				len_132 = _t659_132
				FunctionCall print_string
				param prompt_132
				param len_132
				_t660_132 = #0
				param _t660_132
				call label_85
				label_349:
				_t661_132 = ReturnVal
				FunctionCall print_string
				param str_132
				param clen_132
				_t662_132 = #1
				param _t662_132
				call label_85
				label_350:
				_t663_132 = ReturnVal
				_t664_132 = #0
				Return _t664_132

		function Name = prime
			label = label_351
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				prompt		*char			135		
				len		int			135		
				n		int			135		
				b		int			135		
				i		int			135		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t665		*char			135		
				_t666		int			135		
				_t667		int			135		
				_t668		int			135		
				_t669		int			135		
				_t670		int			135		
				_t671		int			136		
				_t672		int			136		
				_t673		int			136		
				_t674		bool			136		
				_t675		int			136		
				_t676		bool			136		
				_t677		bool			136		
				_t678		int			136		
				_t679		int			136		
				_t680		int			136		
				_t681		bool			136		
				_t682		int			137		
				_t683		int			135		
				_t684		bool			135		
				_t685		int			138		
				_t686		int			138		
				_t687		*char			138		
				_t688		int			138		
				_t689		int			138		
				_t690		int			138		
				_t691		int			139		
				_t692		int			139		
				_t693		*char			139		
				_t694		int			139		
				_t695		int			139		
				_t696		int			139		
				_t697		int			135		
			Code = 
				label_351:
				string _t665_135 "Enter the number"
				prompt_135 = _t665_135
				FunctionCall strlen
				param prompt_135
				call label_8
				label_352:
				_t666_135 = ReturnVal
				len_135 = _t666_135
				FunctionCall print_string
				param prompt_135
				param len_135
				_t667_135 = #1
				param _t667_135
				call label_85
				label_353:
				_t668_135 = ReturnVal
				FunctionCall get_num
				call label_118
				label_354:
				_t669_135 = ReturnVal
				n_135 = _t669_135
				_t670_135 = #1
				b_135 = _t670_135
				_t671_136 = #2
				i_135 = _t671_136
				label_355:
				_t672_136 = #2
				_t673_136 = n_135 / _t672_136
				_t674_136 = i_135 <= _t673_136
				_t675_136 = #2
				_t676_136 = n_135 != _t675_136
				_t677_136 = _t674_136 && _t676_136
				if ( _t677_136 == #0 ) goto label_358
				goto label_356
				label_357:
				_t678_136 = i_135
				i_135 = i_135 + #1
				goto label_355
				label_356:
				_t679_136 = n_135 % i_135
				_t680_136 = #0
				_t681_136 = _t679_136 == _t680_136
				if ( _t681_136 == #0 ) goto label_359
				_t682_137 = #0
				b_135 = _t682_137
				goto label_358
				goto label_360
				label_359:
				label_360:
				goto label_357
				label_358:
				_t683_135 = #1
				_t684_135 = b_135 == _t683_135
				if ( _t684_135 == #0 ) goto label_361
				FunctionCall print_num
				param n_135
				_t685_138 = #0
				param _t685_138
				call label_139
				label_363:
				_t686_138 = ReturnVal
				string _t687_138 " is a prime number"
				prompt_135 = _t687_138
				FunctionCall strlen
				param prompt_135
				call label_8
				label_364:
				_t688_138 = ReturnVal
				len_135 = _t688_138
				FunctionCall print_string
				param prompt_135
				param len_135
				_t689_138 = #1
				param _t689_138
				call label_85
				label_365:
				_t690_138 = ReturnVal
				goto label_362
				label_361:
				FunctionCall print_num
				param n_135
				_t691_139 = #0
				param _t691_139
				call label_139
				label_366:
				_t692_139 = ReturnVal
				string _t693_139 " is not a prime number"
				prompt_135 = _t693_139
				FunctionCall strlen
				param prompt_135
				call label_8
				label_367:
				_t694_139 = ReturnVal
				len_135 = _t694_139
				FunctionCall print_string
				param prompt_135
				param len_135
				_t695_139 = #1
				param _t695_139
				call label_85
				label_368:
				_t696_139 = ReturnVal
				label_362:
				_t697_135 = #0
				Return _t697_135

		function Name = partition
			label = label_369
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
				arr		*int			140		
				low		int			140		
				high		int			140		
			localVariables : 
				Name	DataType	Scope	pointer	
				pivot		int			140		
				i		int			140		
				j		int			140		
				temp		int			142		
				t		int			140		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t698		int			140		
				_t699		*int			140		
				_t700		int			140		
				_t701		int			140		
				_t702		bool			141		
				_t703		int			141		
				_t704		int			141		
				_t705		*int			141		
				_t706		bool			141		
				_t707		int			142		
				_t708		int			142		
				_t709		*int			142		
				_t710		int			142		
				_t711		*int			142		
				_t712		int			142		
				_t713		*int			142		
				_t714		int			142		
				_t715		*int			142		
				_t716		int			140		
				_t717		int			140		
				_t718		int			140		
				_t719		*int			140		
				_t720		int			140		
				_t721		int			140		
				_t722		int			140		
				_t723		*int			140		
				_t724		int			140		
				_t725		*int			140		
				_t726		int			140		
				_t727		*int			140		
				_t728		int			140		
				_t729		int			140		
			Code = 
				label_369:
				_t698_140 = high_140 * #4
				_t699_140 = arr_140 + _t698_140
				pivot_140 = *_t699_140
				_t700_140 = #1
				_t701_140 = low_140 - _t700_140
				i_140 = _t701_140
				j_140 = low_140
				label_370:
				_t702_141 = j_140 <= high_140
				if ( _t702_141 == #0 ) goto label_373
				goto label_371
				label_372:
				_t703_141 = j_140
				j_140 = j_140 + #1
				goto label_370
				label_371:
				_t704_141 = j_140 * #4
				_t705_141 = arr_140 + _t704_141
				_t706_141 = *_t705_141 < pivot_140
				if ( _t706_141 == #0 ) goto label_374
				_t707_142 = i_140
				i_140 = i_140 + #1
				_t708_142 = i_140 * #4
				_t709_142 = arr_140 + _t708_142
				temp_142 = *_t709_142
				_t710_142 = i_140 * #4
				_t711_142 = arr_140 + _t710_142
				_t712_142 = j_140 * #4
				_t713_142 = arr_140 + _t712_142
				*_t711_142 = *_t713_142
				_t714_142 = j_140 * #4
				_t715_142 = arr_140 + _t714_142
				*_t715_142 = temp_142
				goto label_375
				label_374:
				label_375:
				goto label_372
				label_373:
				_t716_140 = #1
				_t717_140 = i_140 + _t716_140
				_t718_140 = _t717_140 * #4
				_t719_140 = arr_140 + _t718_140
				t_140 = *_t719_140
				_t720_140 = #1
				_t721_140 = i_140 + _t720_140
				_t722_140 = _t721_140 * #4
				_t723_140 = arr_140 + _t722_140
				_t724_140 = high_140 * #4
				_t725_140 = arr_140 + _t724_140
				*_t723_140 = *_t725_140
				_t726_140 = high_140 * #4
				_t727_140 = arr_140 + _t726_140
				*_t727_140 = t_140
				_t728_140 = #1
				_t729_140 = i_140 + _t728_140
				Return _t729_140

		function Name = quick_sort
			label = label_376
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
				arr		*int			143		
				low		int			143		
				high		int			143		
			localVariables : 
				Name	DataType	Scope	pointer	
				pi		int			144		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t730		bool			143		
				_t731		int			144		
				_t732		int			144		
				_t733		int			144		
				_t734		int			144		
				_t735		int			144		
				_t736		int			144		
				_t737		int			144		
				_t738		int			143		
			Code = 
				label_376:
				_t730_143 = low_143 < high_143
				if ( _t730_143 == #0 ) goto label_377
				FunctionCall partition
				param arr_143
				param low_143
				param high_143
				call label_369
				label_379:
				_t731_144 = ReturnVal
				pi_144 = _t731_144
				FunctionCall quick_sort
				param arr_143
				param low_143
				_t732_144 = #1
				_t733_144 = pi_144 - _t732_144
				param _t733_144
				call label_376
				label_380:
				_t734_144 = ReturnVal
				FunctionCall quick_sort
				param arr_143
				_t735_144 = #1
				_t736_144 = pi_144 + _t735_144
				param _t736_144
				param high_143
				call label_376
				label_381:
				_t737_144 = ReturnVal
				goto label_378
				label_377:
				label_378:
				_t738_143 = #0
				Return _t738_143

		function Name = sort
			label = label_382
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				n		int			145		
				prompt		*char			145		
				len		int			145		
				arr_0		int			145		
				arr		*int			145		arr_0 
				i		int			145		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t739		*char			145		
				_t740		int			145		
				_t741		int			145		
				_t742		int			145		
				_t743		int			145		
				_t744		*char			145		
				_t745		int			145		
				_t746		int			145		
				_t747		int			145		
				_t748		int			146		
				_t749		bool			146		
				_t750		int			146		
				_t751		int			146		
				_t752		*int			146		
				_t753		int			146		
				_t754		*char			145		
				_t755		int			145		
				_t756		int			145		
				_t757		int			145		
				_t758		int			145		
				_t759		int			145		
				_t760		int			145		
				_t761		int			145		
				_t762		*char			145		
				_t763		int			145		
				_t764		int			147		
				_t765		bool			147		
				_t766		int			147		
				_t767		int			147		
				_t768		*int			147		
				_t769		int			147		
				_t770		int			147		
				_t771		int			147		
				_t772		int			147		
				_t773		int			145		
				_t774		int			145		
				_t775		int			145		
			Code = 
				label_382:
				string _t739_145 "Enter the number of elements"
				prompt_145 = _t739_145
				FunctionCall strlen
				param prompt_145
				call label_8
				label_383:
				_t740_145 = ReturnVal
				len_145 = _t740_145
				FunctionCall print_string
				param prompt_145
				param len_145
				_t741_145 = #1
				param _t741_145
				call label_85
				label_384:
				_t742_145 = ReturnVal
				FunctionCall get_num
				call label_118
				label_385:
				_t743_145 = ReturnVal
				n_145 = _t743_145
				string _t744_145 "Enter the elements"
				prompt_145 = _t744_145
				FunctionCall strlen
				param prompt_145
				call label_8
				label_386:
				_t745_145 = ReturnVal
				len_145 = _t745_145
				FunctionCall print_string
				param prompt_145
				param len_145
				_t746_145 = #1
				param _t746_145
				call label_85
				label_387:
				_t747_145 = ReturnVal
				arr_0_145 = n_145
				memory arr_145 n_145 #4
				_t748_146 = #0
				i_145 = _t748_146
				label_388:
				_t749_146 = i_145 < n_145
				if ( _t749_146 == #0 ) goto label_391
				goto label_389
				label_390:
				_t750_146 = i_145
				i_145 = i_145 + #1
				goto label_388
				label_389:
				_t751_146 = i_145 * #4
				_t752_146 = arr_145 + _t751_146
				FunctionCall get_num
				call label_118
				label_392:
				_t753_146 = ReturnVal
				*_t752_146 = _t753_146
				goto label_390
				label_391:
				string _t754_145 "Sorted Array is"
				prompt_145 = _t754_145
				FunctionCall strlen
				param prompt_145
				call label_8
				label_393:
				_t755_145 = ReturnVal
				len_145 = _t755_145
				FunctionCall print_string
				param prompt_145
				param len_145
				_t756_145 = #1
				param _t756_145
				call label_85
				label_394:
				_t757_145 = ReturnVal
				FunctionCall quick_sort
				param arr_145
				_t758_145 = #0
				param _t758_145
				_t759_145 = #1
				_t760_145 = n_145 - _t759_145
				param _t760_145
				call label_376
				label_395:
				_t761_145 = ReturnVal
				string _t762_145 " "
				prompt_145 = _t762_145
				_t763_145 = #1
				len_145 = _t763_145
				_t764_147 = #0
				i_145 = _t764_147
				label_396:
				_t765_147 = i_145 < n_145
				if ( _t765_147 == #0 ) goto label_399
				goto label_397
				label_398:
				_t766_147 = i_145
				i_145 = i_145 + #1
				goto label_396
				label_397:
				FunctionCall print_num
				_t767_147 = i_145 * #4
				_t768_147 = arr_145 + _t767_147
				param *_t768_147
				_t769_147 = #0
				param _t769_147
				call label_139
				label_400:
				_t770_147 = ReturnVal
				FunctionCall print_string
				param prompt_145
				param len_145
				_t771_147 = #0
				param _t771_147
				call label_85
				label_401:
				_t772_147 = ReturnVal
				goto label_398
				label_399:
				FunctionCall print_string
				param prompt_145
				param len_145
				_t773_145 = #1
				param _t773_145
				call label_85
				label_402:
				_t774_145 = ReturnVal
				_t775_145 = #0
				Return _t775_145

		function Name = getIndex
			label = label_403
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
				values		*int			148		
				n		int			148		
			localVariables : 
				Name	DataType	Scope	pointer	
				i		int			148		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t776		int			149		
				_t777		bool			149		
				_t778		int			149		
				_t779		int			149		
				_t780		*int			149		
				_t781		int			149		
				_t782		int			149		
				_t783		int			149		
				_t784		bool			149		
				_t785		int			148		
				_t786		int			148		
				_t787		int			148		
			Code = 
				label_403:
				_t776_149 = #0
				i_148 = _t776_149
				label_404:
				_t777_149 = i_148 < n_148
				if ( _t777_149 == #0 ) goto label_407
				goto label_405
				label_406:
				_t778_149 = i_148
				i_148 = i_148 + #1
				goto label_404
				label_405:
				_t779_149 = i_148 * #4
				_t780_149 = values_148 + _t779_149
				_t781_149 = #0
				_t782_149 = #1
				_t783_149 = _t781_149 - _t782_149
				_t784_149 = *_t780_149 == _t783_149
				if ( _t784_149 == #0 ) goto label_408
				Return i_148
				goto label_409
				label_408:
				label_409:
				goto label_406
				label_407:
				_t785_148 = #0
				_t786_148 = #1
				_t787_148 = _t785_148 - _t786_148
				Return _t787_148

		function Name = insert
			label = label_410
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
				val		int			151		
				values		*int			151		
				left		*int			151		
				right		*int			151		
				n		int			151		
			localVariables : 
				Name	DataType	Scope	pointer	
				root		int			153		
				index		int			157		
				index		int			160		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t788		int			151		
				_t789		int			151		
				_t790		*int			151		
				_t791		int			151		
				_t792		int			151		
				_t793		int			151		
				_t794		bool			151		
				_t795		int			152		
				_t796		int			152		
				_t797		*int			152		
				_t798		int			153		
				_t799		bool			154		
				_t800		int			154		
				_t801		*int			154		
				_t802		bool			154		
				_t803		int			154		
				_t804		*int			154		
				_t805		bool			154		
				_t806		int			156		
				_t807		*int			156		
				_t808		int			156		
				_t809		int			156		
				_t810		int			156		
				_t811		bool			156		
				_t812		int			157		
				_t813		int			157		
				_t814		*int			157		
				_t815		int			157		
				_t816		*int			157		
				_t817		int			158		
				_t818		*int			158		
				_t819		int			154		
				_t820		*int			154		
				_t821		bool			154		
				_t822		int			159		
				_t823		*int			159		
				_t824		int			159		
				_t825		int			159		
				_t826		int			159		
				_t827		bool			159		
				_t828		int			160		
				_t829		int			160		
				_t830		*int			160		
				_t831		int			160		
				_t832		*int			160		
				_t833		int			161		
				_t834		*int			161		
				_t835		int			151		
			Code = 
				label_410:
				_t788_151 = #0
				_t789_151 = _t788_151 * #4
				_t790_151 = values_151 + _t789_151
				_t791_151 = #0
				_t792_151 = #1
				_t793_151 = _t791_151 - _t792_151
				_t794_151 = *_t790_151 == _t793_151
				if ( _t794_151 == #0 ) goto label_411
				_t795_152 = #0
				_t796_152 = _t795_152 * #4
				_t797_152 = values_151 + _t796_152
				*_t797_152 = val_151
				goto label_412
				label_411:
				_t798_153 = #0
				root_153 = _t798_153
				label_413:
				_t799_154 = #1
				if ( _t799_154 == #0 ) goto label_416
				goto label_414
				label_415:
				goto label_413
				label_414:
				_t800_154 = root_153 * #4
				_t801_154 = values_151 + _t800_154
				_t802_154 = *_t801_154 == val_151
				if ( _t802_154 == #0 ) goto label_417
				goto label_416
				goto label_418
				label_417:
				_t803_154 = root_153 * #4
				_t804_154 = values_151 + _t803_154
				_t805_154 = val_151 < *_t804_154
				if ( _t805_154 == #0 ) goto label_419
				_t806_156 = root_153 * #4
				_t807_156 = left_151 + _t806_156
				_t808_156 = #0
				_t809_156 = #1
				_t810_156 = _t808_156 - _t809_156
				_t811_156 = *_t807_156 == _t810_156
				if ( _t811_156 == #0 ) goto label_420
				FunctionCall getIndex
				param values_151
				param n_151
				call label_403
				label_422:
				_t812_157 = ReturnVal
				index_157 = _t812_157
				_t813_157 = root_153 * #4
				_t814_157 = left_151 + _t813_157
				*_t814_157 = index_157
				_t815_157 = index_157 * #4
				_t816_157 = values_151 + _t815_157
				*_t816_157 = val_151
				goto label_416
				goto label_421
				label_420:
				_t817_158 = root_153 * #4
				_t818_158 = left_151 + _t817_158
				root_153 = *_t818_158
				label_421:
				goto label_418
				label_419:
				_t819_154 = root_153 * #4
				_t820_154 = values_151 + _t819_154
				_t821_154 = val_151 > *_t820_154
				if ( _t821_154 == #0 ) goto label_423
				_t822_159 = root_153 * #4
				_t823_159 = right_151 + _t822_159
				_t824_159 = #0
				_t825_159 = #1
				_t826_159 = _t824_159 - _t825_159
				_t827_159 = *_t823_159 == _t826_159
				if ( _t827_159 == #0 ) goto label_424
				FunctionCall getIndex
				param values_151
				param n_151
				call label_403
				label_426:
				_t828_160 = ReturnVal
				index_157 = _t828_160
				_t829_160 = root_153 * #4
				_t830_160 = right_151 + _t829_160
				*_t830_160 = index_157
				_t831_160 = index_157 * #4
				_t832_160 = values_151 + _t831_160
				*_t832_160 = val_151
				goto label_416
				goto label_425
				label_424:
				_t833_161 = root_153 * #4
				_t834_161 = right_151 + _t833_161
				root_153 = *_t834_161
				label_425:
				goto label_418
				label_423:
				label_418:
				goto label_415
				label_416:
				label_412:
				_t835_151 = #0
				Return _t835_151

		function Name = inorder
			label = label_427
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
				values		*int			162		
				left		*int			162		
				right		*int			162		
				index		int			162		
			localVariables : 
				Name	DataType	Scope	pointer	
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t836		int			162		
				_t837		int			162		
				_t838		int			162		
				_t839		bool			162		
				_t840		int			163		
				_t841		*int			163		
				_t842		int			163		
				_t843		int			163		
				_t844		*int			163		
				_t845		int			163		
				_t846		int			163		
				_t847		*char			163		
				_t848		int			163		
				_t849		int			163		
				_t850		int			163		
				_t851		int			163		
				_t852		*int			163		
				_t853		int			163		
				_t854		int			162		
			Code = 
				label_427:
				_t836_162 = #0
				_t837_162 = #1
				_t838_162 = _t836_162 - _t837_162
				_t839_162 = index_162 != _t838_162
				if ( _t839_162 == #0 ) goto label_428
				FunctionCall inorder
				param values_162
				param left_162
				param right_162
				_t840_163 = index_162 * #4
				_t841_163 = left_162 + _t840_163
				param *_t841_163
				call label_427
				label_430:
				_t842_163 = ReturnVal
				FunctionCall print_num
				_t843_163 = index_162 * #4
				_t844_163 = values_162 + _t843_163
				param *_t844_163
				_t845_163 = #0
				param _t845_163
				call label_139
				label_431:
				_t846_163 = ReturnVal
				FunctionCall print_string
				string _t847_163 " "
				param _t847_163
				_t848_163 = #1
				param _t848_163
				_t849_163 = #0
				param _t849_163
				call label_85
				label_432:
				_t850_163 = ReturnVal
				FunctionCall inorder
				param values_162
				param left_162
				param right_162
				_t851_163 = index_162 * #4
				_t852_163 = right_162 + _t851_163
				param *_t852_163
				call label_427
				label_433:
				_t853_163 = ReturnVal
				goto label_429
				label_428:
				label_429:
				_t854_162 = #0
				Return _t854_162

		function Name = tree
			label = label_434
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				n		int			164		
				prompt		*char			164		
				len		int			164		
				values_0		int			164		
				values		*int			164		values_0 
				left_0		int			164		
				left		*int			164		left_0 
				right_0		int			164		
				right		*int			164		right_0 
				i		int			164		
				k		int			166		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t855		*char			164		
				_t856		int			164		
				_t857		int			164		
				_t858		int			164		
				_t859		int			164		
				_t860		int			165		
				_t861		bool			165		
				_t862		int			165		
				_t863		int			165		
				_t864		*int			165		
				_t865		int			165		
				_t866		int			165		
				_t867		int			165		
				_t868		int			165		
				_t869		*int			165		
				_t870		int			165		
				_t871		int			165		
				_t872		int			165		
				_t873		int			165		
				_t874		*int			165		
				_t875		int			165		
				_t876		int			165		
				_t877		int			165		
				_t878		*char			164		
				_t879		int			164		
				_t880		int			164		
				_t881		int			164		
				_t882		int			166		
				_t883		bool			166		
				_t884		int			166		
				_t885		int			166		
				_t886		int			166		
				_t887		*char			164		
				_t888		int			164		
				_t889		int			164		
				_t890		int			164		
				_t891		int			164		
				_t892		int			164		
				_t893		*char			164		
				_t894		int			164		
				_t895		int			164		
				_t896		int			164		
				_t897		int			164		
			Code = 
				label_434:
				string _t855_164 "Enter the Number of Elements"
				prompt_164 = _t855_164
				FunctionCall strlen
				param prompt_164
				call label_8
				label_435:
				_t856_164 = ReturnVal
				len_164 = _t856_164
				FunctionCall print_string
				param prompt_164
				param len_164
				_t857_164 = #1
				param _t857_164
				call label_85
				label_436:
				_t858_164 = ReturnVal
				FunctionCall get_num
				call label_118
				label_437:
				_t859_164 = ReturnVal
				n_164 = _t859_164
				values_0_164 = n_164
				memory values_164 n_164 #4
				left_0_164 = n_164
				memory left_164 n_164 #4
				right_0_164 = n_164
				memory right_164 n_164 #4
				_t860_165 = #0
				i_164 = _t860_165
				label_438:
				_t861_165 = i_164 < n_164
				if ( _t861_165 == #0 ) goto label_441
				goto label_439
				label_440:
				_t862_165 = i_164
				i_164 = i_164 + #1
				goto label_438
				label_439:
				_t863_165 = i_164 * #4
				_t864_165 = values_164 + _t863_165
				_t865_165 = #0
				_t866_165 = #1
				_t867_165 = _t865_165 - _t866_165
				*_t864_165 = _t867_165
				_t868_165 = i_164 * #4
				_t869_165 = left_164 + _t868_165
				_t870_165 = #0
				_t871_165 = #1
				_t872_165 = _t870_165 - _t871_165
				*_t869_165 = _t872_165
				_t873_165 = i_164 * #4
				_t874_165 = right_164 + _t873_165
				_t875_165 = #0
				_t876_165 = #1
				_t877_165 = _t875_165 - _t876_165
				*_t874_165 = _t877_165
				goto label_440
				label_441:
				string _t878_164 "Enter the values"
				prompt_164 = _t878_164
				FunctionCall strlen
				param prompt_164
				call label_8
				label_442:
				_t879_164 = ReturnVal
				len_164 = _t879_164
				FunctionCall print_string
				param prompt_164
				param len_164
				_t880_164 = #1
				param _t880_164
				call label_85
				label_443:
				_t881_164 = ReturnVal
				_t882_166 = #0
				i_164 = _t882_166
				label_444:
				_t883_166 = i_164 < n_164
				if ( _t883_166 == #0 ) goto label_447
				goto label_445
				label_446:
				_t884_166 = i_164
				i_164 = i_164 + #1
				goto label_444
				label_445:
				FunctionCall get_num
				call label_118
				label_448:
				_t885_166 = ReturnVal
				k_166 = _t885_166
				FunctionCall insert
				param k_166
				param values_164
				param left_164
				param right_164
				param n_164
				call label_410
				label_449:
				_t886_166 = ReturnVal
				goto label_446
				label_447:
				string _t887_164 "Inorder Traversal of the Tree"
				prompt_164 = _t887_164
				FunctionCall strlen
				param prompt_164
				call label_8
				label_450:
				_t888_164 = ReturnVal
				len_164 = _t888_164
				FunctionCall print_string
				param prompt_164
				param len_164
				_t889_164 = #1
				param _t889_164
				call label_85
				label_451:
				_t890_164 = ReturnVal
				FunctionCall inorder
				param values_164
				param left_164
				param right_164
				_t891_164 = #0
				param _t891_164
				call label_427
				label_452:
				_t892_164 = ReturnVal
				FunctionCall print_string
				string _t893_164 " "
				param _t893_164
				_t894_164 = #1
				param _t894_164
				_t895_164 = #1
				param _t895_164
				call label_85
				label_453:
				_t896_164 = ReturnVal
				_t897_164 = #0
				Return _t897_164

		function Name = get_keypress
			label = label_454
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				k		int			167		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t898		int			167		
				_t899		*char			167		
			Code = 
				label_454:
				_t898_167 = KEYBOARD_0 * #1
				_t899_167 = memory_0 + _t898_167
				k_167 = *_t899_167
				Return k_167

		function Name = Palindrome
			label = label_455
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				n		int			168		
				len1		int			168		
				len2		int			168		
				len3		int			168		
				str2		*char			168		
				str3		*char			168		
				str1		*char			168		
				temp		int			168		
				res		int			168		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t900		*char			168		
				_t901		int			168		
				_t902		*char			168		
				_t903		int			168		
				_t904		*char			168		
				_t905		int			168		
				_t906		int			168		
				_t907		int			168		
				_t908		int			168		
				_t909		int			168		
				_t910		int			169		
				_t911		bool			169		
				_t912		int			169		
				_t913		int			169		
				_t914		int			169		
				_t915		int			169		
				_t916		int			169		
				_t917		int			169		
				_t918		int			169		
				_t919		bool			168		
				_t920		int			170		
				_t921		int			170		
				_t922		int			171		
				_t923		int			171		
				_t924		int			168		
			Code = 
				label_455:
				string _t900_168 "Enter the number to check palindrome or not: "
				str1_168 = _t900_168
				FunctionCall strlen
				param str1_168
				call label_8
				label_456:
				_t901_168 = ReturnVal
				len1_168 = _t901_168
				string _t902_168 "Palindrome"
				str2_168 = _t902_168
				FunctionCall strlen
				param str2_168
				call label_8
				label_457:
				_t903_168 = ReturnVal
				len2_168 = _t903_168
				string _t904_168 "Not Palindrome"
				str3_168 = _t904_168
				FunctionCall strlen
				param str3_168
				call label_8
				label_458:
				_t905_168 = ReturnVal
				len3_168 = _t905_168
				FunctionCall print_string
				param str1_168
				param len1_168
				_t906_168 = #0
				param _t906_168
				call label_85
				label_459:
				_t907_168 = ReturnVal
				FunctionCall get_num
				call label_118
				label_460:
				_t908_168 = ReturnVal
				n_168 = _t908_168
				temp_168 = n_168
				_t909_168 = #0
				res_168 = _t909_168
				label_461:
				_t910_169 = #0
				_t911_169 = temp_168 != _t910_169
				if ( _t911_169 == #0 ) goto label_464
				goto label_462
				label_463:
				goto label_461
				label_462:
				_t912_169 = #10
				_t913_169 = res_168 * _t912_169
				res_168 = _t913_169
				_t914_169 = #10
				_t915_169 = temp_168 % _t914_169
				_t916_169 = res_168 + _t915_169
				res_168 = _t916_169
				_t917_169 = #10
				_t918_169 = temp_168 / _t917_169
				temp_168 = _t918_169
				goto label_463
				label_464:
				_t919_168 = res_168 == n_168
				if ( _t919_168 == #0 ) goto label_465
				FunctionCall print_string
				param str2_168
				param len2_168
				_t920_170 = #0
				param _t920_170
				call label_85
				label_467:
				_t921_170 = ReturnVal
				goto label_466
				label_465:
				FunctionCall print_string
				param str3_168
				param len3_168
				_t922_171 = #0
				param _t922_171
				call label_85
				label_468:
				_t923_171 = ReturnVal
				label_466:
				_t924_168 = #0
				Return _t924_168

		function Name = SumofNatural
			label = label_469
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				n		int			172		
				len1		int			172		
				str1		*char			172		
				res		int			172		
				i		int			172		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t925		*char			172		
				_t926		int			172		
				_t927		int			172		
				_t928		int			172		
				_t929		int			172		
				_t930		int			172		
				_t931		int			173		
				_t932		bool			173		
				_t933		int			173		
				_t934		int			173		
				_t935		*char			172		
				_t936		int			172		
				_t937		int			172		
				_t938		int			172		
				_t939		int			172		
				_t940		int			172		
				_t941		int			172		
			Code = 
				label_469:
				string _t925_172 "Enter the number: "
				str1_172 = _t925_172
				FunctionCall strlen
				param str1_172
				call label_8
				label_470:
				_t926_172 = ReturnVal
				len1_172 = _t926_172
				FunctionCall print_string
				param str1_172
				param len1_172
				_t927_172 = #0
				param _t927_172
				call label_85
				label_471:
				_t928_172 = ReturnVal
				FunctionCall get_num
				call label_118
				label_472:
				_t929_172 = ReturnVal
				n_172 = _t929_172
				_t930_172 = #0
				res_172 = _t930_172
				_t931_173 = #0
				i_172 = _t931_173
				label_473:
				_t932_173 = i_172 < n_172
				if ( _t932_173 == #0 ) goto label_476
				goto label_474
				label_475:
				_t933_173 = i_172
				i_172 = i_172 + #1
				goto label_473
				label_474:
				_t934_173 = res_172 + i_172
				res_172 = _t934_173
				goto label_475
				label_476:
				FunctionCall print_string
				string _t935_172 "Sum of natural numbers is: "
				param _t935_172
				_t936_172 = #27
				param _t936_172
				_t937_172 = #0
				param _t937_172
				call label_85
				label_477:
				_t938_172 = ReturnVal
				FunctionCall print_num
				param res_172
				_t939_172 = #1
				param _t939_172
				call label_139
				label_478:
				_t940_172 = ReturnVal
				_t941_172 = #0
				Return _t941_172

		function Name = rfactorial
			label = label_479
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
				n		int			174		
			localVariables : 
				Name	DataType	Scope	pointer	
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t942		int			174		
				_t943		bool			174		
				_t944		int			174		
				_t945		bool			174		
				_t946		bool			174		
				_t947		int			175		
				_t948		int			176		
				_t949		int			176		
				_t950		int			176		
				_t951		int			176		
			Code = 
				label_479:
				_t942_174 = #0
				_t943_174 = n_174 == _t942_174
				_t944_174 = #1
				_t945_174 = n_174 == _t944_174
				_t946_174 = _t943_174 || _t945_174
				if ( _t946_174 == #0 ) goto label_480
				_t947_175 = #1
				Return _t947_175
				goto label_481
				label_480:
				FunctionCall rfactorial
				_t948_176 = #1
				_t949_176 = n_174 - _t948_176
				param _t949_176
				call label_479
				label_482:
				_t950_176 = ReturnVal
				_t951_176 = n_174 * _t950_176
				Return _t951_176
				label_481:

		function Name = Factorial_ofN
			label = label_483
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				n		int			177		
				len1		int			177		
				len2		int			177		
				str2		*char			177		
				str1		*char			177		
				temp		int			177		
				res		int			177		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t952		*char			177		
				_t953		int			177		
				_t954		*char			177		
				_t955		int			177		
				_t956		int			177		
				_t957		int			177		
				_t958		int			177		
				_t959		int			177		
				_t960		int			177		
				_t961		int			177		
				_t962		int			177		
				_t963		int			177		
				_t964		int			177		
			Code = 
				label_483:
				string _t952_177 "Enter the number : "
				str1_177 = _t952_177
				FunctionCall strlen
				param str1_177
				call label_8
				label_484:
				_t953_177 = ReturnVal
				len1_177 = _t953_177
				string _t954_177 "The factorial of given Number is : "
				str2_177 = _t954_177
				FunctionCall strlen
				param str2_177
				call label_8
				label_485:
				_t955_177 = ReturnVal
				len2_177 = _t955_177
				FunctionCall print_string
				param str1_177
				param len1_177
				_t956_177 = #0
				param _t956_177
				call label_85
				label_486:
				_t957_177 = ReturnVal
				FunctionCall get_num
				call label_118
				label_487:
				_t958_177 = ReturnVal
				n_177 = _t958_177
				temp_177 = n_177
				FunctionCall rfactorial
				param n_177
				call label_479
				label_488:
				_t959_177 = ReturnVal
				res_177 = _t959_177
				FunctionCall print_string
				param str2_177
				param len2_177
				_t960_177 = #0
				param _t960_177
				call label_85
				label_489:
				_t961_177 = ReturnVal
				FunctionCall print_num
				param res_177
				_t962_177 = #1
				param _t962_177
				call label_139
				label_490:
				_t963_177 = ReturnVal
				_t964_177 = #0
				Return _t964_177

		function Name = get_random
			label = label_491
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				a		int			178		
				b		int			178		
				m		int			178		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t965		int			178		
				_t966		int			178		
				_t967		int			178		
				_t968		int			178		
				_t969		int			178		
				_t970		int			178		
			Code = 
				label_491:
				_t965_178 = #307
				a_178 = _t965_178
				_t966_178 = #401
				b_178 = _t966_178
				_t967_178 = #821
				m_178 = _t967_178
				_t968_178 = a_178 * seed_0
				_t969_178 = _t968_178 + b_178
				_t970_178 = _t969_178 % m_178
				seed_0 = _t970_178
				Return seed_0

		function Name = parse_command
			label = label_492
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				command_0		int			179		
				command		*char			179		command_0 
				i		int			179		
				clen		int			179		
				clear		*char			179		
				ls		*char			179		
				fibo		*char			179		
				tr		*char			179		
				qsort		*char			179		
				pri		*char			179		
				rev		*char			179		
				exit		*char			179		
				command_not_found		*char			179		
				space		*char			179		
				palindrome		*char			179		
				sumofnatural		*char			179		
				factorialofn		*char			179		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t971		int			179		
				_t972		int			180		
				_t973		int			180		
				_t974		bool			180		
				_t975		int			180		
				_t976		int			180		
				_t977		*char			180		
				_t978		int			180		
				_t979		int			179		
				_t980		int			179		
				_t981		*char			179		
				_t982		*char			179		
				_t983		*char			179		
				_t984		*char			179		
				_t985		*char			179		
				_t986		*char			179		
				_t987		*char			179		
				_t988		*char			179		
				_t989		*char			179		
				_t990		*char			179		
				_t991		*char			179		
				_t992		*char			179		
				_t993		*char			179		
				_t994		int			179		
				_t995		int			179		
				_t996		bool			179		
				_t997		int			181		
				_t998		int			179		
				_t999		int			179		
				_t1000		bool			179		
				_t1001		int			182		
				_t1002		int			182		
				_t1003		int			182		
				_t1004		int			182		
				_t1005		int			182		
				_t1006		int			182		
				_t1007		int			182		
				_t1008		int			182		
				_t1009		int			182		
				_t1010		int			182		
				_t1011		int			182		
				_t1012		int			182		
				_t1013		int			182		
				_t1014		int			182		
				_t1015		int			182		
				_t1016		int			182		
				_t1017		int			182		
				_t1018		int			182		
				_t1019		int			182		
				_t1020		int			182		
				_t1021		int			182		
				_t1022		int			182		
				_t1023		int			182		
				_t1024		int			182		
				_t1025		int			182		
				_t1026		int			182		
				_t1027		int			182		
				_t1028		int			182		
				_t1029		int			182		
				_t1030		int			182		
				_t1031		int			182		
				_t1032		int			182		
				_t1033		int			182		
				_t1034		int			182		
				_t1035		int			182		
				_t1036		int			182		
				_t1037		int			182		
				_t1038		int			182		
				_t1039		int			182		
				_t1040		int			182		
				_t1041		int			182		
				_t1042		int			182		
				_t1043		int			182		
				_t1044		int			182		
				_t1045		int			182		
				_t1046		int			182		
				_t1047		int			182		
				_t1048		int			182		
				_t1049		int			182		
				_t1050		int			182		
				_t1051		int			182		
				_t1052		int			182		
				_t1053		int			182		
				_t1054		int			182		
				_t1055		int			179		
				_t1056		int			179		
				_t1057		bool			179		
				_t1058		int			183		
				_t1059		int			179		
				_t1060		int			179		
				_t1061		bool			179		
				_t1062		int			184		
				_t1063		int			179		
				_t1064		int			179		
				_t1065		bool			179		
				_t1066		int			185		
				_t1067		int			179		
				_t1068		int			179		
				_t1069		bool			179		
				_t1070		int			186		
				_t1071		int			179		
				_t1072		int			179		
				_t1073		bool			179		
				_t1074		int			187		
				_t1075		int			179		
				_t1076		int			179		
				_t1077		bool			179		
				_t1078		int			188		
				_t1079		int			179		
				_t1080		int			179		
				_t1081		bool			179		
				_t1082		int			189		
				_t1083		int			179		
				_t1084		int			179		
				_t1085		bool			179		
				_t1086		int			190		
				_t1087		int			191		
				_t1088		int			191		
				_t1089		int			191		
				_t1090		int			179		
			Code = 
				label_492:
				_t971_179 = #20
				command_0_179 = _t971_179
				memory command_179 _t971_179 #1
				_t972_180 = #0
				i_179 = _t972_180
				label_493:
				_t973_180 = #20
				_t974_180 = i_179 < _t973_180
				if ( _t974_180 == #0 ) goto label_496
				goto label_494
				label_495:
				_t975_180 = i_179
				i_179 = i_179 + #1
				goto label_493
				label_494:
				_t976_180 = i_179 * #1
				_t977_180 = command_179 + _t976_180
				_t978_180 = #0
				*_t977_180 = _t978_180
				goto label_495
				label_496:
				FunctionCall get_line
				call label_53
				label_497:
				_t979_179 = ReturnVal
				FunctionCall get_string
				param command_179
				call label_108
				label_498:
				_t980_179 = ReturnVal
				clen_179 = _t980_179
				string _t981_179 "clear"
				clear_179 = _t981_179
				string _t982_179 "ls"
				ls_179 = _t982_179
				string _t983_179 "fibo"
				fibo_179 = _t983_179
				string _t984_179 "tree"
				tr_179 = _t984_179
				string _t985_179 "quicksort"
				qsort_179 = _t985_179
				string _t986_179 "prime"
				pri_179 = _t986_179
				string _t987_179 "reverse"
				rev_179 = _t987_179
				string _t988_179 "palindrome"
				palindrome_179 = _t988_179
				string _t989_179 "sumofnatural"
				sumofnatural_179 = _t989_179
				string _t990_179 "factorialofn"
				factorialofn_179 = _t990_179
				string _t991_179 "exit"
				exit_179 = _t991_179
				string _t992_179 "Command Not Found"
				command_not_found_179 = _t992_179
				string _t993_179 " "
				space_179 = _t993_179
				FunctionCall strcmp
				param command_179
				param clear_179
				call label_74
				label_499:
				_t994_179 = ReturnVal
				_t995_179 = #0
				_t996_179 = _t994_179 == _t995_179
				if ( _t996_179 == #0 ) goto label_500
				FunctionCall clear_shell
				call label_15
				label_502:
				_t997_181 = ReturnVal
				goto label_501
				label_500:
				FunctionCall strcmp
				param command_179
				param ls_179
				call label_74
				label_503:
				_t998_179 = ReturnVal
				_t999_179 = #0
				_t1000_179 = _t998_179 == _t999_179
				if ( _t1000_179 == #0 ) goto label_504
				FunctionCall print_string
				param fibo_179
				_t1001_182 = #4
				param _t1001_182
				_t1002_182 = #0
				param _t1002_182
				call label_85
				label_505:
				_t1003_182 = ReturnVal
				FunctionCall print_string
				param space_179
				_t1004_182 = #1
				param _t1004_182
				_t1005_182 = #0
				param _t1005_182
				call label_85
				label_506:
				_t1006_182 = ReturnVal
				FunctionCall print_string
				param qsort_179
				_t1007_182 = #9
				param _t1007_182
				_t1008_182 = #0
				param _t1008_182
				call label_85
				label_507:
				_t1009_182 = ReturnVal
				FunctionCall print_string
				param space_179
				_t1010_182 = #1
				param _t1010_182
				_t1011_182 = #0
				param _t1011_182
				call label_85
				label_508:
				_t1012_182 = ReturnVal
				FunctionCall print_string
				param pri_179
				_t1013_182 = #5
				param _t1013_182
				_t1014_182 = #0
				param _t1014_182
				call label_85
				label_509:
				_t1015_182 = ReturnVal
				FunctionCall print_string
				param space_179
				_t1016_182 = #1
				param _t1016_182
				_t1017_182 = #0
				param _t1017_182
				call label_85
				label_510:
				_t1018_182 = ReturnVal
				FunctionCall print_string
				param rev_179
				_t1019_182 = #7
				param _t1019_182
				_t1020_182 = #1
				param _t1020_182
				call label_85
				label_511:
				_t1021_182 = ReturnVal
				FunctionCall print_string
				param palindrome_179
				_t1022_182 = #10
				param _t1022_182
				_t1023_182 = #0
				param _t1023_182
				call label_85
				label_512:
				_t1024_182 = ReturnVal
				FunctionCall print_string
				param space_179
				_t1025_182 = #1
				param _t1025_182
				_t1026_182 = #0
				param _t1026_182
				call label_85
				label_513:
				_t1027_182 = ReturnVal
				FunctionCall print_string
				param sumofnatural_179
				_t1028_182 = #12
				param _t1028_182
				_t1029_182 = #0
				param _t1029_182
				call label_85
				label_514:
				_t1030_182 = ReturnVal
				FunctionCall print_string
				param space_179
				_t1031_182 = #1
				param _t1031_182
				_t1032_182 = #0
				param _t1032_182
				call label_85
				label_515:
				_t1033_182 = ReturnVal
				FunctionCall print_string
				param factorialofn_179
				_t1034_182 = #11
				param _t1034_182
				_t1035_182 = #1
				param _t1035_182
				call label_85
				label_516:
				_t1036_182 = ReturnVal
				FunctionCall print_string
				param space_179
				_t1037_182 = #1
				param _t1037_182
				_t1038_182 = #0
				param _t1038_182
				call label_85
				label_517:
				_t1039_182 = ReturnVal
				FunctionCall print_string
				param clear_179
				_t1040_182 = #5
				param _t1040_182
				_t1041_182 = #0
				param _t1041_182
				call label_85
				label_518:
				_t1042_182 = ReturnVal
				FunctionCall print_string
				param space_179
				_t1043_182 = #1
				param _t1043_182
				_t1044_182 = #0
				param _t1044_182
				call label_85
				label_519:
				_t1045_182 = ReturnVal
				FunctionCall print_string
				param ls_179
				_t1046_182 = #2
				param _t1046_182
				_t1047_182 = #0
				param _t1047_182
				call label_85
				label_520:
				_t1048_182 = ReturnVal
				FunctionCall print_string
				param space_179
				_t1049_182 = #1
				param _t1049_182
				_t1050_182 = #0
				param _t1050_182
				call label_85
				label_521:
				_t1051_182 = ReturnVal
				FunctionCall print_string
				param exit_179
				_t1052_182 = #4
				param _t1052_182
				_t1053_182 = #1
				param _t1053_182
				call label_85
				label_522:
				_t1054_182 = ReturnVal
				goto label_501
				label_504:
				FunctionCall strcmp
				param command_179
				param fibo_179
				call label_74
				label_523:
				_t1055_179 = ReturnVal
				_t1056_179 = #0
				_t1057_179 = _t1055_179 == _t1056_179
				if ( _t1057_179 == #0 ) goto label_524
				FunctionCall fibonacci
				call label_313
				label_525:
				_t1058_183 = ReturnVal
				goto label_501
				label_524:
				FunctionCall strcmp
				param command_179
				param rev_179
				call label_74
				label_526:
				_t1059_179 = ReturnVal
				_t1060_179 = #0
				_t1061_179 = _t1059_179 == _t1060_179
				if ( _t1061_179 == #0 ) goto label_527
				FunctionCall reverse_string
				call label_332
				label_528:
				_t1062_184 = ReturnVal
				goto label_501
				label_527:
				FunctionCall strcmp
				param command_179
				param pri_179
				call label_74
				label_529:
				_t1063_179 = ReturnVal
				_t1064_179 = #0
				_t1065_179 = _t1063_179 == _t1064_179
				if ( _t1065_179 == #0 ) goto label_530
				FunctionCall prime
				call label_351
				label_531:
				_t1066_185 = ReturnVal
				goto label_501
				label_530:
				FunctionCall strcmp
				param command_179
				param qsort_179
				call label_74
				label_532:
				_t1067_179 = ReturnVal
				_t1068_179 = #0
				_t1069_179 = _t1067_179 == _t1068_179
				if ( _t1069_179 == #0 ) goto label_533
				FunctionCall sort
				call label_382
				label_534:
				_t1070_186 = ReturnVal
				goto label_501
				label_533:
				FunctionCall strcmp
				param command_179
				param palindrome_179
				call label_74
				label_535:
				_t1071_179 = ReturnVal
				_t1072_179 = #0
				_t1073_179 = _t1071_179 == _t1072_179
				if ( _t1073_179 == #0 ) goto label_536
				FunctionCall Palindrome
				call label_455
				label_537:
				_t1074_187 = ReturnVal
				goto label_501
				label_536:
				FunctionCall strcmp
				param command_179
				param sumofnatural_179
				call label_74
				label_538:
				_t1075_179 = ReturnVal
				_t1076_179 = #0
				_t1077_179 = _t1075_179 == _t1076_179
				if ( _t1077_179 == #0 ) goto label_539
				FunctionCall SumofNatural
				call label_469
				label_540:
				_t1078_188 = ReturnVal
				goto label_501
				label_539:
				FunctionCall strcmp
				param command_179
				param factorialofn_179
				call label_74
				label_541:
				_t1079_179 = ReturnVal
				_t1080_179 = #0
				_t1081_179 = _t1079_179 == _t1080_179
				if ( _t1081_179 == #0 ) goto label_542
				FunctionCall Factorial_ofN
				call label_483
				label_543:
				_t1082_189 = ReturnVal
				goto label_501
				label_542:
				FunctionCall strcmp
				param command_179
				param exit_179
				call label_74
				label_544:
				_t1083_179 = ReturnVal
				_t1084_179 = #0
				_t1085_179 = _t1083_179 == _t1084_179
				if ( _t1085_179 == #0 ) goto label_545
				_t1086_190 = #2
				Return _t1086_190
				goto label_501
				label_545:
				FunctionCall print_string
				param command_not_found_179
				_t1087_191 = #17
				param _t1087_191
				_t1088_191 = #1
				param _t1088_191
				call label_85
				label_546:
				_t1089_191 = ReturnVal
				label_501:
				_t1090_179 = #1
				Return _t1090_179

		function Name = start_shell
			label = label_547
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				arrow		*char			192		
				len		int			192		
				r		int			193		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t1091		int			192		
				_t1092		*char			192		
				_t1093		int			192		
				_t1094		bool			193		
				_t1095		int			193		
				_t1096		int			193		
				_t1097		int			193		
				_t1098		int			193		
				_t1099		int			193		
				_t1100		bool			193		
				_t1101		int			192		
			Code = 
				label_547:
				FunctionCall welcome_screen
				call label_31
				label_548:
				_t1091_192 = ReturnVal
				string _t1092_192 "Team1@CSD:~$"
				arrow_192 = _t1092_192
				FunctionCall strlen
				param arrow_192
				call label_8
				label_549:
				_t1093_192 = ReturnVal
				len_192 = _t1093_192
				label_550:
				_t1094_193 = #1
				if ( _t1094_193 == #0 ) goto label_553
				goto label_551
				label_552:
				goto label_550
				label_551:
				FunctionCall display
				param arrow_192
				param len_192
				param line_0
				param character_0
				call label_20
				label_554:
				_t1095_193 = ReturnVal
				_t1096_193 = #4
				_t1097_193 = character_0 + _t1096_193
				character_0 = _t1097_193
				FunctionCall parse_command
				call label_492
				label_555:
				_t1098_193 = ReturnVal
				r_193 = _t1098_193
				_t1099_193 = #2
				_t1100_193 = r_193 == _t1099_193
				if ( _t1100_193 == #0 ) goto label_556
				goto label_553
				goto label_557
				label_556:
				label_557:
				goto label_552
				label_553:
				_t1101_192 = #0
				Return _t1101_192

		function Name = main
			label = label_558
			return value : int
			parameters : 
				Name	DataType	Scope	pointer	
			localVariables : 
				Name	DataType	Scope	pointer	
				i		int			195		
				id		int			195		
			tempVariables = 
				Name	DataType	Scope	pointer	
				_t1102		int			195		
				_t1103		int			195		
				_t1104		int			195		
				_t1105		int			195		
				_t1106		int			195		
				_t1107		int			195		
				_t1108		int			195		
				_t1109		int			195		
				_t1110		int			195		
				_t1111		int			195		
				_t1112		int			196		
				_t1113		int			196		
				_t1114		bool			196		
				_t1115		int			196		
				_t1116		int			196		
				_t1117		*char			196		
				_t1118		int			196		
				_t1119		int			195		
				_t1120		int			195		
				_t1121		int			195		
				_t1122		int			195		
				_t1123		int			195		
				_t1124		int			195		
				_t1125		int			195		
				_t1126		int			195		
				_t1127		int			195		
				_t1128		int			195		
				_t1129		int			195		
				_t1130		int			195		
				_t1131		int			195		
				_t1132		int			195		
				_t1133		int			195		
				_t1134		int			195		
				_t1135		*int			195		
				_t1136		int			195		
				_t1137		int			195		
				_t1138		*int			195		
				_t1139		int			195		
				_t1140		int			195		
				_t1141		int			195		
				_t1142		*int			195		
				_t1143		int			195		
				_t1144		int			195		
				_t1145		int			195		
				_t1146		*int			195		
				_t1147		int			195		
				_t1148		int			195		
				_t1149		int			195		
				_t1150		*int			195		
				_t1151		int			195		
				_t1152		int			195		
				_t1153		int			195		
				_t1154		int			195		
				_t1155		int			195		
				_t1156		int			195		
				_t1157		int			195		
				_t1158		int			195		
			Code = 
				label_558:
				_t1102_195 = #1
				pid_0 = _t1102_195
				current_process_0 = pid_0
				asm "load" "R3" current_process_0 
				_t1103_195 = #76000
				KEYBOARD_0 = _t1103_195
				_t1104_195 = #0
				line_0 = _t1104_195
				_t1105_195 = #0
				character_0 = _t1105_195
				_t1106_195 = #40
				memory _t1107_195 _t1106_195 #1
				Buffer_0 = _t1107_195
				_t1108_195 = #0
				current_buffer_index_0 = _t1108_195
				_t1109_195 = #42368
				MAPSTART_0 = _t1109_195
				_t1110_195 = #0
				memory_0 = _t1110_195
				_t1111_195 = #0
				displayLock_0 = _t1111_195
				_t1112_196 = #0
				i_195 = _t1112_196
				label_559:
				_t1113_196 = #40
				_t1114_196 = i_195 < _t1113_196
				if ( _t1114_196 == #0 ) goto label_562
				goto label_560
				label_561:
				_t1115_196 = i_195
				i_195 = i_195 + #1
				goto label_559
				label_560:
				_t1116_196 = i_195 * #1
				_t1117_196 = Buffer_0 + _t1116_196
				_t1118_196 = #0
				*_t1117_196 = _t1118_196
				goto label_561
				label_562:
				_t1119_195 = #28
				memory _t1120_195 _t1119_195 #1
				os_reg_0 = _t1120_195
				_t1121_195 = #28
				memory _t1122_195 _t1121_195 #1
				p1_reg_0 = _t1122_195
				_t1123_195 = #28
				memory _t1124_195 _t1123_195 #1
				p2_reg_0 = _t1124_195
				_t1125_195 = #28
				memory _t1126_195 _t1125_195 #1
				p3_reg_0 = _t1126_195
				_t1127_195 = #28
				memory _t1128_195 _t1127_195 #1
				p4_reg_0 = _t1128_195
				_t1129_195 = #28
				memory _t1130_195 _t1129_195 #1
				temp_reg_0 = _t1130_195
				_t1131_195 = #20
				memory _t1132_195 _t1131_195 #1
				all_processes_0 = _t1132_195
				_t1133_195 = #0
				_t1134_195 = _t1133_195 * #4
				_t1135_195 = all_processes_0 + _t1134_195
				*_t1135_195 = current_process_0
				_t1136_195 = #1
				_t1137_195 = _t1136_195 * #4
				_t1138_195 = all_processes_0 + _t1137_195
				_t1139_195 = #0
				*_t1138_195 = _t1139_195
				_t1140_195 = #2
				_t1141_195 = _t1140_195 * #4
				_t1142_195 = all_processes_0 + _t1141_195
				_t1143_195 = #0
				*_t1142_195 = _t1143_195
				_t1144_195 = #3
				_t1145_195 = _t1144_195 * #4
				_t1146_195 = all_processes_0 + _t1145_195
				_t1147_195 = #0
				*_t1146_195 = _t1147_195
				_t1148_195 = #4
				_t1149_195 = _t1148_195 * #4
				_t1150_195 = all_processes_0 + _t1149_195
				_t1151_195 = #0
				*_t1150_195 = _t1151_195
				pid_0 = pid_0 + #1
				FunctionCall create_process
				_t1152_195 = #1001
				param _t1152_195
				call label_209
				label_563:
				_t1153_195 = ReturnVal
				id_195 = _t1153_195
				FunctionCall create_process
				_t1154_195 = #1002
				param _t1154_195
				call label_209
				label_564:
				_t1155_195 = ReturnVal
				FunctionCall create_process
				_t1156_195 = #1003
				param _t1156_195
				call label_209
				label_565:
				_t1157_195 = ReturnVal
				asm "load" "R11" id_195 
				asm "switch" "1" id_195 
				_t1158_195 = #0
				Return _t1158_195
KEYBOARD_0 0
MAPSTART_0 4
Buffer_0 8
current_buffer_index_0 12
line_0 16
character_0 20
memory_0 24
displayLock_0 28
seed_0 32
R_food_0 36
C_food_0 40
current_process_0 44
prev_process_0 48
pid_0 52
os_reg_0 56
p1_reg_0 60
p2_reg_0 64
p3_reg_0 68
p4_reg_0 72
temp_reg_0 76
all_processes_0 80
from_proc_0 84
Parsing get_char
k_2 0
_t1_3 4
_t2_3 8
_t3_3 12
_t4_3 16
_t5_3 20
[94mlabel_1:[0m
[93m8[92m swi R12 R14 24 
[0m[94mlabel_2:[0m
[0m[94m_t1_3 = #1[0m
[93m9[92m li R8 1 
[93m10[92m swi R8 R14 4 
[0m[94mif ( _t1_3 == #0 ) goto label_5[0m
[93m11[92m lwi R8 R14 4 
[93m12[92m cmp R8 R0 
[93m13[92m jeq label_5 
[0m[94mgoto label_3[0m
[93m14[92m jmp label_3 
[0m[94mlabel_4:[0m
[0m[94mgoto label_2[0m
[93m15[92m jmp label_2 
[0m[94mlabel_3:[0m
[0m[94m_t2_3 = KEYBOARD_0 * #1[0m
[93m16[92m lwi R8 R13 0 
[93m17[92m li R9 1 
[93m18[92m mul R10 R8 R9 
[93m19[92m swi R10 R14 8 
[0m[94m_t3_3 = memory_0 + _t2_3[0m
[93m20[92m lwi R8 R13 24 
[93m21[92m lwi R9 R14 8 
[93m22[92m add R10 R8 R9 
[93m23[92m swi R10 R14 12 
[0m[94mk_2 = *_t3_3[0m
[93m24[92m lwi R8 R14 12 
[93m25[92m lbi R8 R8 0 
[93m26[92m swi R8 R14 0 
[0m[94m_t4_3 = #0[0m
[93m27[92m li R8 0 
[93m28[92m swi R8 R14 16 
[0m[94m_t5_3 = k_2 != _t4_3[0m
[93m29[92m lwi R8 R14 0 
[93m30[92m lwi R9 R14 16 
[93m31[92m neq R10 R8 R9 
[93m32[92m swi R10 R14 20 
[0m[94mif ( _t5_3 == #0 ) goto label_6[0m
[93m33[92m lwi R8 R14 20 
[93m34[92m cmp R8 R0 
[93m35[92m jeq label_6 
[0m[94mReturn k_2[0m
[93m36[92m lwi R8 R14 0 
[93m37[92m swi R8 R14 32 
[93m38[92m lwi R12 R14 24 
[93m39[92m li R8 176 
[93m40[92m lwi R9 R14 28 
[93m41[92m sub R10 R9 R8 
[93m42[92m addi R14 R14 36 
[93m43[92m jr R10 
[0m[94mgoto label_7[0m
[93m44[92m jmp label_7 
[0m[94mlabel_6:[0m
[0m[94mlabel_7:[0m
[0m[94mgoto label_4[0m
[93m45[92m jmp label_4 
[0m[94mlabel_5:[0m
[0m-------------------------------------
Parsing strlen
str_5 36
count_5 0
ch_6 4
_t6_5 8
_t7_6 12
_t8_6 16
_t9_6 20
_t10_6 24
_t11_6 28
_t12_6 32
[94mlabel_8:[0m
[93m46[92m swi R12 R14 40 
[0m[94m_t6_5 = #0[0m
[93m47[92m li R8 0 
[93m48[92m swi R8 R14 8 
[0m[94mcount_5 = _t6_5[0m
[93m49[92m lwi R8 R14 8 
[93m50[92m swi R8 R14 0 
[0m[94mlabel_9:[0m
[0m[94m_t7_6 = #1[0m
[93m51[92m li R8 1 
[93m52[92m swi R8 R14 12 
[0m[94mif ( _t7_6 == #0 ) goto label_12[0m
[93m53[92m lwi R8 R14 12 
[93m54[92m cmp R8 R0 
[93m55[92m jeq label_12 
[0m[94mgoto label_10[0m
[93m56[92m jmp label_10 
[0m[94mlabel_11:[0m
[0m[94mgoto label_9[0m
[93m57[92m jmp label_9 
[0m[94mlabel_10:[0m
[0m[94m_t8_6 = count_5 * #1[0m
[93m58[92m lwi R8 R14 0 
[93m59[92m li R9 1 
[93m60[92m mul R10 R8 R9 
[93m61[92m swi R10 R14 16 
[0m[94m_t9_6 = str_5 + _t8_6[0m
[93m62[92m lwi R8 R14 36 
[93m63[92m lwi R9 R14 16 
[93m64[92m add R10 R8 R9 
[93m65[92m swi R10 R14 20 
[0m[94mch_6 = *_t9_6[0m
[93m66[92m lwi R8 R14 20 
[93m67[92m lbi R8 R8 0 
[93m68[92m swi R8 R14 4 
[0m[94m_t10_6 = #0[0m
[93m69[92m li R8 0 
[93m70[92m swi R8 R14 24 
[0m[94m_t11_6 = ch_6 == _t10_6[0m
[93m71[92m lwi R8 R14 4 
[93m72[92m lwi R9 R14 24 
[93m73[92m eq R10 R8 R9 
[93m74[92m swi R10 R14 28 
[0m[94mif ( _t11_6 == #0 ) goto label_13[0m
[93m75[92m lwi R8 R14 28 
[93m76[92m cmp R8 R0 
[93m77[92m jeq label_13 
[0m[94mgoto label_12[0m
[93m78[92m jmp label_12 
[0m[94mgoto label_14[0m
[93m79[92m jmp label_14 
[0m[94mlabel_13:[0m
[0m[94mlabel_14:[0m
[0m[94m_t12_6 = count_5[0m
[93m80[92m lwi R8 R14 0 
[93m81[92m swi R8 R14 32 
[0m[94mcount_5 = count_5 + #1[0m
[93m82[92m lwi R8 R14 0 
[93m83[92m li R9 1 
[93m84[92m add R10 R8 R9 
[93m85[92m swi R10 R14 0 
[0m[94mgoto label_11[0m
[93m86[92m jmp label_11 
[0m[94mlabel_12:[0m
[0m[94mReturn count_5[0m
[93m87[92m lwi R8 R14 0 
[93m88[92m swi R8 R14 48 
[93m89[92m lwi R12 R14 40 
[93m90[92m li R8 380 
[93m91[92m lwi R9 R14 44 
[93m92[92m sub R10 R9 R8 
[93m93[92m addi R14 R14 52 
[93m94[92m jr R10 
[0m-------------------------------------
Parsing clear_shell
i_8 0
_t13_9 4
_t14_9 8
_t15_9 12
_t16_9 16
_t17_9 20
_t18_9 24
_t19_9 28
_t20_8 32
_t21_8 36
_t22_8 40
[94mlabel_15:[0m
[93m95[92m swi R12 R14 44 
[0m[94m_t13_9 = #9599[0m
[93m96[92m li R8 9599 
[93m97[92m swi R8 R14 4 
[0m[94mi_8 = _t13_9[0m
[93m98[92m lwi R8 R14 4 
[93m99[92m swi R8 R14 0 
[0m[94mlabel_16:[0m
[0m[94m_t14_9 = #0[0m
[93m100[92m li R8 0 
[93m101[92m swi R8 R14 8 
[0m[94m_t15_9 = i_8 >= _t14_9[0m
[93m102[92m lwi R8 R14 0 
[93m103[92m lwi R9 R14 8 
[93m104[92m ge R10 R8 R9 
[93m105[92m swi R10 R14 12 
[0m[94mif ( _t15_9 == #0 ) goto label_19[0m
[93m106[92m lwi R8 R14 12 
[93m107[92m cmp R8 R0 
[93m108[92m jeq label_19 
[0m[94mgoto label_17[0m
[93m109[92m jmp label_17 
[0m[94mlabel_18:[0m
[0m[94m_t16_9 = i_8[0m
[93m110[92m lwi R8 R14 0 
[93m111[92m swi R8 R14 16 
[0m[94mi_8 = i_8 - #1[0m
[93m112[92m lwi R8 R14 0 
[93m113[92m li R9 1 
[93m114[92m sub R10 R8 R9 
[93m115[92m swi R10 R14 0 
[0m[94mgoto label_16[0m
[93m116[92m jmp label_16 
[0m[94mlabel_17:[0m
[0m[94m_t17_9 = i_8 * #1[0m
[93m117[92m lwi R8 R14 0 
[93m118[92m li R9 1 
[93m119[92m mul R10 R8 R9 
[93m120[92m swi R10 R14 20 
[0m[94m_t18_9 = memory_0 + _t17_9[0m
[93m121[92m lwi R8 R13 24 
[93m122[92m lwi R9 R14 20 
[93m123[92m add R10 R8 R9 
[93m124[92m swi R10 R14 24 
[0m[94m_t19_9 = #0[0m
[93m125[92m li R8 0 
[93m126[92m swi R8 R14 28 
[0m[94m*_t18_9 = _t19_9[0m
[93m127[92m lwi R8 R14 28 
[93m128[92m lwi R7 R14 24 
[93m129[92m sbi R8 R7 0 
[0m[94mgoto label_18[0m
[93m130[92m jmp label_18 
[0m[94mlabel_19:[0m
[0m[94m_t20_8 = #0[0m
[93m131[92m li R8 0 
[93m132[92m swi R8 R14 32 
[0m[94mline_0 = _t20_8[0m
[93m133[92m lwi R8 R14 32 
[93m134[92m swi R8 R13 16 
[0m[94m_t21_8 = #0[0m
[93m135[92m li R8 0 
[93m136[92m swi R8 R14 36 
[0m[94mcharacter_0 = _t21_8[0m
[93m137[92m lwi R8 R14 36 
[93m138[92m swi R8 R13 20 
[0m[94m_t22_8 = #0[0m
[93m139[92m li R8 0 
[93m140[92m swi R8 R14 40 
[0m[94mReturn _t22_8[0m
[93m141[92m lwi R8 R14 40 
[93m142[92m swi R8 R14 52 
[93m143[92m lwi R12 R14 44 
[93m144[92m li R8 596 
[93m145[92m lwi R9 R14 48 
[93m146[92m sub R10 R9 R8 
[93m147[92m addi R14 R14 56 
[93m148[92m jr R10 
[0m-------------------------------------
Parsing display
arr_10 148
size_10 144
l_10 140
c_10 136
displayStart_10 0
k_10 4
j_11 8
a_11 12
m_12 16
b_12 20
_t23_10 24
_t24_10 28
_t25_11 32
_t26_11 36
_t27_11 40
_t28_11 44
_t29_11 48
_t30_11 52
_t31_12 56
_t32_12 60
_t33_12 64
_t34_12 68
_t35_12 72
_t36_12 76
_t37_12 80
_t38_12 84
_t39_12 88
_t40_12 92
_t41_12 96
_t42_12 100
_t43_12 104
_t44_12 108
_t45_12 112
_t46_12 116
_t47_12 120
_t48_12 124
_t49_12 128
_t50_10 132
[94mlabel_20:[0m
[93m149[92m swi R12 R14 152 
[0m[94m_t23_10 = #80[0m
[93m150[92m li R8 80 
[93m151[92m swi R8 R14 24 
[0m[94m_t24_10 = _t23_10 * l_10[0m
[93m152[92m lwi R8 R14 24 
[93m153[92m lwi R9 R14 140 
[93m154[92m mul R10 R8 R9 
[93m155[92m swi R10 R14 28 
[0m[94mdisplayStart_10 = _t24_10[0m
[93m156[92m lwi R8 R14 28 
[93m157[92m swi R8 R14 0 
[0m[94m_t25_11 = #0[0m
[93m158[92m li R8 0 
[93m159[92m swi R8 R14 32 
[0m[94mk_10 = _t25_11[0m
[93m160[92m lwi R8 R14 32 
[93m161[92m swi R8 R14 4 
[0m[94mlabel_21:[0m
[0m[94m_t26_11 = #8[0m
[93m162[92m li R8 8 
[93m163[92m swi R8 R14 36 
[0m[94m_t27_11 = k_10 < _t26_11[0m
[93m164[92m lwi R8 R14 4 
[93m165[92m lwi R9 R14 36 
[93m166[92m lt R10 R8 R9 
[93m167[92m swi R10 R14 40 
[0m[94mif ( _t27_11 == #0 ) goto label_24[0m
[93m168[92m lwi R8 R14 40 
[93m169[92m cmp R8 R0 
[93m170[92m jeq label_24 
[0m[94mgoto label_22[0m
[93m171[92m jmp label_22 
[0m[94mlabel_23:[0m
[0m[94m_t28_11 = k_10[0m
[93m172[92m lwi R8 R14 4 
[93m173[92m swi R8 R14 44 
[0m[94mk_10 = k_10 + #1[0m
[93m174[92m lwi R8 R14 4 
[93m175[92m li R9 1 
[93m176[92m add R10 R8 R9 
[93m177[92m swi R10 R14 4 
[0m[94mgoto label_21[0m
[93m178[92m jmp label_21 
[0m[94mlabel_22:[0m
[0m[94m_t29_11 = #80[0m
[93m179[92m li R8 80 
[93m180[92m swi R8 R14 48 
[0m[94m_t30_11 = k_10 * _t29_11[0m
[93m181[92m lwi R8 R14 4 
[93m182[92m lwi R9 R14 48 
[93m183[92m mul R10 R8 R9 
[93m184[92m swi R10 R14 52 
[0m[94ma_11 = _t30_11[0m
[93m185[92m lwi R8 R14 52 
[93m186[92m swi R8 R14 12 
[0m[94m_t31_12 = #0[0m
[93m187[92m li R8 0 
[93m188[92m swi R8 R14 56 
[0m[94mj_11 = _t31_12[0m
[93m189[92m lwi R8 R14 56 
[93m190[92m swi R8 R14 8 
[0m[94mlabel_25:[0m
[0m[94m_t32_12 = j_11 < size_10[0m
[93m191[92m lwi R8 R14 8 
[93m192[92m lwi R9 R14 144 
[93m193[92m lt R10 R8 R9 
[93m194[92m swi R10 R14 60 
[0m[94mif ( _t32_12 == #0 ) goto label_28[0m
[93m195[92m lwi R8 R14 60 
[93m196[92m cmp R8 R0 
[93m197[92m jeq label_28 
[0m[94mgoto label_26[0m
[93m198[92m jmp label_26 
[0m[94mlabel_27:[0m
[0m[94m_t33_12 = j_11[0m
[93m199[92m lwi R8 R14 8 
[93m200[92m swi R8 R14 64 
[0m[94mj_11 = j_11 + #1[0m
[93m201[92m lwi R8 R14 8 
[93m202[92m li R9 1 
[93m203[92m add R10 R8 R9 
[93m204[92m swi R10 R14 8 
[0m[94mgoto label_25[0m
[93m205[92m jmp label_25 
[0m[94mlabel_26:[0m
[0m[94m_t34_12 = a_11 + j_11[0m
[93m206[92m lwi R8 R14 12 
[93m207[92m lwi R9 R14 8 
[93m208[92m add R10 R8 R9 
[93m209[92m swi R10 R14 68 
[0m[94m_t35_12 = _t34_12 + c_10[0m
[93m210[92m lwi R8 R14 68 
[93m211[92m lwi R9 R14 136 
[93m212[92m add R10 R8 R9 
[93m213[92m swi R10 R14 72 
[0m[94mm_12 = _t35_12[0m
[93m214[92m lwi R8 R14 72 
[93m215[92m swi R8 R14 16 
[0m[94m_t36_12 = c_10 + j_11[0m
[93m216[92m lwi R8 R14 136 
[93m217[92m lwi R9 R14 8 
[93m218[92m add R10 R8 R9 
[93m219[92m swi R10 R14 76 
[0m[94m_t37_12 = #80[0m
[93m220[92m li R8 80 
[93m221[92m swi R8 R14 80 
[0m[94m_t38_12 = _t36_12 >= _t37_12[0m
[93m222[92m lwi R8 R14 76 
[93m223[92m lwi R9 R14 80 
[93m224[92m ge R10 R8 R9 
[93m225[92m swi R10 R14 84 
[0m[94mif ( _t38_12 == #0 ) goto label_29[0m
[93m226[92m lwi R8 R14 84 
[93m227[92m cmp R8 R0 
[93m228[92m jeq label_29 
[0m[94mgoto label_28[0m
[93m229[92m jmp label_28 
[0m[94mgoto label_30[0m
[93m230[92m jmp label_30 
[0m[94mlabel_29:[0m
[0m[94mlabel_30:[0m
[0m[94m_t39_12 = j_11 * #1[0m
[93m231[92m lwi R8 R14 8 
[93m232[92m li R9 1 
[93m233[92m mul R10 R8 R9 
[93m234[92m swi R10 R14 88 
[0m[94m_t40_12 = arr_10 + _t39_12[0m
[93m235[92m lwi R8 R14 148 
[93m236[92m lwi R9 R14 88 
[93m237[92m add R10 R8 R9 
[93m238[92m swi R10 R14 92 
[0m[94mb_12 = *_t40_12[0m
[93m239[92m lwi R8 R14 92 
[93m240[92m lbi R8 R8 0 
[93m241[92m swi R8 R14 20 
[0m[94m_t41_12 = #8[0m
[93m242[92m li R8 8 
[93m243[92m swi R8 R14 96 
[0m[94m_t42_12 = b_12 * _t41_12[0m
[93m244[92m lwi R8 R14 20 
[93m245[92m lwi R9 R14 96 
[93m246[92m mul R10 R8 R9 
[93m247[92m swi R10 R14 100 
[0m[94mb_12 = _t42_12[0m
[93m248[92m lwi R8 R14 100 
[93m249[92m swi R8 R14 20 
[0m[94m_t43_12 = displayStart_10 + m_12[0m
[93m250[92m lwi R8 R14 0 
[93m251[92m lwi R9 R14 16 
[93m252[92m add R10 R8 R9 
[93m253[92m swi R10 R14 104 
[0m[94m_t44_12 = _t43_12 * #1[0m
[93m254[92m lwi R8 R14 104 
[93m255[92m li R9 1 
[93m256[92m mul R10 R8 R9 
[93m257[92m swi R10 R14 108 
[0m[94m_t45_12 = memory_0 + _t44_12[0m
[93m258[92m lwi R8 R13 24 
[93m259[92m lwi R9 R14 108 
[93m260[92m add R10 R8 R9 
[93m261[92m swi R10 R14 112 
[0m[94m_t46_12 = MAPSTART_0 + b_12[0m
[93m262[92m lwi R8 R13 4 
[93m263[92m lwi R9 R14 20 
[93m264[92m add R10 R8 R9 
[93m265[92m swi R10 R14 116 
[0m[94m_t47_12 = _t46_12 + k_10[0m
[93m266[92m lwi R8 R14 116 
[93m267[92m lwi R9 R14 4 
[93m268[92m add R10 R8 R9 
[93m269[92m swi R10 R14 120 
[0m[94m_t48_12 = _t47_12 * #1[0m
[93m270[92m lwi R8 R14 120 
[93m271[92m li R9 1 
[93m272[92m mul R10 R8 R9 
[93m273[92m swi R10 R14 124 
[0m[94m_t49_12 = memory_0 + _t48_12[0m
[93m274[92m lwi R8 R13 24 
[93m275[92m lwi R9 R14 124 
[93m276[92m add R10 R8 R9 
[93m277[92m swi R10 R14 128 
[0m[94m*_t45_12 = *_t49_12[0m
[93m278[92m lwi R8 R14 128 
[93m279[92m lbi R8 R8 0 
[93m280[92m lwi R7 R14 112 
[93m281[92m sbi R8 R7 0 
[0m[94mgoto label_27[0m
[93m282[92m jmp label_27 
[0m[94mlabel_28:[0m
[0m[94mgoto label_23[0m
[93m283[92m jmp label_23 
[0m[94mlabel_24:[0m
[0m[94m_t50_10 = #0[0m
[93m284[92m li R8 0 
[93m285[92m swi R8 R14 132 
[0m[94mReturn _t50_10[0m
[93m286[92m lwi R8 R14 132 
[93m287[92m swi R8 R14 160 
[93m288[92m lwi R12 R14 152 
[93m289[92m li R8 1176 
[93m290[92m lwi R9 R14 156 
[93m291[92m sub R10 R9 R8 
[93m292[92m addi R14 R14 164 
[93m293[92m jr R10 
[0m-------------------------------------
Parsing welcome_screen
str_14 0
i_14 4
hello_14 8
len_14 12
key_14 16
_t51_14 20
_t52_14 24
_t53_14 28
_t54_14 32
_t55_14 36
_t56_14 40
_t57_14 44
_t58_14 48
_t59_14 52
_t60_15 56
_t61_15 60
_t62_15 64
_t63_15 68
_t64_15 72
_t65_15 76
_t66_15 80
_t67_16 84
_t68_16 88
_t69_16 92
_t70_16 96
_t71_16 100
_t72_16 104
_t73_16 108
_t74_14 112
_t75_14 116
_t76_14 120
_t77_14 124
_t78_14 128
_t79_17 132
_t80_17 136
_t81_17 140
_t82_17 144
_t83_14 148
_t84_14 152
[94mlabel_31:[0m
[93m294[92m swi R12 R14 156 
[0m[94mstring _t51_14 "########################################"[0m
[93m295[92m subi R12 R12 44 
[93m296[92m li R8 35 
[93m297[92m sbi R8 R12 0 
[93m298[92m li R8 35 
[93m299[92m sbi R8 R12 1 
[93m300[92m li R8 35 
[93m301[92m sbi R8 R12 2 
[93m302[92m li R8 35 
[93m303[92m sbi R8 R12 3 
[93m304[92m li R8 35 
[93m305[92m sbi R8 R12 4 
[93m306[92m li R8 35 
[93m307[92m sbi R8 R12 5 
[93m308[92m li R8 35 
[93m309[92m sbi R8 R12 6 
[93m310[92m li R8 35 
[93m311[92m sbi R8 R12 7 
[93m312[92m li R8 35 
[93m313[92m sbi R8 R12 8 
[93m314[92m li R8 35 
[93m315[92m sbi R8 R12 9 
[93m316[92m li R8 35 
[93m317[92m sbi R8 R12 10 
[93m318[92m li R8 35 
[93m319[92m sbi R8 R12 11 
[93m320[92m li R8 35 
[93m321[92m sbi R8 R12 12 
[93m322[92m li R8 35 
[93m323[92m sbi R8 R12 13 
[93m324[92m li R8 35 
[93m325[92m sbi R8 R12 14 
[93m326[92m li R8 35 
[93m327[92m sbi R8 R12 15 
[93m328[92m li R8 35 
[93m329[92m sbi R8 R12 16 
[93m330[92m li R8 35 
[93m331[92m sbi R8 R12 17 
[93m332[92m li R8 35 
[93m333[92m sbi R8 R12 18 
[93m334[92m li R8 35 
[93m335[92m sbi R8 R12 19 
[93m336[92m li R8 35 
[93m337[92m sbi R8 R12 20 
[93m338[92m li R8 35 
[93m339[92m sbi R8 R12 21 
[93m340[92m li R8 35 
[93m341[92m sbi R8 R12 22 
[93m342[92m li R8 35 
[93m343[92m sbi R8 R12 23 
[93m344[92m li R8 35 
[93m345[92m sbi R8 R12 24 
[93m346[92m li R8 35 
[93m347[92m sbi R8 R12 25 
[93m348[92m li R8 35 
[93m349[92m sbi R8 R12 26 
[93m350[92m li R8 35 
[93m351[92m sbi R8 R12 27 
[93m352[92m li R8 35 
[93m353[92m sbi R8 R12 28 
[93m354[92m li R8 35 
[93m355[92m sbi R8 R12 29 
[93m356[92m li R8 35 
[93m357[92m sbi R8 R12 30 
[93m358[92m li R8 35 
[93m359[92m sbi R8 R12 31 
[93m360[92m li R8 35 
[93m361[92m sbi R8 R12 32 
[93m362[92m li R8 35 
[93m363[92m sbi R8 R12 33 
[93m364[92m li R8 35 
[93m365[92m sbi R8 R12 34 
[93m366[92m li R8 35 
[93m367[92m sbi R8 R12 35 
[93m368[92m li R8 35 
[93m369[92m sbi R8 R12 36 
[93m370[92m li R8 35 
[93m371[92m sbi R8 R12 37 
[93m372[92m li R8 35 
[93m373[92m sbi R8 R12 38 
[93m374[92m li R8 35 
[93m375[92m sbi R8 R12 39 
[93m376[92m sbi R0 R12 40 
[93m377[92m swi R12 R14 20 
[0m[94mstr_14 = _t51_14[0m
[93m378[92m lwi R8 R14 20 
[93m379[92m swi R8 R14 0 
[0m[94mFunctionCall display[0m
[0m[94mparam str_14[0m
[93m380[92m lwi R8 R14 0 
[93m381[92m swi R8 R14 -16 
[0m[94m_t52_14 = #40[0m
[93m382[92m li R8 40 
[93m383[92m swi R8 R14 24 
[0m[94mparam _t52_14[0m
[93m384[92m lwi R8 R14 24 
[93m385[92m swi R8 R14 -20 
[0m[94m_t53_14 = #0[0m
[93m386[92m li R8 0 
[93m387[92m swi R8 R14 28 
[0m[94mparam _t53_14[0m
[93m388[92m lwi R8 R14 28 
[93m389[92m swi R8 R14 -24 
[0m[94m_t54_14 = #0[0m
[93m390[92m li R8 0 
[93m391[92m swi R8 R14 32 
[0m[94mparam _t54_14[0m
[93m392[92m lwi R8 R14 32 
[93m393[92m swi R8 R14 -28 
[0m[94mcall label_20[0m
[93m394[92m la R8 label_32 
[93m395[92m swi R8 R14 -8 
[93m396[92m addi R14 R14 -164 
[93m397[92m jmp label_20 
[0m[94mlabel_32:[0m
[0m[94m_t55_14 = ReturnVal[0m
[93m398[92m lwi R8 R14 -4 
[93m399[92m swi R8 R14 36 
[0m[94mFunctionCall display[0m
[0m[94mparam str_14[0m
[93m400[92m lwi R8 R14 0 
[93m401[92m swi R8 R14 -16 
[0m[94m_t56_14 = #40[0m
[93m402[92m li R8 40 
[93m403[92m swi R8 R14 40 
[0m[94mparam _t56_14[0m
[93m404[92m lwi R8 R14 40 
[93m405[92m swi R8 R14 -20 
[0m[94m_t57_14 = #29[0m
[93m406[92m li R8 29 
[93m407[92m swi R8 R14 44 
[0m[94mparam _t57_14[0m
[93m408[92m lwi R8 R14 44 
[93m409[92m swi R8 R14 -24 
[0m[94m_t58_14 = #0[0m
[93m410[92m li R8 0 
[93m411[92m swi R8 R14 48 
[0m[94mparam _t58_14[0m
[93m412[92m lwi R8 R14 48 
[93m413[92m swi R8 R14 -28 
[0m[94mcall label_20[0m
[93m414[92m la R8 label_33 
[93m415[92m swi R8 R14 -8 
[93m416[92m addi R14 R14 -164 
[93m417[92m jmp label_20 
[0m[94mlabel_33:[0m
[0m[94m_t59_14 = ReturnVal[0m
[93m418[92m lwi R8 R14 -4 
[93m419[92m swi R8 R14 52 
[0m[94m_t60_15 = #1[0m
[93m420[92m li R8 1 
[93m421[92m swi R8 R14 56 
[0m[94mi_14 = _t60_15[0m
[93m422[92m lwi R8 R14 56 
[93m423[92m swi R8 R14 4 
[0m[94mlabel_34:[0m
[0m[94m_t61_15 = #39[0m
[93m424[92m li R8 39 
[93m425[92m swi R8 R14 60 
[0m[94m_t62_15 = i_14 < _t61_15[0m
[93m426[92m lwi R8 R14 4 
[93m427[92m lwi R9 R14 60 
[93m428[92m lt R10 R8 R9 
[93m429[92m swi R10 R14 64 
[0m[94mif ( _t62_15 == #0 ) goto label_37[0m
[93m430[92m lwi R8 R14 64 
[93m431[92m cmp R8 R0 
[93m432[92m jeq label_37 
[0m[94mgoto label_35[0m
[93m433[92m jmp label_35 
[0m[94mlabel_36:[0m
[0m[94m_t63_15 = i_14[0m
[93m434[92m lwi R8 R14 4 
[93m435[92m swi R8 R14 68 
[0m[94mi_14 = i_14 + #1[0m
[93m436[92m lwi R8 R14 4 
[93m437[92m li R9 1 
[93m438[92m add R10 R8 R9 
[93m439[92m swi R10 R14 4 
[0m[94mgoto label_34[0m
[93m440[92m jmp label_34 
[0m[94mlabel_35:[0m
[0m[94m_t64_15 = i_14 * #1[0m
[93m441[92m lwi R8 R14 4 
[93m442[92m li R9 1 
[93m443[92m mul R10 R8 R9 
[93m444[92m swi R10 R14 72 
[0m[94m_t65_15 = str_14 + _t64_15[0m
[93m445[92m lwi R8 R14 0 
[93m446[92m lwi R9 R14 72 
[93m447[92m add R10 R8 R9 
[93m448[92m swi R10 R14 76 
[0m[94m_t66_15 = #32[0m
[93m449[92m li R8 32 
[93m450[92m swi R8 R14 80 
[0m[94m*_t65_15 = _t66_15[0m
[93m451[92m lwi R8 R14 80 
[93m452[92m lwi R7 R14 76 
[93m453[92m sbi R8 R7 0 
[0m[94mgoto label_36[0m
[93m454[92m jmp label_36 
[0m[94mlabel_37:[0m
[0m[94m_t67_16 = #1[0m
[93m455[92m li R8 1 
[93m456[92m swi R8 R14 84 
[0m[94mi_14 = _t67_16[0m
[93m457[92m lwi R8 R14 84 
[93m458[92m swi R8 R14 4 
[0m[94mlabel_38:[0m
[0m[94m_t68_16 = #29[0m
[93m459[92m li R8 29 
[93m460[92m swi R8 R14 88 
[0m[94m_t69_16 = i_14 < _t68_16[0m
[93m461[92m lwi R8 R14 4 
[93m462[92m lwi R9 R14 88 
[93m463[92m lt R10 R8 R9 
[93m464[92m swi R10 R14 92 
[0m[94mif ( _t69_16 == #0 ) goto label_41[0m
[93m465[92m lwi R8 R14 92 
[93m466[92m cmp R8 R0 
[93m467[92m jeq label_41 
[0m[94mgoto label_39[0m
[93m468[92m jmp label_39 
[0m[94mlabel_40:[0m
[0m[94m_t70_16 = i_14[0m
[93m469[92m lwi R8 R14 4 
[93m470[92m swi R8 R14 96 
[0m[94mi_14 = i_14 + #1[0m
[93m471[92m lwi R8 R14 4 
[93m472[92m li R9 1 
[93m473[92m add R10 R8 R9 
[93m474[92m swi R10 R14 4 
[0m[94mgoto label_38[0m
[93m475[92m jmp label_38 
[0m[94mlabel_39:[0m
[0m[94mFunctionCall display[0m
[0m[94mparam str_14[0m
[93m476[92m lwi R8 R14 0 
[93m477[92m swi R8 R14 -16 
[0m[94m_t71_16 = #40[0m
[93m478[92m li R8 40 
[93m479[92m swi R8 R14 100 
[0m[94mparam _t71_16[0m
[93m480[92m lwi R8 R14 100 
[93m481[92m swi R8 R14 -20 
[0m[94mparam i_14[0m
[93m482[92m lwi R8 R14 4 
[93m483[92m swi R8 R14 -24 
[0m[94m_t72_16 = #0[0m
[93m484[92m li R8 0 
[93m485[92m swi R8 R14 104 
[0m[94mparam _t72_16[0m
[93m486[92m lwi R8 R14 104 
[93m487[92m swi R8 R14 -28 
[0m[94mcall label_20[0m
[93m488[92m la R8 label_42 
[93m489[92m swi R8 R14 -8 
[93m490[92m addi R14 R14 -164 
[93m491[92m jmp label_20 
[0m[94mlabel_42:[0m
[0m[94m_t73_16 = ReturnVal[0m
[93m492[92m lwi R8 R14 -4 
[93m493[92m swi R8 R14 108 
[0m[94mgoto label_40[0m
[93m494[92m jmp label_40 
[0m[94mlabel_41:[0m
[0m[94mstring _t74_14 "Hello World!!!"[0m
[93m495[92m subi R12 R12 16 
[93m496[92m li R8 72 
[93m497[92m sbi R8 R12 0 
[93m498[92m li R8 101 
[93m499[92m sbi R8 R12 1 
[93m500[92m li R8 108 
[93m501[92m sbi R8 R12 2 
[93m502[92m li R8 108 
[93m503[92m sbi R8 R12 3 
[93m504[92m li R8 111 
[93m505[92m sbi R8 R12 4 
[93m506[92m li R8 32 
[93m507[92m sbi R8 R12 5 
[93m508[92m li R8 87 
[93m509[92m sbi R8 R12 6 
[93m510[92m li R8 111 
[93m511[92m sbi R8 R12 7 
[93m512[92m li R8 114 
[93m513[92m sbi R8 R12 8 
[93m514[92m li R8 108 
[93m515[92m sbi R8 R12 9 
[93m516[92m li R8 100 
[93m517[92m sbi R8 R12 10 
[93m518[92m li R8 33 
[93m519[92m sbi R8 R12 11 
[93m520[92m li R8 33 
[93m521[92m sbi R8 R12 12 
[93m522[92m li R8 33 
[93m523[92m sbi R8 R12 13 
[93m524[92m sbi R0 R12 14 
[93m525[92m swi R12 R14 112 
[0m[94mhello_14 = _t74_14[0m
[93m526[92m lwi R8 R14 112 
[93m527[92m swi R8 R14 8 
[0m[94mFunctionCall strlen[0m
[0m[94mparam hello_14[0m
[93m528[92m lwi R8 R14 8 
[93m529[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m530[92m la R8 label_43 
[93m531[92m swi R8 R14 -8 
[93m532[92m addi R14 R14 -52 
[93m533[92m jmp label_8 
[0m[94mlabel_43:[0m
[0m[94m_t75_14 = ReturnVal[0m
[93m534[92m lwi R8 R14 -4 
[93m535[92m swi R8 R14 116 
[0m[94mlen_14 = _t75_14[0m
[93m536[92m lwi R8 R14 116 
[93m537[92m swi R8 R14 12 
[0m[94mFunctionCall display[0m
[0m[94mparam hello_14[0m
[93m538[92m lwi R8 R14 8 
[93m539[92m swi R8 R14 -16 
[0m[94mparam len_14[0m
[93m540[92m lwi R8 R14 12 
[93m541[92m swi R8 R14 -20 
[0m[94m_t76_14 = #15[0m
[93m542[92m li R8 15 
[93m543[92m swi R8 R14 120 
[0m[94mparam _t76_14[0m
[93m544[92m lwi R8 R14 120 
[93m545[92m swi R8 R14 -24 
[0m[94m_t77_14 = #13[0m
[93m546[92m li R8 13 
[93m547[92m swi R8 R14 124 
[0m[94mparam _t77_14[0m
[93m548[92m lwi R8 R14 124 
[93m549[92m swi R8 R14 -28 
[0m[94mcall label_20[0m
[93m550[92m la R8 label_44 
[93m551[92m swi R8 R14 -8 
[93m552[92m addi R14 R14 -164 
[93m553[92m jmp label_20 
[0m[94mlabel_44:[0m
[0m[94m_t78_14 = ReturnVal[0m
[93m554[92m lwi R8 R14 -4 
[93m555[92m swi R8 R14 128 
[0m[94mlabel_45:[0m
[0m[94m_t79_17 = #1[0m
[93m556[92m li R8 1 
[93m557[92m swi R8 R14 132 
[0m[94mif ( _t79_17 == #0 ) goto label_48[0m
[93m558[92m lwi R8 R14 132 
[93m559[92m cmp R8 R0 
[93m560[92m jeq label_48 
[0m[94mgoto label_46[0m
[93m561[92m jmp label_46 
[0m[94mlabel_47:[0m
[0m[94mgoto label_45[0m
[93m562[92m jmp label_45 
[0m[94mlabel_46:[0m
[0m[94mFunctionCall get_char[0m
[0m[94mcall label_1[0m
[93m563[92m la R8 label_49 
[93m564[92m swi R8 R14 -8 
[93m565[92m addi R14 R14 -36 
[93m566[92m jmp label_1 
[0m[94mlabel_49:[0m
[0m[94m_t80_17 = ReturnVal[0m
[93m567[92m lwi R8 R14 -4 
[93m568[92m swi R8 R14 136 
[0m[94mkey_14 = _t80_17[0m
[93m569[92m lwi R8 R14 136 
[93m570[92m swi R8 R14 16 
[0m[94m_t81_17 = #13[0m
[93m571[92m li R8 13 
[93m572[92m swi R8 R14 140 
[0m[94m_t82_17 = key_14 == _t81_17[0m
[93m573[92m lwi R8 R14 16 
[93m574[92m lwi R9 R14 140 
[93m575[92m eq R10 R8 R9 
[93m576[92m swi R10 R14 144 
[0m[94mif ( _t82_17 == #0 ) goto label_50[0m
[93m577[92m lwi R8 R14 144 
[93m578[92m cmp R8 R0 
[93m579[92m jeq label_50 
[0m[94mgoto label_48[0m
[93m580[92m jmp label_48 
[0m[94mgoto label_51[0m
[93m581[92m jmp label_51 
[0m[94mlabel_50:[0m
[0m[94mlabel_51:[0m
[0m[94mgoto label_47[0m
[93m582[92m jmp label_47 
[0m[94mlabel_48:[0m
[0m[94mFunctionCall clear_shell[0m
[0m[94mcall label_15[0m
[93m583[92m la R8 label_52 
[93m584[92m swi R8 R14 -8 
[93m585[92m addi R14 R14 -56 
[93m586[92m jmp label_15 
[0m[94mlabel_52:[0m
[0m[94m_t83_14 = ReturnVal[0m
[93m587[92m lwi R8 R14 -4 
[93m588[92m swi R8 R14 148 
[0m[94m_t84_14 = #0[0m
[93m589[92m li R8 0 
[93m590[92m swi R8 R14 152 
[0m[94mReturn _t84_14[0m
[93m591[92m lwi R8 R14 152 
[93m592[92m swi R8 R14 164 
[93m593[92m lwi R12 R14 156 
[93m594[92m li R8 2396 
[93m595[92m lwi R9 R14 160 
[93m596[92m sub R10 R9 R8 
[93m597[92m addi R14 R14 168 
[93m598[92m jr R10 
[0m-------------------------------------
Parsing get_line
i_19 0
temp_21 4
_t85_20 8
_t86_20 12
_t87_20 16
_t88_20 20
_t89_20 24
_t90_20 28
_t91_20 32
_t92_19 36
_t93_21 40
_t94_21 44
_t95_21 48
_t96_21 52
_t97_21 56
_t98_21 60
_t99_21 64
_t100_21 68
_t101_24 72
_t102_24 76
_t103_25 80
_t104_25 84
_t105_25 88
_t106_25 92
_t107_26 96
_t108_26 100
_t109_26 104
_t110_21 108
_t111_21 112
_t112_19 116
_t113_19 120
_t114_19 124
_t115_19 128
_t116_19 132
_t117_19 136
_t118_19 140
_t119_27 144
_t120_19 148
[94mlabel_53:[0m
[93m599[92m swi R12 R14 152 
[0m[94m_t85_20 = #0[0m
[93m600[92m li R8 0 
[93m601[92m swi R8 R14 8 
[0m[94mi_19 = _t85_20[0m
[93m602[92m lwi R8 R14 8 
[93m603[92m swi R8 R14 0 
[0m[94mlabel_54:[0m
[0m[94m_t86_20 = #40[0m
[93m604[92m li R8 40 
[93m605[92m swi R8 R14 12 
[0m[94m_t87_20 = i_19 < _t86_20[0m
[93m606[92m lwi R8 R14 0 
[93m607[92m lwi R9 R14 12 
[93m608[92m lt R10 R8 R9 
[93m609[92m swi R10 R14 16 
[0m[94mif ( _t87_20 == #0 ) goto label_57[0m
[93m610[92m lwi R8 R14 16 
[93m611[92m cmp R8 R0 
[93m612[92m jeq label_57 
[0m[94mgoto label_55[0m
[93m613[92m jmp label_55 
[0m[94mlabel_56:[0m
[0m[94m_t88_20 = i_19[0m
[93m614[92m lwi R8 R14 0 
[93m615[92m swi R8 R14 20 
[0m[94mi_19 = i_19 + #1[0m
[93m616[92m lwi R8 R14 0 
[93m617[92m li R9 1 
[93m618[92m add R10 R8 R9 
[93m619[92m swi R10 R14 0 
[0m[94mgoto label_54[0m
[93m620[92m jmp label_54 
[0m[94mlabel_55:[0m
[0m[94m_t89_20 = i_19 * #1[0m
[93m621[92m lwi R8 R14 0 
[93m622[92m li R9 1 
[93m623[92m mul R10 R8 R9 
[93m624[92m swi R10 R14 24 
[0m[94m_t90_20 = Buffer_0 + _t89_20[0m
[93m625[92m lwi R8 R13 8 
[93m626[92m lwi R9 R14 24 
[93m627[92m add R10 R8 R9 
[93m628[92m swi R10 R14 28 
[0m[94m_t91_20 = #0[0m
[93m629[92m li R8 0 
[93m630[92m swi R8 R14 32 
[0m[94m*_t90_20 = _t91_20[0m
[93m631[92m lwi R8 R14 32 
[93m632[92m lwi R7 R14 28 
[93m633[92m sbi R8 R7 0 
[0m[94mgoto label_56[0m
[93m634[92m jmp label_56 
[0m[94mlabel_57:[0m
[0m[94m_t92_19 = #0[0m
[93m635[92m li R8 0 
[93m636[92m swi R8 R14 36 
[0m[94mi_19 = _t92_19[0m
[93m637[92m lwi R8 R14 36 
[93m638[92m swi R8 R14 0 
[0m[94mlabel_58:[0m
[0m[94m_t93_21 = #1[0m
[93m639[92m li R8 1 
[93m640[92m swi R8 R14 40 
[0m[94mif ( _t93_21 == #0 ) goto label_61[0m
[93m641[92m lwi R8 R14 40 
[93m642[92m cmp R8 R0 
[93m643[92m jeq label_61 
[0m[94mgoto label_59[0m
[93m644[92m jmp label_59 
[0m[94mlabel_60:[0m
[0m[94mgoto label_58[0m
[93m645[92m jmp label_58 
[0m[94mlabel_59:[0m
[0m[94m_t94_21 = #40[0m
[93m646[92m li R8 40 
[93m647[92m swi R8 R14 44 
[0m[94m_t95_21 = i_19 == _t94_21[0m
[93m648[92m lwi R8 R14 0 
[93m649[92m lwi R9 R14 44 
[93m650[92m eq R10 R8 R9 
[93m651[92m swi R10 R14 48 
[0m[94mif ( _t95_21 == #0 ) goto label_62[0m
[93m652[92m lwi R8 R14 48 
[93m653[92m cmp R8 R0 
[93m654[92m jeq label_62 
[0m[94mgoto label_61[0m
[93m655[92m jmp label_61 
[0m[94mgoto label_63[0m
[93m656[92m jmp label_63 
[0m[94mlabel_62:[0m
[0m[94mlabel_63:[0m
[0m[94mFunctionCall get_char[0m
[0m[94mcall label_1[0m
[93m657[92m la R8 label_64 
[93m658[92m swi R8 R14 -8 
[93m659[92m addi R14 R14 -36 
[93m660[92m jmp label_1 
[0m[94mlabel_64:[0m
[0m[94m_t96_21 = ReturnVal[0m
[93m661[92m lwi R8 R14 -4 
[93m662[92m swi R8 R14 52 
[0m[94mtemp_21 = _t96_21[0m
[93m663[92m lwi R8 R14 52 
[93m664[92m swi R8 R14 4 
[0m[94m_t97_21 = #13[0m
[93m665[92m li R8 13 
[93m666[92m swi R8 R14 56 
[0m[94m_t98_21 = temp_21 == _t97_21[0m
[93m667[92m lwi R8 R14 4 
[93m668[92m lwi R9 R14 56 
[93m669[92m eq R10 R8 R9 
[93m670[92m swi R10 R14 60 
[0m[94mif ( _t98_21 == #0 ) goto label_65[0m
[93m671[92m lwi R8 R14 60 
[93m672[92m cmp R8 R0 
[93m673[92m jeq label_65 
[0m[94mgoto label_61[0m
[93m674[92m jmp label_61 
[0m[94mgoto label_66[0m
[93m675[92m jmp label_66 
[0m[94mlabel_65:[0m
[0m[94m_t99_21 = #8[0m
[93m676[92m li R8 8 
[93m677[92m swi R8 R14 64 
[0m[94m_t100_21 = temp_21 == _t99_21[0m
[93m678[92m lwi R8 R14 4 
[93m679[92m lwi R9 R14 64 
[93m680[92m eq R10 R8 R9 
[93m681[92m swi R10 R14 68 
[0m[94mif ( _t100_21 == #0 ) goto label_67[0m
[93m682[92m lwi R8 R14 68 
[93m683[92m cmp R8 R0 
[93m684[92m jeq label_67 
[0m[94m_t101_24 = #0[0m
[93m685[92m li R8 0 
[93m686[92m swi R8 R14 72 
[0m[94m_t102_24 = i_19 != _t101_24[0m
[93m687[92m lwi R8 R14 0 
[93m688[92m lwi R9 R14 72 
[93m689[92m neq R10 R8 R9 
[93m690[92m swi R10 R14 76 
[0m[94mif ( _t102_24 == #0 ) goto label_68[0m
[93m691[92m lwi R8 R14 76 
[93m692[92m cmp R8 R0 
[93m693[92m jeq label_68 
[0m[94m_t103_25 = i_19[0m
[93m694[92m lwi R8 R14 0 
[93m695[92m swi R8 R14 80 
[0m[94mi_19 = i_19 - #1[0m
[93m696[92m lwi R8 R14 0 
[93m697[92m li R9 1 
[93m698[92m sub R10 R8 R9 
[93m699[92m swi R10 R14 0 
[0m[94m_t104_25 = i_19 * #1[0m
[93m700[92m lwi R8 R14 0 
[93m701[92m li R9 1 
[93m702[92m mul R10 R8 R9 
[93m703[92m swi R10 R14 84 
[0m[94m_t105_25 = Buffer_0 + _t104_25[0m
[93m704[92m lwi R8 R13 8 
[93m705[92m lwi R9 R14 84 
[93m706[92m add R10 R8 R9 
[93m707[92m swi R10 R14 88 
[0m[94m_t106_25 = #0[0m
[93m708[92m li R8 0 
[93m709[92m swi R8 R14 92 
[0m[94m*_t105_25 = _t106_25[0m
[93m710[92m lwi R8 R14 92 
[93m711[92m lwi R7 R14 88 
[93m712[92m sbi R8 R7 0 
[0m[94mgoto label_69[0m
[93m713[92m jmp label_69 
[0m[94mlabel_68:[0m
[0m[94mlabel_69:[0m
[0m[94mgoto label_66[0m
[93m714[92m jmp label_66 
[0m[94mlabel_67:[0m
[0m[94m_t107_26 = i_19 * #1[0m
[93m715[92m lwi R8 R14 0 
[93m716[92m li R9 1 
[93m717[92m mul R10 R8 R9 
[93m718[92m swi R10 R14 96 
[0m[94m_t108_26 = Buffer_0 + _t107_26[0m
[93m719[92m lwi R8 R13 8 
[93m720[92m lwi R9 R14 96 
[93m721[92m add R10 R8 R9 
[93m722[92m swi R10 R14 100 
[0m[94m*_t108_26 = temp_21[0m
[93m723[92m lwi R8 R14 4 
[93m724[92m lwi R7 R14 100 
[93m725[92m sbi R8 R7 0 
[0m[94m_t109_26 = i_19[0m
[93m726[92m lwi R8 R14 0 
[93m727[92m swi R8 R14 104 
[0m[94mi_19 = i_19 + #1[0m
[93m728[92m lwi R8 R14 0 
[93m729[92m li R9 1 
[93m730[92m add R10 R8 R9 
[93m731[92m swi R10 R14 0 
[0m[94mlabel_66:[0m
[0m[94mFunctionCall display[0m
[0m[94mparam Buffer_0[0m
[93m732[92m lwi R8 R13 8 
[93m733[92m swi R8 R14 -16 
[0m[94m_t110_21 = #35[0m
[93m734[92m li R8 35 
[93m735[92m swi R8 R14 108 
[0m[94mparam _t110_21[0m
[93m736[92m lwi R8 R14 108 
[93m737[92m swi R8 R14 -20 
[0m[94mparam line_0[0m
[93m738[92m lwi R8 R13 16 
[93m739[92m swi R8 R14 -24 
[0m[94mparam character_0[0m
[93m740[92m lwi R8 R13 20 
[93m741[92m swi R8 R14 -28 
[0m[94mcall label_20[0m
[93m742[92m la R8 label_70 
[93m743[92m swi R8 R14 -8 
[93m744[92m addi R14 R14 -164 
[93m745[92m jmp label_20 
[0m[94mlabel_70:[0m
[0m[94m_t111_21 = ReturnVal[0m
[93m746[92m lwi R8 R14 -4 
[93m747[92m swi R8 R14 112 
[0m[94mgoto label_60[0m
[93m748[92m jmp label_60 
[0m[94mlabel_61:[0m
[0m[94m_t112_19 = #0[0m
[93m749[92m li R8 0 
[93m750[92m swi R8 R14 116 
[0m[94mcurrent_buffer_index_0 = _t112_19[0m
[93m751[92m lwi R8 R14 116 
[93m752[92m swi R8 R13 12 
[0m[94m_t113_19 = #1[0m
[93m753[92m li R8 1 
[93m754[92m swi R8 R14 120 
[0m[94m_t114_19 = line_0 + _t113_19[0m
[93m755[92m lwi R8 R13 16 
[93m756[92m lwi R9 R14 120 
[93m757[92m add R10 R8 R9 
[93m758[92m swi R10 R14 124 
[0m[94m_t115_19 = #30[0m
[93m759[92m li R8 30 
[93m760[92m swi R8 R14 128 
[0m[94m_t116_19 = _t114_19 % _t115_19[0m
[93m761[92m lwi R8 R14 124 
[93m762[92m lwi R9 R14 128 
[93m763[92m mod R10 R8 R9 
[93m764[92m swi R10 R14 132 
[0m[94mline_0 = _t116_19[0m
[93m765[92m lwi R8 R14 132 
[93m766[92m swi R8 R13 16 
[0m[94m_t117_19 = #0[0m
[93m767[92m li R8 0 
[93m768[92m swi R8 R14 136 
[0m[94m_t118_19 = line_0 == _t117_19[0m
[93m769[92m lwi R8 R13 16 
[93m770[92m lwi R9 R14 136 
[93m771[92m eq R10 R8 R9 
[93m772[92m swi R10 R14 140 
[0m[94mif ( _t118_19 == #0 ) goto label_71[0m
[93m773[92m lwi R8 R14 140 
[93m774[92m cmp R8 R0 
[93m775[92m jeq label_71 
[0m[94mFunctionCall clear_shell[0m
[0m[94mcall label_15[0m
[93m776[92m la R8 label_73 
[93m777[92m swi R8 R14 -8 
[93m778[92m addi R14 R14 -56 
[93m779[92m jmp label_15 
[0m[94mlabel_73:[0m
[0m[94m_t119_27 = ReturnVal[0m
[93m780[92m lwi R8 R14 -4 
[93m781[92m swi R8 R14 144 
[0m[94mgoto label_72[0m
[93m782[92m jmp label_72 
[0m[94mlabel_71:[0m
[0m[94mlabel_72:[0m
[0m[94m_t120_19 = #0[0m
[93m783[92m li R8 0 
[93m784[92m swi R8 R14 148 
[0m[94mcharacter_0 = _t120_19[0m
[93m785[92m lwi R8 R14 148 
[93m786[92m swi R8 R13 20 
[0m[94mReturn i_19[0m
[93m787[92m lwi R8 R14 0 
[93m788[92m swi R8 R14 160 
[93m789[92m lwi R12 R14 152 
[93m790[92m li R8 3180 
[93m791[92m lwi R9 R14 156 
[93m792[92m sub R10 R9 R8 
[93m793[92m addi R14 R14 164 
[93m794[92m jr R10 
[0m-------------------------------------
Parsing strcmp
str1_28 80
str2_28 76
len1_28 0
len2_28 4
i_28 8
l1_28 12
l2_28 16
_t121_28 20
_t122_28 24
_t123_28 28
_t124_29 32
_t125_30 36
_t126_30 40
_t127_30 44
_t128_30 48
_t129_30 52
_t130_30 56
_t131_30 60
_t132_30 64
_t133_31 68
_t134_28 72
[94mlabel_74:[0m
[93m795[92m swi R12 R14 84 
[0m[94mFunctionCall strlen[0m
[0m[94mparam str1_28[0m
[93m796[92m lwi R8 R14 80 
[93m797[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m798[92m la R8 label_75 
[93m799[92m swi R8 R14 -8 
[93m800[92m addi R14 R14 -52 
[93m801[92m jmp label_8 
[0m[94mlabel_75:[0m
[0m[94m_t121_28 = ReturnVal[0m
[93m802[92m lwi R8 R14 -4 
[93m803[92m swi R8 R14 20 
[0m[94mlen1_28 = _t121_28[0m
[93m804[92m lwi R8 R14 20 
[93m805[92m swi R8 R14 0 
[0m[94mFunctionCall strlen[0m
[0m[94mparam str2_28[0m
[93m806[92m lwi R8 R14 76 
[93m807[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m808[92m la R8 label_76 
[93m809[92m swi R8 R14 -8 
[93m810[92m addi R14 R14 -52 
[93m811[92m jmp label_8 
[0m[94mlabel_76:[0m
[0m[94m_t122_28 = ReturnVal[0m
[93m812[92m lwi R8 R14 -4 
[93m813[92m swi R8 R14 24 
[0m[94mlen2_28 = _t122_28[0m
[93m814[92m lwi R8 R14 24 
[93m815[92m swi R8 R14 4 
[0m[94m_t123_28 = len1_28 != len2_28[0m
[93m816[92m lwi R8 R14 0 
[93m817[92m lwi R9 R14 4 
[93m818[92m neq R10 R8 R9 
[93m819[92m swi R10 R14 28 
[0m[94mif ( _t123_28 == #0 ) goto label_77[0m
[93m820[92m lwi R8 R14 28 
[93m821[92m cmp R8 R0 
[93m822[92m jeq label_77 
[0m[94m_t124_29 = #1[0m
[93m823[92m li R8 1 
[93m824[92m swi R8 R14 32 
[0m[94mReturn _t124_29[0m
[93m825[92m lwi R8 R14 32 
[93m826[92m swi R8 R14 92 
[93m827[92m lwi R12 R14 84 
[93m828[92m li R8 3332 
[93m829[92m lwi R9 R14 88 
[93m830[92m sub R10 R9 R8 
[93m831[92m addi R14 R14 96 
[93m832[92m jr R10 
[0m[94mgoto label_78[0m
[93m833[92m jmp label_78 
[0m[94mlabel_77:[0m
[0m[94mlabel_78:[0m
[0m[94m_t125_30 = #0[0m
[93m834[92m li R8 0 
[93m835[92m swi R8 R14 36 
[0m[94mi_28 = _t125_30[0m
[93m836[92m lwi R8 R14 36 
[93m837[92m swi R8 R14 8 
[0m[94mlabel_79:[0m
[0m[94m_t126_30 = i_28 < len1_28[0m
[93m838[92m lwi R8 R14 8 
[93m839[92m lwi R9 R14 0 
[93m840[92m lt R10 R8 R9 
[93m841[92m swi R10 R14 40 
[0m[94mif ( _t126_30 == #0 ) goto label_82[0m
[93m842[92m lwi R8 R14 40 
[93m843[92m cmp R8 R0 
[93m844[92m jeq label_82 
[0m[94mgoto label_80[0m
[93m845[92m jmp label_80 
[0m[94mlabel_81:[0m
[0m[94m_t127_30 = i_28[0m
[93m846[92m lwi R8 R14 8 
[93m847[92m swi R8 R14 44 
[0m[94mi_28 = i_28 + #1[0m
[93m848[92m lwi R8 R14 8 
[93m849[92m li R9 1 
[93m850[92m add R10 R8 R9 
[93m851[92m swi R10 R14 8 
[0m[94mgoto label_79[0m
[93m852[92m jmp label_79 
[0m[94mlabel_80:[0m
[0m[94m_t128_30 = i_28 * #1[0m
[93m853[92m lwi R8 R14 8 
[93m854[92m li R9 1 
[93m855[92m mul R10 R8 R9 
[93m856[92m swi R10 R14 48 
[0m[94m_t129_30 = str1_28 + _t128_30[0m
[93m857[92m lwi R8 R14 80 
[93m858[92m lwi R9 R14 48 
[93m859[92m add R10 R8 R9 
[93m860[92m swi R10 R14 52 
[0m[94ml1_28 = *_t129_30[0m
[93m861[92m lwi R8 R14 52 
[93m862[92m lbi R8 R8 0 
[93m863[92m swi R8 R14 12 
[0m[94m_t130_30 = i_28 * #1[0m
[93m864[92m lwi R8 R14 8 
[93m865[92m li R9 1 
[93m866[92m mul R10 R8 R9 
[93m867[92m swi R10 R14 56 
[0m[94m_t131_30 = str2_28 + _t130_30[0m
[93m868[92m lwi R8 R14 76 
[93m869[92m lwi R9 R14 56 
[93m870[92m add R10 R8 R9 
[93m871[92m swi R10 R14 60 
[0m[94ml2_28 = *_t131_30[0m
[93m872[92m lwi R8 R14 60 
[93m873[92m lbi R8 R8 0 
[93m874[92m swi R8 R14 16 
[0m[94m_t132_30 = l1_28 != l2_28[0m
[93m875[92m lwi R8 R14 12 
[93m876[92m lwi R9 R14 16 
[93m877[92m neq R10 R8 R9 
[93m878[92m swi R10 R14 64 
[0m[94mif ( _t132_30 == #0 ) goto label_83[0m
[93m879[92m lwi R8 R14 64 
[93m880[92m cmp R8 R0 
[93m881[92m jeq label_83 
[0m[94m_t133_31 = #1[0m
[93m882[92m li R8 1 
[93m883[92m swi R8 R14 68 
[0m[94mReturn _t133_31[0m
[93m884[92m lwi R8 R14 68 
[93m885[92m swi R8 R14 92 
[93m886[92m lwi R12 R14 84 
[93m887[92m li R8 3568 
[93m888[92m lwi R9 R14 88 
[93m889[92m sub R10 R9 R8 
[93m890[92m addi R14 R14 96 
[93m891[92m jr R10 
[0m[94mgoto label_84[0m
[93m892[92m jmp label_84 
[0m[94mlabel_83:[0m
[0m[94mlabel_84:[0m
[0m[94mgoto label_81[0m
[93m893[92m jmp label_81 
[0m[94mlabel_82:[0m
[0m[94m_t134_28 = #0[0m
[93m894[92m li R8 0 
[93m895[92m swi R8 R14 72 
[0m[94mReturn _t134_28[0m
[93m896[92m lwi R8 R14 72 
[93m897[92m swi R8 R14 92 
[93m898[92m lwi R12 R14 84 
[93m899[92m li R8 3616 
[93m900[92m lwi R9 R14 88 
[93m901[92m sub R10 R9 R8 
[93m902[92m addi R14 R14 96 
[93m903[92m jr R10 
[0m-------------------------------------
Parsing print_string
buff_32 164
len_32 160
newline_32 156
i_32 0
b_34 4
bu_34 8
_t135_33 12
_t136_33 16
_t137_33 20
_t138_32 24
_t139_34 28
_t140_34 32
_t141_34 36
_t142_34 40
_t143_34 44
_t144_35 48
_t145_35 52
_t146_35 56
_t147_35 60
_t148_35 64
_t149_35 68
_t150_36 72
_t151_35 76
_t152_34 80
_t153_34 84
_t154_37 88
_t155_34 92
_t156_34 96
_t157_34 100
_t158_34 104
_t159_32 108
_t160_32 112
_t161_38 116
_t162_38 120
_t163_38 124
_t164_38 128
_t165_38 132
_t166_38 136
_t167_39 140
_t168_38 144
_t169_32 148
_t170_32 152
[94mlabel_85:[0m
[93m904[92m swi R12 R14 168 
[0m[94mlabel_86:[0m
[0m[94m_t135_33 = #1[0m
[93m905[92m li R8 1 
[93m906[92m swi R8 R14 12 
[0m[94m_t136_33 = displayLock_0 == _t135_33[0m
[93m907[92m lwi R8 R13 28 
[93m908[92m lwi R9 R14 12 
[93m909[92m eq R10 R8 R9 
[93m910[92m swi R10 R14 16 
[0m[94mif ( _t136_33 == #0 ) goto label_89[0m
[93m911[92m lwi R8 R14 16 
[93m912[92m cmp R8 R0 
[93m913[92m jeq label_89 
[0m[94mgoto label_87[0m
[93m914[92m jmp label_87 
[0m[94mlabel_88:[0m
[0m[94mgoto label_86[0m
[93m915[92m jmp label_86 
[0m[94mlabel_87:[0m
[0m[94m_t137_33 = #0[0m
[93m916[92m li R8 0 
[93m917[92m swi R8 R14 20 
[0m[94mi_32 = _t137_33[0m
[93m918[92m lwi R8 R14 20 
[93m919[92m swi R8 R14 0 
[0m[94mgoto label_88[0m
[93m920[92m jmp label_88 
[0m[94mlabel_89:[0m
[0m[94m_t138_32 = #1[0m
[93m921[92m li R8 1 
[93m922[92m swi R8 R14 24 
[0m[94mdisplayLock_0 = _t138_32[0m
[93m923[92m lwi R8 R14 24 
[93m924[92m swi R8 R13 28 
[0m[94m_t139_34 = #0[0m
[93m925[92m li R8 0 
[93m926[92m swi R8 R14 28 
[0m[94mi_32 = _t139_34[0m
[93m927[92m lwi R8 R14 28 
[93m928[92m swi R8 R14 0 
[0m[94mlabel_90:[0m
[0m[94m_t140_34 = i_32 < len_32[0m
[93m929[92m lwi R8 R14 0 
[93m930[92m lwi R9 R14 160 
[93m931[92m lt R10 R8 R9 
[93m932[92m swi R10 R14 32 
[0m[94mif ( _t140_34 == #0 ) goto label_93[0m
[93m933[92m lwi R8 R14 32 
[93m934[92m cmp R8 R0 
[93m935[92m jeq label_93 
[0m[94mgoto label_91[0m
[93m936[92m jmp label_91 
[0m[94mlabel_92:[0m
[0m[94m_t141_34 = i_32[0m
[93m937[92m lwi R8 R14 0 
[93m938[92m swi R8 R14 36 
[0m[94mi_32 = i_32 + #1[0m
[93m939[92m lwi R8 R14 0 
[93m940[92m li R9 1 
[93m941[92m add R10 R8 R9 
[93m942[92m swi R10 R14 0 
[0m[94mgoto label_90[0m
[93m943[92m jmp label_90 
[0m[94mlabel_91:[0m
[0m[94m_t142_34 = #40[0m
[93m944[92m li R8 40 
[93m945[92m swi R8 R14 40 
[0m[94m_t143_34 = character_0 == _t142_34[0m
[93m946[92m lwi R8 R13 20 
[93m947[92m lwi R9 R14 40 
[93m948[92m eq R10 R8 R9 
[93m949[92m swi R10 R14 44 
[0m[94mif ( _t143_34 == #0 ) goto label_94[0m
[93m950[92m lwi R8 R14 44 
[93m951[92m cmp R8 R0 
[93m952[92m jeq label_94 
[0m[94m_t144_35 = #1[0m
[93m953[92m li R8 1 
[93m954[92m swi R8 R14 48 
[0m[94m_t145_35 = line_0 + _t144_35[0m
[93m955[92m lwi R8 R13 16 
[93m956[92m lwi R9 R14 48 
[93m957[92m add R10 R8 R9 
[93m958[92m swi R10 R14 52 
[0m[94m_t146_35 = #30[0m
[93m959[92m li R8 30 
[93m960[92m swi R8 R14 56 
[0m[94m_t147_35 = _t145_35 % _t146_35[0m
[93m961[92m lwi R8 R14 52 
[93m962[92m lwi R9 R14 56 
[93m963[92m mod R10 R8 R9 
[93m964[92m swi R10 R14 60 
[0m[94mline_0 = _t147_35[0m
[93m965[92m lwi R8 R14 60 
[93m966[92m swi R8 R13 16 
[0m[94m_t148_35 = #0[0m
[93m967[92m li R8 0 
[93m968[92m swi R8 R14 64 
[0m[94m_t149_35 = line_0 == _t148_35[0m
[93m969[92m lwi R8 R13 16 
[93m970[92m lwi R9 R14 64 
[93m971[92m eq R10 R8 R9 
[93m972[92m swi R10 R14 68 
[0m[94mif ( _t149_35 == #0 ) goto label_96[0m
[93m973[92m lwi R8 R14 68 
[93m974[92m cmp R8 R0 
[93m975[92m jeq label_96 
[0m[94mFunctionCall clear_shell[0m
[0m[94mcall label_15[0m
[93m976[92m la R8 label_98 
[93m977[92m swi R8 R14 -8 
[93m978[92m addi R14 R14 -56 
[93m979[92m jmp label_15 
[0m[94mlabel_98:[0m
[0m[94m_t150_36 = ReturnVal[0m
[93m980[92m lwi R8 R14 -4 
[93m981[92m swi R8 R14 72 
[0m[94mgoto label_97[0m
[93m982[92m jmp label_97 
[0m[94mlabel_96:[0m
[0m[94mlabel_97:[0m
[0m[94m_t151_35 = #0[0m
[93m983[92m li R8 0 
[93m984[92m swi R8 R14 76 
[0m[94mcharacter_0 = _t151_35[0m
[93m985[92m lwi R8 R14 76 
[93m986[92m swi R8 R13 20 
[0m[94mgoto label_95[0m
[93m987[92m jmp label_95 
[0m[94mlabel_94:[0m
[0m[94mlabel_95:[0m
[0m[94m_t152_34 = #30[0m
[93m988[92m li R8 30 
[93m989[92m swi R8 R14 80 
[0m[94m_t153_34 = line_0 == _t152_34[0m
[93m990[92m lwi R8 R13 16 
[93m991[92m lwi R9 R14 80 
[93m992[92m eq R10 R8 R9 
[93m993[92m swi R10 R14 84 
[0m[94mif ( _t153_34 == #0 ) goto label_99[0m
[93m994[92m lwi R8 R14 84 
[93m995[92m cmp R8 R0 
[93m996[92m jeq label_99 
[0m[94mFunctionCall clear_shell[0m
[0m[94mcall label_15[0m
[93m997[92m la R8 label_101 
[93m998[92m swi R8 R14 -8 
[93m999[92m addi R14 R14 -56 
[93m1000[92m jmp label_15 
[0m[94mlabel_101:[0m
[0m[94m_t154_37 = ReturnVal[0m
[93m1001[92m lwi R8 R14 -4 
[93m1002[92m swi R8 R14 88 
[0m[94mgoto label_100[0m
[93m1003[92m jmp label_100 
[0m[94mlabel_99:[0m
[0m[94mlabel_100:[0m
[0m[94mbu_34 = buff_32[0m
[93m1004[92m lwi R8 R14 164 
[93m1005[92m swi R8 R14 8 
[0m[94m_t155_34 = bu_34 + i_32[0m
[93m1006[92m lwi R8 R14 8 
[93m1007[92m lwi R9 R14 0 
[93m1008[92m add R10 R8 R9 
[93m1009[92m swi R10 R14 92 
[0m[94mbu_34 = _t155_34[0m
[93m1010[92m lwi R8 R14 92 
[93m1011[92m swi R8 R14 8 
[0m[94mb_34 = bu_34[0m
[93m1012[92m lwi R8 R14 8 
[93m1013[92m swi R8 R14 4 
[0m[94mFunctionCall display[0m
[0m[94mparam b_34[0m
[93m1014[92m lwi R8 R14 4 
[93m1015[92m swi R8 R14 -16 
[0m[94m_t156_34 = #1[0m
[93m1016[92m li R8 1 
[93m1017[92m swi R8 R14 96 
[0m[94mparam _t156_34[0m
[93m1018[92m lwi R8 R14 96 
[93m1019[92m swi R8 R14 -20 
[0m[94mparam line_0[0m
[93m1020[92m lwi R8 R13 16 
[93m1021[92m swi R8 R14 -24 
[0m[94mparam character_0[0m
[93m1022[92m lwi R8 R13 20 
[93m1023[92m swi R8 R14 -28 
[0m[94mcall label_20[0m
[93m1024[92m la R8 label_102 
[93m1025[92m swi R8 R14 -8 
[93m1026[92m addi R14 R14 -164 
[93m1027[92m jmp label_20 
[0m[94mlabel_102:[0m
[0m[94m_t157_34 = ReturnVal[0m
[93m1028[92m lwi R8 R14 -4 
[93m1029[92m swi R8 R14 100 
[0m[94m_t158_34 = character_0[0m
[93m1030[92m lwi R8 R13 20 
[93m1031[92m swi R8 R14 104 
[0m[94mcharacter_0 = character_0 + #1[0m
[93m1032[92m lwi R8 R13 20 
[93m1033[92m li R9 1 
[93m1034[92m add R10 R8 R9 
[93m1035[92m swi R10 R13 20 
[0m[94mgoto label_92[0m
[93m1036[92m jmp label_92 
[0m[94mlabel_93:[0m
[0m[94m_t159_32 = #1[0m
[93m1037[92m li R8 1 
[93m1038[92m swi R8 R14 108 
[0m[94m_t160_32 = newline_32 == _t159_32[0m
[93m1039[92m lwi R8 R14 156 
[93m1040[92m lwi R9 R14 108 
[93m1041[92m eq R10 R8 R9 
[93m1042[92m swi R10 R14 112 
[0m[94mif ( _t160_32 == #0 ) goto label_103[0m
[93m1043[92m lwi R8 R14 112 
[93m1044[92m cmp R8 R0 
[93m1045[92m jeq label_103 
[0m[94m_t161_38 = #1[0m
[93m1046[92m li R8 1 
[93m1047[92m swi R8 R14 116 
[0m[94m_t162_38 = line_0 + _t161_38[0m
[93m1048[92m lwi R8 R13 16 
[93m1049[92m lwi R9 R14 116 
[93m1050[92m add R10 R8 R9 
[93m1051[92m swi R10 R14 120 
[0m[94m_t163_38 = #30[0m
[93m1052[92m li R8 30 
[93m1053[92m swi R8 R14 124 
[0m[94m_t164_38 = _t162_38 % _t163_38[0m
[93m1054[92m lwi R8 R14 120 
[93m1055[92m lwi R9 R14 124 
[93m1056[92m mod R10 R8 R9 
[93m1057[92m swi R10 R14 128 
[0m[94mline_0 = _t164_38[0m
[93m1058[92m lwi R8 R14 128 
[93m1059[92m swi R8 R13 16 
[0m[94m_t165_38 = #0[0m
[93m1060[92m li R8 0 
[93m1061[92m swi R8 R14 132 
[0m[94m_t166_38 = line_0 == _t165_38[0m
[93m1062[92m lwi R8 R13 16 
[93m1063[92m lwi R9 R14 132 
[93m1064[92m eq R10 R8 R9 
[93m1065[92m swi R10 R14 136 
[0m[94mif ( _t166_38 == #0 ) goto label_105[0m
[93m1066[92m lwi R8 R14 136 
[93m1067[92m cmp R8 R0 
[93m1068[92m jeq label_105 
[0m[94mFunctionCall clear_shell[0m
[0m[94mcall label_15[0m
[93m1069[92m la R8 label_107 
[93m1070[92m swi R8 R14 -8 
[93m1071[92m addi R14 R14 -56 
[93m1072[92m jmp label_15 
[0m[94mlabel_107:[0m
[0m[94m_t167_39 = ReturnVal[0m
[93m1073[92m lwi R8 R14 -4 
[93m1074[92m swi R8 R14 140 
[0m[94mgoto label_106[0m
[93m1075[92m jmp label_106 
[0m[94mlabel_105:[0m
[0m[94mlabel_106:[0m
[0m[94m_t168_38 = #0[0m
[93m1076[92m li R8 0 
[93m1077[92m swi R8 R14 144 
[0m[94mcharacter_0 = _t168_38[0m
[93m1078[92m lwi R8 R14 144 
[93m1079[92m swi R8 R13 20 
[0m[94mgoto label_104[0m
[93m1080[92m jmp label_104 
[0m[94mlabel_103:[0m
[0m[94mlabel_104:[0m
[0m[94m_t169_32 = #0[0m
[93m1081[92m li R8 0 
[93m1082[92m swi R8 R14 148 
[0m[94mdisplayLock_0 = _t169_32[0m
[93m1083[92m lwi R8 R14 148 
[93m1084[92m swi R8 R13 28 
[0m[94m_t170_32 = #0[0m
[93m1085[92m li R8 0 
[93m1086[92m swi R8 R14 152 
[0m[94mReturn _t170_32[0m
[93m1087[92m lwi R8 R14 152 
[93m1088[92m swi R8 R14 176 
[93m1089[92m lwi R12 R14 168 
[93m1090[92m li R8 4380 
[93m1091[92m lwi R9 R14 172 
[93m1092[92m sub R10 R9 R8 
[93m1093[92m addi R14 R14 180 
[93m1094[92m jr R10 
[0m-------------------------------------
Parsing get_string
buff_40 120
i_40 0
current_40 4
_t171_40 8
_t172_40 12
_t173_40 16
_t174_40 20
_t175_40 24
_t176_40 28
_t177_40 32
_t178_40 36
_t179_41 40
_t180_42 44
_t181_42 48
_t182_42 52
_t183_42 56
_t184_42 60
_t185_42 64
_t186_42 68
_t187_42 72
_t188_42 76
_t189_42 80
_t190_42 84
_t191_43 88
_t192_44 92
_t193_44 96
_t194_44 100
_t195_44 104
_t196_44 108
_t197_44 112
_t198_40 116
[94mlabel_108:[0m
[93m1095[92m swi R12 R14 124 
[0m[94m_t171_40 = #0[0m
[93m1096[92m li R8 0 
[93m1097[92m swi R8 R14 8 
[0m[94mi_40 = _t171_40[0m
[93m1098[92m lwi R8 R14 8 
[93m1099[92m swi R8 R14 0 
[0m[94m_t172_40 = current_buffer_index_0 * #1[0m
[93m1100[92m lwi R8 R13 12 
[93m1101[92m li R9 1 
[93m1102[92m mul R10 R8 R9 
[93m1103[92m swi R10 R14 12 
[0m[94m_t173_40 = Buffer_0 + _t172_40[0m
[93m1104[92m lwi R8 R13 8 
[93m1105[92m lwi R9 R14 12 
[93m1106[92m add R10 R8 R9 
[93m1107[92m swi R10 R14 16 
[0m[94mcurrent_40 = *_t173_40[0m
[93m1108[92m lwi R8 R14 16 
[93m1109[92m lbi R8 R8 0 
[93m1110[92m swi R8 R14 4 
[0m[94m_t174_40 = #0[0m
[93m1111[92m li R8 0 
[93m1112[92m swi R8 R14 20 
[0m[94m_t175_40 = current_40 == _t174_40[0m
[93m1113[92m lwi R8 R14 4 
[93m1114[92m lwi R9 R14 20 
[93m1115[92m eq R10 R8 R9 
[93m1116[92m swi R10 R14 24 
[0m[94m_t176_40 = #40[0m
[93m1117[92m li R8 40 
[93m1118[92m swi R8 R14 28 
[0m[94m_t177_40 = current_buffer_index_0 >= _t176_40[0m
[93m1119[92m lwi R8 R13 12 
[93m1120[92m lwi R9 R14 28 
[93m1121[92m ge R10 R8 R9 
[93m1122[92m swi R10 R14 32 
[0m[94m_t178_40 = _t175_40 || _t177_40[0m
[93m1123[92m lwi R8 R14 24 
[93m1124[92m lwi R9 R14 32 
[93m1125[92m or R10 R8 R9 
[93m1126[92m swi R10 R14 36 
[0m[94mif ( _t178_40 == #0 ) goto label_109[0m
[93m1127[92m lwi R8 R14 36 
[93m1128[92m cmp R8 R0 
[93m1129[92m jeq label_109 
[0m[94mFunctionCall get_line[0m
[0m[94mcall label_53[0m
[93m1130[92m la R8 label_111 
[93m1131[92m swi R8 R14 -8 
[93m1132[92m addi R14 R14 -164 
[93m1133[92m jmp label_53 
[0m[94mlabel_111:[0m
[0m[94m_t179_41 = ReturnVal[0m
[93m1134[92m lwi R8 R14 -4 
[93m1135[92m swi R8 R14 40 
[0m[94mgoto label_110[0m
[93m1136[92m jmp label_110 
[0m[94mlabel_109:[0m
[0m[94mlabel_110:[0m
[0m[94mlabel_112:[0m
[0m[94m_t180_42 = #1[0m
[93m1137[92m li R8 1 
[93m1138[92m swi R8 R14 44 
[0m[94mif ( _t180_42 == #0 ) goto label_115[0m
[93m1139[92m lwi R8 R14 44 
[93m1140[92m cmp R8 R0 
[93m1141[92m jeq label_115 
[0m[94mgoto label_113[0m
[93m1142[92m jmp label_113 
[0m[94mlabel_114:[0m
[0m[94mgoto label_112[0m
[93m1143[92m jmp label_112 
[0m[94mlabel_113:[0m
[0m[94m_t181_42 = current_buffer_index_0 * #1[0m
[93m1144[92m lwi R8 R13 12 
[93m1145[92m li R9 1 
[93m1146[92m mul R10 R8 R9 
[93m1147[92m swi R10 R14 48 
[0m[94m_t182_42 = Buffer_0 + _t181_42[0m
[93m1148[92m lwi R8 R13 8 
[93m1149[92m lwi R9 R14 48 
[93m1150[92m add R10 R8 R9 
[93m1151[92m swi R10 R14 52 
[0m[94mcurrent_40 = *_t182_42[0m
[93m1152[92m lwi R8 R14 52 
[93m1153[92m lbi R8 R8 0 
[93m1154[92m swi R8 R14 4 
[0m[94m_t183_42 = #0[0m
[93m1155[92m li R8 0 
[93m1156[92m swi R8 R14 56 
[0m[94m_t184_42 = current_40 == _t183_42[0m
[93m1157[92m lwi R8 R14 4 
[93m1158[92m lwi R9 R14 56 
[93m1159[92m eq R10 R8 R9 
[93m1160[92m swi R10 R14 60 
[0m[94m_t185_42 = #32[0m
[93m1161[92m li R8 32 
[93m1162[92m swi R8 R14 64 
[0m[94m_t186_42 = current_40 == _t185_42[0m
[93m1163[92m lwi R8 R14 4 
[93m1164[92m lwi R9 R14 64 
[93m1165[92m eq R10 R8 R9 
[93m1166[92m swi R10 R14 68 
[0m[94m_t187_42 = _t184_42 || _t186_42[0m
[93m1167[92m lwi R8 R14 60 
[93m1168[92m lwi R9 R14 68 
[93m1169[92m or R10 R8 R9 
[93m1170[92m swi R10 R14 72 
[0m[94m_t188_42 = #40[0m
[93m1171[92m li R8 40 
[93m1172[92m swi R8 R14 76 
[0m[94m_t189_42 = current_buffer_index_0 >= _t188_42[0m
[93m1173[92m lwi R8 R13 12 
[93m1174[92m lwi R9 R14 76 
[93m1175[92m ge R10 R8 R9 
[93m1176[92m swi R10 R14 80 
[0m[94m_t190_42 = _t187_42 || _t189_42[0m
[93m1177[92m lwi R8 R14 72 
[93m1178[92m lwi R9 R14 80 
[93m1179[92m or R10 R8 R9 
[93m1180[92m swi R10 R14 84 
[0m[94mif ( _t190_42 == #0 ) goto label_116[0m
[93m1181[92m lwi R8 R14 84 
[93m1182[92m cmp R8 R0 
[93m1183[92m jeq label_116 
[0m[94m_t191_43 = current_buffer_index_0[0m
[93m1184[92m lwi R8 R13 12 
[93m1185[92m swi R8 R14 88 
[0m[94mcurrent_buffer_index_0 = current_buffer_index_0 + #1[0m
[93m1186[92m lwi R8 R13 12 
[93m1187[92m li R9 1 
[93m1188[92m add R10 R8 R9 
[93m1189[92m swi R10 R13 12 
[0m[94mReturn i_40[0m
[93m1190[92m lwi R8 R14 0 
[93m1191[92m swi R8 R14 132 
[93m1192[92m lwi R12 R14 124 
[93m1193[92m li R8 4792 
[93m1194[92m lwi R9 R14 128 
[93m1195[92m sub R10 R9 R8 
[93m1196[92m addi R14 R14 136 
[93m1197[92m jr R10 
[0m[94mgoto label_117[0m
[93m1198[92m jmp label_117 
[0m[94mlabel_116:[0m
[0m[94m_t192_44 = i_40 * #1[0m
[93m1199[92m lwi R8 R14 0 
[93m1200[92m li R9 1 
[93m1201[92m mul R10 R8 R9 
[93m1202[92m swi R10 R14 92 
[0m[94m_t193_44 = buff_40 + _t192_44[0m
[93m1203[92m lwi R8 R14 120 
[93m1204[92m lwi R9 R14 92 
[93m1205[92m add R10 R8 R9 
[93m1206[92m swi R10 R14 96 
[0m[94m_t194_44 = current_buffer_index_0 * #1[0m
[93m1207[92m lwi R8 R13 12 
[93m1208[92m li R9 1 
[93m1209[92m mul R10 R8 R9 
[93m1210[92m swi R10 R14 100 
[0m[94m_t195_44 = Buffer_0 + _t194_44[0m
[93m1211[92m lwi R8 R13 8 
[93m1212[92m lwi R9 R14 100 
[93m1213[92m add R10 R8 R9 
[93m1214[92m swi R10 R14 104 
[0m[94m*_t193_44 = *_t195_44[0m
[93m1215[92m lwi R8 R14 104 
[93m1216[92m lbi R8 R8 0 
[93m1217[92m lwi R7 R14 96 
[93m1218[92m sbi R8 R7 0 
[0m[94m_t196_44 = current_buffer_index_0[0m
[93m1219[92m lwi R8 R13 12 
[93m1220[92m swi R8 R14 108 
[0m[94mcurrent_buffer_index_0 = current_buffer_index_0 + #1[0m
[93m1221[92m lwi R8 R13 12 
[93m1222[92m li R9 1 
[93m1223[92m add R10 R8 R9 
[93m1224[92m swi R10 R13 12 
[0m[94m_t197_44 = i_40[0m
[93m1225[92m lwi R8 R14 0 
[93m1226[92m swi R8 R14 112 
[0m[94mi_40 = i_40 + #1[0m
[93m1227[92m lwi R8 R14 0 
[93m1228[92m li R9 1 
[93m1229[92m add R10 R8 R9 
[93m1230[92m swi R10 R14 0 
[0m[94mlabel_117:[0m
[0m[94mgoto label_114[0m
[93m1231[92m jmp label_114 
[0m[94mlabel_115:[0m
[0m[94m_t198_40 = #0[0m
[93m1232[92m li R8 0 
[93m1233[92m swi R8 R14 116 
[0m[94mReturn _t198_40[0m
[93m1234[92m lwi R8 R14 116 
[93m1235[92m swi R8 R14 132 
[93m1236[92m lwi R12 R14 124 
[93m1237[92m li R8 4968 
[93m1238[92m lwi R9 R14 128 
[93m1239[92m sub R10 R9 R8 
[93m1240[92m addi R14 R14 136 
[93m1241[92m jr R10 
[0m-------------------------------------
Parsing get_num
buff_0_45 0
buff_45 4
size_45 8
num_45 12
i_45 16
b_45 20
_t199_45 24
_t200_45 28
_t201_45 32
_t202_45 36
_t203_45 40
_t204_45 44
_t205_45 48
_t206_45 52
_t207_47 56
_t208_47 60
_t209_47 64
_t210_47 68
_t211_47 72
_t212_47 76
_t213_47 80
_t214_47 84
_t215_47 88
_t216_47 92
_t217_48 96
_t218_47 100
_t219_47 104
_t220_47 108
_t221_47 112
_t222_47 116
_t223_46 120
_t224_46 124
_t225_49 128
_t226_49 132
_t227_49 136
_t228_49 140
_t229_49 144
_t230_49 148
_t231_49 152
_t232_49 156
_t233_49 160
_t234_49 164
_t235_50 168
_t236_49 172
_t237_49 176
_t238_49 180
_t239_49 184
_t240_49 188
[94mlabel_118:[0m
[93m1242[92m swi R12 R14 192 
[0m[94m_t199_45 = #10[0m
[93m1243[92m li R8 10 
[93m1244[92m swi R8 R14 24 
[0m[94mbuff_0_45 = _t199_45[0m
[93m1245[92m lwi R8 R14 24 
[93m1246[92m swi R8 R14 0 
[0m[94mmemory buff_45 _t199_45 #1[0m
[93m1247[92m lwi R8 R14 24 
[93m1248[92m li R9 1 
[93m1249[92m mul R10 R8 R9 
[93m1250[92m modi R8 R10 4 
[93m1251[92m li R9 4 
[93m1252[92m sub R8 R9 R8 
[93m1253[92m add R10 R10 R8 
[93m1254[92m sub R12 R12 R10 
[93m1255[92m swi R12 R14 4 
[0m[94mFunctionCall get_string[0m
[0m[94mparam buff_45[0m
[93m1256[92m lwi R8 R14 4 
[93m1257[92m swi R8 R14 -16 
[0m[94mcall label_108[0m
[93m1258[92m la R8 label_119 
[93m1259[92m swi R8 R14 -8 
[93m1260[92m addi R14 R14 -136 
[93m1261[92m jmp label_108 
[0m[94mlabel_119:[0m
[0m[94m_t200_45 = ReturnVal[0m
[93m1262[92m lwi R8 R14 -4 
[93m1263[92m swi R8 R14 28 
[0m[94msize_45 = _t200_45[0m
[93m1264[92m lwi R8 R14 28 
[93m1265[92m swi R8 R14 8 
[0m[94m_t201_45 = #0[0m
[93m1266[92m li R8 0 
[93m1267[92m swi R8 R14 32 
[0m[94mnum_45 = _t201_45[0m
[93m1268[92m lwi R8 R14 32 
[93m1269[92m swi R8 R14 12 
[0m[94m_t202_45 = #0[0m
[93m1270[92m li R8 0 
[93m1271[92m swi R8 R14 36 
[0m[94m_t203_45 = _t202_45 * #1[0m
[93m1272[92m lwi R8 R14 36 
[93m1273[92m li R9 1 
[93m1274[92m mul R10 R8 R9 
[93m1275[92m swi R10 R14 40 
[0m[94m_t204_45 = buff_45 + _t203_45[0m
[93m1276[92m lwi R8 R14 4 
[93m1277[92m lwi R9 R14 40 
[93m1278[92m add R10 R8 R9 
[93m1279[92m swi R10 R14 44 
[0m[94mb_45 = *_t204_45[0m
[93m1280[92m lwi R8 R14 44 
[93m1281[92m lbi R8 R8 0 
[93m1282[92m swi R8 R14 20 
[0m[94m_t205_45 = #45[0m
[93m1283[92m li R8 45 
[93m1284[92m swi R8 R14 48 
[0m[94m_t206_45 = b_45 == _t205_45[0m
[93m1285[92m lwi R8 R14 20 
[93m1286[92m lwi R9 R14 48 
[93m1287[92m eq R10 R8 R9 
[93m1288[92m swi R10 R14 52 
[0m[94mif ( _t206_45 == #0 ) goto label_120[0m
[93m1289[92m lwi R8 R14 52 
[93m1290[92m cmp R8 R0 
[93m1291[92m jeq label_120 
[0m[94m_t207_47 = #1[0m
[93m1292[92m li R8 1 
[93m1293[92m swi R8 R14 56 
[0m[94mi_45 = _t207_47[0m
[93m1294[92m lwi R8 R14 56 
[93m1295[92m swi R8 R14 16 
[0m[94mlabel_122:[0m
[0m[94m_t208_47 = i_45 < size_45[0m
[93m1296[92m lwi R8 R14 16 
[93m1297[92m lwi R9 R14 8 
[93m1298[92m lt R10 R8 R9 
[93m1299[92m swi R10 R14 60 
[0m[94mif ( _t208_47 == #0 ) goto label_125[0m
[93m1300[92m lwi R8 R14 60 
[93m1301[92m cmp R8 R0 
[93m1302[92m jeq label_125 
[0m[94mgoto label_123[0m
[93m1303[92m jmp label_123 
[0m[94mlabel_124:[0m
[0m[94m_t209_47 = i_45[0m
[93m1304[92m lwi R8 R14 16 
[93m1305[92m swi R8 R14 64 
[0m[94mi_45 = i_45 + #1[0m
[93m1306[92m lwi R8 R14 16 
[93m1307[92m li R9 1 
[93m1308[92m add R10 R8 R9 
[93m1309[92m swi R10 R14 16 
[0m[94mgoto label_122[0m
[93m1310[92m jmp label_122 
[0m[94mlabel_123:[0m
[0m[94m_t210_47 = i_45 * #1[0m
[93m1311[92m lwi R8 R14 16 
[93m1312[92m li R9 1 
[93m1313[92m mul R10 R8 R9 
[93m1314[92m swi R10 R14 68 
[0m[94m_t211_47 = buff_45 + _t210_47[0m
[93m1315[92m lwi R8 R14 4 
[93m1316[92m lwi R9 R14 68 
[93m1317[92m add R10 R8 R9 
[93m1318[92m swi R10 R14 72 
[0m[94mb_45 = *_t211_47[0m
[93m1319[92m lwi R8 R14 72 
[93m1320[92m lbi R8 R8 0 
[93m1321[92m swi R8 R14 20 
[0m[94m_t212_47 = #48[0m
[93m1322[92m li R8 48 
[93m1323[92m swi R8 R14 76 
[0m[94m_t213_47 = b_45 < _t212_47[0m
[93m1324[92m lwi R8 R14 20 
[93m1325[92m lwi R9 R14 76 
[93m1326[92m lt R10 R8 R9 
[93m1327[92m swi R10 R14 80 
[0m[94m_t214_47 = #57[0m
[93m1328[92m li R8 57 
[93m1329[92m swi R8 R14 84 
[0m[94m_t215_47 = b_45 > _t214_47[0m
[93m1330[92m lwi R8 R14 20 
[93m1331[92m lwi R9 R14 84 
[93m1332[92m gt R10 R8 R9 
[93m1333[92m swi R10 R14 88 
[0m[94m_t216_47 = _t213_47 || _t215_47[0m
[93m1334[92m lwi R8 R14 80 
[93m1335[92m lwi R9 R14 88 
[93m1336[92m or R10 R8 R9 
[93m1337[92m swi R10 R14 92 
[0m[94mif ( _t216_47 == #0 ) goto label_126[0m
[93m1338[92m lwi R8 R14 92 
[93m1339[92m cmp R8 R0 
[93m1340[92m jeq label_126 
[0m[94m_t217_48 = #0[0m
[93m1341[92m li R8 0 
[93m1342[92m swi R8 R14 96 
[0m[94mReturn _t217_48[0m
[93m1343[92m lwi R8 R14 96 
[93m1344[92m swi R8 R14 200 
[93m1345[92m lwi R12 R14 192 
[93m1346[92m li R8 5404 
[93m1347[92m lwi R9 R14 196 
[93m1348[92m sub R10 R9 R8 
[93m1349[92m addi R14 R14 204 
[93m1350[92m jr R10 
[0m[94mgoto label_127[0m
[93m1351[92m jmp label_127 
[0m[94mlabel_126:[0m
[0m[94mlabel_127:[0m
[0m[94m_t218_47 = #10[0m
[93m1352[92m li R8 10 
[93m1353[92m swi R8 R14 100 
[0m[94m_t219_47 = num_45 * _t218_47[0m
[93m1354[92m lwi R8 R14 12 
[93m1355[92m lwi R9 R14 100 
[93m1356[92m mul R10 R8 R9 
[93m1357[92m swi R10 R14 104 
[0m[94mnum_45 = _t219_47[0m
[93m1358[92m lwi R8 R14 104 
[93m1359[92m swi R8 R14 12 
[0m[94m_t220_47 = num_45 + b_45[0m
[93m1360[92m lwi R8 R14 12 
[93m1361[92m lwi R9 R14 20 
[93m1362[92m add R10 R8 R9 
[93m1363[92m swi R10 R14 108 
[0m[94m_t221_47 = #48[0m
[93m1364[92m li R8 48 
[93m1365[92m swi R8 R14 112 
[0m[94m_t222_47 = _t220_47 - _t221_47[0m
[93m1366[92m lwi R8 R14 108 
[93m1367[92m lwi R9 R14 112 
[93m1368[92m sub R10 R8 R9 
[93m1369[92m swi R10 R14 116 
[0m[94mnum_45 = _t222_47[0m
[93m1370[92m lwi R8 R14 116 
[93m1371[92m swi R8 R14 12 
[0m[94mgoto label_124[0m
[93m1372[92m jmp label_124 
[0m[94mlabel_125:[0m
[0m[94m_t223_46 = #0[0m
[93m1373[92m li R8 0 
[93m1374[92m swi R8 R14 120 
[0m[94m_t224_46 = _t223_46 - num_45[0m
[93m1375[92m lwi R8 R14 120 
[93m1376[92m lwi R9 R14 12 
[93m1377[92m sub R10 R8 R9 
[93m1378[92m swi R10 R14 124 
[0m[94mReturn _t224_46[0m
[93m1379[92m lwi R8 R14 124 
[93m1380[92m swi R8 R14 200 
[93m1381[92m lwi R12 R14 192 
[93m1382[92m li R8 5548 
[93m1383[92m lwi R9 R14 196 
[93m1384[92m sub R10 R9 R8 
[93m1385[92m addi R14 R14 204 
[93m1386[92m jr R10 
[0m[94mgoto label_121[0m
[93m1387[92m jmp label_121 
[0m[94mlabel_120:[0m
[0m[94mlabel_121:[0m
[0m[94m_t225_49 = #0[0m
[93m1388[92m li R8 0 
[93m1389[92m swi R8 R14 128 
[0m[94mi_45 = _t225_49[0m
[93m1390[92m lwi R8 R14 128 
[93m1391[92m swi R8 R14 16 
[0m[94mlabel_128:[0m
[0m[94m_t226_49 = i_45 < size_45[0m
[93m1392[92m lwi R8 R14 16 
[93m1393[92m lwi R9 R14 8 
[93m1394[92m lt R10 R8 R9 
[93m1395[92m swi R10 R14 132 
[0m[94mif ( _t226_49 == #0 ) goto label_131[0m
[93m1396[92m lwi R8 R14 132 
[93m1397[92m cmp R8 R0 
[93m1398[92m jeq label_131 
[0m[94mgoto label_129[0m
[93m1399[92m jmp label_129 
[0m[94mlabel_130:[0m
[0m[94m_t227_49 = i_45[0m
[93m1400[92m lwi R8 R14 16 
[93m1401[92m swi R8 R14 136 
[0m[94mi_45 = i_45 + #1[0m
[93m1402[92m lwi R8 R14 16 
[93m1403[92m li R9 1 
[93m1404[92m add R10 R8 R9 
[93m1405[92m swi R10 R14 16 
[0m[94mgoto label_128[0m
[93m1406[92m jmp label_128 
[0m[94mlabel_129:[0m
[0m[94m_t228_49 = i_45 * #1[0m
[93m1407[92m lwi R8 R14 16 
[93m1408[92m li R9 1 
[93m1409[92m mul R10 R8 R9 
[93m1410[92m swi R10 R14 140 
[0m[94m_t229_49 = buff_45 + _t228_49[0m
[93m1411[92m lwi R8 R14 4 
[93m1412[92m lwi R9 R14 140 
[93m1413[92m add R10 R8 R9 
[93m1414[92m swi R10 R14 144 
[0m[94mb_45 = *_t229_49[0m
[93m1415[92m lwi R8 R14 144 
[93m1416[92m lbi R8 R8 0 
[93m1417[92m swi R8 R14 20 
[0m[94m_t230_49 = #48[0m
[93m1418[92m li R8 48 
[93m1419[92m swi R8 R14 148 
[0m[94m_t231_49 = b_45 < _t230_49[0m
[93m1420[92m lwi R8 R14 20 
[93m1421[92m lwi R9 R14 148 
[93m1422[92m lt R10 R8 R9 
[93m1423[92m swi R10 R14 152 
[0m[94m_t232_49 = #57[0m
[93m1424[92m li R8 57 
[93m1425[92m swi R8 R14 156 
[0m[94m_t233_49 = b_45 > _t232_49[0m
[93m1426[92m lwi R8 R14 20 
[93m1427[92m lwi R9 R14 156 
[93m1428[92m gt R10 R8 R9 
[93m1429[92m swi R10 R14 160 
[0m[94m_t234_49 = _t231_49 || _t233_49[0m
[93m1430[92m lwi R8 R14 152 
[93m1431[92m lwi R9 R14 160 
[93m1432[92m or R10 R8 R9 
[93m1433[92m swi R10 R14 164 
[0m[94mif ( _t234_49 == #0 ) goto label_132[0m
[93m1434[92m lwi R8 R14 164 
[93m1435[92m cmp R8 R0 
[93m1436[92m jeq label_132 
[0m[94m_t235_50 = #0[0m
[93m1437[92m li R8 0 
[93m1438[92m swi R8 R14 168 
[0m[94mReturn _t235_50[0m
[93m1439[92m lwi R8 R14 168 
[93m1440[92m swi R8 R14 200 
[93m1441[92m lwi R12 R14 192 
[93m1442[92m li R8 5788 
[93m1443[92m lwi R9 R14 196 
[93m1444[92m sub R10 R9 R8 
[93m1445[92m addi R14 R14 204 
[93m1446[92m jr R10 
[0m[94mgoto label_133[0m
[93m1447[92m jmp label_133 
[0m[94mlabel_132:[0m
[0m[94mlabel_133:[0m
[0m[94m_t236_49 = #10[0m
[93m1448[92m li R8 10 
[93m1449[92m swi R8 R14 172 
[0m[94m_t237_49 = num_45 * _t236_49[0m
[93m1450[92m lwi R8 R14 12 
[93m1451[92m lwi R9 R14 172 
[93m1452[92m mul R10 R8 R9 
[93m1453[92m swi R10 R14 176 
[0m[94mnum_45 = _t237_49[0m
[93m1454[92m lwi R8 R14 176 
[93m1455[92m swi R8 R14 12 
[0m[94m_t238_49 = num_45 + b_45[0m
[93m1456[92m lwi R8 R14 12 
[93m1457[92m lwi R9 R14 20 
[93m1458[92m add R10 R8 R9 
[93m1459[92m swi R10 R14 180 
[0m[94m_t239_49 = #48[0m
[93m1460[92m li R8 48 
[93m1461[92m swi R8 R14 184 
[0m[94m_t240_49 = _t238_49 - _t239_49[0m
[93m1462[92m lwi R8 R14 180 
[93m1463[92m lwi R9 R14 184 
[93m1464[92m sub R10 R8 R9 
[93m1465[92m swi R10 R14 188 
[0m[94mnum_45 = _t240_49[0m
[93m1466[92m lwi R8 R14 188 
[93m1467[92m swi R8 R14 12 
[0m[94mgoto label_130[0m
[93m1468[92m jmp label_130 
[0m[94mlabel_131:[0m
[0m[94mReturn num_45[0m
[93m1469[92m lwi R8 R14 12 
[93m1470[92m swi R8 R14 200 
[93m1471[92m lwi R12 R14 192 
[93m1472[92m li R8 5908 
[93m1473[92m lwi R9 R14 196 
[93m1474[92m sub R10 R9 R8 
[93m1475[92m addi R14 R14 204 
[93m1476[92m jr R10 
[0m-------------------------------------
Parsing reverse
str_51 84
len_51 80
i_51 0
j_51 4
temp_52 8
_t241_51 12
_t242_51 16
_t243_51 20
_t244_52 24
_t245_52 28
_t246_52 32
_t247_52 36
_t248_52 40
_t249_52 44
_t250_52 48
_t251_52 52
_t252_52 56
_t253_52 60
_t254_52 64
_t255_52 68
_t256_52 72
_t257_51 76
[94mlabel_134:[0m
[93m1477[92m swi R12 R14 88 
[0m[94m_t241_51 = #0[0m
[93m1478[92m li R8 0 
[93m1479[92m swi R8 R14 12 
[0m[94mi_51 = _t241_51[0m
[93m1480[92m lwi R8 R14 12 
[93m1481[92m swi R8 R14 0 
[0m[94m_t242_51 = #1[0m
[93m1482[92m li R8 1 
[93m1483[92m swi R8 R14 16 
[0m[94m_t243_51 = len_51 - _t242_51[0m
[93m1484[92m lwi R8 R14 80 
[93m1485[92m lwi R9 R14 16 
[93m1486[92m sub R10 R8 R9 
[93m1487[92m swi R10 R14 20 
[0m[94mj_51 = _t243_51[0m
[93m1488[92m lwi R8 R14 20 
[93m1489[92m swi R8 R14 4 
[0m[94m_t244_52 = #0[0m
[93m1490[92m li R8 0 
[93m1491[92m swi R8 R14 24 
[0m[94mi_51 = _t244_52[0m
[93m1492[92m lwi R8 R14 24 
[93m1493[92m swi R8 R14 0 
[0m[94mlabel_135:[0m
[0m[94m_t245_52 = i_51 < j_51[0m
[93m1494[92m lwi R8 R14 0 
[93m1495[92m lwi R9 R14 4 
[93m1496[92m lt R10 R8 R9 
[93m1497[92m swi R10 R14 28 
[0m[94mif ( _t245_52 == #0 ) goto label_138[0m
[93m1498[92m lwi R8 R14 28 
[93m1499[92m cmp R8 R0 
[93m1500[92m jeq label_138 
[0m[94mgoto label_136[0m
[93m1501[92m jmp label_136 
[0m[94mlabel_137:[0m
[0m[94m_t246_52 = i_51[0m
[93m1502[92m lwi R8 R14 0 
[93m1503[92m swi R8 R14 32 
[0m[94mi_51 = i_51 + #1[0m
[93m1504[92m lwi R8 R14 0 
[93m1505[92m li R9 1 
[93m1506[92m add R10 R8 R9 
[93m1507[92m swi R10 R14 0 
[0m[94mgoto label_135[0m
[93m1508[92m jmp label_135 
[0m[94mlabel_136:[0m
[0m[94m_t247_52 = i_51 * #1[0m
[93m1509[92m lwi R8 R14 0 
[93m1510[92m li R9 1 
[93m1511[92m mul R10 R8 R9 
[93m1512[92m swi R10 R14 36 
[0m[94m_t248_52 = str_51 + _t247_52[0m
[93m1513[92m lwi R8 R14 84 
[93m1514[92m lwi R9 R14 36 
[93m1515[92m add R10 R8 R9 
[93m1516[92m swi R10 R14 40 
[0m[94mtemp_52 = *_t248_52[0m
[93m1517[92m lwi R8 R14 40 
[93m1518[92m lbi R8 R8 0 
[93m1519[92m swi R8 R14 8 
[0m[94m_t249_52 = i_51 * #1[0m
[93m1520[92m lwi R8 R14 0 
[93m1521[92m li R9 1 
[93m1522[92m mul R10 R8 R9 
[93m1523[92m swi R10 R14 44 
[0m[94m_t250_52 = str_51 + _t249_52[0m
[93m1524[92m lwi R8 R14 84 
[93m1525[92m lwi R9 R14 44 
[93m1526[92m add R10 R8 R9 
[93m1527[92m swi R10 R14 48 
[0m[94m_t251_52 = j_51 * #1[0m
[93m1528[92m lwi R8 R14 4 
[93m1529[92m li R9 1 
[93m1530[92m mul R10 R8 R9 
[93m1531[92m swi R10 R14 52 
[0m[94m_t252_52 = str_51 + _t251_52[0m
[93m1532[92m lwi R8 R14 84 
[93m1533[92m lwi R9 R14 52 
[93m1534[92m add R10 R8 R9 
[93m1535[92m swi R10 R14 56 
[0m[94m*_t250_52 = *_t252_52[0m
[93m1536[92m lwi R8 R14 56 
[93m1537[92m lbi R8 R8 0 
[93m1538[92m lwi R7 R14 48 
[93m1539[92m sbi R8 R7 0 
[0m[94m_t253_52 = j_51 * #1[0m
[93m1540[92m lwi R8 R14 4 
[93m1541[92m li R9 1 
[93m1542[92m mul R10 R8 R9 
[93m1543[92m swi R10 R14 60 
[0m[94m_t254_52 = str_51 + _t253_52[0m
[93m1544[92m lwi R8 R14 84 
[93m1545[92m lwi R9 R14 60 
[93m1546[92m add R10 R8 R9 
[93m1547[92m swi R10 R14 64 
[0m[94m*_t254_52 = temp_52[0m
[93m1548[92m lwi R8 R14 8 
[93m1549[92m lwi R7 R14 64 
[93m1550[92m sbi R8 R7 0 
[0m[94m_t255_52 = i_51[0m
[93m1551[92m lwi R8 R14 0 
[93m1552[92m swi R8 R14 68 
[0m[94mi_51 = i_51 + #1[0m
[93m1553[92m lwi R8 R14 0 
[93m1554[92m li R9 1 
[93m1555[92m add R10 R8 R9 
[93m1556[92m swi R10 R14 0 
[0m[94m_t256_52 = j_51[0m
[93m1557[92m lwi R8 R14 4 
[93m1558[92m swi R8 R14 72 
[0m[94mj_51 = j_51 - #1[0m
[93m1559[92m lwi R8 R14 4 
[93m1560[92m li R9 1 
[93m1561[92m sub R10 R8 R9 
[93m1562[92m swi R10 R14 4 
[0m[94mgoto label_137[0m
[93m1563[92m jmp label_137 
[0m[94mlabel_138:[0m
[0m[94m_t257_51 = #0[0m
[93m1564[92m li R8 0 
[93m1565[92m swi R8 R14 76 
[0m[94mReturn _t257_51[0m
[93m1566[92m lwi R8 R14 76 
[93m1567[92m swi R8 R14 96 
[93m1568[92m lwi R12 R14 88 
[93m1569[92m li R8 6296 
[93m1570[92m lwi R9 R14 92 
[93m1571[92m sub R10 R9 R8 
[93m1572[92m addi R14 R14 100 
[93m1573[92m jr R10 
[0m-------------------------------------
Parsing print_num
num_53 136
newline_53 132
buff_0_53 0
buff_53 4
i_53 8
b_53 12
_t258_53 16
_t259_53 20
_t260_53 24
_t261_53 28
_t262_53 32
_t263_54 36
_t264_54 40
_t265_54 44
_t266_55 48
_t267_55 52
_t268_55 56
_t269_55 60
_t270_55 64
_t271_55 68
_t272_55 72
_t273_55 76
_t274_55 80
_t275_55 84
_t276_55 88
_t277_55 92
_t278_53 96
_t279_53 100
_t280_57 104
_t281_57 108
_t282_57 112
_t283_57 116
_t284_53 120
_t285_53 124
_t286_53 128
[94mlabel_139:[0m
[93m1574[92m swi R12 R14 140 
[0m[94m_t258_53 = #10[0m
[93m1575[92m li R8 10 
[93m1576[92m swi R8 R14 16 
[0m[94mbuff_0_53 = _t258_53[0m
[93m1577[92m lwi R8 R14 16 
[93m1578[92m swi R8 R14 0 
[0m[94mmemory buff_53 _t258_53 #1[0m
[93m1579[92m lwi R8 R14 16 
[93m1580[92m li R9 1 
[93m1581[92m mul R10 R8 R9 
[93m1582[92m modi R8 R10 4 
[93m1583[92m li R9 4 
[93m1584[92m sub R8 R9 R8 
[93m1585[92m add R10 R10 R8 
[93m1586[92m sub R12 R12 R10 
[93m1587[92m swi R12 R14 4 
[0m[94m_t259_53 = #0[0m
[93m1588[92m li R8 0 
[93m1589[92m swi R8 R14 20 
[0m[94mi_53 = _t259_53[0m
[93m1590[92m lwi R8 R14 20 
[93m1591[92m swi R8 R14 8 
[0m[94m_t260_53 = #1[0m
[93m1592[92m li R8 1 
[93m1593[92m swi R8 R14 24 
[0m[94mb_53 = _t260_53[0m
[93m1594[92m lwi R8 R14 24 
[93m1595[92m swi R8 R14 12 
[0m[94m_t261_53 = #0[0m
[93m1596[92m li R8 0 
[93m1597[92m swi R8 R14 28 
[0m[94m_t262_53 = num_53 < _t261_53[0m
[93m1598[92m lwi R8 R14 136 
[93m1599[92m lwi R9 R14 28 
[93m1600[92m lt R10 R8 R9 
[93m1601[92m swi R10 R14 32 
[0m[94mif ( _t262_53 == #0 ) goto label_140[0m
[93m1602[92m lwi R8 R14 32 
[93m1603[92m cmp R8 R0 
[93m1604[92m jeq label_140 
[0m[94m_t263_54 = #0[0m
[93m1605[92m li R8 0 
[93m1606[92m swi R8 R14 36 
[0m[94m_t264_54 = _t263_54 - num_53[0m
[93m1607[92m lwi R8 R14 36 
[93m1608[92m lwi R9 R14 136 
[93m1609[92m sub R10 R8 R9 
[93m1610[92m swi R10 R14 40 
[0m[94mnum_53 = _t264_54[0m
[93m1611[92m lwi R8 R14 40 
[93m1612[92m swi R8 R14 136 
[0m[94m_t265_54 = #0[0m
[93m1613[92m li R8 0 
[93m1614[92m swi R8 R14 44 
[0m[94mb_53 = _t265_54[0m
[93m1615[92m lwi R8 R14 44 
[93m1616[92m swi R8 R14 12 
[0m[94mgoto label_141[0m
[93m1617[92m jmp label_141 
[0m[94mlabel_140:[0m
[0m[94mlabel_141:[0m
[0m[94mlabel_142:[0m
[0m[94m_t266_55 = #1[0m
[93m1618[92m li R8 1 
[93m1619[92m swi R8 R14 48 
[0m[94mif ( _t266_55 == #0 ) goto label_145[0m
[93m1620[92m lwi R8 R14 48 
[93m1621[92m cmp R8 R0 
[93m1622[92m jeq label_145 
[0m[94mgoto label_143[0m
[93m1623[92m jmp label_143 
[0m[94mlabel_144:[0m
[0m[94mgoto label_142[0m
[93m1624[92m jmp label_142 
[0m[94mlabel_143:[0m
[0m[94m_t267_55 = i_53 * #1[0m
[93m1625[92m lwi R8 R14 8 
[93m1626[92m li R9 1 
[93m1627[92m mul R10 R8 R9 
[93m1628[92m swi R10 R14 52 
[0m[94m_t268_55 = buff_53 + _t267_55[0m
[93m1629[92m lwi R8 R14 4 
[93m1630[92m lwi R9 R14 52 
[93m1631[92m add R10 R8 R9 
[93m1632[92m swi R10 R14 56 
[0m[94m_t269_55 = #10[0m
[93m1633[92m li R8 10 
[93m1634[92m swi R8 R14 60 
[0m[94m_t270_55 = num_53 % _t269_55[0m
[93m1635[92m lwi R8 R14 136 
[93m1636[92m lwi R9 R14 60 
[93m1637[92m mod R10 R8 R9 
[93m1638[92m swi R10 R14 64 
[0m[94m_t271_55 = #48[0m
[93m1639[92m li R8 48 
[93m1640[92m swi R8 R14 68 
[0m[94m_t272_55 = _t270_55 + _t271_55[0m
[93m1641[92m lwi R8 R14 64 
[93m1642[92m lwi R9 R14 68 
[93m1643[92m add R10 R8 R9 
[93m1644[92m swi R10 R14 72 
[0m[94m*_t268_55 = _t272_55[0m
[93m1645[92m lwi R8 R14 72 
[93m1646[92m lwi R7 R14 56 
[93m1647[92m sbi R8 R7 0 
[0m[94m_t273_55 = i_53[0m
[93m1648[92m lwi R8 R14 8 
[93m1649[92m swi R8 R14 76 
[0m[94mi_53 = i_53 + #1[0m
[93m1650[92m lwi R8 R14 8 
[93m1651[92m li R9 1 
[93m1652[92m add R10 R8 R9 
[93m1653[92m swi R10 R14 8 
[0m[94m_t274_55 = #10[0m
[93m1654[92m li R8 10 
[93m1655[92m swi R8 R14 80 
[0m[94m_t275_55 = num_53 / _t274_55[0m
[93m1656[92m lwi R8 R14 136 
[93m1657[92m lwi R9 R14 80 
[93m1658[92m div R10 R8 R9 
[93m1659[92m swi R10 R14 84 
[0m[94mnum_53 = _t275_55[0m
[93m1660[92m lwi R8 R14 84 
[93m1661[92m swi R8 R14 136 
[0m[94m_t276_55 = #0[0m
[93m1662[92m li R8 0 
[93m1663[92m swi R8 R14 88 
[0m[94m_t277_55 = num_53 == _t276_55[0m
[93m1664[92m lwi R8 R14 136 
[93m1665[92m lwi R9 R14 88 
[93m1666[92m eq R10 R8 R9 
[93m1667[92m swi R10 R14 92 
[0m[94mif ( _t277_55 == #0 ) goto label_146[0m
[93m1668[92m lwi R8 R14 92 
[93m1669[92m cmp R8 R0 
[93m1670[92m jeq label_146 
[0m[94mgoto label_145[0m
[93m1671[92m jmp label_145 
[0m[94mgoto label_147[0m
[93m1672[92m jmp label_147 
[0m[94mlabel_146:[0m
[0m[94mlabel_147:[0m
[0m[94mgoto label_144[0m
[93m1673[92m jmp label_144 
[0m[94mlabel_145:[0m
[0m[94m_t278_53 = #0[0m
[93m1674[92m li R8 0 
[93m1675[92m swi R8 R14 96 
[0m[94m_t279_53 = b_53 == _t278_53[0m
[93m1676[92m lwi R8 R14 12 
[93m1677[92m lwi R9 R14 96 
[93m1678[92m eq R10 R8 R9 
[93m1679[92m swi R10 R14 100 
[0m[94mif ( _t279_53 == #0 ) goto label_148[0m
[93m1680[92m lwi R8 R14 100 
[93m1681[92m cmp R8 R0 
[93m1682[92m jeq label_148 
[0m[94m_t280_57 = i_53 * #1[0m
[93m1683[92m lwi R8 R14 8 
[93m1684[92m li R9 1 
[93m1685[92m mul R10 R8 R9 
[93m1686[92m swi R10 R14 104 
[0m[94m_t281_57 = buff_53 + _t280_57[0m
[93m1687[92m lwi R8 R14 4 
[93m1688[92m lwi R9 R14 104 
[93m1689[92m add R10 R8 R9 
[93m1690[92m swi R10 R14 108 
[0m[94m_t282_57 = #45[0m
[93m1691[92m li R8 45 
[93m1692[92m swi R8 R14 112 
[0m[94m*_t281_57 = _t282_57[0m
[93m1693[92m lwi R8 R14 112 
[93m1694[92m lwi R7 R14 108 
[93m1695[92m sbi R8 R7 0 
[0m[94m_t283_57 = i_53[0m
[93m1696[92m lwi R8 R14 8 
[93m1697[92m swi R8 R14 116 
[0m[94mi_53 = i_53 + #1[0m
[93m1698[92m lwi R8 R14 8 
[93m1699[92m li R9 1 
[93m1700[92m add R10 R8 R9 
[93m1701[92m swi R10 R14 8 
[0m[94mgoto label_149[0m
[93m1702[92m jmp label_149 
[0m[94mlabel_148:[0m
[0m[94mlabel_149:[0m
[0m[94mFunctionCall reverse[0m
[0m[94mparam buff_53[0m
[93m1703[92m lwi R8 R14 4 
[93m1704[92m swi R8 R14 -16 
[0m[94mparam i_53[0m
[93m1705[92m lwi R8 R14 8 
[93m1706[92m swi R8 R14 -20 
[0m[94mcall label_134[0m
[93m1707[92m la R8 label_150 
[93m1708[92m swi R8 R14 -8 
[93m1709[92m addi R14 R14 -100 
[93m1710[92m jmp label_134 
[0m[94mlabel_150:[0m
[0m[94m_t284_53 = ReturnVal[0m
[93m1711[92m lwi R8 R14 -4 
[93m1712[92m swi R8 R14 120 
[0m[94mFunctionCall print_string[0m
[0m[94mparam buff_53[0m
[93m1713[92m lwi R8 R14 4 
[93m1714[92m swi R8 R14 -16 
[0m[94mparam i_53[0m
[93m1715[92m lwi R8 R14 8 
[93m1716[92m swi R8 R14 -20 
[0m[94mparam newline_53[0m
[93m1717[92m lwi R8 R14 132 
[93m1718[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m1719[92m la R8 label_151 
[93m1720[92m swi R8 R14 -8 
[93m1721[92m addi R14 R14 -180 
[93m1722[92m jmp label_85 
[0m[94mlabel_151:[0m
[0m[94m_t285_53 = ReturnVal[0m
[93m1723[92m lwi R8 R14 -4 
[93m1724[92m swi R8 R14 124 
[0m[94m_t286_53 = #0[0m
[93m1725[92m li R8 0 
[93m1726[92m swi R8 R14 128 
[0m[94mReturn _t286_53[0m
[93m1727[92m lwi R8 R14 128 
[93m1728[92m swi R8 R14 148 
[93m1729[92m lwi R12 R14 140 
[93m1730[92m li R8 6940 
[93m1731[92m lwi R9 R14 144 
[93m1732[92m sub R10 R9 R8 
[93m1733[92m addi R14 R14 152 
[93m1734[92m jr R10 
[0m-------------------------------------
Parsing processReturn
pr_process_58 0
curIndex_58 4
i_58 8
prompt1_61 12
len_61 16
next_process_58 20
prompt1_67 24
len_67 28
next_id_58 32
_t287_58 36
_t288_59 40
_t289_59 44
_t290_59 48
_t291_59 52
_t292_59 56
_t293_59 60
_t294_59 64
_t295_58 68
_t296_58 72
_t297_58 76
_t298_58 80
_t299_58 84
_t300_61 88
_t301_61 92
_t302_61 96
_t303_61 100
_t304_58 104
_t305_62 108
_t306_62 112
_t307_62 116
_t308_62 120
_t309_62 124
_t310_62 128
_t311_62 132
_t312_62 136
_t313_62 140
_t314_58 144
_t315_58 148
_t316_65 152
_t317_65 156
_t318_65 160
_t319_65 164
_t320_65 168
_t321_65 172
_t322_65 176
_t323_58 180
_t324_58 184
_t325_67 188
_t326_67 192
_t327_67 196
_t328_67 200
_t329_58 204
_t330_58 208
_t331_58 212
_t332_58 216
_t333_58 220
_t334_58 224
_t335_58 228
_t336_58 232
_t337_58 236
_t338_58 240
_t339_58 244
[94mlabel_152:[0m
[93m1735[92m swi R12 R14 248 
[0m[94masm "label" "return_process_begin:" pid_0 [0m
[0m[94masm "processReturnEnter" "dummy" pid_0 [0m
[93m1736[92m lwi R11 R13 44 
[93m1737[92m li R6 1 
[93m1738[92m swi R6 R13 44 
[93m1739[92m lwi R3 R13 44 
[93m1740[92m lwi R6 R13 56 
[93m1741[92m lwi R5 R6 0 
[93m1742[92m lwi R7 R6 4 
[93m1743[92m lwi R8 R6 8 
[93m1744[92m lwi R9 R6 12 
[93m1745[92m lwi R10 R6 16 
[93m1746[92m lwi R12 R6 20 
[93m1747[92m lwi R14 R6 24 
[93m1748[92m addi R14 R14 -260 
[93m1749[92m swi R12 R14 248 
[0m[94masm "store" "R11" pr_process_58 [0m
[93m1750[92m swi R11 R14 0 
[0m[94m_t287_58 = #10[0m
[93m1751[92m li R8 10 
[93m1752[92m swi R8 R14 36 
[0m[94mcurIndex_58 = _t287_58[0m
[93m1753[92m lwi R8 R14 36 
[93m1754[92m swi R8 R14 4 
[0m[94m_t288_59 = #1[0m
[93m1755[92m li R8 1 
[93m1756[92m swi R8 R14 40 
[0m[94mi_58 = _t288_59[0m
[93m1757[92m lwi R8 R14 40 
[93m1758[92m swi R8 R14 8 
[0m[94mlabel_153:[0m
[0m[94m_t289_59 = #5[0m
[93m1759[92m li R8 5 
[93m1760[92m swi R8 R14 44 
[0m[94m_t290_59 = i_58 < _t289_59[0m
[93m1761[92m lwi R8 R14 8 
[93m1762[92m lwi R9 R14 44 
[93m1763[92m lt R10 R8 R9 
[93m1764[92m swi R10 R14 48 
[0m[94mif ( _t290_59 == #0 ) goto label_156[0m
[93m1765[92m lwi R8 R14 48 
[93m1766[92m cmp R8 R0 
[93m1767[92m jeq label_156 
[0m[94mgoto label_154[0m
[93m1768[92m jmp label_154 
[0m[94mlabel_155:[0m
[0m[94m_t291_59 = i_58[0m
[93m1769[92m lwi R8 R14 8 
[93m1770[92m swi R8 R14 52 
[0m[94mi_58 = i_58 + #1[0m
[93m1771[92m lwi R8 R14 8 
[93m1772[92m li R9 1 
[93m1773[92m add R10 R8 R9 
[93m1774[92m swi R10 R14 8 
[0m[94mgoto label_153[0m
[93m1775[92m jmp label_153 
[0m[94mlabel_154:[0m
[0m[94m_t292_59 = i_58 * #4[0m
[93m1776[92m lwi R8 R14 8 
[93m1777[92m li R9 4 
[93m1778[92m mul R10 R8 R9 
[93m1779[92m swi R10 R14 56 
[0m[94m_t293_59 = all_processes_0 + _t292_59[0m
[93m1780[92m lwi R8 R13 80 
[93m1781[92m lwi R9 R14 56 
[93m1782[92m add R10 R8 R9 
[93m1783[92m swi R10 R14 60 
[0m[94m_t294_59 = pr_process_58 == *_t293_59[0m
[93m1784[92m lwi R8 R14 0 
[93m1785[92m lwi R9 R14 60 
[93m1786[92m lwi R9 R9 0 
[93m1787[92m eq R10 R8 R9 
[93m1788[92m swi R10 R14 64 
[0m[94mif ( _t294_59 == #0 ) goto label_157[0m
[93m1789[92m lwi R8 R14 64 
[93m1790[92m cmp R8 R0 
[93m1791[92m jeq label_157 
[0m[94mcurIndex_58 = i_58[0m
[93m1792[92m lwi R8 R14 8 
[93m1793[92m swi R8 R14 4 
[0m[94mgoto label_158[0m
[93m1794[92m jmp label_158 
[0m[94mlabel_157:[0m
[0m[94mlabel_158:[0m
[0m[94mgoto label_155[0m
[93m1795[92m jmp label_155 
[0m[94mlabel_156:[0m
[0m[94m_t295_58 = curIndex_58 * #4[0m
[93m1796[92m lwi R8 R14 4 
[93m1797[92m li R9 4 
[93m1798[92m mul R10 R8 R9 
[93m1799[92m swi R10 R14 68 
[0m[94m_t296_58 = all_processes_0 + _t295_58[0m
[93m1800[92m lwi R8 R13 80 
[93m1801[92m lwi R9 R14 68 
[93m1802[92m add R10 R8 R9 
[93m1803[92m swi R10 R14 72 
[0m[94m_t297_58 = #0[0m
[93m1804[92m li R8 0 
[93m1805[92m swi R8 R14 76 
[0m[94m*_t296_58 = _t297_58[0m
[93m1806[92m lwi R8 R14 76 
[93m1807[92m lwi R7 R14 72 
[93m1808[92m swi R8 R7 0 
[0m[94m_t298_58 = #10[0m
[93m1809[92m li R8 10 
[93m1810[92m swi R8 R14 80 
[0m[94m_t299_58 = curIndex_58 == _t298_58[0m
[93m1811[92m lwi R8 R14 4 
[93m1812[92m lwi R9 R14 80 
[93m1813[92m eq R10 R8 R9 
[93m1814[92m swi R10 R14 84 
[0m[94mif ( _t299_58 == #0 ) goto label_159[0m
[93m1815[92m lwi R8 R14 84 
[93m1816[92m cmp R8 R0 
[93m1817[92m jeq label_159 
[0m[94mstring _t300_61 "Some problem occured, system crashing"[0m
[93m1818[92m subi R12 R12 40 
[93m1819[92m li R8 83 
[93m1820[92m sbi R8 R12 0 
[93m1821[92m li R8 111 
[93m1822[92m sbi R8 R12 1 
[93m1823[92m li R8 109 
[93m1824[92m sbi R8 R12 2 
[93m1825[92m li R8 101 
[93m1826[92m sbi R8 R12 3 
[93m1827[92m li R8 32 
[93m1828[92m sbi R8 R12 4 
[93m1829[92m li R8 112 
[93m1830[92m sbi R8 R12 5 
[93m1831[92m li R8 114 
[93m1832[92m sbi R8 R12 6 
[93m1833[92m li R8 111 
[93m1834[92m sbi R8 R12 7 
[93m1835[92m li R8 98 
[93m1836[92m sbi R8 R12 8 
[93m1837[92m li R8 108 
[93m1838[92m sbi R8 R12 9 
[93m1839[92m li R8 101 
[93m1840[92m sbi R8 R12 10 
[93m1841[92m li R8 109 
[93m1842[92m sbi R8 R12 11 
[93m1843[92m li R8 32 
[93m1844[92m sbi R8 R12 12 
[93m1845[92m li R8 111 
[93m1846[92m sbi R8 R12 13 
[93m1847[92m li R8 99 
[93m1848[92m sbi R8 R12 14 
[93m1849[92m li R8 99 
[93m1850[92m sbi R8 R12 15 
[93m1851[92m li R8 117 
[93m1852[92m sbi R8 R12 16 
[93m1853[92m li R8 114 
[93m1854[92m sbi R8 R12 17 
[93m1855[92m li R8 101 
[93m1856[92m sbi R8 R12 18 
[93m1857[92m li R8 100 
[93m1858[92m sbi R8 R12 19 
[93m1859[92m li R8 44 
[93m1860[92m sbi R8 R12 20 
[93m1861[92m li R8 32 
[93m1862[92m sbi R8 R12 21 
[93m1863[92m li R8 115 
[93m1864[92m sbi R8 R12 22 
[93m1865[92m li R8 121 
[93m1866[92m sbi R8 R12 23 
[93m1867[92m li R8 115 
[93m1868[92m sbi R8 R12 24 
[93m1869[92m li R8 116 
[93m1870[92m sbi R8 R12 25 
[93m1871[92m li R8 101 
[93m1872[92m sbi R8 R12 26 
[93m1873[92m li R8 109 
[93m1874[92m sbi R8 R12 27 
[93m1875[92m li R8 32 
[93m1876[92m sbi R8 R12 28 
[93m1877[92m li R8 99 
[93m1878[92m sbi R8 R12 29 
[93m1879[92m li R8 114 
[93m1880[92m sbi R8 R12 30 
[93m1881[92m li R8 97 
[93m1882[92m sbi R8 R12 31 
[93m1883[92m li R8 115 
[93m1884[92m sbi R8 R12 32 
[93m1885[92m li R8 104 
[93m1886[92m sbi R8 R12 33 
[93m1887[92m li R8 105 
[93m1888[92m sbi R8 R12 34 
[93m1889[92m li R8 110 
[93m1890[92m sbi R8 R12 35 
[93m1891[92m li R8 103 
[93m1892[92m sbi R8 R12 36 
[93m1893[92m sbi R0 R12 37 
[93m1894[92m swi R12 R14 88 
[0m[94mprompt1_61 = _t300_61[0m
[93m1895[92m lwi R8 R14 88 
[93m1896[92m swi R8 R14 12 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt1_61[0m
[93m1897[92m lwi R8 R14 12 
[93m1898[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m1899[92m la R8 label_161 
[93m1900[92m swi R8 R14 -8 
[93m1901[92m addi R14 R14 -52 
[93m1902[92m jmp label_8 
[0m[94mlabel_161:[0m
[0m[94m_t301_61 = ReturnVal[0m
[93m1903[92m lwi R8 R14 -4 
[93m1904[92m swi R8 R14 92 
[0m[94mlen_61 = _t301_61[0m
[93m1905[92m lwi R8 R14 92 
[93m1906[92m swi R8 R14 16 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt1_61[0m
[93m1907[92m lwi R8 R14 12 
[93m1908[92m swi R8 R14 -16 
[0m[94mparam len_61[0m
[93m1909[92m lwi R8 R14 16 
[93m1910[92m swi R8 R14 -20 
[0m[94m_t302_61 = #1[0m
[93m1911[92m li R8 1 
[93m1912[92m swi R8 R14 96 
[0m[94mparam _t302_61[0m
[93m1913[92m lwi R8 R14 96 
[93m1914[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m1915[92m la R8 label_162 
[93m1916[92m swi R8 R14 -8 
[93m1917[92m addi R14 R14 -180 
[93m1918[92m jmp label_85 
[0m[94mlabel_162:[0m
[0m[94m_t303_61 = ReturnVal[0m
[93m1919[92m lwi R8 R14 -4 
[93m1920[92m swi R8 R14 100 
[0m[94mgoto label_160[0m
[93m1921[92m jmp label_160 
[0m[94mlabel_159:[0m
[0m[94mlabel_160:[0m
[0m[94m_t304_58 = #10[0m
[93m1922[92m li R8 10 
[93m1923[92m swi R8 R14 104 
[0m[94mnext_process_58 = _t304_58[0m
[93m1924[92m lwi R8 R14 104 
[93m1925[92m swi R8 R14 20 
[0m[94m_t305_62 = #1[0m
[93m1926[92m li R8 1 
[93m1927[92m swi R8 R14 108 
[0m[94m_t306_62 = curIndex_58 + _t305_62[0m
[93m1928[92m lwi R8 R14 4 
[93m1929[92m lwi R9 R14 108 
[93m1930[92m add R10 R8 R9 
[93m1931[92m swi R10 R14 112 
[0m[94mi_58 = _t306_62[0m
[93m1932[92m lwi R8 R14 112 
[93m1933[92m swi R8 R14 8 
[0m[94mlabel_163:[0m
[0m[94m_t307_62 = #5[0m
[93m1934[92m li R8 5 
[93m1935[92m swi R8 R14 116 
[0m[94m_t308_62 = i_58 < _t307_62[0m
[93m1936[92m lwi R8 R14 8 
[93m1937[92m lwi R9 R14 116 
[93m1938[92m lt R10 R8 R9 
[93m1939[92m swi R10 R14 120 
[0m[94mif ( _t308_62 == #0 ) goto label_166[0m
[93m1940[92m lwi R8 R14 120 
[93m1941[92m cmp R8 R0 
[93m1942[92m jeq label_166 
[0m[94mgoto label_164[0m
[93m1943[92m jmp label_164 
[0m[94mlabel_165:[0m
[0m[94m_t309_62 = i_58[0m
[93m1944[92m lwi R8 R14 8 
[93m1945[92m swi R8 R14 124 
[0m[94mi_58 = i_58 + #1[0m
[93m1946[92m lwi R8 R14 8 
[93m1947[92m li R9 1 
[93m1948[92m add R10 R8 R9 
[93m1949[92m swi R10 R14 8 
[0m[94mgoto label_163[0m
[93m1950[92m jmp label_163 
[0m[94mlabel_164:[0m
[0m[94m_t310_62 = i_58 * #4[0m
[93m1951[92m lwi R8 R14 8 
[93m1952[92m li R9 4 
[93m1953[92m mul R10 R8 R9 
[93m1954[92m swi R10 R14 128 
[0m[94m_t311_62 = all_processes_0 + _t310_62[0m
[93m1955[92m lwi R8 R13 80 
[93m1956[92m lwi R9 R14 128 
[93m1957[92m add R10 R8 R9 
[93m1958[92m swi R10 R14 132 
[0m[94m_t312_62 = #0[0m
[93m1959[92m li R8 0 
[93m1960[92m swi R8 R14 136 
[0m[94m_t313_62 = *_t311_62 != _t312_62[0m
[93m1961[92m lwi R8 R14 132 
[93m1962[92m lwi R8 R8 0 
[93m1963[92m lwi R9 R14 136 
[93m1964[92m neq R10 R8 R9 
[93m1965[92m swi R10 R14 140 
[0m[94mif ( _t313_62 == #0 ) goto label_167[0m
[93m1966[92m lwi R8 R14 140 
[93m1967[92m cmp R8 R0 
[93m1968[92m jeq label_167 
[0m[94mnext_process_58 = i_58[0m
[93m1969[92m lwi R8 R14 8 
[93m1970[92m swi R8 R14 20 
[0m[94mgoto label_166[0m
[93m1971[92m jmp label_166 
[0m[94mgoto label_168[0m
[93m1972[92m jmp label_168 
[0m[94mlabel_167:[0m
[0m[94mlabel_168:[0m
[0m[94mgoto label_165[0m
[93m1973[92m jmp label_165 
[0m[94mlabel_166:[0m
[0m[94m_t314_58 = #10[0m
[93m1974[92m li R8 10 
[93m1975[92m swi R8 R14 144 
[0m[94m_t315_58 = next_process_58 == _t314_58[0m
[93m1976[92m lwi R8 R14 20 
[93m1977[92m lwi R9 R14 144 
[93m1978[92m eq R10 R8 R9 
[93m1979[92m swi R10 R14 148 
[0m[94mif ( _t315_58 == #0 ) goto label_169[0m
[93m1980[92m lwi R8 R14 148 
[93m1981[92m cmp R8 R0 
[93m1982[92m jeq label_169 
[0m[94m_t316_65 = #1[0m
[93m1983[92m li R8 1 
[93m1984[92m swi R8 R14 152 
[0m[94mi_58 = _t316_65[0m
[93m1985[92m lwi R8 R14 152 
[93m1986[92m swi R8 R14 8 
[0m[94mlabel_171:[0m
[0m[94m_t317_65 = i_58 <= curIndex_58[0m
[93m1987[92m lwi R8 R14 8 
[93m1988[92m lwi R9 R14 4 
[93m1989[92m le R10 R8 R9 
[93m1990[92m swi R10 R14 156 
[0m[94mif ( _t317_65 == #0 ) goto label_174[0m
[93m1991[92m lwi R8 R14 156 
[93m1992[92m cmp R8 R0 
[93m1993[92m jeq label_174 
[0m[94mgoto label_172[0m
[93m1994[92m jmp label_172 
[0m[94mlabel_173:[0m
[0m[94m_t318_65 = i_58[0m
[93m1995[92m lwi R8 R14 8 
[93m1996[92m swi R8 R14 160 
[0m[94mi_58 = i_58 + #1[0m
[93m1997[92m lwi R8 R14 8 
[93m1998[92m li R9 1 
[93m1999[92m add R10 R8 R9 
[93m2000[92m swi R10 R14 8 
[0m[94mgoto label_171[0m
[93m2001[92m jmp label_171 
[0m[94mlabel_172:[0m
[0m[94m_t319_65 = i_58 * #4[0m
[93m2002[92m lwi R8 R14 8 
[93m2003[92m li R9 4 
[93m2004[92m mul R10 R8 R9 
[93m2005[92m swi R10 R14 164 
[0m[94m_t320_65 = all_processes_0 + _t319_65[0m
[93m2006[92m lwi R8 R13 80 
[93m2007[92m lwi R9 R14 164 
[93m2008[92m add R10 R8 R9 
[93m2009[92m swi R10 R14 168 
[0m[94m_t321_65 = #0[0m
[93m2010[92m li R8 0 
[93m2011[92m swi R8 R14 172 
[0m[94m_t322_65 = *_t320_65 != _t321_65[0m
[93m2012[92m lwi R8 R14 168 
[93m2013[92m lwi R8 R8 0 
[93m2014[92m lwi R9 R14 172 
[93m2015[92m neq R10 R8 R9 
[93m2016[92m swi R10 R14 176 
[0m[94mif ( _t322_65 == #0 ) goto label_175[0m
[93m2017[92m lwi R8 R14 176 
[93m2018[92m cmp R8 R0 
[93m2019[92m jeq label_175 
[0m[94mnext_process_58 = i_58[0m
[93m2020[92m lwi R8 R14 8 
[93m2021[92m swi R8 R14 20 
[0m[94mgoto label_174[0m
[93m2022[92m jmp label_174 
[0m[94mgoto label_176[0m
[93m2023[92m jmp label_176 
[0m[94mlabel_175:[0m
[0m[94mlabel_176:[0m
[0m[94mgoto label_173[0m
[93m2024[92m jmp label_173 
[0m[94mlabel_174:[0m
[0m[94mgoto label_170[0m
[93m2025[92m jmp label_170 
[0m[94mlabel_169:[0m
[0m[94mlabel_170:[0m
[0m[94m_t323_58 = #10[0m
[93m2026[92m li R8 10 
[93m2027[92m swi R8 R14 180 
[0m[94m_t324_58 = next_process_58 == _t323_58[0m
[93m2028[92m lwi R8 R14 20 
[93m2029[92m lwi R9 R14 180 
[93m2030[92m eq R10 R8 R9 
[93m2031[92m swi R10 R14 184 
[0m[94mif ( _t324_58 == #0 ) goto label_177[0m
[93m2032[92m lwi R8 R14 184 
[93m2033[92m cmp R8 R0 
[93m2034[92m jeq label_177 
[0m[94mstring _t325_67 "Some problem occured, system crashing"[0m
[93m2035[92m subi R12 R12 40 
[93m2036[92m li R8 83 
[93m2037[92m sbi R8 R12 0 
[93m2038[92m li R8 111 
[93m2039[92m sbi R8 R12 1 
[93m2040[92m li R8 109 
[93m2041[92m sbi R8 R12 2 
[93m2042[92m li R8 101 
[93m2043[92m sbi R8 R12 3 
[93m2044[92m li R8 32 
[93m2045[92m sbi R8 R12 4 
[93m2046[92m li R8 112 
[93m2047[92m sbi R8 R12 5 
[93m2048[92m li R8 114 
[93m2049[92m sbi R8 R12 6 
[93m2050[92m li R8 111 
[93m2051[92m sbi R8 R12 7 
[93m2052[92m li R8 98 
[93m2053[92m sbi R8 R12 8 
[93m2054[92m li R8 108 
[93m2055[92m sbi R8 R12 9 
[93m2056[92m li R8 101 
[93m2057[92m sbi R8 R12 10 
[93m2058[92m li R8 109 
[93m2059[92m sbi R8 R12 11 
[93m2060[92m li R8 32 
[93m2061[92m sbi R8 R12 12 
[93m2062[92m li R8 111 
[93m2063[92m sbi R8 R12 13 
[93m2064[92m li R8 99 
[93m2065[92m sbi R8 R12 14 
[93m2066[92m li R8 99 
[93m2067[92m sbi R8 R12 15 
[93m2068[92m li R8 117 
[93m2069[92m sbi R8 R12 16 
[93m2070[92m li R8 114 
[93m2071[92m sbi R8 R12 17 
[93m2072[92m li R8 101 
[93m2073[92m sbi R8 R12 18 
[93m2074[92m li R8 100 
[93m2075[92m sbi R8 R12 19 
[93m2076[92m li R8 44 
[93m2077[92m sbi R8 R12 20 
[93m2078[92m li R8 32 
[93m2079[92m sbi R8 R12 21 
[93m2080[92m li R8 115 
[93m2081[92m sbi R8 R12 22 
[93m2082[92m li R8 121 
[93m2083[92m sbi R8 R12 23 
[93m2084[92m li R8 115 
[93m2085[92m sbi R8 R12 24 
[93m2086[92m li R8 116 
[93m2087[92m sbi R8 R12 25 
[93m2088[92m li R8 101 
[93m2089[92m sbi R8 R12 26 
[93m2090[92m li R8 109 
[93m2091[92m sbi R8 R12 27 
[93m2092[92m li R8 32 
[93m2093[92m sbi R8 R12 28 
[93m2094[92m li R8 99 
[93m2095[92m sbi R8 R12 29 
[93m2096[92m li R8 114 
[93m2097[92m sbi R8 R12 30 
[93m2098[92m li R8 97 
[93m2099[92m sbi R8 R12 31 
[93m2100[92m li R8 115 
[93m2101[92m sbi R8 R12 32 
[93m2102[92m li R8 104 
[93m2103[92m sbi R8 R12 33 
[93m2104[92m li R8 105 
[93m2105[92m sbi R8 R12 34 
[93m2106[92m li R8 110 
[93m2107[92m sbi R8 R12 35 
[93m2108[92m li R8 103 
[93m2109[92m sbi R8 R12 36 
[93m2110[92m sbi R0 R12 37 
[93m2111[92m swi R12 R14 188 
[0m[94mprompt1_61 = _t325_67[0m
[93m2112[92m lwi R8 R14 188 
[93m2113[92m swi R8 R14 12 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt1_61[0m
[93m2114[92m lwi R8 R14 12 
[93m2115[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m2116[92m la R8 label_179 
[93m2117[92m swi R8 R14 -8 
[93m2118[92m addi R14 R14 -52 
[93m2119[92m jmp label_8 
[0m[94mlabel_179:[0m
[0m[94m_t326_67 = ReturnVal[0m
[93m2120[92m lwi R8 R14 -4 
[93m2121[92m swi R8 R14 192 
[0m[94mlen_61 = _t326_67[0m
[93m2122[92m lwi R8 R14 192 
[93m2123[92m swi R8 R14 16 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt1_61[0m
[93m2124[92m lwi R8 R14 12 
[93m2125[92m swi R8 R14 -16 
[0m[94mparam len_61[0m
[93m2126[92m lwi R8 R14 16 
[93m2127[92m swi R8 R14 -20 
[0m[94m_t327_67 = #1[0m
[93m2128[92m li R8 1 
[93m2129[92m swi R8 R14 196 
[0m[94mparam _t327_67[0m
[93m2130[92m lwi R8 R14 196 
[93m2131[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m2132[92m la R8 label_180 
[93m2133[92m swi R8 R14 -8 
[93m2134[92m addi R14 R14 -180 
[93m2135[92m jmp label_85 
[0m[94mlabel_180:[0m
[0m[94m_t328_67 = ReturnVal[0m
[93m2136[92m lwi R8 R14 -4 
[93m2137[92m swi R8 R14 200 
[0m[94mgoto label_178[0m
[93m2138[92m jmp label_178 
[0m[94mlabel_177:[0m
[0m[94mlabel_178:[0m
[0m[94m_t329_58 = next_process_58 * #4[0m
[93m2139[92m lwi R8 R14 20 
[93m2140[92m li R9 4 
[93m2141[92m mul R10 R8 R9 
[93m2142[92m swi R10 R14 204 
[0m[94m_t330_58 = all_processes_0 + _t329_58[0m
[93m2143[92m lwi R8 R13 80 
[93m2144[92m lwi R9 R14 204 
[93m2145[92m add R10 R8 R9 
[93m2146[92m swi R10 R14 208 
[0m[94mnext_id_58 = *_t330_58[0m
[93m2147[92m lwi R8 R14 208 
[93m2148[92m lwi R8 R8 0 
[93m2149[92m swi R8 R14 32 
[0m[94masm "load" "R11" next_id_58 [0m
[93m2150[92m lwi R11 R14 32 
[0m[94m_t331_58 = #1[0m
[93m2151[92m li R8 1 
[93m2152[92m swi R8 R14 212 
[0m[94m_t332_58 = next_process_58 == _t331_58[0m
[93m2153[92m lwi R8 R14 20 
[93m2154[92m lwi R9 R14 212 
[93m2155[92m eq R10 R8 R9 
[93m2156[92m swi R10 R14 216 
[0m[94mif ( _t332_58 == #0 ) goto label_181[0m
[93m2157[92m lwi R8 R14 216 
[93m2158[92m cmp R8 R0 
[93m2159[92m jeq label_181 
[0m[94masm "processReturnExit" "dummy" next_id_58 [0m
[93m2160[92m lwi R12 R14 248 
[93m2161[92m addi R14 R14 260 
[0m[94masm "switch" "1" next_id_58 [0m
[93m2162[92m lwi R6 R13 56 
[93m2163[92m swi R5 R6 0 
[93m2164[92m swi R7 R6 4 
[93m2165[92m swi R8 R6 8 
[93m2166[92m swi R9 R6 12 
[93m2167[92m swi R10 R6 16 
[93m2168[92m swi R12 R6 20 
[93m2169[92m swi R14 R6 24 
[93m2170[92m lwi R6 R13 60 
[93m2171[92m lwi R5 R6 0 
[93m2172[92m lwi R7 R6 4 
[93m2173[92m lwi R8 R6 8 
[93m2174[92m lwi R9 R6 12 
[93m2175[92m lwi R10 R6 16 
[93m2176[92m lwi R12 R6 20 
[93m2177[92m lwi R14 R6 24 
[93m2178[92m swi R11 R13 44 
[93m2179[92m lwi R3 R13 44 
[93m2180[92m li R6 8740 
[93m2181[92m li R15 9612 
[93m2182[92m add R6 R6 R15 
[93m2183[92m addi R6 R6 8 
[93m2184[92m sub R5 R5 R6 
[93m2185[92m jri R5 
[0m[94mgoto label_182[0m
[93m2186[92m jmp label_182 
[0m[94mlabel_181:[0m
[0m[94m_t333_58 = #2[0m
[93m2187[92m li R8 2 
[93m2188[92m swi R8 R14 220 
[0m[94m_t334_58 = next_process_58 == _t333_58[0m
[93m2189[92m lwi R8 R14 20 
[93m2190[92m lwi R9 R14 220 
[93m2191[92m eq R10 R8 R9 
[93m2192[92m swi R10 R14 224 
[0m[94mif ( _t334_58 == #0 ) goto label_183[0m
[93m2193[92m lwi R8 R14 224 
[93m2194[92m cmp R8 R0 
[93m2195[92m jeq label_183 
[0m[94masm "processReturnExit" "dummy" next_id_58 [0m
[93m2196[92m lwi R12 R14 248 
[93m2197[92m addi R14 R14 260 
[0m[94masm "switch" "2" next_id_58 [0m
[93m2198[92m lwi R6 R13 56 
[93m2199[92m swi R5 R6 0 
[93m2200[92m swi R7 R6 4 
[93m2201[92m swi R8 R6 8 
[93m2202[92m swi R9 R6 12 
[93m2203[92m swi R10 R6 16 
[93m2204[92m swi R12 R6 20 
[93m2205[92m swi R14 R6 24 
[93m2206[92m lwi R6 R13 64 
[93m2207[92m lwi R5 R6 0 
[93m2208[92m lwi R7 R6 4 
[93m2209[92m lwi R8 R6 8 
[93m2210[92m lwi R9 R6 12 
[93m2211[92m lwi R10 R6 16 
[93m2212[92m lwi R12 R6 20 
[93m2213[92m lwi R14 R6 24 
[93m2214[92m swi R11 R13 44 
[93m2215[92m lwi R3 R13 44 
[93m2216[92m li R6 8884 
[93m2217[92m li R15 9612 
[93m2218[92m add R6 R6 R15 
[93m2219[92m addi R6 R6 8 
[93m2220[92m sub R5 R5 R6 
[93m2221[92m jri R5 
[0m[94mgoto label_182[0m
[93m2222[92m jmp label_182 
[0m[94mlabel_183:[0m
[0m[94m_t335_58 = #3[0m
[93m2223[92m li R8 3 
[93m2224[92m swi R8 R14 228 
[0m[94m_t336_58 = next_process_58 == _t335_58[0m
[93m2225[92m lwi R8 R14 20 
[93m2226[92m lwi R9 R14 228 
[93m2227[92m eq R10 R8 R9 
[93m2228[92m swi R10 R14 232 
[0m[94mif ( _t336_58 == #0 ) goto label_184[0m
[93m2229[92m lwi R8 R14 232 
[93m2230[92m cmp R8 R0 
[93m2231[92m jeq label_184 
[0m[94masm "processReturnExit" "dummy" next_id_58 [0m
[93m2232[92m lwi R12 R14 248 
[93m2233[92m addi R14 R14 260 
[0m[94masm "switch" "3" next_id_58 [0m
[93m2234[92m lwi R6 R13 56 
[93m2235[92m swi R5 R6 0 
[93m2236[92m swi R7 R6 4 
[93m2237[92m swi R8 R6 8 
[93m2238[92m swi R9 R6 12 
[93m2239[92m swi R10 R6 16 
[93m2240[92m swi R12 R6 20 
[93m2241[92m swi R14 R6 24 
[93m2242[92m lwi R6 R13 68 
[93m2243[92m lwi R5 R6 0 
[93m2244[92m lwi R7 R6 4 
[93m2245[92m lwi R8 R6 8 
[93m2246[92m lwi R9 R6 12 
[93m2247[92m lwi R10 R6 16 
[93m2248[92m lwi R12 R6 20 
[93m2249[92m lwi R14 R6 24 
[93m2250[92m swi R11 R13 44 
[93m2251[92m lwi R3 R13 44 
[93m2252[92m li R6 9028 
[93m2253[92m li R15 9612 
[93m2254[92m add R6 R6 R15 
[93m2255[92m addi R6 R6 8 
[93m2256[92m sub R5 R5 R6 
[93m2257[92m jri R5 
[0m[94mgoto label_182[0m
[93m2258[92m jmp label_182 
[0m[94mlabel_184:[0m
[0m[94m_t337_58 = #4[0m
[93m2259[92m li R8 4 
[93m2260[92m swi R8 R14 236 
[0m[94m_t338_58 = next_process_58 == _t337_58[0m
[93m2261[92m lwi R8 R14 20 
[93m2262[92m lwi R9 R14 236 
[93m2263[92m eq R10 R8 R9 
[93m2264[92m swi R10 R14 240 
[0m[94mif ( _t338_58 == #0 ) goto label_185[0m
[93m2265[92m lwi R8 R14 240 
[93m2266[92m cmp R8 R0 
[93m2267[92m jeq label_185 
[0m[94masm "processReturnExit" "dummy" next_id_58 [0m
[93m2268[92m lwi R12 R14 248 
[93m2269[92m addi R14 R14 260 
[0m[94masm "switch" "4" next_id_58 [0m
[93m2270[92m lwi R6 R13 56 
[93m2271[92m swi R5 R6 0 
[93m2272[92m swi R7 R6 4 
[93m2273[92m swi R8 R6 8 
[93m2274[92m swi R9 R6 12 
[93m2275[92m swi R10 R6 16 
[93m2276[92m swi R12 R6 20 
[93m2277[92m swi R14 R6 24 
[93m2278[92m lwi R6 R13 72 
[93m2279[92m lwi R5 R6 0 
[93m2280[92m lwi R7 R6 4 
[93m2281[92m lwi R8 R6 8 
[93m2282[92m lwi R9 R6 12 
[93m2283[92m lwi R10 R6 16 
[93m2284[92m lwi R12 R6 20 
[93m2285[92m lwi R14 R6 24 
[93m2286[92m swi R11 R13 44 
[93m2287[92m lwi R3 R13 44 
[93m2288[92m li R6 9172 
[93m2289[92m li R15 9612 
[93m2290[92m add R6 R6 R15 
[93m2291[92m addi R6 R6 8 
[93m2292[92m sub R5 R5 R6 
[93m2293[92m jri R5 
[0m[94mgoto label_182[0m
[93m2294[92m jmp label_182 
[0m[94mlabel_185:[0m
[0m[94mlabel_182:[0m
[0m[94m_t339_58 = #0[0m
[93m2295[92m li R8 0 
[93m2296[92m swi R8 R14 244 
[0m[94mReturn _t339_58[0m
[93m2297[92m lwi R8 R14 244 
[93m2298[92m swi R8 R14 256 
[93m2299[92m lwi R12 R14 248 
[93m2300[92m li R8 9220 
[93m2301[92m lwi R9 R14 252 
[93m2302[92m sub R10 R9 R8 
[93m2303[92m addi R14 R14 260 
[93m2304[92m jr R10 
[0m-------------------------------------
Parsing fork
process_72 0
i_72 4
core_72 8
prompt_75 12
len_75 16
id_72 20
proc_reg_72 24
_t340_72 28
_t341_73 32
_t342_73 36
_t343_73 40
_t344_73 44
_t345_73 48
_t346_73 52
_t347_73 56
_t348_73 60
_t349_72 64
_t350_72 68
_t351_75 72
_t352_75 76
_t353_75 80
_t354_75 84
_t355_75 88
_t356_75 92
_t357_72 96
_t358_72 100
_t359_72 104
_t360_72 108
_t361_72 112
_t362_72 116
_t363_72 120
_t364_72 124
_t365_72 128
_t366_72 132
_t367_72 136
_t368_72 140
_t369_72 144
_t370_72 148
_t371_72 152
_t372_72 156
_t373_72 160
_t374_72 164
_t375_72 168
_t376_72 172
_t377_72 176
_t378_72 180
_t379_72 184
_t380_72 188
_t381_72 192
_t382_72 196
_t383_72 200
_t384_72 204
_t385_72 208
_t386_72 212
_t387_72 216
_t388_72 220
_t389_72 224
_t390_72 228
_t391_72 232
_t392_72 236
_t393_72 240
_t394_72 244
_t395_72 248
_t396_72 252
_t397_72 256
_t398_72 260
_t399_72 264
_t400_72 268
_t401_72 272
_t402_72 276
_t403_72 280
_t404_72 284
_t405_72 288
_t406_72 292
_t407_72 296
_t408_72 300
_t409_72 304
[94mlabel_186:[0m
[93m2305[92m swi R12 R14 308 
[0m[94masm "store" "R11" process_72 [0m
[93m2306[92m swi R11 R14 0 
[0m[94m_t340_72 = #10[0m
[93m2307[92m li R8 10 
[93m2308[92m swi R8 R14 28 
[0m[94mcore_72 = _t340_72[0m
[93m2309[92m lwi R8 R14 28 
[93m2310[92m swi R8 R14 8 
[0m[94m_t341_73 = #1[0m
[93m2311[92m li R8 1 
[93m2312[92m swi R8 R14 32 
[0m[94mi_72 = _t341_73[0m
[93m2313[92m lwi R8 R14 32 
[93m2314[92m swi R8 R14 4 
[0m[94mlabel_187:[0m
[0m[94m_t342_73 = #5[0m
[93m2315[92m li R8 5 
[93m2316[92m swi R8 R14 36 
[0m[94m_t343_73 = i_72 < _t342_73[0m
[93m2317[92m lwi R8 R14 4 
[93m2318[92m lwi R9 R14 36 
[93m2319[92m lt R10 R8 R9 
[93m2320[92m swi R10 R14 40 
[0m[94mif ( _t343_73 == #0 ) goto label_190[0m
[93m2321[92m lwi R8 R14 40 
[93m2322[92m cmp R8 R0 
[93m2323[92m jeq label_190 
[0m[94mgoto label_188[0m
[93m2324[92m jmp label_188 
[0m[94mlabel_189:[0m
[0m[94m_t344_73 = i_72[0m
[93m2325[92m lwi R8 R14 4 
[93m2326[92m swi R8 R14 44 
[0m[94mi_72 = i_72 + #1[0m
[93m2327[92m lwi R8 R14 4 
[93m2328[92m li R9 1 
[93m2329[92m add R10 R8 R9 
[93m2330[92m swi R10 R14 4 
[0m[94mgoto label_187[0m
[93m2331[92m jmp label_187 
[0m[94mlabel_188:[0m
[0m[94m_t345_73 = i_72 * #4[0m
[93m2332[92m lwi R8 R14 4 
[93m2333[92m li R9 4 
[93m2334[92m mul R10 R8 R9 
[93m2335[92m swi R10 R14 48 
[0m[94m_t346_73 = all_processes_0 + _t345_73[0m
[93m2336[92m lwi R8 R13 80 
[93m2337[92m lwi R9 R14 48 
[93m2338[92m add R10 R8 R9 
[93m2339[92m swi R10 R14 52 
[0m[94m_t347_73 = #0[0m
[93m2340[92m li R8 0 
[93m2341[92m swi R8 R14 56 
[0m[94m_t348_73 = *_t346_73 == _t347_73[0m
[93m2342[92m lwi R8 R14 52 
[93m2343[92m lwi R8 R8 0 
[93m2344[92m lwi R9 R14 56 
[93m2345[92m eq R10 R8 R9 
[93m2346[92m swi R10 R14 60 
[0m[94mif ( _t348_73 == #0 ) goto label_191[0m
[93m2347[92m lwi R8 R14 60 
[93m2348[92m cmp R8 R0 
[93m2349[92m jeq label_191 
[0m[94mcore_72 = i_72[0m
[93m2350[92m lwi R8 R14 4 
[93m2351[92m swi R8 R14 8 
[0m[94mgoto label_190[0m
[93m2352[92m jmp label_190 
[0m[94mgoto label_192[0m
[93m2353[92m jmp label_192 
[0m[94mlabel_191:[0m
[0m[94mlabel_192:[0m
[0m[94mgoto label_189[0m
[93m2354[92m jmp label_189 
[0m[94mlabel_190:[0m
[0m[94m_t349_72 = #10[0m
[93m2355[92m li R8 10 
[93m2356[92m swi R8 R14 64 
[0m[94m_t350_72 = core_72 == _t349_72[0m
[93m2357[92m lwi R8 R14 8 
[93m2358[92m lwi R9 R14 64 
[93m2359[92m eq R10 R8 R9 
[93m2360[92m swi R10 R14 68 
[0m[94mif ( _t350_72 == #0 ) goto label_193[0m
[93m2361[92m lwi R8 R14 68 
[93m2362[92m cmp R8 R0 
[93m2363[92m jeq label_193 
[0m[94mstring _t351_75 "Cannot create a process, process overload"[0m
[93m2364[92m subi R12 R12 44 
[93m2365[92m li R8 67 
[93m2366[92m sbi R8 R12 0 
[93m2367[92m li R8 97 
[93m2368[92m sbi R8 R12 1 
[93m2369[92m li R8 110 
[93m2370[92m sbi R8 R12 2 
[93m2371[92m li R8 110 
[93m2372[92m sbi R8 R12 3 
[93m2373[92m li R8 111 
[93m2374[92m sbi R8 R12 4 
[93m2375[92m li R8 116 
[93m2376[92m sbi R8 R12 5 
[93m2377[92m li R8 32 
[93m2378[92m sbi R8 R12 6 
[93m2379[92m li R8 99 
[93m2380[92m sbi R8 R12 7 
[93m2381[92m li R8 114 
[93m2382[92m sbi R8 R12 8 
[93m2383[92m li R8 101 
[93m2384[92m sbi R8 R12 9 
[93m2385[92m li R8 97 
[93m2386[92m sbi R8 R12 10 
[93m2387[92m li R8 116 
[93m2388[92m sbi R8 R12 11 
[93m2389[92m li R8 101 
[93m2390[92m sbi R8 R12 12 
[93m2391[92m li R8 32 
[93m2392[92m sbi R8 R12 13 
[93m2393[92m li R8 97 
[93m2394[92m sbi R8 R12 14 
[93m2395[92m li R8 32 
[93m2396[92m sbi R8 R12 15 
[93m2397[92m li R8 112 
[93m2398[92m sbi R8 R12 16 
[93m2399[92m li R8 114 
[93m2400[92m sbi R8 R12 17 
[93m2401[92m li R8 111 
[93m2402[92m sbi R8 R12 18 
[93m2403[92m li R8 99 
[93m2404[92m sbi R8 R12 19 
[93m2405[92m li R8 101 
[93m2406[92m sbi R8 R12 20 
[93m2407[92m li R8 115 
[93m2408[92m sbi R8 R12 21 
[93m2409[92m li R8 115 
[93m2410[92m sbi R8 R12 22 
[93m2411[92m li R8 44 
[93m2412[92m sbi R8 R12 23 
[93m2413[92m li R8 32 
[93m2414[92m sbi R8 R12 24 
[93m2415[92m li R8 112 
[93m2416[92m sbi R8 R12 25 
[93m2417[92m li R8 114 
[93m2418[92m sbi R8 R12 26 
[93m2419[92m li R8 111 
[93m2420[92m sbi R8 R12 27 
[93m2421[92m li R8 99 
[93m2422[92m sbi R8 R12 28 
[93m2423[92m li R8 101 
[93m2424[92m sbi R8 R12 29 
[93m2425[92m li R8 115 
[93m2426[92m sbi R8 R12 30 
[93m2427[92m li R8 115 
[93m2428[92m sbi R8 R12 31 
[93m2429[92m li R8 32 
[93m2430[92m sbi R8 R12 32 
[93m2431[92m li R8 111 
[93m2432[92m sbi R8 R12 33 
[93m2433[92m li R8 118 
[93m2434[92m sbi R8 R12 34 
[93m2435[92m li R8 101 
[93m2436[92m sbi R8 R12 35 
[93m2437[92m li R8 114 
[93m2438[92m sbi R8 R12 36 
[93m2439[92m li R8 108 
[93m2440[92m sbi R8 R12 37 
[93m2441[92m li R8 111 
[93m2442[92m sbi R8 R12 38 
[93m2443[92m li R8 97 
[93m2444[92m sbi R8 R12 39 
[93m2445[92m li R8 100 
[93m2446[92m sbi R8 R12 40 
[93m2447[92m sbi R0 R12 41 
[93m2448[92m swi R12 R14 72 
[0m[94mprompt_75 = _t351_75[0m
[93m2449[92m lwi R8 R14 72 
[93m2450[92m swi R8 R14 12 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_75[0m
[93m2451[92m lwi R8 R14 12 
[93m2452[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m2453[92m la R8 label_195 
[93m2454[92m swi R8 R14 -8 
[93m2455[92m addi R14 R14 -52 
[93m2456[92m jmp label_8 
[0m[94mlabel_195:[0m
[0m[94m_t352_75 = ReturnVal[0m
[93m2457[92m lwi R8 R14 -4 
[93m2458[92m swi R8 R14 76 
[0m[94mlen_75 = _t352_75[0m
[93m2459[92m lwi R8 R14 76 
[93m2460[92m swi R8 R14 16 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_75[0m
[93m2461[92m lwi R8 R14 12 
[93m2462[92m swi R8 R14 -16 
[0m[94mparam len_75[0m
[93m2463[92m lwi R8 R14 16 
[93m2464[92m swi R8 R14 -20 
[0m[94m_t353_75 = #1[0m
[93m2465[92m li R8 1 
[93m2466[92m swi R8 R14 80 
[0m[94mparam _t353_75[0m
[93m2467[92m lwi R8 R14 80 
[93m2468[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m2469[92m la R8 label_196 
[93m2470[92m swi R8 R14 -8 
[93m2471[92m addi R14 R14 -180 
[93m2472[92m jmp label_85 
[0m[94mlabel_196:[0m
[0m[94m_t354_75 = ReturnVal[0m
[93m2473[92m lwi R8 R14 -4 
[93m2474[92m swi R8 R14 84 
[0m[94m_t355_75 = #0[0m
[93m2475[92m li R8 0 
[93m2476[92m swi R8 R14 88 
[0m[94mlen_75 = _t355_75[0m
[93m2477[92m lwi R8 R14 88 
[93m2478[92m swi R8 R14 16 
[0m[94masm "forkReturn" "dummy" len_75 [0m
[93m2479[92m lwi R11 R14 16 
[93m2480[92m lwi R12 R14 308 
[93m2481[92m addi R14 R14 320 
[93m2482[92m lwi R6 R13 56 
[93m2483[92m swi R5 R6 0 
[93m2484[92m swi R7 R6 4 
[93m2485[92m swi R8 R6 8 
[93m2486[92m swi R9 R6 12 
[93m2487[92m swi R10 R6 16 
[93m2488[92m swi R12 R6 20 
[93m2489[92m swi R14 R6 24 
[93m2490[92m lwi R6 R13 84 
[93m2491[92m lwi R5 R6 0 
[93m2492[92m lwi R7 R6 4 
[93m2493[92m lwi R8 R6 8 
[93m2494[92m lwi R9 R6 12 
[93m2495[92m lwi R10 R6 16 
[93m2496[92m lwi R12 R6 20 
[93m2497[92m lwi R14 R6 24 
[93m2498[92m lwi R6 R13 48 
[93m2499[92m swi R6 R13 44 
[93m2500[92m lwi R3 R13 44 
[93m2501[92m jmp create_process_return 
[0m[94m_t356_75 = #0[0m
[93m2502[92m li R8 0 
[93m2503[92m swi R8 R14 92 
[0m[94mReturn _t356_75[0m
[93m2504[92m lwi R8 R14 92 
[93m2505[92m swi R8 R14 316 
[93m2506[92m lwi R12 R14 308 
[93m2507[92m li R8 10048 
[93m2508[92m lwi R9 R14 312 
[93m2509[92m sub R10 R9 R8 
[93m2510[92m addi R14 R14 320 
[93m2511[92m jr R10 
[0m[94mgoto label_194[0m
[93m2512[92m jmp label_194 
[0m[94mlabel_193:[0m
[0m[94mlabel_194:[0m
[0m[94m_t357_72 = core_72 * #4[0m
[93m2513[92m lwi R8 R14 8 
[93m2514[92m li R9 4 
[93m2515[92m mul R10 R8 R9 
[93m2516[92m swi R10 R14 96 
[0m[94m_t358_72 = all_processes_0 + _t357_72[0m
[93m2517[92m lwi R8 R13 80 
[93m2518[92m lwi R9 R14 96 
[93m2519[92m add R10 R8 R9 
[93m2520[92m swi R10 R14 100 
[0m[94m*_t358_72 = pid_0[0m
[93m2521[92m lwi R8 R13 52 
[93m2522[92m lwi R7 R14 100 
[93m2523[92m swi R8 R7 0 
[0m[94mid_72 = pid_0[0m
[93m2524[92m lwi R8 R13 52 
[93m2525[92m swi R8 R14 20 
[0m[94mpid_0 = pid_0 + #1[0m
[93m2526[92m lwi R8 R13 52 
[93m2527[92m li R9 1 
[93m2528[92m add R10 R8 R9 
[93m2529[92m swi R10 R13 52 
[0m[94m_t359_72 = #0[0m
[93m2530[92m li R8 0 
[93m2531[92m swi R8 R14 104 
[0m[94m_t360_72 = core_72 == _t359_72[0m
[93m2532[92m lwi R8 R14 8 
[93m2533[92m lwi R9 R14 104 
[93m2534[92m eq R10 R8 R9 
[93m2535[92m swi R10 R14 108 
[0m[94mif ( _t360_72 == #0 ) goto label_197[0m
[93m2536[92m lwi R8 R14 108 
[93m2537[92m cmp R8 R0 
[93m2538[92m jeq label_197 
[0m[94mproc_reg_72 = os_reg_0[0m
[93m2539[92m lwi R8 R13 56 
[93m2540[92m swi R8 R14 24 
[0m[94mgoto label_198[0m
[93m2541[92m jmp label_198 
[0m[94mlabel_197:[0m
[0m[94m_t361_72 = #1[0m
[93m2542[92m li R8 1 
[93m2543[92m swi R8 R14 112 
[0m[94m_t362_72 = core_72 == _t361_72[0m
[93m2544[92m lwi R8 R14 8 
[93m2545[92m lwi R9 R14 112 
[93m2546[92m eq R10 R8 R9 
[93m2547[92m swi R10 R14 116 
[0m[94mif ( _t362_72 == #0 ) goto label_199[0m
[93m2548[92m lwi R8 R14 116 
[93m2549[92m cmp R8 R0 
[93m2550[92m jeq label_199 
[0m[94mproc_reg_72 = p1_reg_0[0m
[93m2551[92m lwi R8 R13 60 
[93m2552[92m swi R8 R14 24 
[0m[94mgoto label_198[0m
[93m2553[92m jmp label_198 
[0m[94mlabel_199:[0m
[0m[94m_t363_72 = #2[0m
[93m2554[92m li R8 2 
[93m2555[92m swi R8 R14 120 
[0m[94m_t364_72 = core_72 == _t363_72[0m
[93m2556[92m lwi R8 R14 8 
[93m2557[92m lwi R9 R14 120 
[93m2558[92m eq R10 R8 R9 
[93m2559[92m swi R10 R14 124 
[0m[94mif ( _t364_72 == #0 ) goto label_200[0m
[93m2560[92m lwi R8 R14 124 
[93m2561[92m cmp R8 R0 
[93m2562[92m jeq label_200 
[0m[94mproc_reg_72 = p2_reg_0[0m
[93m2563[92m lwi R8 R13 64 
[93m2564[92m swi R8 R14 24 
[0m[94mgoto label_198[0m
[93m2565[92m jmp label_198 
[0m[94mlabel_200:[0m
[0m[94m_t365_72 = #3[0m
[93m2566[92m li R8 3 
[93m2567[92m swi R8 R14 128 
[0m[94m_t366_72 = core_72 == _t365_72[0m
[93m2568[92m lwi R8 R14 8 
[93m2569[92m lwi R9 R14 128 
[93m2570[92m eq R10 R8 R9 
[93m2571[92m swi R10 R14 132 
[0m[94mif ( _t366_72 == #0 ) goto label_201[0m
[93m2572[92m lwi R8 R14 132 
[93m2573[92m cmp R8 R0 
[93m2574[92m jeq label_201 
[0m[94mproc_reg_72 = p3_reg_0[0m
[93m2575[92m lwi R8 R13 68 
[93m2576[92m swi R8 R14 24 
[0m[94mgoto label_198[0m
[93m2577[92m jmp label_198 
[0m[94mlabel_201:[0m
[0m[94m_t367_72 = #4[0m
[93m2578[92m li R8 4 
[93m2579[92m swi R8 R14 136 
[0m[94m_t368_72 = core_72 == _t367_72[0m
[93m2580[92m lwi R8 R14 8 
[93m2581[92m lwi R9 R14 136 
[93m2582[92m eq R10 R8 R9 
[93m2583[92m swi R10 R14 140 
[0m[94mif ( _t368_72 == #0 ) goto label_202[0m
[93m2584[92m lwi R8 R14 140 
[93m2585[92m cmp R8 R0 
[93m2586[92m jeq label_202 
[0m[94mproc_reg_72 = p4_reg_0[0m
[93m2587[92m lwi R8 R13 72 
[93m2588[92m swi R8 R14 24 
[0m[94mgoto label_198[0m
[93m2589[92m jmp label_198 
[0m[94mlabel_202:[0m
[0m[94mlabel_198:[0m
[0m[94m_t369_72 = #1[0m
[93m2590[92m li R8 1 
[93m2591[92m swi R8 R14 144 
[0m[94m_t370_72 = _t369_72 * #4[0m
[93m2592[92m lwi R8 R14 144 
[93m2593[92m li R9 4 
[93m2594[92m mul R10 R8 R9 
[93m2595[92m swi R10 R14 148 
[0m[94m_t371_72 = proc_reg_72 + _t370_72[0m
[93m2596[92m lwi R8 R14 24 
[93m2597[92m lwi R9 R14 148 
[93m2598[92m add R10 R8 R9 
[93m2599[92m swi R10 R14 152 
[0m[94m_t372_72 = #0[0m
[93m2600[92m li R8 0 
[93m2601[92m swi R8 R14 156 
[0m[94m*_t371_72 = _t372_72[0m
[93m2602[92m lwi R8 R14 156 
[93m2603[92m lwi R7 R14 152 
[93m2604[92m swi R8 R7 0 
[0m[94m_t373_72 = #2[0m
[93m2605[92m li R8 2 
[93m2606[92m swi R8 R14 160 
[0m[94m_t374_72 = _t373_72 * #4[0m
[93m2607[92m lwi R8 R14 160 
[93m2608[92m li R9 4 
[93m2609[92m mul R10 R8 R9 
[93m2610[92m swi R10 R14 164 
[0m[94m_t375_72 = proc_reg_72 + _t374_72[0m
[93m2611[92m lwi R8 R14 24 
[93m2612[92m lwi R9 R14 164 
[93m2613[92m add R10 R8 R9 
[93m2614[92m swi R10 R14 168 
[0m[94m_t376_72 = #0[0m
[93m2615[92m li R8 0 
[93m2616[92m swi R8 R14 172 
[0m[94m*_t375_72 = _t376_72[0m
[93m2617[92m lwi R8 R14 172 
[93m2618[92m lwi R7 R14 168 
[93m2619[92m swi R8 R7 0 
[0m[94m_t377_72 = #3[0m
[93m2620[92m li R8 3 
[93m2621[92m swi R8 R14 176 
[0m[94m_t378_72 = _t377_72 * #4[0m
[93m2622[92m lwi R8 R14 176 
[93m2623[92m li R9 4 
[93m2624[92m mul R10 R8 R9 
[93m2625[92m swi R10 R14 180 
[0m[94m_t379_72 = proc_reg_72 + _t378_72[0m
[93m2626[92m lwi R8 R14 24 
[93m2627[92m lwi R9 R14 180 
[93m2628[92m add R10 R8 R9 
[93m2629[92m swi R10 R14 184 
[0m[94m_t380_72 = #0[0m
[93m2630[92m li R8 0 
[93m2631[92m swi R8 R14 188 
[0m[94m*_t379_72 = _t380_72[0m
[93m2632[92m lwi R8 R14 188 
[93m2633[92m lwi R7 R14 184 
[93m2634[92m swi R8 R7 0 
[0m[94m_t381_72 = #4[0m
[93m2635[92m li R8 4 
[93m2636[92m swi R8 R14 192 
[0m[94m_t382_72 = _t381_72 * #4[0m
[93m2637[92m lwi R8 R14 192 
[93m2638[92m li R9 4 
[93m2639[92m mul R10 R8 R9 
[93m2640[92m swi R10 R14 196 
[0m[94m_t383_72 = proc_reg_72 + _t382_72[0m
[93m2641[92m lwi R8 R14 24 
[93m2642[92m lwi R9 R14 196 
[93m2643[92m add R10 R8 R9 
[93m2644[92m swi R10 R14 200 
[0m[94m_t384_72 = #0[0m
[93m2645[92m li R8 0 
[93m2646[92m swi R8 R14 204 
[0m[94m*_t383_72 = _t384_72[0m
[93m2647[92m lwi R8 R14 204 
[93m2648[92m lwi R7 R14 200 
[93m2649[92m swi R8 R7 0 
[0m[94m_t385_72 = #5[0m
[93m2650[92m li R8 5 
[93m2651[92m swi R8 R14 208 
[0m[94m_t386_72 = _t385_72 * #4[0m
[93m2652[92m lwi R8 R14 208 
[93m2653[92m li R9 4 
[93m2654[92m mul R10 R8 R9 
[93m2655[92m swi R10 R14 212 
[0m[94m_t387_72 = proc_reg_72 + _t386_72[0m
[93m2656[92m lwi R8 R14 24 
[93m2657[92m lwi R9 R14 212 
[93m2658[92m add R10 R8 R9 
[93m2659[92m swi R10 R14 216 
[0m[94m_t388_72 = #55000[0m
[93m2660[92m li R8 55000 
[93m2661[92m swi R8 R14 220 
[0m[94m_t389_72 = #5000[0m
[93m2662[92m li R8 5000 
[93m2663[92m swi R8 R14 224 
[0m[94m_t390_72 = core_72 * _t389_72[0m
[93m2664[92m lwi R8 R14 8 
[93m2665[92m lwi R9 R14 224 
[93m2666[92m mul R10 R8 R9 
[93m2667[92m swi R10 R14 228 
[0m[94m_t391_72 = _t388_72 + _t390_72[0m
[93m2668[92m lwi R8 R14 220 
[93m2669[92m lwi R9 R14 228 
[93m2670[92m add R10 R8 R9 
[93m2671[92m swi R10 R14 232 
[0m[94m*_t387_72 = _t391_72[0m
[93m2672[92m lwi R8 R14 232 
[93m2673[92m lwi R7 R14 216 
[93m2674[92m swi R8 R7 0 
[0m[94m_t392_72 = #6[0m
[93m2675[92m li R8 6 
[93m2676[92m swi R8 R14 236 
[0m[94m_t393_72 = _t392_72 * #4[0m
[93m2677[92m lwi R8 R14 236 
[93m2678[92m li R9 4 
[93m2679[92m mul R10 R8 R9 
[93m2680[92m swi R10 R14 240 
[0m[94m_t394_72 = proc_reg_72 + _t393_72[0m
[93m2681[92m lwi R8 R14 24 
[93m2682[92m lwi R9 R14 240 
[93m2683[92m add R10 R8 R9 
[93m2684[92m swi R10 R14 244 
[0m[94m_t395_72 = #53000[0m
[93m2685[92m li R8 53000 
[93m2686[92m swi R8 R14 248 
[0m[94m_t396_72 = #5000[0m
[93m2687[92m li R8 5000 
[93m2688[92m swi R8 R14 252 
[0m[94m_t397_72 = core_72 * _t396_72[0m
[93m2689[92m lwi R8 R14 8 
[93m2690[92m lwi R9 R14 252 
[93m2691[92m mul R10 R8 R9 
[93m2692[92m swi R10 R14 256 
[0m[94m_t398_72 = _t395_72 + _t397_72[0m
[93m2693[92m lwi R8 R14 248 
[93m2694[92m lwi R9 R14 256 
[93m2695[92m add R10 R8 R9 
[93m2696[92m swi R10 R14 260 
[0m[94m*_t394_72 = _t398_72[0m
[93m2697[92m lwi R8 R14 260 
[93m2698[92m lwi R7 R14 244 
[93m2699[92m swi R8 R7 0 
[0m[94m_t399_72 = #1001[0m
[93m2700[92m li R8 1001 
[93m2701[92m swi R8 R14 264 
[0m[94m_t400_72 = process_72 == _t399_72[0m
[93m2702[92m lwi R8 R14 0 
[93m2703[92m lwi R9 R14 264 
[93m2704[92m eq R10 R8 R9 
[93m2705[92m swi R10 R14 268 
[0m[94mif ( _t400_72 == #0 ) goto label_203[0m
[93m2706[92m lwi R8 R14 268 
[93m2707[92m cmp R8 R0 
[93m2708[92m jeq label_203 
[0m[94masm "fork" "start_shell" proc_reg_72 [0m
[93m2709[92m lwi R7 R14 24 
[93m2710[92m lwi R8 R7 24 
[93m2711[92m la R6 return_process_begin 
[93m2712[92m swi R6 R8 -8 
[93m2713[92m li R6 68 
[93m2714[92m sub R6 R8 R6 
[93m2715[92m swi R6 R7 24 
[93m2716[92m la R6 label_547 
[93m2717[92m li R8 9616 
[93m2718[92m add R6 R6 R8 
[93m2719[92m swi R6 R7 0 
[0m[94mgoto label_204[0m
[93m2720[92m jmp label_204 
[0m[94mlabel_203:[0m
[0m[94m_t401_72 = #1002[0m
[93m2721[92m li R8 1002 
[93m2722[92m swi R8 R14 272 
[0m[94m_t402_72 = process_72 == _t401_72[0m
[93m2723[92m lwi R8 R14 0 
[93m2724[92m lwi R9 R14 272 
[93m2725[92m eq R10 R8 R9 
[93m2726[92m swi R10 R14 276 
[0m[94mif ( _t402_72 == #0 ) goto label_205[0m
[93m2727[92m lwi R8 R14 276 
[93m2728[92m cmp R8 R0 
[93m2729[92m jeq label_205 
[0m[94masm "fork" "print_A" proc_reg_72 [0m
[93m2730[92m lwi R7 R14 24 
[93m2731[92m lwi R8 R7 24 
[93m2732[92m la R6 return_process_begin 
[93m2733[92m swi R6 R8 -8 
[93m2734[92m li R6 84 
[93m2735[92m sub R6 R8 R6 
[93m2736[92m swi R6 R7 24 
[93m2737[92m la R6 label_261 
[93m2738[92m li R8 9616 
[93m2739[92m add R6 R6 R8 
[93m2740[92m swi R6 R7 0 
[0m[94mgoto label_204[0m
[93m2741[92m jmp label_204 
[0m[94mlabel_205:[0m
[0m[94m_t403_72 = #1003[0m
[93m2742[92m li R8 1003 
[93m2743[92m swi R8 R14 280 
[0m[94m_t404_72 = process_72 == _t403_72[0m
[93m2744[92m lwi R8 R14 0 
[93m2745[92m lwi R9 R14 280 
[93m2746[92m eq R10 R8 R9 
[93m2747[92m swi R10 R14 284 
[0m[94mif ( _t404_72 == #0 ) goto label_206[0m
[93m2748[92m lwi R8 R14 284 
[93m2749[92m cmp R8 R0 
[93m2750[92m jeq label_206 
[0m[94masm "fork" "print_B" proc_reg_72 [0m
[93m2751[92m lwi R7 R14 24 
[93m2752[92m lwi R8 R7 24 
[93m2753[92m la R6 return_process_begin 
[93m2754[92m swi R6 R8 -8 
[93m2755[92m li R6 92 
[93m2756[92m sub R6 R8 R6 
[93m2757[92m swi R6 R7 24 
[93m2758[92m la R6 label_271 
[93m2759[92m li R8 9616 
[93m2760[92m add R6 R6 R8 
[93m2761[92m swi R6 R7 0 
[0m[94mgoto label_204[0m
[93m2762[92m jmp label_204 
[0m[94mlabel_206:[0m
[0m[94m_t405_72 = #1004[0m
[93m2763[92m li R8 1004 
[93m2764[92m swi R8 R14 288 
[0m[94m_t406_72 = process_72 == _t405_72[0m
[93m2765[92m lwi R8 R14 0 
[93m2766[92m lwi R9 R14 288 
[93m2767[92m eq R10 R8 R9 
[93m2768[92m swi R10 R14 292 
[0m[94mif ( _t406_72 == #0 ) goto label_207[0m
[93m2769[92m lwi R8 R14 292 
[93m2770[92m cmp R8 R0 
[93m2771[92m jeq label_207 
[0m[94masm "fork" "print_C" proc_reg_72 [0m
[93m2772[92m lwi R7 R14 24 
[93m2773[92m lwi R8 R7 24 
[93m2774[92m la R6 return_process_begin 
[93m2775[92m swi R6 R8 -8 
[93m2776[92m li R6 92 
[93m2777[92m sub R6 R8 R6 
[93m2778[92m swi R6 R7 24 
[93m2779[92m la R6 label_285 
[93m2780[92m li R8 9616 
[93m2781[92m add R6 R6 R8 
[93m2782[92m swi R6 R7 0 
[0m[94mgoto label_204[0m
[93m2783[92m jmp label_204 
[0m[94mlabel_207:[0m
[0m[94m_t407_72 = #1005[0m
[93m2784[92m li R8 1005 
[93m2785[92m swi R8 R14 296 
[0m[94m_t408_72 = process_72 == _t407_72[0m
[93m2786[92m lwi R8 R14 0 
[93m2787[92m lwi R9 R14 296 
[93m2788[92m eq R10 R8 R9 
[93m2789[92m swi R10 R14 300 
[0m[94mif ( _t408_72 == #0 ) goto label_208[0m
[93m2790[92m lwi R8 R14 300 
[93m2791[92m cmp R8 R0 
[93m2792[92m jeq label_208 
[0m[94masm "fork" "print_D" proc_reg_72 [0m
[93m2793[92m lwi R7 R14 24 
[93m2794[92m lwi R8 R7 24 
[93m2795[92m la R6 return_process_begin 
[93m2796[92m swi R6 R8 -8 
[93m2797[92m li R6 92 
[93m2798[92m sub R6 R8 R6 
[93m2799[92m swi R6 R7 24 
[93m2800[92m la R6 label_299 
[93m2801[92m li R8 9616 
[93m2802[92m add R6 R6 R8 
[93m2803[92m swi R6 R7 0 
[0m[94mgoto label_204[0m
[93m2804[92m jmp label_204 
[0m[94mlabel_208:[0m
[0m[94mlabel_204:[0m
[0m[94masm "forkReturn" "dummy" id_72 [0m
[93m2805[92m lwi R11 R14 20 
[93m2806[92m lwi R12 R14 308 
[93m2807[92m addi R14 R14 320 
[93m2808[92m lwi R6 R13 56 
[93m2809[92m swi R5 R6 0 
[93m2810[92m swi R7 R6 4 
[93m2811[92m swi R8 R6 8 
[93m2812[92m swi R9 R6 12 
[93m2813[92m swi R10 R6 16 
[93m2814[92m swi R12 R6 20 
[93m2815[92m swi R14 R6 24 
[93m2816[92m lwi R6 R13 84 
[93m2817[92m lwi R5 R6 0 
[93m2818[92m lwi R7 R6 4 
[93m2819[92m lwi R8 R6 8 
[93m2820[92m lwi R9 R6 12 
[93m2821[92m lwi R10 R6 16 
[93m2822[92m lwi R12 R6 20 
[93m2823[92m lwi R14 R6 24 
[93m2824[92m lwi R6 R13 48 
[93m2825[92m swi R6 R13 44 
[93m2826[92m lwi R3 R13 44 
[93m2827[92m jmp create_process_return 
[0m[94m_t409_72 = #0[0m
[93m2828[92m li R8 0 
[93m2829[92m swi R8 R14 304 
[0m[94mReturn _t409_72[0m
[93m2830[92m lwi R8 R14 304 
[93m2831[92m swi R8 R14 316 
[93m2832[92m lwi R12 R14 308 
[93m2833[92m li R8 11352 
[93m2834[92m lwi R9 R14 312 
[93m2835[92m sub R10 R9 R8 
[93m2836[92m addi R14 R14 320 
[93m2837[92m jr R10 
[0m-------------------------------------
Parsing create_process
process_86 84
cur_core_86 0
i_86 4
id_86 8
_t410_86 12
_t411_87 16
_t412_87 20
_t413_87 24
_t414_87 28
_t415_87 32
_t416_87 36
_t417_87 40
_t418_86 44
_t419_86 48
_t420_86 52
_t421_86 56
_t422_86 60
_t423_86 64
_t424_86 68
_t425_86 72
_t426_86 76
_t427_86 80
[94mlabel_209:[0m
[93m2838[92m swi R12 R14 88 
[0m[94mprev_process_0 = current_process_0[0m
[93m2839[92m lwi R8 R13 44 
[93m2840[92m swi R8 R13 48 
[0m[94m_t410_86 = #10[0m
[93m2841[92m li R8 10 
[93m2842[92m swi R8 R14 12 
[0m[94mcur_core_86 = _t410_86[0m
[93m2843[92m lwi R8 R14 12 
[93m2844[92m swi R8 R14 0 
[0m[94m_t411_87 = #0[0m
[93m2845[92m li R8 0 
[93m2846[92m swi R8 R14 16 
[0m[94mi_86 = _t411_87[0m
[93m2847[92m lwi R8 R14 16 
[93m2848[92m swi R8 R14 4 
[0m[94mlabel_210:[0m
[0m[94m_t412_87 = #5[0m
[93m2849[92m li R8 5 
[93m2850[92m swi R8 R14 20 
[0m[94m_t413_87 = i_86 < _t412_87[0m
[93m2851[92m lwi R8 R14 4 
[93m2852[92m lwi R9 R14 20 
[93m2853[92m lt R10 R8 R9 
[93m2854[92m swi R10 R14 24 
[0m[94mif ( _t413_87 == #0 ) goto label_213[0m
[93m2855[92m lwi R8 R14 24 
[93m2856[92m cmp R8 R0 
[93m2857[92m jeq label_213 
[0m[94mgoto label_211[0m
[93m2858[92m jmp label_211 
[0m[94mlabel_212:[0m
[0m[94m_t414_87 = i_86[0m
[93m2859[92m lwi R8 R14 4 
[93m2860[92m swi R8 R14 28 
[0m[94mi_86 = i_86 + #1[0m
[93m2861[92m lwi R8 R14 4 
[93m2862[92m li R9 1 
[93m2863[92m add R10 R8 R9 
[93m2864[92m swi R10 R14 4 
[0m[94mgoto label_210[0m
[93m2865[92m jmp label_210 
[0m[94mlabel_211:[0m
[0m[94m_t415_87 = i_86 * #4[0m
[93m2866[92m lwi R8 R14 4 
[93m2867[92m li R9 4 
[93m2868[92m mul R10 R8 R9 
[93m2869[92m swi R10 R14 32 
[0m[94m_t416_87 = all_processes_0 + _t415_87[0m
[93m2870[92m lwi R8 R13 80 
[93m2871[92m lwi R9 R14 32 
[93m2872[92m add R10 R8 R9 
[93m2873[92m swi R10 R14 36 
[0m[94m_t417_87 = *_t416_87 == current_process_0[0m
[93m2874[92m lwi R8 R14 36 
[93m2875[92m lwi R8 R8 0 
[93m2876[92m lwi R9 R13 44 
[93m2877[92m eq R10 R8 R9 
[93m2878[92m swi R10 R14 40 
[0m[94mif ( _t417_87 == #0 ) goto label_214[0m
[93m2879[92m lwi R8 R14 40 
[93m2880[92m cmp R8 R0 
[93m2881[92m jeq label_214 
[0m[94mcur_core_86 = i_86[0m
[93m2882[92m lwi R8 R14 4 
[93m2883[92m swi R8 R14 0 
[0m[94mgoto label_213[0m
[93m2884[92m jmp label_213 
[0m[94mgoto label_215[0m
[93m2885[92m jmp label_215 
[0m[94mlabel_214:[0m
[0m[94mlabel_215:[0m
[0m[94mgoto label_212[0m
[93m2886[92m jmp label_212 
[0m[94mlabel_213:[0m
[0m[94m_t418_86 = #0[0m
[93m2887[92m li R8 0 
[93m2888[92m swi R8 R14 44 
[0m[94m_t419_86 = cur_core_86 == _t418_86[0m
[93m2889[92m lwi R8 R14 0 
[93m2890[92m lwi R9 R14 44 
[93m2891[92m eq R10 R8 R9 
[93m2892[92m swi R10 R14 48 
[0m[94mif ( _t419_86 == #0 ) goto label_216[0m
[93m2893[92m lwi R8 R14 48 
[93m2894[92m cmp R8 R0 
[93m2895[92m jeq label_216 
[0m[94mfrom_proc_0 = os_reg_0[0m
[93m2896[92m lwi R8 R13 56 
[93m2897[92m swi R8 R13 84 
[0m[94mgoto label_217[0m
[93m2898[92m jmp label_217 
[0m[94mlabel_216:[0m
[0m[94m_t420_86 = #1[0m
[93m2899[92m li R8 1 
[93m2900[92m swi R8 R14 52 
[0m[94m_t421_86 = cur_core_86 == _t420_86[0m
[93m2901[92m lwi R8 R14 0 
[93m2902[92m lwi R9 R14 52 
[93m2903[92m eq R10 R8 R9 
[93m2904[92m swi R10 R14 56 
[0m[94mif ( _t421_86 == #0 ) goto label_218[0m
[93m2905[92m lwi R8 R14 56 
[93m2906[92m cmp R8 R0 
[93m2907[92m jeq label_218 
[0m[94mfrom_proc_0 = p1_reg_0[0m
[93m2908[92m lwi R8 R13 60 
[93m2909[92m swi R8 R13 84 
[0m[94mgoto label_217[0m
[93m2910[92m jmp label_217 
[0m[94mlabel_218:[0m
[0m[94m_t422_86 = #2[0m
[93m2911[92m li R8 2 
[93m2912[92m swi R8 R14 60 
[0m[94m_t423_86 = cur_core_86 == _t422_86[0m
[93m2913[92m lwi R8 R14 0 
[93m2914[92m lwi R9 R14 60 
[93m2915[92m eq R10 R8 R9 
[93m2916[92m swi R10 R14 64 
[0m[94mif ( _t423_86 == #0 ) goto label_219[0m
[93m2917[92m lwi R8 R14 64 
[93m2918[92m cmp R8 R0 
[93m2919[92m jeq label_219 
[0m[94mfrom_proc_0 = p2_reg_0[0m
[93m2920[92m lwi R8 R13 64 
[93m2921[92m swi R8 R13 84 
[0m[94mgoto label_217[0m
[93m2922[92m jmp label_217 
[0m[94mlabel_219:[0m
[0m[94m_t424_86 = #3[0m
[93m2923[92m li R8 3 
[93m2924[92m swi R8 R14 68 
[0m[94m_t425_86 = cur_core_86 == _t424_86[0m
[93m2925[92m lwi R8 R14 0 
[93m2926[92m lwi R9 R14 68 
[93m2927[92m eq R10 R8 R9 
[93m2928[92m swi R10 R14 72 
[0m[94mif ( _t425_86 == #0 ) goto label_220[0m
[93m2929[92m lwi R8 R14 72 
[93m2930[92m cmp R8 R0 
[93m2931[92m jeq label_220 
[0m[94mfrom_proc_0 = p3_reg_0[0m
[93m2932[92m lwi R8 R13 68 
[93m2933[92m swi R8 R13 84 
[0m[94mgoto label_217[0m
[93m2934[92m jmp label_217 
[0m[94mlabel_220:[0m
[0m[94m_t426_86 = #4[0m
[93m2935[92m li R8 4 
[93m2936[92m swi R8 R14 76 
[0m[94m_t427_86 = cur_core_86 == _t426_86[0m
[93m2937[92m lwi R8 R14 0 
[93m2938[92m lwi R9 R14 76 
[93m2939[92m eq R10 R8 R9 
[93m2940[92m swi R10 R14 80 
[0m[94mif ( _t427_86 == #0 ) goto label_221[0m
[93m2941[92m lwi R8 R14 80 
[93m2942[92m cmp R8 R0 
[93m2943[92m jeq label_221 
[0m[94mfrom_proc_0 = p4_reg_0[0m
[93m2944[92m lwi R8 R13 72 
[93m2945[92m swi R8 R13 84 
[0m[94mgoto label_217[0m
[93m2946[92m jmp label_217 
[0m[94mlabel_221:[0m
[0m[94mlabel_217:[0m
[0m[94masm "forkEnter" "dummy" process_86 [0m
[93m2947[92m li R6 1 
[93m2948[92m swi R6 R13 44 
[93m2949[92m lwi R3 R13 44 
[93m2950[92m lwi R11 R14 84 
[93m2951[92m lwi R6 R13 84 
[93m2952[92m swi R5 R6 0 
[93m2953[92m swi R7 R6 4 
[93m2954[92m swi R8 R6 8 
[93m2955[92m swi R9 R6 12 
[93m2956[92m swi R10 R6 16 
[93m2957[92m swi R12 R6 20 
[93m2958[92m swi R14 R6 24 
[93m2959[92m lwi R6 R13 56 
[93m2960[92m lwi R5 R6 0 
[93m2961[92m lwi R7 R6 4 
[93m2962[92m lwi R8 R6 8 
[93m2963[92m lwi R9 R6 12 
[93m2964[92m lwi R10 R6 16 
[93m2965[92m lwi R12 R6 20 
[93m2966[92m lwi R14 R6 24 
[93m2967[92m addi R14 R14 -320 
[93m2968[92m jmp label_186 
[0m[94masm "label" "create_process_return:" process_86 [0m
[0m[94masm "store" "R11" id_86 [0m
[93m2969[92m swi R11 R14 8 
[0m[94mReturn id_86[0m
[93m2970[92m lwi R8 R14 8 
[93m2971[92m swi R8 R14 96 
[93m2972[92m lwi R12 R14 88 
[93m2973[92m li R8 11912 
[93m2974[92m lwi R9 R14 92 
[93m2975[92m sub R10 R9 R8 
[93m2976[92m addi R14 R14 100 
[93m2977[92m jr R10 
[0m-------------------------------------
Parsing switch
pr_process_94 0
curIndex_94 4
i_94 8
prompt1_101 12
len_101 16
next_process_94 20
prompt1_107 24
len_107 28
next_id_94 32
_t428_94 36
_t429_95 40
_t430_95 44
_t431_95 48
_t432_95 52
_t433_95 56
_t434_95 60
_t435_95 64
_t436_94 68
_t437_94 72
_t438_94 76
_t439_94 80
_t440_94 84
_t441_94 88
_t442_94 92
_t443_94 96
_t444_94 100
_t445_94 104
_t446_94 108
_t447_94 112
_t448_94 116
_t449_94 120
_t450_94 124
_t451_94 128
_t452_94 132
_t453_94 136
_t454_94 140
_t455_94 144
_t456_94 148
_t457_94 152
_t458_94 156
_t459_94 160
_t460_94 164
_t461_94 168
_t462_94 172
_t463_94 176
_t464_94 180
_t465_94 184
_t466_94 188
_t467_94 192
_t468_94 196
_t469_94 200
_t470_94 204
_t471_94 208
_t472_94 212
_t473_94 216
_t474_94 220
_t475_94 224
_t476_94 228
_t477_94 232
_t478_94 236
_t479_94 240
_t480_94 244
_t481_94 248
_t482_94 252
_t483_94 256
_t484_94 260
_t485_94 264
_t486_94 268
_t487_94 272
_t488_101 276
_t489_101 280
_t490_101 284
_t491_101 288
_t492_94 292
_t493_102 296
_t494_102 300
_t495_102 304
_t496_102 308
_t497_102 312
_t498_102 316
_t499_102 320
_t500_102 324
_t501_102 328
_t502_94 332
_t503_94 336
_t504_105 340
_t505_105 344
_t506_105 348
_t507_105 352
_t508_105 356
_t509_105 360
_t510_105 364
_t511_94 368
_t512_94 372
_t513_107 376
_t514_107 380
_t515_107 384
_t516_107 388
_t517_94 392
_t518_94 396
_t519_94 400
_t520_94 404
_t521_94 408
_t522_94 412
_t523_94 416
_t524_94 420
_t525_94 424
_t526_94 428
_t527_94 432
[94mlabel_222:[0m
[93m2978[92m swi R12 R14 436 
[0m[94masm "label" "switch_begin:" pid_0 [0m
[0m[94masm "switchEnter" "dummy" pid_0 [0m
[93m2979[92m lwi R2 R13 44 
[93m2980[92m li R1 1 
[93m2981[92m cmp R1 R2 
[93m2982[92m jne switch_code_start 
[93m2983[92m li R2 21560 
[93m2984[92m sub R5 R5 R2 
[93m2985[92m jri R5 
[93m2986[92m lwi R11 R13 44 
[93m2987[92m li R6 1 
[93m2988[92m swi R6 R13 44 
[93m2989[92m lwi R3 R13 44 
[93m2990[92m lwi R6 R13 76 
[93m2991[92m swi R5 R6 0 
[93m2992[92m swi R7 R6 4 
[93m2993[92m swi R8 R6 8 
[93m2994[92m swi R9 R6 12 
[93m2995[92m swi R10 R6 16 
[93m2996[92m swi R12 R6 20 
[93m2997[92m swi R14 R6 24 
[93m2998[92m lwi R6 R13 56 
[93m2999[92m lwi R5 R6 0 
[93m3000[92m lwi R7 R6 4 
[93m3001[92m lwi R8 R6 8 
[93m3002[92m lwi R9 R6 12 
[93m3003[92m lwi R10 R6 16 
[93m3004[92m lwi R12 R6 20 
[93m3005[92m lwi R14 R6 24 
[93m3006[92m addi R14 R14 -448 
[93m3007[92m swi R12 R14 436 
[0m[94masm "store" "R11" pr_process_94 [0m
[93m3008[92m swi R11 R14 0 
[0m[94m_t428_94 = #10[0m
[93m3009[92m li R8 10 
[93m3010[92m swi R8 R14 36 
[0m[94mcurIndex_94 = _t428_94[0m
[93m3011[92m lwi R8 R14 36 
[93m3012[92m swi R8 R14 4 
[0m[94m_t429_95 = #1[0m
[93m3013[92m li R8 1 
[93m3014[92m swi R8 R14 40 
[0m[94mi_94 = _t429_95[0m
[93m3015[92m lwi R8 R14 40 
[93m3016[92m swi R8 R14 8 
[0m[94mlabel_223:[0m
[0m[94m_t430_95 = #5[0m
[93m3017[92m li R8 5 
[93m3018[92m swi R8 R14 44 
[0m[94m_t431_95 = i_94 < _t430_95[0m
[93m3019[92m lwi R8 R14 8 
[93m3020[92m lwi R9 R14 44 
[93m3021[92m lt R10 R8 R9 
[93m3022[92m swi R10 R14 48 
[0m[94mif ( _t431_95 == #0 ) goto label_226[0m
[93m3023[92m lwi R8 R14 48 
[93m3024[92m cmp R8 R0 
[93m3025[92m jeq label_226 
[0m[94mgoto label_224[0m
[93m3026[92m jmp label_224 
[0m[94mlabel_225:[0m
[0m[94m_t432_95 = i_94[0m
[93m3027[92m lwi R8 R14 8 
[93m3028[92m swi R8 R14 52 
[0m[94mi_94 = i_94 + #1[0m
[93m3029[92m lwi R8 R14 8 
[93m3030[92m li R9 1 
[93m3031[92m add R10 R8 R9 
[93m3032[92m swi R10 R14 8 
[0m[94mgoto label_223[0m
[93m3033[92m jmp label_223 
[0m[94mlabel_224:[0m
[0m[94m_t433_95 = i_94 * #4[0m
[93m3034[92m lwi R8 R14 8 
[93m3035[92m li R9 4 
[93m3036[92m mul R10 R8 R9 
[93m3037[92m swi R10 R14 56 
[0m[94m_t434_95 = all_processes_0 + _t433_95[0m
[93m3038[92m lwi R8 R13 80 
[93m3039[92m lwi R9 R14 56 
[93m3040[92m add R10 R8 R9 
[93m3041[92m swi R10 R14 60 
[0m[94m_t435_95 = pr_process_94 == *_t434_95[0m
[93m3042[92m lwi R8 R14 0 
[93m3043[92m lwi R9 R14 60 
[93m3044[92m lwi R9 R9 0 
[93m3045[92m eq R10 R8 R9 
[93m3046[92m swi R10 R14 64 
[0m[94mif ( _t435_95 == #0 ) goto label_227[0m
[93m3047[92m lwi R8 R14 64 
[93m3048[92m cmp R8 R0 
[93m3049[92m jeq label_227 
[0m[94mcurIndex_94 = i_94[0m
[93m3050[92m lwi R8 R14 8 
[93m3051[92m swi R8 R14 4 
[0m[94mgoto label_228[0m
[93m3052[92m jmp label_228 
[0m[94mlabel_227:[0m
[0m[94mlabel_228:[0m
[0m[94mgoto label_225[0m
[93m3053[92m jmp label_225 
[0m[94mlabel_226:[0m
[0m[94m_t436_94 = #1[0m
[93m3054[92m li R8 1 
[93m3055[92m swi R8 R14 68 
[0m[94m_t437_94 = curIndex_94 == _t436_94[0m
[93m3056[92m lwi R8 R14 4 
[93m3057[92m lwi R9 R14 68 
[93m3058[92m eq R10 R8 R9 
[93m3059[92m swi R10 R14 72 
[0m[94mif ( _t437_94 == #0 ) goto label_229[0m
[93m3060[92m lwi R8 R14 72 
[93m3061[92m cmp R8 R0 
[93m3062[92m jeq label_229 
[0m[94mfrom_proc_0 = p1_reg_0[0m
[93m3063[92m lwi R8 R13 60 
[93m3064[92m swi R8 R13 84 
[0m[94mgoto label_230[0m
[93m3065[92m jmp label_230 
[0m[94mlabel_229:[0m
[0m[94m_t438_94 = #2[0m
[93m3066[92m li R8 2 
[93m3067[92m swi R8 R14 76 
[0m[94m_t439_94 = curIndex_94 == _t438_94[0m
[93m3068[92m lwi R8 R14 4 
[93m3069[92m lwi R9 R14 76 
[93m3070[92m eq R10 R8 R9 
[93m3071[92m swi R10 R14 80 
[0m[94mif ( _t439_94 == #0 ) goto label_231[0m
[93m3072[92m lwi R8 R14 80 
[93m3073[92m cmp R8 R0 
[93m3074[92m jeq label_231 
[0m[94mfrom_proc_0 = p2_reg_0[0m
[93m3075[92m lwi R8 R13 64 
[93m3076[92m swi R8 R13 84 
[0m[94mgoto label_230[0m
[93m3077[92m jmp label_230 
[0m[94mlabel_231:[0m
[0m[94m_t440_94 = #3[0m
[93m3078[92m li R8 3 
[93m3079[92m swi R8 R14 84 
[0m[94m_t441_94 = curIndex_94 == _t440_94[0m
[93m3080[92m lwi R8 R14 4 
[93m3081[92m lwi R9 R14 84 
[93m3082[92m eq R10 R8 R9 
[93m3083[92m swi R10 R14 88 
[0m[94mif ( _t441_94 == #0 ) goto label_232[0m
[93m3084[92m lwi R8 R14 88 
[93m3085[92m cmp R8 R0 
[93m3086[92m jeq label_232 
[0m[94mfrom_proc_0 = p3_reg_0[0m
[93m3087[92m lwi R8 R13 68 
[93m3088[92m swi R8 R13 84 
[0m[94mgoto label_230[0m
[93m3089[92m jmp label_230 
[0m[94mlabel_232:[0m
[0m[94m_t442_94 = #4[0m
[93m3090[92m li R8 4 
[93m3091[92m swi R8 R14 92 
[0m[94m_t443_94 = curIndex_94 == _t442_94[0m
[93m3092[92m lwi R8 R14 4 
[93m3093[92m lwi R9 R14 92 
[93m3094[92m eq R10 R8 R9 
[93m3095[92m swi R10 R14 96 
[0m[94mif ( _t443_94 == #0 ) goto label_233[0m
[93m3096[92m lwi R8 R14 96 
[93m3097[92m cmp R8 R0 
[93m3098[92m jeq label_233 
[0m[94mfrom_proc_0 = p4_reg_0[0m
[93m3099[92m lwi R8 R13 72 
[93m3100[92m swi R8 R13 84 
[0m[94mgoto label_230[0m
[93m3101[92m jmp label_230 
[0m[94mlabel_233:[0m
[0m[94mlabel_230:[0m
[0m[94m_t444_94 = #0[0m
[93m3102[92m li R8 0 
[93m3103[92m swi R8 R14 100 
[0m[94m_t445_94 = _t444_94 * #4[0m
[93m3104[92m lwi R8 R14 100 
[93m3105[92m li R9 4 
[93m3106[92m mul R10 R8 R9 
[93m3107[92m swi R10 R14 104 
[0m[94m_t446_94 = from_proc_0 + _t445_94[0m
[93m3108[92m lwi R8 R13 84 
[93m3109[92m lwi R9 R14 104 
[93m3110[92m add R10 R8 R9 
[93m3111[92m swi R10 R14 108 
[0m[94m_t447_94 = #0[0m
[93m3112[92m li R8 0 
[93m3113[92m swi R8 R14 112 
[0m[94m_t448_94 = _t447_94 * #4[0m
[93m3114[92m lwi R8 R14 112 
[93m3115[92m li R9 4 
[93m3116[92m mul R10 R8 R9 
[93m3117[92m swi R10 R14 116 
[0m[94m_t449_94 = temp_reg_0 + _t448_94[0m
[93m3118[92m lwi R8 R13 76 
[93m3119[92m lwi R9 R14 116 
[93m3120[92m add R10 R8 R9 
[93m3121[92m swi R10 R14 120 
[0m[94m*_t446_94 = *_t449_94[0m
[93m3122[92m lwi R8 R14 120 
[93m3123[92m lwi R8 R8 0 
[93m3124[92m lwi R7 R14 108 
[93m3125[92m swi R8 R7 0 
[0m[94m_t450_94 = #1[0m
[93m3126[92m li R8 1 
[93m3127[92m swi R8 R14 124 
[0m[94m_t451_94 = _t450_94 * #4[0m
[93m3128[92m lwi R8 R14 124 
[93m3129[92m li R9 4 
[93m3130[92m mul R10 R8 R9 
[93m3131[92m swi R10 R14 128 
[0m[94m_t452_94 = from_proc_0 + _t451_94[0m
[93m3132[92m lwi R8 R13 84 
[93m3133[92m lwi R9 R14 128 
[93m3134[92m add R10 R8 R9 
[93m3135[92m swi R10 R14 132 
[0m[94m_t453_94 = #1[0m
[93m3136[92m li R8 1 
[93m3137[92m swi R8 R14 136 
[0m[94m_t454_94 = _t453_94 * #4[0m
[93m3138[92m lwi R8 R14 136 
[93m3139[92m li R9 4 
[93m3140[92m mul R10 R8 R9 
[93m3141[92m swi R10 R14 140 
[0m[94m_t455_94 = temp_reg_0 + _t454_94[0m
[93m3142[92m lwi R8 R13 76 
[93m3143[92m lwi R9 R14 140 
[93m3144[92m add R10 R8 R9 
[93m3145[92m swi R10 R14 144 
[0m[94m*_t452_94 = *_t455_94[0m
[93m3146[92m lwi R8 R14 144 
[93m3147[92m lwi R8 R8 0 
[93m3148[92m lwi R7 R14 132 
[93m3149[92m swi R8 R7 0 
[0m[94m_t456_94 = #2[0m
[93m3150[92m li R8 2 
[93m3151[92m swi R8 R14 148 
[0m[94m_t457_94 = _t456_94 * #4[0m
[93m3152[92m lwi R8 R14 148 
[93m3153[92m li R9 4 
[93m3154[92m mul R10 R8 R9 
[93m3155[92m swi R10 R14 152 
[0m[94m_t458_94 = from_proc_0 + _t457_94[0m
[93m3156[92m lwi R8 R13 84 
[93m3157[92m lwi R9 R14 152 
[93m3158[92m add R10 R8 R9 
[93m3159[92m swi R10 R14 156 
[0m[94m_t459_94 = #2[0m
[93m3160[92m li R8 2 
[93m3161[92m swi R8 R14 160 
[0m[94m_t460_94 = _t459_94 * #4[0m
[93m3162[92m lwi R8 R14 160 
[93m3163[92m li R9 4 
[93m3164[92m mul R10 R8 R9 
[93m3165[92m swi R10 R14 164 
[0m[94m_t461_94 = temp_reg_0 + _t460_94[0m
[93m3166[92m lwi R8 R13 76 
[93m3167[92m lwi R9 R14 164 
[93m3168[92m add R10 R8 R9 
[93m3169[92m swi R10 R14 168 
[0m[94m*_t458_94 = *_t461_94[0m
[93m3170[92m lwi R8 R14 168 
[93m3171[92m lwi R8 R8 0 
[93m3172[92m lwi R7 R14 156 
[93m3173[92m swi R8 R7 0 
[0m[94m_t462_94 = #3[0m
[93m3174[92m li R8 3 
[93m3175[92m swi R8 R14 172 
[0m[94m_t463_94 = _t462_94 * #4[0m
[93m3176[92m lwi R8 R14 172 
[93m3177[92m li R9 4 
[93m3178[92m mul R10 R8 R9 
[93m3179[92m swi R10 R14 176 
[0m[94m_t464_94 = from_proc_0 + _t463_94[0m
[93m3180[92m lwi R8 R13 84 
[93m3181[92m lwi R9 R14 176 
[93m3182[92m add R10 R8 R9 
[93m3183[92m swi R10 R14 180 
[0m[94m_t465_94 = #3[0m
[93m3184[92m li R8 3 
[93m3185[92m swi R8 R14 184 
[0m[94m_t466_94 = _t465_94 * #4[0m
[93m3186[92m lwi R8 R14 184 
[93m3187[92m li R9 4 
[93m3188[92m mul R10 R8 R9 
[93m3189[92m swi R10 R14 188 
[0m[94m_t467_94 = temp_reg_0 + _t466_94[0m
[93m3190[92m lwi R8 R13 76 
[93m3191[92m lwi R9 R14 188 
[93m3192[92m add R10 R8 R9 
[93m3193[92m swi R10 R14 192 
[0m[94m*_t464_94 = *_t467_94[0m
[93m3194[92m lwi R8 R14 192 
[93m3195[92m lwi R8 R8 0 
[93m3196[92m lwi R7 R14 180 
[93m3197[92m swi R8 R7 0 
[0m[94m_t468_94 = #4[0m
[93m3198[92m li R8 4 
[93m3199[92m swi R8 R14 196 
[0m[94m_t469_94 = _t468_94 * #4[0m
[93m3200[92m lwi R8 R14 196 
[93m3201[92m li R9 4 
[93m3202[92m mul R10 R8 R9 
[93m3203[92m swi R10 R14 200 
[0m[94m_t470_94 = from_proc_0 + _t469_94[0m
[93m3204[92m lwi R8 R13 84 
[93m3205[92m lwi R9 R14 200 
[93m3206[92m add R10 R8 R9 
[93m3207[92m swi R10 R14 204 
[0m[94m_t471_94 = #4[0m
[93m3208[92m li R8 4 
[93m3209[92m swi R8 R14 208 
[0m[94m_t472_94 = _t471_94 * #4[0m
[93m3210[92m lwi R8 R14 208 
[93m3211[92m li R9 4 
[93m3212[92m mul R10 R8 R9 
[93m3213[92m swi R10 R14 212 
[0m[94m_t473_94 = temp_reg_0 + _t472_94[0m
[93m3214[92m lwi R8 R13 76 
[93m3215[92m lwi R9 R14 212 
[93m3216[92m add R10 R8 R9 
[93m3217[92m swi R10 R14 216 
[0m[94m*_t470_94 = *_t473_94[0m
[93m3218[92m lwi R8 R14 216 
[93m3219[92m lwi R8 R8 0 
[93m3220[92m lwi R7 R14 204 
[93m3221[92m swi R8 R7 0 
[0m[94m_t474_94 = #5[0m
[93m3222[92m li R8 5 
[93m3223[92m swi R8 R14 220 
[0m[94m_t475_94 = _t474_94 * #4[0m
[93m3224[92m lwi R8 R14 220 
[93m3225[92m li R9 4 
[93m3226[92m mul R10 R8 R9 
[93m3227[92m swi R10 R14 224 
[0m[94m_t476_94 = from_proc_0 + _t475_94[0m
[93m3228[92m lwi R8 R13 84 
[93m3229[92m lwi R9 R14 224 
[93m3230[92m add R10 R8 R9 
[93m3231[92m swi R10 R14 228 
[0m[94m_t477_94 = #5[0m
[93m3232[92m li R8 5 
[93m3233[92m swi R8 R14 232 
[0m[94m_t478_94 = _t477_94 * #4[0m
[93m3234[92m lwi R8 R14 232 
[93m3235[92m li R9 4 
[93m3236[92m mul R10 R8 R9 
[93m3237[92m swi R10 R14 236 
[0m[94m_t479_94 = temp_reg_0 + _t478_94[0m
[93m3238[92m lwi R8 R13 76 
[93m3239[92m lwi R9 R14 236 
[93m3240[92m add R10 R8 R9 
[93m3241[92m swi R10 R14 240 
[0m[94m*_t476_94 = *_t479_94[0m
[93m3242[92m lwi R8 R14 240 
[93m3243[92m lwi R8 R8 0 
[93m3244[92m lwi R7 R14 228 
[93m3245[92m swi R8 R7 0 
[0m[94m_t480_94 = #6[0m
[93m3246[92m li R8 6 
[93m3247[92m swi R8 R14 244 
[0m[94m_t481_94 = _t480_94 * #4[0m
[93m3248[92m lwi R8 R14 244 
[93m3249[92m li R9 4 
[93m3250[92m mul R10 R8 R9 
[93m3251[92m swi R10 R14 248 
[0m[94m_t482_94 = from_proc_0 + _t481_94[0m
[93m3252[92m lwi R8 R13 84 
[93m3253[92m lwi R9 R14 248 
[93m3254[92m add R10 R8 R9 
[93m3255[92m swi R10 R14 252 
[0m[94m_t483_94 = #6[0m
[93m3256[92m li R8 6 
[93m3257[92m swi R8 R14 256 
[0m[94m_t484_94 = _t483_94 * #4[0m
[93m3258[92m lwi R8 R14 256 
[93m3259[92m li R9 4 
[93m3260[92m mul R10 R8 R9 
[93m3261[92m swi R10 R14 260 
[0m[94m_t485_94 = temp_reg_0 + _t484_94[0m
[93m3262[92m lwi R8 R13 76 
[93m3263[92m lwi R9 R14 260 
[93m3264[92m add R10 R8 R9 
[93m3265[92m swi R10 R14 264 
[0m[94m*_t482_94 = *_t485_94[0m
[93m3266[92m lwi R8 R14 264 
[93m3267[92m lwi R8 R8 0 
[93m3268[92m lwi R7 R14 252 
[93m3269[92m swi R8 R7 0 
[0m[94m_t486_94 = #10[0m
[93m3270[92m li R8 10 
[93m3271[92m swi R8 R14 268 
[0m[94m_t487_94 = curIndex_94 == _t486_94[0m
[93m3272[92m lwi R8 R14 4 
[93m3273[92m lwi R9 R14 268 
[93m3274[92m eq R10 R8 R9 
[93m3275[92m swi R10 R14 272 
[0m[94mif ( _t487_94 == #0 ) goto label_234[0m
[93m3276[92m lwi R8 R14 272 
[93m3277[92m cmp R8 R0 
[93m3278[92m jeq label_234 
[0m[94mstring _t488_101 "Some problem occured, system crashing"[0m
[93m3279[92m subi R12 R12 40 
[93m3280[92m li R8 83 
[93m3281[92m sbi R8 R12 0 
[93m3282[92m li R8 111 
[93m3283[92m sbi R8 R12 1 
[93m3284[92m li R8 109 
[93m3285[92m sbi R8 R12 2 
[93m3286[92m li R8 101 
[93m3287[92m sbi R8 R12 3 
[93m3288[92m li R8 32 
[93m3289[92m sbi R8 R12 4 
[93m3290[92m li R8 112 
[93m3291[92m sbi R8 R12 5 
[93m3292[92m li R8 114 
[93m3293[92m sbi R8 R12 6 
[93m3294[92m li R8 111 
[93m3295[92m sbi R8 R12 7 
[93m3296[92m li R8 98 
[93m3297[92m sbi R8 R12 8 
[93m3298[92m li R8 108 
[93m3299[92m sbi R8 R12 9 
[93m3300[92m li R8 101 
[93m3301[92m sbi R8 R12 10 
[93m3302[92m li R8 109 
[93m3303[92m sbi R8 R12 11 
[93m3304[92m li R8 32 
[93m3305[92m sbi R8 R12 12 
[93m3306[92m li R8 111 
[93m3307[92m sbi R8 R12 13 
[93m3308[92m li R8 99 
[93m3309[92m sbi R8 R12 14 
[93m3310[92m li R8 99 
[93m3311[92m sbi R8 R12 15 
[93m3312[92m li R8 117 
[93m3313[92m sbi R8 R12 16 
[93m3314[92m li R8 114 
[93m3315[92m sbi R8 R12 17 
[93m3316[92m li R8 101 
[93m3317[92m sbi R8 R12 18 
[93m3318[92m li R8 100 
[93m3319[92m sbi R8 R12 19 
[93m3320[92m li R8 44 
[93m3321[92m sbi R8 R12 20 
[93m3322[92m li R8 32 
[93m3323[92m sbi R8 R12 21 
[93m3324[92m li R8 115 
[93m3325[92m sbi R8 R12 22 
[93m3326[92m li R8 121 
[93m3327[92m sbi R8 R12 23 
[93m3328[92m li R8 115 
[93m3329[92m sbi R8 R12 24 
[93m3330[92m li R8 116 
[93m3331[92m sbi R8 R12 25 
[93m3332[92m li R8 101 
[93m3333[92m sbi R8 R12 26 
[93m3334[92m li R8 109 
[93m3335[92m sbi R8 R12 27 
[93m3336[92m li R8 32 
[93m3337[92m sbi R8 R12 28 
[93m3338[92m li R8 99 
[93m3339[92m sbi R8 R12 29 
[93m3340[92m li R8 114 
[93m3341[92m sbi R8 R12 30 
[93m3342[92m li R8 97 
[93m3343[92m sbi R8 R12 31 
[93m3344[92m li R8 115 
[93m3345[92m sbi R8 R12 32 
[93m3346[92m li R8 104 
[93m3347[92m sbi R8 R12 33 
[93m3348[92m li R8 105 
[93m3349[92m sbi R8 R12 34 
[93m3350[92m li R8 110 
[93m3351[92m sbi R8 R12 35 
[93m3352[92m li R8 103 
[93m3353[92m sbi R8 R12 36 
[93m3354[92m sbi R0 R12 37 
[93m3355[92m swi R12 R14 276 
[0m[94mprompt1_101 = _t488_101[0m
[93m3356[92m lwi R8 R14 276 
[93m3357[92m swi R8 R14 12 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt1_101[0m
[93m3358[92m lwi R8 R14 12 
[93m3359[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m3360[92m la R8 label_236 
[93m3361[92m swi R8 R14 -8 
[93m3362[92m addi R14 R14 -52 
[93m3363[92m jmp label_8 
[0m[94mlabel_236:[0m
[0m[94m_t489_101 = ReturnVal[0m
[93m3364[92m lwi R8 R14 -4 
[93m3365[92m swi R8 R14 280 
[0m[94mlen_101 = _t489_101[0m
[93m3366[92m lwi R8 R14 280 
[93m3367[92m swi R8 R14 16 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt1_101[0m
[93m3368[92m lwi R8 R14 12 
[93m3369[92m swi R8 R14 -16 
[0m[94mparam len_101[0m
[93m3370[92m lwi R8 R14 16 
[93m3371[92m swi R8 R14 -20 
[0m[94m_t490_101 = #1[0m
[93m3372[92m li R8 1 
[93m3373[92m swi R8 R14 284 
[0m[94mparam _t490_101[0m
[93m3374[92m lwi R8 R14 284 
[93m3375[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m3376[92m la R8 label_237 
[93m3377[92m swi R8 R14 -8 
[93m3378[92m addi R14 R14 -180 
[93m3379[92m jmp label_85 
[0m[94mlabel_237:[0m
[0m[94m_t491_101 = ReturnVal[0m
[93m3380[92m lwi R8 R14 -4 
[93m3381[92m swi R8 R14 288 
[0m[94mgoto label_235[0m
[93m3382[92m jmp label_235 
[0m[94mlabel_234:[0m
[0m[94mlabel_235:[0m
[0m[94m_t492_94 = #10[0m
[93m3383[92m li R8 10 
[93m3384[92m swi R8 R14 292 
[0m[94mnext_process_94 = _t492_94[0m
[93m3385[92m lwi R8 R14 292 
[93m3386[92m swi R8 R14 20 
[0m[94m_t493_102 = #1[0m
[93m3387[92m li R8 1 
[93m3388[92m swi R8 R14 296 
[0m[94m_t494_102 = curIndex_94 + _t493_102[0m
[93m3389[92m lwi R8 R14 4 
[93m3390[92m lwi R9 R14 296 
[93m3391[92m add R10 R8 R9 
[93m3392[92m swi R10 R14 300 
[0m[94mi_94 = _t494_102[0m
[93m3393[92m lwi R8 R14 300 
[93m3394[92m swi R8 R14 8 
[0m[94mlabel_238:[0m
[0m[94m_t495_102 = #5[0m
[93m3395[92m li R8 5 
[93m3396[92m swi R8 R14 304 
[0m[94m_t496_102 = i_94 < _t495_102[0m
[93m3397[92m lwi R8 R14 8 
[93m3398[92m lwi R9 R14 304 
[93m3399[92m lt R10 R8 R9 
[93m3400[92m swi R10 R14 308 
[0m[94mif ( _t496_102 == #0 ) goto label_241[0m
[93m3401[92m lwi R8 R14 308 
[93m3402[92m cmp R8 R0 
[93m3403[92m jeq label_241 
[0m[94mgoto label_239[0m
[93m3404[92m jmp label_239 
[0m[94mlabel_240:[0m
[0m[94m_t497_102 = i_94[0m
[93m3405[92m lwi R8 R14 8 
[93m3406[92m swi R8 R14 312 
[0m[94mi_94 = i_94 + #1[0m
[93m3407[92m lwi R8 R14 8 
[93m3408[92m li R9 1 
[93m3409[92m add R10 R8 R9 
[93m3410[92m swi R10 R14 8 
[0m[94mgoto label_238[0m
[93m3411[92m jmp label_238 
[0m[94mlabel_239:[0m
[0m[94m_t498_102 = i_94 * #4[0m
[93m3412[92m lwi R8 R14 8 
[93m3413[92m li R9 4 
[93m3414[92m mul R10 R8 R9 
[93m3415[92m swi R10 R14 316 
[0m[94m_t499_102 = all_processes_0 + _t498_102[0m
[93m3416[92m lwi R8 R13 80 
[93m3417[92m lwi R9 R14 316 
[93m3418[92m add R10 R8 R9 
[93m3419[92m swi R10 R14 320 
[0m[94m_t500_102 = #0[0m
[93m3420[92m li R8 0 
[93m3421[92m swi R8 R14 324 
[0m[94m_t501_102 = *_t499_102 != _t500_102[0m
[93m3422[92m lwi R8 R14 320 
[93m3423[92m lwi R8 R8 0 
[93m3424[92m lwi R9 R14 324 
[93m3425[92m neq R10 R8 R9 
[93m3426[92m swi R10 R14 328 
[0m[94mif ( _t501_102 == #0 ) goto label_242[0m
[93m3427[92m lwi R8 R14 328 
[93m3428[92m cmp R8 R0 
[93m3429[92m jeq label_242 
[0m[94mnext_process_94 = i_94[0m
[93m3430[92m lwi R8 R14 8 
[93m3431[92m swi R8 R14 20 
[0m[94mgoto label_241[0m
[93m3432[92m jmp label_241 
[0m[94mgoto label_243[0m
[93m3433[92m jmp label_243 
[0m[94mlabel_242:[0m
[0m[94mlabel_243:[0m
[0m[94mgoto label_240[0m
[93m3434[92m jmp label_240 
[0m[94mlabel_241:[0m
[0m[94m_t502_94 = #10[0m
[93m3435[92m li R8 10 
[93m3436[92m swi R8 R14 332 
[0m[94m_t503_94 = next_process_94 == _t502_94[0m
[93m3437[92m lwi R8 R14 20 
[93m3438[92m lwi R9 R14 332 
[93m3439[92m eq R10 R8 R9 
[93m3440[92m swi R10 R14 336 
[0m[94mif ( _t503_94 == #0 ) goto label_244[0m
[93m3441[92m lwi R8 R14 336 
[93m3442[92m cmp R8 R0 
[93m3443[92m jeq label_244 
[0m[94m_t504_105 = #1[0m
[93m3444[92m li R8 1 
[93m3445[92m swi R8 R14 340 
[0m[94mi_94 = _t504_105[0m
[93m3446[92m lwi R8 R14 340 
[93m3447[92m swi R8 R14 8 
[0m[94mlabel_246:[0m
[0m[94m_t505_105 = i_94 <= curIndex_94[0m
[93m3448[92m lwi R8 R14 8 
[93m3449[92m lwi R9 R14 4 
[93m3450[92m le R10 R8 R9 
[93m3451[92m swi R10 R14 344 
[0m[94mif ( _t505_105 == #0 ) goto label_249[0m
[93m3452[92m lwi R8 R14 344 
[93m3453[92m cmp R8 R0 
[93m3454[92m jeq label_249 
[0m[94mgoto label_247[0m
[93m3455[92m jmp label_247 
[0m[94mlabel_248:[0m
[0m[94m_t506_105 = i_94[0m
[93m3456[92m lwi R8 R14 8 
[93m3457[92m swi R8 R14 348 
[0m[94mi_94 = i_94 + #1[0m
[93m3458[92m lwi R8 R14 8 
[93m3459[92m li R9 1 
[93m3460[92m add R10 R8 R9 
[93m3461[92m swi R10 R14 8 
[0m[94mgoto label_246[0m
[93m3462[92m jmp label_246 
[0m[94mlabel_247:[0m
[0m[94m_t507_105 = i_94 * #4[0m
[93m3463[92m lwi R8 R14 8 
[93m3464[92m li R9 4 
[93m3465[92m mul R10 R8 R9 
[93m3466[92m swi R10 R14 352 
[0m[94m_t508_105 = all_processes_0 + _t507_105[0m
[93m3467[92m lwi R8 R13 80 
[93m3468[92m lwi R9 R14 352 
[93m3469[92m add R10 R8 R9 
[93m3470[92m swi R10 R14 356 
[0m[94m_t509_105 = #0[0m
[93m3471[92m li R8 0 
[93m3472[92m swi R8 R14 360 
[0m[94m_t510_105 = *_t508_105 != _t509_105[0m
[93m3473[92m lwi R8 R14 356 
[93m3474[92m lwi R8 R8 0 
[93m3475[92m lwi R9 R14 360 
[93m3476[92m neq R10 R8 R9 
[93m3477[92m swi R10 R14 364 
[0m[94mif ( _t510_105 == #0 ) goto label_250[0m
[93m3478[92m lwi R8 R14 364 
[93m3479[92m cmp R8 R0 
[93m3480[92m jeq label_250 
[0m[94mnext_process_94 = i_94[0m
[93m3481[92m lwi R8 R14 8 
[93m3482[92m swi R8 R14 20 
[0m[94mgoto label_249[0m
[93m3483[92m jmp label_249 
[0m[94mgoto label_251[0m
[93m3484[92m jmp label_251 
[0m[94mlabel_250:[0m
[0m[94mlabel_251:[0m
[0m[94mgoto label_248[0m
[93m3485[92m jmp label_248 
[0m[94mlabel_249:[0m
[0m[94mgoto label_245[0m
[93m3486[92m jmp label_245 
[0m[94mlabel_244:[0m
[0m[94mlabel_245:[0m
[0m[94m_t511_94 = #10[0m
[93m3487[92m li R8 10 
[93m3488[92m swi R8 R14 368 
[0m[94m_t512_94 = next_process_94 == _t511_94[0m
[93m3489[92m lwi R8 R14 20 
[93m3490[92m lwi R9 R14 368 
[93m3491[92m eq R10 R8 R9 
[93m3492[92m swi R10 R14 372 
[0m[94mif ( _t512_94 == #0 ) goto label_252[0m
[93m3493[92m lwi R8 R14 372 
[93m3494[92m cmp R8 R0 
[93m3495[92m jeq label_252 
[0m[94mstring _t513_107 "Some problem occured, system crashing"[0m
[93m3496[92m subi R12 R12 40 
[93m3497[92m li R8 83 
[93m3498[92m sbi R8 R12 0 
[93m3499[92m li R8 111 
[93m3500[92m sbi R8 R12 1 
[93m3501[92m li R8 109 
[93m3502[92m sbi R8 R12 2 
[93m3503[92m li R8 101 
[93m3504[92m sbi R8 R12 3 
[93m3505[92m li R8 32 
[93m3506[92m sbi R8 R12 4 
[93m3507[92m li R8 112 
[93m3508[92m sbi R8 R12 5 
[93m3509[92m li R8 114 
[93m3510[92m sbi R8 R12 6 
[93m3511[92m li R8 111 
[93m3512[92m sbi R8 R12 7 
[93m3513[92m li R8 98 
[93m3514[92m sbi R8 R12 8 
[93m3515[92m li R8 108 
[93m3516[92m sbi R8 R12 9 
[93m3517[92m li R8 101 
[93m3518[92m sbi R8 R12 10 
[93m3519[92m li R8 109 
[93m3520[92m sbi R8 R12 11 
[93m3521[92m li R8 32 
[93m3522[92m sbi R8 R12 12 
[93m3523[92m li R8 111 
[93m3524[92m sbi R8 R12 13 
[93m3525[92m li R8 99 
[93m3526[92m sbi R8 R12 14 
[93m3527[92m li R8 99 
[93m3528[92m sbi R8 R12 15 
[93m3529[92m li R8 117 
[93m3530[92m sbi R8 R12 16 
[93m3531[92m li R8 114 
[93m3532[92m sbi R8 R12 17 
[93m3533[92m li R8 101 
[93m3534[92m sbi R8 R12 18 
[93m3535[92m li R8 100 
[93m3536[92m sbi R8 R12 19 
[93m3537[92m li R8 44 
[93m3538[92m sbi R8 R12 20 
[93m3539[92m li R8 32 
[93m3540[92m sbi R8 R12 21 
[93m3541[92m li R8 115 
[93m3542[92m sbi R8 R12 22 
[93m3543[92m li R8 121 
[93m3544[92m sbi R8 R12 23 
[93m3545[92m li R8 115 
[93m3546[92m sbi R8 R12 24 
[93m3547[92m li R8 116 
[93m3548[92m sbi R8 R12 25 
[93m3549[92m li R8 101 
[93m3550[92m sbi R8 R12 26 
[93m3551[92m li R8 109 
[93m3552[92m sbi R8 R12 27 
[93m3553[92m li R8 32 
[93m3554[92m sbi R8 R12 28 
[93m3555[92m li R8 99 
[93m3556[92m sbi R8 R12 29 
[93m3557[92m li R8 114 
[93m3558[92m sbi R8 R12 30 
[93m3559[92m li R8 97 
[93m3560[92m sbi R8 R12 31 
[93m3561[92m li R8 115 
[93m3562[92m sbi R8 R12 32 
[93m3563[92m li R8 104 
[93m3564[92m sbi R8 R12 33 
[93m3565[92m li R8 105 
[93m3566[92m sbi R8 R12 34 
[93m3567[92m li R8 110 
[93m3568[92m sbi R8 R12 35 
[93m3569[92m li R8 103 
[93m3570[92m sbi R8 R12 36 
[93m3571[92m sbi R0 R12 37 
[93m3572[92m swi R12 R14 376 
[0m[94mprompt1_101 = _t513_107[0m
[93m3573[92m lwi R8 R14 376 
[93m3574[92m swi R8 R14 12 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt1_101[0m
[93m3575[92m lwi R8 R14 12 
[93m3576[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m3577[92m la R8 label_254 
[93m3578[92m swi R8 R14 -8 
[93m3579[92m addi R14 R14 -52 
[93m3580[92m jmp label_8 
[0m[94mlabel_254:[0m
[0m[94m_t514_107 = ReturnVal[0m
[93m3581[92m lwi R8 R14 -4 
[93m3582[92m swi R8 R14 380 
[0m[94mlen_101 = _t514_107[0m
[93m3583[92m lwi R8 R14 380 
[93m3584[92m swi R8 R14 16 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt1_101[0m
[93m3585[92m lwi R8 R14 12 
[93m3586[92m swi R8 R14 -16 
[0m[94mparam len_101[0m
[93m3587[92m lwi R8 R14 16 
[93m3588[92m swi R8 R14 -20 
[0m[94m_t515_107 = #1[0m
[93m3589[92m li R8 1 
[93m3590[92m swi R8 R14 384 
[0m[94mparam _t515_107[0m
[93m3591[92m lwi R8 R14 384 
[93m3592[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m3593[92m la R8 label_255 
[93m3594[92m swi R8 R14 -8 
[93m3595[92m addi R14 R14 -180 
[93m3596[92m jmp label_85 
[0m[94mlabel_255:[0m
[0m[94m_t516_107 = ReturnVal[0m
[93m3597[92m lwi R8 R14 -4 
[93m3598[92m swi R8 R14 388 
[0m[94mgoto label_253[0m
[93m3599[92m jmp label_253 
[0m[94mlabel_252:[0m
[0m[94mlabel_253:[0m
[0m[94m_t517_94 = next_process_94 * #4[0m
[93m3600[92m lwi R8 R14 20 
[93m3601[92m li R9 4 
[93m3602[92m mul R10 R8 R9 
[93m3603[92m swi R10 R14 392 
[0m[94m_t518_94 = all_processes_0 + _t517_94[0m
[93m3604[92m lwi R8 R13 80 
[93m3605[92m lwi R9 R14 392 
[93m3606[92m add R10 R8 R9 
[93m3607[92m swi R10 R14 396 
[0m[94mnext_id_94 = *_t518_94[0m
[93m3608[92m lwi R8 R14 396 
[93m3609[92m lwi R8 R8 0 
[93m3610[92m swi R8 R14 32 
[0m[94masm "load" "R11" next_id_94 [0m
[93m3611[92m lwi R11 R14 32 
[0m[94m_t519_94 = #1[0m
[93m3612[92m li R8 1 
[93m3613[92m swi R8 R14 400 
[0m[94m_t520_94 = next_process_94 == _t519_94[0m
[93m3614[92m lwi R8 R14 20 
[93m3615[92m lwi R9 R14 400 
[93m3616[92m eq R10 R8 R9 
[93m3617[92m swi R10 R14 404 
[0m[94mif ( _t520_94 == #0 ) goto label_256[0m
[93m3618[92m lwi R8 R14 404 
[93m3619[92m cmp R8 R0 
[93m3620[92m jeq label_256 
[0m[94masm "switchReturn" "dummy" next_id_94 [0m
[93m3621[92m lwi R12 R14 436 
[93m3622[92m addi R14 R14 448 
[0m[94masm "switch" "1" next_id_94 [0m
[93m3623[92m lwi R6 R13 56 
[93m3624[92m swi R5 R6 0 
[93m3625[92m swi R7 R6 4 
[93m3626[92m swi R8 R6 8 
[93m3627[92m swi R9 R6 12 
[93m3628[92m swi R10 R6 16 
[93m3629[92m swi R12 R6 20 
[93m3630[92m swi R14 R6 24 
[93m3631[92m lwi R6 R13 60 
[93m3632[92m lwi R5 R6 0 
[93m3633[92m lwi R7 R6 4 
[93m3634[92m lwi R8 R6 8 
[93m3635[92m lwi R9 R6 12 
[93m3636[92m lwi R10 R6 16 
[93m3637[92m lwi R12 R6 20 
[93m3638[92m lwi R14 R6 24 
[93m3639[92m swi R11 R13 44 
[93m3640[92m lwi R3 R13 44 
[93m3641[92m li R6 14584 
[93m3642[92m li R15 9612 
[93m3643[92m add R6 R6 R15 
[93m3644[92m addi R6 R6 8 
[93m3645[92m sub R5 R5 R6 
[93m3646[92m jri R5 
[0m[94mgoto label_257[0m
[93m3647[92m jmp label_257 
[0m[94mlabel_256:[0m
[0m[94m_t521_94 = #2[0m
[93m3648[92m li R8 2 
[93m3649[92m swi R8 R14 408 
[0m[94m_t522_94 = next_process_94 == _t521_94[0m
[93m3650[92m lwi R8 R14 20 
[93m3651[92m lwi R9 R14 408 
[93m3652[92m eq R10 R8 R9 
[93m3653[92m swi R10 R14 412 
[0m[94mif ( _t522_94 == #0 ) goto label_258[0m
[93m3654[92m lwi R8 R14 412 
[93m3655[92m cmp R8 R0 
[93m3656[92m jeq label_258 
[0m[94masm "switchReturn" "dummy" next_id_94 [0m
[93m3657[92m lwi R12 R14 436 
[93m3658[92m addi R14 R14 448 
[0m[94masm "switch" "2" next_id_94 [0m
[93m3659[92m lwi R6 R13 56 
[93m3660[92m swi R5 R6 0 
[93m3661[92m swi R7 R6 4 
[93m3662[92m swi R8 R6 8 
[93m3663[92m swi R9 R6 12 
[93m3664[92m swi R10 R6 16 
[93m3665[92m swi R12 R6 20 
[93m3666[92m swi R14 R6 24 
[93m3667[92m lwi R6 R13 64 
[93m3668[92m lwi R5 R6 0 
[93m3669[92m lwi R7 R6 4 
[93m3670[92m lwi R8 R6 8 
[93m3671[92m lwi R9 R6 12 
[93m3672[92m lwi R10 R6 16 
[93m3673[92m lwi R12 R6 20 
[93m3674[92m lwi R14 R6 24 
[93m3675[92m swi R11 R13 44 
[93m3676[92m lwi R3 R13 44 
[93m3677[92m li R6 14728 
[93m3678[92m li R15 9612 
[93m3679[92m add R6 R6 R15 
[93m3680[92m addi R6 R6 8 
[93m3681[92m sub R5 R5 R6 
[93m3682[92m jri R5 
[0m[94mgoto label_257[0m
[93m3683[92m jmp label_257 
[0m[94mlabel_258:[0m
[0m[94m_t523_94 = #3[0m
[93m3684[92m li R8 3 
[93m3685[92m swi R8 R14 416 
[0m[94m_t524_94 = next_process_94 == _t523_94[0m
[93m3686[92m lwi R8 R14 20 
[93m3687[92m lwi R9 R14 416 
[93m3688[92m eq R10 R8 R9 
[93m3689[92m swi R10 R14 420 
[0m[94mif ( _t524_94 == #0 ) goto label_259[0m
[93m3690[92m lwi R8 R14 420 
[93m3691[92m cmp R8 R0 
[93m3692[92m jeq label_259 
[0m[94masm "switchReturn" "dummy" next_id_94 [0m
[93m3693[92m lwi R12 R14 436 
[93m3694[92m addi R14 R14 448 
[0m[94masm "switch" "3" next_id_94 [0m
[93m3695[92m lwi R6 R13 56 
[93m3696[92m swi R5 R6 0 
[93m3697[92m swi R7 R6 4 
[93m3698[92m swi R8 R6 8 
[93m3699[92m swi R9 R6 12 
[93m3700[92m swi R10 R6 16 
[93m3701[92m swi R12 R6 20 
[93m3702[92m swi R14 R6 24 
[93m3703[92m lwi R6 R13 68 
[93m3704[92m lwi R5 R6 0 
[93m3705[92m lwi R7 R6 4 
[93m3706[92m lwi R8 R6 8 
[93m3707[92m lwi R9 R6 12 
[93m3708[92m lwi R10 R6 16 
[93m3709[92m lwi R12 R6 20 
[93m3710[92m lwi R14 R6 24 
[93m3711[92m swi R11 R13 44 
[93m3712[92m lwi R3 R13 44 
[93m3713[92m li R6 14872 
[93m3714[92m li R15 9612 
[93m3715[92m add R6 R6 R15 
[93m3716[92m addi R6 R6 8 
[93m3717[92m sub R5 R5 R6 
[93m3718[92m jri R5 
[0m[94mgoto label_257[0m
[93m3719[92m jmp label_257 
[0m[94mlabel_259:[0m
[0m[94m_t525_94 = #4[0m
[93m3720[92m li R8 4 
[93m3721[92m swi R8 R14 424 
[0m[94m_t526_94 = next_process_94 == _t525_94[0m
[93m3722[92m lwi R8 R14 20 
[93m3723[92m lwi R9 R14 424 
[93m3724[92m eq R10 R8 R9 
[93m3725[92m swi R10 R14 428 
[0m[94mif ( _t526_94 == #0 ) goto label_260[0m
[93m3726[92m lwi R8 R14 428 
[93m3727[92m cmp R8 R0 
[93m3728[92m jeq label_260 
[0m[94masm "switchReturn" "dummy" next_id_94 [0m
[93m3729[92m lwi R12 R14 436 
[93m3730[92m addi R14 R14 448 
[0m[94masm "switch" "4" next_id_94 [0m
[93m3731[92m lwi R6 R13 56 
[93m3732[92m swi R5 R6 0 
[93m3733[92m swi R7 R6 4 
[93m3734[92m swi R8 R6 8 
[93m3735[92m swi R9 R6 12 
[93m3736[92m swi R10 R6 16 
[93m3737[92m swi R12 R6 20 
[93m3738[92m swi R14 R6 24 
[93m3739[92m lwi R6 R13 72 
[93m3740[92m lwi R5 R6 0 
[93m3741[92m lwi R7 R6 4 
[93m3742[92m lwi R8 R6 8 
[93m3743[92m lwi R9 R6 12 
[93m3744[92m lwi R10 R6 16 
[93m3745[92m lwi R12 R6 20 
[93m3746[92m lwi R14 R6 24 
[93m3747[92m swi R11 R13 44 
[93m3748[92m lwi R3 R13 44 
[93m3749[92m li R6 15016 
[93m3750[92m li R15 9612 
[93m3751[92m add R6 R6 R15 
[93m3752[92m addi R6 R6 8 
[93m3753[92m sub R5 R5 R6 
[93m3754[92m jri R5 
[0m[94mgoto label_257[0m
[93m3755[92m jmp label_257 
[0m[94mlabel_260:[0m
[0m[94mlabel_257:[0m
[0m[94m_t527_94 = #0[0m
[93m3756[92m li R8 0 
[93m3757[92m swi R8 R14 432 
[0m[94mReturn _t527_94[0m
[93m3758[92m lwi R8 R14 432 
[93m3759[92m swi R8 R14 444 
[93m3760[92m lwi R12 R14 436 
[93m3761[92m li R8 15064 
[93m3762[92m lwi R9 R14 440 
[93m3763[92m sub R10 R9 R8 
[93m3764[92m addi R14 R14 448 
[93m3765[92m jr R10 
[0m-------------------------------------
Parsing print_A
i_112 0
k_112 4
j_112 8
a_112 12
_t528_112 16
_t529_113 20
_t530_113 24
_t531_113 28
_t532_113 32
_t533_114 36
_t534_114 40
_t535_114 44
_t536_114 48
_t537_114 52
_t538_113 56
_t539_113 60
_t540_113 64
_t541_112 68
[94mlabel_261:[0m
[93m3766[92m swi R12 R14 72 
[0m[94mstring _t528_112 "a"[0m
[93m3767[92m subi R12 R12 4 
[93m3768[92m li R8 97 
[93m3769[92m sbi R8 R12 0 
[93m3770[92m sbi R0 R12 1 
[93m3771[92m swi R12 R14 16 
[0m[94ma_112 = _t528_112[0m
[93m3772[92m lwi R8 R14 16 
[93m3773[92m swi R8 R14 12 
[0m[94m_t529_113 = #0[0m
[93m3774[92m li R8 0 
[93m3775[92m swi R8 R14 20 
[0m[94mi_112 = _t529_113[0m
[93m3776[92m lwi R8 R14 20 
[93m3777[92m swi R8 R14 0 
[0m[94mlabel_262:[0m
[0m[94m_t530_113 = #10[0m
[93m3778[92m li R8 10 
[93m3779[92m swi R8 R14 24 
[0m[94m_t531_113 = i_112 < _t530_113[0m
[93m3780[92m lwi R8 R14 0 
[93m3781[92m lwi R9 R14 24 
[93m3782[92m lt R10 R8 R9 
[93m3783[92m swi R10 R14 28 
[0m[94mif ( _t531_113 == #0 ) goto label_265[0m
[93m3784[92m lwi R8 R14 28 
[93m3785[92m cmp R8 R0 
[93m3786[92m jeq label_265 
[0m[94mgoto label_263[0m
[93m3787[92m jmp label_263 
[0m[94mlabel_264:[0m
[0m[94m_t532_113 = i_112[0m
[93m3788[92m lwi R8 R14 0 
[93m3789[92m swi R8 R14 32 
[0m[94mi_112 = i_112 + #1[0m
[93m3790[92m lwi R8 R14 0 
[93m3791[92m li R9 1 
[93m3792[92m add R10 R8 R9 
[93m3793[92m swi R10 R14 0 
[0m[94mgoto label_262[0m
[93m3794[92m jmp label_262 
[0m[94mlabel_263:[0m
[0m[94m_t533_114 = #0[0m
[93m3795[92m li R8 0 
[93m3796[92m swi R8 R14 36 
[0m[94mj_112 = _t533_114[0m
[93m3797[92m lwi R8 R14 36 
[93m3798[92m swi R8 R14 8 
[0m[94mlabel_266:[0m
[0m[94m_t534_114 = #10000[0m
[93m3799[92m li R8 10000 
[93m3800[92m swi R8 R14 40 
[0m[94m_t535_114 = j_112 < _t534_114[0m
[93m3801[92m lwi R8 R14 8 
[93m3802[92m lwi R9 R14 40 
[93m3803[92m lt R10 R8 R9 
[93m3804[92m swi R10 R14 44 
[0m[94mif ( _t535_114 == #0 ) goto label_269[0m
[93m3805[92m lwi R8 R14 44 
[93m3806[92m cmp R8 R0 
[93m3807[92m jeq label_269 
[0m[94mgoto label_267[0m
[93m3808[92m jmp label_267 
[0m[94mlabel_268:[0m
[0m[94m_t536_114 = j_112[0m
[93m3809[92m lwi R8 R14 8 
[93m3810[92m swi R8 R14 48 
[0m[94mj_112 = j_112 + #1[0m
[93m3811[92m lwi R8 R14 8 
[93m3812[92m li R9 1 
[93m3813[92m add R10 R8 R9 
[93m3814[92m swi R10 R14 8 
[0m[94mgoto label_266[0m
[93m3815[92m jmp label_266 
[0m[94mlabel_267:[0m
[0m[94m_t537_114 = #0[0m
[93m3816[92m li R8 0 
[93m3817[92m swi R8 R14 52 
[0m[94mk_112 = _t537_114[0m
[93m3818[92m lwi R8 R14 52 
[93m3819[92m swi R8 R14 4 
[0m[94mgoto label_268[0m
[93m3820[92m jmp label_268 
[0m[94mlabel_269:[0m
[0m[94mFunctionCall print_string[0m
[0m[94mparam a_112[0m
[93m3821[92m lwi R8 R14 12 
[93m3822[92m swi R8 R14 -16 
[0m[94m_t538_113 = #1[0m
[93m3823[92m li R8 1 
[93m3824[92m swi R8 R14 56 
[0m[94mparam _t538_113[0m
[93m3825[92m lwi R8 R14 56 
[93m3826[92m swi R8 R14 -20 
[0m[94m_t539_113 = #0[0m
[93m3827[92m li R8 0 
[93m3828[92m swi R8 R14 60 
[0m[94mparam _t539_113[0m
[93m3829[92m lwi R8 R14 60 
[93m3830[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m3831[92m la R8 label_270 
[93m3832[92m swi R8 R14 -8 
[93m3833[92m addi R14 R14 -180 
[93m3834[92m jmp label_85 
[0m[94mlabel_270:[0m
[0m[94m_t540_113 = ReturnVal[0m
[93m3835[92m lwi R8 R14 -4 
[93m3836[92m swi R8 R14 64 
[0m[94mgoto label_264[0m
[93m3837[92m jmp label_264 
[0m[94mlabel_265:[0m
[0m[94m_t541_112 = #0[0m
[93m3838[92m li R8 0 
[93m3839[92m swi R8 R14 68 
[0m[94mReturn _t541_112[0m
[93m3840[92m lwi R8 R14 68 
[93m3841[92m swi R8 R14 80 
[93m3842[92m lwi R12 R14 72 
[93m3843[92m li R8 15392 
[93m3844[92m lwi R9 R14 76 
[93m3845[92m sub R10 R9 R8 
[93m3846[92m addi R14 R14 84 
[93m3847[92m jr R10 
[0m-------------------------------------
Parsing print_B
i_115 0
a_115 4
k_115 8
j_115 12
_t542_115 16
_t543_116 20
_t544_116 24
_t545_116 28
_t546_116 32
_t547_117 36
_t548_117 40
_t549_117 44
_t550_117 48
_t551_117 52
_t552_116 56
_t553_116 60
_t554_116 64
_t555_118 68
_t556_118 72
_t557_115 76
[94mlabel_271:[0m
[93m3848[92m swi R12 R14 80 
[0m[94mstring _t542_115 "b"[0m
[93m3849[92m subi R12 R12 4 
[93m3850[92m li R8 98 
[93m3851[92m sbi R8 R12 0 
[93m3852[92m sbi R0 R12 1 
[93m3853[92m swi R12 R14 16 
[0m[94ma_115 = _t542_115[0m
[93m3854[92m lwi R8 R14 16 
[93m3855[92m swi R8 R14 4 
[0m[94m_t543_116 = #0[0m
[93m3856[92m li R8 0 
[93m3857[92m swi R8 R14 20 
[0m[94mi_115 = _t543_116[0m
[93m3858[92m lwi R8 R14 20 
[93m3859[92m swi R8 R14 0 
[0m[94mlabel_272:[0m
[0m[94m_t544_116 = #100[0m
[93m3860[92m li R8 100 
[93m3861[92m swi R8 R14 24 
[0m[94m_t545_116 = i_115 < _t544_116[0m
[93m3862[92m lwi R8 R14 0 
[93m3863[92m lwi R9 R14 24 
[93m3864[92m lt R10 R8 R9 
[93m3865[92m swi R10 R14 28 
[0m[94mif ( _t545_116 == #0 ) goto label_275[0m
[93m3866[92m lwi R8 R14 28 
[93m3867[92m cmp R8 R0 
[93m3868[92m jeq label_275 
[0m[94mgoto label_273[0m
[93m3869[92m jmp label_273 
[0m[94mlabel_274:[0m
[0m[94m_t546_116 = i_115[0m
[93m3870[92m lwi R8 R14 0 
[93m3871[92m swi R8 R14 32 
[0m[94mi_115 = i_115 + #1[0m
[93m3872[92m lwi R8 R14 0 
[93m3873[92m li R9 1 
[93m3874[92m add R10 R8 R9 
[93m3875[92m swi R10 R14 0 
[0m[94mgoto label_272[0m
[93m3876[92m jmp label_272 
[0m[94mlabel_273:[0m
[0m[94m_t547_117 = #0[0m
[93m3877[92m li R8 0 
[93m3878[92m swi R8 R14 36 
[0m[94mj_115 = _t547_117[0m
[93m3879[92m lwi R8 R14 36 
[93m3880[92m swi R8 R14 12 
[0m[94mlabel_276:[0m
[0m[94m_t548_117 = #10000[0m
[93m3881[92m li R8 10000 
[93m3882[92m swi R8 R14 40 
[0m[94m_t549_117 = j_115 < _t548_117[0m
[93m3883[92m lwi R8 R14 12 
[93m3884[92m lwi R9 R14 40 
[93m3885[92m lt R10 R8 R9 
[93m3886[92m swi R10 R14 44 
[0m[94mif ( _t549_117 == #0 ) goto label_279[0m
[93m3887[92m lwi R8 R14 44 
[93m3888[92m cmp R8 R0 
[93m3889[92m jeq label_279 
[0m[94mgoto label_277[0m
[93m3890[92m jmp label_277 
[0m[94mlabel_278:[0m
[0m[94m_t550_117 = j_115[0m
[93m3891[92m lwi R8 R14 12 
[93m3892[92m swi R8 R14 48 
[0m[94mj_115 = j_115 + #1[0m
[93m3893[92m lwi R8 R14 12 
[93m3894[92m li R9 1 
[93m3895[92m add R10 R8 R9 
[93m3896[92m swi R10 R14 12 
[0m[94mgoto label_276[0m
[93m3897[92m jmp label_276 
[0m[94mlabel_277:[0m
[0m[94m_t551_117 = #0[0m
[93m3898[92m li R8 0 
[93m3899[92m swi R8 R14 52 
[0m[94mk_115 = _t551_117[0m
[93m3900[92m lwi R8 R14 52 
[93m3901[92m swi R8 R14 8 
[0m[94mgoto label_278[0m
[93m3902[92m jmp label_278 
[0m[94mlabel_279:[0m
[0m[94mFunctionCall print_string[0m
[0m[94mparam a_115[0m
[93m3903[92m lwi R8 R14 4 
[93m3904[92m swi R8 R14 -16 
[0m[94m_t552_116 = #1[0m
[93m3905[92m li R8 1 
[93m3906[92m swi R8 R14 56 
[0m[94mparam _t552_116[0m
[93m3907[92m lwi R8 R14 56 
[93m3908[92m swi R8 R14 -20 
[0m[94m_t553_116 = #0[0m
[93m3909[92m li R8 0 
[93m3910[92m swi R8 R14 60 
[0m[94mparam _t553_116[0m
[93m3911[92m lwi R8 R14 60 
[93m3912[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m3913[92m la R8 label_280 
[93m3914[92m swi R8 R14 -8 
[93m3915[92m addi R14 R14 -180 
[93m3916[92m jmp label_85 
[0m[94mlabel_280:[0m
[0m[94m_t554_116 = ReturnVal[0m
[93m3917[92m lwi R8 R14 -4 
[93m3918[92m swi R8 R14 64 
[0m[94mgoto label_274[0m
[93m3919[92m jmp label_274 
[0m[94mlabel_275:[0m
[0m[94mlabel_281:[0m
[0m[94m_t555_118 = #1[0m
[93m3920[92m li R8 1 
[93m3921[92m swi R8 R14 68 
[0m[94mif ( _t555_118 == #0 ) goto label_284[0m
[93m3922[92m lwi R8 R14 68 
[93m3923[92m cmp R8 R0 
[93m3924[92m jeq label_284 
[0m[94mgoto label_282[0m
[93m3925[92m jmp label_282 
[0m[94mlabel_283:[0m
[0m[94mgoto label_281[0m
[93m3926[92m jmp label_281 
[0m[94mlabel_282:[0m
[0m[94m_t556_118 = #0[0m
[93m3927[92m li R8 0 
[93m3928[92m swi R8 R14 72 
[0m[94mi_115 = _t556_118[0m
[93m3929[92m lwi R8 R14 72 
[93m3930[92m swi R8 R14 0 
[0m[94mgoto label_283[0m
[93m3931[92m jmp label_283 
[0m[94mlabel_284:[0m
[0m[94m_t557_115 = #0[0m
[93m3932[92m li R8 0 
[93m3933[92m swi R8 R14 76 
[0m[94mReturn _t557_115[0m
[93m3934[92m lwi R8 R14 76 
[93m3935[92m swi R8 R14 88 
[93m3936[92m lwi R12 R14 80 
[93m3937[92m li R8 15768 
[93m3938[92m lwi R9 R14 84 
[93m3939[92m sub R10 R9 R8 
[93m3940[92m addi R14 R14 92 
[93m3941[92m jr R10 
[0m-------------------------------------
Parsing print_C
i_119 0
k_119 4
j_119 8
a_119 12
_t558_119 16
_t559_120 20
_t560_120 24
_t561_120 28
_t562_120 32
_t563_121 36
_t564_121 40
_t565_121 44
_t566_121 48
_t567_121 52
_t568_120 56
_t569_120 60
_t570_120 64
_t571_122 68
_t572_122 72
_t573_119 76
[94mlabel_285:[0m
[93m3942[92m swi R12 R14 80 
[0m[94mstring _t558_119 "c"[0m
[93m3943[92m subi R12 R12 4 
[93m3944[92m li R8 99 
[93m3945[92m sbi R8 R12 0 
[93m3946[92m sbi R0 R12 1 
[93m3947[92m swi R12 R14 16 
[0m[94ma_119 = _t558_119[0m
[93m3948[92m lwi R8 R14 16 
[93m3949[92m swi R8 R14 12 
[0m[94m_t559_120 = #0[0m
[93m3950[92m li R8 0 
[93m3951[92m swi R8 R14 20 
[0m[94mi_119 = _t559_120[0m
[93m3952[92m lwi R8 R14 20 
[93m3953[92m swi R8 R14 0 
[0m[94mlabel_286:[0m
[0m[94m_t560_120 = #100[0m
[93m3954[92m li R8 100 
[93m3955[92m swi R8 R14 24 
[0m[94m_t561_120 = i_119 < _t560_120[0m
[93m3956[92m lwi R8 R14 0 
[93m3957[92m lwi R9 R14 24 
[93m3958[92m lt R10 R8 R9 
[93m3959[92m swi R10 R14 28 
[0m[94mif ( _t561_120 == #0 ) goto label_289[0m
[93m3960[92m lwi R8 R14 28 
[93m3961[92m cmp R8 R0 
[93m3962[92m jeq label_289 
[0m[94mgoto label_287[0m
[93m3963[92m jmp label_287 
[0m[94mlabel_288:[0m
[0m[94m_t562_120 = i_119[0m
[93m3964[92m lwi R8 R14 0 
[93m3965[92m swi R8 R14 32 
[0m[94mi_119 = i_119 + #1[0m
[93m3966[92m lwi R8 R14 0 
[93m3967[92m li R9 1 
[93m3968[92m add R10 R8 R9 
[93m3969[92m swi R10 R14 0 
[0m[94mgoto label_286[0m
[93m3970[92m jmp label_286 
[0m[94mlabel_287:[0m
[0m[94m_t563_121 = #0[0m
[93m3971[92m li R8 0 
[93m3972[92m swi R8 R14 36 
[0m[94mj_119 = _t563_121[0m
[93m3973[92m lwi R8 R14 36 
[93m3974[92m swi R8 R14 8 
[0m[94mlabel_290:[0m
[0m[94m_t564_121 = #10000[0m
[93m3975[92m li R8 10000 
[93m3976[92m swi R8 R14 40 
[0m[94m_t565_121 = j_119 < _t564_121[0m
[93m3977[92m lwi R8 R14 8 
[93m3978[92m lwi R9 R14 40 
[93m3979[92m lt R10 R8 R9 
[93m3980[92m swi R10 R14 44 
[0m[94mif ( _t565_121 == #0 ) goto label_293[0m
[93m3981[92m lwi R8 R14 44 
[93m3982[92m cmp R8 R0 
[93m3983[92m jeq label_293 
[0m[94mgoto label_291[0m
[93m3984[92m jmp label_291 
[0m[94mlabel_292:[0m
[0m[94m_t566_121 = j_119[0m
[93m3985[92m lwi R8 R14 8 
[93m3986[92m swi R8 R14 48 
[0m[94mj_119 = j_119 + #1[0m
[93m3987[92m lwi R8 R14 8 
[93m3988[92m li R9 1 
[93m3989[92m add R10 R8 R9 
[93m3990[92m swi R10 R14 8 
[0m[94mgoto label_290[0m
[93m3991[92m jmp label_290 
[0m[94mlabel_291:[0m
[0m[94m_t567_121 = #0[0m
[93m3992[92m li R8 0 
[93m3993[92m swi R8 R14 52 
[0m[94mk_119 = _t567_121[0m
[93m3994[92m lwi R8 R14 52 
[93m3995[92m swi R8 R14 4 
[0m[94mgoto label_292[0m
[93m3996[92m jmp label_292 
[0m[94mlabel_293:[0m
[0m[94mFunctionCall print_string[0m
[0m[94mparam a_119[0m
[93m3997[92m lwi R8 R14 12 
[93m3998[92m swi R8 R14 -16 
[0m[94m_t568_120 = #1[0m
[93m3999[92m li R8 1 
[93m4000[92m swi R8 R14 56 
[0m[94mparam _t568_120[0m
[93m4001[92m lwi R8 R14 56 
[93m4002[92m swi R8 R14 -20 
[0m[94m_t569_120 = #0[0m
[93m4003[92m li R8 0 
[93m4004[92m swi R8 R14 60 
[0m[94mparam _t569_120[0m
[93m4005[92m lwi R8 R14 60 
[93m4006[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m4007[92m la R8 label_294 
[93m4008[92m swi R8 R14 -8 
[93m4009[92m addi R14 R14 -180 
[93m4010[92m jmp label_85 
[0m[94mlabel_294:[0m
[0m[94m_t570_120 = ReturnVal[0m
[93m4011[92m lwi R8 R14 -4 
[93m4012[92m swi R8 R14 64 
[0m[94mgoto label_288[0m
[93m4013[92m jmp label_288 
[0m[94mlabel_289:[0m
[0m[94mlabel_295:[0m
[0m[94m_t571_122 = #1[0m
[93m4014[92m li R8 1 
[93m4015[92m swi R8 R14 68 
[0m[94mif ( _t571_122 == #0 ) goto label_298[0m
[93m4016[92m lwi R8 R14 68 
[93m4017[92m cmp R8 R0 
[93m4018[92m jeq label_298 
[0m[94mgoto label_296[0m
[93m4019[92m jmp label_296 
[0m[94mlabel_297:[0m
[0m[94mgoto label_295[0m
[93m4020[92m jmp label_295 
[0m[94mlabel_296:[0m
[0m[94m_t572_122 = #0[0m
[93m4021[92m li R8 0 
[93m4022[92m swi R8 R14 72 
[0m[94mi_119 = _t572_122[0m
[93m4023[92m lwi R8 R14 72 
[93m4024[92m swi R8 R14 0 
[0m[94mgoto label_297[0m
[93m4025[92m jmp label_297 
[0m[94mlabel_298:[0m
[0m[94m_t573_119 = #0[0m
[93m4026[92m li R8 0 
[93m4027[92m swi R8 R14 76 
[0m[94mReturn _t573_119[0m
[93m4028[92m lwi R8 R14 76 
[93m4029[92m swi R8 R14 88 
[93m4030[92m lwi R12 R14 80 
[93m4031[92m li R8 16144 
[93m4032[92m lwi R9 R14 84 
[93m4033[92m sub R10 R9 R8 
[93m4034[92m addi R14 R14 92 
[93m4035[92m jr R10 
[0m-------------------------------------
Parsing print_D
i_123 0
k_123 4
j_123 8
a_123 12
_t574_123 16
_t575_124 20
_t576_124 24
_t577_124 28
_t578_124 32
_t579_125 36
_t580_125 40
_t581_125 44
_t582_125 48
_t583_125 52
_t584_124 56
_t585_124 60
_t586_124 64
_t587_126 68
_t588_126 72
_t589_123 76
[94mlabel_299:[0m
[93m4036[92m swi R12 R14 80 
[0m[94mstring _t574_123 "d"[0m
[93m4037[92m subi R12 R12 4 
[93m4038[92m li R8 100 
[93m4039[92m sbi R8 R12 0 
[93m4040[92m sbi R0 R12 1 
[93m4041[92m swi R12 R14 16 
[0m[94ma_123 = _t574_123[0m
[93m4042[92m lwi R8 R14 16 
[93m4043[92m swi R8 R14 12 
[0m[94m_t575_124 = #0[0m
[93m4044[92m li R8 0 
[93m4045[92m swi R8 R14 20 
[0m[94mi_123 = _t575_124[0m
[93m4046[92m lwi R8 R14 20 
[93m4047[92m swi R8 R14 0 
[0m[94mlabel_300:[0m
[0m[94m_t576_124 = #100[0m
[93m4048[92m li R8 100 
[93m4049[92m swi R8 R14 24 
[0m[94m_t577_124 = i_123 < _t576_124[0m
[93m4050[92m lwi R8 R14 0 
[93m4051[92m lwi R9 R14 24 
[93m4052[92m lt R10 R8 R9 
[93m4053[92m swi R10 R14 28 
[0m[94mif ( _t577_124 == #0 ) goto label_303[0m
[93m4054[92m lwi R8 R14 28 
[93m4055[92m cmp R8 R0 
[93m4056[92m jeq label_303 
[0m[94mgoto label_301[0m
[93m4057[92m jmp label_301 
[0m[94mlabel_302:[0m
[0m[94m_t578_124 = i_123[0m
[93m4058[92m lwi R8 R14 0 
[93m4059[92m swi R8 R14 32 
[0m[94mi_123 = i_123 + #1[0m
[93m4060[92m lwi R8 R14 0 
[93m4061[92m li R9 1 
[93m4062[92m add R10 R8 R9 
[93m4063[92m swi R10 R14 0 
[0m[94mgoto label_300[0m
[93m4064[92m jmp label_300 
[0m[94mlabel_301:[0m
[0m[94m_t579_125 = #0[0m
[93m4065[92m li R8 0 
[93m4066[92m swi R8 R14 36 
[0m[94mj_123 = _t579_125[0m
[93m4067[92m lwi R8 R14 36 
[93m4068[92m swi R8 R14 8 
[0m[94mlabel_304:[0m
[0m[94m_t580_125 = #10000[0m
[93m4069[92m li R8 10000 
[93m4070[92m swi R8 R14 40 
[0m[94m_t581_125 = j_123 < _t580_125[0m
[93m4071[92m lwi R8 R14 8 
[93m4072[92m lwi R9 R14 40 
[93m4073[92m lt R10 R8 R9 
[93m4074[92m swi R10 R14 44 
[0m[94mif ( _t581_125 == #0 ) goto label_307[0m
[93m4075[92m lwi R8 R14 44 
[93m4076[92m cmp R8 R0 
[93m4077[92m jeq label_307 
[0m[94mgoto label_305[0m
[93m4078[92m jmp label_305 
[0m[94mlabel_306:[0m
[0m[94m_t582_125 = j_123[0m
[93m4079[92m lwi R8 R14 8 
[93m4080[92m swi R8 R14 48 
[0m[94mj_123 = j_123 + #1[0m
[93m4081[92m lwi R8 R14 8 
[93m4082[92m li R9 1 
[93m4083[92m add R10 R8 R9 
[93m4084[92m swi R10 R14 8 
[0m[94mgoto label_304[0m
[93m4085[92m jmp label_304 
[0m[94mlabel_305:[0m
[0m[94m_t583_125 = #0[0m
[93m4086[92m li R8 0 
[93m4087[92m swi R8 R14 52 
[0m[94mk_123 = _t583_125[0m
[93m4088[92m lwi R8 R14 52 
[93m4089[92m swi R8 R14 4 
[0m[94mgoto label_306[0m
[93m4090[92m jmp label_306 
[0m[94mlabel_307:[0m
[0m[94mFunctionCall print_string[0m
[0m[94mparam a_123[0m
[93m4091[92m lwi R8 R14 12 
[93m4092[92m swi R8 R14 -16 
[0m[94m_t584_124 = #1[0m
[93m4093[92m li R8 1 
[93m4094[92m swi R8 R14 56 
[0m[94mparam _t584_124[0m
[93m4095[92m lwi R8 R14 56 
[93m4096[92m swi R8 R14 -20 
[0m[94m_t585_124 = #0[0m
[93m4097[92m li R8 0 
[93m4098[92m swi R8 R14 60 
[0m[94mparam _t585_124[0m
[93m4099[92m lwi R8 R14 60 
[93m4100[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m4101[92m la R8 label_308 
[93m4102[92m swi R8 R14 -8 
[93m4103[92m addi R14 R14 -180 
[93m4104[92m jmp label_85 
[0m[94mlabel_308:[0m
[0m[94m_t586_124 = ReturnVal[0m
[93m4105[92m lwi R8 R14 -4 
[93m4106[92m swi R8 R14 64 
[0m[94mgoto label_302[0m
[93m4107[92m jmp label_302 
[0m[94mlabel_303:[0m
[0m[94mlabel_309:[0m
[0m[94m_t587_126 = #1[0m
[93m4108[92m li R8 1 
[93m4109[92m swi R8 R14 68 
[0m[94mif ( _t587_126 == #0 ) goto label_312[0m
[93m4110[92m lwi R8 R14 68 
[93m4111[92m cmp R8 R0 
[93m4112[92m jeq label_312 
[0m[94mgoto label_310[0m
[93m4113[92m jmp label_310 
[0m[94mlabel_311:[0m
[0m[94mgoto label_309[0m
[93m4114[92m jmp label_309 
[0m[94mlabel_310:[0m
[0m[94m_t588_126 = #0[0m
[93m4115[92m li R8 0 
[93m4116[92m swi R8 R14 72 
[0m[94mi_123 = _t588_126[0m
[93m4117[92m lwi R8 R14 72 
[93m4118[92m swi R8 R14 0 
[0m[94mgoto label_311[0m
[93m4119[92m jmp label_311 
[0m[94mlabel_312:[0m
[0m[94m_t589_123 = #0[0m
[93m4120[92m li R8 0 
[93m4121[92m swi R8 R14 76 
[0m[94mReturn _t589_123[0m
[93m4122[92m lwi R8 R14 76 
[93m4123[92m swi R8 R14 88 
[93m4124[92m lwi R12 R14 80 
[93m4125[92m li R8 16520 
[93m4126[92m lwi R9 R14 84 
[93m4127[92m sub R10 R9 R8 
[93m4128[92m addi R14 R14 92 
[93m4129[92m jr R10 
[0m-------------------------------------
Parsing fibonacci
prompt_127 0
len_127 4
num_127 8
i_130 12
a_130 16
b_130 20
temp_131 24
_t590_127 28
_t591_127 32
_t592_127 36
_t593_127 40
_t594_127 44
_t595_127 48
_t596_127 52
_t597_127 56
_t598_127 60
_t599_127 64
_t600_127 68
_t601_127 72
_t602_127 76
_t603_127 80
_t604_127 84
_t605_127 88
_t606_127 92
_t607_128 96
_t608_128 100
_t609_128 104
_t610_127 108
_t611_127 112
_t612_129 116
_t613_129 120
_t614_129 124
_t615_130 128
_t616_130 132
_t617_131 136
_t618_131 140
_t619_131 144
_t620_131 148
_t621_130 152
_t622_130 156
_t623_127 160
[94mlabel_313:[0m
[93m4130[92m swi R12 R14 164 
[0m[94mstring _t590_127 "Enter n"[0m
[93m4131[92m subi R12 R12 8 
[93m4132[92m li R8 69 
[93m4133[92m sbi R8 R12 0 
[93m4134[92m li R8 110 
[93m4135[92m sbi R8 R12 1 
[93m4136[92m li R8 116 
[93m4137[92m sbi R8 R12 2 
[93m4138[92m li R8 101 
[93m4139[92m sbi R8 R12 3 
[93m4140[92m li R8 114 
[93m4141[92m sbi R8 R12 4 
[93m4142[92m li R8 32 
[93m4143[92m sbi R8 R12 5 
[93m4144[92m li R8 110 
[93m4145[92m sbi R8 R12 6 
[93m4146[92m sbi R0 R12 7 
[93m4147[92m swi R12 R14 28 
[0m[94mprompt_127 = _t590_127[0m
[93m4148[92m lwi R8 R14 28 
[93m4149[92m swi R8 R14 0 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_127[0m
[93m4150[92m lwi R8 R14 0 
[93m4151[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m4152[92m la R8 label_314 
[93m4153[92m swi R8 R14 -8 
[93m4154[92m addi R14 R14 -52 
[93m4155[92m jmp label_8 
[0m[94mlabel_314:[0m
[0m[94m_t591_127 = ReturnVal[0m
[93m4156[92m lwi R8 R14 -4 
[93m4157[92m swi R8 R14 32 
[0m[94mlen_127 = _t591_127[0m
[93m4158[92m lwi R8 R14 32 
[93m4159[92m swi R8 R14 4 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_127[0m
[93m4160[92m lwi R8 R14 0 
[93m4161[92m swi R8 R14 -16 
[0m[94mparam len_127[0m
[93m4162[92m lwi R8 R14 4 
[93m4163[92m swi R8 R14 -20 
[0m[94m_t592_127 = #1[0m
[93m4164[92m li R8 1 
[93m4165[92m swi R8 R14 36 
[0m[94mparam _t592_127[0m
[93m4166[92m lwi R8 R14 36 
[93m4167[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m4168[92m la R8 label_315 
[93m4169[92m swi R8 R14 -8 
[93m4170[92m addi R14 R14 -180 
[93m4171[92m jmp label_85 
[0m[94mlabel_315:[0m
[0m[94m_t593_127 = ReturnVal[0m
[93m4172[92m lwi R8 R14 -4 
[93m4173[92m swi R8 R14 40 
[0m[94mFunctionCall get_num[0m
[0m[94mcall label_118[0m
[93m4174[92m la R8 label_316 
[93m4175[92m swi R8 R14 -8 
[93m4176[92m addi R14 R14 -204 
[93m4177[92m jmp label_118 
[0m[94mlabel_316:[0m
[0m[94m_t594_127 = ReturnVal[0m
[93m4178[92m lwi R8 R14 -4 
[93m4179[92m swi R8 R14 44 
[0m[94mnum_127 = _t594_127[0m
[93m4180[92m lwi R8 R14 44 
[93m4181[92m swi R8 R14 8 
[0m[94mstring _t595_127 "The "[0m
[93m4182[92m subi R12 R12 8 
[93m4183[92m li R8 84 
[93m4184[92m sbi R8 R12 0 
[93m4185[92m li R8 104 
[93m4186[92m sbi R8 R12 1 
[93m4187[92m li R8 101 
[93m4188[92m sbi R8 R12 2 
[93m4189[92m li R8 32 
[93m4190[92m sbi R8 R12 3 
[93m4191[92m sbi R0 R12 4 
[93m4192[92m swi R12 R14 48 
[0m[94mprompt_127 = _t595_127[0m
[93m4193[92m lwi R8 R14 48 
[93m4194[92m swi R8 R14 0 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_127[0m
[93m4195[92m lwi R8 R14 0 
[93m4196[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m4197[92m la R8 label_317 
[93m4198[92m swi R8 R14 -8 
[93m4199[92m addi R14 R14 -52 
[93m4200[92m jmp label_8 
[0m[94mlabel_317:[0m
[0m[94m_t596_127 = ReturnVal[0m
[93m4201[92m lwi R8 R14 -4 
[93m4202[92m swi R8 R14 52 
[0m[94mlen_127 = _t596_127[0m
[93m4203[92m lwi R8 R14 52 
[93m4204[92m swi R8 R14 4 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_127[0m
[93m4205[92m lwi R8 R14 0 
[93m4206[92m swi R8 R14 -16 
[0m[94mparam len_127[0m
[93m4207[92m lwi R8 R14 4 
[93m4208[92m swi R8 R14 -20 
[0m[94m_t597_127 = #0[0m
[93m4209[92m li R8 0 
[93m4210[92m swi R8 R14 56 
[0m[94mparam _t597_127[0m
[93m4211[92m lwi R8 R14 56 
[93m4212[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m4213[92m la R8 label_318 
[93m4214[92m swi R8 R14 -8 
[93m4215[92m addi R14 R14 -180 
[93m4216[92m jmp label_85 
[0m[94mlabel_318:[0m
[0m[94m_t598_127 = ReturnVal[0m
[93m4217[92m lwi R8 R14 -4 
[93m4218[92m swi R8 R14 60 
[0m[94mFunctionCall print_num[0m
[0m[94mparam num_127[0m
[93m4219[92m lwi R8 R14 8 
[93m4220[92m swi R8 R14 -16 
[0m[94m_t599_127 = #0[0m
[93m4221[92m li R8 0 
[93m4222[92m swi R8 R14 64 
[0m[94mparam _t599_127[0m
[93m4223[92m lwi R8 R14 64 
[93m4224[92m swi R8 R14 -20 
[0m[94mcall label_139[0m
[93m4225[92m la R8 label_319 
[93m4226[92m swi R8 R14 -8 
[93m4227[92m addi R14 R14 -152 
[93m4228[92m jmp label_139 
[0m[94mlabel_319:[0m
[0m[94m_t600_127 = ReturnVal[0m
[93m4229[92m lwi R8 R14 -4 
[93m4230[92m swi R8 R14 68 
[0m[94mstring _t601_127 "th fibonacci number is: "[0m
[93m4231[92m subi R12 R12 28 
[93m4232[92m li R8 116 
[93m4233[92m sbi R8 R12 0 
[93m4234[92m li R8 104 
[93m4235[92m sbi R8 R12 1 
[93m4236[92m li R8 32 
[93m4237[92m sbi R8 R12 2 
[93m4238[92m li R8 102 
[93m4239[92m sbi R8 R12 3 
[93m4240[92m li R8 105 
[93m4241[92m sbi R8 R12 4 
[93m4242[92m li R8 98 
[93m4243[92m sbi R8 R12 5 
[93m4244[92m li R8 111 
[93m4245[92m sbi R8 R12 6 
[93m4246[92m li R8 110 
[93m4247[92m sbi R8 R12 7 
[93m4248[92m li R8 97 
[93m4249[92m sbi R8 R12 8 
[93m4250[92m li R8 99 
[93m4251[92m sbi R8 R12 9 
[93m4252[92m li R8 99 
[93m4253[92m sbi R8 R12 10 
[93m4254[92m li R8 105 
[93m4255[92m sbi R8 R12 11 
[93m4256[92m li R8 32 
[93m4257[92m sbi R8 R12 12 
[93m4258[92m li R8 110 
[93m4259[92m sbi R8 R12 13 
[93m4260[92m li R8 117 
[93m4261[92m sbi R8 R12 14 
[93m4262[92m li R8 109 
[93m4263[92m sbi R8 R12 15 
[93m4264[92m li R8 98 
[93m4265[92m sbi R8 R12 16 
[93m4266[92m li R8 101 
[93m4267[92m sbi R8 R12 17 
[93m4268[92m li R8 114 
[93m4269[92m sbi R8 R12 18 
[93m4270[92m li R8 32 
[93m4271[92m sbi R8 R12 19 
[93m4272[92m li R8 105 
[93m4273[92m sbi R8 R12 20 
[93m4274[92m li R8 115 
[93m4275[92m sbi R8 R12 21 
[93m4276[92m li R8 58 
[93m4277[92m sbi R8 R12 22 
[93m4278[92m li R8 32 
[93m4279[92m sbi R8 R12 23 
[93m4280[92m sbi R0 R12 24 
[93m4281[92m swi R12 R14 72 
[0m[94mprompt_127 = _t601_127[0m
[93m4282[92m lwi R8 R14 72 
[93m4283[92m swi R8 R14 0 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_127[0m
[93m4284[92m lwi R8 R14 0 
[93m4285[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m4286[92m la R8 label_320 
[93m4287[92m swi R8 R14 -8 
[93m4288[92m addi R14 R14 -52 
[93m4289[92m jmp label_8 
[0m[94mlabel_320:[0m
[0m[94m_t602_127 = ReturnVal[0m
[93m4290[92m lwi R8 R14 -4 
[93m4291[92m swi R8 R14 76 
[0m[94mlen_127 = _t602_127[0m
[93m4292[92m lwi R8 R14 76 
[93m4293[92m swi R8 R14 4 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_127[0m
[93m4294[92m lwi R8 R14 0 
[93m4295[92m swi R8 R14 -16 
[0m[94mparam len_127[0m
[93m4296[92m lwi R8 R14 4 
[93m4297[92m swi R8 R14 -20 
[0m[94m_t603_127 = #0[0m
[93m4298[92m li R8 0 
[93m4299[92m swi R8 R14 80 
[0m[94mparam _t603_127[0m
[93m4300[92m lwi R8 R14 80 
[93m4301[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m4302[92m la R8 label_321 
[93m4303[92m swi R8 R14 -8 
[93m4304[92m addi R14 R14 -180 
[93m4305[92m jmp label_85 
[0m[94mlabel_321:[0m
[0m[94m_t604_127 = ReturnVal[0m
[93m4306[92m lwi R8 R14 -4 
[93m4307[92m swi R8 R14 84 
[0m[94m_t605_127 = #0[0m
[93m4308[92m li R8 0 
[93m4309[92m swi R8 R14 88 
[0m[94m_t606_127 = num_127 == _t605_127[0m
[93m4310[92m lwi R8 R14 8 
[93m4311[92m lwi R9 R14 88 
[93m4312[92m eq R10 R8 R9 
[93m4313[92m swi R10 R14 92 
[0m[94mif ( _t606_127 == #0 ) goto label_322[0m
[93m4314[92m lwi R8 R14 92 
[93m4315[92m cmp R8 R0 
[93m4316[92m jeq label_322 
[0m[94mFunctionCall print_num[0m
[0m[94m_t607_128 = #1[0m
[93m4317[92m li R8 1 
[93m4318[92m swi R8 R14 96 
[0m[94mparam _t607_128[0m
[93m4319[92m lwi R8 R14 96 
[93m4320[92m swi R8 R14 -16 
[0m[94m_t608_128 = #1[0m
[93m4321[92m li R8 1 
[93m4322[92m swi R8 R14 100 
[0m[94mparam _t608_128[0m
[93m4323[92m lwi R8 R14 100 
[93m4324[92m swi R8 R14 -20 
[0m[94mcall label_139[0m
[93m4325[92m la R8 label_324 
[93m4326[92m swi R8 R14 -8 
[93m4327[92m addi R14 R14 -152 
[93m4328[92m jmp label_139 
[0m[94mlabel_324:[0m
[0m[94m_t609_128 = ReturnVal[0m
[93m4329[92m lwi R8 R14 -4 
[93m4330[92m swi R8 R14 104 
[0m[94mgoto label_323[0m
[93m4331[92m jmp label_323 
[0m[94mlabel_322:[0m
[0m[94m_t610_127 = #1[0m
[93m4332[92m li R8 1 
[93m4333[92m swi R8 R14 108 
[0m[94m_t611_127 = num_127 == _t610_127[0m
[93m4334[92m lwi R8 R14 8 
[93m4335[92m lwi R9 R14 108 
[93m4336[92m eq R10 R8 R9 
[93m4337[92m swi R10 R14 112 
[0m[94mif ( _t611_127 == #0 ) goto label_325[0m
[93m4338[92m lwi R8 R14 112 
[93m4339[92m cmp R8 R0 
[93m4340[92m jeq label_325 
[0m[94mFunctionCall print_num[0m
[0m[94m_t612_129 = #1[0m
[93m4341[92m li R8 1 
[93m4342[92m swi R8 R14 116 
[0m[94mparam _t612_129[0m
[93m4343[92m lwi R8 R14 116 
[93m4344[92m swi R8 R14 -16 
[0m[94m_t613_129 = #1[0m
[93m4345[92m li R8 1 
[93m4346[92m swi R8 R14 120 
[0m[94mparam _t613_129[0m
[93m4347[92m lwi R8 R14 120 
[93m4348[92m swi R8 R14 -20 
[0m[94mcall label_139[0m
[93m4349[92m la R8 label_326 
[93m4350[92m swi R8 R14 -8 
[93m4351[92m addi R14 R14 -152 
[93m4352[92m jmp label_139 
[0m[94mlabel_326:[0m
[0m[94m_t614_129 = ReturnVal[0m
[93m4353[92m lwi R8 R14 -4 
[93m4354[92m swi R8 R14 124 
[0m[94mgoto label_323[0m
[93m4355[92m jmp label_323 
[0m[94mlabel_325:[0m
[0m[94m_t615_130 = #1[0m
[93m4356[92m li R8 1 
[93m4357[92m swi R8 R14 128 
[0m[94ma_130 = _t615_130[0m
[93m4358[92m lwi R8 R14 128 
[93m4359[92m swi R8 R14 16 
[0m[94m_t616_130 = #1[0m
[93m4360[92m li R8 1 
[93m4361[92m swi R8 R14 132 
[0m[94mb_130 = _t616_130[0m
[93m4362[92m lwi R8 R14 132 
[93m4363[92m swi R8 R14 20 
[0m[94m_t617_131 = #2[0m
[93m4364[92m li R8 2 
[93m4365[92m swi R8 R14 136 
[0m[94mi_130 = _t617_131[0m
[93m4366[92m lwi R8 R14 136 
[93m4367[92m swi R8 R14 12 
[0m[94mlabel_327:[0m
[0m[94m_t618_131 = i_130 <= num_127[0m
[93m4368[92m lwi R8 R14 12 
[93m4369[92m lwi R9 R14 8 
[93m4370[92m le R10 R8 R9 
[93m4371[92m swi R10 R14 140 
[0m[94mif ( _t618_131 == #0 ) goto label_330[0m
[93m4372[92m lwi R8 R14 140 
[93m4373[92m cmp R8 R0 
[93m4374[92m jeq label_330 
[0m[94mgoto label_328[0m
[93m4375[92m jmp label_328 
[0m[94mlabel_329:[0m
[0m[94m_t619_131 = i_130[0m
[93m4376[92m lwi R8 R14 12 
[93m4377[92m swi R8 R14 144 
[0m[94mi_130 = i_130 + #1[0m
[93m4378[92m lwi R8 R14 12 
[93m4379[92m li R9 1 
[93m4380[92m add R10 R8 R9 
[93m4381[92m swi R10 R14 12 
[0m[94mgoto label_327[0m
[93m4382[92m jmp label_327 
[0m[94mlabel_328:[0m
[0m[94mtemp_131 = b_130[0m
[93m4383[92m lwi R8 R14 20 
[93m4384[92m swi R8 R14 24 
[0m[94mb_130 = a_130[0m
[93m4385[92m lwi R8 R14 16 
[93m4386[92m swi R8 R14 20 
[0m[94m_t620_131 = a_130 + temp_131[0m
[93m4387[92m lwi R8 R14 16 
[93m4388[92m lwi R9 R14 24 
[93m4389[92m add R10 R8 R9 
[93m4390[92m swi R10 R14 148 
[0m[94ma_130 = _t620_131[0m
[93m4391[92m lwi R8 R14 148 
[93m4392[92m swi R8 R14 16 
[0m[94mgoto label_329[0m
[93m4393[92m jmp label_329 
[0m[94mlabel_330:[0m
[0m[94mFunctionCall print_num[0m
[0m[94mparam a_130[0m
[93m4394[92m lwi R8 R14 16 
[93m4395[92m swi R8 R14 -16 
[0m[94m_t621_130 = #1[0m
[93m4396[92m li R8 1 
[93m4397[92m swi R8 R14 152 
[0m[94mparam _t621_130[0m
[93m4398[92m lwi R8 R14 152 
[93m4399[92m swi R8 R14 -20 
[0m[94mcall label_139[0m
[93m4400[92m la R8 label_331 
[93m4401[92m swi R8 R14 -8 
[93m4402[92m addi R14 R14 -152 
[93m4403[92m jmp label_139 
[0m[94mlabel_331:[0m
[0m[94m_t622_130 = ReturnVal[0m
[93m4404[92m lwi R8 R14 -4 
[93m4405[92m swi R8 R14 156 
[0m[94mlabel_323:[0m
[0m[94m_t623_127 = #0[0m
[93m4406[92m li R8 0 
[93m4407[92m swi R8 R14 160 
[0m[94mReturn _t623_127[0m
[93m4408[92m lwi R8 R14 160 
[93m4409[92m swi R8 R14 172 
[93m4410[92m lwi R12 R14 164 
[93m4411[92m li R8 17664 
[93m4412[92m lwi R9 R14 168 
[93m4413[92m sub R10 R9 R8 
[93m4414[92m addi R14 R14 176 
[93m4415[92m jr R10 
[0m-------------------------------------
Parsing reverse_string
str_0_132 0
str_132 4
i_132 8
clen_132 12
prompt_132 16
len_132 20
j_132 24
temp_134 28
_t624_132 32
_t625_133 36
_t626_133 40
_t627_133 44
_t628_133 48
_t629_133 52
_t630_133 56
_t631_133 60
_t632_132 64
_t633_132 68
_t634_132 72
_t635_132 76
_t636_132 80
_t637_132 84
_t638_132 88
_t639_132 92
_t640_132 96
_t641_132 100
_t642_132 104
_t643_132 108
_t644_132 112
_t645_132 116
_t646_132 120
_t647_134 124
_t648_134 128
_t649_134 132
_t650_134 136
_t651_134 140
_t652_134 144
_t653_134 148
_t654_134 152
_t655_134 156
_t656_134 160
_t657_134 164
_t658_132 168
_t659_132 172
_t660_132 176
_t661_132 180
_t662_132 184
_t663_132 188
_t664_132 192
[94mlabel_332:[0m
[93m4416[92m swi R12 R14 196 
[0m[94m_t624_132 = #30[0m
[93m4417[92m li R8 30 
[93m4418[92m swi R8 R14 32 
[0m[94mstr_0_132 = _t624_132[0m
[93m4419[92m lwi R8 R14 32 
[93m4420[92m swi R8 R14 0 
[0m[94mmemory str_132 _t624_132 #1[0m
[93m4421[92m lwi R8 R14 32 
[93m4422[92m li R9 1 
[93m4423[92m mul R10 R8 R9 
[93m4424[92m modi R8 R10 4 
[93m4425[92m li R9 4 
[93m4426[92m sub R8 R9 R8 
[93m4427[92m add R10 R10 R8 
[93m4428[92m sub R12 R12 R10 
[93m4429[92m swi R12 R14 4 
[0m[94m_t625_133 = #0[0m
[93m4430[92m li R8 0 
[93m4431[92m swi R8 R14 36 
[0m[94mi_132 = _t625_133[0m
[93m4432[92m lwi R8 R14 36 
[93m4433[92m swi R8 R14 8 
[0m[94mlabel_333:[0m
[0m[94m_t626_133 = #30[0m
[93m4434[92m li R8 30 
[93m4435[92m swi R8 R14 40 
[0m[94m_t627_133 = i_132 < _t626_133[0m
[93m4436[92m lwi R8 R14 8 
[93m4437[92m lwi R9 R14 40 
[93m4438[92m lt R10 R8 R9 
[93m4439[92m swi R10 R14 44 
[0m[94mif ( _t627_133 == #0 ) goto label_336[0m
[93m4440[92m lwi R8 R14 44 
[93m4441[92m cmp R8 R0 
[93m4442[92m jeq label_336 
[0m[94mgoto label_334[0m
[93m4443[92m jmp label_334 
[0m[94mlabel_335:[0m
[0m[94m_t628_133 = i_132[0m
[93m4444[92m lwi R8 R14 8 
[93m4445[92m swi R8 R14 48 
[0m[94mi_132 = i_132 + #1[0m
[93m4446[92m lwi R8 R14 8 
[93m4447[92m li R9 1 
[93m4448[92m add R10 R8 R9 
[93m4449[92m swi R10 R14 8 
[0m[94mgoto label_333[0m
[93m4450[92m jmp label_333 
[0m[94mlabel_334:[0m
[0m[94m_t629_133 = i_132 * #1[0m
[93m4451[92m lwi R8 R14 8 
[93m4452[92m li R9 1 
[93m4453[92m mul R10 R8 R9 
[93m4454[92m swi R10 R14 52 
[0m[94m_t630_133 = str_132 + _t629_133[0m
[93m4455[92m lwi R8 R14 4 
[93m4456[92m lwi R9 R14 52 
[93m4457[92m add R10 R8 R9 
[93m4458[92m swi R10 R14 56 
[0m[94m_t631_133 = #0[0m
[93m4459[92m li R8 0 
[93m4460[92m swi R8 R14 60 
[0m[94m*_t630_133 = _t631_133[0m
[93m4461[92m lwi R8 R14 60 
[93m4462[92m lwi R7 R14 56 
[93m4463[92m sbi R8 R7 0 
[0m[94mgoto label_335[0m
[93m4464[92m jmp label_335 
[0m[94mlabel_336:[0m
[0m[94mstring _t632_132 "Enter the String"[0m
[93m4465[92m subi R12 R12 20 
[93m4466[92m li R8 69 
[93m4467[92m sbi R8 R12 0 
[93m4468[92m li R8 110 
[93m4469[92m sbi R8 R12 1 
[93m4470[92m li R8 116 
[93m4471[92m sbi R8 R12 2 
[93m4472[92m li R8 101 
[93m4473[92m sbi R8 R12 3 
[93m4474[92m li R8 114 
[93m4475[92m sbi R8 R12 4 
[93m4476[92m li R8 32 
[93m4477[92m sbi R8 R12 5 
[93m4478[92m li R8 116 
[93m4479[92m sbi R8 R12 6 
[93m4480[92m li R8 104 
[93m4481[92m sbi R8 R12 7 
[93m4482[92m li R8 101 
[93m4483[92m sbi R8 R12 8 
[93m4484[92m li R8 32 
[93m4485[92m sbi R8 R12 9 
[93m4486[92m li R8 83 
[93m4487[92m sbi R8 R12 10 
[93m4488[92m li R8 116 
[93m4489[92m sbi R8 R12 11 
[93m4490[92m li R8 114 
[93m4491[92m sbi R8 R12 12 
[93m4492[92m li R8 105 
[93m4493[92m sbi R8 R12 13 
[93m4494[92m li R8 110 
[93m4495[92m sbi R8 R12 14 
[93m4496[92m li R8 103 
[93m4497[92m sbi R8 R12 15 
[93m4498[92m sbi R0 R12 16 
[93m4499[92m swi R12 R14 64 
[0m[94mprompt_132 = _t632_132[0m
[93m4500[92m lwi R8 R14 64 
[93m4501[92m swi R8 R14 16 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_132[0m
[93m4502[92m lwi R8 R14 16 
[93m4503[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m4504[92m la R8 label_337 
[93m4505[92m swi R8 R14 -8 
[93m4506[92m addi R14 R14 -52 
[93m4507[92m jmp label_8 
[0m[94mlabel_337:[0m
[0m[94m_t633_132 = ReturnVal[0m
[93m4508[92m lwi R8 R14 -4 
[93m4509[92m swi R8 R14 68 
[0m[94mlen_132 = _t633_132[0m
[93m4510[92m lwi R8 R14 68 
[93m4511[92m swi R8 R14 20 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_132[0m
[93m4512[92m lwi R8 R14 16 
[93m4513[92m swi R8 R14 -16 
[0m[94mparam len_132[0m
[93m4514[92m lwi R8 R14 20 
[93m4515[92m swi R8 R14 -20 
[0m[94m_t634_132 = #1[0m
[93m4516[92m li R8 1 
[93m4517[92m swi R8 R14 72 
[0m[94mparam _t634_132[0m
[93m4518[92m lwi R8 R14 72 
[93m4519[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m4520[92m la R8 label_338 
[93m4521[92m swi R8 R14 -8 
[93m4522[92m addi R14 R14 -180 
[93m4523[92m jmp label_85 
[0m[94mlabel_338:[0m
[0m[94m_t635_132 = ReturnVal[0m
[93m4524[92m lwi R8 R14 -4 
[93m4525[92m swi R8 R14 76 
[0m[94mFunctionCall get_line[0m
[0m[94mcall label_53[0m
[93m4526[92m la R8 label_339 
[93m4527[92m swi R8 R14 -8 
[93m4528[92m addi R14 R14 -164 
[93m4529[92m jmp label_53 
[0m[94mlabel_339:[0m
[0m[94m_t636_132 = ReturnVal[0m
[93m4530[92m lwi R8 R14 -4 
[93m4531[92m swi R8 R14 80 
[0m[94mFunctionCall get_string[0m
[0m[94mparam str_132[0m
[93m4532[92m lwi R8 R14 4 
[93m4533[92m swi R8 R14 -16 
[0m[94mcall label_108[0m
[93m4534[92m la R8 label_340 
[93m4535[92m swi R8 R14 -8 
[93m4536[92m addi R14 R14 -136 
[93m4537[92m jmp label_108 
[0m[94mlabel_340:[0m
[0m[94m_t637_132 = ReturnVal[0m
[93m4538[92m lwi R8 R14 -4 
[93m4539[92m swi R8 R14 84 
[0m[94mclen_132 = _t637_132[0m
[93m4540[92m lwi R8 R14 84 
[93m4541[92m swi R8 R14 12 
[0m[94mstring _t638_132 "The Reverse of "[0m
[93m4542[92m subi R12 R12 16 
[93m4543[92m li R8 84 
[93m4544[92m sbi R8 R12 0 
[93m4545[92m li R8 104 
[93m4546[92m sbi R8 R12 1 
[93m4547[92m li R8 101 
[93m4548[92m sbi R8 R12 2 
[93m4549[92m li R8 32 
[93m4550[92m sbi R8 R12 3 
[93m4551[92m li R8 82 
[93m4552[92m sbi R8 R12 4 
[93m4553[92m li R8 101 
[93m4554[92m sbi R8 R12 5 
[93m4555[92m li R8 118 
[93m4556[92m sbi R8 R12 6 
[93m4557[92m li R8 101 
[93m4558[92m sbi R8 R12 7 
[93m4559[92m li R8 114 
[93m4560[92m sbi R8 R12 8 
[93m4561[92m li R8 115 
[93m4562[92m sbi R8 R12 9 
[93m4563[92m li R8 101 
[93m4564[92m sbi R8 R12 10 
[93m4565[92m li R8 32 
[93m4566[92m sbi R8 R12 11 
[93m4567[92m li R8 111 
[93m4568[92m sbi R8 R12 12 
[93m4569[92m li R8 102 
[93m4570[92m sbi R8 R12 13 
[93m4571[92m li R8 32 
[93m4572[92m sbi R8 R12 14 
[93m4573[92m sbi R0 R12 15 
[93m4574[92m swi R12 R14 88 
[0m[94mprompt_132 = _t638_132[0m
[93m4575[92m lwi R8 R14 88 
[93m4576[92m swi R8 R14 16 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_132[0m
[93m4577[92m lwi R8 R14 16 
[93m4578[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m4579[92m la R8 label_341 
[93m4580[92m swi R8 R14 -8 
[93m4581[92m addi R14 R14 -52 
[93m4582[92m jmp label_8 
[0m[94mlabel_341:[0m
[0m[94m_t639_132 = ReturnVal[0m
[93m4583[92m lwi R8 R14 -4 
[93m4584[92m swi R8 R14 92 
[0m[94mlen_132 = _t639_132[0m
[93m4585[92m lwi R8 R14 92 
[93m4586[92m swi R8 R14 20 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_132[0m
[93m4587[92m lwi R8 R14 16 
[93m4588[92m swi R8 R14 -16 
[0m[94mparam len_132[0m
[93m4589[92m lwi R8 R14 20 
[93m4590[92m swi R8 R14 -20 
[0m[94m_t640_132 = #0[0m
[93m4591[92m li R8 0 
[93m4592[92m swi R8 R14 96 
[0m[94mparam _t640_132[0m
[93m4593[92m lwi R8 R14 96 
[93m4594[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m4595[92m la R8 label_342 
[93m4596[92m swi R8 R14 -8 
[93m4597[92m addi R14 R14 -180 
[93m4598[92m jmp label_85 
[0m[94mlabel_342:[0m
[0m[94m_t641_132 = ReturnVal[0m
[93m4599[92m lwi R8 R14 -4 
[93m4600[92m swi R8 R14 100 
[0m[94mFunctionCall print_string[0m
[0m[94mparam str_132[0m
[93m4601[92m lwi R8 R14 4 
[93m4602[92m swi R8 R14 -16 
[0m[94mparam clen_132[0m
[93m4603[92m lwi R8 R14 12 
[93m4604[92m swi R8 R14 -20 
[0m[94m_t642_132 = #0[0m
[93m4605[92m li R8 0 
[93m4606[92m swi R8 R14 104 
[0m[94mparam _t642_132[0m
[93m4607[92m lwi R8 R14 104 
[93m4608[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m4609[92m la R8 label_343 
[93m4610[92m swi R8 R14 -8 
[93m4611[92m addi R14 R14 -180 
[93m4612[92m jmp label_85 
[0m[94mlabel_343:[0m
[0m[94m_t643_132 = ReturnVal[0m
[93m4613[92m lwi R8 R14 -4 
[93m4614[92m swi R8 R14 108 
[0m[94m_t644_132 = #0[0m
[93m4615[92m li R8 0 
[93m4616[92m swi R8 R14 112 
[0m[94mi_132 = _t644_132[0m
[93m4617[92m lwi R8 R14 112 
[93m4618[92m swi R8 R14 8 
[0m[94m_t645_132 = #1[0m
[93m4619[92m li R8 1 
[93m4620[92m swi R8 R14 116 
[0m[94m_t646_132 = clen_132 - _t645_132[0m
[93m4621[92m lwi R8 R14 12 
[93m4622[92m lwi R9 R14 116 
[93m4623[92m sub R10 R8 R9 
[93m4624[92m swi R10 R14 120 
[0m[94mj_132 = _t646_132[0m
[93m4625[92m lwi R8 R14 120 
[93m4626[92m swi R8 R14 24 
[0m[94mlabel_344:[0m
[0m[94m_t647_134 = i_132 < j_132[0m
[93m4627[92m lwi R8 R14 8 
[93m4628[92m lwi R9 R14 24 
[93m4629[92m lt R10 R8 R9 
[93m4630[92m swi R10 R14 124 
[0m[94mif ( _t647_134 == #0 ) goto label_347[0m
[93m4631[92m lwi R8 R14 124 
[93m4632[92m cmp R8 R0 
[93m4633[92m jeq label_347 
[0m[94mgoto label_345[0m
[93m4634[92m jmp label_345 
[0m[94mlabel_346:[0m
[0m[94mgoto label_344[0m
[93m4635[92m jmp label_344 
[0m[94mlabel_345:[0m
[0m[94m_t648_134 = i_132 * #1[0m
[93m4636[92m lwi R8 R14 8 
[93m4637[92m li R9 1 
[93m4638[92m mul R10 R8 R9 
[93m4639[92m swi R10 R14 128 
[0m[94m_t649_134 = str_132 + _t648_134[0m
[93m4640[92m lwi R8 R14 4 
[93m4641[92m lwi R9 R14 128 
[93m4642[92m add R10 R8 R9 
[93m4643[92m swi R10 R14 132 
[0m[94mtemp_134 = *_t649_134[0m
[93m4644[92m lwi R8 R14 132 
[93m4645[92m lbi R8 R8 0 
[93m4646[92m swi R8 R14 28 
[0m[94m_t650_134 = i_132 * #1[0m
[93m4647[92m lwi R8 R14 8 
[93m4648[92m li R9 1 
[93m4649[92m mul R10 R8 R9 
[93m4650[92m swi R10 R14 136 
[0m[94m_t651_134 = str_132 + _t650_134[0m
[93m4651[92m lwi R8 R14 4 
[93m4652[92m lwi R9 R14 136 
[93m4653[92m add R10 R8 R9 
[93m4654[92m swi R10 R14 140 
[0m[94m_t652_134 = j_132 * #1[0m
[93m4655[92m lwi R8 R14 24 
[93m4656[92m li R9 1 
[93m4657[92m mul R10 R8 R9 
[93m4658[92m swi R10 R14 144 
[0m[94m_t653_134 = str_132 + _t652_134[0m
[93m4659[92m lwi R8 R14 4 
[93m4660[92m lwi R9 R14 144 
[93m4661[92m add R10 R8 R9 
[93m4662[92m swi R10 R14 148 
[0m[94m*_t651_134 = *_t653_134[0m
[93m4663[92m lwi R8 R14 148 
[93m4664[92m lbi R8 R8 0 
[93m4665[92m lwi R7 R14 140 
[93m4666[92m sbi R8 R7 0 
[0m[94m_t654_134 = j_132 * #1[0m
[93m4667[92m lwi R8 R14 24 
[93m4668[92m li R9 1 
[93m4669[92m mul R10 R8 R9 
[93m4670[92m swi R10 R14 152 
[0m[94m_t655_134 = str_132 + _t654_134[0m
[93m4671[92m lwi R8 R14 4 
[93m4672[92m lwi R9 R14 152 
[93m4673[92m add R10 R8 R9 
[93m4674[92m swi R10 R14 156 
[0m[94m*_t655_134 = temp_134[0m
[93m4675[92m lwi R8 R14 28 
[93m4676[92m lwi R7 R14 156 
[93m4677[92m sbi R8 R7 0 
[0m[94m_t656_134 = i_132[0m
[93m4678[92m lwi R8 R14 8 
[93m4679[92m swi R8 R14 160 
[0m[94mi_132 = i_132 + #1[0m
[93m4680[92m lwi R8 R14 8 
[93m4681[92m li R9 1 
[93m4682[92m add R10 R8 R9 
[93m4683[92m swi R10 R14 8 
[0m[94m_t657_134 = j_132[0m
[93m4684[92m lwi R8 R14 24 
[93m4685[92m swi R8 R14 164 
[0m[94mj_132 = j_132 - #1[0m
[93m4686[92m lwi R8 R14 24 
[93m4687[92m li R9 1 
[93m4688[92m sub R10 R8 R9 
[93m4689[92m swi R10 R14 24 
[0m[94mgoto label_346[0m
[93m4690[92m jmp label_346 
[0m[94mlabel_347:[0m
[0m[94mstring _t658_132 " is "[0m
[93m4691[92m subi R12 R12 8 
[93m4692[92m li R8 32 
[93m4693[92m sbi R8 R12 0 
[93m4694[92m li R8 105 
[93m4695[92m sbi R8 R12 1 
[93m4696[92m li R8 115 
[93m4697[92m sbi R8 R12 2 
[93m4698[92m li R8 32 
[93m4699[92m sbi R8 R12 3 
[93m4700[92m sbi R0 R12 4 
[93m4701[92m swi R12 R14 168 
[0m[94mprompt_132 = _t658_132[0m
[93m4702[92m lwi R8 R14 168 
[93m4703[92m swi R8 R14 16 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_132[0m
[93m4704[92m lwi R8 R14 16 
[93m4705[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m4706[92m la R8 label_348 
[93m4707[92m swi R8 R14 -8 
[93m4708[92m addi R14 R14 -52 
[93m4709[92m jmp label_8 
[0m[94mlabel_348:[0m
[0m[94m_t659_132 = ReturnVal[0m
[93m4710[92m lwi R8 R14 -4 
[93m4711[92m swi R8 R14 172 
[0m[94mlen_132 = _t659_132[0m
[93m4712[92m lwi R8 R14 172 
[93m4713[92m swi R8 R14 20 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_132[0m
[93m4714[92m lwi R8 R14 16 
[93m4715[92m swi R8 R14 -16 
[0m[94mparam len_132[0m
[93m4716[92m lwi R8 R14 20 
[93m4717[92m swi R8 R14 -20 
[0m[94m_t660_132 = #0[0m
[93m4718[92m li R8 0 
[93m4719[92m swi R8 R14 176 
[0m[94mparam _t660_132[0m
[93m4720[92m lwi R8 R14 176 
[93m4721[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m4722[92m la R8 label_349 
[93m4723[92m swi R8 R14 -8 
[93m4724[92m addi R14 R14 -180 
[93m4725[92m jmp label_85 
[0m[94mlabel_349:[0m
[0m[94m_t661_132 = ReturnVal[0m
[93m4726[92m lwi R8 R14 -4 
[93m4727[92m swi R8 R14 180 
[0m[94mFunctionCall print_string[0m
[0m[94mparam str_132[0m
[93m4728[92m lwi R8 R14 4 
[93m4729[92m swi R8 R14 -16 
[0m[94mparam clen_132[0m
[93m4730[92m lwi R8 R14 12 
[93m4731[92m swi R8 R14 -20 
[0m[94m_t662_132 = #1[0m
[93m4732[92m li R8 1 
[93m4733[92m swi R8 R14 184 
[0m[94mparam _t662_132[0m
[93m4734[92m lwi R8 R14 184 
[93m4735[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m4736[92m la R8 label_350 
[93m4737[92m swi R8 R14 -8 
[93m4738[92m addi R14 R14 -180 
[93m4739[92m jmp label_85 
[0m[94mlabel_350:[0m
[0m[94m_t663_132 = ReturnVal[0m
[93m4740[92m lwi R8 R14 -4 
[93m4741[92m swi R8 R14 188 
[0m[94m_t664_132 = #0[0m
[93m4742[92m li R8 0 
[93m4743[92m swi R8 R14 192 
[0m[94mReturn _t664_132[0m
[93m4744[92m lwi R8 R14 192 
[93m4745[92m swi R8 R14 204 
[93m4746[92m lwi R12 R14 196 
[93m4747[92m li R8 19008 
[93m4748[92m lwi R9 R14 200 
[93m4749[92m sub R10 R9 R8 
[93m4750[92m addi R14 R14 208 
[93m4751[92m jr R10 
[0m-------------------------------------
Parsing prime
prompt_135 0
len_135 4
n_135 8
b_135 12
i_135 16
_t665_135 20
_t666_135 24
_t667_135 28
_t668_135 32
_t669_135 36
_t670_135 40
_t671_136 44
_t672_136 48
_t673_136 52
_t674_136 56
_t675_136 60
_t676_136 64
_t677_136 68
_t678_136 72
_t679_136 76
_t680_136 80
_t681_136 84
_t682_137 88
_t683_135 92
_t684_135 96
_t685_138 100
_t686_138 104
_t687_138 108
_t688_138 112
_t689_138 116
_t690_138 120
_t691_139 124
_t692_139 128
_t693_139 132
_t694_139 136
_t695_139 140
_t696_139 144
_t697_135 148
[94mlabel_351:[0m
[93m4752[92m swi R12 R14 152 
[0m[94mstring _t665_135 "Enter the number"[0m
[93m4753[92m subi R12 R12 20 
[93m4754[92m li R8 69 
[93m4755[92m sbi R8 R12 0 
[93m4756[92m li R8 110 
[93m4757[92m sbi R8 R12 1 
[93m4758[92m li R8 116 
[93m4759[92m sbi R8 R12 2 
[93m4760[92m li R8 101 
[93m4761[92m sbi R8 R12 3 
[93m4762[92m li R8 114 
[93m4763[92m sbi R8 R12 4 
[93m4764[92m li R8 32 
[93m4765[92m sbi R8 R12 5 
[93m4766[92m li R8 116 
[93m4767[92m sbi R8 R12 6 
[93m4768[92m li R8 104 
[93m4769[92m sbi R8 R12 7 
[93m4770[92m li R8 101 
[93m4771[92m sbi R8 R12 8 
[93m4772[92m li R8 32 
[93m4773[92m sbi R8 R12 9 
[93m4774[92m li R8 110 
[93m4775[92m sbi R8 R12 10 
[93m4776[92m li R8 117 
[93m4777[92m sbi R8 R12 11 
[93m4778[92m li R8 109 
[93m4779[92m sbi R8 R12 12 
[93m4780[92m li R8 98 
[93m4781[92m sbi R8 R12 13 
[93m4782[92m li R8 101 
[93m4783[92m sbi R8 R12 14 
[93m4784[92m li R8 114 
[93m4785[92m sbi R8 R12 15 
[93m4786[92m sbi R0 R12 16 
[93m4787[92m swi R12 R14 20 
[0m[94mprompt_135 = _t665_135[0m
[93m4788[92m lwi R8 R14 20 
[93m4789[92m swi R8 R14 0 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_135[0m
[93m4790[92m lwi R8 R14 0 
[93m4791[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m4792[92m la R8 label_352 
[93m4793[92m swi R8 R14 -8 
[93m4794[92m addi R14 R14 -52 
[93m4795[92m jmp label_8 
[0m[94mlabel_352:[0m
[0m[94m_t666_135 = ReturnVal[0m
[93m4796[92m lwi R8 R14 -4 
[93m4797[92m swi R8 R14 24 
[0m[94mlen_135 = _t666_135[0m
[93m4798[92m lwi R8 R14 24 
[93m4799[92m swi R8 R14 4 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_135[0m
[93m4800[92m lwi R8 R14 0 
[93m4801[92m swi R8 R14 -16 
[0m[94mparam len_135[0m
[93m4802[92m lwi R8 R14 4 
[93m4803[92m swi R8 R14 -20 
[0m[94m_t667_135 = #1[0m
[93m4804[92m li R8 1 
[93m4805[92m swi R8 R14 28 
[0m[94mparam _t667_135[0m
[93m4806[92m lwi R8 R14 28 
[93m4807[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m4808[92m la R8 label_353 
[93m4809[92m swi R8 R14 -8 
[93m4810[92m addi R14 R14 -180 
[93m4811[92m jmp label_85 
[0m[94mlabel_353:[0m
[0m[94m_t668_135 = ReturnVal[0m
[93m4812[92m lwi R8 R14 -4 
[93m4813[92m swi R8 R14 32 
[0m[94mFunctionCall get_num[0m
[0m[94mcall label_118[0m
[93m4814[92m la R8 label_354 
[93m4815[92m swi R8 R14 -8 
[93m4816[92m addi R14 R14 -204 
[93m4817[92m jmp label_118 
[0m[94mlabel_354:[0m
[0m[94m_t669_135 = ReturnVal[0m
[93m4818[92m lwi R8 R14 -4 
[93m4819[92m swi R8 R14 36 
[0m[94mn_135 = _t669_135[0m
[93m4820[92m lwi R8 R14 36 
[93m4821[92m swi R8 R14 8 
[0m[94m_t670_135 = #1[0m
[93m4822[92m li R8 1 
[93m4823[92m swi R8 R14 40 
[0m[94mb_135 = _t670_135[0m
[93m4824[92m lwi R8 R14 40 
[93m4825[92m swi R8 R14 12 
[0m[94m_t671_136 = #2[0m
[93m4826[92m li R8 2 
[93m4827[92m swi R8 R14 44 
[0m[94mi_135 = _t671_136[0m
[93m4828[92m lwi R8 R14 44 
[93m4829[92m swi R8 R14 16 
[0m[94mlabel_355:[0m
[0m[94m_t672_136 = #2[0m
[93m4830[92m li R8 2 
[93m4831[92m swi R8 R14 48 
[0m[94m_t673_136 = n_135 / _t672_136[0m
[93m4832[92m lwi R8 R14 8 
[93m4833[92m lwi R9 R14 48 
[93m4834[92m div R10 R8 R9 
[93m4835[92m swi R10 R14 52 
[0m[94m_t674_136 = i_135 <= _t673_136[0m
[93m4836[92m lwi R8 R14 16 
[93m4837[92m lwi R9 R14 52 
[93m4838[92m le R10 R8 R9 
[93m4839[92m swi R10 R14 56 
[0m[94m_t675_136 = #2[0m
[93m4840[92m li R8 2 
[93m4841[92m swi R8 R14 60 
[0m[94m_t676_136 = n_135 != _t675_136[0m
[93m4842[92m lwi R8 R14 8 
[93m4843[92m lwi R9 R14 60 
[93m4844[92m neq R10 R8 R9 
[93m4845[92m swi R10 R14 64 
[0m[94m_t677_136 = _t674_136 && _t676_136[0m
[93m4846[92m lwi R8 R14 56 
[93m4847[92m lwi R9 R14 64 
[93m4848[92m and R10 R8 R9 
[93m4849[92m swi R10 R14 68 
[0m[94mif ( _t677_136 == #0 ) goto label_358[0m
[93m4850[92m lwi R8 R14 68 
[93m4851[92m cmp R8 R0 
[93m4852[92m jeq label_358 
[0m[94mgoto label_356[0m
[93m4853[92m jmp label_356 
[0m[94mlabel_357:[0m
[0m[94m_t678_136 = i_135[0m
[93m4854[92m lwi R8 R14 16 
[93m4855[92m swi R8 R14 72 
[0m[94mi_135 = i_135 + #1[0m
[93m4856[92m lwi R8 R14 16 
[93m4857[92m li R9 1 
[93m4858[92m add R10 R8 R9 
[93m4859[92m swi R10 R14 16 
[0m[94mgoto label_355[0m
[93m4860[92m jmp label_355 
[0m[94mlabel_356:[0m
[0m[94m_t679_136 = n_135 % i_135[0m
[93m4861[92m lwi R8 R14 8 
[93m4862[92m lwi R9 R14 16 
[93m4863[92m mod R10 R8 R9 
[93m4864[92m swi R10 R14 76 
[0m[94m_t680_136 = #0[0m
[93m4865[92m li R8 0 
[93m4866[92m swi R8 R14 80 
[0m[94m_t681_136 = _t679_136 == _t680_136[0m
[93m4867[92m lwi R8 R14 76 
[93m4868[92m lwi R9 R14 80 
[93m4869[92m eq R10 R8 R9 
[93m4870[92m swi R10 R14 84 
[0m[94mif ( _t681_136 == #0 ) goto label_359[0m
[93m4871[92m lwi R8 R14 84 
[93m4872[92m cmp R8 R0 
[93m4873[92m jeq label_359 
[0m[94m_t682_137 = #0[0m
[93m4874[92m li R8 0 
[93m4875[92m swi R8 R14 88 
[0m[94mb_135 = _t682_137[0m
[93m4876[92m lwi R8 R14 88 
[93m4877[92m swi R8 R14 12 
[0m[94mgoto label_358[0m
[93m4878[92m jmp label_358 
[0m[94mgoto label_360[0m
[93m4879[92m jmp label_360 
[0m[94mlabel_359:[0m
[0m[94mlabel_360:[0m
[0m[94mgoto label_357[0m
[93m4880[92m jmp label_357 
[0m[94mlabel_358:[0m
[0m[94m_t683_135 = #1[0m
[93m4881[92m li R8 1 
[93m4882[92m swi R8 R14 92 
[0m[94m_t684_135 = b_135 == _t683_135[0m
[93m4883[92m lwi R8 R14 12 
[93m4884[92m lwi R9 R14 92 
[93m4885[92m eq R10 R8 R9 
[93m4886[92m swi R10 R14 96 
[0m[94mif ( _t684_135 == #0 ) goto label_361[0m
[93m4887[92m lwi R8 R14 96 
[93m4888[92m cmp R8 R0 
[93m4889[92m jeq label_361 
[0m[94mFunctionCall print_num[0m
[0m[94mparam n_135[0m
[93m4890[92m lwi R8 R14 8 
[93m4891[92m swi R8 R14 -16 
[0m[94m_t685_138 = #0[0m
[93m4892[92m li R8 0 
[93m4893[92m swi R8 R14 100 
[0m[94mparam _t685_138[0m
[93m4894[92m lwi R8 R14 100 
[93m4895[92m swi R8 R14 -20 
[0m[94mcall label_139[0m
[93m4896[92m la R8 label_363 
[93m4897[92m swi R8 R14 -8 
[93m4898[92m addi R14 R14 -152 
[93m4899[92m jmp label_139 
[0m[94mlabel_363:[0m
[0m[94m_t686_138 = ReturnVal[0m
[93m4900[92m lwi R8 R14 -4 
[93m4901[92m swi R8 R14 104 
[0m[94mstring _t687_138 " is a prime number"[0m
[93m4902[92m subi R12 R12 20 
[93m4903[92m li R8 32 
[93m4904[92m sbi R8 R12 0 
[93m4905[92m li R8 105 
[93m4906[92m sbi R8 R12 1 
[93m4907[92m li R8 115 
[93m4908[92m sbi R8 R12 2 
[93m4909[92m li R8 32 
[93m4910[92m sbi R8 R12 3 
[93m4911[92m li R8 97 
[93m4912[92m sbi R8 R12 4 
[93m4913[92m li R8 32 
[93m4914[92m sbi R8 R12 5 
[93m4915[92m li R8 112 
[93m4916[92m sbi R8 R12 6 
[93m4917[92m li R8 114 
[93m4918[92m sbi R8 R12 7 
[93m4919[92m li R8 105 
[93m4920[92m sbi R8 R12 8 
[93m4921[92m li R8 109 
[93m4922[92m sbi R8 R12 9 
[93m4923[92m li R8 101 
[93m4924[92m sbi R8 R12 10 
[93m4925[92m li R8 32 
[93m4926[92m sbi R8 R12 11 
[93m4927[92m li R8 110 
[93m4928[92m sbi R8 R12 12 
[93m4929[92m li R8 117 
[93m4930[92m sbi R8 R12 13 
[93m4931[92m li R8 109 
[93m4932[92m sbi R8 R12 14 
[93m4933[92m li R8 98 
[93m4934[92m sbi R8 R12 15 
[93m4935[92m li R8 101 
[93m4936[92m sbi R8 R12 16 
[93m4937[92m li R8 114 
[93m4938[92m sbi R8 R12 17 
[93m4939[92m sbi R0 R12 18 
[93m4940[92m swi R12 R14 108 
[0m[94mprompt_135 = _t687_138[0m
[93m4941[92m lwi R8 R14 108 
[93m4942[92m swi R8 R14 0 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_135[0m
[93m4943[92m lwi R8 R14 0 
[93m4944[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m4945[92m la R8 label_364 
[93m4946[92m swi R8 R14 -8 
[93m4947[92m addi R14 R14 -52 
[93m4948[92m jmp label_8 
[0m[94mlabel_364:[0m
[0m[94m_t688_138 = ReturnVal[0m
[93m4949[92m lwi R8 R14 -4 
[93m4950[92m swi R8 R14 112 
[0m[94mlen_135 = _t688_138[0m
[93m4951[92m lwi R8 R14 112 
[93m4952[92m swi R8 R14 4 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_135[0m
[93m4953[92m lwi R8 R14 0 
[93m4954[92m swi R8 R14 -16 
[0m[94mparam len_135[0m
[93m4955[92m lwi R8 R14 4 
[93m4956[92m swi R8 R14 -20 
[0m[94m_t689_138 = #1[0m
[93m4957[92m li R8 1 
[93m4958[92m swi R8 R14 116 
[0m[94mparam _t689_138[0m
[93m4959[92m lwi R8 R14 116 
[93m4960[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m4961[92m la R8 label_365 
[93m4962[92m swi R8 R14 -8 
[93m4963[92m addi R14 R14 -180 
[93m4964[92m jmp label_85 
[0m[94mlabel_365:[0m
[0m[94m_t690_138 = ReturnVal[0m
[93m4965[92m lwi R8 R14 -4 
[93m4966[92m swi R8 R14 120 
[0m[94mgoto label_362[0m
[93m4967[92m jmp label_362 
[0m[94mlabel_361:[0m
[0m[94mFunctionCall print_num[0m
[0m[94mparam n_135[0m
[93m4968[92m lwi R8 R14 8 
[93m4969[92m swi R8 R14 -16 
[0m[94m_t691_139 = #0[0m
[93m4970[92m li R8 0 
[93m4971[92m swi R8 R14 124 
[0m[94mparam _t691_139[0m
[93m4972[92m lwi R8 R14 124 
[93m4973[92m swi R8 R14 -20 
[0m[94mcall label_139[0m
[93m4974[92m la R8 label_366 
[93m4975[92m swi R8 R14 -8 
[93m4976[92m addi R14 R14 -152 
[93m4977[92m jmp label_139 
[0m[94mlabel_366:[0m
[0m[94m_t692_139 = ReturnVal[0m
[93m4978[92m lwi R8 R14 -4 
[93m4979[92m swi R8 R14 128 
[0m[94mstring _t693_139 " is not a prime number"[0m
[93m4980[92m subi R12 R12 24 
[93m4981[92m li R8 32 
[93m4982[92m sbi R8 R12 0 
[93m4983[92m li R8 105 
[93m4984[92m sbi R8 R12 1 
[93m4985[92m li R8 115 
[93m4986[92m sbi R8 R12 2 
[93m4987[92m li R8 32 
[93m4988[92m sbi R8 R12 3 
[93m4989[92m li R8 110 
[93m4990[92m sbi R8 R12 4 
[93m4991[92m li R8 111 
[93m4992[92m sbi R8 R12 5 
[93m4993[92m li R8 116 
[93m4994[92m sbi R8 R12 6 
[93m4995[92m li R8 32 
[93m4996[92m sbi R8 R12 7 
[93m4997[92m li R8 97 
[93m4998[92m sbi R8 R12 8 
[93m4999[92m li R8 32 
[93m5000[92m sbi R8 R12 9 
[93m5001[92m li R8 112 
[93m5002[92m sbi R8 R12 10 
[93m5003[92m li R8 114 
[93m5004[92m sbi R8 R12 11 
[93m5005[92m li R8 105 
[93m5006[92m sbi R8 R12 12 
[93m5007[92m li R8 109 
[93m5008[92m sbi R8 R12 13 
[93m5009[92m li R8 101 
[93m5010[92m sbi R8 R12 14 
[93m5011[92m li R8 32 
[93m5012[92m sbi R8 R12 15 
[93m5013[92m li R8 110 
[93m5014[92m sbi R8 R12 16 
[93m5015[92m li R8 117 
[93m5016[92m sbi R8 R12 17 
[93m5017[92m li R8 109 
[93m5018[92m sbi R8 R12 18 
[93m5019[92m li R8 98 
[93m5020[92m sbi R8 R12 19 
[93m5021[92m li R8 101 
[93m5022[92m sbi R8 R12 20 
[93m5023[92m li R8 114 
[93m5024[92m sbi R8 R12 21 
[93m5025[92m sbi R0 R12 22 
[93m5026[92m swi R12 R14 132 
[0m[94mprompt_135 = _t693_139[0m
[93m5027[92m lwi R8 R14 132 
[93m5028[92m swi R8 R14 0 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_135[0m
[93m5029[92m lwi R8 R14 0 
[93m5030[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m5031[92m la R8 label_367 
[93m5032[92m swi R8 R14 -8 
[93m5033[92m addi R14 R14 -52 
[93m5034[92m jmp label_8 
[0m[94mlabel_367:[0m
[0m[94m_t694_139 = ReturnVal[0m
[93m5035[92m lwi R8 R14 -4 
[93m5036[92m swi R8 R14 136 
[0m[94mlen_135 = _t694_139[0m
[93m5037[92m lwi R8 R14 136 
[93m5038[92m swi R8 R14 4 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_135[0m
[93m5039[92m lwi R8 R14 0 
[93m5040[92m swi R8 R14 -16 
[0m[94mparam len_135[0m
[93m5041[92m lwi R8 R14 4 
[93m5042[92m swi R8 R14 -20 
[0m[94m_t695_139 = #1[0m
[93m5043[92m li R8 1 
[93m5044[92m swi R8 R14 140 
[0m[94mparam _t695_139[0m
[93m5045[92m lwi R8 R14 140 
[93m5046[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m5047[92m la R8 label_368 
[93m5048[92m swi R8 R14 -8 
[93m5049[92m addi R14 R14 -180 
[93m5050[92m jmp label_85 
[0m[94mlabel_368:[0m
[0m[94m_t696_139 = ReturnVal[0m
[93m5051[92m lwi R8 R14 -4 
[93m5052[92m swi R8 R14 144 
[0m[94mlabel_362:[0m
[0m[94m_t697_135 = #0[0m
[93m5053[92m li R8 0 
[93m5054[92m swi R8 R14 148 
[0m[94mReturn _t697_135[0m
[93m5055[92m lwi R8 R14 148 
[93m5056[92m swi R8 R14 160 
[93m5057[92m lwi R12 R14 152 
[93m5058[92m li R8 20252 
[93m5059[92m lwi R9 R14 156 
[93m5060[92m sub R10 R9 R8 
[93m5061[92m addi R14 R14 164 
[93m5062[92m jr R10 
[0m-------------------------------------
Parsing partition
arr_140 156
low_140 152
high_140 148
pivot_140 0
i_140 4
j_140 8
temp_142 12
t_140 16
_t698_140 20
_t699_140 24
_t700_140 28
_t701_140 32
_t702_141 36
_t703_141 40
_t704_141 44
_t705_141 48
_t706_141 52
_t707_142 56
_t708_142 60
_t709_142 64
_t710_142 68
_t711_142 72
_t712_142 76
_t713_142 80
_t714_142 84
_t715_142 88
_t716_140 92
_t717_140 96
_t718_140 100
_t719_140 104
_t720_140 108
_t721_140 112
_t722_140 116
_t723_140 120
_t724_140 124
_t725_140 128
_t726_140 132
_t727_140 136
_t728_140 140
_t729_140 144
[94mlabel_369:[0m
[93m5063[92m swi R12 R14 160 
[0m[94m_t698_140 = high_140 * #4[0m
[93m5064[92m lwi R8 R14 148 
[93m5065[92m li R9 4 
[93m5066[92m mul R10 R8 R9 
[93m5067[92m swi R10 R14 20 
[0m[94m_t699_140 = arr_140 + _t698_140[0m
[93m5068[92m lwi R8 R14 156 
[93m5069[92m lwi R9 R14 20 
[93m5070[92m add R10 R8 R9 
[93m5071[92m swi R10 R14 24 
[0m[94mpivot_140 = *_t699_140[0m
[93m5072[92m lwi R8 R14 24 
[93m5073[92m lwi R8 R8 0 
[93m5074[92m swi R8 R14 0 
[0m[94m_t700_140 = #1[0m
[93m5075[92m li R8 1 
[93m5076[92m swi R8 R14 28 
[0m[94m_t701_140 = low_140 - _t700_140[0m
[93m5077[92m lwi R8 R14 152 
[93m5078[92m lwi R9 R14 28 
[93m5079[92m sub R10 R8 R9 
[93m5080[92m swi R10 R14 32 
[0m[94mi_140 = _t701_140[0m
[93m5081[92m lwi R8 R14 32 
[93m5082[92m swi R8 R14 4 
[0m[94mj_140 = low_140[0m
[93m5083[92m lwi R8 R14 152 
[93m5084[92m swi R8 R14 8 
[0m[94mlabel_370:[0m
[0m[94m_t702_141 = j_140 <= high_140[0m
[93m5085[92m lwi R8 R14 8 
[93m5086[92m lwi R9 R14 148 
[93m5087[92m le R10 R8 R9 
[93m5088[92m swi R10 R14 36 
[0m[94mif ( _t702_141 == #0 ) goto label_373[0m
[93m5089[92m lwi R8 R14 36 
[93m5090[92m cmp R8 R0 
[93m5091[92m jeq label_373 
[0m[94mgoto label_371[0m
[93m5092[92m jmp label_371 
[0m[94mlabel_372:[0m
[0m[94m_t703_141 = j_140[0m
[93m5093[92m lwi R8 R14 8 
[93m5094[92m swi R8 R14 40 
[0m[94mj_140 = j_140 + #1[0m
[93m5095[92m lwi R8 R14 8 
[93m5096[92m li R9 1 
[93m5097[92m add R10 R8 R9 
[93m5098[92m swi R10 R14 8 
[0m[94mgoto label_370[0m
[93m5099[92m jmp label_370 
[0m[94mlabel_371:[0m
[0m[94m_t704_141 = j_140 * #4[0m
[93m5100[92m lwi R8 R14 8 
[93m5101[92m li R9 4 
[93m5102[92m mul R10 R8 R9 
[93m5103[92m swi R10 R14 44 
[0m[94m_t705_141 = arr_140 + _t704_141[0m
[93m5104[92m lwi R8 R14 156 
[93m5105[92m lwi R9 R14 44 
[93m5106[92m add R10 R8 R9 
[93m5107[92m swi R10 R14 48 
[0m[94m_t706_141 = *_t705_141 < pivot_140[0m
[93m5108[92m lwi R8 R14 48 
[93m5109[92m lwi R8 R8 0 
[93m5110[92m lwi R9 R14 0 
[93m5111[92m lt R10 R8 R9 
[93m5112[92m swi R10 R14 52 
[0m[94mif ( _t706_141 == #0 ) goto label_374[0m
[93m5113[92m lwi R8 R14 52 
[93m5114[92m cmp R8 R0 
[93m5115[92m jeq label_374 
[0m[94m_t707_142 = i_140[0m
[93m5116[92m lwi R8 R14 4 
[93m5117[92m swi R8 R14 56 
[0m[94mi_140 = i_140 + #1[0m
[93m5118[92m lwi R8 R14 4 
[93m5119[92m li R9 1 
[93m5120[92m add R10 R8 R9 
[93m5121[92m swi R10 R14 4 
[0m[94m_t708_142 = i_140 * #4[0m
[93m5122[92m lwi R8 R14 4 
[93m5123[92m li R9 4 
[93m5124[92m mul R10 R8 R9 
[93m5125[92m swi R10 R14 60 
[0m[94m_t709_142 = arr_140 + _t708_142[0m
[93m5126[92m lwi R8 R14 156 
[93m5127[92m lwi R9 R14 60 
[93m5128[92m add R10 R8 R9 
[93m5129[92m swi R10 R14 64 
[0m[94mtemp_142 = *_t709_142[0m
[93m5130[92m lwi R8 R14 64 
[93m5131[92m lwi R8 R8 0 
[93m5132[92m swi R8 R14 12 
[0m[94m_t710_142 = i_140 * #4[0m
[93m5133[92m lwi R8 R14 4 
[93m5134[92m li R9 4 
[93m5135[92m mul R10 R8 R9 
[93m5136[92m swi R10 R14 68 
[0m[94m_t711_142 = arr_140 + _t710_142[0m
[93m5137[92m lwi R8 R14 156 
[93m5138[92m lwi R9 R14 68 
[93m5139[92m add R10 R8 R9 
[93m5140[92m swi R10 R14 72 
[0m[94m_t712_142 = j_140 * #4[0m
[93m5141[92m lwi R8 R14 8 
[93m5142[92m li R9 4 
[93m5143[92m mul R10 R8 R9 
[93m5144[92m swi R10 R14 76 
[0m[94m_t713_142 = arr_140 + _t712_142[0m
[93m5145[92m lwi R8 R14 156 
[93m5146[92m lwi R9 R14 76 
[93m5147[92m add R10 R8 R9 
[93m5148[92m swi R10 R14 80 
[0m[94m*_t711_142 = *_t713_142[0m
[93m5149[92m lwi R8 R14 80 
[93m5150[92m lwi R8 R8 0 
[93m5151[92m lwi R7 R14 72 
[93m5152[92m swi R8 R7 0 
[0m[94m_t714_142 = j_140 * #4[0m
[93m5153[92m lwi R8 R14 8 
[93m5154[92m li R9 4 
[93m5155[92m mul R10 R8 R9 
[93m5156[92m swi R10 R14 84 
[0m[94m_t715_142 = arr_140 + _t714_142[0m
[93m5157[92m lwi R8 R14 156 
[93m5158[92m lwi R9 R14 84 
[93m5159[92m add R10 R8 R9 
[93m5160[92m swi R10 R14 88 
[0m[94m*_t715_142 = temp_142[0m
[93m5161[92m lwi R8 R14 12 
[93m5162[92m lwi R7 R14 88 
[93m5163[92m swi R8 R7 0 
[0m[94mgoto label_375[0m
[93m5164[92m jmp label_375 
[0m[94mlabel_374:[0m
[0m[94mlabel_375:[0m
[0m[94mgoto label_372[0m
[93m5165[92m jmp label_372 
[0m[94mlabel_373:[0m
[0m[94m_t716_140 = #1[0m
[93m5166[92m li R8 1 
[93m5167[92m swi R8 R14 92 
[0m[94m_t717_140 = i_140 + _t716_140[0m
[93m5168[92m lwi R8 R14 4 
[93m5169[92m lwi R9 R14 92 
[93m5170[92m add R10 R8 R9 
[93m5171[92m swi R10 R14 96 
[0m[94m_t718_140 = _t717_140 * #4[0m
[93m5172[92m lwi R8 R14 96 
[93m5173[92m li R9 4 
[93m5174[92m mul R10 R8 R9 
[93m5175[92m swi R10 R14 100 
[0m[94m_t719_140 = arr_140 + _t718_140[0m
[93m5176[92m lwi R8 R14 156 
[93m5177[92m lwi R9 R14 100 
[93m5178[92m add R10 R8 R9 
[93m5179[92m swi R10 R14 104 
[0m[94mt_140 = *_t719_140[0m
[93m5180[92m lwi R8 R14 104 
[93m5181[92m lwi R8 R8 0 
[93m5182[92m swi R8 R14 16 
[0m[94m_t720_140 = #1[0m
[93m5183[92m li R8 1 
[93m5184[92m swi R8 R14 108 
[0m[94m_t721_140 = i_140 + _t720_140[0m
[93m5185[92m lwi R8 R14 4 
[93m5186[92m lwi R9 R14 108 
[93m5187[92m add R10 R8 R9 
[93m5188[92m swi R10 R14 112 
[0m[94m_t722_140 = _t721_140 * #4[0m
[93m5189[92m lwi R8 R14 112 
[93m5190[92m li R9 4 
[93m5191[92m mul R10 R8 R9 
[93m5192[92m swi R10 R14 116 
[0m[94m_t723_140 = arr_140 + _t722_140[0m
[93m5193[92m lwi R8 R14 156 
[93m5194[92m lwi R9 R14 116 
[93m5195[92m add R10 R8 R9 
[93m5196[92m swi R10 R14 120 
[0m[94m_t724_140 = high_140 * #4[0m
[93m5197[92m lwi R8 R14 148 
[93m5198[92m li R9 4 
[93m5199[92m mul R10 R8 R9 
[93m5200[92m swi R10 R14 124 
[0m[94m_t725_140 = arr_140 + _t724_140[0m
[93m5201[92m lwi R8 R14 156 
[93m5202[92m lwi R9 R14 124 
[93m5203[92m add R10 R8 R9 
[93m5204[92m swi R10 R14 128 
[0m[94m*_t723_140 = *_t725_140[0m
[93m5205[92m lwi R8 R14 128 
[93m5206[92m lwi R8 R8 0 
[93m5207[92m lwi R7 R14 120 
[93m5208[92m swi R8 R7 0 
[0m[94m_t726_140 = high_140 * #4[0m
[93m5209[92m lwi R8 R14 148 
[93m5210[92m li R9 4 
[93m5211[92m mul R10 R8 R9 
[93m5212[92m swi R10 R14 132 
[0m[94m_t727_140 = arr_140 + _t726_140[0m
[93m5213[92m lwi R8 R14 156 
[93m5214[92m lwi R9 R14 132 
[93m5215[92m add R10 R8 R9 
[93m5216[92m swi R10 R14 136 
[0m[94m*_t727_140 = t_140[0m
[93m5217[92m lwi R8 R14 16 
[93m5218[92m lwi R7 R14 136 
[93m5219[92m swi R8 R7 0 
[0m[94m_t728_140 = #1[0m
[93m5220[92m li R8 1 
[93m5221[92m swi R8 R14 140 
[0m[94m_t729_140 = i_140 + _t728_140[0m
[93m5222[92m lwi R8 R14 4 
[93m5223[92m lwi R9 R14 140 
[93m5224[92m add R10 R8 R9 
[93m5225[92m swi R10 R14 144 
[0m[94mReturn _t729_140[0m
[93m5226[92m lwi R8 R14 144 
[93m5227[92m swi R8 R14 168 
[93m5228[92m lwi R12 R14 160 
[93m5229[92m li R8 20936 
[93m5230[92m lwi R9 R14 164 
[93m5231[92m sub R10 R9 R8 
[93m5232[92m addi R14 R14 172 
[93m5233[92m jr R10 
[0m-------------------------------------
Parsing quick_sort
arr_143 48
low_143 44
high_143 40
pi_144 0
_t730_143 4
_t731_144 8
_t732_144 12
_t733_144 16
_t734_144 20
_t735_144 24
_t736_144 28
_t737_144 32
_t738_143 36
[94mlabel_376:[0m
[93m5234[92m swi R12 R14 52 
[0m[94m_t730_143 = low_143 < high_143[0m
[93m5235[92m lwi R8 R14 44 
[93m5236[92m lwi R9 R14 40 
[93m5237[92m lt R10 R8 R9 
[93m5238[92m swi R10 R14 4 
[0m[94mif ( _t730_143 == #0 ) goto label_377[0m
[93m5239[92m lwi R8 R14 4 
[93m5240[92m cmp R8 R0 
[93m5241[92m jeq label_377 
[0m[94mFunctionCall partition[0m
[0m[94mparam arr_143[0m
[93m5242[92m lwi R8 R14 48 
[93m5243[92m swi R8 R14 -16 
[0m[94mparam low_143[0m
[93m5244[92m lwi R8 R14 44 
[93m5245[92m swi R8 R14 -20 
[0m[94mparam high_143[0m
[93m5246[92m lwi R8 R14 40 
[93m5247[92m swi R8 R14 -24 
[0m[94mcall label_369[0m
[93m5248[92m la R8 label_379 
[93m5249[92m swi R8 R14 -8 
[93m5250[92m addi R14 R14 -172 
[93m5251[92m jmp label_369 
[0m[94mlabel_379:[0m
[0m[94m_t731_144 = ReturnVal[0m
[93m5252[92m lwi R8 R14 -4 
[93m5253[92m swi R8 R14 8 
[0m[94mpi_144 = _t731_144[0m
[93m5254[92m lwi R8 R14 8 
[93m5255[92m swi R8 R14 0 
[0m[94mFunctionCall quick_sort[0m
[0m[94mparam arr_143[0m
[93m5256[92m lwi R8 R14 48 
[93m5257[92m swi R8 R14 -16 
[0m[94mparam low_143[0m
[93m5258[92m lwi R8 R14 44 
[93m5259[92m swi R8 R14 -20 
[0m[94m_t732_144 = #1[0m
[93m5260[92m li R8 1 
[93m5261[92m swi R8 R14 12 
[0m[94m_t733_144 = pi_144 - _t732_144[0m
[93m5262[92m lwi R8 R14 0 
[93m5263[92m lwi R9 R14 12 
[93m5264[92m sub R10 R8 R9 
[93m5265[92m swi R10 R14 16 
[0m[94mparam _t733_144[0m
[93m5266[92m lwi R8 R14 16 
[93m5267[92m swi R8 R14 -24 
[0m[94mcall label_376[0m
[93m5268[92m la R8 label_380 
[93m5269[92m swi R8 R14 -8 
[93m5270[92m addi R14 R14 -64 
[93m5271[92m jmp label_376 
[0m[94mlabel_380:[0m
[0m[94m_t734_144 = ReturnVal[0m
[93m5272[92m lwi R8 R14 -4 
[93m5273[92m swi R8 R14 20 
[0m[94mFunctionCall quick_sort[0m
[0m[94mparam arr_143[0m
[93m5274[92m lwi R8 R14 48 
[93m5275[92m swi R8 R14 -16 
[0m[94m_t735_144 = #1[0m
[93m5276[92m li R8 1 
[93m5277[92m swi R8 R14 24 
[0m[94m_t736_144 = pi_144 + _t735_144[0m
[93m5278[92m lwi R8 R14 0 
[93m5279[92m lwi R9 R14 24 
[93m5280[92m add R10 R8 R9 
[93m5281[92m swi R10 R14 28 
[0m[94mparam _t736_144[0m
[93m5282[92m lwi R8 R14 28 
[93m5283[92m swi R8 R14 -20 
[0m[94mparam high_143[0m
[93m5284[92m lwi R8 R14 40 
[93m5285[92m swi R8 R14 -24 
[0m[94mcall label_376[0m
[93m5286[92m la R8 label_381 
[93m5287[92m swi R8 R14 -8 
[93m5288[92m addi R14 R14 -64 
[93m5289[92m jmp label_376 
[0m[94mlabel_381:[0m
[0m[94m_t737_144 = ReturnVal[0m
[93m5290[92m lwi R8 R14 -4 
[93m5291[92m swi R8 R14 32 
[0m[94mgoto label_378[0m
[93m5292[92m jmp label_378 
[0m[94mlabel_377:[0m
[0m[94mlabel_378:[0m
[0m[94m_t738_143 = #0[0m
[93m5293[92m li R8 0 
[93m5294[92m swi R8 R14 36 
[0m[94mReturn _t738_143[0m
[93m5295[92m lwi R8 R14 36 
[93m5296[92m swi R8 R14 60 
[93m5297[92m lwi R12 R14 52 
[93m5298[92m li R8 21212 
[93m5299[92m lwi R9 R14 56 
[93m5300[92m sub R10 R9 R8 
[93m5301[92m addi R14 R14 64 
[93m5302[92m jr R10 
[0m-------------------------------------
Parsing sort
n_145 0
prompt_145 4
len_145 8
arr_0_145 12
arr_145 16
i_145 20
_t739_145 24
_t740_145 28
_t741_145 32
_t742_145 36
_t743_145 40
_t744_145 44
_t745_145 48
_t746_145 52
_t747_145 56
_t748_146 60
_t749_146 64
_t750_146 68
_t751_146 72
_t752_146 76
_t753_146 80
_t754_145 84
_t755_145 88
_t756_145 92
_t757_145 96
_t758_145 100
_t759_145 104
_t760_145 108
_t761_145 112
_t762_145 116
_t763_145 120
_t764_147 124
_t765_147 128
_t766_147 132
_t767_147 136
_t768_147 140
_t769_147 144
_t770_147 148
_t771_147 152
_t772_147 156
_t773_145 160
_t774_145 164
_t775_145 168
[94mlabel_382:[0m
[93m5303[92m swi R12 R14 172 
[0m[94mstring _t739_145 "Enter the number of elements"[0m
[93m5304[92m subi R12 R12 32 
[93m5305[92m li R8 69 
[93m5306[92m sbi R8 R12 0 
[93m5307[92m li R8 110 
[93m5308[92m sbi R8 R12 1 
[93m5309[92m li R8 116 
[93m5310[92m sbi R8 R12 2 
[93m5311[92m li R8 101 
[93m5312[92m sbi R8 R12 3 
[93m5313[92m li R8 114 
[93m5314[92m sbi R8 R12 4 
[93m5315[92m li R8 32 
[93m5316[92m sbi R8 R12 5 
[93m5317[92m li R8 116 
[93m5318[92m sbi R8 R12 6 
[93m5319[92m li R8 104 
[93m5320[92m sbi R8 R12 7 
[93m5321[92m li R8 101 
[93m5322[92m sbi R8 R12 8 
[93m5323[92m li R8 32 
[93m5324[92m sbi R8 R12 9 
[93m5325[92m li R8 110 
[93m5326[92m sbi R8 R12 10 
[93m5327[92m li R8 117 
[93m5328[92m sbi R8 R12 11 
[93m5329[92m li R8 109 
[93m5330[92m sbi R8 R12 12 
[93m5331[92m li R8 98 
[93m5332[92m sbi R8 R12 13 
[93m5333[92m li R8 101 
[93m5334[92m sbi R8 R12 14 
[93m5335[92m li R8 114 
[93m5336[92m sbi R8 R12 15 
[93m5337[92m li R8 32 
[93m5338[92m sbi R8 R12 16 
[93m5339[92m li R8 111 
[93m5340[92m sbi R8 R12 17 
[93m5341[92m li R8 102 
[93m5342[92m sbi R8 R12 18 
[93m5343[92m li R8 32 
[93m5344[92m sbi R8 R12 19 
[93m5345[92m li R8 101 
[93m5346[92m sbi R8 R12 20 
[93m5347[92m li R8 108 
[93m5348[92m sbi R8 R12 21 
[93m5349[92m li R8 101 
[93m5350[92m sbi R8 R12 22 
[93m5351[92m li R8 109 
[93m5352[92m sbi R8 R12 23 
[93m5353[92m li R8 101 
[93m5354[92m sbi R8 R12 24 
[93m5355[92m li R8 110 
[93m5356[92m sbi R8 R12 25 
[93m5357[92m li R8 116 
[93m5358[92m sbi R8 R12 26 
[93m5359[92m li R8 115 
[93m5360[92m sbi R8 R12 27 
[93m5361[92m sbi R0 R12 28 
[93m5362[92m swi R12 R14 24 
[0m[94mprompt_145 = _t739_145[0m
[93m5363[92m lwi R8 R14 24 
[93m5364[92m swi R8 R14 4 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_145[0m
[93m5365[92m lwi R8 R14 4 
[93m5366[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m5367[92m la R8 label_383 
[93m5368[92m swi R8 R14 -8 
[93m5369[92m addi R14 R14 -52 
[93m5370[92m jmp label_8 
[0m[94mlabel_383:[0m
[0m[94m_t740_145 = ReturnVal[0m
[93m5371[92m lwi R8 R14 -4 
[93m5372[92m swi R8 R14 28 
[0m[94mlen_145 = _t740_145[0m
[93m5373[92m lwi R8 R14 28 
[93m5374[92m swi R8 R14 8 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_145[0m
[93m5375[92m lwi R8 R14 4 
[93m5376[92m swi R8 R14 -16 
[0m[94mparam len_145[0m
[93m5377[92m lwi R8 R14 8 
[93m5378[92m swi R8 R14 -20 
[0m[94m_t741_145 = #1[0m
[93m5379[92m li R8 1 
[93m5380[92m swi R8 R14 32 
[0m[94mparam _t741_145[0m
[93m5381[92m lwi R8 R14 32 
[93m5382[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m5383[92m la R8 label_384 
[93m5384[92m swi R8 R14 -8 
[93m5385[92m addi R14 R14 -180 
[93m5386[92m jmp label_85 
[0m[94mlabel_384:[0m
[0m[94m_t742_145 = ReturnVal[0m
[93m5387[92m lwi R8 R14 -4 
[93m5388[92m swi R8 R14 36 
[0m[94mFunctionCall get_num[0m
[0m[94mcall label_118[0m
[93m5389[92m la R8 label_385 
[93m5390[92m swi R8 R14 -8 
[93m5391[92m addi R14 R14 -204 
[93m5392[92m jmp label_118 
[0m[94mlabel_385:[0m
[0m[94m_t743_145 = ReturnVal[0m
[93m5393[92m lwi R8 R14 -4 
[93m5394[92m swi R8 R14 40 
[0m[94mn_145 = _t743_145[0m
[93m5395[92m lwi R8 R14 40 
[93m5396[92m swi R8 R14 0 
[0m[94mstring _t744_145 "Enter the elements"[0m
[93m5397[92m subi R12 R12 20 
[93m5398[92m li R8 69 
[93m5399[92m sbi R8 R12 0 
[93m5400[92m li R8 110 
[93m5401[92m sbi R8 R12 1 
[93m5402[92m li R8 116 
[93m5403[92m sbi R8 R12 2 
[93m5404[92m li R8 101 
[93m5405[92m sbi R8 R12 3 
[93m5406[92m li R8 114 
[93m5407[92m sbi R8 R12 4 
[93m5408[92m li R8 32 
[93m5409[92m sbi R8 R12 5 
[93m5410[92m li R8 116 
[93m5411[92m sbi R8 R12 6 
[93m5412[92m li R8 104 
[93m5413[92m sbi R8 R12 7 
[93m5414[92m li R8 101 
[93m5415[92m sbi R8 R12 8 
[93m5416[92m li R8 32 
[93m5417[92m sbi R8 R12 9 
[93m5418[92m li R8 101 
[93m5419[92m sbi R8 R12 10 
[93m5420[92m li R8 108 
[93m5421[92m sbi R8 R12 11 
[93m5422[92m li R8 101 
[93m5423[92m sbi R8 R12 12 
[93m5424[92m li R8 109 
[93m5425[92m sbi R8 R12 13 
[93m5426[92m li R8 101 
[93m5427[92m sbi R8 R12 14 
[93m5428[92m li R8 110 
[93m5429[92m sbi R8 R12 15 
[93m5430[92m li R8 116 
[93m5431[92m sbi R8 R12 16 
[93m5432[92m li R8 115 
[93m5433[92m sbi R8 R12 17 
[93m5434[92m sbi R0 R12 18 
[93m5435[92m swi R12 R14 44 
[0m[94mprompt_145 = _t744_145[0m
[93m5436[92m lwi R8 R14 44 
[93m5437[92m swi R8 R14 4 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_145[0m
[93m5438[92m lwi R8 R14 4 
[93m5439[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m5440[92m la R8 label_386 
[93m5441[92m swi R8 R14 -8 
[93m5442[92m addi R14 R14 -52 
[93m5443[92m jmp label_8 
[0m[94mlabel_386:[0m
[0m[94m_t745_145 = ReturnVal[0m
[93m5444[92m lwi R8 R14 -4 
[93m5445[92m swi R8 R14 48 
[0m[94mlen_145 = _t745_145[0m
[93m5446[92m lwi R8 R14 48 
[93m5447[92m swi R8 R14 8 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_145[0m
[93m5448[92m lwi R8 R14 4 
[93m5449[92m swi R8 R14 -16 
[0m[94mparam len_145[0m
[93m5450[92m lwi R8 R14 8 
[93m5451[92m swi R8 R14 -20 
[0m[94m_t746_145 = #1[0m
[93m5452[92m li R8 1 
[93m5453[92m swi R8 R14 52 
[0m[94mparam _t746_145[0m
[93m5454[92m lwi R8 R14 52 
[93m5455[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m5456[92m la R8 label_387 
[93m5457[92m swi R8 R14 -8 
[93m5458[92m addi R14 R14 -180 
[93m5459[92m jmp label_85 
[0m[94mlabel_387:[0m
[0m[94m_t747_145 = ReturnVal[0m
[93m5460[92m lwi R8 R14 -4 
[93m5461[92m swi R8 R14 56 
[0m[94marr_0_145 = n_145[0m
[93m5462[92m lwi R8 R14 0 
[93m5463[92m swi R8 R14 12 
[0m[94mmemory arr_145 n_145 #4[0m
[93m5464[92m lwi R8 R14 0 
[93m5465[92m li R9 4 
[93m5466[92m mul R10 R8 R9 
[93m5467[92m modi R8 R10 4 
[93m5468[92m li R9 4 
[93m5469[92m sub R8 R9 R8 
[93m5470[92m add R10 R10 R8 
[93m5471[92m sub R12 R12 R10 
[93m5472[92m swi R12 R14 16 
[0m[94m_t748_146 = #0[0m
[93m5473[92m li R8 0 
[93m5474[92m swi R8 R14 60 
[0m[94mi_145 = _t748_146[0m
[93m5475[92m lwi R8 R14 60 
[93m5476[92m swi R8 R14 20 
[0m[94mlabel_388:[0m
[0m[94m_t749_146 = i_145 < n_145[0m
[93m5477[92m lwi R8 R14 20 
[93m5478[92m lwi R9 R14 0 
[93m5479[92m lt R10 R8 R9 
[93m5480[92m swi R10 R14 64 
[0m[94mif ( _t749_146 == #0 ) goto label_391[0m
[93m5481[92m lwi R8 R14 64 
[93m5482[92m cmp R8 R0 
[93m5483[92m jeq label_391 
[0m[94mgoto label_389[0m
[93m5484[92m jmp label_389 
[0m[94mlabel_390:[0m
[0m[94m_t750_146 = i_145[0m
[93m5485[92m lwi R8 R14 20 
[93m5486[92m swi R8 R14 68 
[0m[94mi_145 = i_145 + #1[0m
[93m5487[92m lwi R8 R14 20 
[93m5488[92m li R9 1 
[93m5489[92m add R10 R8 R9 
[93m5490[92m swi R10 R14 20 
[0m[94mgoto label_388[0m
[93m5491[92m jmp label_388 
[0m[94mlabel_389:[0m
[0m[94m_t751_146 = i_145 * #4[0m
[93m5492[92m lwi R8 R14 20 
[93m5493[92m li R9 4 
[93m5494[92m mul R10 R8 R9 
[93m5495[92m swi R10 R14 72 
[0m[94m_t752_146 = arr_145 + _t751_146[0m
[93m5496[92m lwi R8 R14 16 
[93m5497[92m lwi R9 R14 72 
[93m5498[92m add R10 R8 R9 
[93m5499[92m swi R10 R14 76 
[0m[94mFunctionCall get_num[0m
[0m[94mcall label_118[0m
[93m5500[92m la R8 label_392 
[93m5501[92m swi R8 R14 -8 
[93m5502[92m addi R14 R14 -204 
[93m5503[92m jmp label_118 
[0m[94mlabel_392:[0m
[0m[94m_t753_146 = ReturnVal[0m
[93m5504[92m lwi R8 R14 -4 
[93m5505[92m swi R8 R14 80 
[0m[94m*_t752_146 = _t753_146[0m
[93m5506[92m lwi R8 R14 80 
[93m5507[92m lwi R7 R14 76 
[93m5508[92m swi R8 R7 0 
[0m[94mgoto label_390[0m
[93m5509[92m jmp label_390 
[0m[94mlabel_391:[0m
[0m[94mstring _t754_145 "Sorted Array is"[0m
[93m5510[92m subi R12 R12 16 
[93m5511[92m li R8 83 
[93m5512[92m sbi R8 R12 0 
[93m5513[92m li R8 111 
[93m5514[92m sbi R8 R12 1 
[93m5515[92m li R8 114 
[93m5516[92m sbi R8 R12 2 
[93m5517[92m li R8 116 
[93m5518[92m sbi R8 R12 3 
[93m5519[92m li R8 101 
[93m5520[92m sbi R8 R12 4 
[93m5521[92m li R8 100 
[93m5522[92m sbi R8 R12 5 
[93m5523[92m li R8 32 
[93m5524[92m sbi R8 R12 6 
[93m5525[92m li R8 65 
[93m5526[92m sbi R8 R12 7 
[93m5527[92m li R8 114 
[93m5528[92m sbi R8 R12 8 
[93m5529[92m li R8 114 
[93m5530[92m sbi R8 R12 9 
[93m5531[92m li R8 97 
[93m5532[92m sbi R8 R12 10 
[93m5533[92m li R8 121 
[93m5534[92m sbi R8 R12 11 
[93m5535[92m li R8 32 
[93m5536[92m sbi R8 R12 12 
[93m5537[92m li R8 105 
[93m5538[92m sbi R8 R12 13 
[93m5539[92m li R8 115 
[93m5540[92m sbi R8 R12 14 
[93m5541[92m sbi R0 R12 15 
[93m5542[92m swi R12 R14 84 
[0m[94mprompt_145 = _t754_145[0m
[93m5543[92m lwi R8 R14 84 
[93m5544[92m swi R8 R14 4 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_145[0m
[93m5545[92m lwi R8 R14 4 
[93m5546[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m5547[92m la R8 label_393 
[93m5548[92m swi R8 R14 -8 
[93m5549[92m addi R14 R14 -52 
[93m5550[92m jmp label_8 
[0m[94mlabel_393:[0m
[0m[94m_t755_145 = ReturnVal[0m
[93m5551[92m lwi R8 R14 -4 
[93m5552[92m swi R8 R14 88 
[0m[94mlen_145 = _t755_145[0m
[93m5553[92m lwi R8 R14 88 
[93m5554[92m swi R8 R14 8 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_145[0m
[93m5555[92m lwi R8 R14 4 
[93m5556[92m swi R8 R14 -16 
[0m[94mparam len_145[0m
[93m5557[92m lwi R8 R14 8 
[93m5558[92m swi R8 R14 -20 
[0m[94m_t756_145 = #1[0m
[93m5559[92m li R8 1 
[93m5560[92m swi R8 R14 92 
[0m[94mparam _t756_145[0m
[93m5561[92m lwi R8 R14 92 
[93m5562[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m5563[92m la R8 label_394 
[93m5564[92m swi R8 R14 -8 
[93m5565[92m addi R14 R14 -180 
[93m5566[92m jmp label_85 
[0m[94mlabel_394:[0m
[0m[94m_t757_145 = ReturnVal[0m
[93m5567[92m lwi R8 R14 -4 
[93m5568[92m swi R8 R14 96 
[0m[94mFunctionCall quick_sort[0m
[0m[94mparam arr_145[0m
[93m5569[92m lwi R8 R14 16 
[93m5570[92m swi R8 R14 -16 
[0m[94m_t758_145 = #0[0m
[93m5571[92m li R8 0 
[93m5572[92m swi R8 R14 100 
[0m[94mparam _t758_145[0m
[93m5573[92m lwi R8 R14 100 
[93m5574[92m swi R8 R14 -20 
[0m[94m_t759_145 = #1[0m
[93m5575[92m li R8 1 
[93m5576[92m swi R8 R14 104 
[0m[94m_t760_145 = n_145 - _t759_145[0m
[93m5577[92m lwi R8 R14 0 
[93m5578[92m lwi R9 R14 104 
[93m5579[92m sub R10 R8 R9 
[93m5580[92m swi R10 R14 108 
[0m[94mparam _t760_145[0m
[93m5581[92m lwi R8 R14 108 
[93m5582[92m swi R8 R14 -24 
[0m[94mcall label_376[0m
[93m5583[92m la R8 label_395 
[93m5584[92m swi R8 R14 -8 
[93m5585[92m addi R14 R14 -64 
[93m5586[92m jmp label_376 
[0m[94mlabel_395:[0m
[0m[94m_t761_145 = ReturnVal[0m
[93m5587[92m lwi R8 R14 -4 
[93m5588[92m swi R8 R14 112 
[0m[94mstring _t762_145 " "[0m
[93m5589[92m subi R12 R12 4 
[93m5590[92m li R8 32 
[93m5591[92m sbi R8 R12 0 
[93m5592[92m sbi R0 R12 1 
[93m5593[92m swi R12 R14 116 
[0m[94mprompt_145 = _t762_145[0m
[93m5594[92m lwi R8 R14 116 
[93m5595[92m swi R8 R14 4 
[0m[94m_t763_145 = #1[0m
[93m5596[92m li R8 1 
[93m5597[92m swi R8 R14 120 
[0m[94mlen_145 = _t763_145[0m
[93m5598[92m lwi R8 R14 120 
[93m5599[92m swi R8 R14 8 
[0m[94m_t764_147 = #0[0m
[93m5600[92m li R8 0 
[93m5601[92m swi R8 R14 124 
[0m[94mi_145 = _t764_147[0m
[93m5602[92m lwi R8 R14 124 
[93m5603[92m swi R8 R14 20 
[0m[94mlabel_396:[0m
[0m[94m_t765_147 = i_145 < n_145[0m
[93m5604[92m lwi R8 R14 20 
[93m5605[92m lwi R9 R14 0 
[93m5606[92m lt R10 R8 R9 
[93m5607[92m swi R10 R14 128 
[0m[94mif ( _t765_147 == #0 ) goto label_399[0m
[93m5608[92m lwi R8 R14 128 
[93m5609[92m cmp R8 R0 
[93m5610[92m jeq label_399 
[0m[94mgoto label_397[0m
[93m5611[92m jmp label_397 
[0m[94mlabel_398:[0m
[0m[94m_t766_147 = i_145[0m
[93m5612[92m lwi R8 R14 20 
[93m5613[92m swi R8 R14 132 
[0m[94mi_145 = i_145 + #1[0m
[93m5614[92m lwi R8 R14 20 
[93m5615[92m li R9 1 
[93m5616[92m add R10 R8 R9 
[93m5617[92m swi R10 R14 20 
[0m[94mgoto label_396[0m
[93m5618[92m jmp label_396 
[0m[94mlabel_397:[0m
[0m[94mFunctionCall print_num[0m
[0m[94m_t767_147 = i_145 * #4[0m
[93m5619[92m lwi R8 R14 20 
[93m5620[92m li R9 4 
[93m5621[92m mul R10 R8 R9 
[93m5622[92m swi R10 R14 136 
[0m[94m_t768_147 = arr_145 + _t767_147[0m
[93m5623[92m lwi R8 R14 16 
[93m5624[92m lwi R9 R14 136 
[93m5625[92m add R10 R8 R9 
[93m5626[92m swi R10 R14 140 
[0m[94mparam *_t768_147[0m
[93m5627[92m lwi R8 R14 140 
[93m5628[92m lwi R8 R8 0 
[93m5629[92m swi R8 R14 -16 
[0m[94m_t769_147 = #0[0m
[93m5630[92m li R8 0 
[93m5631[92m swi R8 R14 144 
[0m[94mparam _t769_147[0m
[93m5632[92m lwi R8 R14 144 
[93m5633[92m swi R8 R14 -20 
[0m[94mcall label_139[0m
[93m5634[92m la R8 label_400 
[93m5635[92m swi R8 R14 -8 
[93m5636[92m addi R14 R14 -152 
[93m5637[92m jmp label_139 
[0m[94mlabel_400:[0m
[0m[94m_t770_147 = ReturnVal[0m
[93m5638[92m lwi R8 R14 -4 
[93m5639[92m swi R8 R14 148 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_145[0m
[93m5640[92m lwi R8 R14 4 
[93m5641[92m swi R8 R14 -16 
[0m[94mparam len_145[0m
[93m5642[92m lwi R8 R14 8 
[93m5643[92m swi R8 R14 -20 
[0m[94m_t771_147 = #0[0m
[93m5644[92m li R8 0 
[93m5645[92m swi R8 R14 152 
[0m[94mparam _t771_147[0m
[93m5646[92m lwi R8 R14 152 
[93m5647[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m5648[92m la R8 label_401 
[93m5649[92m swi R8 R14 -8 
[93m5650[92m addi R14 R14 -180 
[93m5651[92m jmp label_85 
[0m[94mlabel_401:[0m
[0m[94m_t772_147 = ReturnVal[0m
[93m5652[92m lwi R8 R14 -4 
[93m5653[92m swi R8 R14 156 
[0m[94mgoto label_398[0m
[93m5654[92m jmp label_398 
[0m[94mlabel_399:[0m
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_145[0m
[93m5655[92m lwi R8 R14 4 
[93m5656[92m swi R8 R14 -16 
[0m[94mparam len_145[0m
[93m5657[92m lwi R8 R14 8 
[93m5658[92m swi R8 R14 -20 
[0m[94m_t773_145 = #1[0m
[93m5659[92m li R8 1 
[93m5660[92m swi R8 R14 160 
[0m[94mparam _t773_145[0m
[93m5661[92m lwi R8 R14 160 
[93m5662[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m5663[92m la R8 label_402 
[93m5664[92m swi R8 R14 -8 
[93m5665[92m addi R14 R14 -180 
[93m5666[92m jmp label_85 
[0m[94mlabel_402:[0m
[0m[94m_t774_145 = ReturnVal[0m
[93m5667[92m lwi R8 R14 -4 
[93m5668[92m swi R8 R14 164 
[0m[94m_t775_145 = #0[0m
[93m5669[92m li R8 0 
[93m5670[92m swi R8 R14 168 
[0m[94mReturn _t775_145[0m
[93m5671[92m lwi R8 R14 168 
[93m5672[92m swi R8 R14 180 
[93m5673[92m lwi R12 R14 172 
[93m5674[92m li R8 22716 
[93m5675[92m lwi R9 R14 176 
[93m5676[92m sub R10 R9 R8 
[93m5677[92m addi R14 R14 184 
[93m5678[92m jr R10 
[0m-------------------------------------
Parsing getIndex
values_148 56
n_148 52
i_148 0
_t776_149 4
_t777_149 8
_t778_149 12
_t779_149 16
_t780_149 20
_t781_149 24
_t782_149 28
_t783_149 32
_t784_149 36
_t785_148 40
_t786_148 44
_t787_148 48
[94mlabel_403:[0m
[93m5679[92m swi R12 R14 60 
[0m[94m_t776_149 = #0[0m
[93m5680[92m li R8 0 
[93m5681[92m swi R8 R14 4 
[0m[94mi_148 = _t776_149[0m
[93m5682[92m lwi R8 R14 4 
[93m5683[92m swi R8 R14 0 
[0m[94mlabel_404:[0m
[0m[94m_t777_149 = i_148 < n_148[0m
[93m5684[92m lwi R8 R14 0 
[93m5685[92m lwi R9 R14 52 
[93m5686[92m lt R10 R8 R9 
[93m5687[92m swi R10 R14 8 
[0m[94mif ( _t777_149 == #0 ) goto label_407[0m
[93m5688[92m lwi R8 R14 8 
[93m5689[92m cmp R8 R0 
[93m5690[92m jeq label_407 
[0m[94mgoto label_405[0m
[93m5691[92m jmp label_405 
[0m[94mlabel_406:[0m
[0m[94m_t778_149 = i_148[0m
[93m5692[92m lwi R8 R14 0 
[93m5693[92m swi R8 R14 12 
[0m[94mi_148 = i_148 + #1[0m
[93m5694[92m lwi R8 R14 0 
[93m5695[92m li R9 1 
[93m5696[92m add R10 R8 R9 
[93m5697[92m swi R10 R14 0 
[0m[94mgoto label_404[0m
[93m5698[92m jmp label_404 
[0m[94mlabel_405:[0m
[0m[94m_t779_149 = i_148 * #4[0m
[93m5699[92m lwi R8 R14 0 
[93m5700[92m li R9 4 
[93m5701[92m mul R10 R8 R9 
[93m5702[92m swi R10 R14 16 
[0m[94m_t780_149 = values_148 + _t779_149[0m
[93m5703[92m lwi R8 R14 56 
[93m5704[92m lwi R9 R14 16 
[93m5705[92m add R10 R8 R9 
[93m5706[92m swi R10 R14 20 
[0m[94m_t781_149 = #0[0m
[93m5707[92m li R8 0 
[93m5708[92m swi R8 R14 24 
[0m[94m_t782_149 = #1[0m
[93m5709[92m li R8 1 
[93m5710[92m swi R8 R14 28 
[0m[94m_t783_149 = _t781_149 - _t782_149[0m
[93m5711[92m lwi R8 R14 24 
[93m5712[92m lwi R9 R14 28 
[93m5713[92m sub R10 R8 R9 
[93m5714[92m swi R10 R14 32 
[0m[94m_t784_149 = *_t780_149 == _t783_149[0m
[93m5715[92m lwi R8 R14 20 
[93m5716[92m lwi R8 R8 0 
[93m5717[92m lwi R9 R14 32 
[93m5718[92m eq R10 R8 R9 
[93m5719[92m swi R10 R14 36 
[0m[94mif ( _t784_149 == #0 ) goto label_408[0m
[93m5720[92m lwi R8 R14 36 
[93m5721[92m cmp R8 R0 
[93m5722[92m jeq label_408 
[0m[94mReturn i_148[0m
[93m5723[92m lwi R8 R14 0 
[93m5724[92m swi R8 R14 68 
[93m5725[92m lwi R12 R14 60 
[93m5726[92m li R8 22924 
[93m5727[92m lwi R9 R14 64 
[93m5728[92m sub R10 R9 R8 
[93m5729[92m addi R14 R14 72 
[93m5730[92m jr R10 
[0m[94mgoto label_409[0m
[93m5731[92m jmp label_409 
[0m[94mlabel_408:[0m
[0m[94mlabel_409:[0m
[0m[94mgoto label_406[0m
[93m5732[92m jmp label_406 
[0m[94mlabel_407:[0m
[0m[94m_t785_148 = #0[0m
[93m5733[92m li R8 0 
[93m5734[92m swi R8 R14 40 
[0m[94m_t786_148 = #1[0m
[93m5735[92m li R8 1 
[93m5736[92m swi R8 R14 44 
[0m[94m_t787_148 = _t785_148 - _t786_148[0m
[93m5737[92m lwi R8 R14 40 
[93m5738[92m lwi R9 R14 44 
[93m5739[92m sub R10 R8 R9 
[93m5740[92m swi R10 R14 48 
[0m[94mReturn _t787_148[0m
[93m5741[92m lwi R8 R14 48 
[93m5742[92m swi R8 R14 68 
[93m5743[92m lwi R12 R14 60 
[93m5744[92m li R8 22996 
[93m5745[92m lwi R9 R14 64 
[93m5746[92m sub R10 R9 R8 
[93m5747[92m addi R14 R14 72 
[93m5748[92m jr R10 
[0m-------------------------------------
Parsing insert
val_151 220
values_151 216
left_151 212
right_151 208
n_151 204
root_153 0
index_157 4
index_160 8
_t788_151 12
_t789_151 16
_t790_151 20
_t791_151 24
_t792_151 28
_t793_151 32
_t794_151 36
_t795_152 40
_t796_152 44
_t797_152 48
_t798_153 52
_t799_154 56
_t800_154 60
_t801_154 64
_t802_154 68
_t803_154 72
_t804_154 76
_t805_154 80
_t806_156 84
_t807_156 88
_t808_156 92
_t809_156 96
_t810_156 100
_t811_156 104
_t812_157 108
_t813_157 112
_t814_157 116
_t815_157 120
_t816_157 124
_t817_158 128
_t818_158 132
_t819_154 136
_t820_154 140
_t821_154 144
_t822_159 148
_t823_159 152
_t824_159 156
_t825_159 160
_t826_159 164
_t827_159 168
_t828_160 172
_t829_160 176
_t830_160 180
_t831_160 184
_t832_160 188
_t833_161 192
_t834_161 196
_t835_151 200
[94mlabel_410:[0m
[93m5749[92m swi R12 R14 224 
[0m[94m_t788_151 = #0[0m
[93m5750[92m li R8 0 
[93m5751[92m swi R8 R14 12 
[0m[94m_t789_151 = _t788_151 * #4[0m
[93m5752[92m lwi R8 R14 12 
[93m5753[92m li R9 4 
[93m5754[92m mul R10 R8 R9 
[93m5755[92m swi R10 R14 16 
[0m[94m_t790_151 = values_151 + _t789_151[0m
[93m5756[92m lwi R8 R14 216 
[93m5757[92m lwi R9 R14 16 
[93m5758[92m add R10 R8 R9 
[93m5759[92m swi R10 R14 20 
[0m[94m_t791_151 = #0[0m
[93m5760[92m li R8 0 
[93m5761[92m swi R8 R14 24 
[0m[94m_t792_151 = #1[0m
[93m5762[92m li R8 1 
[93m5763[92m swi R8 R14 28 
[0m[94m_t793_151 = _t791_151 - _t792_151[0m
[93m5764[92m lwi R8 R14 24 
[93m5765[92m lwi R9 R14 28 
[93m5766[92m sub R10 R8 R9 
[93m5767[92m swi R10 R14 32 
[0m[94m_t794_151 = *_t790_151 == _t793_151[0m
[93m5768[92m lwi R8 R14 20 
[93m5769[92m lwi R8 R8 0 
[93m5770[92m lwi R9 R14 32 
[93m5771[92m eq R10 R8 R9 
[93m5772[92m swi R10 R14 36 
[0m[94mif ( _t794_151 == #0 ) goto label_411[0m
[93m5773[92m lwi R8 R14 36 
[93m5774[92m cmp R8 R0 
[93m5775[92m jeq label_411 
[0m[94m_t795_152 = #0[0m
[93m5776[92m li R8 0 
[93m5777[92m swi R8 R14 40 
[0m[94m_t796_152 = _t795_152 * #4[0m
[93m5778[92m lwi R8 R14 40 
[93m5779[92m li R9 4 
[93m5780[92m mul R10 R8 R9 
[93m5781[92m swi R10 R14 44 
[0m[94m_t797_152 = values_151 + _t796_152[0m
[93m5782[92m lwi R8 R14 216 
[93m5783[92m lwi R9 R14 44 
[93m5784[92m add R10 R8 R9 
[93m5785[92m swi R10 R14 48 
[0m[94m*_t797_152 = val_151[0m
[93m5786[92m lwi R8 R14 220 
[93m5787[92m lwi R7 R14 48 
[93m5788[92m swi R8 R7 0 
[0m[94mgoto label_412[0m
[93m5789[92m jmp label_412 
[0m[94mlabel_411:[0m
[0m[94m_t798_153 = #0[0m
[93m5790[92m li R8 0 
[93m5791[92m swi R8 R14 52 
[0m[94mroot_153 = _t798_153[0m
[93m5792[92m lwi R8 R14 52 
[93m5793[92m swi R8 R14 0 
[0m[94mlabel_413:[0m
[0m[94m_t799_154 = #1[0m
[93m5794[92m li R8 1 
[93m5795[92m swi R8 R14 56 
[0m[94mif ( _t799_154 == #0 ) goto label_416[0m
[93m5796[92m lwi R8 R14 56 
[93m5797[92m cmp R8 R0 
[93m5798[92m jeq label_416 
[0m[94mgoto label_414[0m
[93m5799[92m jmp label_414 
[0m[94mlabel_415:[0m
[0m[94mgoto label_413[0m
[93m5800[92m jmp label_413 
[0m[94mlabel_414:[0m
[0m[94m_t800_154 = root_153 * #4[0m
[93m5801[92m lwi R8 R14 0 
[93m5802[92m li R9 4 
[93m5803[92m mul R10 R8 R9 
[93m5804[92m swi R10 R14 60 
[0m[94m_t801_154 = values_151 + _t800_154[0m
[93m5805[92m lwi R8 R14 216 
[93m5806[92m lwi R9 R14 60 
[93m5807[92m add R10 R8 R9 
[93m5808[92m swi R10 R14 64 
[0m[94m_t802_154 = *_t801_154 == val_151[0m
[93m5809[92m lwi R8 R14 64 
[93m5810[92m lwi R8 R8 0 
[93m5811[92m lwi R9 R14 220 
[93m5812[92m eq R10 R8 R9 
[93m5813[92m swi R10 R14 68 
[0m[94mif ( _t802_154 == #0 ) goto label_417[0m
[93m5814[92m lwi R8 R14 68 
[93m5815[92m cmp R8 R0 
[93m5816[92m jeq label_417 
[0m[94mgoto label_416[0m
[93m5817[92m jmp label_416 
[0m[94mgoto label_418[0m
[93m5818[92m jmp label_418 
[0m[94mlabel_417:[0m
[0m[94m_t803_154 = root_153 * #4[0m
[93m5819[92m lwi R8 R14 0 
[93m5820[92m li R9 4 
[93m5821[92m mul R10 R8 R9 
[93m5822[92m swi R10 R14 72 
[0m[94m_t804_154 = values_151 + _t803_154[0m
[93m5823[92m lwi R8 R14 216 
[93m5824[92m lwi R9 R14 72 
[93m5825[92m add R10 R8 R9 
[93m5826[92m swi R10 R14 76 
[0m[94m_t805_154 = val_151 < *_t804_154[0m
[93m5827[92m lwi R8 R14 220 
[93m5828[92m lwi R9 R14 76 
[93m5829[92m lwi R9 R9 0 
[93m5830[92m lt R10 R8 R9 
[93m5831[92m swi R10 R14 80 
[0m[94mif ( _t805_154 == #0 ) goto label_419[0m
[93m5832[92m lwi R8 R14 80 
[93m5833[92m cmp R8 R0 
[93m5834[92m jeq label_419 
[0m[94m_t806_156 = root_153 * #4[0m
[93m5835[92m lwi R8 R14 0 
[93m5836[92m li R9 4 
[93m5837[92m mul R10 R8 R9 
[93m5838[92m swi R10 R14 84 
[0m[94m_t807_156 = left_151 + _t806_156[0m
[93m5839[92m lwi R8 R14 212 
[93m5840[92m lwi R9 R14 84 
[93m5841[92m add R10 R8 R9 
[93m5842[92m swi R10 R14 88 
[0m[94m_t808_156 = #0[0m
[93m5843[92m li R8 0 
[93m5844[92m swi R8 R14 92 
[0m[94m_t809_156 = #1[0m
[93m5845[92m li R8 1 
[93m5846[92m swi R8 R14 96 
[0m[94m_t810_156 = _t808_156 - _t809_156[0m
[93m5847[92m lwi R8 R14 92 
[93m5848[92m lwi R9 R14 96 
[93m5849[92m sub R10 R8 R9 
[93m5850[92m swi R10 R14 100 
[0m[94m_t811_156 = *_t807_156 == _t810_156[0m
[93m5851[92m lwi R8 R14 88 
[93m5852[92m lwi R8 R8 0 
[93m5853[92m lwi R9 R14 100 
[93m5854[92m eq R10 R8 R9 
[93m5855[92m swi R10 R14 104 
[0m[94mif ( _t811_156 == #0 ) goto label_420[0m
[93m5856[92m lwi R8 R14 104 
[93m5857[92m cmp R8 R0 
[93m5858[92m jeq label_420 
[0m[94mFunctionCall getIndex[0m
[0m[94mparam values_151[0m
[93m5859[92m lwi R8 R14 216 
[93m5860[92m swi R8 R14 -16 
[0m[94mparam n_151[0m
[93m5861[92m lwi R8 R14 204 
[93m5862[92m swi R8 R14 -20 
[0m[94mcall label_403[0m
[93m5863[92m la R8 label_422 
[93m5864[92m swi R8 R14 -8 
[93m5865[92m addi R14 R14 -72 
[93m5866[92m jmp label_403 
[0m[94mlabel_422:[0m
[0m[94m_t812_157 = ReturnVal[0m
[93m5867[92m lwi R8 R14 -4 
[93m5868[92m swi R8 R14 108 
[0m[94mindex_157 = _t812_157[0m
[93m5869[92m lwi R8 R14 108 
[93m5870[92m swi R8 R14 4 
[0m[94m_t813_157 = root_153 * #4[0m
[93m5871[92m lwi R8 R14 0 
[93m5872[92m li R9 4 
[93m5873[92m mul R10 R8 R9 
[93m5874[92m swi R10 R14 112 
[0m[94m_t814_157 = left_151 + _t813_157[0m
[93m5875[92m lwi R8 R14 212 
[93m5876[92m lwi R9 R14 112 
[93m5877[92m add R10 R8 R9 
[93m5878[92m swi R10 R14 116 
[0m[94m*_t814_157 = index_157[0m
[93m5879[92m lwi R8 R14 4 
[93m5880[92m lwi R7 R14 116 
[93m5881[92m swi R8 R7 0 
[0m[94m_t815_157 = index_157 * #4[0m
[93m5882[92m lwi R8 R14 4 
[93m5883[92m li R9 4 
[93m5884[92m mul R10 R8 R9 
[93m5885[92m swi R10 R14 120 
[0m[94m_t816_157 = values_151 + _t815_157[0m
[93m5886[92m lwi R8 R14 216 
[93m5887[92m lwi R9 R14 120 
[93m5888[92m add R10 R8 R9 
[93m5889[92m swi R10 R14 124 
[0m[94m*_t816_157 = val_151[0m
[93m5890[92m lwi R8 R14 220 
[93m5891[92m lwi R7 R14 124 
[93m5892[92m swi R8 R7 0 
[0m[94mgoto label_416[0m
[93m5893[92m jmp label_416 
[0m[94mgoto label_421[0m
[93m5894[92m jmp label_421 
[0m[94mlabel_420:[0m
[0m[94m_t817_158 = root_153 * #4[0m
[93m5895[92m lwi R8 R14 0 
[93m5896[92m li R9 4 
[93m5897[92m mul R10 R8 R9 
[93m5898[92m swi R10 R14 128 
[0m[94m_t818_158 = left_151 + _t817_158[0m
[93m5899[92m lwi R8 R14 212 
[93m5900[92m lwi R9 R14 128 
[93m5901[92m add R10 R8 R9 
[93m5902[92m swi R10 R14 132 
[0m[94mroot_153 = *_t818_158[0m
[93m5903[92m lwi R8 R14 132 
[93m5904[92m lwi R8 R8 0 
[93m5905[92m swi R8 R14 0 
[0m[94mlabel_421:[0m
[0m[94mgoto label_418[0m
[93m5906[92m jmp label_418 
[0m[94mlabel_419:[0m
[0m[94m_t819_154 = root_153 * #4[0m
[93m5907[92m lwi R8 R14 0 
[93m5908[92m li R9 4 
[93m5909[92m mul R10 R8 R9 
[93m5910[92m swi R10 R14 136 
[0m[94m_t820_154 = values_151 + _t819_154[0m
[93m5911[92m lwi R8 R14 216 
[93m5912[92m lwi R9 R14 136 
[93m5913[92m add R10 R8 R9 
[93m5914[92m swi R10 R14 140 
[0m[94m_t821_154 = val_151 > *_t820_154[0m
[93m5915[92m lwi R8 R14 220 
[93m5916[92m lwi R9 R14 140 
[93m5917[92m lwi R9 R9 0 
[93m5918[92m gt R10 R8 R9 
[93m5919[92m swi R10 R14 144 
[0m[94mif ( _t821_154 == #0 ) goto label_423[0m
[93m5920[92m lwi R8 R14 144 
[93m5921[92m cmp R8 R0 
[93m5922[92m jeq label_423 
[0m[94m_t822_159 = root_153 * #4[0m
[93m5923[92m lwi R8 R14 0 
[93m5924[92m li R9 4 
[93m5925[92m mul R10 R8 R9 
[93m5926[92m swi R10 R14 148 
[0m[94m_t823_159 = right_151 + _t822_159[0m
[93m5927[92m lwi R8 R14 208 
[93m5928[92m lwi R9 R14 148 
[93m5929[92m add R10 R8 R9 
[93m5930[92m swi R10 R14 152 
[0m[94m_t824_159 = #0[0m
[93m5931[92m li R8 0 
[93m5932[92m swi R8 R14 156 
[0m[94m_t825_159 = #1[0m
[93m5933[92m li R8 1 
[93m5934[92m swi R8 R14 160 
[0m[94m_t826_159 = _t824_159 - _t825_159[0m
[93m5935[92m lwi R8 R14 156 
[93m5936[92m lwi R9 R14 160 
[93m5937[92m sub R10 R8 R9 
[93m5938[92m swi R10 R14 164 
[0m[94m_t827_159 = *_t823_159 == _t826_159[0m
[93m5939[92m lwi R8 R14 152 
[93m5940[92m lwi R8 R8 0 
[93m5941[92m lwi R9 R14 164 
[93m5942[92m eq R10 R8 R9 
[93m5943[92m swi R10 R14 168 
[0m[94mif ( _t827_159 == #0 ) goto label_424[0m
[93m5944[92m lwi R8 R14 168 
[93m5945[92m cmp R8 R0 
[93m5946[92m jeq label_424 
[0m[94mFunctionCall getIndex[0m
[0m[94mparam values_151[0m
[93m5947[92m lwi R8 R14 216 
[93m5948[92m swi R8 R14 -16 
[0m[94mparam n_151[0m
[93m5949[92m lwi R8 R14 204 
[93m5950[92m swi R8 R14 -20 
[0m[94mcall label_403[0m
[93m5951[92m la R8 label_426 
[93m5952[92m swi R8 R14 -8 
[93m5953[92m addi R14 R14 -72 
[93m5954[92m jmp label_403 
[0m[94mlabel_426:[0m
[0m[94m_t828_160 = ReturnVal[0m
[93m5955[92m lwi R8 R14 -4 
[93m5956[92m swi R8 R14 172 
[0m[94mindex_157 = _t828_160[0m
[93m5957[92m lwi R8 R14 172 
[93m5958[92m swi R8 R14 4 
[0m[94m_t829_160 = root_153 * #4[0m
[93m5959[92m lwi R8 R14 0 
[93m5960[92m li R9 4 
[93m5961[92m mul R10 R8 R9 
[93m5962[92m swi R10 R14 176 
[0m[94m_t830_160 = right_151 + _t829_160[0m
[93m5963[92m lwi R8 R14 208 
[93m5964[92m lwi R9 R14 176 
[93m5965[92m add R10 R8 R9 
[93m5966[92m swi R10 R14 180 
[0m[94m*_t830_160 = index_157[0m
[93m5967[92m lwi R8 R14 4 
[93m5968[92m lwi R7 R14 180 
[93m5969[92m swi R8 R7 0 
[0m[94m_t831_160 = index_157 * #4[0m
[93m5970[92m lwi R8 R14 4 
[93m5971[92m li R9 4 
[93m5972[92m mul R10 R8 R9 
[93m5973[92m swi R10 R14 184 
[0m[94m_t832_160 = values_151 + _t831_160[0m
[93m5974[92m lwi R8 R14 216 
[93m5975[92m lwi R9 R14 184 
[93m5976[92m add R10 R8 R9 
[93m5977[92m swi R10 R14 188 
[0m[94m*_t832_160 = val_151[0m
[93m5978[92m lwi R8 R14 220 
[93m5979[92m lwi R7 R14 188 
[93m5980[92m swi R8 R7 0 
[0m[94mgoto label_416[0m
[93m5981[92m jmp label_416 
[0m[94mgoto label_425[0m
[93m5982[92m jmp label_425 
[0m[94mlabel_424:[0m
[0m[94m_t833_161 = root_153 * #4[0m
[93m5983[92m lwi R8 R14 0 
[93m5984[92m li R9 4 
[93m5985[92m mul R10 R8 R9 
[93m5986[92m swi R10 R14 192 
[0m[94m_t834_161 = right_151 + _t833_161[0m
[93m5987[92m lwi R8 R14 208 
[93m5988[92m lwi R9 R14 192 
[93m5989[92m add R10 R8 R9 
[93m5990[92m swi R10 R14 196 
[0m[94mroot_153 = *_t834_161[0m
[93m5991[92m lwi R8 R14 196 
[93m5992[92m lwi R8 R8 0 
[93m5993[92m swi R8 R14 0 
[0m[94mlabel_425:[0m
[0m[94mgoto label_418[0m
[93m5994[92m jmp label_418 
[0m[94mlabel_423:[0m
[0m[94mlabel_418:[0m
[0m[94mgoto label_415[0m
[93m5995[92m jmp label_415 
[0m[94mlabel_416:[0m
[0m[94mlabel_412:[0m
[0m[94m_t835_151 = #0[0m
[93m5996[92m li R8 0 
[93m5997[92m swi R8 R14 200 
[0m[94mReturn _t835_151[0m
[93m5998[92m lwi R8 R14 200 
[93m5999[92m swi R8 R14 232 
[93m6000[92m lwi R12 R14 224 
[93m6001[92m li R8 24024 
[93m6002[92m lwi R9 R14 228 
[93m6003[92m sub R10 R9 R8 
[93m6004[92m addi R14 R14 236 
[93m6005[92m jr R10 
[0m-------------------------------------
Parsing inorder
values_162 88
left_162 84
right_162 80
index_162 76
_t836_162 0
_t837_162 4
_t838_162 8
_t839_162 12
_t840_163 16
_t841_163 20
_t842_163 24
_t843_163 28
_t844_163 32
_t845_163 36
_t846_163 40
_t847_163 44
_t848_163 48
_t849_163 52
_t850_163 56
_t851_163 60
_t852_163 64
_t853_163 68
_t854_162 72
[94mlabel_427:[0m
[93m6006[92m swi R12 R14 92 
[0m[94m_t836_162 = #0[0m
[93m6007[92m li R8 0 
[93m6008[92m swi R8 R14 0 
[0m[94m_t837_162 = #1[0m
[93m6009[92m li R8 1 
[93m6010[92m swi R8 R14 4 
[0m[94m_t838_162 = _t836_162 - _t837_162[0m
[93m6011[92m lwi R8 R14 0 
[93m6012[92m lwi R9 R14 4 
[93m6013[92m sub R10 R8 R9 
[93m6014[92m swi R10 R14 8 
[0m[94m_t839_162 = index_162 != _t838_162[0m
[93m6015[92m lwi R8 R14 76 
[93m6016[92m lwi R9 R14 8 
[93m6017[92m neq R10 R8 R9 
[93m6018[92m swi R10 R14 12 
[0m[94mif ( _t839_162 == #0 ) goto label_428[0m
[93m6019[92m lwi R8 R14 12 
[93m6020[92m cmp R8 R0 
[93m6021[92m jeq label_428 
[0m[94mFunctionCall inorder[0m
[0m[94mparam values_162[0m
[93m6022[92m lwi R8 R14 88 
[93m6023[92m swi R8 R14 -16 
[0m[94mparam left_162[0m
[93m6024[92m lwi R8 R14 84 
[93m6025[92m swi R8 R14 -20 
[0m[94mparam right_162[0m
[93m6026[92m lwi R8 R14 80 
[93m6027[92m swi R8 R14 -24 
[0m[94m_t840_163 = index_162 * #4[0m
[93m6028[92m lwi R8 R14 76 
[93m6029[92m li R9 4 
[93m6030[92m mul R10 R8 R9 
[93m6031[92m swi R10 R14 16 
[0m[94m_t841_163 = left_162 + _t840_163[0m
[93m6032[92m lwi R8 R14 84 
[93m6033[92m lwi R9 R14 16 
[93m6034[92m add R10 R8 R9 
[93m6035[92m swi R10 R14 20 
[0m[94mparam *_t841_163[0m
[93m6036[92m lwi R8 R14 20 
[93m6037[92m lwi R8 R8 0 
[93m6038[92m swi R8 R14 -28 
[0m[94mcall label_427[0m
[93m6039[92m la R8 label_430 
[93m6040[92m swi R8 R14 -8 
[93m6041[92m addi R14 R14 -104 
[93m6042[92m jmp label_427 
[0m[94mlabel_430:[0m
[0m[94m_t842_163 = ReturnVal[0m
[93m6043[92m lwi R8 R14 -4 
[93m6044[92m swi R8 R14 24 
[0m[94mFunctionCall print_num[0m
[0m[94m_t843_163 = index_162 * #4[0m
[93m6045[92m lwi R8 R14 76 
[93m6046[92m li R9 4 
[93m6047[92m mul R10 R8 R9 
[93m6048[92m swi R10 R14 28 
[0m[94m_t844_163 = values_162 + _t843_163[0m
[93m6049[92m lwi R8 R14 88 
[93m6050[92m lwi R9 R14 28 
[93m6051[92m add R10 R8 R9 
[93m6052[92m swi R10 R14 32 
[0m[94mparam *_t844_163[0m
[93m6053[92m lwi R8 R14 32 
[93m6054[92m lwi R8 R8 0 
[93m6055[92m swi R8 R14 -16 
[0m[94m_t845_163 = #0[0m
[93m6056[92m li R8 0 
[93m6057[92m swi R8 R14 36 
[0m[94mparam _t845_163[0m
[93m6058[92m lwi R8 R14 36 
[93m6059[92m swi R8 R14 -20 
[0m[94mcall label_139[0m
[93m6060[92m la R8 label_431 
[93m6061[92m swi R8 R14 -8 
[93m6062[92m addi R14 R14 -152 
[93m6063[92m jmp label_139 
[0m[94mlabel_431:[0m
[0m[94m_t846_163 = ReturnVal[0m
[93m6064[92m lwi R8 R14 -4 
[93m6065[92m swi R8 R14 40 
[0m[94mFunctionCall print_string[0m
[0m[94mstring _t847_163 " "[0m
[93m6066[92m subi R12 R12 4 
[93m6067[92m li R8 32 
[93m6068[92m sbi R8 R12 0 
[93m6069[92m sbi R0 R12 1 
[93m6070[92m swi R12 R14 44 
[0m[94mparam _t847_163[0m
[93m6071[92m lwi R8 R14 44 
[93m6072[92m swi R8 R14 -16 
[0m[94m_t848_163 = #1[0m
[93m6073[92m li R8 1 
[93m6074[92m swi R8 R14 48 
[0m[94mparam _t848_163[0m
[93m6075[92m lwi R8 R14 48 
[93m6076[92m swi R8 R14 -20 
[0m[94m_t849_163 = #0[0m
[93m6077[92m li R8 0 
[93m6078[92m swi R8 R14 52 
[0m[94mparam _t849_163[0m
[93m6079[92m lwi R8 R14 52 
[93m6080[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m6081[92m la R8 label_432 
[93m6082[92m swi R8 R14 -8 
[93m6083[92m addi R14 R14 -180 
[93m6084[92m jmp label_85 
[0m[94mlabel_432:[0m
[0m[94m_t850_163 = ReturnVal[0m
[93m6085[92m lwi R8 R14 -4 
[93m6086[92m swi R8 R14 56 
[0m[94mFunctionCall inorder[0m
[0m[94mparam values_162[0m
[93m6087[92m lwi R8 R14 88 
[93m6088[92m swi R8 R14 -16 
[0m[94mparam left_162[0m
[93m6089[92m lwi R8 R14 84 
[93m6090[92m swi R8 R14 -20 
[0m[94mparam right_162[0m
[93m6091[92m lwi R8 R14 80 
[93m6092[92m swi R8 R14 -24 
[0m[94m_t851_163 = index_162 * #4[0m
[93m6093[92m lwi R8 R14 76 
[93m6094[92m li R9 4 
[93m6095[92m mul R10 R8 R9 
[93m6096[92m swi R10 R14 60 
[0m[94m_t852_163 = right_162 + _t851_163[0m
[93m6097[92m lwi R8 R14 80 
[93m6098[92m lwi R9 R14 60 
[93m6099[92m add R10 R8 R9 
[93m6100[92m swi R10 R14 64 
[0m[94mparam *_t852_163[0m
[93m6101[92m lwi R8 R14 64 
[93m6102[92m lwi R8 R8 0 
[93m6103[92m swi R8 R14 -28 
[0m[94mcall label_427[0m
[93m6104[92m la R8 label_433 
[93m6105[92m swi R8 R14 -8 
[93m6106[92m addi R14 R14 -104 
[93m6107[92m jmp label_427 
[0m[94mlabel_433:[0m
[0m[94m_t853_163 = ReturnVal[0m
[93m6108[92m lwi R8 R14 -4 
[93m6109[92m swi R8 R14 68 
[0m[94mgoto label_429[0m
[93m6110[92m jmp label_429 
[0m[94mlabel_428:[0m
[0m[94mlabel_429:[0m
[0m[94m_t854_162 = #0[0m
[93m6111[92m li R8 0 
[93m6112[92m swi R8 R14 72 
[0m[94mReturn _t854_162[0m
[93m6113[92m lwi R8 R14 72 
[93m6114[92m swi R8 R14 100 
[93m6115[92m lwi R12 R14 92 
[93m6116[92m li R8 24484 
[93m6117[92m lwi R9 R14 96 
[93m6118[92m sub R10 R9 R8 
[93m6119[92m addi R14 R14 104 
[93m6120[92m jr R10 
[0m-------------------------------------
Parsing tree
n_164 0
prompt_164 4
len_164 8
values_0_164 12
values_164 16
left_0_164 20
left_164 24
right_0_164 28
right_164 32
i_164 36
k_166 40
_t855_164 44
_t856_164 48
_t857_164 52
_t858_164 56
_t859_164 60
_t860_165 64
_t861_165 68
_t862_165 72
_t863_165 76
_t864_165 80
_t865_165 84
_t866_165 88
_t867_165 92
_t868_165 96
_t869_165 100
_t870_165 104
_t871_165 108
_t872_165 112
_t873_165 116
_t874_165 120
_t875_165 124
_t876_165 128
_t877_165 132
_t878_164 136
_t879_164 140
_t880_164 144
_t881_164 148
_t882_166 152
_t883_166 156
_t884_166 160
_t885_166 164
_t886_166 168
_t887_164 172
_t888_164 176
_t889_164 180
_t890_164 184
_t891_164 188
_t892_164 192
_t893_164 196
_t894_164 200
_t895_164 204
_t896_164 208
_t897_164 212
[94mlabel_434:[0m
[93m6121[92m swi R12 R14 216 
[0m[94mstring _t855_164 "Enter the Number of Elements"[0m
[93m6122[92m subi R12 R12 32 
[93m6123[92m li R8 69 
[93m6124[92m sbi R8 R12 0 
[93m6125[92m li R8 110 
[93m6126[92m sbi R8 R12 1 
[93m6127[92m li R8 116 
[93m6128[92m sbi R8 R12 2 
[93m6129[92m li R8 101 
[93m6130[92m sbi R8 R12 3 
[93m6131[92m li R8 114 
[93m6132[92m sbi R8 R12 4 
[93m6133[92m li R8 32 
[93m6134[92m sbi R8 R12 5 
[93m6135[92m li R8 116 
[93m6136[92m sbi R8 R12 6 
[93m6137[92m li R8 104 
[93m6138[92m sbi R8 R12 7 
[93m6139[92m li R8 101 
[93m6140[92m sbi R8 R12 8 
[93m6141[92m li R8 32 
[93m6142[92m sbi R8 R12 9 
[93m6143[92m li R8 78 
[93m6144[92m sbi R8 R12 10 
[93m6145[92m li R8 117 
[93m6146[92m sbi R8 R12 11 
[93m6147[92m li R8 109 
[93m6148[92m sbi R8 R12 12 
[93m6149[92m li R8 98 
[93m6150[92m sbi R8 R12 13 
[93m6151[92m li R8 101 
[93m6152[92m sbi R8 R12 14 
[93m6153[92m li R8 114 
[93m6154[92m sbi R8 R12 15 
[93m6155[92m li R8 32 
[93m6156[92m sbi R8 R12 16 
[93m6157[92m li R8 111 
[93m6158[92m sbi R8 R12 17 
[93m6159[92m li R8 102 
[93m6160[92m sbi R8 R12 18 
[93m6161[92m li R8 32 
[93m6162[92m sbi R8 R12 19 
[93m6163[92m li R8 69 
[93m6164[92m sbi R8 R12 20 
[93m6165[92m li R8 108 
[93m6166[92m sbi R8 R12 21 
[93m6167[92m li R8 101 
[93m6168[92m sbi R8 R12 22 
[93m6169[92m li R8 109 
[93m6170[92m sbi R8 R12 23 
[93m6171[92m li R8 101 
[93m6172[92m sbi R8 R12 24 
[93m6173[92m li R8 110 
[93m6174[92m sbi R8 R12 25 
[93m6175[92m li R8 116 
[93m6176[92m sbi R8 R12 26 
[93m6177[92m li R8 115 
[93m6178[92m sbi R8 R12 27 
[93m6179[92m sbi R0 R12 28 
[93m6180[92m swi R12 R14 44 
[0m[94mprompt_164 = _t855_164[0m
[93m6181[92m lwi R8 R14 44 
[93m6182[92m swi R8 R14 4 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_164[0m
[93m6183[92m lwi R8 R14 4 
[93m6184[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m6185[92m la R8 label_435 
[93m6186[92m swi R8 R14 -8 
[93m6187[92m addi R14 R14 -52 
[93m6188[92m jmp label_8 
[0m[94mlabel_435:[0m
[0m[94m_t856_164 = ReturnVal[0m
[93m6189[92m lwi R8 R14 -4 
[93m6190[92m swi R8 R14 48 
[0m[94mlen_164 = _t856_164[0m
[93m6191[92m lwi R8 R14 48 
[93m6192[92m swi R8 R14 8 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_164[0m
[93m6193[92m lwi R8 R14 4 
[93m6194[92m swi R8 R14 -16 
[0m[94mparam len_164[0m
[93m6195[92m lwi R8 R14 8 
[93m6196[92m swi R8 R14 -20 
[0m[94m_t857_164 = #1[0m
[93m6197[92m li R8 1 
[93m6198[92m swi R8 R14 52 
[0m[94mparam _t857_164[0m
[93m6199[92m lwi R8 R14 52 
[93m6200[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m6201[92m la R8 label_436 
[93m6202[92m swi R8 R14 -8 
[93m6203[92m addi R14 R14 -180 
[93m6204[92m jmp label_85 
[0m[94mlabel_436:[0m
[0m[94m_t858_164 = ReturnVal[0m
[93m6205[92m lwi R8 R14 -4 
[93m6206[92m swi R8 R14 56 
[0m[94mFunctionCall get_num[0m
[0m[94mcall label_118[0m
[93m6207[92m la R8 label_437 
[93m6208[92m swi R8 R14 -8 
[93m6209[92m addi R14 R14 -204 
[93m6210[92m jmp label_118 
[0m[94mlabel_437:[0m
[0m[94m_t859_164 = ReturnVal[0m
[93m6211[92m lwi R8 R14 -4 
[93m6212[92m swi R8 R14 60 
[0m[94mn_164 = _t859_164[0m
[93m6213[92m lwi R8 R14 60 
[93m6214[92m swi R8 R14 0 
[0m[94mvalues_0_164 = n_164[0m
[93m6215[92m lwi R8 R14 0 
[93m6216[92m swi R8 R14 12 
[0m[94mmemory values_164 n_164 #4[0m
[93m6217[92m lwi R8 R14 0 
[93m6218[92m li R9 4 
[93m6219[92m mul R10 R8 R9 
[93m6220[92m modi R8 R10 4 
[93m6221[92m li R9 4 
[93m6222[92m sub R8 R9 R8 
[93m6223[92m add R10 R10 R8 
[93m6224[92m sub R12 R12 R10 
[93m6225[92m swi R12 R14 16 
[0m[94mleft_0_164 = n_164[0m
[93m6226[92m lwi R8 R14 0 
[93m6227[92m swi R8 R14 20 
[0m[94mmemory left_164 n_164 #4[0m
[93m6228[92m lwi R8 R14 0 
[93m6229[92m li R9 4 
[93m6230[92m mul R10 R8 R9 
[93m6231[92m modi R8 R10 4 
[93m6232[92m li R9 4 
[93m6233[92m sub R8 R9 R8 
[93m6234[92m add R10 R10 R8 
[93m6235[92m sub R12 R12 R10 
[93m6236[92m swi R12 R14 24 
[0m[94mright_0_164 = n_164[0m
[93m6237[92m lwi R8 R14 0 
[93m6238[92m swi R8 R14 28 
[0m[94mmemory right_164 n_164 #4[0m
[93m6239[92m lwi R8 R14 0 
[93m6240[92m li R9 4 
[93m6241[92m mul R10 R8 R9 
[93m6242[92m modi R8 R10 4 
[93m6243[92m li R9 4 
[93m6244[92m sub R8 R9 R8 
[93m6245[92m add R10 R10 R8 
[93m6246[92m sub R12 R12 R10 
[93m6247[92m swi R12 R14 32 
[0m[94m_t860_165 = #0[0m
[93m6248[92m li R8 0 
[93m6249[92m swi R8 R14 64 
[0m[94mi_164 = _t860_165[0m
[93m6250[92m lwi R8 R14 64 
[93m6251[92m swi R8 R14 36 
[0m[94mlabel_438:[0m
[0m[94m_t861_165 = i_164 < n_164[0m
[93m6252[92m lwi R8 R14 36 
[93m6253[92m lwi R9 R14 0 
[93m6254[92m lt R10 R8 R9 
[93m6255[92m swi R10 R14 68 
[0m[94mif ( _t861_165 == #0 ) goto label_441[0m
[93m6256[92m lwi R8 R14 68 
[93m6257[92m cmp R8 R0 
[93m6258[92m jeq label_441 
[0m[94mgoto label_439[0m
[93m6259[92m jmp label_439 
[0m[94mlabel_440:[0m
[0m[94m_t862_165 = i_164[0m
[93m6260[92m lwi R8 R14 36 
[93m6261[92m swi R8 R14 72 
[0m[94mi_164 = i_164 + #1[0m
[93m6262[92m lwi R8 R14 36 
[93m6263[92m li R9 1 
[93m6264[92m add R10 R8 R9 
[93m6265[92m swi R10 R14 36 
[0m[94mgoto label_438[0m
[93m6266[92m jmp label_438 
[0m[94mlabel_439:[0m
[0m[94m_t863_165 = i_164 * #4[0m
[93m6267[92m lwi R8 R14 36 
[93m6268[92m li R9 4 
[93m6269[92m mul R10 R8 R9 
[93m6270[92m swi R10 R14 76 
[0m[94m_t864_165 = values_164 + _t863_165[0m
[93m6271[92m lwi R8 R14 16 
[93m6272[92m lwi R9 R14 76 
[93m6273[92m add R10 R8 R9 
[93m6274[92m swi R10 R14 80 
[0m[94m_t865_165 = #0[0m
[93m6275[92m li R8 0 
[93m6276[92m swi R8 R14 84 
[0m[94m_t866_165 = #1[0m
[93m6277[92m li R8 1 
[93m6278[92m swi R8 R14 88 
[0m[94m_t867_165 = _t865_165 - _t866_165[0m
[93m6279[92m lwi R8 R14 84 
[93m6280[92m lwi R9 R14 88 
[93m6281[92m sub R10 R8 R9 
[93m6282[92m swi R10 R14 92 
[0m[94m*_t864_165 = _t867_165[0m
[93m6283[92m lwi R8 R14 92 
[93m6284[92m lwi R7 R14 80 
[93m6285[92m swi R8 R7 0 
[0m[94m_t868_165 = i_164 * #4[0m
[93m6286[92m lwi R8 R14 36 
[93m6287[92m li R9 4 
[93m6288[92m mul R10 R8 R9 
[93m6289[92m swi R10 R14 96 
[0m[94m_t869_165 = left_164 + _t868_165[0m
[93m6290[92m lwi R8 R14 24 
[93m6291[92m lwi R9 R14 96 
[93m6292[92m add R10 R8 R9 
[93m6293[92m swi R10 R14 100 
[0m[94m_t870_165 = #0[0m
[93m6294[92m li R8 0 
[93m6295[92m swi R8 R14 104 
[0m[94m_t871_165 = #1[0m
[93m6296[92m li R8 1 
[93m6297[92m swi R8 R14 108 
[0m[94m_t872_165 = _t870_165 - _t871_165[0m
[93m6298[92m lwi R8 R14 104 
[93m6299[92m lwi R9 R14 108 
[93m6300[92m sub R10 R8 R9 
[93m6301[92m swi R10 R14 112 
[0m[94m*_t869_165 = _t872_165[0m
[93m6302[92m lwi R8 R14 112 
[93m6303[92m lwi R7 R14 100 
[93m6304[92m swi R8 R7 0 
[0m[94m_t873_165 = i_164 * #4[0m
[93m6305[92m lwi R8 R14 36 
[93m6306[92m li R9 4 
[93m6307[92m mul R10 R8 R9 
[93m6308[92m swi R10 R14 116 
[0m[94m_t874_165 = right_164 + _t873_165[0m
[93m6309[92m lwi R8 R14 32 
[93m6310[92m lwi R9 R14 116 
[93m6311[92m add R10 R8 R9 
[93m6312[92m swi R10 R14 120 
[0m[94m_t875_165 = #0[0m
[93m6313[92m li R8 0 
[93m6314[92m swi R8 R14 124 
[0m[94m_t876_165 = #1[0m
[93m6315[92m li R8 1 
[93m6316[92m swi R8 R14 128 
[0m[94m_t877_165 = _t875_165 - _t876_165[0m
[93m6317[92m lwi R8 R14 124 
[93m6318[92m lwi R9 R14 128 
[93m6319[92m sub R10 R8 R9 
[93m6320[92m swi R10 R14 132 
[0m[94m*_t874_165 = _t877_165[0m
[93m6321[92m lwi R8 R14 132 
[93m6322[92m lwi R7 R14 120 
[93m6323[92m swi R8 R7 0 
[0m[94mgoto label_440[0m
[93m6324[92m jmp label_440 
[0m[94mlabel_441:[0m
[0m[94mstring _t878_164 "Enter the values"[0m
[93m6325[92m subi R12 R12 20 
[93m6326[92m li R8 69 
[93m6327[92m sbi R8 R12 0 
[93m6328[92m li R8 110 
[93m6329[92m sbi R8 R12 1 
[93m6330[92m li R8 116 
[93m6331[92m sbi R8 R12 2 
[93m6332[92m li R8 101 
[93m6333[92m sbi R8 R12 3 
[93m6334[92m li R8 114 
[93m6335[92m sbi R8 R12 4 
[93m6336[92m li R8 32 
[93m6337[92m sbi R8 R12 5 
[93m6338[92m li R8 116 
[93m6339[92m sbi R8 R12 6 
[93m6340[92m li R8 104 
[93m6341[92m sbi R8 R12 7 
[93m6342[92m li R8 101 
[93m6343[92m sbi R8 R12 8 
[93m6344[92m li R8 32 
[93m6345[92m sbi R8 R12 9 
[93m6346[92m li R8 118 
[93m6347[92m sbi R8 R12 10 
[93m6348[92m li R8 97 
[93m6349[92m sbi R8 R12 11 
[93m6350[92m li R8 108 
[93m6351[92m sbi R8 R12 12 
[93m6352[92m li R8 117 
[93m6353[92m sbi R8 R12 13 
[93m6354[92m li R8 101 
[93m6355[92m sbi R8 R12 14 
[93m6356[92m li R8 115 
[93m6357[92m sbi R8 R12 15 
[93m6358[92m sbi R0 R12 16 
[93m6359[92m swi R12 R14 136 
[0m[94mprompt_164 = _t878_164[0m
[93m6360[92m lwi R8 R14 136 
[93m6361[92m swi R8 R14 4 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_164[0m
[93m6362[92m lwi R8 R14 4 
[93m6363[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m6364[92m la R8 label_442 
[93m6365[92m swi R8 R14 -8 
[93m6366[92m addi R14 R14 -52 
[93m6367[92m jmp label_8 
[0m[94mlabel_442:[0m
[0m[94m_t879_164 = ReturnVal[0m
[93m6368[92m lwi R8 R14 -4 
[93m6369[92m swi R8 R14 140 
[0m[94mlen_164 = _t879_164[0m
[93m6370[92m lwi R8 R14 140 
[93m6371[92m swi R8 R14 8 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_164[0m
[93m6372[92m lwi R8 R14 4 
[93m6373[92m swi R8 R14 -16 
[0m[94mparam len_164[0m
[93m6374[92m lwi R8 R14 8 
[93m6375[92m swi R8 R14 -20 
[0m[94m_t880_164 = #1[0m
[93m6376[92m li R8 1 
[93m6377[92m swi R8 R14 144 
[0m[94mparam _t880_164[0m
[93m6378[92m lwi R8 R14 144 
[93m6379[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m6380[92m la R8 label_443 
[93m6381[92m swi R8 R14 -8 
[93m6382[92m addi R14 R14 -180 
[93m6383[92m jmp label_85 
[0m[94mlabel_443:[0m
[0m[94m_t881_164 = ReturnVal[0m
[93m6384[92m lwi R8 R14 -4 
[93m6385[92m swi R8 R14 148 
[0m[94m_t882_166 = #0[0m
[93m6386[92m li R8 0 
[93m6387[92m swi R8 R14 152 
[0m[94mi_164 = _t882_166[0m
[93m6388[92m lwi R8 R14 152 
[93m6389[92m swi R8 R14 36 
[0m[94mlabel_444:[0m
[0m[94m_t883_166 = i_164 < n_164[0m
[93m6390[92m lwi R8 R14 36 
[93m6391[92m lwi R9 R14 0 
[93m6392[92m lt R10 R8 R9 
[93m6393[92m swi R10 R14 156 
[0m[94mif ( _t883_166 == #0 ) goto label_447[0m
[93m6394[92m lwi R8 R14 156 
[93m6395[92m cmp R8 R0 
[93m6396[92m jeq label_447 
[0m[94mgoto label_445[0m
[93m6397[92m jmp label_445 
[0m[94mlabel_446:[0m
[0m[94m_t884_166 = i_164[0m
[93m6398[92m lwi R8 R14 36 
[93m6399[92m swi R8 R14 160 
[0m[94mi_164 = i_164 + #1[0m
[93m6400[92m lwi R8 R14 36 
[93m6401[92m li R9 1 
[93m6402[92m add R10 R8 R9 
[93m6403[92m swi R10 R14 36 
[0m[94mgoto label_444[0m
[93m6404[92m jmp label_444 
[0m[94mlabel_445:[0m
[0m[94mFunctionCall get_num[0m
[0m[94mcall label_118[0m
[93m6405[92m la R8 label_448 
[93m6406[92m swi R8 R14 -8 
[93m6407[92m addi R14 R14 -204 
[93m6408[92m jmp label_118 
[0m[94mlabel_448:[0m
[0m[94m_t885_166 = ReturnVal[0m
[93m6409[92m lwi R8 R14 -4 
[93m6410[92m swi R8 R14 164 
[0m[94mk_166 = _t885_166[0m
[93m6411[92m lwi R8 R14 164 
[93m6412[92m swi R8 R14 40 
[0m[94mFunctionCall insert[0m
[0m[94mparam k_166[0m
[93m6413[92m lwi R8 R14 40 
[93m6414[92m swi R8 R14 -16 
[0m[94mparam values_164[0m
[93m6415[92m lwi R8 R14 16 
[93m6416[92m swi R8 R14 -20 
[0m[94mparam left_164[0m
[93m6417[92m lwi R8 R14 24 
[93m6418[92m swi R8 R14 -24 
[0m[94mparam right_164[0m
[93m6419[92m lwi R8 R14 32 
[93m6420[92m swi R8 R14 -28 
[0m[94mparam n_164[0m
[93m6421[92m lwi R8 R14 0 
[93m6422[92m swi R8 R14 -32 
[0m[94mcall label_410[0m
[93m6423[92m la R8 label_449 
[93m6424[92m swi R8 R14 -8 
[93m6425[92m addi R14 R14 -236 
[93m6426[92m jmp label_410 
[0m[94mlabel_449:[0m
[0m[94m_t886_166 = ReturnVal[0m
[93m6427[92m lwi R8 R14 -4 
[93m6428[92m swi R8 R14 168 
[0m[94mgoto label_446[0m
[93m6429[92m jmp label_446 
[0m[94mlabel_447:[0m
[0m[94mstring _t887_164 "Inorder Traversal of the Tree"[0m
[93m6430[92m subi R12 R12 32 
[93m6431[92m li R8 73 
[93m6432[92m sbi R8 R12 0 
[93m6433[92m li R8 110 
[93m6434[92m sbi R8 R12 1 
[93m6435[92m li R8 111 
[93m6436[92m sbi R8 R12 2 
[93m6437[92m li R8 114 
[93m6438[92m sbi R8 R12 3 
[93m6439[92m li R8 100 
[93m6440[92m sbi R8 R12 4 
[93m6441[92m li R8 101 
[93m6442[92m sbi R8 R12 5 
[93m6443[92m li R8 114 
[93m6444[92m sbi R8 R12 6 
[93m6445[92m li R8 32 
[93m6446[92m sbi R8 R12 7 
[93m6447[92m li R8 84 
[93m6448[92m sbi R8 R12 8 
[93m6449[92m li R8 114 
[93m6450[92m sbi R8 R12 9 
[93m6451[92m li R8 97 
[93m6452[92m sbi R8 R12 10 
[93m6453[92m li R8 118 
[93m6454[92m sbi R8 R12 11 
[93m6455[92m li R8 101 
[93m6456[92m sbi R8 R12 12 
[93m6457[92m li R8 114 
[93m6458[92m sbi R8 R12 13 
[93m6459[92m li R8 115 
[93m6460[92m sbi R8 R12 14 
[93m6461[92m li R8 97 
[93m6462[92m sbi R8 R12 15 
[93m6463[92m li R8 108 
[93m6464[92m sbi R8 R12 16 
[93m6465[92m li R8 32 
[93m6466[92m sbi R8 R12 17 
[93m6467[92m li R8 111 
[93m6468[92m sbi R8 R12 18 
[93m6469[92m li R8 102 
[93m6470[92m sbi R8 R12 19 
[93m6471[92m li R8 32 
[93m6472[92m sbi R8 R12 20 
[93m6473[92m li R8 116 
[93m6474[92m sbi R8 R12 21 
[93m6475[92m li R8 104 
[93m6476[92m sbi R8 R12 22 
[93m6477[92m li R8 101 
[93m6478[92m sbi R8 R12 23 
[93m6479[92m li R8 32 
[93m6480[92m sbi R8 R12 24 
[93m6481[92m li R8 84 
[93m6482[92m sbi R8 R12 25 
[93m6483[92m li R8 114 
[93m6484[92m sbi R8 R12 26 
[93m6485[92m li R8 101 
[93m6486[92m sbi R8 R12 27 
[93m6487[92m li R8 101 
[93m6488[92m sbi R8 R12 28 
[93m6489[92m sbi R0 R12 29 
[93m6490[92m swi R12 R14 172 
[0m[94mprompt_164 = _t887_164[0m
[93m6491[92m lwi R8 R14 172 
[93m6492[92m swi R8 R14 4 
[0m[94mFunctionCall strlen[0m
[0m[94mparam prompt_164[0m
[93m6493[92m lwi R8 R14 4 
[93m6494[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m6495[92m la R8 label_450 
[93m6496[92m swi R8 R14 -8 
[93m6497[92m addi R14 R14 -52 
[93m6498[92m jmp label_8 
[0m[94mlabel_450:[0m
[0m[94m_t888_164 = ReturnVal[0m
[93m6499[92m lwi R8 R14 -4 
[93m6500[92m swi R8 R14 176 
[0m[94mlen_164 = _t888_164[0m
[93m6501[92m lwi R8 R14 176 
[93m6502[92m swi R8 R14 8 
[0m[94mFunctionCall print_string[0m
[0m[94mparam prompt_164[0m
[93m6503[92m lwi R8 R14 4 
[93m6504[92m swi R8 R14 -16 
[0m[94mparam len_164[0m
[93m6505[92m lwi R8 R14 8 
[93m6506[92m swi R8 R14 -20 
[0m[94m_t889_164 = #1[0m
[93m6507[92m li R8 1 
[93m6508[92m swi R8 R14 180 
[0m[94mparam _t889_164[0m
[93m6509[92m lwi R8 R14 180 
[93m6510[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m6511[92m la R8 label_451 
[93m6512[92m swi R8 R14 -8 
[93m6513[92m addi R14 R14 -180 
[93m6514[92m jmp label_85 
[0m[94mlabel_451:[0m
[0m[94m_t890_164 = ReturnVal[0m
[93m6515[92m lwi R8 R14 -4 
[93m6516[92m swi R8 R14 184 
[0m[94mFunctionCall inorder[0m
[0m[94mparam values_164[0m
[93m6517[92m lwi R8 R14 16 
[93m6518[92m swi R8 R14 -16 
[0m[94mparam left_164[0m
[93m6519[92m lwi R8 R14 24 
[93m6520[92m swi R8 R14 -20 
[0m[94mparam right_164[0m
[93m6521[92m lwi R8 R14 32 
[93m6522[92m swi R8 R14 -24 
[0m[94m_t891_164 = #0[0m
[93m6523[92m li R8 0 
[93m6524[92m swi R8 R14 188 
[0m[94mparam _t891_164[0m
[93m6525[92m lwi R8 R14 188 
[93m6526[92m swi R8 R14 -28 
[0m[94mcall label_427[0m
[93m6527[92m la R8 label_452 
[93m6528[92m swi R8 R14 -8 
[93m6529[92m addi R14 R14 -104 
[93m6530[92m jmp label_427 
[0m[94mlabel_452:[0m
[0m[94m_t892_164 = ReturnVal[0m
[93m6531[92m lwi R8 R14 -4 
[93m6532[92m swi R8 R14 192 
[0m[94mFunctionCall print_string[0m
[0m[94mstring _t893_164 " "[0m
[93m6533[92m subi R12 R12 4 
[93m6534[92m li R8 32 
[93m6535[92m sbi R8 R12 0 
[93m6536[92m sbi R0 R12 1 
[93m6537[92m swi R12 R14 196 
[0m[94mparam _t893_164[0m
[93m6538[92m lwi R8 R14 196 
[93m6539[92m swi R8 R14 -16 
[0m[94m_t894_164 = #1[0m
[93m6540[92m li R8 1 
[93m6541[92m swi R8 R14 200 
[0m[94mparam _t894_164[0m
[93m6542[92m lwi R8 R14 200 
[93m6543[92m swi R8 R14 -20 
[0m[94m_t895_164 = #1[0m
[93m6544[92m li R8 1 
[93m6545[92m swi R8 R14 204 
[0m[94mparam _t895_164[0m
[93m6546[92m lwi R8 R14 204 
[93m6547[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m6548[92m la R8 label_453 
[93m6549[92m swi R8 R14 -8 
[93m6550[92m addi R14 R14 -180 
[93m6551[92m jmp label_85 
[0m[94mlabel_453:[0m
[0m[94m_t896_164 = ReturnVal[0m
[93m6552[92m lwi R8 R14 -4 
[93m6553[92m swi R8 R14 208 
[0m[94m_t897_164 = #0[0m
[93m6554[92m li R8 0 
[93m6555[92m swi R8 R14 212 
[0m[94mReturn _t897_164[0m
[93m6556[92m lwi R8 R14 212 
[93m6557[92m swi R8 R14 224 
[93m6558[92m lwi R12 R14 216 
[93m6559[92m li R8 26256 
[93m6560[92m lwi R9 R14 220 
[93m6561[92m sub R10 R9 R8 
[93m6562[92m addi R14 R14 228 
[93m6563[92m jr R10 
[0m-------------------------------------
Parsing get_keypress
k_167 0
_t898_167 4
_t899_167 8
[94mlabel_454:[0m
[93m6564[92m swi R12 R14 12 
[0m[94m_t898_167 = KEYBOARD_0 * #1[0m
[93m6565[92m lwi R8 R13 0 
[93m6566[92m li R9 1 
[93m6567[92m mul R10 R8 R9 
[93m6568[92m swi R10 R14 4 
[0m[94m_t899_167 = memory_0 + _t898_167[0m
[93m6569[92m lwi R8 R13 24 
[93m6570[92m lwi R9 R14 4 
[93m6571[92m add R10 R8 R9 
[93m6572[92m swi R10 R14 8 
[0m[94mk_167 = *_t899_167[0m
[93m6573[92m lwi R8 R14 8 
[93m6574[92m lbi R8 R8 0 
[93m6575[92m swi R8 R14 0 
[0m[94mReturn k_167[0m
[93m6576[92m lwi R8 R14 0 
[93m6577[92m swi R8 R14 20 
[93m6578[92m lwi R12 R14 12 
[93m6579[92m li R8 26336 
[93m6580[92m lwi R9 R14 16 
[93m6581[92m sub R10 R9 R8 
[93m6582[92m addi R14 R14 24 
[93m6583[92m jr R10 
[0m-------------------------------------
Parsing Palindrome
n_168 0
len1_168 4
len2_168 8
len3_168 12
str2_168 16
str3_168 20
str1_168 24
temp_168 28
res_168 32
_t900_168 36
_t901_168 40
_t902_168 44
_t903_168 48
_t904_168 52
_t905_168 56
_t906_168 60
_t907_168 64
_t908_168 68
_t909_168 72
_t910_169 76
_t911_169 80
_t912_169 84
_t913_169 88
_t914_169 92
_t915_169 96
_t916_169 100
_t917_169 104
_t918_169 108
_t919_168 112
_t920_170 116
_t921_170 120
_t922_171 124
_t923_171 128
_t924_168 132
[94mlabel_455:[0m
[93m6584[92m swi R12 R14 136 
[0m[94mstring _t900_168 "Enter the number to check palindrome or not: "[0m
[93m6585[92m subi R12 R12 48 
[93m6586[92m li R8 69 
[93m6587[92m sbi R8 R12 0 
[93m6588[92m li R8 110 
[93m6589[92m sbi R8 R12 1 
[93m6590[92m li R8 116 
[93m6591[92m sbi R8 R12 2 
[93m6592[92m li R8 101 
[93m6593[92m sbi R8 R12 3 
[93m6594[92m li R8 114 
[93m6595[92m sbi R8 R12 4 
[93m6596[92m li R8 32 
[93m6597[92m sbi R8 R12 5 
[93m6598[92m li R8 116 
[93m6599[92m sbi R8 R12 6 
[93m6600[92m li R8 104 
[93m6601[92m sbi R8 R12 7 
[93m6602[92m li R8 101 
[93m6603[92m sbi R8 R12 8 
[93m6604[92m li R8 32 
[93m6605[92m sbi R8 R12 9 
[93m6606[92m li R8 110 
[93m6607[92m sbi R8 R12 10 
[93m6608[92m li R8 117 
[93m6609[92m sbi R8 R12 11 
[93m6610[92m li R8 109 
[93m6611[92m sbi R8 R12 12 
[93m6612[92m li R8 98 
[93m6613[92m sbi R8 R12 13 
[93m6614[92m li R8 101 
[93m6615[92m sbi R8 R12 14 
[93m6616[92m li R8 114 
[93m6617[92m sbi R8 R12 15 
[93m6618[92m li R8 32 
[93m6619[92m sbi R8 R12 16 
[93m6620[92m li R8 116 
[93m6621[92m sbi R8 R12 17 
[93m6622[92m li R8 111 
[93m6623[92m sbi R8 R12 18 
[93m6624[92m li R8 32 
[93m6625[92m sbi R8 R12 19 
[93m6626[92m li R8 99 
[93m6627[92m sbi R8 R12 20 
[93m6628[92m li R8 104 
[93m6629[92m sbi R8 R12 21 
[93m6630[92m li R8 101 
[93m6631[92m sbi R8 R12 22 
[93m6632[92m li R8 99 
[93m6633[92m sbi R8 R12 23 
[93m6634[92m li R8 107 
[93m6635[92m sbi R8 R12 24 
[93m6636[92m li R8 32 
[93m6637[92m sbi R8 R12 25 
[93m6638[92m li R8 112 
[93m6639[92m sbi R8 R12 26 
[93m6640[92m li R8 97 
[93m6641[92m sbi R8 R12 27 
[93m6642[92m li R8 108 
[93m6643[92m sbi R8 R12 28 
[93m6644[92m li R8 105 
[93m6645[92m sbi R8 R12 29 
[93m6646[92m li R8 110 
[93m6647[92m sbi R8 R12 30 
[93m6648[92m li R8 100 
[93m6649[92m sbi R8 R12 31 
[93m6650[92m li R8 114 
[93m6651[92m sbi R8 R12 32 
[93m6652[92m li R8 111 
[93m6653[92m sbi R8 R12 33 
[93m6654[92m li R8 109 
[93m6655[92m sbi R8 R12 34 
[93m6656[92m li R8 101 
[93m6657[92m sbi R8 R12 35 
[93m6658[92m li R8 32 
[93m6659[92m sbi R8 R12 36 
[93m6660[92m li R8 111 
[93m6661[92m sbi R8 R12 37 
[93m6662[92m li R8 114 
[93m6663[92m sbi R8 R12 38 
[93m6664[92m li R8 32 
[93m6665[92m sbi R8 R12 39 
[93m6666[92m li R8 110 
[93m6667[92m sbi R8 R12 40 
[93m6668[92m li R8 111 
[93m6669[92m sbi R8 R12 41 
[93m6670[92m li R8 116 
[93m6671[92m sbi R8 R12 42 
[93m6672[92m li R8 58 
[93m6673[92m sbi R8 R12 43 
[93m6674[92m li R8 32 
[93m6675[92m sbi R8 R12 44 
[93m6676[92m sbi R0 R12 45 
[93m6677[92m swi R12 R14 36 
[0m[94mstr1_168 = _t900_168[0m
[93m6678[92m lwi R8 R14 36 
[93m6679[92m swi R8 R14 24 
[0m[94mFunctionCall strlen[0m
[0m[94mparam str1_168[0m
[93m6680[92m lwi R8 R14 24 
[93m6681[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m6682[92m la R8 label_456 
[93m6683[92m swi R8 R14 -8 
[93m6684[92m addi R14 R14 -52 
[93m6685[92m jmp label_8 
[0m[94mlabel_456:[0m
[0m[94m_t901_168 = ReturnVal[0m
[93m6686[92m lwi R8 R14 -4 
[93m6687[92m swi R8 R14 40 
[0m[94mlen1_168 = _t901_168[0m
[93m6688[92m lwi R8 R14 40 
[93m6689[92m swi R8 R14 4 
[0m[94mstring _t902_168 "Palindrome"[0m
[93m6690[92m subi R12 R12 12 
[93m6691[92m li R8 80 
[93m6692[92m sbi R8 R12 0 
[93m6693[92m li R8 97 
[93m6694[92m sbi R8 R12 1 
[93m6695[92m li R8 108 
[93m6696[92m sbi R8 R12 2 
[93m6697[92m li R8 105 
[93m6698[92m sbi R8 R12 3 
[93m6699[92m li R8 110 
[93m6700[92m sbi R8 R12 4 
[93m6701[92m li R8 100 
[93m6702[92m sbi R8 R12 5 
[93m6703[92m li R8 114 
[93m6704[92m sbi R8 R12 6 
[93m6705[92m li R8 111 
[93m6706[92m sbi R8 R12 7 
[93m6707[92m li R8 109 
[93m6708[92m sbi R8 R12 8 
[93m6709[92m li R8 101 
[93m6710[92m sbi R8 R12 9 
[93m6711[92m sbi R0 R12 10 
[93m6712[92m swi R12 R14 44 
[0m[94mstr2_168 = _t902_168[0m
[93m6713[92m lwi R8 R14 44 
[93m6714[92m swi R8 R14 16 
[0m[94mFunctionCall strlen[0m
[0m[94mparam str2_168[0m
[93m6715[92m lwi R8 R14 16 
[93m6716[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m6717[92m la R8 label_457 
[93m6718[92m swi R8 R14 -8 
[93m6719[92m addi R14 R14 -52 
[93m6720[92m jmp label_8 
[0m[94mlabel_457:[0m
[0m[94m_t903_168 = ReturnVal[0m
[93m6721[92m lwi R8 R14 -4 
[93m6722[92m swi R8 R14 48 
[0m[94mlen2_168 = _t903_168[0m
[93m6723[92m lwi R8 R14 48 
[93m6724[92m swi R8 R14 8 
[0m[94mstring _t904_168 "Not Palindrome"[0m
[93m6725[92m subi R12 R12 16 
[93m6726[92m li R8 78 
[93m6727[92m sbi R8 R12 0 
[93m6728[92m li R8 111 
[93m6729[92m sbi R8 R12 1 
[93m6730[92m li R8 116 
[93m6731[92m sbi R8 R12 2 
[93m6732[92m li R8 32 
[93m6733[92m sbi R8 R12 3 
[93m6734[92m li R8 80 
[93m6735[92m sbi R8 R12 4 
[93m6736[92m li R8 97 
[93m6737[92m sbi R8 R12 5 
[93m6738[92m li R8 108 
[93m6739[92m sbi R8 R12 6 
[93m6740[92m li R8 105 
[93m6741[92m sbi R8 R12 7 
[93m6742[92m li R8 110 
[93m6743[92m sbi R8 R12 8 
[93m6744[92m li R8 100 
[93m6745[92m sbi R8 R12 9 
[93m6746[92m li R8 114 
[93m6747[92m sbi R8 R12 10 
[93m6748[92m li R8 111 
[93m6749[92m sbi R8 R12 11 
[93m6750[92m li R8 109 
[93m6751[92m sbi R8 R12 12 
[93m6752[92m li R8 101 
[93m6753[92m sbi R8 R12 13 
[93m6754[92m sbi R0 R12 14 
[93m6755[92m swi R12 R14 52 
[0m[94mstr3_168 = _t904_168[0m
[93m6756[92m lwi R8 R14 52 
[93m6757[92m swi R8 R14 20 
[0m[94mFunctionCall strlen[0m
[0m[94mparam str3_168[0m
[93m6758[92m lwi R8 R14 20 
[93m6759[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m6760[92m la R8 label_458 
[93m6761[92m swi R8 R14 -8 
[93m6762[92m addi R14 R14 -52 
[93m6763[92m jmp label_8 
[0m[94mlabel_458:[0m
[0m[94m_t905_168 = ReturnVal[0m
[93m6764[92m lwi R8 R14 -4 
[93m6765[92m swi R8 R14 56 
[0m[94mlen3_168 = _t905_168[0m
[93m6766[92m lwi R8 R14 56 
[93m6767[92m swi R8 R14 12 
[0m[94mFunctionCall print_string[0m
[0m[94mparam str1_168[0m
[93m6768[92m lwi R8 R14 24 
[93m6769[92m swi R8 R14 -16 
[0m[94mparam len1_168[0m
[93m6770[92m lwi R8 R14 4 
[93m6771[92m swi R8 R14 -20 
[0m[94m_t906_168 = #0[0m
[93m6772[92m li R8 0 
[93m6773[92m swi R8 R14 60 
[0m[94mparam _t906_168[0m
[93m6774[92m lwi R8 R14 60 
[93m6775[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m6776[92m la R8 label_459 
[93m6777[92m swi R8 R14 -8 
[93m6778[92m addi R14 R14 -180 
[93m6779[92m jmp label_85 
[0m[94mlabel_459:[0m
[0m[94m_t907_168 = ReturnVal[0m
[93m6780[92m lwi R8 R14 -4 
[93m6781[92m swi R8 R14 64 
[0m[94mFunctionCall get_num[0m
[0m[94mcall label_118[0m
[93m6782[92m la R8 label_460 
[93m6783[92m swi R8 R14 -8 
[93m6784[92m addi R14 R14 -204 
[93m6785[92m jmp label_118 
[0m[94mlabel_460:[0m
[0m[94m_t908_168 = ReturnVal[0m
[93m6786[92m lwi R8 R14 -4 
[93m6787[92m swi R8 R14 68 
[0m[94mn_168 = _t908_168[0m
[93m6788[92m lwi R8 R14 68 
[93m6789[92m swi R8 R14 0 
[0m[94mtemp_168 = n_168[0m
[93m6790[92m lwi R8 R14 0 
[93m6791[92m swi R8 R14 28 
[0m[94m_t909_168 = #0[0m
[93m6792[92m li R8 0 
[93m6793[92m swi R8 R14 72 
[0m[94mres_168 = _t909_168[0m
[93m6794[92m lwi R8 R14 72 
[93m6795[92m swi R8 R14 32 
[0m[94mlabel_461:[0m
[0m[94m_t910_169 = #0[0m
[93m6796[92m li R8 0 
[93m6797[92m swi R8 R14 76 
[0m[94m_t911_169 = temp_168 != _t910_169[0m
[93m6798[92m lwi R8 R14 28 
[93m6799[92m lwi R9 R14 76 
[93m6800[92m neq R10 R8 R9 
[93m6801[92m swi R10 R14 80 
[0m[94mif ( _t911_169 == #0 ) goto label_464[0m
[93m6802[92m lwi R8 R14 80 
[93m6803[92m cmp R8 R0 
[93m6804[92m jeq label_464 
[0m[94mgoto label_462[0m
[93m6805[92m jmp label_462 
[0m[94mlabel_463:[0m
[0m[94mgoto label_461[0m
[93m6806[92m jmp label_461 
[0m[94mlabel_462:[0m
[0m[94m_t912_169 = #10[0m
[93m6807[92m li R8 10 
[93m6808[92m swi R8 R14 84 
[0m[94m_t913_169 = res_168 * _t912_169[0m
[93m6809[92m lwi R8 R14 32 
[93m6810[92m lwi R9 R14 84 
[93m6811[92m mul R10 R8 R9 
[93m6812[92m swi R10 R14 88 
[0m[94mres_168 = _t913_169[0m
[93m6813[92m lwi R8 R14 88 
[93m6814[92m swi R8 R14 32 
[0m[94m_t914_169 = #10[0m
[93m6815[92m li R8 10 
[93m6816[92m swi R8 R14 92 
[0m[94m_t915_169 = temp_168 % _t914_169[0m
[93m6817[92m lwi R8 R14 28 
[93m6818[92m lwi R9 R14 92 
[93m6819[92m mod R10 R8 R9 
[93m6820[92m swi R10 R14 96 
[0m[94m_t916_169 = res_168 + _t915_169[0m
[93m6821[92m lwi R8 R14 32 
[93m6822[92m lwi R9 R14 96 
[93m6823[92m add R10 R8 R9 
[93m6824[92m swi R10 R14 100 
[0m[94mres_168 = _t916_169[0m
[93m6825[92m lwi R8 R14 100 
[93m6826[92m swi R8 R14 32 
[0m[94m_t917_169 = #10[0m
[93m6827[92m li R8 10 
[93m6828[92m swi R8 R14 104 
[0m[94m_t918_169 = temp_168 / _t917_169[0m
[93m6829[92m lwi R8 R14 28 
[93m6830[92m lwi R9 R14 104 
[93m6831[92m div R10 R8 R9 
[93m6832[92m swi R10 R14 108 
[0m[94mtemp_168 = _t918_169[0m
[93m6833[92m lwi R8 R14 108 
[93m6834[92m swi R8 R14 28 
[0m[94mgoto label_463[0m
[93m6835[92m jmp label_463 
[0m[94mlabel_464:[0m
[0m[94m_t919_168 = res_168 == n_168[0m
[93m6836[92m lwi R8 R14 32 
[93m6837[92m lwi R9 R14 0 
[93m6838[92m eq R10 R8 R9 
[93m6839[92m swi R10 R14 112 
[0m[94mif ( _t919_168 == #0 ) goto label_465[0m
[93m6840[92m lwi R8 R14 112 
[93m6841[92m cmp R8 R0 
[93m6842[92m jeq label_465 
[0m[94mFunctionCall print_string[0m
[0m[94mparam str2_168[0m
[93m6843[92m lwi R8 R14 16 
[93m6844[92m swi R8 R14 -16 
[0m[94mparam len2_168[0m
[93m6845[92m lwi R8 R14 8 
[93m6846[92m swi R8 R14 -20 
[0m[94m_t920_170 = #0[0m
[93m6847[92m li R8 0 
[93m6848[92m swi R8 R14 116 
[0m[94mparam _t920_170[0m
[93m6849[92m lwi R8 R14 116 
[93m6850[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m6851[92m la R8 label_467 
[93m6852[92m swi R8 R14 -8 
[93m6853[92m addi R14 R14 -180 
[93m6854[92m jmp label_85 
[0m[94mlabel_467:[0m
[0m[94m_t921_170 = ReturnVal[0m
[93m6855[92m lwi R8 R14 -4 
[93m6856[92m swi R8 R14 120 
[0m[94mgoto label_466[0m
[93m6857[92m jmp label_466 
[0m[94mlabel_465:[0m
[0m[94mFunctionCall print_string[0m
[0m[94mparam str3_168[0m
[93m6858[92m lwi R8 R14 20 
[93m6859[92m swi R8 R14 -16 
[0m[94mparam len3_168[0m
[93m6860[92m lwi R8 R14 12 
[93m6861[92m swi R8 R14 -20 
[0m[94m_t922_171 = #0[0m
[93m6862[92m li R8 0 
[93m6863[92m swi R8 R14 124 
[0m[94mparam _t922_171[0m
[93m6864[92m lwi R8 R14 124 
[93m6865[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m6866[92m la R8 label_468 
[93m6867[92m swi R8 R14 -8 
[93m6868[92m addi R14 R14 -180 
[93m6869[92m jmp label_85 
[0m[94mlabel_468:[0m
[0m[94m_t923_171 = ReturnVal[0m
[93m6870[92m lwi R8 R14 -4 
[93m6871[92m swi R8 R14 128 
[0m[94mlabel_466:[0m
[0m[94m_t924_168 = #0[0m
[93m6872[92m li R8 0 
[93m6873[92m swi R8 R14 132 
[0m[94mReturn _t924_168[0m
[93m6874[92m lwi R8 R14 132 
[93m6875[92m swi R8 R14 144 
[93m6876[92m lwi R12 R14 136 
[93m6877[92m li R8 27528 
[93m6878[92m lwi R9 R14 140 
[93m6879[92m sub R10 R9 R8 
[93m6880[92m addi R14 R14 148 
[93m6881[92m jr R10 
[0m-------------------------------------
Parsing SumofNatural
n_172 0
len1_172 4
str1_172 8
res_172 12
i_172 16
_t925_172 20
_t926_172 24
_t927_172 28
_t928_172 32
_t929_172 36
_t930_172 40
_t931_173 44
_t932_173 48
_t933_173 52
_t934_173 56
_t935_172 60
_t936_172 64
_t937_172 68
_t938_172 72
_t939_172 76
_t940_172 80
_t941_172 84
[94mlabel_469:[0m
[93m6882[92m swi R12 R14 88 
[0m[94mstring _t925_172 "Enter the number: "[0m
[93m6883[92m subi R12 R12 20 
[93m6884[92m li R8 69 
[93m6885[92m sbi R8 R12 0 
[93m6886[92m li R8 110 
[93m6887[92m sbi R8 R12 1 
[93m6888[92m li R8 116 
[93m6889[92m sbi R8 R12 2 
[93m6890[92m li R8 101 
[93m6891[92m sbi R8 R12 3 
[93m6892[92m li R8 114 
[93m6893[92m sbi R8 R12 4 
[93m6894[92m li R8 32 
[93m6895[92m sbi R8 R12 5 
[93m6896[92m li R8 116 
[93m6897[92m sbi R8 R12 6 
[93m6898[92m li R8 104 
[93m6899[92m sbi R8 R12 7 
[93m6900[92m li R8 101 
[93m6901[92m sbi R8 R12 8 
[93m6902[92m li R8 32 
[93m6903[92m sbi R8 R12 9 
[93m6904[92m li R8 110 
[93m6905[92m sbi R8 R12 10 
[93m6906[92m li R8 117 
[93m6907[92m sbi R8 R12 11 
[93m6908[92m li R8 109 
[93m6909[92m sbi R8 R12 12 
[93m6910[92m li R8 98 
[93m6911[92m sbi R8 R12 13 
[93m6912[92m li R8 101 
[93m6913[92m sbi R8 R12 14 
[93m6914[92m li R8 114 
[93m6915[92m sbi R8 R12 15 
[93m6916[92m li R8 58 
[93m6917[92m sbi R8 R12 16 
[93m6918[92m li R8 32 
[93m6919[92m sbi R8 R12 17 
[93m6920[92m sbi R0 R12 18 
[93m6921[92m swi R12 R14 20 
[0m[94mstr1_172 = _t925_172[0m
[93m6922[92m lwi R8 R14 20 
[93m6923[92m swi R8 R14 8 
[0m[94mFunctionCall strlen[0m
[0m[94mparam str1_172[0m
[93m6924[92m lwi R8 R14 8 
[93m6925[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m6926[92m la R8 label_470 
[93m6927[92m swi R8 R14 -8 
[93m6928[92m addi R14 R14 -52 
[93m6929[92m jmp label_8 
[0m[94mlabel_470:[0m
[0m[94m_t926_172 = ReturnVal[0m
[93m6930[92m lwi R8 R14 -4 
[93m6931[92m swi R8 R14 24 
[0m[94mlen1_172 = _t926_172[0m
[93m6932[92m lwi R8 R14 24 
[93m6933[92m swi R8 R14 4 
[0m[94mFunctionCall print_string[0m
[0m[94mparam str1_172[0m
[93m6934[92m lwi R8 R14 8 
[93m6935[92m swi R8 R14 -16 
[0m[94mparam len1_172[0m
[93m6936[92m lwi R8 R14 4 
[93m6937[92m swi R8 R14 -20 
[0m[94m_t927_172 = #0[0m
[93m6938[92m li R8 0 
[93m6939[92m swi R8 R14 28 
[0m[94mparam _t927_172[0m
[93m6940[92m lwi R8 R14 28 
[93m6941[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m6942[92m la R8 label_471 
[93m6943[92m swi R8 R14 -8 
[93m6944[92m addi R14 R14 -180 
[93m6945[92m jmp label_85 
[0m[94mlabel_471:[0m
[0m[94m_t928_172 = ReturnVal[0m
[93m6946[92m lwi R8 R14 -4 
[93m6947[92m swi R8 R14 32 
[0m[94mFunctionCall get_num[0m
[0m[94mcall label_118[0m
[93m6948[92m la R8 label_472 
[93m6949[92m swi R8 R14 -8 
[93m6950[92m addi R14 R14 -204 
[93m6951[92m jmp label_118 
[0m[94mlabel_472:[0m
[0m[94m_t929_172 = ReturnVal[0m
[93m6952[92m lwi R8 R14 -4 
[93m6953[92m swi R8 R14 36 
[0m[94mn_172 = _t929_172[0m
[93m6954[92m lwi R8 R14 36 
[93m6955[92m swi R8 R14 0 
[0m[94m_t930_172 = #0[0m
[93m6956[92m li R8 0 
[93m6957[92m swi R8 R14 40 
[0m[94mres_172 = _t930_172[0m
[93m6958[92m lwi R8 R14 40 
[93m6959[92m swi R8 R14 12 
[0m[94m_t931_173 = #0[0m
[93m6960[92m li R8 0 
[93m6961[92m swi R8 R14 44 
[0m[94mi_172 = _t931_173[0m
[93m6962[92m lwi R8 R14 44 
[93m6963[92m swi R8 R14 16 
[0m[94mlabel_473:[0m
[0m[94m_t932_173 = i_172 < n_172[0m
[93m6964[92m lwi R8 R14 16 
[93m6965[92m lwi R9 R14 0 
[93m6966[92m lt R10 R8 R9 
[93m6967[92m swi R10 R14 48 
[0m[94mif ( _t932_173 == #0 ) goto label_476[0m
[93m6968[92m lwi R8 R14 48 
[93m6969[92m cmp R8 R0 
[93m6970[92m jeq label_476 
[0m[94mgoto label_474[0m
[93m6971[92m jmp label_474 
[0m[94mlabel_475:[0m
[0m[94m_t933_173 = i_172[0m
[93m6972[92m lwi R8 R14 16 
[93m6973[92m swi R8 R14 52 
[0m[94mi_172 = i_172 + #1[0m
[93m6974[92m lwi R8 R14 16 
[93m6975[92m li R9 1 
[93m6976[92m add R10 R8 R9 
[93m6977[92m swi R10 R14 16 
[0m[94mgoto label_473[0m
[93m6978[92m jmp label_473 
[0m[94mlabel_474:[0m
[0m[94m_t934_173 = res_172 + i_172[0m
[93m6979[92m lwi R8 R14 12 
[93m6980[92m lwi R9 R14 16 
[93m6981[92m add R10 R8 R9 
[93m6982[92m swi R10 R14 56 
[0m[94mres_172 = _t934_173[0m
[93m6983[92m lwi R8 R14 56 
[93m6984[92m swi R8 R14 12 
[0m[94mgoto label_475[0m
[93m6985[92m jmp label_475 
[0m[94mlabel_476:[0m
[0m[94mFunctionCall print_string[0m
[0m[94mstring _t935_172 "Sum of natural numbers is: "[0m
[93m6986[92m subi R12 R12 28 
[93m6987[92m li R8 83 
[93m6988[92m sbi R8 R12 0 
[93m6989[92m li R8 117 
[93m6990[92m sbi R8 R12 1 
[93m6991[92m li R8 109 
[93m6992[92m sbi R8 R12 2 
[93m6993[92m li R8 32 
[93m6994[92m sbi R8 R12 3 
[93m6995[92m li R8 111 
[93m6996[92m sbi R8 R12 4 
[93m6997[92m li R8 102 
[93m6998[92m sbi R8 R12 5 
[93m6999[92m li R8 32 
[93m7000[92m sbi R8 R12 6 
[93m7001[92m li R8 110 
[93m7002[92m sbi R8 R12 7 
[93m7003[92m li R8 97 
[93m7004[92m sbi R8 R12 8 
[93m7005[92m li R8 116 
[93m7006[92m sbi R8 R12 9 
[93m7007[92m li R8 117 
[93m7008[92m sbi R8 R12 10 
[93m7009[92m li R8 114 
[93m7010[92m sbi R8 R12 11 
[93m7011[92m li R8 97 
[93m7012[92m sbi R8 R12 12 
[93m7013[92m li R8 108 
[93m7014[92m sbi R8 R12 13 
[93m7015[92m li R8 32 
[93m7016[92m sbi R8 R12 14 
[93m7017[92m li R8 110 
[93m7018[92m sbi R8 R12 15 
[93m7019[92m li R8 117 
[93m7020[92m sbi R8 R12 16 
[93m7021[92m li R8 109 
[93m7022[92m sbi R8 R12 17 
[93m7023[92m li R8 98 
[93m7024[92m sbi R8 R12 18 
[93m7025[92m li R8 101 
[93m7026[92m sbi R8 R12 19 
[93m7027[92m li R8 114 
[93m7028[92m sbi R8 R12 20 
[93m7029[92m li R8 115 
[93m7030[92m sbi R8 R12 21 
[93m7031[92m li R8 32 
[93m7032[92m sbi R8 R12 22 
[93m7033[92m li R8 105 
[93m7034[92m sbi R8 R12 23 
[93m7035[92m li R8 115 
[93m7036[92m sbi R8 R12 24 
[93m7037[92m li R8 58 
[93m7038[92m sbi R8 R12 25 
[93m7039[92m li R8 32 
[93m7040[92m sbi R8 R12 26 
[93m7041[92m sbi R0 R12 27 
[93m7042[92m swi R12 R14 60 
[0m[94mparam _t935_172[0m
[93m7043[92m lwi R8 R14 60 
[93m7044[92m swi R8 R14 -16 
[0m[94m_t936_172 = #27[0m
[93m7045[92m li R8 27 
[93m7046[92m swi R8 R14 64 
[0m[94mparam _t936_172[0m
[93m7047[92m lwi R8 R14 64 
[93m7048[92m swi R8 R14 -20 
[0m[94m_t937_172 = #0[0m
[93m7049[92m li R8 0 
[93m7050[92m swi R8 R14 68 
[0m[94mparam _t937_172[0m
[93m7051[92m lwi R8 R14 68 
[93m7052[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7053[92m la R8 label_477 
[93m7054[92m swi R8 R14 -8 
[93m7055[92m addi R14 R14 -180 
[93m7056[92m jmp label_85 
[0m[94mlabel_477:[0m
[0m[94m_t938_172 = ReturnVal[0m
[93m7057[92m lwi R8 R14 -4 
[93m7058[92m swi R8 R14 72 
[0m[94mFunctionCall print_num[0m
[0m[94mparam res_172[0m
[93m7059[92m lwi R8 R14 12 
[93m7060[92m swi R8 R14 -16 
[0m[94m_t939_172 = #1[0m
[93m7061[92m li R8 1 
[93m7062[92m swi R8 R14 76 
[0m[94mparam _t939_172[0m
[93m7063[92m lwi R8 R14 76 
[93m7064[92m swi R8 R14 -20 
[0m[94mcall label_139[0m
[93m7065[92m la R8 label_478 
[93m7066[92m swi R8 R14 -8 
[93m7067[92m addi R14 R14 -152 
[93m7068[92m jmp label_139 
[0m[94mlabel_478:[0m
[0m[94m_t940_172 = ReturnVal[0m
[93m7069[92m lwi R8 R14 -4 
[93m7070[92m swi R8 R14 80 
[0m[94m_t941_172 = #0[0m
[93m7071[92m li R8 0 
[93m7072[92m swi R8 R14 84 
[0m[94mReturn _t941_172[0m
[93m7073[92m lwi R8 R14 84 
[93m7074[92m swi R8 R14 96 
[93m7075[92m lwi R12 R14 88 
[93m7076[92m li R8 28324 
[93m7077[92m lwi R9 R14 92 
[93m7078[92m sub R10 R9 R8 
[93m7079[92m addi R14 R14 100 
[93m7080[92m jr R10 
[0m-------------------------------------
Parsing rfactorial
n_174 40
_t942_174 0
_t943_174 4
_t944_174 8
_t945_174 12
_t946_174 16
_t947_175 20
_t948_176 24
_t949_176 28
_t950_176 32
_t951_176 36
[94mlabel_479:[0m
[93m7081[92m swi R12 R14 44 
[0m[94m_t942_174 = #0[0m
[93m7082[92m li R8 0 
[93m7083[92m swi R8 R14 0 
[0m[94m_t943_174 = n_174 == _t942_174[0m
[93m7084[92m lwi R8 R14 40 
[93m7085[92m lwi R9 R14 0 
[93m7086[92m eq R10 R8 R9 
[93m7087[92m swi R10 R14 4 
[0m[94m_t944_174 = #1[0m
[93m7088[92m li R8 1 
[93m7089[92m swi R8 R14 8 
[0m[94m_t945_174 = n_174 == _t944_174[0m
[93m7090[92m lwi R8 R14 40 
[93m7091[92m lwi R9 R14 8 
[93m7092[92m eq R10 R8 R9 
[93m7093[92m swi R10 R14 12 
[0m[94m_t946_174 = _t943_174 || _t945_174[0m
[93m7094[92m lwi R8 R14 4 
[93m7095[92m lwi R9 R14 12 
[93m7096[92m or R10 R8 R9 
[93m7097[92m swi R10 R14 16 
[0m[94mif ( _t946_174 == #0 ) goto label_480[0m
[93m7098[92m lwi R8 R14 16 
[93m7099[92m cmp R8 R0 
[93m7100[92m jeq label_480 
[0m[94m_t947_175 = #1[0m
[93m7101[92m li R8 1 
[93m7102[92m swi R8 R14 20 
[0m[94mReturn _t947_175[0m
[93m7103[92m lwi R8 R14 20 
[93m7104[92m swi R8 R14 52 
[93m7105[92m lwi R12 R14 44 
[93m7106[92m li R8 28444 
[93m7107[92m lwi R9 R14 48 
[93m7108[92m sub R10 R9 R8 
[93m7109[92m addi R14 R14 56 
[93m7110[92m jr R10 
[0m[94mgoto label_481[0m
[93m7111[92m jmp label_481 
[0m[94mlabel_480:[0m
[0m[94mFunctionCall rfactorial[0m
[0m[94m_t948_176 = #1[0m
[93m7112[92m li R8 1 
[93m7113[92m swi R8 R14 24 
[0m[94m_t949_176 = n_174 - _t948_176[0m
[93m7114[92m lwi R8 R14 40 
[93m7115[92m lwi R9 R14 24 
[93m7116[92m sub R10 R8 R9 
[93m7117[92m swi R10 R14 28 
[0m[94mparam _t949_176[0m
[93m7118[92m lwi R8 R14 28 
[93m7119[92m swi R8 R14 -16 
[0m[94mcall label_479[0m
[93m7120[92m la R8 label_482 
[93m7121[92m swi R8 R14 -8 
[93m7122[92m addi R14 R14 -56 
[93m7123[92m jmp label_479 
[0m[94mlabel_482:[0m
[0m[94m_t950_176 = ReturnVal[0m
[93m7124[92m lwi R8 R14 -4 
[93m7125[92m swi R8 R14 32 
[0m[94m_t951_176 = n_174 * _t950_176[0m
[93m7126[92m lwi R8 R14 40 
[93m7127[92m lwi R9 R14 32 
[93m7128[92m mul R10 R8 R9 
[93m7129[92m swi R10 R14 36 
[0m[94mReturn _t951_176[0m
[93m7130[92m lwi R8 R14 36 
[93m7131[92m swi R8 R14 52 
[93m7132[92m lwi R12 R14 44 
[93m7133[92m li R8 28552 
[93m7134[92m lwi R9 R14 48 
[93m7135[92m sub R10 R9 R8 
[93m7136[92m addi R14 R14 56 
[93m7137[92m jr R10 
[0m[94mlabel_481:[0m
[0m-------------------------------------
Parsing Factorial_ofN
n_177 0
len1_177 4
len2_177 8
str2_177 12
str1_177 16
temp_177 20
res_177 24
_t952_177 28
_t953_177 32
_t954_177 36
_t955_177 40
_t956_177 44
_t957_177 48
_t958_177 52
_t959_177 56
_t960_177 60
_t961_177 64
_t962_177 68
_t963_177 72
_t964_177 76
[94mlabel_483:[0m
[93m7138[92m swi R12 R14 80 
[0m[94mstring _t952_177 "Enter the number : "[0m
[93m7139[92m subi R12 R12 20 
[93m7140[92m li R8 69 
[93m7141[92m sbi R8 R12 0 
[93m7142[92m li R8 110 
[93m7143[92m sbi R8 R12 1 
[93m7144[92m li R8 116 
[93m7145[92m sbi R8 R12 2 
[93m7146[92m li R8 101 
[93m7147[92m sbi R8 R12 3 
[93m7148[92m li R8 114 
[93m7149[92m sbi R8 R12 4 
[93m7150[92m li R8 32 
[93m7151[92m sbi R8 R12 5 
[93m7152[92m li R8 116 
[93m7153[92m sbi R8 R12 6 
[93m7154[92m li R8 104 
[93m7155[92m sbi R8 R12 7 
[93m7156[92m li R8 101 
[93m7157[92m sbi R8 R12 8 
[93m7158[92m li R8 32 
[93m7159[92m sbi R8 R12 9 
[93m7160[92m li R8 110 
[93m7161[92m sbi R8 R12 10 
[93m7162[92m li R8 117 
[93m7163[92m sbi R8 R12 11 
[93m7164[92m li R8 109 
[93m7165[92m sbi R8 R12 12 
[93m7166[92m li R8 98 
[93m7167[92m sbi R8 R12 13 
[93m7168[92m li R8 101 
[93m7169[92m sbi R8 R12 14 
[93m7170[92m li R8 114 
[93m7171[92m sbi R8 R12 15 
[93m7172[92m li R8 32 
[93m7173[92m sbi R8 R12 16 
[93m7174[92m li R8 58 
[93m7175[92m sbi R8 R12 17 
[93m7176[92m li R8 32 
[93m7177[92m sbi R8 R12 18 
[93m7178[92m sbi R0 R12 19 
[93m7179[92m swi R12 R14 28 
[0m[94mstr1_177 = _t952_177[0m
[93m7180[92m lwi R8 R14 28 
[93m7181[92m swi R8 R14 16 
[0m[94mFunctionCall strlen[0m
[0m[94mparam str1_177[0m
[93m7182[92m lwi R8 R14 16 
[93m7183[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m7184[92m la R8 label_484 
[93m7185[92m swi R8 R14 -8 
[93m7186[92m addi R14 R14 -52 
[93m7187[92m jmp label_8 
[0m[94mlabel_484:[0m
[0m[94m_t953_177 = ReturnVal[0m
[93m7188[92m lwi R8 R14 -4 
[93m7189[92m swi R8 R14 32 
[0m[94mlen1_177 = _t953_177[0m
[93m7190[92m lwi R8 R14 32 
[93m7191[92m swi R8 R14 4 
[0m[94mstring _t954_177 "The factorial of given Number is : "[0m
[93m7192[92m subi R12 R12 36 
[93m7193[92m li R8 84 
[93m7194[92m sbi R8 R12 0 
[93m7195[92m li R8 104 
[93m7196[92m sbi R8 R12 1 
[93m7197[92m li R8 101 
[93m7198[92m sbi R8 R12 2 
[93m7199[92m li R8 32 
[93m7200[92m sbi R8 R12 3 
[93m7201[92m li R8 102 
[93m7202[92m sbi R8 R12 4 
[93m7203[92m li R8 97 
[93m7204[92m sbi R8 R12 5 
[93m7205[92m li R8 99 
[93m7206[92m sbi R8 R12 6 
[93m7207[92m li R8 116 
[93m7208[92m sbi R8 R12 7 
[93m7209[92m li R8 111 
[93m7210[92m sbi R8 R12 8 
[93m7211[92m li R8 114 
[93m7212[92m sbi R8 R12 9 
[93m7213[92m li R8 105 
[93m7214[92m sbi R8 R12 10 
[93m7215[92m li R8 97 
[93m7216[92m sbi R8 R12 11 
[93m7217[92m li R8 108 
[93m7218[92m sbi R8 R12 12 
[93m7219[92m li R8 32 
[93m7220[92m sbi R8 R12 13 
[93m7221[92m li R8 111 
[93m7222[92m sbi R8 R12 14 
[93m7223[92m li R8 102 
[93m7224[92m sbi R8 R12 15 
[93m7225[92m li R8 32 
[93m7226[92m sbi R8 R12 16 
[93m7227[92m li R8 103 
[93m7228[92m sbi R8 R12 17 
[93m7229[92m li R8 105 
[93m7230[92m sbi R8 R12 18 
[93m7231[92m li R8 118 
[93m7232[92m sbi R8 R12 19 
[93m7233[92m li R8 101 
[93m7234[92m sbi R8 R12 20 
[93m7235[92m li R8 110 
[93m7236[92m sbi R8 R12 21 
[93m7237[92m li R8 32 
[93m7238[92m sbi R8 R12 22 
[93m7239[92m li R8 78 
[93m7240[92m sbi R8 R12 23 
[93m7241[92m li R8 117 
[93m7242[92m sbi R8 R12 24 
[93m7243[92m li R8 109 
[93m7244[92m sbi R8 R12 25 
[93m7245[92m li R8 98 
[93m7246[92m sbi R8 R12 26 
[93m7247[92m li R8 101 
[93m7248[92m sbi R8 R12 27 
[93m7249[92m li R8 114 
[93m7250[92m sbi R8 R12 28 
[93m7251[92m li R8 32 
[93m7252[92m sbi R8 R12 29 
[93m7253[92m li R8 105 
[93m7254[92m sbi R8 R12 30 
[93m7255[92m li R8 115 
[93m7256[92m sbi R8 R12 31 
[93m7257[92m li R8 32 
[93m7258[92m sbi R8 R12 32 
[93m7259[92m li R8 58 
[93m7260[92m sbi R8 R12 33 
[93m7261[92m li R8 32 
[93m7262[92m sbi R8 R12 34 
[93m7263[92m sbi R0 R12 35 
[93m7264[92m swi R12 R14 36 
[0m[94mstr2_177 = _t954_177[0m
[93m7265[92m lwi R8 R14 36 
[93m7266[92m swi R8 R14 12 
[0m[94mFunctionCall strlen[0m
[0m[94mparam str2_177[0m
[93m7267[92m lwi R8 R14 12 
[93m7268[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m7269[92m la R8 label_485 
[93m7270[92m swi R8 R14 -8 
[93m7271[92m addi R14 R14 -52 
[93m7272[92m jmp label_8 
[0m[94mlabel_485:[0m
[0m[94m_t955_177 = ReturnVal[0m
[93m7273[92m lwi R8 R14 -4 
[93m7274[92m swi R8 R14 40 
[0m[94mlen2_177 = _t955_177[0m
[93m7275[92m lwi R8 R14 40 
[93m7276[92m swi R8 R14 8 
[0m[94mFunctionCall print_string[0m
[0m[94mparam str1_177[0m
[93m7277[92m lwi R8 R14 16 
[93m7278[92m swi R8 R14 -16 
[0m[94mparam len1_177[0m
[93m7279[92m lwi R8 R14 4 
[93m7280[92m swi R8 R14 -20 
[0m[94m_t956_177 = #0[0m
[93m7281[92m li R8 0 
[93m7282[92m swi R8 R14 44 
[0m[94mparam _t956_177[0m
[93m7283[92m lwi R8 R14 44 
[93m7284[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7285[92m la R8 label_486 
[93m7286[92m swi R8 R14 -8 
[93m7287[92m addi R14 R14 -180 
[93m7288[92m jmp label_85 
[0m[94mlabel_486:[0m
[0m[94m_t957_177 = ReturnVal[0m
[93m7289[92m lwi R8 R14 -4 
[93m7290[92m swi R8 R14 48 
[0m[94mFunctionCall get_num[0m
[0m[94mcall label_118[0m
[93m7291[92m la R8 label_487 
[93m7292[92m swi R8 R14 -8 
[93m7293[92m addi R14 R14 -204 
[93m7294[92m jmp label_118 
[0m[94mlabel_487:[0m
[0m[94m_t958_177 = ReturnVal[0m
[93m7295[92m lwi R8 R14 -4 
[93m7296[92m swi R8 R14 52 
[0m[94mn_177 = _t958_177[0m
[93m7297[92m lwi R8 R14 52 
[93m7298[92m swi R8 R14 0 
[0m[94mtemp_177 = n_177[0m
[93m7299[92m lwi R8 R14 0 
[93m7300[92m swi R8 R14 20 
[0m[94mFunctionCall rfactorial[0m
[0m[94mparam n_177[0m
[93m7301[92m lwi R8 R14 0 
[93m7302[92m swi R8 R14 -16 
[0m[94mcall label_479[0m
[93m7303[92m la R8 label_488 
[93m7304[92m swi R8 R14 -8 
[93m7305[92m addi R14 R14 -56 
[93m7306[92m jmp label_479 
[0m[94mlabel_488:[0m
[0m[94m_t959_177 = ReturnVal[0m
[93m7307[92m lwi R8 R14 -4 
[93m7308[92m swi R8 R14 56 
[0m[94mres_177 = _t959_177[0m
[93m7309[92m lwi R8 R14 56 
[93m7310[92m swi R8 R14 24 
[0m[94mFunctionCall print_string[0m
[0m[94mparam str2_177[0m
[93m7311[92m lwi R8 R14 12 
[93m7312[92m swi R8 R14 -16 
[0m[94mparam len2_177[0m
[93m7313[92m lwi R8 R14 8 
[93m7314[92m swi R8 R14 -20 
[0m[94m_t960_177 = #0[0m
[93m7315[92m li R8 0 
[93m7316[92m swi R8 R14 60 
[0m[94mparam _t960_177[0m
[93m7317[92m lwi R8 R14 60 
[93m7318[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7319[92m la R8 label_489 
[93m7320[92m swi R8 R14 -8 
[93m7321[92m addi R14 R14 -180 
[93m7322[92m jmp label_85 
[0m[94mlabel_489:[0m
[0m[94m_t961_177 = ReturnVal[0m
[93m7323[92m lwi R8 R14 -4 
[93m7324[92m swi R8 R14 64 
[0m[94mFunctionCall print_num[0m
[0m[94mparam res_177[0m
[93m7325[92m lwi R8 R14 24 
[93m7326[92m swi R8 R14 -16 
[0m[94m_t962_177 = #1[0m
[93m7327[92m li R8 1 
[93m7328[92m swi R8 R14 68 
[0m[94mparam _t962_177[0m
[93m7329[92m lwi R8 R14 68 
[93m7330[92m swi R8 R14 -20 
[0m[94mcall label_139[0m
[93m7331[92m la R8 label_490 
[93m7332[92m swi R8 R14 -8 
[93m7333[92m addi R14 R14 -152 
[93m7334[92m jmp label_139 
[0m[94mlabel_490:[0m
[0m[94m_t963_177 = ReturnVal[0m
[93m7335[92m lwi R8 R14 -4 
[93m7336[92m swi R8 R14 72 
[0m[94m_t964_177 = #0[0m
[93m7337[92m li R8 0 
[93m7338[92m swi R8 R14 76 
[0m[94mReturn _t964_177[0m
[93m7339[92m lwi R8 R14 76 
[93m7340[92m swi R8 R14 88 
[93m7341[92m lwi R12 R14 80 
[93m7342[92m li R8 29388 
[93m7343[92m lwi R9 R14 84 
[93m7344[92m sub R10 R9 R8 
[93m7345[92m addi R14 R14 92 
[93m7346[92m jr R10 
[0m-------------------------------------
Parsing get_random
a_178 0
b_178 4
m_178 8
_t965_178 12
_t966_178 16
_t967_178 20
_t968_178 24
_t969_178 28
_t970_178 32
[94mlabel_491:[0m
[93m7347[92m swi R12 R14 36 
[0m[94m_t965_178 = #307[0m
[93m7348[92m li R8 307 
[93m7349[92m swi R8 R14 12 
[0m[94ma_178 = _t965_178[0m
[93m7350[92m lwi R8 R14 12 
[93m7351[92m swi R8 R14 0 
[0m[94m_t966_178 = #401[0m
[93m7352[92m li R8 401 
[93m7353[92m swi R8 R14 16 
[0m[94mb_178 = _t966_178[0m
[93m7354[92m lwi R8 R14 16 
[93m7355[92m swi R8 R14 4 
[0m[94m_t967_178 = #821[0m
[93m7356[92m li R8 821 
[93m7357[92m swi R8 R14 20 
[0m[94mm_178 = _t967_178[0m
[93m7358[92m lwi R8 R14 20 
[93m7359[92m swi R8 R14 8 
[0m[94m_t968_178 = a_178 * seed_0[0m
[93m7360[92m lwi R8 R14 0 
[93m7361[92m lwi R9 R13 32 
[93m7362[92m mul R10 R8 R9 
[93m7363[92m swi R10 R14 24 
[0m[94m_t969_178 = _t968_178 + b_178[0m
[93m7364[92m lwi R8 R14 24 
[93m7365[92m lwi R9 R14 4 
[93m7366[92m add R10 R8 R9 
[93m7367[92m swi R10 R14 28 
[0m[94m_t970_178 = _t969_178 % m_178[0m
[93m7368[92m lwi R8 R14 28 
[93m7369[92m lwi R9 R14 8 
[93m7370[92m mod R10 R8 R9 
[93m7371[92m swi R10 R14 32 
[0m[94mseed_0 = _t970_178[0m
[93m7372[92m lwi R8 R14 32 
[93m7373[92m swi R8 R13 32 
[0m[94mReturn seed_0[0m
[93m7374[92m lwi R8 R13 32 
[93m7375[92m swi R8 R14 44 
[93m7376[92m lwi R12 R14 36 
[93m7377[92m li R8 29528 
[93m7378[92m lwi R9 R14 40 
[93m7379[92m sub R10 R9 R8 
[93m7380[92m addi R14 R14 48 
[93m7381[92m jr R10 
[0m-------------------------------------
Parsing parse_command
command_0_179 0
command_179 4
i_179 8
clen_179 12
clear_179 16
ls_179 20
fibo_179 24
tr_179 28
qsort_179 32
pri_179 36
rev_179 40
exit_179 44
command_not_found_179 48
space_179 52
palindrome_179 56
sumofnatural_179 60
factorialofn_179 64
_t971_179 68
_t972_180 72
_t973_180 76
_t974_180 80
_t975_180 84
_t976_180 88
_t977_180 92
_t978_180 96
_t979_179 100
_t980_179 104
_t981_179 108
_t982_179 112
_t983_179 116
_t984_179 120
_t985_179 124
_t986_179 128
_t987_179 132
_t988_179 136
_t989_179 140
_t990_179 144
_t991_179 148
_t992_179 152
_t993_179 156
_t994_179 160
_t995_179 164
_t996_179 168
_t997_181 172
_t998_179 176
_t999_179 180
_t1000_179 184
_t1001_182 188
_t1002_182 192
_t1003_182 196
_t1004_182 200
_t1005_182 204
_t1006_182 208
_t1007_182 212
_t1008_182 216
_t1009_182 220
_t1010_182 224
_t1011_182 228
_t1012_182 232
_t1013_182 236
_t1014_182 240
_t1015_182 244
_t1016_182 248
_t1017_182 252
_t1018_182 256
_t1019_182 260
_t1020_182 264
_t1021_182 268
_t1022_182 272
_t1023_182 276
_t1024_182 280
_t1025_182 284
_t1026_182 288
_t1027_182 292
_t1028_182 296
_t1029_182 300
_t1030_182 304
_t1031_182 308
_t1032_182 312
_t1033_182 316
_t1034_182 320
_t1035_182 324
_t1036_182 328
_t1037_182 332
_t1038_182 336
_t1039_182 340
_t1040_182 344
_t1041_182 348
_t1042_182 352
_t1043_182 356
_t1044_182 360
_t1045_182 364
_t1046_182 368
_t1047_182 372
_t1048_182 376
_t1049_182 380
_t1050_182 384
_t1051_182 388
_t1052_182 392
_t1053_182 396
_t1054_182 400
_t1055_179 404
_t1056_179 408
_t1057_179 412
_t1058_183 416
_t1059_179 420
_t1060_179 424
_t1061_179 428
_t1062_184 432
_t1063_179 436
_t1064_179 440
_t1065_179 444
_t1066_185 448
_t1067_179 452
_t1068_179 456
_t1069_179 460
_t1070_186 464
_t1071_179 468
_t1072_179 472
_t1073_179 476
_t1074_187 480
_t1075_179 484
_t1076_179 488
_t1077_179 492
_t1078_188 496
_t1079_179 500
_t1080_179 504
_t1081_179 508
_t1082_189 512
_t1083_179 516
_t1084_179 520
_t1085_179 524
_t1086_190 528
_t1087_191 532
_t1088_191 536
_t1089_191 540
_t1090_179 544
[94mlabel_492:[0m
[93m7382[92m swi R12 R14 548 
[0m[94m_t971_179 = #20[0m
[93m7383[92m li R8 20 
[93m7384[92m swi R8 R14 68 
[0m[94mcommand_0_179 = _t971_179[0m
[93m7385[92m lwi R8 R14 68 
[93m7386[92m swi R8 R14 0 
[0m[94mmemory command_179 _t971_179 #1[0m
[93m7387[92m lwi R8 R14 68 
[93m7388[92m li R9 1 
[93m7389[92m mul R10 R8 R9 
[93m7390[92m modi R8 R10 4 
[93m7391[92m li R9 4 
[93m7392[92m sub R8 R9 R8 
[93m7393[92m add R10 R10 R8 
[93m7394[92m sub R12 R12 R10 
[93m7395[92m swi R12 R14 4 
[0m[94m_t972_180 = #0[0m
[93m7396[92m li R8 0 
[93m7397[92m swi R8 R14 72 
[0m[94mi_179 = _t972_180[0m
[93m7398[92m lwi R8 R14 72 
[93m7399[92m swi R8 R14 8 
[0m[94mlabel_493:[0m
[0m[94m_t973_180 = #20[0m
[93m7400[92m li R8 20 
[93m7401[92m swi R8 R14 76 
[0m[94m_t974_180 = i_179 < _t973_180[0m
[93m7402[92m lwi R8 R14 8 
[93m7403[92m lwi R9 R14 76 
[93m7404[92m lt R10 R8 R9 
[93m7405[92m swi R10 R14 80 
[0m[94mif ( _t974_180 == #0 ) goto label_496[0m
[93m7406[92m lwi R8 R14 80 
[93m7407[92m cmp R8 R0 
[93m7408[92m jeq label_496 
[0m[94mgoto label_494[0m
[93m7409[92m jmp label_494 
[0m[94mlabel_495:[0m
[0m[94m_t975_180 = i_179[0m
[93m7410[92m lwi R8 R14 8 
[93m7411[92m swi R8 R14 84 
[0m[94mi_179 = i_179 + #1[0m
[93m7412[92m lwi R8 R14 8 
[93m7413[92m li R9 1 
[93m7414[92m add R10 R8 R9 
[93m7415[92m swi R10 R14 8 
[0m[94mgoto label_493[0m
[93m7416[92m jmp label_493 
[0m[94mlabel_494:[0m
[0m[94m_t976_180 = i_179 * #1[0m
[93m7417[92m lwi R8 R14 8 
[93m7418[92m li R9 1 
[93m7419[92m mul R10 R8 R9 
[93m7420[92m swi R10 R14 88 
[0m[94m_t977_180 = command_179 + _t976_180[0m
[93m7421[92m lwi R8 R14 4 
[93m7422[92m lwi R9 R14 88 
[93m7423[92m add R10 R8 R9 
[93m7424[92m swi R10 R14 92 
[0m[94m_t978_180 = #0[0m
[93m7425[92m li R8 0 
[93m7426[92m swi R8 R14 96 
[0m[94m*_t977_180 = _t978_180[0m
[93m7427[92m lwi R8 R14 96 
[93m7428[92m lwi R7 R14 92 
[93m7429[92m sbi R8 R7 0 
[0m[94mgoto label_495[0m
[93m7430[92m jmp label_495 
[0m[94mlabel_496:[0m
[0m[94mFunctionCall get_line[0m
[0m[94mcall label_53[0m
[93m7431[92m la R8 label_497 
[93m7432[92m swi R8 R14 -8 
[93m7433[92m addi R14 R14 -164 
[93m7434[92m jmp label_53 
[0m[94mlabel_497:[0m
[0m[94m_t979_179 = ReturnVal[0m
[93m7435[92m lwi R8 R14 -4 
[93m7436[92m swi R8 R14 100 
[0m[94mFunctionCall get_string[0m
[0m[94mparam command_179[0m
[93m7437[92m lwi R8 R14 4 
[93m7438[92m swi R8 R14 -16 
[0m[94mcall label_108[0m
[93m7439[92m la R8 label_498 
[93m7440[92m swi R8 R14 -8 
[93m7441[92m addi R14 R14 -136 
[93m7442[92m jmp label_108 
[0m[94mlabel_498:[0m
[0m[94m_t980_179 = ReturnVal[0m
[93m7443[92m lwi R8 R14 -4 
[93m7444[92m swi R8 R14 104 
[0m[94mclen_179 = _t980_179[0m
[93m7445[92m lwi R8 R14 104 
[93m7446[92m swi R8 R14 12 
[0m[94mstring _t981_179 "clear"[0m
[93m7447[92m subi R12 R12 8 
[93m7448[92m li R8 99 
[93m7449[92m sbi R8 R12 0 
[93m7450[92m li R8 108 
[93m7451[92m sbi R8 R12 1 
[93m7452[92m li R8 101 
[93m7453[92m sbi R8 R12 2 
[93m7454[92m li R8 97 
[93m7455[92m sbi R8 R12 3 
[93m7456[92m li R8 114 
[93m7457[92m sbi R8 R12 4 
[93m7458[92m sbi R0 R12 5 
[93m7459[92m swi R12 R14 108 
[0m[94mclear_179 = _t981_179[0m
[93m7460[92m lwi R8 R14 108 
[93m7461[92m swi R8 R14 16 
[0m[94mstring _t982_179 "ls"[0m
[93m7462[92m subi R12 R12 4 
[93m7463[92m li R8 108 
[93m7464[92m sbi R8 R12 0 
[93m7465[92m li R8 115 
[93m7466[92m sbi R8 R12 1 
[93m7467[92m sbi R0 R12 2 
[93m7468[92m swi R12 R14 112 
[0m[94mls_179 = _t982_179[0m
[93m7469[92m lwi R8 R14 112 
[93m7470[92m swi R8 R14 20 
[0m[94mstring _t983_179 "fibo"[0m
[93m7471[92m subi R12 R12 8 
[93m7472[92m li R8 102 
[93m7473[92m sbi R8 R12 0 
[93m7474[92m li R8 105 
[93m7475[92m sbi R8 R12 1 
[93m7476[92m li R8 98 
[93m7477[92m sbi R8 R12 2 
[93m7478[92m li R8 111 
[93m7479[92m sbi R8 R12 3 
[93m7480[92m sbi R0 R12 4 
[93m7481[92m swi R12 R14 116 
[0m[94mfibo_179 = _t983_179[0m
[93m7482[92m lwi R8 R14 116 
[93m7483[92m swi R8 R14 24 
[0m[94mstring _t984_179 "tree"[0m
[93m7484[92m subi R12 R12 8 
[93m7485[92m li R8 116 
[93m7486[92m sbi R8 R12 0 
[93m7487[92m li R8 114 
[93m7488[92m sbi R8 R12 1 
[93m7489[92m li R8 101 
[93m7490[92m sbi R8 R12 2 
[93m7491[92m li R8 101 
[93m7492[92m sbi R8 R12 3 
[93m7493[92m sbi R0 R12 4 
[93m7494[92m swi R12 R14 120 
[0m[94mtr_179 = _t984_179[0m
[93m7495[92m lwi R8 R14 120 
[93m7496[92m swi R8 R14 28 
[0m[94mstring _t985_179 "quicksort"[0m
[93m7497[92m subi R12 R12 12 
[93m7498[92m li R8 113 
[93m7499[92m sbi R8 R12 0 
[93m7500[92m li R8 117 
[93m7501[92m sbi R8 R12 1 
[93m7502[92m li R8 105 
[93m7503[92m sbi R8 R12 2 
[93m7504[92m li R8 99 
[93m7505[92m sbi R8 R12 3 
[93m7506[92m li R8 107 
[93m7507[92m sbi R8 R12 4 
[93m7508[92m li R8 115 
[93m7509[92m sbi R8 R12 5 
[93m7510[92m li R8 111 
[93m7511[92m sbi R8 R12 6 
[93m7512[92m li R8 114 
[93m7513[92m sbi R8 R12 7 
[93m7514[92m li R8 116 
[93m7515[92m sbi R8 R12 8 
[93m7516[92m sbi R0 R12 9 
[93m7517[92m swi R12 R14 124 
[0m[94mqsort_179 = _t985_179[0m
[93m7518[92m lwi R8 R14 124 
[93m7519[92m swi R8 R14 32 
[0m[94mstring _t986_179 "prime"[0m
[93m7520[92m subi R12 R12 8 
[93m7521[92m li R8 112 
[93m7522[92m sbi R8 R12 0 
[93m7523[92m li R8 114 
[93m7524[92m sbi R8 R12 1 
[93m7525[92m li R8 105 
[93m7526[92m sbi R8 R12 2 
[93m7527[92m li R8 109 
[93m7528[92m sbi R8 R12 3 
[93m7529[92m li R8 101 
[93m7530[92m sbi R8 R12 4 
[93m7531[92m sbi R0 R12 5 
[93m7532[92m swi R12 R14 128 
[0m[94mpri_179 = _t986_179[0m
[93m7533[92m lwi R8 R14 128 
[93m7534[92m swi R8 R14 36 
[0m[94mstring _t987_179 "reverse"[0m
[93m7535[92m subi R12 R12 8 
[93m7536[92m li R8 114 
[93m7537[92m sbi R8 R12 0 
[93m7538[92m li R8 101 
[93m7539[92m sbi R8 R12 1 
[93m7540[92m li R8 118 
[93m7541[92m sbi R8 R12 2 
[93m7542[92m li R8 101 
[93m7543[92m sbi R8 R12 3 
[93m7544[92m li R8 114 
[93m7545[92m sbi R8 R12 4 
[93m7546[92m li R8 115 
[93m7547[92m sbi R8 R12 5 
[93m7548[92m li R8 101 
[93m7549[92m sbi R8 R12 6 
[93m7550[92m sbi R0 R12 7 
[93m7551[92m swi R12 R14 132 
[0m[94mrev_179 = _t987_179[0m
[93m7552[92m lwi R8 R14 132 
[93m7553[92m swi R8 R14 40 
[0m[94mstring _t988_179 "palindrome"[0m
[93m7554[92m subi R12 R12 12 
[93m7555[92m li R8 112 
[93m7556[92m sbi R8 R12 0 
[93m7557[92m li R8 97 
[93m7558[92m sbi R8 R12 1 
[93m7559[92m li R8 108 
[93m7560[92m sbi R8 R12 2 
[93m7561[92m li R8 105 
[93m7562[92m sbi R8 R12 3 
[93m7563[92m li R8 110 
[93m7564[92m sbi R8 R12 4 
[93m7565[92m li R8 100 
[93m7566[92m sbi R8 R12 5 
[93m7567[92m li R8 114 
[93m7568[92m sbi R8 R12 6 
[93m7569[92m li R8 111 
[93m7570[92m sbi R8 R12 7 
[93m7571[92m li R8 109 
[93m7572[92m sbi R8 R12 8 
[93m7573[92m li R8 101 
[93m7574[92m sbi R8 R12 9 
[93m7575[92m sbi R0 R12 10 
[93m7576[92m swi R12 R14 136 
[0m[94mpalindrome_179 = _t988_179[0m
[93m7577[92m lwi R8 R14 136 
[93m7578[92m swi R8 R14 56 
[0m[94mstring _t989_179 "sumofnatural"[0m
[93m7579[92m subi R12 R12 16 
[93m7580[92m li R8 115 
[93m7581[92m sbi R8 R12 0 
[93m7582[92m li R8 117 
[93m7583[92m sbi R8 R12 1 
[93m7584[92m li R8 109 
[93m7585[92m sbi R8 R12 2 
[93m7586[92m li R8 111 
[93m7587[92m sbi R8 R12 3 
[93m7588[92m li R8 102 
[93m7589[92m sbi R8 R12 4 
[93m7590[92m li R8 110 
[93m7591[92m sbi R8 R12 5 
[93m7592[92m li R8 97 
[93m7593[92m sbi R8 R12 6 
[93m7594[92m li R8 116 
[93m7595[92m sbi R8 R12 7 
[93m7596[92m li R8 117 
[93m7597[92m sbi R8 R12 8 
[93m7598[92m li R8 114 
[93m7599[92m sbi R8 R12 9 
[93m7600[92m li R8 97 
[93m7601[92m sbi R8 R12 10 
[93m7602[92m li R8 108 
[93m7603[92m sbi R8 R12 11 
[93m7604[92m sbi R0 R12 12 
[93m7605[92m swi R12 R14 140 
[0m[94msumofnatural_179 = _t989_179[0m
[93m7606[92m lwi R8 R14 140 
[93m7607[92m swi R8 R14 60 
[0m[94mstring _t990_179 "factorialofn"[0m
[93m7608[92m subi R12 R12 16 
[93m7609[92m li R8 102 
[93m7610[92m sbi R8 R12 0 
[93m7611[92m li R8 97 
[93m7612[92m sbi R8 R12 1 
[93m7613[92m li R8 99 
[93m7614[92m sbi R8 R12 2 
[93m7615[92m li R8 116 
[93m7616[92m sbi R8 R12 3 
[93m7617[92m li R8 111 
[93m7618[92m sbi R8 R12 4 
[93m7619[92m li R8 114 
[93m7620[92m sbi R8 R12 5 
[93m7621[92m li R8 105 
[93m7622[92m sbi R8 R12 6 
[93m7623[92m li R8 97 
[93m7624[92m sbi R8 R12 7 
[93m7625[92m li R8 108 
[93m7626[92m sbi R8 R12 8 
[93m7627[92m li R8 111 
[93m7628[92m sbi R8 R12 9 
[93m7629[92m li R8 102 
[93m7630[92m sbi R8 R12 10 
[93m7631[92m li R8 110 
[93m7632[92m sbi R8 R12 11 
[93m7633[92m sbi R0 R12 12 
[93m7634[92m swi R12 R14 144 
[0m[94mfactorialofn_179 = _t990_179[0m
[93m7635[92m lwi R8 R14 144 
[93m7636[92m swi R8 R14 64 
[0m[94mstring _t991_179 "exit"[0m
[93m7637[92m subi R12 R12 8 
[93m7638[92m li R8 101 
[93m7639[92m sbi R8 R12 0 
[93m7640[92m li R8 120 
[93m7641[92m sbi R8 R12 1 
[93m7642[92m li R8 105 
[93m7643[92m sbi R8 R12 2 
[93m7644[92m li R8 116 
[93m7645[92m sbi R8 R12 3 
[93m7646[92m sbi R0 R12 4 
[93m7647[92m swi R12 R14 148 
[0m[94mexit_179 = _t991_179[0m
[93m7648[92m lwi R8 R14 148 
[93m7649[92m swi R8 R14 44 
[0m[94mstring _t992_179 "Command Not Found"[0m
[93m7650[92m subi R12 R12 20 
[93m7651[92m li R8 67 
[93m7652[92m sbi R8 R12 0 
[93m7653[92m li R8 111 
[93m7654[92m sbi R8 R12 1 
[93m7655[92m li R8 109 
[93m7656[92m sbi R8 R12 2 
[93m7657[92m li R8 109 
[93m7658[92m sbi R8 R12 3 
[93m7659[92m li R8 97 
[93m7660[92m sbi R8 R12 4 
[93m7661[92m li R8 110 
[93m7662[92m sbi R8 R12 5 
[93m7663[92m li R8 100 
[93m7664[92m sbi R8 R12 6 
[93m7665[92m li R8 32 
[93m7666[92m sbi R8 R12 7 
[93m7667[92m li R8 78 
[93m7668[92m sbi R8 R12 8 
[93m7669[92m li R8 111 
[93m7670[92m sbi R8 R12 9 
[93m7671[92m li R8 116 
[93m7672[92m sbi R8 R12 10 
[93m7673[92m li R8 32 
[93m7674[92m sbi R8 R12 11 
[93m7675[92m li R8 70 
[93m7676[92m sbi R8 R12 12 
[93m7677[92m li R8 111 
[93m7678[92m sbi R8 R12 13 
[93m7679[92m li R8 117 
[93m7680[92m sbi R8 R12 14 
[93m7681[92m li R8 110 
[93m7682[92m sbi R8 R12 15 
[93m7683[92m li R8 100 
[93m7684[92m sbi R8 R12 16 
[93m7685[92m sbi R0 R12 17 
[93m7686[92m swi R12 R14 152 
[0m[94mcommand_not_found_179 = _t992_179[0m
[93m7687[92m lwi R8 R14 152 
[93m7688[92m swi R8 R14 48 
[0m[94mstring _t993_179 " "[0m
[93m7689[92m subi R12 R12 4 
[93m7690[92m li R8 32 
[93m7691[92m sbi R8 R12 0 
[93m7692[92m sbi R0 R12 1 
[93m7693[92m swi R12 R14 156 
[0m[94mspace_179 = _t993_179[0m
[93m7694[92m lwi R8 R14 156 
[93m7695[92m swi R8 R14 52 
[0m[94mFunctionCall strcmp[0m
[0m[94mparam command_179[0m
[93m7696[92m lwi R8 R14 4 
[93m7697[92m swi R8 R14 -16 
[0m[94mparam clear_179[0m
[93m7698[92m lwi R8 R14 16 
[93m7699[92m swi R8 R14 -20 
[0m[94mcall label_74[0m
[93m7700[92m la R8 label_499 
[93m7701[92m swi R8 R14 -8 
[93m7702[92m addi R14 R14 -96 
[93m7703[92m jmp label_74 
[0m[94mlabel_499:[0m
[0m[94m_t994_179 = ReturnVal[0m
[93m7704[92m lwi R8 R14 -4 
[93m7705[92m swi R8 R14 160 
[0m[94m_t995_179 = #0[0m
[93m7706[92m li R8 0 
[93m7707[92m swi R8 R14 164 
[0m[94m_t996_179 = _t994_179 == _t995_179[0m
[93m7708[92m lwi R8 R14 160 
[93m7709[92m lwi R9 R14 164 
[93m7710[92m eq R10 R8 R9 
[93m7711[92m swi R10 R14 168 
[0m[94mif ( _t996_179 == #0 ) goto label_500[0m
[93m7712[92m lwi R8 R14 168 
[93m7713[92m cmp R8 R0 
[93m7714[92m jeq label_500 
[0m[94mFunctionCall clear_shell[0m
[0m[94mcall label_15[0m
[93m7715[92m la R8 label_502 
[93m7716[92m swi R8 R14 -8 
[93m7717[92m addi R14 R14 -56 
[93m7718[92m jmp label_15 
[0m[94mlabel_502:[0m
[0m[94m_t997_181 = ReturnVal[0m
[93m7719[92m lwi R8 R14 -4 
[93m7720[92m swi R8 R14 172 
[0m[94mgoto label_501[0m
[93m7721[92m jmp label_501 
[0m[94mlabel_500:[0m
[0m[94mFunctionCall strcmp[0m
[0m[94mparam command_179[0m
[93m7722[92m lwi R8 R14 4 
[93m7723[92m swi R8 R14 -16 
[0m[94mparam ls_179[0m
[93m7724[92m lwi R8 R14 20 
[93m7725[92m swi R8 R14 -20 
[0m[94mcall label_74[0m
[93m7726[92m la R8 label_503 
[93m7727[92m swi R8 R14 -8 
[93m7728[92m addi R14 R14 -96 
[93m7729[92m jmp label_74 
[0m[94mlabel_503:[0m
[0m[94m_t998_179 = ReturnVal[0m
[93m7730[92m lwi R8 R14 -4 
[93m7731[92m swi R8 R14 176 
[0m[94m_t999_179 = #0[0m
[93m7732[92m li R8 0 
[93m7733[92m swi R8 R14 180 
[0m[94m_t1000_179 = _t998_179 == _t999_179[0m
[93m7734[92m lwi R8 R14 176 
[93m7735[92m lwi R9 R14 180 
[93m7736[92m eq R10 R8 R9 
[93m7737[92m swi R10 R14 184 
[0m[94mif ( _t1000_179 == #0 ) goto label_504[0m
[93m7738[92m lwi R8 R14 184 
[93m7739[92m cmp R8 R0 
[93m7740[92m jeq label_504 
[0m[94mFunctionCall print_string[0m
[0m[94mparam fibo_179[0m
[93m7741[92m lwi R8 R14 24 
[93m7742[92m swi R8 R14 -16 
[0m[94m_t1001_182 = #4[0m
[93m7743[92m li R8 4 
[93m7744[92m swi R8 R14 188 
[0m[94mparam _t1001_182[0m
[93m7745[92m lwi R8 R14 188 
[93m7746[92m swi R8 R14 -20 
[0m[94m_t1002_182 = #0[0m
[93m7747[92m li R8 0 
[93m7748[92m swi R8 R14 192 
[0m[94mparam _t1002_182[0m
[93m7749[92m lwi R8 R14 192 
[93m7750[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7751[92m la R8 label_505 
[93m7752[92m swi R8 R14 -8 
[93m7753[92m addi R14 R14 -180 
[93m7754[92m jmp label_85 
[0m[94mlabel_505:[0m
[0m[94m_t1003_182 = ReturnVal[0m
[93m7755[92m lwi R8 R14 -4 
[93m7756[92m swi R8 R14 196 
[0m[94mFunctionCall print_string[0m
[0m[94mparam space_179[0m
[93m7757[92m lwi R8 R14 52 
[93m7758[92m swi R8 R14 -16 
[0m[94m_t1004_182 = #1[0m
[93m7759[92m li R8 1 
[93m7760[92m swi R8 R14 200 
[0m[94mparam _t1004_182[0m
[93m7761[92m lwi R8 R14 200 
[93m7762[92m swi R8 R14 -20 
[0m[94m_t1005_182 = #0[0m
[93m7763[92m li R8 0 
[93m7764[92m swi R8 R14 204 
[0m[94mparam _t1005_182[0m
[93m7765[92m lwi R8 R14 204 
[93m7766[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7767[92m la R8 label_506 
[93m7768[92m swi R8 R14 -8 
[93m7769[92m addi R14 R14 -180 
[93m7770[92m jmp label_85 
[0m[94mlabel_506:[0m
[0m[94m_t1006_182 = ReturnVal[0m
[93m7771[92m lwi R8 R14 -4 
[93m7772[92m swi R8 R14 208 
[0m[94mFunctionCall print_string[0m
[0m[94mparam qsort_179[0m
[93m7773[92m lwi R8 R14 32 
[93m7774[92m swi R8 R14 -16 
[0m[94m_t1007_182 = #9[0m
[93m7775[92m li R8 9 
[93m7776[92m swi R8 R14 212 
[0m[94mparam _t1007_182[0m
[93m7777[92m lwi R8 R14 212 
[93m7778[92m swi R8 R14 -20 
[0m[94m_t1008_182 = #0[0m
[93m7779[92m li R8 0 
[93m7780[92m swi R8 R14 216 
[0m[94mparam _t1008_182[0m
[93m7781[92m lwi R8 R14 216 
[93m7782[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7783[92m la R8 label_507 
[93m7784[92m swi R8 R14 -8 
[93m7785[92m addi R14 R14 -180 
[93m7786[92m jmp label_85 
[0m[94mlabel_507:[0m
[0m[94m_t1009_182 = ReturnVal[0m
[93m7787[92m lwi R8 R14 -4 
[93m7788[92m swi R8 R14 220 
[0m[94mFunctionCall print_string[0m
[0m[94mparam space_179[0m
[93m7789[92m lwi R8 R14 52 
[93m7790[92m swi R8 R14 -16 
[0m[94m_t1010_182 = #1[0m
[93m7791[92m li R8 1 
[93m7792[92m swi R8 R14 224 
[0m[94mparam _t1010_182[0m
[93m7793[92m lwi R8 R14 224 
[93m7794[92m swi R8 R14 -20 
[0m[94m_t1011_182 = #0[0m
[93m7795[92m li R8 0 
[93m7796[92m swi R8 R14 228 
[0m[94mparam _t1011_182[0m
[93m7797[92m lwi R8 R14 228 
[93m7798[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7799[92m la R8 label_508 
[93m7800[92m swi R8 R14 -8 
[93m7801[92m addi R14 R14 -180 
[93m7802[92m jmp label_85 
[0m[94mlabel_508:[0m
[0m[94m_t1012_182 = ReturnVal[0m
[93m7803[92m lwi R8 R14 -4 
[93m7804[92m swi R8 R14 232 
[0m[94mFunctionCall print_string[0m
[0m[94mparam pri_179[0m
[93m7805[92m lwi R8 R14 36 
[93m7806[92m swi R8 R14 -16 
[0m[94m_t1013_182 = #5[0m
[93m7807[92m li R8 5 
[93m7808[92m swi R8 R14 236 
[0m[94mparam _t1013_182[0m
[93m7809[92m lwi R8 R14 236 
[93m7810[92m swi R8 R14 -20 
[0m[94m_t1014_182 = #0[0m
[93m7811[92m li R8 0 
[93m7812[92m swi R8 R14 240 
[0m[94mparam _t1014_182[0m
[93m7813[92m lwi R8 R14 240 
[93m7814[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7815[92m la R8 label_509 
[93m7816[92m swi R8 R14 -8 
[93m7817[92m addi R14 R14 -180 
[93m7818[92m jmp label_85 
[0m[94mlabel_509:[0m
[0m[94m_t1015_182 = ReturnVal[0m
[93m7819[92m lwi R8 R14 -4 
[93m7820[92m swi R8 R14 244 
[0m[94mFunctionCall print_string[0m
[0m[94mparam space_179[0m
[93m7821[92m lwi R8 R14 52 
[93m7822[92m swi R8 R14 -16 
[0m[94m_t1016_182 = #1[0m
[93m7823[92m li R8 1 
[93m7824[92m swi R8 R14 248 
[0m[94mparam _t1016_182[0m
[93m7825[92m lwi R8 R14 248 
[93m7826[92m swi R8 R14 -20 
[0m[94m_t1017_182 = #0[0m
[93m7827[92m li R8 0 
[93m7828[92m swi R8 R14 252 
[0m[94mparam _t1017_182[0m
[93m7829[92m lwi R8 R14 252 
[93m7830[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7831[92m la R8 label_510 
[93m7832[92m swi R8 R14 -8 
[93m7833[92m addi R14 R14 -180 
[93m7834[92m jmp label_85 
[0m[94mlabel_510:[0m
[0m[94m_t1018_182 = ReturnVal[0m
[93m7835[92m lwi R8 R14 -4 
[93m7836[92m swi R8 R14 256 
[0m[94mFunctionCall print_string[0m
[0m[94mparam rev_179[0m
[93m7837[92m lwi R8 R14 40 
[93m7838[92m swi R8 R14 -16 
[0m[94m_t1019_182 = #7[0m
[93m7839[92m li R8 7 
[93m7840[92m swi R8 R14 260 
[0m[94mparam _t1019_182[0m
[93m7841[92m lwi R8 R14 260 
[93m7842[92m swi R8 R14 -20 
[0m[94m_t1020_182 = #1[0m
[93m7843[92m li R8 1 
[93m7844[92m swi R8 R14 264 
[0m[94mparam _t1020_182[0m
[93m7845[92m lwi R8 R14 264 
[93m7846[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7847[92m la R8 label_511 
[93m7848[92m swi R8 R14 -8 
[93m7849[92m addi R14 R14 -180 
[93m7850[92m jmp label_85 
[0m[94mlabel_511:[0m
[0m[94m_t1021_182 = ReturnVal[0m
[93m7851[92m lwi R8 R14 -4 
[93m7852[92m swi R8 R14 268 
[0m[94mFunctionCall print_string[0m
[0m[94mparam palindrome_179[0m
[93m7853[92m lwi R8 R14 56 
[93m7854[92m swi R8 R14 -16 
[0m[94m_t1022_182 = #10[0m
[93m7855[92m li R8 10 
[93m7856[92m swi R8 R14 272 
[0m[94mparam _t1022_182[0m
[93m7857[92m lwi R8 R14 272 
[93m7858[92m swi R8 R14 -20 
[0m[94m_t1023_182 = #0[0m
[93m7859[92m li R8 0 
[93m7860[92m swi R8 R14 276 
[0m[94mparam _t1023_182[0m
[93m7861[92m lwi R8 R14 276 
[93m7862[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7863[92m la R8 label_512 
[93m7864[92m swi R8 R14 -8 
[93m7865[92m addi R14 R14 -180 
[93m7866[92m jmp label_85 
[0m[94mlabel_512:[0m
[0m[94m_t1024_182 = ReturnVal[0m
[93m7867[92m lwi R8 R14 -4 
[93m7868[92m swi R8 R14 280 
[0m[94mFunctionCall print_string[0m
[0m[94mparam space_179[0m
[93m7869[92m lwi R8 R14 52 
[93m7870[92m swi R8 R14 -16 
[0m[94m_t1025_182 = #1[0m
[93m7871[92m li R8 1 
[93m7872[92m swi R8 R14 284 
[0m[94mparam _t1025_182[0m
[93m7873[92m lwi R8 R14 284 
[93m7874[92m swi R8 R14 -20 
[0m[94m_t1026_182 = #0[0m
[93m7875[92m li R8 0 
[93m7876[92m swi R8 R14 288 
[0m[94mparam _t1026_182[0m
[93m7877[92m lwi R8 R14 288 
[93m7878[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7879[92m la R8 label_513 
[93m7880[92m swi R8 R14 -8 
[93m7881[92m addi R14 R14 -180 
[93m7882[92m jmp label_85 
[0m[94mlabel_513:[0m
[0m[94m_t1027_182 = ReturnVal[0m
[93m7883[92m lwi R8 R14 -4 
[93m7884[92m swi R8 R14 292 
[0m[94mFunctionCall print_string[0m
[0m[94mparam sumofnatural_179[0m
[93m7885[92m lwi R8 R14 60 
[93m7886[92m swi R8 R14 -16 
[0m[94m_t1028_182 = #12[0m
[93m7887[92m li R8 12 
[93m7888[92m swi R8 R14 296 
[0m[94mparam _t1028_182[0m
[93m7889[92m lwi R8 R14 296 
[93m7890[92m swi R8 R14 -20 
[0m[94m_t1029_182 = #0[0m
[93m7891[92m li R8 0 
[93m7892[92m swi R8 R14 300 
[0m[94mparam _t1029_182[0m
[93m7893[92m lwi R8 R14 300 
[93m7894[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7895[92m la R8 label_514 
[93m7896[92m swi R8 R14 -8 
[93m7897[92m addi R14 R14 -180 
[93m7898[92m jmp label_85 
[0m[94mlabel_514:[0m
[0m[94m_t1030_182 = ReturnVal[0m
[93m7899[92m lwi R8 R14 -4 
[93m7900[92m swi R8 R14 304 
[0m[94mFunctionCall print_string[0m
[0m[94mparam space_179[0m
[93m7901[92m lwi R8 R14 52 
[93m7902[92m swi R8 R14 -16 
[0m[94m_t1031_182 = #1[0m
[93m7903[92m li R8 1 
[93m7904[92m swi R8 R14 308 
[0m[94mparam _t1031_182[0m
[93m7905[92m lwi R8 R14 308 
[93m7906[92m swi R8 R14 -20 
[0m[94m_t1032_182 = #0[0m
[93m7907[92m li R8 0 
[93m7908[92m swi R8 R14 312 
[0m[94mparam _t1032_182[0m
[93m7909[92m lwi R8 R14 312 
[93m7910[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7911[92m la R8 label_515 
[93m7912[92m swi R8 R14 -8 
[93m7913[92m addi R14 R14 -180 
[93m7914[92m jmp label_85 
[0m[94mlabel_515:[0m
[0m[94m_t1033_182 = ReturnVal[0m
[93m7915[92m lwi R8 R14 -4 
[93m7916[92m swi R8 R14 316 
[0m[94mFunctionCall print_string[0m
[0m[94mparam factorialofn_179[0m
[93m7917[92m lwi R8 R14 64 
[93m7918[92m swi R8 R14 -16 
[0m[94m_t1034_182 = #11[0m
[93m7919[92m li R8 11 
[93m7920[92m swi R8 R14 320 
[0m[94mparam _t1034_182[0m
[93m7921[92m lwi R8 R14 320 
[93m7922[92m swi R8 R14 -20 
[0m[94m_t1035_182 = #1[0m
[93m7923[92m li R8 1 
[93m7924[92m swi R8 R14 324 
[0m[94mparam _t1035_182[0m
[93m7925[92m lwi R8 R14 324 
[93m7926[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7927[92m la R8 label_516 
[93m7928[92m swi R8 R14 -8 
[93m7929[92m addi R14 R14 -180 
[93m7930[92m jmp label_85 
[0m[94mlabel_516:[0m
[0m[94m_t1036_182 = ReturnVal[0m
[93m7931[92m lwi R8 R14 -4 
[93m7932[92m swi R8 R14 328 
[0m[94mFunctionCall print_string[0m
[0m[94mparam space_179[0m
[93m7933[92m lwi R8 R14 52 
[93m7934[92m swi R8 R14 -16 
[0m[94m_t1037_182 = #1[0m
[93m7935[92m li R8 1 
[93m7936[92m swi R8 R14 332 
[0m[94mparam _t1037_182[0m
[93m7937[92m lwi R8 R14 332 
[93m7938[92m swi R8 R14 -20 
[0m[94m_t1038_182 = #0[0m
[93m7939[92m li R8 0 
[93m7940[92m swi R8 R14 336 
[0m[94mparam _t1038_182[0m
[93m7941[92m lwi R8 R14 336 
[93m7942[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7943[92m la R8 label_517 
[93m7944[92m swi R8 R14 -8 
[93m7945[92m addi R14 R14 -180 
[93m7946[92m jmp label_85 
[0m[94mlabel_517:[0m
[0m[94m_t1039_182 = ReturnVal[0m
[93m7947[92m lwi R8 R14 -4 
[93m7948[92m swi R8 R14 340 
[0m[94mFunctionCall print_string[0m
[0m[94mparam clear_179[0m
[93m7949[92m lwi R8 R14 16 
[93m7950[92m swi R8 R14 -16 
[0m[94m_t1040_182 = #5[0m
[93m7951[92m li R8 5 
[93m7952[92m swi R8 R14 344 
[0m[94mparam _t1040_182[0m
[93m7953[92m lwi R8 R14 344 
[93m7954[92m swi R8 R14 -20 
[0m[94m_t1041_182 = #0[0m
[93m7955[92m li R8 0 
[93m7956[92m swi R8 R14 348 
[0m[94mparam _t1041_182[0m
[93m7957[92m lwi R8 R14 348 
[93m7958[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7959[92m la R8 label_518 
[93m7960[92m swi R8 R14 -8 
[93m7961[92m addi R14 R14 -180 
[93m7962[92m jmp label_85 
[0m[94mlabel_518:[0m
[0m[94m_t1042_182 = ReturnVal[0m
[93m7963[92m lwi R8 R14 -4 
[93m7964[92m swi R8 R14 352 
[0m[94mFunctionCall print_string[0m
[0m[94mparam space_179[0m
[93m7965[92m lwi R8 R14 52 
[93m7966[92m swi R8 R14 -16 
[0m[94m_t1043_182 = #1[0m
[93m7967[92m li R8 1 
[93m7968[92m swi R8 R14 356 
[0m[94mparam _t1043_182[0m
[93m7969[92m lwi R8 R14 356 
[93m7970[92m swi R8 R14 -20 
[0m[94m_t1044_182 = #0[0m
[93m7971[92m li R8 0 
[93m7972[92m swi R8 R14 360 
[0m[94mparam _t1044_182[0m
[93m7973[92m lwi R8 R14 360 
[93m7974[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7975[92m la R8 label_519 
[93m7976[92m swi R8 R14 -8 
[93m7977[92m addi R14 R14 -180 
[93m7978[92m jmp label_85 
[0m[94mlabel_519:[0m
[0m[94m_t1045_182 = ReturnVal[0m
[93m7979[92m lwi R8 R14 -4 
[93m7980[92m swi R8 R14 364 
[0m[94mFunctionCall print_string[0m
[0m[94mparam ls_179[0m
[93m7981[92m lwi R8 R14 20 
[93m7982[92m swi R8 R14 -16 
[0m[94m_t1046_182 = #2[0m
[93m7983[92m li R8 2 
[93m7984[92m swi R8 R14 368 
[0m[94mparam _t1046_182[0m
[93m7985[92m lwi R8 R14 368 
[93m7986[92m swi R8 R14 -20 
[0m[94m_t1047_182 = #0[0m
[93m7987[92m li R8 0 
[93m7988[92m swi R8 R14 372 
[0m[94mparam _t1047_182[0m
[93m7989[92m lwi R8 R14 372 
[93m7990[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m7991[92m la R8 label_520 
[93m7992[92m swi R8 R14 -8 
[93m7993[92m addi R14 R14 -180 
[93m7994[92m jmp label_85 
[0m[94mlabel_520:[0m
[0m[94m_t1048_182 = ReturnVal[0m
[93m7995[92m lwi R8 R14 -4 
[93m7996[92m swi R8 R14 376 
[0m[94mFunctionCall print_string[0m
[0m[94mparam space_179[0m
[93m7997[92m lwi R8 R14 52 
[93m7998[92m swi R8 R14 -16 
[0m[94m_t1049_182 = #1[0m
[93m7999[92m li R8 1 
[93m8000[92m swi R8 R14 380 
[0m[94mparam _t1049_182[0m
[93m8001[92m lwi R8 R14 380 
[93m8002[92m swi R8 R14 -20 
[0m[94m_t1050_182 = #0[0m
[93m8003[92m li R8 0 
[93m8004[92m swi R8 R14 384 
[0m[94mparam _t1050_182[0m
[93m8005[92m lwi R8 R14 384 
[93m8006[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m8007[92m la R8 label_521 
[93m8008[92m swi R8 R14 -8 
[93m8009[92m addi R14 R14 -180 
[93m8010[92m jmp label_85 
[0m[94mlabel_521:[0m
[0m[94m_t1051_182 = ReturnVal[0m
[93m8011[92m lwi R8 R14 -4 
[93m8012[92m swi R8 R14 388 
[0m[94mFunctionCall print_string[0m
[0m[94mparam exit_179[0m
[93m8013[92m lwi R8 R14 44 
[93m8014[92m swi R8 R14 -16 
[0m[94m_t1052_182 = #4[0m
[93m8015[92m li R8 4 
[93m8016[92m swi R8 R14 392 
[0m[94mparam _t1052_182[0m
[93m8017[92m lwi R8 R14 392 
[93m8018[92m swi R8 R14 -20 
[0m[94m_t1053_182 = #1[0m
[93m8019[92m li R8 1 
[93m8020[92m swi R8 R14 396 
[0m[94mparam _t1053_182[0m
[93m8021[92m lwi R8 R14 396 
[93m8022[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m8023[92m la R8 label_522 
[93m8024[92m swi R8 R14 -8 
[93m8025[92m addi R14 R14 -180 
[93m8026[92m jmp label_85 
[0m[94mlabel_522:[0m
[0m[94m_t1054_182 = ReturnVal[0m
[93m8027[92m lwi R8 R14 -4 
[93m8028[92m swi R8 R14 400 
[0m[94mgoto label_501[0m
[93m8029[92m jmp label_501 
[0m[94mlabel_504:[0m
[0m[94mFunctionCall strcmp[0m
[0m[94mparam command_179[0m
[93m8030[92m lwi R8 R14 4 
[93m8031[92m swi R8 R14 -16 
[0m[94mparam fibo_179[0m
[93m8032[92m lwi R8 R14 24 
[93m8033[92m swi R8 R14 -20 
[0m[94mcall label_74[0m
[93m8034[92m la R8 label_523 
[93m8035[92m swi R8 R14 -8 
[93m8036[92m addi R14 R14 -96 
[93m8037[92m jmp label_74 
[0m[94mlabel_523:[0m
[0m[94m_t1055_179 = ReturnVal[0m
[93m8038[92m lwi R8 R14 -4 
[93m8039[92m swi R8 R14 404 
[0m[94m_t1056_179 = #0[0m
[93m8040[92m li R8 0 
[93m8041[92m swi R8 R14 408 
[0m[94m_t1057_179 = _t1055_179 == _t1056_179[0m
[93m8042[92m lwi R8 R14 404 
[93m8043[92m lwi R9 R14 408 
[93m8044[92m eq R10 R8 R9 
[93m8045[92m swi R10 R14 412 
[0m[94mif ( _t1057_179 == #0 ) goto label_524[0m
[93m8046[92m lwi R8 R14 412 
[93m8047[92m cmp R8 R0 
[93m8048[92m jeq label_524 
[0m[94mFunctionCall fibonacci[0m
[0m[94mcall label_313[0m
[93m8049[92m la R8 label_525 
[93m8050[92m swi R8 R14 -8 
[93m8051[92m addi R14 R14 -176 
[93m8052[92m jmp label_313 
[0m[94mlabel_525:[0m
[0m[94m_t1058_183 = ReturnVal[0m
[93m8053[92m lwi R8 R14 -4 
[93m8054[92m swi R8 R14 416 
[0m[94mgoto label_501[0m
[93m8055[92m jmp label_501 
[0m[94mlabel_524:[0m
[0m[94mFunctionCall strcmp[0m
[0m[94mparam command_179[0m
[93m8056[92m lwi R8 R14 4 
[93m8057[92m swi R8 R14 -16 
[0m[94mparam rev_179[0m
[93m8058[92m lwi R8 R14 40 
[93m8059[92m swi R8 R14 -20 
[0m[94mcall label_74[0m
[93m8060[92m la R8 label_526 
[93m8061[92m swi R8 R14 -8 
[93m8062[92m addi R14 R14 -96 
[93m8063[92m jmp label_74 
[0m[94mlabel_526:[0m
[0m[94m_t1059_179 = ReturnVal[0m
[93m8064[92m lwi R8 R14 -4 
[93m8065[92m swi R8 R14 420 
[0m[94m_t1060_179 = #0[0m
[93m8066[92m li R8 0 
[93m8067[92m swi R8 R14 424 
[0m[94m_t1061_179 = _t1059_179 == _t1060_179[0m
[93m8068[92m lwi R8 R14 420 
[93m8069[92m lwi R9 R14 424 
[93m8070[92m eq R10 R8 R9 
[93m8071[92m swi R10 R14 428 
[0m[94mif ( _t1061_179 == #0 ) goto label_527[0m
[93m8072[92m lwi R8 R14 428 
[93m8073[92m cmp R8 R0 
[93m8074[92m jeq label_527 
[0m[94mFunctionCall reverse_string[0m
[0m[94mcall label_332[0m
[93m8075[92m la R8 label_528 
[93m8076[92m swi R8 R14 -8 
[93m8077[92m addi R14 R14 -208 
[93m8078[92m jmp label_332 
[0m[94mlabel_528:[0m
[0m[94m_t1062_184 = ReturnVal[0m
[93m8079[92m lwi R8 R14 -4 
[93m8080[92m swi R8 R14 432 
[0m[94mgoto label_501[0m
[93m8081[92m jmp label_501 
[0m[94mlabel_527:[0m
[0m[94mFunctionCall strcmp[0m
[0m[94mparam command_179[0m
[93m8082[92m lwi R8 R14 4 
[93m8083[92m swi R8 R14 -16 
[0m[94mparam pri_179[0m
[93m8084[92m lwi R8 R14 36 
[93m8085[92m swi R8 R14 -20 
[0m[94mcall label_74[0m
[93m8086[92m la R8 label_529 
[93m8087[92m swi R8 R14 -8 
[93m8088[92m addi R14 R14 -96 
[93m8089[92m jmp label_74 
[0m[94mlabel_529:[0m
[0m[94m_t1063_179 = ReturnVal[0m
[93m8090[92m lwi R8 R14 -4 
[93m8091[92m swi R8 R14 436 
[0m[94m_t1064_179 = #0[0m
[93m8092[92m li R8 0 
[93m8093[92m swi R8 R14 440 
[0m[94m_t1065_179 = _t1063_179 == _t1064_179[0m
[93m8094[92m lwi R8 R14 436 
[93m8095[92m lwi R9 R14 440 
[93m8096[92m eq R10 R8 R9 
[93m8097[92m swi R10 R14 444 
[0m[94mif ( _t1065_179 == #0 ) goto label_530[0m
[93m8098[92m lwi R8 R14 444 
[93m8099[92m cmp R8 R0 
[93m8100[92m jeq label_530 
[0m[94mFunctionCall prime[0m
[0m[94mcall label_351[0m
[93m8101[92m la R8 label_531 
[93m8102[92m swi R8 R14 -8 
[93m8103[92m addi R14 R14 -164 
[93m8104[92m jmp label_351 
[0m[94mlabel_531:[0m
[0m[94m_t1066_185 = ReturnVal[0m
[93m8105[92m lwi R8 R14 -4 
[93m8106[92m swi R8 R14 448 
[0m[94mgoto label_501[0m
[93m8107[92m jmp label_501 
[0m[94mlabel_530:[0m
[0m[94mFunctionCall strcmp[0m
[0m[94mparam command_179[0m
[93m8108[92m lwi R8 R14 4 
[93m8109[92m swi R8 R14 -16 
[0m[94mparam qsort_179[0m
[93m8110[92m lwi R8 R14 32 
[93m8111[92m swi R8 R14 -20 
[0m[94mcall label_74[0m
[93m8112[92m la R8 label_532 
[93m8113[92m swi R8 R14 -8 
[93m8114[92m addi R14 R14 -96 
[93m8115[92m jmp label_74 
[0m[94mlabel_532:[0m
[0m[94m_t1067_179 = ReturnVal[0m
[93m8116[92m lwi R8 R14 -4 
[93m8117[92m swi R8 R14 452 
[0m[94m_t1068_179 = #0[0m
[93m8118[92m li R8 0 
[93m8119[92m swi R8 R14 456 
[0m[94m_t1069_179 = _t1067_179 == _t1068_179[0m
[93m8120[92m lwi R8 R14 452 
[93m8121[92m lwi R9 R14 456 
[93m8122[92m eq R10 R8 R9 
[93m8123[92m swi R10 R14 460 
[0m[94mif ( _t1069_179 == #0 ) goto label_533[0m
[93m8124[92m lwi R8 R14 460 
[93m8125[92m cmp R8 R0 
[93m8126[92m jeq label_533 
[0m[94mFunctionCall sort[0m
[0m[94mcall label_382[0m
[93m8127[92m la R8 label_534 
[93m8128[92m swi R8 R14 -8 
[93m8129[92m addi R14 R14 -184 
[93m8130[92m jmp label_382 
[0m[94mlabel_534:[0m
[0m[94m_t1070_186 = ReturnVal[0m
[93m8131[92m lwi R8 R14 -4 
[93m8132[92m swi R8 R14 464 
[0m[94mgoto label_501[0m
[93m8133[92m jmp label_501 
[0m[94mlabel_533:[0m
[0m[94mFunctionCall strcmp[0m
[0m[94mparam command_179[0m
[93m8134[92m lwi R8 R14 4 
[93m8135[92m swi R8 R14 -16 
[0m[94mparam palindrome_179[0m
[93m8136[92m lwi R8 R14 56 
[93m8137[92m swi R8 R14 -20 
[0m[94mcall label_74[0m
[93m8138[92m la R8 label_535 
[93m8139[92m swi R8 R14 -8 
[93m8140[92m addi R14 R14 -96 
[93m8141[92m jmp label_74 
[0m[94mlabel_535:[0m
[0m[94m_t1071_179 = ReturnVal[0m
[93m8142[92m lwi R8 R14 -4 
[93m8143[92m swi R8 R14 468 
[0m[94m_t1072_179 = #0[0m
[93m8144[92m li R8 0 
[93m8145[92m swi R8 R14 472 
[0m[94m_t1073_179 = _t1071_179 == _t1072_179[0m
[93m8146[92m lwi R8 R14 468 
[93m8147[92m lwi R9 R14 472 
[93m8148[92m eq R10 R8 R9 
[93m8149[92m swi R10 R14 476 
[0m[94mif ( _t1073_179 == #0 ) goto label_536[0m
[93m8150[92m lwi R8 R14 476 
[93m8151[92m cmp R8 R0 
[93m8152[92m jeq label_536 
[0m[94mFunctionCall Palindrome[0m
[0m[94mcall label_455[0m
[93m8153[92m la R8 label_537 
[93m8154[92m swi R8 R14 -8 
[93m8155[92m addi R14 R14 -148 
[93m8156[92m jmp label_455 
[0m[94mlabel_537:[0m
[0m[94m_t1074_187 = ReturnVal[0m
[93m8157[92m lwi R8 R14 -4 
[93m8158[92m swi R8 R14 480 
[0m[94mgoto label_501[0m
[93m8159[92m jmp label_501 
[0m[94mlabel_536:[0m
[0m[94mFunctionCall strcmp[0m
[0m[94mparam command_179[0m
[93m8160[92m lwi R8 R14 4 
[93m8161[92m swi R8 R14 -16 
[0m[94mparam sumofnatural_179[0m
[93m8162[92m lwi R8 R14 60 
[93m8163[92m swi R8 R14 -20 
[0m[94mcall label_74[0m
[93m8164[92m la R8 label_538 
[93m8165[92m swi R8 R14 -8 
[93m8166[92m addi R14 R14 -96 
[93m8167[92m jmp label_74 
[0m[94mlabel_538:[0m
[0m[94m_t1075_179 = ReturnVal[0m
[93m8168[92m lwi R8 R14 -4 
[93m8169[92m swi R8 R14 484 
[0m[94m_t1076_179 = #0[0m
[93m8170[92m li R8 0 
[93m8171[92m swi R8 R14 488 
[0m[94m_t1077_179 = _t1075_179 == _t1076_179[0m
[93m8172[92m lwi R8 R14 484 
[93m8173[92m lwi R9 R14 488 
[93m8174[92m eq R10 R8 R9 
[93m8175[92m swi R10 R14 492 
[0m[94mif ( _t1077_179 == #0 ) goto label_539[0m
[93m8176[92m lwi R8 R14 492 
[93m8177[92m cmp R8 R0 
[93m8178[92m jeq label_539 
[0m[94mFunctionCall SumofNatural[0m
[0m[94mcall label_469[0m
[93m8179[92m la R8 label_540 
[93m8180[92m swi R8 R14 -8 
[93m8181[92m addi R14 R14 -100 
[93m8182[92m jmp label_469 
[0m[94mlabel_540:[0m
[0m[94m_t1078_188 = ReturnVal[0m
[93m8183[92m lwi R8 R14 -4 
[93m8184[92m swi R8 R14 496 
[0m[94mgoto label_501[0m
[93m8185[92m jmp label_501 
[0m[94mlabel_539:[0m
[0m[94mFunctionCall strcmp[0m
[0m[94mparam command_179[0m
[93m8186[92m lwi R8 R14 4 
[93m8187[92m swi R8 R14 -16 
[0m[94mparam factorialofn_179[0m
[93m8188[92m lwi R8 R14 64 
[93m8189[92m swi R8 R14 -20 
[0m[94mcall label_74[0m
[93m8190[92m la R8 label_541 
[93m8191[92m swi R8 R14 -8 
[93m8192[92m addi R14 R14 -96 
[93m8193[92m jmp label_74 
[0m[94mlabel_541:[0m
[0m[94m_t1079_179 = ReturnVal[0m
[93m8194[92m lwi R8 R14 -4 
[93m8195[92m swi R8 R14 500 
[0m[94m_t1080_179 = #0[0m
[93m8196[92m li R8 0 
[93m8197[92m swi R8 R14 504 
[0m[94m_t1081_179 = _t1079_179 == _t1080_179[0m
[93m8198[92m lwi R8 R14 500 
[93m8199[92m lwi R9 R14 504 
[93m8200[92m eq R10 R8 R9 
[93m8201[92m swi R10 R14 508 
[0m[94mif ( _t1081_179 == #0 ) goto label_542[0m
[93m8202[92m lwi R8 R14 508 
[93m8203[92m cmp R8 R0 
[93m8204[92m jeq label_542 
[0m[94mFunctionCall Factorial_ofN[0m
[0m[94mcall label_483[0m
[93m8205[92m la R8 label_543 
[93m8206[92m swi R8 R14 -8 
[93m8207[92m addi R14 R14 -92 
[93m8208[92m jmp label_483 
[0m[94mlabel_543:[0m
[0m[94m_t1082_189 = ReturnVal[0m
[93m8209[92m lwi R8 R14 -4 
[93m8210[92m swi R8 R14 512 
[0m[94mgoto label_501[0m
[93m8211[92m jmp label_501 
[0m[94mlabel_542:[0m
[0m[94mFunctionCall strcmp[0m
[0m[94mparam command_179[0m
[93m8212[92m lwi R8 R14 4 
[93m8213[92m swi R8 R14 -16 
[0m[94mparam exit_179[0m
[93m8214[92m lwi R8 R14 44 
[93m8215[92m swi R8 R14 -20 
[0m[94mcall label_74[0m
[93m8216[92m la R8 label_544 
[93m8217[92m swi R8 R14 -8 
[93m8218[92m addi R14 R14 -96 
[93m8219[92m jmp label_74 
[0m[94mlabel_544:[0m
[0m[94m_t1083_179 = ReturnVal[0m
[93m8220[92m lwi R8 R14 -4 
[93m8221[92m swi R8 R14 516 
[0m[94m_t1084_179 = #0[0m
[93m8222[92m li R8 0 
[93m8223[92m swi R8 R14 520 
[0m[94m_t1085_179 = _t1083_179 == _t1084_179[0m
[93m8224[92m lwi R8 R14 516 
[93m8225[92m lwi R9 R14 520 
[93m8226[92m eq R10 R8 R9 
[93m8227[92m swi R10 R14 524 
[0m[94mif ( _t1085_179 == #0 ) goto label_545[0m
[93m8228[92m lwi R8 R14 524 
[93m8229[92m cmp R8 R0 
[93m8230[92m jeq label_545 
[0m[94m_t1086_190 = #2[0m
[93m8231[92m li R8 2 
[93m8232[92m swi R8 R14 528 
[0m[94mReturn _t1086_190[0m
[93m8233[92m lwi R8 R14 528 
[93m8234[92m swi R8 R14 556 
[93m8235[92m lwi R12 R14 548 
[93m8236[92m li R8 32964 
[93m8237[92m lwi R9 R14 552 
[93m8238[92m sub R10 R9 R8 
[93m8239[92m addi R14 R14 560 
[93m8240[92m jr R10 
[0m[94mgoto label_501[0m
[93m8241[92m jmp label_501 
[0m[94mlabel_545:[0m
[0m[94mFunctionCall print_string[0m
[0m[94mparam command_not_found_179[0m
[93m8242[92m lwi R8 R14 48 
[93m8243[92m swi R8 R14 -16 
[0m[94m_t1087_191 = #17[0m
[93m8244[92m li R8 17 
[93m8245[92m swi R8 R14 532 
[0m[94mparam _t1087_191[0m
[93m8246[92m lwi R8 R14 532 
[93m8247[92m swi R8 R14 -20 
[0m[94m_t1088_191 = #1[0m
[93m8248[92m li R8 1 
[93m8249[92m swi R8 R14 536 
[0m[94mparam _t1088_191[0m
[93m8250[92m lwi R8 R14 536 
[93m8251[92m swi R8 R14 -24 
[0m[94mcall label_85[0m
[93m8252[92m la R8 label_546 
[93m8253[92m swi R8 R14 -8 
[93m8254[92m addi R14 R14 -180 
[93m8255[92m jmp label_85 
[0m[94mlabel_546:[0m
[0m[94m_t1089_191 = ReturnVal[0m
[93m8256[92m lwi R8 R14 -4 
[93m8257[92m swi R8 R14 540 
[0m[94mlabel_501:[0m
[0m[94m_t1090_179 = #1[0m
[93m8258[92m li R8 1 
[93m8259[92m swi R8 R14 544 
[0m[94mReturn _t1090_179[0m
[93m8260[92m lwi R8 R14 544 
[93m8261[92m swi R8 R14 556 
[93m8262[92m lwi R12 R14 548 
[93m8263[92m li R8 33072 
[93m8264[92m lwi R9 R14 552 
[93m8265[92m sub R10 R9 R8 
[93m8266[92m addi R14 R14 560 
[93m8267[92m jr R10 
[0m-------------------------------------
Parsing start_shell
arrow_192 0
len_192 4
r_193 8
_t1091_192 12
_t1092_192 16
_t1093_192 20
_t1094_193 24
_t1095_193 28
_t1096_193 32
_t1097_193 36
_t1098_193 40
_t1099_193 44
_t1100_193 48
_t1101_192 52
[94mlabel_547:[0m
[93m8268[92m swi R12 R14 56 
[0m[94mFunctionCall welcome_screen[0m
[0m[94mcall label_31[0m
[93m8269[92m la R8 label_548 
[93m8270[92m swi R8 R14 -8 
[93m8271[92m addi R14 R14 -168 
[93m8272[92m jmp label_31 
[0m[94mlabel_548:[0m
[0m[94m_t1091_192 = ReturnVal[0m
[93m8273[92m lwi R8 R14 -4 
[93m8274[92m swi R8 R14 12 
[0m[94mstring _t1092_192 "Team1@CSD:~$"[0m
[93m8275[92m subi R12 R12 16 
[93m8276[92m li R8 84 
[93m8277[92m sbi R8 R12 0 
[93m8278[92m li R8 101 
[93m8279[92m sbi R8 R12 1 
[93m8280[92m li R8 97 
[93m8281[92m sbi R8 R12 2 
[93m8282[92m li R8 109 
[93m8283[92m sbi R8 R12 3 
[93m8284[92m li R8 49 
[93m8285[92m sbi R8 R12 4 
[93m8286[92m li R8 64 
[93m8287[92m sbi R8 R12 5 
[93m8288[92m li R8 67 
[93m8289[92m sbi R8 R12 6 
[93m8290[92m li R8 83 
[93m8291[92m sbi R8 R12 7 
[93m8292[92m li R8 68 
[93m8293[92m sbi R8 R12 8 
[93m8294[92m li R8 58 
[93m8295[92m sbi R8 R12 9 
[93m8296[92m li R8 126 
[93m8297[92m sbi R8 R12 10 
[93m8298[92m li R8 36 
[93m8299[92m sbi R8 R12 11 
[93m8300[92m sbi R0 R12 12 
[93m8301[92m swi R12 R14 16 
[0m[94marrow_192 = _t1092_192[0m
[93m8302[92m lwi R8 R14 16 
[93m8303[92m swi R8 R14 0 
[0m[94mFunctionCall strlen[0m
[0m[94mparam arrow_192[0m
[93m8304[92m lwi R8 R14 0 
[93m8305[92m swi R8 R14 -16 
[0m[94mcall label_8[0m
[93m8306[92m la R8 label_549 
[93m8307[92m swi R8 R14 -8 
[93m8308[92m addi R14 R14 -52 
[93m8309[92m jmp label_8 
[0m[94mlabel_549:[0m
[0m[94m_t1093_192 = ReturnVal[0m
[93m8310[92m lwi R8 R14 -4 
[93m8311[92m swi R8 R14 20 
[0m[94mlen_192 = _t1093_192[0m
[93m8312[92m lwi R8 R14 20 
[93m8313[92m swi R8 R14 4 
[0m[94mlabel_550:[0m
[0m[94m_t1094_193 = #1[0m
[93m8314[92m li R8 1 
[93m8315[92m swi R8 R14 24 
[0m[94mif ( _t1094_193 == #0 ) goto label_553[0m
[93m8316[92m lwi R8 R14 24 
[93m8317[92m cmp R8 R0 
[93m8318[92m jeq label_553 
[0m[94mgoto label_551[0m
[93m8319[92m jmp label_551 
[0m[94mlabel_552:[0m
[0m[94mgoto label_550[0m
[93m8320[92m jmp label_550 
[0m[94mlabel_551:[0m
[0m[94mFunctionCall display[0m
[0m[94mparam arrow_192[0m
[93m8321[92m lwi R8 R14 0 
[93m8322[92m swi R8 R14 -16 
[0m[94mparam len_192[0m
[93m8323[92m lwi R8 R14 4 
[93m8324[92m swi R8 R14 -20 
[0m[94mparam line_0[0m
[93m8325[92m lwi R8 R13 16 
[93m8326[92m swi R8 R14 -24 
[0m[94mparam character_0[0m
[93m8327[92m lwi R8 R13 20 
[93m8328[92m swi R8 R14 -28 
[0m[94mcall label_20[0m
[93m8329[92m la R8 label_554 
[93m8330[92m swi R8 R14 -8 
[93m8331[92m addi R14 R14 -164 
[93m8332[92m jmp label_20 
[0m[94mlabel_554:[0m
[0m[94m_t1095_193 = ReturnVal[0m
[93m8333[92m lwi R8 R14 -4 
[93m8334[92m swi R8 R14 28 
[0m[94m_t1096_193 = #4[0m
[93m8335[92m li R8 4 
[93m8336[92m swi R8 R14 32 
[0m[94m_t1097_193 = character_0 + _t1096_193[0m
[93m8337[92m lwi R8 R13 20 
[93m8338[92m lwi R9 R14 32 
[93m8339[92m add R10 R8 R9 
[93m8340[92m swi R10 R14 36 
[0m[94mcharacter_0 = _t1097_193[0m
[93m8341[92m lwi R8 R14 36 
[93m8342[92m swi R8 R13 20 
[0m[94mFunctionCall parse_command[0m
[0m[94mcall label_492[0m
[93m8343[92m la R8 label_555 
[93m8344[92m swi R8 R14 -8 
[93m8345[92m addi R14 R14 -560 
[93m8346[92m jmp label_492 
[0m[94mlabel_555:[0m
[0m[94m_t1098_193 = ReturnVal[0m
[93m8347[92m lwi R8 R14 -4 
[93m8348[92m swi R8 R14 40 
[0m[94mr_193 = _t1098_193[0m
[93m8349[92m lwi R8 R14 40 
[93m8350[92m swi R8 R14 8 
[0m[94m_t1099_193 = #2[0m
[93m8351[92m li R8 2 
[93m8352[92m swi R8 R14 44 
[0m[94m_t1100_193 = r_193 == _t1099_193[0m
[93m8353[92m lwi R8 R14 8 
[93m8354[92m lwi R9 R14 44 
[93m8355[92m eq R10 R8 R9 
[93m8356[92m swi R10 R14 48 
[0m[94mif ( _t1100_193 == #0 ) goto label_556[0m
[93m8357[92m lwi R8 R14 48 
[93m8358[92m cmp R8 R0 
[93m8359[92m jeq label_556 
[0m[94mgoto label_553[0m
[93m8360[92m jmp label_553 
[0m[94mgoto label_557[0m
[93m8361[92m jmp label_557 
[0m[94mlabel_556:[0m
[0m[94mlabel_557:[0m
[0m[94mgoto label_552[0m
[93m8362[92m jmp label_552 
[0m[94mlabel_553:[0m
[0m[94m_t1101_192 = #0[0m
[93m8363[92m li R8 0 
[93m8364[92m swi R8 R14 52 
[0m[94mReturn _t1101_192[0m
[93m8365[92m lwi R8 R14 52 
[93m8366[92m swi R8 R14 64 
[93m8367[92m lwi R12 R14 56 
[93m8368[92m li R8 33492 
[93m8369[92m lwi R9 R14 60 
[93m8370[92m sub R10 R9 R8 
[93m8371[92m addi R14 R14 68 
[93m8372[92m jr R10 
[0m-------------------------------------
Parsing main
i_195 0
id_195 4
_t1102_195 8
_t1103_195 12
_t1104_195 16
_t1105_195 20
_t1106_195 24
_t1107_195 28
_t1108_195 32
_t1109_195 36
_t1110_195 40
_t1111_195 44
_t1112_196 48
_t1113_196 52
_t1114_196 56
_t1115_196 60
_t1116_196 64
_t1117_196 68
_t1118_196 72
_t1119_195 76
_t1120_195 80
_t1121_195 84
_t1122_195 88
_t1123_195 92
_t1124_195 96
_t1125_195 100
_t1126_195 104
_t1127_195 108
_t1128_195 112
_t1129_195 116
_t1130_195 120
_t1131_195 124
_t1132_195 128
_t1133_195 132
_t1134_195 136
_t1135_195 140
_t1136_195 144
_t1137_195 148
_t1138_195 152
_t1139_195 156
_t1140_195 160
_t1141_195 164
_t1142_195 168
_t1143_195 172
_t1144_195 176
_t1145_195 180
_t1146_195 184
_t1147_195 188
_t1148_195 192
_t1149_195 196
_t1150_195 200
_t1151_195 204
_t1152_195 208
_t1153_195 212
_t1154_195 216
_t1155_195 220
_t1156_195 224
_t1157_195 228
_t1158_195 232
[94mlabel_558:[0m
[93m8373[92m swi R12 R14 236 
[0m[94m_t1102_195 = #1[0m
[93m8374[92m li R8 1 
[93m8375[92m swi R8 R14 8 
[0m[94mpid_0 = _t1102_195[0m
[93m8376[92m lwi R8 R14 8 
[93m8377[92m swi R8 R13 52 
[0m[94mcurrent_process_0 = pid_0[0m
[93m8378[92m lwi R8 R13 52 
[93m8379[92m swi R8 R13 44 
[0m[94masm "load" "R3" current_process_0 [0m
[93m8380[92m lwi R3 R13 44 
[0m[94m_t1103_195 = #76000[0m
[93m8381[92m li R8 76000 
[93m8382[92m swi R8 R14 12 
[0m[94mKEYBOARD_0 = _t1103_195[0m
[93m8383[92m lwi R8 R14 12 
[93m8384[92m swi R8 R13 0 
[0m[94m_t1104_195 = #0[0m
[93m8385[92m li R8 0 
[93m8386[92m swi R8 R14 16 
[0m[94mline_0 = _t1104_195[0m
[93m8387[92m lwi R8 R14 16 
[93m8388[92m swi R8 R13 16 
[0m[94m_t1105_195 = #0[0m
[93m8389[92m li R8 0 
[93m8390[92m swi R8 R14 20 
[0m[94mcharacter_0 = _t1105_195[0m
[93m8391[92m lwi R8 R14 20 
[93m8392[92m swi R8 R13 20 
[0m[94m_t1106_195 = #40[0m
[93m8393[92m li R8 40 
[93m8394[92m swi R8 R14 24 
[0m[94mmemory _t1107_195 _t1106_195 #1[0m
[93m8395[92m lwi R8 R14 24 
[93m8396[92m li R9 1 
[93m8397[92m mul R10 R8 R9 
[93m8398[92m modi R8 R10 4 
[93m8399[92m li R9 4 
[93m8400[92m sub R8 R9 R8 
[93m8401[92m add R10 R10 R8 
[93m8402[92m sub R12 R12 R10 
[93m8403[92m swi R12 R14 28 
[0m[94mBuffer_0 = _t1107_195[0m
[93m8404[92m lwi R8 R14 28 
[93m8405[92m swi R8 R13 8 
[0m[94m_t1108_195 = #0[0m
[93m8406[92m li R8 0 
[93m8407[92m swi R8 R14 32 
[0m[94mcurrent_buffer_index_0 = _t1108_195[0m
[93m8408[92m lwi R8 R14 32 
[93m8409[92m swi R8 R13 12 
[0m[94m_t1109_195 = #42368[0m
[93m8410[92m li R8 42368 
[93m8411[92m swi R8 R14 36 
[0m[94mMAPSTART_0 = _t1109_195[0m
[93m8412[92m lwi R8 R14 36 
[93m8413[92m swi R8 R13 4 
[0m[94m_t1110_195 = #0[0m
[93m8414[92m li R8 0 
[93m8415[92m swi R8 R14 40 
[0m[94mmemory_0 = _t1110_195[0m
[93m8416[92m lwi R8 R14 40 
[93m8417[92m swi R8 R13 24 
[0m[94m_t1111_195 = #0[0m
[93m8418[92m li R8 0 
[93m8419[92m swi R8 R14 44 
[0m[94mdisplayLock_0 = _t1111_195[0m
[93m8420[92m lwi R8 R14 44 
[93m8421[92m swi R8 R13 28 
[0m[94m_t1112_196 = #0[0m
[93m8422[92m li R8 0 
[93m8423[92m swi R8 R14 48 
[0m[94mi_195 = _t1112_196[0m
[93m8424[92m lwi R8 R14 48 
[93m8425[92m swi R8 R14 0 
[0m[94mlabel_559:[0m
[0m[94m_t1113_196 = #40[0m
[93m8426[92m li R8 40 
[93m8427[92m swi R8 R14 52 
[0m[94m_t1114_196 = i_195 < _t1113_196[0m
[93m8428[92m lwi R8 R14 0 
[93m8429[92m lwi R9 R14 52 
[93m8430[92m lt R10 R8 R9 
[93m8431[92m swi R10 R14 56 
[0m[94mif ( _t1114_196 == #0 ) goto label_562[0m
[93m8432[92m lwi R8 R14 56 
[93m8433[92m cmp R8 R0 
[93m8434[92m jeq label_562 
[0m[94mgoto label_560[0m
[93m8435[92m jmp label_560 
[0m[94mlabel_561:[0m
[0m[94m_t1115_196 = i_195[0m
[93m8436[92m lwi R8 R14 0 
[93m8437[92m swi R8 R14 60 
[0m[94mi_195 = i_195 + #1[0m
[93m8438[92m lwi R8 R14 0 
[93m8439[92m li R9 1 
[93m8440[92m add R10 R8 R9 
[93m8441[92m swi R10 R14 0 
[0m[94mgoto label_559[0m
[93m8442[92m jmp label_559 
[0m[94mlabel_560:[0m
[0m[94m_t1116_196 = i_195 * #1[0m
[93m8443[92m lwi R8 R14 0 
[93m8444[92m li R9 1 
[93m8445[92m mul R10 R8 R9 
[93m8446[92m swi R10 R14 64 
[0m[94m_t1117_196 = Buffer_0 + _t1116_196[0m
[93m8447[92m lwi R8 R13 8 
[93m8448[92m lwi R9 R14 64 
[93m8449[92m add R10 R8 R9 
[93m8450[92m swi R10 R14 68 
[0m[94m_t1118_196 = #0[0m
[93m8451[92m li R8 0 
[93m8452[92m swi R8 R14 72 
[0m[94m*_t1117_196 = _t1118_196[0m
[93m8453[92m lwi R8 R14 72 
[93m8454[92m lwi R7 R14 68 
[93m8455[92m sbi R8 R7 0 
[0m[94mgoto label_561[0m
[93m8456[92m jmp label_561 
[0m[94mlabel_562:[0m
[0m[94m_t1119_195 = #28[0m
[93m8457[92m li R8 28 
[93m8458[92m swi R8 R14 76 
[0m[94mmemory _t1120_195 _t1119_195 #1[0m
[93m8459[92m lwi R8 R14 76 
[93m8460[92m li R9 1 
[93m8461[92m mul R10 R8 R9 
[93m8462[92m modi R8 R10 4 
[93m8463[92m li R9 4 
[93m8464[92m sub R8 R9 R8 
[93m8465[92m add R10 R10 R8 
[93m8466[92m sub R12 R12 R10 
[93m8467[92m swi R12 R14 80 
[0m[94mos_reg_0 = _t1120_195[0m
[93m8468[92m lwi R8 R14 80 
[93m8469[92m swi R8 R13 56 
[0m[94m_t1121_195 = #28[0m
[93m8470[92m li R8 28 
[93m8471[92m swi R8 R14 84 
[0m[94mmemory _t1122_195 _t1121_195 #1[0m
[93m8472[92m lwi R8 R14 84 
[93m8473[92m li R9 1 
[93m8474[92m mul R10 R8 R9 
[93m8475[92m modi R8 R10 4 
[93m8476[92m li R9 4 
[93m8477[92m sub R8 R9 R8 
[93m8478[92m add R10 R10 R8 
[93m8479[92m sub R12 R12 R10 
[93m8480[92m swi R12 R14 88 
[0m[94mp1_reg_0 = _t1122_195[0m
[93m8481[92m lwi R8 R14 88 
[93m8482[92m swi R8 R13 60 
[0m[94m_t1123_195 = #28[0m
[93m8483[92m li R8 28 
[93m8484[92m swi R8 R14 92 
[0m[94mmemory _t1124_195 _t1123_195 #1[0m
[93m8485[92m lwi R8 R14 92 
[93m8486[92m li R9 1 
[93m8487[92m mul R10 R8 R9 
[93m8488[92m modi R8 R10 4 
[93m8489[92m li R9 4 
[93m8490[92m sub R8 R9 R8 
[93m8491[92m add R10 R10 R8 
[93m8492[92m sub R12 R12 R10 
[93m8493[92m swi R12 R14 96 
[0m[94mp2_reg_0 = _t1124_195[0m
[93m8494[92m lwi R8 R14 96 
[93m8495[92m swi R8 R13 64 
[0m[94m_t1125_195 = #28[0m
[93m8496[92m li R8 28 
[93m8497[92m swi R8 R14 100 
[0m[94mmemory _t1126_195 _t1125_195 #1[0m
[93m8498[92m lwi R8 R14 100 
[93m8499[92m li R9 1 
[93m8500[92m mul R10 R8 R9 
[93m8501[92m modi R8 R10 4 
[93m8502[92m li R9 4 
[93m8503[92m sub R8 R9 R8 
[93m8504[92m add R10 R10 R8 
[93m8505[92m sub R12 R12 R10 
[93m8506[92m swi R12 R14 104 
[0m[94mp3_reg_0 = _t1126_195[0m
[93m8507[92m lwi R8 R14 104 
[93m8508[92m swi R8 R13 68 
[0m[94m_t1127_195 = #28[0m
[93m8509[92m li R8 28 
[93m8510[92m swi R8 R14 108 
[0m[94mmemory _t1128_195 _t1127_195 #1[0m
[93m8511[92m lwi R8 R14 108 
[93m8512[92m li R9 1 
[93m8513[92m mul R10 R8 R9 
[93m8514[92m modi R8 R10 4 
[93m8515[92m li R9 4 
[93m8516[92m sub R8 R9 R8 
[93m8517[92m add R10 R10 R8 
[93m8518[92m sub R12 R12 R10 
[93m8519[92m swi R12 R14 112 
[0m[94mp4_reg_0 = _t1128_195[0m
[93m8520[92m lwi R8 R14 112 
[93m8521[92m swi R8 R13 72 
[0m[94m_t1129_195 = #28[0m
[93m8522[92m li R8 28 
[93m8523[92m swi R8 R14 116 
[0m[94mmemory _t1130_195 _t1129_195 #1[0m
[93m8524[92m lwi R8 R14 116 
[93m8525[92m li R9 1 
[93m8526[92m mul R10 R8 R9 
[93m8527[92m modi R8 R10 4 
[93m8528[92m li R9 4 
[93m8529[92m sub R8 R9 R8 
[93m8530[92m add R10 R10 R8 
[93m8531[92m sub R12 R12 R10 
[93m8532[92m swi R12 R14 120 
[0m[94mtemp_reg_0 = _t1130_195[0m
[93m8533[92m lwi R8 R14 120 
[93m8534[92m swi R8 R13 76 
[0m[94m_t1131_195 = #20[0m
[93m8535[92m li R8 20 
[93m8536[92m swi R8 R14 124 
[0m[94mmemory _t1132_195 _t1131_195 #1[0m
[93m8537[92m lwi R8 R14 124 
[93m8538[92m li R9 1 
[93m8539[92m mul R10 R8 R9 
[93m8540[92m modi R8 R10 4 
[93m8541[92m li R9 4 
[93m8542[92m sub R8 R9 R8 
[93m8543[92m add R10 R10 R8 
[93m8544[92m sub R12 R12 R10 
[93m8545[92m swi R12 R14 128 
[0m[94mall_processes_0 = _t1132_195[0m
[93m8546[92m lwi R8 R14 128 
[93m8547[92m swi R8 R13 80 
[0m[94m_t1133_195 = #0[0m
[93m8548[92m li R8 0 
[93m8549[92m swi R8 R14 132 
[0m[94m_t1134_195 = _t1133_195 * #4[0m
[93m8550[92m lwi R8 R14 132 
[93m8551[92m li R9 4 
[93m8552[92m mul R10 R8 R9 
[93m8553[92m swi R10 R14 136 
[0m[94m_t1135_195 = all_processes_0 + _t1134_195[0m
[93m8554[92m lwi R8 R13 80 
[93m8555[92m lwi R9 R14 136 
[93m8556[92m add R10 R8 R9 
[93m8557[92m swi R10 R14 140 
[0m[94m*_t1135_195 = current_process_0[0m
[93m8558[92m lwi R8 R13 44 
[93m8559[92m lwi R7 R14 140 
[93m8560[92m swi R8 R7 0 
[0m[94m_t1136_195 = #1[0m
[93m8561[92m li R8 1 
[93m8562[92m swi R8 R14 144 
[0m[94m_t1137_195 = _t1136_195 * #4[0m
[93m8563[92m lwi R8 R14 144 
[93m8564[92m li R9 4 
[93m8565[92m mul R10 R8 R9 
[93m8566[92m swi R10 R14 148 
[0m[94m_t1138_195 = all_processes_0 + _t1137_195[0m
[93m8567[92m lwi R8 R13 80 
[93m8568[92m lwi R9 R14 148 
[93m8569[92m add R10 R8 R9 
[93m8570[92m swi R10 R14 152 
[0m[94m_t1139_195 = #0[0m
[93m8571[92m li R8 0 
[93m8572[92m swi R8 R14 156 
[0m[94m*_t1138_195 = _t1139_195[0m
[93m8573[92m lwi R8 R14 156 
[93m8574[92m lwi R7 R14 152 
[93m8575[92m swi R8 R7 0 
[0m[94m_t1140_195 = #2[0m
[93m8576[92m li R8 2 
[93m8577[92m swi R8 R14 160 
[0m[94m_t1141_195 = _t1140_195 * #4[0m
[93m8578[92m lwi R8 R14 160 
[93m8579[92m li R9 4 
[93m8580[92m mul R10 R8 R9 
[93m8581[92m swi R10 R14 164 
[0m[94m_t1142_195 = all_processes_0 + _t1141_195[0m
[93m8582[92m lwi R8 R13 80 
[93m8583[92m lwi R9 R14 164 
[93m8584[92m add R10 R8 R9 
[93m8585[92m swi R10 R14 168 
[0m[94m_t1143_195 = #0[0m
[93m8586[92m li R8 0 
[93m8587[92m swi R8 R14 172 
[0m[94m*_t1142_195 = _t1143_195[0m
[93m8588[92m lwi R8 R14 172 
[93m8589[92m lwi R7 R14 168 
[93m8590[92m swi R8 R7 0 
[0m[94m_t1144_195 = #3[0m
[93m8591[92m li R8 3 
[93m8592[92m swi R8 R14 176 
[0m[94m_t1145_195 = _t1144_195 * #4[0m
[93m8593[92m lwi R8 R14 176 
[93m8594[92m li R9 4 
[93m8595[92m mul R10 R8 R9 
[93m8596[92m swi R10 R14 180 
[0m[94m_t1146_195 = all_processes_0 + _t1145_195[0m
[93m8597[92m lwi R8 R13 80 
[93m8598[92m lwi R9 R14 180 
[93m8599[92m add R10 R8 R9 
[93m8600[92m swi R10 R14 184 
[0m[94m_t1147_195 = #0[0m
[93m8601[92m li R8 0 
[93m8602[92m swi R8 R14 188 
[0m[94m*_t1146_195 = _t1147_195[0m
[93m8603[92m lwi R8 R14 188 
[93m8604[92m lwi R7 R14 184 
[93m8605[92m swi R8 R7 0 
[0m[94m_t1148_195 = #4[0m
[93m8606[92m li R8 4 
[93m8607[92m swi R8 R14 192 
[0m[94m_t1149_195 = _t1148_195 * #4[0m
[93m8608[92m lwi R8 R14 192 
[93m8609[92m li R9 4 
[93m8610[92m mul R10 R8 R9 
[93m8611[92m swi R10 R14 196 
[0m[94m_t1150_195 = all_processes_0 + _t1149_195[0m
[93m8612[92m lwi R8 R13 80 
[93m8613[92m lwi R9 R14 196 
[93m8614[92m add R10 R8 R9 
[93m8615[92m swi R10 R14 200 
[0m[94m_t1151_195 = #0[0m
[93m8616[92m li R8 0 
[93m8617[92m swi R8 R14 204 
[0m[94m*_t1150_195 = _t1151_195[0m
[93m8618[92m lwi R8 R14 204 
[93m8619[92m lwi R7 R14 200 
[93m8620[92m swi R8 R7 0 
[0m[94mpid_0 = pid_0 + #1[0m
[93m8621[92m lwi R8 R13 52 
[93m8622[92m li R9 1 
[93m8623[92m add R10 R8 R9 
[93m8624[92m swi R10 R13 52 
[0m[94mFunctionCall create_process[0m
[0m[94m_t1152_195 = #1001[0m
[93m8625[92m li R8 1001 
[93m8626[92m swi R8 R14 208 
[0m[94mparam _t1152_195[0m
[93m8627[92m lwi R8 R14 208 
[93m8628[92m swi R8 R14 -16 
[0m[94mcall label_209[0m
[93m8629[92m la R8 label_563 
[93m8630[92m swi R8 R14 -8 
[93m8631[92m addi R14 R14 -100 
[93m8632[92m jmp label_209 
[0m[94mlabel_563:[0m
[0m[94m_t1153_195 = ReturnVal[0m
[93m8633[92m lwi R8 R14 -4 
[93m8634[92m swi R8 R14 212 
[0m[94mid_195 = _t1153_195[0m
[93m8635[92m lwi R8 R14 212 
[93m8636[92m swi R8 R14 4 
[0m[94mFunctionCall create_process[0m
[0m[94m_t1154_195 = #1002[0m
[93m8637[92m li R8 1002 
[93m8638[92m swi R8 R14 216 
[0m[94mparam _t1154_195[0m
[93m8639[92m lwi R8 R14 216 
[93m8640[92m swi R8 R14 -16 
[0m[94mcall label_209[0m
[93m8641[92m la R8 label_564 
[93m8642[92m swi R8 R14 -8 
[93m8643[92m addi R14 R14 -100 
[93m8644[92m jmp label_209 
[0m[94mlabel_564:[0m
[0m[94m_t1155_195 = ReturnVal[0m
[93m8645[92m lwi R8 R14 -4 
[93m8646[92m swi R8 R14 220 
[0m[94mFunctionCall create_process[0m
[0m[94m_t1156_195 = #1003[0m
[93m8647[92m li R8 1003 
[93m8648[92m swi R8 R14 224 
[0m[94mparam _t1156_195[0m
[93m8649[92m lwi R8 R14 224 
[93m8650[92m swi R8 R14 -16 
[0m[94mcall label_209[0m
[93m8651[92m la R8 label_565 
[93m8652[92m swi R8 R14 -8 
[93m8653[92m addi R14 R14 -100 
[93m8654[92m jmp label_209 
[0m[94mlabel_565:[0m
[0m[94m_t1157_195 = ReturnVal[0m
[93m8655[92m lwi R8 R14 -4 
[93m8656[92m swi R8 R14 228 
[0m[94masm "load" "R11" id_195 [0m
[93m8657[92m lwi R11 R14 4 
[0m[94masm "switch" "1" id_195 [0m
[93m8658[92m lwi R6 R13 56 
[93m8659[92m swi R5 R6 0 
[93m8660[92m swi R7 R6 4 
[93m8661[92m swi R8 R6 8 
[93m8662[92m swi R9 R6 12 
[93m8663[92m swi R10 R6 16 
[93m8664[92m swi R12 R6 20 
[93m8665[92m swi R14 R6 24 
[93m8666[92m lwi R6 R13 60 
[93m8667[92m lwi R5 R6 0 
[93m8668[92m lwi R7 R6 4 
[93m8669[92m lwi R8 R6 8 
[93m8670[92m lwi R9 R6 12 
[93m8671[92m lwi R10 R6 16 
[93m8672[92m lwi R12 R6 20 
[93m8673[92m lwi R14 R6 24 
[93m8674[92m swi R11 R13 44 
[93m8675[92m lwi R3 R13 44 
[93m8676[92m li R6 34724 
[93m8677[92m li R15 9612 
[93m8678[92m add R6 R6 R15 
[93m8679[92m addi R6 R6 8 
[93m8680[92m sub R5 R5 R6 
[93m8681[92m jri R5 
[0m[94m_t1158_195 = #0[0m
[93m8682[92m li R8 0 
[93m8683[92m swi R8 R14 232 
[0m[94mReturn _t1158_195[0m
[93m8684[92m lwi R8 R14 232 
[93m8685[92m swi R8 R14 244 
[93m8686[92m lwi R12 R14 236 
[93m8687[92m li R8 34768 
[93m8688[92m lwi R9 R14 240 
[93m8689[92m sub R10 R9 R8 
[93m8690[92m addi R14 R14 248 
[93m8691[92m jr R10 
[0m-------------------------------------
[93mlabel_565-[94m8655[0m
[93mlabel_564-[94m8645[0m
[93mlabel_560-[94m8443[0m
[93mlabel_561-[94m8436[0m
[93mlabel_559-[94m8426[0m
[93mlabel_553-[94m8363[0m
[93mlabel_557-[94m8362[0m
[93mlabel_555-[94m8347[0m
[93mlabel_552-[94m8320[0m
[93mlabel_550-[94m8314[0m
[93mlabel_549-[94m8310[0m
[93mlabel_501-[94m8258[0m
[93mlabel_546-[94m8256[0m
[93mlabel_545-[94m8242[0m
[93mlabel_544-[94m8220[0m
[93mlabel_542-[94m8212[0m
[93mlabel_539-[94m8186[0m
[93mlabel_541-[94m8194[0m
[93mlabel_540-[94m8183[0m
[93mlabel_255-[94m3597[0m
[93mlabel_241-[94m3435[0m
[93mlabel_508-[94m7803[0m
[93mlabel_224-[94m3034[0m
[93mlabel_247-[94m3463[0m
[93mlabel_386-[94m5444[0m
[93mlabel_246-[94m3448[0m
[93mlabel_407-[94m5733[0m
[93mlabel_242-[94m3434[0m
[93mlabel_50-[94m582[0m
[93mlabel_238-[94m3395[0m
[93mlabel_63-[94m657[0m
[93mlabel_444-[94m6390[0m
[93mlabel_237-[94m3380[0m
[93mlabel_250-[94m3485[0m
[93mlabel_369-[94m5063[0m
[93mlabel_231-[94m3078[0m
[93mlabel_42-[94m492[0m
[93mlabel_225-[94m3027[0m
[93mlabel_6-[94m45[0m
[93mcreate_process_return-[94m2969[0m
[93mlabel_486-[94m7289[0m
[93mlabel_511-[94m7851[0m
[93mlabel_213-[94m2887[0m
[93mlabel_110-[94m1137[0m
[93mlabel_215-[94m2886[0m
[93mlabel_509-[94m7819[0m
[93mlabel_212-[94m2859[0m
[93mlabel_239-[94m3412[0m
[93mlabel_209-[94m2838[0m
[93mlabel_235-[94m3383[0m
[93mlabel_204-[94m2805[0m
[93mlabel_208-[94m2805[0m
[93mlabel_558-[94m8373[0m
[93mlabel_206-[94m2763[0m
[93mlabel_280-[94m3917[0m
[93mlabel_90-[94m929[0m
[93mlabel_106-[94m1076[0m
[93mlabel_201-[94m2578[0m
[93mlabel_199-[94m2554[0m
[93mlabel_41-[94m495[0m
[93mlabel_337-[94m4508[0m
[93mlabel_188-[94m2332[0m
[93mlabel_21-[94m162[0m
[93mlabel_189-[94m2325[0m
[93mlabel_182-[94m2295[0m
[93mlabel_210-[94m2849[0m
[93mlabel_120-[94m1388[0m
[93mlabel_177-[94m2139[0m
[93mlabel_343-[94m4613[0m
[93mlabel_411-[94m5790[0m
[93mlabel_244-[94m3487[0m
[93mlabel_313-[94m4130[0m
[93mlabel_169-[94m2026[0m
[93mlabel_128-[94m1392[0m
[93mlabel_435-[94m6189[0m
[93mlabel_522-[94m8027[0m
[93mlabel_174-[94m2025[0m
[93mlabel_176-[94m2024[0m
[93mlabel_358-[94m4881[0m
[93mlabel_78-[94m834[0m
[93mlabel_125-[94m1373[0m
[93mlabel_172-[94m2002[0m
[93mlabel_58-[94m639[0m
[93mlabel_166-[94m1974[0m
[93mlabel_168-[94m1973[0m
[93mlabel_165-[94m1944[0m
[93mlabel_163-[94m1934[0m
[93mlabel_160-[94m1922[0m
[93mlabel_162-[94m1919[0m
[93mlabel_37-[94m455[0m
[93mlabel_161-[94m1903[0m
[93mlabel_207-[94m2784[0m
[93mlabel_418-[94m5995[0m
[93mlabel_158-[94m1795[0m
[93mlabel_152-[94m1735[0m
[93mlabel_103-[94m1081[0m
[93mlabel_151-[94m1723[0m
[93mlabel_149-[94m1703[0m
[93mlabel_143-[94m1625[0m
[93mlabel_144-[94m1624[0m
[93mlabel_192-[94m2354[0m
[93mlabel_187-[94m2315[0m
[93mlabel_181-[94m2187[0m
[93mlabel_142-[94m1618[0m
[93mlabel_383-[94m5371[0m
[93mlabel_141-[94m1618[0m
[93mlabel_220-[94m2935[0m
[93mlabel_140-[94m1618[0m
[93mlabel_138-[94m1564[0m
[93mlabel_136-[94m1509[0m
[93mlabel_234-[94m3383[0m
[93mlabel_47-[94m562[0m
[93mlabel_292-[94m3985[0m
[93mlabel_164-[94m1951[0m
[93mlabel_302-[94m4058[0m
[93mlabel_514-[94m7899[0m
[93mlabel_74-[94m795[0m
[93mlabel_134-[94m1477[0m
[93mlabel_131-[94m1469[0m
[93mlabel_532-[94m8116[0m
[93mlabel_132-[94m1448[0m
[93mlabel_19-[94m131[0m
[93mlabel_456-[94m6686[0m
[93mlabel_60-[94m645[0m
[93mlabel_20-[94m149[0m
[93mlabel_31-[94m294[0m
[93mlabel_222-[94m2978[0m
[93mlabel_194-[94m2513[0m
[93mlabel_273-[94m3877[0m
[93mlabel_57-[94m635[0m
[93mlabel_73-[94m780[0m
[93mlabel_248-[94m3456[0m
[93mlabel_54-[94m604[0m
[93mlabel_450-[94m6499[0m
[93mlabel_53-[94m599[0m
[93mlabel_49-[94m567[0m
[93mlabel_46-[94m563[0m
[93mlabel_253-[94m3600[0m
[93mlabel_45-[94m556[0m
[93mlabel_467-[94m6855[0m
[93mlabel_521-[94m8011[0m
[93mlabel_62-[94m657[0m
[93mlabel_517-[94m7947[0m
[93mlabel_9-[94m51[0m
[93mlabel_86-[94m905[0m
[93mlabel_35-[94m441[0m
[93mlabel_388-[94m5477[0m
[93mswitch_code_start-[94m2986[0m
[93mlabel_254-[94m3581[0m
[93mlabel_413-[94m5794[0m
[93mlabel_32-[94m398[0m
[93mlabel_228-[94m3053[0m
[93mlabel_13-[94m80[0m
[93mlabel_150-[94m1711[0m
[93mlabel_18-[94m110[0m
[93mlabel_127-[94m1352[0m
[93mlabel_24-[94m284[0m
[93mlabel_15-[94m95[0m
[93mlabel_543-[94m8209[0m
[93mlabel_14-[94m80[0m
[93mlabel_112-[94m1137[0m
[93mlabel_496-[94m7431[0m
[93mlabel_399-[94m5655[0m
[93mlabel_16-[94m100[0m
[93mlabel_34-[94m424[0m
[93mlabel_554-[94m8333[0m
[93mlabel_5-[94m46[0m
[93mlabel_245-[94m3487[0m
[93mlabel_88-[94m915[0m
[93mlabel_366-[94m4978[0m
[93mlabel_38-[94m459[0m
[93mlabel_3-[94m16[0m
[93mlabel_488-[94m7307[0m
[93mlabel_425-[94m5994[0m
[93mlabel_217-[94m2947[0m
[93mlabel_10-[94m58[0m
[93mlabel_406-[94m5692[0m
[93mlabel_556-[94m8362[0m
[93mlabel_227-[94m3053[0m
[93mlabel_43-[94m534[0m
[93mlabel_218-[94m2911[0m
[93mlabel_12-[94m87[0m
[93mlabel_362-[94m5053[0m
[93mlabel_211-[94m2866[0m
[93mlabel_170-[94m2026[0m
[93mlabel_299-[94m4036[0m
[93mlabel_7-[94m45[0m
[93mlabel_56-[94m614[0m
[93mlabel_490-[94m7335[0m
[93mlabel_154-[94m1776[0m
[93mlabel_135-[94m1494[0m
[93mlabel_122-[94m1296[0m
[93mlabel_329-[94m4376[0m
[93mlabel_28-[94m283[0m
[93mlabel_484-[94m7188[0m
[93mlabel_379-[94m5252[0m
[93mlabel_477-[94m7057[0m
[93mlabel_148-[94m1703[0m
[93mlabel_180-[94m2136[0m
[93mlabel_64-[94m661[0m
[93mlabel_104-[94m1081[0m
[93mlabel_146-[94m1673[0m
[93mlabel_197-[94m2542[0m
[93mlabel_236-[94m3364[0m
[93mlabel_412-[94m5996[0m
[93mlabel_8-[94m46[0m
[93mlabel_335-[94m4444[0m
[93mlabel_184-[94m2259[0m
[93mlabel_69-[94m714[0m
[93mlabel_267-[94m3816[0m
[93mlabel_563-[94m8633[0m
[93mlabel_443-[94m6384[0m
[93mlabel_100-[94m1004[0m
[93mlabel_223-[94m3017[0m
[93mlabel_323-[94m4406[0m
[93mlabel_111-[94m1134[0m
[93mlabel_36-[94m434[0m
[93mlabel_318-[94m4217[0m
[93mlabel_390-[94m5485[0m
[93mlabel_51-[94m582[0m
[93mlabel_22-[94m179[0m
[93mlabel_44-[94m554[0m
[93mlabel_30-[94m231[0m
[93mlabel_96-[94m983[0m
[93mlabel_130-[94m1400[0m
[93mlabel_71-[94m783[0m
[93mlabel_249-[94m3486[0m
[93mlabel_76-[94m812[0m
[93mlabel_29-[94m231[0m
[93mlabel_59-[94m646[0m
[93mlabel_70-[94m746[0m
[93mlabel_167-[94m1973[0m
[93mlabel_118-[94m1242[0m
[93mlabel_91-[94m944[0m
[93mlabel_186-[94m2305[0m
[93mlabel_316-[94m4178[0m
[93mlabel_251-[94m3485[0m
[93mlabel_439-[94m6267[0m
[93mlabel_26-[94m206[0m
[93mlabel_240-[94m3405[0m
[93mlabel_65-[94m676[0m
[93mlabel_516-[94m7931[0m
[93mlabel_219-[94m2923[0m
[93mlabel_179-[94m2120[0m
[93mlabel_68-[94m714[0m
[93mlabel_424-[94m5983[0m
[93mlabel_99-[94m1004[0m
[93mlabel_368-[94m5051[0m
[93mlabel_101-[94m1001[0m
[93mlabel_423-[94m5995[0m
[93mlabel_454-[94m6564[0m
[93mlabel_124-[94m1304[0m
[93mlabel_364-[94m4949[0m
[93mlabel_430-[94m6043[0m
[93mreturn_process_begin-[94m1736[0m
[93mlabel_139-[94m1574[0m
[93mlabel_48-[94m583[0m
[93mlabel_137-[94m1502[0m
[93mlabel_221-[94m2947[0m
[93mlabel_117-[94m1231[0m
[93mlabel_196-[94m2473[0m
[93mlabel_190-[94m2355[0m
[93mlabel_82-[94m894[0m
[93mlabel_114-[94m1143[0m
[93mlabel_243-[94m3434[0m
[93mswitch_begin-[94m2979[0m
[93mlabel_491-[94m7347[0m
[93mlabel_75-[94m802[0m
[93mlabel_155-[94m1769[0m
[93mlabel_326-[94m4353[0m
[93mlabel_77-[94m834[0m
[93mlabel_214-[94m2886[0m
[93mlabel_338-[94m4524[0m
[93mlabel_363-[94m4900[0m
[93mlabel_81-[94m846[0m
[93mlabel_61-[94m749[0m
[93mlabel_1-[94m8[0m
[93mlabel_289-[94m4014[0m
[93mlabel_349-[94m4726[0m
[93mlabel_384-[94m5387[0m
[93mlabel_89-[94m921[0m
[93mlabel_83-[94m893[0m
[93mlabel_173-[94m1995[0m
[93mlabel_2-[94m9[0m
[93mlabel_395-[94m5587[0m
[93mlabel_436-[94m6205[0m
[93mlabel_537-[94m8157[0m
[93mlabel_344-[94m4627[0m
[93mlabel_27-[94m199[0m
[93mlabel_123-[94m1311[0m
[93mlabel_185-[94m2295[0m
[93mlabel_85-[94m904[0m
[93mlabel_403-[94m5679[0m
[93mlabel_277-[94m3898[0m
[93mlabel_92-[94m937[0m
[93mlabel_230-[94m3102[0m
[93mlabel_325-[94m4356[0m
[93mlabel_97-[94m983[0m
[93mlabel_233-[94m3102[0m
[93mlabel_402-[94m5667[0m
[93mlabel_116-[94m1199[0m
[93mlabel_95-[94m988[0m
[93mlabel_102-[94m1028[0m
[93mlabel_52-[94m587[0m
[93mlabel_93-[94m1037[0m
[93mlabel_191-[94m2354[0m
[93mlabel_232-[94m3090[0m
[93mlabel_107-[94m1073[0m
[93mlabel_108-[94m1095[0m
[93mlabel_175-[94m2024[0m
[93mlabel_178-[94m2139[0m
[93mlabel_171-[94m1987[0m
[93mlabel_398-[94m5612[0m
[93mlabel_449-[94m6427[0m
[93mlabel_115-[94m1232[0m
[93mlabel_426-[94m5955[0m
[93mlabel_203-[94m2721[0m
[93mlabel_87-[94m916[0m
[93mlabel_353-[94m4812[0m
[93mlabel_126-[94m1352[0m
[93mlabel_23-[94m172[0m
[93mlabel_11-[94m57[0m
[93mlabel_79-[94m838[0m
[93mlabel_252-[94m3600[0m
[93mlabel_256-[94m3648[0m
[93mlabel_147-[94m1673[0m
[93mlabel_258-[94m3684[0m
[93mlabel_526-[94m8064[0m
[93mlabel_461-[94m6796[0m
[93mlabel_259-[94m3720[0m
[93mlabel_260-[94m3756[0m
[93mlabel_257-[94m3756[0m
[93mlabel_451-[94m6515[0m
[93mlabel_261-[94m3766[0m
[93mlabel_417-[94m5819[0m
[93mlabel_304-[94m4069[0m
[93mlabel_262-[94m3778[0m
[93mlabel_264-[94m3788[0m
[93mlabel_308-[94m4105[0m
[93mlabel_263-[94m3795[0m
[93mlabel_266-[94m3799[0m
[93mlabel_342-[94m4599[0m
[93mlabel_80-[94m853[0m
[93mlabel_268-[94m3809[0m
[93mlabel_269-[94m3821[0m
[93mlabel_394-[94m5567[0m
[93mlabel_270-[94m3835[0m
[93mlabel_455-[94m6584[0m
[93mlabel_562-[94m8457[0m
[93mlabel_40-[94m469[0m
[93mlabel_284-[94m3932[0m
[93mlabel_285-[94m3942[0m
[93mlabel_330-[94m4394[0m
[93mlabel_271-[94m3848[0m
[93mlabel_193-[94m2513[0m
[93mlabel_303-[94m4108[0m
[93mlabel_340-[94m4538[0m
[93mlabel_274-[94m3870[0m
[93mlabel_183-[94m2223[0m
[93mlabel_276-[94m3881[0m
[93mlabel_523-[94m8038[0m
[93mlabel_278-[94m3891[0m
[93mlabel_279-[94m3903[0m
[93mlabel_538-[94m8168[0m
[93mlabel_195-[94m2457[0m
[93mlabel_275-[94m3920[0m
[93mlabel_331-[94m4404[0m
[93mlabel_202-[94m2590[0m
[93mlabel_422-[94m5867[0m
[93mlabel_464-[94m6836[0m
[93mlabel_281-[94m3920[0m
[93mlabel_205-[94m2742[0m
[93mlabel_356-[94m4861[0m
[93mlabel_283-[94m3926[0m
[93mlabel_282-[94m3927[0m
[93mlabel_226-[94m3054[0m
[93mlabel_288-[94m3964[0m
[93mlabel_4-[94m15[0m
[93mlabel_287-[94m3971[0m
[93mlabel_290-[94m3975[0m
[93mlabel_433-[94m6108[0m
[93mlabel_311-[94m4114[0m
[93mlabel_291-[94m3992[0m
[93mlabel_293-[94m3997[0m
[93mlabel_94-[94m988[0m
[93mlabel_294-[94m4011[0m
[93mlabel_468-[94m6870[0m
[93mlabel_524-[94m8056[0m
[93mlabel_295-[94m4014[0m
[93mlabel_17-[94m117[0m
[93mlabel_339-[94m4530[0m
[93mlabel_297-[94m4020[0m
[93mlabel_296-[94m4021[0m
[93mlabel_55-[94m621[0m
[93mlabel_301-[94m4065[0m
[93mlabel_66-[94m732[0m
[93mlabel_298-[94m4026[0m
[93mlabel_300-[94m4048[0m
[93mlabel_306-[94m4079[0m
[93mlabel_355-[94m4830[0m
[93mlabel_33-[94m418[0m
[93mlabel_305-[94m4086[0m
[93mlabel_361-[94m4968[0m
[93mlabel_510-[94m7835[0m
[93mlabel_98-[94m980[0m
[93mlabel_307-[94m4091[0m
[93mlabel_309-[94m4108[0m
[93mlabel_348-[94m4710[0m
[93mlabel_310-[94m4115[0m
[93mlabel_458-[94m6764[0m
[93mlabel_347-[94m4691[0m
[93mlabel_519-[94m7979[0m
[93mlabel_312-[94m4120[0m
[93mlabel_410-[94m5749[0m
[93mlabel_67-[94m715[0m
[93mlabel_498-[94m7443[0m
[93mlabel_314-[94m4156[0m
[93mlabel_315-[94m4172[0m
[93mlabel_405-[94m5699[0m
[93mlabel_317-[94m4201[0m
[93mlabel_499-[94m7704[0m
[93mlabel_319-[94m4229[0m
[93mlabel_320-[94m4290[0m
[93mlabel_321-[94m4306[0m
[93mlabel_324-[94m4329[0m
[93mlabel_327-[94m4368[0m
[93mlabel_328-[94m4383[0m
[93mlabel_156-[94m1796[0m
[93mlabel_272-[94m3860[0m
[93mlabel_332-[94m4416[0m
[93mlabel_333-[94m4434[0m
[93mlabel_334-[94m4451[0m
[93mlabel_159-[94m1922[0m
[93mlabel_336-[94m4465[0m
[93mlabel_341-[94m4583[0m
[93mlabel_505-[94m7755[0m
[93mlabel_346-[94m4635[0m
[93mlabel_345-[94m4636[0m
[93mlabel_551-[94m8321[0m
[93mlabel_72-[94m783[0m
[93mlabel_350-[94m4740[0m
[93mlabel_351-[94m4752[0m
[93mlabel_466-[94m6872[0m
[93mlabel_105-[94m1076[0m
[93mlabel_352-[94m4796[0m
[93mlabel_354-[94m4818[0m
[93mlabel_547-[94m8268[0m
[93mlabel_357-[94m4854[0m
[93mlabel_129-[94m1407[0m
[93mlabel_432-[94m6085[0m
[93mlabel_359-[94m4880[0m
[93mlabel_548-[94m8273[0m
[93mlabel_360-[94m4880[0m
[93mlabel_365-[94m4965[0m
[93mlabel_133-[94m1448[0m
[93mlabel_322-[94m4332[0m
[93mlabel_370-[94m5085[0m
[93mlabel_367-[94m5035[0m
[93mlabel_372-[94m5093[0m
[93mlabel_374-[94m5165[0m
[93mlabel_494-[94m7417[0m
[93mlabel_39-[94m476[0m
[93mlabel_373-[94m5166[0m
[93mlabel_198-[94m2590[0m
[93mlabel_229-[94m3066[0m
[93mlabel_376-[94m5234[0m
[93mlabel_380-[94m5272[0m
[93mlabel_381-[94m5290[0m
[93mlabel_377-[94m5293[0m
[93mlabel_471-[94m6946[0m
[93mlabel_378-[94m5293[0m
[93mlabel_382-[94m5303[0m
[93mlabel_385-[94m5393[0m
[93mlabel_25-[94m191[0m
[93mlabel_387-[94m5460[0m
[93mlabel_113-[94m1144[0m
[93mlabel_389-[94m5492[0m
[93mlabel_391-[94m5510[0m
[93mlabel_428-[94m6111[0m
[93mlabel_393-[94m5551[0m
[93mlabel_397-[94m5619[0m
[93mlabel_415-[94m5800[0m
[93mlabel_375-[94m5165[0m
[93mlabel_400-[94m5638[0m
[93mlabel_401-[94m5652[0m
[93mlabel_502-[94m7719[0m
[93mlabel_404-[94m5684[0m
[93mlabel_408-[94m5732[0m
[93mlabel_414-[94m5801[0m
[93mlabel_515-[94m7915[0m
[93mlabel_421-[94m5906[0m
[93mlabel_419-[94m5907[0m
[93mlabel_416-[94m5996[0m
[93mlabel_216-[94m2899[0m
[93mlabel_427-[94m6006[0m
[93mlabel_431-[94m6064[0m
[93mlabel_429-[94m6111[0m
[93mlabel_434-[94m6121[0m
[93mlabel_437-[94m6211[0m
[93mlabel_409-[94m5732[0m
[93mlabel_438-[94m6252[0m
[93mlabel_371-[94m5100[0m
[93mlabel_440-[94m6260[0m
[93mlabel_518-[94m7963[0m
[93mlabel_396-[94m5604[0m
[93mlabel_441-[94m6325[0m
[93mlabel_442-[94m6368[0m
[93mlabel_446-[94m6398[0m
[93mlabel_445-[94m6405[0m
[93mlabel_448-[94m6409[0m
[93mlabel_84-[94m893[0m
[93mlabel_447-[94m6430[0m
[93mlabel_452-[94m6531[0m
[93mlabel_453-[94m6552[0m
[93mlabel_457-[94m6721[0m
[93mlabel_420-[94m5895[0m
[93mlabel_481-[94m7138[0m
[93mlabel_459-[94m6780[0m
[93mlabel_460-[94m6786[0m
[93mlabel_463-[94m6806[0m
[93mlabel_462-[94m6807[0m
[93mlabel_465-[94m6858[0m
[93mlabel_530-[94m8108[0m
[93mlabel_469-[94m6882[0m
[93mlabel_470-[94m6930[0m
[93mlabel_109-[94m1137[0m
[93mlabel_472-[94m6952[0m
[93mlabel_473-[94m6964[0m
[93mlabel_474-[94m6979[0m
[93mlabel_476-[94m6986[0m
[93mlabel_200-[94m2566[0m
[93mlabel_286-[94m3954[0m
[93mlabel_478-[94m7069[0m
[93mlabel_479-[94m7081[0m
[93mlabel_480-[94m7112[0m
[93mlabel_392-[94m5504[0m
[93mlabel_482-[94m7124[0m
[93mlabel_483-[94m7138[0m
[93mlabel_487-[94m7295[0m
[93mlabel_121-[94m1388[0m
[93mlabel_525-[94m8053[0m
[93mlabel_489-[94m7323[0m
[93mlabel_492-[94m7382[0m
[93mlabel_485-[94m7273[0m
[93mlabel_493-[94m7400[0m
[93mlabel_495-[94m7410[0m
[93mlabel_157-[94m1795[0m
[93mlabel_497-[94m7435[0m
[93mlabel_119-[94m1262[0m
[93mlabel_500-[94m7722[0m
[93mlabel_535-[94m8142[0m
[93mlabel_503-[94m7730[0m
[93mlabel_506-[94m7771[0m
[93mlabel_507-[94m7787[0m
[93mlabel_512-[94m7867[0m
[93mlabel_513-[94m7883[0m
[93mlabel_520-[94m7995[0m
[93mlabel_265-[94m3838[0m
[93mlabel_504-[94m8030[0m
[93mlabel_528-[94m8079[0m
[93mlabel_527-[94m8082[0m
[93mlabel_529-[94m8090[0m
[93mlabel_145-[94m1674[0m
[93mlabel_531-[94m8105[0m
[93mlabel_153-[94m1759[0m
[93mlabel_534-[94m8131[0m
[93mlabel_533-[94m8134[0m
[93mlabel_475-[94m6972[0m
[93mlabel_536-[94m8160[0m
0 [93m0[94m: addi R13 R13 -88 [0m
1 [93m4[94m: li R8 20 [0m
2 [93m8[94m: swi R8 R14 -8 [0m
3 [93m12[94m: addi R14 R14 -248 [0m
4 [93m16[94m: jmp 33472 [0m
5 [93m20[94m: jmp -4 [0m
6 [93m24[94m: addi R4 R4 1 [0m
7 [93m28[94m: jmp 11884 [0m
8 [93m32[94m: swi R12 R14 24 [0m
9 [93m36[94m: li R8 1 [0m
10 [93m40[94m: swi R8 R14 4 [0m
11 [93m44[94m: lwi R8 R14 4 [0m
12 [93m48[94m: cmp R8 R0 [0m
13 [93m52[94m: jeq 128 [0m
14 [93m56[94m: jmp 4 [0m
15 [93m60[94m: jmp -28 [0m
16 [93m64[94m: lwi R8 R13 0 [0m
17 [93m68[94m: li R9 1 [0m
18 [93m72[94m: mul R10 R8 R9 [0m
19 [93m76[94m: swi R10 R14 8 [0m
20 [93m80[94m: lwi R8 R13 24 [0m
21 [93m84[94m: lwi R9 R14 8 [0m
22 [93m88[94m: add R10 R8 R9 [0m
23 [93m92[94m: swi R10 R14 12 [0m
24 [93m96[94m: lwi R8 R14 12 [0m
25 [93m100[94m: lbi R8 R8 0 [0m
26 [93m104[94m: swi R8 R14 0 [0m
27 [93m108[94m: li R8 0 [0m
28 [93m112[94m: swi R8 R14 16 [0m
29 [93m116[94m: lwi R8 R14 0 [0m
30 [93m120[94m: lwi R9 R14 16 [0m
31 [93m124[94m: neq R10 R8 R9 [0m
32 [93m128[94m: swi R10 R14 20 [0m
33 [93m132[94m: lwi R8 R14 20 [0m
34 [93m136[94m: cmp R8 R0 [0m
35 [93m140[94m: jeq 36 [0m
36 [93m144[94m: lwi R8 R14 0 [0m
37 [93m148[94m: swi R8 R14 32 [0m
38 [93m152[94m: lwi R12 R14 24 [0m
39 [93m156[94m: li R8 176 [0m
40 [93m160[94m: lwi R9 R14 28 [0m
41 [93m164[94m: sub R10 R9 R8 [0m
42 [93m168[94m: addi R14 R14 36 [0m
43 [93m172[94m: jr R10 [0m
44 [93m176[94m: jmp 0 [0m
45 [93m180[94m: jmp -124 [0m
46 [93m184[94m: swi R12 R14 40 [0m
47 [93m188[94m: li R8 0 [0m
48 [93m192[94m: swi R8 R14 8 [0m
49 [93m196[94m: lwi R8 R14 8 [0m
50 [93m200[94m: swi R8 R14 0 [0m
51 [93m204[94m: li R8 1 [0m
52 [93m208[94m: swi R8 R14 12 [0m
53 [93m212[94m: lwi R8 R14 12 [0m
54 [93m216[94m: cmp R8 R0 [0m
55 [93m220[94m: jeq 124 [0m
56 [93m224[94m: jmp 4 [0m
57 [93m228[94m: jmp -28 [0m
58 [93m232[94m: lwi R8 R14 0 [0m
59 [93m236[94m: li R9 1 [0m
60 [93m240[94m: mul R10 R8 R9 [0m
61 [93m244[94m: swi R10 R14 16 [0m
62 [93m248[94m: lwi R8 R14 36 [0m
63 [93m252[94m: lwi R9 R14 16 [0m
64 [93m256[94m: add R10 R8 R9 [0m
65 [93m260[94m: swi R10 R14 20 [0m
66 [93m264[94m: lwi R8 R14 20 [0m
67 [93m268[94m: lbi R8 R8 0 [0m
68 [93m272[94m: swi R8 R14 4 [0m
69 [93m276[94m: li R8 0 [0m
70 [93m280[94m: swi R8 R14 24 [0m
71 [93m284[94m: lwi R8 R14 4 [0m
72 [93m288[94m: lwi R9 R14 24 [0m
73 [93m292[94m: eq R10 R8 R9 [0m
74 [93m296[94m: swi R10 R14 28 [0m
75 [93m300[94m: lwi R8 R14 28 [0m
76 [93m304[94m: cmp R8 R0 [0m
77 [93m308[94m: jeq 8 [0m
78 [93m312[94m: jmp 32 [0m
79 [93m316[94m: jmp 0 [0m
80 [93m320[94m: lwi R8 R14 0 [0m
81 [93m324[94m: swi R8 R14 32 [0m
82 [93m328[94m: lwi R8 R14 0 [0m
83 [93m332[94m: li R9 1 [0m
84 [93m336[94m: add R10 R8 R9 [0m
85 [93m340[94m: swi R10 R14 0 [0m
86 [93m344[94m: jmp -120 [0m
87 [93m348[94m: lwi R8 R14 0 [0m
88 [93m352[94m: swi R8 R14 48 [0m
89 [93m356[94m: lwi R12 R14 40 [0m
90 [93m360[94m: li R8 380 [0m
91 [93m364[94m: lwi R9 R14 44 [0m
92 [93m368[94m: sub R10 R9 R8 [0m
93 [93m372[94m: addi R14 R14 52 [0m
94 [93m376[94m: jr R10 [0m
95 [93m380[94m: swi R12 R14 44 [0m
96 [93m384[94m: li R8 9599 [0m
97 [93m388[94m: swi R8 R14 4 [0m
98 [93m392[94m: lwi R8 R14 4 [0m
99 [93m396[94m: swi R8 R14 0 [0m
100 [93m400[94m: li R8 0 [0m
101 [93m404[94m: swi R8 R14 8 [0m
102 [93m408[94m: lwi R8 R14 0 [0m
103 [93m412[94m: lwi R9 R14 8 [0m
104 [93m416[94m: ge R10 R8 R9 [0m
105 [93m420[94m: swi R10 R14 12 [0m
106 [93m424[94m: lwi R8 R14 12 [0m
107 [93m428[94m: cmp R8 R0 [0m
108 [93m432[94m: jeq 88 [0m
109 [93m436[94m: jmp 28 [0m
110 [93m440[94m: lwi R8 R14 0 [0m
111 [93m444[94m: swi R8 R14 16 [0m
112 [93m448[94m: lwi R8 R14 0 [0m
113 [93m452[94m: li R9 1 [0m
114 [93m456[94m: sub R10 R8 R9 [0m
115 [93m460[94m: swi R10 R14 0 [0m
116 [93m464[94m: jmp -68 [0m
117 [93m468[94m: lwi R8 R14 0 [0m
118 [93m472[94m: li R9 1 [0m
119 [93m476[94m: mul R10 R8 R9 [0m
120 [93m480[94m: swi R10 R14 20 [0m
121 [93m484[94m: lwi R8 R13 24 [0m
122 [93m488[94m: lwi R9 R14 20 [0m
123 [93m492[94m: add R10 R8 R9 [0m
124 [93m496[94m: swi R10 R14 24 [0m
125 [93m500[94m: li R8 0 [0m
126 [93m504[94m: swi R8 R14 28 [0m
127 [93m508[94m: lwi R8 R14 28 [0m
128 [93m512[94m: lwi R7 R14 24 [0m
129 [93m516[94m: sbi R8 R7 0 [0m
130 [93m520[94m: jmp -84 [0m
131 [93m524[94m: li R8 0 [0m
132 [93m528[94m: swi R8 R14 32 [0m
133 [93m532[94m: lwi R8 R14 32 [0m
134 [93m536[94m: swi R8 R13 16 [0m
135 [93m540[94m: li R8 0 [0m
136 [93m544[94m: swi R8 R14 36 [0m
137 [93m548[94m: lwi R8 R14 36 [0m
138 [93m552[94m: swi R8 R13 20 [0m
139 [93m556[94m: li R8 0 [0m
140 [93m560[94m: swi R8 R14 40 [0m
141 [93m564[94m: lwi R8 R14 40 [0m
142 [93m568[94m: swi R8 R14 52 [0m
143 [93m572[94m: lwi R12 R14 44 [0m
144 [93m576[94m: li R8 596 [0m
145 [93m580[94m: lwi R9 R14 48 [0m
146 [93m584[94m: sub R10 R9 R8 [0m
147 [93m588[94m: addi R14 R14 56 [0m
148 [93m592[94m: jr R10 [0m
149 [93m596[94m: swi R12 R14 152 [0m
150 [93m600[94m: li R8 80 [0m
151 [93m604[94m: swi R8 R14 24 [0m
152 [93m608[94m: lwi R8 R14 24 [0m
153 [93m612[94m: lwi R9 R14 140 [0m
154 [93m616[94m: mul R10 R8 R9 [0m
155 [93m620[94m: swi R10 R14 28 [0m
156 [93m624[94m: lwi R8 R14 28 [0m
157 [93m628[94m: swi R8 R14 0 [0m
158 [93m632[94m: li R8 0 [0m
159 [93m636[94m: swi R8 R14 32 [0m
160 [93m640[94m: lwi R8 R14 32 [0m
161 [93m644[94m: swi R8 R14 4 [0m
162 [93m648[94m: li R8 8 [0m
163 [93m652[94m: swi R8 R14 36 [0m
164 [93m656[94m: lwi R8 R14 4 [0m
165 [93m660[94m: lwi R9 R14 36 [0m
166 [93m664[94m: lt R10 R8 R9 [0m
167 [93m668[94m: swi R10 R14 40 [0m
168 [93m672[94m: lwi R8 R14 40 [0m
169 [93m676[94m: cmp R8 R0 [0m
170 [93m680[94m: jeq 452 [0m
171 [93m684[94m: jmp 28 [0m
172 [93m688[94m: lwi R8 R14 4 [0m
173 [93m692[94m: swi R8 R14 44 [0m
174 [93m696[94m: lwi R8 R14 4 [0m
175 [93m700[94m: li R9 1 [0m
176 [93m704[94m: add R10 R8 R9 [0m
177 [93m708[94m: swi R10 R14 4 [0m
178 [93m712[94m: jmp -68 [0m
179 [93m716[94m: li R8 80 [0m
180 [93m720[94m: swi R8 R14 48 [0m
181 [93m724[94m: lwi R8 R14 4 [0m
182 [93m728[94m: lwi R9 R14 48 [0m
183 [93m732[94m: mul R10 R8 R9 [0m
184 [93m736[94m: swi R10 R14 52 [0m
185 [93m740[94m: lwi R8 R14 52 [0m
186 [93m744[94m: swi R8 R14 12 [0m
187 [93m748[94m: li R8 0 [0m
188 [93m752[94m: swi R8 R14 56 [0m
189 [93m756[94m: lwi R8 R14 56 [0m
190 [93m760[94m: swi R8 R14 8 [0m
191 [93m764[94m: lwi R8 R14 8 [0m
192 [93m768[94m: lwi R9 R14 144 [0m
193 [93m772[94m: lt R10 R8 R9 [0m
194 [93m776[94m: swi R10 R14 60 [0m
195 [93m780[94m: lwi R8 R14 60 [0m
196 [93m784[94m: cmp R8 R0 [0m
197 [93m788[94m: jeq 340 [0m
198 [93m792[94m: jmp 28 [0m
199 [93m796[94m: lwi R8 R14 8 [0m
200 [93m800[94m: swi R8 R14 64 [0m
201 [93m804[94m: lwi R8 R14 8 [0m
202 [93m808[94m: li R9 1 [0m
203 [93m812[94m: add R10 R8 R9 [0m
204 [93m816[94m: swi R10 R14 8 [0m
205 [93m820[94m: jmp -60 [0m
206 [93m824[94m: lwi R8 R14 12 [0m
207 [93m828[94m: lwi R9 R14 8 [0m
208 [93m832[94m: add R10 R8 R9 [0m
209 [93m836[94m: swi R10 R14 68 [0m
210 [93m840[94m: lwi R8 R14 68 [0m
211 [93m844[94m: lwi R9 R14 136 [0m
212 [93m848[94m: add R10 R8 R9 [0m
213 [93m852[94m: swi R10 R14 72 [0m
214 [93m856[94m: lwi R8 R14 72 [0m
215 [93m860[94m: swi R8 R14 16 [0m
216 [93m864[94m: lwi R8 R14 136 [0m
217 [93m868[94m: lwi R9 R14 8 [0m
218 [93m872[94m: add R10 R8 R9 [0m
219 [93m876[94m: swi R10 R14 76 [0m
220 [93m880[94m: li R8 80 [0m
221 [93m884[94m: swi R8 R14 80 [0m
222 [93m888[94m: lwi R8 R14 76 [0m
223 [93m892[94m: lwi R9 R14 80 [0m
224 [93m896[94m: ge R10 R8 R9 [0m
225 [93m900[94m: swi R10 R14 84 [0m
226 [93m904[94m: lwi R8 R14 84 [0m
227 [93m908[94m: cmp R8 R0 [0m
228 [93m912[94m: jeq 8 [0m
229 [93m916[94m: jmp 212 [0m
230 [93m920[94m: jmp 0 [0m
231 [93m924[94m: lwi R8 R14 8 [0m
232 [93m928[94m: li R9 1 [0m
233 [93m932[94m: mul R10 R8 R9 [0m
234 [93m936[94m: swi R10 R14 88 [0m
235 [93m940[94m: lwi R8 R14 148 [0m
236 [93m944[94m: lwi R9 R14 88 [0m
237 [93m948[94m: add R10 R8 R9 [0m
238 [93m952[94m: swi R10 R14 92 [0m
239 [93m956[94m: lwi R8 R14 92 [0m
240 [93m960[94m: lbi R8 R8 0 [0m
241 [93m964[94m: swi R8 R14 20 [0m
242 [93m968[94m: li R8 8 [0m
243 [93m972[94m: swi R8 R14 96 [0m
244 [93m976[94m: lwi R8 R14 20 [0m
245 [93m980[94m: lwi R9 R14 96 [0m
246 [93m984[94m: mul R10 R8 R9 [0m
247 [93m988[94m: swi R10 R14 100 [0m
248 [93m992[94m: lwi R8 R14 100 [0m
249 [93m996[94m: swi R8 R14 20 [0m
250 [93m1000[94m: lwi R8 R14 0 [0m
251 [93m1004[94m: lwi R9 R14 16 [0m
252 [93m1008[94m: add R10 R8 R9 [0m
253 [93m1012[94m: swi R10 R14 104 [0m
254 [93m1016[94m: lwi R8 R14 104 [0m
255 [93m1020[94m: li R9 1 [0m
256 [93m1024[94m: mul R10 R8 R9 [0m
257 [93m1028[94m: swi R10 R14 108 [0m
258 [93m1032[94m: lwi R8 R13 24 [0m
259 [93m1036[94m: lwi R9 R14 108 [0m
260 [93m1040[94m: add R10 R8 R9 [0m
261 [93m1044[94m: swi R10 R14 112 [0m
262 [93m1048[94m: lwi R8 R13 4 [0m
263 [93m1052[94m: lwi R9 R14 20 [0m
264 [93m1056[94m: add R10 R8 R9 [0m
265 [93m1060[94m: swi R10 R14 116 [0m
266 [93m1064[94m: lwi R8 R14 116 [0m
267 [93m1068[94m: lwi R9 R14 4 [0m
268 [93m1072[94m: add R10 R8 R9 [0m
269 [93m1076[94m: swi R10 R14 120 [0m
270 [93m1080[94m: lwi R8 R14 120 [0m
271 [93m1084[94m: li R9 1 [0m
272 [93m1088[94m: mul R10 R8 R9 [0m
273 [93m1092[94m: swi R10 R14 124 [0m
274 [93m1096[94m: lwi R8 R13 24 [0m
275 [93m1100[94m: lwi R9 R14 124 [0m
276 [93m1104[94m: add R10 R8 R9 [0m
277 [93m1108[94m: swi R10 R14 128 [0m
278 [93m1112[94m: lwi R8 R14 128 [0m
279 [93m1116[94m: lbi R8 R8 0 [0m
280 [93m1120[94m: lwi R7 R14 112 [0m
281 [93m1124[94m: sbi R8 R7 0 [0m
282 [93m1128[94m: jmp -336 [0m
283 [93m1132[94m: jmp -448 [0m
284 [93m1136[94m: li R8 0 [0m
285 [93m1140[94m: swi R8 R14 132 [0m
286 [93m1144[94m: lwi R8 R14 132 [0m
287 [93m1148[94m: swi R8 R14 160 [0m
288 [93m1152[94m: lwi R12 R14 152 [0m
289 [93m1156[94m: li R8 1176 [0m
290 [93m1160[94m: lwi R9 R14 156 [0m
291 [93m1164[94m: sub R10 R9 R8 [0m
292 [93m1168[94m: addi R14 R14 164 [0m
293 [93m1172[94m: jr R10 [0m
294 [93m1176[94m: swi R12 R14 156 [0m
295 [93m1180[94m: subi R12 R12 44 [0m
296 [93m1184[94m: li R8 35 [0m
297 [93m1188[94m: sbi R8 R12 0 [0m
298 [93m1192[94m: li R8 35 [0m
299 [93m1196[94m: sbi R8 R12 1 [0m
300 [93m1200[94m: li R8 35 [0m
301 [93m1204[94m: sbi R8 R12 2 [0m
302 [93m1208[94m: li R8 35 [0m
303 [93m1212[94m: sbi R8 R12 3 [0m
304 [93m1216[94m: li R8 35 [0m
305 [93m1220[94m: sbi R8 R12 4 [0m
306 [93m1224[94m: li R8 35 [0m
307 [93m1228[94m: sbi R8 R12 5 [0m
308 [93m1232[94m: li R8 35 [0m
309 [93m1236[94m: sbi R8 R12 6 [0m
310 [93m1240[94m: li R8 35 [0m
311 [93m1244[94m: sbi R8 R12 7 [0m
312 [93m1248[94m: li R8 35 [0m
313 [93m1252[94m: sbi R8 R12 8 [0m
314 [93m1256[94m: li R8 35 [0m
315 [93m1260[94m: sbi R8 R12 9 [0m
316 [93m1264[94m: li R8 35 [0m
317 [93m1268[94m: sbi R8 R12 10 [0m
318 [93m1272[94m: li R8 35 [0m
319 [93m1276[94m: sbi R8 R12 11 [0m
320 [93m1280[94m: li R8 35 [0m
321 [93m1284[94m: sbi R8 R12 12 [0m
322 [93m1288[94m: li R8 35 [0m
323 [93m1292[94m: sbi R8 R12 13 [0m
324 [93m1296[94m: li R8 35 [0m
325 [93m1300[94m: sbi R8 R12 14 [0m
326 [93m1304[94m: li R8 35 [0m
327 [93m1308[94m: sbi R8 R12 15 [0m
328 [93m1312[94m: li R8 35 [0m
329 [93m1316[94m: sbi R8 R12 16 [0m
330 [93m1320[94m: li R8 35 [0m
331 [93m1324[94m: sbi R8 R12 17 [0m
332 [93m1328[94m: li R8 35 [0m
333 [93m1332[94m: sbi R8 R12 18 [0m
334 [93m1336[94m: li R8 35 [0m
335 [93m1340[94m: sbi R8 R12 19 [0m
336 [93m1344[94m: li R8 35 [0m
337 [93m1348[94m: sbi R8 R12 20 [0m
338 [93m1352[94m: li R8 35 [0m
339 [93m1356[94m: sbi R8 R12 21 [0m
340 [93m1360[94m: li R8 35 [0m
341 [93m1364[94m: sbi R8 R12 22 [0m
342 [93m1368[94m: li R8 35 [0m
343 [93m1372[94m: sbi R8 R12 23 [0m
344 [93m1376[94m: li R8 35 [0m
345 [93m1380[94m: sbi R8 R12 24 [0m
346 [93m1384[94m: li R8 35 [0m
347 [93m1388[94m: sbi R8 R12 25 [0m
348 [93m1392[94m: li R8 35 [0m
349 [93m1396[94m: sbi R8 R12 26 [0m
350 [93m1400[94m: li R8 35 [0m
351 [93m1404[94m: sbi R8 R12 27 [0m
352 [93m1408[94m: li R8 35 [0m
353 [93m1412[94m: sbi R8 R12 28 [0m
354 [93m1416[94m: li R8 35 [0m
355 [93m1420[94m: sbi R8 R12 29 [0m
356 [93m1424[94m: li R8 35 [0m
357 [93m1428[94m: sbi R8 R12 30 [0m
358 [93m1432[94m: li R8 35 [0m
359 [93m1436[94m: sbi R8 R12 31 [0m
360 [93m1440[94m: li R8 35 [0m
361 [93m1444[94m: sbi R8 R12 32 [0m
362 [93m1448[94m: li R8 35 [0m
363 [93m1452[94m: sbi R8 R12 33 [0m
364 [93m1456[94m: li R8 35 [0m
365 [93m1460[94m: sbi R8 R12 34 [0m
366 [93m1464[94m: li R8 35 [0m
367 [93m1468[94m: sbi R8 R12 35 [0m
368 [93m1472[94m: li R8 35 [0m
369 [93m1476[94m: sbi R8 R12 36 [0m
370 [93m1480[94m: li R8 35 [0m
371 [93m1484[94m: sbi R8 R12 37 [0m
372 [93m1488[94m: li R8 35 [0m
373 [93m1492[94m: sbi R8 R12 38 [0m
374 [93m1496[94m: li R8 35 [0m
375 [93m1500[94m: sbi R8 R12 39 [0m
376 [93m1504[94m: sbi R0 R12 40 [0m
377 [93m1508[94m: swi R12 R14 20 [0m
378 [93m1512[94m: lwi R8 R14 20 [0m
379 [93m1516[94m: swi R8 R14 0 [0m
380 [93m1520[94m: lwi R8 R14 0 [0m
381 [93m1524[94m: swi R8 R14 -16 [0m
382 [93m1528[94m: li R8 40 [0m
383 [93m1532[94m: swi R8 R14 24 [0m
384 [93m1536[94m: lwi R8 R14 24 [0m
385 [93m1540[94m: swi R8 R14 -20 [0m
386 [93m1544[94m: li R8 0 [0m
387 [93m1548[94m: swi R8 R14 28 [0m
388 [93m1552[94m: lwi R8 R14 28 [0m
389 [93m1556[94m: swi R8 R14 -24 [0m
390 [93m1560[94m: li R8 0 [0m
391 [93m1564[94m: swi R8 R14 32 [0m
392 [93m1568[94m: lwi R8 R14 32 [0m
393 [93m1572[94m: swi R8 R14 -28 [0m
394 [93m1576[94m: li R8 1592 [0m
395 [93m1580[94m: swi R8 R14 -8 [0m
396 [93m1584[94m: addi R14 R14 -164 [0m
397 [93m1588[94m: jmp -996 [0m
398 [93m1592[94m: lwi R8 R14 -4 [0m
399 [93m1596[94m: swi R8 R14 36 [0m
400 [93m1600[94m: lwi R8 R14 0 [0m
401 [93m1604[94m: swi R8 R14 -16 [0m
402 [93m1608[94m: li R8 40 [0m
403 [93m1612[94m: swi R8 R14 40 [0m
404 [93m1616[94m: lwi R8 R14 40 [0m
405 [93m1620[94m: swi R8 R14 -20 [0m
406 [93m1624[94m: li R8 29 [0m
407 [93m1628[94m: swi R8 R14 44 [0m
408 [93m1632[94m: lwi R8 R14 44 [0m
409 [93m1636[94m: swi R8 R14 -24 [0m
410 [93m1640[94m: li R8 0 [0m
411 [93m1644[94m: swi R8 R14 48 [0m
412 [93m1648[94m: lwi R8 R14 48 [0m
413 [93m1652[94m: swi R8 R14 -28 [0m
414 [93m1656[94m: li R8 1672 [0m
415 [93m1660[94m: swi R8 R14 -8 [0m
416 [93m1664[94m: addi R14 R14 -164 [0m
417 [93m1668[94m: jmp -1076 [0m
418 [93m1672[94m: lwi R8 R14 -4 [0m
419 [93m1676[94m: swi R8 R14 52 [0m
420 [93m1680[94m: li R8 1 [0m
421 [93m1684[94m: swi R8 R14 56 [0m
422 [93m1688[94m: lwi R8 R14 56 [0m
423 [93m1692[94m: swi R8 R14 4 [0m
424 [93m1696[94m: li R8 39 [0m
425 [93m1700[94m: swi R8 R14 60 [0m
426 [93m1704[94m: lwi R8 R14 4 [0m
427 [93m1708[94m: lwi R9 R14 60 [0m
428 [93m1712[94m: lt R10 R8 R9 [0m
429 [93m1716[94m: swi R10 R14 64 [0m
430 [93m1720[94m: lwi R8 R14 64 [0m
431 [93m1724[94m: cmp R8 R0 [0m
432 [93m1728[94m: jeq 88 [0m
433 [93m1732[94m: jmp 28 [0m
434 [93m1736[94m: lwi R8 R14 4 [0m
435 [93m1740[94m: swi R8 R14 68 [0m
436 [93m1744[94m: lwi R8 R14 4 [0m
437 [93m1748[94m: li R9 1 [0m
438 [93m1752[94m: add R10 R8 R9 [0m
439 [93m1756[94m: swi R10 R14 4 [0m
440 [93m1760[94m: jmp -68 [0m
441 [93m1764[94m: lwi R8 R14 4 [0m
442 [93m1768[94m: li R9 1 [0m
443 [93m1772[94m: mul R10 R8 R9 [0m
444 [93m1776[94m: swi R10 R14 72 [0m
445 [93m1780[94m: lwi R8 R14 0 [0m
446 [93m1784[94m: lwi R9 R14 72 [0m
447 [93m1788[94m: add R10 R8 R9 [0m
448 [93m1792[94m: swi R10 R14 76 [0m
449 [93m1796[94m: li R8 32 [0m
450 [93m1800[94m: swi R8 R14 80 [0m
451 [93m1804[94m: lwi R8 R14 80 [0m
452 [93m1808[94m: lwi R7 R14 76 [0m
453 [93m1812[94m: sbi R8 R7 0 [0m
454 [93m1816[94m: jmp -84 [0m
455 [93m1820[94m: li R8 1 [0m
456 [93m1824[94m: swi R8 R14 84 [0m
457 [93m1828[94m: lwi R8 R14 84 [0m
458 [93m1832[94m: swi R8 R14 4 [0m
459 [93m1836[94m: li R8 29 [0m
460 [93m1840[94m: swi R8 R14 88 [0m
461 [93m1844[94m: lwi R8 R14 4 [0m
462 [93m1848[94m: lwi R9 R14 88 [0m
463 [93m1852[94m: lt R10 R8 R9 [0m
464 [93m1856[94m: swi R10 R14 92 [0m
465 [93m1860[94m: lwi R8 R14 92 [0m
466 [93m1864[94m: cmp R8 R0 [0m
467 [93m1868[94m: jeq 108 [0m
468 [93m1872[94m: jmp 28 [0m
469 [93m1876[94m: lwi R8 R14 4 [0m
470 [93m1880[94m: swi R8 R14 96 [0m
471 [93m1884[94m: lwi R8 R14 4 [0m
472 [93m1888[94m: li R9 1 [0m
473 [93m1892[94m: add R10 R8 R9 [0m
474 [93m1896[94m: swi R10 R14 4 [0m
475 [93m1900[94m: jmp -68 [0m
476 [93m1904[94m: lwi R8 R14 0 [0m
477 [93m1908[94m: swi R8 R14 -16 [0m
478 [93m1912[94m: li R8 40 [0m
479 [93m1916[94m: swi R8 R14 100 [0m
480 [93m1920[94m: lwi R8 R14 100 [0m
481 [93m1924[94m: swi R8 R14 -20 [0m
482 [93m1928[94m: lwi R8 R14 4 [0m
483 [93m1932[94m: swi R8 R14 -24 [0m
484 [93m1936[94m: li R8 0 [0m
485 [93m1940[94m: swi R8 R14 104 [0m
486 [93m1944[94m: lwi R8 R14 104 [0m
487 [93m1948[94m: swi R8 R14 -28 [0m
488 [93m1952[94m: li R8 1968 [0m
489 [93m1956[94m: swi R8 R14 -8 [0m
490 [93m1960[94m: addi R14 R14 -164 [0m
491 [93m1964[94m: jmp -1372 [0m
492 [93m1968[94m: lwi R8 R14 -4 [0m
493 [93m1972[94m: swi R8 R14 108 [0m
494 [93m1976[94m: jmp -104 [0m
495 [93m1980[94m: subi R12 R12 16 [0m
496 [93m1984[94m: li R8 72 [0m
497 [93m1988[94m: sbi R8 R12 0 [0m
498 [93m1992[94m: li R8 101 [0m
499 [93m1996[94m: sbi R8 R12 1 [0m
500 [93m2000[94m: li R8 108 [0m
501 [93m2004[94m: sbi R8 R12 2 [0m
502 [93m2008[94m: li R8 108 [0m
503 [93m2012[94m: sbi R8 R12 3 [0m
504 [93m2016[94m: li R8 111 [0m
505 [93m2020[94m: sbi R8 R12 4 [0m
506 [93m2024[94m: li R8 32 [0m
507 [93m2028[94m: sbi R8 R12 5 [0m
508 [93m2032[94m: li R8 87 [0m
509 [93m2036[94m: sbi R8 R12 6 [0m
510 [93m2040[94m: li R8 111 [0m
511 [93m2044[94m: sbi R8 R12 7 [0m
512 [93m2048[94m: li R8 114 [0m
513 [93m2052[94m: sbi R8 R12 8 [0m
514 [93m2056[94m: li R8 108 [0m
515 [93m2060[94m: sbi R8 R12 9 [0m
516 [93m2064[94m: li R8 100 [0m
517 [93m2068[94m: sbi R8 R12 10 [0m
518 [93m2072[94m: li R8 33 [0m
519 [93m2076[94m: sbi R8 R12 11 [0m
520 [93m2080[94m: li R8 33 [0m
521 [93m2084[94m: sbi R8 R12 12 [0m
522 [93m2088[94m: li R8 33 [0m
523 [93m2092[94m: sbi R8 R12 13 [0m
524 [93m2096[94m: sbi R0 R12 14 [0m
525 [93m2100[94m: swi R12 R14 112 [0m
526 [93m2104[94m: lwi R8 R14 112 [0m
527 [93m2108[94m: swi R8 R14 8 [0m
528 [93m2112[94m: lwi R8 R14 8 [0m
529 [93m2116[94m: swi R8 R14 -16 [0m
530 [93m2120[94m: li R8 2136 [0m
531 [93m2124[94m: swi R8 R14 -8 [0m
532 [93m2128[94m: addi R14 R14 -52 [0m
533 [93m2132[94m: jmp -1952 [0m
534 [93m2136[94m: lwi R8 R14 -4 [0m
535 [93m2140[94m: swi R8 R14 116 [0m
536 [93m2144[94m: lwi R8 R14 116 [0m
537 [93m2148[94m: swi R8 R14 12 [0m
538 [93m2152[94m: lwi R8 R14 8 [0m
539 [93m2156[94m: swi R8 R14 -16 [0m
540 [93m2160[94m: lwi R8 R14 12 [0m
541 [93m2164[94m: swi R8 R14 -20 [0m
542 [93m2168[94m: li R8 15 [0m
543 [93m2172[94m: swi R8 R14 120 [0m
544 [93m2176[94m: lwi R8 R14 120 [0m
545 [93m2180[94m: swi R8 R14 -24 [0m
546 [93m2184[94m: li R8 13 [0m
547 [93m2188[94m: swi R8 R14 124 [0m
548 [93m2192[94m: lwi R8 R14 124 [0m
549 [93m2196[94m: swi R8 R14 -28 [0m
550 [93m2200[94m: li R8 2216 [0m
551 [93m2204[94m: swi R8 R14 -8 [0m
552 [93m2208[94m: addi R14 R14 -164 [0m
553 [93m2212[94m: jmp -1620 [0m
554 [93m2216[94m: lwi R8 R14 -4 [0m
555 [93m2220[94m: swi R8 R14 128 [0m
556 [93m2224[94m: li R8 1 [0m
557 [93m2228[94m: swi R8 R14 132 [0m
558 [93m2232[94m: lwi R8 R14 132 [0m
559 [93m2236[94m: cmp R8 R0 [0m
560 [93m2240[94m: jeq 88 [0m
561 [93m2244[94m: jmp 4 [0m
562 [93m2248[94m: jmp -28 [0m
563 [93m2252[94m: li R8 2268 [0m
564 [93m2256[94m: swi R8 R14 -8 [0m
565 [93m2260[94m: addi R14 R14 -36 [0m
566 [93m2264[94m: jmp -2236 [0m
567 [93m2268[94m: lwi R8 R14 -4 [0m
568 [93m2272[94m: swi R8 R14 136 [0m
569 [93m2276[94m: lwi R8 R14 136 [0m
570 [93m2280[94m: swi R8 R14 16 [0m
571 [93m2284[94m: li R8 13 [0m
572 [93m2288[94m: swi R8 R14 140 [0m
573 [93m2292[94m: lwi R8 R14 16 [0m
574 [93m2296[94m: lwi R9 R14 140 [0m
575 [93m2300[94m: eq R10 R8 R9 [0m
576 [93m2304[94m: swi R10 R14 144 [0m
577 [93m2308[94m: lwi R8 R14 144 [0m
578 [93m2312[94m: cmp R8 R0 [0m
579 [93m2316[94m: jeq 8 [0m
580 [93m2320[94m: jmp 8 [0m
581 [93m2324[94m: jmp 0 [0m
582 [93m2328[94m: jmp -84 [0m
583 [93m2332[94m: li R8 2348 [0m
584 [93m2336[94m: swi R8 R14 -8 [0m
585 [93m2340[94m: addi R14 R14 -56 [0m
586 [93m2344[94m: jmp -1968 [0m
587 [93m2348[94m: lwi R8 R14 -4 [0m
588 [93m2352[94m: swi R8 R14 148 [0m
589 [93m2356[94m: li R8 0 [0m
590 [93m2360[94m: swi R8 R14 152 [0m
591 [93m2364[94m: lwi R8 R14 152 [0m
592 [93m2368[94m: swi R8 R14 164 [0m
593 [93m2372[94m: lwi R12 R14 156 [0m
594 [93m2376[94m: li R8 2396 [0m
595 [93m2380[94m: lwi R9 R14 160 [0m
596 [93m2384[94m: sub R10 R9 R8 [0m
597 [93m2388[94m: addi R14 R14 168 [0m
598 [93m2392[94m: jr R10 [0m
599 [93m2396[94m: swi R12 R14 152 [0m
600 [93m2400[94m: li R8 0 [0m
601 [93m2404[94m: swi R8 R14 8 [0m
602 [93m2408[94m: lwi R8 R14 8 [0m
603 [93m2412[94m: swi R8 R14 0 [0m
604 [93m2416[94m: li R8 40 [0m
605 [93m2420[94m: swi R8 R14 12 [0m
606 [93m2424[94m: lwi R8 R14 0 [0m
607 [93m2428[94m: lwi R9 R14 12 [0m
608 [93m2432[94m: lt R10 R8 R9 [0m
609 [93m2436[94m: swi R10 R14 16 [0m
610 [93m2440[94m: lwi R8 R14 16 [0m
611 [93m2444[94m: cmp R8 R0 [0m
612 [93m2448[94m: jeq 88 [0m
613 [93m2452[94m: jmp 28 [0m
614 [93m2456[94m: lwi R8 R14 0 [0m
615 [93m2460[94m: swi R8 R14 20 [0m
616 [93m2464[94m: lwi R8 R14 0 [0m
617 [93m2468[94m: li R9 1 [0m
618 [93m2472[94m: add R10 R8 R9 [0m
619 [93m2476[94m: swi R10 R14 0 [0m
620 [93m2480[94m: jmp -68 [0m
621 [93m2484[94m: lwi R8 R14 0 [0m
622 [93m2488[94m: li R9 1 [0m
623 [93m2492[94m: mul R10 R8 R9 [0m
624 [93m2496[94m: swi R10 R14 24 [0m
625 [93m2500[94m: lwi R8 R13 8 [0m
626 [93m2504[94m: lwi R9 R14 24 [0m
627 [93m2508[94m: add R10 R8 R9 [0m
628 [93m2512[94m: swi R10 R14 28 [0m
629 [93m2516[94m: li R8 0 [0m
630 [93m2520[94m: swi R8 R14 32 [0m
631 [93m2524[94m: lwi R8 R14 32 [0m
632 [93m2528[94m: lwi R7 R14 28 [0m
633 [93m2532[94m: sbi R8 R7 0 [0m
634 [93m2536[94m: jmp -84 [0m
635 [93m2540[94m: li R8 0 [0m
636 [93m2544[94m: swi R8 R14 36 [0m
637 [93m2548[94m: lwi R8 R14 36 [0m
638 [93m2552[94m: swi R8 R14 0 [0m
639 [93m2556[94m: li R8 1 [0m
640 [93m2560[94m: swi R8 R14 40 [0m
641 [93m2564[94m: lwi R8 R14 40 [0m
642 [93m2568[94m: cmp R8 R0 [0m
643 [93m2572[94m: jeq 420 [0m
644 [93m2576[94m: jmp 4 [0m
645 [93m2580[94m: jmp -28 [0m
646 [93m2584[94m: li R8 40 [0m
647 [93m2588[94m: swi R8 R14 44 [0m
648 [93m2592[94m: lwi R8 R14 0 [0m
649 [93m2596[94m: lwi R9 R14 44 [0m
650 [93m2600[94m: eq R10 R8 R9 [0m
651 [93m2604[94m: swi R10 R14 48 [0m
652 [93m2608[94m: lwi R8 R14 48 [0m
653 [93m2612[94m: cmp R8 R0 [0m
654 [93m2616[94m: jeq 8 [0m
655 [93m2620[94m: jmp 372 [0m
656 [93m2624[94m: jmp 0 [0m
657 [93m2628[94m: li R8 2644 [0m
658 [93m2632[94m: swi R8 R14 -8 [0m
659 [93m2636[94m: addi R14 R14 -36 [0m
660 [93m2640[94m: jmp -2612 [0m
661 [93m2644[94m: lwi R8 R14 -4 [0m
662 [93m2648[94m: swi R8 R14 52 [0m
663 [93m2652[94m: lwi R8 R14 52 [0m
664 [93m2656[94m: swi R8 R14 4 [0m
665 [93m2660[94m: li R8 13 [0m
666 [93m2664[94m: swi R8 R14 56 [0m
667 [93m2668[94m: lwi R8 R14 4 [0m
668 [93m2672[94m: lwi R9 R14 56 [0m
669 [93m2676[94m: eq R10 R8 R9 [0m
670 [93m2680[94m: swi R10 R14 60 [0m
671 [93m2684[94m: lwi R8 R14 60 [0m
672 [93m2688[94m: cmp R8 R0 [0m
673 [93m2692[94m: jeq 8 [0m
674 [93m2696[94m: jmp 296 [0m
675 [93m2700[94m: jmp 224 [0m
676 [93m2704[94m: li R8 8 [0m
677 [93m2708[94m: swi R8 R14 64 [0m
678 [93m2712[94m: lwi R8 R14 4 [0m
679 [93m2716[94m: lwi R9 R14 64 [0m
680 [93m2720[94m: eq R10 R8 R9 [0m
681 [93m2724[94m: swi R10 R14 68 [0m
682 [93m2728[94m: lwi R8 R14 68 [0m
683 [93m2732[94m: cmp R8 R0 [0m
684 [93m2736[94m: jeq 120 [0m
685 [93m2740[94m: li R8 0 [0m
686 [93m2744[94m: swi R8 R14 72 [0m
687 [93m2748[94m: lwi R8 R14 0 [0m
688 [93m2752[94m: lwi R9 R14 72 [0m
689 [93m2756[94m: neq R10 R8 R9 [0m
690 [93m2760[94m: swi R10 R14 76 [0m
691 [93m2764[94m: lwi R8 R14 76 [0m
692 [93m2768[94m: cmp R8 R0 [0m
693 [93m2772[94m: jeq 80 [0m
694 [93m2776[94m: lwi R8 R14 0 [0m
695 [93m2780[94m: swi R8 R14 80 [0m
696 [93m2784[94m: lwi R8 R14 0 [0m
697 [93m2788[94m: li R9 1 [0m
698 [93m2792[94m: sub R10 R8 R9 [0m
699 [93m2796[94m: swi R10 R14 0 [0m
700 [93m2800[94m: lwi R8 R14 0 [0m
701 [93m2804[94m: li R9 1 [0m
702 [93m2808[94m: mul R10 R8 R9 [0m
703 [93m2812[94m: swi R10 R14 84 [0m
704 [93m2816[94m: lwi R8 R13 8 [0m
705 [93m2820[94m: lwi R9 R14 84 [0m
706 [93m2824[94m: add R10 R8 R9 [0m
707 [93m2828[94m: swi R10 R14 88 [0m
708 [93m2832[94m: li R8 0 [0m
709 [93m2836[94m: swi R8 R14 92 [0m
710 [93m2840[94m: lwi R8 R14 92 [0m
711 [93m2844[94m: lwi R7 R14 88 [0m
712 [93m2848[94m: sbi R8 R7 0 [0m
713 [93m2852[94m: jmp 0 [0m
714 [93m2856[94m: jmp 68 [0m
715 [93m2860[94m: lwi R8 R14 0 [0m
716 [93m2864[94m: li R9 1 [0m
717 [93m2868[94m: mul R10 R8 R9 [0m
718 [93m2872[94m: swi R10 R14 96 [0m
719 [93m2876[94m: lwi R8 R13 8 [0m
720 [93m2880[94m: lwi R9 R14 96 [0m
721 [93m2884[94m: add R10 R8 R9 [0m
722 [93m2888[94m: swi R10 R14 100 [0m
723 [93m2892[94m: lwi R8 R14 4 [0m
724 [93m2896[94m: lwi R7 R14 100 [0m
725 [93m2900[94m: sbi R8 R7 0 [0m
726 [93m2904[94m: lwi R8 R14 0 [0m
727 [93m2908[94m: swi R8 R14 104 [0m
728 [93m2912[94m: lwi R8 R14 0 [0m
729 [93m2916[94m: li R9 1 [0m
730 [93m2920[94m: add R10 R8 R9 [0m
731 [93m2924[94m: swi R10 R14 0 [0m
732 [93m2928[94m: lwi R8 R13 8 [0m
733 [93m2932[94m: swi R8 R14 -16 [0m
734 [93m2936[94m: li R8 35 [0m
735 [93m2940[94m: swi R8 R14 108 [0m
736 [93m2944[94m: lwi R8 R14 108 [0m
737 [93m2948[94m: swi R8 R14 -20 [0m
738 [93m2952[94m: lwi R8 R13 16 [0m
739 [93m2956[94m: swi R8 R14 -24 [0m
740 [93m2960[94m: lwi R8 R13 20 [0m
741 [93m2964[94m: swi R8 R14 -28 [0m
742 [93m2968[94m: li R8 2984 [0m
743 [93m2972[94m: swi R8 R14 -8 [0m
744 [93m2976[94m: addi R14 R14 -164 [0m
745 [93m2980[94m: jmp -2388 [0m
746 [93m2984[94m: lwi R8 R14 -4 [0m
747 [93m2988[94m: swi R8 R14 112 [0m
748 [93m2992[94m: jmp -416 [0m
749 [93m2996[94m: li R8 0 [0m
750 [93m3000[94m: swi R8 R14 116 [0m
751 [93m3004[94m: lwi R8 R14 116 [0m
752 [93m3008[94m: swi R8 R13 12 [0m
753 [93m3012[94m: li R8 1 [0m
754 [93m3016[94m: swi R8 R14 120 [0m
755 [93m3020[94m: lwi R8 R13 16 [0m
756 [93m3024[94m: lwi R9 R14 120 [0m
757 [93m3028[94m: add R10 R8 R9 [0m
758 [93m3032[94m: swi R10 R14 124 [0m
759 [93m3036[94m: li R8 30 [0m
760 [93m3040[94m: swi R8 R14 128 [0m
761 [93m3044[94m: lwi R8 R14 124 [0m
762 [93m3048[94m: lwi R9 R14 128 [0m
763 [93m3052[94m: mod R10 R8 R9 [0m
764 [93m3056[94m: swi R10 R14 132 [0m
765 [93m3060[94m: lwi R8 R14 132 [0m
766 [93m3064[94m: swi R8 R13 16 [0m
767 [93m3068[94m: li R8 0 [0m
768 [93m3072[94m: swi R8 R14 136 [0m
769 [93m3076[94m: lwi R8 R13 16 [0m
770 [93m3080[94m: lwi R9 R14 136 [0m
771 [93m3084[94m: eq R10 R8 R9 [0m
772 [93m3088[94m: swi R10 R14 140 [0m
773 [93m3092[94m: lwi R8 R14 140 [0m
774 [93m3096[94m: cmp R8 R0 [0m
775 [93m3100[94m: jeq 28 [0m
776 [93m3104[94m: li R8 3120 [0m
777 [93m3108[94m: swi R8 R14 -8 [0m
778 [93m3112[94m: addi R14 R14 -56 [0m
779 [93m3116[94m: jmp -2740 [0m
780 [93m3120[94m: lwi R8 R14 -4 [0m
781 [93m3124[94m: swi R8 R14 144 [0m
782 [93m3128[94m: jmp 0 [0m
783 [93m3132[94m: li R8 0 [0m
784 [93m3136[94m: swi R8 R14 148 [0m
785 [93m3140[94m: lwi R8 R14 148 [0m
786 [93m3144[94m: swi R8 R13 20 [0m
787 [93m3148[94m: lwi R8 R14 0 [0m
788 [93m3152[94m: swi R8 R14 160 [0m
789 [93m3156[94m: lwi R12 R14 152 [0m
790 [93m3160[94m: li R8 3180 [0m
791 [93m3164[94m: lwi R9 R14 156 [0m
792 [93m3168[94m: sub R10 R9 R8 [0m
793 [93m3172[94m: addi R14 R14 164 [0m
794 [93m3176[94m: jr R10 [0m
795 [93m3180[94m: swi R12 R14 84 [0m
796 [93m3184[94m: lwi R8 R14 80 [0m
797 [93m3188[94m: swi R8 R14 -16 [0m
798 [93m3192[94m: li R8 3208 [0m
799 [93m3196[94m: swi R8 R14 -8 [0m
800 [93m3200[94m: addi R14 R14 -52 [0m
801 [93m3204[94m: jmp -3024 [0m
802 [93m3208[94m: lwi R8 R14 -4 [0m
803 [93m3212[94m: swi R8 R14 20 [0m
804 [93m3216[94m: lwi R8 R14 20 [0m
805 [93m3220[94m: swi R8 R14 0 [0m
806 [93m3224[94m: lwi R8 R14 76 [0m
807 [93m3228[94m: swi R8 R14 -16 [0m
808 [93m3232[94m: li R8 3248 [0m
809 [93m3236[94m: swi R8 R14 -8 [0m
810 [93m3240[94m: addi R14 R14 -52 [0m
811 [93m3244[94m: jmp -3064 [0m
812 [93m3248[94m: lwi R8 R14 -4 [0m
813 [93m3252[94m: swi R8 R14 24 [0m
814 [93m3256[94m: lwi R8 R14 24 [0m
815 [93m3260[94m: swi R8 R14 4 [0m
816 [93m3264[94m: lwi R8 R14 0 [0m
817 [93m3268[94m: lwi R9 R14 4 [0m
818 [93m3272[94m: neq R10 R8 R9 [0m
819 [93m3276[94m: swi R10 R14 28 [0m
820 [93m3280[94m: lwi R8 R14 28 [0m
821 [93m3284[94m: cmp R8 R0 [0m
822 [93m3288[94m: jeq 44 [0m
823 [93m3292[94m: li R8 1 [0m
824 [93m3296[94m: swi R8 R14 32 [0m
825 [93m3300[94m: lwi R8 R14 32 [0m
826 [93m3304[94m: swi R8 R14 92 [0m
827 [93m3308[94m: lwi R12 R14 84 [0m
828 [93m3312[94m: li R8 3332 [0m
829 [93m3316[94m: lwi R9 R14 88 [0m
830 [93m3320[94m: sub R10 R9 R8 [0m
831 [93m3324[94m: addi R14 R14 96 [0m
832 [93m3328[94m: jr R10 [0m
833 [93m3332[94m: jmp 0 [0m
834 [93m3336[94m: li R8 0 [0m
835 [93m3340[94m: swi R8 R14 36 [0m
836 [93m3344[94m: lwi R8 R14 36 [0m
837 [93m3348[94m: swi R8 R14 8 [0m
838 [93m3352[94m: lwi R8 R14 8 [0m
839 [93m3356[94m: lwi R9 R14 0 [0m
840 [93m3360[94m: lt R10 R8 R9 [0m
841 [93m3364[94m: swi R10 R14 40 [0m
842 [93m3368[94m: lwi R8 R14 40 [0m
843 [93m3372[94m: cmp R8 R0 [0m
844 [93m3376[94m: jeq 196 [0m
845 [93m3380[94m: jmp 28 [0m
846 [93m3384[94m: lwi R8 R14 8 [0m
847 [93m3388[94m: swi R8 R14 44 [0m
848 [93m3392[94m: lwi R8 R14 8 [0m
849 [93m3396[94m: li R9 1 [0m
850 [93m3400[94m: add R10 R8 R9 [0m
851 [93m3404[94m: swi R10 R14 8 [0m
852 [93m3408[94m: jmp -60 [0m
853 [93m3412[94m: lwi R8 R14 8 [0m
854 [93m3416[94m: li R9 1 [0m
855 [93m3420[94m: mul R10 R8 R9 [0m
856 [93m3424[94m: swi R10 R14 48 [0m
857 [93m3428[94m: lwi R8 R14 80 [0m
858 [93m3432[94m: lwi R9 R14 48 [0m
859 [93m3436[94m: add R10 R8 R9 [0m
860 [93m3440[94m: swi R10 R14 52 [0m
861 [93m3444[94m: lwi R8 R14 52 [0m
862 [93m3448[94m: lbi R8 R8 0 [0m
863 [93m3452[94m: swi R8 R14 12 [0m
864 [93m3456[94m: lwi R8 R14 8 [0m
865 [93m3460[94m: li R9 1 [0m
866 [93m3464[94m: mul R10 R8 R9 [0m
867 [93m3468[94m: swi R10 R14 56 [0m
868 [93m3472[94m: lwi R8 R14 76 [0m
869 [93m3476[94m: lwi R9 R14 56 [0m
870 [93m3480[94m: add R10 R8 R9 [0m
871 [93m3484[94m: swi R10 R14 60 [0m
872 [93m3488[94m: lwi R8 R14 60 [0m
873 [93m3492[94m: lbi R8 R8 0 [0m
874 [93m3496[94m: swi R8 R14 16 [0m
875 [93m3500[94m: lwi R8 R14 12 [0m
876 [93m3504[94m: lwi R9 R14 16 [0m
877 [93m3508[94m: neq R10 R8 R9 [0m
878 [93m3512[94m: swi R10 R14 64 [0m
879 [93m3516[94m: lwi R8 R14 64 [0m
880 [93m3520[94m: cmp R8 R0 [0m
881 [93m3524[94m: jeq 44 [0m
882 [93m3528[94m: li R8 1 [0m
883 [93m3532[94m: swi R8 R14 68 [0m
884 [93m3536[94m: lwi R8 R14 68 [0m
885 [93m3540[94m: swi R8 R14 92 [0m
886 [93m3544[94m: lwi R12 R14 84 [0m
887 [93m3548[94m: li R8 3568 [0m
888 [93m3552[94m: lwi R9 R14 88 [0m
889 [93m3556[94m: sub R10 R9 R8 [0m
890 [93m3560[94m: addi R14 R14 96 [0m
891 [93m3564[94m: jr R10 [0m
892 [93m3568[94m: jmp 0 [0m
893 [93m3572[94m: jmp -192 [0m
894 [93m3576[94m: li R8 0 [0m
895 [93m3580[94m: swi R8 R14 72 [0m
896 [93m3584[94m: lwi R8 R14 72 [0m
897 [93m3588[94m: swi R8 R14 92 [0m
898 [93m3592[94m: lwi R12 R14 84 [0m
899 [93m3596[94m: li R8 3616 [0m
900 [93m3600[94m: lwi R9 R14 88 [0m
901 [93m3604[94m: sub R10 R9 R8 [0m
902 [93m3608[94m: addi R14 R14 96 [0m
903 [93m3612[94m: jr R10 [0m
904 [93m3616[94m: swi R12 R14 168 [0m
905 [93m3620[94m: li R8 1 [0m
906 [93m3624[94m: swi R8 R14 12 [0m
907 [93m3628[94m: lwi R8 R13 28 [0m
908 [93m3632[94m: lwi R9 R14 12 [0m
909 [93m3636[94m: eq R10 R8 R9 [0m
910 [93m3640[94m: swi R10 R14 16 [0m
911 [93m3644[94m: lwi R8 R14 16 [0m
912 [93m3648[94m: cmp R8 R0 [0m
913 [93m3652[94m: jeq 28 [0m
914 [93m3656[94m: jmp 4 [0m
915 [93m3660[94m: jmp -44 [0m
916 [93m3664[94m: li R8 0 [0m
917 [93m3668[94m: swi R8 R14 20 [0m
918 [93m3672[94m: lwi R8 R14 20 [0m
919 [93m3676[94m: swi R8 R14 0 [0m
920 [93m3680[94m: jmp -24 [0m
921 [93m3684[94m: li R8 1 [0m
922 [93m3688[94m: swi R8 R14 24 [0m
923 [93m3692[94m: lwi R8 R14 24 [0m
924 [93m3696[94m: swi R8 R13 28 [0m
925 [93m3700[94m: li R8 0 [0m
926 [93m3704[94m: swi R8 R14 28 [0m
927 [93m3708[94m: lwi R8 R14 28 [0m
928 [93m3712[94m: swi R8 R14 0 [0m
929 [93m3716[94m: lwi R8 R14 0 [0m
930 [93m3720[94m: lwi R9 R14 160 [0m
931 [93m3724[94m: lt R10 R8 R9 [0m
932 [93m3728[94m: swi R10 R14 32 [0m
933 [93m3732[94m: lwi R8 R14 32 [0m
934 [93m3736[94m: cmp R8 R0 [0m
935 [93m3740[94m: jeq 404 [0m
936 [93m3744[94m: jmp 28 [0m
937 [93m3748[94m: lwi R8 R14 0 [0m
938 [93m3752[94m: swi R8 R14 36 [0m
939 [93m3756[94m: lwi R8 R14 0 [0m
940 [93m3760[94m: li R9 1 [0m
941 [93m3764[94m: add R10 R8 R9 [0m
942 [93m3768[94m: swi R10 R14 0 [0m
943 [93m3772[94m: jmp -60 [0m
944 [93m3776[94m: li R8 40 [0m
945 [93m3780[94m: swi R8 R14 40 [0m
946 [93m3784[94m: lwi R8 R13 20 [0m
947 [93m3788[94m: lwi R9 R14 40 [0m
948 [93m3792[94m: eq R10 R8 R9 [0m
949 [93m3796[94m: swi R10 R14 44 [0m
950 [93m3800[94m: lwi R8 R14 44 [0m
951 [93m3804[94m: cmp R8 R0 [0m
952 [93m3808[94m: jeq 140 [0m
953 [93m3812[94m: li R8 1 [0m
954 [93m3816[94m: swi R8 R14 48 [0m
955 [93m3820[94m: lwi R8 R13 16 [0m
956 [93m3824[94m: lwi R9 R14 48 [0m
957 [93m3828[94m: add R10 R8 R9 [0m
958 [93m3832[94m: swi R10 R14 52 [0m
959 [93m3836[94m: li R8 30 [0m
960 [93m3840[94m: swi R8 R14 56 [0m
961 [93m3844[94m: lwi R8 R14 52 [0m
962 [93m3848[94m: lwi R9 R14 56 [0m
963 [93m3852[94m: mod R10 R8 R9 [0m
964 [93m3856[94m: swi R10 R14 60 [0m
965 [93m3860[94m: lwi R8 R14 60 [0m
966 [93m3864[94m: swi R8 R13 16 [0m
967 [93m3868[94m: li R8 0 [0m
968 [93m3872[94m: swi R8 R14 64 [0m
969 [93m3876[94m: lwi R8 R13 16 [0m
970 [93m3880[94m: lwi R9 R14 64 [0m
971 [93m3884[94m: eq R10 R8 R9 [0m
972 [93m3888[94m: swi R10 R14 68 [0m
973 [93m3892[94m: lwi R8 R14 68 [0m
974 [93m3896[94m: cmp R8 R0 [0m
975 [93m3900[94m: jeq 28 [0m
976 [93m3904[94m: li R8 3920 [0m
977 [93m3908[94m: swi R8 R14 -8 [0m
978 [93m3912[94m: addi R14 R14 -56 [0m
979 [93m3916[94m: jmp -3540 [0m
980 [93m3920[94m: lwi R8 R14 -4 [0m
981 [93m3924[94m: swi R8 R14 72 [0m
982 [93m3928[94m: jmp 0 [0m
983 [93m3932[94m: li R8 0 [0m
984 [93m3936[94m: swi R8 R14 76 [0m
985 [93m3940[94m: lwi R8 R14 76 [0m
986 [93m3944[94m: swi R8 R13 20 [0m
987 [93m3948[94m: jmp 0 [0m
988 [93m3952[94m: li R8 30 [0m
989 [93m3956[94m: swi R8 R14 80 [0m
990 [93m3960[94m: lwi R8 R13 16 [0m
991 [93m3964[94m: lwi R9 R14 80 [0m
992 [93m3968[94m: eq R10 R8 R9 [0m
993 [93m3972[94m: swi R10 R14 84 [0m
994 [93m3976[94m: lwi R8 R14 84 [0m
995 [93m3980[94m: cmp R8 R0 [0m
996 [93m3984[94m: jeq 28 [0m
997 [93m3988[94m: li R8 4004 [0m
998 [93m3992[94m: swi R8 R14 -8 [0m
999 [93m3996[94m: addi R14 R14 -56 [0m
1000 [93m4000[94m: jmp -3624 [0m
1001 [93m4004[94m: lwi R8 R14 -4 [0m
1002 [93m4008[94m: swi R8 R14 88 [0m
1003 [93m4012[94m: jmp 0 [0m
1004 [93m4016[94m: lwi R8 R14 164 [0m
1005 [93m4020[94m: swi R8 R14 8 [0m
1006 [93m4024[94m: lwi R8 R14 8 [0m
1007 [93m4028[94m: lwi R9 R14 0 [0m
1008 [93m4032[94m: add R10 R8 R9 [0m
1009 [93m4036[94m: swi R10 R14 92 [0m
1010 [93m4040[94m: lwi R8 R14 92 [0m
1011 [93m4044[94m: swi R8 R14 8 [0m
1012 [93m4048[94m: lwi R8 R14 8 [0m
1013 [93m4052[94m: swi R8 R14 4 [0m
1014 [93m4056[94m: lwi R8 R14 4 [0m
1015 [93m4060[94m: swi R8 R14 -16 [0m
1016 [93m4064[94m: li R8 1 [0m
1017 [93m4068[94m: swi R8 R14 96 [0m
1018 [93m4072[94m: lwi R8 R14 96 [0m
1019 [93m4076[94m: swi R8 R14 -20 [0m
1020 [93m4080[94m: lwi R8 R13 16 [0m
1021 [93m4084[94m: swi R8 R14 -24 [0m
1022 [93m4088[94m: lwi R8 R13 20 [0m
1023 [93m4092[94m: swi R8 R14 -28 [0m
1024 [93m4096[94m: li R8 4112 [0m
1025 [93m4100[94m: swi R8 R14 -8 [0m
1026 [93m4104[94m: addi R14 R14 -164 [0m
1027 [93m4108[94m: jmp -3516 [0m
1028 [93m4112[94m: lwi R8 R14 -4 [0m
1029 [93m4116[94m: swi R8 R14 100 [0m
1030 [93m4120[94m: lwi R8 R13 20 [0m
1031 [93m4124[94m: swi R8 R14 104 [0m
1032 [93m4128[94m: lwi R8 R13 20 [0m
1033 [93m4132[94m: li R9 1 [0m
1034 [93m4136[94m: add R10 R8 R9 [0m
1035 [93m4140[94m: swi R10 R13 20 [0m
1036 [93m4144[94m: jmp -400 [0m
1037 [93m4148[94m: li R8 1 [0m
1038 [93m4152[94m: swi R8 R14 108 [0m
1039 [93m4156[94m: lwi R8 R14 156 [0m
1040 [93m4160[94m: lwi R9 R14 108 [0m
1041 [93m4164[94m: eq R10 R8 R9 [0m
1042 [93m4168[94m: swi R10 R14 112 [0m
1043 [93m4172[94m: lwi R8 R14 112 [0m
1044 [93m4176[94m: cmp R8 R0 [0m
1045 [93m4180[94m: jeq 140 [0m
1046 [93m4184[94m: li R8 1 [0m
1047 [93m4188[94m: swi R8 R14 116 [0m
1048 [93m4192[94m: lwi R8 R13 16 [0m
1049 [93m4196[94m: lwi R9 R14 116 [0m
1050 [93m4200[94m: add R10 R8 R9 [0m
1051 [93m4204[94m: swi R10 R14 120 [0m
1052 [93m4208[94m: li R8 30 [0m
1053 [93m4212[94m: swi R8 R14 124 [0m
1054 [93m4216[94m: lwi R8 R14 120 [0m
1055 [93m4220[94m: lwi R9 R14 124 [0m
1056 [93m4224[94m: mod R10 R8 R9 [0m
1057 [93m4228[94m: swi R10 R14 128 [0m
1058 [93m4232[94m: lwi R8 R14 128 [0m
1059 [93m4236[94m: swi R8 R13 16 [0m
1060 [93m4240[94m: li R8 0 [0m
1061 [93m4244[94m: swi R8 R14 132 [0m
1062 [93m4248[94m: lwi R8 R13 16 [0m
1063 [93m4252[94m: lwi R9 R14 132 [0m
1064 [93m4256[94m: eq R10 R8 R9 [0m
1065 [93m4260[94m: swi R10 R14 136 [0m
1066 [93m4264[94m: lwi R8 R14 136 [0m
1067 [93m4268[94m: cmp R8 R0 [0m
1068 [93m4272[94m: jeq 28 [0m
1069 [93m4276[94m: li R8 4292 [0m
1070 [93m4280[94m: swi R8 R14 -8 [0m
1071 [93m4284[94m: addi R14 R14 -56 [0m
1072 [93m4288[94m: jmp -3912 [0m
1073 [93m4292[94m: lwi R8 R14 -4 [0m
1074 [93m4296[94m: swi R8 R14 140 [0m
1075 [93m4300[94m: jmp 0 [0m
1076 [93m4304[94m: li R8 0 [0m
1077 [93m4308[94m: swi R8 R14 144 [0m
1078 [93m4312[94m: lwi R8 R14 144 [0m
1079 [93m4316[94m: swi R8 R13 20 [0m
1080 [93m4320[94m: jmp 0 [0m
1081 [93m4324[94m: li R8 0 [0m
1082 [93m4328[94m: swi R8 R14 148 [0m
1083 [93m4332[94m: lwi R8 R14 148 [0m
1084 [93m4336[94m: swi R8 R13 28 [0m
1085 [93m4340[94m: li R8 0 [0m
1086 [93m4344[94m: swi R8 R14 152 [0m
1087 [93m4348[94m: lwi R8 R14 152 [0m
1088 [93m4352[94m: swi R8 R14 176 [0m
1089 [93m4356[94m: lwi R12 R14 168 [0m
1090 [93m4360[94m: li R8 4380 [0m
1091 [93m4364[94m: lwi R9 R14 172 [0m
1092 [93m4368[94m: sub R10 R9 R8 [0m
1093 [93m4372[94m: addi R14 R14 180 [0m
1094 [93m4376[94m: jr R10 [0m
1095 [93m4380[94m: swi R12 R14 124 [0m
1096 [93m4384[94m: li R8 0 [0m
1097 [93m4388[94m: swi R8 R14 8 [0m
1098 [93m4392[94m: lwi R8 R14 8 [0m
1099 [93m4396[94m: swi R8 R14 0 [0m
1100 [93m4400[94m: lwi R8 R13 12 [0m
1101 [93m4404[94m: li R9 1 [0m
1102 [93m4408[94m: mul R10 R8 R9 [0m
1103 [93m4412[94m: swi R10 R14 12 [0m
1104 [93m4416[94m: lwi R8 R13 8 [0m
1105 [93m4420[94m: lwi R9 R14 12 [0m
1106 [93m4424[94m: add R10 R8 R9 [0m
1107 [93m4428[94m: swi R10 R14 16 [0m
1108 [93m4432[94m: lwi R8 R14 16 [0m
1109 [93m4436[94m: lbi R8 R8 0 [0m
1110 [93m4440[94m: swi R8 R14 4 [0m
1111 [93m4444[94m: li R8 0 [0m
1112 [93m4448[94m: swi R8 R14 20 [0m
1113 [93m4452[94m: lwi R8 R14 4 [0m
1114 [93m4456[94m: lwi R9 R14 20 [0m
1115 [93m4460[94m: eq R10 R8 R9 [0m
1116 [93m4464[94m: swi R10 R14 24 [0m
1117 [93m4468[94m: li R8 40 [0m
1118 [93m4472[94m: swi R8 R14 28 [0m
1119 [93m4476[94m: lwi R8 R13 12 [0m
1120 [93m4480[94m: lwi R9 R14 28 [0m
1121 [93m4484[94m: ge R10 R8 R9 [0m
1122 [93m4488[94m: swi R10 R14 32 [0m
1123 [93m4492[94m: lwi R8 R14 24 [0m
1124 [93m4496[94m: lwi R9 R14 32 [0m
1125 [93m4500[94m: or R10 R8 R9 [0m
1126 [93m4504[94m: swi R10 R14 36 [0m
1127 [93m4508[94m: lwi R8 R14 36 [0m
1128 [93m4512[94m: cmp R8 R0 [0m
1129 [93m4516[94m: jeq 28 [0m
1130 [93m4520[94m: li R8 4536 [0m
1131 [93m4524[94m: swi R8 R14 -8 [0m
1132 [93m4528[94m: addi R14 R14 -164 [0m
1133 [93m4532[94m: jmp -2140 [0m
1134 [93m4536[94m: lwi R8 R14 -4 [0m
1135 [93m4540[94m: swi R8 R14 40 [0m
1136 [93m4544[94m: jmp 0 [0m
1137 [93m4548[94m: li R8 1 [0m
1138 [93m4552[94m: swi R8 R14 44 [0m
1139 [93m4556[94m: lwi R8 R14 44 [0m
1140 [93m4560[94m: cmp R8 R0 [0m
1141 [93m4564[94m: jeq 360 [0m
1142 [93m4568[94m: jmp 4 [0m
1143 [93m4572[94m: jmp -28 [0m
1144 [93m4576[94m: lwi R8 R13 12 [0m
1145 [93m4580[94m: li R9 1 [0m
1146 [93m4584[94m: mul R10 R8 R9 [0m
1147 [93m4588[94m: swi R10 R14 48 [0m
1148 [93m4592[94m: lwi R8 R13 8 [0m
1149 [93m4596[94m: lwi R9 R14 48 [0m
1150 [93m4600[94m: add R10 R8 R9 [0m
1151 [93m4604[94m: swi R10 R14 52 [0m
1152 [93m4608[94m: lwi R8 R14 52 [0m
1153 [93m4612[94m: lbi R8 R8 0 [0m
1154 [93m4616[94m: swi R8 R14 4 [0m
1155 [93m4620[94m: li R8 0 [0m
1156 [93m4624[94m: swi R8 R14 56 [0m
1157 [93m4628[94m: lwi R8 R14 4 [0m
1158 [93m4632[94m: lwi R9 R14 56 [0m
1159 [93m4636[94m: eq R10 R8 R9 [0m
1160 [93m4640[94m: swi R10 R14 60 [0m
1161 [93m4644[94m: li R8 32 [0m
1162 [93m4648[94m: swi R8 R14 64 [0m
1163 [93m4652[94m: lwi R8 R14 4 [0m
1164 [93m4656[94m: lwi R9 R14 64 [0m
1165 [93m4660[94m: eq R10 R8 R9 [0m
1166 [93m4664[94m: swi R10 R14 68 [0m
1167 [93m4668[94m: lwi R8 R14 60 [0m
1168 [93m4672[94m: lwi R9 R14 68 [0m
1169 [93m4676[94m: or R10 R8 R9 [0m
1170 [93m4680[94m: swi R10 R14 72 [0m
1171 [93m4684[94m: li R8 40 [0m
1172 [93m4688[94m: swi R8 R14 76 [0m
1173 [93m4692[94m: lwi R8 R13 12 [0m
1174 [93m4696[94m: lwi R9 R14 76 [0m
1175 [93m4700[94m: ge R10 R8 R9 [0m
1176 [93m4704[94m: swi R10 R14 80 [0m
1177 [93m4708[94m: lwi R8 R14 72 [0m
1178 [93m4712[94m: lwi R9 R14 80 [0m
1179 [93m4716[94m: or R10 R8 R9 [0m
1180 [93m4720[94m: swi R10 R14 84 [0m
1181 [93m4724[94m: lwi R8 R14 84 [0m
1182 [93m4728[94m: cmp R8 R0 [0m
1183 [93m4732[94m: jeq 60 [0m
1184 [93m4736[94m: lwi R8 R13 12 [0m
1185 [93m4740[94m: swi R8 R14 88 [0m
1186 [93m4744[94m: lwi R8 R13 12 [0m
1187 [93m4748[94m: li R9 1 [0m
1188 [93m4752[94m: add R10 R8 R9 [0m
1189 [93m4756[94m: swi R10 R13 12 [0m
1190 [93m4760[94m: lwi R8 R14 0 [0m
1191 [93m4764[94m: swi R8 R14 132 [0m
1192 [93m4768[94m: lwi R12 R14 124 [0m
1193 [93m4772[94m: li R8 4792 [0m
1194 [93m4776[94m: lwi R9 R14 128 [0m
1195 [93m4780[94m: sub R10 R9 R8 [0m
1196 [93m4784[94m: addi R14 R14 136 [0m
1197 [93m4788[94m: jr R10 [0m
1198 [93m4792[94m: jmp 128 [0m
1199 [93m4796[94m: lwi R8 R14 0 [0m
1200 [93m4800[94m: li R9 1 [0m
1201 [93m4804[94m: mul R10 R8 R9 [0m
1202 [93m4808[94m: swi R10 R14 92 [0m
1203 [93m4812[94m: lwi R8 R14 120 [0m
1204 [93m4816[94m: lwi R9 R14 92 [0m
1205 [93m4820[94m: add R10 R8 R9 [0m
1206 [93m4824[94m: swi R10 R14 96 [0m
1207 [93m4828[94m: lwi R8 R13 12 [0m
1208 [93m4832[94m: li R9 1 [0m
1209 [93m4836[94m: mul R10 R8 R9 [0m
1210 [93m4840[94m: swi R10 R14 100 [0m
1211 [93m4844[94m: lwi R8 R13 8 [0m
1212 [93m4848[94m: lwi R9 R14 100 [0m
1213 [93m4852[94m: add R10 R8 R9 [0m
1214 [93m4856[94m: swi R10 R14 104 [0m
1215 [93m4860[94m: lwi R8 R14 104 [0m
1216 [93m4864[94m: lbi R8 R8 0 [0m
1217 [93m4868[94m: lwi R7 R14 96 [0m
1218 [93m4872[94m: sbi R8 R7 0 [0m
1219 [93m4876[94m: lwi R8 R13 12 [0m
1220 [93m4880[94m: swi R8 R14 108 [0m
1221 [93m4884[94m: lwi R8 R13 12 [0m
1222 [93m4888[94m: li R9 1 [0m
1223 [93m4892[94m: add R10 R8 R9 [0m
1224 [93m4896[94m: swi R10 R13 12 [0m
1225 [93m4900[94m: lwi R8 R14 0 [0m
1226 [93m4904[94m: swi R8 R14 112 [0m
1227 [93m4908[94m: lwi R8 R14 0 [0m
1228 [93m4912[94m: li R9 1 [0m
1229 [93m4916[94m: add R10 R8 R9 [0m
1230 [93m4920[94m: swi R10 R14 0 [0m
1231 [93m4924[94m: jmp -356 [0m
1232 [93m4928[94m: li R8 0 [0m
1233 [93m4932[94m: swi R8 R14 116 [0m
1234 [93m4936[94m: lwi R8 R14 116 [0m
1235 [93m4940[94m: swi R8 R14 132 [0m
1236 [93m4944[94m: lwi R12 R14 124 [0m
1237 [93m4948[94m: li R8 4968 [0m
1238 [93m4952[94m: lwi R9 R14 128 [0m
1239 [93m4956[94m: sub R10 R9 R8 [0m
1240 [93m4960[94m: addi R14 R14 136 [0m
1241 [93m4964[94m: jr R10 [0m
1242 [93m4968[94m: swi R12 R14 192 [0m
1243 [93m4972[94m: li R8 10 [0m
1244 [93m4976[94m: swi R8 R14 24 [0m
1245 [93m4980[94m: lwi R8 R14 24 [0m
1246 [93m4984[94m: swi R8 R14 0 [0m
1247 [93m4988[94m: lwi R8 R14 24 [0m
1248 [93m4992[94m: li R9 1 [0m
1249 [93m4996[94m: mul R10 R8 R9 [0m
1250 [93m5000[94m: modi R8 R10 4 [0m
1251 [93m5004[94m: li R9 4 [0m
1252 [93m5008[94m: sub R8 R9 R8 [0m
1253 [93m5012[94m: add R10 R10 R8 [0m
1254 [93m5016[94m: sub R12 R12 R10 [0m
1255 [93m5020[94m: swi R12 R14 4 [0m
1256 [93m5024[94m: lwi R8 R14 4 [0m
1257 [93m5028[94m: swi R8 R14 -16 [0m
1258 [93m5032[94m: li R8 5048 [0m
1259 [93m5036[94m: swi R8 R14 -8 [0m
1260 [93m5040[94m: addi R14 R14 -136 [0m
1261 [93m5044[94m: jmp -668 [0m
1262 [93m5048[94m: lwi R8 R14 -4 [0m
1263 [93m5052[94m: swi R8 R14 28 [0m
1264 [93m5056[94m: lwi R8 R14 28 [0m
1265 [93m5060[94m: swi R8 R14 8 [0m
1266 [93m5064[94m: li R8 0 [0m
1267 [93m5068[94m: swi R8 R14 32 [0m
1268 [93m5072[94m: lwi R8 R14 32 [0m
1269 [93m5076[94m: swi R8 R14 12 [0m
1270 [93m5080[94m: li R8 0 [0m
1271 [93m5084[94m: swi R8 R14 36 [0m
1272 [93m5088[94m: lwi R8 R14 36 [0m
1273 [93m5092[94m: li R9 1 [0m
1274 [93m5096[94m: mul R10 R8 R9 [0m
1275 [93m5100[94m: swi R10 R14 40 [0m
1276 [93m5104[94m: lwi R8 R14 4 [0m
1277 [93m5108[94m: lwi R9 R14 40 [0m
1278 [93m5112[94m: add R10 R8 R9 [0m
1279 [93m5116[94m: swi R10 R14 44 [0m
1280 [93m5120[94m: lwi R8 R14 44 [0m
1281 [93m5124[94m: lbi R8 R8 0 [0m
1282 [93m5128[94m: swi R8 R14 20 [0m
1283 [93m5132[94m: li R8 45 [0m
1284 [93m5136[94m: swi R8 R14 48 [0m
1285 [93m5140[94m: lwi R8 R14 20 [0m
1286 [93m5144[94m: lwi R9 R14 48 [0m
1287 [93m5148[94m: eq R10 R8 R9 [0m
1288 [93m5152[94m: swi R10 R14 52 [0m
1289 [93m5156[94m: lwi R8 R14 52 [0m
1290 [93m5160[94m: cmp R8 R0 [0m
1291 [93m5164[94m: jeq 384 [0m
1292 [93m5168[94m: li R8 1 [0m
1293 [93m5172[94m: swi R8 R14 56 [0m
1294 [93m5176[94m: lwi R8 R14 56 [0m
1295 [93m5180[94m: swi R8 R14 16 [0m
1296 [93m5184[94m: lwi R8 R14 16 [0m
1297 [93m5188[94m: lwi R9 R14 8 [0m
1298 [93m5192[94m: lt R10 R8 R9 [0m
1299 [93m5196[94m: swi R10 R14 60 [0m
1300 [93m5200[94m: lwi R8 R14 60 [0m
1301 [93m5204[94m: cmp R8 R0 [0m
1302 [93m5208[94m: jeq 280 [0m
1303 [93m5212[94m: jmp 28 [0m
1304 [93m5216[94m: lwi R8 R14 16 [0m
1305 [93m5220[94m: swi R8 R14 64 [0m
1306 [93m5224[94m: lwi R8 R14 16 [0m
1307 [93m5228[94m: li R9 1 [0m
1308 [93m5232[94m: add R10 R8 R9 [0m
1309 [93m5236[94m: swi R10 R14 16 [0m
1310 [93m5240[94m: jmp -60 [0m
1311 [93m5244[94m: lwi R8 R14 16 [0m
1312 [93m5248[94m: li R9 1 [0m
1313 [93m5252[94m: mul R10 R8 R9 [0m
1314 [93m5256[94m: swi R10 R14 68 [0m
1315 [93m5260[94m: lwi R8 R14 4 [0m
1316 [93m5264[94m: lwi R9 R14 68 [0m
1317 [93m5268[94m: add R10 R8 R9 [0m
1318 [93m5272[94m: swi R10 R14 72 [0m
1319 [93m5276[94m: lwi R8 R14 72 [0m
1320 [93m5280[94m: lbi R8 R8 0 [0m
1321 [93m5284[94m: swi R8 R14 20 [0m
1322 [93m5288[94m: li R8 48 [0m
1323 [93m5292[94m: swi R8 R14 76 [0m
1324 [93m5296[94m: lwi R8 R14 20 [0m
1325 [93m5300[94m: lwi R9 R14 76 [0m
1326 [93m5304[94m: lt R10 R8 R9 [0m
1327 [93m5308[94m: swi R10 R14 80 [0m
1328 [93m5312[94m: li R8 57 [0m
1329 [93m5316[94m: swi R8 R14 84 [0m
1330 [93m5320[94m: lwi R8 R14 20 [0m
1331 [93m5324[94m: lwi R9 R14 84 [0m
1332 [93m5328[94m: gt R10 R8 R9 [0m
1333 [93m5332[94m: swi R10 R14 88 [0m
1334 [93m5336[94m: lwi R8 R14 80 [0m
1335 [93m5340[94m: lwi R9 R14 88 [0m
1336 [93m5344[94m: or R10 R8 R9 [0m
1337 [93m5348[94m: swi R10 R14 92 [0m
1338 [93m5352[94m: lwi R8 R14 92 [0m
1339 [93m5356[94m: cmp R8 R0 [0m
1340 [93m5360[94m: jeq 44 [0m
1341 [93m5364[94m: li R8 0 [0m
1342 [93m5368[94m: swi R8 R14 96 [0m
1343 [93m5372[94m: lwi R8 R14 96 [0m
1344 [93m5376[94m: swi R8 R14 200 [0m
1345 [93m5380[94m: lwi R12 R14 192 [0m
1346 [93m5384[94m: li R8 5404 [0m
1347 [93m5388[94m: lwi R9 R14 196 [0m
1348 [93m5392[94m: sub R10 R9 R8 [0m
1349 [93m5396[94m: addi R14 R14 204 [0m
1350 [93m5400[94m: jr R10 [0m
1351 [93m5404[94m: jmp 0 [0m
1352 [93m5408[94m: li R8 10 [0m
1353 [93m5412[94m: swi R8 R14 100 [0m
1354 [93m5416[94m: lwi R8 R14 12 [0m
1355 [93m5420[94m: lwi R9 R14 100 [0m
1356 [93m5424[94m: mul R10 R8 R9 [0m
1357 [93m5428[94m: swi R10 R14 104 [0m
1358 [93m5432[94m: lwi R8 R14 104 [0m
1359 [93m5436[94m: swi R8 R14 12 [0m
1360 [93m5440[94m: lwi R8 R14 12 [0m
1361 [93m5444[94m: lwi R9 R14 20 [0m
1362 [93m5448[94m: add R10 R8 R9 [0m
1363 [93m5452[94m: swi R10 R14 108 [0m
1364 [93m5456[94m: li R8 48 [0m
1365 [93m5460[94m: swi R8 R14 112 [0m
1366 [93m5464[94m: lwi R8 R14 108 [0m
1367 [93m5468[94m: lwi R9 R14 112 [0m
1368 [93m5472[94m: sub R10 R8 R9 [0m
1369 [93m5476[94m: swi R10 R14 116 [0m
1370 [93m5480[94m: lwi R8 R14 116 [0m
1371 [93m5484[94m: swi R8 R14 12 [0m
1372 [93m5488[94m: jmp -276 [0m
1373 [93m5492[94m: li R8 0 [0m
1374 [93m5496[94m: swi R8 R14 120 [0m
1375 [93m5500[94m: lwi R8 R14 120 [0m
1376 [93m5504[94m: lwi R9 R14 12 [0m
1377 [93m5508[94m: sub R10 R8 R9 [0m
1378 [93m5512[94m: swi R10 R14 124 [0m
1379 [93m5516[94m: lwi R8 R14 124 [0m
1380 [93m5520[94m: swi R8 R14 200 [0m
1381 [93m5524[94m: lwi R12 R14 192 [0m
1382 [93m5528[94m: li R8 5548 [0m
1383 [93m5532[94m: lwi R9 R14 196 [0m
1384 [93m5536[94m: sub R10 R9 R8 [0m
1385 [93m5540[94m: addi R14 R14 204 [0m
1386 [93m5544[94m: jr R10 [0m
1387 [93m5548[94m: jmp 0 [0m
1388 [93m5552[94m: li R8 0 [0m
1389 [93m5556[94m: swi R8 R14 128 [0m
1390 [93m5560[94m: lwi R8 R14 128 [0m
1391 [93m5564[94m: swi R8 R14 16 [0m
1392 [93m5568[94m: lwi R8 R14 16 [0m
1393 [93m5572[94m: lwi R9 R14 8 [0m
1394 [93m5576[94m: lt R10 R8 R9 [0m
1395 [93m5580[94m: swi R10 R14 132 [0m
1396 [93m5584[94m: lwi R8 R14 132 [0m
1397 [93m5588[94m: cmp R8 R0 [0m
1398 [93m5592[94m: jeq 280 [0m
1399 [93m5596[94m: jmp 28 [0m
1400 [93m5600[94m: lwi R8 R14 16 [0m
1401 [93m5604[94m: swi R8 R14 136 [0m
1402 [93m5608[94m: lwi R8 R14 16 [0m
1403 [93m5612[94m: li R9 1 [0m
1404 [93m5616[94m: add R10 R8 R9 [0m
1405 [93m5620[94m: swi R10 R14 16 [0m
1406 [93m5624[94m: jmp -60 [0m
1407 [93m5628[94m: lwi R8 R14 16 [0m
1408 [93m5632[94m: li R9 1 [0m
1409 [93m5636[94m: mul R10 R8 R9 [0m
1410 [93m5640[94m: swi R10 R14 140 [0m
1411 [93m5644[94m: lwi R8 R14 4 [0m
1412 [93m5648[94m: lwi R9 R14 140 [0m
1413 [93m5652[94m: add R10 R8 R9 [0m
1414 [93m5656[94m: swi R10 R14 144 [0m
1415 [93m5660[94m: lwi R8 R14 144 [0m
1416 [93m5664[94m: lbi R8 R8 0 [0m
1417 [93m5668[94m: swi R8 R14 20 [0m
1418 [93m5672[94m: li R8 48 [0m
1419 [93m5676[94m: swi R8 R14 148 [0m
1420 [93m5680[94m: lwi R8 R14 20 [0m
1421 [93m5684[94m: lwi R9 R14 148 [0m
1422 [93m5688[94m: lt R10 R8 R9 [0m
1423 [93m5692[94m: swi R10 R14 152 [0m
1424 [93m5696[94m: li R8 57 [0m
1425 [93m5700[94m: swi R8 R14 156 [0m
1426 [93m5704[94m: lwi R8 R14 20 [0m
1427 [93m5708[94m: lwi R9 R14 156 [0m
1428 [93m5712[94m: gt R10 R8 R9 [0m
1429 [93m5716[94m: swi R10 R14 160 [0m
1430 [93m5720[94m: lwi R8 R14 152 [0m
1431 [93m5724[94m: lwi R9 R14 160 [0m
1432 [93m5728[94m: or R10 R8 R9 [0m
1433 [93m5732[94m: swi R10 R14 164 [0m
1434 [93m5736[94m: lwi R8 R14 164 [0m
1435 [93m5740[94m: cmp R8 R0 [0m
1436 [93m5744[94m: jeq 44 [0m
1437 [93m5748[94m: li R8 0 [0m
1438 [93m5752[94m: swi R8 R14 168 [0m
1439 [93m5756[94m: lwi R8 R14 168 [0m
1440 [93m5760[94m: swi R8 R14 200 [0m
1441 [93m5764[94m: lwi R12 R14 192 [0m
1442 [93m5768[94m: li R8 5788 [0m
1443 [93m5772[94m: lwi R9 R14 196 [0m
1444 [93m5776[94m: sub R10 R9 R8 [0m
1445 [93m5780[94m: addi R14 R14 204 [0m
1446 [93m5784[94m: jr R10 [0m
1447 [93m5788[94m: jmp 0 [0m
1448 [93m5792[94m: li R8 10 [0m
1449 [93m5796[94m: swi R8 R14 172 [0m
1450 [93m5800[94m: lwi R8 R14 12 [0m
1451 [93m5804[94m: lwi R9 R14 172 [0m
1452 [93m5808[94m: mul R10 R8 R9 [0m
1453 [93m5812[94m: swi R10 R14 176 [0m
1454 [93m5816[94m: lwi R8 R14 176 [0m
1455 [93m5820[94m: swi R8 R14 12 [0m
1456 [93m5824[94m: lwi R8 R14 12 [0m
1457 [93m5828[94m: lwi R9 R14 20 [0m
1458 [93m5832[94m: add R10 R8 R9 [0m
1459 [93m5836[94m: swi R10 R14 180 [0m
1460 [93m5840[94m: li R8 48 [0m
1461 [93m5844[94m: swi R8 R14 184 [0m
1462 [93m5848[94m: lwi R8 R14 180 [0m
1463 [93m5852[94m: lwi R9 R14 184 [0m
1464 [93m5856[94m: sub R10 R8 R9 [0m
1465 [93m5860[94m: swi R10 R14 188 [0m
1466 [93m5864[94m: lwi R8 R14 188 [0m
1467 [93m5868[94m: swi R8 R14 12 [0m
1468 [93m5872[94m: jmp -276 [0m
1469 [93m5876[94m: lwi R8 R14 12 [0m
1470 [93m5880[94m: swi R8 R14 200 [0m
1471 [93m5884[94m: lwi R12 R14 192 [0m
1472 [93m5888[94m: li R8 5908 [0m
1473 [93m5892[94m: lwi R9 R14 196 [0m
1474 [93m5896[94m: sub R10 R9 R8 [0m
1475 [93m5900[94m: addi R14 R14 204 [0m
1476 [93m5904[94m: jr R10 [0m
1477 [93m5908[94m: swi R12 R14 88 [0m
1478 [93m5912[94m: li R8 0 [0m
1479 [93m5916[94m: swi R8 R14 12 [0m
1480 [93m5920[94m: lwi R8 R14 12 [0m
1481 [93m5924[94m: swi R8 R14 0 [0m
1482 [93m5928[94m: li R8 1 [0m
1483 [93m5932[94m: swi R8 R14 16 [0m
1484 [93m5936[94m: lwi R8 R14 80 [0m
1485 [93m5940[94m: lwi R9 R14 16 [0m
1486 [93m5944[94m: sub R10 R8 R9 [0m
1487 [93m5948[94m: swi R10 R14 20 [0m
1488 [93m5952[94m: lwi R8 R14 20 [0m
1489 [93m5956[94m: swi R8 R14 4 [0m
1490 [93m5960[94m: li R8 0 [0m
1491 [93m5964[94m: swi R8 R14 24 [0m
1492 [93m5968[94m: lwi R8 R14 24 [0m
1493 [93m5972[94m: swi R8 R14 0 [0m
1494 [93m5976[94m: lwi R8 R14 0 [0m
1495 [93m5980[94m: lwi R9 R14 4 [0m
1496 [93m5984[94m: lt R10 R8 R9 [0m
1497 [93m5988[94m: swi R10 R14 28 [0m
1498 [93m5992[94m: lwi R8 R14 28 [0m
1499 [93m5996[94m: cmp R8 R0 [0m
1500 [93m6000[94m: jeq 252 [0m
1501 [93m6004[94m: jmp 28 [0m
1502 [93m6008[94m: lwi R8 R14 0 [0m
1503 [93m6012[94m: swi R8 R14 32 [0m
1504 [93m6016[94m: lwi R8 R14 0 [0m
1505 [93m6020[94m: li R9 1 [0m
1506 [93m6024[94m: add R10 R8 R9 [0m
1507 [93m6028[94m: swi R10 R14 0 [0m
1508 [93m6032[94m: jmp -60 [0m
1509 [93m6036[94m: lwi R8 R14 0 [0m
1510 [93m6040[94m: li R9 1 [0m
1511 [93m6044[94m: mul R10 R8 R9 [0m
1512 [93m6048[94m: swi R10 R14 36 [0m
1513 [93m6052[94m: lwi R8 R14 84 [0m
1514 [93m6056[94m: lwi R9 R14 36 [0m
1515 [93m6060[94m: add R10 R8 R9 [0m
1516 [93m6064[94m: swi R10 R14 40 [0m
1517 [93m6068[94m: lwi R8 R14 40 [0m
1518 [93m6072[94m: lbi R8 R8 0 [0m
1519 [93m6076[94m: swi R8 R14 8 [0m
1520 [93m6080[94m: lwi R8 R14 0 [0m
1521 [93m6084[94m: li R9 1 [0m
1522 [93m6088[94m: mul R10 R8 R9 [0m
1523 [93m6092[94m: swi R10 R14 44 [0m
1524 [93m6096[94m: lwi R8 R14 84 [0m
1525 [93m6100[94m: lwi R9 R14 44 [0m
1526 [93m6104[94m: add R10 R8 R9 [0m
1527 [93m6108[94m: swi R10 R14 48 [0m
1528 [93m6112[94m: lwi R8 R14 4 [0m
1529 [93m6116[94m: li R9 1 [0m
1530 [93m6120[94m: mul R10 R8 R9 [0m
1531 [93m6124[94m: swi R10 R14 52 [0m
1532 [93m6128[94m: lwi R8 R14 84 [0m
1533 [93m6132[94m: lwi R9 R14 52 [0m
1534 [93m6136[94m: add R10 R8 R9 [0m
1535 [93m6140[94m: swi R10 R14 56 [0m
1536 [93m6144[94m: lwi R8 R14 56 [0m
1537 [93m6148[94m: lbi R8 R8 0 [0m
1538 [93m6152[94m: lwi R7 R14 48 [0m
1539 [93m6156[94m: sbi R8 R7 0 [0m
1540 [93m6160[94m: lwi R8 R14 4 [0m
1541 [93m6164[94m: li R9 1 [0m
1542 [93m6168[94m: mul R10 R8 R9 [0m
1543 [93m6172[94m: swi R10 R14 60 [0m
1544 [93m6176[94m: lwi R8 R14 84 [0m
1545 [93m6180[94m: lwi R9 R14 60 [0m
1546 [93m6184[94m: add R10 R8 R9 [0m
1547 [93m6188[94m: swi R10 R14 64 [0m
1548 [93m6192[94m: lwi R8 R14 8 [0m
1549 [93m6196[94m: lwi R7 R14 64 [0m
1550 [93m6200[94m: sbi R8 R7 0 [0m
1551 [93m6204[94m: lwi R8 R14 0 [0m
1552 [93m6208[94m: swi R8 R14 68 [0m
1553 [93m6212[94m: lwi R8 R14 0 [0m
1554 [93m6216[94m: li R9 1 [0m
1555 [93m6220[94m: add R10 R8 R9 [0m
1556 [93m6224[94m: swi R10 R14 0 [0m
1557 [93m6228[94m: lwi R8 R14 4 [0m
1558 [93m6232[94m: swi R8 R14 72 [0m
1559 [93m6236[94m: lwi R8 R14 4 [0m
1560 [93m6240[94m: li R9 1 [0m
1561 [93m6244[94m: sub R10 R8 R9 [0m
1562 [93m6248[94m: swi R10 R14 4 [0m
1563 [93m6252[94m: jmp -248 [0m
1564 [93m6256[94m: li R8 0 [0m
1565 [93m6260[94m: swi R8 R14 76 [0m
1566 [93m6264[94m: lwi R8 R14 76 [0m
1567 [93m6268[94m: swi R8 R14 96 [0m
1568 [93m6272[94m: lwi R12 R14 88 [0m
1569 [93m6276[94m: li R8 6296 [0m
1570 [93m6280[94m: lwi R9 R14 92 [0m
1571 [93m6284[94m: sub R10 R9 R8 [0m
1572 [93m6288[94m: addi R14 R14 100 [0m
1573 [93m6292[94m: jr R10 [0m
1574 [93m6296[94m: swi R12 R14 140 [0m
1575 [93m6300[94m: li R8 10 [0m
1576 [93m6304[94m: swi R8 R14 16 [0m
1577 [93m6308[94m: lwi R8 R14 16 [0m
1578 [93m6312[94m: swi R8 R14 0 [0m
1579 [93m6316[94m: lwi R8 R14 16 [0m
1580 [93m6320[94m: li R9 1 [0m
1581 [93m6324[94m: mul R10 R8 R9 [0m
1582 [93m6328[94m: modi R8 R10 4 [0m
1583 [93m6332[94m: li R9 4 [0m
1584 [93m6336[94m: sub R8 R9 R8 [0m
1585 [93m6340[94m: add R10 R10 R8 [0m
1586 [93m6344[94m: sub R12 R12 R10 [0m
1587 [93m6348[94m: swi R12 R14 4 [0m
1588 [93m6352[94m: li R8 0 [0m
1589 [93m6356[94m: swi R8 R14 20 [0m
1590 [93m6360[94m: lwi R8 R14 20 [0m
1591 [93m6364[94m: swi R8 R14 8 [0m
1592 [93m6368[94m: li R8 1 [0m
1593 [93m6372[94m: swi R8 R14 24 [0m
1594 [93m6376[94m: lwi R8 R14 24 [0m
1595 [93m6380[94m: swi R8 R14 12 [0m
1596 [93m6384[94m: li R8 0 [0m
1597 [93m6388[94m: swi R8 R14 28 [0m
1598 [93m6392[94m: lwi R8 R14 136 [0m
1599 [93m6396[94m: lwi R9 R14 28 [0m
1600 [93m6400[94m: lt R10 R8 R9 [0m
1601 [93m6404[94m: swi R10 R14 32 [0m
1602 [93m6408[94m: lwi R8 R14 32 [0m
1603 [93m6412[94m: cmp R8 R0 [0m
1604 [93m6416[94m: jeq 52 [0m
1605 [93m6420[94m: li R8 0 [0m
1606 [93m6424[94m: swi R8 R14 36 [0m
1607 [93m6428[94m: lwi R8 R14 36 [0m
1608 [93m6432[94m: lwi R9 R14 136 [0m
1609 [93m6436[94m: sub R10 R8 R9 [0m
1610 [93m6440[94m: swi R10 R14 40 [0m
1611 [93m6444[94m: lwi R8 R14 40 [0m
1612 [93m6448[94m: swi R8 R14 136 [0m
1613 [93m6452[94m: li R8 0 [0m
1614 [93m6456[94m: swi R8 R14 44 [0m
1615 [93m6460[94m: lwi R8 R14 44 [0m
1616 [93m6464[94m: swi R8 R14 12 [0m
1617 [93m6468[94m: jmp 0 [0m
1618 [93m6472[94m: li R8 1 [0m
1619 [93m6476[94m: swi R8 R14 48 [0m
1620 [93m6480[94m: lwi R8 R14 48 [0m
1621 [93m6484[94m: cmp R8 R0 [0m
1622 [93m6488[94m: jeq 204 [0m
1623 [93m6492[94m: jmp 4 [0m
1624 [93m6496[94m: jmp -28 [0m
1625 [93m6500[94m: lwi R8 R14 8 [0m
1626 [93m6504[94m: li R9 1 [0m
1627 [93m6508[94m: mul R10 R8 R9 [0m
1628 [93m6512[94m: swi R10 R14 52 [0m
1629 [93m6516[94m: lwi R8 R14 4 [0m
1630 [93m6520[94m: lwi R9 R14 52 [0m
1631 [93m6524[94m: add R10 R8 R9 [0m
1632 [93m6528[94m: swi R10 R14 56 [0m
1633 [93m6532[94m: li R8 10 [0m
1634 [93m6536[94m: swi R8 R14 60 [0m
1635 [93m6540[94m: lwi R8 R14 136 [0m
1636 [93m6544[94m: lwi R9 R14 60 [0m
1637 [93m6548[94m: mod R10 R8 R9 [0m
1638 [93m6552[94m: swi R10 R14 64 [0m
1639 [93m6556[94m: li R8 48 [0m
1640 [93m6560[94m: swi R8 R14 68 [0m
1641 [93m6564[94m: lwi R8 R14 64 [0m
1642 [93m6568[94m: lwi R9 R14 68 [0m
1643 [93m6572[94m: add R10 R8 R9 [0m
1644 [93m6576[94m: swi R10 R14 72 [0m
1645 [93m6580[94m: lwi R8 R14 72 [0m
1646 [93m6584[94m: lwi R7 R14 56 [0m
1647 [93m6588[94m: sbi R8 R7 0 [0m
1648 [93m6592[94m: lwi R8 R14 8 [0m
1649 [93m6596[94m: swi R8 R14 76 [0m
1650 [93m6600[94m: lwi R8 R14 8 [0m
1651 [93m6604[94m: li R9 1 [0m
1652 [93m6608[94m: add R10 R8 R9 [0m
1653 [93m6612[94m: swi R10 R14 8 [0m
1654 [93m6616[94m: li R8 10 [0m
1655 [93m6620[94m: swi R8 R14 80 [0m
1656 [93m6624[94m: lwi R8 R14 136 [0m
1657 [93m6628[94m: lwi R9 R14 80 [0m
1658 [93m6632[94m: div R10 R8 R9 [0m
1659 [93m6636[94m: swi R10 R14 84 [0m
1660 [93m6640[94m: lwi R8 R14 84 [0m
1661 [93m6644[94m: swi R8 R14 136 [0m
1662 [93m6648[94m: li R8 0 [0m
1663 [93m6652[94m: swi R8 R14 88 [0m
1664 [93m6656[94m: lwi R8 R14 136 [0m
1665 [93m6660[94m: lwi R9 R14 88 [0m
1666 [93m6664[94m: eq R10 R8 R9 [0m
1667 [93m6668[94m: swi R10 R14 92 [0m
1668 [93m6672[94m: lwi R8 R14 92 [0m
1669 [93m6676[94m: cmp R8 R0 [0m
1670 [93m6680[94m: jeq 8 [0m
1671 [93m6684[94m: jmp 8 [0m
1672 [93m6688[94m: jmp 0 [0m
1673 [93m6692[94m: jmp -200 [0m
1674 [93m6696[94m: li R8 0 [0m
1675 [93m6700[94m: swi R8 R14 96 [0m
1676 [93m6704[94m: lwi R8 R14 12 [0m
1677 [93m6708[94m: lwi R9 R14 96 [0m
1678 [93m6712[94m: eq R10 R8 R9 [0m
1679 [93m6716[94m: swi R10 R14 100 [0m
1680 [93m6720[94m: lwi R8 R14 100 [0m
1681 [93m6724[94m: cmp R8 R0 [0m
1682 [93m6728[94m: jeq 80 [0m
1683 [93m6732[94m: lwi R8 R14 8 [0m
1684 [93m6736[94m: li R9 1 [0m
1685 [93m6740[94m: mul R10 R8 R9 [0m
1686 [93m6744[94m: swi R10 R14 104 [0m
1687 [93m6748[94m: lwi R8 R14 4 [0m
1688 [93m6752[94m: lwi R9 R14 104 [0m
1689 [93m6756[94m: add R10 R8 R9 [0m
1690 [93m6760[94m: swi R10 R14 108 [0m
1691 [93m6764[94m: li R8 45 [0m
1692 [93m6768[94m: swi R8 R14 112 [0m
1693 [93m6772[94m: lwi R8 R14 112 [0m
1694 [93m6776[94m: lwi R7 R14 108 [0m
1695 [93m6780[94m: sbi R8 R7 0 [0m
1696 [93m6784[94m: lwi R8 R14 8 [0m
1697 [93m6788[94m: swi R8 R14 116 [0m
1698 [93m6792[94m: lwi R8 R14 8 [0m
1699 [93m6796[94m: li R9 1 [0m
1700 [93m6800[94m: add R10 R8 R9 [0m
1701 [93m6804[94m: swi R10 R14 8 [0m
1702 [93m6808[94m: jmp 0 [0m
1703 [93m6812[94m: lwi R8 R14 4 [0m
1704 [93m6816[94m: swi R8 R14 -16 [0m
1705 [93m6820[94m: lwi R8 R14 8 [0m
1706 [93m6824[94m: swi R8 R14 -20 [0m
1707 [93m6828[94m: li R8 6844 [0m
1708 [93m6832[94m: swi R8 R14 -8 [0m
1709 [93m6836[94m: addi R14 R14 -100 [0m
1710 [93m6840[94m: jmp -936 [0m
1711 [93m6844[94m: lwi R8 R14 -4 [0m
1712 [93m6848[94m: swi R8 R14 120 [0m
1713 [93m6852[94m: lwi R8 R14 4 [0m
1714 [93m6856[94m: swi R8 R14 -16 [0m
1715 [93m6860[94m: lwi R8 R14 8 [0m
1716 [93m6864[94m: swi R8 R14 -20 [0m
1717 [93m6868[94m: lwi R8 R14 132 [0m
1718 [93m6872[94m: swi R8 R14 -24 [0m
1719 [93m6876[94m: li R8 6892 [0m
1720 [93m6880[94m: swi R8 R14 -8 [0m
1721 [93m6884[94m: addi R14 R14 -180 [0m
1722 [93m6888[94m: jmp -3276 [0m
1723 [93m6892[94m: lwi R8 R14 -4 [0m
1724 [93m6896[94m: swi R8 R14 124 [0m
1725 [93m6900[94m: li R8 0 [0m
1726 [93m6904[94m: swi R8 R14 128 [0m
1727 [93m6908[94m: lwi R8 R14 128 [0m
1728 [93m6912[94m: swi R8 R14 148 [0m
1729 [93m6916[94m: lwi R12 R14 140 [0m
1730 [93m6920[94m: li R8 6940 [0m
1731 [93m6924[94m: lwi R9 R14 144 [0m
1732 [93m6928[94m: sub R10 R9 R8 [0m
1733 [93m6932[94m: addi R14 R14 152 [0m
1734 [93m6936[94m: jr R10 [0m
1735 [93m6940[94m: swi R12 R14 248 [0m
1736 [93m6944[94m: lwi R11 R13 44 [0m
1737 [93m6948[94m: li R6 1 [0m
1738 [93m6952[94m: swi R6 R13 44 [0m
1739 [93m6956[94m: lwi R3 R13 44 [0m
1740 [93m6960[94m: lwi R6 R13 56 [0m
1741 [93m6964[94m: lwi R5 R6 0 [0m
1742 [93m6968[94m: lwi R7 R6 4 [0m
1743 [93m6972[94m: lwi R8 R6 8 [0m
1744 [93m6976[94m: lwi R9 R6 12 [0m
1745 [93m6980[94m: lwi R10 R6 16 [0m
1746 [93m6984[94m: lwi R12 R6 20 [0m
1747 [93m6988[94m: lwi R14 R6 24 [0m
1748 [93m6992[94m: addi R14 R14 -260 [0m
1749 [93m6996[94m: swi R12 R14 248 [0m
1750 [93m7000[94m: swi R11 R14 0 [0m
1751 [93m7004[94m: li R8 10 [0m
1752 [93m7008[94m: swi R8 R14 36 [0m
1753 [93m7012[94m: lwi R8 R14 36 [0m
1754 [93m7016[94m: swi R8 R14 4 [0m
1755 [93m7020[94m: li R8 1 [0m
1756 [93m7024[94m: swi R8 R14 40 [0m
1757 [93m7028[94m: lwi R8 R14 40 [0m
1758 [93m7032[94m: swi R8 R14 8 [0m
1759 [93m7036[94m: li R8 5 [0m
1760 [93m7040[94m: swi R8 R14 44 [0m
1761 [93m7044[94m: lwi R8 R14 8 [0m
1762 [93m7048[94m: lwi R9 R14 44 [0m
1763 [93m7052[94m: lt R10 R8 R9 [0m
1764 [93m7056[94m: swi R10 R14 48 [0m
1765 [93m7060[94m: lwi R8 R14 48 [0m
1766 [93m7064[94m: cmp R8 R0 [0m
1767 [93m7068[94m: jeq 112 [0m
1768 [93m7072[94m: jmp 28 [0m
1769 [93m7076[94m: lwi R8 R14 8 [0m
1770 [93m7080[94m: swi R8 R14 52 [0m
1771 [93m7084[94m: lwi R8 R14 8 [0m
1772 [93m7088[94m: li R9 1 [0m
1773 [93m7092[94m: add R10 R8 R9 [0m
1774 [93m7096[94m: swi R10 R14 8 [0m
1775 [93m7100[94m: jmp -68 [0m
1776 [93m7104[94m: lwi R8 R14 8 [0m
1777 [93m7108[94m: li R9 4 [0m
1778 [93m7112[94m: mul R10 R8 R9 [0m
1779 [93m7116[94m: swi R10 R14 56 [0m
1780 [93m7120[94m: lwi R8 R13 80 [0m
1781 [93m7124[94m: lwi R9 R14 56 [0m
1782 [93m7128[94m: add R10 R8 R9 [0m
1783 [93m7132[94m: swi R10 R14 60 [0m
1784 [93m7136[94m: lwi R8 R14 0 [0m
1785 [93m7140[94m: lwi R9 R14 60 [0m
1786 [93m7144[94m: lwi R9 R9 0 [0m
1787 [93m7148[94m: eq R10 R8 R9 [0m
1788 [93m7152[94m: swi R10 R14 64 [0m
1789 [93m7156[94m: lwi R8 R14 64 [0m
1790 [93m7160[94m: cmp R8 R0 [0m
1791 [93m7164[94m: jeq 12 [0m
1792 [93m7168[94m: lwi R8 R14 8 [0m
1793 [93m7172[94m: swi R8 R14 4 [0m
1794 [93m7176[94m: jmp 0 [0m
1795 [93m7180[94m: jmp -108 [0m
1796 [93m7184[94m: lwi R8 R14 4 [0m
1797 [93m7188[94m: li R9 4 [0m
1798 [93m7192[94m: mul R10 R8 R9 [0m
1799 [93m7196[94m: swi R10 R14 68 [0m
1800 [93m7200[94m: lwi R8 R13 80 [0m
1801 [93m7204[94m: lwi R9 R14 68 [0m
1802 [93m7208[94m: add R10 R8 R9 [0m
1803 [93m7212[94m: swi R10 R14 72 [0m
1804 [93m7216[94m: li R8 0 [0m
1805 [93m7220[94m: swi R8 R14 76 [0m
1806 [93m7224[94m: lwi R8 R14 76 [0m
1807 [93m7228[94m: lwi R7 R14 72 [0m
1808 [93m7232[94m: swi R8 R7 0 [0m
1809 [93m7236[94m: li R8 10 [0m
1810 [93m7240[94m: swi R8 R14 80 [0m
1811 [93m7244[94m: lwi R8 R14 4 [0m
1812 [93m7248[94m: lwi R9 R14 80 [0m
1813 [93m7252[94m: eq R10 R8 R9 [0m
1814 [93m7256[94m: swi R10 R14 84 [0m
1815 [93m7260[94m: lwi R8 R14 84 [0m
1816 [93m7264[94m: cmp R8 R0 [0m
1817 [93m7268[94m: jeq 416 [0m
1818 [93m7272[94m: subi R12 R12 40 [0m
1819 [93m7276[94m: li R8 83 [0m
1820 [93m7280[94m: sbi R8 R12 0 [0m
1821 [93m7284[94m: li R8 111 [0m
1822 [93m7288[94m: sbi R8 R12 1 [0m
1823 [93m7292[94m: li R8 109 [0m
1824 [93m7296[94m: sbi R8 R12 2 [0m
1825 [93m7300[94m: li R8 101 [0m
1826 [93m7304[94m: sbi R8 R12 3 [0m
1827 [93m7308[94m: li R8 32 [0m
1828 [93m7312[94m: sbi R8 R12 4 [0m
1829 [93m7316[94m: li R8 112 [0m
1830 [93m7320[94m: sbi R8 R12 5 [0m
1831 [93m7324[94m: li R8 114 [0m
1832 [93m7328[94m: sbi R8 R12 6 [0m
1833 [93m7332[94m: li R8 111 [0m
1834 [93m7336[94m: sbi R8 R12 7 [0m
1835 [93m7340[94m: li R8 98 [0m
1836 [93m7344[94m: sbi R8 R12 8 [0m
1837 [93m7348[94m: li R8 108 [0m
1838 [93m7352[94m: sbi R8 R12 9 [0m
1839 [93m7356[94m: li R8 101 [0m
1840 [93m7360[94m: sbi R8 R12 10 [0m
1841 [93m7364[94m: li R8 109 [0m
1842 [93m7368[94m: sbi R8 R12 11 [0m
1843 [93m7372[94m: li R8 32 [0m
1844 [93m7376[94m: sbi R8 R12 12 [0m
1845 [93m7380[94m: li R8 111 [0m
1846 [93m7384[94m: sbi R8 R12 13 [0m
1847 [93m7388[94m: li R8 99 [0m
1848 [93m7392[94m: sbi R8 R12 14 [0m
1849 [93m7396[94m: li R8 99 [0m
1850 [93m7400[94m: sbi R8 R12 15 [0m
1851 [93m7404[94m: li R8 117 [0m
1852 [93m7408[94m: sbi R8 R12 16 [0m
1853 [93m7412[94m: li R8 114 [0m
1854 [93m7416[94m: sbi R8 R12 17 [0m
1855 [93m7420[94m: li R8 101 [0m
1856 [93m7424[94m: sbi R8 R12 18 [0m
1857 [93m7428[94m: li R8 100 [0m
1858 [93m7432[94m: sbi R8 R12 19 [0m
1859 [93m7436[94m: li R8 44 [0m
1860 [93m7440[94m: sbi R8 R12 20 [0m
1861 [93m7444[94m: li R8 32 [0m
1862 [93m7448[94m: sbi R8 R12 21 [0m
1863 [93m7452[94m: li R8 115 [0m
1864 [93m7456[94m: sbi R8 R12 22 [0m
1865 [93m7460[94m: li R8 121 [0m
1866 [93m7464[94m: sbi R8 R12 23 [0m
1867 [93m7468[94m: li R8 115 [0m
1868 [93m7472[94m: sbi R8 R12 24 [0m
1869 [93m7476[94m: li R8 116 [0m
1870 [93m7480[94m: sbi R8 R12 25 [0m
1871 [93m7484[94m: li R8 101 [0m
1872 [93m7488[94m: sbi R8 R12 26 [0m
1873 [93m7492[94m: li R8 109 [0m
1874 [93m7496[94m: sbi R8 R12 27 [0m
1875 [93m7500[94m: li R8 32 [0m
1876 [93m7504[94m: sbi R8 R12 28 [0m
1877 [93m7508[94m: li R8 99 [0m
1878 [93m7512[94m: sbi R8 R12 29 [0m
1879 [93m7516[94m: li R8 114 [0m
1880 [93m7520[94m: sbi R8 R12 30 [0m
1881 [93m7524[94m: li R8 97 [0m
1882 [93m7528[94m: sbi R8 R12 31 [0m
1883 [93m7532[94m: li R8 115 [0m
1884 [93m7536[94m: sbi R8 R12 32 [0m
1885 [93m7540[94m: li R8 104 [0m
1886 [93m7544[94m: sbi R8 R12 33 [0m
1887 [93m7548[94m: li R8 105 [0m
1888 [93m7552[94m: sbi R8 R12 34 [0m
1889 [93m7556[94m: li R8 110 [0m
1890 [93m7560[94m: sbi R8 R12 35 [0m
1891 [93m7564[94m: li R8 103 [0m
1892 [93m7568[94m: sbi R8 R12 36 [0m
1893 [93m7572[94m: sbi R0 R12 37 [0m
1894 [93m7576[94m: swi R12 R14 88 [0m
1895 [93m7580[94m: lwi R8 R14 88 [0m
1896 [93m7584[94m: swi R8 R14 12 [0m
1897 [93m7588[94m: lwi R8 R14 12 [0m
1898 [93m7592[94m: swi R8 R14 -16 [0m
1899 [93m7596[94m: li R8 7612 [0m
1900 [93m7600[94m: swi R8 R14 -8 [0m
1901 [93m7604[94m: addi R14 R14 -52 [0m
1902 [93m7608[94m: jmp -7428 [0m
1903 [93m7612[94m: lwi R8 R14 -4 [0m
1904 [93m7616[94m: swi R8 R14 92 [0m
1905 [93m7620[94m: lwi R8 R14 92 [0m
1906 [93m7624[94m: swi R8 R14 16 [0m
1907 [93m7628[94m: lwi R8 R14 12 [0m
1908 [93m7632[94m: swi R8 R14 -16 [0m
1909 [93m7636[94m: lwi R8 R14 16 [0m
1910 [93m7640[94m: swi R8 R14 -20 [0m
1911 [93m7644[94m: li R8 1 [0m
1912 [93m7648[94m: swi R8 R14 96 [0m
1913 [93m7652[94m: lwi R8 R14 96 [0m
1914 [93m7656[94m: swi R8 R14 -24 [0m
1915 [93m7660[94m: li R8 7676 [0m
1916 [93m7664[94m: swi R8 R14 -8 [0m
1917 [93m7668[94m: addi R14 R14 -180 [0m
1918 [93m7672[94m: jmp -4060 [0m
1919 [93m7676[94m: lwi R8 R14 -4 [0m
1920 [93m7680[94m: swi R8 R14 100 [0m
1921 [93m7684[94m: jmp 0 [0m
1922 [93m7688[94m: li R8 10 [0m
1923 [93m7692[94m: swi R8 R14 104 [0m
1924 [93m7696[94m: lwi R8 R14 104 [0m
1925 [93m7700[94m: swi R8 R14 20 [0m
1926 [93m7704[94m: li R8 1 [0m
1927 [93m7708[94m: swi R8 R14 108 [0m
1928 [93m7712[94m: lwi R8 R14 4 [0m
1929 [93m7716[94m: lwi R9 R14 108 [0m
1930 [93m7720[94m: add R10 R8 R9 [0m
1931 [93m7724[94m: swi R10 R14 112 [0m
1932 [93m7728[94m: lwi R8 R14 112 [0m
1933 [93m7732[94m: swi R8 R14 8 [0m
1934 [93m7736[94m: li R8 5 [0m
1935 [93m7740[94m: swi R8 R14 116 [0m
1936 [93m7744[94m: lwi R8 R14 8 [0m
1937 [93m7748[94m: lwi R9 R14 116 [0m
1938 [93m7752[94m: lt R10 R8 R9 [0m
1939 [93m7756[94m: swi R10 R14 120 [0m
1940 [93m7760[94m: lwi R8 R14 120 [0m
1941 [93m7764[94m: cmp R8 R0 [0m
1942 [93m7768[94m: jeq 124 [0m
1943 [93m7772[94m: jmp 28 [0m
1944 [93m7776[94m: lwi R8 R14 8 [0m
1945 [93m7780[94m: swi R8 R14 124 [0m
1946 [93m7784[94m: lwi R8 R14 8 [0m
1947 [93m7788[94m: li R9 1 [0m
1948 [93m7792[94m: add R10 R8 R9 [0m
1949 [93m7796[94m: swi R10 R14 8 [0m
1950 [93m7800[94m: jmp -68 [0m
1951 [93m7804[94m: lwi R8 R14 8 [0m
1952 [93m7808[94m: li R9 4 [0m
1953 [93m7812[94m: mul R10 R8 R9 [0m
1954 [93m7816[94m: swi R10 R14 128 [0m
1955 [93m7820[94m: lwi R8 R13 80 [0m
1956 [93m7824[94m: lwi R9 R14 128 [0m
1957 [93m7828[94m: add R10 R8 R9 [0m
1958 [93m7832[94m: swi R10 R14 132 [0m
1959 [93m7836[94m: li R8 0 [0m
1960 [93m7840[94m: swi R8 R14 136 [0m
1961 [93m7844[94m: lwi R8 R14 132 [0m
1962 [93m7848[94m: lwi R8 R8 0 [0m
1963 [93m7852[94m: lwi R9 R14 136 [0m
1964 [93m7856[94m: neq R10 R8 R9 [0m
1965 [93m7860[94m: swi R10 R14 140 [0m
1966 [93m7864[94m: lwi R8 R14 140 [0m
1967 [93m7868[94m: cmp R8 R0 [0m
1968 [93m7872[94m: jeq 16 [0m
1969 [93m7876[94m: lwi R8 R14 8 [0m
1970 [93m7880[94m: swi R8 R14 20 [0m
1971 [93m7884[94m: jmp 8 [0m
1972 [93m7888[94m: jmp 0 [0m
1973 [93m7892[94m: jmp -120 [0m
1974 [93m7896[94m: li R8 10 [0m
1975 [93m7900[94m: swi R8 R14 144 [0m
1976 [93m7904[94m: lwi R8 R14 20 [0m
1977 [93m7908[94m: lwi R9 R14 144 [0m
1978 [93m7912[94m: eq R10 R8 R9 [0m
1979 [93m7916[94m: swi R10 R14 148 [0m
1980 [93m7920[94m: lwi R8 R14 148 [0m
1981 [93m7924[94m: cmp R8 R0 [0m
1982 [93m7928[94m: jeq 172 [0m
1983 [93m7932[94m: li R8 1 [0m
1984 [93m7936[94m: swi R8 R14 152 [0m
1985 [93m7940[94m: lwi R8 R14 152 [0m
1986 [93m7944[94m: swi R8 R14 8 [0m
1987 [93m7948[94m: lwi R8 R14 8 [0m
1988 [93m7952[94m: lwi R9 R14 4 [0m
1989 [93m7956[94m: le R10 R8 R9 [0m
1990 [93m7960[94m: swi R10 R14 156 [0m
1991 [93m7964[94m: lwi R8 R14 156 [0m
1992 [93m7968[94m: cmp R8 R0 [0m
1993 [93m7972[94m: jeq 124 [0m
1994 [93m7976[94m: jmp 28 [0m
1995 [93m7980[94m: lwi R8 R14 8 [0m
1996 [93m7984[94m: swi R8 R14 160 [0m
1997 [93m7988[94m: lwi R8 R14 8 [0m
1998 [93m7992[94m: li R9 1 [0m
1999 [93m7996[94m: add R10 R8 R9 [0m
2000 [93m8000[94m: swi R10 R14 8 [0m
2001 [93m8004[94m: jmp -60 [0m
2002 [93m8008[94m: lwi R8 R14 8 [0m
2003 [93m8012[94m: li R9 4 [0m
2004 [93m8016[94m: mul R10 R8 R9 [0m
2005 [93m8020[94m: swi R10 R14 164 [0m
2006 [93m8024[94m: lwi R8 R13 80 [0m
2007 [93m8028[94m: lwi R9 R14 164 [0m
2008 [93m8032[94m: add R10 R8 R9 [0m
2009 [93m8036[94m: swi R10 R14 168 [0m
2010 [93m8040[94m: li R8 0 [0m
2011 [93m8044[94m: swi R8 R14 172 [0m
2012 [93m8048[94m: lwi R8 R14 168 [0m
2013 [93m8052[94m: lwi R8 R8 0 [0m
2014 [93m8056[94m: lwi R9 R14 172 [0m
2015 [93m8060[94m: neq R10 R8 R9 [0m
2016 [93m8064[94m: swi R10 R14 176 [0m
2017 [93m8068[94m: lwi R8 R14 176 [0m
2018 [93m8072[94m: cmp R8 R0 [0m
2019 [93m8076[94m: jeq 16 [0m
2020 [93m8080[94m: lwi R8 R14 8 [0m
2021 [93m8084[94m: swi R8 R14 20 [0m
2022 [93m8088[94m: jmp 8 [0m
2023 [93m8092[94m: jmp 0 [0m
2024 [93m8096[94m: jmp -120 [0m
2025 [93m8100[94m: jmp 0 [0m
2026 [93m8104[94m: li R8 10 [0m
2027 [93m8108[94m: swi R8 R14 180 [0m
2028 [93m8112[94m: lwi R8 R14 20 [0m
2029 [93m8116[94m: lwi R9 R14 180 [0m
2030 [93m8120[94m: eq R10 R8 R9 [0m
2031 [93m8124[94m: swi R10 R14 184 [0m
2032 [93m8128[94m: lwi R8 R14 184 [0m
2033 [93m8132[94m: cmp R8 R0 [0m
2034 [93m8136[94m: jeq 416 [0m
2035 [93m8140[94m: subi R12 R12 40 [0m
2036 [93m8144[94m: li R8 83 [0m
2037 [93m8148[94m: sbi R8 R12 0 [0m
2038 [93m8152[94m: li R8 111 [0m
2039 [93m8156[94m: sbi R8 R12 1 [0m
2040 [93m8160[94m: li R8 109 [0m
2041 [93m8164[94m: sbi R8 R12 2 [0m
2042 [93m8168[94m: li R8 101 [0m
2043 [93m8172[94m: sbi R8 R12 3 [0m
2044 [93m8176[94m: li R8 32 [0m
2045 [93m8180[94m: sbi R8 R12 4 [0m
2046 [93m8184[94m: li R8 112 [0m
2047 [93m8188[94m: sbi R8 R12 5 [0m
2048 [93m8192[94m: li R8 114 [0m
2049 [93m8196[94m: sbi R8 R12 6 [0m
2050 [93m8200[94m: li R8 111 [0m
2051 [93m8204[94m: sbi R8 R12 7 [0m
2052 [93m8208[94m: li R8 98 [0m
2053 [93m8212[94m: sbi R8 R12 8 [0m
2054 [93m8216[94m: li R8 108 [0m
2055 [93m8220[94m: sbi R8 R12 9 [0m
2056 [93m8224[94m: li R8 101 [0m
2057 [93m8228[94m: sbi R8 R12 10 [0m
2058 [93m8232[94m: li R8 109 [0m
2059 [93m8236[94m: sbi R8 R12 11 [0m
2060 [93m8240[94m: li R8 32 [0m
2061 [93m8244[94m: sbi R8 R12 12 [0m
2062 [93m8248[94m: li R8 111 [0m
2063 [93m8252[94m: sbi R8 R12 13 [0m
2064 [93m8256[94m: li R8 99 [0m
2065 [93m8260[94m: sbi R8 R12 14 [0m
2066 [93m8264[94m: li R8 99 [0m
2067 [93m8268[94m: sbi R8 R12 15 [0m
2068 [93m8272[94m: li R8 117 [0m
2069 [93m8276[94m: sbi R8 R12 16 [0m
2070 [93m8280[94m: li R8 114 [0m
2071 [93m8284[94m: sbi R8 R12 17 [0m
2072 [93m8288[94m: li R8 101 [0m
2073 [93m8292[94m: sbi R8 R12 18 [0m
2074 [93m8296[94m: li R8 100 [0m
2075 [93m8300[94m: sbi R8 R12 19 [0m
2076 [93m8304[94m: li R8 44 [0m
2077 [93m8308[94m: sbi R8 R12 20 [0m
2078 [93m8312[94m: li R8 32 [0m
2079 [93m8316[94m: sbi R8 R12 21 [0m
2080 [93m8320[94m: li R8 115 [0m
2081 [93m8324[94m: sbi R8 R12 22 [0m
2082 [93m8328[94m: li R8 121 [0m
2083 [93m8332[94m: sbi R8 R12 23 [0m
2084 [93m8336[94m: li R8 115 [0m
2085 [93m8340[94m: sbi R8 R12 24 [0m
2086 [93m8344[94m: li R8 116 [0m
2087 [93m8348[94m: sbi R8 R12 25 [0m
2088 [93m8352[94m: li R8 101 [0m
2089 [93m8356[94m: sbi R8 R12 26 [0m
2090 [93m8360[94m: li R8 109 [0m
2091 [93m8364[94m: sbi R8 R12 27 [0m
2092 [93m8368[94m: li R8 32 [0m
2093 [93m8372[94m: sbi R8 R12 28 [0m
2094 [93m8376[94m: li R8 99 [0m
2095 [93m8380[94m: sbi R8 R12 29 [0m
2096 [93m8384[94m: li R8 114 [0m
2097 [93m8388[94m: sbi R8 R12 30 [0m
2098 [93m8392[94m: li R8 97 [0m
2099 [93m8396[94m: sbi R8 R12 31 [0m
2100 [93m8400[94m: li R8 115 [0m
2101 [93m8404[94m: sbi R8 R12 32 [0m
2102 [93m8408[94m: li R8 104 [0m
2103 [93m8412[94m: sbi R8 R12 33 [0m
2104 [93m8416[94m: li R8 105 [0m
2105 [93m8420[94m: sbi R8 R12 34 [0m
2106 [93m8424[94m: li R8 110 [0m
2107 [93m8428[94m: sbi R8 R12 35 [0m
2108 [93m8432[94m: li R8 103 [0m
2109 [93m8436[94m: sbi R8 R12 36 [0m
2110 [93m8440[94m: sbi R0 R12 37 [0m
2111 [93m8444[94m: swi R12 R14 188 [0m
2112 [93m8448[94m: lwi R8 R14 188 [0m
2113 [93m8452[94m: swi R8 R14 12 [0m
2114 [93m8456[94m: lwi R8 R14 12 [0m
2115 [93m8460[94m: swi R8 R14 -16 [0m
2116 [93m8464[94m: li R8 8480 [0m
2117 [93m8468[94m: swi R8 R14 -8 [0m
2118 [93m8472[94m: addi R14 R14 -52 [0m
2119 [93m8476[94m: jmp -8296 [0m
2120 [93m8480[94m: lwi R8 R14 -4 [0m
2121 [93m8484[94m: swi R8 R14 192 [0m
2122 [93m8488[94m: lwi R8 R14 192 [0m
2123 [93m8492[94m: swi R8 R14 16 [0m
2124 [93m8496[94m: lwi R8 R14 12 [0m
2125 [93m8500[94m: swi R8 R14 -16 [0m
2126 [93m8504[94m: lwi R8 R14 16 [0m
2127 [93m8508[94m: swi R8 R14 -20 [0m
2128 [93m8512[94m: li R8 1 [0m
2129 [93m8516[94m: swi R8 R14 196 [0m
2130 [93m8520[94m: lwi R8 R14 196 [0m
2131 [93m8524[94m: swi R8 R14 -24 [0m
2132 [93m8528[94m: li R8 8544 [0m
2133 [93m8532[94m: swi R8 R14 -8 [0m
2134 [93m8536[94m: addi R14 R14 -180 [0m
2135 [93m8540[94m: jmp -4928 [0m
2136 [93m8544[94m: lwi R8 R14 -4 [0m
2137 [93m8548[94m: swi R8 R14 200 [0m
2138 [93m8552[94m: jmp 0 [0m
2139 [93m8556[94m: lwi R8 R14 20 [0m
2140 [93m8560[94m: li R9 4 [0m
2141 [93m8564[94m: mul R10 R8 R9 [0m
2142 [93m8568[94m: swi R10 R14 204 [0m
2143 [93m8572[94m: lwi R8 R13 80 [0m
2144 [93m8576[94m: lwi R9 R14 204 [0m
2145 [93m8580[94m: add R10 R8 R9 [0m
2146 [93m8584[94m: swi R10 R14 208 [0m
2147 [93m8588[94m: lwi R8 R14 208 [0m
2148 [93m8592[94m: lwi R8 R8 0 [0m
2149 [93m8596[94m: swi R8 R14 32 [0m
2150 [93m8600[94m: lwi R11 R14 32 [0m
2151 [93m8604[94m: li R8 1 [0m
2152 [93m8608[94m: swi R8 R14 212 [0m
2153 [93m8612[94m: lwi R8 R14 20 [0m
2154 [93m8616[94m: lwi R9 R14 212 [0m
2155 [93m8620[94m: eq R10 R8 R9 [0m
2156 [93m8624[94m: swi R10 R14 216 [0m
2157 [93m8628[94m: lwi R8 R14 216 [0m
2158 [93m8632[94m: cmp R8 R0 [0m
2159 [93m8636[94m: jeq 108 [0m
2160 [93m8640[94m: lwi R12 R14 248 [0m
2161 [93m8644[94m: addi R14 R14 260 [0m
2162 [93m8648[94m: lwi R6 R13 56 [0m
2163 [93m8652[94m: swi R5 R6 0 [0m
2164 [93m8656[94m: swi R7 R6 4 [0m
2165 [93m8660[94m: swi R8 R6 8 [0m
2166 [93m8664[94m: swi R9 R6 12 [0m
2167 [93m8668[94m: swi R10 R6 16 [0m
2168 [93m8672[94m: swi R12 R6 20 [0m
2169 [93m8676[94m: swi R14 R6 24 [0m
2170 [93m8680[94m: lwi R6 R13 60 [0m
2171 [93m8684[94m: lwi R5 R6 0 [0m
2172 [93m8688[94m: lwi R7 R6 4 [0m
2173 [93m8692[94m: lwi R8 R6 8 [0m
2174 [93m8696[94m: lwi R9 R6 12 [0m
2175 [93m8700[94m: lwi R10 R6 16 [0m
2176 [93m8704[94m: lwi R12 R6 20 [0m
2177 [93m8708[94m: lwi R14 R6 24 [0m
2178 [93m8712[94m: swi R11 R13 44 [0m
2179 [93m8716[94m: lwi R3 R13 44 [0m
2180 [93m8720[94m: li R6 8740 [0m
2181 [93m8724[94m: li R15 9612 [0m
2182 [93m8728[94m: add R6 R6 R15 [0m
2183 [93m8732[94m: addi R6 R6 8 [0m
2184 [93m8736[94m: sub R5 R5 R6 [0m
2185 [93m8740[94m: jri R5 [0m
2186 [93m8744[94m: jmp 432 [0m
2187 [93m8748[94m: li R8 2 [0m
2188 [93m8752[94m: swi R8 R14 220 [0m
2189 [93m8756[94m: lwi R8 R14 20 [0m
2190 [93m8760[94m: lwi R9 R14 220 [0m
2191 [93m8764[94m: eq R10 R8 R9 [0m
2192 [93m8768[94m: swi R10 R14 224 [0m
2193 [93m8772[94m: lwi R8 R14 224 [0m
2194 [93m8776[94m: cmp R8 R0 [0m
2195 [93m8780[94m: jeq 108 [0m
2196 [93m8784[94m: lwi R12 R14 248 [0m
2197 [93m8788[94m: addi R14 R14 260 [0m
2198 [93m8792[94m: lwi R6 R13 56 [0m
2199 [93m8796[94m: swi R5 R6 0 [0m
2200 [93m8800[94m: swi R7 R6 4 [0m
2201 [93m8804[94m: swi R8 R6 8 [0m
2202 [93m8808[94m: swi R9 R6 12 [0m
2203 [93m8812[94m: swi R10 R6 16 [0m
2204 [93m8816[94m: swi R12 R6 20 [0m
2205 [93m8820[94m: swi R14 R6 24 [0m
2206 [93m8824[94m: lwi R6 R13 64 [0m
2207 [93m8828[94m: lwi R5 R6 0 [0m
2208 [93m8832[94m: lwi R7 R6 4 [0m
2209 [93m8836[94m: lwi R8 R6 8 [0m
2210 [93m8840[94m: lwi R9 R6 12 [0m
2211 [93m8844[94m: lwi R10 R6 16 [0m
2212 [93m8848[94m: lwi R12 R6 20 [0m
2213 [93m8852[94m: lwi R14 R6 24 [0m
2214 [93m8856[94m: swi R11 R13 44 [0m
2215 [93m8860[94m: lwi R3 R13 44 [0m
2216 [93m8864[94m: li R6 8884 [0m
2217 [93m8868[94m: li R15 9612 [0m
2218 [93m8872[94m: add R6 R6 R15 [0m
2219 [93m8876[94m: addi R6 R6 8 [0m
2220 [93m8880[94m: sub R5 R5 R6 [0m
2221 [93m8884[94m: jri R5 [0m
2222 [93m8888[94m: jmp 288 [0m
2223 [93m8892[94m: li R8 3 [0m
2224 [93m8896[94m: swi R8 R14 228 [0m
2225 [93m8900[94m: lwi R8 R14 20 [0m
2226 [93m8904[94m: lwi R9 R14 228 [0m
2227 [93m8908[94m: eq R10 R8 R9 [0m
2228 [93m8912[94m: swi R10 R14 232 [0m
2229 [93m8916[94m: lwi R8 R14 232 [0m
2230 [93m8920[94m: cmp R8 R0 [0m
2231 [93m8924[94m: jeq 108 [0m
2232 [93m8928[94m: lwi R12 R14 248 [0m
2233 [93m8932[94m: addi R14 R14 260 [0m
2234 [93m8936[94m: lwi R6 R13 56 [0m
2235 [93m8940[94m: swi R5 R6 0 [0m
2236 [93m8944[94m: swi R7 R6 4 [0m
2237 [93m8948[94m: swi R8 R6 8 [0m
2238 [93m8952[94m: swi R9 R6 12 [0m
2239 [93m8956[94m: swi R10 R6 16 [0m
2240 [93m8960[94m: swi R12 R6 20 [0m
2241 [93m8964[94m: swi R14 R6 24 [0m
2242 [93m8968[94m: lwi R6 R13 68 [0m
2243 [93m8972[94m: lwi R5 R6 0 [0m
2244 [93m8976[94m: lwi R7 R6 4 [0m
2245 [93m8980[94m: lwi R8 R6 8 [0m
2246 [93m8984[94m: lwi R9 R6 12 [0m
2247 [93m8988[94m: lwi R10 R6 16 [0m
2248 [93m8992[94m: lwi R12 R6 20 [0m
2249 [93m8996[94m: lwi R14 R6 24 [0m
2250 [93m9000[94m: swi R11 R13 44 [0m
2251 [93m9004[94m: lwi R3 R13 44 [0m
2252 [93m9008[94m: li R6 9028 [0m
2253 [93m9012[94m: li R15 9612 [0m
2254 [93m9016[94m: add R6 R6 R15 [0m
2255 [93m9020[94m: addi R6 R6 8 [0m
2256 [93m9024[94m: sub R5 R5 R6 [0m
2257 [93m9028[94m: jri R5 [0m
2258 [93m9032[94m: jmp 144 [0m
2259 [93m9036[94m: li R8 4 [0m
2260 [93m9040[94m: swi R8 R14 236 [0m
2261 [93m9044[94m: lwi R8 R14 20 [0m
2262 [93m9048[94m: lwi R9 R14 236 [0m
2263 [93m9052[94m: eq R10 R8 R9 [0m
2264 [93m9056[94m: swi R10 R14 240 [0m
2265 [93m9060[94m: lwi R8 R14 240 [0m
2266 [93m9064[94m: cmp R8 R0 [0m
2267 [93m9068[94m: jeq 108 [0m
2268 [93m9072[94m: lwi R12 R14 248 [0m
2269 [93m9076[94m: addi R14 R14 260 [0m
2270 [93m9080[94m: lwi R6 R13 56 [0m
2271 [93m9084[94m: swi R5 R6 0 [0m
2272 [93m9088[94m: swi R7 R6 4 [0m
2273 [93m9092[94m: swi R8 R6 8 [0m
2274 [93m9096[94m: swi R9 R6 12 [0m
2275 [93m9100[94m: swi R10 R6 16 [0m
2276 [93m9104[94m: swi R12 R6 20 [0m
2277 [93m9108[94m: swi R14 R6 24 [0m
2278 [93m9112[94m: lwi R6 R13 72 [0m
2279 [93m9116[94m: lwi R5 R6 0 [0m
2280 [93m9120[94m: lwi R7 R6 4 [0m
2281 [93m9124[94m: lwi R8 R6 8 [0m
2282 [93m9128[94m: lwi R9 R6 12 [0m
2283 [93m9132[94m: lwi R10 R6 16 [0m
2284 [93m9136[94m: lwi R12 R6 20 [0m
2285 [93m9140[94m: lwi R14 R6 24 [0m
2286 [93m9144[94m: swi R11 R13 44 [0m
2287 [93m9148[94m: lwi R3 R13 44 [0m
2288 [93m9152[94m: li R6 9172 [0m
2289 [93m9156[94m: li R15 9612 [0m
2290 [93m9160[94m: add R6 R6 R15 [0m
2291 [93m9164[94m: addi R6 R6 8 [0m
2292 [93m9168[94m: sub R5 R5 R6 [0m
2293 [93m9172[94m: jri R5 [0m
2294 [93m9176[94m: jmp 0 [0m
2295 [93m9180[94m: li R8 0 [0m
2296 [93m9184[94m: swi R8 R14 244 [0m
2297 [93m9188[94m: lwi R8 R14 244 [0m
2298 [93m9192[94m: swi R8 R14 256 [0m
2299 [93m9196[94m: lwi R12 R14 248 [0m
2300 [93m9200[94m: li R8 9220 [0m
2301 [93m9204[94m: lwi R9 R14 252 [0m
2302 [93m9208[94m: sub R10 R9 R8 [0m
2303 [93m9212[94m: addi R14 R14 260 [0m
2304 [93m9216[94m: jr R10 [0m
2305 [93m9220[94m: swi R12 R14 308 [0m
2306 [93m9224[94m: swi R11 R14 0 [0m
2307 [93m9228[94m: li R8 10 [0m
2308 [93m9232[94m: swi R8 R14 28 [0m
2309 [93m9236[94m: lwi R8 R14 28 [0m
2310 [93m9240[94m: swi R8 R14 8 [0m
2311 [93m9244[94m: li R8 1 [0m
2312 [93m9248[94m: swi R8 R14 32 [0m
2313 [93m9252[94m: lwi R8 R14 32 [0m
2314 [93m9256[94m: swi R8 R14 4 [0m
2315 [93m9260[94m: li R8 5 [0m
2316 [93m9264[94m: swi R8 R14 36 [0m
2317 [93m9268[94m: lwi R8 R14 4 [0m
2318 [93m9272[94m: lwi R9 R14 36 [0m
2319 [93m9276[94m: lt R10 R8 R9 [0m
2320 [93m9280[94m: swi R10 R14 40 [0m
2321 [93m9284[94m: lwi R8 R14 40 [0m
2322 [93m9288[94m: cmp R8 R0 [0m
2323 [93m9292[94m: jeq 124 [0m
2324 [93m9296[94m: jmp 28 [0m
2325 [93m9300[94m: lwi R8 R14 4 [0m
2326 [93m9304[94m: swi R8 R14 44 [0m
2327 [93m9308[94m: lwi R8 R14 4 [0m
2328 [93m9312[94m: li R9 1 [0m
2329 [93m9316[94m: add R10 R8 R9 [0m
2330 [93m9320[94m: swi R10 R14 4 [0m
2331 [93m9324[94m: jmp -68 [0m
2332 [93m9328[94m: lwi R8 R14 4 [0m
2333 [93m9332[94m: li R9 4 [0m
2334 [93m9336[94m: mul R10 R8 R9 [0m
2335 [93m9340[94m: swi R10 R14 48 [0m
2336 [93m9344[94m: lwi R8 R13 80 [0m
2337 [93m9348[94m: lwi R9 R14 48 [0m
2338 [93m9352[94m: add R10 R8 R9 [0m
2339 [93m9356[94m: swi R10 R14 52 [0m
2340 [93m9360[94m: li R8 0 [0m
2341 [93m9364[94m: swi R8 R14 56 [0m
2342 [93m9368[94m: lwi R8 R14 52 [0m
2343 [93m9372[94m: lwi R8 R8 0 [0m
2344 [93m9376[94m: lwi R9 R14 56 [0m
2345 [93m9380[94m: eq R10 R8 R9 [0m
2346 [93m9384[94m: swi R10 R14 60 [0m
2347 [93m9388[94m: lwi R8 R14 60 [0m
2348 [93m9392[94m: cmp R8 R0 [0m
2349 [93m9396[94m: jeq 16 [0m
2350 [93m9400[94m: lwi R8 R14 4 [0m
2351 [93m9404[94m: swi R8 R14 8 [0m
2352 [93m9408[94m: jmp 8 [0m
2353 [93m9412[94m: jmp 0 [0m
2354 [93m9416[94m: jmp -120 [0m
2355 [93m9420[94m: li R8 10 [0m
2356 [93m9424[94m: swi R8 R14 64 [0m
2357 [93m9428[94m: lwi R8 R14 8 [0m
2358 [93m9432[94m: lwi R9 R14 64 [0m
2359 [93m9436[94m: eq R10 R8 R9 [0m
2360 [93m9440[94m: swi R10 R14 68 [0m
2361 [93m9444[94m: lwi R8 R14 68 [0m
2362 [93m9448[94m: cmp R8 R0 [0m
2363 [93m9452[94m: jeq 596 [0m
2364 [93m9456[94m: subi R12 R12 44 [0m
2365 [93m9460[94m: li R8 67 [0m
2366 [93m9464[94m: sbi R8 R12 0 [0m
2367 [93m9468[94m: li R8 97 [0m
2368 [93m9472[94m: sbi R8 R12 1 [0m
2369 [93m9476[94m: li R8 110 [0m
2370 [93m9480[94m: sbi R8 R12 2 [0m
2371 [93m9484[94m: li R8 110 [0m
2372 [93m9488[94m: sbi R8 R12 3 [0m
2373 [93m9492[94m: li R8 111 [0m
2374 [93m9496[94m: sbi R8 R12 4 [0m
2375 [93m9500[94m: li R8 116 [0m
2376 [93m9504[94m: sbi R8 R12 5 [0m
2377 [93m9508[94m: li R8 32 [0m
2378 [93m9512[94m: sbi R8 R12 6 [0m
2379 [93m9516[94m: li R8 99 [0m
2380 [93m9520[94m: sbi R8 R12 7 [0m
2381 [93m9524[94m: li R8 114 [0m
2382 [93m9528[94m: sbi R8 R12 8 [0m
2383 [93m9532[94m: li R8 101 [0m
2384 [93m9536[94m: sbi R8 R12 9 [0m
2385 [93m9540[94m: li R8 97 [0m
2386 [93m9544[94m: sbi R8 R12 10 [0m
2387 [93m9548[94m: li R8 116 [0m
2388 [93m9552[94m: sbi R8 R12 11 [0m
2389 [93m9556[94m: li R8 101 [0m
2390 [93m9560[94m: sbi R8 R12 12 [0m
2391 [93m9564[94m: li R8 32 [0m
2392 [93m9568[94m: sbi R8 R12 13 [0m
2393 [93m9572[94m: li R8 97 [0m
2394 [93m9576[94m: sbi R8 R12 14 [0m
2395 [93m9580[94m: li R8 32 [0m
2396 [93m9584[94m: sbi R8 R12 15 [0m
2397 [93m9588[94m: li R8 112 [0m
2398 [93m9592[94m: sbi R8 R12 16 [0m
2399 [93m9596[94m: li R8 114 [0m
2400 [93m9600[94m: sbi R8 R12 17 [0m
2401 [93m9604[94m: li R8 111 [0m
2402 [93m9608[94m: sbi R8 R12 18 [0m
2403 [93m9612[94m: li R8 99 [0m
2404 [93m9616[94m: sbi R8 R12 19 [0m
2405 [93m9620[94m: li R8 101 [0m
2406 [93m9624[94m: sbi R8 R12 20 [0m
2407 [93m9628[94m: li R8 115 [0m
2408 [93m9632[94m: sbi R8 R12 21 [0m
2409 [93m9636[94m: li R8 115 [0m
2410 [93m9640[94m: sbi R8 R12 22 [0m
2411 [93m9644[94m: li R8 44 [0m
2412 [93m9648[94m: sbi R8 R12 23 [0m
2413 [93m9652[94m: li R8 32 [0m
2414 [93m9656[94m: sbi R8 R12 24 [0m
2415 [93m9660[94m: li R8 112 [0m
2416 [93m9664[94m: sbi R8 R12 25 [0m
2417 [93m9668[94m: li R8 114 [0m
2418 [93m9672[94m: sbi R8 R12 26 [0m
2419 [93m9676[94m: li R8 111 [0m
2420 [93m9680[94m: sbi R8 R12 27 [0m
2421 [93m9684[94m: li R8 99 [0m
2422 [93m9688[94m: sbi R8 R12 28 [0m
2423 [93m9692[94m: li R8 101 [0m
2424 [93m9696[94m: sbi R8 R12 29 [0m
2425 [93m9700[94m: li R8 115 [0m
2426 [93m9704[94m: sbi R8 R12 30 [0m
2427 [93m9708[94m: li R8 115 [0m
2428 [93m9712[94m: sbi R8 R12 31 [0m
2429 [93m9716[94m: li R8 32 [0m
2430 [93m9720[94m: sbi R8 R12 32 [0m
2431 [93m9724[94m: li R8 111 [0m
2432 [93m9728[94m: sbi R8 R12 33 [0m
2433 [93m9732[94m: li R8 118 [0m
2434 [93m9736[94m: sbi R8 R12 34 [0m
2435 [93m9740[94m: li R8 101 [0m
2436 [93m9744[94m: sbi R8 R12 35 [0m
2437 [93m9748[94m: li R8 114 [0m
2438 [93m9752[94m: sbi R8 R12 36 [0m
2439 [93m9756[94m: li R8 108 [0m
2440 [93m9760[94m: sbi R8 R12 37 [0m
2441 [93m9764[94m: li R8 111 [0m
2442 [93m9768[94m: sbi R8 R12 38 [0m
2443 [93m9772[94m: li R8 97 [0m
2444 [93m9776[94m: sbi R8 R12 39 [0m
2445 [93m9780[94m: li R8 100 [0m
2446 [93m9784[94m: sbi R8 R12 40 [0m
2447 [93m9788[94m: sbi R0 R12 41 [0m
2448 [93m9792[94m: swi R12 R14 72 [0m
2449 [93m9796[94m: lwi R8 R14 72 [0m
2450 [93m9800[94m: swi R8 R14 12 [0m
2451 [93m9804[94m: lwi R8 R14 12 [0m
2452 [93m9808[94m: swi R8 R14 -16 [0m
2453 [93m9812[94m: li R8 9828 [0m
2454 [93m9816[94m: swi R8 R14 -8 [0m
2455 [93m9820[94m: addi R14 R14 -52 [0m
2456 [93m9824[94m: jmp -9644 [0m
2457 [93m9828[94m: lwi R8 R14 -4 [0m
2458 [93m9832[94m: swi R8 R14 76 [0m
2459 [93m9836[94m: lwi R8 R14 76 [0m
2460 [93m9840[94m: swi R8 R14 16 [0m
2461 [93m9844[94m: lwi R8 R14 12 [0m
2462 [93m9848[94m: swi R8 R14 -16 [0m
2463 [93m9852[94m: lwi R8 R14 16 [0m
2464 [93m9856[94m: swi R8 R14 -20 [0m
2465 [93m9860[94m: li R8 1 [0m
2466 [93m9864[94m: swi R8 R14 80 [0m
2467 [93m9868[94m: lwi R8 R14 80 [0m
2468 [93m9872[94m: swi R8 R14 -24 [0m
2469 [93m9876[94m: li R8 9892 [0m
2470 [93m9880[94m: swi R8 R14 -8 [0m
2471 [93m9884[94m: addi R14 R14 -180 [0m
2472 [93m9888[94m: jmp -6276 [0m
2473 [93m9892[94m: lwi R8 R14 -4 [0m
2474 [93m9896[94m: swi R8 R14 84 [0m
2475 [93m9900[94m: li R8 0 [0m
2476 [93m9904[94m: swi R8 R14 88 [0m
2477 [93m9908[94m: lwi R8 R14 88 [0m
2478 [93m9912[94m: swi R8 R14 16 [0m
2479 [93m9916[94m: lwi R11 R14 16 [0m
2480 [93m9920[94m: lwi R12 R14 308 [0m
2481 [93m9924[94m: addi R14 R14 320 [0m
2482 [93m9928[94m: lwi R6 R13 56 [0m
2483 [93m9932[94m: swi R5 R6 0 [0m
2484 [93m9936[94m: swi R7 R6 4 [0m
2485 [93m9940[94m: swi R8 R6 8 [0m
2486 [93m9944[94m: swi R9 R6 12 [0m
2487 [93m9948[94m: swi R10 R6 16 [0m
2488 [93m9952[94m: swi R12 R6 20 [0m
2489 [93m9956[94m: swi R14 R6 24 [0m
2490 [93m9960[94m: lwi R6 R13 84 [0m
2491 [93m9964[94m: lwi R5 R6 0 [0m
2492 [93m9968[94m: lwi R7 R6 4 [0m
2493 [93m9972[94m: lwi R8 R6 8 [0m
2494 [93m9976[94m: lwi R9 R6 12 [0m
2495 [93m9980[94m: lwi R10 R6 16 [0m
2496 [93m9984[94m: lwi R12 R6 20 [0m
2497 [93m9988[94m: lwi R14 R6 24 [0m
2498 [93m9992[94m: lwi R6 R13 48 [0m
2499 [93m9996[94m: swi R6 R13 44 [0m
2500 [93m10000[94m: lwi R3 R13 44 [0m
2501 [93m10004[94m: jmp 1868 [0m
2502 [93m10008[94m: li R8 0 [0m
2503 [93m10012[94m: swi R8 R14 92 [0m
2504 [93m10016[94m: lwi R8 R14 92 [0m
2505 [93m10020[94m: swi R8 R14 316 [0m
2506 [93m10024[94m: lwi R12 R14 308 [0m
2507 [93m10028[94m: li R8 10048 [0m
2508 [93m10032[94m: lwi R9 R14 312 [0m
2509 [93m10036[94m: sub R10 R9 R8 [0m
2510 [93m10040[94m: addi R14 R14 320 [0m
2511 [93m10044[94m: jr R10 [0m
2512 [93m10048[94m: jmp 0 [0m
2513 [93m10052[94m: lwi R8 R14 8 [0m
2514 [93m10056[94m: li R9 4 [0m
2515 [93m10060[94m: mul R10 R8 R9 [0m
2516 [93m10064[94m: swi R10 R14 96 [0m
2517 [93m10068[94m: lwi R8 R13 80 [0m
2518 [93m10072[94m: lwi R9 R14 96 [0m
2519 [93m10076[94m: add R10 R8 R9 [0m
2520 [93m10080[94m: swi R10 R14 100 [0m
2521 [93m10084[94m: lwi R8 R13 52 [0m
2522 [93m10088[94m: lwi R7 R14 100 [0m
2523 [93m10092[94m: swi R8 R7 0 [0m
2524 [93m10096[94m: lwi R8 R13 52 [0m
2525 [93m10100[94m: swi R8 R14 20 [0m
2526 [93m10104[94m: lwi R8 R13 52 [0m
2527 [93m10108[94m: li R9 1 [0m
2528 [93m10112[94m: add R10 R8 R9 [0m
2529 [93m10116[94m: swi R10 R13 52 [0m
2530 [93m10120[94m: li R8 0 [0m
2531 [93m10124[94m: swi R8 R14 104 [0m
2532 [93m10128[94m: lwi R8 R14 8 [0m
2533 [93m10132[94m: lwi R9 R14 104 [0m
2534 [93m10136[94m: eq R10 R8 R9 [0m
2535 [93m10140[94m: swi R10 R14 108 [0m
2536 [93m10144[94m: lwi R8 R14 108 [0m
2537 [93m10148[94m: cmp R8 R0 [0m
2538 [93m10152[94m: jeq 12 [0m
2539 [93m10156[94m: lwi R8 R13 56 [0m
2540 [93m10160[94m: swi R8 R14 24 [0m
2541 [93m10164[94m: jmp 192 [0m
2542 [93m10168[94m: li R8 1 [0m
2543 [93m10172[94m: swi R8 R14 112 [0m
2544 [93m10176[94m: lwi R8 R14 8 [0m
2545 [93m10180[94m: lwi R9 R14 112 [0m
2546 [93m10184[94m: eq R10 R8 R9 [0m
2547 [93m10188[94m: swi R10 R14 116 [0m
2548 [93m10192[94m: lwi R8 R14 116 [0m
2549 [93m10196[94m: cmp R8 R0 [0m
2550 [93m10200[94m: jeq 12 [0m
2551 [93m10204[94m: lwi R8 R13 60 [0m
2552 [93m10208[94m: swi R8 R14 24 [0m
2553 [93m10212[94m: jmp 144 [0m
2554 [93m10216[94m: li R8 2 [0m
2555 [93m10220[94m: swi R8 R14 120 [0m
2556 [93m10224[94m: lwi R8 R14 8 [0m
2557 [93m10228[94m: lwi R9 R14 120 [0m
2558 [93m10232[94m: eq R10 R8 R9 [0m
2559 [93m10236[94m: swi R10 R14 124 [0m
2560 [93m10240[94m: lwi R8 R14 124 [0m
2561 [93m10244[94m: cmp R8 R0 [0m
2562 [93m10248[94m: jeq 12 [0m
2563 [93m10252[94m: lwi R8 R13 64 [0m
2564 [93m10256[94m: swi R8 R14 24 [0m
2565 [93m10260[94m: jmp 96 [0m
2566 [93m10264[94m: li R8 3 [0m
2567 [93m10268[94m: swi R8 R14 128 [0m
2568 [93m10272[94m: lwi R8 R14 8 [0m
2569 [93m10276[94m: lwi R9 R14 128 [0m
2570 [93m10280[94m: eq R10 R8 R9 [0m
2571 [93m10284[94m: swi R10 R14 132 [0m
2572 [93m10288[94m: lwi R8 R14 132 [0m
2573 [93m10292[94m: cmp R8 R0 [0m
2574 [93m10296[94m: jeq 12 [0m
2575 [93m10300[94m: lwi R8 R13 68 [0m
2576 [93m10304[94m: swi R8 R14 24 [0m
2577 [93m10308[94m: jmp 48 [0m
2578 [93m10312[94m: li R8 4 [0m
2579 [93m10316[94m: swi R8 R14 136 [0m
2580 [93m10320[94m: lwi R8 R14 8 [0m
2581 [93m10324[94m: lwi R9 R14 136 [0m
2582 [93m10328[94m: eq R10 R8 R9 [0m
2583 [93m10332[94m: swi R10 R14 140 [0m
2584 [93m10336[94m: lwi R8 R14 140 [0m
2585 [93m10340[94m: cmp R8 R0 [0m
2586 [93m10344[94m: jeq 12 [0m
2587 [93m10348[94m: lwi R8 R13 72 [0m
2588 [93m10352[94m: swi R8 R14 24 [0m
2589 [93m10356[94m: jmp 0 [0m
2590 [93m10360[94m: li R8 1 [0m
2591 [93m10364[94m: swi R8 R14 144 [0m
2592 [93m10368[94m: lwi R8 R14 144 [0m
2593 [93m10372[94m: li R9 4 [0m
2594 [93m10376[94m: mul R10 R8 R9 [0m
2595 [93m10380[94m: swi R10 R14 148 [0m
2596 [93m10384[94m: lwi R8 R14 24 [0m
2597 [93m10388[94m: lwi R9 R14 148 [0m
2598 [93m10392[94m: add R10 R8 R9 [0m
2599 [93m10396[94m: swi R10 R14 152 [0m
2600 [93m10400[94m: li R8 0 [0m
2601 [93m10404[94m: swi R8 R14 156 [0m
2602 [93m10408[94m: lwi R8 R14 156 [0m
2603 [93m10412[94m: lwi R7 R14 152 [0m
2604 [93m10416[94m: swi R8 R7 0 [0m
2605 [93m10420[94m: li R8 2 [0m
2606 [93m10424[94m: swi R8 R14 160 [0m
2607 [93m10428[94m: lwi R8 R14 160 [0m
2608 [93m10432[94m: li R9 4 [0m
2609 [93m10436[94m: mul R10 R8 R9 [0m
2610 [93m10440[94m: swi R10 R14 164 [0m
2611 [93m10444[94m: lwi R8 R14 24 [0m
2612 [93m10448[94m: lwi R9 R14 164 [0m
2613 [93m10452[94m: add R10 R8 R9 [0m
2614 [93m10456[94m: swi R10 R14 168 [0m
2615 [93m10460[94m: li R8 0 [0m
2616 [93m10464[94m: swi R8 R14 172 [0m
2617 [93m10468[94m: lwi R8 R14 172 [0m
2618 [93m10472[94m: lwi R7 R14 168 [0m
2619 [93m10476[94m: swi R8 R7 0 [0m
2620 [93m10480[94m: li R8 3 [0m
2621 [93m10484[94m: swi R8 R14 176 [0m
2622 [93m10488[94m: lwi R8 R14 176 [0m
2623 [93m10492[94m: li R9 4 [0m
2624 [93m10496[94m: mul R10 R8 R9 [0m
2625 [93m10500[94m: swi R10 R14 180 [0m
2626 [93m10504[94m: lwi R8 R14 24 [0m
2627 [93m10508[94m: lwi R9 R14 180 [0m
2628 [93m10512[94m: add R10 R8 R9 [0m
2629 [93m10516[94m: swi R10 R14 184 [0m
2630 [93m10520[94m: li R8 0 [0m
2631 [93m10524[94m: swi R8 R14 188 [0m
2632 [93m10528[94m: lwi R8 R14 188 [0m
2633 [93m10532[94m: lwi R7 R14 184 [0m
2634 [93m10536[94m: swi R8 R7 0 [0m
2635 [93m10540[94m: li R8 4 [0m
2636 [93m10544[94m: swi R8 R14 192 [0m
2637 [93m10548[94m: lwi R8 R14 192 [0m
2638 [93m10552[94m: li R9 4 [0m
2639 [93m10556[94m: mul R10 R8 R9 [0m
2640 [93m10560[94m: swi R10 R14 196 [0m
2641 [93m10564[94m: lwi R8 R14 24 [0m
2642 [93m10568[94m: lwi R9 R14 196 [0m
2643 [93m10572[94m: add R10 R8 R9 [0m
2644 [93m10576[94m: swi R10 R14 200 [0m
2645 [93m10580[94m: li R8 0 [0m
2646 [93m10584[94m: swi R8 R14 204 [0m
2647 [93m10588[94m: lwi R8 R14 204 [0m
2648 [93m10592[94m: lwi R7 R14 200 [0m
2649 [93m10596[94m: swi R8 R7 0 [0m
2650 [93m10600[94m: li R8 5 [0m
2651 [93m10604[94m: swi R8 R14 208 [0m
2652 [93m10608[94m: lwi R8 R14 208 [0m
2653 [93m10612[94m: li R9 4 [0m
2654 [93m10616[94m: mul R10 R8 R9 [0m
2655 [93m10620[94m: swi R10 R14 212 [0m
2656 [93m10624[94m: lwi R8 R14 24 [0m
2657 [93m10628[94m: lwi R9 R14 212 [0m
2658 [93m10632[94m: add R10 R8 R9 [0m
2659 [93m10636[94m: swi R10 R14 216 [0m
2660 [93m10640[94m: li R8 55000 [0m
2661 [93m10644[94m: swi R8 R14 220 [0m
2662 [93m10648[94m: li R8 5000 [0m
2663 [93m10652[94m: swi R8 R14 224 [0m
2664 [93m10656[94m: lwi R8 R14 8 [0m
2665 [93m10660[94m: lwi R9 R14 224 [0m
2666 [93m10664[94m: mul R10 R8 R9 [0m
2667 [93m10668[94m: swi R10 R14 228 [0m
2668 [93m10672[94m: lwi R8 R14 220 [0m
2669 [93m10676[94m: lwi R9 R14 228 [0m
2670 [93m10680[94m: add R10 R8 R9 [0m
2671 [93m10684[94m: swi R10 R14 232 [0m
2672 [93m10688[94m: lwi R8 R14 232 [0m
2673 [93m10692[94m: lwi R7 R14 216 [0m
2674 [93m10696[94m: swi R8 R7 0 [0m
2675 [93m10700[94m: li R8 6 [0m
2676 [93m10704[94m: swi R8 R14 236 [0m
2677 [93m10708[94m: lwi R8 R14 236 [0m
2678 [93m10712[94m: li R9 4 [0m
2679 [93m10716[94m: mul R10 R8 R9 [0m
2680 [93m10720[94m: swi R10 R14 240 [0m
2681 [93m10724[94m: lwi R8 R14 24 [0m
2682 [93m10728[94m: lwi R9 R14 240 [0m
2683 [93m10732[94m: add R10 R8 R9 [0m
2684 [93m10736[94m: swi R10 R14 244 [0m
2685 [93m10740[94m: li R8 53000 [0m
2686 [93m10744[94m: swi R8 R14 248 [0m
2687 [93m10748[94m: li R8 5000 [0m
2688 [93m10752[94m: swi R8 R14 252 [0m
2689 [93m10756[94m: lwi R8 R14 8 [0m
2690 [93m10760[94m: lwi R9 R14 252 [0m
2691 [93m10764[94m: mul R10 R8 R9 [0m
2692 [93m10768[94m: swi R10 R14 256 [0m
2693 [93m10772[94m: lwi R8 R14 248 [0m
2694 [93m10776[94m: lwi R9 R14 256 [0m
2695 [93m10780[94m: add R10 R8 R9 [0m
2696 [93m10784[94m: swi R10 R14 260 [0m
2697 [93m10788[94m: lwi R8 R14 260 [0m
2698 [93m10792[94m: lwi R7 R14 244 [0m
2699 [93m10796[94m: swi R8 R7 0 [0m
2700 [93m10800[94m: li R8 1001 [0m
2701 [93m10804[94m: swi R8 R14 264 [0m
2702 [93m10808[94m: lwi R8 R14 0 [0m
2703 [93m10812[94m: lwi R9 R14 264 [0m
2704 [93m10816[94m: eq R10 R8 R9 [0m
2705 [93m10820[94m: swi R10 R14 268 [0m
2706 [93m10824[94m: lwi R8 R14 268 [0m
2707 [93m10828[94m: cmp R8 R0 [0m
2708 [93m10832[94m: jeq 48 [0m
2709 [93m10836[94m: lwi R7 R14 24 [0m
2710 [93m10840[94m: lwi R8 R7 24 [0m
2711 [93m10844[94m: li R6 6944 [0m
2712 [93m10848[94m: swi R6 R8 -8 [0m
2713 [93m10852[94m: li R6 68 [0m
2714 [93m10856[94m: sub R6 R8 R6 [0m
2715 [93m10860[94m: swi R6 R7 24 [0m
2716 [93m10864[94m: li R6 33072 [0m
2717 [93m10868[94m: li R8 9616 [0m
2718 [93m10872[94m: add R6 R6 R8 [0m
2719 [93m10876[94m: swi R6 R7 0 [0m
2720 [93m10880[94m: jmp 336 [0m
2721 [93m10884[94m: li R8 1002 [0m
2722 [93m10888[94m: swi R8 R14 272 [0m
2723 [93m10892[94m: lwi R8 R14 0 [0m
2724 [93m10896[94m: lwi R9 R14 272 [0m
2725 [93m10900[94m: eq R10 R8 R9 [0m
2726 [93m10904[94m: swi R10 R14 276 [0m
2727 [93m10908[94m: lwi R8 R14 276 [0m
2728 [93m10912[94m: cmp R8 R0 [0m
2729 [93m10916[94m: jeq 48 [0m
2730 [93m10920[94m: lwi R7 R14 24 [0m
2731 [93m10924[94m: lwi R8 R7 24 [0m
2732 [93m10928[94m: li R6 6944 [0m
2733 [93m10932[94m: swi R6 R8 -8 [0m
2734 [93m10936[94m: li R6 84 [0m
2735 [93m10940[94m: sub R6 R8 R6 [0m
2736 [93m10944[94m: swi R6 R7 24 [0m
2737 [93m10948[94m: li R6 15064 [0m
2738 [93m10952[94m: li R8 9616 [0m
2739 [93m10956[94m: add R6 R6 R8 [0m
2740 [93m10960[94m: swi R6 R7 0 [0m
2741 [93m10964[94m: jmp 252 [0m
2742 [93m10968[94m: li R8 1003 [0m
2743 [93m10972[94m: swi R8 R14 280 [0m
2744 [93m10976[94m: lwi R8 R14 0 [0m
2745 [93m10980[94m: lwi R9 R14 280 [0m
2746 [93m10984[94m: eq R10 R8 R9 [0m
2747 [93m10988[94m: swi R10 R14 284 [0m
2748 [93m10992[94m: lwi R8 R14 284 [0m
2749 [93m10996[94m: cmp R8 R0 [0m
2750 [93m11000[94m: jeq 48 [0m
2751 [93m11004[94m: lwi R7 R14 24 [0m
2752 [93m11008[94m: lwi R8 R7 24 [0m
2753 [93m11012[94m: li R6 6944 [0m
2754 [93m11016[94m: swi R6 R8 -8 [0m
2755 [93m11020[94m: li R6 92 [0m
2756 [93m11024[94m: sub R6 R8 R6 [0m
2757 [93m11028[94m: swi R6 R7 24 [0m
2758 [93m11032[94m: li R6 15392 [0m
2759 [93m11036[94m: li R8 9616 [0m
2760 [93m11040[94m: add R6 R6 R8 [0m
2761 [93m11044[94m: swi R6 R7 0 [0m
2762 [93m11048[94m: jmp 168 [0m
2763 [93m11052[94m: li R8 1004 [0m
2764 [93m11056[94m: swi R8 R14 288 [0m
2765 [93m11060[94m: lwi R8 R14 0 [0m
2766 [93m11064[94m: lwi R9 R14 288 [0m
2767 [93m11068[94m: eq R10 R8 R9 [0m
2768 [93m11072[94m: swi R10 R14 292 [0m
2769 [93m11076[94m: lwi R8 R14 292 [0m
2770 [93m11080[94m: cmp R8 R0 [0m
2771 [93m11084[94m: jeq 48 [0m
2772 [93m11088[94m: lwi R7 R14 24 [0m
2773 [93m11092[94m: lwi R8 R7 24 [0m
2774 [93m11096[94m: li R6 6944 [0m
2775 [93m11100[94m: swi R6 R8 -8 [0m
2776 [93m11104[94m: li R6 92 [0m
2777 [93m11108[94m: sub R6 R8 R6 [0m
2778 [93m11112[94m: swi R6 R7 24 [0m
2779 [93m11116[94m: li R6 15768 [0m
2780 [93m11120[94m: li R8 9616 [0m
2781 [93m11124[94m: add R6 R6 R8 [0m
2782 [93m11128[94m: swi R6 R7 0 [0m
2783 [93m11132[94m: jmp 84 [0m
2784 [93m11136[94m: li R8 1005 [0m
2785 [93m11140[94m: swi R8 R14 296 [0m
2786 [93m11144[94m: lwi R8 R14 0 [0m
2787 [93m11148[94m: lwi R9 R14 296 [0m
2788 [93m11152[94m: eq R10 R8 R9 [0m
2789 [93m11156[94m: swi R10 R14 300 [0m
2790 [93m11160[94m: lwi R8 R14 300 [0m
2791 [93m11164[94m: cmp R8 R0 [0m
2792 [93m11168[94m: jeq 48 [0m
2793 [93m11172[94m: lwi R7 R14 24 [0m
2794 [93m11176[94m: lwi R8 R7 24 [0m
2795 [93m11180[94m: li R6 6944 [0m
2796 [93m11184[94m: swi R6 R8 -8 [0m
2797 [93m11188[94m: li R6 92 [0m
2798 [93m11192[94m: sub R6 R8 R6 [0m
2799 [93m11196[94m: swi R6 R7 24 [0m
2800 [93m11200[94m: li R6 16144 [0m
2801 [93m11204[94m: li R8 9616 [0m
2802 [93m11208[94m: add R6 R6 R8 [0m
2803 [93m11212[94m: swi R6 R7 0 [0m
2804 [93m11216[94m: jmp 0 [0m
2805 [93m11220[94m: lwi R11 R14 20 [0m
2806 [93m11224[94m: lwi R12 R14 308 [0m
2807 [93m11228[94m: addi R14 R14 320 [0m
2808 [93m11232[94m: lwi R6 R13 56 [0m
2809 [93m11236[94m: swi R5 R6 0 [0m
2810 [93m11240[94m: swi R7 R6 4 [0m
2811 [93m11244[94m: swi R8 R6 8 [0m
2812 [93m11248[94m: swi R9 R6 12 [0m
2813 [93m11252[94m: swi R10 R6 16 [0m
2814 [93m11256[94m: swi R12 R6 20 [0m
2815 [93m11260[94m: swi R14 R6 24 [0m
2816 [93m11264[94m: lwi R6 R13 84 [0m
2817 [93m11268[94m: lwi R5 R6 0 [0m
2818 [93m11272[94m: lwi R7 R6 4 [0m
2819 [93m11276[94m: lwi R8 R6 8 [0m
2820 [93m11280[94m: lwi R9 R6 12 [0m
2821 [93m11284[94m: lwi R10 R6 16 [0m
2822 [93m11288[94m: lwi R12 R6 20 [0m
2823 [93m11292[94m: lwi R14 R6 24 [0m
2824 [93m11296[94m: lwi R6 R13 48 [0m
2825 [93m11300[94m: swi R6 R13 44 [0m
2826 [93m11304[94m: lwi R3 R13 44 [0m
2827 [93m11308[94m: jmp 564 [0m
2828 [93m11312[94m: li R8 0 [0m
2829 [93m11316[94m: swi R8 R14 304 [0m
2830 [93m11320[94m: lwi R8 R14 304 [0m
2831 [93m11324[94m: swi R8 R14 316 [0m
2832 [93m11328[94m: lwi R12 R14 308 [0m
2833 [93m11332[94m: li R8 11352 [0m
2834 [93m11336[94m: lwi R9 R14 312 [0m
2835 [93m11340[94m: sub R10 R9 R8 [0m
2836 [93m11344[94m: addi R14 R14 320 [0m
2837 [93m11348[94m: jr R10 [0m
2838 [93m11352[94m: swi R12 R14 88 [0m
2839 [93m11356[94m: lwi R8 R13 44 [0m
2840 [93m11360[94m: swi R8 R13 48 [0m
2841 [93m11364[94m: li R8 10 [0m
2842 [93m11368[94m: swi R8 R14 12 [0m
2843 [93m11372[94m: lwi R8 R14 12 [0m
2844 [93m11376[94m: swi R8 R14 0 [0m
2845 [93m11380[94m: li R8 0 [0m
2846 [93m11384[94m: swi R8 R14 16 [0m
2847 [93m11388[94m: lwi R8 R14 16 [0m
2848 [93m11392[94m: swi R8 R14 4 [0m
2849 [93m11396[94m: li R8 5 [0m
2850 [93m11400[94m: swi R8 R14 20 [0m
2851 [93m11404[94m: lwi R8 R14 4 [0m
2852 [93m11408[94m: lwi R9 R14 20 [0m
2853 [93m11412[94m: lt R10 R8 R9 [0m
2854 [93m11416[94m: swi R10 R14 24 [0m
2855 [93m11420[94m: lwi R8 R14 24 [0m
2856 [93m11424[94m: cmp R8 R0 [0m
2857 [93m11428[94m: jeq 116 [0m
2858 [93m11432[94m: jmp 28 [0m
2859 [93m11436[94m: lwi R8 R14 4 [0m
2860 [93m11440[94m: swi R8 R14 28 [0m
2861 [93m11444[94m: lwi R8 R14 4 [0m
2862 [93m11448[94m: li R9 1 [0m
2863 [93m11452[94m: add R10 R8 R9 [0m
2864 [93m11456[94m: swi R10 R14 4 [0m
2865 [93m11460[94m: jmp -68 [0m
2866 [93m11464[94m: lwi R8 R14 4 [0m
2867 [93m11468[94m: li R9 4 [0m
2868 [93m11472[94m: mul R10 R8 R9 [0m
2869 [93m11476[94m: swi R10 R14 32 [0m
2870 [93m11480[94m: lwi R8 R13 80 [0m
2871 [93m11484[94m: lwi R9 R14 32 [0m
2872 [93m11488[94m: add R10 R8 R9 [0m
2873 [93m11492[94m: swi R10 R14 36 [0m
2874 [93m11496[94m: lwi R8 R14 36 [0m
2875 [93m11500[94m: lwi R8 R8 0 [0m
2876 [93m11504[94m: lwi R9 R13 44 [0m
2877 [93m11508[94m: eq R10 R8 R9 [0m
2878 [93m11512[94m: swi R10 R14 40 [0m
2879 [93m11516[94m: lwi R8 R14 40 [0m
2880 [93m11520[94m: cmp R8 R0 [0m
2881 [93m11524[94m: jeq 16 [0m
2882 [93m11528[94m: lwi R8 R14 4 [0m
2883 [93m11532[94m: swi R8 R14 0 [0m
2884 [93m11536[94m: jmp 8 [0m
2885 [93m11540[94m: jmp 0 [0m
2886 [93m11544[94m: jmp -112 [0m
2887 [93m11548[94m: li R8 0 [0m
2888 [93m11552[94m: swi R8 R14 44 [0m
2889 [93m11556[94m: lwi R8 R14 0 [0m
2890 [93m11560[94m: lwi R9 R14 44 [0m
2891 [93m11564[94m: eq R10 R8 R9 [0m
2892 [93m11568[94m: swi R10 R14 48 [0m
2893 [93m11572[94m: lwi R8 R14 48 [0m
2894 [93m11576[94m: cmp R8 R0 [0m
2895 [93m11580[94m: jeq 12 [0m
2896 [93m11584[94m: lwi R8 R13 56 [0m
2897 [93m11588[94m: swi R8 R13 84 [0m
2898 [93m11592[94m: jmp 192 [0m
2899 [93m11596[94m: li R8 1 [0m
2900 [93m11600[94m: swi R8 R14 52 [0m
2901 [93m11604[94m: lwi R8 R14 0 [0m
2902 [93m11608[94m: lwi R9 R14 52 [0m
2903 [93m11612[94m: eq R10 R8 R9 [0m
2904 [93m11616[94m: swi R10 R14 56 [0m
2905 [93m11620[94m: lwi R8 R14 56 [0m
2906 [93m11624[94m: cmp R8 R0 [0m
2907 [93m11628[94m: jeq 12 [0m
2908 [93m11632[94m: lwi R8 R13 60 [0m
2909 [93m11636[94m: swi R8 R13 84 [0m
2910 [93m11640[94m: jmp 144 [0m
2911 [93m11644[94m: li R8 2 [0m
2912 [93m11648[94m: swi R8 R14 60 [0m
2913 [93m11652[94m: lwi R8 R14 0 [0m
2914 [93m11656[94m: lwi R9 R14 60 [0m
2915 [93m11660[94m: eq R10 R8 R9 [0m
2916 [93m11664[94m: swi R10 R14 64 [0m
2917 [93m11668[94m: lwi R8 R14 64 [0m
2918 [93m11672[94m: cmp R8 R0 [0m
2919 [93m11676[94m: jeq 12 [0m
2920 [93m11680[94m: lwi R8 R13 64 [0m
2921 [93m11684[94m: swi R8 R13 84 [0m
2922 [93m11688[94m: jmp 96 [0m
2923 [93m11692[94m: li R8 3 [0m
2924 [93m11696[94m: swi R8 R14 68 [0m
2925 [93m11700[94m: lwi R8 R14 0 [0m
2926 [93m11704[94m: lwi R9 R14 68 [0m
2927 [93m11708[94m: eq R10 R8 R9 [0m
2928 [93m11712[94m: swi R10 R14 72 [0m
2929 [93m11716[94m: lwi R8 R14 72 [0m
2930 [93m11720[94m: cmp R8 R0 [0m
2931 [93m11724[94m: jeq 12 [0m
2932 [93m11728[94m: lwi R8 R13 68 [0m
2933 [93m11732[94m: swi R8 R13 84 [0m
2934 [93m11736[94m: jmp 48 [0m
2935 [93m11740[94m: li R8 4 [0m
2936 [93m11744[94m: swi R8 R14 76 [0m
2937 [93m11748[94m: lwi R8 R14 0 [0m
2938 [93m11752[94m: lwi R9 R14 76 [0m
2939 [93m11756[94m: eq R10 R8 R9 [0m
2940 [93m11760[94m: swi R10 R14 80 [0m
2941 [93m11764[94m: lwi R8 R14 80 [0m
2942 [93m11768[94m: cmp R8 R0 [0m
2943 [93m11772[94m: jeq 12 [0m
2944 [93m11776[94m: lwi R8 R13 72 [0m
2945 [93m11780[94m: swi R8 R13 84 [0m
2946 [93m11784[94m: jmp 0 [0m
2947 [93m11788[94m: li R6 1 [0m
2948 [93m11792[94m: swi R6 R13 44 [0m
2949 [93m11796[94m: lwi R3 R13 44 [0m
2950 [93m11800[94m: lwi R11 R14 84 [0m
2951 [93m11804[94m: lwi R6 R13 84 [0m
2952 [93m11808[94m: swi R5 R6 0 [0m
2953 [93m11812[94m: swi R7 R6 4 [0m
2954 [93m11816[94m: swi R8 R6 8 [0m
2955 [93m11820[94m: swi R9 R6 12 [0m
2956 [93m11824[94m: swi R10 R6 16 [0m
2957 [93m11828[94m: swi R12 R6 20 [0m
2958 [93m11832[94m: swi R14 R6 24 [0m
2959 [93m11836[94m: lwi R6 R13 56 [0m
2960 [93m11840[94m: lwi R5 R6 0 [0m
2961 [93m11844[94m: lwi R7 R6 4 [0m
2962 [93m11848[94m: lwi R8 R6 8 [0m
2963 [93m11852[94m: lwi R9 R6 12 [0m
2964 [93m11856[94m: lwi R10 R6 16 [0m
2965 [93m11860[94m: lwi R12 R6 20 [0m
2966 [93m11864[94m: lwi R14 R6 24 [0m
2967 [93m11868[94m: addi R14 R14 -320 [0m
2968 [93m11872[94m: jmp -2656 [0m
2969 [93m11876[94m: swi R11 R14 8 [0m
2970 [93m11880[94m: lwi R8 R14 8 [0m
2971 [93m11884[94m: swi R8 R14 96 [0m
2972 [93m11888[94m: lwi R12 R14 88 [0m
2973 [93m11892[94m: li R8 11912 [0m
2974 [93m11896[94m: lwi R9 R14 92 [0m
2975 [93m11900[94m: sub R10 R9 R8 [0m
2976 [93m11904[94m: addi R14 R14 100 [0m
2977 [93m11908[94m: jr R10 [0m
2978 [93m11912[94m: swi R12 R14 436 [0m
2979 [93m11916[94m: lwi R2 R13 44 [0m
2980 [93m11920[94m: li R1 1 [0m
2981 [93m11924[94m: cmp R1 R2 [0m
2982 [93m11928[94m: jne 12 [0m
2983 [93m11932[94m: li R2 21560 [0m
2984 [93m11936[94m: sub R5 R5 R2 [0m
2985 [93m11940[94m: jri R5 [0m
2986 [93m11944[94m: lwi R11 R13 44 [0m
2987 [93m11948[94m: li R6 1 [0m
2988 [93m11952[94m: swi R6 R13 44 [0m
2989 [93m11956[94m: lwi R3 R13 44 [0m
2990 [93m11960[94m: lwi R6 R13 76 [0m
2991 [93m11964[94m: swi R5 R6 0 [0m
2992 [93m11968[94m: swi R7 R6 4 [0m
2993 [93m11972[94m: swi R8 R6 8 [0m
2994 [93m11976[94m: swi R9 R6 12 [0m
2995 [93m11980[94m: swi R10 R6 16 [0m
2996 [93m11984[94m: swi R12 R6 20 [0m
2997 [93m11988[94m: swi R14 R6 24 [0m
2998 [93m11992[94m: lwi R6 R13 56 [0m
2999 [93m11996[94m: lwi R5 R6 0 [0m
3000 [93m12000[94m: lwi R7 R6 4 [0m
3001 [93m12004[94m: lwi R8 R6 8 [0m
3002 [93m12008[94m: lwi R9 R6 12 [0m
3003 [93m12012[94m: lwi R10 R6 16 [0m
3004 [93m12016[94m: lwi R12 R6 20 [0m
3005 [93m12020[94m: lwi R14 R6 24 [0m
3006 [93m12024[94m: addi R14 R14 -448 [0m
3007 [93m12028[94m: swi R12 R14 436 [0m
3008 [93m12032[94m: swi R11 R14 0 [0m
3009 [93m12036[94m: li R8 10 [0m
3010 [93m12040[94m: swi R8 R14 36 [0m
3011 [93m12044[94m: lwi R8 R14 36 [0m
3012 [93m12048[94m: swi R8 R14 4 [0m
3013 [93m12052[94m: li R8 1 [0m
3014 [93m12056[94m: swi R8 R14 40 [0m
3015 [93m12060[94m: lwi R8 R14 40 [0m
3016 [93m12064[94m: swi R8 R14 8 [0m
3017 [93m12068[94m: li R8 5 [0m
3018 [93m12072[94m: swi R8 R14 44 [0m
3019 [93m12076[94m: lwi R8 R14 8 [0m
3020 [93m12080[94m: lwi R9 R14 44 [0m
3021 [93m12084[94m: lt R10 R8 R9 [0m
3022 [93m12088[94m: swi R10 R14 48 [0m
3023 [93m12092[94m: lwi R8 R14 48 [0m
3024 [93m12096[94m: cmp R8 R0 [0m
3025 [93m12100[94m: jeq 112 [0m
3026 [93m12104[94m: jmp 28 [0m
3027 [93m12108[94m: lwi R8 R14 8 [0m
3028 [93m12112[94m: swi R8 R14 52 [0m
3029 [93m12116[94m: lwi R8 R14 8 [0m
3030 [93m12120[94m: li R9 1 [0m
3031 [93m12124[94m: add R10 R8 R9 [0m
3032 [93m12128[94m: swi R10 R14 8 [0m
3033 [93m12132[94m: jmp -68 [0m
3034 [93m12136[94m: lwi R8 R14 8 [0m
3035 [93m12140[94m: li R9 4 [0m
3036 [93m12144[94m: mul R10 R8 R9 [0m
3037 [93m12148[94m: swi R10 R14 56 [0m
3038 [93m12152[94m: lwi R8 R13 80 [0m
3039 [93m12156[94m: lwi R9 R14 56 [0m
3040 [93m12160[94m: add R10 R8 R9 [0m
3041 [93m12164[94m: swi R10 R14 60 [0m
3042 [93m12168[94m: lwi R8 R14 0 [0m
3043 [93m12172[94m: lwi R9 R14 60 [0m
3044 [93m12176[94m: lwi R9 R9 0 [0m
3045 [93m12180[94m: eq R10 R8 R9 [0m
3046 [93m12184[94m: swi R10 R14 64 [0m
3047 [93m12188[94m: lwi R8 R14 64 [0m
3048 [93m12192[94m: cmp R8 R0 [0m
3049 [93m12196[94m: jeq 12 [0m
3050 [93m12200[94m: lwi R8 R14 8 [0m
3051 [93m12204[94m: swi R8 R14 4 [0m
3052 [93m12208[94m: jmp 0 [0m
3053 [93m12212[94m: jmp -108 [0m
3054 [93m12216[94m: li R8 1 [0m
3055 [93m12220[94m: swi R8 R14 68 [0m
3056 [93m12224[94m: lwi R8 R14 4 [0m
3057 [93m12228[94m: lwi R9 R14 68 [0m
3058 [93m12232[94m: eq R10 R8 R9 [0m
3059 [93m12236[94m: swi R10 R14 72 [0m
3060 [93m12240[94m: lwi R8 R14 72 [0m
3061 [93m12244[94m: cmp R8 R0 [0m
3062 [93m12248[94m: jeq 12 [0m
3063 [93m12252[94m: lwi R8 R13 60 [0m
3064 [93m12256[94m: swi R8 R13 84 [0m
3065 [93m12260[94m: jmp 144 [0m
3066 [93m12264[94m: li R8 2 [0m
3067 [93m12268[94m: swi R8 R14 76 [0m
3068 [93m12272[94m: lwi R8 R14 4 [0m
3069 [93m12276[94m: lwi R9 R14 76 [0m
3070 [93m12280[94m: eq R10 R8 R9 [0m
3071 [93m12284[94m: swi R10 R14 80 [0m
3072 [93m12288[94m: lwi R8 R14 80 [0m
3073 [93m12292[94m: cmp R8 R0 [0m
3074 [93m12296[94m: jeq 12 [0m
3075 [93m12300[94m: lwi R8 R13 64 [0m
3076 [93m12304[94m: swi R8 R13 84 [0m
3077 [93m12308[94m: jmp 96 [0m
3078 [93m12312[94m: li R8 3 [0m
3079 [93m12316[94m: swi R8 R14 84 [0m
3080 [93m12320[94m: lwi R8 R14 4 [0m
3081 [93m12324[94m: lwi R9 R14 84 [0m
3082 [93m12328[94m: eq R10 R8 R9 [0m
3083 [93m12332[94m: swi R10 R14 88 [0m
3084 [93m12336[94m: lwi R8 R14 88 [0m
3085 [93m12340[94m: cmp R8 R0 [0m
3086 [93m12344[94m: jeq 12 [0m
3087 [93m12348[94m: lwi R8 R13 68 [0m
3088 [93m12352[94m: swi R8 R13 84 [0m
3089 [93m12356[94m: jmp 48 [0m
3090 [93m12360[94m: li R8 4 [0m
3091 [93m12364[94m: swi R8 R14 92 [0m
3092 [93m12368[94m: lwi R8 R14 4 [0m
3093 [93m12372[94m: lwi R9 R14 92 [0m
3094 [93m12376[94m: eq R10 R8 R9 [0m
3095 [93m12380[94m: swi R10 R14 96 [0m
3096 [93m12384[94m: lwi R8 R14 96 [0m
3097 [93m12388[94m: cmp R8 R0 [0m
3098 [93m12392[94m: jeq 12 [0m
3099 [93m12396[94m: lwi R8 R13 72 [0m
3100 [93m12400[94m: swi R8 R13 84 [0m
3101 [93m12404[94m: jmp 0 [0m
3102 [93m12408[94m: li R8 0 [0m
3103 [93m12412[94m: swi R8 R14 100 [0m
3104 [93m12416[94m: lwi R8 R14 100 [0m
3105 [93m12420[94m: li R9 4 [0m
3106 [93m12424[94m: mul R10 R8 R9 [0m
3107 [93m12428[94m: swi R10 R14 104 [0m
3108 [93m12432[94m: lwi R8 R13 84 [0m
3109 [93m12436[94m: lwi R9 R14 104 [0m
3110 [93m12440[94m: add R10 R8 R9 [0m
3111 [93m12444[94m: swi R10 R14 108 [0m
3112 [93m12448[94m: li R8 0 [0m
3113 [93m12452[94m: swi R8 R14 112 [0m
3114 [93m12456[94m: lwi R8 R14 112 [0m
3115 [93m12460[94m: li R9 4 [0m
3116 [93m12464[94m: mul R10 R8 R9 [0m
3117 [93m12468[94m: swi R10 R14 116 [0m
3118 [93m12472[94m: lwi R8 R13 76 [0m
3119 [93m12476[94m: lwi R9 R14 116 [0m
3120 [93m12480[94m: add R10 R8 R9 [0m
3121 [93m12484[94m: swi R10 R14 120 [0m
3122 [93m12488[94m: lwi R8 R14 120 [0m
3123 [93m12492[94m: lwi R8 R8 0 [0m
3124 [93m12496[94m: lwi R7 R14 108 [0m
3125 [93m12500[94m: swi R8 R7 0 [0m
3126 [93m12504[94m: li R8 1 [0m
3127 [93m12508[94m: swi R8 R14 124 [0m
3128 [93m12512[94m: lwi R8 R14 124 [0m
3129 [93m12516[94m: li R9 4 [0m
3130 [93m12520[94m: mul R10 R8 R9 [0m
3131 [93m12524[94m: swi R10 R14 128 [0m
3132 [93m12528[94m: lwi R8 R13 84 [0m
3133 [93m12532[94m: lwi R9 R14 128 [0m
3134 [93m12536[94m: add R10 R8 R9 [0m
3135 [93m12540[94m: swi R10 R14 132 [0m
3136 [93m12544[94m: li R8 1 [0m
3137 [93m12548[94m: swi R8 R14 136 [0m
3138 [93m12552[94m: lwi R8 R14 136 [0m
3139 [93m12556[94m: li R9 4 [0m
3140 [93m12560[94m: mul R10 R8 R9 [0m
3141 [93m12564[94m: swi R10 R14 140 [0m
3142 [93m12568[94m: lwi R8 R13 76 [0m
3143 [93m12572[94m: lwi R9 R14 140 [0m
3144 [93m12576[94m: add R10 R8 R9 [0m
3145 [93m12580[94m: swi R10 R14 144 [0m
3146 [93m12584[94m: lwi R8 R14 144 [0m
3147 [93m12588[94m: lwi R8 R8 0 [0m
3148 [93m12592[94m: lwi R7 R14 132 [0m
3149 [93m12596[94m: swi R8 R7 0 [0m
3150 [93m12600[94m: li R8 2 [0m
3151 [93m12604[94m: swi R8 R14 148 [0m
3152 [93m12608[94m: lwi R8 R14 148 [0m
3153 [93m12612[94m: li R9 4 [0m
3154 [93m12616[94m: mul R10 R8 R9 [0m
3155 [93m12620[94m: swi R10 R14 152 [0m
3156 [93m12624[94m: lwi R8 R13 84 [0m
3157 [93m12628[94m: lwi R9 R14 152 [0m
3158 [93m12632[94m: add R10 R8 R9 [0m
3159 [93m12636[94m: swi R10 R14 156 [0m
3160 [93m12640[94m: li R8 2 [0m
3161 [93m12644[94m: swi R8 R14 160 [0m
3162 [93m12648[94m: lwi R8 R14 160 [0m
3163 [93m12652[94m: li R9 4 [0m
3164 [93m12656[94m: mul R10 R8 R9 [0m
3165 [93m12660[94m: swi R10 R14 164 [0m
3166 [93m12664[94m: lwi R8 R13 76 [0m
3167 [93m12668[94m: lwi R9 R14 164 [0m
3168 [93m12672[94m: add R10 R8 R9 [0m
3169 [93m12676[94m: swi R10 R14 168 [0m
3170 [93m12680[94m: lwi R8 R14 168 [0m
3171 [93m12684[94m: lwi R8 R8 0 [0m
3172 [93m12688[94m: lwi R7 R14 156 [0m
3173 [93m12692[94m: swi R8 R7 0 [0m
3174 [93m12696[94m: li R8 3 [0m
3175 [93m12700[94m: swi R8 R14 172 [0m
3176 [93m12704[94m: lwi R8 R14 172 [0m
3177 [93m12708[94m: li R9 4 [0m
3178 [93m12712[94m: mul R10 R8 R9 [0m
3179 [93m12716[94m: swi R10 R14 176 [0m
3180 [93m12720[94m: lwi R8 R13 84 [0m
3181 [93m12724[94m: lwi R9 R14 176 [0m
3182 [93m12728[94m: add R10 R8 R9 [0m
3183 [93m12732[94m: swi R10 R14 180 [0m
3184 [93m12736[94m: li R8 3 [0m
3185 [93m12740[94m: swi R8 R14 184 [0m
3186 [93m12744[94m: lwi R8 R14 184 [0m
3187 [93m12748[94m: li R9 4 [0m
3188 [93m12752[94m: mul R10 R8 R9 [0m
3189 [93m12756[94m: swi R10 R14 188 [0m
3190 [93m12760[94m: lwi R8 R13 76 [0m
3191 [93m12764[94m: lwi R9 R14 188 [0m
3192 [93m12768[94m: add R10 R8 R9 [0m
3193 [93m12772[94m: swi R10 R14 192 [0m
3194 [93m12776[94m: lwi R8 R14 192 [0m
3195 [93m12780[94m: lwi R8 R8 0 [0m
3196 [93m12784[94m: lwi R7 R14 180 [0m
3197 [93m12788[94m: swi R8 R7 0 [0m
3198 [93m12792[94m: li R8 4 [0m
3199 [93m12796[94m: swi R8 R14 196 [0m
3200 [93m12800[94m: lwi R8 R14 196 [0m
3201 [93m12804[94m: li R9 4 [0m
3202 [93m12808[94m: mul R10 R8 R9 [0m
3203 [93m12812[94m: swi R10 R14 200 [0m
3204 [93m12816[94m: lwi R8 R13 84 [0m
3205 [93m12820[94m: lwi R9 R14 200 [0m
3206 [93m12824[94m: add R10 R8 R9 [0m
3207 [93m12828[94m: swi R10 R14 204 [0m
3208 [93m12832[94m: li R8 4 [0m
3209 [93m12836[94m: swi R8 R14 208 [0m
3210 [93m12840[94m: lwi R8 R14 208 [0m
3211 [93m12844[94m: li R9 4 [0m
3212 [93m12848[94m: mul R10 R8 R9 [0m
3213 [93m12852[94m: swi R10 R14 212 [0m
3214 [93m12856[94m: lwi R8 R13 76 [0m
3215 [93m12860[94m: lwi R9 R14 212 [0m
3216 [93m12864[94m: add R10 R8 R9 [0m
3217 [93m12868[94m: swi R10 R14 216 [0m
3218 [93m12872[94m: lwi R8 R14 216 [0m
3219 [93m12876[94m: lwi R8 R8 0 [0m
3220 [93m12880[94m: lwi R7 R14 204 [0m
3221 [93m12884[94m: swi R8 R7 0 [0m
3222 [93m12888[94m: li R8 5 [0m
3223 [93m12892[94m: swi R8 R14 220 [0m
3224 [93m12896[94m: lwi R8 R14 220 [0m
3225 [93m12900[94m: li R9 4 [0m
3226 [93m12904[94m: mul R10 R8 R9 [0m
3227 [93m12908[94m: swi R10 R14 224 [0m
3228 [93m12912[94m: lwi R8 R13 84 [0m
3229 [93m12916[94m: lwi R9 R14 224 [0m
3230 [93m12920[94m: add R10 R8 R9 [0m
3231 [93m12924[94m: swi R10 R14 228 [0m
3232 [93m12928[94m: li R8 5 [0m
3233 [93m12932[94m: swi R8 R14 232 [0m
3234 [93m12936[94m: lwi R8 R14 232 [0m
3235 [93m12940[94m: li R9 4 [0m
3236 [93m12944[94m: mul R10 R8 R9 [0m
3237 [93m12948[94m: swi R10 R14 236 [0m
3238 [93m12952[94m: lwi R8 R13 76 [0m
3239 [93m12956[94m: lwi R9 R14 236 [0m
3240 [93m12960[94m: add R10 R8 R9 [0m
3241 [93m12964[94m: swi R10 R14 240 [0m
3242 [93m12968[94m: lwi R8 R14 240 [0m
3243 [93m12972[94m: lwi R8 R8 0 [0m
3244 [93m12976[94m: lwi R7 R14 228 [0m
3245 [93m12980[94m: swi R8 R7 0 [0m
3246 [93m12984[94m: li R8 6 [0m
3247 [93m12988[94m: swi R8 R14 244 [0m
3248 [93m12992[94m: lwi R8 R14 244 [0m
3249 [93m12996[94m: li R9 4 [0m
3250 [93m13000[94m: mul R10 R8 R9 [0m
3251 [93m13004[94m: swi R10 R14 248 [0m
3252 [93m13008[94m: lwi R8 R13 84 [0m
3253 [93m13012[94m: lwi R9 R14 248 [0m
3254 [93m13016[94m: add R10 R8 R9 [0m
3255 [93m13020[94m: swi R10 R14 252 [0m
3256 [93m13024[94m: li R8 6 [0m
3257 [93m13028[94m: swi R8 R14 256 [0m
3258 [93m13032[94m: lwi R8 R14 256 [0m
3259 [93m13036[94m: li R9 4 [0m
3260 [93m13040[94m: mul R10 R8 R9 [0m
3261 [93m13044[94m: swi R10 R14 260 [0m
3262 [93m13048[94m: lwi R8 R13 76 [0m
3263 [93m13052[94m: lwi R9 R14 260 [0m
3264 [93m13056[94m: add R10 R8 R9 [0m
3265 [93m13060[94m: swi R10 R14 264 [0m
3266 [93m13064[94m: lwi R8 R14 264 [0m
3267 [93m13068[94m: lwi R8 R8 0 [0m
3268 [93m13072[94m: lwi R7 R14 252 [0m
3269 [93m13076[94m: swi R8 R7 0 [0m
3270 [93m13080[94m: li R8 10 [0m
3271 [93m13084[94m: swi R8 R14 268 [0m
3272 [93m13088[94m: lwi R8 R14 4 [0m
3273 [93m13092[94m: lwi R9 R14 268 [0m
3274 [93m13096[94m: eq R10 R8 R9 [0m
3275 [93m13100[94m: swi R10 R14 272 [0m
3276 [93m13104[94m: lwi R8 R14 272 [0m
3277 [93m13108[94m: cmp R8 R0 [0m
3278 [93m13112[94m: jeq 416 [0m
3279 [93m13116[94m: subi R12 R12 40 [0m
3280 [93m13120[94m: li R8 83 [0m
3281 [93m13124[94m: sbi R8 R12 0 [0m
3282 [93m13128[94m: li R8 111 [0m
3283 [93m13132[94m: sbi R8 R12 1 [0m
3284 [93m13136[94m: li R8 109 [0m
3285 [93m13140[94m: sbi R8 R12 2 [0m
3286 [93m13144[94m: li R8 101 [0m
3287 [93m13148[94m: sbi R8 R12 3 [0m
3288 [93m13152[94m: li R8 32 [0m
3289 [93m13156[94m: sbi R8 R12 4 [0m
3290 [93m13160[94m: li R8 112 [0m
3291 [93m13164[94m: sbi R8 R12 5 [0m
3292 [93m13168[94m: li R8 114 [0m
3293 [93m13172[94m: sbi R8 R12 6 [0m
3294 [93m13176[94m: li R8 111 [0m
3295 [93m13180[94m: sbi R8 R12 7 [0m
3296 [93m13184[94m: li R8 98 [0m
3297 [93m13188[94m: sbi R8 R12 8 [0m
3298 [93m13192[94m: li R8 108 [0m
3299 [93m13196[94m: sbi R8 R12 9 [0m
3300 [93m13200[94m: li R8 101 [0m
3301 [93m13204[94m: sbi R8 R12 10 [0m
3302 [93m13208[94m: li R8 109 [0m
3303 [93m13212[94m: sbi R8 R12 11 [0m
3304 [93m13216[94m: li R8 32 [0m
3305 [93m13220[94m: sbi R8 R12 12 [0m
3306 [93m13224[94m: li R8 111 [0m
3307 [93m13228[94m: sbi R8 R12 13 [0m
3308 [93m13232[94m: li R8 99 [0m
3309 [93m13236[94m: sbi R8 R12 14 [0m
3310 [93m13240[94m: li R8 99 [0m
3311 [93m13244[94m: sbi R8 R12 15 [0m
3312 [93m13248[94m: li R8 117 [0m
3313 [93m13252[94m: sbi R8 R12 16 [0m
3314 [93m13256[94m: li R8 114 [0m
3315 [93m13260[94m: sbi R8 R12 17 [0m
3316 [93m13264[94m: li R8 101 [0m
3317 [93m13268[94m: sbi R8 R12 18 [0m
3318 [93m13272[94m: li R8 100 [0m
3319 [93m13276[94m: sbi R8 R12 19 [0m
3320 [93m13280[94m: li R8 44 [0m
3321 [93m13284[94m: sbi R8 R12 20 [0m
3322 [93m13288[94m: li R8 32 [0m
3323 [93m13292[94m: sbi R8 R12 21 [0m
3324 [93m13296[94m: li R8 115 [0m
3325 [93m13300[94m: sbi R8 R12 22 [0m
3326 [93m13304[94m: li R8 121 [0m
3327 [93m13308[94m: sbi R8 R12 23 [0m
3328 [93m13312[94m: li R8 115 [0m
3329 [93m13316[94m: sbi R8 R12 24 [0m
3330 [93m13320[94m: li R8 116 [0m
3331 [93m13324[94m: sbi R8 R12 25 [0m
3332 [93m13328[94m: li R8 101 [0m
3333 [93m13332[94m: sbi R8 R12 26 [0m
3334 [93m13336[94m: li R8 109 [0m
3335 [93m13340[94m: sbi R8 R12 27 [0m
3336 [93m13344[94m: li R8 32 [0m
3337 [93m13348[94m: sbi R8 R12 28 [0m
3338 [93m13352[94m: li R8 99 [0m
3339 [93m13356[94m: sbi R8 R12 29 [0m
3340 [93m13360[94m: li R8 114 [0m
3341 [93m13364[94m: sbi R8 R12 30 [0m
3342 [93m13368[94m: li R8 97 [0m
3343 [93m13372[94m: sbi R8 R12 31 [0m
3344 [93m13376[94m: li R8 115 [0m
3345 [93m13380[94m: sbi R8 R12 32 [0m
3346 [93m13384[94m: li R8 104 [0m
3347 [93m13388[94m: sbi R8 R12 33 [0m
3348 [93m13392[94m: li R8 105 [0m
3349 [93m13396[94m: sbi R8 R12 34 [0m
3350 [93m13400[94m: li R8 110 [0m
3351 [93m13404[94m: sbi R8 R12 35 [0m
3352 [93m13408[94m: li R8 103 [0m
3353 [93m13412[94m: sbi R8 R12 36 [0m
3354 [93m13416[94m: sbi R0 R12 37 [0m
3355 [93m13420[94m: swi R12 R14 276 [0m
3356 [93m13424[94m: lwi R8 R14 276 [0m
3357 [93m13428[94m: swi R8 R14 12 [0m
3358 [93m13432[94m: lwi R8 R14 12 [0m
3359 [93m13436[94m: swi R8 R14 -16 [0m
3360 [93m13440[94m: li R8 13456 [0m
3361 [93m13444[94m: swi R8 R14 -8 [0m
3362 [93m13448[94m: addi R14 R14 -52 [0m
3363 [93m13452[94m: jmp -13272 [0m
3364 [93m13456[94m: lwi R8 R14 -4 [0m
3365 [93m13460[94m: swi R8 R14 280 [0m
3366 [93m13464[94m: lwi R8 R14 280 [0m
3367 [93m13468[94m: swi R8 R14 16 [0m
3368 [93m13472[94m: lwi R8 R14 12 [0m
3369 [93m13476[94m: swi R8 R14 -16 [0m
3370 [93m13480[94m: lwi R8 R14 16 [0m
3371 [93m13484[94m: swi R8 R14 -20 [0m
3372 [93m13488[94m: li R8 1 [0m
3373 [93m13492[94m: swi R8 R14 284 [0m
3374 [93m13496[94m: lwi R8 R14 284 [0m
3375 [93m13500[94m: swi R8 R14 -24 [0m
3376 [93m13504[94m: li R8 13520 [0m
3377 [93m13508[94m: swi R8 R14 -8 [0m
3378 [93m13512[94m: addi R14 R14 -180 [0m
3379 [93m13516[94m: jmp -9904 [0m
3380 [93m13520[94m: lwi R8 R14 -4 [0m
3381 [93m13524[94m: swi R8 R14 288 [0m
3382 [93m13528[94m: jmp 0 [0m
3383 [93m13532[94m: li R8 10 [0m
3384 [93m13536[94m: swi R8 R14 292 [0m
3385 [93m13540[94m: lwi R8 R14 292 [0m
3386 [93m13544[94m: swi R8 R14 20 [0m
3387 [93m13548[94m: li R8 1 [0m
3388 [93m13552[94m: swi R8 R14 296 [0m
3389 [93m13556[94m: lwi R8 R14 4 [0m
3390 [93m13560[94m: lwi R9 R14 296 [0m
3391 [93m13564[94m: add R10 R8 R9 [0m
3392 [93m13568[94m: swi R10 R14 300 [0m
3393 [93m13572[94m: lwi R8 R14 300 [0m
3394 [93m13576[94m: swi R8 R14 8 [0m
3395 [93m13580[94m: li R8 5 [0m
3396 [93m13584[94m: swi R8 R14 304 [0m
3397 [93m13588[94m: lwi R8 R14 8 [0m
3398 [93m13592[94m: lwi R9 R14 304 [0m
3399 [93m13596[94m: lt R10 R8 R9 [0m
3400 [93m13600[94m: swi R10 R14 308 [0m
3401 [93m13604[94m: lwi R8 R14 308 [0m
3402 [93m13608[94m: cmp R8 R0 [0m
3403 [93m13612[94m: jeq 124 [0m
3404 [93m13616[94m: jmp 28 [0m
3405 [93m13620[94m: lwi R8 R14 8 [0m
3406 [93m13624[94m: swi R8 R14 312 [0m
3407 [93m13628[94m: lwi R8 R14 8 [0m
3408 [93m13632[94m: li R9 1 [0m
3409 [93m13636[94m: add R10 R8 R9 [0m
3410 [93m13640[94m: swi R10 R14 8 [0m
3411 [93m13644[94m: jmp -68 [0m
3412 [93m13648[94m: lwi R8 R14 8 [0m
3413 [93m13652[94m: li R9 4 [0m
3414 [93m13656[94m: mul R10 R8 R9 [0m
3415 [93m13660[94m: swi R10 R14 316 [0m
3416 [93m13664[94m: lwi R8 R13 80 [0m
3417 [93m13668[94m: lwi R9 R14 316 [0m
3418 [93m13672[94m: add R10 R8 R9 [0m
3419 [93m13676[94m: swi R10 R14 320 [0m
3420 [93m13680[94m: li R8 0 [0m
3421 [93m13684[94m: swi R8 R14 324 [0m
3422 [93m13688[94m: lwi R8 R14 320 [0m
3423 [93m13692[94m: lwi R8 R8 0 [0m
3424 [93m13696[94m: lwi R9 R14 324 [0m
3425 [93m13700[94m: neq R10 R8 R9 [0m
3426 [93m13704[94m: swi R10 R14 328 [0m
3427 [93m13708[94m: lwi R8 R14 328 [0m
3428 [93m13712[94m: cmp R8 R0 [0m
3429 [93m13716[94m: jeq 16 [0m
3430 [93m13720[94m: lwi R8 R14 8 [0m
3431 [93m13724[94m: swi R8 R14 20 [0m
3432 [93m13728[94m: jmp 8 [0m
3433 [93m13732[94m: jmp 0 [0m
3434 [93m13736[94m: jmp -120 [0m
3435 [93m13740[94m: li R8 10 [0m
3436 [93m13744[94m: swi R8 R14 332 [0m
3437 [93m13748[94m: lwi R8 R14 20 [0m
3438 [93m13752[94m: lwi R9 R14 332 [0m
3439 [93m13756[94m: eq R10 R8 R9 [0m
3440 [93m13760[94m: swi R10 R14 336 [0m
3441 [93m13764[94m: lwi R8 R14 336 [0m
3442 [93m13768[94m: cmp R8 R0 [0m
3443 [93m13772[94m: jeq 172 [0m
3444 [93m13776[94m: li R8 1 [0m
3445 [93m13780[94m: swi R8 R14 340 [0m
3446 [93m13784[94m: lwi R8 R14 340 [0m
3447 [93m13788[94m: swi R8 R14 8 [0m
3448 [93m13792[94m: lwi R8 R14 8 [0m
3449 [93m13796[94m: lwi R9 R14 4 [0m
3450 [93m13800[94m: le R10 R8 R9 [0m
3451 [93m13804[94m: swi R10 R14 344 [0m
3452 [93m13808[94m: lwi R8 R14 344 [0m
3453 [93m13812[94m: cmp R8 R0 [0m
3454 [93m13816[94m: jeq 124 [0m
3455 [93m13820[94m: jmp 28 [0m
3456 [93m13824[94m: lwi R8 R14 8 [0m
3457 [93m13828[94m: swi R8 R14 348 [0m
3458 [93m13832[94m: lwi R8 R14 8 [0m
3459 [93m13836[94m: li R9 1 [0m
3460 [93m13840[94m: add R10 R8 R9 [0m
3461 [93m13844[94m: swi R10 R14 8 [0m
3462 [93m13848[94m: jmp -60 [0m
3463 [93m13852[94m: lwi R8 R14 8 [0m
3464 [93m13856[94m: li R9 4 [0m
3465 [93m13860[94m: mul R10 R8 R9 [0m
3466 [93m13864[94m: swi R10 R14 352 [0m
3467 [93m13868[94m: lwi R8 R13 80 [0m
3468 [93m13872[94m: lwi R9 R14 352 [0m
3469 [93m13876[94m: add R10 R8 R9 [0m
3470 [93m13880[94m: swi R10 R14 356 [0m
3471 [93m13884[94m: li R8 0 [0m
3472 [93m13888[94m: swi R8 R14 360 [0m
3473 [93m13892[94m: lwi R8 R14 356 [0m
3474 [93m13896[94m: lwi R8 R8 0 [0m
3475 [93m13900[94m: lwi R9 R14 360 [0m
3476 [93m13904[94m: neq R10 R8 R9 [0m
3477 [93m13908[94m: swi R10 R14 364 [0m
3478 [93m13912[94m: lwi R8 R14 364 [0m
3479 [93m13916[94m: cmp R8 R0 [0m
3480 [93m13920[94m: jeq 16 [0m
3481 [93m13924[94m: lwi R8 R14 8 [0m
3482 [93m13928[94m: swi R8 R14 20 [0m
3483 [93m13932[94m: jmp 8 [0m
3484 [93m13936[94m: jmp 0 [0m
3485 [93m13940[94m: jmp -120 [0m
3486 [93m13944[94m: jmp 0 [0m
3487 [93m13948[94m: li R8 10 [0m
3488 [93m13952[94m: swi R8 R14 368 [0m
3489 [93m13956[94m: lwi R8 R14 20 [0m
3490 [93m13960[94m: lwi R9 R14 368 [0m
3491 [93m13964[94m: eq R10 R8 R9 [0m
3492 [93m13968[94m: swi R10 R14 372 [0m
3493 [93m13972[94m: lwi R8 R14 372 [0m
3494 [93m13976[94m: cmp R8 R0 [0m
3495 [93m13980[94m: jeq 416 [0m
3496 [93m13984[94m: subi R12 R12 40 [0m
3497 [93m13988[94m: li R8 83 [0m
3498 [93m13992[94m: sbi R8 R12 0 [0m
3499 [93m13996[94m: li R8 111 [0m
3500 [93m14000[94m: sbi R8 R12 1 [0m
3501 [93m14004[94m: li R8 109 [0m
3502 [93m14008[94m: sbi R8 R12 2 [0m
3503 [93m14012[94m: li R8 101 [0m
3504 [93m14016[94m: sbi R8 R12 3 [0m
3505 [93m14020[94m: li R8 32 [0m
3506 [93m14024[94m: sbi R8 R12 4 [0m
3507 [93m14028[94m: li R8 112 [0m
3508 [93m14032[94m: sbi R8 R12 5 [0m
3509 [93m14036[94m: li R8 114 [0m
3510 [93m14040[94m: sbi R8 R12 6 [0m
3511 [93m14044[94m: li R8 111 [0m
3512 [93m14048[94m: sbi R8 R12 7 [0m
3513 [93m14052[94m: li R8 98 [0m
3514 [93m14056[94m: sbi R8 R12 8 [0m
3515 [93m14060[94m: li R8 108 [0m
3516 [93m14064[94m: sbi R8 R12 9 [0m
3517 [93m14068[94m: li R8 101 [0m
3518 [93m14072[94m: sbi R8 R12 10 [0m
3519 [93m14076[94m: li R8 109 [0m
3520 [93m14080[94m: sbi R8 R12 11 [0m
3521 [93m14084[94m: li R8 32 [0m
3522 [93m14088[94m: sbi R8 R12 12 [0m
3523 [93m14092[94m: li R8 111 [0m
3524 [93m14096[94m: sbi R8 R12 13 [0m
3525 [93m14100[94m: li R8 99 [0m
3526 [93m14104[94m: sbi R8 R12 14 [0m
3527 [93m14108[94m: li R8 99 [0m
3528 [93m14112[94m: sbi R8 R12 15 [0m
3529 [93m14116[94m: li R8 117 [0m
3530 [93m14120[94m: sbi R8 R12 16 [0m
3531 [93m14124[94m: li R8 114 [0m
3532 [93m14128[94m: sbi R8 R12 17 [0m
3533 [93m14132[94m: li R8 101 [0m
3534 [93m14136[94m: sbi R8 R12 18 [0m
3535 [93m14140[94m: li R8 100 [0m
3536 [93m14144[94m: sbi R8 R12 19 [0m
3537 [93m14148[94m: li R8 44 [0m
3538 [93m14152[94m: sbi R8 R12 20 [0m
3539 [93m14156[94m: li R8 32 [0m
3540 [93m14160[94m: sbi R8 R12 21 [0m
3541 [93m14164[94m: li R8 115 [0m
3542 [93m14168[94m: sbi R8 R12 22 [0m
3543 [93m14172[94m: li R8 121 [0m
3544 [93m14176[94m: sbi R8 R12 23 [0m
3545 [93m14180[94m: li R8 115 [0m
3546 [93m14184[94m: sbi R8 R12 24 [0m
3547 [93m14188[94m: li R8 116 [0m
3548 [93m14192[94m: sbi R8 R12 25 [0m
3549 [93m14196[94m: li R8 101 [0m
3550 [93m14200[94m: sbi R8 R12 26 [0m
3551 [93m14204[94m: li R8 109 [0m
3552 [93m14208[94m: sbi R8 R12 27 [0m
3553 [93m14212[94m: li R8 32 [0m
3554 [93m14216[94m: sbi R8 R12 28 [0m
3555 [93m14220[94m: li R8 99 [0m
3556 [93m14224[94m: sbi R8 R12 29 [0m
3557 [93m14228[94m: li R8 114 [0m
3558 [93m14232[94m: sbi R8 R12 30 [0m
3559 [93m14236[94m: li R8 97 [0m
3560 [93m14240[94m: sbi R8 R12 31 [0m
3561 [93m14244[94m: li R8 115 [0m
3562 [93m14248[94m: sbi R8 R12 32 [0m
3563 [93m14252[94m: li R8 104 [0m
3564 [93m14256[94m: sbi R8 R12 33 [0m
3565 [93m14260[94m: li R8 105 [0m
3566 [93m14264[94m: sbi R8 R12 34 [0m
3567 [93m14268[94m: li R8 110 [0m
3568 [93m14272[94m: sbi R8 R12 35 [0m
3569 [93m14276[94m: li R8 103 [0m
3570 [93m14280[94m: sbi R8 R12 36 [0m
3571 [93m14284[94m: sbi R0 R12 37 [0m
3572 [93m14288[94m: swi R12 R14 376 [0m
3573 [93m14292[94m: lwi R8 R14 376 [0m
3574 [93m14296[94m: swi R8 R14 12 [0m
3575 [93m14300[94m: lwi R8 R14 12 [0m
3576 [93m14304[94m: swi R8 R14 -16 [0m
3577 [93m14308[94m: li R8 14324 [0m
3578 [93m14312[94m: swi R8 R14 -8 [0m
3579 [93m14316[94m: addi R14 R14 -52 [0m
3580 [93m14320[94m: jmp -14140 [0m
3581 [93m14324[94m: lwi R8 R14 -4 [0m
3582 [93m14328[94m: swi R8 R14 380 [0m
3583 [93m14332[94m: lwi R8 R14 380 [0m
3584 [93m14336[94m: swi R8 R14 16 [0m
3585 [93m14340[94m: lwi R8 R14 12 [0m
3586 [93m14344[94m: swi R8 R14 -16 [0m
3587 [93m14348[94m: lwi R8 R14 16 [0m
3588 [93m14352[94m: swi R8 R14 -20 [0m
3589 [93m14356[94m: li R8 1 [0m
3590 [93m14360[94m: swi R8 R14 384 [0m
3591 [93m14364[94m: lwi R8 R14 384 [0m
3592 [93m14368[94m: swi R8 R14 -24 [0m
3593 [93m14372[94m: li R8 14388 [0m
3594 [93m14376[94m: swi R8 R14 -8 [0m
3595 [93m14380[94m: addi R14 R14 -180 [0m
3596 [93m14384[94m: jmp -10772 [0m
3597 [93m14388[94m: lwi R8 R14 -4 [0m
3598 [93m14392[94m: swi R8 R14 388 [0m
3599 [93m14396[94m: jmp 0 [0m
3600 [93m14400[94m: lwi R8 R14 20 [0m
3601 [93m14404[94m: li R9 4 [0m
3602 [93m14408[94m: mul R10 R8 R9 [0m
3603 [93m14412[94m: swi R10 R14 392 [0m
3604 [93m14416[94m: lwi R8 R13 80 [0m
3605 [93m14420[94m: lwi R9 R14 392 [0m
3606 [93m14424[94m: add R10 R8 R9 [0m
3607 [93m14428[94m: swi R10 R14 396 [0m
3608 [93m14432[94m: lwi R8 R14 396 [0m
3609 [93m14436[94m: lwi R8 R8 0 [0m
3610 [93m14440[94m: swi R8 R14 32 [0m
3611 [93m14444[94m: lwi R11 R14 32 [0m
3612 [93m14448[94m: li R8 1 [0m
3613 [93m14452[94m: swi R8 R14 400 [0m
3614 [93m14456[94m: lwi R8 R14 20 [0m
3615 [93m14460[94m: lwi R9 R14 400 [0m
3616 [93m14464[94m: eq R10 R8 R9 [0m
3617 [93m14468[94m: swi R10 R14 404 [0m
3618 [93m14472[94m: lwi R8 R14 404 [0m
3619 [93m14476[94m: cmp R8 R0 [0m
3620 [93m14480[94m: jeq 108 [0m
3621 [93m14484[94m: lwi R12 R14 436 [0m
3622 [93m14488[94m: addi R14 R14 448 [0m
3623 [93m14492[94m: lwi R6 R13 56 [0m
3624 [93m14496[94m: swi R5 R6 0 [0m
3625 [93m14500[94m: swi R7 R6 4 [0m
3626 [93m14504[94m: swi R8 R6 8 [0m
3627 [93m14508[94m: swi R9 R6 12 [0m
3628 [93m14512[94m: swi R10 R6 16 [0m
3629 [93m14516[94m: swi R12 R6 20 [0m
3630 [93m14520[94m: swi R14 R6 24 [0m
3631 [93m14524[94m: lwi R6 R13 60 [0m
3632 [93m14528[94m: lwi R5 R6 0 [0m
3633 [93m14532[94m: lwi R7 R6 4 [0m
3634 [93m14536[94m: lwi R8 R6 8 [0m
3635 [93m14540[94m: lwi R9 R6 12 [0m
3636 [93m14544[94m: lwi R10 R6 16 [0m
3637 [93m14548[94m: lwi R12 R6 20 [0m
3638 [93m14552[94m: lwi R14 R6 24 [0m
3639 [93m14556[94m: swi R11 R13 44 [0m
3640 [93m14560[94m: lwi R3 R13 44 [0m
3641 [93m14564[94m: li R6 14584 [0m
3642 [93m14568[94m: li R15 9612 [0m
3643 [93m14572[94m: add R6 R6 R15 [0m
3644 [93m14576[94m: addi R6 R6 8 [0m
3645 [93m14580[94m: sub R5 R5 R6 [0m
3646 [93m14584[94m: jri R5 [0m
3647 [93m14588[94m: jmp 432 [0m
3648 [93m14592[94m: li R8 2 [0m
3649 [93m14596[94m: swi R8 R14 408 [0m
3650 [93m14600[94m: lwi R8 R14 20 [0m
3651 [93m14604[94m: lwi R9 R14 408 [0m
3652 [93m14608[94m: eq R10 R8 R9 [0m
3653 [93m14612[94m: swi R10 R14 412 [0m
3654 [93m14616[94m: lwi R8 R14 412 [0m
3655 [93m14620[94m: cmp R8 R0 [0m
3656 [93m14624[94m: jeq 108 [0m
3657 [93m14628[94m: lwi R12 R14 436 [0m
3658 [93m14632[94m: addi R14 R14 448 [0m
3659 [93m14636[94m: lwi R6 R13 56 [0m
3660 [93m14640[94m: swi R5 R6 0 [0m
3661 [93m14644[94m: swi R7 R6 4 [0m
3662 [93m14648[94m: swi R8 R6 8 [0m
3663 [93m14652[94m: swi R9 R6 12 [0m
3664 [93m14656[94m: swi R10 R6 16 [0m
3665 [93m14660[94m: swi R12 R6 20 [0m
3666 [93m14664[94m: swi R14 R6 24 [0m
3667 [93m14668[94m: lwi R6 R13 64 [0m
3668 [93m14672[94m: lwi R5 R6 0 [0m
3669 [93m14676[94m: lwi R7 R6 4 [0m
3670 [93m14680[94m: lwi R8 R6 8 [0m
3671 [93m14684[94m: lwi R9 R6 12 [0m
3672 [93m14688[94m: lwi R10 R6 16 [0m
3673 [93m14692[94m: lwi R12 R6 20 [0m
3674 [93m14696[94m: lwi R14 R6 24 [0m
3675 [93m14700[94m: swi R11 R13 44 [0m
3676 [93m14704[94m: lwi R3 R13 44 [0m
3677 [93m14708[94m: li R6 14728 [0m
3678 [93m14712[94m: li R15 9612 [0m
3679 [93m14716[94m: add R6 R6 R15 [0m
3680 [93m14720[94m: addi R6 R6 8 [0m
3681 [93m14724[94m: sub R5 R5 R6 [0m
3682 [93m14728[94m: jri R5 [0m
3683 [93m14732[94m: jmp 288 [0m
3684 [93m14736[94m: li R8 3 [0m
3685 [93m14740[94m: swi R8 R14 416 [0m
3686 [93m14744[94m: lwi R8 R14 20 [0m
3687 [93m14748[94m: lwi R9 R14 416 [0m
3688 [93m14752[94m: eq R10 R8 R9 [0m
3689 [93m14756[94m: swi R10 R14 420 [0m
3690 [93m14760[94m: lwi R8 R14 420 [0m
3691 [93m14764[94m: cmp R8 R0 [0m
3692 [93m14768[94m: jeq 108 [0m
3693 [93m14772[94m: lwi R12 R14 436 [0m
3694 [93m14776[94m: addi R14 R14 448 [0m
3695 [93m14780[94m: lwi R6 R13 56 [0m
3696 [93m14784[94m: swi R5 R6 0 [0m
3697 [93m14788[94m: swi R7 R6 4 [0m
3698 [93m14792[94m: swi R8 R6 8 [0m
3699 [93m14796[94m: swi R9 R6 12 [0m
3700 [93m14800[94m: swi R10 R6 16 [0m
3701 [93m14804[94m: swi R12 R6 20 [0m
3702 [93m14808[94m: swi R14 R6 24 [0m
3703 [93m14812[94m: lwi R6 R13 68 [0m
3704 [93m14816[94m: lwi R5 R6 0 [0m
3705 [93m14820[94m: lwi R7 R6 4 [0m
3706 [93m14824[94m: lwi R8 R6 8 [0m
3707 [93m14828[94m: lwi R9 R6 12 [0m
3708 [93m14832[94m: lwi R10 R6 16 [0m
3709 [93m14836[94m: lwi R12 R6 20 [0m
3710 [93m14840[94m: lwi R14 R6 24 [0m
3711 [93m14844[94m: swi R11 R13 44 [0m
3712 [93m14848[94m: lwi R3 R13 44 [0m
3713 [93m14852[94m: li R6 14872 [0m
3714 [93m14856[94m: li R15 9612 [0m
3715 [93m14860[94m: add R6 R6 R15 [0m
3716 [93m14864[94m: addi R6 R6 8 [0m
3717 [93m14868[94m: sub R5 R5 R6 [0m
3718 [93m14872[94m: jri R5 [0m
3719 [93m14876[94m: jmp 144 [0m
3720 [93m14880[94m: li R8 4 [0m
3721 [93m14884[94m: swi R8 R14 424 [0m
3722 [93m14888[94m: lwi R8 R14 20 [0m
3723 [93m14892[94m: lwi R9 R14 424 [0m
3724 [93m14896[94m: eq R10 R8 R9 [0m
3725 [93m14900[94m: swi R10 R14 428 [0m
3726 [93m14904[94m: lwi R8 R14 428 [0m
3727 [93m14908[94m: cmp R8 R0 [0m
3728 [93m14912[94m: jeq 108 [0m
3729 [93m14916[94m: lwi R12 R14 436 [0m
3730 [93m14920[94m: addi R14 R14 448 [0m
3731 [93m14924[94m: lwi R6 R13 56 [0m
3732 [93m14928[94m: swi R5 R6 0 [0m
3733 [93m14932[94m: swi R7 R6 4 [0m
3734 [93m14936[94m: swi R8 R6 8 [0m
3735 [93m14940[94m: swi R9 R6 12 [0m
3736 [93m14944[94m: swi R10 R6 16 [0m
3737 [93m14948[94m: swi R12 R6 20 [0m
3738 [93m14952[94m: swi R14 R6 24 [0m
3739 [93m14956[94m: lwi R6 R13 72 [0m
3740 [93m14960[94m: lwi R5 R6 0 [0m
3741 [93m14964[94m: lwi R7 R6 4 [0m
3742 [93m14968[94m: lwi R8 R6 8 [0m
3743 [93m14972[94m: lwi R9 R6 12 [0m
3744 [93m14976[94m: lwi R10 R6 16 [0m
3745 [93m14980[94m: lwi R12 R6 20 [0m
3746 [93m14984[94m: lwi R14 R6 24 [0m
3747 [93m14988[94m: swi R11 R13 44 [0m
3748 [93m14992[94m: lwi R3 R13 44 [0m
3749 [93m14996[94m: li R6 15016 [0m
3750 [93m15000[94m: li R15 9612 [0m
3751 [93m15004[94m: add R6 R6 R15 [0m
3752 [93m15008[94m: addi R6 R6 8 [0m
3753 [93m15012[94m: sub R5 R5 R6 [0m
3754 [93m15016[94m: jri R5 [0m
3755 [93m15020[94m: jmp 0 [0m
3756 [93m15024[94m: li R8 0 [0m
3757 [93m15028[94m: swi R8 R14 432 [0m
3758 [93m15032[94m: lwi R8 R14 432 [0m
3759 [93m15036[94m: swi R8 R14 444 [0m
3760 [93m15040[94m: lwi R12 R14 436 [0m
3761 [93m15044[94m: li R8 15064 [0m
3762 [93m15048[94m: lwi R9 R14 440 [0m
3763 [93m15052[94m: sub R10 R9 R8 [0m
3764 [93m15056[94m: addi R14 R14 448 [0m
3765 [93m15060[94m: jr R10 [0m
3766 [93m15064[94m: swi R12 R14 72 [0m
3767 [93m15068[94m: subi R12 R12 4 [0m
3768 [93m15072[94m: li R8 97 [0m
3769 [93m15076[94m: sbi R8 R12 0 [0m
3770 [93m15080[94m: sbi R0 R12 1 [0m
3771 [93m15084[94m: swi R12 R14 16 [0m
3772 [93m15088[94m: lwi R8 R14 16 [0m
3773 [93m15092[94m: swi R8 R14 12 [0m
3774 [93m15096[94m: li R8 0 [0m
3775 [93m15100[94m: swi R8 R14 20 [0m
3776 [93m15104[94m: lwi R8 R14 20 [0m
3777 [93m15108[94m: swi R8 R14 0 [0m
3778 [93m15112[94m: li R8 10 [0m
3779 [93m15116[94m: swi R8 R14 24 [0m
3780 [93m15120[94m: lwi R8 R14 0 [0m
3781 [93m15124[94m: lwi R9 R14 24 [0m
3782 [93m15128[94m: lt R10 R8 R9 [0m
3783 [93m15132[94m: swi R10 R14 28 [0m
3784 [93m15136[94m: lwi R8 R14 28 [0m
3785 [93m15140[94m: cmp R8 R0 [0m
3786 [93m15144[94m: jeq 204 [0m
3787 [93m15148[94m: jmp 28 [0m
3788 [93m15152[94m: lwi R8 R14 0 [0m
3789 [93m15156[94m: swi R8 R14 32 [0m
3790 [93m15160[94m: lwi R8 R14 0 [0m
3791 [93m15164[94m: li R9 1 [0m
3792 [93m15168[94m: add R10 R8 R9 [0m
3793 [93m15172[94m: swi R10 R14 0 [0m
3794 [93m15176[94m: jmp -68 [0m
3795 [93m15180[94m: li R8 0 [0m
3796 [93m15184[94m: swi R8 R14 36 [0m
3797 [93m15188[94m: lwi R8 R14 36 [0m
3798 [93m15192[94m: swi R8 R14 8 [0m
3799 [93m15196[94m: li R8 10000 [0m
3800 [93m15200[94m: swi R8 R14 40 [0m
3801 [93m15204[94m: lwi R8 R14 8 [0m
3802 [93m15208[94m: lwi R9 R14 40 [0m
3803 [93m15212[94m: lt R10 R8 R9 [0m
3804 [93m15216[94m: swi R10 R14 44 [0m
3805 [93m15220[94m: lwi R8 R14 44 [0m
3806 [93m15224[94m: cmp R8 R0 [0m
3807 [93m15228[94m: jeq 52 [0m
3808 [93m15232[94m: jmp 28 [0m
3809 [93m15236[94m: lwi R8 R14 8 [0m
3810 [93m15240[94m: swi R8 R14 48 [0m
3811 [93m15244[94m: lwi R8 R14 8 [0m
3812 [93m15248[94m: li R9 1 [0m
3813 [93m15252[94m: add R10 R8 R9 [0m
3814 [93m15256[94m: swi R10 R14 8 [0m
3815 [93m15260[94m: jmp -68 [0m
3816 [93m15264[94m: li R8 0 [0m
3817 [93m15268[94m: swi R8 R14 52 [0m
3818 [93m15272[94m: lwi R8 R14 52 [0m
3819 [93m15276[94m: swi R8 R14 4 [0m
3820 [93m15280[94m: jmp -48 [0m
3821 [93m15284[94m: lwi R8 R14 12 [0m
3822 [93m15288[94m: swi R8 R14 -16 [0m
3823 [93m15292[94m: li R8 1 [0m
3824 [93m15296[94m: swi R8 R14 56 [0m
3825 [93m15300[94m: lwi R8 R14 56 [0m
3826 [93m15304[94m: swi R8 R14 -20 [0m
3827 [93m15308[94m: li R8 0 [0m
3828 [93m15312[94m: swi R8 R14 60 [0m
3829 [93m15316[94m: lwi R8 R14 60 [0m
3830 [93m15320[94m: swi R8 R14 -24 [0m
3831 [93m15324[94m: li R8 15340 [0m
3832 [93m15328[94m: swi R8 R14 -8 [0m
3833 [93m15332[94m: addi R14 R14 -180 [0m
3834 [93m15336[94m: jmp -11724 [0m
3835 [93m15340[94m: lwi R8 R14 -4 [0m
3836 [93m15344[94m: swi R8 R14 64 [0m
3837 [93m15348[94m: jmp -200 [0m
3838 [93m15352[94m: li R8 0 [0m
3839 [93m15356[94m: swi R8 R14 68 [0m
3840 [93m15360[94m: lwi R8 R14 68 [0m
3841 [93m15364[94m: swi R8 R14 80 [0m
3842 [93m15368[94m: lwi R12 R14 72 [0m
3843 [93m15372[94m: li R8 15392 [0m
3844 [93m15376[94m: lwi R9 R14 76 [0m
3845 [93m15380[94m: sub R10 R9 R8 [0m
3846 [93m15384[94m: addi R14 R14 84 [0m
3847 [93m15388[94m: jr R10 [0m
3848 [93m15392[94m: swi R12 R14 80 [0m
3849 [93m15396[94m: subi R12 R12 4 [0m
3850 [93m15400[94m: li R8 98 [0m
3851 [93m15404[94m: sbi R8 R12 0 [0m
3852 [93m15408[94m: sbi R0 R12 1 [0m
3853 [93m15412[94m: swi R12 R14 16 [0m
3854 [93m15416[94m: lwi R8 R14 16 [0m
3855 [93m15420[94m: swi R8 R14 4 [0m
3856 [93m15424[94m: li R8 0 [0m
3857 [93m15428[94m: swi R8 R14 20 [0m
3858 [93m15432[94m: lwi R8 R14 20 [0m
3859 [93m15436[94m: swi R8 R14 0 [0m
3860 [93m15440[94m: li R8 100 [0m
3861 [93m15444[94m: swi R8 R14 24 [0m
3862 [93m15448[94m: lwi R8 R14 0 [0m
3863 [93m15452[94m: lwi R9 R14 24 [0m
3864 [93m15456[94m: lt R10 R8 R9 [0m
3865 [93m15460[94m: swi R10 R14 28 [0m
3866 [93m15464[94m: lwi R8 R14 28 [0m
3867 [93m15468[94m: cmp R8 R0 [0m
3868 [93m15472[94m: jeq 204 [0m
3869 [93m15476[94m: jmp 28 [0m
3870 [93m15480[94m: lwi R8 R14 0 [0m
3871 [93m15484[94m: swi R8 R14 32 [0m
3872 [93m15488[94m: lwi R8 R14 0 [0m
3873 [93m15492[94m: li R9 1 [0m
3874 [93m15496[94m: add R10 R8 R9 [0m
3875 [93m15500[94m: swi R10 R14 0 [0m
3876 [93m15504[94m: jmp -68 [0m
3877 [93m15508[94m: li R8 0 [0m
3878 [93m15512[94m: swi R8 R14 36 [0m
3879 [93m15516[94m: lwi R8 R14 36 [0m
3880 [93m15520[94m: swi R8 R14 12 [0m
3881 [93m15524[94m: li R8 10000 [0m
3882 [93m15528[94m: swi R8 R14 40 [0m
3883 [93m15532[94m: lwi R8 R14 12 [0m
3884 [93m15536[94m: lwi R9 R14 40 [0m
3885 [93m15540[94m: lt R10 R8 R9 [0m
3886 [93m15544[94m: swi R10 R14 44 [0m
3887 [93m15548[94m: lwi R8 R14 44 [0m
3888 [93m15552[94m: cmp R8 R0 [0m
3889 [93m15556[94m: jeq 52 [0m
3890 [93m15560[94m: jmp 28 [0m
3891 [93m15564[94m: lwi R8 R14 12 [0m
3892 [93m15568[94m: swi R8 R14 48 [0m
3893 [93m15572[94m: lwi R8 R14 12 [0m
3894 [93m15576[94m: li R9 1 [0m
3895 [93m15580[94m: add R10 R8 R9 [0m
3896 [93m15584[94m: swi R10 R14 12 [0m
3897 [93m15588[94m: jmp -68 [0m
3898 [93m15592[94m: li R8 0 [0m
3899 [93m15596[94m: swi R8 R14 52 [0m
3900 [93m15600[94m: lwi R8 R14 52 [0m
3901 [93m15604[94m: swi R8 R14 8 [0m
3902 [93m15608[94m: jmp -48 [0m
3903 [93m15612[94m: lwi R8 R14 4 [0m
3904 [93m15616[94m: swi R8 R14 -16 [0m
3905 [93m15620[94m: li R8 1 [0m
3906 [93m15624[94m: swi R8 R14 56 [0m
3907 [93m15628[94m: lwi R8 R14 56 [0m
3908 [93m15632[94m: swi R8 R14 -20 [0m
3909 [93m15636[94m: li R8 0 [0m
3910 [93m15640[94m: swi R8 R14 60 [0m
3911 [93m15644[94m: lwi R8 R14 60 [0m
3912 [93m15648[94m: swi R8 R14 -24 [0m
3913 [93m15652[94m: li R8 15668 [0m
3914 [93m15656[94m: swi R8 R14 -8 [0m
3915 [93m15660[94m: addi R14 R14 -180 [0m
3916 [93m15664[94m: jmp -12052 [0m
3917 [93m15668[94m: lwi R8 R14 -4 [0m
3918 [93m15672[94m: swi R8 R14 64 [0m
3919 [93m15676[94m: jmp -200 [0m
3920 [93m15680[94m: li R8 1 [0m
3921 [93m15684[94m: swi R8 R14 68 [0m
3922 [93m15688[94m: lwi R8 R14 68 [0m
3923 [93m15692[94m: cmp R8 R0 [0m
3924 [93m15696[94m: jeq 28 [0m
3925 [93m15700[94m: jmp 4 [0m
3926 [93m15704[94m: jmp -28 [0m
3927 [93m15708[94m: li R8 0 [0m
3928 [93m15712[94m: swi R8 R14 72 [0m
3929 [93m15716[94m: lwi R8 R14 72 [0m
3930 [93m15720[94m: swi R8 R14 0 [0m
3931 [93m15724[94m: jmp -24 [0m
3932 [93m15728[94m: li R8 0 [0m
3933 [93m15732[94m: swi R8 R14 76 [0m
3934 [93m15736[94m: lwi R8 R14 76 [0m
3935 [93m15740[94m: swi R8 R14 88 [0m
3936 [93m15744[94m: lwi R12 R14 80 [0m
3937 [93m15748[94m: li R8 15768 [0m
3938 [93m15752[94m: lwi R9 R14 84 [0m
3939 [93m15756[94m: sub R10 R9 R8 [0m
3940 [93m15760[94m: addi R14 R14 92 [0m
3941 [93m15764[94m: jr R10 [0m
3942 [93m15768[94m: swi R12 R14 80 [0m
3943 [93m15772[94m: subi R12 R12 4 [0m
3944 [93m15776[94m: li R8 99 [0m
3945 [93m15780[94m: sbi R8 R12 0 [0m
3946 [93m15784[94m: sbi R0 R12 1 [0m
3947 [93m15788[94m: swi R12 R14 16 [0m
3948 [93m15792[94m: lwi R8 R14 16 [0m
3949 [93m15796[94m: swi R8 R14 12 [0m
3950 [93m15800[94m: li R8 0 [0m
3951 [93m15804[94m: swi R8 R14 20 [0m
3952 [93m15808[94m: lwi R8 R14 20 [0m
3953 [93m15812[94m: swi R8 R14 0 [0m
3954 [93m15816[94m: li R8 100 [0m
3955 [93m15820[94m: swi R8 R14 24 [0m
3956 [93m15824[94m: lwi R8 R14 0 [0m
3957 [93m15828[94m: lwi R9 R14 24 [0m
3958 [93m15832[94m: lt R10 R8 R9 [0m
3959 [93m15836[94m: swi R10 R14 28 [0m
3960 [93m15840[94m: lwi R8 R14 28 [0m
3961 [93m15844[94m: cmp R8 R0 [0m
3962 [93m15848[94m: jeq 204 [0m
3963 [93m15852[94m: jmp 28 [0m
3964 [93m15856[94m: lwi R8 R14 0 [0m
3965 [93m15860[94m: swi R8 R14 32 [0m
3966 [93m15864[94m: lwi R8 R14 0 [0m
3967 [93m15868[94m: li R9 1 [0m
3968 [93m15872[94m: add R10 R8 R9 [0m
3969 [93m15876[94m: swi R10 R14 0 [0m
3970 [93m15880[94m: jmp -68 [0m
3971 [93m15884[94m: li R8 0 [0m
3972 [93m15888[94m: swi R8 R14 36 [0m
3973 [93m15892[94m: lwi R8 R14 36 [0m
3974 [93m15896[94m: swi R8 R14 8 [0m
3975 [93m15900[94m: li R8 10000 [0m
3976 [93m15904[94m: swi R8 R14 40 [0m
3977 [93m15908[94m: lwi R8 R14 8 [0m
3978 [93m15912[94m: lwi R9 R14 40 [0m
3979 [93m15916[94m: lt R10 R8 R9 [0m
3980 [93m15920[94m: swi R10 R14 44 [0m
3981 [93m15924[94m: lwi R8 R14 44 [0m
3982 [93m15928[94m: cmp R8 R0 [0m
3983 [93m15932[94m: jeq 52 [0m
3984 [93m15936[94m: jmp 28 [0m
3985 [93m15940[94m: lwi R8 R14 8 [0m
3986 [93m15944[94m: swi R8 R14 48 [0m
3987 [93m15948[94m: lwi R8 R14 8 [0m
3988 [93m15952[94m: li R9 1 [0m
3989 [93m15956[94m: add R10 R8 R9 [0m
3990 [93m15960[94m: swi R10 R14 8 [0m
3991 [93m15964[94m: jmp -68 [0m
3992 [93m15968[94m: li R8 0 [0m
3993 [93m15972[94m: swi R8 R14 52 [0m
3994 [93m15976[94m: lwi R8 R14 52 [0m
3995 [93m15980[94m: swi R8 R14 4 [0m
3996 [93m15984[94m: jmp -48 [0m
3997 [93m15988[94m: lwi R8 R14 12 [0m
3998 [93m15992[94m: swi R8 R14 -16 [0m
3999 [93m15996[94m: li R8 1 [0m
4000 [93m16000[94m: swi R8 R14 56 [0m
4001 [93m16004[94m: lwi R8 R14 56 [0m
4002 [93m16008[94m: swi R8 R14 -20 [0m
4003 [93m16012[94m: li R8 0 [0m
4004 [93m16016[94m: swi R8 R14 60 [0m
4005 [93m16020[94m: lwi R8 R14 60 [0m
4006 [93m16024[94m: swi R8 R14 -24 [0m
4007 [93m16028[94m: li R8 16044 [0m
4008 [93m16032[94m: swi R8 R14 -8 [0m
4009 [93m16036[94m: addi R14 R14 -180 [0m
4010 [93m16040[94m: jmp -12428 [0m
4011 [93m16044[94m: lwi R8 R14 -4 [0m
4012 [93m16048[94m: swi R8 R14 64 [0m
4013 [93m16052[94m: jmp -200 [0m
4014 [93m16056[94m: li R8 1 [0m
4015 [93m16060[94m: swi R8 R14 68 [0m
4016 [93m16064[94m: lwi R8 R14 68 [0m
4017 [93m16068[94m: cmp R8 R0 [0m
4018 [93m16072[94m: jeq 28 [0m
4019 [93m16076[94m: jmp 4 [0m
4020 [93m16080[94m: jmp -28 [0m
4021 [93m16084[94m: li R8 0 [0m
4022 [93m16088[94m: swi R8 R14 72 [0m
4023 [93m16092[94m: lwi R8 R14 72 [0m
4024 [93m16096[94m: swi R8 R14 0 [0m
4025 [93m16100[94m: jmp -24 [0m
4026 [93m16104[94m: li R8 0 [0m
4027 [93m16108[94m: swi R8 R14 76 [0m
4028 [93m16112[94m: lwi R8 R14 76 [0m
4029 [93m16116[94m: swi R8 R14 88 [0m
4030 [93m16120[94m: lwi R12 R14 80 [0m
4031 [93m16124[94m: li R8 16144 [0m
4032 [93m16128[94m: lwi R9 R14 84 [0m
4033 [93m16132[94m: sub R10 R9 R8 [0m
4034 [93m16136[94m: addi R14 R14 92 [0m
4035 [93m16140[94m: jr R10 [0m
4036 [93m16144[94m: swi R12 R14 80 [0m
4037 [93m16148[94m: subi R12 R12 4 [0m
4038 [93m16152[94m: li R8 100 [0m
4039 [93m16156[94m: sbi R8 R12 0 [0m
4040 [93m16160[94m: sbi R0 R12 1 [0m
4041 [93m16164[94m: swi R12 R14 16 [0m
4042 [93m16168[94m: lwi R8 R14 16 [0m
4043 [93m16172[94m: swi R8 R14 12 [0m
4044 [93m16176[94m: li R8 0 [0m
4045 [93m16180[94m: swi R8 R14 20 [0m
4046 [93m16184[94m: lwi R8 R14 20 [0m
4047 [93m16188[94m: swi R8 R14 0 [0m
4048 [93m16192[94m: li R8 100 [0m
4049 [93m16196[94m: swi R8 R14 24 [0m
4050 [93m16200[94m: lwi R8 R14 0 [0m
4051 [93m16204[94m: lwi R9 R14 24 [0m
4052 [93m16208[94m: lt R10 R8 R9 [0m
4053 [93m16212[94m: swi R10 R14 28 [0m
4054 [93m16216[94m: lwi R8 R14 28 [0m
4055 [93m16220[94m: cmp R8 R0 [0m
4056 [93m16224[94m: jeq 204 [0m
4057 [93m16228[94m: jmp 28 [0m
4058 [93m16232[94m: lwi R8 R14 0 [0m
4059 [93m16236[94m: swi R8 R14 32 [0m
4060 [93m16240[94m: lwi R8 R14 0 [0m
4061 [93m16244[94m: li R9 1 [0m
4062 [93m16248[94m: add R10 R8 R9 [0m
4063 [93m16252[94m: swi R10 R14 0 [0m
4064 [93m16256[94m: jmp -68 [0m
4065 [93m16260[94m: li R8 0 [0m
4066 [93m16264[94m: swi R8 R14 36 [0m
4067 [93m16268[94m: lwi R8 R14 36 [0m
4068 [93m16272[94m: swi R8 R14 8 [0m
4069 [93m16276[94m: li R8 10000 [0m
4070 [93m16280[94m: swi R8 R14 40 [0m
4071 [93m16284[94m: lwi R8 R14 8 [0m
4072 [93m16288[94m: lwi R9 R14 40 [0m
4073 [93m16292[94m: lt R10 R8 R9 [0m
4074 [93m16296[94m: swi R10 R14 44 [0m
4075 [93m16300[94m: lwi R8 R14 44 [0m
4076 [93m16304[94m: cmp R8 R0 [0m
4077 [93m16308[94m: jeq 52 [0m
4078 [93m16312[94m: jmp 28 [0m
4079 [93m16316[94m: lwi R8 R14 8 [0m
4080 [93m16320[94m: swi R8 R14 48 [0m
4081 [93m16324[94m: lwi R8 R14 8 [0m
4082 [93m16328[94m: li R9 1 [0m
4083 [93m16332[94m: add R10 R8 R9 [0m
4084 [93m16336[94m: swi R10 R14 8 [0m
4085 [93m16340[94m: jmp -68 [0m
4086 [93m16344[94m: li R8 0 [0m
4087 [93m16348[94m: swi R8 R14 52 [0m
4088 [93m16352[94m: lwi R8 R14 52 [0m
4089 [93m16356[94m: swi R8 R14 4 [0m
4090 [93m16360[94m: jmp -48 [0m
4091 [93m16364[94m: lwi R8 R14 12 [0m
4092 [93m16368[94m: swi R8 R14 -16 [0m
4093 [93m16372[94m: li R8 1 [0m
4094 [93m16376[94m: swi R8 R14 56 [0m
4095 [93m16380[94m: lwi R8 R14 56 [0m
4096 [93m16384[94m: swi R8 R14 -20 [0m
4097 [93m16388[94m: li R8 0 [0m
4098 [93m16392[94m: swi R8 R14 60 [0m
4099 [93m16396[94m: lwi R8 R14 60 [0m
4100 [93m16400[94m: swi R8 R14 -24 [0m
4101 [93m16404[94m: li R8 16420 [0m
4102 [93m16408[94m: swi R8 R14 -8 [0m
4103 [93m16412[94m: addi R14 R14 -180 [0m
4104 [93m16416[94m: jmp -12804 [0m
4105 [93m16420[94m: lwi R8 R14 -4 [0m
4106 [93m16424[94m: swi R8 R14 64 [0m
4107 [93m16428[94m: jmp -200 [0m
4108 [93m16432[94m: li R8 1 [0m
4109 [93m16436[94m: swi R8 R14 68 [0m
4110 [93m16440[94m: lwi R8 R14 68 [0m
4111 [93m16444[94m: cmp R8 R0 [0m
4112 [93m16448[94m: jeq 28 [0m
4113 [93m16452[94m: jmp 4 [0m
4114 [93m16456[94m: jmp -28 [0m
4115 [93m16460[94m: li R8 0 [0m
4116 [93m16464[94m: swi R8 R14 72 [0m
4117 [93m16468[94m: lwi R8 R14 72 [0m
4118 [93m16472[94m: swi R8 R14 0 [0m
4119 [93m16476[94m: jmp -24 [0m
4120 [93m16480[94m: li R8 0 [0m
4121 [93m16484[94m: swi R8 R14 76 [0m
4122 [93m16488[94m: lwi R8 R14 76 [0m
4123 [93m16492[94m: swi R8 R14 88 [0m
4124 [93m16496[94m: lwi R12 R14 80 [0m
4125 [93m16500[94m: li R8 16520 [0m
4126 [93m16504[94m: lwi R9 R14 84 [0m
4127 [93m16508[94m: sub R10 R9 R8 [0m
4128 [93m16512[94m: addi R14 R14 92 [0m
4129 [93m16516[94m: jr R10 [0m
4130 [93m16520[94m: swi R12 R14 164 [0m
4131 [93m16524[94m: subi R12 R12 8 [0m
4132 [93m16528[94m: li R8 69 [0m
4133 [93m16532[94m: sbi R8 R12 0 [0m
4134 [93m16536[94m: li R8 110 [0m
4135 [93m16540[94m: sbi R8 R12 1 [0m
4136 [93m16544[94m: li R8 116 [0m
4137 [93m16548[94m: sbi R8 R12 2 [0m
4138 [93m16552[94m: li R8 101 [0m
4139 [93m16556[94m: sbi R8 R12 3 [0m
4140 [93m16560[94m: li R8 114 [0m
4141 [93m16564[94m: sbi R8 R12 4 [0m
4142 [93m16568[94m: li R8 32 [0m
4143 [93m16572[94m: sbi R8 R12 5 [0m
4144 [93m16576[94m: li R8 110 [0m
4145 [93m16580[94m: sbi R8 R12 6 [0m
4146 [93m16584[94m: sbi R0 R12 7 [0m
4147 [93m16588[94m: swi R12 R14 28 [0m
4148 [93m16592[94m: lwi R8 R14 28 [0m
4149 [93m16596[94m: swi R8 R14 0 [0m
4150 [93m16600[94m: lwi R8 R14 0 [0m
4151 [93m16604[94m: swi R8 R14 -16 [0m
4152 [93m16608[94m: li R8 16624 [0m
4153 [93m16612[94m: swi R8 R14 -8 [0m
4154 [93m16616[94m: addi R14 R14 -52 [0m
4155 [93m16620[94m: jmp -16440 [0m
4156 [93m16624[94m: lwi R8 R14 -4 [0m
4157 [93m16628[94m: swi R8 R14 32 [0m
4158 [93m16632[94m: lwi R8 R14 32 [0m
4159 [93m16636[94m: swi R8 R14 4 [0m
4160 [93m16640[94m: lwi R8 R14 0 [0m
4161 [93m16644[94m: swi R8 R14 -16 [0m
4162 [93m16648[94m: lwi R8 R14 4 [0m
4163 [93m16652[94m: swi R8 R14 -20 [0m
4164 [93m16656[94m: li R8 1 [0m
4165 [93m16660[94m: swi R8 R14 36 [0m
4166 [93m16664[94m: lwi R8 R14 36 [0m
4167 [93m16668[94m: swi R8 R14 -24 [0m
4168 [93m16672[94m: li R8 16688 [0m
4169 [93m16676[94m: swi R8 R14 -8 [0m
4170 [93m16680[94m: addi R14 R14 -180 [0m
4171 [93m16684[94m: jmp -13072 [0m
4172 [93m16688[94m: lwi R8 R14 -4 [0m
4173 [93m16692[94m: swi R8 R14 40 [0m
4174 [93m16696[94m: li R8 16712 [0m
4175 [93m16700[94m: swi R8 R14 -8 [0m
4176 [93m16704[94m: addi R14 R14 -204 [0m
4177 [93m16708[94m: jmp -11744 [0m
4178 [93m16712[94m: lwi R8 R14 -4 [0m
4179 [93m16716[94m: swi R8 R14 44 [0m
4180 [93m16720[94m: lwi R8 R14 44 [0m
4181 [93m16724[94m: swi R8 R14 8 [0m
4182 [93m16728[94m: subi R12 R12 8 [0m
4183 [93m16732[94m: li R8 84 [0m
4184 [93m16736[94m: sbi R8 R12 0 [0m
4185 [93m16740[94m: li R8 104 [0m
4186 [93m16744[94m: sbi R8 R12 1 [0m
4187 [93m16748[94m: li R8 101 [0m
4188 [93m16752[94m: sbi R8 R12 2 [0m
4189 [93m16756[94m: li R8 32 [0m
4190 [93m16760[94m: sbi R8 R12 3 [0m
4191 [93m16764[94m: sbi R0 R12 4 [0m
4192 [93m16768[94m: swi R12 R14 48 [0m
4193 [93m16772[94m: lwi R8 R14 48 [0m
4194 [93m16776[94m: swi R8 R14 0 [0m
4195 [93m16780[94m: lwi R8 R14 0 [0m
4196 [93m16784[94m: swi R8 R14 -16 [0m
4197 [93m16788[94m: li R8 16804 [0m
4198 [93m16792[94m: swi R8 R14 -8 [0m
4199 [93m16796[94m: addi R14 R14 -52 [0m
4200 [93m16800[94m: jmp -16620 [0m
4201 [93m16804[94m: lwi R8 R14 -4 [0m
4202 [93m16808[94m: swi R8 R14 52 [0m
4203 [93m16812[94m: lwi R8 R14 52 [0m
4204 [93m16816[94m: swi R8 R14 4 [0m
4205 [93m16820[94m: lwi R8 R14 0 [0m
4206 [93m16824[94m: swi R8 R14 -16 [0m
4207 [93m16828[94m: lwi R8 R14 4 [0m
4208 [93m16832[94m: swi R8 R14 -20 [0m
4209 [93m16836[94m: li R8 0 [0m
4210 [93m16840[94m: swi R8 R14 56 [0m
4211 [93m16844[94m: lwi R8 R14 56 [0m
4212 [93m16848[94m: swi R8 R14 -24 [0m
4213 [93m16852[94m: li R8 16868 [0m
4214 [93m16856[94m: swi R8 R14 -8 [0m
4215 [93m16860[94m: addi R14 R14 -180 [0m
4216 [93m16864[94m: jmp -13252 [0m
4217 [93m16868[94m: lwi R8 R14 -4 [0m
4218 [93m16872[94m: swi R8 R14 60 [0m
4219 [93m16876[94m: lwi R8 R14 8 [0m
4220 [93m16880[94m: swi R8 R14 -16 [0m
4221 [93m16884[94m: li R8 0 [0m
4222 [93m16888[94m: swi R8 R14 64 [0m
4223 [93m16892[94m: lwi R8 R14 64 [0m
4224 [93m16896[94m: swi R8 R14 -20 [0m
4225 [93m16900[94m: li R8 16916 [0m
4226 [93m16904[94m: swi R8 R14 -8 [0m
4227 [93m16908[94m: addi R14 R14 -152 [0m
4228 [93m16912[94m: jmp -10620 [0m
4229 [93m16916[94m: lwi R8 R14 -4 [0m
4230 [93m16920[94m: swi R8 R14 68 [0m
4231 [93m16924[94m: subi R12 R12 28 [0m
4232 [93m16928[94m: li R8 116 [0m
4233 [93m16932[94m: sbi R8 R12 0 [0m
4234 [93m16936[94m: li R8 104 [0m
4235 [93m16940[94m: sbi R8 R12 1 [0m
4236 [93m16944[94m: li R8 32 [0m
4237 [93m16948[94m: sbi R8 R12 2 [0m
4238 [93m16952[94m: li R8 102 [0m
4239 [93m16956[94m: sbi R8 R12 3 [0m
4240 [93m16960[94m: li R8 105 [0m
4241 [93m16964[94m: sbi R8 R12 4 [0m
4242 [93m16968[94m: li R8 98 [0m
4243 [93m16972[94m: sbi R8 R12 5 [0m
4244 [93m16976[94m: li R8 111 [0m
4245 [93m16980[94m: sbi R8 R12 6 [0m
4246 [93m16984[94m: li R8 110 [0m
4247 [93m16988[94m: sbi R8 R12 7 [0m
4248 [93m16992[94m: li R8 97 [0m
4249 [93m16996[94m: sbi R8 R12 8 [0m
4250 [93m17000[94m: li R8 99 [0m
4251 [93m17004[94m: sbi R8 R12 9 [0m
4252 [93m17008[94m: li R8 99 [0m
4253 [93m17012[94m: sbi R8 R12 10 [0m
4254 [93m17016[94m: li R8 105 [0m
4255 [93m17020[94m: sbi R8 R12 11 [0m
4256 [93m17024[94m: li R8 32 [0m
4257 [93m17028[94m: sbi R8 R12 12 [0m
4258 [93m17032[94m: li R8 110 [0m
4259 [93m17036[94m: sbi R8 R12 13 [0m
4260 [93m17040[94m: li R8 117 [0m
4261 [93m17044[94m: sbi R8 R12 14 [0m
4262 [93m17048[94m: li R8 109 [0m
4263 [93m17052[94m: sbi R8 R12 15 [0m
4264 [93m17056[94m: li R8 98 [0m
4265 [93m17060[94m: sbi R8 R12 16 [0m
4266 [93m17064[94m: li R8 101 [0m
4267 [93m17068[94m: sbi R8 R12 17 [0m
4268 [93m17072[94m: li R8 114 [0m
4269 [93m17076[94m: sbi R8 R12 18 [0m
4270 [93m17080[94m: li R8 32 [0m
4271 [93m17084[94m: sbi R8 R12 19 [0m
4272 [93m17088[94m: li R8 105 [0m
4273 [93m17092[94m: sbi R8 R12 20 [0m
4274 [93m17096[94m: li R8 115 [0m
4275 [93m17100[94m: sbi R8 R12 21 [0m
4276 [93m17104[94m: li R8 58 [0m
4277 [93m17108[94m: sbi R8 R12 22 [0m
4278 [93m17112[94m: li R8 32 [0m
4279 [93m17116[94m: sbi R8 R12 23 [0m
4280 [93m17120[94m: sbi R0 R12 24 [0m
4281 [93m17124[94m: swi R12 R14 72 [0m
4282 [93m17128[94m: lwi R8 R14 72 [0m
4283 [93m17132[94m: swi R8 R14 0 [0m
4284 [93m17136[94m: lwi R8 R14 0 [0m
4285 [93m17140[94m: swi R8 R14 -16 [0m
4286 [93m17144[94m: li R8 17160 [0m
4287 [93m17148[94m: swi R8 R14 -8 [0m
4288 [93m17152[94m: addi R14 R14 -52 [0m
4289 [93m17156[94m: jmp -16976 [0m
4290 [93m17160[94m: lwi R8 R14 -4 [0m
4291 [93m17164[94m: swi R8 R14 76 [0m
4292 [93m17168[94m: lwi R8 R14 76 [0m
4293 [93m17172[94m: swi R8 R14 4 [0m
4294 [93m17176[94m: lwi R8 R14 0 [0m
4295 [93m17180[94m: swi R8 R14 -16 [0m
4296 [93m17184[94m: lwi R8 R14 4 [0m
4297 [93m17188[94m: swi R8 R14 -20 [0m
4298 [93m17192[94m: li R8 0 [0m
4299 [93m17196[94m: swi R8 R14 80 [0m
4300 [93m17200[94m: lwi R8 R14 80 [0m
4301 [93m17204[94m: swi R8 R14 -24 [0m
4302 [93m17208[94m: li R8 17224 [0m
4303 [93m17212[94m: swi R8 R14 -8 [0m
4304 [93m17216[94m: addi R14 R14 -180 [0m
4305 [93m17220[94m: jmp -13608 [0m
4306 [93m17224[94m: lwi R8 R14 -4 [0m
4307 [93m17228[94m: swi R8 R14 84 [0m
4308 [93m17232[94m: li R8 0 [0m
4309 [93m17236[94m: swi R8 R14 88 [0m
4310 [93m17240[94m: lwi R8 R14 8 [0m
4311 [93m17244[94m: lwi R9 R14 88 [0m
4312 [93m17248[94m: eq R10 R8 R9 [0m
4313 [93m17252[94m: swi R10 R14 92 [0m
4314 [93m17256[94m: lwi R8 R14 92 [0m
4315 [93m17260[94m: cmp R8 R0 [0m
4316 [93m17264[94m: jeq 60 [0m
4317 [93m17268[94m: li R8 1 [0m
4318 [93m17272[94m: swi R8 R14 96 [0m
4319 [93m17276[94m: lwi R8 R14 96 [0m
4320 [93m17280[94m: swi R8 R14 -16 [0m
4321 [93m17284[94m: li R8 1 [0m
4322 [93m17288[94m: swi R8 R14 100 [0m
4323 [93m17292[94m: lwi R8 R14 100 [0m
4324 [93m17296[94m: swi R8 R14 -20 [0m
4325 [93m17300[94m: li R8 17316 [0m
4326 [93m17304[94m: swi R8 R14 -8 [0m
4327 [93m17308[94m: addi R14 R14 -152 [0m
4328 [93m17312[94m: jmp -11020 [0m
4329 [93m17316[94m: lwi R8 R14 -4 [0m
4330 [93m17320[94m: swi R8 R14 104 [0m
4331 [93m17324[94m: jmp 296 [0m
4332 [93m17328[94m: li R8 1 [0m
4333 [93m17332[94m: swi R8 R14 108 [0m
4334 [93m17336[94m: lwi R8 R14 8 [0m
4335 [93m17340[94m: lwi R9 R14 108 [0m
4336 [93m17344[94m: eq R10 R8 R9 [0m
4337 [93m17348[94m: swi R10 R14 112 [0m
4338 [93m17352[94m: lwi R8 R14 112 [0m
4339 [93m17356[94m: cmp R8 R0 [0m
4340 [93m17360[94m: jeq 60 [0m
4341 [93m17364[94m: li R8 1 [0m
4342 [93m17368[94m: swi R8 R14 116 [0m
4343 [93m17372[94m: lwi R8 R14 116 [0m
4344 [93m17376[94m: swi R8 R14 -16 [0m
4345 [93m17380[94m: li R8 1 [0m
4346 [93m17384[94m: swi R8 R14 120 [0m
4347 [93m17388[94m: lwi R8 R14 120 [0m
4348 [93m17392[94m: swi R8 R14 -20 [0m
4349 [93m17396[94m: li R8 17412 [0m
4350 [93m17400[94m: swi R8 R14 -8 [0m
4351 [93m17404[94m: addi R14 R14 -152 [0m
4352 [93m17408[94m: jmp -11116 [0m
4353 [93m17412[94m: lwi R8 R14 -4 [0m
4354 [93m17416[94m: swi R8 R14 124 [0m
4355 [93m17420[94m: jmp 200 [0m
4356 [93m17424[94m: li R8 1 [0m
4357 [93m17428[94m: swi R8 R14 128 [0m
4358 [93m17432[94m: lwi R8 R14 128 [0m
4359 [93m17436[94m: swi R8 R14 16 [0m
4360 [93m17440[94m: li R8 1 [0m
4361 [93m17444[94m: swi R8 R14 132 [0m
4362 [93m17448[94m: lwi R8 R14 132 [0m
4363 [93m17452[94m: swi R8 R14 20 [0m
4364 [93m17456[94m: li R8 2 [0m
4365 [93m17460[94m: swi R8 R14 136 [0m
4366 [93m17464[94m: lwi R8 R14 136 [0m
4367 [93m17468[94m: swi R8 R14 12 [0m
4368 [93m17472[94m: lwi R8 R14 12 [0m
4369 [93m17476[94m: lwi R9 R14 8 [0m
4370 [93m17480[94m: le R10 R8 R9 [0m
4371 [93m17484[94m: swi R10 R14 140 [0m
4372 [93m17488[94m: lwi R8 R14 140 [0m
4373 [93m17492[94m: cmp R8 R0 [0m
4374 [93m17496[94m: jeq 76 [0m
4375 [93m17500[94m: jmp 28 [0m
4376 [93m17504[94m: lwi R8 R14 12 [0m
4377 [93m17508[94m: swi R8 R14 144 [0m
4378 [93m17512[94m: lwi R8 R14 12 [0m
4379 [93m17516[94m: li R9 1 [0m
4380 [93m17520[94m: add R10 R8 R9 [0m
4381 [93m17524[94m: swi R10 R14 12 [0m
4382 [93m17528[94m: jmp -60 [0m
4383 [93m17532[94m: lwi R8 R14 20 [0m
4384 [93m17536[94m: swi R8 R14 24 [0m
4385 [93m17540[94m: lwi R8 R14 16 [0m
4386 [93m17544[94m: swi R8 R14 20 [0m
4387 [93m17548[94m: lwi R8 R14 16 [0m
4388 [93m17552[94m: lwi R9 R14 24 [0m
4389 [93m17556[94m: add R10 R8 R9 [0m
4390 [93m17560[94m: swi R10 R14 148 [0m
4391 [93m17564[94m: lwi R8 R14 148 [0m
4392 [93m17568[94m: swi R8 R14 16 [0m
4393 [93m17572[94m: jmp -72 [0m
4394 [93m17576[94m: lwi R8 R14 16 [0m
4395 [93m17580[94m: swi R8 R14 -16 [0m
4396 [93m17584[94m: li R8 1 [0m
4397 [93m17588[94m: swi R8 R14 152 [0m
4398 [93m17592[94m: lwi R8 R14 152 [0m
4399 [93m17596[94m: swi R8 R14 -20 [0m
4400 [93m17600[94m: li R8 17616 [0m
4401 [93m17604[94m: swi R8 R14 -8 [0m
4402 [93m17608[94m: addi R14 R14 -152 [0m
4403 [93m17612[94m: jmp -11320 [0m
4404 [93m17616[94m: lwi R8 R14 -4 [0m
4405 [93m17620[94m: swi R8 R14 156 [0m
4406 [93m17624[94m: li R8 0 [0m
4407 [93m17628[94m: swi R8 R14 160 [0m
4408 [93m17632[94m: lwi R8 R14 160 [0m
4409 [93m17636[94m: swi R8 R14 172 [0m
4410 [93m17640[94m: lwi R12 R14 164 [0m
4411 [93m17644[94m: li R8 17664 [0m
4412 [93m17648[94m: lwi R9 R14 168 [0m
4413 [93m17652[94m: sub R10 R9 R8 [0m
4414 [93m17656[94m: addi R14 R14 176 [0m
4415 [93m17660[94m: jr R10 [0m
4416 [93m17664[94m: swi R12 R14 196 [0m
4417 [93m17668[94m: li R8 30 [0m
4418 [93m17672[94m: swi R8 R14 32 [0m
4419 [93m17676[94m: lwi R8 R14 32 [0m
4420 [93m17680[94m: swi R8 R14 0 [0m
4421 [93m17684[94m: lwi R8 R14 32 [0m
4422 [93m17688[94m: li R9 1 [0m
4423 [93m17692[94m: mul R10 R8 R9 [0m
4424 [93m17696[94m: modi R8 R10 4 [0m
4425 [93m17700[94m: li R9 4 [0m
4426 [93m17704[94m: sub R8 R9 R8 [0m
4427 [93m17708[94m: add R10 R10 R8 [0m
4428 [93m17712[94m: sub R12 R12 R10 [0m
4429 [93m17716[94m: swi R12 R14 4 [0m
4430 [93m17720[94m: li R8 0 [0m
4431 [93m17724[94m: swi R8 R14 36 [0m
4432 [93m17728[94m: lwi R8 R14 36 [0m
4433 [93m17732[94m: swi R8 R14 8 [0m
4434 [93m17736[94m: li R8 30 [0m
4435 [93m17740[94m: swi R8 R14 40 [0m
4436 [93m17744[94m: lwi R8 R14 8 [0m
4437 [93m17748[94m: lwi R9 R14 40 [0m
4438 [93m17752[94m: lt R10 R8 R9 [0m
4439 [93m17756[94m: swi R10 R14 44 [0m
4440 [93m17760[94m: lwi R8 R14 44 [0m
4441 [93m17764[94m: cmp R8 R0 [0m
4442 [93m17768[94m: jeq 88 [0m
4443 [93m17772[94m: jmp 28 [0m
4444 [93m17776[94m: lwi R8 R14 8 [0m
4445 [93m17780[94m: swi R8 R14 48 [0m
4446 [93m17784[94m: lwi R8 R14 8 [0m
4447 [93m17788[94m: li R9 1 [0m
4448 [93m17792[94m: add R10 R8 R9 [0m
4449 [93m17796[94m: swi R10 R14 8 [0m
4450 [93m17800[94m: jmp -68 [0m
4451 [93m17804[94m: lwi R8 R14 8 [0m
4452 [93m17808[94m: li R9 1 [0m
4453 [93m17812[94m: mul R10 R8 R9 [0m
4454 [93m17816[94m: swi R10 R14 52 [0m
4455 [93m17820[94m: lwi R8 R14 4 [0m
4456 [93m17824[94m: lwi R9 R14 52 [0m
4457 [93m17828[94m: add R10 R8 R9 [0m
4458 [93m17832[94m: swi R10 R14 56 [0m
4459 [93m17836[94m: li R8 0 [0m
4460 [93m17840[94m: swi R8 R14 60 [0m
4461 [93m17844[94m: lwi R8 R14 60 [0m
4462 [93m17848[94m: lwi R7 R14 56 [0m
4463 [93m17852[94m: sbi R8 R7 0 [0m
4464 [93m17856[94m: jmp -84 [0m
4465 [93m17860[94m: subi R12 R12 20 [0m
4466 [93m17864[94m: li R8 69 [0m
4467 [93m17868[94m: sbi R8 R12 0 [0m
4468 [93m17872[94m: li R8 110 [0m
4469 [93m17876[94m: sbi R8 R12 1 [0m
4470 [93m17880[94m: li R8 116 [0m
4471 [93m17884[94m: sbi R8 R12 2 [0m
4472 [93m17888[94m: li R8 101 [0m
4473 [93m17892[94m: sbi R8 R12 3 [0m
4474 [93m17896[94m: li R8 114 [0m
4475 [93m17900[94m: sbi R8 R12 4 [0m
4476 [93m17904[94m: li R8 32 [0m
4477 [93m17908[94m: sbi R8 R12 5 [0m
4478 [93m17912[94m: li R8 116 [0m
4479 [93m17916[94m: sbi R8 R12 6 [0m
4480 [93m17920[94m: li R8 104 [0m
4481 [93m17924[94m: sbi R8 R12 7 [0m
4482 [93m17928[94m: li R8 101 [0m
4483 [93m17932[94m: sbi R8 R12 8 [0m
4484 [93m17936[94m: li R8 32 [0m
4485 [93m17940[94m: sbi R8 R12 9 [0m
4486 [93m17944[94m: li R8 83 [0m
4487 [93m17948[94m: sbi R8 R12 10 [0m
4488 [93m17952[94m: li R8 116 [0m
4489 [93m17956[94m: sbi R8 R12 11 [0m
4490 [93m17960[94m: li R8 114 [0m
4491 [93m17964[94m: sbi R8 R12 12 [0m
4492 [93m17968[94m: li R8 105 [0m
4493 [93m17972[94m: sbi R8 R12 13 [0m
4494 [93m17976[94m: li R8 110 [0m
4495 [93m17980[94m: sbi R8 R12 14 [0m
4496 [93m17984[94m: li R8 103 [0m
4497 [93m17988[94m: sbi R8 R12 15 [0m
4498 [93m17992[94m: sbi R0 R12 16 [0m
4499 [93m17996[94m: swi R12 R14 64 [0m
4500 [93m18000[94m: lwi R8 R14 64 [0m
4501 [93m18004[94m: swi R8 R14 16 [0m
4502 [93m18008[94m: lwi R8 R14 16 [0m
4503 [93m18012[94m: swi R8 R14 -16 [0m
4504 [93m18016[94m: li R8 18032 [0m
4505 [93m18020[94m: swi R8 R14 -8 [0m
4506 [93m18024[94m: addi R14 R14 -52 [0m
4507 [93m18028[94m: jmp -17848 [0m
4508 [93m18032[94m: lwi R8 R14 -4 [0m
4509 [93m18036[94m: swi R8 R14 68 [0m
4510 [93m18040[94m: lwi R8 R14 68 [0m
4511 [93m18044[94m: swi R8 R14 20 [0m
4512 [93m18048[94m: lwi R8 R14 16 [0m
4513 [93m18052[94m: swi R8 R14 -16 [0m
4514 [93m18056[94m: lwi R8 R14 20 [0m
4515 [93m18060[94m: swi R8 R14 -20 [0m
4516 [93m18064[94m: li R8 1 [0m
4517 [93m18068[94m: swi R8 R14 72 [0m
4518 [93m18072[94m: lwi R8 R14 72 [0m
4519 [93m18076[94m: swi R8 R14 -24 [0m
4520 [93m18080[94m: li R8 18096 [0m
4521 [93m18084[94m: swi R8 R14 -8 [0m
4522 [93m18088[94m: addi R14 R14 -180 [0m
4523 [93m18092[94m: jmp -14480 [0m
4524 [93m18096[94m: lwi R8 R14 -4 [0m
4525 [93m18100[94m: swi R8 R14 76 [0m
4526 [93m18104[94m: li R8 18120 [0m
4527 [93m18108[94m: swi R8 R14 -8 [0m
4528 [93m18112[94m: addi R14 R14 -164 [0m
4529 [93m18116[94m: jmp -15724 [0m
4530 [93m18120[94m: lwi R8 R14 -4 [0m
4531 [93m18124[94m: swi R8 R14 80 [0m
4532 [93m18128[94m: lwi R8 R14 4 [0m
4533 [93m18132[94m: swi R8 R14 -16 [0m
4534 [93m18136[94m: li R8 18152 [0m
4535 [93m18140[94m: swi R8 R14 -8 [0m
4536 [93m18144[94m: addi R14 R14 -136 [0m
4537 [93m18148[94m: jmp -13772 [0m
4538 [93m18152[94m: lwi R8 R14 -4 [0m
4539 [93m18156[94m: swi R8 R14 84 [0m
4540 [93m18160[94m: lwi R8 R14 84 [0m
4541 [93m18164[94m: swi R8 R14 12 [0m
4542 [93m18168[94m: subi R12 R12 16 [0m
4543 [93m18172[94m: li R8 84 [0m
4544 [93m18176[94m: sbi R8 R12 0 [0m
4545 [93m18180[94m: li R8 104 [0m
4546 [93m18184[94m: sbi R8 R12 1 [0m
4547 [93m18188[94m: li R8 101 [0m
4548 [93m18192[94m: sbi R8 R12 2 [0m
4549 [93m18196[94m: li R8 32 [0m
4550 [93m18200[94m: sbi R8 R12 3 [0m
4551 [93m18204[94m: li R8 82 [0m
4552 [93m18208[94m: sbi R8 R12 4 [0m
4553 [93m18212[94m: li R8 101 [0m
4554 [93m18216[94m: sbi R8 R12 5 [0m
4555 [93m18220[94m: li R8 118 [0m
4556 [93m18224[94m: sbi R8 R12 6 [0m
4557 [93m18228[94m: li R8 101 [0m
4558 [93m18232[94m: sbi R8 R12 7 [0m
4559 [93m18236[94m: li R8 114 [0m
4560 [93m18240[94m: sbi R8 R12 8 [0m
4561 [93m18244[94m: li R8 115 [0m
4562 [93m18248[94m: sbi R8 R12 9 [0m
4563 [93m18252[94m: li R8 101 [0m
4564 [93m18256[94m: sbi R8 R12 10 [0m
4565 [93m18260[94m: li R8 32 [0m
4566 [93m18264[94m: sbi R8 R12 11 [0m
4567 [93m18268[94m: li R8 111 [0m
4568 [93m18272[94m: sbi R8 R12 12 [0m
4569 [93m18276[94m: li R8 102 [0m
4570 [93m18280[94m: sbi R8 R12 13 [0m
4571 [93m18284[94m: li R8 32 [0m
4572 [93m18288[94m: sbi R8 R12 14 [0m
4573 [93m18292[94m: sbi R0 R12 15 [0m
4574 [93m18296[94m: swi R12 R14 88 [0m
4575 [93m18300[94m: lwi R8 R14 88 [0m
4576 [93m18304[94m: swi R8 R14 16 [0m
4577 [93m18308[94m: lwi R8 R14 16 [0m
4578 [93m18312[94m: swi R8 R14 -16 [0m
4579 [93m18316[94m: li R8 18332 [0m
4580 [93m18320[94m: swi R8 R14 -8 [0m
4581 [93m18324[94m: addi R14 R14 -52 [0m
4582 [93m18328[94m: jmp -18148 [0m
4583 [93m18332[94m: lwi R8 R14 -4 [0m
4584 [93m18336[94m: swi R8 R14 92 [0m
4585 [93m18340[94m: lwi R8 R14 92 [0m
4586 [93m18344[94m: swi R8 R14 20 [0m
4587 [93m18348[94m: lwi R8 R14 16 [0m
4588 [93m18352[94m: swi R8 R14 -16 [0m
4589 [93m18356[94m: lwi R8 R14 20 [0m
4590 [93m18360[94m: swi R8 R14 -20 [0m
4591 [93m18364[94m: li R8 0 [0m
4592 [93m18368[94m: swi R8 R14 96 [0m
4593 [93m18372[94m: lwi R8 R14 96 [0m
4594 [93m18376[94m: swi R8 R14 -24 [0m
4595 [93m18380[94m: li R8 18396 [0m
4596 [93m18384[94m: swi R8 R14 -8 [0m
4597 [93m18388[94m: addi R14 R14 -180 [0m
4598 [93m18392[94m: jmp -14780 [0m
4599 [93m18396[94m: lwi R8 R14 -4 [0m
4600 [93m18400[94m: swi R8 R14 100 [0m
4601 [93m18404[94m: lwi R8 R14 4 [0m
4602 [93m18408[94m: swi R8 R14 -16 [0m
4603 [93m18412[94m: lwi R8 R14 12 [0m
4604 [93m18416[94m: swi R8 R14 -20 [0m
4605 [93m18420[94m: li R8 0 [0m
4606 [93m18424[94m: swi R8 R14 104 [0m
4607 [93m18428[94m: lwi R8 R14 104 [0m
4608 [93m18432[94m: swi R8 R14 -24 [0m
4609 [93m18436[94m: li R8 18452 [0m
4610 [93m18440[94m: swi R8 R14 -8 [0m
4611 [93m18444[94m: addi R14 R14 -180 [0m
4612 [93m18448[94m: jmp -14836 [0m
4613 [93m18452[94m: lwi R8 R14 -4 [0m
4614 [93m18456[94m: swi R8 R14 108 [0m
4615 [93m18460[94m: li R8 0 [0m
4616 [93m18464[94m: swi R8 R14 112 [0m
4617 [93m18468[94m: lwi R8 R14 112 [0m
4618 [93m18472[94m: swi R8 R14 8 [0m
4619 [93m18476[94m: li R8 1 [0m
4620 [93m18480[94m: swi R8 R14 116 [0m
4621 [93m18484[94m: lwi R8 R14 12 [0m
4622 [93m18488[94m: lwi R9 R14 116 [0m
4623 [93m18492[94m: sub R10 R8 R9 [0m
4624 [93m18496[94m: swi R10 R14 120 [0m
4625 [93m18500[94m: lwi R8 R14 120 [0m
4626 [93m18504[94m: swi R8 R14 24 [0m
4627 [93m18508[94m: lwi R8 R14 8 [0m
4628 [93m18512[94m: lwi R9 R14 24 [0m
4629 [93m18516[94m: lt R10 R8 R9 [0m
4630 [93m18520[94m: swi R10 R14 124 [0m
4631 [93m18524[94m: lwi R8 R14 124 [0m
4632 [93m18528[94m: cmp R8 R0 [0m
4633 [93m18532[94m: jeq 228 [0m
4634 [93m18536[94m: jmp 4 [0m
4635 [93m18540[94m: jmp -36 [0m
4636 [93m18544[94m: lwi R8 R14 8 [0m
4637 [93m18548[94m: li R9 1 [0m
4638 [93m18552[94m: mul R10 R8 R9 [0m
4639 [93m18556[94m: swi R10 R14 128 [0m
4640 [93m18560[94m: lwi R8 R14 4 [0m
4641 [93m18564[94m: lwi R9 R14 128 [0m
4642 [93m18568[94m: add R10 R8 R9 [0m
4643 [93m18572[94m: swi R10 R14 132 [0m
4644 [93m18576[94m: lwi R8 R14 132 [0m
4645 [93m18580[94m: lbi R8 R8 0 [0m
4646 [93m18584[94m: swi R8 R14 28 [0m
4647 [93m18588[94m: lwi R8 R14 8 [0m
4648 [93m18592[94m: li R9 1 [0m
4649 [93m18596[94m: mul R10 R8 R9 [0m
4650 [93m18600[94m: swi R10 R14 136 [0m
4651 [93m18604[94m: lwi R8 R14 4 [0m
4652 [93m18608[94m: lwi R9 R14 136 [0m
4653 [93m18612[94m: add R10 R8 R9 [0m
4654 [93m18616[94m: swi R10 R14 140 [0m
4655 [93m18620[94m: lwi R8 R14 24 [0m
4656 [93m18624[94m: li R9 1 [0m
4657 [93m18628[94m: mul R10 R8 R9 [0m
4658 [93m18632[94m: swi R10 R14 144 [0m
4659 [93m18636[94m: lwi R8 R14 4 [0m
4660 [93m18640[94m: lwi R9 R14 144 [0m
4661 [93m18644[94m: add R10 R8 R9 [0m
4662 [93m18648[94m: swi R10 R14 148 [0m
4663 [93m18652[94m: lwi R8 R14 148 [0m
4664 [93m18656[94m: lbi R8 R8 0 [0m
4665 [93m18660[94m: lwi R7 R14 140 [0m
4666 [93m18664[94m: sbi R8 R7 0 [0m
4667 [93m18668[94m: lwi R8 R14 24 [0m
4668 [93m18672[94m: li R9 1 [0m
4669 [93m18676[94m: mul R10 R8 R9 [0m
4670 [93m18680[94m: swi R10 R14 152 [0m
4671 [93m18684[94m: lwi R8 R14 4 [0m
4672 [93m18688[94m: lwi R9 R14 152 [0m
4673 [93m18692[94m: add R10 R8 R9 [0m
4674 [93m18696[94m: swi R10 R14 156 [0m
4675 [93m18700[94m: lwi R8 R14 28 [0m
4676 [93m18704[94m: lwi R7 R14 156 [0m
4677 [93m18708[94m: sbi R8 R7 0 [0m
4678 [93m18712[94m: lwi R8 R14 8 [0m
4679 [93m18716[94m: swi R8 R14 160 [0m
4680 [93m18720[94m: lwi R8 R14 8 [0m
4681 [93m18724[94m: li R9 1 [0m
4682 [93m18728[94m: add R10 R8 R9 [0m
4683 [93m18732[94m: swi R10 R14 8 [0m
4684 [93m18736[94m: lwi R8 R14 24 [0m
4685 [93m18740[94m: swi R8 R14 164 [0m
4686 [93m18744[94m: lwi R8 R14 24 [0m
4687 [93m18748[94m: li R9 1 [0m
4688 [93m18752[94m: sub R10 R8 R9 [0m
4689 [93m18756[94m: swi R10 R14 24 [0m
4690 [93m18760[94m: jmp -224 [0m
4691 [93m18764[94m: subi R12 R12 8 [0m
4692 [93m18768[94m: li R8 32 [0m
4693 [93m18772[94m: sbi R8 R12 0 [0m
4694 [93m18776[94m: li R8 105 [0m
4695 [93m18780[94m: sbi R8 R12 1 [0m
4696 [93m18784[94m: li R8 115 [0m
4697 [93m18788[94m: sbi R8 R12 2 [0m
4698 [93m18792[94m: li R8 32 [0m
4699 [93m18796[94m: sbi R8 R12 3 [0m
4700 [93m18800[94m: sbi R0 R12 4 [0m
4701 [93m18804[94m: swi R12 R14 168 [0m
4702 [93m18808[94m: lwi R8 R14 168 [0m
4703 [93m18812[94m: swi R8 R14 16 [0m
4704 [93m18816[94m: lwi R8 R14 16 [0m
4705 [93m18820[94m: swi R8 R14 -16 [0m
4706 [93m18824[94m: li R8 18840 [0m
4707 [93m18828[94m: swi R8 R14 -8 [0m
4708 [93m18832[94m: addi R14 R14 -52 [0m
4709 [93m18836[94m: jmp -18656 [0m
4710 [93m18840[94m: lwi R8 R14 -4 [0m
4711 [93m18844[94m: swi R8 R14 172 [0m
4712 [93m18848[94m: lwi R8 R14 172 [0m
4713 [93m18852[94m: swi R8 R14 20 [0m
4714 [93m18856[94m: lwi R8 R14 16 [0m
4715 [93m18860[94m: swi R8 R14 -16 [0m
4716 [93m18864[94m: lwi R8 R14 20 [0m
4717 [93m18868[94m: swi R8 R14 -20 [0m
4718 [93m18872[94m: li R8 0 [0m
4719 [93m18876[94m: swi R8 R14 176 [0m
4720 [93m18880[94m: lwi R8 R14 176 [0m
4721 [93m18884[94m: swi R8 R14 -24 [0m
4722 [93m18888[94m: li R8 18904 [0m
4723 [93m18892[94m: swi R8 R14 -8 [0m
4724 [93m18896[94m: addi R14 R14 -180 [0m
4725 [93m18900[94m: jmp -15288 [0m
4726 [93m18904[94m: lwi R8 R14 -4 [0m
4727 [93m18908[94m: swi R8 R14 180 [0m
4728 [93m18912[94m: lwi R8 R14 4 [0m
4729 [93m18916[94m: swi R8 R14 -16 [0m
4730 [93m18920[94m: lwi R8 R14 12 [0m
4731 [93m18924[94m: swi R8 R14 -20 [0m
4732 [93m18928[94m: li R8 1 [0m
4733 [93m18932[94m: swi R8 R14 184 [0m
4734 [93m18936[94m: lwi R8 R14 184 [0m
4735 [93m18940[94m: swi R8 R14 -24 [0m
4736 [93m18944[94m: li R8 18960 [0m
4737 [93m18948[94m: swi R8 R14 -8 [0m
4738 [93m18952[94m: addi R14 R14 -180 [0m
4739 [93m18956[94m: jmp -15344 [0m
4740 [93m18960[94m: lwi R8 R14 -4 [0m
4741 [93m18964[94m: swi R8 R14 188 [0m
4742 [93m18968[94m: li R8 0 [0m
4743 [93m18972[94m: swi R8 R14 192 [0m
4744 [93m18976[94m: lwi R8 R14 192 [0m
4745 [93m18980[94m: swi R8 R14 204 [0m
4746 [93m18984[94m: lwi R12 R14 196 [0m
4747 [93m18988[94m: li R8 19008 [0m
4748 [93m18992[94m: lwi R9 R14 200 [0m
4749 [93m18996[94m: sub R10 R9 R8 [0m
4750 [93m19000[94m: addi R14 R14 208 [0m
4751 [93m19004[94m: jr R10 [0m
4752 [93m19008[94m: swi R12 R14 152 [0m
4753 [93m19012[94m: subi R12 R12 20 [0m
4754 [93m19016[94m: li R8 69 [0m
4755 [93m19020[94m: sbi R8 R12 0 [0m
4756 [93m19024[94m: li R8 110 [0m
4757 [93m19028[94m: sbi R8 R12 1 [0m
4758 [93m19032[94m: li R8 116 [0m
4759 [93m19036[94m: sbi R8 R12 2 [0m
4760 [93m19040[94m: li R8 101 [0m
4761 [93m19044[94m: sbi R8 R12 3 [0m
4762 [93m19048[94m: li R8 114 [0m
4763 [93m19052[94m: sbi R8 R12 4 [0m
4764 [93m19056[94m: li R8 32 [0m
4765 [93m19060[94m: sbi R8 R12 5 [0m
4766 [93m19064[94m: li R8 116 [0m
4767 [93m19068[94m: sbi R8 R12 6 [0m
4768 [93m19072[94m: li R8 104 [0m
4769 [93m19076[94m: sbi R8 R12 7 [0m
4770 [93m19080[94m: li R8 101 [0m
4771 [93m19084[94m: sbi R8 R12 8 [0m
4772 [93m19088[94m: li R8 32 [0m
4773 [93m19092[94m: sbi R8 R12 9 [0m
4774 [93m19096[94m: li R8 110 [0m
4775 [93m19100[94m: sbi R8 R12 10 [0m
4776 [93m19104[94m: li R8 117 [0m
4777 [93m19108[94m: sbi R8 R12 11 [0m
4778 [93m19112[94m: li R8 109 [0m
4779 [93m19116[94m: sbi R8 R12 12 [0m
4780 [93m19120[94m: li R8 98 [0m
4781 [93m19124[94m: sbi R8 R12 13 [0m
4782 [93m19128[94m: li R8 101 [0m
4783 [93m19132[94m: sbi R8 R12 14 [0m
4784 [93m19136[94m: li R8 114 [0m
4785 [93m19140[94m: sbi R8 R12 15 [0m
4786 [93m19144[94m: sbi R0 R12 16 [0m
4787 [93m19148[94m: swi R12 R14 20 [0m
4788 [93m19152[94m: lwi R8 R14 20 [0m
4789 [93m19156[94m: swi R8 R14 0 [0m
4790 [93m19160[94m: lwi R8 R14 0 [0m
4791 [93m19164[94m: swi R8 R14 -16 [0m
4792 [93m19168[94m: li R8 19184 [0m
4793 [93m19172[94m: swi R8 R14 -8 [0m
4794 [93m19176[94m: addi R14 R14 -52 [0m
4795 [93m19180[94m: jmp -19000 [0m
4796 [93m19184[94m: lwi R8 R14 -4 [0m
4797 [93m19188[94m: swi R8 R14 24 [0m
4798 [93m19192[94m: lwi R8 R14 24 [0m
4799 [93m19196[94m: swi R8 R14 4 [0m
4800 [93m19200[94m: lwi R8 R14 0 [0m
4801 [93m19204[94m: swi R8 R14 -16 [0m
4802 [93m19208[94m: lwi R8 R14 4 [0m
4803 [93m19212[94m: swi R8 R14 -20 [0m
4804 [93m19216[94m: li R8 1 [0m
4805 [93m19220[94m: swi R8 R14 28 [0m
4806 [93m19224[94m: lwi R8 R14 28 [0m
4807 [93m19228[94m: swi R8 R14 -24 [0m
4808 [93m19232[94m: li R8 19248 [0m
4809 [93m19236[94m: swi R8 R14 -8 [0m
4810 [93m19240[94m: addi R14 R14 -180 [0m
4811 [93m19244[94m: jmp -15632 [0m
4812 [93m19248[94m: lwi R8 R14 -4 [0m
4813 [93m19252[94m: swi R8 R14 32 [0m
4814 [93m19256[94m: li R8 19272 [0m
4815 [93m19260[94m: swi R8 R14 -8 [0m
4816 [93m19264[94m: addi R14 R14 -204 [0m
4817 [93m19268[94m: jmp -14304 [0m
4818 [93m19272[94m: lwi R8 R14 -4 [0m
4819 [93m19276[94m: swi R8 R14 36 [0m
4820 [93m19280[94m: lwi R8 R14 36 [0m
4821 [93m19284[94m: swi R8 R14 8 [0m
4822 [93m19288[94m: li R8 1 [0m
4823 [93m19292[94m: swi R8 R14 40 [0m
4824 [93m19296[94m: lwi R8 R14 40 [0m
4825 [93m19300[94m: swi R8 R14 12 [0m
4826 [93m19304[94m: li R8 2 [0m
4827 [93m19308[94m: swi R8 R14 44 [0m
4828 [93m19312[94m: lwi R8 R14 44 [0m
4829 [93m19316[94m: swi R8 R14 16 [0m
4830 [93m19320[94m: li R8 2 [0m
4831 [93m19324[94m: swi R8 R14 48 [0m
4832 [93m19328[94m: lwi R8 R14 8 [0m
4833 [93m19332[94m: lwi R9 R14 48 [0m
4834 [93m19336[94m: div R10 R8 R9 [0m
4835 [93m19340[94m: swi R10 R14 52 [0m
4836 [93m19344[94m: lwi R8 R14 16 [0m
4837 [93m19348[94m: lwi R9 R14 52 [0m
4838 [93m19352[94m: le R10 R8 R9 [0m
4839 [93m19356[94m: swi R10 R14 56 [0m
4840 [93m19360[94m: li R8 2 [0m
4841 [93m19364[94m: swi R8 R14 60 [0m
4842 [93m19368[94m: lwi R8 R14 8 [0m
4843 [93m19372[94m: lwi R9 R14 60 [0m
4844 [93m19376[94m: neq R10 R8 R9 [0m
4845 [93m19380[94m: swi R10 R14 64 [0m
4846 [93m19384[94m: lwi R8 R14 56 [0m
4847 [93m19388[94m: lwi R9 R14 64 [0m
4848 [93m19392[94m: and R10 R8 R9 [0m
4849 [93m19396[94m: swi R10 R14 68 [0m
4850 [93m19400[94m: lwi R8 R14 68 [0m
4851 [93m19404[94m: cmp R8 R0 [0m
4852 [93m19408[94m: jeq 112 [0m
4853 [93m19412[94m: jmp 28 [0m
4854 [93m19416[94m: lwi R8 R14 16 [0m
4855 [93m19420[94m: swi R8 R14 72 [0m
4856 [93m19424[94m: lwi R8 R14 16 [0m
4857 [93m19428[94m: li R9 1 [0m
4858 [93m19432[94m: add R10 R8 R9 [0m
4859 [93m19436[94m: swi R10 R14 16 [0m
4860 [93m19440[94m: jmp -124 [0m
4861 [93m19444[94m: lwi R8 R14 8 [0m
4862 [93m19448[94m: lwi R9 R14 16 [0m
4863 [93m19452[94m: mod R10 R8 R9 [0m
4864 [93m19456[94m: swi R10 R14 76 [0m
4865 [93m19460[94m: li R8 0 [0m
4866 [93m19464[94m: swi R8 R14 80 [0m
4867 [93m19468[94m: lwi R8 R14 76 [0m
4868 [93m19472[94m: lwi R9 R14 80 [0m
4869 [93m19476[94m: eq R10 R8 R9 [0m
4870 [93m19480[94m: swi R10 R14 84 [0m
4871 [93m19484[94m: lwi R8 R14 84 [0m
4872 [93m19488[94m: cmp R8 R0 [0m
4873 [93m19492[94m: jeq 24 [0m
4874 [93m19496[94m: li R8 0 [0m
4875 [93m19500[94m: swi R8 R14 88 [0m
4876 [93m19504[94m: lwi R8 R14 88 [0m
4877 [93m19508[94m: swi R8 R14 12 [0m
4878 [93m19512[94m: jmp 8 [0m
4879 [93m19516[94m: jmp 0 [0m
4880 [93m19520[94m: jmp -108 [0m
4881 [93m19524[94m: li R8 1 [0m
4882 [93m19528[94m: swi R8 R14 92 [0m
4883 [93m19532[94m: lwi R8 R14 12 [0m
4884 [93m19536[94m: lwi R9 R14 92 [0m
4885 [93m19540[94m: eq R10 R8 R9 [0m
4886 [93m19544[94m: swi R10 R14 96 [0m
4887 [93m19548[94m: lwi R8 R14 96 [0m
4888 [93m19552[94m: cmp R8 R0 [0m
4889 [93m19556[94m: jeq 312 [0m
4890 [93m19560[94m: lwi R8 R14 8 [0m
4891 [93m19564[94m: swi R8 R14 -16 [0m
4892 [93m19568[94m: li R8 0 [0m
4893 [93m19572[94m: swi R8 R14 100 [0m
4894 [93m19576[94m: lwi R8 R14 100 [0m
4895 [93m19580[94m: swi R8 R14 -20 [0m
4896 [93m19584[94m: li R8 19600 [0m
4897 [93m19588[94m: swi R8 R14 -8 [0m
4898 [93m19592[94m: addi R14 R14 -152 [0m
4899 [93m19596[94m: jmp -13304 [0m
4900 [93m19600[94m: lwi R8 R14 -4 [0m
4901 [93m19604[94m: swi R8 R14 104 [0m
4902 [93m19608[94m: subi R12 R12 20 [0m
4903 [93m19612[94m: li R8 32 [0m
4904 [93m19616[94m: sbi R8 R12 0 [0m
4905 [93m19620[94m: li R8 105 [0m
4906 [93m19624[94m: sbi R8 R12 1 [0m
4907 [93m19628[94m: li R8 115 [0m
4908 [93m19632[94m: sbi R8 R12 2 [0m
4909 [93m19636[94m: li R8 32 [0m
4910 [93m19640[94m: sbi R8 R12 3 [0m
4911 [93m19644[94m: li R8 97 [0m
4912 [93m19648[94m: sbi R8 R12 4 [0m
4913 [93m19652[94m: li R8 32 [0m
4914 [93m19656[94m: sbi R8 R12 5 [0m
4915 [93m19660[94m: li R8 112 [0m
4916 [93m19664[94m: sbi R8 R12 6 [0m
4917 [93m19668[94m: li R8 114 [0m
4918 [93m19672[94m: sbi R8 R12 7 [0m
4919 [93m19676[94m: li R8 105 [0m
4920 [93m19680[94m: sbi R8 R12 8 [0m
4921 [93m19684[94m: li R8 109 [0m
4922 [93m19688[94m: sbi R8 R12 9 [0m
4923 [93m19692[94m: li R8 101 [0m
4924 [93m19696[94m: sbi R8 R12 10 [0m
4925 [93m19700[94m: li R8 32 [0m
4926 [93m19704[94m: sbi R8 R12 11 [0m
4927 [93m19708[94m: li R8 110 [0m
4928 [93m19712[94m: sbi R8 R12 12 [0m
4929 [93m19716[94m: li R8 117 [0m
4930 [93m19720[94m: sbi R8 R12 13 [0m
4931 [93m19724[94m: li R8 109 [0m
4932 [93m19728[94m: sbi R8 R12 14 [0m
4933 [93m19732[94m: li R8 98 [0m
4934 [93m19736[94m: sbi R8 R12 15 [0m
4935 [93m19740[94m: li R8 101 [0m
4936 [93m19744[94m: sbi R8 R12 16 [0m
4937 [93m19748[94m: li R8 114 [0m
4938 [93m19752[94m: sbi R8 R12 17 [0m
4939 [93m19756[94m: sbi R0 R12 18 [0m
4940 [93m19760[94m: swi R12 R14 108 [0m
4941 [93m19764[94m: lwi R8 R14 108 [0m
4942 [93m19768[94m: swi R8 R14 0 [0m
4943 [93m19772[94m: lwi R8 R14 0 [0m
4944 [93m19776[94m: swi R8 R14 -16 [0m
4945 [93m19780[94m: li R8 19796 [0m
4946 [93m19784[94m: swi R8 R14 -8 [0m
4947 [93m19788[94m: addi R14 R14 -52 [0m
4948 [93m19792[94m: jmp -19612 [0m
4949 [93m19796[94m: lwi R8 R14 -4 [0m
4950 [93m19800[94m: swi R8 R14 112 [0m
4951 [93m19804[94m: lwi R8 R14 112 [0m
4952 [93m19808[94m: swi R8 R14 4 [0m
4953 [93m19812[94m: lwi R8 R14 0 [0m
4954 [93m19816[94m: swi R8 R14 -16 [0m
4955 [93m19820[94m: lwi R8 R14 4 [0m
4956 [93m19824[94m: swi R8 R14 -20 [0m
4957 [93m19828[94m: li R8 1 [0m
4958 [93m19832[94m: swi R8 R14 116 [0m
4959 [93m19836[94m: lwi R8 R14 116 [0m
4960 [93m19840[94m: swi R8 R14 -24 [0m
4961 [93m19844[94m: li R8 19860 [0m
4962 [93m19848[94m: swi R8 R14 -8 [0m
4963 [93m19852[94m: addi R14 R14 -180 [0m
4964 [93m19856[94m: jmp -16244 [0m
4965 [93m19860[94m: lwi R8 R14 -4 [0m
4966 [93m19864[94m: swi R8 R14 120 [0m
4967 [93m19868[94m: jmp 340 [0m
4968 [93m19872[94m: lwi R8 R14 8 [0m
4969 [93m19876[94m: swi R8 R14 -16 [0m
4970 [93m19880[94m: li R8 0 [0m
4971 [93m19884[94m: swi R8 R14 124 [0m
4972 [93m19888[94m: lwi R8 R14 124 [0m
4973 [93m19892[94m: swi R8 R14 -20 [0m
4974 [93m19896[94m: li R8 19912 [0m
4975 [93m19900[94m: swi R8 R14 -8 [0m
4976 [93m19904[94m: addi R14 R14 -152 [0m
4977 [93m19908[94m: jmp -13616 [0m
4978 [93m19912[94m: lwi R8 R14 -4 [0m
4979 [93m19916[94m: swi R8 R14 128 [0m
4980 [93m19920[94m: subi R12 R12 24 [0m
4981 [93m19924[94m: li R8 32 [0m
4982 [93m19928[94m: sbi R8 R12 0 [0m
4983 [93m19932[94m: li R8 105 [0m
4984 [93m19936[94m: sbi R8 R12 1 [0m
4985 [93m19940[94m: li R8 115 [0m
4986 [93m19944[94m: sbi R8 R12 2 [0m
4987 [93m19948[94m: li R8 32 [0m
4988 [93m19952[94m: sbi R8 R12 3 [0m
4989 [93m19956[94m: li R8 110 [0m
4990 [93m19960[94m: sbi R8 R12 4 [0m
4991 [93m19964[94m: li R8 111 [0m
4992 [93m19968[94m: sbi R8 R12 5 [0m
4993 [93m19972[94m: li R8 116 [0m
4994 [93m19976[94m: sbi R8 R12 6 [0m
4995 [93m19980[94m: li R8 32 [0m
4996 [93m19984[94m: sbi R8 R12 7 [0m
4997 [93m19988[94m: li R8 97 [0m
4998 [93m19992[94m: sbi R8 R12 8 [0m
4999 [93m19996[94m: li R8 32 [0m
5000 [93m20000[94m: sbi R8 R12 9 [0m
5001 [93m20004[94m: li R8 112 [0m
5002 [93m20008[94m: sbi R8 R12 10 [0m
5003 [93m20012[94m: li R8 114 [0m
5004 [93m20016[94m: sbi R8 R12 11 [0m
5005 [93m20020[94m: li R8 105 [0m
5006 [93m20024[94m: sbi R8 R12 12 [0m
5007 [93m20028[94m: li R8 109 [0m
5008 [93m20032[94m: sbi R8 R12 13 [0m
5009 [93m20036[94m: li R8 101 [0m
5010 [93m20040[94m: sbi R8 R12 14 [0m
5011 [93m20044[94m: li R8 32 [0m
5012 [93m20048[94m: sbi R8 R12 15 [0m
5013 [93m20052[94m: li R8 110 [0m
5014 [93m20056[94m: sbi R8 R12 16 [0m
5015 [93m20060[94m: li R8 117 [0m
5016 [93m20064[94m: sbi R8 R12 17 [0m
5017 [93m20068[94m: li R8 109 [0m
5018 [93m20072[94m: sbi R8 R12 18 [0m
5019 [93m20076[94m: li R8 98 [0m
5020 [93m20080[94m: sbi R8 R12 19 [0m
5021 [93m20084[94m: li R8 101 [0m
5022 [93m20088[94m: sbi R8 R12 20 [0m
5023 [93m20092[94m: li R8 114 [0m
5024 [93m20096[94m: sbi R8 R12 21 [0m
5025 [93m20100[94m: sbi R0 R12 22 [0m
5026 [93m20104[94m: swi R12 R14 132 [0m
5027 [93m20108[94m: lwi R8 R14 132 [0m
5028 [93m20112[94m: swi R8 R14 0 [0m
5029 [93m20116[94m: lwi R8 R14 0 [0m
5030 [93m20120[94m: swi R8 R14 -16 [0m
5031 [93m20124[94m: li R8 20140 [0m
5032 [93m20128[94m: swi R8 R14 -8 [0m
5033 [93m20132[94m: addi R14 R14 -52 [0m
5034 [93m20136[94m: jmp -19956 [0m
5035 [93m20140[94m: lwi R8 R14 -4 [0m
5036 [93m20144[94m: swi R8 R14 136 [0m
5037 [93m20148[94m: lwi R8 R14 136 [0m
5038 [93m20152[94m: swi R8 R14 4 [0m
5039 [93m20156[94m: lwi R8 R14 0 [0m
5040 [93m20160[94m: swi R8 R14 -16 [0m
5041 [93m20164[94m: lwi R8 R14 4 [0m
5042 [93m20168[94m: swi R8 R14 -20 [0m
5043 [93m20172[94m: li R8 1 [0m
5044 [93m20176[94m: swi R8 R14 140 [0m
5045 [93m20180[94m: lwi R8 R14 140 [0m
5046 [93m20184[94m: swi R8 R14 -24 [0m
5047 [93m20188[94m: li R8 20204 [0m
5048 [93m20192[94m: swi R8 R14 -8 [0m
5049 [93m20196[94m: addi R14 R14 -180 [0m
5050 [93m20200[94m: jmp -16588 [0m
5051 [93m20204[94m: lwi R8 R14 -4 [0m
5052 [93m20208[94m: swi R8 R14 144 [0m
5053 [93m20212[94m: li R8 0 [0m
5054 [93m20216[94m: swi R8 R14 148 [0m
5055 [93m20220[94m: lwi R8 R14 148 [0m
5056 [93m20224[94m: swi R8 R14 160 [0m
5057 [93m20228[94m: lwi R12 R14 152 [0m
5058 [93m20232[94m: li R8 20252 [0m
5059 [93m20236[94m: lwi R9 R14 156 [0m
5060 [93m20240[94m: sub R10 R9 R8 [0m
5061 [93m20244[94m: addi R14 R14 164 [0m
5062 [93m20248[94m: jr R10 [0m
5063 [93m20252[94m: swi R12 R14 160 [0m
5064 [93m20256[94m: lwi R8 R14 148 [0m
5065 [93m20260[94m: li R9 4 [0m
5066 [93m20264[94m: mul R10 R8 R9 [0m
5067 [93m20268[94m: swi R10 R14 20 [0m
5068 [93m20272[94m: lwi R8 R14 156 [0m
5069 [93m20276[94m: lwi R9 R14 20 [0m
5070 [93m20280[94m: add R10 R8 R9 [0m
5071 [93m20284[94m: swi R10 R14 24 [0m
5072 [93m20288[94m: lwi R8 R14 24 [0m
5073 [93m20292[94m: lwi R8 R8 0 [0m
5074 [93m20296[94m: swi R8 R14 0 [0m
5075 [93m20300[94m: li R8 1 [0m
5076 [93m20304[94m: swi R8 R14 28 [0m
5077 [93m20308[94m: lwi R8 R14 152 [0m
5078 [93m20312[94m: lwi R9 R14 28 [0m
5079 [93m20316[94m: sub R10 R8 R9 [0m
5080 [93m20320[94m: swi R10 R14 32 [0m
5081 [93m20324[94m: lwi R8 R14 32 [0m
5082 [93m20328[94m: swi R8 R14 4 [0m
5083 [93m20332[94m: lwi R8 R14 152 [0m
5084 [93m20336[94m: swi R8 R14 8 [0m
5085 [93m20340[94m: lwi R8 R14 8 [0m
5086 [93m20344[94m: lwi R9 R14 148 [0m
5087 [93m20348[94m: le R10 R8 R9 [0m
5088 [93m20352[94m: swi R10 R14 36 [0m
5089 [93m20356[94m: lwi R8 R14 36 [0m
5090 [93m20360[94m: cmp R8 R0 [0m
5091 [93m20364[94m: jeq 296 [0m
5092 [93m20368[94m: jmp 28 [0m
5093 [93m20372[94m: lwi R8 R14 8 [0m
5094 [93m20376[94m: swi R8 R14 40 [0m
5095 [93m20380[94m: lwi R8 R14 8 [0m
5096 [93m20384[94m: li R9 1 [0m
5097 [93m20388[94m: add R10 R8 R9 [0m
5098 [93m20392[94m: swi R10 R14 8 [0m
5099 [93m20396[94m: jmp -60 [0m
5100 [93m20400[94m: lwi R8 R14 8 [0m
5101 [93m20404[94m: li R9 4 [0m
5102 [93m20408[94m: mul R10 R8 R9 [0m
5103 [93m20412[94m: swi R10 R14 44 [0m
5104 [93m20416[94m: lwi R8 R14 156 [0m
5105 [93m20420[94m: lwi R9 R14 44 [0m
5106 [93m20424[94m: add R10 R8 R9 [0m
5107 [93m20428[94m: swi R10 R14 48 [0m
5108 [93m20432[94m: lwi R8 R14 48 [0m
5109 [93m20436[94m: lwi R8 R8 0 [0m
5110 [93m20440[94m: lwi R9 R14 0 [0m
5111 [93m20444[94m: lt R10 R8 R9 [0m
5112 [93m20448[94m: swi R10 R14 52 [0m
5113 [93m20452[94m: lwi R8 R14 52 [0m
5114 [93m20456[94m: cmp R8 R0 [0m
5115 [93m20460[94m: jeq 196 [0m
5116 [93m20464[94m: lwi R8 R14 4 [0m
5117 [93m20468[94m: swi R8 R14 56 [0m
5118 [93m20472[94m: lwi R8 R14 4 [0m
5119 [93m20476[94m: li R9 1 [0m
5120 [93m20480[94m: add R10 R8 R9 [0m
5121 [93m20484[94m: swi R10 R14 4 [0m
5122 [93m20488[94m: lwi R8 R14 4 [0m
5123 [93m20492[94m: li R9 4 [0m
5124 [93m20496[94m: mul R10 R8 R9 [0m
5125 [93m20500[94m: swi R10 R14 60 [0m
5126 [93m20504[94m: lwi R8 R14 156 [0m
5127 [93m20508[94m: lwi R9 R14 60 [0m
5128 [93m20512[94m: add R10 R8 R9 [0m
5129 [93m20516[94m: swi R10 R14 64 [0m
5130 [93m20520[94m: lwi R8 R14 64 [0m
5131 [93m20524[94m: lwi R8 R8 0 [0m
5132 [93m20528[94m: swi R8 R14 12 [0m
5133 [93m20532[94m: lwi R8 R14 4 [0m
5134 [93m20536[94m: li R9 4 [0m
5135 [93m20540[94m: mul R10 R8 R9 [0m
5136 [93m20544[94m: swi R10 R14 68 [0m
5137 [93m20548[94m: lwi R8 R14 156 [0m
5138 [93m20552[94m: lwi R9 R14 68 [0m
5139 [93m20556[94m: add R10 R8 R9 [0m
5140 [93m20560[94m: swi R10 R14 72 [0m
5141 [93m20564[94m: lwi R8 R14 8 [0m
5142 [93m20568[94m: li R9 4 [0m
5143 [93m20572[94m: mul R10 R8 R9 [0m
5144 [93m20576[94m: swi R10 R14 76 [0m
5145 [93m20580[94m: lwi R8 R14 156 [0m
5146 [93m20584[94m: lwi R9 R14 76 [0m
5147 [93m20588[94m: add R10 R8 R9 [0m
5148 [93m20592[94m: swi R10 R14 80 [0m
5149 [93m20596[94m: lwi R8 R14 80 [0m
5150 [93m20600[94m: lwi R8 R8 0 [0m
5151 [93m20604[94m: lwi R7 R14 72 [0m
5152 [93m20608[94m: swi R8 R7 0 [0m
5153 [93m20612[94m: lwi R8 R14 8 [0m
5154 [93m20616[94m: li R9 4 [0m
5155 [93m20620[94m: mul R10 R8 R9 [0m
5156 [93m20624[94m: swi R10 R14 84 [0m
5157 [93m20628[94m: lwi R8 R14 156 [0m
5158 [93m20632[94m: lwi R9 R14 84 [0m
5159 [93m20636[94m: add R10 R8 R9 [0m
5160 [93m20640[94m: swi R10 R14 88 [0m
5161 [93m20644[94m: lwi R8 R14 12 [0m
5162 [93m20648[94m: lwi R7 R14 88 [0m
5163 [93m20652[94m: swi R8 R7 0 [0m
5164 [93m20656[94m: jmp 0 [0m
5165 [93m20660[94m: jmp -292 [0m
5166 [93m20664[94m: li R8 1 [0m
5167 [93m20668[94m: swi R8 R14 92 [0m
5168 [93m20672[94m: lwi R8 R14 4 [0m
5169 [93m20676[94m: lwi R9 R14 92 [0m
5170 [93m20680[94m: add R10 R8 R9 [0m
5171 [93m20684[94m: swi R10 R14 96 [0m
5172 [93m20688[94m: lwi R8 R14 96 [0m
5173 [93m20692[94m: li R9 4 [0m
5174 [93m20696[94m: mul R10 R8 R9 [0m
5175 [93m20700[94m: swi R10 R14 100 [0m
5176 [93m20704[94m: lwi R8 R14 156 [0m
5177 [93m20708[94m: lwi R9 R14 100 [0m
5178 [93m20712[94m: add R10 R8 R9 [0m
5179 [93m20716[94m: swi R10 R14 104 [0m
5180 [93m20720[94m: lwi R8 R14 104 [0m
5181 [93m20724[94m: lwi R8 R8 0 [0m
5182 [93m20728[94m: swi R8 R14 16 [0m
5183 [93m20732[94m: li R8 1 [0m
5184 [93m20736[94m: swi R8 R14 108 [0m
5185 [93m20740[94m: lwi R8 R14 4 [0m
5186 [93m20744[94m: lwi R9 R14 108 [0m
5187 [93m20748[94m: add R10 R8 R9 [0m
5188 [93m20752[94m: swi R10 R14 112 [0m
5189 [93m20756[94m: lwi R8 R14 112 [0m
5190 [93m20760[94m: li R9 4 [0m
5191 [93m20764[94m: mul R10 R8 R9 [0m
5192 [93m20768[94m: swi R10 R14 116 [0m
5193 [93m20772[94m: lwi R8 R14 156 [0m
5194 [93m20776[94m: lwi R9 R14 116 [0m
5195 [93m20780[94m: add R10 R8 R9 [0m
5196 [93m20784[94m: swi R10 R14 120 [0m
5197 [93m20788[94m: lwi R8 R14 148 [0m
5198 [93m20792[94m: li R9 4 [0m
5199 [93m20796[94m: mul R10 R8 R9 [0m
5200 [93m20800[94m: swi R10 R14 124 [0m
5201 [93m20804[94m: lwi R8 R14 156 [0m
5202 [93m20808[94m: lwi R9 R14 124 [0m
5203 [93m20812[94m: add R10 R8 R9 [0m
5204 [93m20816[94m: swi R10 R14 128 [0m
5205 [93m20820[94m: lwi R8 R14 128 [0m
5206 [93m20824[94m: lwi R8 R8 0 [0m
5207 [93m20828[94m: lwi R7 R14 120 [0m
5208 [93m20832[94m: swi R8 R7 0 [0m
5209 [93m20836[94m: lwi R8 R14 148 [0m
5210 [93m20840[94m: li R9 4 [0m
5211 [93m20844[94m: mul R10 R8 R9 [0m
5212 [93m20848[94m: swi R10 R14 132 [0m
5213 [93m20852[94m: lwi R8 R14 156 [0m
5214 [93m20856[94m: lwi R9 R14 132 [0m
5215 [93m20860[94m: add R10 R8 R9 [0m
5216 [93m20864[94m: swi R10 R14 136 [0m
5217 [93m20868[94m: lwi R8 R14 16 [0m
5218 [93m20872[94m: lwi R7 R14 136 [0m
5219 [93m20876[94m: swi R8 R7 0 [0m
5220 [93m20880[94m: li R8 1 [0m
5221 [93m20884[94m: swi R8 R14 140 [0m
5222 [93m20888[94m: lwi R8 R14 4 [0m
5223 [93m20892[94m: lwi R9 R14 140 [0m
5224 [93m20896[94m: add R10 R8 R9 [0m
5225 [93m20900[94m: swi R10 R14 144 [0m
5226 [93m20904[94m: lwi R8 R14 144 [0m
5227 [93m20908[94m: swi R8 R14 168 [0m
5228 [93m20912[94m: lwi R12 R14 160 [0m
5229 [93m20916[94m: li R8 20936 [0m
5230 [93m20920[94m: lwi R9 R14 164 [0m
5231 [93m20924[94m: sub R10 R9 R8 [0m
5232 [93m20928[94m: addi R14 R14 172 [0m
5233 [93m20932[94m: jr R10 [0m
5234 [93m20936[94m: swi R12 R14 52 [0m
5235 [93m20940[94m: lwi R8 R14 44 [0m
5236 [93m20944[94m: lwi R9 R14 40 [0m
5237 [93m20948[94m: lt R10 R8 R9 [0m
5238 [93m20952[94m: swi R10 R14 4 [0m
5239 [93m20956[94m: lwi R8 R14 4 [0m
5240 [93m20960[94m: cmp R8 R0 [0m
5241 [93m20964[94m: jeq 204 [0m
5242 [93m20968[94m: lwi R8 R14 48 [0m
5243 [93m20972[94m: swi R8 R14 -16 [0m
5244 [93m20976[94m: lwi R8 R14 44 [0m
5245 [93m20980[94m: swi R8 R14 -20 [0m
5246 [93m20984[94m: lwi R8 R14 40 [0m
5247 [93m20988[94m: swi R8 R14 -24 [0m
5248 [93m20992[94m: li R8 21008 [0m
5249 [93m20996[94m: swi R8 R14 -8 [0m
5250 [93m21000[94m: addi R14 R14 -172 [0m
5251 [93m21004[94m: jmp -756 [0m
5252 [93m21008[94m: lwi R8 R14 -4 [0m
5253 [93m21012[94m: swi R8 R14 8 [0m
5254 [93m21016[94m: lwi R8 R14 8 [0m
5255 [93m21020[94m: swi R8 R14 0 [0m
5256 [93m21024[94m: lwi R8 R14 48 [0m
5257 [93m21028[94m: swi R8 R14 -16 [0m
5258 [93m21032[94m: lwi R8 R14 44 [0m
5259 [93m21036[94m: swi R8 R14 -20 [0m
5260 [93m21040[94m: li R8 1 [0m
5261 [93m21044[94m: swi R8 R14 12 [0m
5262 [93m21048[94m: lwi R8 R14 0 [0m
5263 [93m21052[94m: lwi R9 R14 12 [0m
5264 [93m21056[94m: sub R10 R8 R9 [0m
5265 [93m21060[94m: swi R10 R14 16 [0m
5266 [93m21064[94m: lwi R8 R14 16 [0m
5267 [93m21068[94m: swi R8 R14 -24 [0m
5268 [93m21072[94m: li R8 21088 [0m
5269 [93m21076[94m: swi R8 R14 -8 [0m
5270 [93m21080[94m: addi R14 R14 -64 [0m
5271 [93m21084[94m: jmp -152 [0m
5272 [93m21088[94m: lwi R8 R14 -4 [0m
5273 [93m21092[94m: swi R8 R14 20 [0m
5274 [93m21096[94m: lwi R8 R14 48 [0m
5275 [93m21100[94m: swi R8 R14 -16 [0m
5276 [93m21104[94m: li R8 1 [0m
5277 [93m21108[94m: swi R8 R14 24 [0m
5278 [93m21112[94m: lwi R8 R14 0 [0m
5279 [93m21116[94m: lwi R9 R14 24 [0m
5280 [93m21120[94m: add R10 R8 R9 [0m
5281 [93m21124[94m: swi R10 R14 28 [0m
5282 [93m21128[94m: lwi R8 R14 28 [0m
5283 [93m21132[94m: swi R8 R14 -20 [0m
5284 [93m21136[94m: lwi R8 R14 40 [0m
5285 [93m21140[94m: swi R8 R14 -24 [0m
5286 [93m21144[94m: li R8 21160 [0m
5287 [93m21148[94m: swi R8 R14 -8 [0m
5288 [93m21152[94m: addi R14 R14 -64 [0m
5289 [93m21156[94m: jmp -224 [0m
5290 [93m21160[94m: lwi R8 R14 -4 [0m
5291 [93m21164[94m: swi R8 R14 32 [0m
5292 [93m21168[94m: jmp 0 [0m
5293 [93m21172[94m: li R8 0 [0m
5294 [93m21176[94m: swi R8 R14 36 [0m
5295 [93m21180[94m: lwi R8 R14 36 [0m
5296 [93m21184[94m: swi R8 R14 60 [0m
5297 [93m21188[94m: lwi R12 R14 52 [0m
5298 [93m21192[94m: li R8 21212 [0m
5299 [93m21196[94m: lwi R9 R14 56 [0m
5300 [93m21200[94m: sub R10 R9 R8 [0m
5301 [93m21204[94m: addi R14 R14 64 [0m
5302 [93m21208[94m: jr R10 [0m
5303 [93m21212[94m: swi R12 R14 172 [0m
5304 [93m21216[94m: subi R12 R12 32 [0m
5305 [93m21220[94m: li R8 69 [0m
5306 [93m21224[94m: sbi R8 R12 0 [0m
5307 [93m21228[94m: li R8 110 [0m
5308 [93m21232[94m: sbi R8 R12 1 [0m
5309 [93m21236[94m: li R8 116 [0m
5310 [93m21240[94m: sbi R8 R12 2 [0m
5311 [93m21244[94m: li R8 101 [0m
5312 [93m21248[94m: sbi R8 R12 3 [0m
5313 [93m21252[94m: li R8 114 [0m
5314 [93m21256[94m: sbi R8 R12 4 [0m
5315 [93m21260[94m: li R8 32 [0m
5316 [93m21264[94m: sbi R8 R12 5 [0m
5317 [93m21268[94m: li R8 116 [0m
5318 [93m21272[94m: sbi R8 R12 6 [0m
5319 [93m21276[94m: li R8 104 [0m
5320 [93m21280[94m: sbi R8 R12 7 [0m
5321 [93m21284[94m: li R8 101 [0m
5322 [93m21288[94m: sbi R8 R12 8 [0m
5323 [93m21292[94m: li R8 32 [0m
5324 [93m21296[94m: sbi R8 R12 9 [0m
5325 [93m21300[94m: li R8 110 [0m
5326 [93m21304[94m: sbi R8 R12 10 [0m
5327 [93m21308[94m: li R8 117 [0m
5328 [93m21312[94m: sbi R8 R12 11 [0m
5329 [93m21316[94m: li R8 109 [0m
5330 [93m21320[94m: sbi R8 R12 12 [0m
5331 [93m21324[94m: li R8 98 [0m
5332 [93m21328[94m: sbi R8 R12 13 [0m
5333 [93m21332[94m: li R8 101 [0m
5334 [93m21336[94m: sbi R8 R12 14 [0m
5335 [93m21340[94m: li R8 114 [0m
5336 [93m21344[94m: sbi R8 R12 15 [0m
5337 [93m21348[94m: li R8 32 [0m
5338 [93m21352[94m: sbi R8 R12 16 [0m
5339 [93m21356[94m: li R8 111 [0m
5340 [93m21360[94m: sbi R8 R12 17 [0m
5341 [93m21364[94m: li R8 102 [0m
5342 [93m21368[94m: sbi R8 R12 18 [0m
5343 [93m21372[94m: li R8 32 [0m
5344 [93m21376[94m: sbi R8 R12 19 [0m
5345 [93m21380[94m: li R8 101 [0m
5346 [93m21384[94m: sbi R8 R12 20 [0m
5347 [93m21388[94m: li R8 108 [0m
5348 [93m21392[94m: sbi R8 R12 21 [0m
5349 [93m21396[94m: li R8 101 [0m
5350 [93m21400[94m: sbi R8 R12 22 [0m
5351 [93m21404[94m: li R8 109 [0m
5352 [93m21408[94m: sbi R8 R12 23 [0m
5353 [93m21412[94m: li R8 101 [0m
5354 [93m21416[94m: sbi R8 R12 24 [0m
5355 [93m21420[94m: li R8 110 [0m
5356 [93m21424[94m: sbi R8 R12 25 [0m
5357 [93m21428[94m: li R8 116 [0m
5358 [93m21432[94m: sbi R8 R12 26 [0m
5359 [93m21436[94m: li R8 115 [0m
5360 [93m21440[94m: sbi R8 R12 27 [0m
5361 [93m21444[94m: sbi R0 R12 28 [0m
5362 [93m21448[94m: swi R12 R14 24 [0m
5363 [93m21452[94m: lwi R8 R14 24 [0m
5364 [93m21456[94m: swi R8 R14 4 [0m
5365 [93m21460[94m: lwi R8 R14 4 [0m
5366 [93m21464[94m: swi R8 R14 -16 [0m
5367 [93m21468[94m: li R8 21484 [0m
5368 [93m21472[94m: swi R8 R14 -8 [0m
5369 [93m21476[94m: addi R14 R14 -52 [0m
5370 [93m21480[94m: jmp -21300 [0m
5371 [93m21484[94m: lwi R8 R14 -4 [0m
5372 [93m21488[94m: swi R8 R14 28 [0m
5373 [93m21492[94m: lwi R8 R14 28 [0m
5374 [93m21496[94m: swi R8 R14 8 [0m
5375 [93m21500[94m: lwi R8 R14 4 [0m
5376 [93m21504[94m: swi R8 R14 -16 [0m
5377 [93m21508[94m: lwi R8 R14 8 [0m
5378 [93m21512[94m: swi R8 R14 -20 [0m
5379 [93m21516[94m: li R8 1 [0m
5380 [93m21520[94m: swi R8 R14 32 [0m
5381 [93m21524[94m: lwi R8 R14 32 [0m
5382 [93m21528[94m: swi R8 R14 -24 [0m
5383 [93m21532[94m: li R8 21548 [0m
5384 [93m21536[94m: swi R8 R14 -8 [0m
5385 [93m21540[94m: addi R14 R14 -180 [0m
5386 [93m21544[94m: jmp -17932 [0m
5387 [93m21548[94m: lwi R8 R14 -4 [0m
5388 [93m21552[94m: swi R8 R14 36 [0m
5389 [93m21556[94m: li R8 21572 [0m
5390 [93m21560[94m: swi R8 R14 -8 [0m
5391 [93m21564[94m: addi R14 R14 -204 [0m
5392 [93m21568[94m: jmp -16604 [0m
5393 [93m21572[94m: lwi R8 R14 -4 [0m
5394 [93m21576[94m: swi R8 R14 40 [0m
5395 [93m21580[94m: lwi R8 R14 40 [0m
5396 [93m21584[94m: swi R8 R14 0 [0m
5397 [93m21588[94m: subi R12 R12 20 [0m
5398 [93m21592[94m: li R8 69 [0m
5399 [93m21596[94m: sbi R8 R12 0 [0m
5400 [93m21600[94m: li R8 110 [0m
5401 [93m21604[94m: sbi R8 R12 1 [0m
5402 [93m21608[94m: li R8 116 [0m
5403 [93m21612[94m: sbi R8 R12 2 [0m
5404 [93m21616[94m: li R8 101 [0m
5405 [93m21620[94m: sbi R8 R12 3 [0m
5406 [93m21624[94m: li R8 114 [0m
5407 [93m21628[94m: sbi R8 R12 4 [0m
5408 [93m21632[94m: li R8 32 [0m
5409 [93m21636[94m: sbi R8 R12 5 [0m
5410 [93m21640[94m: li R8 116 [0m
5411 [93m21644[94m: sbi R8 R12 6 [0m
5412 [93m21648[94m: li R8 104 [0m
5413 [93m21652[94m: sbi R8 R12 7 [0m
5414 [93m21656[94m: li R8 101 [0m
5415 [93m21660[94m: sbi R8 R12 8 [0m
5416 [93m21664[94m: li R8 32 [0m
5417 [93m21668[94m: sbi R8 R12 9 [0m
5418 [93m21672[94m: li R8 101 [0m
5419 [93m21676[94m: sbi R8 R12 10 [0m
5420 [93m21680[94m: li R8 108 [0m
5421 [93m21684[94m: sbi R8 R12 11 [0m
5422 [93m21688[94m: li R8 101 [0m
5423 [93m21692[94m: sbi R8 R12 12 [0m
5424 [93m21696[94m: li R8 109 [0m
5425 [93m21700[94m: sbi R8 R12 13 [0m
5426 [93m21704[94m: li R8 101 [0m
5427 [93m21708[94m: sbi R8 R12 14 [0m
5428 [93m21712[94m: li R8 110 [0m
5429 [93m21716[94m: sbi R8 R12 15 [0m
5430 [93m21720[94m: li R8 116 [0m
5431 [93m21724[94m: sbi R8 R12 16 [0m
5432 [93m21728[94m: li R8 115 [0m
5433 [93m21732[94m: sbi R8 R12 17 [0m
5434 [93m21736[94m: sbi R0 R12 18 [0m
5435 [93m21740[94m: swi R12 R14 44 [0m
5436 [93m21744[94m: lwi R8 R14 44 [0m
5437 [93m21748[94m: swi R8 R14 4 [0m
5438 [93m21752[94m: lwi R8 R14 4 [0m
5439 [93m21756[94m: swi R8 R14 -16 [0m
5440 [93m21760[94m: li R8 21776 [0m
5441 [93m21764[94m: swi R8 R14 -8 [0m
5442 [93m21768[94m: addi R14 R14 -52 [0m
5443 [93m21772[94m: jmp -21592 [0m
5444 [93m21776[94m: lwi R8 R14 -4 [0m
5445 [93m21780[94m: swi R8 R14 48 [0m
5446 [93m21784[94m: lwi R8 R14 48 [0m
5447 [93m21788[94m: swi R8 R14 8 [0m
5448 [93m21792[94m: lwi R8 R14 4 [0m
5449 [93m21796[94m: swi R8 R14 -16 [0m
5450 [93m21800[94m: lwi R8 R14 8 [0m
5451 [93m21804[94m: swi R8 R14 -20 [0m
5452 [93m21808[94m: li R8 1 [0m
5453 [93m21812[94m: swi R8 R14 52 [0m
5454 [93m21816[94m: lwi R8 R14 52 [0m
5455 [93m21820[94m: swi R8 R14 -24 [0m
5456 [93m21824[94m: li R8 21840 [0m
5457 [93m21828[94m: swi R8 R14 -8 [0m
5458 [93m21832[94m: addi R14 R14 -180 [0m
5459 [93m21836[94m: jmp -18224 [0m
5460 [93m21840[94m: lwi R8 R14 -4 [0m
5461 [93m21844[94m: swi R8 R14 56 [0m
5462 [93m21848[94m: lwi R8 R14 0 [0m
5463 [93m21852[94m: swi R8 R14 12 [0m
5464 [93m21856[94m: lwi R8 R14 0 [0m
5465 [93m21860[94m: li R9 4 [0m
5466 [93m21864[94m: mul R10 R8 R9 [0m
5467 [93m21868[94m: modi R8 R10 4 [0m
5468 [93m21872[94m: li R9 4 [0m
5469 [93m21876[94m: sub R8 R9 R8 [0m
5470 [93m21880[94m: add R10 R10 R8 [0m
5471 [93m21884[94m: sub R12 R12 R10 [0m
5472 [93m21888[94m: swi R12 R14 16 [0m
5473 [93m21892[94m: li R8 0 [0m
5474 [93m21896[94m: swi R8 R14 60 [0m
5475 [93m21900[94m: lwi R8 R14 60 [0m
5476 [93m21904[94m: swi R8 R14 20 [0m
5477 [93m21908[94m: lwi R8 R14 20 [0m
5478 [93m21912[94m: lwi R9 R14 0 [0m
5479 [93m21916[94m: lt R10 R8 R9 [0m
5480 [93m21920[94m: swi R10 R14 64 [0m
5481 [93m21924[94m: lwi R8 R14 64 [0m
5482 [93m21928[94m: cmp R8 R0 [0m
5483 [93m21932[94m: jeq 104 [0m
5484 [93m21936[94m: jmp 28 [0m
5485 [93m21940[94m: lwi R8 R14 20 [0m
5486 [93m21944[94m: swi R8 R14 68 [0m
5487 [93m21948[94m: lwi R8 R14 20 [0m
5488 [93m21952[94m: li R9 1 [0m
5489 [93m21956[94m: add R10 R8 R9 [0m
5490 [93m21960[94m: swi R10 R14 20 [0m
5491 [93m21964[94m: jmp -60 [0m
5492 [93m21968[94m: lwi R8 R14 20 [0m
5493 [93m21972[94m: li R9 4 [0m
5494 [93m21976[94m: mul R10 R8 R9 [0m
5495 [93m21980[94m: swi R10 R14 72 [0m
5496 [93m21984[94m: lwi R8 R14 16 [0m
5497 [93m21988[94m: lwi R9 R14 72 [0m
5498 [93m21992[94m: add R10 R8 R9 [0m
5499 [93m21996[94m: swi R10 R14 76 [0m
5500 [93m22000[94m: li R8 22016 [0m
5501 [93m22004[94m: swi R8 R14 -8 [0m
5502 [93m22008[94m: addi R14 R14 -204 [0m
5503 [93m22012[94m: jmp -17048 [0m
5504 [93m22016[94m: lwi R8 R14 -4 [0m
5505 [93m22020[94m: swi R8 R14 80 [0m
5506 [93m22024[94m: lwi R8 R14 80 [0m
5507 [93m22028[94m: lwi R7 R14 76 [0m
5508 [93m22032[94m: swi R8 R7 0 [0m
5509 [93m22036[94m: jmp -100 [0m
5510 [93m22040[94m: subi R12 R12 16 [0m
5511 [93m22044[94m: li R8 83 [0m
5512 [93m22048[94m: sbi R8 R12 0 [0m
5513 [93m22052[94m: li R8 111 [0m
5514 [93m22056[94m: sbi R8 R12 1 [0m
5515 [93m22060[94m: li R8 114 [0m
5516 [93m22064[94m: sbi R8 R12 2 [0m
5517 [93m22068[94m: li R8 116 [0m
5518 [93m22072[94m: sbi R8 R12 3 [0m
5519 [93m22076[94m: li R8 101 [0m
5520 [93m22080[94m: sbi R8 R12 4 [0m
5521 [93m22084[94m: li R8 100 [0m
5522 [93m22088[94m: sbi R8 R12 5 [0m
5523 [93m22092[94m: li R8 32 [0m
5524 [93m22096[94m: sbi R8 R12 6 [0m
5525 [93m22100[94m: li R8 65 [0m
5526 [93m22104[94m: sbi R8 R12 7 [0m
5527 [93m22108[94m: li R8 114 [0m
5528 [93m22112[94m: sbi R8 R12 8 [0m
5529 [93m22116[94m: li R8 114 [0m
5530 [93m22120[94m: sbi R8 R12 9 [0m
5531 [93m22124[94m: li R8 97 [0m
5532 [93m22128[94m: sbi R8 R12 10 [0m
5533 [93m22132[94m: li R8 121 [0m
5534 [93m22136[94m: sbi R8 R12 11 [0m
5535 [93m22140[94m: li R8 32 [0m
5536 [93m22144[94m: sbi R8 R12 12 [0m
5537 [93m22148[94m: li R8 105 [0m
5538 [93m22152[94m: sbi R8 R12 13 [0m
5539 [93m22156[94m: li R8 115 [0m
5540 [93m22160[94m: sbi R8 R12 14 [0m
5541 [93m22164[94m: sbi R0 R12 15 [0m
5542 [93m22168[94m: swi R12 R14 84 [0m
5543 [93m22172[94m: lwi R8 R14 84 [0m
5544 [93m22176[94m: swi R8 R14 4 [0m
5545 [93m22180[94m: lwi R8 R14 4 [0m
5546 [93m22184[94m: swi R8 R14 -16 [0m
5547 [93m22188[94m: li R8 22204 [0m
5548 [93m22192[94m: swi R8 R14 -8 [0m
5549 [93m22196[94m: addi R14 R14 -52 [0m
5550 [93m22200[94m: jmp -22020 [0m
5551 [93m22204[94m: lwi R8 R14 -4 [0m
5552 [93m22208[94m: swi R8 R14 88 [0m
5553 [93m22212[94m: lwi R8 R14 88 [0m
5554 [93m22216[94m: swi R8 R14 8 [0m
5555 [93m22220[94m: lwi R8 R14 4 [0m
5556 [93m22224[94m: swi R8 R14 -16 [0m
5557 [93m22228[94m: lwi R8 R14 8 [0m
5558 [93m22232[94m: swi R8 R14 -20 [0m
5559 [93m22236[94m: li R8 1 [0m
5560 [93m22240[94m: swi R8 R14 92 [0m
5561 [93m22244[94m: lwi R8 R14 92 [0m
5562 [93m22248[94m: swi R8 R14 -24 [0m
5563 [93m22252[94m: li R8 22268 [0m
5564 [93m22256[94m: swi R8 R14 -8 [0m
5565 [93m22260[94m: addi R14 R14 -180 [0m
5566 [93m22264[94m: jmp -18652 [0m
5567 [93m22268[94m: lwi R8 R14 -4 [0m
5568 [93m22272[94m: swi R8 R14 96 [0m
5569 [93m22276[94m: lwi R8 R14 16 [0m
5570 [93m22280[94m: swi R8 R14 -16 [0m
5571 [93m22284[94m: li R8 0 [0m
5572 [93m22288[94m: swi R8 R14 100 [0m
5573 [93m22292[94m: lwi R8 R14 100 [0m
5574 [93m22296[94m: swi R8 R14 -20 [0m
5575 [93m22300[94m: li R8 1 [0m
5576 [93m22304[94m: swi R8 R14 104 [0m
5577 [93m22308[94m: lwi R8 R14 0 [0m
5578 [93m22312[94m: lwi R9 R14 104 [0m
5579 [93m22316[94m: sub R10 R8 R9 [0m
5580 [93m22320[94m: swi R10 R14 108 [0m
5581 [93m22324[94m: lwi R8 R14 108 [0m
5582 [93m22328[94m: swi R8 R14 -24 [0m
5583 [93m22332[94m: li R8 22348 [0m
5584 [93m22336[94m: swi R8 R14 -8 [0m
5585 [93m22340[94m: addi R14 R14 -64 [0m
5586 [93m22344[94m: jmp -1412 [0m
5587 [93m22348[94m: lwi R8 R14 -4 [0m
5588 [93m22352[94m: swi R8 R14 112 [0m
5589 [93m22356[94m: subi R12 R12 4 [0m
5590 [93m22360[94m: li R8 32 [0m
5591 [93m22364[94m: sbi R8 R12 0 [0m
5592 [93m22368[94m: sbi R0 R12 1 [0m
5593 [93m22372[94m: swi R12 R14 116 [0m
5594 [93m22376[94m: lwi R8 R14 116 [0m
5595 [93m22380[94m: swi R8 R14 4 [0m
5596 [93m22384[94m: li R8 1 [0m
5597 [93m22388[94m: swi R8 R14 120 [0m
5598 [93m22392[94m: lwi R8 R14 120 [0m
5599 [93m22396[94m: swi R8 R14 8 [0m
5600 [93m22400[94m: li R8 0 [0m
5601 [93m22404[94m: swi R8 R14 124 [0m
5602 [93m22408[94m: lwi R8 R14 124 [0m
5603 [93m22412[94m: swi R8 R14 20 [0m
5604 [93m22416[94m: lwi R8 R14 20 [0m
5605 [93m22420[94m: lwi R9 R14 0 [0m
5606 [93m22424[94m: lt R10 R8 R9 [0m
5607 [93m22428[94m: swi R10 R14 128 [0m
5608 [93m22432[94m: lwi R8 R14 128 [0m
5609 [93m22436[94m: cmp R8 R0 [0m
5610 [93m22440[94m: jeq 176 [0m
5611 [93m22444[94m: jmp 28 [0m
5612 [93m22448[94m: lwi R8 R14 20 [0m
5613 [93m22452[94m: swi R8 R14 132 [0m
5614 [93m22456[94m: lwi R8 R14 20 [0m
5615 [93m22460[94m: li R9 1 [0m
5616 [93m22464[94m: add R10 R8 R9 [0m
5617 [93m22468[94m: swi R10 R14 20 [0m
5618 [93m22472[94m: jmp -60 [0m
5619 [93m22476[94m: lwi R8 R14 20 [0m
5620 [93m22480[94m: li R9 4 [0m
5621 [93m22484[94m: mul R10 R8 R9 [0m
5622 [93m22488[94m: swi R10 R14 136 [0m
5623 [93m22492[94m: lwi R8 R14 16 [0m
5624 [93m22496[94m: lwi R9 R14 136 [0m
5625 [93m22500[94m: add R10 R8 R9 [0m
5626 [93m22504[94m: swi R10 R14 140 [0m
5627 [93m22508[94m: lwi R8 R14 140 [0m
5628 [93m22512[94m: lwi R8 R8 0 [0m
5629 [93m22516[94m: swi R8 R14 -16 [0m
5630 [93m22520[94m: li R8 0 [0m
5631 [93m22524[94m: swi R8 R14 144 [0m
5632 [93m22528[94m: lwi R8 R14 144 [0m
5633 [93m22532[94m: swi R8 R14 -20 [0m
5634 [93m22536[94m: li R8 22552 [0m
5635 [93m22540[94m: swi R8 R14 -8 [0m
5636 [93m22544[94m: addi R14 R14 -152 [0m
5637 [93m22548[94m: jmp -16256 [0m
5638 [93m22552[94m: lwi R8 R14 -4 [0m
5639 [93m22556[94m: swi R8 R14 148 [0m
5640 [93m22560[94m: lwi R8 R14 4 [0m
5641 [93m22564[94m: swi R8 R14 -16 [0m
5642 [93m22568[94m: lwi R8 R14 8 [0m
5643 [93m22572[94m: swi R8 R14 -20 [0m
5644 [93m22576[94m: li R8 0 [0m
5645 [93m22580[94m: swi R8 R14 152 [0m
5646 [93m22584[94m: lwi R8 R14 152 [0m
5647 [93m22588[94m: swi R8 R14 -24 [0m
5648 [93m22592[94m: li R8 22608 [0m
5649 [93m22596[94m: swi R8 R14 -8 [0m
5650 [93m22600[94m: addi R14 R14 -180 [0m
5651 [93m22604[94m: jmp -18992 [0m
5652 [93m22608[94m: lwi R8 R14 -4 [0m
5653 [93m22612[94m: swi R8 R14 156 [0m
5654 [93m22616[94m: jmp -172 [0m
5655 [93m22620[94m: lwi R8 R14 4 [0m
5656 [93m22624[94m: swi R8 R14 -16 [0m
5657 [93m22628[94m: lwi R8 R14 8 [0m
5658 [93m22632[94m: swi R8 R14 -20 [0m
5659 [93m22636[94m: li R8 1 [0m
5660 [93m22640[94m: swi R8 R14 160 [0m
5661 [93m22644[94m: lwi R8 R14 160 [0m
5662 [93m22648[94m: swi R8 R14 -24 [0m
5663 [93m22652[94m: li R8 22668 [0m
5664 [93m22656[94m: swi R8 R14 -8 [0m
5665 [93m22660[94m: addi R14 R14 -180 [0m
5666 [93m22664[94m: jmp -19052 [0m
5667 [93m22668[94m: lwi R8 R14 -4 [0m
5668 [93m22672[94m: swi R8 R14 164 [0m
5669 [93m22676[94m: li R8 0 [0m
5670 [93m22680[94m: swi R8 R14 168 [0m
5671 [93m22684[94m: lwi R8 R14 168 [0m
5672 [93m22688[94m: swi R8 R14 180 [0m
5673 [93m22692[94m: lwi R12 R14 172 [0m
5674 [93m22696[94m: li R8 22716 [0m
5675 [93m22700[94m: lwi R9 R14 176 [0m
5676 [93m22704[94m: sub R10 R9 R8 [0m
5677 [93m22708[94m: addi R14 R14 184 [0m
5678 [93m22712[94m: jr R10 [0m
5679 [93m22716[94m: swi R12 R14 60 [0m
5680 [93m22720[94m: li R8 0 [0m
5681 [93m22724[94m: swi R8 R14 4 [0m
5682 [93m22728[94m: lwi R8 R14 4 [0m
5683 [93m22732[94m: swi R8 R14 0 [0m
5684 [93m22736[94m: lwi R8 R14 0 [0m
5685 [93m22740[94m: lwi R9 R14 52 [0m
5686 [93m22744[94m: lt R10 R8 R9 [0m
5687 [93m22748[94m: swi R10 R14 8 [0m
5688 [93m22752[94m: lwi R8 R14 8 [0m
5689 [93m22756[94m: cmp R8 R0 [0m
5690 [93m22760[94m: jeq 168 [0m
5691 [93m22764[94m: jmp 28 [0m
5692 [93m22768[94m: lwi R8 R14 0 [0m
5693 [93m22772[94m: swi R8 R14 12 [0m
5694 [93m22776[94m: lwi R8 R14 0 [0m
5695 [93m22780[94m: li R9 1 [0m
5696 [93m22784[94m: add R10 R8 R9 [0m
5697 [93m22788[94m: swi R10 R14 0 [0m
5698 [93m22792[94m: jmp -60 [0m
5699 [93m22796[94m: lwi R8 R14 0 [0m
5700 [93m22800[94m: li R9 4 [0m
5701 [93m22804[94m: mul R10 R8 R9 [0m
5702 [93m22808[94m: swi R10 R14 16 [0m
5703 [93m22812[94m: lwi R8 R14 56 [0m
5704 [93m22816[94m: lwi R9 R14 16 [0m
5705 [93m22820[94m: add R10 R8 R9 [0m
5706 [93m22824[94m: swi R10 R14 20 [0m
5707 [93m22828[94m: li R8 0 [0m
5708 [93m22832[94m: swi R8 R14 24 [0m
5709 [93m22836[94m: li R8 1 [0m
5710 [93m22840[94m: swi R8 R14 28 [0m
5711 [93m22844[94m: lwi R8 R14 24 [0m
5712 [93m22848[94m: lwi R9 R14 28 [0m
5713 [93m22852[94m: sub R10 R8 R9 [0m
5714 [93m22856[94m: swi R10 R14 32 [0m
5715 [93m22860[94m: lwi R8 R14 20 [0m
5716 [93m22864[94m: lwi R8 R8 0 [0m
5717 [93m22868[94m: lwi R9 R14 32 [0m
5718 [93m22872[94m: eq R10 R8 R9 [0m
5719 [93m22876[94m: swi R10 R14 36 [0m
5720 [93m22880[94m: lwi R8 R14 36 [0m
5721 [93m22884[94m: cmp R8 R0 [0m
5722 [93m22888[94m: jeq 36 [0m
5723 [93m22892[94m: lwi R8 R14 0 [0m
5724 [93m22896[94m: swi R8 R14 68 [0m
5725 [93m22900[94m: lwi R12 R14 60 [0m
5726 [93m22904[94m: li R8 22924 [0m
5727 [93m22908[94m: lwi R9 R14 64 [0m
5728 [93m22912[94m: sub R10 R9 R8 [0m
5729 [93m22916[94m: addi R14 R14 72 [0m
5730 [93m22920[94m: jr R10 [0m
5731 [93m22924[94m: jmp 0 [0m
5732 [93m22928[94m: jmp -164 [0m
5733 [93m22932[94m: li R8 0 [0m
5734 [93m22936[94m: swi R8 R14 40 [0m
5735 [93m22940[94m: li R8 1 [0m
5736 [93m22944[94m: swi R8 R14 44 [0m
5737 [93m22948[94m: lwi R8 R14 40 [0m
5738 [93m22952[94m: lwi R9 R14 44 [0m
5739 [93m22956[94m: sub R10 R8 R9 [0m
5740 [93m22960[94m: swi R10 R14 48 [0m
5741 [93m22964[94m: lwi R8 R14 48 [0m
5742 [93m22968[94m: swi R8 R14 68 [0m
5743 [93m22972[94m: lwi R12 R14 60 [0m
5744 [93m22976[94m: li R8 22996 [0m
5745 [93m22980[94m: lwi R9 R14 64 [0m
5746 [93m22984[94m: sub R10 R9 R8 [0m
5747 [93m22988[94m: addi R14 R14 72 [0m
5748 [93m22992[94m: jr R10 [0m
5749 [93m22996[94m: swi R12 R14 224 [0m
5750 [93m23000[94m: li R8 0 [0m
5751 [93m23004[94m: swi R8 R14 12 [0m
5752 [93m23008[94m: lwi R8 R14 12 [0m
5753 [93m23012[94m: li R9 4 [0m
5754 [93m23016[94m: mul R10 R8 R9 [0m
5755 [93m23020[94m: swi R10 R14 16 [0m
5756 [93m23024[94m: lwi R8 R14 216 [0m
5757 [93m23028[94m: lwi R9 R14 16 [0m
5758 [93m23032[94m: add R10 R8 R9 [0m
5759 [93m23036[94m: swi R10 R14 20 [0m
5760 [93m23040[94m: li R8 0 [0m
5761 [93m23044[94m: swi R8 R14 24 [0m
5762 [93m23048[94m: li R8 1 [0m
5763 [93m23052[94m: swi R8 R14 28 [0m
5764 [93m23056[94m: lwi R8 R14 24 [0m
5765 [93m23060[94m: lwi R9 R14 28 [0m
5766 [93m23064[94m: sub R10 R8 R9 [0m
5767 [93m23068[94m: swi R10 R14 32 [0m
5768 [93m23072[94m: lwi R8 R14 20 [0m
5769 [93m23076[94m: lwi R8 R8 0 [0m
5770 [93m23080[94m: lwi R9 R14 32 [0m
5771 [93m23084[94m: eq R10 R8 R9 [0m
5772 [93m23088[94m: swi R10 R14 36 [0m
5773 [93m23092[94m: lwi R8 R14 36 [0m
5774 [93m23096[94m: cmp R8 R0 [0m
5775 [93m23100[94m: jeq 56 [0m
5776 [93m23104[94m: li R8 0 [0m
5777 [93m23108[94m: swi R8 R14 40 [0m
5778 [93m23112[94m: lwi R8 R14 40 [0m
5779 [93m23116[94m: li R9 4 [0m
5780 [93m23120[94m: mul R10 R8 R9 [0m
5781 [93m23124[94m: swi R10 R14 44 [0m
5782 [93m23128[94m: lwi R8 R14 216 [0m
5783 [93m23132[94m: lwi R9 R14 44 [0m
5784 [93m23136[94m: add R10 R8 R9 [0m
5785 [93m23140[94m: swi R10 R14 48 [0m
5786 [93m23144[94m: lwi R8 R14 220 [0m
5787 [93m23148[94m: lwi R7 R14 48 [0m
5788 [93m23152[94m: swi R8 R7 0 [0m
5789 [93m23156[94m: jmp 824 [0m
5790 [93m23160[94m: li R8 0 [0m
5791 [93m23164[94m: swi R8 R14 52 [0m
5792 [93m23168[94m: lwi R8 R14 52 [0m
5793 [93m23172[94m: swi R8 R14 0 [0m
5794 [93m23176[94m: li R8 1 [0m
5795 [93m23180[94m: swi R8 R14 56 [0m
5796 [93m23184[94m: lwi R8 R14 56 [0m
5797 [93m23188[94m: cmp R8 R0 [0m
5798 [93m23192[94m: jeq 788 [0m
5799 [93m23196[94m: jmp 4 [0m
5800 [93m23200[94m: jmp -28 [0m
5801 [93m23204[94m: lwi R8 R14 0 [0m
5802 [93m23208[94m: li R9 4 [0m
5803 [93m23212[94m: mul R10 R8 R9 [0m
5804 [93m23216[94m: swi R10 R14 60 [0m
5805 [93m23220[94m: lwi R8 R14 216 [0m
5806 [93m23224[94m: lwi R9 R14 60 [0m
5807 [93m23228[94m: add R10 R8 R9 [0m
5808 [93m23232[94m: swi R10 R14 64 [0m
5809 [93m23236[94m: lwi R8 R14 64 [0m
5810 [93m23240[94m: lwi R8 R8 0 [0m
5811 [93m23244[94m: lwi R9 R14 220 [0m
5812 [93m23248[94m: eq R10 R8 R9 [0m
5813 [93m23252[94m: swi R10 R14 68 [0m
5814 [93m23256[94m: lwi R8 R14 68 [0m
5815 [93m23260[94m: cmp R8 R0 [0m
5816 [93m23264[94m: jeq 8 [0m
5817 [93m23268[94m: jmp 712 [0m
5818 [93m23272[94m: jmp 704 [0m
5819 [93m23276[94m: lwi R8 R14 0 [0m
5820 [93m23280[94m: li R9 4 [0m
5821 [93m23284[94m: mul R10 R8 R9 [0m
5822 [93m23288[94m: swi R10 R14 72 [0m
5823 [93m23292[94m: lwi R8 R14 216 [0m
5824 [93m23296[94m: lwi R9 R14 72 [0m
5825 [93m23300[94m: add R10 R8 R9 [0m
5826 [93m23304[94m: swi R10 R14 76 [0m
5827 [93m23308[94m: lwi R8 R14 220 [0m
5828 [93m23312[94m: lwi R9 R14 76 [0m
5829 [93m23316[94m: lwi R9 R9 0 [0m
5830 [93m23320[94m: lt R10 R8 R9 [0m
5831 [93m23324[94m: swi R10 R14 80 [0m
5832 [93m23328[94m: lwi R8 R14 80 [0m
5833 [93m23332[94m: cmp R8 R0 [0m
5834 [93m23336[94m: jeq 288 [0m
5835 [93m23340[94m: lwi R8 R14 0 [0m
5836 [93m23344[94m: li R9 4 [0m
5837 [93m23348[94m: mul R10 R8 R9 [0m
5838 [93m23352[94m: swi R10 R14 84 [0m
5839 [93m23356[94m: lwi R8 R14 212 [0m
5840 [93m23360[94m: lwi R9 R14 84 [0m
5841 [93m23364[94m: add R10 R8 R9 [0m
5842 [93m23368[94m: swi R10 R14 88 [0m
5843 [93m23372[94m: li R8 0 [0m
5844 [93m23376[94m: swi R8 R14 92 [0m
5845 [93m23380[94m: li R8 1 [0m
5846 [93m23384[94m: swi R8 R14 96 [0m
5847 [93m23388[94m: lwi R8 R14 92 [0m
5848 [93m23392[94m: lwi R9 R14 96 [0m
5849 [93m23396[94m: sub R10 R8 R9 [0m
5850 [93m23400[94m: swi R10 R14 100 [0m
5851 [93m23404[94m: lwi R8 R14 88 [0m
5852 [93m23408[94m: lwi R8 R8 0 [0m
5853 [93m23412[94m: lwi R9 R14 100 [0m
5854 [93m23416[94m: eq R10 R8 R9 [0m
5855 [93m23420[94m: swi R10 R14 104 [0m
5856 [93m23424[94m: lwi R8 R14 104 [0m
5857 [93m23428[94m: cmp R8 R0 [0m
5858 [93m23432[94m: jeq 144 [0m
5859 [93m23436[94m: lwi R8 R14 216 [0m
5860 [93m23440[94m: swi R8 R14 -16 [0m
5861 [93m23444[94m: lwi R8 R14 204 [0m
5862 [93m23448[94m: swi R8 R14 -20 [0m
5863 [93m23452[94m: li R8 23468 [0m
5864 [93m23456[94m: swi R8 R14 -8 [0m
5865 [93m23460[94m: addi R14 R14 -72 [0m
5866 [93m23464[94m: jmp -752 [0m
5867 [93m23468[94m: lwi R8 R14 -4 [0m
5868 [93m23472[94m: swi R8 R14 108 [0m
5869 [93m23476[94m: lwi R8 R14 108 [0m
5870 [93m23480[94m: swi R8 R14 4 [0m
5871 [93m23484[94m: lwi R8 R14 0 [0m
5872 [93m23488[94m: li R9 4 [0m
5873 [93m23492[94m: mul R10 R8 R9 [0m
5874 [93m23496[94m: swi R10 R14 112 [0m
5875 [93m23500[94m: lwi R8 R14 212 [0m
5876 [93m23504[94m: lwi R9 R14 112 [0m
5877 [93m23508[94m: add R10 R8 R9 [0m
5878 [93m23512[94m: swi R10 R14 116 [0m
5879 [93m23516[94m: lwi R8 R14 4 [0m
5880 [93m23520[94m: lwi R7 R14 116 [0m
5881 [93m23524[94m: swi R8 R7 0 [0m
5882 [93m23528[94m: lwi R8 R14 4 [0m
5883 [93m23532[94m: li R9 4 [0m
5884 [93m23536[94m: mul R10 R8 R9 [0m
5885 [93m23540[94m: swi R10 R14 120 [0m
5886 [93m23544[94m: lwi R8 R14 216 [0m
5887 [93m23548[94m: lwi R9 R14 120 [0m
5888 [93m23552[94m: add R10 R8 R9 [0m
5889 [93m23556[94m: swi R10 R14 124 [0m
5890 [93m23560[94m: lwi R8 R14 220 [0m
5891 [93m23564[94m: lwi R7 R14 124 [0m
5892 [93m23568[94m: swi R8 R7 0 [0m
5893 [93m23572[94m: jmp 408 [0m
5894 [93m23576[94m: jmp 44 [0m
5895 [93m23580[94m: lwi R8 R14 0 [0m
5896 [93m23584[94m: li R9 4 [0m
5897 [93m23588[94m: mul R10 R8 R9 [0m
5898 [93m23592[94m: swi R10 R14 128 [0m
5899 [93m23596[94m: lwi R8 R14 212 [0m
5900 [93m23600[94m: lwi R9 R14 128 [0m
5901 [93m23604[94m: add R10 R8 R9 [0m
5902 [93m23608[94m: swi R10 R14 132 [0m
5903 [93m23612[94m: lwi R8 R14 132 [0m
5904 [93m23616[94m: lwi R8 R8 0 [0m
5905 [93m23620[94m: swi R8 R14 0 [0m
5906 [93m23624[94m: jmp 352 [0m
5907 [93m23628[94m: lwi R8 R14 0 [0m
5908 [93m23632[94m: li R9 4 [0m
5909 [93m23636[94m: mul R10 R8 R9 [0m
5910 [93m23640[94m: swi R10 R14 136 [0m
5911 [93m23644[94m: lwi R8 R14 216 [0m
5912 [93m23648[94m: lwi R9 R14 136 [0m
5913 [93m23652[94m: add R10 R8 R9 [0m
5914 [93m23656[94m: swi R10 R14 140 [0m
5915 [93m23660[94m: lwi R8 R14 220 [0m
5916 [93m23664[94m: lwi R9 R14 140 [0m
5917 [93m23668[94m: lwi R9 R9 0 [0m
5918 [93m23672[94m: gt R10 R8 R9 [0m
5919 [93m23676[94m: swi R10 R14 144 [0m
5920 [93m23680[94m: lwi R8 R14 144 [0m
5921 [93m23684[94m: cmp R8 R0 [0m
5922 [93m23688[94m: jeq 288 [0m
5923 [93m23692[94m: lwi R8 R14 0 [0m
5924 [93m23696[94m: li R9 4 [0m
5925 [93m23700[94m: mul R10 R8 R9 [0m
5926 [93m23704[94m: swi R10 R14 148 [0m
5927 [93m23708[94m: lwi R8 R14 208 [0m
5928 [93m23712[94m: lwi R9 R14 148 [0m
5929 [93m23716[94m: add R10 R8 R9 [0m
5930 [93m23720[94m: swi R10 R14 152 [0m
5931 [93m23724[94m: li R8 0 [0m
5932 [93m23728[94m: swi R8 R14 156 [0m
5933 [93m23732[94m: li R8 1 [0m
5934 [93m23736[94m: swi R8 R14 160 [0m
5935 [93m23740[94m: lwi R8 R14 156 [0m
5936 [93m23744[94m: lwi R9 R14 160 [0m
5937 [93m23748[94m: sub R10 R8 R9 [0m
5938 [93m23752[94m: swi R10 R14 164 [0m
5939 [93m23756[94m: lwi R8 R14 152 [0m
5940 [93m23760[94m: lwi R8 R8 0 [0m
5941 [93m23764[94m: lwi R9 R14 164 [0m
5942 [93m23768[94m: eq R10 R8 R9 [0m
5943 [93m23772[94m: swi R10 R14 168 [0m
5944 [93m23776[94m: lwi R8 R14 168 [0m
5945 [93m23780[94m: cmp R8 R0 [0m
5946 [93m23784[94m: jeq 144 [0m
5947 [93m23788[94m: lwi R8 R14 216 [0m
5948 [93m23792[94m: swi R8 R14 -16 [0m
5949 [93m23796[94m: lwi R8 R14 204 [0m
5950 [93m23800[94m: swi R8 R14 -20 [0m
5951 [93m23804[94m: li R8 23820 [0m
5952 [93m23808[94m: swi R8 R14 -8 [0m
5953 [93m23812[94m: addi R14 R14 -72 [0m
5954 [93m23816[94m: jmp -1104 [0m
5955 [93m23820[94m: lwi R8 R14 -4 [0m
5956 [93m23824[94m: swi R8 R14 172 [0m
5957 [93m23828[94m: lwi R8 R14 172 [0m
5958 [93m23832[94m: swi R8 R14 4 [0m
5959 [93m23836[94m: lwi R8 R14 0 [0m
5960 [93m23840[94m: li R9 4 [0m
5961 [93m23844[94m: mul R10 R8 R9 [0m
5962 [93m23848[94m: swi R10 R14 176 [0m
5963 [93m23852[94m: lwi R8 R14 208 [0m
5964 [93m23856[94m: lwi R9 R14 176 [0m
5965 [93m23860[94m: add R10 R8 R9 [0m
5966 [93m23864[94m: swi R10 R14 180 [0m
5967 [93m23868[94m: lwi R8 R14 4 [0m
5968 [93m23872[94m: lwi R7 R14 180 [0m
5969 [93m23876[94m: swi R8 R7 0 [0m
5970 [93m23880[94m: lwi R8 R14 4 [0m
5971 [93m23884[94m: li R9 4 [0m
5972 [93m23888[94m: mul R10 R8 R9 [0m
5973 [93m23892[94m: swi R10 R14 184 [0m
5974 [93m23896[94m: lwi R8 R14 216 [0m
5975 [93m23900[94m: lwi R9 R14 184 [0m
5976 [93m23904[94m: add R10 R8 R9 [0m
5977 [93m23908[94m: swi R10 R14 188 [0m
5978 [93m23912[94m: lwi R8 R14 220 [0m
5979 [93m23916[94m: lwi R7 R14 188 [0m
5980 [93m23920[94m: swi R8 R7 0 [0m
5981 [93m23924[94m: jmp 56 [0m
5982 [93m23928[94m: jmp 44 [0m
5983 [93m23932[94m: lwi R8 R14 0 [0m
5984 [93m23936[94m: li R9 4 [0m
5985 [93m23940[94m: mul R10 R8 R9 [0m
5986 [93m23944[94m: swi R10 R14 192 [0m
5987 [93m23948[94m: lwi R8 R14 208 [0m
5988 [93m23952[94m: lwi R9 R14 192 [0m
5989 [93m23956[94m: add R10 R8 R9 [0m
5990 [93m23960[94m: swi R10 R14 196 [0m
5991 [93m23964[94m: lwi R8 R14 196 [0m
5992 [93m23968[94m: lwi R8 R8 0 [0m
5993 [93m23972[94m: swi R8 R14 0 [0m
5994 [93m23976[94m: jmp 0 [0m
5995 [93m23980[94m: jmp -784 [0m
5996 [93m23984[94m: li R8 0 [0m
5997 [93m23988[94m: swi R8 R14 200 [0m
5998 [93m23992[94m: lwi R8 R14 200 [0m
5999 [93m23996[94m: swi R8 R14 232 [0m
6000 [93m24000[94m: lwi R12 R14 224 [0m
6001 [93m24004[94m: li R8 24024 [0m
6002 [93m24008[94m: lwi R9 R14 228 [0m
6003 [93m24012[94m: sub R10 R9 R8 [0m
6004 [93m24016[94m: addi R14 R14 236 [0m
6005 [93m24020[94m: jr R10 [0m
6006 [93m24024[94m: swi R12 R14 92 [0m
6007 [93m24028[94m: li R8 0 [0m
6008 [93m24032[94m: swi R8 R14 0 [0m
6009 [93m24036[94m: li R8 1 [0m
6010 [93m24040[94m: swi R8 R14 4 [0m
6011 [93m24044[94m: lwi R8 R14 0 [0m
6012 [93m24048[94m: lwi R9 R14 4 [0m
6013 [93m24052[94m: sub R10 R8 R9 [0m
6014 [93m24056[94m: swi R10 R14 8 [0m
6015 [93m24060[94m: lwi R8 R14 76 [0m
6016 [93m24064[94m: lwi R9 R14 8 [0m
6017 [93m24068[94m: neq R10 R8 R9 [0m
6018 [93m24072[94m: swi R10 R14 12 [0m
6019 [93m24076[94m: lwi R8 R14 12 [0m
6020 [93m24080[94m: cmp R8 R0 [0m
6021 [93m24084[94m: jeq 356 [0m
6022 [93m24088[94m: lwi R8 R14 88 [0m
6023 [93m24092[94m: swi R8 R14 -16 [0m
6024 [93m24096[94m: lwi R8 R14 84 [0m
6025 [93m24100[94m: swi R8 R14 -20 [0m
6026 [93m24104[94m: lwi R8 R14 80 [0m
6027 [93m24108[94m: swi R8 R14 -24 [0m
6028 [93m24112[94m: lwi R8 R14 76 [0m
6029 [93m24116[94m: li R9 4 [0m
6030 [93m24120[94m: mul R10 R8 R9 [0m
6031 [93m24124[94m: swi R10 R14 16 [0m
6032 [93m24128[94m: lwi R8 R14 84 [0m
6033 [93m24132[94m: lwi R9 R14 16 [0m
6034 [93m24136[94m: add R10 R8 R9 [0m
6035 [93m24140[94m: swi R10 R14 20 [0m
6036 [93m24144[94m: lwi R8 R14 20 [0m
6037 [93m24148[94m: lwi R8 R8 0 [0m
6038 [93m24152[94m: swi R8 R14 -28 [0m
6039 [93m24156[94m: li R8 24172 [0m
6040 [93m24160[94m: swi R8 R14 -8 [0m
6041 [93m24164[94m: addi R14 R14 -104 [0m
6042 [93m24168[94m: jmp -148 [0m
6043 [93m24172[94m: lwi R8 R14 -4 [0m
6044 [93m24176[94m: swi R8 R14 24 [0m
6045 [93m24180[94m: lwi R8 R14 76 [0m
6046 [93m24184[94m: li R9 4 [0m
6047 [93m24188[94m: mul R10 R8 R9 [0m
6048 [93m24192[94m: swi R10 R14 28 [0m
6049 [93m24196[94m: lwi R8 R14 88 [0m
6050 [93m24200[94m: lwi R9 R14 28 [0m
6051 [93m24204[94m: add R10 R8 R9 [0m
6052 [93m24208[94m: swi R10 R14 32 [0m
6053 [93m24212[94m: lwi R8 R14 32 [0m
6054 [93m24216[94m: lwi R8 R8 0 [0m
6055 [93m24220[94m: swi R8 R14 -16 [0m
6056 [93m24224[94m: li R8 0 [0m
6057 [93m24228[94m: swi R8 R14 36 [0m
6058 [93m24232[94m: lwi R8 R14 36 [0m
6059 [93m24236[94m: swi R8 R14 -20 [0m
6060 [93m24240[94m: li R8 24256 [0m
6061 [93m24244[94m: swi R8 R14 -8 [0m
6062 [93m24248[94m: addi R14 R14 -152 [0m
6063 [93m24252[94m: jmp -17960 [0m
6064 [93m24256[94m: lwi R8 R14 -4 [0m
6065 [93m24260[94m: swi R8 R14 40 [0m
6066 [93m24264[94m: subi R12 R12 4 [0m
6067 [93m24268[94m: li R8 32 [0m
6068 [93m24272[94m: sbi R8 R12 0 [0m
6069 [93m24276[94m: sbi R0 R12 1 [0m
6070 [93m24280[94m: swi R12 R14 44 [0m
6071 [93m24284[94m: lwi R8 R14 44 [0m
6072 [93m24288[94m: swi R8 R14 -16 [0m
6073 [93m24292[94m: li R8 1 [0m
6074 [93m24296[94m: swi R8 R14 48 [0m
6075 [93m24300[94m: lwi R8 R14 48 [0m
6076 [93m24304[94m: swi R8 R14 -20 [0m
6077 [93m24308[94m: li R8 0 [0m
6078 [93m24312[94m: swi R8 R14 52 [0m
6079 [93m24316[94m: lwi R8 R14 52 [0m
6080 [93m24320[94m: swi R8 R14 -24 [0m
6081 [93m24324[94m: li R8 24340 [0m
6082 [93m24328[94m: swi R8 R14 -8 [0m
6083 [93m24332[94m: addi R14 R14 -180 [0m
6084 [93m24336[94m: jmp -20724 [0m
6085 [93m24340[94m: lwi R8 R14 -4 [0m
6086 [93m24344[94m: swi R8 R14 56 [0m
6087 [93m24348[94m: lwi R8 R14 88 [0m
6088 [93m24352[94m: swi R8 R14 -16 [0m
6089 [93m24356[94m: lwi R8 R14 84 [0m
6090 [93m24360[94m: swi R8 R14 -20 [0m
6091 [93m24364[94m: lwi R8 R14 80 [0m
6092 [93m24368[94m: swi R8 R14 -24 [0m
6093 [93m24372[94m: lwi R8 R14 76 [0m
6094 [93m24376[94m: li R9 4 [0m
6095 [93m24380[94m: mul R10 R8 R9 [0m
6096 [93m24384[94m: swi R10 R14 60 [0m
6097 [93m24388[94m: lwi R8 R14 80 [0m
6098 [93m24392[94m: lwi R9 R14 60 [0m
6099 [93m24396[94m: add R10 R8 R9 [0m
6100 [93m24400[94m: swi R10 R14 64 [0m
6101 [93m24404[94m: lwi R8 R14 64 [0m
6102 [93m24408[94m: lwi R8 R8 0 [0m
6103 [93m24412[94m: swi R8 R14 -28 [0m
6104 [93m24416[94m: li R8 24432 [0m
6105 [93m24420[94m: swi R8 R14 -8 [0m
6106 [93m24424[94m: addi R14 R14 -104 [0m
6107 [93m24428[94m: jmp -408 [0m
6108 [93m24432[94m: lwi R8 R14 -4 [0m
6109 [93m24436[94m: swi R8 R14 68 [0m
6110 [93m24440[94m: jmp 0 [0m
6111 [93m24444[94m: li R8 0 [0m
6112 [93m24448[94m: swi R8 R14 72 [0m
6113 [93m24452[94m: lwi R8 R14 72 [0m
6114 [93m24456[94m: swi R8 R14 100 [0m
6115 [93m24460[94m: lwi R12 R14 92 [0m
6116 [93m24464[94m: li R8 24484 [0m
6117 [93m24468[94m: lwi R9 R14 96 [0m
6118 [93m24472[94m: sub R10 R9 R8 [0m
6119 [93m24476[94m: addi R14 R14 104 [0m
6120 [93m24480[94m: jr R10 [0m
6121 [93m24484[94m: swi R12 R14 216 [0m
6122 [93m24488[94m: subi R12 R12 32 [0m
6123 [93m24492[94m: li R8 69 [0m
6124 [93m24496[94m: sbi R8 R12 0 [0m
6125 [93m24500[94m: li R8 110 [0m
6126 [93m24504[94m: sbi R8 R12 1 [0m
6127 [93m24508[94m: li R8 116 [0m
6128 [93m24512[94m: sbi R8 R12 2 [0m
6129 [93m24516[94m: li R8 101 [0m
6130 [93m24520[94m: sbi R8 R12 3 [0m
6131 [93m24524[94m: li R8 114 [0m
6132 [93m24528[94m: sbi R8 R12 4 [0m
6133 [93m24532[94m: li R8 32 [0m
6134 [93m24536[94m: sbi R8 R12 5 [0m
6135 [93m24540[94m: li R8 116 [0m
6136 [93m24544[94m: sbi R8 R12 6 [0m
6137 [93m24548[94m: li R8 104 [0m
6138 [93m24552[94m: sbi R8 R12 7 [0m
6139 [93m24556[94m: li R8 101 [0m
6140 [93m24560[94m: sbi R8 R12 8 [0m
6141 [93m24564[94m: li R8 32 [0m
6142 [93m24568[94m: sbi R8 R12 9 [0m
6143 [93m24572[94m: li R8 78 [0m
6144 [93m24576[94m: sbi R8 R12 10 [0m
6145 [93m24580[94m: li R8 117 [0m
6146 [93m24584[94m: sbi R8 R12 11 [0m
6147 [93m24588[94m: li R8 109 [0m
6148 [93m24592[94m: sbi R8 R12 12 [0m
6149 [93m24596[94m: li R8 98 [0m
6150 [93m24600[94m: sbi R8 R12 13 [0m
6151 [93m24604[94m: li R8 101 [0m
6152 [93m24608[94m: sbi R8 R12 14 [0m
6153 [93m24612[94m: li R8 114 [0m
6154 [93m24616[94m: sbi R8 R12 15 [0m
6155 [93m24620[94m: li R8 32 [0m
6156 [93m24624[94m: sbi R8 R12 16 [0m
6157 [93m24628[94m: li R8 111 [0m
6158 [93m24632[94m: sbi R8 R12 17 [0m
6159 [93m24636[94m: li R8 102 [0m
6160 [93m24640[94m: sbi R8 R12 18 [0m
6161 [93m24644[94m: li R8 32 [0m
6162 [93m24648[94m: sbi R8 R12 19 [0m
6163 [93m24652[94m: li R8 69 [0m
6164 [93m24656[94m: sbi R8 R12 20 [0m
6165 [93m24660[94m: li R8 108 [0m
6166 [93m24664[94m: sbi R8 R12 21 [0m
6167 [93m24668[94m: li R8 101 [0m
6168 [93m24672[94m: sbi R8 R12 22 [0m
6169 [93m24676[94m: li R8 109 [0m
6170 [93m24680[94m: sbi R8 R12 23 [0m
6171 [93m24684[94m: li R8 101 [0m
6172 [93m24688[94m: sbi R8 R12 24 [0m
6173 [93m24692[94m: li R8 110 [0m
6174 [93m24696[94m: sbi R8 R12 25 [0m
6175 [93m24700[94m: li R8 116 [0m
6176 [93m24704[94m: sbi R8 R12 26 [0m
6177 [93m24708[94m: li R8 115 [0m
6178 [93m24712[94m: sbi R8 R12 27 [0m
6179 [93m24716[94m: sbi R0 R12 28 [0m
6180 [93m24720[94m: swi R12 R14 44 [0m
6181 [93m24724[94m: lwi R8 R14 44 [0m
6182 [93m24728[94m: swi R8 R14 4 [0m
6183 [93m24732[94m: lwi R8 R14 4 [0m
6184 [93m24736[94m: swi R8 R14 -16 [0m
6185 [93m24740[94m: li R8 24756 [0m
6186 [93m24744[94m: swi R8 R14 -8 [0m
6187 [93m24748[94m: addi R14 R14 -52 [0m
6188 [93m24752[94m: jmp -24572 [0m
6189 [93m24756[94m: lwi R8 R14 -4 [0m
6190 [93m24760[94m: swi R8 R14 48 [0m
6191 [93m24764[94m: lwi R8 R14 48 [0m
6192 [93m24768[94m: swi R8 R14 8 [0m
6193 [93m24772[94m: lwi R8 R14 4 [0m
6194 [93m24776[94m: swi R8 R14 -16 [0m
6195 [93m24780[94m: lwi R8 R14 8 [0m
6196 [93m24784[94m: swi R8 R14 -20 [0m
6197 [93m24788[94m: li R8 1 [0m
6198 [93m24792[94m: swi R8 R14 52 [0m
6199 [93m24796[94m: lwi R8 R14 52 [0m
6200 [93m24800[94m: swi R8 R14 -24 [0m
6201 [93m24804[94m: li R8 24820 [0m
6202 [93m24808[94m: swi R8 R14 -8 [0m
6203 [93m24812[94m: addi R14 R14 -180 [0m
6204 [93m24816[94m: jmp -21204 [0m
6205 [93m24820[94m: lwi R8 R14 -4 [0m
6206 [93m24824[94m: swi R8 R14 56 [0m
6207 [93m24828[94m: li R8 24844 [0m
6208 [93m24832[94m: swi R8 R14 -8 [0m
6209 [93m24836[94m: addi R14 R14 -204 [0m
6210 [93m24840[94m: jmp -19876 [0m
6211 [93m24844[94m: lwi R8 R14 -4 [0m
6212 [93m24848[94m: swi R8 R14 60 [0m
6213 [93m24852[94m: lwi R8 R14 60 [0m
6214 [93m24856[94m: swi R8 R14 0 [0m
6215 [93m24860[94m: lwi R8 R14 0 [0m
6216 [93m24864[94m: swi R8 R14 12 [0m
6217 [93m24868[94m: lwi R8 R14 0 [0m
6218 [93m24872[94m: li R9 4 [0m
6219 [93m24876[94m: mul R10 R8 R9 [0m
6220 [93m24880[94m: modi R8 R10 4 [0m
6221 [93m24884[94m: li R9 4 [0m
6222 [93m24888[94m: sub R8 R9 R8 [0m
6223 [93m24892[94m: add R10 R10 R8 [0m
6224 [93m24896[94m: sub R12 R12 R10 [0m
6225 [93m24900[94m: swi R12 R14 16 [0m
6226 [93m24904[94m: lwi R8 R14 0 [0m
6227 [93m24908[94m: swi R8 R14 20 [0m
6228 [93m24912[94m: lwi R8 R14 0 [0m
6229 [93m24916[94m: li R9 4 [0m
6230 [93m24920[94m: mul R10 R8 R9 [0m
6231 [93m24924[94m: modi R8 R10 4 [0m
6232 [93m24928[94m: li R9 4 [0m
6233 [93m24932[94m: sub R8 R9 R8 [0m
6234 [93m24936[94m: add R10 R10 R8 [0m
6235 [93m24940[94m: sub R12 R12 R10 [0m
6236 [93m24944[94m: swi R12 R14 24 [0m
6237 [93m24948[94m: lwi R8 R14 0 [0m
6238 [93m24952[94m: swi R8 R14 28 [0m
6239 [93m24956[94m: lwi R8 R14 0 [0m
6240 [93m24960[94m: li R9 4 [0m
6241 [93m24964[94m: mul R10 R8 R9 [0m
6242 [93m24968[94m: modi R8 R10 4 [0m
6243 [93m24972[94m: li R9 4 [0m
6244 [93m24976[94m: sub R8 R9 R8 [0m
6245 [93m24980[94m: add R10 R10 R8 [0m
6246 [93m24984[94m: sub R12 R12 R10 [0m
6247 [93m24988[94m: swi R12 R14 32 [0m
6248 [93m24992[94m: li R8 0 [0m
6249 [93m24996[94m: swi R8 R14 64 [0m
6250 [93m25000[94m: lwi R8 R14 64 [0m
6251 [93m25004[94m: swi R8 R14 36 [0m
6252 [93m25008[94m: lwi R8 R14 36 [0m
6253 [93m25012[94m: lwi R9 R14 0 [0m
6254 [93m25016[94m: lt R10 R8 R9 [0m
6255 [93m25020[94m: swi R10 R14 68 [0m
6256 [93m25024[94m: lwi R8 R14 68 [0m
6257 [93m25028[94m: cmp R8 R0 [0m
6258 [93m25032[94m: jeq 264 [0m
6259 [93m25036[94m: jmp 28 [0m
6260 [93m25040[94m: lwi R8 R14 36 [0m
6261 [93m25044[94m: swi R8 R14 72 [0m
6262 [93m25048[94m: lwi R8 R14 36 [0m
6263 [93m25052[94m: li R9 1 [0m
6264 [93m25056[94m: add R10 R8 R9 [0m
6265 [93m25060[94m: swi R10 R14 36 [0m
6266 [93m25064[94m: jmp -60 [0m
6267 [93m25068[94m: lwi R8 R14 36 [0m
6268 [93m25072[94m: li R9 4 [0m
6269 [93m25076[94m: mul R10 R8 R9 [0m
6270 [93m25080[94m: swi R10 R14 76 [0m
6271 [93m25084[94m: lwi R8 R14 16 [0m
6272 [93m25088[94m: lwi R9 R14 76 [0m
6273 [93m25092[94m: add R10 R8 R9 [0m
6274 [93m25096[94m: swi R10 R14 80 [0m
6275 [93m25100[94m: li R8 0 [0m
6276 [93m25104[94m: swi R8 R14 84 [0m
6277 [93m25108[94m: li R8 1 [0m
6278 [93m25112[94m: swi R8 R14 88 [0m
6279 [93m25116[94m: lwi R8 R14 84 [0m
6280 [93m25120[94m: lwi R9 R14 88 [0m
6281 [93m25124[94m: sub R10 R8 R9 [0m
6282 [93m25128[94m: swi R10 R14 92 [0m
6283 [93m25132[94m: lwi R8 R14 92 [0m
6284 [93m25136[94m: lwi R7 R14 80 [0m
6285 [93m25140[94m: swi R8 R7 0 [0m
6286 [93m25144[94m: lwi R8 R14 36 [0m
6287 [93m25148[94m: li R9 4 [0m
6288 [93m25152[94m: mul R10 R8 R9 [0m
6289 [93m25156[94m: swi R10 R14 96 [0m
6290 [93m25160[94m: lwi R8 R14 24 [0m
6291 [93m25164[94m: lwi R9 R14 96 [0m
6292 [93m25168[94m: add R10 R8 R9 [0m
6293 [93m25172[94m: swi R10 R14 100 [0m
6294 [93m25176[94m: li R8 0 [0m
6295 [93m25180[94m: swi R8 R14 104 [0m
6296 [93m25184[94m: li R8 1 [0m
6297 [93m25188[94m: swi R8 R14 108 [0m
6298 [93m25192[94m: lwi R8 R14 104 [0m
6299 [93m25196[94m: lwi R9 R14 108 [0m
6300 [93m25200[94m: sub R10 R8 R9 [0m
6301 [93m25204[94m: swi R10 R14 112 [0m
6302 [93m25208[94m: lwi R8 R14 112 [0m
6303 [93m25212[94m: lwi R7 R14 100 [0m
6304 [93m25216[94m: swi R8 R7 0 [0m
6305 [93m25220[94m: lwi R8 R14 36 [0m
6306 [93m25224[94m: li R9 4 [0m
6307 [93m25228[94m: mul R10 R8 R9 [0m
6308 [93m25232[94m: swi R10 R14 116 [0m
6309 [93m25236[94m: lwi R8 R14 32 [0m
6310 [93m25240[94m: lwi R9 R14 116 [0m
6311 [93m25244[94m: add R10 R8 R9 [0m
6312 [93m25248[94m: swi R10 R14 120 [0m
6313 [93m25252[94m: li R8 0 [0m
6314 [93m25256[94m: swi R8 R14 124 [0m
6315 [93m25260[94m: li R8 1 [0m
6316 [93m25264[94m: swi R8 R14 128 [0m
6317 [93m25268[94m: lwi R8 R14 124 [0m
6318 [93m25272[94m: lwi R9 R14 128 [0m
6319 [93m25276[94m: sub R10 R8 R9 [0m
6320 [93m25280[94m: swi R10 R14 132 [0m
6321 [93m25284[94m: lwi R8 R14 132 [0m
6322 [93m25288[94m: lwi R7 R14 120 [0m
6323 [93m25292[94m: swi R8 R7 0 [0m
6324 [93m25296[94m: jmp -260 [0m
6325 [93m25300[94m: subi R12 R12 20 [0m
6326 [93m25304[94m: li R8 69 [0m
6327 [93m25308[94m: sbi R8 R12 0 [0m
6328 [93m25312[94m: li R8 110 [0m
6329 [93m25316[94m: sbi R8 R12 1 [0m
6330 [93m25320[94m: li R8 116 [0m
6331 [93m25324[94m: sbi R8 R12 2 [0m
6332 [93m25328[94m: li R8 101 [0m
6333 [93m25332[94m: sbi R8 R12 3 [0m
6334 [93m25336[94m: li R8 114 [0m
6335 [93m25340[94m: sbi R8 R12 4 [0m
6336 [93m25344[94m: li R8 32 [0m
6337 [93m25348[94m: sbi R8 R12 5 [0m
6338 [93m25352[94m: li R8 116 [0m
6339 [93m25356[94m: sbi R8 R12 6 [0m
6340 [93m25360[94m: li R8 104 [0m
6341 [93m25364[94m: sbi R8 R12 7 [0m
6342 [93m25368[94m: li R8 101 [0m
6343 [93m25372[94m: sbi R8 R12 8 [0m
6344 [93m25376[94m: li R8 32 [0m
6345 [93m25380[94m: sbi R8 R12 9 [0m
6346 [93m25384[94m: li R8 118 [0m
6347 [93m25388[94m: sbi R8 R12 10 [0m
6348 [93m25392[94m: li R8 97 [0m
6349 [93m25396[94m: sbi R8 R12 11 [0m
6350 [93m25400[94m: li R8 108 [0m
6351 [93m25404[94m: sbi R8 R12 12 [0m
6352 [93m25408[94m: li R8 117 [0m
6353 [93m25412[94m: sbi R8 R12 13 [0m
6354 [93m25416[94m: li R8 101 [0m
6355 [93m25420[94m: sbi R8 R12 14 [0m
6356 [93m25424[94m: li R8 115 [0m
6357 [93m25428[94m: sbi R8 R12 15 [0m
6358 [93m25432[94m: sbi R0 R12 16 [0m
6359 [93m25436[94m: swi R12 R14 136 [0m
6360 [93m25440[94m: lwi R8 R14 136 [0m
6361 [93m25444[94m: swi R8 R14 4 [0m
6362 [93m25448[94m: lwi R8 R14 4 [0m
6363 [93m25452[94m: swi R8 R14 -16 [0m
6364 [93m25456[94m: li R8 25472 [0m
6365 [93m25460[94m: swi R8 R14 -8 [0m
6366 [93m25464[94m: addi R14 R14 -52 [0m
6367 [93m25468[94m: jmp -25288 [0m
6368 [93m25472[94m: lwi R8 R14 -4 [0m
6369 [93m25476[94m: swi R8 R14 140 [0m
6370 [93m25480[94m: lwi R8 R14 140 [0m
6371 [93m25484[94m: swi R8 R14 8 [0m
6372 [93m25488[94m: lwi R8 R14 4 [0m
6373 [93m25492[94m: swi R8 R14 -16 [0m
6374 [93m25496[94m: lwi R8 R14 8 [0m
6375 [93m25500[94m: swi R8 R14 -20 [0m
6376 [93m25504[94m: li R8 1 [0m
6377 [93m25508[94m: swi R8 R14 144 [0m
6378 [93m25512[94m: lwi R8 R14 144 [0m
6379 [93m25516[94m: swi R8 R14 -24 [0m
6380 [93m25520[94m: li R8 25536 [0m
6381 [93m25524[94m: swi R8 R14 -8 [0m
6382 [93m25528[94m: addi R14 R14 -180 [0m
6383 [93m25532[94m: jmp -21920 [0m
6384 [93m25536[94m: lwi R8 R14 -4 [0m
6385 [93m25540[94m: swi R8 R14 148 [0m
6386 [93m25544[94m: li R8 0 [0m
6387 [93m25548[94m: swi R8 R14 152 [0m
6388 [93m25552[94m: lwi R8 R14 152 [0m
6389 [93m25556[94m: swi R8 R14 36 [0m
6390 [93m25560[94m: lwi R8 R14 36 [0m
6391 [93m25564[94m: lwi R9 R14 0 [0m
6392 [93m25568[94m: lt R10 R8 R9 [0m
6393 [93m25572[94m: swi R10 R14 156 [0m
6394 [93m25576[94m: lwi R8 R14 156 [0m
6395 [93m25580[94m: cmp R8 R0 [0m
6396 [93m25584[94m: jeq 132 [0m
6397 [93m25588[94m: jmp 28 [0m
6398 [93m25592[94m: lwi R8 R14 36 [0m
6399 [93m25596[94m: swi R8 R14 160 [0m
6400 [93m25600[94m: lwi R8 R14 36 [0m
6401 [93m25604[94m: li R9 1 [0m
6402 [93m25608[94m: add R10 R8 R9 [0m
6403 [93m25612[94m: swi R10 R14 36 [0m
6404 [93m25616[94m: jmp -60 [0m
6405 [93m25620[94m: li R8 25636 [0m
6406 [93m25624[94m: swi R8 R14 -8 [0m
6407 [93m25628[94m: addi R14 R14 -204 [0m
6408 [93m25632[94m: jmp -20668 [0m
6409 [93m25636[94m: lwi R8 R14 -4 [0m
6410 [93m25640[94m: swi R8 R14 164 [0m
6411 [93m25644[94m: lwi R8 R14 164 [0m
6412 [93m25648[94m: swi R8 R14 40 [0m
6413 [93m25652[94m: lwi R8 R14 40 [0m
6414 [93m25656[94m: swi R8 R14 -16 [0m
6415 [93m25660[94m: lwi R8 R14 16 [0m
6416 [93m25664[94m: swi R8 R14 -20 [0m
6417 [93m25668[94m: lwi R8 R14 24 [0m
6418 [93m25672[94m: swi R8 R14 -24 [0m
6419 [93m25676[94m: lwi R8 R14 32 [0m
6420 [93m25680[94m: swi R8 R14 -28 [0m
6421 [93m25684[94m: lwi R8 R14 0 [0m
6422 [93m25688[94m: swi R8 R14 -32 [0m
6423 [93m25692[94m: li R8 25708 [0m
6424 [93m25696[94m: swi R8 R14 -8 [0m
6425 [93m25700[94m: addi R14 R14 -236 [0m
6426 [93m25704[94m: jmp -2712 [0m
6427 [93m25708[94m: lwi R8 R14 -4 [0m
6428 [93m25712[94m: swi R8 R14 168 [0m
6429 [93m25716[94m: jmp -128 [0m
6430 [93m25720[94m: subi R12 R12 32 [0m
6431 [93m25724[94m: li R8 73 [0m
6432 [93m25728[94m: sbi R8 R12 0 [0m
6433 [93m25732[94m: li R8 110 [0m
6434 [93m25736[94m: sbi R8 R12 1 [0m
6435 [93m25740[94m: li R8 111 [0m
6436 [93m25744[94m: sbi R8 R12 2 [0m
6437 [93m25748[94m: li R8 114 [0m
6438 [93m25752[94m: sbi R8 R12 3 [0m
6439 [93m25756[94m: li R8 100 [0m
6440 [93m25760[94m: sbi R8 R12 4 [0m
6441 [93m25764[94m: li R8 101 [0m
6442 [93m25768[94m: sbi R8 R12 5 [0m
6443 [93m25772[94m: li R8 114 [0m
6444 [93m25776[94m: sbi R8 R12 6 [0m
6445 [93m25780[94m: li R8 32 [0m
6446 [93m25784[94m: sbi R8 R12 7 [0m
6447 [93m25788[94m: li R8 84 [0m
6448 [93m25792[94m: sbi R8 R12 8 [0m
6449 [93m25796[94m: li R8 114 [0m
6450 [93m25800[94m: sbi R8 R12 9 [0m
6451 [93m25804[94m: li R8 97 [0m
6452 [93m25808[94m: sbi R8 R12 10 [0m
6453 [93m25812[94m: li R8 118 [0m
6454 [93m25816[94m: sbi R8 R12 11 [0m
6455 [93m25820[94m: li R8 101 [0m
6456 [93m25824[94m: sbi R8 R12 12 [0m
6457 [93m25828[94m: li R8 114 [0m
6458 [93m25832[94m: sbi R8 R12 13 [0m
6459 [93m25836[94m: li R8 115 [0m
6460 [93m25840[94m: sbi R8 R12 14 [0m
6461 [93m25844[94m: li R8 97 [0m
6462 [93m25848[94m: sbi R8 R12 15 [0m
6463 [93m25852[94m: li R8 108 [0m
6464 [93m25856[94m: sbi R8 R12 16 [0m
6465 [93m25860[94m: li R8 32 [0m
6466 [93m25864[94m: sbi R8 R12 17 [0m
6467 [93m25868[94m: li R8 111 [0m
6468 [93m25872[94m: sbi R8 R12 18 [0m
6469 [93m25876[94m: li R8 102 [0m
6470 [93m25880[94m: sbi R8 R12 19 [0m
6471 [93m25884[94m: li R8 32 [0m
6472 [93m25888[94m: sbi R8 R12 20 [0m
6473 [93m25892[94m: li R8 116 [0m
6474 [93m25896[94m: sbi R8 R12 21 [0m
6475 [93m25900[94m: li R8 104 [0m
6476 [93m25904[94m: sbi R8 R12 22 [0m
6477 [93m25908[94m: li R8 101 [0m
6478 [93m25912[94m: sbi R8 R12 23 [0m
6479 [93m25916[94m: li R8 32 [0m
6480 [93m25920[94m: sbi R8 R12 24 [0m
6481 [93m25924[94m: li R8 84 [0m
6482 [93m25928[94m: sbi R8 R12 25 [0m
6483 [93m25932[94m: li R8 114 [0m
6484 [93m25936[94m: sbi R8 R12 26 [0m
6485 [93m25940[94m: li R8 101 [0m
6486 [93m25944[94m: sbi R8 R12 27 [0m
6487 [93m25948[94m: li R8 101 [0m
6488 [93m25952[94m: sbi R8 R12 28 [0m
6489 [93m25956[94m: sbi R0 R12 29 [0m
6490 [93m25960[94m: swi R12 R14 172 [0m
6491 [93m25964[94m: lwi R8 R14 172 [0m
6492 [93m25968[94m: swi R8 R14 4 [0m
6493 [93m25972[94m: lwi R8 R14 4 [0m
6494 [93m25976[94m: swi R8 R14 -16 [0m
6495 [93m25980[94m: li R8 25996 [0m
6496 [93m25984[94m: swi R8 R14 -8 [0m
6497 [93m25988[94m: addi R14 R14 -52 [0m
6498 [93m25992[94m: jmp -25812 [0m
6499 [93m25996[94m: lwi R8 R14 -4 [0m
6500 [93m26000[94m: swi R8 R14 176 [0m
6501 [93m26004[94m: lwi R8 R14 176 [0m
6502 [93m26008[94m: swi R8 R14 8 [0m
6503 [93m26012[94m: lwi R8 R14 4 [0m
6504 [93m26016[94m: swi R8 R14 -16 [0m
6505 [93m26020[94m: lwi R8 R14 8 [0m
6506 [93m26024[94m: swi R8 R14 -20 [0m
6507 [93m26028[94m: li R8 1 [0m
6508 [93m26032[94m: swi R8 R14 180 [0m
6509 [93m26036[94m: lwi R8 R14 180 [0m
6510 [93m26040[94m: swi R8 R14 -24 [0m
6511 [93m26044[94m: li R8 26060 [0m
6512 [93m26048[94m: swi R8 R14 -8 [0m
6513 [93m26052[94m: addi R14 R14 -180 [0m
6514 [93m26056[94m: jmp -22444 [0m
6515 [93m26060[94m: lwi R8 R14 -4 [0m
6516 [93m26064[94m: swi R8 R14 184 [0m
6517 [93m26068[94m: lwi R8 R14 16 [0m
6518 [93m26072[94m: swi R8 R14 -16 [0m
6519 [93m26076[94m: lwi R8 R14 24 [0m
6520 [93m26080[94m: swi R8 R14 -20 [0m
6521 [93m26084[94m: lwi R8 R14 32 [0m
6522 [93m26088[94m: swi R8 R14 -24 [0m
6523 [93m26092[94m: li R8 0 [0m
6524 [93m26096[94m: swi R8 R14 188 [0m
6525 [93m26100[94m: lwi R8 R14 188 [0m
6526 [93m26104[94m: swi R8 R14 -28 [0m
6527 [93m26108[94m: li R8 26124 [0m
6528 [93m26112[94m: swi R8 R14 -8 [0m
6529 [93m26116[94m: addi R14 R14 -104 [0m
6530 [93m26120[94m: jmp -2100 [0m
6531 [93m26124[94m: lwi R8 R14 -4 [0m
6532 [93m26128[94m: swi R8 R14 192 [0m
6533 [93m26132[94m: subi R12 R12 4 [0m
6534 [93m26136[94m: li R8 32 [0m
6535 [93m26140[94m: sbi R8 R12 0 [0m
6536 [93m26144[94m: sbi R0 R12 1 [0m
6537 [93m26148[94m: swi R12 R14 196 [0m
6538 [93m26152[94m: lwi R8 R14 196 [0m
6539 [93m26156[94m: swi R8 R14 -16 [0m
6540 [93m26160[94m: li R8 1 [0m
6541 [93m26164[94m: swi R8 R14 200 [0m
6542 [93m26168[94m: lwi R8 R14 200 [0m
6543 [93m26172[94m: swi R8 R14 -20 [0m
6544 [93m26176[94m: li R8 1 [0m
6545 [93m26180[94m: swi R8 R14 204 [0m
6546 [93m26184[94m: lwi R8 R14 204 [0m
6547 [93m26188[94m: swi R8 R14 -24 [0m
6548 [93m26192[94m: li R8 26208 [0m
6549 [93m26196[94m: swi R8 R14 -8 [0m
6550 [93m26200[94m: addi R14 R14 -180 [0m
6551 [93m26204[94m: jmp -22592 [0m
6552 [93m26208[94m: lwi R8 R14 -4 [0m
6553 [93m26212[94m: swi R8 R14 208 [0m
6554 [93m26216[94m: li R8 0 [0m
6555 [93m26220[94m: swi R8 R14 212 [0m
6556 [93m26224[94m: lwi R8 R14 212 [0m
6557 [93m26228[94m: swi R8 R14 224 [0m
6558 [93m26232[94m: lwi R12 R14 216 [0m
6559 [93m26236[94m: li R8 26256 [0m
6560 [93m26240[94m: lwi R9 R14 220 [0m
6561 [93m26244[94m: sub R10 R9 R8 [0m
6562 [93m26248[94m: addi R14 R14 228 [0m
6563 [93m26252[94m: jr R10 [0m
6564 [93m26256[94m: swi R12 R14 12 [0m
6565 [93m26260[94m: lwi R8 R13 0 [0m
6566 [93m26264[94m: li R9 1 [0m
6567 [93m26268[94m: mul R10 R8 R9 [0m
6568 [93m26272[94m: swi R10 R14 4 [0m
6569 [93m26276[94m: lwi R8 R13 24 [0m
6570 [93m26280[94m: lwi R9 R14 4 [0m
6571 [93m26284[94m: add R10 R8 R9 [0m
6572 [93m26288[94m: swi R10 R14 8 [0m
6573 [93m26292[94m: lwi R8 R14 8 [0m
6574 [93m26296[94m: lbi R8 R8 0 [0m
6575 [93m26300[94m: swi R8 R14 0 [0m
6576 [93m26304[94m: lwi R8 R14 0 [0m
6577 [93m26308[94m: swi R8 R14 20 [0m
6578 [93m26312[94m: lwi R12 R14 12 [0m
6579 [93m26316[94m: li R8 26336 [0m
6580 [93m26320[94m: lwi R9 R14 16 [0m
6581 [93m26324[94m: sub R10 R9 R8 [0m
6582 [93m26328[94m: addi R14 R14 24 [0m
6583 [93m26332[94m: jr R10 [0m
6584 [93m26336[94m: swi R12 R14 136 [0m
6585 [93m26340[94m: subi R12 R12 48 [0m
6586 [93m26344[94m: li R8 69 [0m
6587 [93m26348[94m: sbi R8 R12 0 [0m
6588 [93m26352[94m: li R8 110 [0m
6589 [93m26356[94m: sbi R8 R12 1 [0m
6590 [93m26360[94m: li R8 116 [0m
6591 [93m26364[94m: sbi R8 R12 2 [0m
6592 [93m26368[94m: li R8 101 [0m
6593 [93m26372[94m: sbi R8 R12 3 [0m
6594 [93m26376[94m: li R8 114 [0m
6595 [93m26380[94m: sbi R8 R12 4 [0m
6596 [93m26384[94m: li R8 32 [0m
6597 [93m26388[94m: sbi R8 R12 5 [0m
6598 [93m26392[94m: li R8 116 [0m
6599 [93m26396[94m: sbi R8 R12 6 [0m
6600 [93m26400[94m: li R8 104 [0m
6601 [93m26404[94m: sbi R8 R12 7 [0m
6602 [93m26408[94m: li R8 101 [0m
6603 [93m26412[94m: sbi R8 R12 8 [0m
6604 [93m26416[94m: li R8 32 [0m
6605 [93m26420[94m: sbi R8 R12 9 [0m
6606 [93m26424[94m: li R8 110 [0m
6607 [93m26428[94m: sbi R8 R12 10 [0m
6608 [93m26432[94m: li R8 117 [0m
6609 [93m26436[94m: sbi R8 R12 11 [0m
6610 [93m26440[94m: li R8 109 [0m
6611 [93m26444[94m: sbi R8 R12 12 [0m
6612 [93m26448[94m: li R8 98 [0m
6613 [93m26452[94m: sbi R8 R12 13 [0m
6614 [93m26456[94m: li R8 101 [0m
6615 [93m26460[94m: sbi R8 R12 14 [0m
6616 [93m26464[94m: li R8 114 [0m
6617 [93m26468[94m: sbi R8 R12 15 [0m
6618 [93m26472[94m: li R8 32 [0m
6619 [93m26476[94m: sbi R8 R12 16 [0m
6620 [93m26480[94m: li R8 116 [0m
6621 [93m26484[94m: sbi R8 R12 17 [0m
6622 [93m26488[94m: li R8 111 [0m
6623 [93m26492[94m: sbi R8 R12 18 [0m
6624 [93m26496[94m: li R8 32 [0m
6625 [93m26500[94m: sbi R8 R12 19 [0m
6626 [93m26504[94m: li R8 99 [0m
6627 [93m26508[94m: sbi R8 R12 20 [0m
6628 [93m26512[94m: li R8 104 [0m
6629 [93m26516[94m: sbi R8 R12 21 [0m
6630 [93m26520[94m: li R8 101 [0m
6631 [93m26524[94m: sbi R8 R12 22 [0m
6632 [93m26528[94m: li R8 99 [0m
6633 [93m26532[94m: sbi R8 R12 23 [0m
6634 [93m26536[94m: li R8 107 [0m
6635 [93m26540[94m: sbi R8 R12 24 [0m
6636 [93m26544[94m: li R8 32 [0m
6637 [93m26548[94m: sbi R8 R12 25 [0m
6638 [93m26552[94m: li R8 112 [0m
6639 [93m26556[94m: sbi R8 R12 26 [0m
6640 [93m26560[94m: li R8 97 [0m
6641 [93m26564[94m: sbi R8 R12 27 [0m
6642 [93m26568[94m: li R8 108 [0m
6643 [93m26572[94m: sbi R8 R12 28 [0m
6644 [93m26576[94m: li R8 105 [0m
6645 [93m26580[94m: sbi R8 R12 29 [0m
6646 [93m26584[94m: li R8 110 [0m
6647 [93m26588[94m: sbi R8 R12 30 [0m
6648 [93m26592[94m: li R8 100 [0m
6649 [93m26596[94m: sbi R8 R12 31 [0m
6650 [93m26600[94m: li R8 114 [0m
6651 [93m26604[94m: sbi R8 R12 32 [0m
6652 [93m26608[94m: li R8 111 [0m
6653 [93m26612[94m: sbi R8 R12 33 [0m
6654 [93m26616[94m: li R8 109 [0m
6655 [93m26620[94m: sbi R8 R12 34 [0m
6656 [93m26624[94m: li R8 101 [0m
6657 [93m26628[94m: sbi R8 R12 35 [0m
6658 [93m26632[94m: li R8 32 [0m
6659 [93m26636[94m: sbi R8 R12 36 [0m
6660 [93m26640[94m: li R8 111 [0m
6661 [93m26644[94m: sbi R8 R12 37 [0m
6662 [93m26648[94m: li R8 114 [0m
6663 [93m26652[94m: sbi R8 R12 38 [0m
6664 [93m26656[94m: li R8 32 [0m
6665 [93m26660[94m: sbi R8 R12 39 [0m
6666 [93m26664[94m: li R8 110 [0m
6667 [93m26668[94m: sbi R8 R12 40 [0m
6668 [93m26672[94m: li R8 111 [0m
6669 [93m26676[94m: sbi R8 R12 41 [0m
6670 [93m26680[94m: li R8 116 [0m
6671 [93m26684[94m: sbi R8 R12 42 [0m
6672 [93m26688[94m: li R8 58 [0m
6673 [93m26692[94m: sbi R8 R12 43 [0m
6674 [93m26696[94m: li R8 32 [0m
6675 [93m26700[94m: sbi R8 R12 44 [0m
6676 [93m26704[94m: sbi R0 R12 45 [0m
6677 [93m26708[94m: swi R12 R14 36 [0m
6678 [93m26712[94m: lwi R8 R14 36 [0m
6679 [93m26716[94m: swi R8 R14 24 [0m
6680 [93m26720[94m: lwi R8 R14 24 [0m
6681 [93m26724[94m: swi R8 R14 -16 [0m
6682 [93m26728[94m: li R8 26744 [0m
6683 [93m26732[94m: swi R8 R14 -8 [0m
6684 [93m26736[94m: addi R14 R14 -52 [0m
6685 [93m26740[94m: jmp -26560 [0m
6686 [93m26744[94m: lwi R8 R14 -4 [0m
6687 [93m26748[94m: swi R8 R14 40 [0m
6688 [93m26752[94m: lwi R8 R14 40 [0m
6689 [93m26756[94m: swi R8 R14 4 [0m
6690 [93m26760[94m: subi R12 R12 12 [0m
6691 [93m26764[94m: li R8 80 [0m
6692 [93m26768[94m: sbi R8 R12 0 [0m
6693 [93m26772[94m: li R8 97 [0m
6694 [93m26776[94m: sbi R8 R12 1 [0m
6695 [93m26780[94m: li R8 108 [0m
6696 [93m26784[94m: sbi R8 R12 2 [0m
6697 [93m26788[94m: li R8 105 [0m
6698 [93m26792[94m: sbi R8 R12 3 [0m
6699 [93m26796[94m: li R8 110 [0m
6700 [93m26800[94m: sbi R8 R12 4 [0m
6701 [93m26804[94m: li R8 100 [0m
6702 [93m26808[94m: sbi R8 R12 5 [0m
6703 [93m26812[94m: li R8 114 [0m
6704 [93m26816[94m: sbi R8 R12 6 [0m
6705 [93m26820[94m: li R8 111 [0m
6706 [93m26824[94m: sbi R8 R12 7 [0m
6707 [93m26828[94m: li R8 109 [0m
6708 [93m26832[94m: sbi R8 R12 8 [0m
6709 [93m26836[94m: li R8 101 [0m
6710 [93m26840[94m: sbi R8 R12 9 [0m
6711 [93m26844[94m: sbi R0 R12 10 [0m
6712 [93m26848[94m: swi R12 R14 44 [0m
6713 [93m26852[94m: lwi R8 R14 44 [0m
6714 [93m26856[94m: swi R8 R14 16 [0m
6715 [93m26860[94m: lwi R8 R14 16 [0m
6716 [93m26864[94m: swi R8 R14 -16 [0m
6717 [93m26868[94m: li R8 26884 [0m
6718 [93m26872[94m: swi R8 R14 -8 [0m
6719 [93m26876[94m: addi R14 R14 -52 [0m
6720 [93m26880[94m: jmp -26700 [0m
6721 [93m26884[94m: lwi R8 R14 -4 [0m
6722 [93m26888[94m: swi R8 R14 48 [0m
6723 [93m26892[94m: lwi R8 R14 48 [0m
6724 [93m26896[94m: swi R8 R14 8 [0m
6725 [93m26900[94m: subi R12 R12 16 [0m
6726 [93m26904[94m: li R8 78 [0m
6727 [93m26908[94m: sbi R8 R12 0 [0m
6728 [93m26912[94m: li R8 111 [0m
6729 [93m26916[94m: sbi R8 R12 1 [0m
6730 [93m26920[94m: li R8 116 [0m
6731 [93m26924[94m: sbi R8 R12 2 [0m
6732 [93m26928[94m: li R8 32 [0m
6733 [93m26932[94m: sbi R8 R12 3 [0m
6734 [93m26936[94m: li R8 80 [0m
6735 [93m26940[94m: sbi R8 R12 4 [0m
6736 [93m26944[94m: li R8 97 [0m
6737 [93m26948[94m: sbi R8 R12 5 [0m
6738 [93m26952[94m: li R8 108 [0m
6739 [93m26956[94m: sbi R8 R12 6 [0m
6740 [93m26960[94m: li R8 105 [0m
6741 [93m26964[94m: sbi R8 R12 7 [0m
6742 [93m26968[94m: li R8 110 [0m
6743 [93m26972[94m: sbi R8 R12 8 [0m
6744 [93m26976[94m: li R8 100 [0m
6745 [93m26980[94m: sbi R8 R12 9 [0m
6746 [93m26984[94m: li R8 114 [0m
6747 [93m26988[94m: sbi R8 R12 10 [0m
6748 [93m26992[94m: li R8 111 [0m
6749 [93m26996[94m: sbi R8 R12 11 [0m
6750 [93m27000[94m: li R8 109 [0m
6751 [93m27004[94m: sbi R8 R12 12 [0m
6752 [93m27008[94m: li R8 101 [0m
6753 [93m27012[94m: sbi R8 R12 13 [0m
6754 [93m27016[94m: sbi R0 R12 14 [0m
6755 [93m27020[94m: swi R12 R14 52 [0m
6756 [93m27024[94m: lwi R8 R14 52 [0m
6757 [93m27028[94m: swi R8 R14 20 [0m
6758 [93m27032[94m: lwi R8 R14 20 [0m
6759 [93m27036[94m: swi R8 R14 -16 [0m
6760 [93m27040[94m: li R8 27056 [0m
6761 [93m27044[94m: swi R8 R14 -8 [0m
6762 [93m27048[94m: addi R14 R14 -52 [0m
6763 [93m27052[94m: jmp -26872 [0m
6764 [93m27056[94m: lwi R8 R14 -4 [0m
6765 [93m27060[94m: swi R8 R14 56 [0m
6766 [93m27064[94m: lwi R8 R14 56 [0m
6767 [93m27068[94m: swi R8 R14 12 [0m
6768 [93m27072[94m: lwi R8 R14 24 [0m
6769 [93m27076[94m: swi R8 R14 -16 [0m
6770 [93m27080[94m: lwi R8 R14 4 [0m
6771 [93m27084[94m: swi R8 R14 -20 [0m
6772 [93m27088[94m: li R8 0 [0m
6773 [93m27092[94m: swi R8 R14 60 [0m
6774 [93m27096[94m: lwi R8 R14 60 [0m
6775 [93m27100[94m: swi R8 R14 -24 [0m
6776 [93m27104[94m: li R8 27120 [0m
6777 [93m27108[94m: swi R8 R14 -8 [0m
6778 [93m27112[94m: addi R14 R14 -180 [0m
6779 [93m27116[94m: jmp -23504 [0m
6780 [93m27120[94m: lwi R8 R14 -4 [0m
6781 [93m27124[94m: swi R8 R14 64 [0m
6782 [93m27128[94m: li R8 27144 [0m
6783 [93m27132[94m: swi R8 R14 -8 [0m
6784 [93m27136[94m: addi R14 R14 -204 [0m
6785 [93m27140[94m: jmp -22176 [0m
6786 [93m27144[94m: lwi R8 R14 -4 [0m
6787 [93m27148[94m: swi R8 R14 68 [0m
6788 [93m27152[94m: lwi R8 R14 68 [0m
6789 [93m27156[94m: swi R8 R14 0 [0m
6790 [93m27160[94m: lwi R8 R14 0 [0m
6791 [93m27164[94m: swi R8 R14 28 [0m
6792 [93m27168[94m: li R8 0 [0m
6793 [93m27172[94m: swi R8 R14 72 [0m
6794 [93m27176[94m: lwi R8 R14 72 [0m
6795 [93m27180[94m: swi R8 R14 32 [0m
6796 [93m27184[94m: li R8 0 [0m
6797 [93m27188[94m: swi R8 R14 76 [0m
6798 [93m27192[94m: lwi R8 R14 28 [0m
6799 [93m27196[94m: lwi R9 R14 76 [0m
6800 [93m27200[94m: neq R10 R8 R9 [0m
6801 [93m27204[94m: swi R10 R14 80 [0m
6802 [93m27208[94m: lwi R8 R14 80 [0m
6803 [93m27212[94m: cmp R8 R0 [0m
6804 [93m27216[94m: jeq 124 [0m
6805 [93m27220[94m: jmp 4 [0m
6806 [93m27224[94m: jmp -44 [0m
6807 [93m27228[94m: li R8 10 [0m
6808 [93m27232[94m: swi R8 R14 84 [0m
6809 [93m27236[94m: lwi R8 R14 32 [0m
6810 [93m27240[94m: lwi R9 R14 84 [0m
6811 [93m27244[94m: mul R10 R8 R9 [0m
6812 [93m27248[94m: swi R10 R14 88 [0m
6813 [93m27252[94m: lwi R8 R14 88 [0m
6814 [93m27256[94m: swi R8 R14 32 [0m
6815 [93m27260[94m: li R8 10 [0m
6816 [93m27264[94m: swi R8 R14 92 [0m
6817 [93m27268[94m: lwi R8 R14 28 [0m
6818 [93m27272[94m: lwi R9 R14 92 [0m
6819 [93m27276[94m: mod R10 R8 R9 [0m
6820 [93m27280[94m: swi R10 R14 96 [0m
6821 [93m27284[94m: lwi R8 R14 32 [0m
6822 [93m27288[94m: lwi R9 R14 96 [0m
6823 [93m27292[94m: add R10 R8 R9 [0m
6824 [93m27296[94m: swi R10 R14 100 [0m
6825 [93m27300[94m: lwi R8 R14 100 [0m
6826 [93m27304[94m: swi R8 R14 32 [0m
6827 [93m27308[94m: li R8 10 [0m
6828 [93m27312[94m: swi R8 R14 104 [0m
6829 [93m27316[94m: lwi R8 R14 28 [0m
6830 [93m27320[94m: lwi R9 R14 104 [0m
6831 [93m27324[94m: div R10 R8 R9 [0m
6832 [93m27328[94m: swi R10 R14 108 [0m
6833 [93m27332[94m: lwi R8 R14 108 [0m
6834 [93m27336[94m: swi R8 R14 28 [0m
6835 [93m27340[94m: jmp -120 [0m
6836 [93m27344[94m: lwi R8 R14 32 [0m
6837 [93m27348[94m: lwi R9 R14 0 [0m
6838 [93m27352[94m: eq R10 R8 R9 [0m
6839 [93m27356[94m: swi R10 R14 112 [0m
6840 [93m27360[94m: lwi R8 R14 112 [0m
6841 [93m27364[94m: cmp R8 R0 [0m
6842 [93m27368[94m: jeq 60 [0m
6843 [93m27372[94m: lwi R8 R14 16 [0m
6844 [93m27376[94m: swi R8 R14 -16 [0m
6845 [93m27380[94m: lwi R8 R14 8 [0m
6846 [93m27384[94m: swi R8 R14 -20 [0m
6847 [93m27388[94m: li R8 0 [0m
6848 [93m27392[94m: swi R8 R14 116 [0m
6849 [93m27396[94m: lwi R8 R14 116 [0m
6850 [93m27400[94m: swi R8 R14 -24 [0m
6851 [93m27404[94m: li R8 27420 [0m
6852 [93m27408[94m: swi R8 R14 -8 [0m
6853 [93m27412[94m: addi R14 R14 -180 [0m
6854 [93m27416[94m: jmp -23804 [0m
6855 [93m27420[94m: lwi R8 R14 -4 [0m
6856 [93m27424[94m: swi R8 R14 120 [0m
6857 [93m27428[94m: jmp 56 [0m
6858 [93m27432[94m: lwi R8 R14 20 [0m
6859 [93m27436[94m: swi R8 R14 -16 [0m
6860 [93m27440[94m: lwi R8 R14 12 [0m
6861 [93m27444[94m: swi R8 R14 -20 [0m
6862 [93m27448[94m: li R8 0 [0m
6863 [93m27452[94m: swi R8 R14 124 [0m
6864 [93m27456[94m: lwi R8 R14 124 [0m
6865 [93m27460[94m: swi R8 R14 -24 [0m
6866 [93m27464[94m: li R8 27480 [0m
6867 [93m27468[94m: swi R8 R14 -8 [0m
6868 [93m27472[94m: addi R14 R14 -180 [0m
6869 [93m27476[94m: jmp -23864 [0m
6870 [93m27480[94m: lwi R8 R14 -4 [0m
6871 [93m27484[94m: swi R8 R14 128 [0m
6872 [93m27488[94m: li R8 0 [0m
6873 [93m27492[94m: swi R8 R14 132 [0m
6874 [93m27496[94m: lwi R8 R14 132 [0m
6875 [93m27500[94m: swi R8 R14 144 [0m
6876 [93m27504[94m: lwi R12 R14 136 [0m
6877 [93m27508[94m: li R8 27528 [0m
6878 [93m27512[94m: lwi R9 R14 140 [0m
6879 [93m27516[94m: sub R10 R9 R8 [0m
6880 [93m27520[94m: addi R14 R14 148 [0m
6881 [93m27524[94m: jr R10 [0m
6882 [93m27528[94m: swi R12 R14 88 [0m
6883 [93m27532[94m: subi R12 R12 20 [0m
6884 [93m27536[94m: li R8 69 [0m
6885 [93m27540[94m: sbi R8 R12 0 [0m
6886 [93m27544[94m: li R8 110 [0m
6887 [93m27548[94m: sbi R8 R12 1 [0m
6888 [93m27552[94m: li R8 116 [0m
6889 [93m27556[94m: sbi R8 R12 2 [0m
6890 [93m27560[94m: li R8 101 [0m
6891 [93m27564[94m: sbi R8 R12 3 [0m
6892 [93m27568[94m: li R8 114 [0m
6893 [93m27572[94m: sbi R8 R12 4 [0m
6894 [93m27576[94m: li R8 32 [0m
6895 [93m27580[94m: sbi R8 R12 5 [0m
6896 [93m27584[94m: li R8 116 [0m
6897 [93m27588[94m: sbi R8 R12 6 [0m
6898 [93m27592[94m: li R8 104 [0m
6899 [93m27596[94m: sbi R8 R12 7 [0m
6900 [93m27600[94m: li R8 101 [0m
6901 [93m27604[94m: sbi R8 R12 8 [0m
6902 [93m27608[94m: li R8 32 [0m
6903 [93m27612[94m: sbi R8 R12 9 [0m
6904 [93m27616[94m: li R8 110 [0m
6905 [93m27620[94m: sbi R8 R12 10 [0m
6906 [93m27624[94m: li R8 117 [0m
6907 [93m27628[94m: sbi R8 R12 11 [0m
6908 [93m27632[94m: li R8 109 [0m
6909 [93m27636[94m: sbi R8 R12 12 [0m
6910 [93m27640[94m: li R8 98 [0m
6911 [93m27644[94m: sbi R8 R12 13 [0m
6912 [93m27648[94m: li R8 101 [0m
6913 [93m27652[94m: sbi R8 R12 14 [0m
6914 [93m27656[94m: li R8 114 [0m
6915 [93m27660[94m: sbi R8 R12 15 [0m
6916 [93m27664[94m: li R8 58 [0m
6917 [93m27668[94m: sbi R8 R12 16 [0m
6918 [93m27672[94m: li R8 32 [0m
6919 [93m27676[94m: sbi R8 R12 17 [0m
6920 [93m27680[94m: sbi R0 R12 18 [0m
6921 [93m27684[94m: swi R12 R14 20 [0m
6922 [93m27688[94m: lwi R8 R14 20 [0m
6923 [93m27692[94m: swi R8 R14 8 [0m
6924 [93m27696[94m: lwi R8 R14 8 [0m
6925 [93m27700[94m: swi R8 R14 -16 [0m
6926 [93m27704[94m: li R8 27720 [0m
6927 [93m27708[94m: swi R8 R14 -8 [0m
6928 [93m27712[94m: addi R14 R14 -52 [0m
6929 [93m27716[94m: jmp -27536 [0m
6930 [93m27720[94m: lwi R8 R14 -4 [0m
6931 [93m27724[94m: swi R8 R14 24 [0m
6932 [93m27728[94m: lwi R8 R14 24 [0m
6933 [93m27732[94m: swi R8 R14 4 [0m
6934 [93m27736[94m: lwi R8 R14 8 [0m
6935 [93m27740[94m: swi R8 R14 -16 [0m
6936 [93m27744[94m: lwi R8 R14 4 [0m
6937 [93m27748[94m: swi R8 R14 -20 [0m
6938 [93m27752[94m: li R8 0 [0m
6939 [93m27756[94m: swi R8 R14 28 [0m
6940 [93m27760[94m: lwi R8 R14 28 [0m
6941 [93m27764[94m: swi R8 R14 -24 [0m
6942 [93m27768[94m: li R8 27784 [0m
6943 [93m27772[94m: swi R8 R14 -8 [0m
6944 [93m27776[94m: addi R14 R14 -180 [0m
6945 [93m27780[94m: jmp -24168 [0m
6946 [93m27784[94m: lwi R8 R14 -4 [0m
6947 [93m27788[94m: swi R8 R14 32 [0m
6948 [93m27792[94m: li R8 27808 [0m
6949 [93m27796[94m: swi R8 R14 -8 [0m
6950 [93m27800[94m: addi R14 R14 -204 [0m
6951 [93m27804[94m: jmp -22840 [0m
6952 [93m27808[94m: lwi R8 R14 -4 [0m
6953 [93m27812[94m: swi R8 R14 36 [0m
6954 [93m27816[94m: lwi R8 R14 36 [0m
6955 [93m27820[94m: swi R8 R14 0 [0m
6956 [93m27824[94m: li R8 0 [0m
6957 [93m27828[94m: swi R8 R14 40 [0m
6958 [93m27832[94m: lwi R8 R14 40 [0m
6959 [93m27836[94m: swi R8 R14 12 [0m
6960 [93m27840[94m: li R8 0 [0m
6961 [93m27844[94m: swi R8 R14 44 [0m
6962 [93m27848[94m: lwi R8 R14 44 [0m
6963 [93m27852[94m: swi R8 R14 16 [0m
6964 [93m27856[94m: lwi R8 R14 16 [0m
6965 [93m27860[94m: lwi R9 R14 0 [0m
6966 [93m27864[94m: lt R10 R8 R9 [0m
6967 [93m27868[94m: swi R10 R14 48 [0m
6968 [93m27872[94m: lwi R8 R14 48 [0m
6969 [93m27876[94m: cmp R8 R0 [0m
6970 [93m27880[94m: jeq 60 [0m
6971 [93m27884[94m: jmp 28 [0m
6972 [93m27888[94m: lwi R8 R14 16 [0m
6973 [93m27892[94m: swi R8 R14 52 [0m
6974 [93m27896[94m: lwi R8 R14 16 [0m
6975 [93m27900[94m: li R9 1 [0m
6976 [93m27904[94m: add R10 R8 R9 [0m
6977 [93m27908[94m: swi R10 R14 16 [0m
6978 [93m27912[94m: jmp -60 [0m
6979 [93m27916[94m: lwi R8 R14 12 [0m
6980 [93m27920[94m: lwi R9 R14 16 [0m
6981 [93m27924[94m: add R10 R8 R9 [0m
6982 [93m27928[94m: swi R10 R14 56 [0m
6983 [93m27932[94m: lwi R8 R14 56 [0m
6984 [93m27936[94m: swi R8 R14 12 [0m
6985 [93m27940[94m: jmp -56 [0m
6986 [93m27944[94m: subi R12 R12 28 [0m
6987 [93m27948[94m: li R8 83 [0m
6988 [93m27952[94m: sbi R8 R12 0 [0m
6989 [93m27956[94m: li R8 117 [0m
6990 [93m27960[94m: sbi R8 R12 1 [0m
6991 [93m27964[94m: li R8 109 [0m
6992 [93m27968[94m: sbi R8 R12 2 [0m
6993 [93m27972[94m: li R8 32 [0m
6994 [93m27976[94m: sbi R8 R12 3 [0m
6995 [93m27980[94m: li R8 111 [0m
6996 [93m27984[94m: sbi R8 R12 4 [0m
6997 [93m27988[94m: li R8 102 [0m
6998 [93m27992[94m: sbi R8 R12 5 [0m
6999 [93m27996[94m: li R8 32 [0m
7000 [93m28000[94m: sbi R8 R12 6 [0m
7001 [93m28004[94m: li R8 110 [0m
7002 [93m28008[94m: sbi R8 R12 7 [0m
7003 [93m28012[94m: li R8 97 [0m
7004 [93m28016[94m: sbi R8 R12 8 [0m
7005 [93m28020[94m: li R8 116 [0m
7006 [93m28024[94m: sbi R8 R12 9 [0m
7007 [93m28028[94m: li R8 117 [0m
7008 [93m28032[94m: sbi R8 R12 10 [0m
7009 [93m28036[94m: li R8 114 [0m
7010 [93m28040[94m: sbi R8 R12 11 [0m
7011 [93m28044[94m: li R8 97 [0m
7012 [93m28048[94m: sbi R8 R12 12 [0m
7013 [93m28052[94m: li R8 108 [0m
7014 [93m28056[94m: sbi R8 R12 13 [0m
7015 [93m28060[94m: li R8 32 [0m
7016 [93m28064[94m: sbi R8 R12 14 [0m
7017 [93m28068[94m: li R8 110 [0m
7018 [93m28072[94m: sbi R8 R12 15 [0m
7019 [93m28076[94m: li R8 117 [0m
7020 [93m28080[94m: sbi R8 R12 16 [0m
7021 [93m28084[94m: li R8 109 [0m
7022 [93m28088[94m: sbi R8 R12 17 [0m
7023 [93m28092[94m: li R8 98 [0m
7024 [93m28096[94m: sbi R8 R12 18 [0m
7025 [93m28100[94m: li R8 101 [0m
7026 [93m28104[94m: sbi R8 R12 19 [0m
7027 [93m28108[94m: li R8 114 [0m
7028 [93m28112[94m: sbi R8 R12 20 [0m
7029 [93m28116[94m: li R8 115 [0m
7030 [93m28120[94m: sbi R8 R12 21 [0m
7031 [93m28124[94m: li R8 32 [0m
7032 [93m28128[94m: sbi R8 R12 22 [0m
7033 [93m28132[94m: li R8 105 [0m
7034 [93m28136[94m: sbi R8 R12 23 [0m
7035 [93m28140[94m: li R8 115 [0m
7036 [93m28144[94m: sbi R8 R12 24 [0m
7037 [93m28148[94m: li R8 58 [0m
7038 [93m28152[94m: sbi R8 R12 25 [0m
7039 [93m28156[94m: li R8 32 [0m
7040 [93m28160[94m: sbi R8 R12 26 [0m
7041 [93m28164[94m: sbi R0 R12 27 [0m
7042 [93m28168[94m: swi R12 R14 60 [0m
7043 [93m28172[94m: lwi R8 R14 60 [0m
7044 [93m28176[94m: swi R8 R14 -16 [0m
7045 [93m28180[94m: li R8 27 [0m
7046 [93m28184[94m: swi R8 R14 64 [0m
7047 [93m28188[94m: lwi R8 R14 64 [0m
7048 [93m28192[94m: swi R8 R14 -20 [0m
7049 [93m28196[94m: li R8 0 [0m
7050 [93m28200[94m: swi R8 R14 68 [0m
7051 [93m28204[94m: lwi R8 R14 68 [0m
7052 [93m28208[94m: swi R8 R14 -24 [0m
7053 [93m28212[94m: li R8 28228 [0m
7054 [93m28216[94m: swi R8 R14 -8 [0m
7055 [93m28220[94m: addi R14 R14 -180 [0m
7056 [93m28224[94m: jmp -24612 [0m
7057 [93m28228[94m: lwi R8 R14 -4 [0m
7058 [93m28232[94m: swi R8 R14 72 [0m
7059 [93m28236[94m: lwi R8 R14 12 [0m
7060 [93m28240[94m: swi R8 R14 -16 [0m
7061 [93m28244[94m: li R8 1 [0m
7062 [93m28248[94m: swi R8 R14 76 [0m
7063 [93m28252[94m: lwi R8 R14 76 [0m
7064 [93m28256[94m: swi R8 R14 -20 [0m
7065 [93m28260[94m: li R8 28276 [0m
7066 [93m28264[94m: swi R8 R14 -8 [0m
7067 [93m28268[94m: addi R14 R14 -152 [0m
7068 [93m28272[94m: jmp -21980 [0m
7069 [93m28276[94m: lwi R8 R14 -4 [0m
7070 [93m28280[94m: swi R8 R14 80 [0m
7071 [93m28284[94m: li R8 0 [0m
7072 [93m28288[94m: swi R8 R14 84 [0m
7073 [93m28292[94m: lwi R8 R14 84 [0m
7074 [93m28296[94m: swi R8 R14 96 [0m
7075 [93m28300[94m: lwi R12 R14 88 [0m
7076 [93m28304[94m: li R8 28324 [0m
7077 [93m28308[94m: lwi R9 R14 92 [0m
7078 [93m28312[94m: sub R10 R9 R8 [0m
7079 [93m28316[94m: addi R14 R14 100 [0m
7080 [93m28320[94m: jr R10 [0m
7081 [93m28324[94m: swi R12 R14 44 [0m
7082 [93m28328[94m: li R8 0 [0m
7083 [93m28332[94m: swi R8 R14 0 [0m
7084 [93m28336[94m: lwi R8 R14 40 [0m
7085 [93m28340[94m: lwi R9 R14 0 [0m
7086 [93m28344[94m: eq R10 R8 R9 [0m
7087 [93m28348[94m: swi R10 R14 4 [0m
7088 [93m28352[94m: li R8 1 [0m
7089 [93m28356[94m: swi R8 R14 8 [0m
7090 [93m28360[94m: lwi R8 R14 40 [0m
7091 [93m28364[94m: lwi R9 R14 8 [0m
7092 [93m28368[94m: eq R10 R8 R9 [0m
7093 [93m28372[94m: swi R10 R14 12 [0m
7094 [93m28376[94m: lwi R8 R14 4 [0m
7095 [93m28380[94m: lwi R9 R14 12 [0m
7096 [93m28384[94m: or R10 R8 R9 [0m
7097 [93m28388[94m: swi R10 R14 16 [0m
7098 [93m28392[94m: lwi R8 R14 16 [0m
7099 [93m28396[94m: cmp R8 R0 [0m
7100 [93m28400[94m: jeq 44 [0m
7101 [93m28404[94m: li R8 1 [0m
7102 [93m28408[94m: swi R8 R14 20 [0m
7103 [93m28412[94m: lwi R8 R14 20 [0m
7104 [93m28416[94m: swi R8 R14 52 [0m
7105 [93m28420[94m: lwi R12 R14 44 [0m
7106 [93m28424[94m: li R8 28444 [0m
7107 [93m28428[94m: lwi R9 R14 48 [0m
7108 [93m28432[94m: sub R10 R9 R8 [0m
7109 [93m28436[94m: addi R14 R14 56 [0m
7110 [93m28440[94m: jr R10 [0m
7111 [93m28444[94m: jmp 104 [0m
7112 [93m28448[94m: li R8 1 [0m
7113 [93m28452[94m: swi R8 R14 24 [0m
7114 [93m28456[94m: lwi R8 R14 40 [0m
7115 [93m28460[94m: lwi R9 R14 24 [0m
7116 [93m28464[94m: sub R10 R8 R9 [0m
7117 [93m28468[94m: swi R10 R14 28 [0m
7118 [93m28472[94m: lwi R8 R14 28 [0m
7119 [93m28476[94m: swi R8 R14 -16 [0m
7120 [93m28480[94m: li R8 28496 [0m
7121 [93m28484[94m: swi R8 R14 -8 [0m
7122 [93m28488[94m: addi R14 R14 -56 [0m
7123 [93m28492[94m: jmp -172 [0m
7124 [93m28496[94m: lwi R8 R14 -4 [0m
7125 [93m28500[94m: swi R8 R14 32 [0m
7126 [93m28504[94m: lwi R8 R14 40 [0m
7127 [93m28508[94m: lwi R9 R14 32 [0m
7128 [93m28512[94m: mul R10 R8 R9 [0m
7129 [93m28516[94m: swi R10 R14 36 [0m
7130 [93m28520[94m: lwi R8 R14 36 [0m
7131 [93m28524[94m: swi R8 R14 52 [0m
7132 [93m28528[94m: lwi R12 R14 44 [0m
7133 [93m28532[94m: li R8 28552 [0m
7134 [93m28536[94m: lwi R9 R14 48 [0m
7135 [93m28540[94m: sub R10 R9 R8 [0m
7136 [93m28544[94m: addi R14 R14 56 [0m
7137 [93m28548[94m: jr R10 [0m
7138 [93m28552[94m: swi R12 R14 80 [0m
7139 [93m28556[94m: subi R12 R12 20 [0m
7140 [93m28560[94m: li R8 69 [0m
7141 [93m28564[94m: sbi R8 R12 0 [0m
7142 [93m28568[94m: li R8 110 [0m
7143 [93m28572[94m: sbi R8 R12 1 [0m
7144 [93m28576[94m: li R8 116 [0m
7145 [93m28580[94m: sbi R8 R12 2 [0m
7146 [93m28584[94m: li R8 101 [0m
7147 [93m28588[94m: sbi R8 R12 3 [0m
7148 [93m28592[94m: li R8 114 [0m
7149 [93m28596[94m: sbi R8 R12 4 [0m
7150 [93m28600[94m: li R8 32 [0m
7151 [93m28604[94m: sbi R8 R12 5 [0m
7152 [93m28608[94m: li R8 116 [0m
7153 [93m28612[94m: sbi R8 R12 6 [0m
7154 [93m28616[94m: li R8 104 [0m
7155 [93m28620[94m: sbi R8 R12 7 [0m
7156 [93m28624[94m: li R8 101 [0m
7157 [93m28628[94m: sbi R8 R12 8 [0m
7158 [93m28632[94m: li R8 32 [0m
7159 [93m28636[94m: sbi R8 R12 9 [0m
7160 [93m28640[94m: li R8 110 [0m
7161 [93m28644[94m: sbi R8 R12 10 [0m
7162 [93m28648[94m: li R8 117 [0m
7163 [93m28652[94m: sbi R8 R12 11 [0m
7164 [93m28656[94m: li R8 109 [0m
7165 [93m28660[94m: sbi R8 R12 12 [0m
7166 [93m28664[94m: li R8 98 [0m
7167 [93m28668[94m: sbi R8 R12 13 [0m
7168 [93m28672[94m: li R8 101 [0m
7169 [93m28676[94m: sbi R8 R12 14 [0m
7170 [93m28680[94m: li R8 114 [0m
7171 [93m28684[94m: sbi R8 R12 15 [0m
7172 [93m28688[94m: li R8 32 [0m
7173 [93m28692[94m: sbi R8 R12 16 [0m
7174 [93m28696[94m: li R8 58 [0m
7175 [93m28700[94m: sbi R8 R12 17 [0m
7176 [93m28704[94m: li R8 32 [0m
7177 [93m28708[94m: sbi R8 R12 18 [0m
7178 [93m28712[94m: sbi R0 R12 19 [0m
7179 [93m28716[94m: swi R12 R14 28 [0m
7180 [93m28720[94m: lwi R8 R14 28 [0m
7181 [93m28724[94m: swi R8 R14 16 [0m
7182 [93m28728[94m: lwi R8 R14 16 [0m
7183 [93m28732[94m: swi R8 R14 -16 [0m
7184 [93m28736[94m: li R8 28752 [0m
7185 [93m28740[94m: swi R8 R14 -8 [0m
7186 [93m28744[94m: addi R14 R14 -52 [0m
7187 [93m28748[94m: jmp -28568 [0m
7188 [93m28752[94m: lwi R8 R14 -4 [0m
7189 [93m28756[94m: swi R8 R14 32 [0m
7190 [93m28760[94m: lwi R8 R14 32 [0m
7191 [93m28764[94m: swi R8 R14 4 [0m
7192 [93m28768[94m: subi R12 R12 36 [0m
7193 [93m28772[94m: li R8 84 [0m
7194 [93m28776[94m: sbi R8 R12 0 [0m
7195 [93m28780[94m: li R8 104 [0m
7196 [93m28784[94m: sbi R8 R12 1 [0m
7197 [93m28788[94m: li R8 101 [0m
7198 [93m28792[94m: sbi R8 R12 2 [0m
7199 [93m28796[94m: li R8 32 [0m
7200 [93m28800[94m: sbi R8 R12 3 [0m
7201 [93m28804[94m: li R8 102 [0m
7202 [93m28808[94m: sbi R8 R12 4 [0m
7203 [93m28812[94m: li R8 97 [0m
7204 [93m28816[94m: sbi R8 R12 5 [0m
7205 [93m28820[94m: li R8 99 [0m
7206 [93m28824[94m: sbi R8 R12 6 [0m
7207 [93m28828[94m: li R8 116 [0m
7208 [93m28832[94m: sbi R8 R12 7 [0m
7209 [93m28836[94m: li R8 111 [0m
7210 [93m28840[94m: sbi R8 R12 8 [0m
7211 [93m28844[94m: li R8 114 [0m
7212 [93m28848[94m: sbi R8 R12 9 [0m
7213 [93m28852[94m: li R8 105 [0m
7214 [93m28856[94m: sbi R8 R12 10 [0m
7215 [93m28860[94m: li R8 97 [0m
7216 [93m28864[94m: sbi R8 R12 11 [0m
7217 [93m28868[94m: li R8 108 [0m
7218 [93m28872[94m: sbi R8 R12 12 [0m
7219 [93m28876[94m: li R8 32 [0m
7220 [93m28880[94m: sbi R8 R12 13 [0m
7221 [93m28884[94m: li R8 111 [0m
7222 [93m28888[94m: sbi R8 R12 14 [0m
7223 [93m28892[94m: li R8 102 [0m
7224 [93m28896[94m: sbi R8 R12 15 [0m
7225 [93m28900[94m: li R8 32 [0m
7226 [93m28904[94m: sbi R8 R12 16 [0m
7227 [93m28908[94m: li R8 103 [0m
7228 [93m28912[94m: sbi R8 R12 17 [0m
7229 [93m28916[94m: li R8 105 [0m
7230 [93m28920[94m: sbi R8 R12 18 [0m
7231 [93m28924[94m: li R8 118 [0m
7232 [93m28928[94m: sbi R8 R12 19 [0m
7233 [93m28932[94m: li R8 101 [0m
7234 [93m28936[94m: sbi R8 R12 20 [0m
7235 [93m28940[94m: li R8 110 [0m
7236 [93m28944[94m: sbi R8 R12 21 [0m
7237 [93m28948[94m: li R8 32 [0m
7238 [93m28952[94m: sbi R8 R12 22 [0m
7239 [93m28956[94m: li R8 78 [0m
7240 [93m28960[94m: sbi R8 R12 23 [0m
7241 [93m28964[94m: li R8 117 [0m
7242 [93m28968[94m: sbi R8 R12 24 [0m
7243 [93m28972[94m: li R8 109 [0m
7244 [93m28976[94m: sbi R8 R12 25 [0m
7245 [93m28980[94m: li R8 98 [0m
7246 [93m28984[94m: sbi R8 R12 26 [0m
7247 [93m28988[94m: li R8 101 [0m
7248 [93m28992[94m: sbi R8 R12 27 [0m
7249 [93m28996[94m: li R8 114 [0m
7250 [93m29000[94m: sbi R8 R12 28 [0m
7251 [93m29004[94m: li R8 32 [0m
7252 [93m29008[94m: sbi R8 R12 29 [0m
7253 [93m29012[94m: li R8 105 [0m
7254 [93m29016[94m: sbi R8 R12 30 [0m
7255 [93m29020[94m: li R8 115 [0m
7256 [93m29024[94m: sbi R8 R12 31 [0m
7257 [93m29028[94m: li R8 32 [0m
7258 [93m29032[94m: sbi R8 R12 32 [0m
7259 [93m29036[94m: li R8 58 [0m
7260 [93m29040[94m: sbi R8 R12 33 [0m
7261 [93m29044[94m: li R8 32 [0m
7262 [93m29048[94m: sbi R8 R12 34 [0m
7263 [93m29052[94m: sbi R0 R12 35 [0m
7264 [93m29056[94m: swi R12 R14 36 [0m
7265 [93m29060[94m: lwi R8 R14 36 [0m
7266 [93m29064[94m: swi R8 R14 12 [0m
7267 [93m29068[94m: lwi R8 R14 12 [0m
7268 [93m29072[94m: swi R8 R14 -16 [0m
7269 [93m29076[94m: li R8 29092 [0m
7270 [93m29080[94m: swi R8 R14 -8 [0m
7271 [93m29084[94m: addi R14 R14 -52 [0m
7272 [93m29088[94m: jmp -28908 [0m
7273 [93m29092[94m: lwi R8 R14 -4 [0m
7274 [93m29096[94m: swi R8 R14 40 [0m
7275 [93m29100[94m: lwi R8 R14 40 [0m
7276 [93m29104[94m: swi R8 R14 8 [0m
7277 [93m29108[94m: lwi R8 R14 16 [0m
7278 [93m29112[94m: swi R8 R14 -16 [0m
7279 [93m29116[94m: lwi R8 R14 4 [0m
7280 [93m29120[94m: swi R8 R14 -20 [0m
7281 [93m29124[94m: li R8 0 [0m
7282 [93m29128[94m: swi R8 R14 44 [0m
7283 [93m29132[94m: lwi R8 R14 44 [0m
7284 [93m29136[94m: swi R8 R14 -24 [0m
7285 [93m29140[94m: li R8 29156 [0m
7286 [93m29144[94m: swi R8 R14 -8 [0m
7287 [93m29148[94m: addi R14 R14 -180 [0m
7288 [93m29152[94m: jmp -25540 [0m
7289 [93m29156[94m: lwi R8 R14 -4 [0m
7290 [93m29160[94m: swi R8 R14 48 [0m
7291 [93m29164[94m: li R8 29180 [0m
7292 [93m29168[94m: swi R8 R14 -8 [0m
7293 [93m29172[94m: addi R14 R14 -204 [0m
7294 [93m29176[94m: jmp -24212 [0m
7295 [93m29180[94m: lwi R8 R14 -4 [0m
7296 [93m29184[94m: swi R8 R14 52 [0m
7297 [93m29188[94m: lwi R8 R14 52 [0m
7298 [93m29192[94m: swi R8 R14 0 [0m
7299 [93m29196[94m: lwi R8 R14 0 [0m
7300 [93m29200[94m: swi R8 R14 20 [0m
7301 [93m29204[94m: lwi R8 R14 0 [0m
7302 [93m29208[94m: swi R8 R14 -16 [0m
7303 [93m29212[94m: li R8 29228 [0m
7304 [93m29216[94m: swi R8 R14 -8 [0m
7305 [93m29220[94m: addi R14 R14 -56 [0m
7306 [93m29224[94m: jmp -904 [0m
7307 [93m29228[94m: lwi R8 R14 -4 [0m
7308 [93m29232[94m: swi R8 R14 56 [0m
7309 [93m29236[94m: lwi R8 R14 56 [0m
7310 [93m29240[94m: swi R8 R14 24 [0m
7311 [93m29244[94m: lwi R8 R14 12 [0m
7312 [93m29248[94m: swi R8 R14 -16 [0m
7313 [93m29252[94m: lwi R8 R14 8 [0m
7314 [93m29256[94m: swi R8 R14 -20 [0m
7315 [93m29260[94m: li R8 0 [0m
7316 [93m29264[94m: swi R8 R14 60 [0m
7317 [93m29268[94m: lwi R8 R14 60 [0m
7318 [93m29272[94m: swi R8 R14 -24 [0m
7319 [93m29276[94m: li R8 29292 [0m
7320 [93m29280[94m: swi R8 R14 -8 [0m
7321 [93m29284[94m: addi R14 R14 -180 [0m
7322 [93m29288[94m: jmp -25676 [0m
7323 [93m29292[94m: lwi R8 R14 -4 [0m
7324 [93m29296[94m: swi R8 R14 64 [0m
7325 [93m29300[94m: lwi R8 R14 24 [0m
7326 [93m29304[94m: swi R8 R14 -16 [0m
7327 [93m29308[94m: li R8 1 [0m
7328 [93m29312[94m: swi R8 R14 68 [0m
7329 [93m29316[94m: lwi R8 R14 68 [0m
7330 [93m29320[94m: swi R8 R14 -20 [0m
7331 [93m29324[94m: li R8 29340 [0m
7332 [93m29328[94m: swi R8 R14 -8 [0m
7333 [93m29332[94m: addi R14 R14 -152 [0m
7334 [93m29336[94m: jmp -23044 [0m
7335 [93m29340[94m: lwi R8 R14 -4 [0m
7336 [93m29344[94m: swi R8 R14 72 [0m
7337 [93m29348[94m: li R8 0 [0m
7338 [93m29352[94m: swi R8 R14 76 [0m
7339 [93m29356[94m: lwi R8 R14 76 [0m
7340 [93m29360[94m: swi R8 R14 88 [0m
7341 [93m29364[94m: lwi R12 R14 80 [0m
7342 [93m29368[94m: li R8 29388 [0m
7343 [93m29372[94m: lwi R9 R14 84 [0m
7344 [93m29376[94m: sub R10 R9 R8 [0m
7345 [93m29380[94m: addi R14 R14 92 [0m
7346 [93m29384[94m: jr R10 [0m
7347 [93m29388[94m: swi R12 R14 36 [0m
7348 [93m29392[94m: li R8 307 [0m
7349 [93m29396[94m: swi R8 R14 12 [0m
7350 [93m29400[94m: lwi R8 R14 12 [0m
7351 [93m29404[94m: swi R8 R14 0 [0m
7352 [93m29408[94m: li R8 401 [0m
7353 [93m29412[94m: swi R8 R14 16 [0m
7354 [93m29416[94m: lwi R8 R14 16 [0m
7355 [93m29420[94m: swi R8 R14 4 [0m
7356 [93m29424[94m: li R8 821 [0m
7357 [93m29428[94m: swi R8 R14 20 [0m
7358 [93m29432[94m: lwi R8 R14 20 [0m
7359 [93m29436[94m: swi R8 R14 8 [0m
7360 [93m29440[94m: lwi R8 R14 0 [0m
7361 [93m29444[94m: lwi R9 R13 32 [0m
7362 [93m29448[94m: mul R10 R8 R9 [0m
7363 [93m29452[94m: swi R10 R14 24 [0m
7364 [93m29456[94m: lwi R8 R14 24 [0m
7365 [93m29460[94m: lwi R9 R14 4 [0m
7366 [93m29464[94m: add R10 R8 R9 [0m
7367 [93m29468[94m: swi R10 R14 28 [0m
7368 [93m29472[94m: lwi R8 R14 28 [0m
7369 [93m29476[94m: lwi R9 R14 8 [0m
7370 [93m29480[94m: mod R10 R8 R9 [0m
7371 [93m29484[94m: swi R10 R14 32 [0m
7372 [93m29488[94m: lwi R8 R14 32 [0m
7373 [93m29492[94m: swi R8 R13 32 [0m
7374 [93m29496[94m: lwi R8 R13 32 [0m
7375 [93m29500[94m: swi R8 R14 44 [0m
7376 [93m29504[94m: lwi R12 R14 36 [0m
7377 [93m29508[94m: li R8 29528 [0m
7378 [93m29512[94m: lwi R9 R14 40 [0m
7379 [93m29516[94m: sub R10 R9 R8 [0m
7380 [93m29520[94m: addi R14 R14 48 [0m
7381 [93m29524[94m: jr R10 [0m
7382 [93m29528[94m: swi R12 R14 548 [0m
7383 [93m29532[94m: li R8 20 [0m
7384 [93m29536[94m: swi R8 R14 68 [0m
7385 [93m29540[94m: lwi R8 R14 68 [0m
7386 [93m29544[94m: swi R8 R14 0 [0m
7387 [93m29548[94m: lwi R8 R14 68 [0m
7388 [93m29552[94m: li R9 1 [0m
7389 [93m29556[94m: mul R10 R8 R9 [0m
7390 [93m29560[94m: modi R8 R10 4 [0m
7391 [93m29564[94m: li R9 4 [0m
7392 [93m29568[94m: sub R8 R9 R8 [0m
7393 [93m29572[94m: add R10 R10 R8 [0m
7394 [93m29576[94m: sub R12 R12 R10 [0m
7395 [93m29580[94m: swi R12 R14 4 [0m
7396 [93m29584[94m: li R8 0 [0m
7397 [93m29588[94m: swi R8 R14 72 [0m
7398 [93m29592[94m: lwi R8 R14 72 [0m
7399 [93m29596[94m: swi R8 R14 8 [0m
7400 [93m29600[94m: li R8 20 [0m
7401 [93m29604[94m: swi R8 R14 76 [0m
7402 [93m29608[94m: lwi R8 R14 8 [0m
7403 [93m29612[94m: lwi R9 R14 76 [0m
7404 [93m29616[94m: lt R10 R8 R9 [0m
7405 [93m29620[94m: swi R10 R14 80 [0m
7406 [93m29624[94m: lwi R8 R14 80 [0m
7407 [93m29628[94m: cmp R8 R0 [0m
7408 [93m29632[94m: jeq 88 [0m
7409 [93m29636[94m: jmp 28 [0m
7410 [93m29640[94m: lwi R8 R14 8 [0m
7411 [93m29644[94m: swi R8 R14 84 [0m
7412 [93m29648[94m: lwi R8 R14 8 [0m
7413 [93m29652[94m: li R9 1 [0m
7414 [93m29656[94m: add R10 R8 R9 [0m
7415 [93m29660[94m: swi R10 R14 8 [0m
7416 [93m29664[94m: jmp -68 [0m
7417 [93m29668[94m: lwi R8 R14 8 [0m
7418 [93m29672[94m: li R9 1 [0m
7419 [93m29676[94m: mul R10 R8 R9 [0m
7420 [93m29680[94m: swi R10 R14 88 [0m
7421 [93m29684[94m: lwi R8 R14 4 [0m
7422 [93m29688[94m: lwi R9 R14 88 [0m
7423 [93m29692[94m: add R10 R8 R9 [0m
7424 [93m29696[94m: swi R10 R14 92 [0m
7425 [93m29700[94m: li R8 0 [0m
7426 [93m29704[94m: swi R8 R14 96 [0m
7427 [93m29708[94m: lwi R8 R14 96 [0m
7428 [93m29712[94m: lwi R7 R14 92 [0m
7429 [93m29716[94m: sbi R8 R7 0 [0m
7430 [93m29720[94m: jmp -84 [0m
7431 [93m29724[94m: li R8 29740 [0m
7432 [93m29728[94m: swi R8 R14 -8 [0m
7433 [93m29732[94m: addi R14 R14 -164 [0m
7434 [93m29736[94m: jmp -27344 [0m
7435 [93m29740[94m: lwi R8 R14 -4 [0m
7436 [93m29744[94m: swi R8 R14 100 [0m
7437 [93m29748[94m: lwi R8 R14 4 [0m
7438 [93m29752[94m: swi R8 R14 -16 [0m
7439 [93m29756[94m: li R8 29772 [0m
7440 [93m29760[94m: swi R8 R14 -8 [0m
7441 [93m29764[94m: addi R14 R14 -136 [0m
7442 [93m29768[94m: jmp -25392 [0m
7443 [93m29772[94m: lwi R8 R14 -4 [0m
7444 [93m29776[94m: swi R8 R14 104 [0m
7445 [93m29780[94m: lwi R8 R14 104 [0m
7446 [93m29784[94m: swi R8 R14 12 [0m
7447 [93m29788[94m: subi R12 R12 8 [0m
7448 [93m29792[94m: li R8 99 [0m
7449 [93m29796[94m: sbi R8 R12 0 [0m
7450 [93m29800[94m: li R8 108 [0m
7451 [93m29804[94m: sbi R8 R12 1 [0m
7452 [93m29808[94m: li R8 101 [0m
7453 [93m29812[94m: sbi R8 R12 2 [0m
7454 [93m29816[94m: li R8 97 [0m
7455 [93m29820[94m: sbi R8 R12 3 [0m
7456 [93m29824[94m: li R8 114 [0m
7457 [93m29828[94m: sbi R8 R12 4 [0m
7458 [93m29832[94m: sbi R0 R12 5 [0m
7459 [93m29836[94m: swi R12 R14 108 [0m
7460 [93m29840[94m: lwi R8 R14 108 [0m
7461 [93m29844[94m: swi R8 R14 16 [0m
7462 [93m29848[94m: subi R12 R12 4 [0m
7463 [93m29852[94m: li R8 108 [0m
7464 [93m29856[94m: sbi R8 R12 0 [0m
7465 [93m29860[94m: li R8 115 [0m
7466 [93m29864[94m: sbi R8 R12 1 [0m
7467 [93m29868[94m: sbi R0 R12 2 [0m
7468 [93m29872[94m: swi R12 R14 112 [0m
7469 [93m29876[94m: lwi R8 R14 112 [0m
7470 [93m29880[94m: swi R8 R14 20 [0m
7471 [93m29884[94m: subi R12 R12 8 [0m
7472 [93m29888[94m: li R8 102 [0m
7473 [93m29892[94m: sbi R8 R12 0 [0m
7474 [93m29896[94m: li R8 105 [0m
7475 [93m29900[94m: sbi R8 R12 1 [0m
7476 [93m29904[94m: li R8 98 [0m
7477 [93m29908[94m: sbi R8 R12 2 [0m
7478 [93m29912[94m: li R8 111 [0m
7479 [93m29916[94m: sbi R8 R12 3 [0m
7480 [93m29920[94m: sbi R0 R12 4 [0m
7481 [93m29924[94m: swi R12 R14 116 [0m
7482 [93m29928[94m: lwi R8 R14 116 [0m
7483 [93m29932[94m: swi R8 R14 24 [0m
7484 [93m29936[94m: subi R12 R12 8 [0m
7485 [93m29940[94m: li R8 116 [0m
7486 [93m29944[94m: sbi R8 R12 0 [0m
7487 [93m29948[94m: li R8 114 [0m
7488 [93m29952[94m: sbi R8 R12 1 [0m
7489 [93m29956[94m: li R8 101 [0m
7490 [93m29960[94m: sbi R8 R12 2 [0m
7491 [93m29964[94m: li R8 101 [0m
7492 [93m29968[94m: sbi R8 R12 3 [0m
7493 [93m29972[94m: sbi R0 R12 4 [0m
7494 [93m29976[94m: swi R12 R14 120 [0m
7495 [93m29980[94m: lwi R8 R14 120 [0m
7496 [93m29984[94m: swi R8 R14 28 [0m
7497 [93m29988[94m: subi R12 R12 12 [0m
7498 [93m29992[94m: li R8 113 [0m
7499 [93m29996[94m: sbi R8 R12 0 [0m
7500 [93m30000[94m: li R8 117 [0m
7501 [93m30004[94m: sbi R8 R12 1 [0m
7502 [93m30008[94m: li R8 105 [0m
7503 [93m30012[94m: sbi R8 R12 2 [0m
7504 [93m30016[94m: li R8 99 [0m
7505 [93m30020[94m: sbi R8 R12 3 [0m
7506 [93m30024[94m: li R8 107 [0m
7507 [93m30028[94m: sbi R8 R12 4 [0m
7508 [93m30032[94m: li R8 115 [0m
7509 [93m30036[94m: sbi R8 R12 5 [0m
7510 [93m30040[94m: li R8 111 [0m
7511 [93m30044[94m: sbi R8 R12 6 [0m
7512 [93m30048[94m: li R8 114 [0m
7513 [93m30052[94m: sbi R8 R12 7 [0m
7514 [93m30056[94m: li R8 116 [0m
7515 [93m30060[94m: sbi R8 R12 8 [0m
7516 [93m30064[94m: sbi R0 R12 9 [0m
7517 [93m30068[94m: swi R12 R14 124 [0m
7518 [93m30072[94m: lwi R8 R14 124 [0m
7519 [93m30076[94m: swi R8 R14 32 [0m
7520 [93m30080[94m: subi R12 R12 8 [0m
7521 [93m30084[94m: li R8 112 [0m
7522 [93m30088[94m: sbi R8 R12 0 [0m
7523 [93m30092[94m: li R8 114 [0m
7524 [93m30096[94m: sbi R8 R12 1 [0m
7525 [93m30100[94m: li R8 105 [0m
7526 [93m30104[94m: sbi R8 R12 2 [0m
7527 [93m30108[94m: li R8 109 [0m
7528 [93m30112[94m: sbi R8 R12 3 [0m
7529 [93m30116[94m: li R8 101 [0m
7530 [93m30120[94m: sbi R8 R12 4 [0m
7531 [93m30124[94m: sbi R0 R12 5 [0m
7532 [93m30128[94m: swi R12 R14 128 [0m
7533 [93m30132[94m: lwi R8 R14 128 [0m
7534 [93m30136[94m: swi R8 R14 36 [0m
7535 [93m30140[94m: subi R12 R12 8 [0m
7536 [93m30144[94m: li R8 114 [0m
7537 [93m30148[94m: sbi R8 R12 0 [0m
7538 [93m30152[94m: li R8 101 [0m
7539 [93m30156[94m: sbi R8 R12 1 [0m
7540 [93m30160[94m: li R8 118 [0m
7541 [93m30164[94m: sbi R8 R12 2 [0m
7542 [93m30168[94m: li R8 101 [0m
7543 [93m30172[94m: sbi R8 R12 3 [0m
7544 [93m30176[94m: li R8 114 [0m
7545 [93m30180[94m: sbi R8 R12 4 [0m
7546 [93m30184[94m: li R8 115 [0m
7547 [93m30188[94m: sbi R8 R12 5 [0m
7548 [93m30192[94m: li R8 101 [0m
7549 [93m30196[94m: sbi R8 R12 6 [0m
7550 [93m30200[94m: sbi R0 R12 7 [0m
7551 [93m30204[94m: swi R12 R14 132 [0m
7552 [93m30208[94m: lwi R8 R14 132 [0m
7553 [93m30212[94m: swi R8 R14 40 [0m
7554 [93m30216[94m: subi R12 R12 12 [0m
7555 [93m30220[94m: li R8 112 [0m
7556 [93m30224[94m: sbi R8 R12 0 [0m
7557 [93m30228[94m: li R8 97 [0m
7558 [93m30232[94m: sbi R8 R12 1 [0m
7559 [93m30236[94m: li R8 108 [0m
7560 [93m30240[94m: sbi R8 R12 2 [0m
7561 [93m30244[94m: li R8 105 [0m
7562 [93m30248[94m: sbi R8 R12 3 [0m
7563 [93m30252[94m: li R8 110 [0m
7564 [93m30256[94m: sbi R8 R12 4 [0m
7565 [93m30260[94m: li R8 100 [0m
7566 [93m30264[94m: sbi R8 R12 5 [0m
7567 [93m30268[94m: li R8 114 [0m
7568 [93m30272[94m: sbi R8 R12 6 [0m
7569 [93m30276[94m: li R8 111 [0m
7570 [93m30280[94m: sbi R8 R12 7 [0m
7571 [93m30284[94m: li R8 109 [0m
7572 [93m30288[94m: sbi R8 R12 8 [0m
7573 [93m30292[94m: li R8 101 [0m
7574 [93m30296[94m: sbi R8 R12 9 [0m
7575 [93m30300[94m: sbi R0 R12 10 [0m
7576 [93m30304[94m: swi R12 R14 136 [0m
7577 [93m30308[94m: lwi R8 R14 136 [0m
7578 [93m30312[94m: swi R8 R14 56 [0m
7579 [93m30316[94m: subi R12 R12 16 [0m
7580 [93m30320[94m: li R8 115 [0m
7581 [93m30324[94m: sbi R8 R12 0 [0m
7582 [93m30328[94m: li R8 117 [0m
7583 [93m30332[94m: sbi R8 R12 1 [0m
7584 [93m30336[94m: li R8 109 [0m
7585 [93m30340[94m: sbi R8 R12 2 [0m
7586 [93m30344[94m: li R8 111 [0m
7587 [93m30348[94m: sbi R8 R12 3 [0m
7588 [93m30352[94m: li R8 102 [0m
7589 [93m30356[94m: sbi R8 R12 4 [0m
7590 [93m30360[94m: li R8 110 [0m
7591 [93m30364[94m: sbi R8 R12 5 [0m
7592 [93m30368[94m: li R8 97 [0m
7593 [93m30372[94m: sbi R8 R12 6 [0m
7594 [93m30376[94m: li R8 116 [0m
7595 [93m30380[94m: sbi R8 R12 7 [0m
7596 [93m30384[94m: li R8 117 [0m
7597 [93m30388[94m: sbi R8 R12 8 [0m
7598 [93m30392[94m: li R8 114 [0m
7599 [93m30396[94m: sbi R8 R12 9 [0m
7600 [93m30400[94m: li R8 97 [0m
7601 [93m30404[94m: sbi R8 R12 10 [0m
7602 [93m30408[94m: li R8 108 [0m
7603 [93m30412[94m: sbi R8 R12 11 [0m
7604 [93m30416[94m: sbi R0 R12 12 [0m
7605 [93m30420[94m: swi R12 R14 140 [0m
7606 [93m30424[94m: lwi R8 R14 140 [0m
7607 [93m30428[94m: swi R8 R14 60 [0m
7608 [93m30432[94m: subi R12 R12 16 [0m
7609 [93m30436[94m: li R8 102 [0m
7610 [93m30440[94m: sbi R8 R12 0 [0m
7611 [93m30444[94m: li R8 97 [0m
7612 [93m30448[94m: sbi R8 R12 1 [0m
7613 [93m30452[94m: li R8 99 [0m
7614 [93m30456[94m: sbi R8 R12 2 [0m
7615 [93m30460[94m: li R8 116 [0m
7616 [93m30464[94m: sbi R8 R12 3 [0m
7617 [93m30468[94m: li R8 111 [0m
7618 [93m30472[94m: sbi R8 R12 4 [0m
7619 [93m30476[94m: li R8 114 [0m
7620 [93m30480[94m: sbi R8 R12 5 [0m
7621 [93m30484[94m: li R8 105 [0m
7622 [93m30488[94m: sbi R8 R12 6 [0m
7623 [93m30492[94m: li R8 97 [0m
7624 [93m30496[94m: sbi R8 R12 7 [0m
7625 [93m30500[94m: li R8 108 [0m
7626 [93m30504[94m: sbi R8 R12 8 [0m
7627 [93m30508[94m: li R8 111 [0m
7628 [93m30512[94m: sbi R8 R12 9 [0m
7629 [93m30516[94m: li R8 102 [0m
7630 [93m30520[94m: sbi R8 R12 10 [0m
7631 [93m30524[94m: li R8 110 [0m
7632 [93m30528[94m: sbi R8 R12 11 [0m
7633 [93m30532[94m: sbi R0 R12 12 [0m
7634 [93m30536[94m: swi R12 R14 144 [0m
7635 [93m30540[94m: lwi R8 R14 144 [0m
7636 [93m30544[94m: swi R8 R14 64 [0m
7637 [93m30548[94m: subi R12 R12 8 [0m
7638 [93m30552[94m: li R8 101 [0m
7639 [93m30556[94m: sbi R8 R12 0 [0m
7640 [93m30560[94m: li R8 120 [0m
7641 [93m30564[94m: sbi R8 R12 1 [0m
7642 [93m30568[94m: li R8 105 [0m
7643 [93m30572[94m: sbi R8 R12 2 [0m
7644 [93m30576[94m: li R8 116 [0m
7645 [93m30580[94m: sbi R8 R12 3 [0m
7646 [93m30584[94m: sbi R0 R12 4 [0m
7647 [93m30588[94m: swi R12 R14 148 [0m
7648 [93m30592[94m: lwi R8 R14 148 [0m
7649 [93m30596[94m: swi R8 R14 44 [0m
7650 [93m30600[94m: subi R12 R12 20 [0m
7651 [93m30604[94m: li R8 67 [0m
7652 [93m30608[94m: sbi R8 R12 0 [0m
7653 [93m30612[94m: li R8 111 [0m
7654 [93m30616[94m: sbi R8 R12 1 [0m
7655 [93m30620[94m: li R8 109 [0m
7656 [93m30624[94m: sbi R8 R12 2 [0m
7657 [93m30628[94m: li R8 109 [0m
7658 [93m30632[94m: sbi R8 R12 3 [0m
7659 [93m30636[94m: li R8 97 [0m
7660 [93m30640[94m: sbi R8 R12 4 [0m
7661 [93m30644[94m: li R8 110 [0m
7662 [93m30648[94m: sbi R8 R12 5 [0m
7663 [93m30652[94m: li R8 100 [0m
7664 [93m30656[94m: sbi R8 R12 6 [0m
7665 [93m30660[94m: li R8 32 [0m
7666 [93m30664[94m: sbi R8 R12 7 [0m
7667 [93m30668[94m: li R8 78 [0m
7668 [93m30672[94m: sbi R8 R12 8 [0m
7669 [93m30676[94m: li R8 111 [0m
7670 [93m30680[94m: sbi R8 R12 9 [0m
7671 [93m30684[94m: li R8 116 [0m
7672 [93m30688[94m: sbi R8 R12 10 [0m
7673 [93m30692[94m: li R8 32 [0m
7674 [93m30696[94m: sbi R8 R12 11 [0m
7675 [93m30700[94m: li R8 70 [0m
7676 [93m30704[94m: sbi R8 R12 12 [0m
7677 [93m30708[94m: li R8 111 [0m
7678 [93m30712[94m: sbi R8 R12 13 [0m
7679 [93m30716[94m: li R8 117 [0m
7680 [93m30720[94m: sbi R8 R12 14 [0m
7681 [93m30724[94m: li R8 110 [0m
7682 [93m30728[94m: sbi R8 R12 15 [0m
7683 [93m30732[94m: li R8 100 [0m
7684 [93m30736[94m: sbi R8 R12 16 [0m
7685 [93m30740[94m: sbi R0 R12 17 [0m
7686 [93m30744[94m: swi R12 R14 152 [0m
7687 [93m30748[94m: lwi R8 R14 152 [0m
7688 [93m30752[94m: swi R8 R14 48 [0m
7689 [93m30756[94m: subi R12 R12 4 [0m
7690 [93m30760[94m: li R8 32 [0m
7691 [93m30764[94m: sbi R8 R12 0 [0m
7692 [93m30768[94m: sbi R0 R12 1 [0m
7693 [93m30772[94m: swi R12 R14 156 [0m
7694 [93m30776[94m: lwi R8 R14 156 [0m
7695 [93m30780[94m: swi R8 R14 52 [0m
7696 [93m30784[94m: lwi R8 R14 4 [0m
7697 [93m30788[94m: swi R8 R14 -16 [0m
7698 [93m30792[94m: lwi R8 R14 16 [0m
7699 [93m30796[94m: swi R8 R14 -20 [0m
7700 [93m30800[94m: li R8 30816 [0m
7701 [93m30804[94m: swi R8 R14 -8 [0m
7702 [93m30808[94m: addi R14 R14 -96 [0m
7703 [93m30812[94m: jmp -27636 [0m
7704 [93m30816[94m: lwi R8 R14 -4 [0m
7705 [93m30820[94m: swi R8 R14 160 [0m
7706 [93m30824[94m: li R8 0 [0m
7707 [93m30828[94m: swi R8 R14 164 [0m
7708 [93m30832[94m: lwi R8 R14 160 [0m
7709 [93m30836[94m: lwi R9 R14 164 [0m
7710 [93m30840[94m: eq R10 R8 R9 [0m
7711 [93m30844[94m: swi R10 R14 168 [0m
7712 [93m30848[94m: lwi R8 R14 168 [0m
7713 [93m30852[94m: cmp R8 R0 [0m
7714 [93m30856[94m: jeq 28 [0m
7715 [93m30860[94m: li R8 30876 [0m
7716 [93m30864[94m: swi R8 R14 -8 [0m
7717 [93m30868[94m: addi R14 R14 -56 [0m
7718 [93m30872[94m: jmp -30496 [0m
7719 [93m30876[94m: lwi R8 R14 -4 [0m
7720 [93m30880[94m: swi R8 R14 172 [0m
7721 [93m30884[94m: jmp 2144 [0m
7722 [93m30888[94m: lwi R8 R14 4 [0m
7723 [93m30892[94m: swi R8 R14 -16 [0m
7724 [93m30896[94m: lwi R8 R14 20 [0m
7725 [93m30900[94m: swi R8 R14 -20 [0m
7726 [93m30904[94m: li R8 30920 [0m
7727 [93m30908[94m: swi R8 R14 -8 [0m
7728 [93m30912[94m: addi R14 R14 -96 [0m
7729 [93m30916[94m: jmp -27740 [0m
7730 [93m30920[94m: lwi R8 R14 -4 [0m
7731 [93m30924[94m: swi R8 R14 176 [0m
7732 [93m30928[94m: li R8 0 [0m
7733 [93m30932[94m: swi R8 R14 180 [0m
7734 [93m30936[94m: lwi R8 R14 176 [0m
7735 [93m30940[94m: lwi R9 R14 180 [0m
7736 [93m30944[94m: eq R10 R8 R9 [0m
7737 [93m30948[94m: swi R10 R14 184 [0m
7738 [93m30952[94m: lwi R8 R14 184 [0m
7739 [93m30956[94m: cmp R8 R0 [0m
7740 [93m30960[94m: jeq 1156 [0m
7741 [93m30964[94m: lwi R8 R14 24 [0m
7742 [93m30968[94m: swi R8 R14 -16 [0m
7743 [93m30972[94m: li R8 4 [0m
7744 [93m30976[94m: swi R8 R14 188 [0m
7745 [93m30980[94m: lwi R8 R14 188 [0m
7746 [93m30984[94m: swi R8 R14 -20 [0m
7747 [93m30988[94m: li R8 0 [0m
7748 [93m30992[94m: swi R8 R14 192 [0m
7749 [93m30996[94m: lwi R8 R14 192 [0m
7750 [93m31000[94m: swi R8 R14 -24 [0m
7751 [93m31004[94m: li R8 31020 [0m
7752 [93m31008[94m: swi R8 R14 -8 [0m
7753 [93m31012[94m: addi R14 R14 -180 [0m
7754 [93m31016[94m: jmp -27404 [0m
7755 [93m31020[94m: lwi R8 R14 -4 [0m
7756 [93m31024[94m: swi R8 R14 196 [0m
7757 [93m31028[94m: lwi R8 R14 52 [0m
7758 [93m31032[94m: swi R8 R14 -16 [0m
7759 [93m31036[94m: li R8 1 [0m
7760 [93m31040[94m: swi R8 R14 200 [0m
7761 [93m31044[94m: lwi R8 R14 200 [0m
7762 [93m31048[94m: swi R8 R14 -20 [0m
7763 [93m31052[94m: li R8 0 [0m
7764 [93m31056[94m: swi R8 R14 204 [0m
7765 [93m31060[94m: lwi R8 R14 204 [0m
7766 [93m31064[94m: swi R8 R14 -24 [0m
7767 [93m31068[94m: li R8 31084 [0m
7768 [93m31072[94m: swi R8 R14 -8 [0m
7769 [93m31076[94m: addi R14 R14 -180 [0m
7770 [93m31080[94m: jmp -27468 [0m
7771 [93m31084[94m: lwi R8 R14 -4 [0m
7772 [93m31088[94m: swi R8 R14 208 [0m
7773 [93m31092[94m: lwi R8 R14 32 [0m
7774 [93m31096[94m: swi R8 R14 -16 [0m
7775 [93m31100[94m: li R8 9 [0m
7776 [93m31104[94m: swi R8 R14 212 [0m
7777 [93m31108[94m: lwi R8 R14 212 [0m
7778 [93m31112[94m: swi R8 R14 -20 [0m
7779 [93m31116[94m: li R8 0 [0m
7780 [93m31120[94m: swi R8 R14 216 [0m
7781 [93m31124[94m: lwi R8 R14 216 [0m
7782 [93m31128[94m: swi R8 R14 -24 [0m
7783 [93m31132[94m: li R8 31148 [0m
7784 [93m31136[94m: swi R8 R14 -8 [0m
7785 [93m31140[94m: addi R14 R14 -180 [0m
7786 [93m31144[94m: jmp -27532 [0m
7787 [93m31148[94m: lwi R8 R14 -4 [0m
7788 [93m31152[94m: swi R8 R14 220 [0m
7789 [93m31156[94m: lwi R8 R14 52 [0m
7790 [93m31160[94m: swi R8 R14 -16 [0m
7791 [93m31164[94m: li R8 1 [0m
7792 [93m31168[94m: swi R8 R14 224 [0m
7793 [93m31172[94m: lwi R8 R14 224 [0m
7794 [93m31176[94m: swi R8 R14 -20 [0m
7795 [93m31180[94m: li R8 0 [0m
7796 [93m31184[94m: swi R8 R14 228 [0m
7797 [93m31188[94m: lwi R8 R14 228 [0m
7798 [93m31192[94m: swi R8 R14 -24 [0m
7799 [93m31196[94m: li R8 31212 [0m
7800 [93m31200[94m: swi R8 R14 -8 [0m
7801 [93m31204[94m: addi R14 R14 -180 [0m
7802 [93m31208[94m: jmp -27596 [0m
7803 [93m31212[94m: lwi R8 R14 -4 [0m
7804 [93m31216[94m: swi R8 R14 232 [0m
7805 [93m31220[94m: lwi R8 R14 36 [0m
7806 [93m31224[94m: swi R8 R14 -16 [0m
7807 [93m31228[94m: li R8 5 [0m
7808 [93m31232[94m: swi R8 R14 236 [0m
7809 [93m31236[94m: lwi R8 R14 236 [0m
7810 [93m31240[94m: swi R8 R14 -20 [0m
7811 [93m31244[94m: li R8 0 [0m
7812 [93m31248[94m: swi R8 R14 240 [0m
7813 [93m31252[94m: lwi R8 R14 240 [0m
7814 [93m31256[94m: swi R8 R14 -24 [0m
7815 [93m31260[94m: li R8 31276 [0m
7816 [93m31264[94m: swi R8 R14 -8 [0m
7817 [93m31268[94m: addi R14 R14 -180 [0m
7818 [93m31272[94m: jmp -27660 [0m
7819 [93m31276[94m: lwi R8 R14 -4 [0m
7820 [93m31280[94m: swi R8 R14 244 [0m
7821 [93m31284[94m: lwi R8 R14 52 [0m
7822 [93m31288[94m: swi R8 R14 -16 [0m
7823 [93m31292[94m: li R8 1 [0m
7824 [93m31296[94m: swi R8 R14 248 [0m
7825 [93m31300[94m: lwi R8 R14 248 [0m
7826 [93m31304[94m: swi R8 R14 -20 [0m
7827 [93m31308[94m: li R8 0 [0m
7828 [93m31312[94m: swi R8 R14 252 [0m
7829 [93m31316[94m: lwi R8 R14 252 [0m
7830 [93m31320[94m: swi R8 R14 -24 [0m
7831 [93m31324[94m: li R8 31340 [0m
7832 [93m31328[94m: swi R8 R14 -8 [0m
7833 [93m31332[94m: addi R14 R14 -180 [0m
7834 [93m31336[94m: jmp -27724 [0m
7835 [93m31340[94m: lwi R8 R14 -4 [0m
7836 [93m31344[94m: swi R8 R14 256 [0m
7837 [93m31348[94m: lwi R8 R14 40 [0m
7838 [93m31352[94m: swi R8 R14 -16 [0m
7839 [93m31356[94m: li R8 7 [0m
7840 [93m31360[94m: swi R8 R14 260 [0m
7841 [93m31364[94m: lwi R8 R14 260 [0m
7842 [93m31368[94m: swi R8 R14 -20 [0m
7843 [93m31372[94m: li R8 1 [0m
7844 [93m31376[94m: swi R8 R14 264 [0m
7845 [93m31380[94m: lwi R8 R14 264 [0m
7846 [93m31384[94m: swi R8 R14 -24 [0m
7847 [93m31388[94m: li R8 31404 [0m
7848 [93m31392[94m: swi R8 R14 -8 [0m
7849 [93m31396[94m: addi R14 R14 -180 [0m
7850 [93m31400[94m: jmp -27788 [0m
7851 [93m31404[94m: lwi R8 R14 -4 [0m
7852 [93m31408[94m: swi R8 R14 268 [0m
7853 [93m31412[94m: lwi R8 R14 56 [0m
7854 [93m31416[94m: swi R8 R14 -16 [0m
7855 [93m31420[94m: li R8 10 [0m
7856 [93m31424[94m: swi R8 R14 272 [0m
7857 [93m31428[94m: lwi R8 R14 272 [0m
7858 [93m31432[94m: swi R8 R14 -20 [0m
7859 [93m31436[94m: li R8 0 [0m
7860 [93m31440[94m: swi R8 R14 276 [0m
7861 [93m31444[94m: lwi R8 R14 276 [0m
7862 [93m31448[94m: swi R8 R14 -24 [0m
7863 [93m31452[94m: li R8 31468 [0m
7864 [93m31456[94m: swi R8 R14 -8 [0m
7865 [93m31460[94m: addi R14 R14 -180 [0m
7866 [93m31464[94m: jmp -27852 [0m
7867 [93m31468[94m: lwi R8 R14 -4 [0m
7868 [93m31472[94m: swi R8 R14 280 [0m
7869 [93m31476[94m: lwi R8 R14 52 [0m
7870 [93m31480[94m: swi R8 R14 -16 [0m
7871 [93m31484[94m: li R8 1 [0m
7872 [93m31488[94m: swi R8 R14 284 [0m
7873 [93m31492[94m: lwi R8 R14 284 [0m
7874 [93m31496[94m: swi R8 R14 -20 [0m
7875 [93m31500[94m: li R8 0 [0m
7876 [93m31504[94m: swi R8 R14 288 [0m
7877 [93m31508[94m: lwi R8 R14 288 [0m
7878 [93m31512[94m: swi R8 R14 -24 [0m
7879 [93m31516[94m: li R8 31532 [0m
7880 [93m31520[94m: swi R8 R14 -8 [0m
7881 [93m31524[94m: addi R14 R14 -180 [0m
7882 [93m31528[94m: jmp -27916 [0m
7883 [93m31532[94m: lwi R8 R14 -4 [0m
7884 [93m31536[94m: swi R8 R14 292 [0m
7885 [93m31540[94m: lwi R8 R14 60 [0m
7886 [93m31544[94m: swi R8 R14 -16 [0m
7887 [93m31548[94m: li R8 12 [0m
7888 [93m31552[94m: swi R8 R14 296 [0m
7889 [93m31556[94m: lwi R8 R14 296 [0m
7890 [93m31560[94m: swi R8 R14 -20 [0m
7891 [93m31564[94m: li R8 0 [0m
7892 [93m31568[94m: swi R8 R14 300 [0m
7893 [93m31572[94m: lwi R8 R14 300 [0m
7894 [93m31576[94m: swi R8 R14 -24 [0m
7895 [93m31580[94m: li R8 31596 [0m
7896 [93m31584[94m: swi R8 R14 -8 [0m
7897 [93m31588[94m: addi R14 R14 -180 [0m
7898 [93m31592[94m: jmp -27980 [0m
7899 [93m31596[94m: lwi R8 R14 -4 [0m
7900 [93m31600[94m: swi R8 R14 304 [0m
7901 [93m31604[94m: lwi R8 R14 52 [0m
7902 [93m31608[94m: swi R8 R14 -16 [0m
7903 [93m31612[94m: li R8 1 [0m
7904 [93m31616[94m: swi R8 R14 308 [0m
7905 [93m31620[94m: lwi R8 R14 308 [0m
7906 [93m31624[94m: swi R8 R14 -20 [0m
7907 [93m31628[94m: li R8 0 [0m
7908 [93m31632[94m: swi R8 R14 312 [0m
7909 [93m31636[94m: lwi R8 R14 312 [0m
7910 [93m31640[94m: swi R8 R14 -24 [0m
7911 [93m31644[94m: li R8 31660 [0m
7912 [93m31648[94m: swi R8 R14 -8 [0m
7913 [93m31652[94m: addi R14 R14 -180 [0m
7914 [93m31656[94m: jmp -28044 [0m
7915 [93m31660[94m: lwi R8 R14 -4 [0m
7916 [93m31664[94m: swi R8 R14 316 [0m
7917 [93m31668[94m: lwi R8 R14 64 [0m
7918 [93m31672[94m: swi R8 R14 -16 [0m
7919 [93m31676[94m: li R8 11 [0m
7920 [93m31680[94m: swi R8 R14 320 [0m
7921 [93m31684[94m: lwi R8 R14 320 [0m
7922 [93m31688[94m: swi R8 R14 -20 [0m
7923 [93m31692[94m: li R8 1 [0m
7924 [93m31696[94m: swi R8 R14 324 [0m
7925 [93m31700[94m: lwi R8 R14 324 [0m
7926 [93m31704[94m: swi R8 R14 -24 [0m
7927 [93m31708[94m: li R8 31724 [0m
7928 [93m31712[94m: swi R8 R14 -8 [0m
7929 [93m31716[94m: addi R14 R14 -180 [0m
7930 [93m31720[94m: jmp -28108 [0m
7931 [93m31724[94m: lwi R8 R14 -4 [0m
7932 [93m31728[94m: swi R8 R14 328 [0m
7933 [93m31732[94m: lwi R8 R14 52 [0m
7934 [93m31736[94m: swi R8 R14 -16 [0m
7935 [93m31740[94m: li R8 1 [0m
7936 [93m31744[94m: swi R8 R14 332 [0m
7937 [93m31748[94m: lwi R8 R14 332 [0m
7938 [93m31752[94m: swi R8 R14 -20 [0m
7939 [93m31756[94m: li R8 0 [0m
7940 [93m31760[94m: swi R8 R14 336 [0m
7941 [93m31764[94m: lwi R8 R14 336 [0m
7942 [93m31768[94m: swi R8 R14 -24 [0m
7943 [93m31772[94m: li R8 31788 [0m
7944 [93m31776[94m: swi R8 R14 -8 [0m
7945 [93m31780[94m: addi R14 R14 -180 [0m
7946 [93m31784[94m: jmp -28172 [0m
7947 [93m31788[94m: lwi R8 R14 -4 [0m
7948 [93m31792[94m: swi R8 R14 340 [0m
7949 [93m31796[94m: lwi R8 R14 16 [0m
7950 [93m31800[94m: swi R8 R14 -16 [0m
7951 [93m31804[94m: li R8 5 [0m
7952 [93m31808[94m: swi R8 R14 344 [0m
7953 [93m31812[94m: lwi R8 R14 344 [0m
7954 [93m31816[94m: swi R8 R14 -20 [0m
7955 [93m31820[94m: li R8 0 [0m
7956 [93m31824[94m: swi R8 R14 348 [0m
7957 [93m31828[94m: lwi R8 R14 348 [0m
7958 [93m31832[94m: swi R8 R14 -24 [0m
7959 [93m31836[94m: li R8 31852 [0m
7960 [93m31840[94m: swi R8 R14 -8 [0m
7961 [93m31844[94m: addi R14 R14 -180 [0m
7962 [93m31848[94m: jmp -28236 [0m
7963 [93m31852[94m: lwi R8 R14 -4 [0m
7964 [93m31856[94m: swi R8 R14 352 [0m
7965 [93m31860[94m: lwi R8 R14 52 [0m
7966 [93m31864[94m: swi R8 R14 -16 [0m
7967 [93m31868[94m: li R8 1 [0m
7968 [93m31872[94m: swi R8 R14 356 [0m
7969 [93m31876[94m: lwi R8 R14 356 [0m
7970 [93m31880[94m: swi R8 R14 -20 [0m
7971 [93m31884[94m: li R8 0 [0m
7972 [93m31888[94m: swi R8 R14 360 [0m
7973 [93m31892[94m: lwi R8 R14 360 [0m
7974 [93m31896[94m: swi R8 R14 -24 [0m
7975 [93m31900[94m: li R8 31916 [0m
7976 [93m31904[94m: swi R8 R14 -8 [0m
7977 [93m31908[94m: addi R14 R14 -180 [0m
7978 [93m31912[94m: jmp -28300 [0m
7979 [93m31916[94m: lwi R8 R14 -4 [0m
7980 [93m31920[94m: swi R8 R14 364 [0m
7981 [93m31924[94m: lwi R8 R14 20 [0m
7982 [93m31928[94m: swi R8 R14 -16 [0m
7983 [93m31932[94m: li R8 2 [0m
7984 [93m31936[94m: swi R8 R14 368 [0m
7985 [93m31940[94m: lwi R8 R14 368 [0m
7986 [93m31944[94m: swi R8 R14 -20 [0m
7987 [93m31948[94m: li R8 0 [0m
7988 [93m31952[94m: swi R8 R14 372 [0m
7989 [93m31956[94m: lwi R8 R14 372 [0m
7990 [93m31960[94m: swi R8 R14 -24 [0m
7991 [93m31964[94m: li R8 31980 [0m
7992 [93m31968[94m: swi R8 R14 -8 [0m
7993 [93m31972[94m: addi R14 R14 -180 [0m
7994 [93m31976[94m: jmp -28364 [0m
7995 [93m31980[94m: lwi R8 R14 -4 [0m
7996 [93m31984[94m: swi R8 R14 376 [0m
7997 [93m31988[94m: lwi R8 R14 52 [0m
7998 [93m31992[94m: swi R8 R14 -16 [0m
7999 [93m31996[94m: li R8 1 [0m
8000 [93m32000[94m: swi R8 R14 380 [0m
8001 [93m32004[94m: lwi R8 R14 380 [0m
8002 [93m32008[94m: swi R8 R14 -20 [0m
8003 [93m32012[94m: li R8 0 [0m
8004 [93m32016[94m: swi R8 R14 384 [0m
8005 [93m32020[94m: lwi R8 R14 384 [0m
8006 [93m32024[94m: swi R8 R14 -24 [0m
8007 [93m32028[94m: li R8 32044 [0m
8008 [93m32032[94m: swi R8 R14 -8 [0m
8009 [93m32036[94m: addi R14 R14 -180 [0m
8010 [93m32040[94m: jmp -28428 [0m
8011 [93m32044[94m: lwi R8 R14 -4 [0m
8012 [93m32048[94m: swi R8 R14 388 [0m
8013 [93m32052[94m: lwi R8 R14 44 [0m
8014 [93m32056[94m: swi R8 R14 -16 [0m
8015 [93m32060[94m: li R8 4 [0m
8016 [93m32064[94m: swi R8 R14 392 [0m
8017 [93m32068[94m: lwi R8 R14 392 [0m
8018 [93m32072[94m: swi R8 R14 -20 [0m
8019 [93m32076[94m: li R8 1 [0m
8020 [93m32080[94m: swi R8 R14 396 [0m
8021 [93m32084[94m: lwi R8 R14 396 [0m
8022 [93m32088[94m: swi R8 R14 -24 [0m
8023 [93m32092[94m: li R8 32108 [0m
8024 [93m32096[94m: swi R8 R14 -8 [0m
8025 [93m32100[94m: addi R14 R14 -180 [0m
8026 [93m32104[94m: jmp -28492 [0m
8027 [93m32108[94m: lwi R8 R14 -4 [0m
8028 [93m32112[94m: swi R8 R14 400 [0m
8029 [93m32116[94m: jmp 912 [0m
8030 [93m32120[94m: lwi R8 R14 4 [0m
8031 [93m32124[94m: swi R8 R14 -16 [0m
8032 [93m32128[94m: lwi R8 R14 24 [0m
8033 [93m32132[94m: swi R8 R14 -20 [0m
8034 [93m32136[94m: li R8 32152 [0m
8035 [93m32140[94m: swi R8 R14 -8 [0m
8036 [93m32144[94m: addi R14 R14 -96 [0m
8037 [93m32148[94m: jmp -28972 [0m
8038 [93m32152[94m: lwi R8 R14 -4 [0m
8039 [93m32156[94m: swi R8 R14 404 [0m
8040 [93m32160[94m: li R8 0 [0m
8041 [93m32164[94m: swi R8 R14 408 [0m
8042 [93m32168[94m: lwi R8 R14 404 [0m
8043 [93m32172[94m: lwi R9 R14 408 [0m
8044 [93m32176[94m: eq R10 R8 R9 [0m
8045 [93m32180[94m: swi R10 R14 412 [0m
8046 [93m32184[94m: lwi R8 R14 412 [0m
8047 [93m32188[94m: cmp R8 R0 [0m
8048 [93m32192[94m: jeq 28 [0m
8049 [93m32196[94m: li R8 32212 [0m
8050 [93m32200[94m: swi R8 R14 -8 [0m
8051 [93m32204[94m: addi R14 R14 -176 [0m
8052 [93m32208[94m: jmp -15692 [0m
8053 [93m32212[94m: lwi R8 R14 -4 [0m
8054 [93m32216[94m: swi R8 R14 416 [0m
8055 [93m32220[94m: jmp 808 [0m
8056 [93m32224[94m: lwi R8 R14 4 [0m
8057 [93m32228[94m: swi R8 R14 -16 [0m
8058 [93m32232[94m: lwi R8 R14 40 [0m
8059 [93m32236[94m: swi R8 R14 -20 [0m
8060 [93m32240[94m: li R8 32256 [0m
8061 [93m32244[94m: swi R8 R14 -8 [0m
8062 [93m32248[94m: addi R14 R14 -96 [0m
8063 [93m32252[94m: jmp -29076 [0m
8064 [93m32256[94m: lwi R8 R14 -4 [0m
8065 [93m32260[94m: swi R8 R14 420 [0m
8066 [93m32264[94m: li R8 0 [0m
8067 [93m32268[94m: swi R8 R14 424 [0m
8068 [93m32272[94m: lwi R8 R14 420 [0m
8069 [93m32276[94m: lwi R9 R14 424 [0m
8070 [93m32280[94m: eq R10 R8 R9 [0m
8071 [93m32284[94m: swi R10 R14 428 [0m
8072 [93m32288[94m: lwi R8 R14 428 [0m
8073 [93m32292[94m: cmp R8 R0 [0m
8074 [93m32296[94m: jeq 28 [0m
8075 [93m32300[94m: li R8 32316 [0m
8076 [93m32304[94m: swi R8 R14 -8 [0m
8077 [93m32308[94m: addi R14 R14 -208 [0m
8078 [93m32312[94m: jmp -14652 [0m
8079 [93m32316[94m: lwi R8 R14 -4 [0m
8080 [93m32320[94m: swi R8 R14 432 [0m
8081 [93m32324[94m: jmp 704 [0m
8082 [93m32328[94m: lwi R8 R14 4 [0m
8083 [93m32332[94m: swi R8 R14 -16 [0m
8084 [93m32336[94m: lwi R8 R14 36 [0m
8085 [93m32340[94m: swi R8 R14 -20 [0m
8086 [93m32344[94m: li R8 32360 [0m
8087 [93m32348[94m: swi R8 R14 -8 [0m
8088 [93m32352[94m: addi R14 R14 -96 [0m
8089 [93m32356[94m: jmp -29180 [0m
8090 [93m32360[94m: lwi R8 R14 -4 [0m
8091 [93m32364[94m: swi R8 R14 436 [0m
8092 [93m32368[94m: li R8 0 [0m
8093 [93m32372[94m: swi R8 R14 440 [0m
8094 [93m32376[94m: lwi R8 R14 436 [0m
8095 [93m32380[94m: lwi R9 R14 440 [0m
8096 [93m32384[94m: eq R10 R8 R9 [0m
8097 [93m32388[94m: swi R10 R14 444 [0m
8098 [93m32392[94m: lwi R8 R14 444 [0m
8099 [93m32396[94m: cmp R8 R0 [0m
8100 [93m32400[94m: jeq 28 [0m
8101 [93m32404[94m: li R8 32420 [0m
8102 [93m32408[94m: swi R8 R14 -8 [0m
8103 [93m32412[94m: addi R14 R14 -164 [0m
8104 [93m32416[94m: jmp -13412 [0m
8105 [93m32420[94m: lwi R8 R14 -4 [0m
8106 [93m32424[94m: swi R8 R14 448 [0m
8107 [93m32428[94m: jmp 600 [0m
8108 [93m32432[94m: lwi R8 R14 4 [0m
8109 [93m32436[94m: swi R8 R14 -16 [0m
8110 [93m32440[94m: lwi R8 R14 32 [0m
8111 [93m32444[94m: swi R8 R14 -20 [0m
8112 [93m32448[94m: li R8 32464 [0m
8113 [93m32452[94m: swi R8 R14 -8 [0m
8114 [93m32456[94m: addi R14 R14 -96 [0m
8115 [93m32460[94m: jmp -29284 [0m
8116 [93m32464[94m: lwi R8 R14 -4 [0m
8117 [93m32468[94m: swi R8 R14 452 [0m
8118 [93m32472[94m: li R8 0 [0m
8119 [93m32476[94m: swi R8 R14 456 [0m
8120 [93m32480[94m: lwi R8 R14 452 [0m
8121 [93m32484[94m: lwi R9 R14 456 [0m
8122 [93m32488[94m: eq R10 R8 R9 [0m
8123 [93m32492[94m: swi R10 R14 460 [0m
8124 [93m32496[94m: lwi R8 R14 460 [0m
8125 [93m32500[94m: cmp R8 R0 [0m
8126 [93m32504[94m: jeq 28 [0m
8127 [93m32508[94m: li R8 32524 [0m
8128 [93m32512[94m: swi R8 R14 -8 [0m
8129 [93m32516[94m: addi R14 R14 -184 [0m
8130 [93m32520[94m: jmp -11312 [0m
8131 [93m32524[94m: lwi R8 R14 -4 [0m
8132 [93m32528[94m: swi R8 R14 464 [0m
8133 [93m32532[94m: jmp 496 [0m
8134 [93m32536[94m: lwi R8 R14 4 [0m
8135 [93m32540[94m: swi R8 R14 -16 [0m
8136 [93m32544[94m: lwi R8 R14 56 [0m
8137 [93m32548[94m: swi R8 R14 -20 [0m
8138 [93m32552[94m: li R8 32568 [0m
8139 [93m32556[94m: swi R8 R14 -8 [0m
8140 [93m32560[94m: addi R14 R14 -96 [0m
8141 [93m32564[94m: jmp -29388 [0m
8142 [93m32568[94m: lwi R8 R14 -4 [0m
8143 [93m32572[94m: swi R8 R14 468 [0m
8144 [93m32576[94m: li R8 0 [0m
8145 [93m32580[94m: swi R8 R14 472 [0m
8146 [93m32584[94m: lwi R8 R14 468 [0m
8147 [93m32588[94m: lwi R9 R14 472 [0m
8148 [93m32592[94m: eq R10 R8 R9 [0m
8149 [93m32596[94m: swi R10 R14 476 [0m
8150 [93m32600[94m: lwi R8 R14 476 [0m
8151 [93m32604[94m: cmp R8 R0 [0m
8152 [93m32608[94m: jeq 28 [0m
8153 [93m32612[94m: li R8 32628 [0m
8154 [93m32616[94m: swi R8 R14 -8 [0m
8155 [93m32620[94m: addi R14 R14 -148 [0m
8156 [93m32624[94m: jmp -6292 [0m
8157 [93m32628[94m: lwi R8 R14 -4 [0m
8158 [93m32632[94m: swi R8 R14 480 [0m
8159 [93m32636[94m: jmp 392 [0m
8160 [93m32640[94m: lwi R8 R14 4 [0m
8161 [93m32644[94m: swi R8 R14 -16 [0m
8162 [93m32648[94m: lwi R8 R14 60 [0m
8163 [93m32652[94m: swi R8 R14 -20 [0m
8164 [93m32656[94m: li R8 32672 [0m
8165 [93m32660[94m: swi R8 R14 -8 [0m
8166 [93m32664[94m: addi R14 R14 -96 [0m
8167 [93m32668[94m: jmp -29492 [0m
8168 [93m32672[94m: lwi R8 R14 -4 [0m
8169 [93m32676[94m: swi R8 R14 484 [0m
8170 [93m32680[94m: li R8 0 [0m
8171 [93m32684[94m: swi R8 R14 488 [0m
8172 [93m32688[94m: lwi R8 R14 484 [0m
8173 [93m32692[94m: lwi R9 R14 488 [0m
8174 [93m32696[94m: eq R10 R8 R9 [0m
8175 [93m32700[94m: swi R10 R14 492 [0m
8176 [93m32704[94m: lwi R8 R14 492 [0m
8177 [93m32708[94m: cmp R8 R0 [0m
8178 [93m32712[94m: jeq 28 [0m
8179 [93m32716[94m: li R8 32732 [0m
8180 [93m32720[94m: swi R8 R14 -8 [0m
8181 [93m32724[94m: addi R14 R14 -100 [0m
8182 [93m32728[94m: jmp -5204 [0m
8183 [93m32732[94m: lwi R8 R14 -4 [0m
8184 [93m32736[94m: swi R8 R14 496 [0m
8185 [93m32740[94m: jmp 288 [0m
8186 [93m32744[94m: lwi R8 R14 4 [0m
8187 [93m32748[94m: swi R8 R14 -16 [0m
8188 [93m32752[94m: lwi R8 R14 64 [0m
8189 [93m32756[94m: swi R8 R14 -20 [0m
8190 [93m32760[94m: li R8 32776 [0m
8191 [93m32764[94m: swi R8 R14 -8 [0m
8192 [93m32768[94m: addi R14 R14 -96 [0m
8193 [93m32772[94m: jmp -29596 [0m
8194 [93m32776[94m: lwi R8 R14 -4 [0m
8195 [93m32780[94m: swi R8 R14 500 [0m
8196 [93m32784[94m: li R8 0 [0m
8197 [93m32788[94m: swi R8 R14 504 [0m
8198 [93m32792[94m: lwi R8 R14 500 [0m
8199 [93m32796[94m: lwi R9 R14 504 [0m
8200 [93m32800[94m: eq R10 R8 R9 [0m
8201 [93m32804[94m: swi R10 R14 508 [0m
8202 [93m32808[94m: lwi R8 R14 508 [0m
8203 [93m32812[94m: cmp R8 R0 [0m
8204 [93m32816[94m: jeq 28 [0m
8205 [93m32820[94m: li R8 32836 [0m
8206 [93m32824[94m: swi R8 R14 -8 [0m
8207 [93m32828[94m: addi R14 R14 -92 [0m
8208 [93m32832[94m: jmp -4284 [0m
8209 [93m32836[94m: lwi R8 R14 -4 [0m
8210 [93m32840[94m: swi R8 R14 512 [0m
8211 [93m32844[94m: jmp 184 [0m
8212 [93m32848[94m: lwi R8 R14 4 [0m
8213 [93m32852[94m: swi R8 R14 -16 [0m
8214 [93m32856[94m: lwi R8 R14 44 [0m
8215 [93m32860[94m: swi R8 R14 -20 [0m
8216 [93m32864[94m: li R8 32880 [0m
8217 [93m32868[94m: swi R8 R14 -8 [0m
8218 [93m32872[94m: addi R14 R14 -96 [0m
8219 [93m32876[94m: jmp -29700 [0m
8220 [93m32880[94m: lwi R8 R14 -4 [0m
8221 [93m32884[94m: swi R8 R14 516 [0m
8222 [93m32888[94m: li R8 0 [0m
8223 [93m32892[94m: swi R8 R14 520 [0m
8224 [93m32896[94m: lwi R8 R14 516 [0m
8225 [93m32900[94m: lwi R9 R14 520 [0m
8226 [93m32904[94m: eq R10 R8 R9 [0m
8227 [93m32908[94m: swi R10 R14 524 [0m
8228 [93m32912[94m: lwi R8 R14 524 [0m
8229 [93m32916[94m: cmp R8 R0 [0m
8230 [93m32920[94m: jeq 44 [0m
8231 [93m32924[94m: li R8 2 [0m
8232 [93m32928[94m: swi R8 R14 528 [0m
8233 [93m32932[94m: lwi R8 R14 528 [0m
8234 [93m32936[94m: swi R8 R14 556 [0m
8235 [93m32940[94m: lwi R12 R14 548 [0m
8236 [93m32944[94m: li R8 32964 [0m
8237 [93m32948[94m: lwi R9 R14 552 [0m
8238 [93m32952[94m: sub R10 R9 R8 [0m
8239 [93m32956[94m: addi R14 R14 560 [0m
8240 [93m32960[94m: jr R10 [0m
8241 [93m32964[94m: jmp 64 [0m
8242 [93m32968[94m: lwi R8 R14 48 [0m
8243 [93m32972[94m: swi R8 R14 -16 [0m
8244 [93m32976[94m: li R8 17 [0m
8245 [93m32980[94m: swi R8 R14 532 [0m
8246 [93m32984[94m: lwi R8 R14 532 [0m
8247 [93m32988[94m: swi R8 R14 -20 [0m
8248 [93m32992[94m: li R8 1 [0m
8249 [93m32996[94m: swi R8 R14 536 [0m
8250 [93m33000[94m: lwi R8 R14 536 [0m
8251 [93m33004[94m: swi R8 R14 -24 [0m
8252 [93m33008[94m: li R8 33024 [0m
8253 [93m33012[94m: swi R8 R14 -8 [0m
8254 [93m33016[94m: addi R14 R14 -180 [0m
8255 [93m33020[94m: jmp -29408 [0m
8256 [93m33024[94m: lwi R8 R14 -4 [0m
8257 [93m33028[94m: swi R8 R14 540 [0m
8258 [93m33032[94m: li R8 1 [0m
8259 [93m33036[94m: swi R8 R14 544 [0m
8260 [93m33040[94m: lwi R8 R14 544 [0m
8261 [93m33044[94m: swi R8 R14 556 [0m
8262 [93m33048[94m: lwi R12 R14 548 [0m
8263 [93m33052[94m: li R8 33072 [0m
8264 [93m33056[94m: lwi R9 R14 552 [0m
8265 [93m33060[94m: sub R10 R9 R8 [0m
8266 [93m33064[94m: addi R14 R14 560 [0m
8267 [93m33068[94m: jr R10 [0m
8268 [93m33072[94m: swi R12 R14 56 [0m
8269 [93m33076[94m: li R8 33092 [0m
8270 [93m33080[94m: swi R8 R14 -8 [0m
8271 [93m33084[94m: addi R14 R14 -168 [0m
8272 [93m33088[94m: jmp -31916 [0m
8273 [93m33092[94m: lwi R8 R14 -4 [0m
8274 [93m33096[94m: swi R8 R14 12 [0m
8275 [93m33100[94m: subi R12 R12 16 [0m
8276 [93m33104[94m: li R8 84 [0m
8277 [93m33108[94m: sbi R8 R12 0 [0m
8278 [93m33112[94m: li R8 101 [0m
8279 [93m33116[94m: sbi R8 R12 1 [0m
8280 [93m33120[94m: li R8 97 [0m
8281 [93m33124[94m: sbi R8 R12 2 [0m
8282 [93m33128[94m: li R8 109 [0m
8283 [93m33132[94m: sbi R8 R12 3 [0m
8284 [93m33136[94m: li R8 49 [0m
8285 [93m33140[94m: sbi R8 R12 4 [0m
8286 [93m33144[94m: li R8 64 [0m
8287 [93m33148[94m: sbi R8 R12 5 [0m
8288 [93m33152[94m: li R8 67 [0m
8289 [93m33156[94m: sbi R8 R12 6 [0m
8290 [93m33160[94m: li R8 83 [0m
8291 [93m33164[94m: sbi R8 R12 7 [0m
8292 [93m33168[94m: li R8 68 [0m
8293 [93m33172[94m: sbi R8 R12 8 [0m
8294 [93m33176[94m: li R8 58 [0m
8295 [93m33180[94m: sbi R8 R12 9 [0m
8296 [93m33184[94m: li R8 126 [0m
8297 [93m33188[94m: sbi R8 R12 10 [0m
8298 [93m33192[94m: li R8 36 [0m
8299 [93m33196[94m: sbi R8 R12 11 [0m
8300 [93m33200[94m: sbi R0 R12 12 [0m
8301 [93m33204[94m: swi R12 R14 16 [0m
8302 [93m33208[94m: lwi R8 R14 16 [0m
8303 [93m33212[94m: swi R8 R14 0 [0m
8304 [93m33216[94m: lwi R8 R14 0 [0m
8305 [93m33220[94m: swi R8 R14 -16 [0m
8306 [93m33224[94m: li R8 33240 [0m
8307 [93m33228[94m: swi R8 R14 -8 [0m
8308 [93m33232[94m: addi R14 R14 -52 [0m
8309 [93m33236[94m: jmp -33056 [0m
8310 [93m33240[94m: lwi R8 R14 -4 [0m
8311 [93m33244[94m: swi R8 R14 20 [0m
8312 [93m33248[94m: lwi R8 R14 20 [0m
8313 [93m33252[94m: swi R8 R14 4 [0m
8314 [93m33256[94m: li R8 1 [0m
8315 [93m33260[94m: swi R8 R14 24 [0m
8316 [93m33264[94m: lwi R8 R14 24 [0m
8317 [93m33268[94m: cmp R8 R0 [0m
8318 [93m33272[94m: jeq 176 [0m
8319 [93m33276[94m: jmp 4 [0m
8320 [93m33280[94m: jmp -28 [0m
8321 [93m33284[94m: lwi R8 R14 0 [0m
8322 [93m33288[94m: swi R8 R14 -16 [0m
8323 [93m33292[94m: lwi R8 R14 4 [0m
8324 [93m33296[94m: swi R8 R14 -20 [0m
8325 [93m33300[94m: lwi R8 R13 16 [0m
8326 [93m33304[94m: swi R8 R14 -24 [0m
8327 [93m33308[94m: lwi R8 R13 20 [0m
8328 [93m33312[94m: swi R8 R14 -28 [0m
8329 [93m33316[94m: li R8 33332 [0m
8330 [93m33320[94m: swi R8 R14 -8 [0m
8331 [93m33324[94m: addi R14 R14 -164 [0m
8332 [93m33328[94m: jmp -32736 [0m
8333 [93m33332[94m: lwi R8 R14 -4 [0m
8334 [93m33336[94m: swi R8 R14 28 [0m
8335 [93m33340[94m: li R8 4 [0m
8336 [93m33344[94m: swi R8 R14 32 [0m
8337 [93m33348[94m: lwi R8 R13 20 [0m
8338 [93m33352[94m: lwi R9 R14 32 [0m
8339 [93m33356[94m: add R10 R8 R9 [0m
8340 [93m33360[94m: swi R10 R14 36 [0m
8341 [93m33364[94m: lwi R8 R14 36 [0m
8342 [93m33368[94m: swi R8 R13 20 [0m
8343 [93m33372[94m: li R8 33388 [0m
8344 [93m33376[94m: swi R8 R14 -8 [0m
8345 [93m33380[94m: addi R14 R14 -560 [0m
8346 [93m33384[94m: jmp -3860 [0m
8347 [93m33388[94m: lwi R8 R14 -4 [0m
8348 [93m33392[94m: swi R8 R14 40 [0m
8349 [93m33396[94m: lwi R8 R14 40 [0m
8350 [93m33400[94m: swi R8 R14 8 [0m
8351 [93m33404[94m: li R8 2 [0m
8352 [93m33408[94m: swi R8 R14 44 [0m
8353 [93m33412[94m: lwi R8 R14 8 [0m
8354 [93m33416[94m: lwi R9 R14 44 [0m
8355 [93m33420[94m: eq R10 R8 R9 [0m
8356 [93m33424[94m: swi R10 R14 48 [0m
8357 [93m33428[94m: lwi R8 R14 48 [0m
8358 [93m33432[94m: cmp R8 R0 [0m
8359 [93m33436[94m: jeq 8 [0m
8360 [93m33440[94m: jmp 8 [0m
8361 [93m33444[94m: jmp 0 [0m
8362 [93m33448[94m: jmp -172 [0m
8363 [93m33452[94m: li R8 0 [0m
8364 [93m33456[94m: swi R8 R14 52 [0m
8365 [93m33460[94m: lwi R8 R14 52 [0m
8366 [93m33464[94m: swi R8 R14 64 [0m
8367 [93m33468[94m: lwi R12 R14 56 [0m
8368 [93m33472[94m: li R8 33492 [0m
8369 [93m33476[94m: lwi R9 R14 60 [0m
8370 [93m33480[94m: sub R10 R9 R8 [0m
8371 [93m33484[94m: addi R14 R14 68 [0m
8372 [93m33488[94m: jr R10 [0m
8373 [93m33492[94m: swi R12 R14 236 [0m
8374 [93m33496[94m: li R8 1 [0m
8375 [93m33500[94m: swi R8 R14 8 [0m
8376 [93m33504[94m: lwi R8 R14 8 [0m
8377 [93m33508[94m: swi R8 R13 52 [0m
8378 [93m33512[94m: lwi R8 R13 52 [0m
8379 [93m33516[94m: swi R8 R13 44 [0m
8380 [93m33520[94m: lwi R3 R13 44 [0m
8381 [93m33524[94m: li R8 76000 [0m
8382 [93m33528[94m: swi R8 R14 12 [0m
8383 [93m33532[94m: lwi R8 R14 12 [0m
8384 [93m33536[94m: swi R8 R13 0 [0m
8385 [93m33540[94m: li R8 0 [0m
8386 [93m33544[94m: swi R8 R14 16 [0m
8387 [93m33548[94m: lwi R8 R14 16 [0m
8388 [93m33552[94m: swi R8 R13 16 [0m
8389 [93m33556[94m: li R8 0 [0m
8390 [93m33560[94m: swi R8 R14 20 [0m
8391 [93m33564[94m: lwi R8 R14 20 [0m
8392 [93m33568[94m: swi R8 R13 20 [0m
8393 [93m33572[94m: li R8 40 [0m
8394 [93m33576[94m: swi R8 R14 24 [0m
8395 [93m33580[94m: lwi R8 R14 24 [0m
8396 [93m33584[94m: li R9 1 [0m
8397 [93m33588[94m: mul R10 R8 R9 [0m
8398 [93m33592[94m: modi R8 R10 4 [0m
8399 [93m33596[94m: li R9 4 [0m
8400 [93m33600[94m: sub R8 R9 R8 [0m
8401 [93m33604[94m: add R10 R10 R8 [0m
8402 [93m33608[94m: sub R12 R12 R10 [0m
8403 [93m33612[94m: swi R12 R14 28 [0m
8404 [93m33616[94m: lwi R8 R14 28 [0m
8405 [93m33620[94m: swi R8 R13 8 [0m
8406 [93m33624[94m: li R8 0 [0m
8407 [93m33628[94m: swi R8 R14 32 [0m
8408 [93m33632[94m: lwi R8 R14 32 [0m
8409 [93m33636[94m: swi R8 R13 12 [0m
8410 [93m33640[94m: li R8 42368 [0m
8411 [93m33644[94m: swi R8 R14 36 [0m
8412 [93m33648[94m: lwi R8 R14 36 [0m
8413 [93m33652[94m: swi R8 R13 4 [0m
8414 [93m33656[94m: li R8 0 [0m
8415 [93m33660[94m: swi R8 R14 40 [0m
8416 [93m33664[94m: lwi R8 R14 40 [0m
8417 [93m33668[94m: swi R8 R13 24 [0m
8418 [93m33672[94m: li R8 0 [0m
8419 [93m33676[94m: swi R8 R14 44 [0m
8420 [93m33680[94m: lwi R8 R14 44 [0m
8421 [93m33684[94m: swi R8 R13 28 [0m
8422 [93m33688[94m: li R8 0 [0m
8423 [93m33692[94m: swi R8 R14 48 [0m
8424 [93m33696[94m: lwi R8 R14 48 [0m
8425 [93m33700[94m: swi R8 R14 0 [0m
8426 [93m33704[94m: li R8 40 [0m
8427 [93m33708[94m: swi R8 R14 52 [0m
8428 [93m33712[94m: lwi R8 R14 0 [0m
8429 [93m33716[94m: lwi R9 R14 52 [0m
8430 [93m33720[94m: lt R10 R8 R9 [0m
8431 [93m33724[94m: swi R10 R14 56 [0m
8432 [93m33728[94m: lwi R8 R14 56 [0m
8433 [93m33732[94m: cmp R8 R0 [0m
8434 [93m33736[94m: jeq 88 [0m
8435 [93m33740[94m: jmp 28 [0m
8436 [93m33744[94m: lwi R8 R14 0 [0m
8437 [93m33748[94m: swi R8 R14 60 [0m
8438 [93m33752[94m: lwi R8 R14 0 [0m
8439 [93m33756[94m: li R9 1 [0m
8440 [93m33760[94m: add R10 R8 R9 [0m
8441 [93m33764[94m: swi R10 R14 0 [0m
8442 [93m33768[94m: jmp -68 [0m
8443 [93m33772[94m: lwi R8 R14 0 [0m
8444 [93m33776[94m: li R9 1 [0m
8445 [93m33780[94m: mul R10 R8 R9 [0m
8446 [93m33784[94m: swi R10 R14 64 [0m
8447 [93m33788[94m: lwi R8 R13 8 [0m
8448 [93m33792[94m: lwi R9 R14 64 [0m
8449 [93m33796[94m: add R10 R8 R9 [0m
8450 [93m33800[94m: swi R10 R14 68 [0m
8451 [93m33804[94m: li R8 0 [0m
8452 [93m33808[94m: swi R8 R14 72 [0m
8453 [93m33812[94m: lwi R8 R14 72 [0m
8454 [93m33816[94m: lwi R7 R14 68 [0m
8455 [93m33820[94m: sbi R8 R7 0 [0m
8456 [93m33824[94m: jmp -84 [0m
8457 [93m33828[94m: li R8 28 [0m
8458 [93m33832[94m: swi R8 R14 76 [0m
8459 [93m33836[94m: lwi R8 R14 76 [0m
8460 [93m33840[94m: li R9 1 [0m
8461 [93m33844[94m: mul R10 R8 R9 [0m
8462 [93m33848[94m: modi R8 R10 4 [0m
8463 [93m33852[94m: li R9 4 [0m
8464 [93m33856[94m: sub R8 R9 R8 [0m
8465 [93m33860[94m: add R10 R10 R8 [0m
8466 [93m33864[94m: sub R12 R12 R10 [0m
8467 [93m33868[94m: swi R12 R14 80 [0m
8468 [93m33872[94m: lwi R8 R14 80 [0m
8469 [93m33876[94m: swi R8 R13 56 [0m
8470 [93m33880[94m: li R8 28 [0m
8471 [93m33884[94m: swi R8 R14 84 [0m
8472 [93m33888[94m: lwi R8 R14 84 [0m
8473 [93m33892[94m: li R9 1 [0m
8474 [93m33896[94m: mul R10 R8 R9 [0m
8475 [93m33900[94m: modi R8 R10 4 [0m
8476 [93m33904[94m: li R9 4 [0m
8477 [93m33908[94m: sub R8 R9 R8 [0m
8478 [93m33912[94m: add R10 R10 R8 [0m
8479 [93m33916[94m: sub R12 R12 R10 [0m
8480 [93m33920[94m: swi R12 R14 88 [0m
8481 [93m33924[94m: lwi R8 R14 88 [0m
8482 [93m33928[94m: swi R8 R13 60 [0m
8483 [93m33932[94m: li R8 28 [0m
8484 [93m33936[94m: swi R8 R14 92 [0m
8485 [93m33940[94m: lwi R8 R14 92 [0m
8486 [93m33944[94m: li R9 1 [0m
8487 [93m33948[94m: mul R10 R8 R9 [0m
8488 [93m33952[94m: modi R8 R10 4 [0m
8489 [93m33956[94m: li R9 4 [0m
8490 [93m33960[94m: sub R8 R9 R8 [0m
8491 [93m33964[94m: add R10 R10 R8 [0m
8492 [93m33968[94m: sub R12 R12 R10 [0m
8493 [93m33972[94m: swi R12 R14 96 [0m
8494 [93m33976[94m: lwi R8 R14 96 [0m
8495 [93m33980[94m: swi R8 R13 64 [0m
8496 [93m33984[94m: li R8 28 [0m
8497 [93m33988[94m: swi R8 R14 100 [0m
8498 [93m33992[94m: lwi R8 R14 100 [0m
8499 [93m33996[94m: li R9 1 [0m
8500 [93m34000[94m: mul R10 R8 R9 [0m
8501 [93m34004[94m: modi R8 R10 4 [0m
8502 [93m34008[94m: li R9 4 [0m
8503 [93m34012[94m: sub R8 R9 R8 [0m
8504 [93m34016[94m: add R10 R10 R8 [0m
8505 [93m34020[94m: sub R12 R12 R10 [0m
8506 [93m34024[94m: swi R12 R14 104 [0m
8507 [93m34028[94m: lwi R8 R14 104 [0m
8508 [93m34032[94m: swi R8 R13 68 [0m
8509 [93m34036[94m: li R8 28 [0m
8510 [93m34040[94m: swi R8 R14 108 [0m
8511 [93m34044[94m: lwi R8 R14 108 [0m
8512 [93m34048[94m: li R9 1 [0m
8513 [93m34052[94m: mul R10 R8 R9 [0m
8514 [93m34056[94m: modi R8 R10 4 [0m
8515 [93m34060[94m: li R9 4 [0m
8516 [93m34064[94m: sub R8 R9 R8 [0m
8517 [93m34068[94m: add R10 R10 R8 [0m
8518 [93m34072[94m: sub R12 R12 R10 [0m
8519 [93m34076[94m: swi R12 R14 112 [0m
8520 [93m34080[94m: lwi R8 R14 112 [0m
8521 [93m34084[94m: swi R8 R13 72 [0m
8522 [93m34088[94m: li R8 28 [0m
8523 [93m34092[94m: swi R8 R14 116 [0m
8524 [93m34096[94m: lwi R8 R14 116 [0m
8525 [93m34100[94m: li R9 1 [0m
8526 [93m34104[94m: mul R10 R8 R9 [0m
8527 [93m34108[94m: modi R8 R10 4 [0m
8528 [93m34112[94m: li R9 4 [0m
8529 [93m34116[94m: sub R8 R9 R8 [0m
8530 [93m34120[94m: add R10 R10 R8 [0m
8531 [93m34124[94m: sub R12 R12 R10 [0m
8532 [93m34128[94m: swi R12 R14 120 [0m
8533 [93m34132[94m: lwi R8 R14 120 [0m
8534 [93m34136[94m: swi R8 R13 76 [0m
8535 [93m34140[94m: li R8 20 [0m
8536 [93m34144[94m: swi R8 R14 124 [0m
8537 [93m34148[94m: lwi R8 R14 124 [0m
8538 [93m34152[94m: li R9 1 [0m
8539 [93m34156[94m: mul R10 R8 R9 [0m
8540 [93m34160[94m: modi R8 R10 4 [0m
8541 [93m34164[94m: li R9 4 [0m
8542 [93m34168[94m: sub R8 R9 R8 [0m
8543 [93m34172[94m: add R10 R10 R8 [0m
8544 [93m34176[94m: sub R12 R12 R10 [0m
8545 [93m34180[94m: swi R12 R14 128 [0m
8546 [93m34184[94m: lwi R8 R14 128 [0m
8547 [93m34188[94m: swi R8 R13 80 [0m
8548 [93m34192[94m: li R8 0 [0m
8549 [93m34196[94m: swi R8 R14 132 [0m
8550 [93m34200[94m: lwi R8 R14 132 [0m
8551 [93m34204[94m: li R9 4 [0m
8552 [93m34208[94m: mul R10 R8 R9 [0m
8553 [93m34212[94m: swi R10 R14 136 [0m
8554 [93m34216[94m: lwi R8 R13 80 [0m
8555 [93m34220[94m: lwi R9 R14 136 [0m
8556 [93m34224[94m: add R10 R8 R9 [0m
8557 [93m34228[94m: swi R10 R14 140 [0m
8558 [93m34232[94m: lwi R8 R13 44 [0m
8559 [93m34236[94m: lwi R7 R14 140 [0m
8560 [93m34240[94m: swi R8 R7 0 [0m
8561 [93m34244[94m: li R8 1 [0m
8562 [93m34248[94m: swi R8 R14 144 [0m
8563 [93m34252[94m: lwi R8 R14 144 [0m
8564 [93m34256[94m: li R9 4 [0m
8565 [93m34260[94m: mul R10 R8 R9 [0m
8566 [93m34264[94m: swi R10 R14 148 [0m
8567 [93m34268[94m: lwi R8 R13 80 [0m
8568 [93m34272[94m: lwi R9 R14 148 [0m
8569 [93m34276[94m: add R10 R8 R9 [0m
8570 [93m34280[94m: swi R10 R14 152 [0m
8571 [93m34284[94m: li R8 0 [0m
8572 [93m34288[94m: swi R8 R14 156 [0m
8573 [93m34292[94m: lwi R8 R14 156 [0m
8574 [93m34296[94m: lwi R7 R14 152 [0m
8575 [93m34300[94m: swi R8 R7 0 [0m
8576 [93m34304[94m: li R8 2 [0m
8577 [93m34308[94m: swi R8 R14 160 [0m
8578 [93m34312[94m: lwi R8 R14 160 [0m
8579 [93m34316[94m: li R9 4 [0m
8580 [93m34320[94m: mul R10 R8 R9 [0m
8581 [93m34324[94m: swi R10 R14 164 [0m
8582 [93m34328[94m: lwi R8 R13 80 [0m
8583 [93m34332[94m: lwi R9 R14 164 [0m
8584 [93m34336[94m: add R10 R8 R9 [0m
8585 [93m34340[94m: swi R10 R14 168 [0m
8586 [93m34344[94m: li R8 0 [0m
8587 [93m34348[94m: swi R8 R14 172 [0m
8588 [93m34352[94m: lwi R8 R14 172 [0m
8589 [93m34356[94m: lwi R7 R14 168 [0m
8590 [93m34360[94m: swi R8 R7 0 [0m
8591 [93m34364[94m: li R8 3 [0m
8592 [93m34368[94m: swi R8 R14 176 [0m
8593 [93m34372[94m: lwi R8 R14 176 [0m
8594 [93m34376[94m: li R9 4 [0m
8595 [93m34380[94m: mul R10 R8 R9 [0m
8596 [93m34384[94m: swi R10 R14 180 [0m
8597 [93m34388[94m: lwi R8 R13 80 [0m
8598 [93m34392[94m: lwi R9 R14 180 [0m
8599 [93m34396[94m: add R10 R8 R9 [0m
8600 [93m34400[94m: swi R10 R14 184 [0m
8601 [93m34404[94m: li R8 0 [0m
8602 [93m34408[94m: swi R8 R14 188 [0m
8603 [93m34412[94m: lwi R8 R14 188 [0m
8604 [93m34416[94m: lwi R7 R14 184 [0m
8605 [93m34420[94m: swi R8 R7 0 [0m
8606 [93m34424[94m: li R8 4 [0m
8607 [93m34428[94m: swi R8 R14 192 [0m
8608 [93m34432[94m: lwi R8 R14 192 [0m
8609 [93m34436[94m: li R9 4 [0m
8610 [93m34440[94m: mul R10 R8 R9 [0m
8611 [93m34444[94m: swi R10 R14 196 [0m
8612 [93m34448[94m: lwi R8 R13 80 [0m
8613 [93m34452[94m: lwi R9 R14 196 [0m
8614 [93m34456[94m: add R10 R8 R9 [0m
8615 [93m34460[94m: swi R10 R14 200 [0m
8616 [93m34464[94m: li R8 0 [0m
8617 [93m34468[94m: swi R8 R14 204 [0m
8618 [93m34472[94m: lwi R8 R14 204 [0m
8619 [93m34476[94m: lwi R7 R14 200 [0m
8620 [93m34480[94m: swi R8 R7 0 [0m
8621 [93m34484[94m: lwi R8 R13 52 [0m
8622 [93m34488[94m: li R9 1 [0m
8623 [93m34492[94m: add R10 R8 R9 [0m
8624 [93m34496[94m: swi R10 R13 52 [0m
8625 [93m34500[94m: li R8 1001 [0m
8626 [93m34504[94m: swi R8 R14 208 [0m
8627 [93m34508[94m: lwi R8 R14 208 [0m
8628 [93m34512[94m: swi R8 R14 -16 [0m
8629 [93m34516[94m: li R8 34532 [0m
8630 [93m34520[94m: swi R8 R14 -8 [0m
8631 [93m34524[94m: addi R14 R14 -100 [0m
8632 [93m34528[94m: jmp -23180 [0m
8633 [93m34532[94m: lwi R8 R14 -4 [0m
8634 [93m34536[94m: swi R8 R14 212 [0m
8635 [93m34540[94m: lwi R8 R14 212 [0m
8636 [93m34544[94m: swi R8 R14 4 [0m
8637 [93m34548[94m: li R8 1002 [0m
8638 [93m34552[94m: swi R8 R14 216 [0m
8639 [93m34556[94m: lwi R8 R14 216 [0m
8640 [93m34560[94m: swi R8 R14 -16 [0m
8641 [93m34564[94m: li R8 34580 [0m
8642 [93m34568[94m: swi R8 R14 -8 [0m
8643 [93m34572[94m: addi R14 R14 -100 [0m
8644 [93m34576[94m: jmp -23228 [0m
8645 [93m34580[94m: lwi R8 R14 -4 [0m
8646 [93m34584[94m: swi R8 R14 220 [0m
8647 [93m34588[94m: li R8 1003 [0m
8648 [93m34592[94m: swi R8 R14 224 [0m
8649 [93m34596[94m: lwi R8 R14 224 [0m
8650 [93m34600[94m: swi R8 R14 -16 [0m
8651 [93m34604[94m: li R8 34620 [0m
8652 [93m34608[94m: swi R8 R14 -8 [0m
8653 [93m34612[94m: addi R14 R14 -100 [0m
8654 [93m34616[94m: jmp -23268 [0m
8655 [93m34620[94m: lwi R8 R14 -4 [0m
8656 [93m34624[94m: swi R8 R14 228 [0m
8657 [93m34628[94m: lwi R11 R14 4 [0m
8658 [93m34632[94m: lwi R6 R13 56 [0m
8659 [93m34636[94m: swi R5 R6 0 [0m
8660 [93m34640[94m: swi R7 R6 4 [0m
8661 [93m34644[94m: swi R8 R6 8 [0m
8662 [93m34648[94m: swi R9 R6 12 [0m
8663 [93m34652[94m: swi R10 R6 16 [0m
8664 [93m34656[94m: swi R12 R6 20 [0m
8665 [93m34660[94m: swi R14 R6 24 [0m
8666 [93m34664[94m: lwi R6 R13 60 [0m
8667 [93m34668[94m: lwi R5 R6 0 [0m
8668 [93m34672[94m: lwi R7 R6 4 [0m
8669 [93m34676[94m: lwi R8 R6 8 [0m
8670 [93m34680[94m: lwi R9 R6 12 [0m
8671 [93m34684[94m: lwi R10 R6 16 [0m
8672 [93m34688[94m: lwi R12 R6 20 [0m
8673 [93m34692[94m: lwi R14 R6 24 [0m
8674 [93m34696[94m: swi R11 R13 44 [0m
8675 [93m34700[94m: lwi R3 R13 44 [0m
8676 [93m34704[94m: li R6 34724 [0m
8677 [93m34708[94m: li R15 9612 [0m
8678 [93m34712[94m: add R6 R6 R15 [0m
8679 [93m34716[94m: addi R6 R6 8 [0m
8680 [93m34720[94m: sub R5 R5 R6 [0m
8681 [93m34724[94m: jri R5 [0m
8682 [93m34728[94m: li R8 0 [0m
8683 [93m34732[94m: swi R8 R14 232 [0m
8684 [93m34736[94m: lwi R8 R14 232 [0m
8685 [93m34740[94m: swi R8 R14 244 [0m
8686 [93m34744[94m: lwi R12 R14 236 [0m
8687 [93m34748[94m: li R8 34768 [0m
8688 [93m34752[94m: lwi R9 R14 240 [0m
8689 [93m34756[94m: sub R10 R9 R8 [0m
8690 [93m34760[94m: addi R14 R14 248 [0m
8691 [93m34764[94m: jr R10 [0m
