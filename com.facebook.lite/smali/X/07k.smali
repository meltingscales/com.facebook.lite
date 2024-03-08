.class public final LX/07k;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:Ljava/lang/String; = "0"

.field public static A04:Ljava/lang/String; = "0"

.field public static A05:Ljava/lang/String; = "0"

.field public static A06:LX/07k;

.field public static A07:Landroid/app/Application;

.field public static A08:Ljava/io/File;

.field public static A09:Ljava/util/concurrent/Callable;

.field public static A0A:Ljava/util/concurrent/Callable;

.field public static A0B:Ljava/util/concurrent/Callable;

.field public static A0C:Z

.field public static final A0D:Ljava/lang/Object;


# instance fields
.field public A00:LX/03x;

.field public A01:Ljava/lang/String;

.field public A02:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Ljava/lang/Object;

    .line 1
    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, LX/07k;->A0D:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/07k;->A01:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, LX/07k;->A00:LX/03x;

    .line 7
    .line 8
    return-void
.end method

.method public static A00()LX/07k;
    .locals 4

    .line 0
    sget-object v3, LX/07k;->A0D:Ljava/lang/Object;

    .line 1
    .line 2
    monitor-enter v3

    .line 3
    :try_start_0
    sget-object v1, LX/07k;->A06:LX/07k;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    new-array v2, v0, [Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v0, "mobile"

    .line 12
    .line 13
    aput-object v0, v2, v1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v0, "reliability_event_log_upload"

    .line 17
    .line 18
    aput-object v0, v2, v1

    .line 19
    .line 20
    invoke-static {v2}, LX/098;->A00([Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v1, LX/07k;

    .line 29
    .line 30
    invoke-direct {v1, v0}, LX/07k;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sput-object v1, LX/07k;->A06:LX/07k;

    .line 34
    .line 35
    :cond_0
    monitor-exit v3

    .line 36
    return-object v1

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw v0
.end method

.method public static A01()V
    .locals 4

    .line 0
    sget-object v3, LX/07k;->A0D:Ljava/lang/Object;

    .line 1
    .line 2
    monitor-enter v3

    .line 3
    :try_start_0
    sget-boolean v0, LX/07k;->A0C:Z

    .line 4
    .line 5
    if-nez v0, :cond_5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    :try_start_1
    sget-object v0, LX/07k;->A09:Ljava/util/concurrent/Callable;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    sget-object v0, LX/07k;->A04:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    sput-object v0, LX/07k;->A04:Ljava/lang/String;

    .line 22
    .line 23
    :cond_1
    sget-object v0, LX/07k;->A0B:Ljava/util/concurrent/Callable;

    .line 24
    .line 25
    if-eqz v0, :cond_3

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/String;

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    sget-object v0, LX/07k;->A05:Ljava/lang/String;

    .line 36
    .line 37
    :cond_2
    sput-object v0, LX/07k;->A05:Ljava/lang/String;

    .line 38
    .line 39
    :cond_3
    sget-object v0, LX/07k;->A0A:Ljava/util/concurrent/Callable;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Ljava/io/File;

    .line 48
    .line 49
    sput-object v0, LX/07k;->A08:Ljava/io/File;

    .line 50
    .line 51
    goto :goto_0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    :catch_0
    move-exception v2

    .line 53
    :try_start_2
    invoke-static {}, LX/08w;->A00()V

    .line 54
    .line 55
    .line 56
    const-string v1, "lacrima"

    .line 57
    .line 58
    const-string v0, "Error lazy initializing DirectReportInternal"

    .line 59
    .line 60
    invoke-static {v1, v0, v2}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    :goto_0
    const/4 v0, 0x1

    .line 64
    sput-boolean v0, LX/07k;->A0C:Z

    .line 65
    .line 66
    :cond_5
    monitor-exit v3

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 70
    throw v0
.end method

.method public static A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V
    .locals 3

    .line 0
    sget-object v2, LX/07k;->A0D:Ljava/lang/Object;

    .line 1
    .line 2
    monitor-enter v2

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, LX/07H;->A00:Ljava/lang/String;

    .line 10
    .line 11
    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    :goto_0
    monitor-exit v2

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    iget-object v1, p0, LX/07H;->A00:Ljava/lang/String;

    .line 17
    .line 18
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/CharSequence;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v0
.end method

.method public static A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4

    .line 12383
    invoke-static {}, LX/07k;->A01()V

    .line 12384
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    .line 12385
    sget-object v0, LX/07M;->A33:LX/05m;

    .line 12386
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12387
    sget-object v0, LX/07M;->A1O:LX/05m;

    .line 12388
    invoke-static {v0, v1, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12389
    if-eqz p0, :cond_2

    .line 12390
    sget-object v0, LX/07M;->A9Q:LX/05l;

    .line 12391
    invoke-static {v0, p0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12392
    :goto_0
    if-eqz p1, :cond_1

    .line 12393
    sget-object v0, LX/07M;->A3N:LX/05l;

    .line 12394
    :goto_1
    invoke-static {v0, p1, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12395
    if-eqz p2, :cond_0

    .line 12396
    sget-object v0, LX/07M;->A3K:LX/05l;

    .line 12397
    invoke-static {v0, p2, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12398
    :goto_2
    sget-object v0, LX/07M;->A5F:LX/05l;

    const-string v1, "lacrima_direct_report"

    .line 12399
    invoke-static {v0, v1, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12400
    sget-object v0, LX/07M;->A4M:LX/05l;

    .line 12401
    invoke-static {v0, v1, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12402
    sget-object v0, LX/07M;->A8i:LX/05l;

    .line 12403
    invoke-static {v0, v1, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12404
    sget-object v2, LX/07M;->A3A:LX/05m;

    .line 12405
    invoke-static {}, LX/07b;->A01()J

    move-result-wide v0

    .line 12406
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12407
    sget-object v2, LX/07M;->A1b:LX/05m;

    .line 12408
    invoke-static {}, LX/07b;->A00()J

    move-result-wide v0

    .line 12409
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12410
    sget-object v1, LX/07M;->A48:LX/05l;

    const-string v0, "r"

    .line 12411
    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12412
    sget-object v2, LX/07M;->A2g:LX/05m;

    invoke-static {}, LX/06F;->A01()I

    move-result v0

    int-to-long v0, v0

    .line 12413
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12414
    sget-object p0, LX/07k;->A0D:Ljava/lang/Object;

    monitor-enter p0

    goto :goto_3

    .line 12415
    :cond_0
    const-string v1, "lacrima"

    const-string v0, "ACTING_ACCOUNT_ID missing. Direct reports use 0 as id."

    .line 12416
    invoke-static {v1, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 12417
    sget-object v1, LX/07M;->A3K:LX/05l;

    const-string v0, "0"

    .line 12418
    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 12419
    :cond_1
    const-string v1, "lacrima"

    const-string v0, "ACTOR_ID missing. Direct reports use 0 as id."

    .line 12420
    invoke-static {v1, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 12421
    sget-object v0, LX/07M;->A3N:LX/05l;

    const-string p1, "-6"

    goto :goto_1

    .line 12422
    :cond_2
    const-string v1, "lacrima"

    const-string v0, "User Id missing. Direct reports use 0 as user id."

    .line 12423
    invoke-static {v1, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 12424
    sget-object v1, LX/07M;->A9Q:LX/05l;

    const-string v0, "0"

    .line 12425
    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 12426
    :goto_3
    :try_start_0
    sget-object v1, LX/07M;->A3v:LX/05l;

    sget-object v0, LX/07k;->A03:Ljava/lang/String;

    .line 12427
    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12428
    sget-object v1, LX/07M;->A52:LX/05l;

    sget-object v0, LX/07k;->A04:Ljava/lang/String;

    .line 12429
    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12430
    sget-object v1, LX/07M;->A4F:LX/05l;

    sget-object v0, LX/07k;->A05:Ljava/lang/String;

    .line 12431
    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12432
    sget-object v0, LX/07k;->A07:Landroid/app/Application;

    if-eqz v0, :cond_5

    .line 12433
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_3

    const-string p3, ""

    .line 12434
    :cond_3
    sget-object v3, LX/07M;->A40:LX/05l;

    .line 12435
    invoke-static {v0}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 12436
    const-string v1, ""

    .line 12437
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 12438
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 12439
    const-string v0, ":"

    .line 12440
    invoke-static {v0, p3, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 12441
    :cond_4
    invoke-static {v1, v2}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 12442
    invoke-static {v3, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12443
    sget-object v1, LX/07M;->A9E:LX/05l;

    sget-object v0, LX/07k;->A07:Landroid/app/Application;

    .line 12444
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "n/a"

    .line 12445
    :goto_4
    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12446
    :cond_5
    monitor-exit p0

    goto :goto_5

    .line 12447
    :cond_6
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12448
    :goto_5
    sget-object v1, LX/07M;->A0E:LX/05n;

    invoke-static {}, LX/06F;->A02()Z

    move-result v0

    .line 12449
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12450
    sget-object v2, LX/07M;->A2Q:LX/05m;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    .line 12451
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12452
    sget-object v1, LX/07M;->A0N:LX/05n;

    invoke-static {}, LX/06F;->A03()Z

    move-result v0

    .line 12453
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12454
    sget-object v1, LX/07M;->A54:LX/05l;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 12455
    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12456
    sget-object v1, LX/07M;->A55:LX/05l;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 12457
    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12458
    sget-object v1, LX/07M;->A50:LX/05l;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 12459
    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12460
    sget-object v1, LX/07M;->A57:LX/05l;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 12461
    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12462
    sget-object v1, LX/07M;->A5A:LX/05l;

    const-string v0, "true"

    .line 12463
    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12464
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1e

    if-lt v1, v0, :cond_7

    .line 12465
    invoke-static {}, LX/07f;->A00()Lorg/json/JSONObject;

    move-result-object v2

    .line 12466
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_7

    .line 12467
    sget-object v1, LX/07M;->A8o:LX/05l;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12468
    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12469
    :cond_7
    sget-object v3, LX/07M;->A8a:LX/05l;

    .line 12470
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v2

    .line 12471
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 12472
    invoke-static {v3, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12473
    invoke-static {}, LX/06F;->A01()I

    move-result v0

    int-to-long v1, v0

    .line 12474
    sget-object v0, LX/07M;->A1L:LX/05m;

    .line 12475
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12476
    sget-object v0, LX/07M;->A2A:LX/05m;

    .line 12477
    invoke-static {v0, v1, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12478
    sget-object v1, LX/07M;->A6q:LX/05l;

    .line 12479
    const-string v0, "397.0.0.11.117"

    .line 12480
    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12481
    sget-object v1, LX/07M;->A09:LX/05n;

    .line 12482
    const/4 v0, 0x1

    .line 12483
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p4}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12484
    return-void

    :catchall_0
    move-exception v0

    .line 12485
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A04(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5

    .line 0
    sget-object v1, LX/07M;->A4g:LX/05l;

    .line 1
    .line 2
    const-string v0, "soft_error"

    .line 3
    .line 4
    invoke-static {v1, v0, p2}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    sget-object v1, LX/07M;->A4A:LX/05l;

    .line 8
    .line 9
    const-string v0, "i"

    .line 10
    .line 11
    invoke-static {v1, v0, p2}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, LX/07M;->A8w:LX/05l;

    .line 15
    .line 16
    invoke-static {v0, p0, p2}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, LX/07M;->A8x:LX/05l;

    .line 20
    .line 21
    invoke-static {v0, p1, p2}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    sget-object v4, LX/07k;->A0D:Ljava/lang/Object;

    .line 25
    .line 26
    monitor-enter v4

    .line 27
    :try_start_0
    const-string v0, "cause"

    .line 28
    .line 29
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/CharSequence;

    .line 34
    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    sget-object v3, LX/07M;->A4h:LX/05l;

    .line 42
    .line 43
    invoke-static {p0}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const-string v0, " | "

    .line 48
    .line 49
    invoke-static {v0, p1, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    const/4 v1, 0x0

    .line 54
    new-instance v0, Ljava/lang/RuntimeException;

    .line 55
    .line 56
    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v0}, LX/07F;->A01(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v3, v0, p2}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    monitor-exit v4

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception v0

    .line 69
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    throw v0
.end method

.method public static A05(Ljava/util/Map;)V
    .locals 3

    .line 0
    sget-object v2, LX/07M;->A6S:LX/05l;

    .line 1
    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v0, LX/0BQ;

    .line 4
    .line 5
    invoke-direct {v0, v1}, LX/0BQ;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sget-object v1, LX/07k;->A0D:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    invoke-virtual {v0}, LX/05K;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v2, v0, p0}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 18
    .line 19
    .line 20
    monitor-exit v1

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0
.end method


# virtual methods
.method public final declared-synchronized A06(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2

    .line 0
    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v1, p0, LX/07k;->A02:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    if-nez v1, :cond_0

    .line 4
    .line 5
    invoke-static {}, LX/07u;->A00()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, LX/07k;->A02:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    :cond_0
    new-instance v0, LX/05G;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2}, LX/05G;-><init>(LX/07k;Ljava/lang/String;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    .line 18
    .line 19
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    monitor-exit p0

    .line 23
    throw v0
.end method
