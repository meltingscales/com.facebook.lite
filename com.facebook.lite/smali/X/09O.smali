.class public final LX/09O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final A00:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/09O;->A00:Landroid/content/Context;

    .line 4
    .line 5
    return-void
.end method

.method public static A00(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;
    .locals 4

    .line 0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    invoke-static {v0}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v0, "_dns_cache"

    .line 9
    .line 10
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-static {p1}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v0, "/"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v0, ""

    .line 36
    .line 37
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {p1, v0}, LX/09d;->A01(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 13

    .line 0
    new-instance v2, LX/09X;

    .line 1
    .line 2
    invoke-direct {v2}, LX/09X;-><init>()V

    .line 3
    .line 4
    .line 5
    iget-object v4, p0, LX/09O;->A00:Landroid/content/Context;

    .line 6
    .line 7
    iput-object v4, v2, LX/09X;->A03:Landroid/content/Context;

    .line 8
    .line 9
    new-instance v0, LX/0A1;

    .line 10
    .line 11
    invoke-direct {v0}, LX/0A1;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, v2, LX/09X;->A04:LX/0A1;

    .line 15
    .line 16
    invoke-static {}, LX/0A2;->A02()V

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x2d

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    invoke-static {v4, v1, v0}, LX/0A2;->A00(Landroid/content/Context;II)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    iput v0, v2, LX/09X;->A00:I

    .line 27
    .line 28
    invoke-static {}, LX/0A2;->A02()V

    .line 29
    .line 30
    .line 31
    const/16 v0, 0x2e

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    invoke-static {v4, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput-boolean v0, v2, LX/09X;->A08:Z

    .line 39
    .line 40
    invoke-static {}, LX/0A2;->A02()V

    .line 41
    .line 42
    .line 43
    const/16 v0, 0x3a

    .line 44
    .line 45
    invoke-static {v4, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iput-boolean v0, v2, LX/09X;->A07:Z

    .line 50
    .line 51
    invoke-static {}, LX/0A2;->A02()V

    .line 52
    .line 53
    .line 54
    const/16 v1, 0x34

    .line 55
    .line 56
    const/4 v0, -0x1

    .line 57
    invoke-static {v4, v1, v0}, LX/0A2;->A00(Landroid/content/Context;II)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    iput v0, v2, LX/09X;->A02:I

    .line 62
    .line 63
    invoke-static {}, LX/0A2;->A02()V

    .line 64
    .line 65
    .line 66
    const/16 v0, 0x39

    .line 67
    .line 68
    invoke-static {v4, v0, v3}, LX/0A2;->A00(Landroid/content/Context;II)I

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    iput v0, v2, LX/09X;->A01:I

    .line 73
    .line 74
    iget-object v0, v2, LX/09X;->A03:Landroid/content/Context;

    .line 75
    .line 76
    if-eqz v0, :cond_15

    .line 77
    .line 78
    iget-object v0, v2, LX/09X;->A04:LX/0A1;

    .line 79
    .line 80
    if-eqz v0, :cond_15

    .line 81
    .line 82
    iget-object v12, v2, LX/09X;->A06:Ljava/util/Map;

    .line 83
    .line 84
    sget-object v4, LX/09a;->A01:LX/09a;

    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    invoke-static {v4, v12, v0, v1}, LX/000;->A0L(Ljava/lang/Object;Ljava/util/Map;J)V

    .line 91
    .line 92
    .line 93
    :try_start_0
    sget-object v7, LX/0Au;->A02:LX/0Au;

    .line 94
    .line 95
    invoke-static {v7}, LX/09Q;->A00(LX/0Au;)LX/09i;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    iget-boolean v0, v2, LX/09X;->A08:Z

    .line 104
    .line 105
    if-eqz v0, :cond_1

    .line 106
    .line 107
    const-string v1, "snaptu_domians_fallback_mapping"

    .line 108
    .line 109
    iget-object v0, v7, LX/0Au;->A00:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    .line 116
    .line 117
    const/4 v0, 0x0

    .line 118
    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    :goto_0
    sput-object v0, LX/04o;->A00:Ljava/util/Map;

    .line 124
    .line 125
    :cond_1
    const/4 v8, 0x0

    .line 126
    if-nez v6, :cond_6

    .line 127
    .line 128
    const-string v5, "snaptu-z.facebook.com"

    .line 129
    .line 130
    const/16 v1, 0x1bb

    .line 131
    .line 132
    new-instance v0, LX/09j;

    .line 133
    .line 134
    invoke-direct {v0, v5, v1}, LX/09j;-><init>(Ljava/lang/String;I)V

    .line 135
    .line 136
    .line 137
    const/16 v9, 0x1388

    .line 138
    .line 139
    new-instance v6, LX/09i;

    .line 140
    .line 141
    invoke-direct {v6, v0, v9}, LX/09i;-><init>(LX/09j;I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v7, LX/0Au;->A00:Landroid/content/Context;

    .line 145
    .line 146
    iget-object v0, v7, LX/0Au;->A01:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v1, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    iget-object v10, v6, LX/09i;->A01:LX/09j;

    .line 157
    .line 158
    iget v5, v10, LX/09j;->A00:I

    .line 159
    .line 160
    const-string v0, "early_socket_connection_port"

    .line 161
    .line 162
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    iget-object v7, v10, LX/09j;->A03:Ljava/lang/String;

    .line 167
    .line 168
    const-string v0, "early_socket_connection_host"

    .line 169
    .line 170
    invoke-interface {v1, v0, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    const-string v0, "early_connection_default_timeout_mills"

    .line 175
    .line 176
    invoke-interface {v1, v0, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    .line 182
    .line 183
    iget-boolean v0, v2, LX/09X;->A08:Z

    .line 184
    .line 185
    if-eqz v0, :cond_5

    .line 186
    .line 187
    iget-object v1, v10, LX/09j;->A02:Ljava/lang/String;

    .line 188
    .line 189
    sget-object v0, LX/04o;->A00:Ljava/util/Map;

    .line 190
    .line 191
    if-eqz v0, :cond_2

    .line 192
    .line 193
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    check-cast v1, Ljava/lang/String;

    .line 198
    .line 199
    if-eqz v1, :cond_2

    .line 200
    .line 201
    new-instance v0, LX/09j;

    .line 202
    .line 203
    invoke-direct {v0, v1, v5}, LX/09j;-><init>(Ljava/lang/String;I)V

    .line 204
    .line 205
    .line 206
    new-instance v5, LX/09i;

    .line 207
    .line 208
    invoke-direct {v5, v0, v9}, LX/09i;-><init>(LX/09j;I)V

    .line 209
    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_2
    const/4 v5, 0x0

    .line 213
    :goto_1
    if-eqz v5, :cond_4

    .line 214
    .line 215
    const/4 v1, 0x2

    .line 216
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 217
    .line 218
    .line 219
    move-result-object v10

    .line 220
    new-instance v0, LX/0BV;

    .line 221
    .line 222
    invoke-direct {v0, v1, v6, v2}, LX/0BV;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 226
    .line 227
    .line 228
    move-result-object v7

    .line 229
    const/4 v1, 0x3

    .line 230
    new-instance v0, LX/0BV;

    .line 231
    .line 232
    invoke-direct {v0, v1, v5, v2}, LX/0BV;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    invoke-interface {v10, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 236
    .line 237
    .line 238
    move-result-object v11
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 239
    :try_start_1
    invoke-interface {v7}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v7

    .line 243
    check-cast v7, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    .line 244
    .line 245
    :try_start_2
    iget v0, v2, LX/09X;->A02:I

    .line 246
    .line 247
    if-gez v0, :cond_3

    .line 248
    .line 249
    invoke-interface {v11}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Ljava/util/List;

    .line 254
    .line 255
    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 256
    .line 257
    .line 258
    goto :goto_6

    .line 259
    :cond_3
    int-to-long v0, v0

    .line 260
    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 261
    .line 262
    invoke-interface {v11, v0, v1, v9}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    check-cast v0, Ljava/util/List;

    .line 267
    .line 268
    goto :goto_2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 269
    :catch_0
    :try_start_3
    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 270
    .line 271
    .line 272
    new-instance v0, Ljava/net/UnknownHostException;

    .line 273
    .line 274
    invoke-direct {v0}, Ljava/net/UnknownHostException;-><init>()V

    .line 275
    .line 276
    .line 277
    goto :goto_3

    .line 278
    :catchall_0
    move-exception v0

    .line 279
    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 280
    .line 281
    .line 282
    :goto_3
    throw v0

    .line 283
    :cond_4
    invoke-static {v7}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    goto :goto_7

    .line 292
    :cond_5
    invoke-static {v7}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 297
    .line 298
    .line 299
    move-result-object v7

    .line 300
    goto :goto_5

    .line 301
    :cond_6
    iget-object v5, v2, LX/09X;->A03:Landroid/content/Context;

    .line 302
    .line 303
    iget-object v9, v6, LX/09i;->A01:LX/09j;

    .line 304
    .line 305
    iget-object v1, v9, LX/09j;->A03:Ljava/lang/String;

    .line 306
    .line 307
    invoke-static {v5}, LX/09P;->A02(Landroid/content/Context;)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    invoke-static {v5, v1, v0}, LX/09O;->A00(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object v7

    .line 315
    iget-boolean v0, v2, LX/09X;->A08:Z

    .line 316
    .line 317
    if-eqz v0, :cond_8

    .line 318
    .line 319
    iget-object v1, v9, LX/09j;->A02:Ljava/lang/String;

    .line 320
    .line 321
    sget-object v0, LX/04o;->A00:Ljava/util/Map;

    .line 322
    .line 323
    if-eqz v0, :cond_7

    .line 324
    .line 325
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v5

    .line 329
    check-cast v5, Ljava/lang/String;

    .line 330
    .line 331
    if-eqz v5, :cond_7

    .line 332
    .line 333
    iget v0, v9, LX/09j;->A00:I

    .line 334
    .line 335
    new-instance v1, LX/09j;

    .line 336
    .line 337
    invoke-direct {v1, v5, v0}, LX/09j;-><init>(Ljava/lang/String;I)V

    .line 338
    .line 339
    .line 340
    iget v0, v6, LX/09i;->A00:I

    .line 341
    .line 342
    new-instance v5, LX/09i;

    .line 343
    .line 344
    invoke-direct {v5, v1, v0}, LX/09i;-><init>(LX/09j;I)V

    .line 345
    .line 346
    .line 347
    goto :goto_4

    .line 348
    :cond_7
    const/4 v5, 0x0

    .line 349
    :goto_4
    if-eqz v5, :cond_9

    .line 350
    .line 351
    iget-object v4, v2, LX/09X;->A03:Landroid/content/Context;

    .line 352
    .line 353
    iget-object v0, v5, LX/09i;->A01:LX/09j;

    .line 354
    .line 355
    iget-object v1, v0, LX/09j;->A03:Ljava/lang/String;

    .line 356
    .line 357
    invoke-static {v4}, LX/09P;->A02(Landroid/content/Context;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    invoke-static {v4, v1, v0}, LX/09O;->A00(Landroid/content/Context;Ljava/lang/String;Z)Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object v4

    .line 365
    goto :goto_7

    .line 366
    :cond_8
    :goto_5
    move-object v5, v8

    .line 367
    goto :goto_7

    .line 368
    :catch_1
    :goto_6
    invoke-interface {v10}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 369
    .line 370
    .line 371
    :cond_9
    :goto_7
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 372
    .line 373
    .line 374
    move-result v0

    .line 375
    if-eqz v0, :cond_a

    .line 376
    .line 377
    sget-object v0, LX/050;->A01:Ljava/lang/Integer;

    .line 378
    .line 379
    new-instance v3, LX/02A;

    .line 380
    .line 381
    invoke-direct {v3, v0, v12}, LX/02A;-><init>(Ljava/lang/Integer;Ljava/util/Map;)V

    .line 382
    .line 383
    .line 384
    return-object v3

    .line 385
    :cond_a
    new-instance v10, LX/04I;

    .line 386
    .line 387
    invoke-direct {v10, v6, v7, v3}, LX/04I;-><init>(LX/09i;Ljava/util/List;Z)V

    .line 388
    .line 389
    .line 390
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-nez v0, :cond_b

    .line 395
    .line 396
    new-instance v8, LX/04I;

    .line 397
    .line 398
    invoke-direct {v8, v5, v4, v3}, LX/04I;-><init>(LX/09i;Ljava/util/List;Z)V

    .line 399
    .line 400
    .line 401
    :cond_b
    sget-object v4, LX/09a;->A02:LX/09a;

    .line 402
    .line 403
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 404
    .line 405
    .line 406
    move-result-wide v0

    .line 407
    invoke-static {v4, v12, v0, v1}, LX/000;->A0L(Ljava/lang/Object;Ljava/util/Map;J)V

    .line 408
    .line 409
    .line 410
    iget-object v5, v2, LX/09X;->A03:Landroid/content/Context;

    .line 411
    .line 412
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 417
    .line 418
    .line 419
    move-result v1

    .line 420
    const/4 v4, 0x1

    .line 421
    if-gtz v1, :cond_d
    :try_end_3
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4

    .line 422
    .line 423
    :try_start_4
    const-string v0, "/sys/devices/system/cpu/"

    .line 424
    .line 425
    new-instance v1, Ljava/io/File;

    .line 426
    .line 427
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    new-instance v0, LX/09N;

    .line 431
    .line 432
    invoke-direct {v0}, LX/09N;-><init>()V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    array-length v0, v0

    .line 440
    if-nez v0, :cond_c

    .line 441
    .line 442
    const/4 v0, -0x1

    .line 443
    goto :goto_8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    .line 444
    :catch_2
    const/4 v0, -0x1

    .line 445
    :cond_c
    :goto_8
    :try_start_5
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    .line 446
    .line 447
    .line 448
    move-result v1

    .line 449
    :cond_d
    const/4 v0, 0x2

    .line 450
    if-ge v1, v0, :cond_e

    .line 451
    .line 452
    const/4 v4, 0x0

    .line 453
    :cond_e
    invoke-static {v5}, LX/09P;->A00(Landroid/content/Context;)Ljava/lang/Integer;

    .line 454
    .line 455
    .line 456
    move-result-object v1

    .line 457
    if-eqz v4, :cond_f

    .line 458
    .line 459
    sget-object v0, LX/050;->A0C:Ljava/lang/Integer;

    .line 460
    .line 461
    if-eq v1, v0, :cond_f

    .line 462
    .line 463
    sget-object v0, LX/09b;->A01:LX/09b;

    .line 464
    .line 465
    :goto_9
    iput-object v0, v2, LX/09X;->A05:LX/09b;

    .line 466
    .line 467
    iget-object v6, v2, LX/09X;->A04:LX/0A1;

    .line 468
    .line 469
    const/4 v5, 0x0

    .line 470
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    const/4 v9, 0x1

    .line 475
    if-eq v0, v3, :cond_11

    .line 476
    .line 477
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 478
    .line 479
    .line 480
    move-result-object v4

    .line 481
    const-wide/16 v0, 0x0

    .line 482
    .line 483
    iget-boolean v7, v2, LX/09X;->A07:Z

    .line 484
    .line 485
    new-instance v3, LX/04J;

    .line 486
    .line 487
    invoke-direct {v3, v10, v0, v1, v7}, LX/04J;-><init>(LX/04I;JZ)V

    .line 488
    .line 489
    .line 490
    goto :goto_a

    .line 491
    :cond_f
    sget-object v0, LX/09b;->A03:LX/09b;

    .line 492
    .line 493
    goto :goto_9

    .line 494
    :goto_a
    const/4 v1, 0x0

    .line 495
    if-eqz v8, :cond_10

    .line 496
    .line 497
    :goto_b
    iget v0, v2, LX/09X;->A00:I

    .line 498
    .line 499
    sub-int/2addr v0, v9

    .line 500
    if-ge v1, v0, :cond_12

    .line 501
    .line 502
    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    add-int/lit8 v1, v1, 0x1

    .line 506
    .line 507
    goto :goto_b

    .line 508
    :cond_10
    :goto_c
    iget v0, v2, LX/09X;->A00:I

    .line 509
    .line 510
    if-ge v1, v0, :cond_13

    .line 511
    .line 512
    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 513
    .line 514
    .line 515
    add-int/lit8 v1, v1, 0x1

    .line 516
    .line 517
    goto :goto_c

    .line 518
    :cond_11
    invoke-virtual {v6, v10}, LX/0A1;->AKV(LX/04I;)LX/029;

    .line 519
    .line 520
    .line 521
    move-result-object v4

    .line 522
    goto :goto_d

    .line 523
    :cond_12
    iget v0, v2, LX/09X;->A01:I

    .line 524
    .line 525
    int-to-long v0, v0

    .line 526
    new-instance v3, LX/04J;

    .line 527
    .line 528
    invoke-direct {v3, v8, v0, v1, v7}, LX/04J;-><init>(LX/04I;JZ)V

    .line 529
    .line 530
    .line 531
    invoke-virtual {v4, v3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    :cond_13
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    .line 535
    .line 536
    .line 537
    move-result-object v1

    .line 538
    new-instance v0, LX/04K;

    .line 539
    .line 540
    invoke-direct {v0, v6, v1}, LX/04K;-><init>(LX/09c;Ljava/util/concurrent/Executor;)V

    .line 541
    .line 542
    .line 543
    invoke-virtual {v0, v4}, LX/04K;->A01(Ljava/util/List;)LX/029;

    .line 544
    .line 545
    .line 546
    move-result-object v4

    .line 547
    :goto_d
    check-cast v4, LX/01J;

    .line 548
    .line 549
    sget-object v3, LX/09a;->A03:LX/09a;

    .line 550
    .line 551
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 552
    .line 553
    .line 554
    move-result-wide v0

    .line 555
    invoke-static {v3, v12, v0, v1}, LX/000;->A0L(Ljava/lang/Object;Ljava/util/Map;J)V

    .line 556
    .line 557
    .line 558
    iget-object v7, v4, LX/01J;->A00:LX/04I;

    .line 559
    .line 560
    iget-object v11, v4, LX/01J;->A01:Ljava/net/Socket;

    .line 561
    .line 562
    invoke-static {v11}, Landroid/os/ParcelFileDescriptor;->fromSocket(Ljava/net/Socket;)Landroid/os/ParcelFileDescriptor;

    .line 563
    .line 564
    .line 565
    move-result-object v4

    .line 566
    if-nez v4, :cond_14

    .line 567
    .line 568
    sget-object v1, LX/050;->A0l:Ljava/lang/Integer;

    .line 569
    .line 570
    const-string v0, "Failed to get fd from EarlySocket."

    .line 571
    .line 572
    invoke-static {v2, v5, v1, v0, v11}, LX/09X;->A00(LX/09X;Ljava/lang/Exception;Ljava/lang/Integer;Ljava/lang/String;Ljava/net/Socket;)LX/02A;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    return-object v3
    :try_end_5
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 577
    :cond_14
    :try_start_6
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    .line 582
    .line 583
    .line 584
    move-result-object v5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_4

    .line 585
    :try_start_7
    sget-object v8, LX/050;->A0C:Ljava/lang/Integer;

    .line 586
    .line 587
    sget-object v9, LX/050;->A00:Ljava/lang/Integer;

    .line 588
    .line 589
    iget-object v6, v2, LX/09X;->A05:LX/09b;

    .line 590
    .line 591
    const-string v10, ""

    .line 592
    .line 593
    new-instance v3, LX/02A;

    .line 594
    .line 595
    invoke-direct/range {v3 .. v12}, LX/02A;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;LX/09b;LX/04I;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/net/Socket;Ljava/util/Map;)V

    .line 596
    .line 597
    .line 598
    return-object v3

    .line 599
    :catch_3
    move-exception v3

    .line 600
    sget-object v1, LX/050;->A0c:Ljava/lang/Integer;

    .line 601
    .line 602
    const-string v0, "Failed to create dupped EarlySocket fd."

    .line 603
    .line 604
    invoke-static {v2, v3, v1, v0, v11}, LX/09X;->A00(LX/09X;Ljava/lang/Exception;Ljava/lang/Integer;Ljava/lang/String;Ljava/net/Socket;)LX/02A;

    .line 605
    .line 606
    .line 607
    move-result-object v3

    .line 608
    return-object v3
    :try_end_7
    .catch Ljava/net/UnknownHostException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_4

    .line 609
    :catch_4
    move-exception v3

    .line 610
    const-string v1, "EarlySocket"

    .line 611
    .line 612
    const-string v0, "Unable to create early socket concurrently."

    .line 613
    .line 614
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    .line 616
    .line 617
    sget-object v9, LX/050;->A0s:Ljava/lang/Integer;

    .line 618
    .line 619
    goto :goto_e

    .line 620
    :catch_5
    move-exception v3

    .line 621
    const-string v1, "EarlySocket"

    .line 622
    .line 623
    const-string v0, "Unable to resolve ip address for early socket."

    .line 624
    .line 625
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    .line 627
    .line 628
    sget-object v9, LX/050;->A0N:Ljava/lang/Integer;

    .line 629
    .line 630
    goto :goto_e

    .line 631
    :catch_6
    move-exception v3

    .line 632
    const-string v1, "EarlySocket"

    .line 633
    .line 634
    const-string v0, "Unable to connect early socket."

    .line 635
    .line 636
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 637
    .line 638
    .line 639
    sget-object v9, LX/050;->A0V:Ljava/lang/Integer;

    .line 640
    .line 641
    :goto_e
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v10

    .line 645
    iget-object v6, v2, LX/09X;->A05:LX/09b;

    .line 646
    .line 647
    sget-object v8, LX/050;->A01:Ljava/lang/Integer;

    .line 648
    .line 649
    const/4 v4, 0x0

    .line 650
    new-instance v3, LX/02A;

    .line 651
    .line 652
    move-object v5, v4

    .line 653
    move-object v7, v4

    .line 654
    move-object v11, v4

    .line 655
    invoke-direct/range {v3 .. v12}, LX/02A;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;LX/09b;LX/04I;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/net/Socket;Ljava/util/Map;)V

    .line 656
    .line 657
    .line 658
    return-object v3

    .line 659
    :cond_15
    const-string v0, "Not all EarlySocketBuilder params were initialized before use."

    .line 660
    .line 661
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 662
    .line 663
    .line 664
    move-result-object v0

    .line 665
    throw v0
.end method
