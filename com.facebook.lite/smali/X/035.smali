.class public final LX/035;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08p;


# static fields
.field public static final A0I:Ljava/lang/Object;


# instance fields
.field public A00:LX/05J;

.field public A01:LX/07w;

.field public A02:Z

.field public A03:Z

.field public A04:Ljava/lang/ref/WeakReference;

.field public final A05:Landroid/app/Application;

.field public final A06:LX/02z;

.field public final A07:LX/07R;

.field public final A08:LX/03A;

.field public final A09:LX/03B;

.field public final A0A:LX/09B;

.field public final A0B:LX/033;

.field public final A0C:Ljava/lang/Object;

.field public final A0D:LX/030;

.field public final A0E:LX/034;

.field public final A0F:LX/037;

.field public final A0G:LX/038;

.field public final A0H:LX/039;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/facebook/errorreporting/lacrima/detector/lifecycle/ApplicationLifecycleDetector$SplashTransition;

    .line 1
    .line 2
    invoke-direct {v0}, Lcom/facebook/errorreporting/lacrima/detector/lifecycle/ApplicationLifecycleDetector$SplashTransition;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, LX/035;->A0I:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;LX/02z;LX/030;LX/07R;LX/07w;LX/034;LX/09B;LX/033;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LX/037;

    invoke-direct {v0, p0}, LX/037;-><init>(LX/035;)V

    iput-object v0, p0, LX/035;->A0F:LX/037;

    new-instance v0, LX/038;

    invoke-direct {v0, p0}, LX/038;-><init>(LX/035;)V

    iput-object v0, p0, LX/035;->A0G:LX/038;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LX/035;->A0C:Ljava/lang/Object;

    new-instance v0, LX/039;

    invoke-direct {v0, p0}, LX/039;-><init>(LX/035;)V

    iput-object v0, p0, LX/035;->A0H:LX/039;

    new-instance v0, LX/03A;

    invoke-direct {v0, p0}, LX/03A;-><init>(LX/035;)V

    iput-object v0, p0, LX/035;->A08:LX/03A;

    new-instance v0, LX/03B;

    invoke-direct {v0, p0}, LX/03B;-><init>(LX/035;)V

    iput-object v0, p0, LX/035;->A09:LX/03B;

    iput-object p1, p0, LX/035;->A05:Landroid/app/Application;

    iput-object p7, p0, LX/035;->A0A:LX/09B;

    iput-object p4, p0, LX/035;->A07:LX/07R;

    iput-object p2, p0, LX/035;->A06:LX/02z;

    iput-object p3, p0, LX/035;->A0D:LX/030;

    iput-object p5, p0, LX/035;->A01:LX/07w;

    iput-object p8, p0, LX/035;->A0B:LX/033;

    iput-object p6, p0, LX/035;->A0E:LX/034;

    return-void
.end method

