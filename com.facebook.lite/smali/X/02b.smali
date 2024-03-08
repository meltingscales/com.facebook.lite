.class public final LX/02b;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:J

.field public final A01:LX/01g;

.field public final A02:Ljava/util/ArrayList;

.field public final A03:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(LX/02a;)V
    .locals 5

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iget-object v3, p1, LX/02a;->A01:LX/01g;

    .line 4
    .line 5
    iput-object v3, p0, LX/02b;->A01:LX/01g;

    .line 6
    .line 7
    iget-object v0, p1, LX/02a;->A02:Ljava/util/ArrayList;

    .line 8
    .line 9
    iput-object v0, p0, LX/02b;->A02:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v0, p1, LX/02a;->A03:Ljava/util/ArrayList;

    .line 12
    .line 13
    iput-object v0, p0, LX/02b;->A03:Ljava/util/ArrayList;

    .line 14
    .line 15
    iget-wide v1, p1, LX/02a;->A00:J

    .line 16
    .line 17
    iput-wide v1, p0, LX/02b;->A00:J

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-wide/16 v3, 0x1

    .line 28
    .line 29
    and-long/2addr v3, v1

    .line 30
    const-wide/16 v1, 0x0

    .line 31
    .line 32
    cmp-long v0, v3, v1

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    const-string v1, "TrustedCaller needs to be configured with at least 1 security check"

    .line 37
    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0

    .line 44
    :cond_0
    return-void
.end method

