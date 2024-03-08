.class public final LX/03x;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A03:Ljava/util/List;


# instance fields
.field public final A00:Landroid/net/Uri;

.field public final A01:LX/03v;

.field public final A02:LX/03q;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 0
    const/4 v0, 0x6

    .line 1
    new-array v2, v0, [Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v0, "log_type"

    .line 5
    .line 6
    aput-object v0, v2, v1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v0, "build_id"

    .line 10
    .line 11
    aput-object v0, v2, v1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    const-string v0, "app_id"

    .line 15
    .line 16
    aput-object v0, v2, v1

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    const-string v0, "user_id"

    .line 20
    .line 21
    aput-object v0, v2, v1

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    const-string v0, "device_id"

    .line 25
    .line 26
    aput-object v0, v2, v1

    .line 27
    .line 28
    sget-object v0, LX/07M;->A09:LX/05n;

    .line 29
    .line 30
    iget-object v1, v0, LX/07H;->A00:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v0, 0x5

    .line 33
    aput-object v1, v2, v0

    .line 34
    .line 35
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, LX/03x;->A03:Ljava/util/List;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;LX/03v;LX/03q;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/03x;->A00:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object p2, p0, LX/03x;->A01:LX/03v;

    .line 6
    .line 7
    iput-object p3, p0, LX/03x;->A02:LX/03q;

    .line 8
    .line 9
    return-void
.end method

.method public static A00(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 0
    const-string v2, "form-data; name="

    .line 1
    .line 2
    const/4 v0, 0x3

    .line 3
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aput-object p3, v1, v0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    aput-object v2, v1, v0

    .line 10
    .line 11
    const/4 v0, 0x2

    .line 12
    aput-object p1, v1, v0

    .line 13
    .line 14
    const-string v0, "--%s\r\nContent-Disposition: %s\"%s\"\r\nContent-Type: application/binary\r\nContent-Transfer-Encoding: binary\r\n\r\n"

    .line 15
    .line 16
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 25
    .line 26
    .line 27
    const-string v0, "UTF-8"

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 34
    .line 35
    .line 36
    const-string v0, "\r\n"

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write([B)V

    .line 43
    .line 44
    .line 45
    return-void
.end method


# virtual methods
.method public final A01(LX/02N;Ljava/util/Map;I)Z
    .locals 16

    .line 0
    new-instance v13, LX/02T;

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    move-object/from16 v0, p1

    .line 5
    .line 6
    invoke-direct {v13, v0, v1}, LX/02T;-><init>(LX/02N;LX/03x;)V

    .line 7
    .line 8
    .line 9
    iget-object v5, v1, LX/03x;->A00:Landroid/net/Uri;

    .line 10
    .line 11
    const-string v4, "Android"

    .line 12
    .line 13
    iget-object v3, v1, LX/03x;->A01:LX/03v;

    .line 14
    .line 15
    sget-object v12, LX/03x;->A03:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {v13, v12}, LX/02P;->ADT(Ljava/util/List;)[Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v11

    .line 21
    new-instance v2, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v10, 0x3

    .line 27
    aget-object v6, v11, v10

    .line 28
    .line 29
    const-string v9, "0"

    .line 30
    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    const-string v0, ""

    .line 34
    .line 35
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v0, "c_user="

    .line 53
    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v0, "Cookie"

    .line 65
    .line 66
    invoke-virtual {v2, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_0
    new-instance v7, Ljava/util/HashMap;

    .line 70
    .line 71
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 72
    .line 73
    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    :goto_0
    array-length v0, v11

    .line 77
    if-ge v8, v0, :cond_3

    .line 78
    .line 79
    const/4 v0, 0x5

    .line 80
    if-ne v8, v0, :cond_2

    .line 81
    .line 82
    aget-object v1, v11, v8

    .line 83
    .line 84
    const-string v0, "true"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    move-object v1, v9

    .line 93
    :goto_1
    const-string v0, "consent_choice"

    .line 94
    .line 95
    invoke-virtual {v7, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    :goto_2
    add-int/lit8 v8, v8, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const-string v1, "1"

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    aget-object v0, v11, v8

    .line 109
    .line 110
    invoke-virtual {v7, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_3
    new-instance v8, Ljava/util/Properties;

    .line 115
    .line 116
    invoke-direct {v8}, Ljava/util/Properties;-><init>()V

    .line 117
    .line 118
    .line 119
    sget-object v0, LX/07M;->A1C:LX/05m;

    .line 120
    .line 121
    iget-object v1, v0, LX/07H;->A00:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v8, v1, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    sget-object v0, LX/07M;->A2T:LX/05m;

    .line 131
    .line 132
    iget-object v11, v0, LX/07H;->A00:Ljava/lang/String;

    .line 133
    .line 134
    new-instance v12, LX/02U;

    .line 135
    .line 136
    invoke-direct {v12}, LX/02U;-><init>()V

    .line 137
    .line 138
    .line 139
    new-instance v9, Ljava/util/HashSet;

    .line 140
    .line 141
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 142
    .line 143
    .line 144
    :cond_4
    :goto_3
    invoke-virtual {v13, v12}, LX/02P;->ACL(LX/02U;)Z

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    if-eqz v0, :cond_5

    .line 149
    .line 150
    iget-object v1, v12, LX/02U;->A00:Ljava/lang/String;

    .line 151
    .line 152
    if-eqz v1, :cond_4

    .line 153
    .line 154
    iget-object v0, v12, LX/02U;->A01:Ljava/lang/String;

    .line 155
    .line 156
    if-eqz v0, :cond_4

    .line 157
    .line 158
    invoke-virtual {v9, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_3

    .line 162
    :cond_5
    invoke-virtual {v13}, LX/02P;->reset()V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v9}, Ljava/util/AbstractCollection;->size()I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v8, v11, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    sget-object v0, LX/07M;->A8r:LX/05l;

    .line 177
    .line 178
    iget-object v1, v0, LX/07H;->A00:Ljava/lang/String;

    .line 179
    .line 180
    invoke-static {}, LX/073;->A00()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {v8, v1, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v13, v8}, LX/02P;->A29(Ljava/util/Properties;)V

    .line 188
    .line 189
    .line 190
    const/4 v9, 0x1

    .line 191
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const-string v0, "schema_version"

    .line 196
    .line 197
    invoke-virtual {v7, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    const-string v1, "schema_type"

    .line 201
    .line 202
    const-string v0, "LACRIMA"

    .line 203
    .line 204
    invoke-virtual {v7, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    new-instance v0, Ljava/net/URL;

    .line 212
    .line 213
    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-interface {v3, v0}, LX/03v;->A8u(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    const-string v0, "POST"

    .line 229
    .line 230
    invoke-virtual {v3, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    const-string v0, "User-Agent"

    .line 234
    .line 235
    invoke-virtual {v3, v0, v4}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    new-array v1, v9, [Ljava/lang/Object;

    .line 239
    .line 240
    aput-object v8, v1, v6

    .line 241
    .line 242
    const-string v0, "multipart/form-data;boundary=%s"

    .line 243
    .line 244
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    const-string v0, "Content-Type"

    .line 249
    .line 250
    invoke-virtual {v3, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-nez v0, :cond_6

    .line 258
    .line 259
    invoke-virtual {v2}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_6

    .line 272
    .line 273
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    check-cast v2, Ljava/util/Map$Entry;

    .line 278
    .line 279
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v3, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_6
    invoke-virtual {v3, v9}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v3, v6}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 303
    .line 304
    .line 305
    :try_start_0
    invoke-virtual {v3}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 306
    .line 307
    .line 308
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 309
    :try_start_1
    move-object v5, v4

    .line 310
    sget-object v0, LX/04C;->A00:LX/04p;

    .line 311
    .line 312
    if-eqz v0, :cond_7

    .line 313
    .line 314
    sget-object v0, LX/04C;->A00:LX/04p;

    .line 315
    .line 316
    new-instance v5, LX/05W;

    .line 317
    .line 318
    invoke-direct {v5, v0, v4}, LX/05W;-><init>(LX/04p;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 319
    .line 320
    .line 321
    :cond_7
    :try_start_2
    invoke-virtual {v7}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v0

    .line 333
    if-eqz v0, :cond_8

    .line 334
    .line 335
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    check-cast v0, Ljava/util/Map$Entry;

    .line 340
    .line 341
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    check-cast v1, Ljava/lang/String;

    .line 346
    .line 347
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-static {v5, v1, v0, v8}, LX/03x;->A00(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    goto :goto_5

    .line 359
    :cond_8
    const-string v12, "]"

    .line 360
    .line 361
    const-string v11, "data["

    .line 362
    .line 363
    new-instance v7, LX/02U;

    .line 364
    .line 365
    invoke-direct {v7}, LX/02U;-><init>()V

    .line 366
    .line 367
    .line 368
    :cond_9
    :goto_6
    invoke-virtual {v13, v7}, LX/02P;->ACL(LX/02U;)Z

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    if-eqz v0, :cond_a

    .line 373
    .line 374
    iget-object v2, v7, LX/02U;->A01:Ljava/lang/String;

    .line 375
    .line 376
    if-eqz v2, :cond_9

    .line 377
    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    .line 385
    .line 386
    iget-object v0, v7, LX/02U;->A00:Ljava/lang/String;

    .line 387
    .line 388
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    invoke-static {v5, v0, v2, v8}, LX/03x;->A00(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    .line 400
    .line 401
    goto :goto_6

    .line 402
    :cond_a
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 407
    .line 408
    .line 409
    move-result-object v15

    .line 410
    :goto_7
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-eqz v0, :cond_c

    .line 415
    .line 416
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v0

    .line 420
    check-cast v0, Ljava/util/Map$Entry;

    .line 421
    .line 422
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v12

    .line 426
    check-cast v12, LX/05Y;

    .line 427
    .line 428
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object v14

    .line 432
    const-string v2, "form-data; filename=\"file\"; name="

    .line 433
    .line 434
    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    new-array v1, v10, [Ljava/lang/Object;

    .line 439
    .line 440
    aput-object v8, v1, v6

    .line 441
    .line 442
    aput-object v2, v1, v9

    .line 443
    .line 444
    const/4 v13, 0x2

    .line 445
    aput-object v0, v1, v13

    .line 446
    .line 447
    const-string v0, "--%s\r\nContent-Disposition: %s\"%s\"\r\nContent-Type: application/binary\r\nContent-Transfer-Encoding: binary\r\n\r\n"

    .line 448
    .line 449
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 458
    .line 459
    .line 460
    :try_start_3
    new-instance v11, Ljava/util/zip/GZIPOutputStream;

    .line 461
    .line 462
    invoke-direct {v11, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 463
    .line 464
    .line 465
    iget-object v7, v12, LX/05Y;->A01:Ljava/io/InputStream;

    .line 466
    .line 467
    const/16 v0, 0x2000

    .line 468
    .line 469
    new-array v2, v0, [B

    .line 470
    .line 471
    :goto_8
    invoke-virtual {v7, v2}, Ljava/io/InputStream;->read([B)I

    .line 472
    .line 473
    .line 474
    move-result v1

    .line 475
    const/4 v0, -0x1

    .line 476
    if-eq v1, v0, :cond_b

    .line 477
    .line 478
    invoke-virtual {v11, v2, v6, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 479
    .line 480
    .line 481
    goto :goto_8

    .line 482
    :cond_b
    invoke-virtual {v11}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 483
    .line 484
    .line 485
    goto :goto_9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 486
    :catch_0
    move-exception v7

    .line 487
    :try_start_4
    new-array v2, v13, [Ljava/lang/Object;

    .line 488
    .line 489
    aput-object v14, v2, v6

    .line 490
    .line 491
    iget-wide v0, v12, LX/05Y;->A00:J

    .line 492
    .line 493
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    aput-object v0, v2, v9

    .line 498
    .line 499
    const-string v1, "lacrima"

    .line 500
    .line 501
    const-string v0, "Attachment failed: %s %d"

    .line 502
    .line 503
    invoke-static {v1, v0, v7, v2}, LX/06s;->A0G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    invoke-static {}, LX/08w;->A00()V

    .line 507
    .line 508
    .line 509
    :goto_9
    const-string v0, "\r\n"

    .line 510
    .line 511
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 512
    .line 513
    .line 514
    move-result-object v0

    .line 515
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 516
    .line 517
    .line 518
    goto :goto_7

    .line 519
    :cond_c
    new-array v1, v9, [Ljava/lang/Object;

    .line 520
    .line 521
    aput-object v8, v1, v6

    .line 522
    .line 523
    const-string v0, "--%s--\r\n"

    .line 524
    .line 525
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 526
    .line 527
    .line 528
    move-result-object v0

    .line 529
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 530
    .line 531
    .line 532
    move-result-object v0

    .line 533
    invoke-virtual {v5, v0}, Ljava/io/OutputStream;->write([B)V

    .line 534
    .line 535
    .line 536
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 537
    .line 538
    .line 539
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 540
    .line 541
    .line 542
    move-result v2

    .line 543
    const/16 v1, 0xc8

    .line 544
    .line 545
    if-ne v2, v1, :cond_d

    .line 546
    .line 547
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    :goto_a
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 552
    .line 553
    .line 554
    goto :goto_b

    .line 555
    :cond_d
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    if-eqz v0, :cond_e

    .line 560
    .line 561
    goto :goto_a
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 562
    :cond_e
    :goto_b
    :try_start_5
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 563
    .line 564
    .line 565
    if-eqz v4, :cond_f
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 566
    .line 567
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 568
    .line 569
    .line 570
    :cond_f
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 571
    .line 572
    .line 573
    if-ne v2, v1, :cond_10

    .line 574
    .line 575
    const/4 v6, 0x1

    .line 576
    :cond_10
    return v6

    .line 577
    :catchall_0
    move-exception v0

    .line 578
    if-eqz v5, :cond_11

    .line 579
    .line 580
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 581
    .line 582
    .line 583
    :catchall_1
    :cond_11
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 584
    :catchall_2
    move-exception v0

    .line 585
    if-eqz v4, :cond_12

    .line 586
    .line 587
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 588
    .line 589
    .line 590
    :catchall_3
    :cond_12
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 591
    :catchall_4
    move-exception v0

    .line 592
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 593
    .line 594
    .line 595
    throw v0
.end method
