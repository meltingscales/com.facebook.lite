.class public final LX/090;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0E:I

.field public static A0F:Z


# instance fields
.field public A00:LX/03x;

.field public A01:Ljava/util/concurrent/ScheduledExecutorService;

.field public final A02:Landroid/content/Context;

.field public final A03:LX/07q;

.field public final A04:LX/03o;

.field public final A05:Ljava/lang/Runnable;

.field public final A06:Ljava/util/Set;

.field public final A07:Ljava/util/concurrent/Executor;

.field public final A08:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final A09:LX/0BP;

.field public final A0A:LX/0BP;

.field public final A0B:LX/0BP;

.field public final A0C:LX/0BP;

.field public final A0D:LX/0BP;


# direct methods
.method public constructor <init>(Landroid/content/Context;LX/07q;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;LX/0BP;LX/0BP;LX/0BP;LX/0BP;LX/0BP;LX/0BP;)V
    .locals 2

    .line 14892
    new-instance v1, LX/03o;

    invoke-direct {v1}, LX/03o;-><init>()V

    .line 14893
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14894
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, LX/090;->A06:Ljava/util/Set;

    .line 14895
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, LX/090;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14896
    iput-object p1, p0, LX/090;->A02:Landroid/content/Context;

    .line 14897
    iput-object p5, p0, LX/090;->A0D:LX/0BP;

    .line 14898
    iput-object p6, p0, LX/090;->A0A:LX/0BP;

    .line 14899
    iput-object p7, p0, LX/090;->A09:LX/0BP;

    .line 14900
    iput-object p8, p0, LX/090;->A0B:LX/0BP;

    .line 14901
    iput-object p10, p0, LX/090;->A0C:LX/0BP;

    .line 14902
    iput-object p2, p0, LX/090;->A03:LX/07q;

    .line 14903
    iput-object p4, p0, LX/090;->A07:Ljava/util/concurrent/Executor;

    .line 14904
    iput-object p3, p0, LX/090;->A05:Ljava/lang/Runnable;

    .line 14905
    iput-object v1, p0, LX/090;->A04:LX/03o;

    .line 14906
    invoke-interface {p9}, LX/0BP;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX/03x;

    iput-object v0, p0, LX/090;->A00:LX/03x;

    .line 14907
    return-void
.end method

