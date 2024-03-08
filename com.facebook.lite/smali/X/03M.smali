.class public final LX/03M;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/07P;


# instance fields
.field public final A00:LX/09B;

.field public final A01:Ljava/io/File;


# direct methods
.method public constructor <init>(LX/09B;Ljava/io/File;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p2, p0, LX/03M;->A01:Ljava/io/File;

    .line 4
    .line 5
    iput-object p1, p0, LX/03M;->A00:LX/09B;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final ACC()Ljava/lang/Integer;
    .locals 1

    .line 0
    sget-object v0, LX/050;->A0v:Ljava/lang/Integer;

    .line 1
    .line 2
    return-object v0
.end method

.method public final AV8(LX/02u;LX/02m;)V
    .locals 14

    .line 4307
    iget-object v8, p0, LX/03M;->A01:Ljava/io/File;

    const-string v0, "state.txt"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4308
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4309
    const/4 v6, 0x0

    new-instance v3, LX/03c;

    invoke-direct {v3, v1, v6}, LX/03c;-><init>(Ljava/io/File;Z)V

    .line 4310
    invoke-virtual {v3}, LX/03c;->A02()C

    move-result v7

    .line 4311
    invoke-static {v7}, LX/03e;->A00(C)Z

    move-result v5

    .line 4312
    invoke-virtual {v3}, LX/03c;->A05()Ljava/lang/String;

    move-result-object v4

    .line 4313
    sget-object v1, LX/07M;->A4E:LX/05l;

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4314
    sget-object v2, LX/07M;->A2k:LX/05m;

    const-string v9, ""

    invoke-static {v8, v9}, LX/09B;->A00(Ljava/io/File;Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4315
    sget-object v0, LX/07M;->A03:LX/05n;

    invoke-virtual {p1, v0, v5}, LX/02u;->A01(LX/05n;Z)V

    .line 4316
    sget-object v1, LX/07M;->A48:LX/05l;

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4317
    sget-object v0, LX/07M;->A4B:LX/05l;

    invoke-virtual {p1, v0, v4}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4318
    sget-object v5, LX/07M;->A19:LX/05m;

    monitor-enter v3

    .line 4319
    :try_start_0
    iget-object v2, v3, LX/03c;->A00:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v0, 0xb4

    cmp-long v4, v10, v0

    if-lez v4, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2f

    .line 4320
    :try_start_1
    const-string v7, "r"

    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2f

    .line 4321
    :try_start_2
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4322
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    if-nez v0, :cond_0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4323
    :try_start_3
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2f

    .line 4324
    :cond_0
    :try_start_4
    new-array v1, v0, [B

    .line 4325
    invoke-virtual {v4, v1, v6, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 4326
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4327
    :try_start_5
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2f

    .line 4328
    monitor-exit v3

    goto :goto_1

    .line 4329
    :catchall_0
    move-exception v0

    .line 4330
    :try_start_6
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2f

    :catch_0
    move-exception v4

    .line 4331
    :try_start_8
    invoke-static {}, LX/08w;->A00()V

    const-string v1, "lacrima"

    const-string v0, "Could not read end point"

    .line 4332
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2f

    .line 4333
    :cond_1
    :goto_0
    monitor-exit v3

    const-wide/16 v0, 0x0

    .line 4334
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4335
    sget-object v5, LX/07M;->A47:LX/05l;

    .line 4336
    monitor-enter v3

    .line 4337
    :try_start_9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v0, 0xc4

    cmp-long v4, v10, v0

    if-lez v4, :cond_2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2f

    .line 4338
    :try_start_a
    const-string v7, "r"

    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2f

    .line 4339
    :try_start_b
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4340
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    int-to-char v0, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 4341
    :try_start_c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2f

    .line 4342
    :catchall_2
    move-exception v0

    .line 4343
    :try_start_d
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    :try_start_e
    throw v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2f

    :catch_1
    move-exception v4

    .line 4344
    :try_start_f
    invoke-static {}, LX/08w;->A00()V

    .line 4345
    const-string v1, "lacrima"

    const-string v0, "Could not read activity callback stage"

    .line 4346
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4347
    :cond_2
    const/16 v0, 0x30
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2f

    .line 4348
    :goto_2
    monitor-exit v3

    .line 4349
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 4350
    invoke-virtual {p1, v5, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4351
    sget-object v5, LX/07M;->A02:LX/05n;

    monitor-enter v3

    .line 4352
    :try_start_10
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v0, 0xc6

    cmp-long v4, v10, v0

    if-lez v4, :cond_4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2f

    .line 4353
    :try_start_11
    const-string v4, "r"

    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {v7, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_2f

    .line 4354
    :try_start_12
    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4355
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    int-to-char v4, v0

    const/16 v1, 0x31

    const/4 v0, 0x0

    if-ne v4, v1, :cond_3

    const/4 v0, 0x1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 4356
    :cond_3
    :try_start_13
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_2f

    .line 4357
    monitor-exit v3

    goto :goto_3

    .line 4358
    :catchall_4
    move-exception v0

    .line 4359
    :try_start_14
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :catchall_5
    :try_start_15
    throw v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_2
    .catchall {:try_start_15 .. :try_end_15} :catchall_2f

    :catch_2
    move-exception v4

    .line 4360
    :try_start_16
    invoke-static {}, LX/08w;->A00()V

    .line 4361
    const-string v1, "lacrima"

    const-string v0, "Could not read activity finishing byte"

    .line 4362
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2f

    .line 4363
    :cond_4
    monitor-exit v3

    const/4 v0, 0x0

    .line 4364
    :goto_3
    invoke-virtual {p1, v5, v0}, LX/02u;->A01(LX/05n;Z)V

    .line 4365
    sget-object v5, LX/07M;->A18:LX/05m;

    .line 4366
    monitor-enter v3

    .line 4367
    :try_start_17
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v0, 0xc8

    cmp-long v4, v10, v0

    if-lez v4, :cond_5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2f

    .line 4368
    :try_start_18
    const-string v7, "r"

    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_3
    .catchall {:try_start_18 .. :try_end_18} :catchall_2f

    .line 4369
    :try_start_19
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4370
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    add-int/lit8 v0, v0, -0x30
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 4371
    :try_start_1a
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_4
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_3
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2f

    .line 4372
    :catchall_6
    move-exception v0

    .line 4373
    :try_start_1b
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    :catchall_7
    :try_start_1c
    throw v0
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_3
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2f

    :catch_3
    move-exception v4

    .line 4374
    :try_start_1d
    invoke-static {}, LX/08w;->A00()V

    .line 4375
    const-string v1, "lacrima"

    const-string v0, "Could not read activity callback state byte"

    .line 4376
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    const/4 v0, 0x0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_2f

    .line 4377
    :goto_4
    monitor-exit v3

    .line 4378
    invoke-virtual {p1, v5, v0}, LX/02u;->A02(LX/05m;I)V

    .line 4379
    sget-object v1, LX/07M;->A1B:LX/05m;

    .line 4380
    invoke-virtual {v3, v6}, LX/03c;->A04(Z)I

    move-result v0

    .line 4381
    invoke-virtual {p1, v1, v0}, LX/02u;->A02(LX/05m;I)V

    .line 4382
    sget-object v1, LX/07M;->A1A:LX/05m;

    const/4 v7, 0x1

    .line 4383
    invoke-virtual {v3, v7}, LX/03c;->A04(Z)I

    move-result v0

    .line 4384
    invoke-virtual {p1, v1, v0}, LX/02u;->A02(LX/05m;I)V

    .line 4385
    sget-object v5, LX/07M;->A04:LX/05n;

    .line 4386
    monitor-enter v3

    .line 4387
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v0, 0xca

    cmp-long v4, v10, v0

    if-lez v4, :cond_7
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_2f

    .line 4388
    :try_start_1f
    const-string v4, "r"

    new-instance v10, Ljava/io/RandomAccessFile;

    invoke-direct {v10, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_4
    .catchall {:try_start_1f .. :try_end_1f} :catchall_2f

    .line 4389
    :try_start_20
    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4390
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    int-to-char v4, v0

    const/16 v1, 0x31

    const/4 v0, 0x0

    if-ne v4, v1, :cond_6

    const/4 v0, 0x1
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_8

    .line 4391
    :cond_6
    :try_start_21
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_4
    .catchall {:try_start_21 .. :try_end_21} :catchall_2f

    .line 4392
    monitor-exit v3

    goto :goto_5

    .line 4393
    :catchall_8
    move-exception v0

    .line 4394
    :try_start_22
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    :catchall_9
    :try_start_23
    throw v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_4
    .catchall {:try_start_23 .. :try_end_23} :catchall_2f

    :catch_4
    move-exception v4

    .line 4395
    :try_start_24
    invoke-static {}, LX/08w;->A00()V

    .line 4396
    const-string v1, "lacrima"

    const-string v0, "Could not read home task switcher pressed byte"

    .line 4397
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_2f

    .line 4398
    :cond_7
    monitor-exit v3

    const/4 v0, 0x0

    .line 4399
    :goto_5
    invoke-virtual {p1, v5, v0}, LX/02u;->A01(LX/05n;Z)V

    .line 4400
    sget-object v10, LX/07M;->A34:LX/05m;

    iget-object v0, p0, LX/03M;->A00:LX/09B;

    .line 4401
    iget-wide v4, v0, LX/09B;->A00:J

    iget-wide v0, v0, LX/09B;->A01:J

    sub-long/2addr v4, v0

    .line 4402
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4403
    invoke-virtual {p1, v10, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4404
    sget-object v5, LX/07M;->A7C:LX/05l;

    monitor-enter v3

    .line 4405
    :try_start_25
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v0, 0x3

    cmp-long v4, v10, v0

    if-lez v4, :cond_9
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_2f

    .line 4406
    :try_start_26
    const-string v10, "r"

    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v10}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_5
    .catchall {:try_start_26 .. :try_end_26} :catchall_2f

    .line 4407
    :try_start_27
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4408
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "unknown"

    goto :goto_6

    .line 4409
    :cond_8
    new-array v0, v1, [B

    .line 4410
    invoke-virtual {v4, v0, v6, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 4411
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    .line 4412
    :goto_6
    :try_start_28
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_7
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_5
    .catchall {:try_start_28 .. :try_end_28} :catchall_2f

    .line 4413
    :catchall_a
    move-exception v0

    .line 4414
    :try_start_29
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_b

    :catchall_b
    :try_start_2a
    throw v0
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_5
    .catchall {:try_start_2a .. :try_end_2a} :catchall_2f

    :catch_5
    move-exception v4

    .line 4415
    :try_start_2b
    invoke-static {}, LX/08w;->A00()V

    const-string v1, "lacrima"

    const-string v0, "Could not read nav module"

    .line 4416
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_9
    const-string v1, "unknown"
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_2f

    .line 4417
    :goto_7
    monitor-exit v3

    .line 4418
    invoke-virtual {p1, v5, v1}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4419
    sget-object v4, LX/07M;->A5F:LX/05l;

    monitor-enter v3

    .line 4420
    :try_start_2c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 4421
    monitor-enter v3
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_2f

    .line 4422
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v0, 0x55

    cmp-long v10, v11, v0

    if-lez v10, :cond_b
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2e

    .line 4423
    :try_start_2e
    const-string v11, "r"

    new-instance v10, Ljava/io/RandomAccessFile;

    invoke-direct {v10, v2, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_6
    .catchall {:try_start_2e .. :try_end_2e} :catchall_2e

    .line 4424
    :try_start_2f
    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4425
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "unknown"

    goto :goto_8

    .line 4426
    :cond_a
    new-array v0, v1, [B

    .line 4427
    invoke-virtual {v10, v0, v6, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 4428
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_c

    .line 4429
    :goto_8
    :try_start_30
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_9
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_30} :catch_6
    .catchall {:try_start_30 .. :try_end_30} :catchall_2e

    .line 4430
    :catchall_c
    move-exception v0

    .line 4431
    :try_start_31
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_d

    :catchall_d
    :try_start_32
    throw v0
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_32} :catch_6
    .catchall {:try_start_32 .. :try_end_32} :catchall_2e

    :catch_6
    move-exception v10

    .line 4432
    :try_start_33
    invoke-static {}, LX/08w;->A00()V

    const-string v1, "lacrima"

    const-string v0, "Could not read end point"

    .line 4433
    invoke-static {v1, v0, v10}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_b
    const-string v1, "unknown"
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_2e

    .line 4434
    :goto_9
    :try_start_34
    monitor-exit v3

    .line 4435
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4436
    monitor-enter v3
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_2f

    .line 4437
    :try_start_35
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v0, 0x26e

    cmp-long v10, v11, v0

    if-lez v10, :cond_d
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_2e

    .line 4438
    :try_start_36
    const-string v11, "r"

    new-instance v10, Ljava/io/RandomAccessFile;

    invoke-direct {v10, v2, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_7
    .catchall {:try_start_36 .. :try_end_36} :catchall_2e

    .line 4439
    :try_start_37
    invoke-virtual {v10, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4440
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    if-nez v1, :cond_c

    move-object v1, v9

    goto :goto_a

    .line 4441
    :cond_c
    new-array v0, v1, [B

    .line 4442
    invoke-virtual {v10, v0, v6, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 4443
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_e

    .line 4444
    :goto_a
    :try_start_38
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_b
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_38} :catch_7
    .catchall {:try_start_38 .. :try_end_38} :catchall_2e

    .line 4445
    :catchall_e
    move-exception v0

    .line 4446
    :try_start_39
    invoke-virtual {v10}, Ljava/io/RandomAccessFile;->close()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_f

    :catchall_f
    :try_start_3a
    throw v0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3a} :catch_7
    .catchall {:try_start_3a .. :try_end_3a} :catchall_2e

    :catch_7
    move-exception v10

    .line 4447
    :try_start_3b
    invoke-static {}, LX/08w;->A00()V

    const-string v1, "lacrima"

    const-string v0, "Could not read end point"

    .line 4448
    invoke-static {v1, v0, v10}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    move-object v1, v9
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_2e

    .line 4449
    :goto_b
    :try_start_3c
    monitor-exit v3

    .line 4450
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_2f

    monitor-exit v3

    .line 4451
    invoke-virtual {p1, v4, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4452
    sget-object v5, LX/07M;->A8J:LX/05l;

    monitor-enter v3

    .line 4453
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v0, 0x6f2

    cmp-long v4, v9, v0

    if-lez v4, :cond_f
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_2f

    .line 4454
    :try_start_3e
    const-string v9, "r"

    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_3e} :catch_8
    .catchall {:try_start_3e .. :try_end_3e} :catchall_2f

    .line 4455
    :try_start_3f
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4456
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    if-nez v0, :cond_e

    const-string v1, "unknown"

    goto :goto_c

    .line 4457
    :cond_e
    and-int/lit16 v1, v0, 0xff

    .line 4458
    new-array v0, v1, [B

    .line 4459
    invoke-virtual {v4, v0, v6, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 4460
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_10

    .line 4461
    :goto_c
    :try_start_40
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_d
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_40} :catch_8
    .catchall {:try_start_40 .. :try_end_40} :catchall_2f

    .line 4462
    :catchall_10
    move-exception v0

    .line 4463
    :try_start_41
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_11

    :catchall_11
    :try_start_42
    throw v0
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_42} :catch_8
    .catchall {:try_start_42 .. :try_end_42} :catchall_2f

    :catch_8
    move-exception v4

    .line 4464
    :try_start_43
    invoke-static {}, LX/08w;->A00()V

    const-string v1, "lacrima"

    const-string v0, "Could not read previous endpoint"

    .line 4465
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    const-string v1, "unknown"
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_2f

    .line 4466
    :goto_d
    monitor-exit v3

    .line 4467
    invoke-virtual {p1, v5, v1}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4468
    sget-object v5, LX/07M;->A1n:LX/05m;

    monitor-enter v3

    .line 4469
    :try_start_44
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v0, 0x6e9

    cmp-long v4, v9, v0

    if-lez v4, :cond_10
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_2f

    .line 4470
    :try_start_45
    const-string v9, "r"

    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_9
    .catchall {:try_start_45 .. :try_end_45} :catchall_2f

    .line 4471
    :try_start_46
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4472
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_12

    .line 4473
    :try_start_47
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_9
    .catchall {:try_start_47 .. :try_end_47} :catchall_2f

    .line 4474
    monitor-exit v3

    goto :goto_e

    .line 4475
    :catchall_12
    move-exception v0

    .line 4476
    :try_start_48
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_13

    :catchall_13
    :try_start_49
    throw v0
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_9
    .catchall {:try_start_49 .. :try_end_49} :catchall_2f

    :catch_9
    move-exception v4

    .line 4477
    :try_start_4a
    invoke-static {}, LX/08w;->A00()V

    .line 4478
    const-string v1, "lacrima"

    const-string v0, "Could not read LastNavigationTimeMs"

    .line 4479
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_2f

    .line 4480
    :cond_10
    monitor-exit v3

    const-wide/16 v0, 0x0

    .line 4481
    :goto_e
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4482
    sget-object v5, LX/07M;->A3w:LX/05l;

    monitor-enter v3

    .line 4483
    :try_start_4b
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v0, 0x6f1

    cmp-long v4, v9, v0

    if-lez v4, :cond_12
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_2f

    .line 4484
    :try_start_4c
    const-string v9, "r"

    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4c} :catch_a
    .catchall {:try_start_4c .. :try_end_4c} :catchall_2f

    .line 4485
    :try_start_4d
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4486
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    int-to-char v0, v0

    if-nez v0, :cond_11

    const/16 v0, 0x20
    :try_end_4d
    .catchall {:try_start_4d .. :try_end_4d} :catchall_14

    .line 4487
    :cond_11
    :try_start_4e
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_4e} :catch_a
    .catchall {:try_start_4e .. :try_end_4e} :catchall_2f

    .line 4488
    monitor-exit v3

    goto :goto_f

    :catchall_14
    move-exception v0

    .line 4489
    :try_start_4f
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4f
    .catchall {:try_start_4f .. :try_end_4f} :catchall_15

    :catchall_15
    :try_start_50
    throw v0
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_50} :catch_a
    .catchall {:try_start_50 .. :try_end_50} :catchall_2f

    :catch_a
    move-exception v4

    .line 4490
    :try_start_51
    invoke-static {}, LX/08w;->A00()V

    .line 4491
    const-string v1, "lacrima"

    const-string v0, "Could not read appInitState"

    .line 4492
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_51
    .catchall {:try_start_51 .. :try_end_51} :catchall_2f

    .line 4493
    :cond_12
    monitor-exit v3

    const/16 v0, 0x20

    .line 4494
    :goto_f
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4495
    sget-object v5, LX/07M;->A4M:LX/05l;

    monitor-enter v3

    .line 4496
    const/16 v10, 0x3e8

    .line 4497
    :try_start_52
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v0, 0x2f1

    cmp-long v4, v11, v0

    if-lez v4, :cond_15
    :try_end_52
    .catchall {:try_start_52 .. :try_end_52} :catchall_2f

    .line 4498
    :try_start_53
    const-string v9, "r"

    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_53} :catch_b
    .catchall {:try_start_53 .. :try_end_53} :catchall_2f

    .line 4499
    :try_start_54
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4500
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readShort()S

    move-result v0

    if-nez v0, :cond_13

    const-string v1, "unknown"

    goto :goto_10

    .line 4501
    :cond_13
    if-gt v0, v10, :cond_14

    move v10, v0

    .line 4502
    :cond_14
    new-array v0, v10, [B

    .line 4503
    invoke-virtual {v4, v0, v6, v10}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 4504
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_54
    .catchall {:try_start_54 .. :try_end_54} :catchall_16

    .line 4505
    :goto_10
    :try_start_55
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_11
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_55} :catch_b
    .catchall {:try_start_55 .. :try_end_55} :catchall_2f

    .line 4506
    :catchall_16
    move-exception v0

    .line 4507
    :try_start_56
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_56
    .catchall {:try_start_56 .. :try_end_56} :catchall_17

    :catchall_17
    :try_start_57
    throw v0
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_57} :catch_b
    .catchall {:try_start_57 .. :try_end_57} :catchall_2f

    :catch_b
    move-exception v4

    .line 4508
    :try_start_58
    invoke-static {}, LX/08w;->A00()V

    .line 4509
    const-string v1, "lacrima"

    const-string v0, "Could not read attribution ID"

    .line 4510
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15
    const-string v1, "unknown"
    :try_end_58
    .catchall {:try_start_58 .. :try_end_58} :catchall_2f

    .line 4511
    :goto_11
    monitor-exit v3

    .line 4512
    invoke-virtual {p1, v5, v1}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4513
    const-string v1, "native_state.txt"

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4514
    invoke-static {v0}, LX/03d;->A00(Ljava/io/File;)C

    move-result v5

    .line 4515
    const-string v1, "anr_state.txt"

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4516
    invoke-static {v0}, LX/03d;->A00(Ljava/io/File;)C

    move-result v10

    .line 4517
    invoke-virtual {v3}, LX/03c;->A03()C

    move-result v4

    .line 4518
    sget-object v1, LX/07M;->A4C:LX/05l;

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4519
    sget-object v1, LX/07M;->A4D:LX/05l;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4520
    sget-object v1, LX/07M;->A49:LX/05l;

    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4521
    sget-object v1, LX/07M;->A4A:LX/05l;

    .line 4522
    const/16 v0, 0x30

    .line 4523
    const/16 v9, 0x30

    if-eq v5, v0, :cond_1a

    .line 4524
    const/16 v0, 0x69

    .line 4525
    if-eq v5, v0, :cond_1a

    .line 4526
    const/16 v0, 0x39

    .line 4527
    if-ne v5, v0, :cond_17

    .line 4528
    const/16 v0, 0x6a

    .line 4529
    if-ne v4, v0, :cond_17

    :cond_16
    :goto_12
    move v10, v4

    .line 4530
    :goto_13
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 4531
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4532
    sget-object v4, LX/07M;->A53:LX/05l;

    const-string v1, "shut_down"

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4533
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 4534
    invoke-virtual {p1, v4, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4535
    sget-object v5, LX/07M;->A4n:LX/05l;

    .line 4536
    monitor-enter v3

    goto :goto_14

    .line 4537
    :cond_17
    const/16 v0, 0x52

    .line 4538
    if-eq v4, v0, :cond_18

    .line 4539
    const/16 v0, 0x55

    .line 4540
    if-eq v4, v0, :cond_18

    .line 4541
    const/16 v0, 0x72

    .line 4542
    if-eq v4, v0, :cond_18

    .line 4543
    const/16 v0, 0x63

    .line 4544
    if-eq v4, v0, :cond_18

    .line 4545
    const/16 v0, 0x75

    .line 4546
    if-eq v4, v0, :cond_18

    .line 4547
    const/16 v0, 0x71

    .line 4548
    if-eq v4, v0, :cond_18

    .line 4549
    const/16 v0, 0x6d

    .line 4550
    if-eq v4, v0, :cond_18

    .line 4551
    const/16 v0, 0x6a

    .line 4552
    if-ne v4, v0, :cond_19

    .line 4553
    :cond_18
    const/16 v0, 0x51

    .line 4554
    if-ne v5, v0, :cond_19

    goto :goto_12

    :cond_19
    move v10, v5

    goto :goto_13

    .line 4555
    :cond_1a
    if-eq v10, v9, :cond_16

    .line 4556
    const/16 v0, 0x69

    .line 4557
    if-eq v10, v0, :cond_16

    goto :goto_13

    .line 4558
    :goto_14
    :try_start_59
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v0, 0xa6

    cmp-long v4, v8, v0

    if-lez v4, :cond_1b
    :try_end_59
    .catchall {:try_start_59 .. :try_end_59} :catchall_2f

    .line 4559
    :try_start_5a
    const-string v8, "r"

    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5a} :catch_c
    .catchall {:try_start_5a .. :try_end_5a} :catchall_2f

    .line 4560
    :try_start_5b
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4561
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    int-to-char v0, v0
    :try_end_5b
    .catchall {:try_start_5b .. :try_end_5b} :catchall_18

    .line 4562
    :try_start_5c
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5c} :catch_c
    .catchall {:try_start_5c .. :try_end_5c} :catchall_2f

    .line 4563
    monitor-exit v3

    goto :goto_15

    .line 4564
    :catchall_18
    move-exception v0

    .line 4565
    :try_start_5d
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5d
    .catchall {:try_start_5d .. :try_end_5d} :catchall_19

    :catchall_19
    :try_start_5e
    throw v0
    :try_end_5e
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_5e} :catch_c
    .catchall {:try_start_5e .. :try_end_5e} :catchall_2f

    :catch_c
    move-exception v4

    .line 4566
    :try_start_5f
    invoke-static {}, LX/08w;->A00()V

    .line 4567
    const-string v1, "lacrima"

    const-string v0, "Could not read cold start mode"

    .line 4568
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5f
    .catchall {:try_start_5f .. :try_end_5f} :catchall_2f

    .line 4569
    :cond_1b
    monitor-exit v3

    const/16 v0, 0x20

    .line 4570
    :goto_15
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .line 4571
    invoke-virtual {p1, v5, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4572
    sget-object v5, LX/07M;->A35:LX/05m;

    .line 4573
    monitor-enter v3

    .line 4574
    :try_start_60
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v0, 0xa7

    cmp-long v4, v8, v0

    if-lez v4, :cond_1d
    :try_end_60
    .catchall {:try_start_60 .. :try_end_60} :catchall_2f

    .line 4575
    :try_start_61
    const-string v8, "r"

    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_61} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_61 .. :try_end_61} :catch_d
    .catchall {:try_start_61 .. :try_end_61} :catchall_2f

    .line 4576
    :try_start_62
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4577
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    if-nez v0, :cond_1c
    :try_end_62
    .catchall {:try_start_62 .. :try_end_62} :catchall_1a

    .line 4578
    :try_start_63
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_16
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_63} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_63 .. :try_end_63} :catch_d
    .catchall {:try_start_63 .. :try_end_63} :catchall_2f

    .line 4579
    :cond_1c
    :try_start_64
    new-array v1, v0, [B

    .line 4580
    invoke-virtual {v4, v1, v6, v0}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 4581
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_64
    .catchall {:try_start_64 .. :try_end_64} :catchall_1a

    .line 4582
    :try_start_65
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_65} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_65 .. :try_end_65} :catch_d
    .catchall {:try_start_65 .. :try_end_65} :catchall_2f

    .line 4583
    monitor-exit v3

    goto :goto_17

    .line 4584
    :catchall_1a
    move-exception v0

    .line 4585
    :try_start_66
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_66
    .catchall {:try_start_66 .. :try_end_66} :catchall_1b

    :catchall_1b
    :try_start_67
    throw v0
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_67} :catch_d
    .catch Ljava/lang/NumberFormatException; {:try_start_67 .. :try_end_67} :catch_d
    .catchall {:try_start_67 .. :try_end_67} :catchall_2f

    :catch_d
    move-exception v4

    .line 4586
    :try_start_68
    invoke-static {}, LX/08w;->A00()V

    .line 4587
    const-string v1, "lacrima"

    const-string v0, "Could not read time to first activity transition"

    .line 4588
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_68
    .catchall {:try_start_68 .. :try_end_68} :catchall_2f

    .line 4589
    :cond_1d
    :goto_16
    monitor-exit v3

    const-wide/16 v0, 0x0

    .line 4590
    :goto_17
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4591
    invoke-virtual {p1, v5, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4592
    sget-object v5, LX/07M;->A5Q:LX/05l;

    .line 4593
    monitor-enter v3

    .line 4594
    :try_start_69
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v0, 0xb2

    cmp-long v4, v8, v0

    if-lez v4, :cond_1f
    :try_end_69
    .catchall {:try_start_69 .. :try_end_69} :catchall_2f

    .line 4595
    :try_start_6a
    const-string v4, "r"

    new-instance v8, Ljava/io/RandomAccessFile;

    invoke-direct {v8, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6a} :catch_e
    .catchall {:try_start_6a .. :try_end_6a} :catchall_2f

    .line 4596
    :try_start_6b
    invoke-virtual {v8, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4597
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    int-to-char v4, v0

    const/16 v1, 0x31

    const/4 v0, 0x0

    if-ne v4, v1, :cond_1e

    const/4 v0, 0x1
    :try_end_6b
    .catchall {:try_start_6b .. :try_end_6b} :catchall_1c

    .line 4598
    :cond_1e
    :try_start_6c
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_6c} :catch_e
    .catchall {:try_start_6c .. :try_end_6c} :catchall_2f

    .line 4599
    monitor-exit v3

    goto :goto_18

    .line 4600
    :catchall_1c
    move-exception v0

    .line 4601
    :try_start_6d
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6d
    .catchall {:try_start_6d .. :try_end_6d} :catchall_1d

    :catchall_1d
    :try_start_6e
    throw v0
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_6e} :catch_e
    .catchall {:try_start_6e .. :try_end_6e} :catchall_2f

    :catch_e
    move-exception v4

    .line 4602
    :try_start_6f
    invoke-static {}, LX/08w;->A00()V

    .line 4603
    const-string v1, "lacrima"

    const-string v0, "Could not read foreground until first activity transition"

    .line 4604
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6f
    .catchall {:try_start_6f .. :try_end_6f} :catchall_2f

    .line 4605
    :cond_1f
    monitor-exit v3

    const/4 v0, 0x0

    .line 4606
    :goto_18
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 4607
    invoke-virtual {p1, v5, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4608
    monitor-enter v3

    .line 4609
    const/4 v13, 0x1

    const/16 v4, 0x31

    const/16 v9, 0x20

    const/4 v12, 0x0

    .line 4610
    :try_start_70
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v0, 0xcd

    cmp-long v5, v10, v0

    if-lez v5, :cond_22
    :try_end_70
    .catchall {:try_start_70 .. :try_end_70} :catchall_2f

    .line 4611
    :try_start_71
    const-string v8, "r"

    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v2, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_71
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_71} :catch_f
    .catchall {:try_start_71 .. :try_end_71} :catchall_2f

    .line 4612
    :try_start_72
    invoke-virtual {v5, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4613
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    int-to-char v0, v0

    if-eq v0, v9, :cond_21

    .line 4614
    if-eq v0, v4, :cond_20

    const/4 v13, 0x0

    .line 4615
    :cond_20
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12
    :try_end_72
    .catchall {:try_start_72 .. :try_end_72} :catchall_1e

    .line 4616
    :cond_21
    :try_start_73
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_19
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_73} :catch_f
    .catchall {:try_start_73 .. :try_end_73} :catchall_2f

    .line 4617
    :catchall_1e
    move-exception v0

    .line 4618
    :try_start_74
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_74
    .catchall {:try_start_74 .. :try_end_74} :catchall_1f

    :catchall_1f
    :try_start_75
    throw v0
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_75} :catch_f
    .catchall {:try_start_75 .. :try_end_75} :catchall_2f

    :catch_f
    move-exception v5

    .line 4619
    :try_start_76
    invoke-static {}, LX/08w;->A00()V

    .line 4620
    const-string v1, "lacrima"

    const-string v0, "Could not read lock screen byte"

    .line 4621
    invoke-static {v1, v0, v5}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4622
    :cond_22
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12
    :try_end_76
    .catchall {:try_start_76 .. :try_end_76} :catchall_2f

    .line 4623
    :goto_19
    monitor-exit v3

    .line 4624
    if-eqz v12, :cond_23

    .line 4625
    sget-object v1, LX/07M;->A0W:LX/05n;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, LX/02u;->A01(LX/05n;Z)V

    .line 4626
    :cond_23
    sget-object v8, LX/07M;->A9A:LX/05l;

    .line 4627
    monitor-enter v3

    .line 4628
    :try_start_77
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v0, 0xce

    cmp-long v5, v9, v0

    if-lez v5, :cond_25
    :try_end_77
    .catchall {:try_start_77 .. :try_end_77} :catchall_2f

    .line 4629
    :try_start_78
    const-string v9, "r"

    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v2, v9}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_78} :catch_10
    .catchall {:try_start_78 .. :try_end_78} :catchall_2f

    .line 4630
    :try_start_79
    invoke-virtual {v5, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4631
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    int-to-char v1, v0

    const/4 v0, 0x0

    if-ne v1, v4, :cond_24

    const/4 v0, 0x1
    :try_end_79
    .catchall {:try_start_79 .. :try_end_79} :catchall_20

    .line 4632
    :cond_24
    :try_start_7a
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7a
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7a} :catch_10
    .catchall {:try_start_7a .. :try_end_7a} :catchall_2f

    .line 4633
    monitor-exit v3

    goto :goto_1a

    .line 4634
    :catchall_20
    move-exception v0

    .line 4635
    :try_start_7b
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7b
    .catchall {:try_start_7b .. :try_end_7b} :catchall_21

    :catchall_21
    :try_start_7c
    throw v0
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7c} :catch_10
    .catchall {:try_start_7c .. :try_end_7c} :catchall_2f

    :catch_10
    move-exception v5

    .line 4636
    :try_start_7d
    invoke-static {}, LX/08w;->A00()V

    .line 4637
    const-string v1, "lacrima"

    const-string v0, "Could not read system binder died byte"

    .line 4638
    invoke-static {v1, v0, v5}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7d
    .catchall {:try_start_7d .. :try_end_7d} :catchall_2f

    .line 4639
    :cond_25
    monitor-exit v3

    const/4 v0, 0x0

    .line 4640
    :goto_1a
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 4641
    invoke-virtual {p1, v8, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4642
    const/16 v1, 0x16c

    const/16 v0, 0x16d

    .line 4643
    invoke-static {v3, v1, v0}, LX/03c;->A01(LX/03c;II)LX/02B;

    move-result-object v5

    .line 4644
    if-eqz v5, :cond_26

    .line 4645
    sget-object v1, LX/07M;->A0U:LX/05n;

    iget-boolean v0, v5, LX/02B;->A01:Z

    invoke-virtual {p1, v1, v0}, LX/02u;->A01(LX/05n;Z)V

    .line 4646
    iget-object v1, v5, LX/02B;->A00:Ljava/lang/String;

    if-eqz v1, :cond_26

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_26

    .line 4647
    sget-object v0, LX/07M;->A82:LX/05l;

    invoke-virtual {p1, v0, v1}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4648
    :cond_26
    const-wide/16 v0, 0xcf

    const-string v5, "last OnPause request received time ms"

    .line 4649
    invoke-static {v3, v5, v0, v1}, LX/03c;->A00(LX/03c;Ljava/lang/String;J)LX/02C;

    move-result-object v8

    .line 4650
    if-eqz v8, :cond_27

    .line 4651
    iget-boolean v0, v8, LX/02C;->A04:Z

    if-nez v0, :cond_27

    .line 4652
    iget-boolean v0, v8, LX/02C;->A03:Z

    if-eqz v0, :cond_2f

    .line 4653
    sget-object v5, LX/07M;->A1r:LX/05m;

    iget-wide v0, v8, LX/02C;->A02:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4654
    sget-object v5, LX/07M;->A1q:LX/05m;

    iget-wide v0, v8, LX/02C;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4655
    :cond_27
    :goto_1b
    const-wide/16 v0, 0xe0

    const-string v5, "last OnPause request to leave app received time ms"

    .line 4656
    invoke-static {v3, v5, v0, v1}, LX/03c;->A00(LX/03c;Ljava/lang/String;J)LX/02C;

    move-result-object v8

    .line 4657
    if-eqz v8, :cond_28

    .line 4658
    iget-boolean v0, v8, LX/02C;->A04:Z

    if-nez v0, :cond_28

    .line 4659
    iget-boolean v0, v8, LX/02C;->A03:Z

    if-eqz v0, :cond_2e

    .line 4660
    sget-object v5, LX/07M;->A1v:LX/05m;

    iget-wide v0, v8, LX/02C;->A02:J

    .line 4661
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4662
    invoke-virtual {p1, v5, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4663
    sget-object v5, LX/07M;->A1u:LX/05m;

    iget-wide v0, v8, LX/02C;->A00:J

    .line 4664
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4665
    invoke-virtual {p1, v5, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4666
    :cond_28
    :goto_1c
    const/16 v1, 0x1ed

    const/16 v0, 0x1ee

    .line 4667
    invoke-static {v3, v1, v0}, LX/03c;->A01(LX/03c;II)LX/02B;

    move-result-object v5

    .line 4668
    if-eqz v5, :cond_29

    .line 4669
    sget-object v1, LX/07M;->A0T:LX/05n;

    iget-boolean v0, v5, LX/02B;->A01:Z

    invoke-virtual {p1, v1, v0}, LX/02u;->A01(LX/05n;Z)V

    .line 4670
    iget-object v1, v5, LX/02B;->A00:Ljava/lang/String;

    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_29

    .line 4671
    sget-object v0, LX/07M;->A81:LX/05l;

    invoke-virtual {p1, v0, v1}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4672
    :cond_29
    const-wide/16 v0, 0xf1

    const-string v5, "last OnPause request execute start time ms"

    .line 4673
    invoke-static {v3, v5, v0, v1}, LX/03c;->A00(LX/03c;Ljava/lang/String;J)LX/02C;

    move-result-object v8

    .line 4674
    if-eqz v8, :cond_2a

    .line 4675
    iget-boolean v0, v8, LX/02C;->A04:Z

    if-nez v0, :cond_2a

    .line 4676
    iget-boolean v0, v8, LX/02C;->A03:Z

    if-eqz v0, :cond_2d

    .line 4677
    sget-object v5, LX/07M;->A1p:LX/05m;

    iget-wide v0, v8, LX/02C;->A02:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4678
    sget-object v5, LX/07M;->A1o:LX/05m;

    iget-wide v0, v8, LX/02C;->A00:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4679
    :cond_2a
    :goto_1d
    const-wide/16 v0, 0x102

    const-string v5, "last OnPause request to leave app execute start time ms"

    .line 4680
    invoke-static {v3, v5, v0, v1}, LX/03c;->A00(LX/03c;Ljava/lang/String;J)LX/02C;

    move-result-object v8

    .line 4681
    if-eqz v8, :cond_2b

    .line 4682
    iget-boolean v0, v8, LX/02C;->A04:Z

    if-nez v0, :cond_2b

    .line 4683
    iget-boolean v0, v8, LX/02C;->A03:Z

    if-eqz v0, :cond_2c

    .line 4684
    sget-object v5, LX/07M;->A1t:LX/05m;

    iget-wide v0, v8, LX/02C;->A02:J

    .line 4685
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4686
    invoke-virtual {p1, v5, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4687
    sget-object v5, LX/07M;->A1s:LX/05m;

    iget-wide v0, v8, LX/02C;->A00:J

    .line 4688
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 4689
    invoke-virtual {p1, v5, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4690
    :cond_2b
    :goto_1e
    monitor-enter v3

    goto :goto_1f

    .line 4691
    :cond_2c
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v8, v5, v6

    const-string v1, "lacrima"

    const-string v0, "Timestamp value %s for base key \"last_on_pause_request_to_leave_app_exec\" is not valid"

    .line 4692
    invoke-static {v1, v0, v5}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4693
    sget-object v0, LX/07M;->A0Q:LX/05n;

    invoke-virtual {p1, v0, v7}, LX/02u;->A01(LX/05n;Z)V

    goto :goto_1e

    .line 4694
    :cond_2d
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v8, v5, v6

    const-string v1, "lacrima"

    const-string v0, "Timestamp value %s for base key \"last_on_pause_request_exec\" is not valid"

    .line 4695
    invoke-static {v1, v0, v5}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4696
    sget-object v0, LX/07M;->A0O:LX/05n;

    invoke-virtual {p1, v0, v7}, LX/02u;->A01(LX/05n;Z)V

    goto :goto_1d

    .line 4697
    :cond_2e
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v8, v5, v6

    const-string v1, "lacrima"

    const-string v0, "Timestamp value %s for base key \"last_on_pause_request_to_leave_app_recv\" is not valid"

    .line 4698
    invoke-static {v1, v0, v5}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4699
    sget-object v0, LX/07M;->A0R:LX/05n;

    invoke-virtual {p1, v0, v7}, LX/02u;->A01(LX/05n;Z)V

    goto/16 :goto_1c

    .line 4700
    :cond_2f
    new-array v5, v7, [Ljava/lang/Object;

    aput-object v8, v5, v6

    const-string v1, "lacrima"

    const-string v0, "Timestamp value %s for base key last_on_pause_request_recv is not valid"

    .line 4701
    invoke-static {v1, v0, v5}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 4702
    sget-object v0, LX/07M;->A0P:LX/05n;

    invoke-virtual {p1, v0, v7}, LX/02u;->A01(LX/05n;Z)V

    goto/16 :goto_1b

    .line 4703
    :goto_1f
    :try_start_7e
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v0, 0x113

    cmp-long v5, v7, v0

    if-lez v5, :cond_31
    :try_end_7e
    .catchall {:try_start_7e .. :try_end_7e} :catchall_2f

    .line 4704
    :try_start_7f
    const-string v5, "r"

    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {v7, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_7f} :catch_11
    .catchall {:try_start_7f .. :try_end_7f} :catchall_2f

    .line 4705
    :try_start_80
    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4706
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v0

    int-to-char v0, v0

    const/4 v5, 0x0

    if-ne v0, v4, :cond_30

    const/4 v5, 0x1
    :try_end_80
    .catchall {:try_start_80 .. :try_end_80} :catchall_22

    .line 4707
    :cond_30
    :try_start_81
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_81} :catch_11
    .catchall {:try_start_81 .. :try_end_81} :catchall_2f

    .line 4708
    monitor-exit v3

    goto :goto_20

    .line 4709
    :catchall_22
    move-exception v0

    .line 4710
    :try_start_82
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_82
    .catchall {:try_start_82 .. :try_end_82} :catchall_23

    :catchall_23
    :try_start_83
    throw v0
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_83} :catch_11
    .catchall {:try_start_83 .. :try_end_83} :catchall_2f

    :catch_11
    move-exception v4

    .line 4711
    :try_start_84
    invoke-static {}, LX/08w;->A00()V

    .line 4712
    const-string v1, "lacrima"

    const-string v0, "Could not read content provider died byte"

    .line 4713
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_84
    .catchall {:try_start_84 .. :try_end_84} :catchall_2f

    .line 4714
    :cond_31
    monitor-exit v3

    const/4 v5, 0x0

    .line 4715
    :goto_20
    sget-object v1, LX/07M;->A4s:LX/05l;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    if-eqz v5, :cond_35

    .line 4716
    sget-object v5, LX/07M;->A4u:LX/05l;

    .line 4717
    monitor-enter v3

    .line 4718
    :try_start_85
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v7, 0x113

    cmp-long v0, v9, v7

    if-lez v0, :cond_32
    :try_end_85
    .catchall {:try_start_85 .. :try_end_85} :catchall_2f

    .line 4719
    :try_start_86
    const-string v0, "r"

    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, 0x114
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_86} :catch_12
    .catchall {:try_start_86 .. :try_end_86} :catchall_2f

    .line 4720
    :try_start_87
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4721
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v0
    :try_end_87
    .catchall {:try_start_87 .. :try_end_87} :catchall_24

    .line 4722
    :try_start_88
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_21
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_88} :catch_12
    .catchall {:try_start_88 .. :try_end_88} :catchall_2f

    .line 4723
    :catchall_24
    move-exception v0

    .line 4724
    :try_start_89
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_89
    .catchall {:try_start_89 .. :try_end_89} :catchall_25

    :catchall_25
    :try_start_8a
    throw v0
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_8a .. :try_end_8a} :catch_12
    .catchall {:try_start_8a .. :try_end_8a} :catchall_2f

    :catch_12
    move-exception v4

    .line 4725
    :try_start_8b
    invoke-static {}, LX/08w;->A00()V

    .line 4726
    const-string v1, "lacrima"

    const-string v0, "Could not read content provider died time"

    .line 4727
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_32
    const-wide/16 v0, 0x0
    :try_end_8b
    .catchall {:try_start_8b .. :try_end_8b} :catchall_2f

    .line 4728
    :goto_21
    monitor-exit v3

    .line 4729
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 4730
    invoke-virtual {p1, v5, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4731
    sget-object v5, LX/07M;->A4t:LX/05l;

    .line 4732
    monitor-enter v3

    .line 4733
    :try_start_8c
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v9

    const-wide/16 v7, 0x113

    cmp-long v0, v9, v7

    if-lez v0, :cond_34
    :try_end_8c
    .catchall {:try_start_8c .. :try_end_8c} :catchall_2f

    .line 4734
    :try_start_8d
    const-string v0, "r"

    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 v0, 0x11c
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_8d} :catch_13
    .catchall {:try_start_8d .. :try_end_8d} :catchall_2f

    .line 4735
    :try_start_8e
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4736
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v1

    if-nez v1, :cond_33

    const-string v1, "unknown"

    goto :goto_22

    .line 4737
    :cond_33
    new-array v0, v1, [B

    .line 4738
    invoke-virtual {v4, v0, v6, v1}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 4739
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_8e
    .catchall {:try_start_8e .. :try_end_8e} :catchall_26

    .line 4740
    :goto_22
    :try_start_8f
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_23
    :try_end_8f
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_8f} :catch_13
    .catchall {:try_start_8f .. :try_end_8f} :catchall_2f

    .line 4741
    :catchall_26
    move-exception v0

    .line 4742
    :try_start_90
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_90
    .catchall {:try_start_90 .. :try_end_90} :catchall_27

    :catchall_27
    :try_start_91
    throw v0
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_91} :catch_13
    .catchall {:try_start_91 .. :try_end_91} :catchall_2f

    :catch_13
    move-exception v4

    .line 4743
    :try_start_92
    invoke-static {}, LX/08w;->A00()V

    .line 4744
    const-string v1, "lacrima"

    const-string v0, "Could not read content provider died name"

    .line 4745
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_34
    const-string v1, ""
    :try_end_92
    .catchall {:try_start_92 .. :try_end_92} :catchall_2f

    .line 4746
    :goto_23
    monitor-exit v3

    .line 4747
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4748
    invoke-virtual {p1, v5, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 4749
    :cond_35
    monitor-enter v3

    .line 4750
    :try_start_93
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v0, 0x2ed

    cmp-long v4, v7, v0

    if-lez v4, :cond_36
    :try_end_93
    .catchall {:try_start_93 .. :try_end_93} :catchall_2f

    .line 4751
    :try_start_94
    const-string v5, "r"

    new-instance v4, Ljava/io/RandomAccessFile;

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_94
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_94} :catch_14
    .catchall {:try_start_94 .. :try_end_94} :catchall_2f

    .line 4752
    :try_start_95
    invoke-virtual {v4, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4753
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1
    :try_end_95
    .catchall {:try_start_95 .. :try_end_95} :catchall_28

    .line 4754
    :try_start_96
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_24
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_96 .. :try_end_96} :catch_14
    .catchall {:try_start_96 .. :try_end_96} :catchall_2f

    .line 4755
    :catchall_28
    move-exception v0

    .line 4756
    :try_start_97
    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->close()V
    :try_end_97
    .catchall {:try_start_97 .. :try_end_97} :catchall_29

    :catchall_29
    :try_start_98
    throw v0
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_98 .. :try_end_98} :catch_14
    .catchall {:try_start_98 .. :try_end_98} :catchall_2f

    :catch_14
    move-exception v4

    .line 4757
    :try_start_99
    invoke-static {}, LX/08w;->A00()V

    .line 4758
    const-string v1, "lacrima"

    const-string v0, "Could not read application thread process state"

    .line 4759
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_36
    const/4 v1, -0x1
    :try_end_99
    .catchall {:try_start_99 .. :try_end_99} :catchall_2f

    .line 4760
    :goto_24
    monitor-exit v3

    .line 4761
    if-lez v1, :cond_39

    .line 4762
    sget-object v0, LX/07M;->A0x:LX/05m;

    invoke-virtual {p1, v0, v1}, LX/02u;->A02(LX/05m;I)V

    .line 4763
    monitor-enter v3

    .line 4764
    :try_start_9a
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 4765
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v0, 0x6d9

    cmp-long v4, v7, v0

    if-lez v4, :cond_37
    :try_end_9a
    .catchall {:try_start_9a .. :try_end_9a} :catchall_2f

    .line 4766
    :try_start_9b
    const-string v4, "r"

    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {v7, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_9b
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9b} :catch_15
    .catchall {:try_start_9b .. :try_end_9b} :catchall_2f

    .line 4767
    :try_start_9c
    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4768
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4
    :try_end_9c
    .catchall {:try_start_9c .. :try_end_9c} :catchall_2a

    .line 4769
    :try_start_9d
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_9d} :catch_15
    .catchall {:try_start_9d .. :try_end_9d} :catchall_2f

    .line 4770
    monitor-exit v3

    goto :goto_25

    .line 4771
    :catchall_2a
    move-exception v0

    .line 4772
    :try_start_9e
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9e
    .catchall {:try_start_9e .. :try_end_9e} :catchall_2b

    :catchall_2b
    :try_start_9f
    throw v0
    :try_end_9f
    .catch Ljava/io/IOException; {:try_start_9f .. :try_end_9f} :catch_15
    .catchall {:try_start_9f .. :try_end_9f} :catchall_2f

    :catch_15
    move-exception v4

    .line 4773
    :try_start_a0
    invoke-static {}, LX/08w;->A00()V

    .line 4774
    const-string v1, "lacrima"

    const-string v0, "Could not read application thread process state update unixtime"

    .line 4775
    invoke-static {v1, v0, v4}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a0
    .catchall {:try_start_a0 .. :try_end_a0} :catchall_2f

    .line 4776
    :cond_37
    monitor-exit v3

    const-wide/16 v4, 0x0

    .line 4777
    :goto_25
    sget-object v1, LX/07M;->A0y:LX/05m;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4778
    monitor-enter v3

    .line 4779
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 4780
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    const-wide/16 v0, 0x6e1

    cmp-long v4, v7, v0

    if-lez v4, :cond_38
    :try_end_a1
    .catchall {:try_start_a1 .. :try_end_a1} :catchall_2f

    .line 4781
    :try_start_a2
    const-string v4, "r"

    new-instance v7, Ljava/io/RandomAccessFile;

    invoke-direct {v7, v2, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a2} :catch_16
    .catchall {:try_start_a2 .. :try_end_a2} :catchall_2f

    .line 4782
    :try_start_a3
    invoke-virtual {v7, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 4783
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v4
    :try_end_a3
    .catchall {:try_start_a3 .. :try_end_a3} :catchall_2c

    .line 4784
    :try_start_a4
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a4} :catch_16
    .catchall {:try_start_a4 .. :try_end_a4} :catchall_2f

    .line 4785
    monitor-exit v3

    goto :goto_27

    .line 4786
    :catchall_2c
    move-exception v0

    .line 4787
    :try_start_a5
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_a5
    .catchall {:try_start_a5 .. :try_end_a5} :catchall_2d

    :catchall_2d
    :try_start_a6
    throw v0
    :try_end_a6
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_a6} :catch_16
    .catchall {:try_start_a6 .. :try_end_a6} :catchall_2f

    :catch_16
    move-exception v2

    .line 4788
    :try_start_a7
    invoke-static {}, LX/08w;->A00()V

    .line 4789
    const-string v1, "lacrima"

    const-string v0, "Could not read application thread process state update device uptime"

    .line 4790
    invoke-static {v1, v0, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26

    .line 4791
    :catchall_2e
    move-exception v0

    monitor-exit v3

    throw v0
    :try_end_a7
    .catchall {:try_start_a7 .. :try_end_a7} :catchall_2f

    .line 4792
    :catchall_2f
    move-exception v0

    monitor-exit v3

    throw v0

    .line 4793
    :cond_38
    :goto_26
    monitor-exit v3

    const-wide/16 v4, 0x0

    .line 4794
    :goto_27
    sget-object v1, LX/07M;->A0z:LX/05m;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 4795
    :cond_39
    sget-object v0, LX/07C;->A04:LX/09m;

    .line 4796
    if-eqz v0, :cond_3a

    .line 4797
    sget-object v0, LX/07M;->A0X:LX/05n;

    invoke-virtual {p1, v0, v6}, LX/02u;->A01(LX/05n;Z)V

    :cond_3a
    return-void
.end method
