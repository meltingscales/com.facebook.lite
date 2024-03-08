.class public Lcom/facebook/superpack/SuperpackUnloader;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final COLD_START_LIBS:Ljava/util/Set;

.field public static final HOLDOUT_LIBRARIES:Ljava/util/Set;

.field public static final LEVEL_1_LIBRARIES_THRESHOLD:J = 0x4e20L

.field public static final LEVEL_2_LIBRARIES_THRESHOLD:J = 0x493e0L

.field public static final LEVEL_3_LIBRARIES_THRESHOLD:J = 0x16e360L

.field public static final STARTUP_LOAD_TIME_THRESHOLD:J = 0x2710L

.field public static final TAG:Ljava/lang/String; = "SuperpackUnloader"

.field public static final sInMemoryLibraries:Ljava/util/List;

.field public static sStartTime:J


# direct methods
.method public static constructor <clinit>()V
    .locals 40

    .line 0
    const/16 v2, 0x23

    .line 1
    .line 2
    new-array v1, v2, [Ljava/lang/String;

    .line 3
    .line 4
    const/16 v39, 0x0

    .line 5
    .line 6
    const-string v38, "libbreakpad.so"

    .line 7
    .line 8
    aput-object v38, v1, v39

    .line 9
    .line 10
    const-string v0, "libliger.so"

    .line 11
    .line 12
    const/16 v37, 0x1

    .line 13
    .line 14
    aput-object v0, v1, v37

    .line 15
    .line 16
    const/16 v36, 0x2

    .line 17
    .line 18
    const-string v11, "libcoldstart.so"

    .line 19
    .line 20
    aput-object v11, v1, v36

    .line 21
    .line 22
    const/16 v35, 0x3

    .line 23
    .line 24
    const-string v34, "libdexload.so"

    .line 25
    .line 26
    aput-object v34, v1, v35

    .line 27
    .line 28
    const/16 v33, 0x4

    .line 29
    .line 30
    const-string v10, "libreliabilitymerged.so"

    .line 31
    .line 32
    aput-object v10, v1, v33

    .line 33
    .line 34
    const/16 v32, 0x5

    .line 35
    .line 36
    const-string v9, "libsigquit.so"

    .line 37
    .line 38
    aput-object v9, v1, v32

    .line 39
    .line 40
    const/16 v31, 0x6

    .line 41
    .line 42
    const-string v30, "libappstatelogger2.so"

    .line 43
    .line 44
    aput-object v30, v1, v31

    .line 45
    .line 46
    const-string v0, "libnative_allocation_hooks_installer_jni.so"

    .line 47
    .line 48
    const/16 v29, 0x7

    .line 49
    .line 50
    aput-object v0, v1, v29

    .line 51
    .line 52
    const-string v0, "libforker.so"

    .line 53
    .line 54
    const/16 v28, 0x8

    .line 55
    .line 56
    aput-object v0, v1, v28

    .line 57
    .line 58
    const-string v0, "libgrimsey.so"

    .line 59
    .line 60
    const/16 v27, 0x9

    .line 61
    .line 62
    aput-object v0, v1, v27

    .line 63
    .line 64
    const/16 v26, 0xa

    .line 65
    .line 66
    const-string v8, "libfb_mboost.so"

    .line 67
    .line 68
    aput-object v8, v1, v26

    .line 69
    .line 70
    const/16 v25, 0xb

    .line 71
    .line 72
    const-string v24, "libplthooks.so"

    .line 73
    .line 74
    aput-object v24, v1, v25

    .line 75
    .line 76
    const-string v23, "libfbandroid_native_cppdistract_cppdistract.so"

    .line 77
    .line 78
    const/16 v22, 0xc

    .line 79
    .line 80
    aput-object v23, v1, v22

    .line 81
    .line 82
    const/16 v3, 0xd

    .line 83
    .line 84
    const-string v0, "liblogcat-interceptor.so"

    .line 85
    .line 86
    aput-object v0, v1, v3

    .line 87
    .line 88
    const/16 v0, 0xe

    .line 89
    .line 90
    const-string v21, "libbreakpad_extra.so"

    .line 91
    .line 92
    aput-object v21, v1, v0

    .line 93
    .line 94
    const/16 v0, 0xf

    .line 95
    .line 96
    const-string v20, "libfbandroid_native_sigmuxutils_sigmuxutils.so"

    .line 97
    .line 98
    aput-object v20, v1, v0

    .line 99
    .line 100
    const/16 v3, 0x10

    .line 101
    .line 102
    const-string v0, "libxplat_pvd_segmentation_model_holder_plc_pytorch_model_holdersAndroid.so"

    .line 103
    .line 104
    aput-object v0, v1, v3

    .line 105
    .line 106
    const/16 v3, 0x11

    .line 107
    .line 108
    const-string v0, "libdistractutil.so"

    .line 109
    .line 110
    aput-object v0, v1, v3

    .line 111
    .line 112
    const/16 v3, 0x12

    .line 113
    .line 114
    const-string v0, "libchipsetmerged.so"

    .line 115
    .line 116
    aput-object v0, v1, v3

    .line 117
    .line 118
    const/16 v3, 0x13

    .line 119
    .line 120
    const-string v0, "libvmasaver.so"

    .line 121
    .line 122
    aput-object v0, v1, v3

    .line 123
    .line 124
    const/16 v3, 0x14

    .line 125
    .line 126
    const-string v0, "libdalvikdistract.so"

    .line 127
    .line 128
    aput-object v0, v1, v3

    .line 129
    .line 130
    const/16 v0, 0x15

    .line 131
    .line 132
    const-string v19, "libfbandroid_native_museum_museum.so"

    .line 133
    .line 134
    aput-object v19, v1, v0

    .line 135
    .line 136
    const/16 v0, 0x16

    .line 137
    .line 138
    const-string v18, "libglog.so"

    .line 139
    .line 140
    aput-object v18, v1, v0

    .line 141
    .line 142
    const/16 v3, 0x17

    .line 143
    .line 144
    const-string v0, "libpando-core.so"

    .line 145
    .line 146
    aput-object v0, v1, v3

    .line 147
    .line 148
    const/16 v3, 0x18

    .line 149
    .line 150
    const-string v0, "libpando-engine.so"

    .line 151
    .line 152
    aput-object v0, v1, v3

    .line 153
    .line 154
    const/16 v0, 0x19

    .line 155
    .line 156
    const-string v17, "libxplat_third-party_jsoncpp_jsoncppAndroid.so"

    .line 157
    .line 158
    aput-object v17, v1, v0

    .line 159
    .line 160
    const/16 v0, 0x1a

    .line 161
    .line 162
    const-string v16, "libxplat_mobilenetwork_fbdomainsAndroid.so"

    .line 163
    .line 164
    aput-object v16, v1, v0

    .line 165
    .line 166
    const/16 v0, 0x1b

    .line 167
    .line 168
    const-string v15, "libfmt.so"

    .line 169
    .line 170
    aput-object v15, v1, v0

    .line 171
    .line 172
    const/16 v0, 0x1c

    .line 173
    .line 174
    const-string v14, "libthird-party_boost_boost_contextAndroid.so"

    .line 175
    .line 176
    aput-object v14, v1, v0

    .line 177
    .line 178
    const/16 v0, 0x1d

    .line 179
    .line 180
    const-string v13, "libthird-party_boost_boostAndroid.so"

    .line 181
    .line 182
    aput-object v13, v1, v0

    .line 183
    .line 184
    const/16 v0, 0x1e

    .line 185
    .line 186
    const-string v12, "liblinkerutils.so"

    .line 187
    .line 188
    aput-object v12, v1, v0

    .line 189
    .line 190
    const/16 v0, 0x1f

    .line 191
    .line 192
    const-string v7, "libmem_alloc_marker.so"

    .line 193
    .line 194
    aput-object v7, v1, v0

    .line 195
    .line 196
    const/16 v0, 0x20

    .line 197
    .line 198
    const-string v6, "libfbunwindstack.so"

    .line 199
    .line 200
    aput-object v6, v1, v0

    .line 201
    .line 202
    const/16 v0, 0x21

    .line 203
    .line 204
    const-string v5, "liblive-query-jni.so"

    .line 205
    .line 206
    aput-object v5, v1, v0

    .line 207
    .line 208
    const/16 v4, 0x22

    .line 209
    .line 210
    const-string v3, "libaospbugfixmerged.so"

    .line 211
    .line 212
    aput-object v3, v1, v4

    .line 213
    .line 214
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    new-instance v0, Ljava/util/HashSet;

    .line 219
    .line 220
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 221
    .line 222
    .line 223
    sput-object v0, Lcom/facebook/superpack/SuperpackUnloader;->HOLDOUT_LIBRARIES:Ljava/util/Set;

    .line 224
    .line 225
    new-array v2, v2, [Ljava/lang/String;

    .line 226
    .line 227
    aput-object v23, v2, v39

    .line 228
    .line 229
    aput-object v19, v2, v37

    .line 230
    .line 231
    aput-object v18, v2, v36

    .line 232
    .line 233
    aput-object v20, v2, v35

    .line 234
    .line 235
    aput-object v38, v2, v33

    .line 236
    .line 237
    aput-object v34, v2, v32

    .line 238
    .line 239
    aput-object v17, v2, v31

    .line 240
    .line 241
    aput-object v30, v2, v29

    .line 242
    .line 243
    const-string v0, "libpreconnector.so"

    .line 244
    .line 245
    aput-object v0, v2, v28

    .line 246
    .line 247
    aput-object v16, v2, v27

    .line 248
    .line 249
    aput-object v15, v2, v26

    .line 250
    .line 251
    aput-object v14, v2, v25

    .line 252
    .line 253
    aput-object v13, v2, v22

    .line 254
    .line 255
    const/16 v0, 0xd

    .line 256
    .line 257
    aput-object v12, v2, v0

    .line 258
    .line 259
    const/16 v0, 0xe

    .line 260
    .line 261
    aput-object v24, v2, v0

    .line 262
    .line 263
    invoke-static {v7, v6, v5, v11, v2}, LX/000;->A0H(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 264
    .line 265
    .line 266
    invoke-static {v3, v9, v10, v8, v2}, LX/000;->A0I(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    const/16 v1, 0x17

    .line 270
    .line 271
    const-string v0, "libtigonnativeauthedservice.so"

    .line 272
    .line 273
    aput-object v0, v2, v1

    .line 274
    .line 275
    const/16 v1, 0x18

    .line 276
    .line 277
    const-string v0, "libimagepipeline.so"

    .line 278
    .line 279
    aput-object v0, v2, v1

    .line 280
    .line 281
    const/16 v1, 0x19

    .line 282
    .line 283
    const-string v0, "libxplat_arfx_versioning_sdk_version_constants_constantsAndroid.so"

    .line 284
    .line 285
    aput-object v0, v2, v1

    .line 286
    .line 287
    const/16 v1, 0x1a

    .line 288
    .line 289
    const-string v0, "libard-upload.so"

    .line 290
    .line 291
    aput-object v0, v2, v1

    .line 292
    .line 293
    const/16 v1, 0x1b

    .line 294
    .line 295
    const-string v0, "libIGL.so"

    .line 296
    .line 297
    aput-object v0, v2, v1

    .line 298
    .line 299
    const/16 v1, 0x1c

    .line 300
    .line 301
    const-string v0, "libimagesmerged.so"

    .line 302
    .line 303
    aput-object v0, v2, v1

    .line 304
    .line 305
    const/16 v1, 0x1d

    .line 306
    .line 307
    const-string v0, "libthreadutils-jni.so"

    .line 308
    .line 309
    aput-object v0, v2, v1

    .line 310
    .line 311
    const/16 v1, 0x1e

    .line 312
    .line 313
    const-string v0, "libclasstracing.so"

    .line 314
    .line 315
    aput-object v0, v2, v1

    .line 316
    .line 317
    const/16 v1, 0x1f

    .line 318
    .line 319
    const-string v0, "libunwindstack_stream.so"

    .line 320
    .line 321
    aput-object v0, v2, v1

    .line 322
    .line 323
    const/16 v0, 0x20

    .line 324
    .line 325
    aput-object v21, v2, v0

    .line 326
    .line 327
    const/16 v1, 0x21

    .line 328
    .line 329
    const-string v0, "libfbnightwatch.so"

    .line 330
    .line 331
    aput-object v0, v2, v1

    .line 332
    .line 333
    const-string v0, "libreliablemediamonitor.so"

    .line 334
    .line 335
    aput-object v0, v2, v4

    .line 336
    .line 337
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    new-instance v0, Ljava/util/HashSet;

    .line 342
    .line 343
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 344
    .line 345
    .line 346
    sput-object v0, Lcom/facebook/superpack/SuperpackUnloader;->COLD_START_LIBS:Ljava/util/Set;

    .line 347
    .line 348
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    sput-object v0, Lcom/facebook/superpack/SuperpackUnloader;->sInMemoryLibraries:Ljava/util/List;

    .line 357
    .line 358
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    return-void
.end method

.method public static canUnloadLibrary(Ljava/lang/String;)Z
    .locals 1

    .line 0
    sget-object v0, Lcom/facebook/superpack/SuperpackUnloader;->HOLDOUT_LIBRARIES:Ljava/util/Set;

    .line 1
    .line 2
    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    return v0
.end method

.method public static native getProcessMappings(Ljava/lang/String;)J
.end method

.method public static isStartupLibrary(LX/0B2;)Z
    .locals 5

    .line 0
    sget-object v1, Lcom/facebook/superpack/SuperpackUnloader;->COLD_START_LIBS:Ljava/util/Set;

    .line 1
    .line 2
    iget-object v0, p0, LX/0B2;->A01:Ljava/lang/String;

    .line 3
    .line 4
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-wide v4, p0, LX/0B2;->A00:J

    .line 11
    .line 12
    const-wide/16 v2, 0x2710

    .line 13
    .line 14
    cmp-long v1, v4, v2

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-ltz v1, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :cond_1
    return v0
.end method

.method public static registerLibraryForUnloading(Ljava/lang/String;)V
    .locals 9

    .line 0
    const-string v0, ".so"

    .line 1
    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    xor-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-static {p0}, Lcom/facebook/superpack/SuperpackFileLoader;->getLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    sget-object v0, Lcom/facebook/superpack/SuperpackUnloader;->HOLDOUT_LIBRARIES:Ljava/util/Set;

    .line 15
    .line 16
    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    .line 24
    .line 25
    move-result-wide v7

    .line 26
    sget-wide v4, Lcom/facebook/superpack/SuperpackUnloader;->sStartTime:J

    .line 27
    .line 28
    const-wide/16 v2, 0x0

    .line 29
    .line 30
    cmp-long v0, v4, v2

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    const-class v1, Lcom/facebook/superpack/SuperpackUnloader;

    .line 35
    .line 36
    monitor-enter v1

    .line 37
    :try_start_0
    sget-wide v4, Lcom/facebook/superpack/SuperpackUnloader;->sStartTime:J

    .line 38
    .line 39
    cmp-long v0, v4, v2

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    sput-wide v7, Lcom/facebook/superpack/SuperpackUnloader;->sStartTime:J

    .line 44
    .line 45
    :cond_0
    monitor-exit v1

    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v0

    .line 50
    :cond_1
    :goto_0
    sget-wide v0, Lcom/facebook/superpack/SuperpackUnloader;->sStartTime:J

    .line 51
    .line 52
    sub-long/2addr v7, v0

    .line 53
    cmp-long v0, v7, v2

    .line 54
    .line 55
    if-ltz v0, :cond_2

    .line 56
    .line 57
    move-wide v2, v7

    .line 58
    :cond_2
    :try_start_1
    new-instance v0, Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    :catch_0
    sget-object v1, Lcom/facebook/superpack/SuperpackUnloader;->sInMemoryLibraries:Ljava/util/List;

    .line 68
    .line 69
    new-instance v0, LX/0B2;

    .line 70
    .line 71
    invoke-direct {v0, v6, p0, v2, v3}, LX/0B2;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_3
    return-void
.end method

.method public static native releaseProcessMappings(J)V
.end method

.method public static shouldUnloadLibrary(LX/06c;LX/0B2;)Z
    .locals 5

    .line 0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 1
    .line 2
    .line 3
    move-result v1

    .line 4
    const/4 p0, 0x0

    .line 5
    const/4 v0, 0x1

    .line 6
    packed-switch v1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    :cond_0
    return p0

    .line 10
    :pswitch_0
    invoke-static {p1}, Lcom/facebook/superpack/SuperpackUnloader;->isStartupLibrary(LX/0B2;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-wide v3, p1, LX/0B2;->A00:J

    .line 17
    .line 18
    const-wide/16 v1, 0x4e20

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_1
    iget-wide v3, p1, LX/0B2;->A00:J

    .line 22
    .line 23
    const-wide/32 v1, 0x493e0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_2
    iget-wide v3, p1, LX/0B2;->A00:J

    .line 28
    .line 29
    const-wide/32 v1, 0x16e360

    .line 30
    .line 31
    .line 32
    :goto_0
    cmp-long v0, v3, v1

    .line 33
    .line 34
    if-lez v0, :cond_0

    .line 35
    .line 36
    const/4 p0, 0x1

    .line 37
    return p0

    .line 38
    :pswitch_3
    invoke-static {p1}, Lcom/facebook/superpack/SuperpackUnloader;->isStartupLibrary(LX/0B2;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    xor-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    :pswitch_4
    return v0

    .line 45
    nop

    .line 46
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static native unload(JLjava/lang/String;)V
.end method


# virtual methods
.method public onTrim(LX/06c;)V
    .locals 7

    .line 0
    sget-object v0, LX/06c;->A03:LX/06c;

    .line 1
    .line 2
    if-eq p1, v0, :cond_4

    .line 3
    .line 4
    sget-object v0, LX/06c;->A02:LX/06c;

    .line 5
    .line 6
    if-eq p1, v0, :cond_4

    .line 7
    .line 8
    sget-object v1, Lcom/facebook/superpack/SuperpackUnloader;->sInMemoryLibraries:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_4

    .line 15
    .line 16
    new-instance v4, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    sget-object v0, LX/06c;->A01:LX/06c;

    .line 26
    .line 27
    if-eq p1, v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 34
    .line 35
    if-ltz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {v4, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, LX/0B2;

    .line 42
    .line 43
    invoke-static {p1, v1}, Lcom/facebook/superpack/SuperpackUnloader;->shouldUnloadLibrary(LX/06c;LX/0B2;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    move-object v4, v3

    .line 54
    :cond_1
    const-wide/16 v5, 0x0

    .line 55
    .line 56
    :try_start_0
    const-string v0, ".spk"

    .line 57
    .line 58
    invoke-static {v0}, Lcom/facebook/superpack/SuperpackUnloader;->getProcessMappings(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 62
    :try_start_1
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, LX/0B2;

    .line 77
    .line 78
    iget-object v0, v0, LX/0B2;->A02:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {v2, v3, v0}, Lcom/facebook/superpack/SuperpackUnloader;->unload(JLjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :catch_0
    move-exception v4

    .line 85
    goto :goto_2

    .line 86
    :catch_1
    move-exception v4

    .line 87
    const-wide/16 v2, 0x0

    .line 88
    .line 89
    :goto_2
    :try_start_2
    sget-object v1, Lcom/facebook/superpack/SuperpackUnloader;->TAG:Ljava/lang/String;

    .line 90
    .line 91
    const-string v0, "Failed to unload in-memory compressed libraries. Ignoring."

    .line 92
    .line 93
    invoke-static {v1, v0, v4}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    :cond_2
    cmp-long v0, v2, v5

    .line 97
    .line 98
    if-eqz v0, :cond_4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 99
    .line 100
    invoke-static {v2, v3}, Lcom/facebook/superpack/SuperpackUnloader;->releaseProcessMappings(J)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception v1

    .line 105
    cmp-long v0, v2, v5

    .line 106
    .line 107
    if-eqz v0, :cond_3

    .line 108
    .line 109
    invoke-static {v2, v3}, Lcom/facebook/superpack/SuperpackUnloader;->releaseProcessMappings(J)V

    .line 110
    .line 111
    .line 112
    throw v1

    .line 113
    :catchall_1
    move-exception v1

    .line 114
    :cond_3
    throw v1

    .line 115
    :cond_4
    return-void
.end method
