.class public final LX/05P;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final __redex_internal_original_name:Ljava/lang/String; = "ProcessErrorMonitorANRDetector$2"


# instance fields
.field public final synthetic A00:LX/00V;


# direct methods
.method public constructor <init>(LX/00V;)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/05P;->A00:LX/00V;

    .line 1
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v4, p0, LX/05P;->A00:LX/00V;

    .line 1
    .line 2
    monitor-enter v4

    .line 3
    :try_start_0
    iget-boolean v0, v4, LX/00V;->A01:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v4, LX/00U;->A02:LX/00T;

    .line 8
    .line 9
    iget-object v0, v0, LX/00T;->A00:LX/00R;

    .line 10
    .line 11
    check-cast v0, LX/00S;

    .line 12
    .line 13
    iget-object v3, v0, LX/00S;->A00:LX/00O;

    .line 14
    .line 15
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 16
    :try_start_1
    iget-object v0, v3, LX/00O;->A06:LX/09B;

    .line 17
    .line 18
    iget-object v2, v0, LX/09B;->A04:LX/05J;

    .line 19
    .line 20
    const-string v0, "Did you call SessionManager.init()?"

    .line 21
    .line 22
    invoke-static {v2, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, v2, LX/05J;->A01:LX/07W;

    .line 26
    .line 27
    iget-object v1, v0, LX/07W;->A01:Ljava/io/File;

    .line 28
    .line 29
    new-instance v0, LX/03c;

    .line 30
    .line 31
    invoke-direct {v0, v1}, LX/03c;-><init>(Ljava/io/File;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, LX/03c;->A02()C

    .line 35
    .line 36
    .line 37
    sget-object v0, LX/07i;->A05:LX/07i;

    .line 38
    .line 39
    invoke-virtual {v2, v0}, LX/05J;->A02(LX/07i;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    :catchall_0
    :try_start_2
    move-exception v0

    .line 44
    monitor-exit v3

    .line 45
    throw v0

    .line 46
    :goto_0
    monitor-exit v3

    .line 47
    :cond_0
    monitor-exit v4

    .line 48
    return-void

    .line 49
    :catchall_1
    move-exception v0

    .line 50
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    throw v0
.end method
