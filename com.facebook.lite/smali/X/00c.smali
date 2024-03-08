.class public final synthetic LX/00c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final __redex_internal_original_name:Ljava/lang/String; = "LacrimaConfig$$ExternalSyntheticLambda1"


# instance fields
.field public final synthetic A00:LX/08K;


# direct methods
.method public synthetic constructor <init>(LX/08K;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/00c;->A00:LX/08K;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 19

    .line 0
    move-object/from16 v0, p0

    .line 1
    .line 2
    iget-object v9, v0, LX/00c;->A00:LX/08K;

    .line 3
    .line 4
    const-string v0, "recoverOldSessions"

    .line 5
    .line 6
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-object v1, v9, LX/08K;->A08:LX/0BP;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x5

    .line 14
    new-instance v1, LX/0BR;

    .line 15
    .line 16
    invoke-direct {v1, v9, v0}, LX/0BR;-><init>(LX/08K;I)V

    .line 17
    .line 18
    .line 19
    iput-object v1, v9, LX/08K;->A08:LX/0BP;

    .line 20
    .line 21
    :cond_0
    invoke-interface {v1}, LX/0BP;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    check-cast v7, LX/03H;

    .line 26
    .line 27
    iget-object v0, v9, LX/08K;->A01:LX/09B;

    .line 28
    .line 29
    const-string v8, "Did you call earlyInit()?"

    .line 30
    .line 31
    invoke-static {v0, v8}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, LX/09B;->A02()Ljava/util/HashSet;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    invoke-virtual {v12}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v11

    .line 42
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/String;

    .line 53
    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v0, "processOldSessions."

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, LX/06A;->A01(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 72
    .line 73
    .line 74
    :try_start_1
    sget-object v10, LX/03H;->A05:Ljava/lang/Object;

    .line 75
    .line 76
    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 77
    :try_start_2
    iget-object v0, v7, LX/03H;->A00:LX/09B;

    .line 78
    .line 79
    invoke-virtual {v0, v2}, LX/09B;->A03(Ljava/lang/String;)[Ljava/io/File;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v2, 0x0

    .line 85
    :goto_1
    array-length v0, v6

    .line 86
    add-int/lit8 v4, v0, -0x1

    .line 87
    .line 88
    const/4 v3, 0x0

    .line 89
    if-ge v2, v4, :cond_2

    .line 90
    .line 91
    aget-object v1, v6, v2

    .line 92
    .line 93
    if-lez v2, :cond_1

    .line 94
    .line 95
    add-int/lit8 v0, v2, -0x1

    .line 96
    .line 97
    aget-object v3, v6, v0

    .line 98
    .line 99
    :cond_1
    sget-object v0, LX/02m;->A02:LX/02m;

    .line 100
    .line 101
    invoke-static {v0, v7, v1, v3}, LX/03H;->A00(LX/02m;LX/03H;Ljava/io/File;Ljava/io/File;)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_2
    :goto_2
    if-ge v5, v4, :cond_4

    .line 108
    .line 109
    aget-object v2, v6, v5

    .line 110
    .line 111
    if-lez v5, :cond_3

    .line 112
    .line 113
    add-int/lit8 v0, v5, -0x1

    .line 114
    .line 115
    aget-object v1, v6, v0

    .line 116
    .line 117
    :goto_3
    sget-object v0, LX/02m;->A03:LX/02m;

    .line 118
    .line 119
    invoke-static {v0, v7, v2, v1}, LX/03H;->A00(LX/02m;LX/03H;Ljava/io/File;Ljava/io/File;)V

    .line 120
    .line 121
    .line 122
    goto :goto_4

    .line 123
    :cond_3
    move-object v1, v3

    .line 124
    goto :goto_3

    .line 125
    :goto_4
    add-int/lit8 v5, v5, 0x1

    .line 126
    .line 127
    goto :goto_2

    .line 128
    :cond_4
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    :try_start_3
    invoke-static {}, LX/06A;->A00()V

    .line 130
    .line 131
    .line 132
    goto :goto_0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 133
    :catchall_0
    move-exception v0

    .line 134
    :try_start_4
    monitor-exit v10

    .line 135
    goto/16 :goto_9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 136
    .line 137
    :cond_5
    :try_start_5
    iget-object v0, v9, LX/08K;->A0B:LX/0BP;

    .line 138
    .line 139
    if-nez v0, :cond_6

    .line 140
    .line 141
    new-instance v0, LX/03k;

    .line 142
    .line 143
    invoke-direct {v0, v9}, LX/03k;-><init>(LX/08K;)V

    .line 144
    .line 145
    .line 146
    iput-object v0, v9, LX/08K;->A0B:LX/0BP;

    .line 147
    .line 148
    :cond_6
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    check-cast v7, LX/090;

    .line 153
    .line 154
    sget-object v0, LX/02m;->A02:LX/02m;

    .line 155
    .line 156
    invoke-virtual {v7, v0}, LX/090;->A03(LX/02m;)V

    .line 157
    .line 158
    .line 159
    sget-object v0, LX/02m;->A03:LX/02m;

    .line 160
    .line 161
    invoke-virtual {v7, v0}, LX/090;->A03(LX/02m;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v12}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v15

    .line 168
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_9

    .line 173
    .line 174
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    check-cast v2, Ljava/lang/String;

    .line 179
    .line 180
    iget-object v6, v9, LX/08K;->A01:LX/09B;

    .line 181
    .line 182
    invoke-static {v6, v8}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    iget v5, v6, LX/09B;->A03:I

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v0, "cleanupOldSessions."

    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-static {v0}, LX/06A;->A01(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 205
    .line 206
    .line 207
    :try_start_6
    const-string v4, "lacrima"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 208
    .line 209
    :try_start_7
    iget-object v0, v6, LX/09B;->A05:LX/07q;

    .line 210
    .line 211
    invoke-virtual {v0}, LX/07q;->A02()V

    .line 212
    .line 213
    .line 214
    goto :goto_6
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 215
    :catch_0
    :try_start_8
    invoke-static {}, LX/08w;->A00()V

    .line 216
    .line 217
    .line 218
    :goto_6
    sget-object v14, LX/09B;->A0B:Ljava/lang/Object;

    .line 219
    .line 220
    monitor-enter v14
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 221
    :try_start_9
    invoke-virtual {v6, v2}, LX/09B;->A03(Ljava/lang/String;)[Ljava/io/File;

    .line 222
    .line 223
    .line 224
    move-result-object v3

    .line 225
    const/4 v2, 0x0

    .line 226
    :goto_7
    array-length v0, v3

    .line 227
    sub-int/2addr v0, v5

    .line 228
    if-ge v2, v0, :cond_8

    .line 229
    .line 230
    aget-object v13, v3, v2

    .line 231
    .line 232
    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 233
    .line 234
    .line 235
    :try_start_a
    iget-object v12, v6, LX/09B;->A05:LX/07q;

    .line 236
    .line 237
    const-string v11, "collector"

    .line 238
    .line 239
    const-class v10, LX/07q;

    .line 240
    .line 241
    monitor-enter v10
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 242
    :try_start_b
    const-string v0, "deleteSessionDir"

    .line 243
    .line 244
    invoke-static {v0}, LX/06A;->A01(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 245
    .line 246
    .line 247
    :try_start_c
    sget-object v0, LX/07q;->A05:Ljava/util/List;

    .line 248
    .line 249
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_7

    .line 258
    .line 259
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    const-string v1, "onDeleteSession"

    .line 263
    .line 264
    new-instance v0, Ljava/lang/NullPointerException;

    .line 265
    .line 266
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw v0

    .line 270
    :cond_7
    invoke-virtual {v12, v13, v11}, LX/07q;->A04(Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 271
    .line 272
    .line 273
    :try_start_d
    invoke-static {}, LX/06A;->A00()V

    .line 274
    .line 275
    .line 276
    monitor-exit v10

    .line 277
    goto :goto_8

    .line 278
    :catchall_1
    move-exception v0

    .line 279
    invoke-static {}, LX/06A;->A00()V

    .line 280
    .line 281
    .line 282
    throw v0

    .line 283
    :catchall_2
    move-exception v0

    .line 284
    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 285
    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 286
    :catch_1
    move-exception v1

    .line 287
    :try_start_f
    const-string v0, "Failed to delete session dir"

    .line 288
    .line 289
    invoke-static {v4, v0, v1}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    .line 291
    .line 292
    invoke-static {}, LX/08w;->A00()V

    .line 293
    .line 294
    .line 295
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_8
    monitor-exit v14
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 299
    :try_start_10
    invoke-static {}, LX/06A;->A00()V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    .line 303
    .line 304
    :catchall_3
    move-exception v0

    .line 305
    :try_start_11
    monitor-exit v14
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 306
    :goto_9
    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 307
    :cond_9
    :try_start_13
    invoke-virtual {v7}, LX/090;->A02()V

    .line 308
    .line 309
    .line 310
    iget-object v0, v9, LX/08K;->A01:LX/09B;

    .line 311
    .line 312
    invoke-static {v0, v8}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    iget-object v11, v0, LX/09B;->A05:LX/07q;

    .line 316
    .line 317
    const/16 v18, 0x3

    .line 318
    .line 319
    const-wide/32 v2, 0xf731400

    .line 320
    .line 321
    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 323
    .line 324
    .line 325
    move-result-wide v16

    .line 326
    iget-object v6, v11, LX/07q;->A00:Landroid/content/Context;

    .line 327
    .line 328
    invoke-virtual {v6}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 333
    .line 334
    const-string v0, "core"

    .line 335
    .line 336
    new-instance v1, Ljava/io/File;

    .line 337
    .line 338
    invoke-direct {v1, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    iget-object v10, v11, LX/07q;->A01:Ljava/lang/Object;

    .line 342
    .line 343
    monitor-enter v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    .line 344
    :try_start_14
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    new-instance v12, Ljava/io/File;

    .line 349
    .line 350
    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object v9, v11, LX/07q;->A02:Ljava/util/Map;

    .line 354
    .line 355
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    if-eqz v0, :cond_a

    .line 364
    .line 365
    invoke-virtual {v12}, Ljava/io/File;->lastModified()J

    .line 366
    .line 367
    .line 368
    move-result-wide v7

    .line 369
    sub-long v4, v16, v2

    .line 370
    .line 371
    cmp-long v0, v7, v4

    .line 372
    .line 373
    if-gez v0, :cond_b

    .line 374
    .line 375
    :cond_a
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    const-string v0, "/system/"

    .line 380
    .line 381
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    xor-int/lit8 v0, v0, 0x1

    .line 386
    .line 387
    if-eqz v0, :cond_b

    .line 388
    .line 389
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 390
    .line 391
    .line 392
    :cond_b
    monitor-exit v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    .line 393
    :try_start_15
    const-string v0, "minidumps"

    .line 394
    .line 395
    const/4 v8, 0x0

    .line 396
    invoke-virtual {v6, v0, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    new-instance v0, LX/00n;

    .line 401
    .line 402
    invoke-direct {v0}, LX/00n;-><init>()V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    if-eqz v7, :cond_10

    .line 410
    .line 411
    new-instance v6, Ljava/util/HashMap;

    .line 412
    .line 413
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 414
    .line 415
    .line 416
    array-length v5, v7

    .line 417
    const/4 v12, 0x0

    .line 418
    :goto_a
    if-ge v12, v5, :cond_c

    .line 419
    .line 420
    aget-object v4, v7, v12

    .line 421
    .line 422
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    .line 423
    .line 424
    .line 425
    move-result-wide v0

    .line 426
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 427
    .line 428
    .line 429
    move-result-object v0

    .line 430
    invoke-virtual {v6, v4, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    add-int/lit8 v12, v12, 0x1

    .line 434
    .line 435
    goto :goto_a

    .line 436
    :cond_c
    new-instance v0, LX/00o;

    .line 437
    .line 438
    invoke-direct {v0, v6}, LX/00o;-><init>(Ljava/util/Map;)V

    .line 439
    .line 440
    .line 441
    invoke-static {v7, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 442
    .line 443
    .line 444
    :goto_b
    sub-int v0, v5, v18

    .line 445
    .line 446
    if-ge v8, v0, :cond_10

    .line 447
    .line 448
    aget-object v4, v7, v8

    .line 449
    .line 450
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    .line 451
    .line 452
    .line 453
    move-result-wide v14

    .line 454
    invoke-virtual {v6, v4}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    check-cast v0, Ljava/lang/Long;

    .line 459
    .line 460
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 461
    .line 462
    .line 463
    move-result-wide v12

    .line 464
    cmp-long v0, v14, v12

    .line 465
    .line 466
    if-nez v0, :cond_f

    .line 467
    .line 468
    monitor-enter v10
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 469
    :try_start_16
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    .line 470
    .line 471
    .line 472
    move-result-wide v14

    .line 473
    sub-long v12, v16, v2

    .line 474
    .line 475
    cmp-long v0, v14, v12

    .line 476
    .line 477
    if-ltz v0, :cond_d

    .line 478
    .line 479
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    if-nez v0, :cond_e

    .line 488
    .line 489
    :cond_d
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 490
    .line 491
    .line 492
    move-result-object v1

    .line 493
    const-string v0, "/system/"

    .line 494
    .line 495
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 496
    .line 497
    .line 498
    move-result v0

    .line 499
    xor-int/lit8 v0, v0, 0x1

    .line 500
    .line 501
    if-eqz v0, :cond_e

    .line 502
    .line 503
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 504
    .line 505
    .line 506
    :cond_e
    monitor-exit v10

    .line 507
    :cond_f
    add-int/lit8 v8, v8, 0x1

    .line 508
    .line 509
    goto :goto_b

    .line 510
    :catchall_4
    move-exception v0

    .line 511
    monitor-exit v10

    .line 512
    goto :goto_c
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    .line 513
    :cond_10
    :try_start_17
    const-string v1, "large_"

    .line 514
    .line 515
    const/16 v0, 0xc

    .line 516
    .line 517
    invoke-static {v11, v1, v0, v2, v3}, LX/07q;->A00(LX/07q;Ljava/lang/String;IJ)V

    .line 518
    .line 519
    .line 520
    const-string v3, "critical_"

    .line 521
    .line 522
    const/16 v2, 0x8

    .line 523
    .line 524
    const-wide/32 v0, 0x240c8400

    .line 525
    .line 526
    .line 527
    invoke-static {v11, v3, v2, v0, v1}, LX/07q;->A00(LX/07q;Ljava/lang/String;IJ)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 528
    .line 529
    .line 530
    invoke-static {}, LX/04s;->A00()V

    .line 531
    .line 532
    .line 533
    return-void

    .line 534
    :catchall_5
    move-exception v0

    .line 535
    :try_start_18
    monitor-exit v10

    .line 536
    goto :goto_c
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 537
    :catchall_6
    :try_start_19
    move-exception v0

    .line 538
    invoke-static {}, LX/06A;->A00()V

    .line 539
    .line 540
    .line 541
    :goto_c
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 542
    :catchall_7
    move-exception v0

    .line 543
    invoke-static {}, LX/04s;->A00()V

    .line 544
    .line 545
    .line 546
    throw v0
.end method
