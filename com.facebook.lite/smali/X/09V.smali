.class public final LX/09V;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:LX/07P;

.field public static A01:LX/08K;

.field public static A02:LX/08L;

.field public static A03:Z

.field public static A04:Z

.field public static A05:Z

.field public static A06:Z

.field public static A07:Z

.field public static final A08:Ljava/lang/Object;

.field public static final A09:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 0
    const/4 v1, 0x1

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 4
    .line 5
    .line 6
    sput-object v0, LX/09V;->A09:Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, LX/09V;->A08:Ljava/lang/Object;

    .line 14
    .line 15
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

.method public static declared-synchronized A00()LX/08K;
    .locals 34

    .line 0
    const-class v16, LX/09V;

    .line 1
    .line 2
    monitor-enter v16

    .line 3
    :try_start_0
    sget-object v0, LX/09V;->A02:LX/08L;

    .line 4
    .line 5
    if-eqz v0, :cond_a

    .line 6
    .line 7
    sget-object v17, LX/09V;->A01:LX/08K;

    .line 8
    .line 9
    if-nez v17, :cond_9

    .line 10
    .line 11
    iget-object v1, v0, LX/08L;->A07:LX/0BP;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, LX/073;->A00()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v1, LX/05g;

    .line 20
    .line 21
    invoke-direct {v1, v2}, LX/05g;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, v0, LX/08L;->A07:LX/0BP;

    .line 25
    .line 26
    :cond_0
    iget-object v1, v0, LX/08L;->A04:LX/0BP;

    .line 27
    .line 28
    const-string v2, "0"

    .line 29
    .line 30
    const-string v3, "lacrima"

    .line 31
    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    const-string v1, "LacrimaConfigBuilder.setDeviceId not called, using 0"

    .line 35
    .line 36
    invoke-static {v3, v1}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v1, LX/05g;

    .line 40
    .line 41
    invoke-direct {v1, v2}, LX/05g;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, v0, LX/08L;->A04:LX/0BP;

    .line 45
    .line 46
    :cond_1
    iget-object v1, v0, LX/08L;->A09:LX/0BP;

    .line 47
    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    const-string v1, "LacrimaConfigBuilder.setUserId not called, using 0"

    .line 51
    .line 52
    invoke-static {v3, v1}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance v1, LX/05g;

    .line 56
    .line 57
    invoke-direct {v1, v2}, LX/05g;-><init>(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iput-object v1, v0, LX/08L;->A09:LX/0BP;

    .line 61
    .line 62
    :cond_2
    iget-object v1, v0, LX/08L;->A03:LX/0BP;

    .line 63
    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    const-string v1, "LacrimaConfigBuilder.setUserIdActorId not called, using 0"

    .line 67
    .line 68
    invoke-static {v3, v1}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v1, LX/05g;

    .line 72
    .line 73
    invoke-direct {v1, v2}, LX/05g;-><init>(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iput-object v1, v0, LX/08L;->A03:LX/0BP;

    .line 77
    .line 78
    :cond_3
    iget-object v1, v0, LX/08L;->A02:LX/0BP;

    .line 79
    .line 80
    if-nez v1, :cond_4

    .line 81
    .line 82
    const-string v1, "LacrimaConfigBuilder.setUserIdActingAccountId not called, using 0"

    .line 83
    .line 84
    invoke-static {v3, v1}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v1, LX/05g;

    .line 88
    .line 89
    invoke-direct {v1, v2}, LX/05g;-><init>(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iput-object v1, v0, LX/08L;->A02:LX/0BP;

    .line 93
    .line 94
    :cond_4
    iget-object v1, v0, LX/08L;->A06:LX/0BP;

    .line 95
    .line 96
    const/4 v2, 0x0

    .line 97
    if-nez v1, :cond_5

    .line 98
    .line 99
    const-string v1, "LacrimaConfigBuilder.setIsEmployee not called, using false"

    .line 100
    .line 101
    invoke-static {v3, v1}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    new-instance v1, LX/05g;

    .line 109
    .line 110
    invoke-direct {v1, v2}, LX/05g;-><init>(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iput-object v1, v0, LX/08L;->A06:LX/0BP;

    .line 114
    .line 115
    :cond_5
    iget-object v1, v0, LX/08L;->A08:LX/0BP;

    .line 116
    .line 117
    const-string v2, ""

    .line 118
    .line 119
    if-nez v1, :cond_6

    .line 120
    .line 121
    const-string v1, "LacrimaConfigBuilder.setShortProcessName not called, using \"\""

    .line 122
    .line 123
    invoke-static {v3, v1}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    new-instance v1, LX/05g;

    .line 127
    .line 128
    invoke-direct {v1, v2}, LX/05g;-><init>(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    iput-object v1, v0, LX/08L;->A08:LX/0BP;

    .line 132
    .line 133
    :cond_6
    iget-object v1, v0, LX/08L;->A05:LX/0BP;

    .line 134
    .line 135
    if-nez v1, :cond_7

    .line 136
    .line 137
    const-string v1, "LacrimaConfigBuilder.setFullProcessName not called, using \"\""

    .line 138
    .line 139
    invoke-static {v3, v1}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    new-instance v1, LX/05g;

    .line 143
    .line 144
    invoke-direct {v1, v2}, LX/05g;-><init>(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iput-object v1, v0, LX/08L;->A05:LX/0BP;

    .line 148
    .line 149
    :cond_7
    iget v1, v0, LX/08L;->A01:I

    .line 150
    .line 151
    if-gtz v1, :cond_8

    .line 152
    .line 153
    iget-object v1, v0, LX/08L;->A0C:Landroid/app/Application;

    .line 154
    .line 155
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 160
    .line 161
    iput v1, v0, LX/08L;->A01:I

    .line 162
    .line 163
    :cond_8
    iget-object v15, v0, LX/08L;->A0C:Landroid/app/Application;

    .line 164
    .line 165
    iget-object v14, v0, LX/08L;->A07:LX/0BP;

    .line 166
    .line 167
    iget-object v13, v0, LX/08L;->A04:LX/0BP;

    .line 168
    .line 169
    iget-object v12, v0, LX/08L;->A09:LX/0BP;

    .line 170
    .line 171
    iget-object v11, v0, LX/08L;->A03:LX/0BP;

    .line 172
    .line 173
    iget-object v10, v0, LX/08L;->A02:LX/0BP;

    .line 174
    .line 175
    iget-object v9, v0, LX/08L;->A06:LX/0BP;

    .line 176
    .line 177
    iget-object v8, v0, LX/08L;->A0D:Ljava/util/List;

    .line 178
    .line 179
    iget-object v7, v0, LX/08L;->A0E:Ljava/util/List;

    .line 180
    .line 181
    iget-object v6, v0, LX/08L;->A0F:Ljava/util/List;

    .line 182
    .line 183
    iget-object v5, v0, LX/08L;->A0G:Ljava/util/List;

    .line 184
    .line 185
    iget-object v4, v0, LX/08L;->A08:LX/0BP;

    .line 186
    .line 187
    iget-object v3, v0, LX/08L;->A05:LX/0BP;

    .line 188
    .line 189
    iget-boolean v2, v0, LX/08L;->A0A:Z

    .line 190
    .line 191
    iget v1, v0, LX/08L;->A00:I

    .line 192
    .line 193
    iget-boolean v0, v0, LX/08L;->A0B:Z

    .line 194
    .line 195
    new-instance v17, LX/08K;

    .line 196
    .line 197
    move-object/from16 v28, v9

    .line 198
    .line 199
    move-object/from16 v29, v4

    .line 200
    .line 201
    move-object/from16 v30, v3

    .line 202
    .line 203
    move/from16 v31, v1

    .line 204
    .line 205
    move/from16 v32, v2

    .line 206
    .line 207
    move/from16 v33, v0

    .line 208
    .line 209
    move-object/from16 v26, v11

    .line 210
    .line 211
    move-object/from16 v27, v10

    .line 212
    .line 213
    move-object/from16 v24, v13

    .line 214
    .line 215
    move-object/from16 v25, v12

    .line 216
    .line 217
    move-object/from16 v22, v5

    .line 218
    .line 219
    move-object/from16 v23, v14

    .line 220
    .line 221
    move-object/from16 v20, v7

    .line 222
    .line 223
    move-object/from16 v21, v6

    .line 224
    .line 225
    move-object/from16 v18, v15

    .line 226
    .line 227
    move-object/from16 v19, v8

    .line 228
    .line 229
    invoke-direct/range {v17 .. v33}, LX/08K;-><init>(Landroid/app/Application;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;LX/0BP;LX/0BP;LX/0BP;LX/0BP;LX/0BP;LX/0BP;LX/0BP;LX/0BP;IZZ)V

    .line 230
    .line 231
    .line 232
    sput-object v17, LX/09V;->A01:LX/08K;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    .line 234
    :cond_9
    monitor-exit v16

    .line 235
    return-object v17

    .line 236
    :cond_a
    :try_start_1
    const-string v0, "Lacrima isn\'t initialized"

    .line 237
    .line 238
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :catchall_0
    move-exception v0

    .line 244
    monitor-exit v16

    .line 245
    throw v0
.end method

.method public static declared-synchronized A01()V
    .locals 21

    .line 0
    const-class v13, LX/09V;

    .line 1
    .line 2
    monitor-enter v13

    .line 3
    :try_start_0
    sget-boolean v0, LX/09V;->A04:Z

    .line 4
    .line 5
    if-nez v0, :cond_d

    .line 6
    .line 7
    invoke-static {}, LX/09V;->A00()LX/08K;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const/4 v5, 0x0

    .line 12
    const-string v6, "fb.report_source"

    .line 13
    .line 14
    invoke-static {}, LX/06T;->A01()LX/06T;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v1, "lacrima"

    .line 21
    .line 22
    const-string v0, "ExceptionHandlerManager not initialized, initializing."

    .line 23
    .line 24
    invoke-static {v1, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, LX/06T;->A00()LX/06T;

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {}, LX/08w;->A00()V

    .line 31
    .line 32
    .line 33
    const-string v0, "earlyJavaInit"

    .line 34
    .line 35
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, v2, LX/08K;->A0C:LX/0BP;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    new-instance v0, LX/0BR;

    .line 43
    .line 44
    invoke-direct {v0, v2, v5}, LX/0BR;-><init>(LX/08K;I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, v2, LX/08K;->A0C:LX/0BP;

    .line 48
    .line 49
    :cond_1
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 53
    :try_start_1
    const-string v0, "KeepReportsForTesting.jest"

    .line 54
    .line 55
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 56
    .line 57
    .line 58
    :try_start_2
    invoke-static {v6}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    const-string v4, ""

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :cond_2
    const/4 v12, 0x1

    .line 75
    if-eqz v3, :cond_4

    .line 76
    .line 77
    const-string v0, "jest_e2e"

    .line 78
    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_3

    .line 84
    .line 85
    const-string v0, "sapienz"

    .line 86
    .line 87
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_4

    .line 92
    .line 93
    :cond_3
    sput-boolean v12, LX/090;->A0F:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 94
    .line 95
    :cond_4
    :try_start_3
    invoke-static {}, LX/04s;->A00()V

    .line 96
    .line 97
    .line 98
    const-string v0, "FixedLengthFiles.init"

    .line 99
    .line 100
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 101
    .line 102
    .line 103
    :try_start_4
    const-string v11, "collector"

    .line 104
    .line 105
    invoke-static {v11}, LX/07v;->A00(Ljava/lang/String;)LX/07v;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    iget-object v3, v2, LX/08K;->A0F:Landroid/app/Application;

    .line 110
    .line 111
    const/16 v6, 0x8

    .line 112
    .line 113
    const/16 v0, 0x3a98

    .line 114
    .line 115
    invoke-virtual {v7, v3, v6, v0}, LX/07v;->A03(Landroid/app/Application;II)V

    .line 116
    .line 117
    .line 118
    const-string v10, "reports"

    .line 119
    .line 120
    invoke-static {v10}, LX/07v;->A00(Ljava/lang/String;)LX/07v;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    const/4 v6, 0x6

    .line 125
    const v0, 0xea60

    .line 126
    .line 127
    .line 128
    invoke-virtual {v7, v3, v6, v0}, LX/07v;->A03(Landroid/app/Application;II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 129
    .line 130
    .line 131
    :try_start_5
    invoke-static {}, LX/04s;->A00()V

    .line 132
    .line 133
    .line 134
    invoke-static {}, LX/07b;->A00()J

    .line 135
    .line 136
    .line 137
    move-result-wide v6

    .line 138
    const-wide/16 v8, 0x2800

    .line 139
    .line 140
    cmp-long v0, v6, v8

    .line 141
    .line 142
    if-gez v0, :cond_5

    .line 143
    .line 144
    invoke-static {v10}, LX/07v;->A00(Ljava/lang/String;)LX/07v;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, LX/07v;->A01()V

    .line 149
    .line 150
    .line 151
    invoke-static {}, LX/07b;->A00()J

    .line 152
    .line 153
    .line 154
    move-result-wide v6

    .line 155
    cmp-long v0, v6, v8

    .line 156
    .line 157
    if-gez v0, :cond_5

    .line 158
    .line 159
    invoke-static {v11}, LX/07v;->A00(Ljava/lang/String;)LX/07v;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, LX/07v;->A01()V

    .line 164
    .line 165
    .line 166
    :cond_5
    iget-object v0, v2, LX/08K;->A0P:LX/0BP;

    .line 167
    .line 168
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v7

    .line 172
    check-cast v7, Ljava/lang/String;

    .line 173
    .line 174
    const-string v0, "errorreporting"

    .line 175
    .line 176
    invoke-virtual {v3, v0, v5}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 177
    .line 178
    .line 179
    move-result-object v17

    .line 180
    iget-object v0, v2, LX/08K;->A0Q:LX/0BP;

    .line 181
    .line 182
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    check-cast v6, Ljava/lang/String;

    .line 187
    .line 188
    iget-object v3, v2, LX/08K;->A05:LX/0BP;

    .line 189
    .line 190
    if-nez v3, :cond_6

    .line 191
    .line 192
    const/4 v0, 0x4

    .line 193
    new-instance v3, LX/0BR;

    .line 194
    .line 195
    invoke-direct {v3, v2, v0}, LX/0BR;-><init>(LX/08K;I)V

    .line 196
    .line 197
    .line 198
    iput-object v3, v2, LX/08K;->A05:LX/0BP;

    .line 199
    .line 200
    :cond_6
    invoke-interface {v3}, LX/0BP;->get()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    check-cast v3, LX/057;

    .line 205
    .line 206
    iget-object v0, v2, LX/08K;->A03:LX/0BP;

    .line 207
    .line 208
    if-nez v0, :cond_7

    .line 209
    .line 210
    new-instance v0, LX/05X;

    .line 211
    .line 212
    invoke-direct {v0, v2}, LX/05X;-><init>(LX/08K;)V

    .line 213
    .line 214
    .line 215
    iput-object v0, v2, LX/08K;->A03:LX/0BP;

    .line 216
    .line 217
    :cond_7
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v15

    .line 221
    check-cast v15, LX/07q;

    .line 222
    .line 223
    new-instance v14, LX/09B;

    .line 224
    .line 225
    move-object/from16 v16, v3

    .line 226
    .line 227
    move-object/from16 v18, v7

    .line 228
    .line 229
    move-object/from16 v19, v6

    .line 230
    .line 231
    invoke-direct/range {v14 .. v19}, LX/09B;-><init>(LX/07q;LX/057;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    iput-object v14, v2, LX/08K;->A01:LX/09B;

    .line 235
    .line 236
    iget-object v3, v2, LX/08K;->A07:LX/0BP;

    .line 237
    .line 238
    if-nez v3, :cond_8

    .line 239
    .line 240
    const/4 v0, 0x3

    .line 241
    new-instance v3, LX/0BR;

    .line 242
    .line 243
    invoke-direct {v3, v2, v0}, LX/0BR;-><init>(LX/08K;I)V

    .line 244
    .line 245
    .line 246
    iput-object v3, v2, LX/08K;->A07:LX/0BP;

    .line 247
    .line 248
    :cond_8
    invoke-interface {v3}, LX/0BP;->get()Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v6

    .line 252
    check-cast v6, LX/05b;

    .line 253
    .line 254
    new-instance v16, LX/095;

    .line 255
    .line 256
    invoke-direct/range {v16 .. v16}, LX/095;-><init>()V

    .line 257
    .line 258
    .line 259
    iget v3, v2, LX/08K;->A0E:I

    .line 260
    .line 261
    iget-boolean v0, v2, LX/08K;->A0T:Z

    .line 262
    .line 263
    new-instance v15, LX/07R;

    .line 264
    .line 265
    move-object/from16 v17, v6

    .line 266
    .line 267
    move-object/from16 v18, v14

    .line 268
    .line 269
    move/from16 v19, v3

    .line 270
    .line 271
    move/from16 v20, v0

    .line 272
    .line 273
    invoke-direct/range {v15 .. v20}, LX/07R;-><init>(LX/095;LX/05b;LX/09B;IZ)V

    .line 274
    .line 275
    .line 276
    iput-object v15, v2, LX/08K;->A00:LX/07R;

    .line 277
    .line 278
    const-string v0, "FixedLengthFiles.maybeAddPoolFiles"

    .line 279
    .line 280
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 281
    .line 282
    .line 283
    :try_start_6
    invoke-static {v11}, LX/07v;->A00(Ljava/lang/String;)LX/07v;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, LX/07v;->A02()V

    .line 288
    .line 289
    .line 290
    invoke-static {v10}, LX/07v;->A00(Ljava/lang/String;)LX/07v;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-virtual {v0}, LX/07v;->A02()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 295
    .line 296
    .line 297
    :try_start_7
    invoke-static {}, LX/04s;->A00()V

    .line 298
    .line 299
    .line 300
    const-string v0, "InternalSettings"

    .line 301
    .line 302
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 303
    .line 304
    .line 305
    :try_start_8
    iget-object v0, v2, LX/08K;->A0C:LX/0BP;

    .line 306
    .line 307
    if-nez v0, :cond_9

    .line 308
    .line 309
    new-instance v0, LX/0BR;

    .line 310
    .line 311
    invoke-direct {v0, v2, v5}, LX/0BR;-><init>(LX/08K;I)V

    .line 312
    .line 313
    .line 314
    iput-object v0, v2, LX/08K;->A0C:LX/0BP;

    .line 315
    .line 316
    :cond_9
    sput-object v0, LX/02f;->A01:LX/0BP;

    .line 317
    .line 318
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, LX/06n;

    .line 323
    .line 324
    const-string v3, "endpoint_override"
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 325
    .line 326
    :try_start_9
    iget-object v0, v0, LX/06n;->A00:Landroid/content/SharedPreferences;

    .line 327
    .line 328
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    if-eqz v1, :cond_a
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 333
    .line 334
    :try_start_a
    sput-object v1, LX/02f;->A00:Ljava/lang/String;

    .line 335
    .line 336
    sget-object v0, LX/02f;->A01:LX/0BP;

    .line 337
    .line 338
    if-eqz v0, :cond_a

    .line 339
    .line 340
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    check-cast v0, LX/06n;

    .line 345
    .line 346
    iget-object v0, v0, LX/06n;->A00:Landroid/content/SharedPreferences;

    .line 347
    .line 348
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 357
    .line 358
    .line 359
    goto :goto_0

    .line 360
    :catch_0
    const-string v1, "lacrima"

    .line 361
    .line 362
    const-string v0, "Failed to read from SharedPreferences"

    .line 363
    .line 364
    invoke-static {v1, v0}, LX/06s;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    invoke-static {}, LX/08w;->A00()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 368
    .line 369
    .line 370
    :cond_a
    :goto_0
    :try_start_b
    invoke-static {}, LX/04s;->A00()V

    .line 371
    .line 372
    .line 373
    iget-object v0, v2, LX/08K;->A01:LX/09B;

    .line 374
    .line 375
    invoke-static {v0}, LX/02g;->A00(LX/09B;)V

    .line 376
    .line 377
    .line 378
    iget-object v0, v2, LX/08K;->A0G:Ljava/util/List;

    .line 379
    .line 380
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    if-eqz v0, :cond_b

    .line 389
    .line 390
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    check-cast v0, LX/08G;

    .line 395
    .line 396
    invoke-static {}, LX/08w;->A00()V

    .line 397
    .line 398
    .line 399
    invoke-interface {v0, v2}, LX/08G;->AH8(LX/08K;)V

    .line 400
    .line 401
    .line 402
    goto :goto_1

    .line 403
    :cond_b
    const-string v3, "lacrima"

    .line 404
    .line 405
    const-string v0, "sendPendingReports"

    .line 406
    .line 407
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 408
    .line 409
    .line 410
    :try_start_c
    iget-object v1, v2, LX/08K;->A01:LX/09B;

    .line 411
    .line 412
    const-string v0, "Did you call earlyInit()?"

    .line 413
    .line 414
    invoke-static {v1, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1, v4}, LX/09B;->A03(Ljava/lang/String;)[Ljava/io/File;

    .line 418
    .line 419
    .line 420
    const-string v0, "Sending pending reports"

    .line 421
    .line 422
    invoke-static {v3, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    iget-object v0, v2, LX/08K;->A0B:LX/0BP;

    .line 426
    .line 427
    if-nez v0, :cond_c

    .line 428
    .line 429
    new-instance v0, LX/03k;

    .line 430
    .line 431
    invoke-direct {v0, v2}, LX/03k;-><init>(LX/08K;)V

    .line 432
    .line 433
    .line 434
    iput-object v0, v2, LX/08K;->A0B:LX/0BP;

    .line 435
    .line 436
    :cond_c
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 437
    .line 438
    .line 439
    move-result-object v1

    .line 440
    check-cast v1, LX/090;

    .line 441
    .line 442
    sget-object v0, LX/02m;->A02:LX/02m;

    .line 443
    .line 444
    invoke-virtual {v1, v0}, LX/090;->A03(LX/02m;)V

    .line 445
    .line 446
    .line 447
    sget-object v0, LX/02m;->A03:LX/02m;

    .line 448
    .line 449
    invoke-virtual {v1, v0}, LX/090;->A03(LX/02m;)V

    .line 450
    .line 451
    .line 452
    invoke-virtual {v1}, LX/090;->A02()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 453
    .line 454
    .line 455
    :try_start_d
    invoke-static {}, LX/04s;->A00()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 456
    .line 457
    .line 458
    :try_start_e
    invoke-static {}, LX/08w;->A00()V

    .line 459
    .line 460
    .line 461
    invoke-static {}, LX/04s;->A00()V

    .line 462
    .line 463
    .line 464
    sput-boolean v12, LX/09V;->A04:Z

    .line 465
    .line 466
    sget-object v0, LX/09V;->A09:Ljava/util/concurrent/CountDownLatch;

    .line 467
    .line 468
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 469
    .line 470
    .line 471
    goto :goto_3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 472
    :catchall_0
    move-exception v0

    .line 473
    :try_start_f
    invoke-static {}, LX/04s;->A00()V

    .line 474
    .line 475
    .line 476
    goto :goto_2

    .line 477
    :catchall_1
    move-exception v0

    .line 478
    invoke-static {}, LX/04s;->A00()V

    .line 479
    .line 480
    .line 481
    :goto_2
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 482
    :catchall_2
    move-exception v1

    .line 483
    :try_start_10
    invoke-static {}, LX/08w;->A00()V

    .line 484
    .line 485
    .line 486
    const-string v0, "earlyJavaInit exception"

    .line 487
    .line 488
    invoke-static {v2, v0, v1}, LX/08K;->A00(LX/08K;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 489
    .line 490
    .line 491
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 492
    :catchall_3
    :try_start_11
    move-exception v0

    .line 493
    invoke-static {}, LX/08w;->A00()V

    .line 494
    .line 495
    .line 496
    invoke-static {}, LX/04s;->A00()V

    .line 497
    .line 498
    .line 499
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 500
    :cond_d
    :goto_3
    monitor-exit v13

    .line 501
    return-void

    .line 502
    :catchall_4
    move-exception v0

    .line 503
    monitor-exit v13

    .line 504
    throw v0
.end method

.method public static A02(Landroid/app/Application;LX/0B6;J)V
    .locals 26

    .line 0
    const/4 v7, 0x0

    .line 1
    sput-boolean v7, LX/090;->A0F:Z

    .line 2
    .line 3
    const-string v0, "LacrimaInit.getConfig"

    .line 4
    .line 5
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    sget-object v0, LX/09V;->A02:LX/08L;

    .line 9
    .line 10
    if-nez v0, :cond_a

    .line 11
    .line 12
    const/16 v0, 0x14

    .line 13
    .line 14
    new-instance v6, LX/0BS;

    .line 15
    .line 16
    invoke-direct {v6, v0}, LX/0BS;-><init>(I)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x15

    .line 20
    .line 21
    new-instance v5, LX/0BS;

    .line 22
    .line 23
    invoke-direct {v5, v0}, LX/0BS;-><init>(I)V

    .line 24
    .line 25
    .line 26
    new-instance v17, LX/06z;

    .line 27
    .line 28
    move-object/from16 v8, p0

    .line 29
    .line 30
    move-object/from16 v0, v17

    .line 31
    .line 32
    invoke-direct {v0, v8}, LX/06z;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    const/4 v9, 0x0

    .line 36
    invoke-static {}, LX/0A2;->A02()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/16 v0, 0x2b

    .line 44
    .line 45
    invoke-static {v1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    new-instance v9, LX/0BU;

    .line 53
    .line 54
    move-object/from16 v0, v17

    .line 55
    .line 56
    invoke-direct {v9, v0, v1}, LX/0BU;-><init>(Ljava/lang/Object;I)V

    .line 57
    .line 58
    .line 59
    :cond_0
    const/16 v1, 0x16

    .line 60
    .line 61
    new-instance v24, LX/0BS;

    .line 62
    .line 63
    move-object/from16 v0, v24

    .line 64
    .line 65
    invoke-direct {v0, v1}, LX/0BS;-><init>(I)V

    .line 66
    .line 67
    .line 68
    const/16 v1, 0x17

    .line 69
    .line 70
    new-instance v16, LX/0BS;

    .line 71
    .line 72
    move-object/from16 v0, v16

    .line 73
    .line 74
    invoke-direct {v0, v1}, LX/0BS;-><init>(I)V

    .line 75
    .line 76
    .line 77
    const/16 v1, 0x18

    .line 78
    .line 79
    new-instance v23, LX/0BS;

    .line 80
    .line 81
    move-object/from16 v0, v23

    .line 82
    .line 83
    invoke-direct {v0, v1}, LX/0BS;-><init>(I)V

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x12

    .line 87
    .line 88
    new-instance v22, LX/0BS;

    .line 89
    .line 90
    move-object/from16 v0, v22

    .line 91
    .line 92
    invoke-direct {v0, v1}, LX/0BS;-><init>(I)V

    .line 93
    .line 94
    .line 95
    const/16 v0, 0x13

    .line 96
    .line 97
    new-instance v11, LX/0BS;

    .line 98
    .line 99
    invoke-direct {v11, v0}, LX/0BS;-><init>(I)V

    .line 100
    .line 101
    .line 102
    const/4 v10, 0x1

    .line 103
    new-instance v21, LX/0BQ;

    .line 104
    .line 105
    move-object/from16 v0, v21

    .line 106
    .line 107
    invoke-direct {v0, v10}, LX/0BQ;-><init>(I)V

    .line 108
    .line 109
    .line 110
    new-instance v4, LX/08L;

    .line 111
    .line 112
    invoke-direct {v4, v8}, LX/08L;-><init>(Landroid/app/Application;)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, LX/073;->A00()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    new-instance v0, LX/05g;

    .line 120
    .line 121
    invoke-direct {v0, v1}, LX/05g;-><init>(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    iput-object v0, v4, LX/08L;->A07:LX/0BP;

    .line 125
    .line 126
    const/high16 v0, 0x100000

    .line 127
    .line 128
    iput v0, v4, LX/08L;->A00:I

    .line 129
    .line 130
    iput-boolean v10, v4, LX/08L;->A0B:Z

    .line 131
    .line 132
    const-string v0, "Config.createStartupConfig"

    .line 133
    .line 134
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 135
    .line 136
    .line 137
    :try_start_1
    sget-object v0, LX/078;->A00:LX/077;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    .line 139
    :try_start_2
    const-string v1, "lacrima"

    .line 140
    .line 141
    if-eqz v0, :cond_1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 142
    .line 143
    :try_start_3
    const-string v0, "ErrorReportingDiagnosticData.setInstance already set."

    .line 144
    .line 145
    invoke-static {v1, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_0

    .line 149
    .line 150
    :cond_1
    const-class v3, LX/05o;

    .line 151
    .line 152
    monitor-enter v3

    .line 153
    monitor-exit v3

    .line 154
    invoke-static {}, LX/073;->A00()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    new-instance v1, LX/08o;

    .line 159
    .line 160
    invoke-direct {v1, v8}, LX/08o;-><init>(Landroid/app/Application;)V

    .line 161
    .line 162
    .line 163
    invoke-static {v2, v7}, LX/08H;->A04(Ljava/lang/Object;I)V

    .line 164
    .line 165
    .line 166
    sget-boolean v0, LX/071;->A01:Z

    .line 167
    .line 168
    if-nez v0, :cond_2

    .line 169
    .line 170
    sput-object v1, LX/071;->A00:LX/08o;

    .line 171
    .line 172
    invoke-static {v2, v7}, LX/08H;->A04(Ljava/lang/Object;I)V

    .line 173
    .line 174
    .line 175
    sput-boolean v10, LX/071;->A01:Z

    .line 176
    .line 177
    :cond_2
    new-instance v0, LX/09h;

    .line 178
    .line 179
    invoke-direct {v0}, LX/09h;-><init>()V

    .line 180
    .line 181
    .line 182
    sput-object v0, LX/078;->A00:LX/077;

    .line 183
    .line 184
    monitor-enter v3

    .line 185
    monitor-exit v3

    .line 186
    sget-object v0, LX/07M;->A3M:LX/05l;

    .line 187
    .line 188
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 189
    .line 190
    .line 191
    sget-object v0, LX/07M;->A3u:LX/05l;

    .line 192
    .line 193
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 194
    .line 195
    .line 196
    sget-object v0, LX/07M;->A3y:LX/05l;

    .line 197
    .line 198
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 199
    .line 200
    .line 201
    sget-object v0, LX/07M;->A44:LX/05l;

    .line 202
    .line 203
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 204
    .line 205
    .line 206
    sget-object v0, LX/07M;->A4l:LX/05l;

    .line 207
    .line 208
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 209
    .line 210
    .line 211
    sget-object v0, LX/07M;->A07:LX/05n;

    .line 212
    .line 213
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 214
    .line 215
    .line 216
    sget-object v0, LX/07M;->A5F:LX/05l;

    .line 217
    .line 218
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 219
    .line 220
    .line 221
    sget-object v0, LX/07M;->A5G:LX/05l;

    .line 222
    .line 223
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 224
    .line 225
    .line 226
    sget-object v0, LX/07M;->A1Y:LX/05m;

    .line 227
    .line 228
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 229
    .line 230
    .line 231
    sget-object v0, LX/07M;->A5e:LX/05l;

    .line 232
    .line 233
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 234
    .line 235
    .line 236
    sget-object v0, LX/07M;->A5h:LX/05l;

    .line 237
    .line 238
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 239
    .line 240
    .line 241
    sget-object v0, LX/07M;->A0H:LX/05n;

    .line 242
    .line 243
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 244
    .line 245
    .line 246
    sget-object v0, LX/07M;->A67:LX/05l;

    .line 247
    .line 248
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 249
    .line 250
    .line 251
    sget-object v0, LX/07M;->A6Q:LX/05l;

    .line 252
    .line 253
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 254
    .line 255
    .line 256
    sget-object v0, LX/07M;->A6c:LX/05l;

    .line 257
    .line 258
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 259
    .line 260
    .line 261
    sget-object v0, LX/07M;->A6l:LX/05l;

    .line 262
    .line 263
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 264
    .line 265
    .line 266
    sget-object v0, LX/07M;->A6z:LX/05l;

    .line 267
    .line 268
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 269
    .line 270
    .line 271
    sget-object v0, LX/07M;->A70:LX/05l;

    .line 272
    .line 273
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 274
    .line 275
    .line 276
    sget-object v0, LX/07M;->A78:LX/05l;

    .line 277
    .line 278
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 279
    .line 280
    .line 281
    sget-object v0, LX/07M;->A7D:LX/05l;

    .line 282
    .line 283
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 284
    .line 285
    .line 286
    sget-object v0, LX/07M;->A88:LX/05l;

    .line 287
    .line 288
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 289
    .line 290
    .line 291
    sget-object v0, LX/07M;->A0V:LX/05n;

    .line 292
    .line 293
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 294
    .line 295
    .line 296
    sget-object v0, LX/07M;->A8L:LX/05l;

    .line 297
    .line 298
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 299
    .line 300
    .line 301
    sget-object v0, LX/07M;->A8M:LX/05l;

    .line 302
    .line 303
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 304
    .line 305
    .line 306
    sget-object v0, LX/07M;->A8N:LX/05l;

    .line 307
    .line 308
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 309
    .line 310
    .line 311
    sget-object v0, LX/07M;->A8s:LX/05l;

    .line 312
    .line 313
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 314
    .line 315
    .line 316
    sget-object v0, LX/07M;->A95:LX/05l;

    .line 317
    .line 318
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 319
    .line 320
    .line 321
    sget-object v0, LX/07M;->A96:LX/05l;

    .line 322
    .line 323
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 324
    .line 325
    .line 326
    sget-object v0, LX/07M;->A97:LX/05l;

    .line 327
    .line 328
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 329
    .line 330
    .line 331
    sget-object v0, LX/07M;->A98:LX/05l;

    .line 332
    .line 333
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 334
    .line 335
    .line 336
    sget-object v0, LX/07M;->A9H:LX/05l;

    .line 337
    .line 338
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 339
    .line 340
    .line 341
    sget-object v0, LX/07M;->A9O:LX/05l;

    .line 342
    .line 343
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 344
    .line 345
    .line 346
    sget-object v0, LX/07M;->A9N:LX/05l;

    .line 347
    .line 348
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 349
    .line 350
    .line 351
    sget-object v0, LX/07M;->A9M:LX/05l;

    .line 352
    .line 353
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 354
    .line 355
    .line 356
    sget-object v0, LX/07M;->A9U:LX/05l;

    .line 357
    .line 358
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 359
    .line 360
    .line 361
    sget-object v0, LX/07M;->A9W:LX/05l;

    .line 362
    .line 363
    invoke-static {v0}, LX/05o;->A00(LX/07H;)V

    .line 364
    .line 365
    .line 366
    :goto_0
    sget-object v0, LX/050;->A0f:Ljava/lang/Integer;

    .line 367
    .line 368
    new-instance v12, LX/08E;

    .line 369
    .line 370
    invoke-direct {v12, v0}, LX/08E;-><init>(Ljava/lang/Integer;)V

    .line 371
    .line 372
    .line 373
    const/16 v1, 0x9

    .line 374
    .line 375
    new-instance v0, LX/0BS;

    .line 376
    .line 377
    invoke-direct {v0, v1}, LX/0BS;-><init>(I)V

    .line 378
    .line 379
    .line 380
    iput-object v0, v12, LX/08E;->A00:LX/08D;

    .line 381
    .line 382
    const/16 v20, 0x3

    .line 383
    .line 384
    new-instance v1, LX/0BU;

    .line 385
    .line 386
    move/from16 v0, v20

    .line 387
    .line 388
    invoke-direct {v1, v8, v0}, LX/0BU;-><init>(Ljava/lang/Object;I)V

    .line 389
    .line 390
    .line 391
    iget-object v14, v12, LX/08E;->A04:LX/08C;

    .line 392
    .line 393
    iget-object v13, v14, LX/08C;->A02:Ljava/util/List;

    .line 394
    .line 395
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    const/16 v0, 0x8

    .line 399
    .line 400
    invoke-static {v13, v0}, LX/09V;->A06(Ljava/util/List;I)V

    .line 401
    .line 402
    .line 403
    const/16 v0, 0xc

    .line 404
    .line 405
    invoke-static {v13, v0}, LX/09V;->A06(Ljava/util/List;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 406
    .line 407
    .line 408
    :try_start_4
    invoke-static {}, LX/04s;->A00()V

    .line 409
    .line 410
    .line 411
    sget-object v3, LX/050;->A00:Ljava/lang/Integer;

    .line 412
    .line 413
    new-instance v2, LX/05x;

    .line 414
    .line 415
    move-wide/from16 v25, p2

    .line 416
    .line 417
    move-wide/from16 v0, v25

    .line 418
    .line 419
    invoke-direct {v2, v3, v0, v1}, LX/05x;-><init>(Ljava/lang/Integer;J)V

    .line 420
    .line 421
    .line 422
    iget-object v0, v14, LX/08C;->A03:Ljava/util/List;

    .line 423
    .line 424
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    .line 429
    .line 430
    invoke-static {v12, v4}, LX/09V;->A03(LX/08E;LX/08L;)V

    .line 431
    .line 432
    .line 433
    const-string v0, "Config.createNavigationConfig"

    .line 434
    .line 435
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 436
    .line 437
    .line 438
    :try_start_5
    sget-object v0, LX/050;->A0k:Ljava/lang/Integer;

    .line 439
    .line 440
    new-instance v2, LX/08E;

    .line 441
    .line 442
    invoke-direct {v2, v0}, LX/08E;-><init>(Ljava/lang/Integer;)V

    .line 443
    .line 444
    .line 445
    const/16 v1, 0xb

    .line 446
    .line 447
    new-instance v0, LX/0BS;

    .line 448
    .line 449
    invoke-direct {v0, v1}, LX/0BS;-><init>(I)V

    .line 450
    .line 451
    .line 452
    iput-object v0, v2, LX/08E;->A00:LX/08D;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 453
    .line 454
    :try_start_6
    invoke-static {}, LX/04s;->A00()V

    .line 455
    .line 456
    .line 457
    invoke-static {v2, v4}, LX/09V;->A03(LX/08E;LX/08L;)V

    .line 458
    .line 459
    .line 460
    const/4 v11, 0x2

    .line 461
    new-array v12, v11, [LX/07w;

    .line 462
    .line 463
    new-instance v13, LX/09m;

    .line 464
    .line 465
    invoke-direct {v13}, LX/09m;-><init>()V

    .line 466
    .line 467
    .line 468
    const-class v15, LX/07C;

    .line 469
    .line 470
    monitor-enter v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 471
    :try_start_7
    sput-object v13, LX/07C;->A04:LX/09m;

    .line 472
    .line 473
    sget-object v0, LX/07C;->A04:LX/09m;

    .line 474
    .line 475
    if-eqz v0, :cond_4

    .line 476
    .line 477
    sget-object v14, LX/07C;->A00:Ljava/util/List;

    .line 478
    .line 479
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 484
    .line 485
    .line 486
    move-result v0

    .line 487
    if-eqz v0, :cond_3

    .line 488
    .line 489
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    sget-object v1, LX/07C;->A03:Ljava/util/concurrent/ExecutorService;

    .line 493
    .line 494
    new-instance v0, LX/07A;

    .line 495
    .line 496
    invoke-direct {v0, v13}, LX/07A;-><init>(LX/09m;)V

    .line 497
    .line 498
    .line 499
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 500
    .line 501
    .line 502
    goto :goto_1

    .line 503
    :cond_3
    invoke-interface {v14}, Ljava/util/List;->clear()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 504
    .line 505
    .line 506
    :cond_4
    :try_start_8
    monitor-exit v15

    .line 507
    new-instance v0, LX/09Z;

    .line 508
    .line 509
    invoke-direct {v0, v13}, LX/09Z;-><init>(LX/09m;)V

    .line 510
    .line 511
    .line 512
    aput-object v0, v12, v7

    .line 513
    .line 514
    new-instance v0, LX/08l;

    .line 515
    .line 516
    invoke-direct {v0}, LX/08l;-><init>()V

    .line 517
    .line 518
    .line 519
    aput-object v0, v12, v10

    .line 520
    .line 521
    const-string v0, "Config.createLifecycleConfig"

    .line 522
    .line 523
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    const/4 v2, 0x0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 527
    :cond_5
    :try_start_9
    aget-object v1, v12, v2

    .line 528
    .line 529
    sget-object v0, LX/08n;->A00:Ljava/util/List;

    .line 530
    .line 531
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    .line 533
    .line 534
    add-int/lit8 v2, v2, 0x1

    .line 535
    .line 536
    if-lt v2, v11, :cond_5

    .line 537
    .line 538
    sget-object v0, LX/050;->A0j:Ljava/lang/Integer;

    .line 539
    .line 540
    new-instance v2, LX/08E;

    .line 541
    .line 542
    invoke-direct {v2, v0}, LX/08E;-><init>(Ljava/lang/Integer;)V

    .line 543
    .line 544
    .line 545
    const/16 v1, 0xa

    .line 546
    .line 547
    new-instance v0, LX/0BS;

    .line 548
    .line 549
    invoke-direct {v0, v1}, LX/0BS;-><init>(I)V

    .line 550
    .line 551
    .line 552
    iput-object v0, v2, LX/08E;->A00:LX/08D;

    .line 553
    .line 554
    iput-object v3, v2, LX/08E;->A02:Ljava/lang/Integer;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 555
    .line 556
    :try_start_a
    invoke-static {}, LX/04s;->A00()V

    .line 557
    .line 558
    .line 559
    invoke-static {v2, v4}, LX/09V;->A03(LX/08E;LX/08L;)V

    .line 560
    .line 561
    .line 562
    new-instance v12, LX/0At;

    .line 563
    .line 564
    invoke-direct {v12}, LX/0At;-><init>()V

    .line 565
    .line 566
    .line 567
    sget-object v2, LX/04t;->A00:LX/04t;

    .line 568
    .line 569
    sget-object v1, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->A05:LX/08r;

    .line 570
    .line 571
    invoke-static {}, LX/06T;->A00()LX/06T;

    .line 572
    .line 573
    .line 574
    const-string v0, "Config.createJavaDetectionConfig"

    .line 575
    .line 576
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 577
    .line 578
    .line 579
    :try_start_b
    sget-object v0, LX/050;->A0G:Ljava/lang/Integer;

    .line 580
    .line 581
    new-instance v13, LX/08E;

    .line 582
    .line 583
    invoke-direct {v13, v0}, LX/08E;-><init>(Ljava/lang/Integer;)V

    .line 584
    .line 585
    .line 586
    new-instance v0, LX/07Z;

    .line 587
    .line 588
    invoke-direct {v0, v2, v1, v12}, LX/07Z;-><init>(LX/04t;LX/08r;LX/08r;)V

    .line 589
    .line 590
    .line 591
    iput-object v0, v13, LX/08E;->A00:LX/08D;

    .line 592
    .line 593
    iput-object v3, v13, LX/08E;->A02:Ljava/lang/Integer;

    .line 594
    .line 595
    new-instance v12, LX/0BS;

    .line 596
    .line 597
    move/from16 v0, v20

    .line 598
    .line 599
    invoke-direct {v12, v0}, LX/0BS;-><init>(I)V

    .line 600
    .line 601
    .line 602
    iget-object v2, v13, LX/08E;->A04:LX/08C;

    .line 603
    .line 604
    iget-object v1, v2, LX/08C;->A02:Ljava/util/List;

    .line 605
    .line 606
    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    .line 608
    .line 609
    new-instance v12, LX/05i;

    .line 610
    .line 611
    invoke-direct {v12}, LX/05i;-><init>()V

    .line 612
    .line 613
    .line 614
    iget-object v0, v2, LX/08C;->A03:Ljava/util/List;

    .line 615
    .line 616
    move-object/from16 v18, v0

    .line 617
    .line 618
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    .line 620
    .line 621
    new-instance v12, LX/05V;

    .line 622
    .line 623
    invoke-direct {v12, v8}, LX/05V;-><init>(Landroid/app/Application;)V

    .line 624
    .line 625
    .line 626
    iget-object v0, v2, LX/08C;->A08:Ljava/util/List;

    .line 627
    .line 628
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 629
    .line 630
    .line 631
    :try_start_c
    invoke-static {}, LX/04s;->A00()V

    .line 632
    .line 633
    .line 634
    iput-boolean v10, v13, LX/08E;->A03:Z

    .line 635
    .line 636
    new-instance v0, LX/0BT;

    .line 637
    .line 638
    move-object/from16 v12, p1

    .line 639
    .line 640
    invoke-direct {v0, v10, v8, v12}, LX/0BT;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 641
    .line 642
    .line 643
    iput-object v0, v13, LX/08E;->A01:LX/08D;

    .line 644
    .line 645
    invoke-static {v1, v11}, LX/09V;->A06(Ljava/util/List;I)V

    .line 646
    .line 647
    .line 648
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 649
    .line 650
    .line 651
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 652
    .line 653
    .line 654
    if-eqz v9, :cond_6

    .line 655
    .line 656
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    :cond_6
    iget-object v1, v2, LX/08C;->A04:Ljava/util/List;

    .line 660
    .line 661
    move-object/from16 v0, v16

    .line 662
    .line 663
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 664
    .line 665
    .line 666
    sget-object v19, LX/050;->A01:Ljava/lang/Integer;

    .line 667
    .line 668
    new-instance v14, LX/05x;

    .line 669
    .line 670
    move-object/from16 v15, v19

    .line 671
    .line 672
    move-wide/from16 v0, v25

    .line 673
    .line 674
    invoke-direct {v14, v15, v0, v1}, LX/05x;-><init>(Ljava/lang/Integer;J)V

    .line 675
    .line 676
    .line 677
    move-object/from16 v1, v18

    .line 678
    .line 679
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 680
    .line 681
    .line 682
    iget-object v1, v2, LX/08C;->A07:Ljava/util/List;

    .line 683
    .line 684
    move-object/from16 v0, v24

    .line 685
    .line 686
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    .line 688
    .line 689
    invoke-static {v13, v4}, LX/09V;->A03(LX/08E;LX/08L;)V

    .line 690
    .line 691
    .line 692
    new-instance v0, LX/06P;

    .line 693
    .line 694
    invoke-direct {v0, v8}, LX/06P;-><init>(Landroid/app/Application;)V

    .line 695
    .line 696
    .line 697
    invoke-virtual {v4, v0}, LX/08L;->A00(LX/08G;)V

    .line 698
    .line 699
    .line 700
    new-instance v0, LX/06P;

    .line 701
    .line 702
    invoke-direct {v0}, LX/06P;-><init>()V

    .line 703
    .line 704
    .line 705
    invoke-virtual {v4, v0}, LX/08L;->A00(LX/08G;)V

    .line 706
    .line 707
    .line 708
    const-string v0, "Config.createUnexplainedConfig"

    .line 709
    .line 710
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 711
    .line 712
    .line 713
    :try_start_d
    sget-object v0, LX/050;->A0n:Ljava/lang/Integer;

    .line 714
    .line 715
    new-instance v2, LX/08E;

    .line 716
    .line 717
    invoke-direct {v2, v0}, LX/08E;-><init>(Ljava/lang/Integer;)V

    .line 718
    .line 719
    .line 720
    const/16 v18, 0x7

    .line 721
    .line 722
    new-instance v14, LX/0BT;

    .line 723
    .line 724
    move/from16 v13, v18

    .line 725
    .line 726
    move-object/from16 v1, v21

    .line 727
    .line 728
    move-object/from16 v0, v17

    .line 729
    .line 730
    invoke-direct {v14, v13, v0, v1}, LX/0BT;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 731
    .line 732
    .line 733
    iput-object v14, v2, LX/08E;->A00:LX/08D;

    .line 734
    .line 735
    iput-object v3, v2, LX/08E;->A02:Ljava/lang/Integer;

    .line 736
    .line 737
    const/16 v1, 0x11

    .line 738
    .line 739
    new-instance v0, LX/0BS;

    .line 740
    .line 741
    invoke-direct {v0, v1}, LX/0BS;-><init>(I)V

    .line 742
    .line 743
    .line 744
    iget-object v14, v2, LX/08E;->A04:LX/08C;

    .line 745
    .line 746
    iget-object v13, v14, LX/08C;->A04:Ljava/util/List;

    .line 747
    .line 748
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    .line 750
    .line 751
    const/16 v0, 0x10

    .line 752
    .line 753
    invoke-static {v13, v0}, LX/09V;->A06(Ljava/util/List;I)V

    .line 754
    .line 755
    .line 756
    const/16 v0, 0xf

    .line 757
    .line 758
    invoke-static {v13, v0}, LX/09V;->A06(Ljava/util/List;I)V

    .line 759
    .line 760
    .line 761
    const/16 v17, 0x6

    .line 762
    .line 763
    new-instance v1, LX/0BT;

    .line 764
    .line 765
    move/from16 v0, v17

    .line 766
    .line 767
    invoke-direct {v1, v0, v8, v12}, LX/0BT;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 768
    .line 769
    .line 770
    iput-object v1, v2, LX/08E;->A01:LX/08D;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 771
    .line 772
    :try_start_e
    invoke-static {}, LX/04s;->A00()V

    .line 773
    .line 774
    .line 775
    invoke-interface {v13, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    invoke-interface {v13, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 779
    .line 780
    .line 781
    if-eqz v9, :cond_7

    .line 782
    .line 783
    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    .line 785
    .line 786
    :cond_7
    iget-object v1, v14, LX/08C;->A09:Ljava/util/List;

    .line 787
    .line 788
    move-object/from16 v0, v22

    .line 789
    .line 790
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    .line 792
    .line 793
    move-object/from16 v0, v23

    .line 794
    .line 795
    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    invoke-static {v2, v4}, LX/09V;->A03(LX/08E;LX/08L;)V

    .line 799
    .line 800
    .line 801
    const-string v0, "Config.createNativeConfig"

    .line 802
    .line 803
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 804
    .line 805
    .line 806
    :try_start_f
    sget-object v0, LX/050;->A0m:Ljava/lang/Integer;

    .line 807
    .line 808
    new-instance v1, LX/08E;

    .line 809
    .line 810
    invoke-direct {v1, v0}, LX/08E;-><init>(Ljava/lang/Integer;)V

    .line 811
    .line 812
    .line 813
    const/16 v16, 0x5

    .line 814
    .line 815
    new-instance v13, LX/0BT;

    .line 816
    .line 817
    move-object/from16 v2, v21

    .line 818
    .line 819
    move/from16 v0, v16

    .line 820
    .line 821
    invoke-direct {v13, v0, v2, v8}, LX/0BT;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 822
    .line 823
    .line 824
    iput-object v13, v1, LX/08E;->A00:LX/08D;

    .line 825
    .line 826
    sget-object v13, LX/050;->A0C:Ljava/lang/Integer;

    .line 827
    .line 828
    iput-object v13, v1, LX/08E;->A02:Ljava/lang/Integer;

    .line 829
    .line 830
    const/16 v2, 0xe

    .line 831
    .line 832
    new-instance v0, LX/0BS;

    .line 833
    .line 834
    invoke-direct {v0, v2}, LX/0BS;-><init>(I)V

    .line 835
    .line 836
    .line 837
    iget-object v15, v1, LX/08E;->A04:LX/08C;

    .line 838
    .line 839
    iget-object v14, v15, LX/08C;->A04:Ljava/util/List;

    .line 840
    .line 841
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 842
    .line 843
    .line 844
    const/16 v0, 0xd

    .line 845
    .line 846
    invoke-static {v14, v0}, LX/09V;->A06(Ljava/util/List;I)V

    .line 847
    .line 848
    .line 849
    const/4 v2, 0x4

    .line 850
    new-instance v0, LX/0BT;

    .line 851
    .line 852
    invoke-direct {v0, v2, v8, v12}, LX/0BT;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    iput-object v0, v1, LX/08E;->A01:LX/08D;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 856
    .line 857
    :try_start_10
    invoke-static {}, LX/04s;->A00()V

    .line 858
    .line 859
    .line 860
    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    .line 862
    .line 863
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    .line 865
    .line 866
    if-eqz v9, :cond_8

    .line 867
    .line 868
    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 869
    .line 870
    .line 871
    :cond_8
    iget-object v15, v15, LX/08C;->A09:Ljava/util/List;

    .line 872
    .line 873
    move-object/from16 v0, v22

    .line 874
    .line 875
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    .line 877
    .line 878
    move-object/from16 v0, v23

    .line 879
    .line 880
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    .line 882
    .line 883
    invoke-static {v1, v4}, LX/09V;->A03(LX/08E;LX/08L;)V

    .line 884
    .line 885
    .line 886
    const-string v0, "Config.createSoftErrorConfig"

    .line 887
    .line 888
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 889
    .line 890
    .line 891
    :try_start_11
    sget-object v0, LX/050;->A0d:Ljava/lang/Integer;

    .line 892
    .line 893
    new-instance v1, LX/08E;

    .line 894
    .line 895
    invoke-direct {v1, v0}, LX/08E;-><init>(Ljava/lang/Integer;)V

    .line 896
    .line 897
    .line 898
    new-instance v14, LX/0BS;

    .line 899
    .line 900
    move/from16 v0, v18

    .line 901
    .line 902
    invoke-direct {v14, v0}, LX/0BS;-><init>(I)V

    .line 903
    .line 904
    .line 905
    iput-object v14, v1, LX/08E;->A00:LX/08D;

    .line 906
    .line 907
    iput-object v13, v1, LX/08E;->A02:Ljava/lang/Integer;

    .line 908
    .line 909
    new-instance v15, LX/0BS;

    .line 910
    .line 911
    move/from16 v0, v17

    .line 912
    .line 913
    invoke-direct {v15, v0}, LX/0BS;-><init>(I)V

    .line 914
    .line 915
    .line 916
    iget-object v0, v1, LX/08E;->A04:LX/08C;

    .line 917
    .line 918
    iget-object v14, v0, LX/08C;->A07:Ljava/util/List;

    .line 919
    .line 920
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 921
    .line 922
    .line 923
    new-instance v15, LX/0BT;

    .line 924
    .line 925
    move/from16 v0, v20

    .line 926
    .line 927
    invoke-direct {v15, v0, v8, v12}, LX/0BT;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 928
    .line 929
    .line 930
    iput-object v15, v1, LX/08E;->A01:LX/08D;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 931
    .line 932
    :try_start_12
    invoke-static {}, LX/04s;->A00()V

    .line 933
    .line 934
    .line 935
    move-object/from16 v0, v24

    .line 936
    .line 937
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    .line 939
    .line 940
    iput-object v3, v1, LX/08E;->A02:Ljava/lang/Integer;

    .line 941
    .line 942
    invoke-static {v1, v4}, LX/09V;->A03(LX/08E;LX/08L;)V

    .line 943
    .line 944
    .line 945
    iput-boolean v7, v4, LX/08L;->A0A:Z

    .line 946
    .line 947
    sget-object v0, LX/050;->A0a:Ljava/lang/Integer;

    .line 948
    .line 949
    new-instance v14, LX/08E;

    .line 950
    .line 951
    invoke-direct {v14, v0}, LX/08E;-><init>(Ljava/lang/Integer;)V

    .line 952
    .line 953
    .line 954
    new-instance v0, LX/0BU;

    .line 955
    .line 956
    invoke-direct {v0, v8, v11}, LX/0BU;-><init>(Ljava/lang/Object;I)V

    .line 957
    .line 958
    .line 959
    iput-object v0, v14, LX/08E;->A00:LX/08D;

    .line 960
    .line 961
    iput-object v3, v14, LX/08E;->A02:Ljava/lang/Integer;

    .line 962
    .line 963
    new-instance v0, LX/0BS;

    .line 964
    .line 965
    invoke-direct {v0, v2}, LX/0BS;-><init>(I)V

    .line 966
    .line 967
    .line 968
    iget-object v2, v14, LX/08E;->A04:LX/08C;

    .line 969
    .line 970
    iget-object v1, v2, LX/08C;->A02:Ljava/util/List;

    .line 971
    .line 972
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 973
    .line 974
    .line 975
    new-instance v0, LX/0BT;

    .line 976
    .line 977
    invoke-direct {v0, v11, v8, v12}, LX/0BT;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 978
    .line 979
    .line 980
    iput-object v0, v14, LX/08E;->A01:LX/08D;

    .line 981
    .line 982
    iput-object v13, v14, LX/08E;->A02:Ljava/lang/Integer;

    .line 983
    .line 984
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    .line 986
    .line 987
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    .line 989
    .line 990
    iget-object v1, v2, LX/08C;->A07:Ljava/util/List;

    .line 991
    .line 992
    move-object/from16 v0, v24

    .line 993
    .line 994
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 995
    .line 996
    .line 997
    invoke-static {v14, v4}, LX/09V;->A03(LX/08E;LX/08L;)V

    .line 998
    .line 999
    .line 1000
    const-string v0, "Config.createReportSourceConfig"

    .line 1001
    .line 1002
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 1003
    .line 1004
    .line 1005
    :try_start_13
    sget-object v0, LX/050;->A0b:Ljava/lang/Integer;

    .line 1006
    .line 1007
    new-instance v2, LX/08E;

    .line 1008
    .line 1009
    invoke-direct {v2, v0}, LX/08E;-><init>(Ljava/lang/Integer;)V

    .line 1010
    .line 1011
    .line 1012
    new-instance v1, LX/0BS;

    .line 1013
    .line 1014
    move/from16 v0, v16

    .line 1015
    .line 1016
    invoke-direct {v1, v0}, LX/0BS;-><init>(I)V

    .line 1017
    .line 1018
    .line 1019
    iput-object v1, v2, LX/08E;->A00:LX/08D;

    .line 1020
    .line 1021
    iput-object v3, v2, LX/08E;->A02:Ljava/lang/Integer;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 1022
    .line 1023
    :try_start_14
    invoke-static {}, LX/04s;->A00()V

    .line 1024
    .line 1025
    .line 1026
    invoke-static {v2, v4}, LX/09V;->A03(LX/08E;LX/08L;)V

    .line 1027
    .line 1028
    .line 1029
    const-string v0, "Config.createAnrAppDeathConfig"

    .line 1030
    .line 1031
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 1032
    .line 1033
    .line 1034
    :try_start_15
    sget-object v0, LX/050;->A0V:Ljava/lang/Integer;

    .line 1035
    .line 1036
    new-instance v3, LX/08E;

    .line 1037
    .line 1038
    invoke-direct {v3, v0}, LX/08E;-><init>(Ljava/lang/Integer;)V

    .line 1039
    .line 1040
    .line 1041
    new-instance v1, LX/0BU;

    .line 1042
    .line 1043
    move-object/from16 v0, v21

    .line 1044
    .line 1045
    invoke-direct {v1, v0, v10}, LX/0BU;-><init>(Ljava/lang/Object;I)V

    .line 1046
    .line 1047
    .line 1048
    iput-object v1, v3, LX/08E;->A00:LX/08D;

    .line 1049
    .line 1050
    move-object/from16 v0, v19

    .line 1051
    .line 1052
    iput-object v0, v3, LX/08E;->A02:Ljava/lang/Integer;

    .line 1053
    .line 1054
    new-instance v2, LX/0BS;

    .line 1055
    .line 1056
    invoke-direct {v2, v10}, LX/0BS;-><init>(I)V

    .line 1057
    .line 1058
    .line 1059
    iget-object v0, v3, LX/08E;->A04:LX/08C;

    .line 1060
    .line 1061
    iget-object v1, v0, LX/08C;->A04:Ljava/util/List;

    .line 1062
    .line 1063
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    .line 1065
    .line 1066
    invoke-static {v1, v7}, LX/09V;->A06(Ljava/util/List;I)V

    .line 1067
    .line 1068
    .line 1069
    new-instance v0, LX/0BT;

    .line 1070
    .line 1071
    invoke-direct {v0, v7, v8, v12}, LX/0BT;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1072
    .line 1073
    .line 1074
    iput-object v0, v3, LX/08E;->A01:LX/08D;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 1075
    .line 1076
    :try_start_16
    invoke-static {}, LX/04s;->A00()V

    .line 1077
    .line 1078
    .line 1079
    if-eqz v9, :cond_9

    .line 1080
    .line 1081
    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1082
    .line 1083
    .line 1084
    :cond_9
    invoke-static {v3, v4}, LX/09V;->A03(LX/08E;LX/08L;)V

    .line 1085
    .line 1086
    .line 1087
    new-instance v0, LX/0Ba;

    .line 1088
    .line 1089
    invoke-direct {v0, v10}, LX/0Ba;-><init>(I)V

    .line 1090
    .line 1091
    .line 1092
    invoke-virtual {v4, v0}, LX/08L;->A00(LX/08G;)V

    .line 1093
    .line 1094
    .line 1095
    new-instance v0, LX/0Ba;

    .line 1096
    .line 1097
    invoke-direct {v0, v11}, LX/0Ba;-><init>(I)V

    .line 1098
    .line 1099
    .line 1100
    invoke-virtual {v4, v0}, LX/08L;->A00(LX/08G;)V

    .line 1101
    .line 1102
    .line 1103
    sput-object v4, LX/09V;->A02:LX/08L;

    .line 1104
    .line 1105
    sput-boolean v10, LX/09V;->A03:Z

    .line 1106
    .line 1107
    goto :goto_3

    .line 1108
    :catchall_0
    move-exception v0

    .line 1109
    invoke-static {}, LX/04s;->A00()V

    .line 1110
    .line 1111
    .line 1112
    goto :goto_2

    .line 1113
    :catchall_1
    move-exception v0

    .line 1114
    monitor-exit v15

    .line 1115
    :goto_2
    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 1116
    :cond_a
    :goto_3
    invoke-static {}, LX/04s;->A00()V

    .line 1117
    .line 1118
    .line 1119
    return-void

    .line 1120
    :catchall_2
    move-exception v0

    .line 1121
    invoke-static {}, LX/04s;->A00()V

    .line 1122
    .line 1123
    .line 1124
    throw v0
.end method

.method public static A03(LX/08E;LX/08L;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, LX/08E;->A00()LX/06Q;

    .line 1
    .line 2
    .line 3
    move-result-object p0

    .line 4
    invoke-virtual {p1, p0}, LX/08L;->A00(LX/08G;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static A04(Ljava/lang/String;)V
    .locals 2

    .line 0
    sget-boolean v0, LX/09V;->A03:Z

    .line 1
    .line 2
    if-eqz v0, :cond_0

    .line 3
    .line 4
    const-class v0, LX/05o;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    monitor-exit v0

    .line 8
    invoke-static {}, LX/0AP;->A00()LX/0AP;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, LX/0AP;->A03:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v0, v0, LX/0AP;->A02:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    monitor-exit v1

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0

    .line 25
    :cond_0
    return-void
.end method

.method public static A05(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 0
    sget-boolean v0, LX/09V;->A03:Z

    .line 1
    .line 2
    if-eqz v0, :cond_0

    .line 3
    .line 4
    const-class v0, LX/05o;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    monitor-exit v0

    .line 8
    invoke-static {}, LX/0AP;->A00()LX/0AP;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, LX/0AP;->A03:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    iget-object v0, v0, LX/0AP;->A02:Ljava/util/Map;

    .line 16
    .line 17
    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    monitor-exit v1

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0

    .line 25
    :cond_0
    return-void
.end method

.method public static A06(Ljava/util/List;I)V
    .locals 1

    .line 0
    new-instance v0, LX/0BS;

    .line 1
    .line 2
    invoke-direct {v0, p1}, LX/0BS;-><init>(I)V

    .line 3
    .line 4
    .line 5
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method
