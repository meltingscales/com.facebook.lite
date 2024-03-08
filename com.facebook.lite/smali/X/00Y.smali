.class public final LX/00Y;
.super Ljava/lang/Thread;
.source ""


# static fields
.field public static final __redex_internal_original_name:Ljava/lang/String; = "ProcessAnrErrorMonitor$MonitorThread"


# instance fields
.field public A00:Z

.field public A01:Z

.field public A02:Z

.field public final A03:J

.field public final A04:Landroid/app/ActivityManager;

.field public final A05:Ljava/lang/Object;

.field public final A06:Ljava/util/Set;

.field public volatile A07:LX/00V;

.field public final synthetic A08:LX/00W;


# direct methods
.method public constructor <init>(Landroid/app/ActivityManager;LX/00W;LX/00V;J)V
    .locals 2

    .line 0
    iput-object p2, p0, LX/00Y;->A08:LX/00W;

    .line 1
    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    .line 6
    .line 7
    const-string v0, "ProcessAnrErrorMonitorThread:"

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    sget-object v0, LX/07C;->A04:LX/09m;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v0, LX/07C;->A04:LX/09m;

    .line 17
    .line 18
    iget-object v0, v0, LX/09m;->A02:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    :cond_0
    const-string v0, "unknown"

    .line 23
    .line 24
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    new-instance v0, Ljava/lang/Object;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, LX/00Y;->A05:Ljava/lang/Object;

    .line 40
    .line 41
    new-instance v0, Ljava/util/HashSet;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, LX/00Y;->A06:Ljava/util/Set;

    .line 47
    .line 48
    iput-object p1, p0, LX/00Y;->A04:Landroid/app/ActivityManager;

    .line 49
    .line 50
    iput-object p3, p0, LX/00Y;->A07:LX/00V;

    .line 51
    .line 52
    iput-wide p4, p0, LX/00Y;->A03:J

    .line 53
    .line 54
    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, LX/00Y;->A00:Z

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 0
    const-wide/16 v11, 0xfa0

    .line 1
    .line 2
    const-wide/16 v9, 0x0

    .line 3
    .line 4
    const-wide/16 v1, 0xfa0

    .line 5
    .line 6
    iget-object v4, p0, LX/00Y;->A05:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v4

    .line 9
    :try_start_0
    iget-boolean v3, p0, LX/00Y;->A02:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v7

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v5

    .line 26
    sub-long/2addr v5, v7

    .line 27
    sub-long v1, v11, v5

    .line 28
    .line 29
    const-wide/16 v5, 0x1

    .line 30
    .line 31
    cmp-long v0, v1, v5

    .line 32
    .line 33
    if-gez v0, :cond_2

    .line 34
    .line 35
    :cond_1
    monitor-exit v4

    .line 36
    goto :goto_4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :cond_2
    :goto_1
    :try_start_1
    invoke-virtual {v4, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38
    .line 39
    .line 40
    :catch_0
    cmp-long v0, v1, v9

    .line 41
    .line 42
    if-lez v0, :cond_3

    .line 43
    .line 44
    :try_start_2
    iget-boolean v0, p0, LX/00Y;->A02:Z

    .line 45
    .line 46
    if-nez v0, :cond_4

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_3
    iget-object v0, p0, LX/00Y;->A07:LX/00V;

    .line 50
    .line 51
    if-nez v0, :cond_4

    .line 52
    .line 53
    :goto_2
    const/4 v0, 0x1

    .line 54
    goto :goto_3

    .line 55
    :cond_4
    const/4 v0, 0x0

    .line 56
    :goto_3
    iget-boolean v3, p0, LX/00Y;->A02:Z

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    cmp-long v0, v1, v9

    .line 61
    .line 62
    if-lez v0, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :goto_4
    if-nez v3, :cond_13

    .line 66
    .line 67
    const/4 v12, 0x0

    .line 68
    :cond_5
    const/4 v7, 0x2

    .line 69
    const/4 v6, 0x1

    .line 70
    const/4 v5, 0x0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    :try_start_3
    iget-object v3, p0, LX/00Y;->A08:LX/00W;

    .line 72
    .line 73
    iget-object v0, p0, LX/00Y;->A04:Landroid/app/ActivityManager;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getProcessesInErrorState()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v8, Ljava/util/LinkedList;

    .line 80
    .line 81
    invoke-direct {v8}, Ljava/util/LinkedList;-><init>()V

    .line 82
    .line 83
    .line 84
    if-eqz v0, :cond_8

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v10

    .line 90
    :cond_6
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_8

    .line 95
    .line 96
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v9

    .line 100
    check-cast v9, Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 101
    .line 102
    iget v0, v9, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    .line 103
    .line 104
    if-ne v0, v7, :cond_6

    .line 105
    .line 106
    iget v1, v9, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    .line 107
    .line 108
    iget v0, v3, LX/00W;->A03:I

    .line 109
    .line 110
    if-ne v1, v0, :cond_6

    .line 111
    .line 112
    new-instance v2, LX/05M;

    .line 113
    .line 114
    invoke-direct {v2}, LX/05M;-><init>()V

    .line 115
    .line 116
    .line 117
    iget-object v0, v9, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    .line 118
    .line 119
    iput-object v0, v2, LX/05M;->A00:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v0, v9, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    .line 122
    .line 123
    iput-object v0, v2, LX/05M;->A02:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v1, v9, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    .line 126
    .line 127
    iput-object v1, v2, LX/05M;->A01:Ljava/lang/String;

    .line 128
    .line 129
    iget-object v0, v3, LX/00W;->A06:Ljava/lang/String;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-eqz v0, :cond_7

    .line 136
    .line 137
    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_7
    invoke-virtual {v8, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    goto :goto_5

    .line 145
    :cond_8
    iget-boolean v0, p0, LX/00Y;->A00:Z

    .line 146
    .line 147
    if-eqz v0, :cond_9

    .line 148
    .line 149
    const-string v9, "ProcessAnrErrorMonitor"

    .line 150
    .line 151
    const-string v2, "Starting process monitor checks for process \'%s\'"

    .line 152
    .line 153
    new-array v1, v6, [Ljava/lang/Object;

    .line 154
    .line 155
    iget-object v0, v3, LX/00W;->A06:Ljava/lang/String;

    .line 156
    .line 157
    aput-object v0, v1, v5

    .line 158
    .line 159
    invoke-static {v9, v2, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    iput-boolean v5, p0, LX/00Y;->A00:Z

    .line 163
    .line 164
    sget-object v2, LX/050;->A00:Ljava/lang/Integer;

    .line 165
    .line 166
    iget-object v1, p0, LX/00Y;->A07:LX/00V;

    .line 167
    .line 168
    const/4 v0, 0x0

    .line 169
    invoke-virtual {v3, v1, v2, v0, v0}, LX/00W;->A01(LX/00V;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    .line 170
    .line 171
    .line 172
    :cond_9
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    if-nez v0, :cond_c

    .line 177
    .line 178
    invoke-virtual {v8}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v10

    .line 182
    check-cast v10, LX/05M;

    .line 183
    .line 184
    iget-object v1, v3, LX/00W;->A06:Ljava/lang/String;

    .line 185
    .line 186
    iget-object v0, v10, LX/05M;->A01:Ljava/lang/String;

    .line 187
    .line 188
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_c

    .line 193
    .line 194
    if-nez v12, :cond_a

    .line 195
    .line 196
    const/4 v12, 0x1

    .line 197
    const-string v2, "ProcessAnrErrorMonitor"

    .line 198
    .line 199
    new-array v1, v7, [Ljava/lang/Object;

    .line 200
    .line 201
    iget-object v0, v10, LX/05M;->A00:Ljava/lang/String;

    .line 202
    .line 203
    aput-object v0, v1, v5

    .line 204
    .line 205
    iget-object v0, v10, LX/05M;->A02:Ljava/lang/String;

    .line 206
    .line 207
    aput-object v0, v1, v6

    .line 208
    .line 209
    const-string v0, "ANR detected Short msg: %s Tag: %s"

    .line 210
    .line 211
    invoke-static {v2, v0, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    .line 213
    .line 214
    sget-object v9, LX/050;->A0C:Ljava/lang/Integer;

    .line 215
    .line 216
    iget-object v2, p0, LX/00Y;->A07:LX/00V;

    .line 217
    .line 218
    iget-object v1, v10, LX/05M;->A00:Ljava/lang/String;

    .line 219
    .line 220
    iget-object v0, v10, LX/05M;->A02:Ljava/lang/String;

    .line 221
    .line 222
    invoke-virtual {v3, v2, v9, v1, v0}, LX/00W;->A01(LX/00V;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    .line 224
    .line 225
    :cond_a
    :goto_6
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-nez v0, :cond_d

    .line 230
    .line 231
    iget-object v9, v3, LX/00W;->A06:Ljava/lang/String;

    .line 232
    .line 233
    iget-object v0, p0, LX/00Y;->A07:LX/00V;

    .line 234
    .line 235
    if-eqz v0, :cond_d

    .line 236
    .line 237
    invoke-virtual {v8}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v11

    .line 241
    :cond_b
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_d

    .line 246
    .line 247
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v10

    .line 251
    check-cast v10, LX/05M;

    .line 252
    .line 253
    iget-object v8, v10, LX/05M;->A01:Ljava/lang/String;

    .line 254
    .line 255
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    if-nez v0, :cond_b

    .line 260
    .line 261
    const-string v2, "ProcessAnrErrorMonitor"

    .line 262
    .line 263
    new-array v1, v7, [Ljava/lang/Object;

    .line 264
    .line 265
    aput-object v8, v1, v5

    .line 266
    .line 267
    aput-object v9, v1, v6

    .line 268
    .line 269
    const-string v0, "Error found in process \'%s\' different from process being searched \'%s\'"

    .line 270
    .line 271
    invoke-static {v2, v0, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    iget-object v0, v10, LX/05M;->A01:Ljava/lang/String;

    .line 275
    .line 276
    if-eqz v0, :cond_b

    .line 277
    .line 278
    iget-object v1, p0, LX/00Y;->A06:Ljava/util/Set;

    .line 279
    .line 280
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v0

    .line 284
    if-nez v0, :cond_b

    .line 285
    .line 286
    iget-object v0, v10, LX/05M;->A01:Ljava/lang/String;

    .line 287
    .line 288
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 289
    .line 290
    .line 291
    goto :goto_7

    .line 292
    :cond_c
    if-eqz v12, :cond_a

    .line 293
    .line 294
    const-string v1, "ProcessAnrErrorMonitor"

    .line 295
    .line 296
    const-string v0, "On error cleared"

    .line 297
    .line 298
    invoke-static {v1, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    sget-object v2, LX/050;->A01:Ljava/lang/Integer;

    .line 302
    .line 303
    iget-object v1, p0, LX/00Y;->A07:LX/00V;

    .line 304
    .line 305
    const/4 v0, 0x0

    .line 306
    invoke-virtual {v3, v1, v2, v0, v0}, LX/00W;->A01(LX/00V;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    const/4 v12, 0x0

    .line 310
    goto :goto_6

    .line 311
    :cond_d
    monitor-enter v4

    .line 312
    :try_start_4
    iget-boolean v0, p0, LX/00Y;->A02:Z

    .line 313
    .line 314
    if-nez v0, :cond_11

    .line 315
    .line 316
    iget v2, v3, LX/00W;->A04:I

    .line 317
    .line 318
    :cond_e
    iget-boolean v0, p0, LX/00Y;->A01:Z

    .line 319
    .line 320
    if-eqz v0, :cond_f

    .line 321
    .line 322
    const/4 v2, 0x0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 323
    :cond_f
    :try_start_5
    int-to-long v0, v2

    .line 324
    invoke-virtual {v4, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 325
    .line 326
    .line 327
    :catch_1
    :try_start_6
    iget-boolean v0, p0, LX/00Y;->A01:Z

    .line 328
    .line 329
    if-eqz v0, :cond_10

    .line 330
    .line 331
    iget-boolean v0, p0, LX/00Y;->A02:Z

    .line 332
    .line 333
    if-eqz v0, :cond_e

    .line 334
    .line 335
    :cond_10
    iget-boolean v0, p0, LX/00Y;->A02:Z

    .line 336
    .line 337
    :cond_11
    monitor-exit v4

    .line 338
    if-eqz v0, :cond_5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 339
    .line 340
    sget-object v2, LX/050;->A0c:Ljava/lang/Integer;

    .line 341
    .line 342
    iget-object v1, p0, LX/00Y;->A07:LX/00V;

    .line 343
    .line 344
    const/4 v0, 0x0

    .line 345
    invoke-virtual {v3, v1, v2, v0, v0}, LX/00W;->A01(LX/00V;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :catchall_0
    move-exception v0

    .line 350
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 351
    throw v0

    .line 352
    :catch_2
    move-exception v4

    .line 353
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    instance-of v0, v0, Landroid/os/DeadObjectException;

    .line 358
    .line 359
    if-nez v0, :cond_12

    .line 360
    .line 361
    invoke-virtual {v4}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    instance-of v0, v0, Landroid/os/RemoteException;

    .line 366
    .line 367
    if-nez v0, :cond_12

    .line 368
    .line 369
    throw v4

    .line 370
    :cond_12
    iget-object v3, p0, LX/00Y;->A08:LX/00W;

    .line 371
    .line 372
    sget-object v2, LX/050;->A0l:Ljava/lang/Integer;

    .line 373
    .line 374
    iget-object v1, p0, LX/00Y;->A07:LX/00V;

    .line 375
    .line 376
    const/4 v0, 0x0

    .line 377
    invoke-virtual {v3, v1, v2, v0, v0}, LX/00W;->A01(LX/00V;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    const-string v2, "ProcessAnrErrorMonitor"

    .line 381
    .line 382
    new-array v1, v7, [Ljava/lang/Object;

    .line 383
    .line 384
    iget-object v0, v3, LX/00W;->A06:Ljava/lang/String;

    .line 385
    .line 386
    aput-object v0, v1, v5

    .line 387
    .line 388
    aput-object v4, v1, v6

    .line 389
    .line 390
    const-string v0, "Stopping checks for \'%s\' because of ERROR_QUERYING_ACTIVITY_MANAGER"

    .line 391
    .line 392
    invoke-static {v2, v0, v1}, LX/06s;->A0I(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    :cond_13
    return-void

    .line 396
    :catchall_1
    move-exception v0

    .line 397
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 398
    throw v0
.end method
