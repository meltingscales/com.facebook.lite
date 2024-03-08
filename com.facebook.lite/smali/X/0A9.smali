.class public final LX/0A9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final __redex_internal_original_name:Ljava/lang/String; = "EarlyErrorReporting$2"


# instance fields
.field public final synthetic A00:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/0A9;->A00:Landroid/app/Application;

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
    :try_start_0
    sget-object v0, LX/09V;->A09:Ljava/util/concurrent/CountDownLatch;

    .line 1
    .line 2
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 3
    .line 4
    .line 5
    sget-object v1, LX/09V;->A08:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 8
    :try_start_1
    sget-boolean v0, LX/09V;->A06:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    monitor-exit v1

    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v2, 0x1

    .line 15
    sput-boolean v2, LX/09V;->A06:Z

    .line 16
    .line 17
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 18
    :try_start_2
    invoke-static {}, LX/09V;->A00()LX/08K;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iget-object v0, v3, LX/08K;->A01:LX/09B;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    const-string v0, "earlyNativeInit"

    .line 27
    .line 28
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, LX/08w;->A00()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 32
    .line 33
    .line 34
    :try_start_3
    iget-boolean v0, v3, LX/08K;->A0S:Z

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    sget-boolean v0, Lcom/facebook/errorreporting/lacrima/common/mappedfile/mlocked/MLockedFile;->A00:Z

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    const/4 v1, 0x1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 43
    :try_start_4
    const-string v0, "appstatelogger2"

    .line 44
    .line 45
    invoke-static {v0}, LX/0B9;->A09(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 49
    :catch_0
    :try_start_5
    invoke-static {}, LX/08w;->A00()V

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 53
    :goto_0
    :try_start_6
    sput-boolean v1, Lcom/facebook/errorreporting/lacrima/common/mappedfile/mlocked/MLockedFile;->A00:Z

    .line 54
    .line 55
    :cond_1
    iget-object v0, v3, LX/08K;->A01:LX/09B;

    .line 56
    .line 57
    const-string v4, "Did you call earlyInit()?"

    .line 58
    .line 59
    invoke-static {v0, v4}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v0, LX/09B;->A04:LX/05J;

    .line 63
    .line 64
    const-string v0, "Did you call SessionManager.init()?"

    .line 65
    .line 66
    invoke-static {v2, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iget-object v1, v2, LX/05J;->A02:Ljava/lang/Object;

    .line 70
    .line 71
    monitor-enter v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 72
    :try_start_7
    iget-object v0, v2, LX/05J;->A01:LX/07W;

    .line 73
    .line 74
    invoke-virtual {v0}, LX/07W;->A00()V

    .line 75
    .line 76
    .line 77
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 78
    :try_start_8
    iget-object v0, v3, LX/08K;->A0H:Ljava/util/List;

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, LX/08G;

    .line 95
    .line 96
    invoke-static {}, LX/08w;->A00()V

    .line 97
    .line 98
    .line 99
    invoke-interface {v0, v3}, LX/08G;->AH8(LX/08K;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    iget-object v2, v3, LX/08K;->A01:LX/09B;

    .line 104
    .line 105
    invoke-static {v2, v4}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    iput-wide v0, v2, LX/09B;->A00:J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 113
    .line 114
    :try_start_9
    invoke-static {}, LX/08w;->A00()V

    .line 115
    .line 116
    .line 117
    invoke-static {}, LX/04s;->A00()V

    .line 118
    .line 119
    .line 120
    return-void
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 121
    :catchall_0
    :try_start_a
    move-exception v0

    .line 122
    monitor-exit v1

    .line 123
    goto :goto_2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 124
    :catchall_1
    :try_start_b
    move-exception v0

    .line 125
    sput-boolean v2, Lcom/facebook/errorreporting/lacrima/common/mappedfile/mlocked/MLockedFile;->A00:Z

    .line 126
    .line 127
    :goto_2
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 128
    :catchall_2
    move-exception v1

    .line 129
    :try_start_c
    invoke-static {}, LX/08w;->A00()V

    .line 130
    .line 131
    .line 132
    const-string v0, "earlyNativeInit exception"

    .line 133
    .line 134
    invoke-static {v3, v0, v1}, LX/08K;->A00(LX/08K;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    .line 136
    .line 137
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 138
    :catchall_3
    move-exception v0

    .line 139
    :try_start_d
    monitor-exit v1

    .line 140
    goto :goto_3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 141
    :catchall_4
    :try_start_e
    move-exception v0

    .line 142
    invoke-static {}, LX/08w;->A00()V

    .line 143
    .line 144
    .line 145
    invoke-static {}, LX/04s;->A00()V

    .line 146
    .line 147
    .line 148
    :goto_3
    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    .line 149
    :catch_1
    move-exception v2

    .line 150
    iget-object v1, p0, LX/0A9;->A00:Landroid/app/Application;

    .line 151
    .line 152
    const-string v0, "Failed earlyNativeInit"

    .line 153
    .line 154
    invoke-static {v1, v2, v0}, LX/0AB;->A02(Landroid/app/Application;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :cond_3
    return-void
.end method
