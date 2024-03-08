.class public Lcom/facebook/systrace/TraceDirect;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final TAG:Ljava/lang/String; = "TraceDirect"

.field public static final sForceJavaImpl:Z

.field public static volatile sNativeAvailable:LX/00C; = null

.field public static volatile sPrevSoLoaderSourcesVersion:I = -0x1

.field public static final sTraceLoad:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 0
    const-string v0, "debug.fbsystrace.force_java"

    .line 1
    .line 2
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, "true"

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    sput-boolean v0, Lcom/facebook/systrace/TraceDirect;->sForceJavaImpl:Z

    .line 13
    .line 14
    const-string v0, "debug.fbsystrace.trace_load"

    .line 15
    .line 16
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    sput-boolean v0, Lcom/facebook/systrace/TraceDirect;->sTraceLoad:Z

    .line 25
    .line 26
    sget-object v0, LX/00C;->A02:LX/00C;

    .line 27
    .line 28
    sput-object v0, Lcom/facebook/systrace/TraceDirect;->sNativeAvailable:LX/00C;

    .line 29
    .line 30
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

.method public static asyncTraceBegin(Ljava/lang/String;IJ)V
    .locals 4

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceBegin(Ljava/lang/String;IJ)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0x53

    .line 11
    .line 12
    new-instance v3, LX/07O;

    .line 13
    .line 14
    invoke-direct {v3, v0}, LX/07O;-><init>(C)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v3, v0}, LX/07O;->A00(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p0}, LX/07O;->A02(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "<0>"

    .line 28
    .line 29
    invoke-virtual {v3, v0}, LX/07O;->A01(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-wide/16 v1, 0x0

    .line 33
    .line 34
    cmp-long v0, p2, v1

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string v0, "<T"

    .line 39
    .line 40
    invoke-virtual {v3, v0}, LX/07O;->A01(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v3, v0}, LX/07O;->A01(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v0, ">"

    .line 51
    .line 52
    invoke-virtual {v3, v0}, LX/07O;->A01(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {v3, p1}, LX/07O;->A00(I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v3, LX/07O;->A00:Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public static asyncTraceCancel(Ljava/lang/String;I)V
    .locals 2

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceCancel(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0x46

    .line 11
    .line 12
    new-instance v1, LX/07O;

    .line 13
    .line 14
    invoke-direct {v1, v0}, LX/07O;-><init>(C)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v1, v0}, LX/07O;->A00(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, LX/07O;->A02(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "<X>"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, LX/07O;->A01(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, LX/07O;->A00(I)V

    .line 33
    .line 34
    .line 35
    iget-object v0, v1, LX/07O;->A00:Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static asyncTraceEnd(Ljava/lang/String;IJ)V
    .locals 4

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceEnd(Ljava/lang/String;IJ)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0x46

    .line 11
    .line 12
    new-instance v3, LX/07O;

    .line 13
    .line 14
    invoke-direct {v3, v0}, LX/07O;-><init>(C)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v3, v0}, LX/07O;->A00(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p0}, LX/07O;->A02(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v1, 0x0

    .line 28
    .line 29
    cmp-long v0, p2, v1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-string v0, "<T"

    .line 34
    .line 35
    invoke-virtual {v3, v0}, LX/07O;->A01(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v3, v0}, LX/07O;->A01(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, ">"

    .line 46
    .line 47
    invoke-virtual {v3, v0}, LX/07O;->A01(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {v3, p1}, LX/07O;->A00(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v3, LX/07O;->A00:Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public static asyncTraceRename(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceRename(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0x46

    .line 11
    .line 12
    new-instance v1, LX/07O;

    .line 13
    .line 14
    invoke-direct {v1, v0}, LX/07O;-><init>(C)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v1, v0}, LX/07O;->A00(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, LX/07O;->A02(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "<M>"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, LX/07O;->A01(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, LX/07O;->A00(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, p1}, LX/07O;->A02(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v1, LX/07O;->A00:Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public static asyncTraceStageBegin(Ljava/lang/String;IJLjava/lang/String;)V
    .locals 4

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/systrace/TraceDirect;->nativeAsyncTraceStageBegin(Ljava/lang/String;IJLjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0x54

    .line 11
    .line 12
    new-instance v3, LX/07O;

    .line 13
    .line 14
    invoke-direct {v3, v0}, LX/07O;-><init>(C)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v3, v0}, LX/07O;->A00(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p0}, LX/07O;->A02(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-wide/16 v1, 0x0

    .line 28
    .line 29
    cmp-long v0, p2, v1

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const-string v0, "<T"

    .line 34
    .line 35
    invoke-virtual {v3, v0}, LX/07O;->A01(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v3, v0}, LX/07O;->A01(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const-string v0, ">"

    .line 46
    .line 47
    invoke-virtual {v3, v0}, LX/07O;->A01(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    invoke-virtual {v3, p1}, LX/07O;->A00(I)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v3, p4}, LX/07O;->A02(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, v3, LX/07O;->A00:Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 2

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, Lcom/facebook/systrace/TraceDirect;->nativeBeginSection(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0x42

    .line 11
    .line 12
    new-instance v1, LX/07O;

    .line 13
    .line 14
    invoke-direct {v1, v0}, LX/07O;-><init>(C)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v1, v0}, LX/07O;->A00(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, LX/07O;->A02(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v1, LX/07O;->A00:Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static beginSectionWithArgs(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 2

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lcom/facebook/systrace/TraceDirect;->nativeBeginSectionWithArgs(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0x42

    .line 11
    .line 12
    new-instance v1, LX/07O;

    .line 13
    .line 14
    invoke-direct {v1, v0}, LX/07O;-><init>(C)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v1, v0}, LX/07O;->A00(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, LX/07O;->A02(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1, p2}, LX/07O;->A03([Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v1, LX/07O;->A00:Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static checkNative()Z
    .locals 5

    .line 0
    sget-object v1, Lcom/facebook/systrace/TraceDirect;->sNativeAvailable:LX/00C;

    .line 1
    .line 2
    sget-object v0, LX/00C;->A02:LX/00C;

    .line 3
    .line 4
    const/4 v4, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    .line 8
    sget-boolean v0, Lcom/facebook/systrace/TraceDirect;->sForceJavaImpl:Z

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    sget-object v0, LX/00C;->A01:LX/00C;

    .line 13
    .line 14
    sput-object v0, Lcom/facebook/systrace/TraceDirect;->sNativeAvailable:LX/00C;

    .line 15
    .line 16
    :cond_0
    :goto_0
    sget-object v1, Lcom/facebook/systrace/TraceDirect;->sNativeAvailable:LX/00C;

    .line 17
    .line 18
    sget-object v0, LX/00C;->A03:LX/00C;

    .line 19
    .line 20
    if-eq v1, v0, :cond_1

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    :cond_1
    return v4

    .line 24
    :cond_2
    invoke-static {}, LX/0BL;->A01()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_3

    .line 29
    .line 30
    const-class v2, LX/0BL;

    .line 31
    .line 32
    monitor-enter v2

    .line 33
    :try_start_0
    sget-object v0, LX/0BL;->A00:LX/0BM;

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    invoke-interface {v0}, LX/0BM;->AEh()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    goto :goto_1

    .line 43
    :cond_3
    const/4 v2, -0x1

    .line 44
    :goto_1
    sget v0, Lcom/facebook/systrace/TraceDirect;->sPrevSoLoaderSourcesVersion:I

    .line 45
    .line 46
    if-eq v2, v0, :cond_0

    .line 47
    .line 48
    sput v2, Lcom/facebook/systrace/TraceDirect;->sPrevSoLoaderSourcesVersion:I

    .line 49
    .line 50
    const/4 v0, 0x2

    .line 51
    new-array v1, v0, [Ljava/lang/Object;

    .line 52
    .line 53
    sget v0, Lcom/facebook/systrace/TraceDirect;->sPrevSoLoaderSourcesVersion:I

    .line 54
    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    aput-object v0, v1, v3

    .line 60
    .line 61
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    aput-object v0, v1, v4

    .line 66
    .line 67
    const-string v0, "Attempting to load fbsystrace.so [%d|%d]."

    .line 68
    .line 69
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    :try_start_1
    const-string v0, "fbsystrace"

    .line 73
    .line 74
    invoke-static {v0}, LX/0BL;->A02(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    const-string v0, "debug.fbsystrace.tags"

    .line 78
    .line 79
    invoke-static {v0}, LX/05s;->A00(Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v0

    .line 83
    invoke-static {v0, v1}, Lcom/facebook/systrace/TraceDirect;->nativeSetEnabledTags(J)V

    .line 84
    .line 85
    .line 86
    const-string v0, "fbsystrace.so loaded"

    .line 87
    .line 88
    invoke-static {v0}, Lcom/facebook/systrace/TraceDirect;->nativeBeginSection(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->nativeEndSection()V

    .line 92
    .line 93
    .line 94
    sget-object v0, LX/00C;->A03:LX/00C;

    .line 95
    .line 96
    sput-object v0, Lcom/facebook/systrace/TraceDirect;->sNativeAvailable:LX/00C;

    .line 97
    .line 98
    goto :goto_0
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    :catch_0
    sget-object v1, Lcom/facebook/systrace/TraceDirect;->TAG:Ljava/lang/String;

    .line 100
    .line 101
    const-string v0, "fbsystrace.so could not be loaded - switching to Java implementation."

    .line 102
    .line 103
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    :try_start_2
    const-string v1, "NativeLoader has not been initialized.  To use standard native library loading, call NativeLoader.init(new SystemDelegate())."

    .line 108
    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    throw v0

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    throw v0
.end method

.method public static endAsyncFlow(Ljava/lang/String;I)V
    .locals 2

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeEndAsyncFlow(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0x66

    .line 11
    .line 12
    new-instance v1, LX/07O;

    .line 13
    .line 14
    invoke-direct {v1, v0}, LX/07O;-><init>(C)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v1, v0}, LX/07O;->A00(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, LX/07O;->A02(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, LX/07O;->A00(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v1, LX/07O;->A00:Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static endSection()V
    .locals 1

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->nativeEndSection()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "E"

    .line 11
    .line 12
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static endSectionWithArgs([Ljava/lang/String;I)V
    .locals 3

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeEndSectionWithArgs([Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0x45

    .line 11
    .line 12
    new-instance v2, LX/07O;

    .line 13
    .line 14
    invoke-direct {v2, v0}, LX/07O;-><init>(C)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v2, LX/07O;->A00:Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const/16 v0, 0x7c

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, p0, p1}, LX/07O;->A03([Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public static native nativeAsyncTraceBegin(Ljava/lang/String;IJ)V
.end method

.method public static native nativeAsyncTraceCancel(Ljava/lang/String;I)V
.end method

.method public static native nativeAsyncTraceEnd(Ljava/lang/String;IJ)V
.end method

.method public static native nativeAsyncTraceRename(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static native nativeAsyncTraceStageBegin(Ljava/lang/String;IJLjava/lang/String;)V
.end method

.method public static native nativeBeginSection(Ljava/lang/String;)V
.end method

.method public static native nativeBeginSectionWithArgs(Ljava/lang/String;[Ljava/lang/String;I)V
.end method

.method public static native nativeEndAsyncFlow(Ljava/lang/String;I)V
.end method

.method public static native nativeEndSection()V
.end method

.method public static native nativeEndSectionWithArgs([Ljava/lang/String;I)V
.end method

.method public static native nativeSetEnabledTags(J)V
.end method

.method public static native nativeStartAsyncFlow(Ljava/lang/String;I)V
.end method

.method public static native nativeStepAsyncFlow(Ljava/lang/String;I)V
.end method

.method public static native nativeTraceCounter(Ljava/lang/String;I)V
.end method

.method public static native nativeTraceInstant(Ljava/lang/String;Ljava/lang/String;C)V
.end method

.method public static native nativeTraceMetadata(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public static setEnabledTags(J)V
    .locals 1

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeSetEnabledTags(J)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public static startAsyncFlow(Ljava/lang/String;I)V
    .locals 2

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeStartAsyncFlow(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0x73

    .line 11
    .line 12
    new-instance v1, LX/07O;

    .line 13
    .line 14
    invoke-direct {v1, v0}, LX/07O;-><init>(C)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v1, v0}, LX/07O;->A00(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, LX/07O;->A02(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, LX/07O;->A00(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v1, LX/07O;->A00:Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static stepAsyncFlow(Ljava/lang/String;I)V
    .locals 2

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeStepAsyncFlow(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0x74

    .line 11
    .line 12
    new-instance v1, LX/07O;

    .line 13
    .line 14
    invoke-direct {v1, v0}, LX/07O;-><init>(C)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v1, v0}, LX/07O;->A00(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, LX/07O;->A02(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, LX/07O;->A00(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v1, LX/07O;->A00:Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static traceCounter(Ljava/lang/String;I)V
    .locals 2

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/facebook/systrace/TraceDirect;->nativeTraceCounter(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0x43

    .line 11
    .line 12
    new-instance v1, LX/07O;

    .line 13
    .line 14
    invoke-direct {v1, v0}, LX/07O;-><init>(C)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v1, v0}, LX/07O;->A00(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, LX/07O;->A02(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, LX/07O;->A00(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, v1, LX/07O;->A00:Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static traceInstant(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 4

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lcom/facebook/systrace/TraceDirect;->nativeTraceInstant(Ljava/lang/String;Ljava/lang/String;C)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0x49

    .line 11
    .line 12
    new-instance v3, LX/07O;

    .line 13
    .line 14
    invoke-direct {v3, v0}, LX/07O;-><init>(C)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v3, v0}, LX/07O;->A00(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v3, p1}, LX/07O;->A02(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v2, v3, LX/07O;->A00:Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const/16 v1, 0x7c

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    if-eqz p2, :cond_1

    .line 35
    .line 36
    const/16 v0, 0xd

    .line 37
    .line 38
    if-eq p2, v0, :cond_1

    .line 39
    .line 40
    const/16 v0, 0x3b

    .line 41
    .line 42
    if-eq p2, v0, :cond_1

    .line 43
    .line 44
    if-eq p2, v1, :cond_1

    .line 45
    .line 46
    const/16 v0, 0x9

    .line 47
    .line 48
    if-eq p2, v0, :cond_1

    .line 49
    .line 50
    const/16 v0, 0xa

    .line 51
    .line 52
    if-eq p2, v0, :cond_1

    .line 53
    .line 54
    :goto_0
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3, p0}, LX/07O;->A02(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    const/16 p2, 0x20

    .line 69
    .line 70
    goto :goto_0
.end method

.method public static traceMetadata(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 0
    invoke-static {}, Lcom/facebook/systrace/TraceDirect;->checkNative()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Lcom/facebook/systrace/TraceDirect;->nativeTraceMetadata(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/16 v0, 0x4d

    .line 11
    .line 12
    new-instance v1, LX/07O;

    .line 13
    .line 14
    invoke-direct {v1, v0}, LX/07O;-><init>(C)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {v1, v0}, LX/07O;->A00(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p0}, LX/07O;->A02(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, LX/07O;->A00(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, LX/07O;->A02(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, v1, LX/07O;->A00:Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, LX/07L;->A00(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
