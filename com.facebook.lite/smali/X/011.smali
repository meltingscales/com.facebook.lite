.class public final LX/011;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A07:LX/011;

.field public static final A08:J


# instance fields
.field public A00:J

.field public final A01:Ljava/util/concurrent/locks/Lock;

.field public volatile A02:Landroid/os/StatFs;

.field public volatile A03:Landroid/os/StatFs;

.field public volatile A04:Ljava/io/File;

.field public volatile A05:Ljava/io/File;

.field public volatile A06:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 1
    .line 2
    const-wide/16 v0, 0x2

    .line 3
    .line 4
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    sput-wide v0, LX/011;->A08:J

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LX/011;->A03:Landroid/os/StatFs;

    .line 5
    .line 6
    iput-object v0, p0, LX/011;->A02:Landroid/os/StatFs;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, LX/011;->A06:Z

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LX/011;->A01:Ljava/util/concurrent/locks/Lock;

    .line 17
    .line 18
    return-void
.end method

.method public static A00(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;
    .locals 2

    .line 0
    const/4 v1, 0x0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance p0, Landroid/os/StatFs;

    .line 16
    .line 17
    invoke-direct {p0, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    invoke-static {v0}, LX/04l;->A00(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/lang/RuntimeException;

    .line 34
    .line 35
    const-string v0, "Redex: Unreachable code after no-return invoke"

    .line 36
    .line 37
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1

    .line 41
    :catch_0
    :cond_1
    return-object v1
.end method

.method public static declared-synchronized A01()LX/011;
    .locals 2

    .line 0
    const-class v1, LX/011;

    .line 1
    .line 2
    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, LX/011;->A07:LX/011;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, LX/011;

    .line 8
    .line 9
    invoke-direct {v0}, LX/011;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, LX/011;->A07:LX/011;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    :cond_0
    monitor-exit v1

    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit v1

    .line 18
    throw v0
.end method

.method private A02()V
    .locals 3

    .line 0
    iget-boolean v0, p0, LX/011;->A06:Z

    .line 1
    .line 2
    if-nez v0, :cond_1

    .line 3
    .line 4
    iget-object v2, p0, LX/011;->A01:Ljava/util/concurrent/locks/Lock;

    .line 5
    .line 6
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    iget-boolean v0, p0, LX/011;->A06:Z

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, LX/011;->A05:Ljava/io/File;

    .line 18
    .line 19
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, LX/011;->A04:Ljava/io/File;

    .line 24
    .line 25
    iget-object v1, p0, LX/011;->A03:Landroid/os/StatFs;

    .line 26
    .line 27
    iget-object v0, p0, LX/011;->A05:Ljava/io/File;

    .line 28
    .line 29
    invoke-static {v1, v0}, LX/011;->A00(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, LX/011;->A03:Landroid/os/StatFs;

    .line 34
    .line 35
    iget-object v1, p0, LX/011;->A02:Landroid/os/StatFs;

    .line 36
    .line 37
    iget-object v0, p0, LX/011;->A04:Ljava/io/File;

    .line 38
    .line 39
    invoke-static {v1, v0}, LX/011;->A00(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, LX/011;->A02:Landroid/os/StatFs;

    .line 44
    .line 45
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iput-wide v0, p0, LX/011;->A00:J

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, LX/011;->A06:Z

    .line 53
    .line 54
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :catchall_0
    move-exception v0

    .line 56
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method

.method private A03()V
    .locals 6

    .line 0
    iget-object v3, p0, LX/011;->A01:Ljava/util/concurrent/locks/Lock;

    .line 1
    .line 2
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    .line 10
    .line 11
    move-result-wide v4

    .line 12
    iget-wide v0, p0, LX/011;->A00:J

    .line 13
    .line 14
    sub-long/2addr v4, v0

    .line 15
    sget-wide v1, LX/011;->A08:J

    .line 16
    .line 17
    cmp-long v0, v4, v1

    .line 18
    .line 19
    if-lez v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, LX/011;->A03:Landroid/os/StatFs;

    .line 22
    .line 23
    iget-object v0, p0, LX/011;->A05:Ljava/io/File;

    .line 24
    .line 25
    invoke-static {v1, v0}, LX/011;->A00(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, LX/011;->A03:Landroid/os/StatFs;

    .line 30
    .line 31
    iget-object v1, p0, LX/011;->A02:Landroid/os/StatFs;

    .line 32
    .line 33
    iget-object v0, p0, LX/011;->A04:Ljava/io/File;

    .line 34
    .line 35
    invoke-static {v1, v0}, LX/011;->A00(Landroid/os/StatFs;Ljava/io/File;)Landroid/os/StatFs;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, LX/011;->A02:Landroid/os/StatFs;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v0

    .line 45
    iput-wide v0, p0, LX/011;->A00:J

    .line 46
    .line 47
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method


# virtual methods
.method public final A04()J
    .locals 5

    .line 0
    invoke-direct {p0}, LX/011;->A02()V

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, LX/011;->A03()V

    .line 4
    .line 5
    .line 6
    iget-object v4, p0, LX/011;->A03:Landroid/os/StatFs;

    .line 7
    .line 8
    if-eqz v4, :cond_1

    .line 9
    .line 10
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    const/16 v0, 0x12

    .line 13
    .line 14
    if-lt v1, v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    invoke-virtual {v4}, Landroid/os/StatFs;->getFreeBlocksLong()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    :goto_0
    mul-long/2addr v2, v0

    .line 25
    return-wide v2

    .line 26
    :cond_0
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-long v2, v0

    .line 31
    invoke-virtual {v4}, Landroid/os/StatFs;->getFreeBlocks()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    int-to-long v0, v0

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-wide/16 v2, -0x1

    .line 38
    .line 39
    return-wide v2
.end method

.method public final A05(Ljava/lang/Integer;)J
    .locals 5

    .line 0
    invoke-direct {p0}, LX/011;->A02()V

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, LX/011;->A03()V

    .line 4
    .line 5
    .line 6
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget-object v4, p0, LX/011;->A03:Landroid/os/StatFs;

    .line 11
    .line 12
    :goto_0
    if-eqz v4, :cond_2

    .line 13
    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v0, 0x12

    .line 17
    .line 18
    if-lt v1, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :goto_1
    mul-long/2addr v2, v0

    .line 29
    return-wide v2

    .line 30
    :cond_0
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-long v2, v0

    .line 35
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    int-to-long v0, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v4, p0, LX/011;->A02:Landroid/os/StatFs;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-wide/16 v2, 0x0

    .line 45
    .line 46
    return-wide v2
.end method

.method public final A06(Ljava/lang/Integer;)J
    .locals 5

    .line 0
    invoke-direct {p0}, LX/011;->A02()V

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, LX/011;->A03()V

    .line 4
    .line 5
    .line 6
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 7
    .line 8
    if-ne p1, v0, :cond_1

    .line 9
    .line 10
    iget-object v4, p0, LX/011;->A03:Landroid/os/StatFs;

    .line 11
    .line 12
    :goto_0
    if-eqz v4, :cond_2

    .line 13
    .line 14
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 15
    .line 16
    const/16 v0, 0x12

    .line 17
    .line 18
    if-lt v1, v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCountLong()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    :goto_1
    mul-long/2addr v2, v0

    .line 29
    return-wide v2

    .line 30
    :cond_0
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    int-to-long v2, v0

    .line 35
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockCount()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    int-to-long v0, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v4, p0, LX/011;->A02:Landroid/os/StatFs;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const-wide/16 v2, -0x1

    .line 45
    .line 46
    return-wide v2
.end method

.method public final A07(Ljava/lang/Integer;J)Z
    .locals 6

    .line 0
    invoke-direct {p0}, LX/011;->A02()V

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, LX/011;->A05(Ljava/lang/Integer;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v4

    .line 7
    const/4 v3, 0x1

    .line 8
    const-wide/16 v1, 0x0

    .line 9
    .line 10
    cmp-long v0, v4, v1

    .line 11
    .line 12
    if-lez v0, :cond_0

    .line 13
    .line 14
    cmp-long v0, v4, p2

    .line 15
    .line 16
    if-ltz v0, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    :cond_0
    return v3
.end method
