.class public abstract LX/05T;
.super LX/08V;
.source ""

# interfaces
.implements LX/0As;


# instance fields
.field public A00:[Ljava/lang/String;

.field public final A01:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 1

    .line 268435456
    const/4 v0, 0x1

    .line 268435457
    invoke-direct {p0, p2, v0}, LX/08V;-><init>(Ljava/io/File;I)V

    .line 268435458
    .line 268435459
    .line 268435460
    iput-object p1, p0, LX/05T;->A01:Landroid/content/Context;

    .line 268435461
    .line 268435462
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 0
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 1
    .line 2
    .line 3
    move-result-object v1

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v0, "/"

    .line 14
    .line 15
    invoke-static {v0, p2, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/io/File;

    .line 20
    .line 21
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    invoke-direct {p0, v1, v0}, LX/08V;-><init>(Ljava/io/File;I)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, LX/05T;->A01:Landroid/content/Context;

    .line 29
    .line 30
    return-void
.end method

.method public static A00(Ljava/io/File;BZ)V
    .locals 3

    .line 0
    :try_start_0
    const-string v0, "rw"

    .line 1
    .line 2
    new-instance v2, Ljava/io/RandomAccessFile;

    .line 3
    .line 4
    invoke-direct {v2, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-wide/16 v0, 0x0
    :try_end_0
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    :try_start_1
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-virtual {v2, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 20
    .line 21
    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    .line 30
    .line 31
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 32
    .line 33
    .line 34
    return-void
    :try_end_2
    .catch Ljava/io/SyncFailedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 37
    .line 38
    .line 39
    :catchall_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/SyncFailedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 40
    :catch_0
    move-exception v2

    .line 41
    const-string v1, "fb-UnpackingSoSource"

    .line 42
    .line 43
    const-string v0, "state file sync failed"

    .line 44
    .line 45
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public A07(I)V
    .locals 18

    .line 0
    const-string v17, "error removing "

    .line 1
    .line 2
    const-string v6, "fb-UnpackingSoSource"

    .line 3
    .line 4
    move-object/from16 v9, p0

    .line 5
    .line 6
    iget-object v3, v9, LX/08V;->A01:Ljava/io/File;

    .line 7
    .line 8
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v0, "cannot mkdir: "

    .line 25
    .line 26
    invoke-static {v3, v0, v1}, LX/000;->A05(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/io/IOException;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    throw v0

    .line 31
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const-string v1, "error adding "

    .line 36
    .line 37
    const/4 v7, 0x1

    .line 38
    const-string v2, " write permission"

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    invoke-virtual {v3, v7}, Ljava/io/File;->setWritable(Z)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    invoke-static {v1}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0, v2, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v0, Ljava/io/IOException;

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_1
    const/4 v4, 0x0

    .line 67
    :try_start_0
    const-string v0, "dso_lock"

    .line 68
    .line 69
    invoke-static {v3, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v3, v0}, LX/0BF;->A00(Ljava/io/File;Ljava/io/File;)LX/0Aw;

    .line 74
    .line 75
    .line 76
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 77
    :try_start_1
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    invoke-virtual {v3, v7}, Ljava/io/File;->setWritable(Z)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_2

    .line 91
    .line 92
    invoke-static {v1}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0, v2, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Ljava/io/IOException;

    .line 105
    .line 106
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    throw v1

    .line 110
    :cond_2
    const-string v0, "dso_state"

    .line 111
    .line 112
    invoke-static {v3, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-virtual {v9}, LX/05T;->A09()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    and-int/lit8 v0, p1, 0x2

    .line 121
    .line 122
    invoke-static {v0}, LX/000;->A0Q(I)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    :try_start_2
    const-string v11, "rw"

    .line 127
    .line 128
    if-nez v0, :cond_6

    .line 129
    .line 130
    const-string v0, "dso_deps"

    .line 131
    .line 132
    invoke-static {v3, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 133
    .line 134
    .line 135
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 136
    :try_start_3
    new-instance v10, Ljava/io/RandomAccessFile;

    .line 137
    .line 138
    invoke-direct {v10, v0, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 139
    .line 140
    .line 141
    :try_start_4
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    .line 142
    .line 143
    .line 144
    move-result-wide v15

    .line 145
    const-wide/16 v13, 0x0

    .line 146
    .line 147
    cmp-long v0, v15, v13

    .line 148
    .line 149
    if-eqz v0, :cond_5

    .line 150
    .line 151
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    .line 152
    .line 153
    .line 154
    move-result-wide v0

    .line 155
    long-to-int v13, v0

    .line 156
    new-array v1, v13, [B

    .line 157
    .line 158
    invoke-virtual {v10, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-eq v0, v13, :cond_3

    .line 163
    .line 164
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_3
    invoke-static {v1, v12}, Ljava/util/Arrays;->equals([B[B)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    xor-int/lit8 v0, v0, 0x1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 173
    .line 174
    :try_start_5
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 175
    .line 176
    .line 177
    if-nez v0, :cond_6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 178
    .line 179
    :try_start_6
    new-instance v10, Ljava/io/RandomAccessFile;

    .line 180
    .line 181
    invoke-direct {v10, v8, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 182
    .line 183
    .line 184
    :try_start_7
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->length()J

    .line 185
    .line 186
    .line 187
    move-result-wide v15

    .line 188
    const-wide/16 v13, 0x1

    .line 189
    .line 190
    cmp-long v0, v15, v13

    .line 191
    .line 192
    if-nez v0, :cond_4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 193
    .line 194
    :try_start_8
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readByte()B

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    if-ne v0, v7, :cond_4

    .line 199
    .line 200
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto :goto_1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 204
    :catch_0
    move-exception v0

    .line 205
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_4
    const/4 v0, 0x0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 212
    :goto_1
    :try_start_a
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 213
    .line 214
    .line 215
    if-ne v0, v7, :cond_6

    .line 216
    .line 217
    goto :goto_4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    .line 218
    :cond_5
    :goto_2
    :try_start_b
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 219
    .line 220
    .line 221
    goto :goto_3
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 222
    :catchall_0
    move-exception v0

    .line 223
    :try_start_c
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 224
    .line 225
    .line 226
    :catchall_1
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 227
    :catch_1
    :try_start_e
    move-exception v1

    .line 228
    const-string v0, "failed to compare whether deps changed"

    .line 229
    .line 230
    invoke-static {v6, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .line 232
    .line 233
    :cond_6
    :goto_3
    and-int/lit8 v0, p1, 0x4

    .line 234
    .line 235
    const/4 v10, 0x0

    .line 236
    if-nez v0, :cond_7

    .line 237
    .line 238
    const/4 v10, 0x1

    .line 239
    :cond_7
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    invoke-static {v8, v4, v10}, LX/05T;->A00(Ljava/io/File;BZ)V

    .line 243
    .line 244
    .line 245
    new-instance v0, LX/0BH;

    .line 246
    .line 247
    invoke-direct {v0, v9}, LX/0BH;-><init>(LX/05T;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    .line 251
    .line 252
    .line 253
    move-result-object v13

    .line 254
    if-eqz v13, :cond_8

    .line 255
    .line 256
    array-length v7, v13

    .line 257
    const/4 v1, 0x0

    .line 258
    goto :goto_5

    .line 259
    :cond_8
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    const-string v0, "unable to list directory "

    .line 264
    .line 265
    invoke-static {v3, v0, v1}, LX/000;->A05(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/io/IOException;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :goto_4
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 272
    .line 273
    .line 274
    :try_start_f
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v5}, LX/0Aw;->close()V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_a
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    .line 281
    .line 282
    :catchall_2
    move-exception v1

    .line 283
    :try_start_10
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    .line 284
    .line 285
    .line 286
    goto :goto_7

    .line 287
    :goto_5
    if-ge v1, v7, :cond_9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    .line 288
    .line 289
    :try_start_11
    aget-object v0, v13, v1

    .line 290
    .line 291
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-static {v0}, LX/0BF;->A05(Ljava/io/File;)V

    .line 295
    .line 296
    .line 297
    add-int/lit8 v1, v1, 0x1

    .line 298
    .line 299
    goto :goto_5

    .line 300
    :cond_9
    invoke-virtual {v9}, LX/05T;->A08()LX/0BK;

    .line 301
    .line 302
    .line 303
    move-result-object v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 304
    :try_start_12
    invoke-virtual {v0, v3}, LX/0BK;->A01(Ljava/io/File;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 305
    .line 306
    .line 307
    :try_start_13
    invoke-virtual {v0}, LX/0BK;->close()V

    .line 308
    .line 309
    .line 310
    const-string v0, "dso_deps"

    .line 311
    .line 312
    invoke-static {v3, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    new-instance v7, Ljava/io/RandomAccessFile;

    .line 317
    .line 318
    invoke-direct {v7, v0, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 319
    .line 320
    .line 321
    :try_start_14
    invoke-virtual {v7, v12}, Ljava/io/RandomAccessFile;->write([B)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 325
    .line 326
    .line 327
    move-result-wide v0

    .line 328
    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 329
    .line 330
    .line 331
    :try_start_15
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 332
    .line 333
    .line 334
    new-instance v7, LX/0BI;

    .line 335
    .line 336
    invoke-direct {v7, v5, v9, v8, v10}, LX/0BI;-><init>(LX/0Aw;LX/05T;Ljava/io/File;Z)V

    .line 337
    .line 338
    .line 339
    and-int/lit8 v0, p1, 0x1

    .line 340
    .line 341
    if-eqz v0, :cond_a

    .line 342
    .line 343
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    const-string v0, "SoSync:"

    .line 348
    .line 349
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    new-instance v0, Ljava/lang/Thread;

    .line 361
    .line 362
    invoke-direct {v0, v7, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 366
    .line 367
    .line 368
    goto :goto_6

    .line 369
    :cond_a
    invoke-virtual {v7}, LX/0BI;->run()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    .line 370
    .line 371
    .line 372
    :goto_6
    :try_start_16
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    goto :goto_a
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    .line 376
    :catchall_3
    move-exception v1

    .line 377
    :try_start_17
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V

    .line 378
    .line 379
    .line 380
    goto :goto_7
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_5

    .line 381
    :catchall_4
    move-exception v1

    .line 382
    :try_start_18
    invoke-virtual {v0}, LX/0BK;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    .line 383
    .line 384
    .line 385
    :catchall_5
    :goto_7
    :try_start_19
    throw v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 386
    :catchall_6
    move-exception v0

    .line 387
    goto :goto_8

    .line 388
    :catchall_7
    move-exception v0

    .line 389
    :try_start_1a
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    goto :goto_9

    .line 393
    :goto_8
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v5}, LX/0Aw;->close()V

    .line 397
    .line 398
    .line 399
    :goto_9
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 400
    :catchall_8
    move-exception v1

    .line 401
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    .line 402
    .line 403
    .line 404
    move-result v0

    .line 405
    if-eqz v0, :cond_b

    .line 406
    .line 407
    invoke-virtual {v3, v4}, Ljava/io/File;->setWritable(Z)Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    if-nez v0, :cond_b

    .line 412
    .line 413
    invoke-static/range {v17 .. v17}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    invoke-static {v0, v2, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v1

    .line 425
    new-instance v0, Ljava/io/IOException;

    .line 426
    .line 427
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    throw v0

    .line 431
    :goto_a
    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-eqz v0, :cond_c

    .line 436
    .line 437
    invoke-virtual {v3, v4}, Ljava/io/File;->setWritable(Z)Z

    .line 438
    .line 439
    .line 440
    move-result v0

    .line 441
    if-nez v0, :cond_c

    .line 442
    .line 443
    invoke-static/range {v17 .. v17}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v0

    .line 451
    invoke-static {v0, v2, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    new-instance v1, Ljava/io/IOException;

    .line 456
    .line 457
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 458
    .line 459
    .line 460
    :cond_b
    throw v1

    .line 461
    :cond_c
    return-void
.end method

.method public abstract A08()LX/0BK;
.end method

.method public A09()[B
    .locals 7

    .line 0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 1
    .line 2
    .line 3
    move-result-object v6

    .line 4
    invoke-virtual {p0}, LX/05T;->A08()LX/0BK;

    .line 5
    .line 6
    .line 7
    move-result-object v5

    .line 8
    :try_start_0
    invoke-virtual {v5}, LX/0BK;->A02()[LX/0BJ;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    array-length v3, v4

    .line 13
    invoke-virtual {v6, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    if-ge v2, v3, :cond_0

    .line 18
    .line 19
    aget-object v1, v4, v2

    .line 20
    .line 21
    iget-object v0, v1, LX/0BJ;->A01:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, v1, LX/0BJ;->A00:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v2, v2, 0x1

    .line 32
    .line 33
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_0
    invoke-virtual {v5}, LX/0BK;->close()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 42
    .line 43
    .line 44
    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    :try_start_1
    invoke-virtual {v5}, LX/0BK;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    .line 48
    .line 49
    :catchall_1
    throw v0
.end method

.method public final AdP()V
    .locals 4

    .line 0
    iget-object v3, p0, LX/08V;->A01:Ljava/io/File;

    .line 1
    .line 2
    const-string v0, "dso_lock"

    .line 3
    .line 4
    invoke-static {v3, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    :try_start_0
    invoke-static {v3, v0}, LX/0BF;->A00(Ljava/io/File;Ljava/io/File;)LX/0Aw;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, LX/0Aw;->close()V

    .line 13
    .line 14
    .line 15
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    move-exception v2

    .line 17
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v0, "Encountered exception during wait for unpacking trying to acquire file lock for "

    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, " ("

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v0, "): "

    .line 46
    .line 47
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v0, "fb-UnpackingSoSource"

    .line 52
    .line 53
    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    return-void
.end method