.method public static A00(Landroid/content/Context;LX/005;LX/02J;LX/02b;)V
    .locals 9

    .line 0
    if-eqz p2, :cond_d

    .line 1
    .line 2
    iget-object v2, p3, LX/02b;->A02:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p2, LX/02J;->A01:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v0, "Missing required Caller Domains "

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, " from caller "

    .line 32
    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    new-instance v0, Ljava/lang/SecurityException;

    .line 44
    .line 45
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw v0

    .line 49
    :cond_0
    const-wide/16 v3, 0x1

    .line 50
    .line 51
    iget-wide v0, p3, LX/02b;->A00:J

    .line 52
    .line 53
    and-long/2addr v3, v0

    .line 54
    const-wide/16 v1, 0x0

    .line 55
    .line 56
    cmp-long v0, v3, v1

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {p2}, LX/02J;->A05()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    :cond_1
    return-void

    .line 75
    :cond_2
    invoke-static {p0}, LX/08d;->A00(Landroid/content/Context;)LX/08d;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    const/4 v2, 0x0

    .line 84
    iget-object v5, v1, LX/08d;->A00:Landroid/content/Context;

    .line 85
    .line 86
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    iget-object v4, v1, LX/08d;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    .line 97
    .line 98
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, LX/0AZ;

    .line 103
    .line 104
    if-nez v3, :cond_3

    .line 105
    .line 106
    iget-object v0, v1, LX/08d;->A01:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-static {v5, v6, v2}, LX/02J;->A02(Landroid/content/Context;Ljava/lang/String;Z)LX/02J;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    new-instance v3, LX/0AZ;

    .line 117
    .line 118
    invoke-direct {v3, v0, v1}, LX/0AZ;-><init>(LX/02J;I)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :cond_3
    :goto_0
    iget-object v0, v3, LX/0AZ;->A00:LX/02J;

    .line 125
    .line 126
    invoke-virtual {v0}, LX/02J;->A04()LX/01p;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    if-nez v1, :cond_4

    .line 131
    .line 132
    const/4 v0, 0x0

    .line 133
    :goto_1
    iget-object v5, p3, LX/02b;->A01:LX/01g;

    .line 134
    .line 135
    if-eqz v5, :cond_6

    .line 136
    .line 137
    invoke-virtual {v5, p2, v0}, LX/01g;->A04(LX/02J;Z)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_6

    .line 142
    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v0, "Caller Identity \'"

    .line 149
    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v0, "\' is not trusted"

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    new-instance v0, Ljava/lang/SecurityException;

    .line 166
    .line 167
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :cond_4
    sget-object v0, LX/01o;->A1H:Ljava/util/Set;

    .line 172
    .line 173
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    goto :goto_1

    .line 178
    :cond_5
    iget-object v0, v1, LX/08d;->A01:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 179
    .line 180
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-static {v5, v6, v2}, LX/02J;->A02(Landroid/content/Context;Ljava/lang/String;Z)LX/02J;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    new-instance v3, LX/0AZ;

    .line 189
    .line 190
    invoke-direct {v3, v0, v1}, LX/0AZ;-><init>(LX/02J;I)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_6
    iget-object v4, p3, LX/02b;->A03:Ljava/util/ArrayList;

    .line 195
    .line 196
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_b

    .line 201
    .line 202
    if-eqz p1, :cond_8

    .line 203
    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {p0, v0}, LX/023;->A02(Landroid/content/Context;Ljava/lang/String;)LX/01p;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    sget-object v0, LX/01o;->A1H:Ljava/util/Set;

    .line 213
    .line 214
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_7

    .line 219
    .line 220
    new-instance v0, LX/08c;

    .line 221
    .line 222
    invoke-direct {v0}, LX/08c;-><init>()V

    .line 223
    .line 224
    .line 225
    :goto_2
    new-instance v7, LX/0Ac;

    .line 226
    .line 227
    invoke-direct {v7, p1, v0}, LX/0Ac;-><init>(LX/005;LX/0Ag;)V

    .line 228
    .line 229
    .line 230
    :goto_3
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 231
    .line 232
    .line 233
    move-result v1

    .line 234
    const/4 v0, 0x1

    .line 235
    if-ne v1, v0, :cond_a

    .line 236
    .line 237
    invoke-virtual {v4, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 238
    .line 239
    .line 240
    move-result-object v3

    .line 241
    check-cast v3, Ljava/lang/String;

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_7
    new-instance v0, LX/08e;

    .line 245
    .line 246
    invoke-direct {v0}, LX/08e;-><init>()V

    .line 247
    .line 248
    .line 249
    goto :goto_2

    .line 250
    :cond_8
    const-class v6, LX/0Ac;

    .line 251
    .line 252
    monitor-enter v6

    .line 253
    :try_start_0
    new-instance v3, LX/006;

    .line 254
    .line 255
    invoke-direct {v3}, LX/006;-><init>()V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    invoke-static {p0, v0}, LX/023;->A02(Landroid/content/Context;Ljava/lang/String;)LX/01p;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    sget-object v0, LX/01o;->A1H:Ljava/util/Set;

    .line 267
    .line 268
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_9

    .line 273
    .line 274
    new-instance v0, LX/08c;

    .line 275
    .line 276
    invoke-direct {v0}, LX/08c;-><init>()V

    .line 277
    .line 278
    .line 279
    :goto_4
    new-instance v7, LX/0Ac;

    .line 280
    .line 281
    invoke-direct {v7, v3, v0}, LX/0Ac;-><init>(LX/005;LX/0Ag;)V

    .line 282
    .line 283
    .line 284
    goto :goto_5

    .line 285
    :cond_9
    new-instance v0, LX/08e;

    .line 286
    .line 287
    invoke-direct {v0}, LX/08e;-><init>()V

    .line 288
    .line 289
    .line 290
    goto :goto_4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    :goto_5
    monitor-exit v6

    .line 292
    goto :goto_3

    .line 293
    :goto_6
    :try_start_1
    invoke-virtual {v7, p0, p2, v3}, LX/0Ac;->A00(Landroid/content/Context;LX/02J;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    goto :goto_8
    :try_end_1
    .catch LX/0Aj; {:try_start_1 .. :try_end_1} :catch_1

    .line 297
    :cond_a
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 298
    .line 299
    .line 300
    move-result-object v8

    .line 301
    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_c

    .line 306
    .line 307
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v6

    .line 311
    check-cast v6, Ljava/lang/String;

    .line 312
    .line 313
    :try_start_2
    invoke-virtual {v7, p0, p2, v6}, LX/0Ac;->A00(Landroid/content/Context;LX/02J;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    goto :goto_8
    :try_end_2
    .catch LX/0Aj; {:try_start_2 .. :try_end_2} :catch_0

    .line 317
    :catch_0
    move-exception v3

    .line 318
    iget-object v2, v7, LX/0Ac;->A00:LX/005;

    .line 319
    .line 320
    new-instance v1, Ljava/lang/StringBuilder;

    .line 321
    .line 322
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string v0, "FBPermission \'"

    .line 326
    .line 327
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    const-string v0, "\' was not granted to package \'"

    .line 334
    .line 335
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {p2}, LX/02J;->A05()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v0, "\'"

    .line 346
    .line 347
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    const-string v0, "FbPermission"

    .line 355
    .line 356
    invoke-interface {v2, v0, v1, v3}, LX/005;->AXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 357
    .line 358
    .line 359
    goto :goto_7

    .line 360
    :cond_b
    :goto_8
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 361
    .line 362
    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_1

    .line 365
    .line 366
    if-nez v5, :cond_1

    .line 367
    .line 368
    const-string v1, "Calling app is not the same package, and no other identity checks were performed."

    .line 369
    .line 370
    new-instance v0, Ljava/lang/SecurityException;

    .line 371
    .line 372
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw v0

    .line 376
    :catch_1
    move-exception v2

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    .line 378
    .line 379
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .line 381
    .line 382
    const-string v0, "Missing or unable to evaluate FbPermission \'"

    .line 383
    .line 384
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v0, "\' from caller "

    .line 391
    .line 392
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    new-instance v1, Ljava/lang/SecurityException;

    .line 403
    .line 404
    invoke-direct {v1, v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 405
    .line 406
    .line 407
    throw v1

    .line 408
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 409
    .line 410
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 411
    .line 412
    .line 413
    const-string v0, "Missing at least one required FBPermission (of multiple defined) "

    .line 414
    .line 415
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    const-string v0, " from caller "

    .line 422
    .line 423
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    new-instance v1, Ljava/lang/SecurityException;

    .line 434
    .line 435
    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 436
    .line 437
    .line 438
    throw v1

    .line 439
    :catchall_0
    move-exception v1

    .line 440
    monitor-exit v6

    .line 441
    throw v1

    .line 442
    :cond_d
    const-string v1, "Invalid Caller Identity (null)"

    .line 443
    .line 444
    new-instance v0, Ljava/lang/SecurityException;

    .line 445
    .line 446
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    throw v0
.end method


# virtual methods
.method public final A01(Landroid/content/Context;Landroid/content/Intent;LX/005;)V
    .locals 7

    .line 0
    const-wide/16 v3, 0x10

    .line 1
    .line 2
    iget-wide v1, p0, LX/02b;->A00:J

    .line 3
    .line 4
    and-long/2addr v3, v1

    .line 5
    const-wide/16 v5, 0x0

    .line 6
    .line 7
    cmp-long v0, v3, v5

    .line 8
    .line 9
    if-eqz v0, :cond_6

    .line 10
    .line 11
    const v3, 0x7fffffff

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-static {p1, p2, p3, v3}, LX/022;->A00(Landroid/content/Context;Landroid/content/Intent;LX/005;I)LX/02J;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    if-eqz v5, :cond_1

    .line 21
    .line 22
    const-wide/16 v3, 0x20

    .line 23
    .line 24
    and-long/2addr v1, v3

    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    cmp-long v0, v1, v3

    .line 28
    .line 29
    if-nez v0, :cond_2

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eq v1, v0, :cond_2

    .line 40
    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    iget v2, v5, LX/02J;->A00:I

    .line 46
    .line 47
    if-eq v0, v2, :cond_2

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v0, "Uid "

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v0, " from PI not equal to uid "

    .line 63
    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, " from binder data"

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz p3, :cond_1

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_1

    .line 90
    .line 91
    invoke-interface {p3, v1}, LX/005;->AXW(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    .line 95
    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    move-object v0, p1

    .line 99
    check-cast v0, Landroid/app/Activity;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-eqz v0, :cond_3

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    const/4 v0, 0x1

    .line 112
    invoke-static {p1, v1, v0}, LX/02J;->A02(Landroid/content/Context;Ljava/lang/String;Z)LX/02J;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    :cond_2
    :goto_1
    invoke-static {p1, p3, v5, p0}, LX/02b;->A00(Landroid/content/Context;LX/005;LX/02J;LX/02b;)V

    .line 117
    .line 118
    .line 119
    return-void

    .line 120
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    if-ne v1, v0, :cond_5

    .line 129
    .line 130
    const-string v1, "This method must be called on behalf of an IPC transaction from binder thread."

    .line 131
    .line 132
    if-eqz p3, :cond_4

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_4

    .line 139
    .line 140
    invoke-interface {p3, v1}, LX/005;->AXW(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :cond_4
    const/4 v5, 0x0

    .line 144
    :goto_2
    if-nez v5, :cond_2

    .line 145
    .line 146
    const-string v1, "AppIdentity not found for caller"

    .line 147
    .line 148
    if-eqz p3, :cond_2

    .line 149
    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_2

    .line 155
    .line 156
    invoke-interface {p3, v1}, LX/005;->AXW(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    invoke-static {p1, v0}, LX/02J;->A00(Landroid/content/Context;I)LX/02J;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    goto :goto_2

    .line 169
    :cond_6
    const-wide/16 v3, 0x8

    .line 170
    .line 171
    and-long/2addr v3, v1

    .line 172
    cmp-long v0, v3, v5

    .line 173
    .line 174
    const v3, 0xea60

    .line 175
    .line 176
    .line 177
    if-eqz v0, :cond_0

    .line 178
    .line 179
    const v3, 0x5265c00

    .line 180
    .line 181
    .line 182
    goto/16 :goto_0
.end method

.method public final A02(Landroid/content/Context;Landroid/content/Intent;LX/005;)Z
    .locals 3

    .line 0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, LX/02b;->A01(Landroid/content/Context;Landroid/content/Intent;LX/005;)V

    .line 1
    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    return v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    if-eqz p3, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    const-string v2, "Cannot trust caller"

    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v0, "TrustedCaller"

    .line 21
    .line 22
    invoke-interface {p3, v0, v2, v1}, LX/005;->AXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    return v0
.end method
