.class public final LX/02w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08p;


# static fields
.field public static A03:LX/02w;


# instance fields
.field public final A00:LX/07R;

.field public final A01:LX/09B;

.field public final A02:Ljava/util/List;


# direct methods
.method public constructor <init>(LX/07R;LX/09B;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p2, p0, LX/02w;->A01:LX/09B;

    .line 4
    .line 5
    iput-object p1, p0, LX/02w;->A00:LX/07R;

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, LX/02w;->A02:Ljava/util/List;

    .line 13
    .line 14
    const-class v1, LX/07C;

    .line 15
    .line 16
    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, LX/07C;->A02:Ljava/util/Set;

    .line 18
    .line 19
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit v1

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception v0

    .line 25
    monitor-exit v1

    .line 26
    throw v0
.end method


# virtual methods
.method public final A00(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 0
    const-string v7, ""

    .line 1
    .line 2
    const-string v1, "empty"

    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :cond_0
    move-object p1, v1

    .line 13
    :cond_1
    if-eqz p2, :cond_2

    .line 14
    .line 15
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_3

    .line 20
    .line 21
    :cond_2
    move-object p2, v1

    .line 22
    :cond_3
    iget-object v0, p0, LX/02w;->A01:LX/09B;

    .line 23
    .line 24
    iget-object v6, v0, LX/09B;->A04:LX/05J;

    .line 25
    .line 26
    const-string v0, "Did you call SessionManager.init()?"

    .line 27
    .line 28
    invoke-static {v6, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object v5, v6, LX/05J;->A02:Ljava/lang/Object;

    .line 32
    .line 33
    monitor-enter v5

    .line 34
    const/4 v0, 0x3

    .line 35
    const/16 v4, 0x50

    .line 36
    .line 37
    :try_start_0
    invoke-virtual {v6, p1, v0, v4}, LX/05J;->A03(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    invoke-static {v6}, LX/05J;->A00(LX/05J;)V

    .line 41
    .line 42
    .line 43
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 44
    monitor-enter v5

    .line 45
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/16 v3, 0x7f

    .line 50
    .line 51
    const/16 v2, 0x26e

    .line 52
    .line 53
    const/16 v1, 0x55

    .line 54
    .line 55
    if-ge v0, v4, :cond_5

    .line 56
    .line 57
    invoke-virtual {v6, p2, v1, v4}, LX/05J;->A03(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    :goto_0
    invoke-virtual {v6, v7, v2, v3}, LX/05J;->A03(Ljava/lang/String;II)V

    .line 61
    .line 62
    .line 63
    iget-object v2, v6, LX/05J;->A00:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    const/16 v1, 0x6f2

    .line 68
    .line 69
    const/16 v0, 0xcf

    .line 70
    .line 71
    invoke-virtual {v6, v2, v1, v0}, LX/05J;->A03(Ljava/lang/String;II)V

    .line 72
    .line 73
    .line 74
    :cond_4
    invoke-static {v6}, LX/05J;->A00(LX/05J;)V

    .line 75
    .line 76
    .line 77
    iput-object p2, v6, LX/05J;->A00:Ljava/lang/String;

    .line 78
    .line 79
    monitor-exit v5

    .line 80
    goto :goto_1

    .line 81
    :cond_5
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v6, v0, v1, v4}, LX/05J;->A03(Ljava/lang/String;II)V

    .line 91
    .line 92
    .line 93
    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 94
    :goto_1
    sget-object v0, LX/07C;->A04:LX/09m;

    .line 95
    .line 96
    if-eqz v0, :cond_6

    .line 97
    .line 98
    iput-object p2, v0, LX/09m;->A01:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 101
    .line 102
    .line 103
    :cond_6
    const-class v3, LX/07C;

    .line 104
    .line 105
    monitor-enter v3

    .line 106
    :try_start_2
    sget-object v0, LX/07C;->A05:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-nez v0, :cond_7

    .line 113
    .line 114
    sput-object p2, LX/07C;->A05:Ljava/lang/String;

    .line 115
    .line 116
    sget-object v0, LX/07C;->A01:Ljava/util/Set;

    .line 117
    .line 118
    new-instance v2, Ljava/util/HashSet;

    .line 119
    .line 120
    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 121
    .line 122
    .line 123
    sget-object v1, LX/07C;->A03:Ljava/util/concurrent/ExecutorService;

    .line 124
    .line 125
    new-instance v0, LX/017;

    .line 126
    .line 127
    invoke-direct {v0, v2}, LX/017;-><init>(Ljava/util/HashSet;)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 131
    .line 132
    .line 133
    :cond_7
    monitor-exit v3

    .line 134
    const/4 v0, 0x0

    .line 135
    new-instance v3, LX/02u;

    .line 136
    .line 137
    invoke-direct {v3, v0}, LX/02u;-><init>(Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    sget-object v2, LX/07M;->A1n:LX/05m;

    .line 141
    .line 142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 143
    .line 144
    .line 145
    move-result-wide v0

    .line 146
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v3, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, LX/02w;->A00:LX/07R;

    .line 154
    .line 155
    sget-object v0, LX/02m;->A02:LX/02m;

    .line 156
    .line 157
    invoke-virtual {v1, v3, v0, p0}, LX/07R;->A06(LX/02u;LX/02m;LX/08p;)V

    .line 158
    .line 159
    .line 160
    sget-object v0, LX/02m;->A03:LX/02m;

    .line 161
    .line 162
    invoke-virtual {v1, v3, v0, p0}, LX/07R;->A06(LX/02u;LX/02m;LX/08p;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, LX/02w;->A02:Ljava/util/List;

    .line 166
    .line 167
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_8

    .line 176
    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    const-string v0, "onEndpointChanged"

    .line 181
    .line 182
    new-instance v1, Ljava/lang/NullPointerException;

    .line 183
    .line 184
    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    throw v1

    .line 188
    :cond_8
    return-void

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    monitor-exit v3

    .line 191
    throw v0

    .line 192
    :catchall_1
    :try_start_3
    move-exception v1

    .line 193
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 194
    throw v1

    .line 195
    :catchall_2
    :try_start_4
    move-exception v1

    .line 196
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 197
    throw v1
.end method

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
    sget-object v0, LX/08q;->A09:LX/08q;

    .line 1
    .line 2
    return-object v0
.end method

.method public final start()V
    .locals 0

    .line 0
    sput-object p0, LX/02w;->A03:LX/02w;

    .line 1
    .line 2
    return-void
.end method
