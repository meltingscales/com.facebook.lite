.class public final LX/01m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08p;


# instance fields
.field public final A00:Landroid/app/Application;

.field public final A01:LX/07R;

.field public final A02:LX/09B;

.field public final A03:LX/0BP;


# direct methods
.method public constructor <init>(Landroid/app/Application;LX/07R;LX/09B;LX/0BP;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/01m;->A00:Landroid/app/Application;

    .line 4
    .line 5
    iput-object p3, p0, LX/01m;->A02:LX/09B;

    .line 6
    .line 7
    iput-object p2, p0, LX/01m;->A01:LX/07R;

    .line 8
    .line 9
    iput-object p4, p0, LX/01m;->A03:LX/0BP;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final synthetic ABM()LX/034;
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 1
    return-object v0
.end method

.method public final ACB()LX/08q;
    .locals 1

    .line 0
    sget-object v0, LX/08q;->A08:LX/08q;

    .line 1
    .line 2
    return-object v0
.end method

.method public final start()V
    .locals 19

    .line 0
    move-object/from16 v5, p0

    .line 1
    .line 2
    iget-object v0, v5, LX/01m;->A03:LX/0BP;

    .line 3
    .line 4
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v13

    .line 8
    check-cast v13, LX/03f;

    .line 9
    .line 10
    iget-boolean v0, v13, LX/03f;->A07:Z

    .line 11
    .line 12
    if-eqz v0, :cond_c

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v9, 0x1

    .line 16
    iget-object v1, v5, LX/01m;->A02:LX/09B;

    .line 17
    .line 18
    iget-object v0, v1, LX/09B;->A08:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, LX/09B;->A01(Ljava/lang/String;)Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v12

    .line 24
    if-eqz v12, :cond_c

    .line 25
    .line 26
    iget-object v1, v5, LX/01m;->A00:Landroid/app/Application;

    .line 27
    .line 28
    invoke-virtual {v12}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v14

    .line 32
    const-string v0, "minidumps"

    .line 33
    .line 34
    invoke-virtual {v1, v0, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    new-instance v0, LX/00M;

    .line 39
    .line 40
    invoke-direct {v0}, LX/00M;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    const/4 v11, 0x0

    .line 48
    if-eqz v10, :cond_0

    .line 49
    .line 50
    const/16 v0, 0x2d

    .line 51
    .line 52
    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    array-length v4, v10

    .line 63
    const/4 v3, 0x0

    .line 64
    :goto_0
    if-ge v3, v4, :cond_0

    .line 65
    .line 66
    aget-object v6, v10, v3

    .line 67
    .line 68
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 73
    .line 74
    .line 75
    move-result-wide v17

    .line 76
    const-wide/16 v15, 0x0

    .line 77
    .line 78
    const-string v2, "lacrima"

    .line 79
    .line 80
    cmp-long v0, v17, v15

    .line 81
    .line 82
    if-nez v0, :cond_2

    .line 83
    .line 84
    const-string v0, "The minidump file is empty during matching!"

    .line 85
    .line 86
    invoke-static {v2, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :cond_0
    move-object v6, v11

    .line 90
    :cond_1
    :goto_1
    const-string v2, "lacrima"

    .line 91
    .line 92
    if-eqz v6, :cond_6

    .line 93
    .line 94
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 95
    .line 96
    .line 97
    move-result-wide v14

    .line 98
    const-wide/16 v3, 0x0

    .line 99
    .line 100
    cmp-long v0, v14, v3

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    goto :goto_3

    .line 105
    :cond_2
    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_1

    .line 110
    .line 111
    const-string v0, "_"

    .line 112
    .line 113
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_4

    .line 118
    .line 119
    :try_start_0
    const-string v0, "r"

    .line 120
    .line 121
    new-instance v1, Ljava/io/RandomAccessFile;

    .line 122
    .line 123
    invoke-direct {v1, v6, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 124
    .line 125
    .line 126
    :try_start_1
    new-instance v15, LX/02e;

    .line 127
    .line 128
    invoke-direct {v15, v1}, LX/02e;-><init>(Ljava/io/RandomAccessFile;)V

    .line 129
    .line 130
    .line 131
    sget-object v0, LX/07M;->A4F:LX/05l;

    .line 132
    .line 133
    iget-object v0, v0, LX/07H;->A00:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v15, v0}, LX/02e;->A01(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-eqz v0, :cond_3

    .line 140
    .line 141
    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    .line 147
    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 152
    .line 153
    .line 154
    goto :goto_2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    :try_start_3
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 157
    .line 158
    .line 159
    :catchall_1
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 160
    :catchall_2
    move-exception v17

    .line 161
    invoke-static {}, LX/08w;->A00()V

    .line 162
    .line 163
    .line 164
    const/4 v0, 0x2

    .line 165
    new-array v1, v0, [Ljava/lang/Object;

    .line 166
    .line 167
    invoke-virtual {v6}, Ljava/io/File;->length()J

    .line 168
    .line 169
    .line 170
    move-result-wide v15

    .line 171
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    aput-object v0, v1, v7

    .line 176
    .line 177
    aput-object v17, v1, v9

    .line 178
    .line 179
    const-string v0, "Could not read minidump, file size: %d."

    .line 180
    .line 181
    invoke-static {v2, v0, v1}, LX/06s;->A0I(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :goto_3
    :try_start_5
    const-string v0, "r"

    .line 188
    .line 189
    new-instance v3, Ljava/io/RandomAccessFile;

    .line 190
    .line 191
    invoke-direct {v3, v6, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 192
    .line 193
    .line 194
    :try_start_6
    new-instance v1, LX/02e;

    .line 195
    .line 196
    invoke-direct {v1, v3}, LX/02e;-><init>(Ljava/io/RandomAccessFile;)V

    .line 197
    .line 198
    .line 199
    sget-object v0, LX/07M;->A6W:LX/05l;

    .line 200
    .line 201
    iget-object v0, v0, LX/07H;->A00:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v1, v0}, LX/02e;->A01(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    if-eqz v1, :cond_5

    .line 208
    .line 209
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-nez v0, :cond_5

    .line 214
    .line 215
    new-instance v4, Ljava/io/File;

    .line 216
    .line 217
    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 225
    .line 226
    :try_start_7
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 227
    .line 228
    .line 229
    goto :goto_5

    .line 230
    :cond_5
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    .line 231
    .line 232
    .line 233
    goto :goto_4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 234
    :catchall_3
    move-exception v0

    .line 235
    :try_start_8
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 236
    .line 237
    .line 238
    :catchall_4
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 239
    :cond_6
    const-string v0, "The minidump file is empty!"

    .line 240
    .line 241
    invoke-static {v2, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_4

    .line 245
    :catchall_5
    move-exception v1

    .line 246
    invoke-static {}, LX/08w;->A00()V

    .line 247
    .line 248
    .line 249
    const-string v0, "Could not extract LogcatInterceptor File"

    .line 250
    .line 251
    invoke-static {v2, v0, v1}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    .line 253
    .line 254
    :goto_4
    move-object v4, v11

    .line 255
    if-nez v6, :cond_7

    .line 256
    .line 257
    iget-char v1, v13, LX/03f;->A04:C

    .line 258
    .line 259
    const/16 v0, 0x30

    .line 260
    .line 261
    if-ne v1, v0, :cond_8

    .line 262
    .line 263
    return-void

    .line 264
    :cond_7
    :goto_5
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    :cond_8
    const-string v0, "native_state.txt"

    .line 268
    .line 269
    new-instance v10, Ljava/io/File;

    .line 270
    .line 271
    invoke-direct {v10, v12, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    new-instance v3, LX/02u;

    .line 275
    .line 276
    invoke-direct {v3, v11}, LX/02u;-><init>(Ljava/lang/Throwable;)V

    .line 277
    .line 278
    .line 279
    :try_start_a
    sget-object v0, LX/07M;->A10:LX/05m;

    .line 280
    .line 281
    invoke-virtual {v3, v0, v9}, LX/02u;->A02(LX/05m;I)V

    .line 282
    .line 283
    .line 284
    sget-object v1, LX/07M;->A4g:LX/05l;

    .line 285
    .line 286
    const-string v0, "native_crash"

    .line 287
    .line 288
    invoke-virtual {v3, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    sget-object v2, LX/07M;->A1O:LX/05m;

    .line 292
    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 294
    .line 295
    .line 296
    move-result-wide v0

    .line 297
    const-wide/16 v8, 0x3e8

    .line 298
    .line 299
    div-long/2addr v0, v8

    .line 300
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v3, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 305
    .line 306
    .line 307
    sget-object v2, LX/07M;->A33:LX/05m;

    .line 308
    .line 309
    if-eqz v6, :cond_9

    .line 310
    .line 311
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 312
    .line 313
    .line 314
    move-result-wide v0

    .line 315
    :goto_6
    div-long/2addr v0, v8

    .line 316
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {v3, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 321
    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_9
    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    .line 325
    .line 326
    .line 327
    move-result-wide v0

    .line 328
    goto :goto_6

    .line 329
    :goto_7
    if-eqz v6, :cond_a

    .line 330
    .line 331
    sget-object v2, LX/07M;->A29:LX/05m;

    .line 332
    .line 333
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 334
    .line 335
    .line 336
    move-result-wide v0

    .line 337
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-virtual {v3, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 342
    .line 343
    .line 344
    goto :goto_8
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 345
    :catchall_6
    move-exception v0

    .line 346
    invoke-static {}, LX/08w;->A00()V

    .line 347
    .line 348
    .line 349
    sget-object v1, LX/07M;->A5k:LX/05l;

    .line 350
    .line 351
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v3, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    if-eqz v6, :cond_a

    .line 359
    .line 360
    :goto_8
    const/4 v7, 0x1

    .line 361
    :cond_a
    sget-object v0, LX/07M;->A0B:LX/05n;

    .line 362
    .line 363
    invoke-virtual {v3, v0, v7}, LX/02u;->A01(LX/05n;Z)V

    .line 364
    .line 365
    .line 366
    iget-object v2, v5, LX/01m;->A01:LX/07R;

    .line 367
    .line 368
    sget-object v0, LX/02m;->A02:LX/02m;

    .line 369
    .line 370
    invoke-virtual {v2, v0, v5}, LX/07R;->A0B(LX/02m;LX/08p;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v2, v3, v0, v5}, LX/07R;->A05(LX/02u;LX/02m;LX/08p;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual {v2, v0, v5}, LX/07R;->A0A(LX/02m;LX/08p;)V

    .line 377
    .line 378
    .line 379
    if-eqz v7, :cond_c

    .line 380
    .line 381
    sget-object v0, LX/07N;->A0B:LX/07N;

    .line 382
    .line 383
    sget-object v1, LX/02m;->A03:LX/02m;

    .line 384
    .line 385
    invoke-virtual {v3, v0, v1, v6}, LX/02u;->A05(LX/07N;LX/02m;Ljava/io/File;)V

    .line 386
    .line 387
    .line 388
    if-eqz v4, :cond_b

    .line 389
    .line 390
    sget-object v0, LX/07N;->A0A:LX/07N;

    .line 391
    .line 392
    invoke-virtual {v3, v0, v1, v4}, LX/02u;->A05(LX/07N;LX/02m;Ljava/io/File;)V

    .line 393
    .line 394
    .line 395
    :cond_b
    invoke-virtual {v2, v1, v5}, LX/07R;->A0B(LX/02m;LX/08p;)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v3, v1, v5}, LX/07R;->A05(LX/02u;LX/02m;LX/08p;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v1, v5}, LX/07R;->A0A(LX/02m;LX/08p;)V

    .line 402
    .line 403
    .line 404
    :cond_c
    return-void
.end method