.method public static A00(LX/035;)V
    .locals 7

    .line 0
    iget-boolean v0, p0, LX/035;->A02:Z

    .line 1
    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    iget-object v6, p0, LX/035;->A00:LX/05J;

    .line 5
    .line 6
    if-eqz v6, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, LX/035;->A02:Z

    .line 10
    .line 11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v4

    .line 15
    iget-object v0, p0, LX/035;->A0A:LX/09B;

    .line 16
    .line 17
    iget-wide v0, v0, LX/09B;->A01:J

    .line 18
    .line 19
    sub-long/2addr v4, v0

    .line 20
    iget-object v3, v6, LX/05J;->A02:Ljava/lang/Object;

    .line 21
    .line 22
    monitor-enter v3

    .line 23
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/16 v1, 0xa7

    .line 28
    .line 29
    const/16 v0, 0xa

    .line 30
    .line 31
    invoke-virtual {v6, v2, v1, v0}, LX/05J;->A03(Ljava/lang/String;II)V

    .line 32
    .line 33
    .line 34
    iget-object v0, v6, LX/05J;->A01:LX/07W;

    .line 35
    .line 36
    iget-object v2, v0, LX/07W;->A00:Ljava/nio/MappedByteBuffer;

    .line 37
    .line 38
    const/16 v1, 0xb2

    .line 39
    .line 40
    const/16 v0, 0x30

    .line 41
    .line 42
    int-to-byte v0, v0

    .line 43
    invoke-virtual {v2, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    invoke-static {v6}, LX/05J;->A00(LX/05J;)V

    .line 47
    .line 48
    .line 49
    monitor-exit v3

    .line 50
    return-void

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    throw v0

    .line 54
    :cond_0
    return-void
.end method

.method public static A01(LX/035;Ljava/lang/Integer;Z)V
    .locals 16

    .line 0
    move-object/from16 v3, p0

    .line 1
    .line 2
    iget-object v0, v3, LX/035;->A00:LX/05J;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const-string v1, "lacrima"

    .line 7
    .line 8
    const-string v0, "ApplicationLifecycleDetector.start() wasn\'t called?"

    .line 9
    .line 10
    invoke-static {v1, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void

    .line 14
    :cond_1
    iget-object v5, v3, LX/035;->A07:LX/07R;

    .line 15
    .line 16
    sget-object v4, LX/02m;->A02:LX/02m;

    .line 17
    .line 18
    iget-boolean v0, v5, LX/07R;->A0B:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    sget-object v2, LX/02m;->A03:LX/02m;

    .line 23
    .line 24
    iget-boolean v0, v5, LX/07R;->A0C:Z

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    monitor-enter v3

    .line 29
    :try_start_0
    iget-object v6, v3, LX/035;->A06:LX/02z;

    .line 30
    .line 31
    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 32
    :try_start_1
    iget-boolean v0, v6, LX/02z;->A03:Z

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    sget-object v11, LX/050;->A0l:Ljava/lang/Integer;

    .line 37
    .line 38
    :goto_0
    const/4 v10, 0x0

    .line 39
    move-object v8, v10

    .line 40
    iget-object v0, v6, LX/02z;->A02:Ljava/lang/ref/WeakReference;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_4

    .line 49
    .line 50
    iget-object v0, v6, LX/02z;->A07:Ljava/util/WeakHashMap;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, LX/00x;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    move-object v8, v1

    .line 61
    iget-object v11, v0, LX/00x;->A00:Ljava/lang/Integer;

    .line 62
    .line 63
    instance-of v0, v1, Landroid/app/Activity;

    .line 64
    .line 65
    if-nez v0, :cond_3

    .line 66
    .line 67
    instance-of v0, v1, Landroid/app/Service;

    .line 68
    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v10

    .line 75
    goto :goto_3

    .line 76
    :cond_2
    sget-object v11, LX/050;->A0v:Ljava/lang/Integer;

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v10

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    iget-object v0, v6, LX/02z;->A07:Ljava/util/WeakHashMap;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    :cond_5
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Ljava/util/Map$Entry;

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, LX/00x;

    .line 115
    .line 116
    iget-object v0, v0, LX/00x;->A00:Ljava/lang/Integer;

    .line 117
    .line 118
    invoke-virtual {v0, v11}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-gez v0, :cond_5

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, LX/00x;

    .line 133
    .line 134
    iget-object v11, v0, LX/00x;->A00:Ljava/lang/Integer;

    .line 135
    .line 136
    instance-of v0, v8, Landroid/app/Activity;

    .line 137
    .line 138
    if-nez v0, :cond_6

    .line 139
    .line 140
    instance-of v0, v8, Landroid/app/Service;

    .line 141
    .line 142
    if-nez v0, :cond_6

    .line 143
    .line 144
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v10

    .line 148
    :goto_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_6
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v10

    .line 163
    goto :goto_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 164
    :cond_7
    :goto_3
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 165
    monitor-exit v3

    .line 166
    if-eqz v10, :cond_a

    .line 167
    .line 168
    iget-object v7, v3, LX/035;->A0D:LX/030;

    .line 169
    .line 170
    if-eqz v7, :cond_a

    .line 171
    .line 172
    monitor-enter v7

    .line 173
    :try_start_3
    iget-object v9, v7, LX/030;->A03:Ljava/util/Properties;

    .line 174
    .line 175
    invoke-virtual {v9, v10}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_9

    .line 184
    .line 185
    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 186
    :try_start_4
    iget-char v1, v7, LX/030;->A00:C

    .line 187
    .line 188
    const/16 v0, 0x7e

    .line 189
    .line 190
    if-ne v1, v0, :cond_8

    .line 191
    .line 192
    const/16 v14, 0x21

    .line 193
    .line 194
    goto :goto_4

    .line 195
    :cond_8
    add-int/lit8 v0, v1, 0x1

    .line 196
    .line 197
    int-to-char v0, v0

    .line 198
    iput-char v0, v7, LX/030;->A00:C

    .line 199
    .line 200
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v9, v10, v0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    iget-object v1, v7, LX/030;->A01:Landroid/os/Handler;

    .line 208
    .line 209
    new-instance v0, LX/00y;

    .line 210
    .line 211
    invoke-direct {v0, v7}, LX/00y;-><init>(LX/030;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    .line 216
    .line 217
    iget-char v14, v7, LX/030;->A00:C
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 218
    .line 219
    :goto_4
    :try_start_5
    monitor-exit v7

    .line 220
    goto :goto_5

    .line 221
    :catchall_0
    move-exception v0

    .line 222
    monitor-exit v7

    .line 223
    throw v0

    .line 224
    :cond_9
    const/4 v0, 0x0

    .line 225
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    .line 226
    .line 227
    .line 228
    move-result v14

    .line 229
    goto :goto_5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 230
    :catchall_1
    move-exception v0

    .line 231
    monitor-exit v7

    .line 232
    throw v0

    .line 233
    :cond_a
    const/16 v14, 0x20

    .line 234
    .line 235
    goto :goto_6

    .line 236
    :goto_5
    monitor-exit v7

    .line 237
    :goto_6
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 238
    .line 239
    invoke-direct {v0, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 240
    .line 241
    .line 242
    iput-object v0, v3, LX/035;->A04:Ljava/lang/ref/WeakReference;

    .line 243
    .line 244
    iget-object v10, v3, LX/035;->A00:LX/05J;

    .line 245
    .line 246
    move-object/from16 v1, p1

    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    packed-switch v0, :pswitch_data_0

    .line 253
    .line 254
    .line 255
    const/16 v15, 0x33

    .line 256
    .line 257
    :goto_7
    monitor-enter v6

    .line 258
    goto :goto_8

    .line 259
    :pswitch_0
    const/16 v15, 0x32

    .line 260
    .line 261
    goto :goto_7

    .line 262
    :pswitch_1
    const/16 v15, 0x31

    .line 263
    .line 264
    goto :goto_7

    .line 265
    :goto_8
    :try_start_6
    iget v0, v6, LX/02z;->A00:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 266
    .line 267
    monitor-exit v6

    .line 268
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v12

    .line 272
    monitor-enter v6

    .line 273
    :try_start_7
    iget-object v7, v6, LX/02z;->A06:Ljava/util/List;

    .line 274
    .line 275
    const/4 v0, 0x5

    .line 276
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    check-cast v0, Ljava/util/WeakHashMap;

    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    .line 283
    .line 284
    .line 285
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 286
    monitor-exit v6

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v13

    .line 291
    const/16 p1, 0x0

    .line 292
    .line 293
    move/from16 p0, p2

    .line 294
    .line 295
    invoke-static/range {v10 .. v17}, LX/05J;->A01(LX/05J;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;CCZZ)V

    .line 296
    .line 297
    .line 298
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 299
    .line 300
    const/16 v0, 0x1d

    .line 301
    .line 302
    if-lt v6, v0, :cond_b

    .line 303
    .line 304
    sget-object v0, LX/050;->A01:Ljava/lang/Integer;

    .line 305
    .line 306
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result v0

    .line 310
    if-nez v0, :cond_b

    .line 311
    .line 312
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 313
    .line 314
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v0

    .line 318
    if-eqz v0, :cond_c

    .line 319
    .line 320
    :cond_b
    invoke-static {v11}, LX/05k;->A00(Ljava/lang/Integer;)C

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    invoke-static {v0}, LX/03e;->A00(C)Z

    .line 325
    .line 326
    .line 327
    move-result v1

    .line 328
    iget-object v0, v3, LX/035;->A01:LX/07w;

    .line 329
    .line 330
    if-eqz v0, :cond_c

    .line 331
    .line 332
    invoke-interface {v0, v1}, LX/07w;->AOB(Z)V

    .line 333
    .line 334
    .line 335
    :cond_c
    const/4 v1, 0x0

    .line 336
    new-instance v0, LX/02u;

    .line 337
    .line 338
    invoke-direct {v0, v1}, LX/02u;-><init>(Ljava/lang/Throwable;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v5, v0, v4, v3}, LX/07R;->A06(LX/02u;LX/02m;LX/08p;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v5, v0, v2, v3}, LX/07R;->A06(LX/02u;LX/02m;LX/08p;)V

    .line 345
    .line 346
    .line 347
    return-void

    .line 348
    :catchall_2
    move-exception v0

    .line 349
    monitor-exit v6

    .line 350
    throw v0

    .line 351
    :catchall_3
    :try_start_8
    move-exception v0

    .line 352
    monitor-exit v6

    .line 353
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 354
    :catchall_4
    move-exception v0

    .line 355
    monitor-exit v3

    .line 356
    throw v0

    .line 357
    nop

    .line 358
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final ABM()LX/034;
    .locals 1

    .line 0
    iget-object v0, p0, LX/035;->A0E:LX/034;

    .line 1
    .line 2
    return-object v0
.end method

.method public final ACB()LX/08q;
    .locals 1

    .line 0
    sget-object v0, LX/08q;->A05:LX/08q;

    .line 1
    .line 2
    return-object v0
.end method

.method public final start()V
    .locals 3

    .line 0
    const/4 v1, 0x1

    .line 1
    iget-object v2, p0, LX/035;->A0C:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v2

    .line 4
    :try_start_0
    iget-boolean v0, p0, LX/035;->A03:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit v2

    .line 9
    return-void

    .line 10
    :cond_0
    iput-boolean v1, p0, LX/035;->A03:Z

    .line 11
    .line 12
    iget-object v0, p0, LX/035;->A0A:LX/09B;

    .line 13
    .line 14
    iget-object v1, v0, LX/09B;->A04:LX/05J;

    .line 15
    .line 16
    const-string v0, "Did you call SessionManager.init()?"

    .line 17
    .line 18
    invoke-static {v1, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, LX/035;->A00:LX/05J;

    .line 22
    .line 23
    sget-object v0, LX/07i;->A06:LX/07i;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, LX/05J;->A02(LX/07i;)V

    .line 26
    .line 27
    .line 28
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 30
    .line 31
    const/16 v0, 0x1d

    .line 32
    .line 33
    if-lt v1, v0, :cond_1

    .line 34
    .line 35
    new-instance v1, Lcom/facebook/errorreporting/lacrima/detector/lifecycle/ApplicationLifecycleDetector$ActivityCallbacksApi29;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/facebook/errorreporting/lacrima/detector/lifecycle/ApplicationLifecycleDetector$ActivityCallbacksApi29;-><init>(LX/035;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    new-instance v2, LX/03E;

    .line 41
    .line 42
    invoke-direct {v2, p0}, LX/03E;-><init>(LX/035;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, LX/035;->A05:Landroid/app/Application;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 48
    .line 49
    .line 50
    sget-object v1, LX/03F;->A02:Ljava/lang/Object;

    .line 51
    .line 52
    monitor-enter v1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance v1, Lcom/facebook/errorreporting/lacrima/detector/lifecycle/ApplicationLifecycleDetector$ActivityCallbacks;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/facebook/errorreporting/lacrima/detector/lifecycle/ApplicationLifecycleDetector$ActivityCallbacks;-><init>(LX/035;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :goto_1
    :try_start_1
    sput-object v2, LX/03F;->A00:LX/03E;

    .line 61
    .line 62
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 63
    iget-object v2, p0, LX/035;->A06:LX/02z;

    .line 64
    .line 65
    iget-object v0, p0, LX/035;->A08:LX/03A;

    .line 66
    .line 67
    iget-object v1, v2, LX/02z;->A05:Ljava/lang/Object;

    .line 68
    .line 69
    monitor-enter v1

    .line 70
    :try_start_2
    iput-object v0, v2, LX/02z;->A01:LX/03A;

    .line 71
    .line 72
    monitor-exit v1

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw v0

    .line 77
    :catchall_1
    :try_start_3
    move-exception v0

    .line 78
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    throw v0

    .line 80
    :catchall_2
    move-exception v0

    .line 81
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 82
    throw v0
.end method
