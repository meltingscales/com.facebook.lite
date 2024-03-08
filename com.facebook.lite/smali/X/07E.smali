.class public final LX/07E;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Landroid/content/Context;

.field public static A01:LX/0B0;

.field public static A02:Ljava/util/HashSet;

.field public static A03:Z


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

.method public static A00(Landroid/content/res/AssetManager;Ljava/lang/String;)LX/0B0;
    .locals 3

    .line 0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v2

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v0, "lib"

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, "libs"

    .line 23
    .line 24
    invoke-static {v0, p1, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 33
    .line 34
    .line 35
    sget-object v0, LX/0B0;->A02:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, LX/0B0;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_1
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v0, "FbSoLoader unable to determine compression algorithm for "

    .line 51
    .line 52
    invoke-static {v0, p1, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    new-instance v0, Ljava/lang/RuntimeException;

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :catch_0
    return-object v2
.end method

.method public static declared-synchronized A01(Landroid/content/Context;I)V
    .locals 18

    .line 0
    const-class v17, LX/07E;

    .line 1
    .line 2
    monitor-enter v17

    .line 3
    const/4 v4, 0x1

    .line 4
    :try_start_0
    new-array v5, v4, [LX/0BC;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v0, 0x0

    .line 8
    aput-object v0, v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    .line 9
    .line 10
    :try_start_1
    sget-boolean v0, LX/07E;->A03:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const-string v1, "FbSoLoader"

    .line 15
    .line 16
    const-string v0, "FBSoLoader already initialiazed"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    goto/16 :goto_9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 22
    .line 23
    :cond_0
    const v0, 0xffff

    .line 24
    .line 25
    .line 26
    and-int v6, p1, v0

    .line 27
    .line 28
    const/high16 v0, -0x10000

    .line 29
    .line 30
    and-int p1, p1, v0

    .line 31
    .line 32
    const/high16 v0, 0x20000

    .line 33
    .line 34
    and-int v0, v0, p1

    .line 35
    .line 36
    invoke-static {v0}, LX/000;->A0Q(I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    const/high16 v0, 0x40000

    .line 41
    .line 42
    and-int p1, p1, v0

    .line 43
    .line 44
    invoke-static/range {p1 .. p1}, LX/000;->A0Q(I)Z

    .line 45
    .line 46
    .line 47
    move-result v16

    .line 48
    :try_start_2
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 49
    .line 50
    .line 51
    move-result-object v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    .line 52
    :try_start_3
    invoke-static {}, Lcom/facebook/endtoend/EndToEnd;->A01()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    const-string v0, "FbSoLoader"

    .line 59
    .line 60
    invoke-static {v0}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    and-int/lit8 v6, v6, -0x3

    .line 64
    .line 65
    :cond_1
    move-object/from16 v3, p0

    .line 66
    .line 67
    invoke-static {v3, v6}, LX/0B9;->A02(Landroid/content/Context;I)V

    .line 68
    .line 69
    .line 70
    if-eqz v1, :cond_c
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    .line 71
    .line 72
    :try_start_4
    invoke-static {v3}, LX/0B1;->A05(Landroid/content/Context;)Z

    .line 73
    .line 74
    .line 75
    move-result v14

    .line 76
    if-nez v14, :cond_c

    .line 77
    .line 78
    goto :goto_0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    .line 79
    :catch_0
    const/4 v14, 0x0

    .line 80
    :goto_0
    :try_start_5
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 85
    .line 86
    const-string v8, "native_deps"

    .line 87
    .line 88
    new-instance v6, Ljava/io/File;

    .line 89
    .line 90
    invoke-direct {v6, v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_2

    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_3

    .line 113
    .line 114
    invoke-virtual {v6}, Ljava/io/File;->mkdir()Z

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_b

    .line 122
    .line 123
    const-string v0, "lock"

    .line 124
    .line 125
    invoke-static {v6, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v6, v0}, LX/0BF;->A00(Ljava/io/File;Ljava/io/File;)LX/0Aw;

    .line 130
    .line 131
    .line 132
    move-result-object v13
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_b

    .line 133
    :try_start_6
    const-string v0, "state"

    .line 134
    .line 135
    invoke-static {v6, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    const-string v7, "rw"

    .line 140
    .line 141
    new-instance v9, Ljava/io/RandomAccessFile;

    .line 142
    .line 143
    invoke-direct {v9, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const/4 v1, 0x0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 147
    :try_start_7
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->readByte()B

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-ne v0, v4, :cond_4

    .line 152
    .line 153
    const/4 v1, 0x1
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 154
    :catch_1
    :cond_4
    :try_start_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 155
    .line 156
    .line 157
    if-ne v1, v4, :cond_6

    .line 158
    .line 159
    const-string v0, "apk_id"

    .line 160
    .line 161
    invoke-static {v6, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    new-instance v9, Ljava/io/RandomAccessFile;

    .line 166
    .line 167
    invoke-direct {v9, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 168
    .line 169
    .line 170
    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    .line 171
    .line 172
    .line 173
    move-result-wide v0

    .line 174
    long-to-int v11, v0

    .line 175
    new-array v10, v11, [B

    .line 176
    .line 177
    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->read([B)I

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-eq v0, v11, :cond_5

    .line 182
    .line 183
    const/4 v10, 0x0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 184
    :cond_5
    :try_start_a
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 185
    .line 186
    .line 187
    invoke-static {v3}, LX/000;->A01(Landroid/content/Context;)Ljava/io/File;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-static {v3, v0}, LX/0BF;->A0A(Landroid/content/Context;Ljava/io/File;)[B

    .line 192
    .line 193
    .line 194
    move-result-object v9

    .line 195
    if-eqz v10, :cond_6

    .line 196
    .line 197
    if-eqz v9, :cond_6

    .line 198
    .line 199
    array-length v1, v10

    .line 200
    array-length v0, v9

    .line 201
    if-ne v1, v0, :cond_6

    .line 202
    .line 203
    invoke-static {v10, v9}, Ljava/util/Arrays;->equals([B[B)Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    xor-int/lit8 v0, v0, 0x1

    .line 208
    .line 209
    if-eqz v0, :cond_a

    .line 210
    .line 211
    :cond_6
    invoke-static {v6, v2}, LX/0B1;->A04(Ljava/io/File;B)V

    .line 212
    .line 213
    .line 214
    invoke-static {v3}, LX/000;->A01(Landroid/content/Context;)Ljava/io/File;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    new-instance v9, Ljava/util/zip/ZipFile;

    .line 219
    .line 220
    invoke-direct {v9, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 221
    .line 222
    .line 223
    :try_start_b
    const-string v0, "assets/native_deps.txt"

    .line 224
    .line 225
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-eqz v0, :cond_8

    .line 230
    .line 231
    invoke-virtual {v9, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 232
    .line 233
    .line 234
    move-result-object v12

    .line 235
    if-eqz v12, :cond_7
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 236
    .line 237
    :try_start_c
    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getSize()J

    .line 238
    .line 239
    .line 240
    move-result-wide v0

    .line 241
    long-to-int v10, v0

    .line 242
    invoke-static {v12, v10}, LX/0B1;->A06(Ljava/io/InputStream;I)[B

    .line 243
    .line 244
    .line 245
    move-result-object v11
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 246
    :try_start_d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 247
    .line 248
    .line 249
    :try_start_e
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    .line 250
    .line 251
    .line 252
    invoke-static {v3}, LX/000;->A01(Landroid/content/Context;)Ljava/io/File;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-static {v3, v0}, LX/0BF;->A0A(Landroid/content/Context;Ljava/io/File;)[B

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    array-length v9, v11

    .line 261
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 266
    .line 267
    new-instance v1, Ljava/io/File;

    .line 268
    .line 269
    invoke-direct {v1, v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    const-string v0, "deps"

    .line 273
    .line 274
    invoke-static {v1, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    new-instance v8, Ljava/io/RandomAccessFile;

    .line 279
    .line 280
    invoke-direct {v8, v0, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 281
    .line 282
    .line 283
    :try_start_f
    invoke-virtual {v8, v10}, Ljava/io/RandomAccessFile;->write([B)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v8, v11}, Ljava/io/RandomAccessFile;->write([B)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 293
    .line 294
    .line 295
    move-result-wide v0

    .line 296
    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 297
    .line 298
    .line 299
    :try_start_10
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 300
    .line 301
    .line 302
    const-string v0, "apk_id"

    .line 303
    .line 304
    invoke-static {v6, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-static {v3}, LX/000;->A01(Landroid/content/Context;)Ljava/io/File;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    invoke-static {v3, v0}, LX/0BF;->A0A(Landroid/content/Context;Ljava/io/File;)[B

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    new-instance v9, Ljava/io/RandomAccessFile;

    .line 317
    .line 318
    invoke-direct {v9, v1, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 319
    .line 320
    .line 321
    :try_start_11
    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 325
    .line 326
    .line 327
    move-result-wide v0

    .line 328
    invoke-virtual {v9, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 329
    .line 330
    .line 331
    :try_start_12
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 332
    .line 333
    .line 334
    invoke-static {v6}, LX/0BF;->A06(Ljava/io/File;)V

    .line 335
    .line 336
    .line 337
    invoke-static {v6, v4}, LX/0B1;->A04(Ljava/io/File;B)V

    .line 338
    .line 339
    .line 340
    goto :goto_3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 341
    :catchall_0
    move-exception v0

    .line 342
    :try_start_13
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    .line 343
    .line 344
    .line 345
    goto :goto_2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 346
    :cond_7
    :try_start_14
    const-string v1, "Failed to read native_deps file from APK"

    .line 347
    .line 348
    new-instance v0, Ljava/io/FileNotFoundException;

    .line 349
    .line 350
    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 354
    :catchall_1
    move-exception v1

    .line 355
    if-eqz v12, :cond_9

    .line 356
    .line 357
    :try_start_15
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V

    .line 358
    .line 359
    .line 360
    goto :goto_1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 361
    :cond_8
    :try_start_16
    const-string v0, "Could not find native_deps file in APK"

    .line 362
    .line 363
    new-instance v1, Ljava/io/FileNotFoundException;

    .line 364
    .line 365
    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    .line 366
    .line 367
    .line 368
    :catchall_2
    :cond_9
    :goto_1
    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 369
    :catchall_3
    move-exception v0

    .line 370
    :try_start_17
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    .line 371
    .line 372
    .line 373
    goto :goto_2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 374
    :catchall_4
    move-exception v0

    .line 375
    :try_start_18
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 376
    .line 377
    .line 378
    :catchall_5
    :goto_2
    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 379
    :catchall_6
    move-exception v0

    .line 380
    :try_start_1a
    invoke-virtual {v13}, LX/0Aw;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 381
    .line 382
    .line 383
    :catchall_7
    :try_start_1b
    throw v0

    .line 384
    :cond_a
    :goto_3
    invoke-virtual {v13}, LX/0Aw;->close()V

    .line 385
    .line 386
    .line 387
    :cond_b
    invoke-static {v3}, LX/0B1;->A05(Landroid/content/Context;)Z

    .line 388
    .line 389
    .line 390
    move-result v14
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_2
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_4
    .catchall {:try_start_1b .. :try_end_1b} :catchall_b

    .line 391
    :catch_2
    if-nez v14, :cond_c

    .line 392
    .line 393
    :try_start_1c
    const-string v1, "NativeDeps"

    .line 394
    .line 395
    const-string v0, "Failed to extract native deps from APK, falling back to using MinElf to get library dependencies."

    .line 396
    .line 397
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    .line 399
    .line 400
    const-string v1, "FbSoLoader"

    .line 401
    .line 402
    const-string v0, "Failed to use precomputed native lib dependencies file"

    .line 403
    .line 404
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    .line 406
    .line 407
    :cond_c
    new-instance v0, Ljava/util/HashSet;

    .line 408
    .line 409
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 410
    .line 411
    .line 412
    sput-object v0, LX/07E;->A02:Ljava/util/HashSet;

    .line 413
    .line 414
    aget-object v0, v5, v2

    .line 415
    .line 416
    if-eqz v0, :cond_d

    .line 417
    .line 418
    invoke-static {v0}, LX/0B9;->A04(LX/0BC;)V

    .line 419
    .line 420
    .line 421
    sget-object v1, LX/07E;->A02:Ljava/util/HashSet;

    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    :cond_d
    const-string v7, ".spk.xz"

    .line 431
    .line 432
    const-string v6, ".xzs"

    .line 433
    .line 434
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    const-string v2, "FbSoLoader"

    .line 439
    .line 440
    if-eqz v0, :cond_e

    .line 441
    .line 442
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    .line 443
    .line 444
    .line 445
    move-result v0

    .line 446
    if-eqz v0, :cond_e

    .line 447
    .line 448
    const-string v0, "Native libs file not compressed. Skipping initializing compressed asset sosource directories."

    .line 449
    .line 450
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    goto :goto_4

    .line 454
    :cond_e
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    invoke-static {v0, v7}, LX/07E;->A00(Landroid/content/res/AssetManager;Ljava/lang/String;)LX/0B0;

    .line 459
    .line 460
    .line 461
    move-result-object v5

    .line 462
    if-nez v5, :cond_f

    .line 463
    .line 464
    invoke-static {v0, v6}, LX/07E;->A00(Landroid/content/res/AssetManager;Ljava/lang/String;)LX/0B0;

    .line 465
    .line 466
    .line 467
    move-result-object v5

    .line 468
    if-nez v5, :cond_f

    .line 469
    .line 470
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    move-result-object v1

    .line 474
    const-string v0, "FbSoLoader unable to determine primary compression type "

    .line 475
    .line 476
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    const-string v0, " or fallback compression type "

    .line 483
    .line 484
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const-string v0, " of native libs file"

    .line 491
    .line 492
    invoke-static {v0, v2, v1}, LX/000;->A0N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    .line 493
    .line 494
    .line 495
    :goto_4
    :try_start_1d
    const-string v1, "lib-assets"

    .line 496
    .line 497
    new-instance v0, LX/053;

    .line 498
    .line 499
    invoke-direct {v0, v3}, LX/053;-><init>(Landroid/content/Context;)V

    .line 500
    .line 501
    .line 502
    invoke-static {v0}, LX/0B9;->A04(LX/0BC;)V

    .line 503
    .line 504
    .line 505
    sget-object v0, LX/07E;->A02:Ljava/util/HashSet;

    .line 506
    .line 507
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 508
    .line 509
    .line 510
    goto :goto_8
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_4
    .catchall {:try_start_1d .. :try_end_1d} :catchall_b

    .line 511
    :catch_3
    move-exception v1

    .line 512
    goto :goto_7

    .line 513
    :cond_f
    :try_start_1e
    new-instance v1, LX/05C;

    .line 514
    .line 515
    invoke-direct {v1, v3, v5}, LX/05C;-><init>(Landroid/content/Context;LX/0B0;)V

    .line 516
    .line 517
    .line 518
    if-eqz v16, :cond_10

    .line 519
    .line 520
    const-string v0, "Disabling apk asset so source"

    .line 521
    .line 522
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    .line 524
    .line 525
    new-instance v0, LX/08N;

    .line 526
    .line 527
    invoke-direct {v0, v1}, LX/08N;-><init>(LX/0BC;)V

    .line 528
    .line 529
    .line 530
    move-object v1, v0

    .line 531
    :cond_10
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    packed-switch v0, :pswitch_data_0

    .line 536
    .line 537
    .line 538
    const-string v1, "Unknown CompressionAlgorithm during FbSoLoader.init()"

    .line 539
    .line 540
    new-instance v0, Ljava/lang/RuntimeException;

    .line 541
    .line 542
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 543
    .line 544
    .line 545
    :goto_5
    throw v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    .line 546
    :pswitch_0
    :try_start_1f
    invoke-static {v1}, LX/0B9;->A04(LX/0BC;)V

    .line 547
    .line 548
    .line 549
    goto :goto_6

    .line 550
    :pswitch_1
    invoke-static {v1}, LX/0B9;->A04(LX/0BC;)V

    .line 551
    .line 552
    .line 553
    goto :goto_6
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    .line 554
    :catchall_8
    move-exception v0

    .line 555
    :try_start_20
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    .line 556
    :catchall_9
    move-exception v0

    .line 557
    goto :goto_5

    .line 558
    :pswitch_2
    :try_start_21
    invoke-static {v1}, LX/0B9;->A04(LX/0BC;)V

    .line 559
    .line 560
    .line 561
    :goto_6
    sget-object v1, LX/07E;->A02:Ljava/util/HashSet;

    .line 562
    .line 563
    const-string v0, "lib-compressed"

    .line 564
    .line 565
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 566
    .line 567
    .line 568
    goto :goto_8
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    .line 569
    :goto_7
    :try_start_22
    const-string v0, "prepend SoSource lib-assets failed"

    .line 570
    .line 571
    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 572
    .line 573
    .line 574
    :goto_8
    sput-object p0, LX/07E;->A00:Landroid/content/Context;

    .line 575
    .line 576
    const-string v0, "Initialized FBSoLoader"

    .line 577
    .line 578
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_4
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    .line 579
    .line 580
    .line 581
    :try_start_23
    invoke-static {v15}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 582
    .line 583
    .line 584
    sput-boolean v4, LX/07E;->A03:Z
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    .line 585
    .line 586
    :goto_9
    monitor-exit v17

    .line 587
    return-void

    .line 588
    :catchall_a
    move-exception v0

    .line 589
    :try_start_24
    throw v0
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_4
    .catchall {:try_start_24 .. :try_end_24} :catchall_b

    .line 590
    :catch_4
    move-exception v3

    .line 591
    :try_start_25
    const-string v1, "FbSoLoader"

    .line 592
    .line 593
    const-string v0, "RuntimeException during init"

    .line 594
    .line 595
    invoke-static {v1, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 596
    .line 597
    .line 598
    goto :goto_a

    .line 599
    :catch_5
    move-exception v2

    .line 600
    const-string v1, "FbSoLoader"

    .line 601
    .line 602
    const-string v0, "IOException during init"

    .line 603
    .line 604
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    .line 606
    .line 607
    new-instance v3, Ljava/lang/RuntimeException;

    .line 608
    .line 609
    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 610
    .line 611
    .line 612
    :goto_a
    throw v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_b

    .line 613
    :catchall_b
    move-exception v0

    .line 614
    :try_start_26
    invoke-static {v15}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 615
    .line 616
    .line 617
    sput-boolean v4, LX/07E;->A03:Z

    .line 618
    .line 619
    throw v0
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    .line 620
    :catchall_c
    move-exception v0

    .line 621
    :try_start_27
    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    .line 622
    :catchall_d
    move-exception v0

    .line 623
    monitor-exit v17

    .line 624
    throw v0

    .line 625
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static declared-synchronized A02(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 15

    .line 0
    const-class v8, LX/07E;

    .line 1
    .line 2
    monitor-enter v8

    .line 3
    :try_start_0
    sget-object v0, LX/07E;->A00:Landroid/content/Context;

    .line 4
    .line 5
    move-object/from16 v14, p2

    .line 6
    .line 7
    if-eqz v0, :cond_8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 8
    .line 9
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipFile;

    .line 10
    .line 11
    move-object/from16 v13, p1

    .line 12
    .line 13
    invoke-direct {v3, v13}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 14
    .line 15
    .line 16
    :try_start_2
    const/4 v0, 0x2

    .line 17
    new-array v5, v0, [Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v4, "assets"

    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {v14, v2, v0}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v0, 0x0

    .line 38
    aput-object v1, v5, v0

    .line 39
    .line 40
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v4, v2, v0}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v0, 0x1

    .line 49
    aput-object v1, v5, v0

    .line 50
    .line 51
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    check-cast v5, Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v5}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const-string v4, "libs.txt"

    .line 81
    .line 82
    invoke-static {v4, v0}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    .line 92
    if-eqz v5, :cond_6

    .line 93
    .line 94
    sget-object v11, LX/07E;->A01:LX/0B0;

    .line 95
    .line 96
    move-object v12, p0

    .line 97
    if-nez v11, :cond_3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    .line 99
    :try_start_3
    invoke-static {}, LX/0B0;->values()[LX/0B0;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    array-length v6, v7

    .line 104
    const/4 v2, 0x0

    .line 105
    :goto_0
    if-ge v2, v6, :cond_1

    .line 106
    .line 107
    aget-object v11, v7, v2

    .line 108
    .line 109
    invoke-static {v5}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    const-string v0, "libs"

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget-object v0, v11, LX/0B0;->A01:Ljava/lang/String;

    .line 119
    .line 120
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-nez v0, :cond_2

    .line 129
    .line 130
    add-int/lit8 v2, v2, 0x1

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_1
    const-string v2, "FbSoLoader"

    .line 134
    .line 135
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    const-string v0, "Metadata file libs.txt exists but couldn\'t find any compressed native lib file (libs.xxx) in path = "

    .line 140
    .line 141
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v0, " for zipFile = "

    .line 148
    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0, v2, v1}, LX/000;->A0N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 157
    .line 158
    .line 159
    const/4 v11, 0x0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 160
    :cond_2
    :try_start_4
    sput-object v11, LX/07E;->A01:LX/0B0;

    .line 161
    .line 162
    if-nez v11, :cond_3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 163
    .line 164
    :try_start_5
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 165
    .line 166
    .line 167
    const-string v2, "SoLoader"

    .line 168
    .line 169
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    const-string v0, "Compression algorithm null for "

    .line 174
    .line 175
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v0, ", will fallback to PlainAssetSoSource."

    .line 182
    .line 183
    invoke-static {v0, v2, v1}, LX/000;->A0N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 184
    .line 185
    .line 186
    sget-object v2, LX/07E;->A00:Landroid/content/Context;

    .line 187
    .line 188
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    const-string v0, "^assets/("

    .line 193
    .line 194
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    const-string v0, "/)?([^/]+)/([^/]+\\.so)$"

    .line 201
    .line 202
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    new-instance v9, LX/053;

    .line 207
    .line 208
    invoke-direct {v9, v2, p0, v13, v0}, LX/053;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    goto :goto_1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 212
    :catchall_0
    move-exception v0

    .line 213
    :try_start_6
    throw v0

    .line 214
    :cond_3
    iget-object v2, v11, LX/0B0;->A01:Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {v5}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    const-string v0, "libs"

    .line 221
    .line 222
    invoke-static {v0, v2, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p0

    .line 226
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-static {v5, v4, v0}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    sget-object v10, LX/07E;->A00:Landroid/content/Context;

    .line 235
    .line 236
    new-instance v9, LX/05C;

    .line 237
    .line 238
    invoke-direct/range {v9 .. v16}, LX/05C;-><init>(Landroid/content/Context;LX/0B0;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 239
    .line 240
    .line 241
    :try_start_7
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 242
    .line 243
    .line 244
    :goto_1
    sget-object v0, LX/07E;->A00:Landroid/content/Context;

    .line 245
    .line 246
    if-eqz v0, :cond_4

    .line 247
    .line 248
    sget-object v0, LX/07E;->A02:Ljava/util/HashSet;

    .line 249
    .line 250
    invoke-virtual {v0, v14}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v0

    .line 254
    if-nez v0, :cond_7

    .line 255
    .line 256
    invoke-static {v9}, LX/0B9;->A04(LX/0BC;)V

    .line 257
    .line 258
    .line 259
    sget-object v0, LX/07E;->A02:Ljava/util/HashSet;

    .line 260
    .line 261
    invoke-virtual {v0, v14}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :cond_4
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    const-string v0, "FbSoLoader.init() was not called prior to loading additional asset: "

    .line 270
    .line 271
    invoke-static {v0, v14, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    new-instance v0, Ljava/lang/RuntimeException;

    .line 276
    .line 277
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 281
    :cond_5
    :try_start_8
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    const-string v0, "FbSoLoader"

    .line 285
    .line 286
    invoke-static {v0}, LX/0Ax;->A00(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 287
    .line 288
    .line 289
    :cond_6
    :try_start_9
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 290
    .line 291
    .line 292
    :cond_7
    :goto_2
    monitor-exit v8

    .line 293
    return-void

    .line 294
    :catchall_1
    move-exception v0

    .line 295
    :try_start_a
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 296
    .line 297
    .line 298
    :catchall_2
    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 299
    :catchall_3
    move-exception v1

    .line 300
    goto :goto_3

    .line 301
    :cond_8
    :try_start_c
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    const-string v0, "FbSoLoader.init() was not called prior to loading additional asset: "

    .line 306
    .line 307
    invoke-static {v0, v14, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    new-instance v1, Ljava/lang/RuntimeException;

    .line 312
    .line 313
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    :goto_3
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 317
    :catchall_4
    move-exception v0

    .line 318
    monitor-exit v8

    .line 319
    throw v0
.end method
