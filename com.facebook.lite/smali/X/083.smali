.class public final LX/083;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/0BO;


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:LX/0BN;

.field public final A02:I


# direct methods
.method public constructor <init>(Landroid/content/Context;LX/0BN;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/083;->A00:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, LX/083;->A01:LX/0BN;

    .line 6
    .line 7
    monitor-enter p2

    .line 8
    :try_start_0
    iget v0, p2, LX/0BN;->A00:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit p2

    .line 11
    iput v0, p0, LX/083;->A02:I

    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p2

    .line 16
    throw v0
.end method


# virtual methods
.method public final AWZ(Ljava/lang/UnsatisfiedLinkError;[LX/0BC;)Z
    .locals 4

    .line 0
    iget-object v2, p0, LX/083;->A00:Landroid/content/Context;

    .line 1
    .line 2
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/io/File;

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, LX/083;->A01:LX/0BN;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, LX/0BN;->A01(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v0, 0x1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :cond_1
    const/4 v3, 0x1

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    :goto_0
    array-length v0, p2

    .line 34
    if-ge v1, v0, :cond_4

    .line 35
    .line 36
    aget-object v0, p2, v1

    .line 37
    .line 38
    instance-of v0, v0, LX/0B4;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    aget-object v0, p2, v1

    .line 43
    .line 44
    check-cast v0, LX/0B4;

    .line 45
    .line 46
    invoke-interface {v0, v2}, LX/0B4;->AWY(Landroid/content/Context;)LX/0BC;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    aput-object v0, p2, v1

    .line 51
    .line 52
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    iget v2, p0, LX/083;->A02:I

    .line 56
    .line 57
    iget-object v1, p0, LX/083;->A01:LX/0BN;

    .line 58
    .line 59
    monitor-enter v1

    .line 60
    :try_start_0
    iget v0, v1, LX/0BN;->A00:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    monitor-exit v1

    .line 63
    if-eq v2, v0, :cond_5

    .line 64
    .line 65
    const-string v1, "soloader.recovery.DetectDataAppMove"

    .line 66
    .line 67
    const-string v0, "Context was updated (perhaps by another thread)"

    .line 68
    .line 69
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :cond_4
    return v3

    .line 73
    :cond_5
    const/4 v3, 0x0

    .line 74
    return v3

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    monitor-exit v1

    .line 77
    throw v0
.end method
