.class public final LX/07R;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:LX/095;

.field public final A01:LX/05b;

.field public final A02:LX/09B;

.field public final A03:Ljava/lang/Object;

.field public final A04:Ljava/util/Map;

.field public final A05:Ljava/util/Map;

.field public final A06:Ljava/util/Map;

.field public final A07:Ljava/util/Map;

.field public final A08:Ljava/util/Set;

.field public final A09:I

.field public final A0A:LX/08y;

.field public volatile A0B:Z

.field public volatile A0C:Z


# direct methods
.method public constructor <init>(LX/095;LX/05b;LX/09B;IZ)V
    .locals 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    invoke-static {}, LX/08q;->values()[LX/08q;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v2, v0

    .line 8
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 11
    .line 12
    invoke-direct {v0, v2, v1}, Ljava/util/HashMap;-><init>(IF)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, LX/07R;->A07:Ljava/util/Map;

    .line 16
    .line 17
    new-instance v0, Ljava/lang/Object;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, LX/07R;->A03:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, LX/07R;->A06:Ljava/util/Map;

    .line 29
    .line 30
    new-instance v0, Ljava/util/HashSet;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, LX/07R;->A08:Ljava/util/Set;

    .line 36
    .line 37
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, LX/07R;->A05:Ljava/util/Map;

    .line 42
    .line 43
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, LX/07R;->A04:Ljava/util/Map;

    .line 48
    .line 49
    iput-object p3, p0, LX/07R;->A02:LX/09B;

    .line 50
    .line 51
    iput-object p2, p0, LX/07R;->A01:LX/05b;

    .line 52
    .line 53
    iput-object p1, p0, LX/07R;->A00:LX/095;

    .line 54
    .line 55
    const/16 v0, 0x40

    .line 56
    .line 57
    if-lez p4, :cond_0

    .line 58
    .line 59
    if-ge p4, v0, :cond_0

    .line 60
    .line 61
    const/16 p4, 0x40

    .line 62
    .line 63
    :cond_0
    iput p4, p0, LX/07R;->A09:I

    .line 64
    .line 65
    new-instance v0, LX/08y;

    .line 66
    .line 67
    invoke-direct {v0, p4, p5}, LX/08y;-><init>(IZ)V

    .line 68
    .line 69
    .line 70
    iput-object v0, p0, LX/07R;->A0A:LX/08y;

    .line 71
    .line 72
    return-void
.end method

.method public static A00(LX/02m;LX/08q;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .line 0
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 1
    .line 2
    .line 3
    move-result-object v3

    .line 4
    iget-object v0, p0, LX/02m;->A00:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    if-nez p3, :cond_1

    .line 12
    .line 13
    move-object v0, v2

    .line 14
    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-boolean v0, p1, LX/08q;->A01:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const-string v2, "suppl_"

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v0, p1, LX/08q;->A00:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v0, p2, v3}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_1
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v0, "_"

    .line 41
    .line 42
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0
.end method

.method private A01(LX/02m;LX/08p;Ljava/util/Map;)Ljava/util/List;
    .locals 3

    .line 0
    iget-object v2, p0, LX/07R;->A03:Ljava/lang/Object;

    .line 1
    .line 2
    monitor-enter v2

    .line 3
    :try_start_0
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/util/Map;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/util/List;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    :cond_1
    monitor-exit v2

    .line 34
    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v0
.end method

.method public static A02(LX/02m;LX/08p;Ljava/util/List;)V
    .locals 4

    .line 0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1
    .line 2
    .line 3
    move-result-object v3

    .line 4
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, LX/03K;

    .line 15
    .line 16
    :try_start_0
    invoke-interface {v0, p0, p1}, LX/03K;->APi(LX/02m;LX/08p;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :catchall_0
    move-exception v2

    .line 21
    invoke-static {}, LX/08w;->A00()V

    .line 22
    .line 23
    .line 24
    const-string v1, "lacrima"

    .line 25
    .line 26
    const-string v0, "onNotify failed..."

    .line 27
    .line 28
    invoke-static {v1, v0, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method


# virtual methods
.method public final A03(Ljava/lang/Class;)LX/08p;
    .locals 4

    .line 0
    iget-object v3, p0, LX/07R;->A03:Ljava/lang/Object;

    .line 1
    .line 2
    monitor-enter v3

    .line 3
    :try_start_0
    iget-object v0, p0, LX/07R;->A08:Ljava/util/Set;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, LX/08p;

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    monitor-exit v3

    .line 28
    return-object v1

    .line 29
    :cond_1
    monitor-exit v3

    .line 30
    const/4 v0, 0x0

    .line 31
    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v0
.end method

.method public final A04(LX/07P;LX/02m;LX/08p;)V
    .locals 3

    .line 0
    iget-object v2, p0, LX/07R;->A03:Ljava/lang/Object;

    .line 1
    .line 2
    monitor-enter v2

    .line 3
    :try_start_0
    iget-object v0, p0, LX/07R;->A06:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Ljava/util/Map;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/util/List;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    :cond_1
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 36
    .line 37
    .line 38
    :try_start_2
    iget-object v0, p0, LX/07R;->A08:Ljava/util/Set;

    .line 39
    .line 40
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 41
    .line 42
    .line 43
    :try_start_3
    monitor-exit v2

    .line 44
    return-void
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    :try_start_4
    throw v0

    .line 47
    :catchall_1
    move-exception v0

    .line 48
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 49
    throw v0
.end method

.method public final A05(LX/02u;LX/02m;LX/08p;)V
    .locals 6

    .line 0
    move-object v3, p3

    .line 1
    invoke-interface {p3}, LX/08p;->ABM()LX/034;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    invoke-virtual/range {v0 .. v5}, LX/07R;->A07(LX/02u;LX/02m;LX/08p;LX/034;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final A06(LX/02u;LX/02m;LX/08p;)V
    .locals 2

    .line 0
    sget-object v1, LX/07u;->A04:Ljava/util/concurrent/ExecutorService;

    .line 1
    .line 2
    new-instance v0, LX/02v;

    .line 3
    .line 4
    invoke-direct {v0, p1, p0, p2, p3}, LX/02v;-><init>(LX/02u;LX/07R;LX/02m;LX/08p;)V

    .line 5
    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final A07(LX/02u;LX/02m;LX/08p;LX/034;I)V
    .locals 21

    const/4 v9, 0x0

    const/4 v5, 0x1

    move-object/from16 v8, p4

    if-eqz p4, :cond_3

    .line 11742
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 11743
    iget-wide v0, v8, LX/034;->A00:J

    sub-long v3, v6, v0

    const-wide/16 v1, 0x1f4

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    .line 11744
    const/4 v8, 0x1

    .line 11745
    :goto_0
    sget-object v0, LX/06s;->A01:LX/06a;

    invoke-interface {v0}, LX/06a;->AC3()I

    move-result v0

    .line 11746
    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    if-ge v0, v1, :cond_0

    const-string v3, "lacrima"

    const-string v2, "Applying collectors from thread with higher pri than main thread: %s %d"

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 11747
    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v9

    .line 11748
    invoke-virtual {v4}, Ljava/lang/Thread;->getPriority()I

    move-result v0

    .line 11749
    invoke-static {v1, v0, v5}, LX/000;->A0P([Ljava/lang/Object;II)V

    .line 11750
    invoke-static {v3, v2, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11751
    :cond_0
    sget-object v2, LX/02m;->A02:LX/02m;

    move-object/from16 v3, p0

    move-object/from16 v7, p2

    if-ne v7, v2, :cond_1

    .line 11752
    iget-boolean v0, v3, LX/07R;->A0B:Z

    .line 11753
    :goto_1
    if-eqz v0, :cond_4

    return-void

    .line 11754
    :cond_1
    sget-object v0, LX/02m;->A03:LX/02m;

    if-ne v7, v0, :cond_4

    .line 11755
    iget-boolean v0, v3, LX/07R;->A0C:Z

    goto :goto_1

    .line 11756
    :cond_2
    iput-wide v6, v8, LX/034;->A00:J

    .line 11757
    :cond_3
    const/4 v8, 0x0

    goto :goto_0

    .line 11758
    :cond_4
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 11759
    const-string v0, "CollectorManager.applyCollectors."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p3

    invoke-interface {v9}, LX/08p;->ACB()LX/08q;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 11760
    :try_start_0
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    move-result-object v5

    .line 11761
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 11762
    iget-object v4, v3, LX/07R;->A03:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 11763
    :try_start_1
    iget-object v0, v3, LX/07R;->A06:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_5

    .line 11764
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    move-result-object v1

    .line 11765
    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11766
    :cond_5
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_6

    .line 11767
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    move-result-object v0

    .line 11768
    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11769
    :cond_6
    if-eqz v8, :cond_7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 11770
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_2

    .line 11771
    :cond_7
    invoke-virtual {v5, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 11772
    :cond_8
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 11773
    :try_start_3
    move-object/from16 v9, p1

    iget-object v0, v9, LX/02u;->A05:Ljava/util/Map;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v11, v9, LX/02u;->A09:Ljava/util/Map;

    .line 11774
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v14, v9, LX/02u;->A08:Ljava/util/Map;

    .line 11775
    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v13, v9, LX/02u;->A03:Ljava/util/Map;

    .line 11776
    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v12, v9, LX/02u;->A07:Ljava/util/Map;

    .line 11777
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v0

    add-int/2addr v1, v0

    .line 11778
    if-nez v1, :cond_9

    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_a

    .line 11779
    :cond_9
    iget v1, v3, LX/07R;->A09:I

    if-lez v1, :cond_a

    .line 11780
    iget-object v0, v3, LX/07R;->A0A:LX/08y;

    .line 11781
    iput v1, v9, LX/02u;->A00:I

    .line 11782
    iput-object v0, v9, LX/02u;->A01:LX/08y;

    .line 11783
    :cond_a
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    move/from16 v8, p5

    if-eqz v0, :cond_f

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, LX/07P;

    .line 11784
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v15

    .line 11785
    const-string v0, "Collector "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, LX/07P;->ACC()Ljava/lang/Integer;

    move-result-object v10

    .line 11786
    if-eqz v10, :cond_e

    .line 11787
    invoke-static {v10}, LX/02x;->A00(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 11788
    :goto_4
    invoke-static {v0, v15}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 11789
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 11790
    :try_start_4
    invoke-static {}, LX/08w;->A00()V

    .line 11791
    if-lez v1, :cond_b

    .line 11792
    iget-object v0, v3, LX/07R;->A0A:LX/08y;

    .line 11793
    iput-object v10, v0, LX/08y;->A00:Ljava/lang/Integer;

    .line 11794
    :cond_b
    invoke-interface {v5, v9, v7}, LX/07P;->AV8(LX/02u;LX/02m;)V

    goto :goto_5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 11795
    :catchall_0
    move-exception v16

    .line 11796
    :try_start_5
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 11797
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    move-result-object v8

    .line 11798
    iget-object v5, v6, LX/08q;->A00:Ljava/lang/String;

    .line 11799
    const-string v0, "DetectorName"

    invoke-virtual {v8, v0, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11800
    invoke-static {v10}, LX/02x;->A00(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v10

    .line 11801
    const-string v0, "CollectorName"

    invoke-virtual {v8, v0, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11802
    iget-object v5, v7, LX/02m;->A00:Ljava/lang/String;

    .line 11803
    const-string v0, "ReportCategory"

    invoke-virtual {v8, v0, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v15, :cond_c

    .line 11804
    invoke-virtual {v15}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "SubSession"

    invoke-virtual {v8, v0, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11805
    :cond_c
    invoke-static {}, LX/08w;->A00()V

    .line 11806
    sget-object v5, LX/07M;->A63:LX/05l;

    .line 11807
    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 11808
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v8

    .line 11809
    if-nez v0, :cond_d

    const-string v0, ""

    .line 11810
    :cond_d
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Error: "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11811
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11812
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    .line 11813
    invoke-static {v0, v8}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 11814
    invoke-virtual {v9, v5, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 11815
    :goto_5
    :try_start_6
    invoke-static {}, LX/04s;->A00()V

    goto/16 :goto_3

    .line 11816
    :cond_e
    const-string v0, "null"

    goto :goto_4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 11817
    :catchall_1
    move-exception v0

    goto/16 :goto_b

    .line 11818
    :cond_f
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11819
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->size()I

    move-result v10

    .line 11820
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v5

    add-int/2addr v10, v5

    .line 11821
    invoke-interface {v14}, Ljava/util/Map;->size()I

    move-result v5

    add-int/2addr v10, v5

    .line 11822
    invoke-interface {v13}, Ljava/util/Map;->size()I

    move-result v5

    add-int/2addr v10, v5

    .line 11823
    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v5

    add-int/2addr v10, v5

    .line 11824
    if-lez v10, :cond_16

    .line 11825
    sget-object v10, LX/07M;->A64:LX/05l;

    .line 11826
    invoke-interface {v11, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 11827
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v11

    .line 11828
    if-nez v5, :cond_10

    const-string v5, ""

    .line 11829
    :cond_10
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Time: "

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11830
    const-string v5, "_ms"

    invoke-static {v7, v6, v5, v8}, LX/07R;->A00(LX/02m;LX/08q;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v0, v0, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "/n"

    .line 11831
    invoke-static {v0, v11}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 11832
    invoke-virtual {v9, v10, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 11833
    invoke-static {}, LX/08w;->A00()V

    .line 11834
    const-string v0, "CollectorManager.store"

    .line 11835
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    .line 11836
    :try_start_8
    new-instance v12, Ljava/util/Properties;

    invoke-direct {v12}, Ljava/util/Properties;-><init>()V

    .line 11837
    invoke-virtual {v9, v12}, LX/02u;->A07(Ljava/util/Properties;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 11838
    :try_start_9
    monitor-enter v4
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 11839
    :try_start_a
    iget-object v0, v3, LX/07R;->A02:LX/09B;

    .line 11840
    iget-object v1, v0, LX/09B;->A06:Ljava/io/File;

    const-string v11, "Did you call SessionManager.init()?"

    invoke-static {v1, v11}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11841
    const-string v0, "_prop.txt"

    .line 11842
    invoke-static {v7, v6, v0, v8}, LX/07R;->A00(LX/02m;LX/08q;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 11843
    invoke-static {v1, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 11844
    iget-object v5, v3, LX/07R;->A01:LX/05b;

    .line 11845
    sget-object v0, LX/08q;->A0E:LX/08q;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v13, "perf"

    if-nez v0, :cond_12

    sget-object v0, LX/08q;->A0B:LX/08q;

    .line 11846
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, LX/08q;->A0A:LX/08q;

    .line 11847
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, LX/08q;->A06:LX/08q;

    .line 11848
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, LX/08q;->A05:LX/08q;

    .line 11849
    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 11850
    sget-object v0, LX/08q;->A07:LX/08q;

    invoke-virtual {v6, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "collector"

    .line 11851
    if-eqz v0, :cond_11

    goto :goto_6

    :cond_11
    if-eq v7, v2, :cond_13

    const/4 v3, 0x0

    goto :goto_7

    .line 11852
    :goto_6
    if-eq v7, v2, :cond_12

    move-object v13, v3

    .line 11853
    :cond_12
    move-object v3, v13

    .line 11854
    :cond_13
    :goto_7
    invoke-virtual {v5, v10, v3, v12}, LX/05b;->A02(Ljava/io/File;Ljava/lang/String;Ljava/util/Properties;)V

    .line 11855
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 11856
    :try_start_b
    monitor-enter v4
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 11857
    :try_start_c
    invoke-static {v1, v11}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11858
    if-ne v7, v2, :cond_14

    .line 11859
    iget-object v2, v9, LX/02u;->A04:Ljava/util/Map;

    goto :goto_8

    .line 11860
    :cond_14
    iget-object v2, v9, LX/02u;->A06:Ljava/util/Map;

    .line 11861
    :goto_8
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 11862
    const-string v0, "_attach.txt"

    .line 11863
    invoke-static {v7, v6, v0, v8}, LX/07R;->A00(LX/02m;LX/08q;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 11864
    invoke-static {v1, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 11865
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 11866
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 11867
    invoke-virtual {v5, v1, v3, v0}, LX/05b;->A02(Ljava/io/File;Ljava/lang/String;Ljava/util/Properties;)V

    .line 11868
    :cond_15
    monitor-exit v4

    goto :goto_9

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/AssertionError; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catch_0
    move-exception v2

    .line 11869
    :try_start_e
    invoke-static {}, LX/08w;->A00()V

    const-string v1, "lacrima"

    const-string v0, "Cannot create attachment properties"

    .line 11870
    invoke-static {v1, v0, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 11871
    :catchall_3
    move-exception v0

    .line 11872
    :try_start_f
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catch_1
    move-exception v2

    .line 11873
    :try_start_11
    invoke-static {}, LX/08w;->A00()V

    const-string v1, "lacrima"

    const-string v0, "Cannot create property file"

    .line 11874
    invoke-static {v1, v0, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 11875
    :goto_9
    :try_start_12
    invoke-static {}, LX/04s;->A00()V

    goto :goto_a

    :catchall_4
    move-exception v0

    invoke-static {}, LX/04s;->A00()V

    goto :goto_c
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 11876
    :cond_16
    :goto_a
    invoke-static {}, LX/04s;->A00()V

    return-void

    .line 11877
    :catchall_5
    move-exception v0

    .line 11878
    :try_start_13
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 11879
    :catchall_6
    move-exception v0

    .line 11880
    :try_start_14
    monitor-exit v4

    goto :goto_c
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 11881
    :goto_b
    :try_start_15
    invoke-static {}, LX/04s;->A00()V

    .line 11882
    :goto_c
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    .line 11883
    :catchall_7
    move-exception v0

    .line 11884
    invoke-static {}, LX/04s;->A00()V

    .line 11885
    throw v0
.end method

.method public final A08(LX/03K;LX/02m;LX/08p;)V
    .locals 2

    .line 0
    iget-object v1, p0, LX/07R;->A03:Ljava/lang/Object;

    .line 1
    .line 2
    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, LX/07R;->A04:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, v0}, LX/07R;->A01(LX/02m;LX/08p;Ljava/util/Map;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    monitor-exit v1

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v0
.end method

.method public final A09(LX/03K;LX/02m;LX/08p;)V
    .locals 2

    .line 0
    iget-object v1, p0, LX/07R;->A03:Ljava/lang/Object;

    .line 1
    .line 2
    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v0, p0, LX/07R;->A05:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, v0}, LX/07R;->A01(LX/02m;LX/08p;Ljava/util/Map;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    monitor-exit v1

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v0
.end method

.method public final A0A(LX/02m;LX/08p;)V
    .locals 1

    .line 0
    iget-object v0, p0, LX/07R;->A04:Ljava/util/Map;

    .line 1
    .line 2
    invoke-direct {p0, p1, p2, v0}, LX/07R;->A01(LX/02m;LX/08p;Ljava/util/Map;)Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {p1, p2, v0}, LX/07R;->A02(LX/02m;LX/08p;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final A0B(LX/02m;LX/08p;)V
    .locals 1

    .line 0
    iget-object v0, p0, LX/07R;->A05:Ljava/util/Map;

    .line 1
    .line 2
    invoke-direct {p0, p1, p2, v0}, LX/07R;->A01(LX/02m;LX/08p;Ljava/util/Map;)Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {p1, p2, v0}, LX/07R;->A02(LX/02m;LX/08p;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
