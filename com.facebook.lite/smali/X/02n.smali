.class public abstract LX/02n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/07P;


# instance fields
.field public A00:Landroid/app/Application;

.field public A01:LX/06n;

.field public A02:LX/09B;


# direct methods
.method public constructor <init>(Landroid/app/Application;LX/06n;LX/09B;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/02n;->A00:Landroid/app/Application;

    .line 4
    .line 5
    iput-object p3, p0, LX/02n;->A02:LX/09B;

    .line 6
    .line 7
    iput-object p2, p0, LX/02n;->A01:LX/06n;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final ACC()Ljava/lang/Integer;
    .locals 1

    .line 0
    sget-object v0, LX/050;->A0s:Ljava/lang/Integer;

    .line 1
    .line 2
    return-object v0
.end method

.method public final AV8(LX/02u;LX/02m;)V
    .locals 17

    .line 0
    const-string v8, "last_first_run"

    .line 1
    .line 2
    sget-object v1, LX/07M;->A3v:LX/05l;

    .line 3
    .line 4
    const-string v0, "275254692598279"

    .line 5
    .line 6
    move-object/from16 v9, p1

    .line 7
    .line 8
    invoke-virtual {v9, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object/from16 v2, p0

    .line 12
    .line 13
    iget-object v11, v2, LX/02n;->A00:Landroid/app/Application;

    .line 14
    .line 15
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    sget-object v0, LX/07M;->A3z:LX/05l;

    .line 20
    .line 21
    invoke-virtual {v9, v0, v7}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v3, LX/07M;->A1L:LX/05m;

    .line 25
    .line 26
    invoke-static {}, LX/06F;->A01()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-long v0, v0

    .line 31
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v9, v3, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 36
    .line 37
    .line 38
    sget-object v3, LX/07M;->A0w:LX/05m;

    .line 39
    .line 40
    invoke-static {}, LX/06F;->A00()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    int-to-long v0, v0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v9, v3, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 50
    .line 51
    .line 52
    sget-object v3, LX/07M;->A2A:LX/05m;

    .line 53
    .line 54
    invoke-static {}, LX/06F;->A01()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    int-to-long v0, v0

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v9, v3, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 64
    .line 65
    .line 66
    sget-object v4, LX/07M;->A13:LX/05m;

    .line 67
    .line 68
    iget-object v6, v2, LX/02n;->A02:LX/09B;

    .line 69
    .line 70
    iget-wide v0, v6, LX/09B;->A01:J

    .line 71
    .line 72
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v9, v4, v3}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 77
    .line 78
    .line 79
    sget-object v5, LX/07M;->A12:LX/05m;

    .line 80
    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 82
    .line 83
    .line 84
    move-result-wide v12

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 86
    .line 87
    .line 88
    move-result-wide v3

    .line 89
    sub-long/2addr v3, v0

    .line 90
    sub-long/2addr v12, v3

    .line 91
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v9, v5, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 96
    .line 97
    .line 98
    const-string v5, "not set"

    .line 99
    .line 100
    :try_start_0
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-static {v3}, LX/02y;->A00(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    sget-object v1, LX/07M;->A5i:LX/05l;

    .line 108
    .line 109
    invoke-virtual {v3, v7}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v9, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 117
    .line 118
    const/16 v0, 0x1d

    .line 119
    .line 120
    if-lt v1, v0, :cond_0

    .line 121
    .line 122
    invoke-static {v3, v9}, LX/031;->A00(Landroid/content/pm/PackageManager;LX/02u;)V

    .line 123
    .line 124
    .line 125
    :cond_0
    const/4 v4, 0x0

    .line 126
    invoke-virtual {v3, v7, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 127
    .line 128
    .line 129
    move-result-object v10

    .line 130
    if-eqz v10, :cond_6

    .line 131
    .line 132
    iget-object v0, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 133
    .line 134
    const/4 v3, 0x1

    .line 135
    if-eqz v0, :cond_2

    .line 136
    .line 137
    iget v1, v10, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 138
    .line 139
    invoke-static {}, LX/06F;->A00()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eq v1, v0, :cond_1

    .line 144
    .line 145
    invoke-static {}, LX/06F;->A00()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-ne v0, v3, :cond_2

    .line 150
    .line 151
    :cond_1
    iget-object v5, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 152
    .line 153
    :cond_2
    sget-object v3, LX/07M;->A11:LX/05m;

    .line 154
    .line 155
    iget-wide v0, v10, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 156
    .line 157
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v9, v3, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 162
    .line 163
    .line 164
    sget-object v3, LX/07M;->A14:LX/05m;

    .line 165
    .line 166
    iget-wide v0, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 167
    .line 168
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v9, v3, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 173
    .line 174
    .line 175
    sget-object v12, LX/07M;->A3x:LX/05l;

    .line 176
    .line 177
    iget-wide v0, v10, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 178
    .line 179
    new-instance v13, Ljava/util/Date;

    .line 180
    .line 181
    invoke-direct {v13, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 182
    .line 183
    .line 184
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 185
    .line 186
    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss.000ZZZZZ"

    .line 187
    .line 188
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 189
    .line 190
    invoke-direct {v0, v1, v14}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v13}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v9, v12, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-wide v0, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 201
    .line 202
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v9, v3, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 207
    .line 208
    .line 209
    iget-object v12, v2, LX/02n;->A01:LX/06n;

    .line 210
    .line 211
    if-eqz v12, :cond_6

    .line 212
    .line 213
    const-string v2, "0"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    .line 215
    :try_start_1
    iget-object v0, v12, LX/06n;->A00:Landroid/content/SharedPreferences;

    .line 216
    .line 217
    invoke-interface {v0, v8, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    goto :goto_0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 222
    :catch_0
    :try_start_2
    const-string v1, "lacrima"

    .line 223
    .line 224
    const-string v0, "Failed to read from SharedPreferences"

    .line 225
    .line 226
    invoke-static {v1, v0}, LX/06s;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-static {}, LX/08w;->A00()V

    .line 230
    .line 231
    .line 232
    :goto_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 233
    .line 234
    .line 235
    move-result-wide v15

    .line 236
    iget-wide v2, v10, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 237
    .line 238
    iget-wide v0, v10, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    .line 239
    .line 240
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    .line 241
    .line 242
    .line 243
    move-result-wide v13

    .line 244
    cmp-long v10, v13, v15

    .line 245
    .line 246
    if-lez v10, :cond_5

    .line 247
    .line 248
    cmp-long v10, v13, v2

    .line 249
    .line 250
    const/4 v3, 0x0

    .line 251
    if-nez v10, :cond_3

    .line 252
    .line 253
    const/4 v3, 0x1

    .line 254
    :cond_3
    cmp-long v2, v13, v0

    .line 255
    .line 256
    if-nez v2, :cond_4

    .line 257
    .line 258
    const/4 v4, 0x1

    .line 259
    :cond_4
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    iget-object v0, v12, LX/06n;->A00:Landroid/content/SharedPreferences;

    .line 264
    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    invoke-interface {v0, v8, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 274
    .line 275
    .line 276
    sget-object v0, LX/07M;->A0J:LX/05n;

    .line 277
    .line 278
    invoke-virtual {v9, v0, v3}, LX/02u;->A01(LX/05n;Z)V

    .line 279
    .line 280
    .line 281
    sget-object v0, LX/07M;->A0K:LX/05n;

    .line 282
    .line 283
    invoke-virtual {v9, v0, v4}, LX/02u;->A01(LX/05n;Z)V

    .line 284
    .line 285
    .line 286
    goto :goto_1

    .line 287
    :cond_5
    sget-object v0, LX/07M;->A0J:LX/05n;

    .line 288
    .line 289
    invoke-virtual {v9, v0, v4}, LX/02u;->A01(LX/05n;Z)V

    .line 290
    .line 291
    .line 292
    sget-object v0, LX/07M;->A0K:LX/05n;

    .line 293
    .line 294
    invoke-virtual {v9, v0, v4}, LX/02u;->A01(LX/05n;Z)V

    .line 295
    .line 296
    .line 297
    goto :goto_1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 298
    :catch_1
    invoke-static {}, LX/08w;->A00()V

    .line 299
    .line 300
    .line 301
    :cond_6
    :goto_1
    sget-object v0, LX/07M;->A6q:LX/05l;

    .line 302
    .line 303
    invoke-virtual {v9, v0, v5}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    sget-object v4, LX/07M;->A3R:LX/05l;

    .line 307
    .line 308
    const-string v3, "0"

    .line 309
    .line 310
    :try_start_3
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    const-string v0, "android_id"

    .line 315
    .line 316
    invoke-static {v1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    if-eqz v0, :cond_7

    .line 321
    .line 322
    move-object v3, v0

    .line 323
    goto :goto_2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 324
    :catch_2
    move-exception v2

    .line 325
    invoke-static {}, LX/08w;->A00()V

    .line 326
    .line 327
    .line 328
    const-string v1, "lacrima"

    .line 329
    .line 330
    const-string v0, "Failed to fetch the constant field ANDROID_ID"

    .line 331
    .line 332
    invoke-static {v1, v0, v2}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 333
    .line 334
    .line 335
    :cond_7
    :goto_2
    invoke-virtual {v9, v4, v3}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    sget-object v1, LX/07M;->A5O:LX/05l;

    .line 339
    .line 340
    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    if-eqz v0, :cond_a

    .line 345
    .line 346
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    :goto_3
    invoke-virtual {v9, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object v4, v6, LX/09B;->A08:Ljava/lang/String;

    .line 354
    .line 355
    sget-object v3, LX/07M;->A40:LX/05l;

    .line 356
    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    .line 358
    .line 359
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .line 364
    .line 365
    const-string v1, ""

    .line 366
    .line 367
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-nez v0, :cond_8

    .line 372
    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    .line 374
    .line 375
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .line 377
    .line 378
    const-string v0, ":"

    .line 379
    .line 380
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    :cond_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    invoke-virtual {v9, v3, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    sget-object v1, LX/07M;->A0E:LX/05n;

    .line 401
    .line 402
    invoke-static {}, LX/06F;->A02()Z

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    invoke-virtual {v9, v1, v0}, LX/02u;->A01(LX/05n;Z)V

    .line 407
    .line 408
    .line 409
    sget-object v1, LX/07M;->A2Q:LX/05m;

    .line 410
    .line 411
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    invoke-virtual {v9, v1, v0}, LX/02u;->A02(LX/05m;I)V

    .line 416
    .line 417
    .line 418
    sget-object v5, LX/07M;->A1a:LX/05m;

    .line 419
    .line 420
    const/4 v1, 0x1

    .line 421
    new-array v4, v1, [Ljava/lang/String;

    .line 422
    .line 423
    const-string v0, "PPid:"

    .line 424
    .line 425
    const/4 v3, 0x0

    .line 426
    aput-object v0, v4, v3

    .line 427
    .line 428
    new-array v2, v1, [J

    .line 429
    .line 430
    const-string v1, "/proc/self/status"

    .line 431
    .line 432
    sget-object v0, LX/06k;->A00:LX/06j;

    .line 433
    .line 434
    invoke-interface {v0, v1, v2, v4}, LX/06j;->AWR(Ljava/lang/String;[J[Ljava/lang/String;)Z

    .line 435
    .line 436
    .line 437
    aget-wide v1, v2, v3

    .line 438
    .line 439
    long-to-int v0, v1

    .line 440
    invoke-virtual {v9, v5, v0}, LX/02u;->A02(LX/05m;I)V

    .line 441
    .line 442
    .line 443
    sget-object v1, LX/07M;->A0N:LX/05n;

    .line 444
    .line 445
    invoke-static {}, LX/06F;->A03()Z

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    invoke-virtual {v9, v1, v0}, LX/02u;->A01(LX/05n;Z)V

    .line 450
    .line 451
    .line 452
    sget-object v1, LX/07M;->A9E:LX/05l;

    .line 453
    .line 454
    invoke-virtual {v11}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    if-nez v0, :cond_9

    .line 459
    .line 460
    const-string v0, "n/a"

    .line 461
    .line 462
    :goto_4
    invoke-virtual {v9, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    return-void

    .line 466
    :cond_9
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 467
    .line 468
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    goto :goto_4

    .line 473
    :cond_a
    const-string v0, "n/a"

    .line 474
    .line 475
    goto :goto_3
.end method
