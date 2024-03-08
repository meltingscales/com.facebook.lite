.class public LX/04K;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A04:LX/04L;


# instance fields
.field public final A00:LX/04M;

.field public final A01:LX/04L;

.field public final A02:LX/09c;

.field public final A03:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, LX/04L;

    .line 1
    .line 2
    invoke-direct {v0}, LX/04L;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, LX/04K;->A04:LX/04L;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(LX/09c;Ljava/util/concurrent/Executor;)V
    .locals 2

    .line 0
    sget-object v1, LX/04K;->A04:LX/04L;

    .line 1
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    new-instance v0, LX/04M;

    .line 6
    .line 7
    invoke-direct {v0, p0}, LX/04M;-><init>(LX/04K;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, LX/04K;->A00:LX/04M;

    .line 11
    .line 12
    iput-object p1, p0, LX/04K;->A02:LX/09c;

    .line 13
    .line 14
    iput-object p2, p0, LX/04K;->A03:Ljava/util/concurrent/Executor;

    .line 15
    .line 16
    iput-object v1, p0, LX/04K;->A01:LX/04L;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public A00(LX/04J;)LX/029;
    .locals 2

    .line 0
    iget-object v1, p0, LX/04K;->A02:LX/09c;

    .line 1
    .line 2
    iget-object v0, p1, LX/04J;->A01:LX/04I;

    .line 3
    .line 4
    invoke-interface {v1, v0}, LX/09c;->AKV(LX/04I;)LX/029;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method public final A01(Ljava/util/List;)LX/029;
    .locals 8

    .line 0
    new-instance v7, Ljava/util/ArrayList;

    .line 1
    .line 2
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3
    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, LX/04J;

    .line 23
    .line 24
    if-nez v1, :cond_0

    .line 25
    .line 26
    iget-wide v0, v4, LX/04J;->A00:J

    .line 27
    .line 28
    add-long/2addr v2, v0

    .line 29
    :cond_0
    new-instance v0, LX/04N;

    .line 30
    .line 31
    invoke-direct {v0, p0, v4, v2, v3}, LX/04N;-><init>(LX/04K;LX/04J;J)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v7, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v6, p0, LX/04K;->A03:Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    iget-object v5, p0, LX/04K;->A00:LX/04M;

    .line 42
    .line 43
    new-instance v4, Ljava/util/concurrent/ExecutorCompletionService;

    .line 44
    .line 45
    invoke-direct {v4, v6}, Ljava/util/concurrent/ExecutorCompletionService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    new-instance v3, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 55
    .line 56
    .line 57
    :try_start_0
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/util/concurrent/Callable;

    .line 72
    .line 73
    invoke-virtual {v4, v0}, Ljava/util/concurrent/ExecutorCompletionService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_2
    const/4 v2, 0x0

    .line 82
    :goto_2
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->size()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-ge v2, v0, :cond_4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .line 88
    :try_start_1
    invoke-virtual {v4}, Ljava/util/concurrent/ExecutorCompletionService;->take()Ljava/util/concurrent/Future;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-eqz v1, :cond_3

    .line 97
    .line 98
    goto :goto_3
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :catch_0
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_4
    const/4 v1, 0x0

    .line 103
    goto :goto_4

    .line 104
    :goto_3
    new-instance v0, LX/01K;

    .line 105
    .line 106
    invoke-direct {v0, v5, v1, v3}, LX/01K;-><init>(LX/04M;Ljava/lang/Object;Ljava/util/List;)V

    .line 107
    .line 108
    .line 109
    invoke-interface {v6, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 110
    .line 111
    .line 112
    :goto_4
    check-cast v1, LX/029;

    .line 113
    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    return-object v1

    .line 117
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    .line 120
    .line 121
    .line 122
    throw v0

    .line 123
    :catchall_0
    move-exception v0

    .line 124
    throw v0
.end method
