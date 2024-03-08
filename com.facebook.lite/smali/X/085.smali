.class public final LX/085;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Ljava/util/concurrent/Executor;

.field public static A01:LX/081;

.field public static A02:Ljava/util/List;

.field public static final A03:LX/081;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, LX/06G;

    .line 1
    .line 2
    invoke-direct {v0}, LX/06G;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, LX/085;->A03:LX/081;

    .line 6
    .line 7
    sput-object v0, LX/085;->A01:LX/081;

    .line 8
    .line 9
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, LX/085;->A00:Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, LX/085;->A02:Ljava/util/List;

    .line 20
    .line 21
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

.method public static declared-synchronized A00(LX/084;)V
    .locals 4

    .line 0
    const-class v3, LX/085;

    .line 1
    .line 2
    monitor-enter v3

    .line 3
    :try_start_0
    sget-object v2, LX/085;->A01:LX/081;

    .line 4
    .line 5
    sget-object v0, LX/085;->A03:LX/081;

    .line 6
    .line 7
    if-eq v2, v0, :cond_0

    .line 8
    .line 9
    sget-object v1, LX/085;->A00:Ljava/util/concurrent/Executor;

    .line 10
    .line 11
    new-instance v0, LX/082;

    .line 12
    .line 13
    invoke-direct {v0, v2, p0}, LX/082;-><init>(LX/081;LX/084;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget-object v0, LX/085;->A02:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    :goto_0
    monitor-exit v3

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    monitor-exit v3

    .line 29
    throw v0
.end method