.method public static final A00(Ljava/io/File;)I
    .locals 3

    .line 0
    new-instance v0, LX/02S;

    .line 1
    .line 2
    invoke-direct {v0}, LX/02S;-><init>()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    add-int/lit8 v2, v0, 0x1

    .line 13
    .line 14
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v0, "_attempt"

    .line 19
    .line 20
    invoke-static {v0, v1, v2}, LX/000;->A0B(Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p0, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 29
    .line 30
    .line 31
    return v2

    .line 32
    :cond_0
    array-length v0, v0

    .line 33
    goto :goto_0
.end method

.method public static A01(LX/02N;LX/090;LX/04A;Ljava/io/File;)V
    .locals 23

    .line 0
    const-string v4, "Error while sending report"

    .line 1
    .line 2
    const-string v3, "lacrima"

    .line 3
    .line 4
    const-string v8, "_sent"

    .line 5
    .line 6
    move-object/from16 v9, p3

    .line 7
    .line 8
    invoke-static {v9, v8}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v22, 0x0

    .line 17
    .line 18
    if-nez v0, :cond_12

    .line 19
    .line 20
    :try_start_0
    const-string v1, "_report.txt"

    .line 21
    .line 22
    new-instance v0, LX/04U;

    .line 23
    .line 24
    invoke-direct {v0, v1}, LX/04U;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v9, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    array-length v1, v2

    .line 34
    const/4 v0, 0x1

    .line 35
    if-ne v1, v0, :cond_0

    .line 36
    .line 37
    aget-object v21, v2, v22

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/16 v21, 0x0

    .line 41
    .line 42
    :goto_0
    const/4 v15, 0x1

    .line 43
    if-nez v21, :cond_1

    .line 44
    .line 45
    const-string v2, "Cannot find report in %s"

    .line 46
    .line 47
    new-array v1, v15, [Ljava/lang/Object;

    .line 48
    .line 49
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    aput-object v0, v1, v22

    .line 54
    .line 55
    invoke-static {v3, v2, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_1
    new-instance v14, LX/02Q;

    .line 60
    .line 61
    move-object/from16 v0, p0

    .line 62
    .line 63
    move-object/from16 v5, p1

    .line 64
    .line 65
    invoke-direct {v14, v0, v5}, LX/02Q;-><init>(LX/02N;LX/090;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v1, "_attach.txt"

    .line 73
    .line 74
    new-instance v0, LX/04U;

    .line 75
    .line 76
    invoke-direct {v0, v1}, LX/04U;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v9, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    if-eqz v1, :cond_2

    .line 84
    .line 85
    array-length v0, v1

    .line 86
    if-ne v0, v15, :cond_2

    .line 87
    .line 88
    aget-object v0, v1, v22

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    const/4 v0, 0x0

    .line 92
    :goto_1
    const/4 v13, 0x2

    .line 93
    if-eqz v0, :cond_8

    .line 94
    .line 95
    new-instance v11, Ljava/util/Properties;

    .line 96
    .line 97
    invoke-direct {v11}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 98
    .line 99
    .line 100
    :try_start_1
    new-instance v10, Ljava/io/FileReader;

    .line 101
    .line 102
    invoke-direct {v10, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 103
    .line 104
    .line 105
    :try_start_2
    invoke-virtual {v11, v10}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v11}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 113
    .line 114
    .line 115
    move-result-object v20

    .line 116
    const/16 v19, 0x0

    .line 117
    .line 118
    const/16 v18, 0x0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 119
    .line 120
    :cond_3
    :goto_2
    :try_start_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    check-cast v12, Ljava/lang/String;

    .line 131
    .line 132
    invoke-virtual {v11, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    if-eqz v6, :cond_3

    .line 137
    .line 138
    const-string v0, "__"

    .line 139
    .line 140
    invoke-virtual {v12, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 141
    .line 142
    .line 143
    move-result v17

    .line 144
    const-string v7, "_r_"

    .line 145
    .line 146
    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v16

    .line 150
    const-string v1, ""

    .line 151
    .line 152
    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {v0, v7, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    new-instance v7, Ljava/io/File;

    .line 161
    .line 162
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    if-eqz v16, :cond_4

    .line 166
    .line 167
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_4

    .line 172
    .line 173
    const/16 v18, 0x1

    .line 174
    .line 175
    goto :goto_2

    .line 176
    :cond_4
    if-eqz v17, :cond_5

    .line 177
    .line 178
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-nez v0, :cond_5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 183
    .line 184
    :try_start_4
    const-string v6, "Attachment missing, cannot send: %s %s"

    .line 185
    .line 186
    new-array v1, v13, [Ljava/lang/Object;

    .line 187
    .line 188
    aput-object v12, v1, v22

    .line 189
    .line 190
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    aput-object v0, v1, v15

    .line 195
    .line 196
    invoke-static {v3, v6, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    const/16 v19, 0x1

    .line 200
    .line 201
    goto :goto_2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 202
    :cond_5
    :try_start_5
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_6

    .line 207
    .line 208
    const-string v6, "Attachment missing: %s %s"

    .line 209
    .line 210
    new-array v1, v13, [Ljava/lang/Object;

    .line 211
    .line 212
    aput-object v12, v1, v22

    .line 213
    .line 214
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    aput-object v0, v1, v15

    .line 219
    .line 220
    invoke-static {v3, v6, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :cond_6
    sget-object v0, LX/07N;->A0G:Ljava/util/Set;

    .line 225
    .line 226
    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, v12, v7}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    goto :goto_2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 233
    :catchall_0
    move-exception v0

    .line 234
    const/16 v19, 0x1

    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_7
    :try_start_6
    invoke-virtual {v10}, Ljava/io/Reader;->close()V

    .line 238
    .line 239
    .line 240
    goto :goto_5
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 241
    :catchall_1
    move-exception v0

    .line 242
    goto :goto_3

    .line 243
    :catchall_2
    move-exception v0

    .line 244
    const/16 v19, 0x0

    .line 245
    .line 246
    const/16 v18, 0x0

    .line 247
    .line 248
    :goto_3
    :try_start_7
    invoke-virtual {v10}, Ljava/io/Reader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 249
    .line 250
    .line 251
    :catchall_3
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 252
    :catch_0
    move-exception v1

    .line 253
    goto :goto_4

    .line 254
    :catch_1
    move-exception v1

    .line 255
    const/16 v19, 0x0

    .line 256
    .line 257
    const/16 v18, 0x0

    .line 258
    .line 259
    goto :goto_4

    .line 260
    :cond_8
    const/16 v19, 0x0

    .line 261
    .line 262
    const/16 v18, 0x0

    .line 263
    .line 264
    goto :goto_5

    .line 265
    :goto_4
    :try_start_9
    const-string v0, "Could not read attachment file"

    .line 266
    .line 267
    invoke-static {v3, v0, v1}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    .line 269
    .line 270
    invoke-static {}, LX/08w;->A00()V

    .line 271
    .line 272
    .line 273
    :goto_5
    iget-object v12, v5, LX/090;->A00:LX/03x;

    .line 274
    .line 275
    invoke-static {v12}, LX/02y;->A00(Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    iget-object v0, v5, LX/090;->A02:Landroid/content/Context;

    .line 279
    .line 280
    invoke-static {v0}, LX/02R;->A00(Landroid/content/Context;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-nez v0, :cond_9

    .line 285
    .line 286
    const-string v5, "Cannot send report: %s, %s"

    .line 287
    .line 288
    new-array v1, v13, [Ljava/lang/Object;

    .line 289
    .line 290
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    aput-object v0, v1, v22

    .line 295
    .line 296
    aput-object v2, v1, v15

    .line 297
    .line 298
    invoke-static {v3, v5, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    const-string v0, "    -> No connection, will try again later"

    .line 302
    .line 303
    invoke-static {v3, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    return-void

    .line 307
    :cond_9
    if-eqz v19, :cond_a

    .line 308
    .line 309
    const-string v5, "Cannot send report, required attachment missing: %s, %s"

    .line 310
    .line 311
    new-array v1, v13, [Ljava/lang/Object;

    .line 312
    .line 313
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    aput-object v0, v1, v22

    .line 318
    .line 319
    aput-object v2, v1, v15

    .line 320
    .line 321
    invoke-static {v3, v5, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    invoke-static {v9}, LX/090;->A00(Ljava/io/File;)I

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :cond_a
    if-eqz v18, :cond_c

    .line 329
    .line 330
    invoke-static {v9}, LX/090;->A00(Ljava/io/File;)I

    .line 331
    .line 332
    .line 333
    move-result v1

    .line 334
    const/4 v0, 0x3

    .line 335
    if-ge v1, v0, :cond_b

    .line 336
    .line 337
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    iget-object v0, v5, LX/090;->A01:Ljava/util/concurrent/ScheduledExecutorService;

    .line 341
    .line 342
    if-nez v0, :cond_12

    .line 343
    .line 344
    sget-object v7, LX/07u;->A05:Ljava/util/concurrent/ScheduledExecutorService;

    .line 345
    .line 346
    iput-object v7, v5, LX/090;->A01:Ljava/util/concurrent/ScheduledExecutorService;

    .line 347
    .line 348
    new-instance v6, LX/08z;

    .line 349
    .line 350
    move-object/from16 v0, p2

    .line 351
    .line 352
    invoke-direct {v6, v14, v5, v0, v9}, LX/08z;-><init>(LX/02N;LX/090;LX/04A;Ljava/io/File;)V

    .line 353
    .line 354
    .line 355
    const-wide/16 v1, 0xa

    .line 356
    .line 357
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 358
    .line 359
    invoke-interface {v7, v6, v1, v2, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 360
    .line 361
    .line 362
    return-void

    .line 363
    :cond_b
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    :cond_c
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    invoke-static {v9}, LX/090;->A00(Ljava/io/File;)I

    .line 370
    .line 371
    .line 372
    move-result v11
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 373
    :try_start_a
    invoke-static {v12}, LX/02y;->A00(Ljava/lang/Object;)V

    .line 374
    .line 375
    .line 376
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 380
    .line 381
    .line 382
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 383
    .line 384
    .line 385
    move-result-object v10
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 386
    :try_start_b
    invoke-static {v2}, LX/000;->A0G(Ljava/util/Map;)Ljava/util/Iterator;

    .line 387
    .line 388
    .line 389
    move-result-object v16

    .line 390
    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-eqz v0, :cond_e

    .line 395
    .line 396
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    check-cast v0, Ljava/util/Map$Entry;

    .line 401
    .line 402
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    check-cast v2, Ljava/io/File;

    .line 407
    .line 408
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-nez v1, :cond_d

    .line 413
    .line 414
    const-string v6, "Attachment missing: %s %s"

    .line 415
    .line 416
    new-array v1, v13, [Ljava/lang/Object;

    .line 417
    .line 418
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    aput-object v0, v1, v22

    .line 423
    .line 424
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    aput-object v0, v1, v15

    .line 429
    .line 430
    invoke-static {v3, v6, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    .line 432
    .line 433
    goto :goto_6

    .line 434
    :cond_d
    new-instance v7, Ljava/io/FileInputStream;

    .line 435
    .line 436
    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 437
    .line 438
    .line 439
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 440
    .line 441
    .line 442
    move-result-object v6

    .line 443
    check-cast v6, Ljava/lang/String;

    .line 444
    .line 445
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 446
    .line 447
    .line 448
    move-result-wide v1

    .line 449
    new-instance v0, LX/05Y;

    .line 450
    .line 451
    invoke-direct {v0, v7, v1, v2}, LX/05Y;-><init>(Ljava/io/InputStream;J)V

    .line 452
    .line 453
    .line 454
    invoke-virtual {v10, v6, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    goto :goto_6

    .line 458
    :cond_e
    invoke-virtual {v12, v14, v10, v11}, LX/03x;->A01(LX/02N;Ljava/util/Map;I)Z

    .line 459
    .line 460
    .line 461
    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 462
    :try_start_c
    invoke-virtual {v10}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 467
    .line 468
    .line 469
    move-result-object v1

    .line 470
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 471
    .line 472
    .line 473
    move-result v0

    .line 474
    if-eqz v0, :cond_f

    .line 475
    .line 476
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    check-cast v0, LX/05Y;

    .line 481
    .line 482
    iget-object v0, v0, LX/05Y;->A01:Ljava/io/InputStream;

    .line 483
    .line 484
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 485
    .line 486
    .line 487
    goto :goto_7

    .line 488
    :cond_f
    if-eqz v2, :cond_11

    .line 489
    .line 490
    goto :goto_9

    .line 491
    :catchall_4
    move-exception v2

    .line 492
    invoke-virtual {v10}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 501
    .line 502
    .line 503
    move-result v0

    .line 504
    if-eqz v0, :cond_10

    .line 505
    .line 506
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 507
    .line 508
    .line 509
    move-result-object v0

    .line 510
    check-cast v0, LX/05Y;

    .line 511
    .line 512
    iget-object v0, v0, LX/05Y;->A01:Ljava/io/InputStream;

    .line 513
    .line 514
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 515
    .line 516
    .line 517
    goto :goto_8

    .line 518
    :cond_10
    throw v2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 519
    :catch_2
    :try_start_d
    invoke-static {}, LX/08w;->A00()V

    .line 520
    .line 521
    .line 522
    goto :goto_a

    .line 523
    :goto_9
    invoke-static {v9, v8}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 528
    .line 529
    .line 530
    :cond_11
    :goto_a
    invoke-virtual {v5}, LX/090;->A02()V

    .line 531
    .line 532
    .line 533
    return-void
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 534
    :catchall_5
    move-exception v0

    .line 535
    invoke-static {}, LX/08w;->A00()V

    .line 536
    .line 537
    .line 538
    invoke-static {v3, v4, v0}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 539
    .line 540
    .line 541
    return-void

    .line 542
    :catch_3
    move-exception v0

    .line 543
    invoke-static {v3, v4, v0}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 544
    .line 545
    .line 546
    invoke-static {}, LX/08w;->A00()V

    .line 547
    .line 548
    .line 549
    :cond_12
    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 3

    .line 0
    const-string v0, "cleanupSentReports"

    .line 1
    .line 2
    invoke-static {v0}, LX/06A;->A01(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    const/4 v0, 0x1

    .line 6
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, LX/07u;->A01()Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v0, LX/040;

    .line 16
    .line 17
    invoke-direct {v0, p0, v2}, LX/040;-><init>(LX/090;Ljava/util/concurrent/CountDownLatch;)V

    .line 18
    .line 19
    .line 20
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    invoke-static {}, LX/06A;->A00()V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    invoke-static {}, LX/06A;->A00()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public final A03(LX/02m;)V
    .locals 3

    .line 0
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 1
    .line 2
    .line 3
    move-result-object v1

    .line 4
    const-string v0, "sendPendingReports."

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, LX/06A;->A01(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    :try_start_0
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    .line 27
    .line 28
    invoke-direct {v2, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, LX/090;->A07:Ljava/util/concurrent/Executor;

    .line 32
    .line 33
    new-instance v0, LX/03z;

    .line 34
    .line 35
    invoke-direct {v0, p1, p0, v2}, LX/03z;-><init>(LX/02m;LX/090;Ljava/util/concurrent/CountDownLatch;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    invoke-static {}, LX/06A;->A00()V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    invoke-static {}, LX/06A;->A00()V

    .line 47
    .line 48
    .line 49
    throw v0
.end method
