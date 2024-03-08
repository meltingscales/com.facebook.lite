.class public final LX/09o;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:LX/093;

.field public final A01:LX/091;

.field public final A02:LX/08k;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/lang/String;


# direct methods
.method public constructor <init>(LX/093;LX/08k;Ljava/io/File;)V
    .locals 2

    .line 0
    new-instance v1, LX/091;

    .line 1
    .line 2
    invoke-direct {v1, p1, p2}, LX/091;-><init>(LX/093;LX/08k;)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, LX/09o;->A04:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p3}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, LX/09o;->A03:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p1, p0, LX/09o;->A00:LX/093;

    .line 21
    .line 22
    iput-object p2, p0, LX/09o;->A02:LX/08k;

    .line 23
    .line 24
    iput-object v1, p0, LX/09o;->A01:LX/091;

    .line 25
    .line 26
    return-void
.end method

.method public static A00(LX/09o;)Ljava/io/File;
    .locals 2

    .line 0
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 1
    .line 2
    .line 3
    move-result-object v1

    .line 4
    iget-object v0, p0, LX/09o;->A04:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v0, "_compiled"

    .line 10
    .line 11
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v0, Ljava/io/File;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method


# virtual methods
.method public final A01(Z)Ljava/lang/String;
    .locals 4

    .line 0
    invoke-static {}, LX/093;->A00()I

    .line 1
    .line 2
    .line 3
    move-result v1

    .line 4
    const/16 v0, 0x1a

    .line 5
    .line 6
    if-lt v1, v0, :cond_0

    .line 7
    .line 8
    iget-object v3, p0, LX/09o;->A03:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v0, "oat/"

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-static {}, LX/093;->A01()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v2, Ljava/io/File;

    .line 28
    .line 29
    invoke-direct {v2, v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-string v0, "cannot mkdir: "

    .line 51
    .line 52
    invoke-static {v2, v0, v1}, LX/000;->A05(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/io/IOException;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    throw v0

    .line 57
    :cond_0
    iget-object v0, p0, LX/09o;->A03:Ljava/lang/String;

    .line 58
    .line 59
    new-instance v2, Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, "/"

    .line 77
    .line 78
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    return-object v0
.end method

.method public final A02(Ljava/lang/String;)V
    .locals 19

    .line 0
    move-object/from16 v11, p0

    .line 1
    .line 2
    invoke-static {v11}, LX/09o;->A00(LX/09o;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_b

    .line 11
    .line 12
    iget-object v3, v11, LX/09o;->A03:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_b

    .line 19
    .line 20
    iget-object v7, v11, LX/09o;->A04:Ljava/lang/String;

    .line 21
    .line 22
    const/16 v0, 0x2f

    .line 23
    .line 24
    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v2, -0x1

    .line 29
    const-string v4, ""

    .line 30
    .line 31
    if-eq v0, v2, :cond_0

    .line 32
    .line 33
    add-int/lit8 v1, v0, 0x1

    .line 34
    .line 35
    const/16 v0, 0x2e

    .line 36
    .line 37
    invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eq v0, v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {v7, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_b

    .line 52
    .line 53
    const/4 v10, 0x1

    .line 54
    :try_start_0
    invoke-virtual {v11, v10}, LX/09o;->A01(Z)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 58
    invoke-static {v2}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v0, ".odex"

    .line 66
    .line 67
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    invoke-static {v2}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, ".vdex"

    .line 79
    .line 80
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-static {v3}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const-string v2, "/"

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v0, "_tmp.odex"

    .line 97
    .line 98
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-static {v3}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, "_tmp.vdex"

    .line 113
    .line 114
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    const/4 v4, 0x0

    .line 119
    const/4 v3, 0x2

    .line 120
    const/16 v18, 0x3

    .line 121
    .line 122
    const/4 v2, 0x4

    .line 123
    new-array v12, v2, [Ljava/lang/String;

    .line 124
    .line 125
    const-string v0, "/system/bin/dex2oat"

    .line 126
    .line 127
    aput-object v0, v12, v4

    .line 128
    .line 129
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v0, "--dex-file="

    .line 134
    .line 135
    invoke-static {v0, v7, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    aput-object v0, v12, v10

    .line 140
    .line 141
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v0, "--oat-file="

    .line 146
    .line 147
    invoke-static {v0, v6, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    aput-object v0, v12, v3

    .line 152
    .line 153
    const-string v0, "--no-watch-dog"

    .line 154
    .line 155
    aput-object v0, v12, v18

    .line 156
    .line 157
    new-instance v13, Ljava/lang/ProcessBuilder;

    .line 158
    .line 159
    invoke-direct {v13, v12}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-static {}, LX/093;->A00()I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    const/16 v1, 0x1a

    .line 167
    .line 168
    if-lt v0, v1, :cond_1

    .line 169
    .line 170
    invoke-static {}, LX/093;->A01()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v14

    .line 174
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-nez v0, :cond_1

    .line 179
    .line 180
    invoke-virtual {v13}, Ljava/lang/ProcessBuilder;->command()Ljava/util/List;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    move-result-object v15

    .line 188
    const-string v0, "--instruction-set="

    .line 189
    .line 190
    invoke-static {v0, v14, v15}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    move-result-object v12

    .line 201
    const-string v15, "dalvik.vm.isa."

    .line 202
    .line 203
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v0, ".features"

    .line 210
    .line 211
    invoke-static {v0, v12}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    const-string v0, "--instruction-set-features"

    .line 216
    .line 217
    invoke-static {v13, v12, v0}, LX/091;->A00(Ljava/lang/ProcessBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v15}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    move-result-object v12

    .line 224
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string v0, ".variant"

    .line 228
    .line 229
    invoke-static {v0, v12}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    const-string v0, "--instruction-set-variant"

    .line 234
    .line 235
    invoke-static {v13, v12, v0}, LX/091;->A00(Ljava/lang/ProcessBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    :cond_1
    move-object/from16 v15, p1

    .line 239
    .line 240
    if-eqz p1, :cond_2

    .line 241
    .line 242
    invoke-static {}, LX/093;->A00()I

    .line 243
    .line 244
    .line 245
    move-result v12

    .line 246
    const/16 v0, 0x15

    .line 247
    .line 248
    if-lt v12, v0, :cond_5

    .line 249
    .line 250
    if-gt v12, v1, :cond_5

    .line 251
    .line 252
    invoke-virtual {v13}, Ljava/lang/ProcessBuilder;->environment()Ljava/util/Map;

    .line 253
    .line 254
    .line 255
    move-result-object v14

    .line 256
    const-string v0, "CLASSPATH"

    .line 257
    .line 258
    invoke-interface {v14, v0, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    const-string v12, "BOOTCLASSPATH"

    .line 262
    .line 263
    invoke-static {v12}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-interface {v14, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    :cond_2
    :goto_0
    const-string v0, "dalvik.vm.dex2oat-Xms"

    .line 271
    .line 272
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v17

    .line 276
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    const-string v12, "--runtime-arg"

    .line 281
    .line 282
    if-nez v0, :cond_3

    .line 283
    .line 284
    invoke-virtual {v13}, Ljava/lang/ProcessBuilder;->command()Ljava/util/List;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    invoke-virtual {v13}, Ljava/lang/ProcessBuilder;->command()Ljava/util/List;

    .line 292
    .line 293
    .line 294
    move-result-object v16

    .line 295
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    move-result-object v15

    .line 299
    const-string v14, "-Xms"

    .line 300
    .line 301
    move-object/from16 v0, v17

    .line 302
    .line 303
    invoke-static {v14, v0, v15}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v14

    .line 307
    move-object/from16 v0, v16

    .line 308
    .line 309
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    .line 311
    .line 312
    :cond_3
    const-string v0, "dalvik.vm.dex2oat-Xmx"

    .line 313
    .line 314
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v15

    .line 318
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    if-nez v0, :cond_4

    .line 323
    .line 324
    invoke-virtual {v13}, Ljava/lang/ProcessBuilder;->command()Ljava/util/List;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    invoke-virtual {v13}, Ljava/lang/ProcessBuilder;->command()Ljava/util/List;

    .line 332
    .line 333
    .line 334
    move-result-object v14

    .line 335
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    move-result-object v12

    .line 339
    const-string v0, "-Xmx"

    .line 340
    .line 341
    invoke-static {v0, v15, v12}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    :cond_4
    const-string v12, "dalvik.vm.dex2oat-filter"

    .line 349
    .line 350
    const-string v0, "--compiler-filter"

    .line 351
    .line 352
    invoke-static {v13, v12, v0}, LX/091;->A00(Ljava/lang/ProcessBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    const-string v0, "dalvik.vm.dex2oat-flags"

    .line 356
    .line 357
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v12

    .line 361
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-nez v0, :cond_6

    .line 366
    .line 367
    const/16 v0, 0x20

    .line 368
    .line 369
    new-instance v14, Landroid/text/TextUtils$SimpleStringSplitter;

    .line 370
    .line 371
    invoke-direct {v14, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v14, v12}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    :goto_1
    invoke-virtual {v14}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-eqz v0, :cond_6

    .line 382
    .line 383
    invoke-virtual {v13}, Ljava/lang/ProcessBuilder;->command()Ljava/util/List;

    .line 384
    .line 385
    .line 386
    move-result-object v12

    .line 387
    invoke-virtual {v14}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object v0

    .line 391
    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    goto :goto_1

    .line 395
    :cond_5
    invoke-virtual {v13}, Ljava/lang/ProcessBuilder;->command()Ljava/util/List;

    .line 396
    .line 397
    .line 398
    move-result-object v14

    .line 399
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    move-result-object v12

    .line 403
    const-string v0, "--class-loader-context="

    .line 404
    .line 405
    invoke-static {v0, v15, v12}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v0

    .line 409
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    goto/16 :goto_0

    .line 413
    .line 414
    :cond_6
    const/4 v12, -0x1

    .line 415
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 416
    .line 417
    .line 418
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 419
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 420
    .line 421
    .line 422
    move-result v12

    .line 423
    if-nez v12, :cond_a
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 424
    .line 425
    invoke-static {}, LX/093;->A00()I

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    if-lt v0, v1, :cond_7

    .line 430
    .line 431
    :try_start_3
    new-array v0, v4, [Ljava/lang/String;

    .line 432
    .line 433
    invoke-static {v6, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 434
    .line 435
    .line 436
    move-result-object v15

    .line 437
    new-array v0, v4, [Ljava/lang/String;

    .line 438
    .line 439
    invoke-static {v9, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 440
    .line 441
    .line 442
    move-result-object v12

    .line 443
    new-array v0, v4, [Ljava/lang/String;

    .line 444
    .line 445
    invoke-static {v5, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 446
    .line 447
    .line 448
    move-result-object v14

    .line 449
    new-array v0, v4, [Ljava/lang/String;

    .line 450
    .line 451
    invoke-static {v8, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    .line 452
    .line 453
    .line 454
    move-result-object v13

    .line 455
    new-array v0, v3, [Ljava/nio/file/CopyOption;

    .line 456
    .line 457
    sget-object v16, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 458
    .line 459
    aput-object v16, v0, v4

    .line 460
    .line 461
    sget-object v16, Ljava/nio/file/StandardCopyOption;->ATOMIC_MOVE:Ljava/nio/file/StandardCopyOption;

    .line 462
    .line 463
    aput-object v16, v0, v10

    .line 464
    .line 465
    invoke-static {v15, v12, v0}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 466
    .line 467
    .line 468
    new-array v12, v3, [Ljava/nio/file/CopyOption;

    .line 469
    .line 470
    sget-object v0, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    .line 471
    .line 472
    aput-object v0, v12, v4

    .line 473
    .line 474
    aput-object v16, v12, v10

    .line 475
    .line 476
    invoke-static {v14, v13, v12}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;

    .line 477
    .line 478
    .line 479
    goto :goto_2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 480
    :catchall_0
    move-exception v12

    .line 481
    const-string v0, "Exception when moving file using Path APIs"

    .line 482
    .line 483
    invoke-static {v0, v12}, LX/0AD;->A01(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 484
    .line 485
    .line 486
    invoke-static {v0, v12}, LX/0AD;->A02(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 487
    .line 488
    .line 489
    :cond_7
    new-instance v12, Ljava/io/File;

    .line 490
    .line 491
    invoke-direct {v12, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 495
    .line 496
    .line 497
    new-instance v0, Ljava/io/File;

    .line 498
    .line 499
    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    invoke-virtual {v0, v12}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    if-eqz v0, :cond_9

    .line 507
    .line 508
    invoke-static {}, LX/093;->A00()I

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    if-lt v0, v1, :cond_8

    .line 513
    .line 514
    new-instance v1, Ljava/io/File;

    .line 515
    .line 516
    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 517
    .line 518
    .line 519
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 520
    .line 521
    .line 522
    new-instance v0, Ljava/io/File;

    .line 523
    .line 524
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    if-eqz v0, :cond_9

    .line 532
    .line 533
    :cond_8
    :goto_2
    :try_start_4
    invoke-static {v11}, LX/09o;->A00(LX/09o;)Ljava/io/File;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 538
    .line 539
    .line 540
    return-void
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 541
    :catch_0
    move-exception v2

    .line 542
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    move-result-object v1

    .line 546
    const-string v0, "failed to create marker for: "

    .line 547
    .line 548
    invoke-static {v0, v7, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    invoke-static {v0, v2}, LX/0AD;->A01(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    .line 554
    .line 555
    invoke-static {v0, v2}, LX/0AD;->A02(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 556
    .line 557
    .line 558
    return-void

    .line 559
    :cond_9
    new-array v1, v2, [Ljava/lang/Object;

    .line 560
    .line 561
    aput-object v6, v1, v4

    .line 562
    .line 563
    aput-object v9, v1, v10

    .line 564
    .line 565
    aput-object v5, v1, v3

    .line 566
    .line 567
    aput-object v8, v1, v18

    .line 568
    .line 569
    const-string v0, "Failed to move odex (%s -> %s) or vdex (%s -> %s)"

    .line 570
    .line 571
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    const-string v0, "Failed to move odex or vdex"

    .line 576
    .line 577
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-static {v1, v0}, LX/0AD;->A01(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    .line 583
    .line 584
    invoke-static {v1, v0}, LX/0AD;->A02(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 585
    .line 586
    .line 587
    return-void

    .line 588
    :catch_1
    move-exception v1

    .line 589
    const-string v0, "Starting dex2oat failed"

    .line 590
    .line 591
    goto :goto_3

    .line 592
    :catch_2
    move-exception v1

    .line 593
    const-string v0, "Waiting for dex2oat failed"

    .line 594
    .line 595
    :goto_3
    invoke-static {v0, v1}, LX/0AD;->A01(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 596
    .line 597
    .line 598
    invoke-static {v0, v1}, LX/0AD;->A02(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    .line 600
    .line 601
    :cond_a
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    const-string v0, "Failed to generate odex with exit status: "

    .line 606
    .line 607
    invoke-static {v0, v1, v12}, LX/000;->A0B(Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v1

    .line 611
    const-string v0, "Failed to generate odex"

    .line 612
    .line 613
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-static {v1, v0}, LX/0AD;->A01(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 618
    .line 619
    .line 620
    invoke-static {v1, v0}, LX/0AD;->A02(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 621
    .line 622
    .line 623
    return-void

    .line 624
    :catch_3
    move-exception v2

    .line 625
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    const-string v0, "failed to create odex output dir: "

    .line 630
    .line 631
    invoke-static {v0, v3, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-static {v0, v2}, LX/0AD;->A01(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 636
    .line 637
    .line 638
    invoke-static {v0, v2}, LX/0AD;->A02(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 639
    .line 640
    .line 641
    return-void

    .line 642
    :cond_b
    return-void
.end method
