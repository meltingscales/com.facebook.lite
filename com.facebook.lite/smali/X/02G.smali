.class public final LX/02G;
.super Landroid/app/job/JobServiceEngine;
.source ""

# interfaces
.implements LX/02F;


# instance fields
.field public A00:Landroid/app/job/JobParameters;

.field public final A01:LX/04D;

.field public final A02:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LX/04D;)V
    .locals 1

    .line 0
    invoke-direct {p0, p1}, Landroid/app/job/JobServiceEngine;-><init>(Landroid/app/Service;)V

    .line 1
    .line 2
    .line 3
    new-instance v0, Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, LX/02G;->A02:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p1, p0, LX/02G;->A01:LX/04D;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final A3v()Landroid/os/IBinder;
    .locals 1

    .line 0
    invoke-virtual {p0}, LX/02G;->getBinder()Landroid/os/IBinder;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    return-object v0
.end method

.method public final A5e()LX/04H;
    .locals 4

    .line 0
    iget-object v3, p0, LX/02G;->A02:Ljava/lang/Object;

    .line 1
    .line 2
    monitor-enter v3

    .line 3
    :try_start_0
    iget-object v1, p0, LX/02G;->A00:Landroid/app/job/JobParameters;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    monitor-exit v3

    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-virtual {v1}, Landroid/app/job/JobParameters;->dequeueWork()Landroid/app/job/JobWorkItem;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    monitor-exit v3

    .line 15
    if-eqz v2, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v0, p0, LX/02G;->A01:LX/04D;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getClassLoader()Ljava/lang/ClassLoader;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, LX/04H;

    .line 31
    .line 32
    invoke-direct {v0, v2, p0}, LX/04H;-><init>(Landroid/app/job/JobWorkItem;LX/02G;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    throw v0
.end method

.method public final onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .line 0
    iput-object p1, p0, LX/02G;->A00:Landroid/app/job/JobParameters;

    .line 1
    .line 2
    iget-object v1, p0, LX/02G;->A01:LX/04D;

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {v1, v0}, LX/04D;->A04(Z)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    return v0
.end method

.method public final onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    .line 0
    iget-object v0, p0, LX/02G;->A01:LX/04D;

    .line 1
    .line 2
    iget-object v1, v0, LX/04D;->A03:LX/02c;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v2, 0x1

    .line 11
    iget-object v1, p0, LX/02G;->A02:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    const/4 v0, 0x0

    .line 15
    :try_start_0
    iput-object v0, p0, LX/02G;->A00:Landroid/app/job/JobParameters;

    .line 16
    .line 17
    monitor-exit v1

    .line 18
    return v2

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v0
.end method
