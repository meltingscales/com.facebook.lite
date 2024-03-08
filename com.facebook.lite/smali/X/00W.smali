.class public final LX/00W;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:J

.field public A01:LX/00Y;

.field public A02:Ljava/lang/Integer;

.field public final A03:I

.field public final A04:I

.field public final A05:Landroid/content/Context;

.field public final A06:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/00W;->A05:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, LX/00W;->A06:Ljava/lang/String;

    .line 6
    .line 7
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 8
    .line 9
    iput-object v0, p0, LX/00W;->A02:Ljava/lang/Integer;

    .line 10
    .line 11
    iput p3, p0, LX/00W;->A04:I

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, LX/00W;->A03:I

    .line 18
    .line 19
    return-void
.end method

.method public static A00(Ljava/io/PrintWriter;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)V
    .locals 3

    .line 0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1
    .line 2
    .line 3
    const-string v0, " "

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    const-string v0, ":"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    array-length v2, p2

    .line 21
    const/4 v1, 0x0

    .line 22
    :goto_0
    if-ge v1, v2, :cond_0

    .line 23
    .line 24
    aget-object v0, p2, v1

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final declared-synchronized A01(LX/00V;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    .line 0
    move-object/from16 v3, p0

    .line 1
    .line 2
    monitor-enter v3

    .line 3
    :try_start_0
    iget-object v0, v3, LX/00W;->A01:LX/00Y;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-wide v4, v0, LX/00Y;->A03:J

    .line 8
    .line 9
    iget-wide v1, v3, LX/00W;->A00:J

    .line 10
    .line 11
    cmp-long v0, v4, v1

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto/16 :goto_7

    .line 16
    .line 17
    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    move-object/from16 v4, p1

    .line 22
    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 27
    .line 28
    iput-object v0, v3, LX/00W;->A02:Ljava/lang/Integer;

    .line 29
    .line 30
    goto/16 :goto_7

    .line 31
    .line 32
    :pswitch_0
    sget-object v0, LX/050;->A0C:Ljava/lang/Integer;

    .line 33
    .line 34
    iput-object v0, v3, LX/00W;->A02:Ljava/lang/Integer;

    .line 35
    .line 36
    if-eqz p1, :cond_10

    .line 37
    .line 38
    monitor-enter v4

    .line 39
    const/4 v6, 0x1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    .line 40
    :try_start_1
    iput-boolean v6, v4, LX/00V;->A03:Z

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-boolean v0, v4, LX/00V;->A01:Z

    .line 44
    .line 45
    iget-object v5, v4, LX/00U;->A02:LX/00T;

    .line 46
    .line 47
    iget-object v1, v5, LX/00T;->A00:LX/00R;

    .line 48
    .line 49
    sget-object v0, LX/07C;->A04:LX/09m;

    .line 50
    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    const/4 v10, 0x0

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    sget-object v0, LX/07C;->A04:LX/09m;

    .line 56
    .line 57
    iget-boolean v10, v0, LX/09m;->A03:Z

    .line 58
    .line 59
    :goto_0
    sget-object v0, LX/07C;->A04:LX/09m;

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    const/4 v9, 0x0

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    sget-object v0, LX/07C;->A04:LX/09m;

    .line 66
    .line 67
    iget-boolean v9, v0, LX/09m;->A03:Z

    .line 68
    .line 69
    :goto_1
    check-cast v1, LX/00S;

    .line 70
    .line 71
    iget-object v8, v1, LX/00S;->A00:LX/00O;

    .line 72
    .line 73
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 74
    :try_start_2
    iget-object v1, v8, LX/00O;->A06:LX/09B;

    .line 75
    .line 76
    iget-object v2, v1, LX/09B;->A04:LX/05J;

    .line 77
    .line 78
    const-string v7, "Did you call SessionManager.init()?"

    .line 79
    .line 80
    invoke-static {v2, v7}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v2, LX/05J;->A01:LX/07W;

    .line 84
    .line 85
    iget-object v0, v0, LX/07W;->A01:Ljava/io/File;

    .line 86
    .line 87
    new-instance v12, LX/03c;

    .line 88
    .line 89
    invoke-direct {v12, v0}, LX/03c;-><init>(Ljava/io/File;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v12}, LX/03c;->A02()C

    .line 93
    .line 94
    .line 95
    move-result v18

    .line 96
    invoke-static/range {v18 .. v18}, LX/03e;->A00(C)Z

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    sget-object v0, LX/07i;->A04:LX/07i;

    .line 101
    .line 102
    invoke-virtual {v2, v0}, LX/05J;->A02(LX/07i;)V

    .line 103
    .line 104
    .line 105
    sput-boolean v6, LX/00O;->A0B:Z

    .line 106
    .line 107
    iget v0, v8, LX/00O;->A00:I

    .line 108
    .line 109
    add-int/lit8 v14, v0, 0x1

    .line 110
    .line 111
    iput v14, v8, LX/00O;->A00:I

    .line 112
    .line 113
    iget-object v2, v8, LX/00O;->A05:LX/00P;

    .line 114
    .line 115
    iput v14, v2, LX/00P;->A01:I

    .line 116
    .line 117
    iget-object v0, v2, LX/00P;->A0L:LX/09B;

    .line 118
    .line 119
    iget-object v11, v0, LX/09B;->A06:Ljava/io/File;

    .line 120
    .line 121
    invoke-static {v11, v7}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    new-instance v7, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    const-string v0, "anr_report_"

    .line 130
    .line 131
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v0, ".dmp"

    .line 138
    .line 139
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    new-instance v0, Ljava/io/File;

    .line 147
    .line 148
    invoke-direct {v0, v11, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iput-object v0, v2, LX/00P;->A09:Ljava/io/File;

    .line 152
    .line 153
    iput-boolean v13, v8, LX/00O;->A01:Z

    .line 154
    .line 155
    if-eqz v13, :cond_5

    .line 156
    .line 157
    const/4 v11, 0x0

    .line 158
    new-instance v7, LX/02u;

    .line 159
    .line 160
    invoke-direct {v7, v11}, LX/02u;-><init>(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 161
    .line 162
    .line 163
    :try_start_3
    sget-object v0, LX/07M;->A10:LX/05m;

    .line 164
    .line 165
    invoke-virtual {v7, v0, v6}, LX/02u;->A02(LX/05m;I)V

    .line 166
    .line 167
    .line 168
    sget-object v15, LX/07M;->A1O:LX/05m;

    .line 169
    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 171
    .line 172
    .line 173
    move-result-wide v16

    .line 174
    const-wide/16 v13, 0x3e8

    .line 175
    .line 176
    div-long v16, v16, v13

    .line 177
    .line 178
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v7, v15, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 183
    .line 184
    .line 185
    sget-object v13, LX/07M;->A01:LX/05n;

    .line 186
    .line 187
    iget-boolean v0, v8, LX/00O;->A01:Z

    .line 188
    .line 189
    invoke-virtual {v7, v13, v0}, LX/02u;->A01(LX/05n;Z)V

    .line 190
    .line 191
    .line 192
    sget-object v13, LX/07M;->A2S:LX/05m;

    .line 193
    .line 194
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 195
    .line 196
    .line 197
    move-result-wide v14

    .line 198
    iget-wide v0, v1, LX/09B;->A01:J

    .line 199
    .line 200
    sub-long/2addr v14, v0

    .line 201
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v7, v13, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 206
    .line 207
    .line 208
    const/16 v0, 0x72

    .line 209
    .line 210
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    sget-object v0, LX/07M;->A3j:LX/05l;

    .line 215
    .line 216
    invoke-virtual {v7, v0, v1}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    sget-object v1, LX/07M;->A5N:LX/05l;

    .line 220
    .line 221
    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v7, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sget-object v1, LX/07M;->A5M:LX/05l;

    .line 229
    .line 230
    invoke-virtual {v12}, LX/03c;->A05()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v7, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 238
    :catchall_0
    move-exception v0

    .line 239
    :try_start_4
    invoke-static {}, LX/08w;->A00()V

    .line 240
    .line 241
    .line 242
    sget-object v1, LX/07M;->A5k:LX/05l;

    .line 243
    .line 244
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v7, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    :goto_2
    iget-boolean v0, v8, LX/00O;->A02:Z

    .line 252
    .line 253
    if-eqz v0, :cond_3

    .line 254
    .line 255
    invoke-static {}, LX/00O;->A00()V

    .line 256
    .line 257
    .line 258
    :cond_3
    iget-object v12, v8, LX/00O;->A04:LX/07R;

    .line 259
    .line 260
    sget-object v0, LX/02m;->A02:LX/02m;

    .line 261
    .line 262
    invoke-virtual {v12, v0, v8}, LX/07R;->A0B(LX/02m;LX/08p;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v12, v7, v0, v8}, LX/07R;->A05(LX/02u;LX/02m;LX/08p;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v12, v0, v8}, LX/07R;->A0A(LX/02m;LX/08p;)V

    .line 269
    .line 270
    .line 271
    iget-boolean v0, v8, LX/00O;->A01:Z

    .line 272
    .line 273
    if-eqz v0, :cond_4

    .line 274
    .line 275
    iget-object v2, v2, LX/00P;->A09:Ljava/io/File;

    .line 276
    .line 277
    if-eqz v2, :cond_4

    .line 278
    .line 279
    sget-object v0, LX/07N;->A02:LX/07N;

    .line 280
    .line 281
    sget-object v1, LX/02m;->A03:LX/02m;

    .line 282
    .line 283
    invoke-virtual {v7, v0, v1, v2}, LX/02u;->A05(LX/07N;LX/02m;Ljava/io/File;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v12, v1, v8}, LX/07R;->A0B(LX/02m;LX/08p;)V

    .line 287
    .line 288
    .line 289
    iget v0, v8, LX/00O;->A00:I

    .line 290
    .line 291
    move-object v14, v1

    .line 292
    move-object v15, v8

    .line 293
    move-object/from16 v16, v11

    .line 294
    .line 295
    move/from16 v17, v0

    .line 296
    .line 297
    move-object v13, v7

    .line 298
    invoke-virtual/range {v12 .. v17}, LX/07R;->A07(LX/02u;LX/02m;LX/08p;LX/034;I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v12, v1, v8}, LX/07R;->A0A(LX/02m;LX/08p;)V

    .line 302
    .line 303
    .line 304
    :cond_4
    iget-boolean v0, v8, LX/00O;->A02:Z

    .line 305
    .line 306
    if-eqz v0, :cond_5

    .line 307
    .line 308
    invoke-static {}, LX/00O;->A01()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 309
    .line 310
    .line 311
    :cond_5
    :try_start_5
    monitor-exit v8

    .line 312
    iput-boolean v9, v4, LX/00U;->A03:Z

    .line 313
    .line 314
    iput-boolean v10, v4, LX/00U;->A04:Z

    .line 315
    .line 316
    iget-boolean v0, v4, LX/00U;->A04:Z

    .line 317
    .line 318
    if-nez v0, :cond_6

    .line 319
    .line 320
    iget-boolean v0, v4, LX/00U;->A03:Z

    .line 321
    .line 322
    if-nez v0, :cond_6

    .line 323
    .line 324
    const/4 v6, 0x0

    .line 325
    :cond_6
    iget-boolean v0, v4, LX/00U;->A04:Z

    .line 326
    .line 327
    if-nez v0, :cond_7

    .line 328
    .line 329
    iget-boolean v1, v4, LX/00U;->A03:Z

    .line 330
    .line 331
    const/4 v0, 0x0

    .line 332
    if-eqz v1, :cond_8

    .line 333
    .line 334
    :cond_7
    const/4 v0, 0x1

    .line 335
    :cond_8
    iput-boolean v0, v4, LX/00V;->A04:Z

    .line 336
    .line 337
    if-eqz v0, :cond_9

    .line 338
    .line 339
    iget-object v2, v5, LX/00T;->A03:LX/00P;

    .line 340
    .line 341
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 342
    .line 343
    .line 344
    move-result-wide v0

    .line 345
    move-object/from16 v7, p3

    .line 346
    .line 347
    iput-object v7, v2, LX/00P;->A0D:Ljava/lang/String;

    .line 348
    .line 349
    move-object/from16 v7, p4

    .line 350
    .line 351
    iput-object v7, v2, LX/00P;->A0E:Ljava/lang/String;

    .line 352
    .line 353
    iput-wide v0, v2, LX/00P;->A06:J

    .line 354
    .line 355
    invoke-static {v2}, LX/00P;->A00(LX/00P;)V

    .line 356
    .line 357
    .line 358
    :cond_9
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 359
    :try_start_6
    iget-object v1, v5, LX/00T;->A02:Landroid/os/Handler;

    .line 360
    .line 361
    new-instance v0, LX/05O;

    .line 362
    .line 363
    invoke-direct {v0, v4}, LX/05O;-><init>(LX/00V;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 367
    .line 368
    .line 369
    iget-boolean v0, v4, LX/00V;->A04:Z

    .line 370
    .line 371
    if-eqz v0, :cond_d

    .line 372
    .line 373
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    .line 374
    .line 375
    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 376
    .line 377
    .line 378
    new-instance v8, Ljava/io/PrintWriter;

    .line 379
    .line 380
    invoke-direct {v8, v9}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 381
    .line 382
    .line 383
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    .line 384
    .line 385
    .line 386
    move-result-object v7

    .line 387
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 392
    .line 393
    .line 394
    move-result-object v6

    .line 395
    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    if-eqz v0, :cond_a

    .line 408
    .line 409
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    check-cast v0, Ljava/util/Map$Entry;

    .line 414
    .line 415
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 416
    .line 417
    .line 418
    move-result-object v1

    .line 419
    check-cast v1, Ljava/lang/Thread;

    .line 420
    .line 421
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    check-cast v0, [Ljava/lang/StackTraceElement;

    .line 426
    .line 427
    invoke-static {v8, v1, v0}, LX/00W;->A00(Ljava/io/PrintWriter;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)V

    .line 428
    .line 429
    .line 430
    goto :goto_3

    .line 431
    :cond_a
    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-nez v0, :cond_b

    .line 436
    .line 437
    invoke-virtual {v6}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-static {v8, v6, v0}, LX/00W;->A00(Ljava/io/PrintWriter;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;)V

    .line 442
    .line 443
    .line 444
    :cond_b
    invoke-virtual {v8}, Ljava/io/Writer;->flush()V

    .line 445
    .line 446
    .line 447
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v13

    .line 451
    iget-object v7, v4, LX/00V;->A06:Ljava/lang/Object;

    .line 452
    .line 453
    monitor-enter v7

    .line 454
    const/4 v12, 0x0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 455
    :try_start_7
    monitor-enter v4
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 456
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 457
    :try_start_9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 466
    .line 467
    .line 468
    move-result-object v1

    .line 469
    const-string v0, "ANR detected by ProcessErrorMonitorAnrDetector"

    .line 470
    .line 471
    new-instance v2, LX/04B;

    .line 472
    .line 473
    invoke-direct {v2, v0}, LX/04B;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 477
    .line 478
    .line 479
    const-string v1, "ProcessErrorMonitorANRDetector"

    .line 480
    .line 481
    const-string v0, "Generating ANR Report"

    .line 482
    .line 483
    invoke-static {v1, v0, v2}, LX/06s;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    .line 485
    .line 486
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 487
    .line 488
    .line 489
    move-result-wide v0

    .line 490
    iput-wide v0, v4, LX/00U;->A00:J

    .line 491
    .line 492
    iget-object v8, v5, LX/00T;->A03:LX/00P;

    .line 493
    .line 494
    iget-object v0, v4, LX/00U;->A01:LX/00X;

    .line 495
    .line 496
    const/4 v11, 0x0

    .line 497
    if-nez v0, :cond_c

    .line 498
    .line 499
    const/4 v11, 0x1

    .line 500
    :cond_c
    const/4 v10, 0x5

    .line 501
    iget-boolean v9, v4, LX/00U;->A03:Z

    .line 502
    .line 503
    iget-boolean v6, v4, LX/00U;->A04:Z

    .line 504
    .line 505
    iget-wide v4, v4, LX/00U;->A00:J

    .line 506
    .line 507
    const-wide/16 v1, -0x1

    .line 508
    .line 509
    iput-wide v1, v8, LX/00P;->A08:J

    .line 510
    .line 511
    iget-object v0, v8, LX/00P;->A0M:Ljava/util/List;

    .line 512
    .line 513
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 514
    .line 515
    .line 516
    iput-wide v1, v8, LX/00P;->A02:J

    .line 517
    .line 518
    iput-wide v1, v8, LX/00P;->A04:J

    .line 519
    .line 520
    iput-wide v1, v8, LX/00P;->A07:J

    .line 521
    .line 522
    iput-wide v1, v8, LX/00P;->A05:J

    .line 523
    .line 524
    iput-object v12, v8, LX/00P;->A0D:Ljava/lang/String;

    .line 525
    .line 526
    iput-object v12, v8, LX/00P;->A0E:Ljava/lang/String;

    .line 527
    .line 528
    iput-wide v1, v8, LX/00P;->A06:J

    .line 529
    .line 530
    iput v10, v8, LX/00P;->A00:I

    .line 531
    .line 532
    iput-boolean v9, v8, LX/00P;->A0I:Z

    .line 533
    .line 534
    iput-boolean v6, v8, LX/00P;->A0J:Z

    .line 535
    .line 536
    iput-boolean v11, v8, LX/00P;->A0K:Z

    .line 537
    .line 538
    iput-wide v4, v8, LX/00P;->A03:J

    .line 539
    .line 540
    iput-object v13, v8, LX/00P;->A0C:Ljava/lang/String;

    .line 541
    .line 542
    iput-object v12, v8, LX/00P;->A0F:Ljava/lang/String;

    .line 543
    .line 544
    iget-object v0, v8, LX/00P;->A0P:LX/0BP;

    .line 545
    .line 546
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    check-cast v0, Ljava/lang/String;

    .line 551
    .line 552
    iput-object v0, v8, LX/00P;->A0G:Ljava/lang/String;

    .line 553
    .line 554
    iget-object v0, v8, LX/00P;->A0O:LX/0BP;

    .line 555
    .line 556
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    check-cast v0, Ljava/lang/String;

    .line 561
    .line 562
    iput-object v0, v8, LX/00P;->A0B:Ljava/lang/String;

    .line 563
    .line 564
    iget-object v0, v8, LX/00P;->A0N:LX/0BP;

    .line 565
    .line 566
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    check-cast v0, Ljava/lang/String;

    .line 571
    .line 572
    iput-object v0, v8, LX/00P;->A0A:Ljava/lang/String;

    .line 573
    .line 574
    const/4 v0, 0x1

    .line 575
    iput-boolean v0, v8, LX/00P;->A0H:Z

    .line 576
    .line 577
    invoke-static {v8}, LX/00P;->A00(LX/00P;)V

    .line 578
    .line 579
    .line 580
    goto :goto_4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 581
    :catchall_1
    move-exception v0

    .line 582
    :try_start_a
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 583
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 584
    :catch_0
    :goto_4
    :try_start_c
    monitor-exit v7

    .line 585
    goto/16 :goto_7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 586
    .line 587
    :catchall_2
    move-exception v0

    .line 588
    :try_start_d
    monitor-exit v7

    .line 589
    goto/16 :goto_6

    .line 590
    .line 591
    :cond_d
    if-eqz v6, :cond_10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 592
    .line 593
    :try_start_e
    iget-object v2, v5, LX/00T;->A03:LX/00P;

    .line 594
    .line 595
    iget-boolean v1, v4, LX/00U;->A03:Z

    .line 596
    .line 597
    iget-boolean v0, v4, LX/00U;->A04:Z

    .line 598
    .line 599
    iput-boolean v1, v2, LX/00P;->A0I:Z

    .line 600
    .line 601
    iput-boolean v0, v2, LX/00P;->A0J:Z

    .line 602
    .line 603
    invoke-static {v2}, LX/00P;->A00(LX/00P;)V

    .line 604
    .line 605
    .line 606
    goto :goto_7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 607
    :catchall_3
    :try_start_f
    move-exception v0

    .line 608
    monitor-exit v8

    .line 609
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 610
    :catchall_4
    move-exception v0

    .line 611
    :try_start_10
    monitor-exit v4

    .line 612
    goto :goto_6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 613
    :pswitch_1
    :try_start_11
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 614
    .line 615
    iput-object v0, v3, LX/00W;->A02:Ljava/lang/Integer;

    .line 616
    .line 617
    goto :goto_7

    .line 618
    :pswitch_2
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 619
    .line 620
    iput-object v0, v3, LX/00W;->A02:Ljava/lang/Integer;

    .line 621
    .line 622
    goto :goto_7

    .line 623
    :pswitch_3
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 624
    .line 625
    iput-object v0, v3, LX/00W;->A02:Ljava/lang/Integer;

    .line 626
    .line 627
    goto :goto_7

    .line 628
    :pswitch_4
    sget-object v0, LX/050;->A01:Ljava/lang/Integer;

    .line 629
    .line 630
    iput-object v0, v3, LX/00W;->A02:Ljava/lang/Integer;

    .line 631
    .line 632
    if-eqz p1, :cond_10

    .line 633
    .line 634
    monitor-enter v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 635
    :try_start_12
    iget-boolean v7, v4, LX/00V;->A04:Z

    .line 636
    .line 637
    iget-boolean v0, v4, LX/00V;->A01:Z

    .line 638
    .line 639
    if-nez v0, :cond_e

    .line 640
    .line 641
    const/4 v0, 0x1

    .line 642
    iput-boolean v0, v4, LX/00V;->A01:Z

    .line 643
    .line 644
    iget-object v0, v4, LX/00U;->A02:LX/00T;

    .line 645
    .line 646
    iget-object v0, v0, LX/00T;->A00:LX/00R;

    .line 647
    .line 648
    check-cast v0, LX/00S;

    .line 649
    .line 650
    iget-object v6, v0, LX/00S;->A00:LX/00O;

    .line 651
    .line 652
    monitor-enter v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 653
    :try_start_13
    iget-object v0, v6, LX/00O;->A06:LX/09B;

    .line 654
    .line 655
    iget-object v5, v0, LX/09B;->A04:LX/05J;

    .line 656
    .line 657
    const-string v0, "Did you call SessionManager.init()?"

    .line 658
    .line 659
    invoke-static {v5, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 660
    .line 661
    .line 662
    iget-object v0, v5, LX/05J;->A01:LX/07W;

    .line 663
    .line 664
    iget-object v1, v0, LX/07W;->A01:Ljava/io/File;

    .line 665
    .line 666
    new-instance v0, LX/03c;

    .line 667
    .line 668
    invoke-direct {v0, v1}, LX/03c;-><init>(Ljava/io/File;)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v0}, LX/03c;->A02()C

    .line 672
    .line 673
    .line 674
    const/4 v2, 0x0

    .line 675
    sput-boolean v2, LX/00O;->A0B:Z

    .line 676
    .line 677
    iget-object v1, v6, LX/00O;->A03:LX/03K;

    .line 678
    .line 679
    sget-object v0, LX/02m;->A03:LX/02m;

    .line 680
    .line 681
    invoke-interface {v1, v0, v6}, LX/03K;->APi(LX/02m;LX/08p;)V

    .line 682
    .line 683
    .line 684
    sget-object v0, LX/07i;->A06:LX/07i;

    .line 685
    .line 686
    invoke-virtual {v5, v0}, LX/05J;->A02(LX/07i;)V

    .line 687
    .line 688
    .line 689
    iput-boolean v2, v6, LX/00O;->A01:Z

    .line 690
    .line 691
    goto :goto_5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 692
    :catchall_5
    :try_start_14
    move-exception v0

    .line 693
    monitor-exit v6

    .line 694
    throw v0

    .line 695
    :goto_5
    monitor-exit v6

    .line 696
    :cond_e
    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 697
    :try_start_15
    iget-object v2, v4, LX/00V;->A06:Ljava/lang/Object;

    .line 698
    .line 699
    monitor-enter v2

    .line 700
    if-eqz v7, :cond_f
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 701
    .line 702
    :try_start_16
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 703
    .line 704
    .line 705
    move-result-wide v5

    .line 706
    iget-wide v0, v4, LX/00U;->A00:J

    .line 707
    .line 708
    sub-long/2addr v5, v0

    .line 709
    iget-object v0, v4, LX/00U;->A02:LX/00T;

    .line 710
    .line 711
    iget-object v1, v0, LX/00T;->A03:LX/00P;

    .line 712
    .line 713
    iput-wide v5, v1, LX/00P;->A08:J

    .line 714
    .line 715
    invoke-static {v1}, LX/00P;->A00(LX/00P;)V

    .line 716
    .line 717
    .line 718
    const/4 v0, 0x0

    .line 719
    iput-boolean v0, v1, LX/00P;->A0H:Z

    .line 720
    .line 721
    :cond_f
    monitor-exit v2

    .line 722
    goto :goto_7

    .line 723
    :catchall_6
    move-exception v0

    .line 724
    monitor-exit v2

    .line 725
    goto :goto_6
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 726
    :catchall_7
    move-exception v0

    .line 727
    :try_start_17
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    .line 728
    :goto_6
    :try_start_18
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 729
    :cond_10
    :goto_7
    :pswitch_5
    monitor-exit v3

    .line 730
    return-void

    .line 731
    :catchall_8
    move-exception v0

    .line 732
    monitor-exit v3

    .line 733
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
