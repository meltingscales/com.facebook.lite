.class public final LX/05J;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field public A00:Ljava/lang/String;

.field public final A01:LX/07W;

.field public final A02:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, LX/05J;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(LX/07W;)V
    .locals 19

    .line 0
    move-object/from16 v11, p0

    .line 1
    .line 2
    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v0, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, v11, LX/05J;->A02:Ljava/lang/Object;

    .line 11
    .line 12
    move-object/from16 v0, p1

    .line 13
    .line 14
    iput-object v0, v11, LX/05J;->A01:LX/07W;

    .line 15
    .line 16
    sget-object v0, LX/05J;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    .line 17
    .line 18
    const/4 v13, 0x0

    .line 19
    invoke-virtual {v0, v13, v11}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    sget-object v12, LX/050;->A02:Ljava/lang/Integer;

    .line 26
    .line 27
    const/16 v15, 0x20

    .line 28
    .line 29
    const/16 v4, 0x30

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const/4 v8, 0x1

    .line 33
    move-object v14, v13

    .line 34
    move/from16 v18, v8

    .line 35
    .line 36
    move/from16 v17, v7

    .line 37
    .line 38
    move/from16 v16, v4

    .line 39
    .line 40
    invoke-static/range {v11 .. v18}, LX/05J;->A01(LX/05J;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;CCZZ)V

    .line 41
    .line 42
    .line 43
    sget-object v0, LX/07i;->A09:LX/07i;

    .line 44
    .line 45
    invoke-virtual {v11, v0}, LX/05J;->A02(LX/07i;)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v11, LX/05J;->A02:Ljava/lang/Object;

    .line 49
    .line 50
    monitor-enter v2

    .line 51
    :try_start_0
    iget-object v0, v11, LX/05J;->A01:LX/07W;

    .line 52
    .line 53
    iget-object v1, v0, LX/07W;->A00:Ljava/nio/MappedByteBuffer;

    .line 54
    .line 55
    const/16 v0, 0xa6

    .line 56
    .line 57
    int-to-byte v3, v15

    .line 58
    invoke-virtual {v1, v0, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 59
    .line 60
    .line 61
    invoke-static {v11}, LX/05J;->A00(LX/05J;)V

    .line 62
    .line 63
    .line 64
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 65
    iget-object v2, v11, LX/05J;->A02:Ljava/lang/Object;

    .line 66
    .line 67
    monitor-enter v2

    .line 68
    :try_start_1
    iget-object v0, v11, LX/05J;->A01:LX/07W;

    .line 69
    .line 70
    iget-object v1, v0, LX/07W;->A00:Ljava/nio/MappedByteBuffer;

    .line 71
    .line 72
    const/16 v0, 0xcd

    .line 73
    .line 74
    invoke-virtual {v1, v0, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 75
    .line 76
    .line 77
    invoke-static {v11}, LX/05J;->A00(LX/05J;)V

    .line 78
    .line 79
    .line 80
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 81
    iget-object v2, v11, LX/05J;->A02:Ljava/lang/Object;

    .line 82
    .line 83
    monitor-enter v2

    .line 84
    :try_start_2
    iget-object v0, v11, LX/05J;->A01:LX/07W;

    .line 85
    .line 86
    iget-object v1, v0, LX/07W;->A00:Ljava/nio/MappedByteBuffer;

    .line 87
    .line 88
    const/16 v0, 0xce

    .line 89
    .line 90
    int-to-byte v6, v4

    .line 91
    invoke-virtual {v1, v0, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 92
    .line 93
    .line 94
    invoke-static {v11}, LX/05J;->A00(LX/05J;)V

    .line 95
    .line 96
    .line 97
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 98
    const-string v5, ""

    .line 99
    .line 100
    const-wide/16 v2, 0x0

    .line 101
    .line 102
    iget-object v4, v11, LX/05J;->A02:Ljava/lang/Object;

    .line 103
    .line 104
    monitor-enter v4

    .line 105
    :try_start_3
    iget-object v0, v11, LX/05J;->A01:LX/07W;

    .line 106
    .line 107
    iget-object v1, v0, LX/07W;->A00:Ljava/nio/MappedByteBuffer;

    .line 108
    .line 109
    const/16 v0, 0x113

    .line 110
    .line 111
    invoke-virtual {v1, v0, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 112
    .line 113
    .line 114
    const/16 v0, 0x114

    .line 115
    .line 116
    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 117
    .line 118
    .line 119
    const/16 v1, 0x11c

    .line 120
    .line 121
    const/16 v0, 0x50

    .line 122
    .line 123
    invoke-virtual {v11, v5, v1, v0}, LX/05J;->A03(Ljava/lang/String;II)V

    .line 124
    .line 125
    .line 126
    invoke-static {v11}, LX/05J;->A00(LX/05J;)V

    .line 127
    .line 128
    .line 129
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 130
    const/4 v1, -0x1

    .line 131
    iget-object v6, v11, LX/05J;->A02:Ljava/lang/Object;

    .line 132
    .line 133
    monitor-enter v6

    .line 134
    :try_start_4
    iget-object v0, v11, LX/05J;->A01:LX/07W;

    .line 135
    .line 136
    iget-object v5, v0, LX/07W;->A00:Ljava/nio/MappedByteBuffer;

    .line 137
    .line 138
    const/16 v0, 0x2ed

    .line 139
    .line 140
    invoke-virtual {v5, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    .line 143
    const/16 v4, 0x6d9

    .line 144
    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 146
    .line 147
    .line 148
    move-result-wide v0

    .line 149
    invoke-virtual {v5, v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 150
    .line 151
    .line 152
    const/16 v4, 0x6e1

    .line 153
    .line 154
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    invoke-virtual {v5, v4, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 159
    .line 160
    .line 161
    invoke-static {v11}, LX/05J;->A00(LX/05J;)V

    .line 162
    .line 163
    .line 164
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 165
    const-string v4, "unknown"

    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    const/16 v0, 0x3e8

    .line 172
    .line 173
    const/4 v10, 0x0

    .line 174
    if-le v1, v0, :cond_0

    .line 175
    .line 176
    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    :cond_0
    iget-object v9, v11, LX/05J;->A02:Ljava/lang/Object;

    .line 181
    .line 182
    monitor-enter v9

    .line 183
    :try_start_5
    iget-object v0, v11, LX/05J;->A01:LX/07W;

    .line 184
    .line 185
    iget-object v6, v0, LX/07W;->A00:Ljava/nio/MappedByteBuffer;

    .line 186
    .line 187
    const/16 v5, 0x2f1

    .line 188
    .line 189
    invoke-virtual {v6, v5, v7}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 193
    .line 194
    .line 195
    move-result-object v4

    .line 196
    :goto_0
    array-length v0, v4

    .line 197
    if-ge v10, v0, :cond_1

    .line 198
    .line 199
    add-int/lit16 v1, v10, 0x2f3

    .line 200
    .line 201
    aget-byte v0, v4, v10

    .line 202
    .line 203
    invoke-virtual {v6, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 204
    .line 205
    .line 206
    add-int/lit8 v10, v10, 0x1

    .line 207
    .line 208
    goto :goto_0

    .line 209
    :cond_1
    int-to-short v0, v0

    .line 210
    invoke-virtual {v6, v5, v0}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 211
    .line 212
    .line 213
    invoke-static {v11}, LX/05J;->A00(LX/05J;)V

    .line 214
    .line 215
    .line 216
    monitor-exit v9

    .line 217
    const/16 v6, 0xe0

    .line 218
    .line 219
    const/16 v5, 0xcf
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 220
    .line 221
    iget-object v4, v11, LX/05J;->A02:Ljava/lang/Object;

    .line 222
    .line 223
    monitor-enter v4

    .line 224
    :try_start_6
    iget-object v0, v11, LX/05J;->A01:LX/07W;

    .line 225
    .line 226
    iget-object v1, v0, LX/07W;->A00:Ljava/nio/MappedByteBuffer;

    .line 227
    .line 228
    invoke-virtual {v1, v5, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v6, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 232
    .line 233
    .line 234
    const/16 v0, 0xd0

    .line 235
    .line 236
    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 237
    .line 238
    .line 239
    const/16 v0, 0xe1

    .line 240
    .line 241
    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 242
    .line 243
    .line 244
    const/16 v0, 0xd8

    .line 245
    .line 246
    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 247
    .line 248
    .line 249
    const/16 v0, 0xe9

    .line 250
    .line 251
    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v5, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v1, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 258
    .line 259
    .line 260
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 261
    monitor-enter v4

    .line 262
    :try_start_7
    invoke-static {v11}, LX/05J;->A00(LX/05J;)V

    .line 263
    .line 264
    .line 265
    monitor-exit v4

    .line 266
    const/16 v6, 0x102

    .line 267
    .line 268
    const/16 v5, 0xf1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 269
    .line 270
    iget-object v4, v11, LX/05J;->A02:Ljava/lang/Object;

    .line 271
    .line 272
    monitor-enter v4

    .line 273
    :try_start_8
    iget-object v0, v11, LX/05J;->A01:LX/07W;

    .line 274
    .line 275
    iget-object v1, v0, LX/07W;->A00:Ljava/nio/MappedByteBuffer;

    .line 276
    .line 277
    invoke-virtual {v1, v5, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v6, v8}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 281
    .line 282
    .line 283
    const/16 v0, 0xf2

    .line 284
    .line 285
    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 286
    .line 287
    .line 288
    const/16 v0, 0x103

    .line 289
    .line 290
    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 291
    .line 292
    .line 293
    const/16 v0, 0xfa

    .line 294
    .line 295
    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 296
    .line 297
    .line 298
    const/16 v0, 0x10b

    .line 299
    .line 300
    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v1, v5, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v1, v6, v7}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 307
    .line 308
    .line 309
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 310
    monitor-enter v4

    .line 311
    :try_start_9
    invoke-static {v11}, LX/05J;->A00(LX/05J;)V

    .line 312
    .line 313
    .line 314
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 315
    iget-object v4, v11, LX/05J;->A02:Ljava/lang/Object;

    .line 316
    .line 317
    monitor-enter v4

    .line 318
    :try_start_a
    iget-object v0, v11, LX/05J;->A01:LX/07W;

    .line 319
    .line 320
    iget-object v1, v0, LX/07W;->A00:Ljava/nio/MappedByteBuffer;

    .line 321
    .line 322
    const/16 v0, 0x6e9

    .line 323
    .line 324
    invoke-virtual {v1, v0, v2, v3}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 325
    .line 326
    .line 327
    invoke-static {v11}, LX/05J;->A00(LX/05J;)V

    .line 328
    .line 329
    .line 330
    monitor-exit v4

    .line 331
    return-void

    .line 332
    :catchall_0
    move-exception v0

    .line 333
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 334
    throw v0

    .line 335
    :catchall_1
    :try_start_b
    move-exception v0

    .line 336
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 337
    throw v0

    .line 338
    :catchall_2
    :try_start_c
    move-exception v0

    .line 339
    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 340
    throw v0

    .line 341
    :catchall_3
    :try_start_d
    move-exception v0

    .line 342
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 343
    throw v0

    .line 344
    :catchall_4
    :try_start_e
    move-exception v0

    .line 345
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 346
    throw v0

    .line 347
    :catchall_5
    :try_start_f
    move-exception v0

    .line 348
    monitor-exit v9
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 349
    throw v0

    .line 350
    :catchall_6
    :try_start_10
    move-exception v0

    .line 351
    monitor-exit v6
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 352
    throw v0

    .line 353
    :catchall_7
    :try_start_11
    move-exception v0

    .line 354
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 355
    throw v0

    .line 356
    :catchall_8
    :try_start_12
    move-exception v0

    .line 357
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    .line 358
    throw v0

    .line 359
    :catchall_9
    :try_start_13
    move-exception v0

    .line 360
    monitor-exit v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    .line 361
    throw v0

    .line 362
    :catchall_a
    :try_start_14
    move-exception v0

    .line 363
    monitor-exit v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    .line 364
    throw v0

    .line 365
    :cond_2
    return-void
.end method

.method public static A00(LX/05J;)V
    .locals 4

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1
    .line 2
    .line 3
    move-result-wide v0

    .line 4
    iget-object v3, p0, LX/05J;->A02:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v3

    .line 7
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/16 v1, 0xb4

    .line 12
    .line 13
    const/16 v0, 0xf

    .line 14
    .line 15
    invoke-virtual {p0, v2, v1, v0}, LX/05J;->A03(Ljava/lang/String;II)V

    .line 16
    .line 17
    .line 18
    monitor-exit v3

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0
.end method

.method public static A01(LX/05J;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;CCZZ)V
    .locals 7

    .line 7265
    invoke-static {p1}, LX/05k;->A00(Ljava/lang/Integer;)C

    move-result v2

    .line 7266
    const/16 v5, 0x7f

    .line 7267
    if-ltz p4, :cond_7

    if-gt p4, v5, :cond_7

    .line 7268
    iget-object v4, p0, LX/05J;->A02:Ljava/lang/Object;

    monitor-enter v4

    .line 7269
    :try_start_0
    iget-object v0, p0, LX/05J;->A01:LX/07W;

    .line 7270
    iget-object v3, v0, LX/07W;->A00:Ljava/nio/MappedByteBuffer;

    .line 7271
    const/4 v1, 0x1

    int-to-byte v0, v2

    .line 7272
    invoke-virtual {v3, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/16 v1, 0xc4

    int-to-byte v0, p5

    .line 7273
    invoke-virtual {v3, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    int-to-byte v0, p4

    .line 7274
    invoke-virtual {v3, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/16 v2, 0xc6

    const/16 v1, 0x30

    const/16 v0, 0x30

    if-eqz p6, :cond_0

    const/16 v0, 0x31

    :cond_0
    int-to-byte v0, v0

    .line 7275
    invoke-virtual {v3, v2, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    if-nez p7, :cond_1

    .line 7276
    sget-object v0, LX/050;->A0V:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-gez v0, :cond_2

    :cond_1
    const/16 v0, 0xca

    .line 7277
    invoke-virtual {v3, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/16 v0, 0xc8

    .line 7278
    invoke-virtual {v3, v0, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :cond_2
    const/4 v6, -0x1

    const/16 v1, 0xcb

    const/16 v2, 0x7f

    if-eqz p2, :cond_4

    .line 7279
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-le v0, v5, :cond_3

    const/16 v0, 0x7f

    .line 7280
    :cond_3
    int-to-byte v0, v0

    .line 7281
    invoke-virtual {v3, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 7282
    :cond_4
    invoke-virtual {v3, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_0
    const/16 v1, 0xcc

    if-eqz p3, :cond_6

    .line 7283
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-gt v0, v5, :cond_5

    .line 7284
    move v2, v0

    :cond_5
    int-to-byte v6, v2

    .line 7285
    :cond_6
    invoke-virtual {v3, v1, v6}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 7286
    invoke-static {p0}, LX/05J;->A00(LX/05J;)V

    .line 7287
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 7288
    :cond_7
    const-string v0, "State byte should be ASCII"

    .line 7289
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    move-result-object v0

    .line 7290
    throw v0
.end method


# virtual methods
.method public final A02(LX/07i;)V
    .locals 5

    .line 0
    iget-char v4, p1, LX/07i;->A01:C

    .line 1
    .line 2
    iget-object v3, p0, LX/05J;->A02:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v3

    .line 5
    :try_start_0
    iget-object v0, p0, LX/05J;->A01:LX/07W;

    .line 6
    .line 7
    iget-object v2, v0, LX/07W;->A00:Ljava/nio/MappedByteBuffer;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    int-to-byte v0, v4

    .line 11
    invoke-virtual {v2, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, LX/05J;->A00(LX/05J;)V

    .line 15
    .line 16
    .line 17
    monitor-exit v3

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0
.end method

.method public final A03(Ljava/lang/String;II)V
    .locals 6

    .line 0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    const/4 v5, 0x0

    .line 5
    if-le v0, p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v5, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :cond_0
    iget-object v4, p0, LX/05J;->A02:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v4

    .line 14
    :try_start_0
    iget-object v0, p0, LX/05J;->A01:LX/07W;

    .line 15
    .line 16
    iget-object v3, v0, LX/07W;->A00:Ljava/nio/MappedByteBuffer;

    .line 17
    .line 18
    invoke-virtual {v3, p2, v5}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    array-length v0, v2

    .line 26
    if-ge v5, v0, :cond_1

    .line 27
    .line 28
    add-int/lit8 v1, p2, 0x1

    .line 29
    .line 30
    add-int/2addr v1, v5

    .line 31
    aget-byte v0, v2, v5

    .line 32
    .line 33
    invoke-virtual {v3, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 34
    .line 35
    .line 36
    add-int/lit8 v5, v5, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    int-to-byte v0, v0

    .line 40
    invoke-virtual {v3, p2, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    monitor-exit v4

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw v0
.end method
