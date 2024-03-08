.class public final LX/06z;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:LX/06y;

.field public A01:Z

.field public final A02:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LX/06z;->A00:LX/06y;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, LX/06z;->A01:Z

    .line 8
    .line 9
    iput-object p1, p0, LX/06z;->A02:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final A00(I)LX/06y;
    .locals 2

    .line 0
    iget-boolean v0, p0, LX/06z;->A01:Z

    .line 1
    .line 2
    if-eqz v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, LX/06z;->A00:LX/06y;

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    monitor-enter p0

    .line 8
    :try_start_0
    iget-boolean v0, p0, LX/06z;->A01:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, LX/06z;->A01:Z

    .line 14
    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v0, 0x1e

    .line 18
    .line 19
    if-lt v1, v0, :cond_2

    .line 20
    .line 21
    iget-object v0, p0, LX/06z;->A02:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {v0, p1}, LX/06y;->A00(Landroid/content/Context;I)LX/06y;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, LX/06z;->A00:LX/06y;

    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, LX/06z;->A00:LX/06y;

    .line 30
    .line 31
    :goto_0
    monitor-exit p0

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    const/4 v0, 0x0

    .line 34
    goto :goto_0

    .line 35
    :goto_1
    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw v0
.end method
