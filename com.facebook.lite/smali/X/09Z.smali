.class public final LX/09Z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/07w;


# instance fields
.field public final synthetic A00:LX/09m;


# direct methods
.method public constructor <init>(LX/09m;)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/09Z;->A00:LX/09m;

    .line 1
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final AOB(Z)V
    .locals 14

    .line 0
    const-class v3, LX/07C;

    .line 1
    .line 2
    monitor-enter v3

    .line 3
    :try_start_0
    sget-boolean v0, LX/07C;->A06:Z

    .line 4
    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    sput-boolean p1, LX/07C;->A06:Z

    .line 8
    .line 9
    sget-object v0, LX/07C;->A02:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v2, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, LX/07C;->A03:Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    new-instance v0, LX/00z;

    .line 19
    .line 20
    invoke-direct {v0, v2, p1}, LX/00z;-><init>(Ljava/util/HashSet;Z)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 24
    .line 25
    .line 26
    :cond_0
    monitor-exit v3

    .line 27
    iget-object v0, p0, LX/09Z;->A00:LX/09m;

    .line 28
    .line 29
    iput-boolean p1, v0, LX/09m;->A03:Z

    .line 30
    .line 31
    iget-object v8, v0, LX/09m;->A00:LX/076;

    .line 32
    .line 33
    xor-int/lit8 v9, p1, 0x1

    .line 34
    .line 35
    monitor-enter v8

    .line 36
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v6

    .line 40
    iget-boolean v0, v8, LX/076;->A07:Z

    .line 41
    .line 42
    const-wide/16 v4, 0x1

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    iput-boolean v9, v8, LX/076;->A06:Z

    .line 48
    .line 49
    if-eqz v9, :cond_1

    .line 50
    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0

    .line 55
    iput-wide v0, v8, LX/076;->A00:J

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iput-wide v6, v8, LX/076;->A01:J

    .line 59
    .line 60
    iput-wide v4, v8, LX/076;->A02:J

    .line 61
    .line 62
    :goto_0
    iput-boolean v2, v8, LX/076;->A07:Z

    .line 63
    .line 64
    monitor-exit v8

    .line 65
    return-void

    .line 66
    :cond_2
    iget-boolean v0, v8, LX/076;->A06:Z

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    if-nez v9, :cond_6

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_3
    if-eqz v9, :cond_6

    .line 74
    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    iput-wide v0, v8, LX/076;->A00:J

    .line 80
    .line 81
    iget-wide v2, v8, LX/076;->A04:J

    .line 82
    .line 83
    iget-wide v0, v8, LX/076;->A01:J

    .line 84
    .line 85
    sub-long/2addr v6, v0

    .line 86
    add-long/2addr v2, v6

    .line 87
    iput-wide v2, v8, LX/076;->A04:J

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :goto_1
    iget-wide v2, v8, LX/076;->A02:J

    .line 91
    .line 92
    const-wide/16 v12, 0x0

    .line 93
    .line 94
    cmp-long v0, v2, v12

    .line 95
    .line 96
    if-lez v0, :cond_5

    .line 97
    .line 98
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 99
    .line 100
    .line 101
    move-result-wide v10

    .line 102
    iget-wide v0, v8, LX/076;->A00:J

    .line 103
    .line 104
    sub-long/2addr v10, v0

    .line 105
    cmp-long v0, v10, v12

    .line 106
    .line 107
    if-gtz v0, :cond_4

    .line 108
    .line 109
    iget-wide v0, v8, LX/076;->A03:J

    .line 110
    .line 111
    add-long/2addr v0, v4

    .line 112
    iput-wide v0, v8, LX/076;->A03:J

    .line 113
    .line 114
    :cond_4
    iget-wide v0, v8, LX/076;->A05:J

    .line 115
    .line 116
    add-long/2addr v0, v10

    .line 117
    iput-wide v0, v8, LX/076;->A05:J

    .line 118
    .line 119
    :cond_5
    iput-wide v6, v8, LX/076;->A01:J

    .line 120
    .line 121
    add-long/2addr v2, v4

    .line 122
    iput-wide v2, v8, LX/076;->A02:J

    .line 123
    .line 124
    :cond_6
    :goto_2
    iput-boolean v9, v8, LX/076;->A06:Z

    .line 125
    .line 126
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 127
    iget-object v1, v8, LX/076;->A08:Ljava/lang/Object;

    .line 128
    .line 129
    monitor-enter v1

    .line 130
    :try_start_2
    monitor-exit v1

    .line 131
    goto :goto_3

    .line 132
    :catchall_0
    move-exception v0

    .line 133
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    throw v0

    .line 135
    :goto_3
    return-void

    .line 136
    :catchall_1
    move-exception v0

    .line 137
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 138
    throw v0

    .line 139
    :catchall_2
    move-exception v0

    .line 140
    monitor-exit v3

    .line 141
    throw v0
.end method
