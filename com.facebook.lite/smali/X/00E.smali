.class public abstract LX/00E;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:LX/00F;

.field public static volatile A01:J


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 0
    new-instance v0, LX/00F;

    .line 1
    .line 2
    invoke-direct {v0}, LX/00F;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, LX/00E;->A00:LX/00F;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {v3}, LX/00E;->A01(Z)V

    .line 9
    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v0, 0x1e

    .line 14
    .line 15
    if-ge v1, v0, :cond_0

    .line 16
    .line 17
    new-instance v2, LX/00G;

    .line 18
    .line 19
    invoke-direct {v2}, LX/00G;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-boolean v0, LX/05s;->A06:Z

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    sget-object v1, LX/05s;->A00:Ljava/lang/reflect/Method;

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object v2, v0, v3

    .line 32
    .line 33
    invoke-static {v1, v0}, LX/05s;->A01(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method public static A00(LX/00I;)V
    .locals 3

    .line 0
    sget-object v2, LX/00E;->A00:LX/00F;

    .line 1
    .line 2
    iget-object v1, v2, LX/00F;->A01:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v0, v2, LX/00F;->A02:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-boolean v0, v2, LX/00F;->A00:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p0}, LX/00I;->ATZ()V

    .line 15
    .line 16
    .line 17
    :cond_0
    monitor-exit v1

    .line 18
    return-void

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

.method public static A01(Z)V
    .locals 13

    .line 0
    sget-wide v11, LX/00E;->A01:J

    .line 1
    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    .line 4
    const/16 v0, 0x1e

    .line 5
    .line 6
    if-lt v1, v0, :cond_7

    .line 7
    .line 8
    invoke-static {}, LX/001;->A00()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    :goto_0
    const-string v0, "debug.fbsystrace.tags"

    .line 13
    .line 14
    const-wide/16 v9, 0x0

    .line 15
    .line 16
    invoke-static {v0}, LX/05s;->A00(Ljava/lang/String;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v7

    .line 20
    if-eqz v1, :cond_6

    .line 21
    .line 22
    cmp-long v0, v7, v9

    .line 23
    .line 24
    if-eqz v0, :cond_6

    .line 25
    .line 26
    const-wide/16 v0, 0x1

    .line 27
    .line 28
    or-long/2addr v7, v0

    .line 29
    :goto_1
    sget-wide v1, LX/00E;->A01:J

    .line 30
    .line 31
    const/4 v6, 0x1

    .line 32
    const/4 v5, 0x0

    .line 33
    cmp-long v0, v1, v9

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    cmp-long v0, v7, v9

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    :cond_0
    cmp-long v0, v7, v9

    .line 42
    .line 43
    if-nez v0, :cond_5

    .line 44
    .line 45
    sget-wide v1, LX/00E;->A01:J

    .line 46
    .line 47
    cmp-long v0, v1, v9

    .line 48
    .line 49
    if-eqz v0, :cond_5

    .line 50
    .line 51
    :cond_1
    const/4 v4, 0x1

    .line 52
    :goto_2
    sput-wide v7, LX/00E;->A01:J

    .line 53
    .line 54
    const/4 v0, 0x4

    .line 55
    new-array v3, v0, [Ljava/lang/Object;

    .line 56
    .line 57
    if-eqz p0, :cond_4

    .line 58
    .line 59
    const-string v0, "sysprop"

    .line 60
    .line 61
    :goto_3
    aput-object v0, v3, v5

    .line 62
    .line 63
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    aput-object v0, v3, v6

    .line 68
    .line 69
    const/4 v1, 0x2

    .line 70
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    aput-object v0, v3, v1

    .line 75
    .line 76
    const/4 v2, 0x3

    .line 77
    sget-wide v0, LX/00E;->A01:J

    .line 78
    .line 79
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    aput-object v0, v3, v2

    .line 84
    .line 85
    const-string v0, "Systrace trace config update - source:%s changed:%b enabledTags:0x%x->0x%x"

    .line 86
    .line 87
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    if-eqz v4, :cond_3

    .line 91
    .line 92
    invoke-static {v7, v8}, Lcom/facebook/systrace/TraceDirect;->setEnabledTags(J)V

    .line 93
    .line 94
    .line 95
    if-nez p0, :cond_2

    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    :cond_2
    cmp-long v0, v7, v9

    .line 99
    .line 100
    sget-object v4, LX/00E;->A00:LX/00F;

    .line 101
    .line 102
    if-lez v0, :cond_b

    .line 103
    .line 104
    if-nez v6, :cond_a

    .line 105
    .line 106
    invoke-virtual {v4}, LX/00F;->A00()V

    .line 107
    .line 108
    .line 109
    :cond_3
    return-void

    .line 110
    :cond_4
    const-string v0, "other"

    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_5
    const/4 v4, 0x0

    .line 114
    goto :goto_2

    .line 115
    :cond_6
    const-wide/16 v7, 0x0

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_7
    const/16 v0, 0x12

    .line 119
    .line 120
    if-lt v1, v0, :cond_8

    .line 121
    .line 122
    invoke-static {}, LX/01n;->A00()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    goto :goto_0

    .line 127
    :cond_8
    const/16 v0, 0x10

    .line 128
    .line 129
    if-lt v1, v0, :cond_9

    .line 130
    .line 131
    invoke-static {}, LX/09A;->A00()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    goto :goto_0

    .line 136
    :cond_9
    const/4 v1, 0x0

    .line 137
    goto :goto_0

    .line 138
    :cond_a
    iget-object v3, v4, LX/00F;->A01:Ljava/lang/Object;

    .line 139
    .line 140
    monitor-enter v3

    .line 141
    :try_start_0
    sget-object v0, LX/00F;->A03:Ljava/io/File;

    .line 142
    .line 143
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 144
    .line 145
    .line 146
    move-result-wide v0

    .line 147
    new-instance v2, LX/07G;

    .line 148
    .line 149
    invoke-direct {v2, v4, v0, v1}, LX/07G;-><init>(LX/00F;J)V

    .line 150
    .line 151
    .line 152
    const-string v0, "fbsystrace notification thread"

    .line 153
    .line 154
    new-instance v1, Ljava/lang/Thread;

    .line 155
    .line 156
    invoke-direct {v1, v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    const/16 v0, 0xa

    .line 160
    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setPriority(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 165
    .line 166
    .line 167
    monitor-exit v3

    .line 168
    return-void

    .line 169
    :catchall_0
    move-exception v0

    .line 170
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    throw v0

    .line 172
    :cond_b
    iget-object v3, v4, LX/00F;->A01:Ljava/lang/Object;

    .line 173
    .line 174
    monitor-enter v3

    .line 175
    :try_start_1
    iput-boolean v5, v4, LX/00F;->A00:Z

    .line 176
    .line 177
    const/4 v2, 0x0

    .line 178
    :goto_4
    iget-object v1, v4, LX/00F;->A02:Ljava/util/List;

    .line 179
    .line 180
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-ge v2, v0, :cond_c

    .line 185
    .line 186
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    check-cast v0, LX/00I;

    .line 191
    .line 192
    invoke-interface {v0}, LX/00I;->ATb()V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v2, v2, 0x1

    .line 196
    .line 197
    goto :goto_4

    .line 198
    :cond_c
    monitor-exit v3

    .line 199
    return-void

    .line 200
    :catchall_1
    move-exception v0

    .line 201
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 202
    throw v0
.end method
