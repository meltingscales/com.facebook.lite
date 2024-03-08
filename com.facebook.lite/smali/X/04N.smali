.class public final LX/04N;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic A00:J

.field public final synthetic A01:LX/04K;

.field public final synthetic A02:LX/04J;


# direct methods
.method public constructor <init>(LX/04K;LX/04J;J)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/04N;->A01:LX/04K;

    .line 1
    .line 2
    iput-wide p3, p0, LX/04N;->A00:J

    .line 3
    .line 4
    iput-object p2, p0, LX/04N;->A02:LX/04J;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 5

    .line 0
    iget-wide v3, p0, LX/04N;->A00:J

    .line 1
    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    cmp-long v0, v3, v1

    .line 5
    .line 6
    if-lez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v1, p0, LX/04N;->A01:LX/04K;

    .line 12
    .line 13
    iget-object v0, p0, LX/04N;->A02:LX/04J;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, LX/04K;->A00(LX/04J;)LX/029;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    :cond_1
    return-object v1

    .line 23
    :cond_2
    iget-boolean v0, v0, LX/04J;->A02:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, LX/029;->isConnected()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, LX/029;->isClosed()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 43
    .line 44
    .line 45
    throw v0
.end method
