.class public final LX/09U;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A04:Ljava/lang/Object;

.field public static volatile A05:LX/09U;


# instance fields
.field public A00:Landroid/app/Application;

.field public A01:Ljava/lang/String;

.field public A02:Ljava/lang/String;

.field public A03:Z


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
    sput-object v0, LX/09U;->A04:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 0
    const-string v3, "EarlyExceptionHandler"

    .line 1
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    const/4 v6, 0x0

    .line 6
    iput-boolean v6, p0, LX/09U;->A03:Z

    .line 7
    .line 8
    :try_start_0
    iput-object p1, p0, LX/09U;->A00:Landroid/app/Application;

    .line 9
    .line 10
    iput-object p4, p0, LX/09U;->A01:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz p5, :cond_0

    .line 13
    .line 14
    move-object v0, p5

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, "unknown"

    .line 17
    .line 18
    :goto_0
    iput-object v0, p0, LX/09U;->A02:Ljava/lang/String;

    .line 19
    .line 20
    if-nez p3, :cond_1

    .line 21
    .line 22
    const-string p3, ""

    .line 23
    .line 24
    :cond_1
    new-instance v5, LX/09S;

    .line 25
    .line 26
    invoke-direct {v5, p0, p5}, LX/09S;-><init>(LX/09U;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v4, LX/09T;

    .line 30
    .line 31
    invoke-direct {v4, p0}, LX/09T;-><init>(LX/09U;)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    new-instance v0, LX/0BV;

    .line 36
    .line 37
    invoke-direct {v0, v2, p2, p0}, LX/0BV;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object v1, LX/07k;->A0D:Ljava/lang/Object;

    .line 41
    .line 42
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :try_start_1
    sput-object p1, LX/07k;->A07:Landroid/app/Application;

    .line 44
    .line 45
    sput-object p3, LX/07k;->A03:Ljava/lang/String;

    .line 46
    .line 47
    sput-object v5, LX/07k;->A09:Ljava/util/concurrent/Callable;

    .line 48
    .line 49
    sput-object v4, LX/07k;->A0B:Ljava/util/concurrent/Callable;

    .line 50
    .line 51
    sput-object v0, LX/07k;->A0A:Ljava/util/concurrent/Callable;

    .line 52
    .line 53
    sput-boolean v6, LX/07k;->A0C:Z

    .line 54
    .line 55
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    new-instance v0, LX/0BX;

    .line 61
    .line 62
    invoke-direct {v0, v2, p0, v1}, LX/0BX;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 66
    .line 67
    .line 68
    const-string v0, "Early UncaughtException handler initialized"

    .line 69
    .line 70
    invoke-static {v3, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    return-void
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    :catchall_0
    :try_start_3
    move-exception v0

    .line 75
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 76
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    const-string v0, "Failed to setup Early UncaughtException handler"

    .line 79
    .line 80
    invoke-static {v3, v0, v1}, LX/06s;->A0C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public static A00(Landroid/app/Application;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 0
    sget-object v0, LX/09U;->A05:LX/09U;

    .line 1
    .line 2
    if-nez v0, :cond_1

    .line 3
    .line 4
    sget-object v1, LX/09U;->A04:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    sget-object v0, LX/09U;->A05:LX/09U;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v2, LX/09U;

    .line 12
    .line 13
    invoke-direct/range {v2 .. v7}, LX/09U;-><init>(Landroid/app/Application;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object v2, LX/09U;->A05:LX/09U;

    .line 17
    .line 18
    :cond_0
    monitor-exit v1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0

    .line 23
    :cond_1
    return-void
.end method

.method public static A01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4

    .line 0
    :try_start_0
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 1
    .line 2
    .line 3
    move-result-object v3

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const-string v0, "app_id"

    .line 7
    .line 8
    invoke-virtual {v3, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    :cond_0
    if-eqz p3, :cond_1

    .line 12
    .line 13
    const-string v1, "cause"

    .line 14
    .line 15
    invoke-static {p3}, LX/07F;->A01(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v3, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_1
    const-string v2, "free_internal_disk_space_bytes"

    .line 23
    .line 24
    invoke-static {}, LX/07b;->A00()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v3, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    const-string v0, "fallback_reporter"

    .line 37
    .line 38
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v2, v3}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    invoke-static {p2, v1, v1, v1, v2}, LX/07k;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, p0, v2}, LX/07k;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v2}, LX/07k;->A05(Ljava/util/Map;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, LX/07k;->A00()LX/07k;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v0, "android_large_soft_error"

    .line 59
    .line 60
    invoke-virtual {v1, v0, v2}, LX/07k;->A06(Ljava/lang/String;Ljava/util/Map;)V

    .line 61
    .line 62
    .line 63
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :catch_0
    move-exception v2

    .line 65
    const-string v1, "EarlyExceptionHandler"

    .line 66
    .line 67
    const-string v0, "Failed sending director soft error report"

    .line 68
    .line 69
    invoke-static {v1, v0, v2}, LX/06s;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
