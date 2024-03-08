.class public final LX/02g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A03:LX/02g;


# instance fields
.field public A00:I

.field public A01:LX/09B;

.field public A02:Z


# direct methods
.method public constructor <init>(LX/09B;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p0, LX/02g;->A00:I

    .line 5
    .line 6
    iput-boolean v0, p0, LX/02g;->A02:Z

    .line 7
    .line 8
    iput-object p1, p0, LX/02g;->A01:LX/09B;

    .line 9
    .line 10
    return-void
.end method

.method public static declared-synchronized A00(LX/09B;)V
    .locals 2

    .line 0
    const-class v1, LX/02g;

    .line 1
    .line 2
    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, LX/02g;->A03:LX/02g;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, LX/02g;

    .line 8
    .line 9
    invoke-direct {v0, p0}, LX/02g;-><init>(LX/09B;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, LX/02g;->A03:LX/02g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    :cond_0
    monitor-exit v1

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit v1

    .line 18
    throw v0
.end method
