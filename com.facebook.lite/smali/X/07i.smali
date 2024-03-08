.class public final enum LX/07i;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final synthetic A03:[LX/07i;

.field public static final enum A04:LX/07i;

.field public static final enum A05:LX/07i;

.field public static final enum A06:LX/07i;

.field public static final enum A07:LX/07i;

.field public static final enum A08:LX/07i;

.field public static final enum A09:LX/07i;


# instance fields
.field public A00:Ljava/lang/Integer;

.field public final A01:C

.field public final A02:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 48

    .line 0
    sget-object v4, LX/050;->A00:Ljava/lang/Integer;

    .line 1
    .line 2
    const-string v3, "NO_STATUS"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    const/16 v1, 0x30

    .line 6
    .line 7
    const-string v0, "No status"

    .line 8
    .line 9
    invoke-static {v4, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 10
    .line 11
    .line 12
    move-result-object v41

    .line 13
    sput-object v41, LX/07i;->A09:LX/07i;

    .line 14
    .line 15
    const-string v3, "INITIAL"

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    const/16 v1, 0x69

    .line 19
    .line 20
    const-string v0, "Initial"

    .line 21
    .line 22
    invoke-static {v4, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 23
    .line 24
    .line 25
    move-result-object v40

    .line 26
    sput-object v40, LX/07i;->A06:LX/07i;

    .line 27
    .line 28
    sget-object v11, LX/050;->A01:Ljava/lang/Integer;

    .line 29
    .line 30
    const-string v3, "JAVA_CRASH"

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    const/16 v1, 0x6a

    .line 34
    .line 35
    const-string v0, "JavaCrash"

    .line 36
    .line 37
    invoke-static {v11, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    sput-object v10, LX/07i;->A07:LX/07i;

    .line 42
    .line 43
    sget-object v9, LX/050;->A0C:Ljava/lang/Integer;

    .line 44
    .line 45
    const-string v3, "NATIVE_CRASH_SIGSEGV"

    .line 46
    .line 47
    const/4 v2, 0x3

    .line 48
    const/16 v1, 0x73

    .line 49
    .line 50
    const-string v0, "NativeCrash_SIGSEGV"

    .line 51
    .line 52
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 53
    .line 54
    .line 55
    move-result-object v39

    .line 56
    const-string v3, "NATIVE_CRASH_SIGABRT"

    .line 57
    .line 58
    const/4 v2, 0x4

    .line 59
    const/16 v1, 0x61

    .line 60
    .line 61
    const-string v0, "NativeCrash_SIGABRT"

    .line 62
    .line 63
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 64
    .line 65
    .line 66
    move-result-object v38

    .line 67
    const-string v3, "NATIVE_CRASH_SIGFPE"

    .line 68
    .line 69
    const/4 v2, 0x5

    .line 70
    const/16 v1, 0x66

    .line 71
    .line 72
    const-string v0, "NativeCrash_SIGFPE"

    .line 73
    .line 74
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 75
    .line 76
    .line 77
    move-result-object v37

    .line 78
    const-string v3, "NATIVE_CRASH_SIGILL"

    .line 79
    .line 80
    const/4 v2, 0x6

    .line 81
    const/16 v1, 0x6c

    .line 82
    .line 83
    const-string v0, "NativeCrash_SIGILL"

    .line 84
    .line 85
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 86
    .line 87
    .line 88
    move-result-object v36

    .line 89
    const-string v3, "NATIVE_CRASH_SIGBUS"

    .line 90
    .line 91
    const/4 v2, 0x7

    .line 92
    const/16 v1, 0x62

    .line 93
    .line 94
    const-string v0, "NativeCrash_SIGBUS"

    .line 95
    .line 96
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 97
    .line 98
    .line 99
    move-result-object v35

    .line 100
    const-string v3, "NATIVE_CRASH_SIGTRAP"

    .line 101
    .line 102
    const/16 v2, 0x8

    .line 103
    .line 104
    const/16 v1, 0x54

    .line 105
    .line 106
    const-string v0, "NativeCrash_SIGTRAP"

    .line 107
    .line 108
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 109
    .line 110
    .line 111
    move-result-object v34

    .line 112
    const-string v3, "NATIVE_CRASH_SIGXFSZ"

    .line 113
    .line 114
    const/16 v2, 0x9

    .line 115
    .line 116
    const/16 v1, 0x7a

    .line 117
    .line 118
    const-string v0, "NativeCrash_SIGXFSZ"

    .line 119
    .line 120
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 121
    .line 122
    .line 123
    move-result-object v33

    .line 124
    const-string v3, "NATIVE_CRASH_SIGXCPU"

    .line 125
    .line 126
    const/16 v2, 0xa

    .line 127
    .line 128
    const/16 v1, 0x70

    .line 129
    .line 130
    const-string v0, "NativeCrash_SIGXCPU"

    .line 131
    .line 132
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 133
    .line 134
    .line 135
    move-result-object v32

    .line 136
    const-string v3, "NATIVE_CRASH_SIGSYS"

    .line 137
    .line 138
    const/16 v2, 0xb

    .line 139
    .line 140
    const/16 v1, 0x79

    .line 141
    .line 142
    const-string v0, "NativeCrash_SIGSYS"

    .line 143
    .line 144
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 145
    .line 146
    .line 147
    move-result-object v31

    .line 148
    const-string v3, "NATIVE_CRASH_SIGSTKFLT"

    .line 149
    .line 150
    const/16 v2, 0xc

    .line 151
    .line 152
    const/16 v1, 0x53

    .line 153
    .line 154
    const-string v0, "NativeCrash_SIGSTKFLT"

    .line 155
    .line 156
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 157
    .line 158
    .line 159
    move-result-object v30

    .line 160
    const-string v3, "NATIVE_CRASH_SIGHUP"

    .line 161
    .line 162
    const/16 v2, 0xd

    .line 163
    .line 164
    const/16 v1, 0x68

    .line 165
    .line 166
    const-string v0, "NativeCrash_SIGHUP"

    .line 167
    .line 168
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 169
    .line 170
    .line 171
    move-result-object v29

    .line 172
    const-string v3, "NATIVE_CRASH_SIGINT"

    .line 173
    .line 174
    const/16 v2, 0xe

    .line 175
    .line 176
    const/16 v1, 0x49

    .line 177
    .line 178
    const-string v0, "NativeCrash_SIGINT"

    .line 179
    .line 180
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 181
    .line 182
    .line 183
    move-result-object v28

    .line 184
    const-string v3, "NATIVE_CRASH_SIGUSR2"

    .line 185
    .line 186
    const/16 v2, 0xf

    .line 187
    .line 188
    const/16 v1, 0x32

    .line 189
    .line 190
    const-string v0, "NativeCrash_SIGUSR2"

    .line 191
    .line 192
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 193
    .line 194
    .line 195
    move-result-object v15

    .line 196
    const-string v3, "NATIVE_CRASH_SIGALRM"

    .line 197
    .line 198
    const/16 v2, 0x10

    .line 199
    .line 200
    const/16 v1, 0x4c

    .line 201
    .line 202
    const-string v0, "NativeCrash_SIGALRM"

    .line 203
    .line 204
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 205
    .line 206
    .line 207
    move-result-object v8

    .line 208
    const-string v3, "NATIVE_CRASH_SIGTERM"

    .line 209
    .line 210
    const/16 v2, 0x11

    .line 211
    .line 212
    const/16 v1, 0x65

    .line 213
    .line 214
    const-string v0, "NativeCrash_SIGTERM"

    .line 215
    .line 216
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    const-string v3, "NATIVE_CRASH_SIGVTALRM"

    .line 221
    .line 222
    const/16 v2, 0x12

    .line 223
    .line 224
    const/16 v1, 0x76

    .line 225
    .line 226
    const-string v0, "NativeCrash_SIGVTALRM"

    .line 227
    .line 228
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    const-string v3, "NATIVE_CRASH_SIGPROF"

    .line 233
    .line 234
    const/16 v2, 0x13

    .line 235
    .line 236
    const/16 v1, 0x50

    .line 237
    .line 238
    const-string v0, "NativeCrash_SIGPROF"

    .line 239
    .line 240
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 241
    .line 242
    .line 243
    move-result-object v5

    .line 244
    const-string v3, "NATIVE_CRASH_SIGIO"

    .line 245
    .line 246
    const/16 v2, 0x14

    .line 247
    .line 248
    const/16 v1, 0x6f

    .line 249
    .line 250
    const-string v0, "NativeCrash_SIGIO"

    .line 251
    .line 252
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    const-string v3, "NATIVE_CRASH_SIGPWR"

    .line 257
    .line 258
    const/16 v2, 0x15

    .line 259
    .line 260
    const/16 v1, 0x57

    .line 261
    .line 262
    const-string v0, "NativeCrash_SIGPWR"

    .line 263
    .line 264
    invoke-static {v9, v3, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 265
    .line 266
    .line 267
    move-result-object v3

    .line 268
    const-string v12, "NATIVE_CRASH_OTHER"

    .line 269
    .line 270
    const/16 v2, 0x16

    .line 271
    .line 272
    const/16 v1, 0x6e

    .line 273
    .line 274
    const-string v0, "NativeCrash_Other"

    .line 275
    .line 276
    invoke-static {v9, v12, v0, v1, v2}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    const-string v13, "JAVA_EXIT"

    .line 281
    .line 282
    const/16 v12, 0x17

    .line 283
    .line 284
    const/16 v1, 0x78

    .line 285
    .line 286
    const-string v0, "JavaExit"

    .line 287
    .line 288
    invoke-static {v11, v13, v0, v1, v12}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 289
    .line 290
    .line 291
    move-result-object v27

    .line 292
    const-string v13, "JAVA_EXIT_WITH_USER_KNOWLEDGE_AND_CONSENT_NOT_A_FAD"

    .line 293
    .line 294
    const/16 v12, 0x18

    .line 295
    .line 296
    const/16 v1, 0x4e

    .line 297
    .line 298
    const-string v0, "JavaExitNotAFad"

    .line 299
    .line 300
    invoke-static {v11, v13, v0, v1, v12}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 301
    .line 302
    .line 303
    move-result-object v26

    .line 304
    sput-object v26, LX/07i;->A08:LX/07i;

    .line 305
    .line 306
    const-string v13, "NATIVE_EXIT"

    .line 307
    .line 308
    const/16 v12, 0x19

    .line 309
    .line 310
    const/16 v1, 0x58

    .line 311
    .line 312
    const-string v0, "NativeExit"

    .line 313
    .line 314
    invoke-static {v9, v13, v0, v1, v12}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 315
    .line 316
    .line 317
    move-result-object v25

    .line 318
    const-string v13, "SELF_SIGKILL"

    .line 319
    .line 320
    const/16 v12, 0x1a

    .line 321
    .line 322
    const/16 v1, 0x39

    .line 323
    .line 324
    const-string v0, "SelfSigKill"

    .line 325
    .line 326
    invoke-static {v9, v13, v0, v1, v12}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 327
    .line 328
    .line 329
    move-result-object v24

    .line 330
    const-string v13, "SELF_SIGSTOP"

    .line 331
    .line 332
    const/16 v12, 0x1b

    .line 333
    .line 334
    const/16 v1, 0x74

    .line 335
    .line 336
    const-string v0, "SelfSigStop"

    .line 337
    .line 338
    invoke-static {v9, v13, v0, v1, v12}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 339
    .line 340
    .line 341
    move-result-object v23

    .line 342
    sget-object v1, LX/050;->A0N:Ljava/lang/Integer;

    .line 343
    .line 344
    const-string v44, "ANR"

    .line 345
    .line 346
    const/16 v47, 0x1c

    .line 347
    .line 348
    const/16 v46, 0x72

    .line 349
    .line 350
    new-instance v42, LX/07i;

    .line 351
    .line 352
    move-object/from16 v43, v1

    .line 353
    .line 354
    move-object/from16 v45, v44

    .line 355
    .line 356
    invoke-direct/range {v42 .. v47}, LX/07i;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)V

    .line 357
    .line 358
    .line 359
    sput-object v42, LX/07i;->A04:LX/07i;

    .line 360
    .line 361
    const-string v14, "ANR_RECOVERED"

    .line 362
    .line 363
    const/16 v13, 0x1d

    .line 364
    .line 365
    const/16 v12, 0x63

    .line 366
    .line 367
    const-string v0, "ANRRecovered"

    .line 368
    .line 369
    invoke-static {v1, v14, v0, v12, v13}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 370
    .line 371
    .line 372
    move-result-object v22

    .line 373
    sput-object v22, LX/07i;->A05:LX/07i;

    .line 374
    .line 375
    const-string v13, "ANR_SIGQUIT_NATIVE"

    .line 376
    .line 377
    const/16 v12, 0x1e

    .line 378
    .line 379
    const/16 v0, 0x51

    .line 380
    .line 381
    const-string v14, "ANR_SIGQUIT"

    .line 382
    .line 383
    invoke-static {v1, v13, v14, v0, v12}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 384
    .line 385
    .line 386
    move-result-object v21

    .line 387
    const/16 v13, 0x1f

    .line 388
    .line 389
    const/16 v12, 0x71

    .line 390
    .line 391
    const-string v0, "AnrSigquit"

    .line 392
    .line 393
    invoke-static {v1, v14, v0, v12, v13}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 394
    .line 395
    .line 396
    move-result-object v20

    .line 397
    const-string v14, "ANR_MT_UNBLOCKED"

    .line 398
    .line 399
    const/16 v13, 0x20

    .line 400
    .line 401
    const/16 v12, 0x75

    .line 402
    .line 403
    const-string v0, "AnrMtUnblocked"

    .line 404
    .line 405
    invoke-static {v1, v14, v0, v12, v13}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 406
    .line 407
    .line 408
    move-result-object v19

    .line 409
    const-string v14, "ANR_AM_CONFIRMED"

    .line 410
    .line 411
    const/16 v13, 0x21

    .line 412
    .line 413
    const/16 v12, 0x52

    .line 414
    .line 415
    const-string v0, "AnrAmConfirmed"

    .line 416
    .line 417
    invoke-static {v1, v14, v0, v12, v13}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 418
    .line 419
    .line 420
    move-result-object v18

    .line 421
    const-string v14, "ANR_AM_CONFIRMED_MT_UNBLOCKED"

    .line 422
    .line 423
    const/16 v13, 0x22

    .line 424
    .line 425
    const/16 v12, 0x55

    .line 426
    .line 427
    const-string v0, "AnrAmConfirmedMtUnblocked"

    .line 428
    .line 429
    invoke-static {v1, v14, v0, v12, v13}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 430
    .line 431
    .line 432
    move-result-object v17

    .line 433
    const-string v14, "ANR_AM_EXPIRED"

    .line 434
    .line 435
    const/16 v13, 0x23

    .line 436
    .line 437
    const/16 v12, 0x6d

    .line 438
    .line 439
    const-string v0, "AnrAmExpired"

    .line 440
    .line 441
    invoke-static {v1, v14, v0, v12, v13}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 442
    .line 443
    .line 444
    move-result-object v16

    .line 445
    const-string v13, "APPSTATELOGGER_CRASH"

    .line 446
    .line 447
    const/16 v12, 0x24

    .line 448
    .line 449
    const/16 v1, 0x43

    .line 450
    .line 451
    const-string v0, "AppStateLoggerCrash"

    .line 452
    .line 453
    invoke-static {v11, v13, v0, v1, v12}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 454
    .line 455
    .line 456
    move-result-object v14

    .line 457
    const-string v13, "PREALLOCATED_OOME"

    .line 458
    .line 459
    const/16 v11, 0x25

    .line 460
    .line 461
    const/16 v1, 0x4f

    .line 462
    .line 463
    const-string v0, "PreallocatedOOME"

    .line 464
    .line 465
    invoke-static {v9, v13, v0, v1, v11}, LX/07i;->A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;

    .line 466
    .line 467
    .line 468
    move-result-object v13

    .line 469
    const/16 v0, 0x26

    .line 470
    .line 471
    new-array v9, v0, [LX/07i;

    .line 472
    .line 473
    const/4 v0, 0x0

    .line 474
    aput-object v41, v9, v0

    .line 475
    .line 476
    const/4 v0, 0x1

    .line 477
    aput-object v40, v9, v0

    .line 478
    .line 479
    move-object/from16 v1, v39

    .line 480
    .line 481
    move-object/from16 v0, v38

    .line 482
    .line 483
    invoke-static {v10, v1, v0, v9}, LX/000;->A0J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 484
    .line 485
    .line 486
    const/4 v0, 0x5

    .line 487
    aput-object v37, v9, v0

    .line 488
    .line 489
    const/4 v0, 0x6

    .line 490
    aput-object v36, v9, v0

    .line 491
    .line 492
    const/4 v0, 0x7

    .line 493
    aput-object v35, v9, v0

    .line 494
    .line 495
    const/16 v0, 0x8

    .line 496
    .line 497
    aput-object v34, v9, v0

    .line 498
    .line 499
    const/16 v0, 0x9

    .line 500
    .line 501
    aput-object v33, v9, v0

    .line 502
    .line 503
    const/16 v0, 0xa

    .line 504
    .line 505
    aput-object v32, v9, v0

    .line 506
    .line 507
    const/16 v0, 0xb

    .line 508
    .line 509
    aput-object v31, v9, v0

    .line 510
    .line 511
    const/16 v0, 0xc

    .line 512
    .line 513
    aput-object v30, v9, v0

    .line 514
    .line 515
    const/16 v0, 0xd

    .line 516
    .line 517
    aput-object v29, v9, v0

    .line 518
    .line 519
    const/16 v0, 0xe

    .line 520
    .line 521
    aput-object v28, v9, v0

    .line 522
    .line 523
    invoke-static {v15, v8, v7, v6, v9}, LX/000;->A0H(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    invoke-static {v5, v4, v3, v2, v9}, LX/000;->A0I(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 527
    .line 528
    .line 529
    const/16 v0, 0x17

    .line 530
    .line 531
    aput-object v27, v9, v0

    .line 532
    .line 533
    const/16 v0, 0x18

    .line 534
    .line 535
    aput-object v26, v9, v0

    .line 536
    .line 537
    const/16 v0, 0x19

    .line 538
    .line 539
    aput-object v25, v9, v0

    .line 540
    .line 541
    const/16 v0, 0x1a

    .line 542
    .line 543
    aput-object v24, v9, v0

    .line 544
    .line 545
    const/16 v0, 0x1b

    .line 546
    .line 547
    aput-object v23, v9, v0

    .line 548
    .line 549
    aput-object v42, v9, v47

    .line 550
    .line 551
    const/16 v0, 0x1d

    .line 552
    .line 553
    aput-object v22, v9, v0

    .line 554
    .line 555
    const/16 v0, 0x1e

    .line 556
    .line 557
    aput-object v21, v9, v0

    .line 558
    .line 559
    const/16 v0, 0x1f

    .line 560
    .line 561
    aput-object v20, v9, v0

    .line 562
    .line 563
    const/16 v0, 0x20

    .line 564
    .line 565
    aput-object v19, v9, v0

    .line 566
    .line 567
    const/16 v0, 0x21

    .line 568
    .line 569
    aput-object v18, v9, v0

    .line 570
    .line 571
    const/16 v0, 0x22

    .line 572
    .line 573
    aput-object v17, v9, v0

    .line 574
    .line 575
    const/16 v0, 0x23

    .line 576
    .line 577
    aput-object v16, v9, v0

    .line 578
    .line 579
    aput-object v14, v9, v12

    .line 580
    .line 581
    aput-object v13, v9, v11

    .line 582
    .line 583
    sput-object v9, LX/07i;->A03:[LX/07i;

    .line 584
    .line 585
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)V
    .locals 0

    .line 0
    invoke-direct {p0, p2, p5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1
    .line 2
    .line 3
    iput-char p4, p0, LX/07i;->A01:C

    .line 4
    .line 5
    iput-object p3, p0, LX/07i;->A02:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p1, p0, LX/07i;->A00:Ljava/lang/Integer;

    .line 8
    .line 9
    return-void
.end method

.method public static A00(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)LX/07i;
    .locals 1

    .line 0
    new-instance v0, LX/07i;

    .line 1
    .line 2
    invoke-direct/range {v0 .. v5}, LX/07i;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;CI)V

    .line 3
    .line 4
    .line 5
    return-object v0
.end method

.method public static values()[LX/07i;
    .locals 1

    .line 0
    sget-object v0, LX/07i;->A03:[LX/07i;

    .line 1
    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, [LX/07i;

    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, LX/07i;->A02:Ljava/lang/String;

    .line 1
    .line 2
    return-object v0
.end method
