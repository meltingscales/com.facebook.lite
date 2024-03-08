.class public abstract LX/03I;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Landroid/app/Application;

.field public final A01:LX/0B6;

.field public final A02:LX/03H;


# direct methods
.method public constructor <init>(Landroid/app/Application;LX/0B6;LX/03H;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/03I;->A00:Landroid/app/Application;

    .line 4
    .line 5
    iput-object p2, p0, LX/03I;->A01:LX/0B6;

    .line 6
    .line 7
    iput-object p3, p0, LX/03I;->A02:LX/03H;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public abstract A00(LX/02m;)LX/02u;
.end method

.method public abstract A01()LX/08q;
.end method

.method public abstract A02()Ljava/lang/Integer;
.end method

.method public A03(LX/02m;Ljava/io/File;Ljava/io/File;)V
    .locals 21

    .line 0
    move-object/from16 v20, p0

    .line 1
    .line 2
    invoke-virtual/range {v20 .. v20}, LX/03I;->A02()Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 7
    .line 8
    move-object/from16 v14, p2

    .line 9
    .line 10
    move-object/from16 v18, v14

    .line 11
    .line 12
    if-ne v1, v0, :cond_0

    .line 13
    .line 14
    move-object/from16 v18, p3

    .line 15
    .line 16
    :cond_0
    if-eqz v18, :cond_e

    .line 17
    .line 18
    move-object/from16 v0, v20

    .line 19
    .line 20
    iget-object v13, v0, LX/03I;->A02:LX/03H;

    .line 21
    .line 22
    invoke-virtual/range {v20 .. v20}, LX/03I;->A01()LX/08q;

    .line 23
    .line 24
    .line 25
    move-result-object v12

    .line 26
    sget-object v17, LX/03H;->A05:Ljava/lang/Object;

    .line 27
    .line 28
    monitor-enter v17

    .line 29
    :try_start_0
    new-instance v0, LX/00d;

    .line 30
    .line 31
    move-object/from16 v15, p1

    .line 32
    .line 33
    invoke-direct {v0, v15, v12}, LX/00d;-><init>(LX/02m;LX/08q;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v14, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v11

    .line 40
    if-nez v11, :cond_1

    .line 41
    .line 42
    sget-object v11, LX/03H;->A06:[Ljava/io/File;

    .line 43
    .line 44
    :cond_1
    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 45
    array-length v10, v11

    .line 46
    if-eqz v10, :cond_e

    .line 47
    .line 48
    const/4 v9, 0x0

    .line 49
    :goto_0
    if-ge v9, v10, :cond_e

    .line 50
    .line 51
    aget-object v8, v11, v9

    .line 52
    .line 53
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-static {v14, v0}, LX/03H;->A02(Ljava/io/File;Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_d

    .line 62
    .line 63
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    sget-object v0, LX/03H;->A04:Ljava/lang/String;

    .line 71
    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    invoke-static {}, LX/073;->A00()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, LX/03H;->A04:Ljava/lang/String;

    .line 79
    .line 80
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v7, "_prop.txt"

    .line 86
    .line 87
    const-string v0, "_"

    .line 88
    .line 89
    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    sget-object v0, LX/03H;->A04:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    iget-object v0, v13, LX/03H;->A01:Ljava/io/File;

    .line 106
    .line 107
    new-instance v6, Ljava/io/File;

    .line 108
    .line 109
    invoke-direct {v6, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 113
    .line 114
    .line 115
    monitor-enter v17

    .line 116
    :try_start_1
    new-instance v1, LX/02D;

    .line 117
    .line 118
    invoke-direct {v1, v15}, LX/02D;-><init>(LX/02m;)V

    .line 119
    .line 120
    .line 121
    move-object/from16 v0, v18

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-nez v3, :cond_3

    .line 128
    .line 129
    sget-object v3, LX/03H;->A06:[Ljava/io/File;

    .line 130
    .line 131
    :cond_3
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 132
    move-object/from16 v0, v20

    .line 133
    .line 134
    invoke-virtual {v0, v15}, LX/03I;->A00(LX/02m;)LX/02u;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    sget-object v1, LX/07M;->A2f:LX/05m;

    .line 139
    .line 140
    invoke-static {}, LX/06F;->A00()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {v5, v1, v0}, LX/02u;->A02(LX/05m;I)V

    .line 145
    .line 146
    .line 147
    sget-object v1, LX/07M;->A2g:LX/05m;

    .line 148
    .line 149
    invoke-static {}, LX/06F;->A01()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-virtual {v5, v1, v0}, LX/02u;->A02(LX/05m;I)V

    .line 154
    .line 155
    .line 156
    sget-object v0, LX/07M;->A09:LX/05n;

    .line 157
    .line 158
    const/4 v2, 0x1

    .line 159
    invoke-virtual {v5, v0, v2}, LX/02u;->A01(LX/05n;Z)V

    .line 160
    .line 161
    .line 162
    move-object/from16 v0, v20

    .line 163
    .line 164
    iget-object v0, v0, LX/03I;->A00:Landroid/app/Application;

    .line 165
    .line 166
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    if-eqz v1, :cond_4

    .line 179
    .line 180
    sget-object v0, LX/07M;->A8b:LX/05l;

    .line 181
    .line 182
    invoke-virtual {v5, v0, v1}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :cond_4
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    new-instance v4, Ljava/util/ArrayList;

    .line 190
    .line 191
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v4, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-nez v0, :cond_5

    .line 199
    .line 200
    invoke-virtual {v4, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    :cond_5
    new-instance v3, Ljava/util/ArrayList;

    .line 204
    .line 205
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .line 207
    .line 208
    monitor-enter v17

    .line 209
    :try_start_2
    new-instance v1, LX/02E;

    .line 210
    .line 211
    invoke-direct {v1, v15, v2}, LX/02E;-><init>(LX/02m;Z)V

    .line 212
    .line 213
    .line 214
    move-object/from16 v0, v18

    .line 215
    .line 216
    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    if-nez v2, :cond_6

    .line 221
    .line 222
    sget-object v2, LX/03H;->A06:[Ljava/io/File;

    .line 223
    .line 224
    :cond_6
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 225
    array-length v0, v2

    .line 226
    move/from16 v19, v0

    .line 227
    .line 228
    const/4 v1, 0x0

    .line 229
    :goto_1
    move/from16 v0, v19

    .line 230
    .line 231
    if-ge v1, v0, :cond_8

    .line 232
    .line 233
    aget-object v16, v2, v1

    .line 234
    .line 235
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-static {v14, v0}, LX/03H;->A02(Ljava/io/File;Ljava/lang/String;)Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-nez v0, :cond_7

    .line 244
    .line 245
    move-object/from16 v0, v16

    .line 246
    .line 247
    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 251
    .line 252
    goto :goto_1

    .line 253
    :cond_8
    const/4 v1, 0x0

    .line 254
    monitor-enter v17

    .line 255
    :try_start_3
    new-instance v0, LX/02E;

    .line 256
    .line 257
    invoke-direct {v0, v15, v1}, LX/02E;-><init>(LX/02m;Z)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v14, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    if-nez v2, :cond_9

    .line 265
    .line 266
    sget-object v2, LX/03H;->A06:[Ljava/io/File;

    .line 267
    .line 268
    :cond_9
    monitor-exit v17
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 269
    array-length v0, v2

    .line 270
    move/from16 v19, v0

    .line 271
    .line 272
    :goto_2
    move/from16 v0, v19

    .line 273
    .line 274
    if-ge v1, v0, :cond_b

    .line 275
    .line 276
    aget-object v16, v2, v1

    .line 277
    .line 278
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {v14, v0}, LX/03H;->A02(Ljava/io/File;Ljava/lang/String;)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-nez v0, :cond_a

    .line 287
    .line 288
    move-object/from16 v0, v16

    .line 289
    .line 290
    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_b
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    if-nez v0, :cond_c

    .line 301
    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    .line 303
    .line 304
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 305
    .line 306
    .line 307
    iget-object v0, v15, LX/02m;->A00:Ljava/lang/String;

    .line 308
    .line 309
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    .line 313
    .line 314
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .line 316
    .line 317
    iget-object v0, v12, LX/08q;->A00:Ljava/lang/String;

    .line 318
    .line 319
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    const-string v0, "_attach.txt"

    .line 323
    .line 324
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v1

    .line 338
    const/4 v0, 0x0

    .line 339
    invoke-virtual {v13, v0, v6, v1, v3}, LX/03H;->A03(LX/02u;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    .line 340
    .line 341
    .line 342
    :cond_c
    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 343
    .line 344
    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    iget-object v0, v15, LX/02m;->A00:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    .line 356
    .line 357
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .line 359
    .line 360
    iget-object v0, v12, LX/08q;->A00:Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v0, "_report.txt"

    .line 366
    .line 367
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-virtual {v13, v5, v6, v0, v4}, LX/03H;->A03(LX/02u;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V

    .line 382
    .line 383
    .line 384
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v0

    .line 388
    invoke-static {v14, v0}, LX/03H;->A01(Ljava/io/File;Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    const-string v0, "_attach.txt"

    .line 396
    .line 397
    invoke-virtual {v1, v7, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v0

    .line 401
    invoke-static {v14, v0}, LX/03H;->A01(Ljava/io/File;Ljava/lang/String;)V

    .line 402
    .line 403
    .line 404
    :cond_d
    add-int/lit8 v9, v9, 0x1

    .line 405
    .line 406
    goto/16 :goto_0

    .line 407
    .line 408
    :catchall_0
    :try_start_4
    move-exception v0

    .line 409
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 410
    throw v0

    .line 411
    :catchall_1
    :try_start_5
    move-exception v0

    .line 412
    monitor-exit v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 413
    throw v0

    .line 414
    :catchall_2
    :try_start_6
    move-exception v0

    .line 415
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 416
    throw v0

    .line 417
    :catchall_3
    :try_start_7
    move-exception v0

    .line 418
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 419
    throw v0

    .line 420
    :cond_e
    return-void
.end method
