.class public Lcom/facebook/lite/ClientApplicationSplittedShell;
.super Landroid/app/Application;
.source ""


# instance fields
.field public A00:LX/003;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 1
    .line 2
    .line 3
    return-void
.end method

.method private A00()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/facebook/lite/ClientApplicationSplittedShell;->A00:LX/003;

    .line 1
    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    :try_start_0
    const-string v0, "com.facebook.lite.LeanClientApplication"

    .line 5
    .line 6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v4

    .line 10
    const/4 v3, 0x1

    .line 11
    new-array v1, v3, [Ljava/lang/Class;

    .line 12
    .line 13
    const-class v0, Landroid/app/Application;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    aput-object v0, v1, v2

    .line 17
    .line 18
    invoke-virtual {v4, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-array v0, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object p0, v0, v2

    .line 25
    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, LX/003;

    .line 31
    .line 32
    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    new-instance v0, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :goto_0
    iput-object v0, p0, Lcom/facebook/lite/ClientApplicationSplittedShell;->A00:LX/003;

    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public static A01(Ljava/lang/String;)V
    .locals 2

    .line 0
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 1
    .line 2
    .line 3
    move-result-object v1

    .line 4
    const-string v0, "ClientApplicationSplittedShell."

    .line 5
    .line 6
    invoke-static {v0, p0, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 12

    .line 0
    const-string v0, "attachBaseContext"

    .line 1
    .line 2
    invoke-static {v0}, Lcom/facebook/lite/ClientApplicationSplittedShell;->A01(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    const-string v2, "275254692598279"

    .line 9
    .line 10
    invoke-static {p0}, LX/0A8;->A00(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {p0}, LX/0AB;->A00(Landroid/app/Application;)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v0, "errorreporting"

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p0, v0, v2, v3, v1}, LX/09U;->A00(Landroid/app/Application;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v0, LX/09U;->A05:LX/09U;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    invoke-static {p0, v0, v0, v0, v0}, LX/09U;->A00(Landroid/app/Application;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    sget-object v0, LX/09U;->A05:LX/09U;

    .line 41
    .line 42
    const/4 v5, 0x1

    .line 43
    iput-boolean v5, v0, LX/09U;->A03:Z

    .line 44
    .line 45
    sget-object v0, LX/0A7;->A01:Ljava/lang/Long;

    .line 46
    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 50
    .line 51
    .line 52
    move-result-wide v0

    .line 53
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, LX/0A7;->A01:Ljava/lang/Long;

    .line 58
    .line 59
    :cond_1
    sget-object v0, LX/0A7;->A00:Ljava/lang/Long;

    .line 60
    .line 61
    if-nez v0, :cond_2

    .line 62
    .line 63
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 64
    .line 65
    .line 66
    move-result-wide v0

    .line 67
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    sput-object v0, LX/0A7;->A00:Ljava/lang/Long;

    .line 72
    .line 73
    :cond_2
    sget-object v0, LX/0A7;->A02:Ljava/lang/Long;

    .line 74
    .line 75
    if-nez v0, :cond_3

    .line 76
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    sput-object v0, LX/0A7;->A02:Ljava/lang/Long;

    .line 86
    .line 87
    :cond_3
    invoke-static {}, LX/0A2;->A02()V

    .line 88
    .line 89
    .line 90
    const/16 v0, 0x2a

    .line 91
    .line 92
    invoke-static {p1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_4

    .line 97
    .line 98
    const-string v0, "snapPerfStats"

    .line 99
    .line 100
    invoke-static {v0}, Lcom/facebook/lite/ClientApplicationSplittedShell;->A01(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    new-instance v8, LX/0A6;

    .line 104
    .line 105
    invoke-direct {v8}, LX/0A6;-><init>()V

    .line 106
    .line 107
    .line 108
    sput-object v8, LX/0A5;->A09:LX/0A6;

    .line 109
    .line 110
    :try_start_0
    new-instance v1, LX/021;

    .line 111
    .line 112
    invoke-direct {v1}, LX/021;-><init>()V

    .line 113
    .line 114
    .line 115
    const/16 v0, 0xf

    .line 116
    .line 117
    invoke-virtual {v1, v0}, LX/021;->A7J(I)V

    .line 118
    .line 119
    .line 120
    sput-object v1, LX/0A5;->A01:LX/020;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    .line 121
    .line 122
    invoke-virtual {v8}, LX/0A6;->close()V

    .line 123
    .line 124
    .line 125
    invoke-static {}, LX/04s;->A00()V

    .line 126
    .line 127
    .line 128
    :cond_4
    const-string v0, "initErrorReporter"

    .line 129
    .line 130
    invoke-static {v0}, Lcom/facebook/lite/ClientApplicationSplittedShell;->A01(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    new-instance v8, LX/0A6;

    .line 134
    .line 135
    invoke-direct {v8}, LX/0A6;-><init>()V

    .line 136
    .line 137
    .line 138
    sput-object v8, LX/0A5;->A07:LX/0A6;

    .line 139
    .line 140
    :try_start_1
    sget-object v0, LX/0A7;->A02:Ljava/lang/Long;

    .line 141
    .line 142
    if-nez v0, :cond_5

    .line 143
    .line 144
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    sput-object v0, LX/0A7;->A02:Ljava/lang/Long;

    .line 153
    .line 154
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 155
    .line 156
    .line 157
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    .line 158
    :try_start_2
    invoke-static {p0}, LX/0A8;->A00(Landroid/content/Context;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    sput-object v2, LX/0AB;->A00:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {p0}, LX/0AB;->A00(Landroid/app/Application;)J

    .line 165
    .line 166
    .line 167
    move-result-wide v6

    .line 168
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    sput-object v2, LX/0AB;->A01:Ljava/lang/String;

    .line 173
    .line 174
    new-instance v2, LX/0B6;

    .line 175
    .line 176
    invoke-direct {v2}, LX/0B6;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-static {p0, v2, v0, v1}, LX/09V;->A02(Landroid/app/Application;LX/0B6;J)V

    .line 180
    .line 181
    .line 182
    sget-object v2, LX/09V;->A02:LX/08L;

    .line 183
    .line 184
    if-eqz v2, :cond_6

    .line 185
    .line 186
    const/4 v1, 0x3

    .line 187
    new-instance v0, LX/05L;

    .line 188
    .line 189
    invoke-direct {v0, p0, v1}, LX/05L;-><init>(Landroid/app/Application;I)V

    .line 190
    .line 191
    .line 192
    iput-object v0, v2, LX/08L;->A08:LX/0BP;

    .line 193
    .line 194
    const/4 v1, 0x2

    .line 195
    new-instance v0, LX/05L;

    .line 196
    .line 197
    invoke-direct {v0, p0, v1}, LX/05L;-><init>(Landroid/app/Application;I)V

    .line 198
    .line 199
    .line 200
    iput-object v0, v2, LX/08L;->A05:LX/0BP;

    .line 201
    .line 202
    new-instance v0, LX/05L;

    .line 203
    .line 204
    invoke-direct {v0, p0, v5}, LX/05L;-><init>(Landroid/app/Application;I)V

    .line 205
    .line 206
    .line 207
    iput-object v0, v2, LX/08L;->A04:LX/0BP;

    .line 208
    .line 209
    new-instance v0, LX/05L;

    .line 210
    .line 211
    invoke-direct {v0, p0, v4}, LX/05L;-><init>(Landroid/app/Application;I)V

    .line 212
    .line 213
    .line 214
    iput-object v0, v2, LX/08L;->A09:LX/0BP;

    .line 215
    .line 216
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    new-instance v0, LX/05g;

    .line 221
    .line 222
    invoke-direct {v0, v1}, LX/05g;-><init>(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    iput-object v0, v2, LX/08L;->A06:LX/0BP;

    .line 226
    .line 227
    sget-object v1, LX/07u;->A03:Ljava/util/concurrent/ExecutorService;

    .line 228
    .line 229
    new-instance v0, LX/0AA;

    .line 230
    .line 231
    invoke-direct {v0, p0, v3}, LX/0AA;-><init>(Landroid/app/Application;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 235
    .line 236
    .line 237
    const-string v2, "EarlyErrorReporting"

    .line 238
    .line 239
    const-string v1, "Lacrima init done in EarlyErrorReporting for: %s"

    .line 240
    .line 241
    new-array v0, v5, [Ljava/lang/Object;

    .line 242
    .line 243
    aput-object v3, v0, v4

    .line 244
    .line 245
    invoke-static {v2, v1, v0}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    goto :goto_0

    .line 249
    :cond_6
    const-string v0, "Accessing LacrimaConfigBuilder before Lacrima init"

    .line 250
    .line 251
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_b

    .line 256
    :catch_0
    :try_start_3
    move-exception v2

    .line 257
    invoke-static {p0}, LX/0AB;->A01(Landroid/app/Application;)V

    .line 258
    .line 259
    .line 260
    const-string v1, "Failed earlyErrorReporting init"

    .line 261
    .line 262
    invoke-static {p0, v2, v1}, LX/0AB;->A02(Landroid/app/Application;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const-string v0, "EarlyErrorReporting"

    .line 266
    .line 267
    invoke-static {v0, v1, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    :goto_0
    new-instance v3, LX/08t;

    .line 271
    .line 272
    invoke-direct {v3, p0}, LX/08t;-><init>(Landroid/app/Application;)V

    .line 273
    .line 274
    .line 275
    const-string v2, "client_id"

    .line 276
    .line 277
    sget-boolean v0, LX/09V;->A03:Z

    .line 278
    .line 279
    if-eqz v0, :cond_7

    .line 280
    .line 281
    const-class v0, LX/05o;

    .line 282
    .line 283
    monitor-enter v0

    .line 284
    monitor-exit v0

    .line 285
    invoke-static {}, LX/0AP;->A00()LX/0AP;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    sget-object v1, LX/0AP;->A03:Ljava/lang/Object;

    .line 290
    .line 291
    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 292
    :try_start_4
    iget-object v0, v0, LX/0AP;->A00:Ljava/util/Map;

    .line 293
    .line 294
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    monitor-exit v1

    .line 298
    goto :goto_1

    .line 299
    :catchall_0
    move-exception v0

    .line 300
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 301
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    .line 302
    :cond_7
    :goto_1
    invoke-virtual {v8}, LX/0A6;->close()V

    .line 303
    .line 304
    .line 305
    invoke-static {}, LX/04s;->A00()V

    .line 306
    .line 307
    .line 308
    const/4 v9, 0x2

    .line 309
    new-array v1, v9, [Z

    .line 310
    .line 311
    fill-array-data v1, :array_0

    .line 312
    .line 313
    .line 314
    invoke-static {}, LX/0A2;->A02()V

    .line 315
    .line 316
    .line 317
    const/16 v0, 0x37

    .line 318
    .line 319
    invoke-static {p1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-eqz v0, :cond_8

    .line 324
    .line 325
    new-instance v0, LX/0A6;

    .line 326
    .line 327
    invoke-direct {v0}, LX/0A6;-><init>()V

    .line 328
    .line 329
    .line 330
    sput-object v0, LX/0A5;->A03:LX/0A6;

    .line 331
    .line 332
    invoke-virtual {v0}, LX/0A6;->close()V

    .line 333
    .line 334
    .line 335
    :cond_8
    const-string v0, "createProvidersAndEarlySocket"

    .line 336
    .line 337
    invoke-static {v0}, Lcom/facebook/lite/ClientApplicationSplittedShell;->A01(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    const/4 v3, 0x0

    .line 341
    sget-boolean v0, LX/09f;->A00:Z

    .line 342
    .line 343
    if-nez v0, :cond_1e

    .line 344
    .line 345
    sput-boolean v5, LX/09f;->A00:Z

    .line 346
    .line 347
    sget-boolean v0, LX/0Au;->A03:Z

    .line 348
    .line 349
    if-nez v0, :cond_1d

    .line 350
    .line 351
    sput-boolean v5, LX/0Au;->A03:Z

    .line 352
    .line 353
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    new-instance v0, LX/0Au;

    .line 358
    .line 359
    invoke-direct {v0, p1, v2}, LX/0Au;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    sput-object v0, LX/0Au;->A02:LX/0Au;

    .line 363
    .line 364
    new-instance v7, LX/0A6;

    .line 365
    .line 366
    invoke-direct {v7}, LX/0A6;-><init>()V

    .line 367
    .line 368
    .line 369
    sput-object v7, LX/0A5;->A06:LX/0A6;

    .line 370
    .line 371
    :try_start_6
    invoke-static {}, LX/06g;->A00()LX/06g;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    iget-object v2, v0, LX/06g;->A01:Ljava/lang/String;

    .line 376
    .line 377
    if-nez v2, :cond_9

    .line 378
    .line 379
    const-string v2, "unknown"

    .line 380
    .line 381
    :cond_9
    const-string v0, "unknown"

    .line 382
    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 384
    .line 385
    .line 386
    move-result v0

    .line 387
    if-eqz v0, :cond_a

    .line 388
    .line 389
    invoke-static {}, LX/06k;->A00()Landroid/util/Pair;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 394
    .line 395
    check-cast v0, Ljava/lang/String;

    .line 396
    .line 397
    if-eqz v0, :cond_b

    .line 398
    .line 399
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    :cond_a
    if-eqz v2, :cond_b

    .line 404
    .line 405
    const-string v0, ":"

    .line 406
    .line 407
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    const/4 v0, 0x1

    .line 412
    if-eqz v2, :cond_c

    .line 413
    .line 414
    :cond_b
    const/4 v0, 0x0

    .line 415
    :cond_c
    aput-boolean v0, v1, v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    .line 416
    .line 417
    :try_start_7
    invoke-static {}, LX/09J;->A00()LX/09J;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-virtual {v0}, LX/09J;->A01()Ljava/lang/Integer;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    rsub-int/lit8 v0, v0, 0x2

    .line 430
    .line 431
    if-eqz v0, :cond_d

    .line 432
    .line 433
    goto :goto_2

    .line 434
    :cond_d
    const/4 v0, 0x1

    .line 435
    goto :goto_3

    .line 436
    :goto_2
    const/4 v0, 0x0

    .line 437
    :goto_3
    xor-int/lit8 v11, v0, 0x1

    .line 438
    .line 439
    goto :goto_4
    :try_end_7
    .catch LX/09M; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_a

    .line 440
    :catch_1
    const/4 v11, 0x0

    .line 441
    :goto_4
    :try_start_8
    aput-boolean v11, v1, v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_a

    .line 442
    .line 443
    invoke-virtual {v7}, LX/0A6;->close()V

    .line 444
    .line 445
    .line 446
    aget-boolean v10, v1, v4

    .line 447
    .line 448
    invoke-static {}, LX/09Y;->values()[LX/09Y;

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    array-length v7, v8

    .line 453
    const/4 v2, 0x0

    .line 454
    :goto_5
    if-ge v2, v7, :cond_1c

    .line 455
    .line 456
    aget-object v6, v8, v2

    .line 457
    .line 458
    iget-boolean v0, v6, LX/09Y;->A00:Z

    .line 459
    .line 460
    if-ne v0, v11, :cond_e

    .line 461
    .line 462
    iget-boolean v0, v6, LX/09Y;->A01:Z

    .line 463
    .line 464
    if-ne v0, v10, :cond_e

    .line 465
    .line 466
    iget-boolean v0, v6, LX/09Y;->A02:Z

    .line 467
    .line 468
    if-eqz v0, :cond_f

    .line 469
    .line 470
    new-instance v7, LX/0A6;

    .line 471
    .line 472
    invoke-direct {v7}, LX/0A6;-><init>()V

    .line 473
    .line 474
    .line 475
    sput-object v7, LX/0A5;->A04:LX/0A6;

    .line 476
    .line 477
    goto :goto_6

    .line 478
    :cond_e
    add-int/lit8 v2, v2, 0x1

    .line 479
    .line 480
    goto :goto_5

    .line 481
    :goto_6
    :try_start_9
    new-instance v0, LX/09O;

    .line 482
    .line 483
    invoke-direct {v0, p1}, LX/09O;-><init>(Landroid/content/Context;)V

    .line 484
    .line 485
    .line 486
    new-instance v2, Ljava/util/concurrent/FutureTask;

    .line 487
    .line 488
    invoke-direct {v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 489
    .line 490
    .line 491
    new-instance v0, Ljava/lang/Thread;

    .line 492
    .line 493
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 497
    .line 498
    .line 499
    sput-object v2, LX/09I;->A01:Ljava/util/concurrent/FutureTask;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    .line 500
    .line 501
    invoke-virtual {v7}, LX/0A6;->close()V

    .line 502
    .line 503
    .line 504
    :cond_f
    sput-object v6, LX/09I;->A00:LX/09Y;

    .line 505
    .line 506
    invoke-static {}, LX/04s;->A00()V

    .line 507
    .line 508
    .line 509
    invoke-static {}, LX/0A2;->A02()V

    .line 510
    .line 511
    .line 512
    const/16 v0, 0x38

    .line 513
    .line 514
    invoke-static {p1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 515
    .line 516
    .line 517
    move-result v0

    .line 518
    if-eqz v0, :cond_10

    .line 519
    .line 520
    new-instance v0, LX/0A6;

    .line 521
    .line 522
    invoke-direct {v0}, LX/0A6;-><init>()V

    .line 523
    .line 524
    .line 525
    sput-object v0, LX/0A5;->A03:LX/0A6;

    .line 526
    .line 527
    invoke-virtual {v0}, LX/0A6;->close()V

    .line 528
    .line 529
    .line 530
    :cond_10
    aget-boolean v0, v1, v4

    .line 531
    .line 532
    if-eqz v0, :cond_11

    .line 533
    .line 534
    const-string v8, "397.0.0.11.117"

    .line 535
    .line 536
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 541
    .line 542
    .line 543
    move-result-object v7

    .line 544
    const-string v2, "prev_startup_app_version"

    .line 545
    .line 546
    invoke-interface {v7, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    const-string v6, "new_processes_since_upgrade"

    .line 551
    .line 552
    invoke-interface {v7, v6, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 553
    .line 554
    .line 555
    move-result v3

    .line 556
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v0

    .line 560
    if-eqz v0, :cond_12

    .line 561
    .line 562
    if-ge v3, v9, :cond_11

    .line 563
    .line 564
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    add-int/lit8 v0, v3, 0x1

    .line 569
    .line 570
    invoke-interface {v2, v6, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 571
    .line 572
    .line 573
    move-result-object v0

    .line 574
    :goto_7
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 575
    .line 576
    .line 577
    :cond_11
    new-instance v0, LX/0BV;

    .line 578
    .line 579
    invoke-direct {v0, v4, p0, p0}, LX/0BV;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    new-instance v2, Ljava/util/concurrent/FutureTask;

    .line 583
    .line 584
    invoke-direct {v2, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 585
    .line 586
    .line 587
    new-instance v0, Ljava/lang/Thread;

    .line 588
    .line 589
    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 590
    .line 591
    .line 592
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 593
    .line 594
    .line 595
    sput-object v2, LX/09H;->A00:Ljava/util/concurrent/FutureTask;

    .line 596
    .line 597
    const-string v0, "FbSoLoaderInit"

    .line 598
    .line 599
    invoke-static {v0}, Lcom/facebook/lite/ClientApplicationSplittedShell;->A01(Ljava/lang/String;)V

    .line 600
    .line 601
    .line 602
    new-instance v2, LX/0A6;

    .line 603
    .line 604
    invoke-direct {v2}, LX/0A6;-><init>()V

    .line 605
    .line 606
    .line 607
    sput-object v2, LX/0A5;->A05:LX/0A6;

    .line 608
    .line 609
    const v0, 0x20002

    .line 610
    .line 611
    .line 612
    goto :goto_8

    .line 613
    :cond_12
    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 618
    .line 619
    .line 620
    move-result-object v0

    .line 621
    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 622
    .line 623
    .line 624
    move-result-object v0

    .line 625
    goto :goto_7

    .line 626
    :goto_8
    :try_start_a
    invoke-static {p0, v0}, LX/07E;->A01(Landroid/content/Context;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 627
    .line 628
    .line 629
    invoke-virtual {v2}, LX/0A6;->close()V

    .line 630
    .line 631
    .line 632
    invoke-static {}, LX/04s;->A00()V

    .line 633
    .line 634
    .line 635
    :try_start_b
    sget-object v2, LX/07u;->A02:Ljava/util/concurrent/ExecutorService;

    .line 636
    .line 637
    new-instance v0, LX/0A9;

    .line 638
    .line 639
    invoke-direct {v0, p0}, LX/0A9;-><init>(Landroid/app/Application;)V

    .line 640
    .line 641
    .line 642
    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 643
    .line 644
    .line 645
    goto :goto_9
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    .line 646
    :catch_2
    move-exception v2

    .line 647
    const-string v0, "Failed earlyNativeInit"

    .line 648
    .line 649
    invoke-static {p0, v2, v0}, LX/0AB;->A02(Landroid/app/Application;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 650
    .line 651
    .line 652
    :goto_9
    const-string v0, "ClientApplicationSplittedShell.secondaryDexLoad"

    .line 653
    .line 654
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    :try_start_c
    new-instance v11, LX/0A6;

    .line 658
    .line 659
    invoke-direct {v11}, LX/0A6;-><init>()V

    .line 660
    .line 661
    .line 662
    sput-object v11, LX/0A5;->A02:LX/0A6;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 663
    .line 664
    :try_start_d
    aget-boolean v0, v1, v4

    .line 665
    .line 666
    if-eqz v0, :cond_15

    .line 667
    .line 668
    aget-boolean v0, v1, v5

    .line 669
    .line 670
    if-eqz v0, :cond_13

    .line 671
    .line 672
    invoke-static {}, LX/0A2;->A02()V

    .line 673
    .line 674
    .line 675
    const/16 v0, 0xa

    .line 676
    .line 677
    invoke-static {p1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 678
    .line 679
    .line 680
    move-result v0

    .line 681
    if-nez v0, :cond_15

    .line 682
    .line 683
    :cond_13
    invoke-static {}, LX/0A2;->A02()V

    .line 684
    .line 685
    .line 686
    const/16 v0, 0x9

    .line 687
    .line 688
    invoke-static {p1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 689
    .line 690
    .line 691
    move-result v10

    .line 692
    invoke-static {p1, v0, v4}, LX/0A2;->A04(Landroid/content/Context;IZ)V

    .line 693
    .line 694
    .line 695
    if-nez v10, :cond_14

    .line 696
    .line 697
    goto :goto_a

    .line 698
    :cond_14
    const/4 v3, 0x0

    .line 699
    goto :goto_b

    .line 700
    :cond_15
    const/4 v3, 0x0

    .line 701
    const/4 v10, 0x0

    .line 702
    goto :goto_b

    .line 703
    :goto_a
    invoke-static {}, LX/0A2;->A02()V

    .line 704
    .line 705
    .line 706
    const/16 v0, 0x8

    .line 707
    .line 708
    invoke-static {p1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 709
    .line 710
    .line 711
    move-result v3

    .line 712
    invoke-static {p1, v0, v4}, LX/0A2;->A04(Landroid/content/Context;IZ)V

    .line 713
    .line 714
    .line 715
    :goto_b
    aget-boolean v9, v1, v4

    .line 716
    .line 717
    new-instance v8, LX/09F;

    .line 718
    .line 719
    invoke-direct {v8, p0}, LX/09F;-><init>(Lcom/facebook/lite/ClientApplicationSplittedShell;)V

    .line 720
    .line 721
    .line 722
    new-instance v2, LX/092;

    .line 723
    .line 724
    invoke-direct {v2, p0}, LX/092;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 725
    .line 726
    .line 727
    :try_start_e
    const-string v0, "metadata.txt"

    .line 728
    .line 729
    invoke-virtual {v2, v0}, LX/092;->AUk(Ljava/lang/String;)Ljava/io/InputStream;

    .line 730
    .line 731
    .line 732
    move-result-object v0

    .line 733
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 734
    .line 735
    .line 736
    :try_start_f
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 737
    .line 738
    .line 739
    move-result-object v0

    .line 740
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 741
    .line 742
    const-string v0, "dex"

    .line 743
    .line 744
    new-instance v7, Ljava/io/File;

    .line 745
    .line 746
    invoke-direct {v7, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    invoke-static {p0, v2, v7}, LX/09q;->A00(Landroid/content/Context;LX/09k;Ljava/io/File;)LX/09p;

    .line 750
    .line 751
    .line 752
    move-result-object v6

    .line 753
    if-eqz v6, :cond_16

    .line 754
    .line 755
    const-string v2, "dex_lock"

    .line 756
    .line 757
    invoke-static {v7, v2}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 758
    .line 759
    .line 760
    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    .line 761
    :try_start_10
    new-instance v1, LX/0Aw;

    .line 762
    .line 763
    invoke-direct {v1, v0}, LX/0Aw;-><init>(Ljava/io/File;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 764
    .line 765
    .line 766
    :try_start_11
    invoke-interface {v6}, LX/09p;->A3o()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 767
    .line 768
    .line 769
    :try_start_12
    invoke-virtual {v1}, LX/0Aw;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    .line 770
    .line 771
    .line 772
    :try_start_13
    invoke-static {v7, v2}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 773
    .line 774
    .line 775
    move-result-object v0

    .line 776
    new-instance v2, LX/0Aw;

    .line 777
    .line 778
    invoke-direct {v2, v0}, LX/0Aw;-><init>(Ljava/io/File;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 779
    .line 780
    .line 781
    :try_start_14
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 782
    .line 783
    .line 784
    move-result-wide v0

    .line 785
    sput-wide v0, LX/0A4;->A02:J

    .line 786
    .line 787
    invoke-interface {v6, p0, v8, v9}, LX/09p;->AHP(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 788
    .line 789
    .line 790
    :try_start_15
    invoke-virtual {v2}, LX/0Aw;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 791
    .line 792
    .line 793
    :try_start_16
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 794
    .line 795
    .line 796
    move-result-wide v0

    .line 797
    sput-wide v0, LX/0A4;->A01:J

    .line 798
    .line 799
    goto :goto_d
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_7

    .line 800
    :catchall_1
    move-exception v0

    .line 801
    :try_start_17
    invoke-virtual {v2}, LX/0Aw;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 802
    .line 803
    .line 804
    :catchall_2
    :try_start_18
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    .line 805
    :catchall_3
    move-exception v0

    .line 806
    :try_start_19
    invoke-virtual {v1}, LX/0Aw;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 807
    .line 808
    .line 809
    :catchall_4
    :try_start_1a
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    .line 810
    :catchall_5
    move-exception v2

    .line 811
    goto :goto_c

    .line 812
    :catchall_6
    :try_start_1b
    move-exception v2

    .line 813
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 814
    .line 815
    .line 816
    move-result-wide v0

    .line 817
    sput-wide v0, LX/0A4;->A01:J

    .line 818
    .line 819
    :goto_c
    throw v2

    .line 820
    :catch_3
    move-exception v2

    .line 821
    const-string v1, "SecondaryDexLoader"

    .line 822
    .line 823
    const-string v0, "No secondary dex manifest file, trying to start anyway"

    .line 824
    .line 825
    invoke-static {v1, v0, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 826
    .line 827
    .line 828
    :cond_16
    :goto_d
    sget-boolean v0, LX/09W;->A00:Z

    .line 829
    .line 830
    if-eqz v0, :cond_17

    .line 831
    .line 832
    const-string v1, "MDCDClassLoadInstaller"

    .line 833
    .line 834
    const-string v0, "Tried to install MDCD class logger twice"

    .line 835
    .line 836
    invoke-static {v1, v0}, LX/06s;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    :cond_17
    sput-boolean v5, LX/09W;->A00:Z

    .line 840
    .line 841
    invoke-static {}, LX/0A2;->A02()V

    .line 842
    .line 843
    .line 844
    const/16 v0, 0x27

    .line 845
    .line 846
    const/4 v2, 0x0

    .line 847
    invoke-static {p0, v0, v4}, LX/0A2;->A00(Landroid/content/Context;II)I

    .line 848
    .line 849
    .line 850
    move-result v1

    .line 851
    if-lez v1, :cond_18

    .line 852
    .line 853
    new-instance v0, Ljava/util/Random;

    .line 854
    .line 855
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    .line 859
    .line 860
    .line 861
    move-result v0

    .line 862
    if-nez v0, :cond_18

    .line 863
    .line 864
    const/4 v2, 0x1

    .line 865
    :cond_18
    sput-boolean v2, LX/09W;->A01:Z

    .line 866
    .line 867
    if-eqz v2, :cond_19

    .line 868
    .line 869
    invoke-static {p0}, LX/07Y;->A00(Landroid/content/Context;)LX/07Y;

    .line 870
    .line 871
    .line 872
    move-result-object v0

    .line 873
    new-instance v1, LX/0AF;

    .line 874
    .line 875
    invoke-direct {v1}, LX/0AF;-><init>()V

    .line 876
    .line 877
    .line 878
    iget-object v0, v0, LX/07Y;->A06:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 879
    .line 880
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 881
    .line 882
    .line 883
    :cond_19
    if-nez v10, :cond_1a

    .line 884
    .line 885
    if-eqz v3, :cond_1b

    .line 886
    .line 887
    :cond_1a
    new-instance v1, LX/09n;

    .line 888
    .line 889
    invoke-direct {v1, p0, v3}, LX/09n;-><init>(Landroid/content/Context;Z)V

    .line 890
    .line 891
    .line 892
    new-instance v0, Ljava/lang/Thread;

    .line 893
    .line 894
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 898
    .line 899
    .line 900
    :cond_1b
    :try_start_1c
    invoke-virtual {v11}, LX/0A6;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_4

    .line 901
    .line 902
    .line 903
    invoke-static {}, LX/04s;->A00()V

    .line 904
    .line 905
    .line 906
    invoke-direct {p0}, Lcom/facebook/lite/ClientApplicationSplittedShell;->A00()V

    .line 907
    .line 908
    .line 909
    invoke-static {}, LX/04s;->A00()V

    .line 910
    .line 911
    .line 912
    return-void

    .line 913
    :catchall_7
    move-exception v0

    .line 914
    :try_start_1d
    invoke-virtual {v11}, LX/0A6;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 915
    .line 916
    .line 917
    :catchall_8
    :try_start_1e
    throw v0
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_4

    .line 918
    :catch_4
    move-exception v1

    .line 919
    new-instance v0, Ljava/lang/RuntimeException;

    .line 920
    .line 921
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 922
    .line 923
    .line 924
    throw v0

    .line 925
    :catchall_9
    move-exception v0

    .line 926
    :try_start_1f
    invoke-virtual {v2}, LX/0A6;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_c

    .line 927
    .line 928
    .line 929
    throw v0

    .line 930
    :cond_1c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 931
    .line 932
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 933
    .line 934
    .line 935
    throw v0

    .line 936
    :catchall_a
    move-exception v0

    .line 937
    :try_start_20
    invoke-virtual {v7}, LX/0A6;->close()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    .line 938
    .line 939
    .line 940
    throw v0

    .line 941
    :cond_1d
    const-string v0, "LeanAndroidSharedPrefsProvider was already initialized"

    .line 942
    .line 943
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 944
    .line 945
    .line 946
    move-result-object v0

    .line 947
    throw v0

    .line 948
    :cond_1e
    const-string v0, "LeanMockConnectivityProvider was already initialized"

    .line 949
    .line 950
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 951
    .line 952
    .line 953
    move-result-object v0

    .line 954
    throw v0

    .line 955
    :catchall_b
    move-exception v0

    .line 956
    :try_start_21
    invoke-virtual {v8}, LX/0A6;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_c

    .line 957
    .line 958
    .line 959
    :catchall_c
    throw v0

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public final getCacheDir()Ljava/io/File;
    .locals 3

    .line 0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getCacheDir()Ljava/io/File;

    .line 1
    .line 2
    .line 3
    move-result-object v2

    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v2, v0}, LX/08H;->A04(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    sget-boolean v0, LX/06C;->A00:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const-string v0, "cache/browser_proc"

    .line 13
    .line 14
    invoke-static {p0, v0}, LX/000;->A03(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    :cond_0
    return-object v1

    .line 34
    :cond_1
    return-object v2
.end method

.method public final getDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 1
    invoke-static {p1, v0}, LX/08H;->A04(Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, LX/06C;->A00:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "webview"

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "app_browser_proc_webview"

    .line 17
    .line 18
    invoke-static {p0, v0}, LX/000;->A03(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 23
    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public final getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/facebook/lite/ClientApplicationSplittedShell;->A00:LX/003;

    .line 1
    .line 2
    if-eqz v0, :cond_0

    .line 3
    .line 4
    invoke-interface {v0, p1}, LX/003;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public final onCreate()V
    .locals 1

    .line 0
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Lcom/facebook/lite/ClientApplicationSplittedShell;->A00()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/lite/ClientApplicationSplittedShell;->A00:LX/003;

    .line 7
    .line 8
    invoke-interface {v0}, LX/003;->onCreate()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    .line 0
    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    .line 1
    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/lite/ClientApplicationSplittedShell;->A00:LX/003;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, LX/003;->onTrimMemory(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
