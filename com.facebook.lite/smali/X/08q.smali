.class public final enum LX/08q;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final synthetic A02:[LX/08q;

.field public static final enum A03:LX/08q;

.field public static final enum A04:LX/08q;

.field public static final enum A05:LX/08q;

.field public static final enum A06:LX/08q;

.field public static final enum A07:LX/08q;

.field public static final enum A08:LX/08q;

.field public static final enum A09:LX/08q;

.field public static final enum A0A:LX/08q;

.field public static final enum A0B:LX/08q;

.field public static final enum A0C:LX/08q;

.field public static final enum A0D:LX/08q;

.field public static final enum A0E:LX/08q;

.field public static final enum A0F:LX/08q;

.field public static final enum A0G:LX/08q;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 38

    .line 0
    const-string v1, "ANR"

    .line 1
    .line 2
    const/4 v3, 0x0

    .line 3
    const-string v0, "anr"

    .line 4
    .line 5
    new-instance v15, LX/08q;

    .line 6
    .line 7
    invoke-direct {v15, v1, v0, v3, v3}, LX/08q;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 8
    .line 9
    .line 10
    sput-object v15, LX/08q;->A03:LX/08q;

    .line 11
    .line 12
    const-string v1, "ANR_APP_DEATH"

    .line 13
    .line 14
    const/4 v14, 0x1

    .line 15
    const-string v0, "anr_app_death"

    .line 16
    .line 17
    invoke-static {v1, v0, v14, v3}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 18
    .line 19
    .line 20
    move-result-object v37

    .line 21
    sput-object v37, LX/08q;->A04:LX/08q;

    .line 22
    .line 23
    const-string v2, "APP_LIFECYCLE"

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    const-string v0, "app_lifecycle"

    .line 27
    .line 28
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 29
    .line 30
    .line 31
    move-result-object v13

    .line 32
    sput-object v13, LX/08q;->A05:LX/08q;

    .line 33
    .line 34
    const-string v2, "ATTRIBUTION_ID"

    .line 35
    .line 36
    const/4 v1, 0x3

    .line 37
    const-string v0, "attribution_id"

    .line 38
    .line 39
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 40
    .line 41
    .line 42
    move-result-object v36

    .line 43
    const-string v2, "BROADCAST"

    .line 44
    .line 45
    const/4 v1, 0x4

    .line 46
    const-string v0, "broadcast"

    .line 47
    .line 48
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 49
    .line 50
    .line 51
    move-result-object v12

    .line 52
    const-string v2, "JAVA"

    .line 53
    .line 54
    const/4 v1, 0x5

    .line 55
    const-string v0, "java"

    .line 56
    .line 57
    invoke-static {v2, v0, v1, v3}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 58
    .line 59
    .line 60
    move-result-object v35

    .line 61
    sput-object v35, LX/08q;->A07:LX/08q;

    .line 62
    .line 63
    const-string v2, "JAVA_DETECT"

    .line 64
    .line 65
    const/4 v1, 0x6

    .line 66
    const-string v0, "java_detect"

    .line 67
    .line 68
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 69
    .line 70
    .line 71
    move-result-object v34

    .line 72
    const-string v2, "JAVA_APP_DEATH"

    .line 73
    .line 74
    const/4 v1, 0x7

    .line 75
    const-string v0, "java_app_death"

    .line 76
    .line 77
    invoke-static {v2, v0, v1, v3}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 78
    .line 79
    .line 80
    move-result-object v33

    .line 81
    const-string v2, "JAVASCRIPT"

    .line 82
    .line 83
    const/16 v1, 0x8

    .line 84
    .line 85
    const-string v0, "javascript"

    .line 86
    .line 87
    invoke-static {v2, v0, v1, v3}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 88
    .line 89
    .line 90
    move-result-object v32

    .line 91
    const-string v2, "CRASHLOOP"

    .line 92
    .line 93
    const/16 v1, 0x9

    .line 94
    .line 95
    const-string v0, "crashloop"

    .line 96
    .line 97
    invoke-static {v2, v0, v1, v3}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 98
    .line 99
    .line 100
    move-result-object v31

    .line 101
    const-string v2, "NATIVE"

    .line 102
    .line 103
    const/16 v1, 0xa

    .line 104
    .line 105
    const-string v0, "native"

    .line 106
    .line 107
    invoke-static {v2, v0, v1, v3}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 108
    .line 109
    .line 110
    move-result-object v30

    .line 111
    sput-object v30, LX/08q;->A08:LX/08q;

    .line 112
    .line 113
    const-string v2, "HELIUM_RENDERER_CRASH"

    .line 114
    .line 115
    const/16 v1, 0xb

    .line 116
    .line 117
    const-string v0, "helium_renderer_crash"

    .line 118
    .line 119
    invoke-static {v2, v0, v1, v3}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 120
    .line 121
    .line 122
    move-result-object v29

    .line 123
    const-string v2, "LIGHT_MOBILE_CONFIG"

    .line 124
    .line 125
    const/16 v1, 0xc

    .line 126
    .line 127
    const-string v0, "light_mobile_config"

    .line 128
    .line 129
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 130
    .line 131
    .line 132
    move-result-object v28

    .line 133
    const-string v2, "MOBILE_CONFIG"

    .line 134
    .line 135
    const/16 v1, 0xd

    .line 136
    .line 137
    const-string v0, "mobile_config"

    .line 138
    .line 139
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 140
    .line 141
    .line 142
    move-result-object v27

    .line 143
    const-string v2, "NAVIGATION"

    .line 144
    .line 145
    const/16 v1, 0xe

    .line 146
    .line 147
    const-string v0, "navigation"

    .line 148
    .line 149
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 150
    .line 151
    .line 152
    move-result-object v26

    .line 153
    sput-object v26, LX/08q;->A09:LX/08q;

    .line 154
    .line 155
    const-string v2, "PERIODIC_MEMORY"

    .line 156
    .line 157
    const/16 v1, 0xf

    .line 158
    .line 159
    const-string v0, "periodic_memory"

    .line 160
    .line 161
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    sput-object v10, LX/08q;->A0B:LX/08q;

    .line 166
    .line 167
    const-string v2, "LATE_STARTUP"

    .line 168
    .line 169
    const/16 v1, 0x10

    .line 170
    .line 171
    const-string v0, "late_startup"

    .line 172
    .line 173
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 174
    .line 175
    .line 176
    move-result-object v9

    .line 177
    const-string v2, "AFTER_STARTUP"

    .line 178
    .line 179
    const/16 v1, 0x11

    .line 180
    .line 181
    const-string v0, "after_startup"

    .line 182
    .line 183
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    const-string v2, "REPORT_SOURCE"

    .line 188
    .line 189
    const/16 v1, 0x12

    .line 190
    .line 191
    const-string v0, "report_source"

    .line 192
    .line 193
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 194
    .line 195
    .line 196
    move-result-object v7

    .line 197
    sput-object v7, LX/08q;->A0C:LX/08q;

    .line 198
    .line 199
    const-string v3, "SOFT_ERROR"

    .line 200
    .line 201
    const/16 v2, 0x13

    .line 202
    .line 203
    const-string v1, "soft_error"

    .line 204
    .line 205
    const/4 v0, 0x0

    .line 206
    invoke-static {v3, v1, v2, v0}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    sput-object v6, LX/08q;->A0D:LX/08q;

    .line 211
    .line 212
    const-string v2, "STARTUP"

    .line 213
    .line 214
    const/16 v1, 0x14

    .line 215
    .line 216
    const-string v0, "startup"

    .line 217
    .line 218
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 219
    .line 220
    .line 221
    move-result-object v5

    .line 222
    sput-object v5, LX/08q;->A0E:LX/08q;

    .line 223
    .line 224
    const-string v2, "UNEXPLAINED"

    .line 225
    .line 226
    const/16 v1, 0x15

    .line 227
    .line 228
    const-string v0, "unexplained"

    .line 229
    .line 230
    const/4 v11, 0x0

    .line 231
    invoke-static {v2, v0, v1, v11}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    sput-object v4, LX/08q;->A0F:LX/08q;

    .line 236
    .line 237
    const-string v2, "TEST_CRASH"

    .line 238
    .line 239
    const/16 v1, 0x16

    .line 240
    .line 241
    const-string v0, "test"

    .line 242
    .line 243
    invoke-static {v2, v0, v1, v11}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    const-string v2, "BUG_REPORT"

    .line 248
    .line 249
    const/16 v1, 0x17

    .line 250
    .line 251
    const-string v0, "bug_report"

    .line 252
    .line 253
    invoke-static {v2, v0, v1, v11}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 254
    .line 255
    .line 256
    move-result-object v25

    .line 257
    const-string v2, "EXTRA_COLLECTION"

    .line 258
    .line 259
    const/16 v1, 0x18

    .line 260
    .line 261
    const-string v0, "extra_collection"

    .line 262
    .line 263
    invoke-static {v2, v0, v1, v11}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 264
    .line 265
    .line 266
    move-result-object v24

    .line 267
    const-string v2, "CUSTOM_APP_DATA"

    .line 268
    .line 269
    const/16 v1, 0x19

    .line 270
    .line 271
    const-string v0, "custom_app_data"

    .line 272
    .line 273
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 274
    .line 275
    .line 276
    move-result-object v23

    .line 277
    const-string v2, "CUSTOM_DATA"

    .line 278
    .line 279
    const/16 v1, 0x1a

    .line 280
    .line 281
    const-string v0, "custom_data"

    .line 282
    .line 283
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 284
    .line 285
    .line 286
    move-result-object v22

    .line 287
    sput-object v22, LX/08q;->A06:LX/08q;

    .line 288
    .line 289
    const-string v2, "FOREGROUND_TRANSITION"

    .line 290
    .line 291
    const/16 v1, 0x1b

    .line 292
    .line 293
    const-string v0, "foreground_transition"

    .line 294
    .line 295
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 296
    .line 297
    .line 298
    move-result-object v21

    .line 299
    const-string v2, "USER_PERCEPTIBLE_SCOPE"

    .line 300
    .line 301
    const/16 v1, 0x1c

    .line 302
    .line 303
    const-string v0, "user_perceptible_scope"

    .line 304
    .line 305
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 306
    .line 307
    .line 308
    move-result-object v20

    .line 309
    const-string v2, "USER_CHANGE"

    .line 310
    .line 311
    const/16 v1, 0x1d

    .line 312
    .line 313
    const-string v0, "user_change"

    .line 314
    .line 315
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 316
    .line 317
    .line 318
    move-result-object v19

    .line 319
    sput-object v19, LX/08q;->A0G:LX/08q;

    .line 320
    .line 321
    const-string v2, "PERIODIC_BATTERY"

    .line 322
    .line 323
    const/16 v1, 0x1e

    .line 324
    .line 325
    const-string v0, "periodic_battery"

    .line 326
    .line 327
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 328
    .line 329
    .line 330
    move-result-object v18

    .line 331
    sput-object v18, LX/08q;->A0A:LX/08q;

    .line 332
    .line 333
    const-string v2, "MEMORY_TRIM"

    .line 334
    .line 335
    const/16 v1, 0x1f

    .line 336
    .line 337
    const-string v0, "memory_trim"

    .line 338
    .line 339
    invoke-static {v2, v0, v1, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 340
    .line 341
    .line 342
    move-result-object v17

    .line 343
    const-string v1, "BACKGROUND"

    .line 344
    .line 345
    const/16 v2, 0x20

    .line 346
    .line 347
    const-string v0, "background"

    .line 348
    .line 349
    invoke-static {v1, v0, v2, v14}, LX/08q;->A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;

    .line 350
    .line 351
    .line 352
    move-result-object v16

    .line 353
    const/16 v0, 0x21

    .line 354
    .line 355
    new-array v1, v0, [LX/08q;

    .line 356
    .line 357
    aput-object v15, v1, v11

    .line 358
    .line 359
    aput-object v37, v1, v14

    .line 360
    .line 361
    move-object/from16 v0, v36

    .line 362
    .line 363
    invoke-static {v13, v0, v12, v1}, LX/000;->A0J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    const/4 v0, 0x5

    .line 367
    aput-object v35, v1, v0

    .line 368
    .line 369
    const/4 v0, 0x6

    .line 370
    aput-object v34, v1, v0

    .line 371
    .line 372
    const/4 v0, 0x7

    .line 373
    aput-object v33, v1, v0

    .line 374
    .line 375
    const/16 v0, 0x8

    .line 376
    .line 377
    aput-object v32, v1, v0

    .line 378
    .line 379
    const/16 v0, 0x9

    .line 380
    .line 381
    aput-object v31, v1, v0

    .line 382
    .line 383
    const/16 v0, 0xa

    .line 384
    .line 385
    aput-object v30, v1, v0

    .line 386
    .line 387
    const/16 v0, 0xb

    .line 388
    .line 389
    aput-object v29, v1, v0

    .line 390
    .line 391
    const/16 v0, 0xc

    .line 392
    .line 393
    aput-object v28, v1, v0

    .line 394
    .line 395
    const/16 v0, 0xd

    .line 396
    .line 397
    aput-object v27, v1, v0

    .line 398
    .line 399
    const/16 v0, 0xe

    .line 400
    .line 401
    aput-object v26, v1, v0

    .line 402
    .line 403
    invoke-static {v10, v9, v8, v7, v1}, LX/000;->A0H(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 404
    .line 405
    .line 406
    invoke-static {v6, v5, v4, v3, v1}, LX/000;->A0I(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 407
    .line 408
    .line 409
    const/16 v0, 0x17

    .line 410
    .line 411
    aput-object v25, v1, v0

    .line 412
    .line 413
    const/16 v0, 0x18

    .line 414
    .line 415
    aput-object v24, v1, v0

    .line 416
    .line 417
    const/16 v0, 0x19

    .line 418
    .line 419
    aput-object v23, v1, v0

    .line 420
    .line 421
    const/16 v0, 0x1a

    .line 422
    .line 423
    aput-object v22, v1, v0

    .line 424
    .line 425
    const/16 v0, 0x1b

    .line 426
    .line 427
    aput-object v21, v1, v0

    .line 428
    .line 429
    const/16 v0, 0x1c

    .line 430
    .line 431
    aput-object v20, v1, v0

    .line 432
    .line 433
    const/16 v0, 0x1d

    .line 434
    .line 435
    aput-object v19, v1, v0

    .line 436
    .line 437
    const/16 v0, 0x1e

    .line 438
    .line 439
    aput-object v18, v1, v0

    .line 440
    .line 441
    const/16 v0, 0x1f

    .line 442
    .line 443
    aput-object v17, v1, v0

    .line 444
    .line 445
    aput-object v16, v1, v2

    .line 446
    .line 447
    sput-object v1, LX/08q;->A02:[LX/08q;

    .line 448
    .line 449
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1
    .line 2
    .line 3
    iput-object p2, p0, LX/08q;->A00:Ljava/lang/String;

    .line 4
    .line 5
    iput-boolean p4, p0, LX/08q;->A01:Z

    .line 6
    .line 7
    return-void
.end method

.method public static A00(Ljava/lang/String;Ljava/lang/String;IZ)LX/08q;
    .locals 1

    .line 0
    new-instance v0, LX/08q;

    .line 1
    .line 2
    invoke-direct {v0, p0, p1, p2, p3}, LX/08q;-><init>(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 3
    .line 4
    .line 5
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)LX/08q;
    .locals 1

    .line 0
    const-class v0, LX/08q;

    .line 1
    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, LX/08q;

    .line 7
    .line 8
    return-object v0
.end method

.method public static values()[LX/08q;
    .locals 1

    .line 0
    sget-object v0, LX/08q;->A02:[LX/08q;

    .line 1
    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, [LX/08q;

    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, LX/08q;->A00:Ljava/lang/String;

    .line 1
    .line 2
    return-object v0
.end method
