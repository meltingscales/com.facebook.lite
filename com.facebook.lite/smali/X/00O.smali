.class public final LX/00O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08p;


# static fields
.field public static A09:LX/00U;

.field public static A0A:LX/00S;

.field public static volatile A0B:Z


# instance fields
.field public A00:I

.field public A01:Z

.field public A02:Z

.field public final A03:LX/03K;

.field public final A04:LX/07R;

.field public final A05:LX/00P;

.field public final A06:LX/09B;

.field public final A07:LX/00N;

.field public final A08:Ljava/lang/String;


# direct methods
.method public constructor <init>(LX/03K;LX/07R;LX/00N;LX/09B;Ljava/lang/String;LX/0BP;LX/0BP;LX/0BP;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput v0, p0, LX/00O;->A00:I

    .line 5
    .line 6
    iput-object p4, p0, LX/00O;->A06:LX/09B;

    .line 7
    .line 8
    iput-object p2, p0, LX/00O;->A04:LX/07R;

    .line 9
    .line 10
    iput-object p3, p0, LX/00O;->A07:LX/00N;

    .line 11
    .line 12
    iput-object p5, p0, LX/00O;->A08:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, LX/00O;->A03:LX/03K;

    .line 15
    .line 16
    new-instance v0, LX/00P;

    .line 17
    .line 18
    invoke-direct {v0, p4, p6, p7, p8}, LX/00P;-><init>(LX/09B;LX/0BP;LX/0BP;LX/0BP;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, LX/00O;->A05:LX/00P;

    .line 22
    .line 23
    return-void
.end method

.method public static A00()V
    .locals 4

    .line 0
    sget-object v0, LX/00O;->A09:LX/00U;

    .line 1
    .line 2
    if-eqz v0, :cond_1

    .line 3
    .line 4
    check-cast v0, LX/00V;

    .line 5
    .line 6
    iget-object v3, v0, LX/00V;->A05:LX/00W;

    .line 7
    .line 8
    monitor-enter v3

    .line 9
    :try_start_0
    iget-object v1, v3, LX/00W;->A02:Ljava/lang/Integer;

    .line 10
    .line 11
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 12
    .line 13
    if-eq v1, v0, :cond_0

    .line 14
    .line 15
    iget-object v2, v3, LX/00W;->A01:LX/00Y;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v1, v2, LX/00Y;->A05:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    const/4 v0, 0x1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    iput-boolean v0, v2, LX/00Y;->A01:Z

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 26
    .line 27
    .line 28
    monitor-exit v1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    throw v0

    .line 33
    :cond_0
    :goto_0
    monitor-exit v3

    .line 34
    return-void

    .line 35
    :catchall_1
    move-exception v0

    .line 36
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    throw v0

    .line 38
    :cond_1
    return-void
.end method

.method public static A01()V
    .locals 4

    .line 0
    sget-object v0, LX/00O;->A09:LX/00U;

    .line 1
    .line 2
    if-eqz v0, :cond_1

    .line 3
    .line 4
    check-cast v0, LX/00V;

    .line 5
    .line 6
    iget-object v3, v0, LX/00V;->A05:LX/00W;

    .line 7
    .line 8
    monitor-enter v3

    .line 9
    :try_start_0
    iget-object v1, v3, LX/00W;->A02:Ljava/lang/Integer;

    .line 10
    .line 11
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 12
    .line 13
    if-eq v1, v0, :cond_0

    .line 14
    .line 15
    iget-object v2, v3, LX/00W;->A01:LX/00Y;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v1, v2, LX/00Y;->A05:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    const/4 v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    iput-boolean v0, v2, LX/00Y;->A01:Z

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 26
    .line 27
    .line 28
    monitor-exit v1

    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 32
    :try_start_2
    throw v0

    .line 33
    :cond_0
    :goto_0
    monitor-exit v3

    .line 34
    return-void

    .line 35
    :catchall_1
    move-exception v0

    .line 36
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 37
    throw v0

    .line 38
    :cond_1
    return-void
.end method


# virtual methods
.method public final synthetic ABM()LX/034;
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 1
    return-object v0
.end method

.method public final ACB()LX/08q;
    .locals 1

    .line 0
    sget-object v0, LX/08q;->A03:LX/08q;

    .line 1
    .line 2
    return-object v0
.end method

.method public final start()V
    .locals 12

    .line 0
    new-instance v9, LX/00S;

    .line 1
    .line 2
    invoke-direct {v9, p0}, LX/00S;-><init>(LX/00O;)V

    .line 3
    .line 4
    .line 5
    sput-object v9, LX/00O;->A0A:LX/00S;

    .line 6
    .line 7
    iget-object v4, p0, LX/00O;->A07:LX/00N;

    .line 8
    .line 9
    iget-object v11, p0, LX/00O;->A08:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v10, p0, LX/00O;->A05:LX/00P;

    .line 12
    .line 13
    iget-object v7, v4, LX/00N;->A01:Landroid/app/Application;

    .line 14
    .line 15
    const-string v0, "traces"

    .line 16
    .line 17
    const/4 v5, 0x0

    .line 18
    invoke-virtual {v7, v0, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v8, Landroid/os/Handler;

    .line 30
    .line 31
    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    new-instance v6, LX/00T;

    .line 36
    .line 37
    invoke-direct/range {v6 .. v11}, LX/00T;-><init>(Landroid/content/Context;Landroid/os/Handler;LX/00R;LX/00P;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget v0, v4, LX/00N;->A00:I

    .line 41
    .line 42
    const-class v3, LX/00V;

    .line 43
    .line 44
    monitor-enter v3

    .line 45
    :try_start_0
    sget-object v1, LX/00V;->A07:LX/00V;

    .line 46
    .line 47
    if-nez v1, :cond_0

    .line 48
    .line 49
    new-instance v1, LX/00V;

    .line 50
    .line 51
    invoke-direct {v1, v6, v0}, LX/00V;-><init>(LX/00T;I)V

    .line 52
    .line 53
    .line 54
    sput-object v1, LX/00V;->A07:LX/00V;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 55
    .line 56
    :cond_0
    monitor-exit v3

    .line 57
    new-instance v0, LX/00X;

    .line 58
    .line 59
    invoke-direct {v0, v4}, LX/00X;-><init>(LX/00N;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, v1, LX/00U;->A01:LX/00X;

    .line 63
    .line 64
    sput-object v1, LX/00O;->A09:LX/00U;

    .line 65
    .line 66
    iput-boolean v2, p0, LX/00O;->A02:Z

    .line 67
    .line 68
    new-array v3, v2, [Ljava/lang/Object;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    aput-object v0, v3, v5

    .line 79
    .line 80
    const-string v1, "lacrima"

    .line 81
    .line 82
    const-string v0, "Start AnrDetector... %s"

    .line 83
    .line 84
    invoke-static {v1, v0, v3}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    sget-object v9, LX/00O;->A09:LX/00U;

    .line 88
    .line 89
    const-wide/16 v3, -0x1

    .line 90
    .line 91
    check-cast v9, LX/00V;

    .line 92
    .line 93
    monitor-enter v9

    .line 94
    :try_start_1
    iget-wide v0, v9, LX/00V;->A00:J

    .line 95
    .line 96
    const-wide/16 v7, 0x0

    .line 97
    .line 98
    cmp-long v6, v0, v7

    .line 99
    .line 100
    if-gtz v6, :cond_1

    .line 101
    .line 102
    iput-wide v3, v9, LX/00V;->A00:J

    .line 103
    .line 104
    :cond_1
    iget-boolean v0, v9, LX/00V;->A02:Z

    .line 105
    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    iput-boolean v5, v9, LX/00V;->A02:Z

    .line 109
    .line 110
    iget-object v8, v9, LX/00V;->A05:LX/00W;

    .line 111
    .line 112
    const-wide/16 v6, 0xfa0

    .line 113
    .line 114
    const-string v4, "ProcessAnrErrorMonitor"

    .line 115
    .line 116
    const-string v3, "startMonitoring with delay: %d"

    .line 117
    .line 118
    new-array v1, v2, [Ljava/lang/Object;

    .line 119
    .line 120
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    aput-object v0, v1, v5

    .line 125
    .line 126
    invoke-static {v4, v3, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object v1, v8, LX/00W;->A05:Landroid/content/Context;

    .line 130
    .line 131
    const-string v0, "activity"

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    check-cast v7, Landroid/app/ActivityManager;

    .line 138
    .line 139
    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 140
    :try_start_2
    iget-object v0, v8, LX/00W;->A01:LX/00Y;

    .line 141
    .line 142
    if-eqz v0, :cond_2

    .line 143
    .line 144
    iget-object v0, v0, LX/00Y;->A07:LX/00V;

    .line 145
    .line 146
    if-nez v0, :cond_2

    .line 147
    .line 148
    iget-object v1, v8, LX/00W;->A01:LX/00Y;

    .line 149
    .line 150
    iget-object v0, v1, LX/00Y;->A05:Ljava/lang/Object;

    .line 151
    .line 152
    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 153
    :try_start_3
    iput-object v9, v1, LX/00Y;->A07:LX/00V;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 156
    .line 157
    .line 158
    monitor-exit v0

    .line 159
    goto :goto_2

    .line 160
    :catchall_0
    move-exception v1

    .line 161
    monitor-exit v0

    .line 162
    goto :goto_0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    :cond_2
    :try_start_4
    iget-object v1, v8, LX/00W;->A02:Ljava/lang/Integer;

    .line 164
    .line 165
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 166
    .line 167
    if-eq v1, v0, :cond_3

    .line 168
    .line 169
    iget-object v1, v8, LX/00W;->A01:LX/00Y;

    .line 170
    .line 171
    if-eqz v1, :cond_3

    .line 172
    .line 173
    iget-object v0, v1, LX/00Y;->A05:Ljava/lang/Object;

    .line 174
    .line 175
    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 176
    :try_start_5
    iput-boolean v2, v1, LX/00Y;->A02:Z

    .line 177
    .line 178
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 179
    .line 180
    .line 181
    monitor-exit v0

    .line 182
    goto :goto_1

    .line 183
    :catchall_1
    move-exception v1

    .line 184
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 185
    :goto_0
    :try_start_6
    throw v1

    .line 186
    :cond_3
    :goto_1
    iget-wide v10, v8, LX/00W;->A00:J

    .line 187
    .line 188
    const-wide/16 v0, 0x1

    .line 189
    .line 190
    add-long/2addr v10, v0

    .line 191
    iput-wide v10, v8, LX/00W;->A00:J

    .line 192
    .line 193
    new-instance v6, LX/00Y;

    .line 194
    .line 195
    invoke-direct/range {v6 .. v11}, LX/00Y;-><init>(Landroid/app/ActivityManager;LX/00W;LX/00V;J)V

    .line 196
    .line 197
    .line 198
    iput-object v6, v8, LX/00W;->A01:LX/00Y;

    .line 199
    .line 200
    sget-object v0, LX/050;->A01:Ljava/lang/Integer;

    .line 201
    .line 202
    iput-object v0, v8, LX/00W;->A02:Ljava/lang/Integer;

    .line 203
    .line 204
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 205
    .line 206
    .line 207
    :goto_2
    monitor-exit v8

    .line 208
    goto :goto_3

    .line 209
    :catchall_2
    move-exception v0

    .line 210
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 211
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 212
    :cond_4
    :goto_3
    monitor-exit v9

    .line 213
    new-instance v1, LX/00Z;

    .line 214
    .line 215
    invoke-direct {v1, p0}, LX/00Z;-><init>(LX/00O;)V

    .line 216
    .line 217
    .line 218
    const/16 v0, 0x64

    .line 219
    .line 220
    invoke-static {v1, v0}, LX/06T;->A03(LX/03T;I)V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :catchall_3
    move-exception v0

    .line 225
    monitor-exit v9

    .line 226
    throw v0

    .line 227
    :catchall_4
    move-exception v0

    .line 228
    monitor-exit v3

    .line 229
    throw v0
.end method
