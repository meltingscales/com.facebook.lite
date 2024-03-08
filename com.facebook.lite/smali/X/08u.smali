.class public final LX/08u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/09p;


# instance fields
.field public A00:Ljava/lang/String;

.field public final A01:LX/09k;

.field public final A02:LX/09t;

.field public final A03:Ljava/io/File;

.field public final A04:Z


# direct methods
.method public constructor <init>(LX/09k;LX/09t;Ljava/io/File;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/08u;->A01:LX/09k;

    .line 4
    .line 5
    iput-object p2, p0, LX/08u;->A02:LX/09t;

    .line 6
    .line 7
    iput-object p3, p0, LX/08u;->A03:Ljava/io/File;

    .line 8
    .line 9
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    .line 11
    const/16 v0, 0x1a

    .line 12
    .line 13
    if-lt v1, v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x1c

    .line 16
    .line 17
    if-le v1, v0, :cond_2

    .line 18
    .line 19
    :cond_0
    sget-boolean v0, LX/06Y;->A00:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    const/16 v0, 0x15

    .line 24
    .line 25
    if-lt v1, v0, :cond_1

    .line 26
    .line 27
    const/16 v0, 0x1c

    .line 28
    .line 29
    if-le v1, v0, :cond_2

    .line 30
    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    iput-boolean v0, p0, LX/08u;->A04:Z

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const/4 v0, 0x1

    .line 36
    goto :goto_0
.end method


# virtual methods
.method public final A3o()V
    .locals 5

    .line 0
    iget-object v0, p0, LX/08u;->A02:LX/09t;

    .line 1
    .line 2
    iget-object v4, v0, LX/09t;->A01:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, LX/09s;

    .line 19
    .line 20
    iget-object v3, p0, LX/08u;->A03:Ljava/io/File;

    .line 21
    .line 22
    invoke-static {v0}, LX/09v;->A02(LX/09s;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v3, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, LX/09s;

    .line 55
    .line 56
    invoke-static {v0}, LX/09v;->A02(LX/09s;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, LX/09v;->A04(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {v3, v2}, LX/09v;->A06(Ljava/io/File;Ljava/util/List;)V

    .line 69
    .line 70
    .line 71
    :cond_2
    return-void
.end method

.method public final AHP(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)V
    .locals 31

    .line 0
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 1
    .line 2
    .line 3
    move-result-object v30

    .line 4
    move-object/from16 v14, p0

    .line 5
    .line 6
    iget-object v12, v14, LX/08u;->A02:LX/09t;

    .line 7
    .line 8
    iget-object v0, v12, LX/09t;->A01:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v29

    .line 14
    :cond_0
    :goto_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    move-object/from16 v13, p1

    .line 19
    .line 20
    if-eqz v0, :cond_18

    .line 21
    .line 22
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, LX/09s;

    .line 27
    .line 28
    iget-object v1, v14, LX/08u;->A03:Ljava/io/File;

    .line 29
    .line 30
    invoke-static {v2}, LX/09v;->A02(LX/09s;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_16

    .line 43
    .line 44
    iget-object v0, v14, LX/08u;->A01:LX/09k;

    .line 45
    .line 46
    invoke-static {v0, v2, v12, v1, v11}, LX/09v;->A05(LX/09k;LX/09s;LX/09t;Ljava/io/File;Ljava/io/File;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    const-class v0, LX/09q;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 52
    .line 53
    .line 54
    move-result-object v28

    .line 55
    new-instance v1, LX/093;

    .line 56
    .line 57
    invoke-direct {v1}, LX/093;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v0, LX/08k;

    .line 61
    .line 62
    invoke-direct {v0}, LX/08k;-><init>()V

    .line 63
    .line 64
    .line 65
    new-instance v10, LX/09o;

    .line 66
    .line 67
    invoke-direct {v10, v1, v0, v11}, LX/09o;-><init>(LX/093;LX/08k;Ljava/io/File;)V

    .line 68
    .line 69
    .line 70
    iget-object v1, v12, LX/09t;->A00:Ljava/lang/String;

    .line 71
    .line 72
    const-string v0, "dex"

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v27

    .line 78
    const-string v9, "DexStoreUtils"

    .line 79
    .line 80
    :try_start_0
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v10}, LX/09o;->A00(LX/09o;)Ljava/io/File;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 89
    .line 90
    .line 91
    move-result v26

    .line 92
    sget-boolean v25, LX/06Y;->A00:Z

    .line 93
    .line 94
    if-eqz v25, :cond_1

    .line 95
    .line 96
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 97
    .line 98
    const/16 v0, 0x15

    .line 99
    .line 100
    if-lt v1, v0, :cond_1

    .line 101
    .line 102
    const/16 v0, 0x1c

    .line 103
    .line 104
    if-le v1, v0, :cond_2

    .line 105
    .line 106
    :cond_1
    invoke-static {}, LX/0A2;->A02()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const/16 v0, 0x29

    .line 114
    .line 115
    invoke-static {v1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const/4 v0, 0x0

    .line 120
    if-eqz v1, :cond_3

    .line 121
    .line 122
    :cond_2
    const/4 v0, 0x1

    .line 123
    :cond_3
    const/4 v8, 0x1

    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    const/16 v24, 0x1

    .line 127
    .line 128
    if-eqz v26, :cond_5

    .line 129
    .line 130
    :cond_4
    const/16 v24, 0x0

    .line 131
    .line 132
    :cond_5
    const/16 v7, 0x1a

    .line 133
    .line 134
    const/4 v6, 0x0

    .line 135
    if-eqz v24, :cond_7

    .line 136
    .line 137
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 138
    .line 139
    if-ge v5, v7, :cond_6

    .line 140
    .line 141
    const/4 v0, 0x0

    .line 142
    invoke-static {v2, v6, v0}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    goto :goto_2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :cond_6
    :try_start_1
    invoke-static {v2}, LX/09v;->A00(Ljava/lang/String;)Ldalvik/system/DexFile;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    :goto_2
    if-nez v1, :cond_12

    .line 152
    .line 153
    goto :goto_3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    :catch_0
    move-exception v1

    .line 155
    :try_start_2
    const-string v0, "Failed to mmap dex file, slow starting instead"

    .line 156
    .line 157
    invoke-static {v13, v0, v1, v8}, LX/0AD;->A00(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 158
    .line 159
    .line 160
    :cond_7
    :goto_3
    const/4 v4, 0x0

    .line 161
    invoke-virtual {v10, v4}, LX/09o;->A01(Z)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-static {v0}, LX/09v;->A04(Ljava/lang/String;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v3, ".odex"

    .line 181
    .line 182
    invoke-static {v3, v2}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    new-instance v15, Ljava/io/File;

    .line 187
    .line 188
    invoke-direct {v15, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    .line 192
    .line 193
    .line 194
    move-result-wide v22

    .line 195
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 196
    .line 197
    if-lt v5, v7, :cond_9

    .line 198
    .line 199
    const/16 v0, 0x1c

    .line 200
    .line 201
    if-le v5, v0, :cond_8

    .line 202
    .line 203
    invoke-static {}, LX/0A2;->A02()V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    const/16 v0, 0x36

    .line 211
    .line 212
    invoke-static {v1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-eqz v0, :cond_9

    .line 217
    .line 218
    :cond_8
    move-object/from16 v16, v28

    .line 219
    .line 220
    goto :goto_4

    .line 221
    :cond_9
    move-object/from16 v16, v6

    .line 222
    .line 223
    :goto_4
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    const/16 v0, 0x21

    .line 228
    .line 229
    if-lt v5, v0, :cond_a

    .line 230
    .line 231
    invoke-virtual {v11, v4}, Ljava/io/File;->setWritable(Z)Z

    .line 232
    .line 233
    .line 234
    :cond_a
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-static {v2}, LX/09v;->A04(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v0, v3, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    move-object/from16 v0, v16

    .line 247
    .line 248
    invoke-static {v0, v2, v1}, LX/00m;->A00(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v15}, Ljava/io/File;->lastModified()J

    .line 253
    .line 254
    .line 255
    move-result-wide v20

    .line 256
    invoke-virtual {v15}, Ljava/io/File;->length()J

    .line 257
    .line 258
    .line 259
    move-result-wide v18

    .line 260
    if-eqz v27, :cond_b

    .line 261
    .line 262
    sget-wide v16, LX/0A5;->A00:J

    .line 263
    .line 264
    const-wide/16 v2, -0x1

    .line 265
    .line 266
    cmp-long v0, v16, v2

    .line 267
    .line 268
    if-nez v0, :cond_b

    .line 269
    .line 270
    sput-wide v18, LX/0A5;->A00:J

    .line 271
    .line 272
    :cond_b
    cmp-long v0, v20, v22

    .line 273
    .line 274
    if-eqz v0, :cond_10

    .line 275
    .line 276
    if-eqz v27, :cond_c

    .line 277
    .line 278
    sput-boolean v8, LX/0A5;->A0B:Z

    .line 279
    .line 280
    :cond_c
    if-eqz v25, :cond_d

    .line 281
    .line 282
    const/16 v0, 0x15

    .line 283
    .line 284
    if-lt v5, v0, :cond_d

    .line 285
    .line 286
    const/16 v0, 0x1c

    .line 287
    .line 288
    if-le v5, v0, :cond_e

    .line 289
    .line 290
    :cond_d
    invoke-static {}, LX/0A2;->A02()V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    const/16 v0, 0x29

    .line 298
    .line 299
    invoke-static {v2, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 300
    .line 301
    .line 302
    move-result v0

    .line 303
    if-eqz v0, :cond_10

    .line 304
    .line 305
    :cond_e
    if-nez v24, :cond_10

    .line 306
    .line 307
    const-wide/16 v16, 0x0

    .line 308
    .line 309
    const/16 v2, 0x64

    .line 310
    .line 311
    cmp-long v0, v22, v16

    .line 312
    .line 313
    if-nez v0, :cond_f

    .line 314
    .line 315
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    const-string v0, "Attempted to load a dex file without a corresponding odex: "

    .line 320
    .line 321
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v15}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-static {v0, v3}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v13, v0, v6, v2}, LX/0AD;->A00(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 333
    .line 334
    .line 335
    goto :goto_5

    .line 336
    :cond_f
    const/4 v0, 0x2

    .line 337
    new-array v0, v0, [Ljava/lang/Object;

    .line 338
    .line 339
    invoke-virtual {v15}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v3

    .line 343
    aput-object v3, v0, v4

    .line 344
    .line 345
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 346
    .line 347
    .line 348
    move-result-object v3

    .line 349
    aput-object v3, v0, v8

    .line 350
    .line 351
    const-string v3, "odex possibly rejected at path: %s. New file size: %d"

    .line 352
    .line 353
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    invoke-static {v13, v0, v6, v2}, LX/0AD;->A00(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 358
    .line 359
    .line 360
    :cond_10
    :goto_5
    if-nez v26, :cond_11

    .line 361
    .line 362
    const/16 v26, 0x0

    .line 363
    .line 364
    if-ge v5, v7, :cond_12

    .line 365
    .line 366
    :cond_11
    const/16 v26, 0x1

    .line 367
    .line 368
    :cond_12
    if-eqz v27, :cond_13

    .line 369
    .line 370
    if-nez v26, :cond_13

    .line 371
    .line 372
    sput-boolean v8, LX/0A5;->A0A:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 373
    .line 374
    :cond_13
    move-object/from16 v0, v30

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 377
    .line 378
    .line 379
    if-eqz p3, :cond_0

    .line 380
    .line 381
    iget-boolean v0, v14, LX/08u;->A04:Z

    .line 382
    .line 383
    if-eqz v0, :cond_0

    .line 384
    .line 385
    invoke-static {v10}, LX/09o;->A00(LX/09o;)Ljava/io/File;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-nez v0, :cond_0

    .line 394
    .line 395
    iget-object v1, v14, LX/08u;->A00:Ljava/lang/String;

    .line 396
    .line 397
    if-nez v1, :cond_14

    .line 398
    .line 399
    if-lt v5, v7, :cond_15

    .line 400
    .line 401
    move-object/from16 v0, v28

    .line 402
    .line 403
    invoke-static {v13, v0, v6, v8}, Lcom/facebook/lite/splitdex/ClassLoaderUtils$NotifyDexLoadInnerAPIHackAndroidRInternal;->getClassLoaderContext(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    :goto_6
    iput-object v1, v14, LX/08u;->A00:Ljava/lang/String;

    .line 408
    .line 409
    :cond_14
    new-instance v0, LX/09r;

    .line 410
    .line 411
    invoke-direct {v0, v13, v10, v1}, LX/09r;-><init>(Landroid/content/Context;LX/09o;Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    move-object/from16 v1, p2

    .line 415
    .line 416
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_0

    .line 420
    .line 421
    :cond_15
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 426
    .line 427
    goto :goto_6

    .line 428
    :cond_16
    invoke-virtual {v11}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 432
    .line 433
    .line 434
    move-result-object v0

    .line 435
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    goto/16 :goto_1

    .line 439
    .line 440
    :catch_1
    move-exception v1

    .line 441
    const-string v0, "Failed to load secondary dex file"

    .line 442
    .line 443
    invoke-static {v9, v0, v1}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    if-nez v0, :cond_17

    .line 451
    .line 452
    const-string v0, "Failed to delete secondary dex file after trying to load"

    .line 453
    .line 454
    invoke-static {v9, v0}, LX/06s;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    :cond_17
    throw v1

    .line 458
    :cond_18
    invoke-static {}, LX/0A2;->A02()V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v13}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 462
    .line 463
    .line 464
    move-result-object v1

    .line 465
    const/16 v0, 0x35

    .line 466
    .line 467
    invoke-static {v1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 468
    .line 469
    .line 470
    move-result v0

    .line 471
    const/4 v4, 0x1

    .line 472
    if-nez v0, :cond_19

    .line 473
    .line 474
    const/4 v4, 0x0

    .line 475
    :cond_19
    invoke-virtual/range {v30 .. v30}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    if-eqz v0, :cond_1b

    .line 484
    .line 485
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    check-cast v2, Ldalvik/system/DexFile;

    .line 490
    .line 491
    if-eqz v4, :cond_1a

    .line 492
    .line 493
    const-class v1, LX/07Y;

    .line 494
    .line 495
    monitor-enter v1

    .line 496
    const/4 v0, 0x1

    .line 497
    :try_start_3
    invoke-static {v13, v0}, LX/07Y;->A03(Landroid/content/Context;Z)V

    .line 498
    .line 499
    .line 500
    sget-object v0, LX/07Y;->A0A:LX/07Y;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 501
    .line 502
    monitor-exit v1

    .line 503
    goto :goto_8

    .line 504
    :cond_1a
    invoke-static {v13}, LX/07Y;->A00(Landroid/content/Context;)LX/07Y;

    .line 505
    .line 506
    .line 507
    move-result-object v0

    .line 508
    :goto_8
    invoke-virtual {v0, v2}, LX/07Y;->A04(Ldalvik/system/DexFile;)V

    .line 509
    .line 510
    .line 511
    goto :goto_7

    .line 512
    :catchall_0
    move-exception v0

    .line 513
    monitor-exit v1

    .line 514
    throw v0

    .line 515
    :cond_1b
    return-void
.end method
