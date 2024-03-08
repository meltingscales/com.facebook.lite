.class public final LX/08e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/0Ag;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final A2s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    .line 0
    const-string v3, "\'"

    .line 1
    .line 2
    const-string v6, "\' while verifying \'"

    .line 3
    .line 4
    move-object/from16 v12, p1

    .line 5
    .line 6
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v8

    .line 10
    const/4 v9, 0x0

    .line 11
    :try_start_0
    move-object/from16 v4, p2

    .line 12
    .line 13
    invoke-virtual {v12, v4, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    .line 21
    :try_start_1
    const-string v0, "fbpermissions.json"

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 24
    .line 25
    .line 26
    move-result-object v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_8

    .line 27
    :try_start_2
    new-instance v0, Ljava/io/InputStreamReader;

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 30
    .line 31
    .line 32
    new-instance v5, Ljava/io/BufferedReader;

    .line 33
    .line 34
    invoke-direct {v5, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {v5}, Ljava/io/Reader;->close()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const-string v5, "Consumer app \'"

    .line 59
    .line 60
    if-eqz v0, :cond_18

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v1, Lorg/json/JSONObject;

    .line 67
    .line 68
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_19

    .line 76
    .line 77
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    new-instance v13, Ljava/util/HashSet;

    .line 82
    .line 83
    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v0, "permissions"

    .line 87
    .line 88
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_17

    .line 97
    .line 98
    const/4 v7, 0x0

    .line 99
    const/4 v1, 0x0

    .line 100
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    if-ge v1, v0, :cond_1

    .line 105
    .line 106
    invoke-virtual {v10, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v13, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_1
    const-string v1, "signatures"

    .line 117
    .line 118
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-eqz v0, :cond_2

    .line 123
    .line 124
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    :goto_2
    new-instance v10, Ljava/util/HashSet;

    .line 129
    .line 130
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 131
    .line 132
    .line 133
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-ge v7, v0, :cond_3

    .line 138
    .line 139
    invoke-virtual {v1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    const-string v0, "algorithm"

    .line 144
    .line 145
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v11

    .line 149
    const-string v0, "value"

    .line 150
    .line 151
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    new-instance v0, LX/0Af;

    .line 156
    .line 157
    invoke-direct {v0, v11, v5}, LX/0Af;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v10, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    add-int/lit8 v7, v7, 0x1

    .line 164
    .line 165
    goto :goto_3

    .line 166
    :cond_2
    new-instance v1, Lorg/json/JSONArray;

    .line 167
    .line 168
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v0, "signature"

    .line 172
    .line 173
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_3
    if-eqz v2, :cond_4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 182
    .line 183
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_8

    .line 184
    .line 185
    .line 186
    :cond_4
    :try_start_4
    move-object/from16 v5, p3

    .line 187
    .line 188
    invoke-static {v12, v4}, LX/023;->A02(Landroid/content/Context;Ljava/lang/String;)LX/01p;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iget-object v2, v0, LX/01p;->A01:Ljava/lang/String;

    .line 193
    .line 194
    if-eqz v2, :cond_16
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5

    .line 195
    .line 196
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_16

    .line 201
    .line 202
    :try_start_5
    invoke-static {v12, v4, v9}, LX/01C;->A01(Landroid/content/Context;Ljava/lang/String;I)LX/024;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0}, LX/024;->A00()J

    .line 207
    .line 208
    .line 209
    move-result-wide v0

    .line 210
    const-wide/16 v14, 0x0

    .line 211
    .line 212
    cmp-long v7, v0, v14

    .line 213
    .line 214
    if-lez v7, :cond_15
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 215
    .line 216
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 217
    .line 218
    .line 219
    move-result v7

    .line 220
    const/4 v15, 0x0

    .line 221
    if-nez v7, :cond_14

    .line 222
    .line 223
    invoke-virtual {v13}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 224
    .line 225
    .line 226
    move-result v7

    .line 227
    if-nez v7, :cond_14

    .line 228
    .line 229
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 230
    .line 231
    .line 232
    move-result-object v14

    .line 233
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 234
    .line 235
    .line 236
    move-result v7

    .line 237
    if-eqz v7, :cond_7

    .line 238
    .line 239
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v11

    .line 243
    check-cast v11, LX/0Af;

    .line 244
    .line 245
    iget-object v7, v11, LX/0Af;->A00:Ljava/lang/String;

    .line 246
    .line 247
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    .line 249
    .line 250
    move-result v7

    .line 251
    if-nez v7, :cond_5

    .line 252
    .line 253
    iget-object v7, v11, LX/0Af;->A01:Ljava/lang/String;

    .line 254
    .line 255
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 256
    .line 257
    .line 258
    move-result v11

    .line 259
    const/4 v7, 0x1

    .line 260
    if-eqz v11, :cond_6

    .line 261
    .line 262
    :cond_5
    const/4 v7, 0x0

    .line 263
    :cond_6
    or-int/2addr v15, v7

    .line 264
    goto :goto_4

    .line 265
    :cond_7
    if-eqz v15, :cond_14

    .line 266
    .line 267
    :try_start_6
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v7

    .line 271
    invoke-static {v12, v8}, LX/023;->A01(Landroid/content/Context;Ljava/lang/String;)LX/024;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    invoke-static {v6}, LX/023;->A00(LX/024;)Landroid/content/pm/Signature;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    const-string v6, "X.509"

    .line 280
    .line 281
    invoke-static {v6}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    .line 282
    .line 283
    .line 284
    move-result-object v11

    .line 285
    invoke-virtual {v8}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 290
    .line 291
    invoke-direct {v6, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v11, v6}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    .line 295
    .line 296
    .line 297
    move-result-object v6

    .line 298
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 299
    .line 300
    .line 301
    move-result-object v8

    .line 302
    invoke-virtual {v13, v5}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 303
    .line 304
    .line 305
    move-result v6

    .line 306
    const-string v17, "Permission \'"

    .line 307
    .line 308
    if-eqz v6, :cond_13

    .line 309
    .line 310
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 311
    .line 312
    .line 313
    move-result v6

    .line 314
    if-nez v6, :cond_12
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_2

    .line 315
    .line 316
    :try_start_7
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    move-result-object v11

    .line 320
    const-string v6, ""

    .line 321
    .line 322
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v14

    .line 332
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    .line 333
    .line 334
    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 335
    .line 336
    .line 337
    const/4 v0, -0x5

    .line 338
    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v11, v9}, Ljava/io/OutputStream;->write(I)V

    .line 342
    .line 343
    .line 344
    const/4 v15, 0x1

    .line 345
    const/16 v12, 0xff

    .line 346
    .line 347
    new-instance v6, Ljava/util/TreeSet;

    .line 348
    .line 349
    invoke-direct {v6, v13}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-gt v0, v12, :cond_10

    .line 357
    .line 358
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 359
    .line 360
    .line 361
    move-result-object v1

    .line 362
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 363
    .line 364
    .line 365
    move-result-object v16

    .line 366
    :goto_5
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_8

    .line 371
    .line 372
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v13

    .line 376
    check-cast v13, Ljava/lang/String;

    .line 377
    .line 378
    sget-object v0, LX/0Ae;->A00:Ljava/nio/charset/Charset;

    .line 379
    .line 380
    invoke-virtual {v13, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 381
    .line 382
    .line 383
    move-result-object v13

    .line 384
    array-length v0, v13

    .line 385
    if-gt v0, v12, :cond_11

    .line 386
    .line 387
    invoke-virtual {v1, v13}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    goto :goto_5

    .line 391
    :cond_8
    invoke-virtual {v11, v15}, Ljava/io/OutputStream;->write(I)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    .line 395
    .line 396
    .line 397
    move-result v0

    .line 398
    and-int/2addr v0, v12

    .line 399
    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 400
    .line 401
    .line 402
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 403
    .line 404
    .line 405
    move-result-object v13

    .line 406
    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_9

    .line 411
    .line 412
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v6

    .line 416
    check-cast v6, [B

    .line 417
    .line 418
    array-length v1, v6

    .line 419
    and-int/lit16 v0, v1, 0xff

    .line 420
    .line 421
    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v11, v6, v9, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 425
    .line 426
    .line 427
    goto :goto_6

    .line 428
    :cond_9
    const/4 v0, 0x2

    .line 429
    sget-object v13, LX/0Ae;->A00:Ljava/nio/charset/Charset;

    .line 430
    .line 431
    invoke-virtual {v4, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 432
    .line 433
    .line 434
    move-result-object v6

    .line 435
    array-length v1, v6

    .line 436
    if-gt v1, v12, :cond_f

    .line 437
    .line 438
    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 439
    .line 440
    .line 441
    and-int/lit16 v0, v1, 0xff

    .line 442
    .line 443
    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v11, v6, v9, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 447
    .line 448
    .line 449
    const/4 v0, 0x3

    .line 450
    invoke-virtual {v14, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    array-length v1, v6

    .line 455
    if-gt v1, v12, :cond_e

    .line 456
    .line 457
    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 458
    .line 459
    .line 460
    and-int/lit16 v0, v1, 0xff

    .line 461
    .line 462
    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 463
    .line 464
    .line 465
    invoke-virtual {v11, v6, v9, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 466
    .line 467
    .line 468
    const/4 v0, 0x4

    .line 469
    invoke-virtual {v2, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    array-length v1, v2

    .line 474
    if-gt v1, v12, :cond_d

    .line 475
    .line 476
    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 477
    .line 478
    .line 479
    and-int/lit16 v0, v1, 0xff

    .line 480
    .line 481
    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v11, v2, v9, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 485
    .line 486
    .line 487
    const/4 v6, 0x5

    .line 488
    invoke-virtual {v7, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    array-length v1, v2

    .line 493
    if-gt v1, v12, :cond_c

    .line 494
    .line 495
    invoke-virtual {v11, v6}, Ljava/io/OutputStream;->write(I)V

    .line 496
    .line 497
    .line 498
    and-int/lit16 v0, v1, 0xff

    .line 499
    .line 500
    invoke-virtual {v11, v0}, Ljava/io/OutputStream;->write(I)V

    .line 501
    .line 502
    .line 503
    invoke-virtual {v11, v2, v9, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 507
    .line 508
    .line 509
    move-result-object v9

    .line 510
    int-to-byte v1, v6

    .line 511
    aput-byte v1, v9, v15

    .line 512
    .line 513
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 514
    .line 515
    .line 516
    move-result-object v6

    .line 517
    :catch_0
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    if-eqz v0, :cond_b

    .line 522
    .line 523
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    check-cast v2, LX/0Af;

    .line 528
    .line 529
    iget-object v1, v2, LX/0Af;->A01:Ljava/lang/String;

    .line 530
    .line 531
    const/16 v0, 0xa

    .line 532
    .line 533
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 534
    .line 535
    .line 536
    move-result-object v1
    :try_end_7
    .catch LX/0Ad; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_7 .. :try_end_7} :catch_2

    .line 537
    :try_start_8
    iget-object v0, v2, LX/0Af;->A00:Ljava/lang/String;

    .line 538
    .line 539
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    .line 540
    .line 541
    .line 542
    move-result-object v0

    .line 543
    invoke-virtual {v0, v8}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v0, v9}, Ljava/security/Signature;->update([B)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    if-eqz v0, :cond_a

    .line 554
    .line 555
    return-void
    :try_end_8
    .catch Ljava/security/InvalidKeyException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/security/SignatureException; {:try_start_8 .. :try_end_8} :catch_0
    .catch LX/0Ad; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_8 .. :try_end_8} :catch_2

    .line 556
    :cond_b
    :try_start_9
    invoke-static/range {v17 .. v17}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    move-result-object v1

    .line 560
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v0, "\' is contained in the set of permissions, but is not specifically granted to \'"

    .line 564
    .line 565
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    const-string v0, "\' by \'"

    .line 572
    .line 573
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-static {v7, v3, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v0

    .line 580
    new-instance v1, LX/0Aj;

    .line 581
    .line 582
    invoke-direct {v1, v0}, LX/0Aj;-><init>(Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    goto :goto_8
    :try_end_9
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_9 .. :try_end_9} :catch_2

    .line 586
    :cond_c
    :try_start_a
    const-string v0, "String size (UTF-8 encoded) cannot exceed 255"

    .line 587
    .line 588
    new-instance v1, LX/0Ad;

    .line 589
    .line 590
    invoke-direct {v1, v0}, LX/0Ad;-><init>(Ljava/lang/String;)V

    .line 591
    .line 592
    .line 593
    goto :goto_7

    .line 594
    :cond_d
    const-string v0, "String size (UTF-8 encoded) cannot exceed 255"

    .line 595
    .line 596
    new-instance v1, LX/0Ad;

    .line 597
    .line 598
    invoke-direct {v1, v0}, LX/0Ad;-><init>(Ljava/lang/String;)V

    .line 599
    .line 600
    .line 601
    goto :goto_7

    .line 602
    :cond_e
    const-string v0, "String size (UTF-8 encoded) cannot exceed 255"

    .line 603
    .line 604
    new-instance v1, LX/0Ad;

    .line 605
    .line 606
    invoke-direct {v1, v0}, LX/0Ad;-><init>(Ljava/lang/String;)V

    .line 607
    .line 608
    .line 609
    goto :goto_7

    .line 610
    :cond_f
    const-string v0, "String size (UTF-8 encoded) cannot exceed 255"

    .line 611
    .line 612
    new-instance v1, LX/0Ad;

    .line 613
    .line 614
    invoke-direct {v1, v0}, LX/0Ad;-><init>(Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    goto :goto_7

    .line 618
    :cond_10
    const-string v0, "Collection size (duplicates removed) cannot exceed 255"

    .line 619
    .line 620
    new-instance v1, LX/0Ad;

    .line 621
    .line 622
    invoke-direct {v1, v0}, LX/0Ad;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    goto :goto_7

    .line 626
    :cond_11
    const-string v0, "String size (UTF-8 encoded) cannot exceed 255"

    .line 627
    .line 628
    new-instance v1, LX/0Ad;

    .line 629
    .line 630
    invoke-direct {v1, v0}, LX/0Ad;-><init>(Ljava/lang/String;)V

    .line 631
    .line 632
    .line 633
    :goto_7
    throw v1
    :try_end_a
    .catch LX/0Ad; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_a .. :try_end_a} :catch_2

    .line 634
    :cond_12
    :try_start_b
    const-string v0, "Empty signature list in the grants"

    .line 635
    .line 636
    new-instance v1, LX/0Aj;

    .line 637
    .line 638
    invoke-direct {v1, v0}, LX/0Aj;-><init>(Ljava/lang/String;)V

    .line 639
    .line 640
    .line 641
    goto :goto_8

    .line 642
    :cond_13
    invoke-static/range {v17 .. v17}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    .line 644
    .line 645
    move-result-object v1

    .line 646
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    .line 648
    .line 649
    const-string v0, "\' is not contained in the set of permissions granted"

    .line 650
    .line 651
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    new-instance v1, LX/0Aj;

    .line 656
    .line 657
    invoke-direct {v1, v0}, LX/0Aj;-><init>(Ljava/lang/String;)V

    .line 658
    .line 659
    .line 660
    goto :goto_8

    .line 661
    :catch_1
    move-exception v2

    .line 662
    const-string v0, "Unable to encode data for signature validation"

    .line 663
    .line 664
    new-instance v1, LX/0Aj;

    .line 665
    .line 666
    invoke-direct {v1, v0, v2}, LX/0Aj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 667
    .line 668
    .line 669
    :goto_8
    throw v1
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_b} :catch_2

    .line 670
    :catch_2
    move-exception v2

    .line 671
    const-string v1, "Unable to parse consumer package certificate"

    .line 672
    .line 673
    new-instance v0, LX/0Aj;

    .line 674
    .line 675
    invoke-direct {v0, v1, v2}, LX/0Aj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 676
    .line 677
    .line 678
    throw v0

    .line 679
    :catch_3
    move-exception v2

    .line 680
    const-string v1, "Failed to get provider package signature"

    .line 681
    .line 682
    new-instance v0, LX/0Aj;

    .line 683
    .line 684
    invoke-direct {v0, v1, v2}, LX/0Aj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 685
    .line 686
    .line 687
    throw v0

    .line 688
    :cond_14
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 689
    .line 690
    .line 691
    move-result-object v1

    .line 692
    const-string v0, "Invalid signature or algorithm for package \'"

    .line 693
    .line 694
    invoke-static {v0, v4, v6, v1}, LX/000;->A0M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 695
    .line 696
    .line 697
    invoke-static {v5, v3, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    new-instance v0, LX/0Aj;

    .line 702
    .line 703
    invoke-direct {v0, v1}, LX/0Aj;-><init>(Ljava/lang/String;)V

    .line 704
    .line 705
    .line 706
    throw v0

    .line 707
    :cond_15
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    const-string v0, "Invalid version code for package \'"

    .line 712
    .line 713
    invoke-static {v0, v4, v6, v1}, LX/000;->A0M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 714
    .line 715
    .line 716
    invoke-static {v5, v3, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v1

    .line 720
    new-instance v0, LX/0Aj;

    .line 721
    .line 722
    invoke-direct {v0, v1}, LX/0Aj;-><init>(Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    throw v0

    .line 726
    :catch_4
    move-exception v2

    .line 727
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 728
    .line 729
    .line 730
    move-result-object v1

    .line 731
    const-string v0, "Exception in getting version code for package \'"

    .line 732
    .line 733
    invoke-static {v0, v4, v6, v1}, LX/000;->A0M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 734
    .line 735
    .line 736
    invoke-static {v5, v3, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v1

    .line 740
    new-instance v0, LX/0Aj;

    .line 741
    .line 742
    invoke-direct {v0, v1, v2}, LX/0Aj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 743
    .line 744
    .line 745
    throw v0

    .line 746
    :cond_16
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    move-result-object v1

    .line 750
    const-string v0, "Empty developer key for package \'"

    .line 751
    .line 752
    invoke-static {v0, v4, v6, v1}, LX/000;->A0M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 753
    .line 754
    .line 755
    invoke-static {v5, v3, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 756
    .line 757
    .line 758
    move-result-object v1

    .line 759
    new-instance v0, LX/0Aj;

    .line 760
    .line 761
    invoke-direct {v0, v1}, LX/0Aj;-><init>(Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    throw v0

    .line 765
    :catch_5
    move-exception v2

    .line 766
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    move-result-object v1

    .line 770
    const-string v0, "Invalid developer key for package \'"

    .line 771
    .line 772
    invoke-static {v0, v4, v6, v1}, LX/000;->A0M(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 773
    .line 774
    .line 775
    invoke-static {v5, v3, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v1

    .line 779
    new-instance v0, LX/0Aj;

    .line 780
    .line 781
    invoke-direct {v0, v1, v2}, LX/0Aj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 782
    .line 783
    .line 784
    throw v0

    .line 785
    :cond_17
    :try_start_c
    const-string v0, "Empty permissions list"

    .line 786
    .line 787
    new-instance v1, Lorg/json/JSONException;

    .line 788
    .line 789
    invoke-direct {v1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 790
    .line 791
    .line 792
    goto :goto_9

    .line 793
    :cond_18
    invoke-static {v5}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 794
    .line 795
    .line 796
    move-result-object v1

    .line 797
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    const-string v0, "\' has an empty FbPermissions asset file"

    .line 801
    .line 802
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 803
    .line 804
    .line 805
    move-result-object v0

    .line 806
    new-instance v1, Ljava/io/IOException;

    .line 807
    .line 808
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 809
    .line 810
    .line 811
    goto :goto_9

    .line 812
    :cond_19
    invoke-static {v5}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    move-result-object v1

    .line 816
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    const-string v0, "\' is missing an entry for provider \'"

    .line 820
    .line 821
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    .line 823
    .line 824
    invoke-static {v8, v3, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 825
    .line 826
    .line 827
    move-result-object v0

    .line 828
    new-instance v1, Ljava/io/IOException;

    .line 829
    .line 830
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 831
    .line 832
    .line 833
    :goto_9
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 834
    :catchall_0
    move-exception v0

    .line 835
    if-eqz v2, :cond_1a

    .line 836
    .line 837
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 838
    .line 839
    .line 840
    :catchall_1
    :cond_1a
    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_8

    .line 841
    :catch_6
    move-exception v2

    .line 842
    goto :goto_a

    .line 843
    :catch_7
    move-exception v2

    .line 844
    :try_start_f
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 845
    .line 846
    .line 847
    move-result-object v1

    .line 848
    const-string v0, "Failed to read FBPermission asset file from package \'"

    .line 849
    .line 850
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-static {v4, v3, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 854
    .line 855
    .line 856
    move-result-object v0

    .line 857
    new-instance v1, LX/0Aj;

    .line 858
    .line 859
    invoke-direct {v1, v0, v2}, LX/0Aj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 860
    .line 861
    .line 862
    goto :goto_b

    .line 863
    :goto_a
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    const-string v0, "Failed to decode FBPermission asset file from package \'"

    .line 868
    .line 869
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 870
    .line 871
    .line 872
    invoke-static {v4, v3, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 873
    .line 874
    .line 875
    move-result-object v0

    .line 876
    new-instance v1, LX/0Aj;

    .line 877
    .line 878
    invoke-direct {v1, v0, v2}, LX/0Aj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 879
    .line 880
    .line 881
    :goto_b
    throw v1
    :try_end_f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_f .. :try_end_f} :catch_8

    .line 882
    :catch_8
    move-exception v2

    .line 883
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    move-result-object v1

    .line 887
    const-string v0, "Cannot create package context for \'"

    .line 888
    .line 889
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    invoke-static {v4, v3, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object v1

    .line 896
    new-instance v0, LX/0Aj;

    .line 897
    .line 898
    invoke-direct {v0, v1, v2}, LX/0Aj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 899
    .line 900
    .line 901
    throw v0
.end method
