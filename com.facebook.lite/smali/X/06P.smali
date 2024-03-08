.class public LX/06P;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08G;


# instance fields
.field public A00:Ljava/lang/Object;

.field public final A01:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 268435456
    const/4 v0, 0x1

    .line 268435457
    iput v0, p0, LX/06P;->A01:I

    .line 268435458
    .line 268435459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268435460
    .line 268435461
    .line 268435462
    const/4 v1, 0x0

    .line 268435463
    new-instance v0, LX/0Ba;

    .line 268435464
    .line 268435465
    invoke-direct {v0, v1}, LX/0Ba;-><init>(I)V

    .line 268435466
    .line 268435467
    .line 268435468
    iput-object v0, p0, LX/06P;->A00:Ljava/lang/Object;

    .line 268435469
    .line 268435470
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 1
    iput v0, p0, LX/06P;->A01:I

    .line 2
    .line 3
    iput-object p1, p0, LX/06P;->A00:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final AG4()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget v0, p0, LX/06P;->A01:I

    .line 1
    .line 2
    if-eqz v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, LX/06P;->A00:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, LX/08G;

    .line 7
    .line 8
    invoke-interface {v0}, LX/08G;->AG4()Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0

    .line 13
    :cond_0
    sget-object v0, LX/050;->A01:Ljava/lang/Integer;

    .line 14
    .line 15
    return-object v0
.end method

.method public final AH8(LX/08K;)V
    .locals 13

    .line 0
    iget v0, p0, LX/06P;->A01:I

    .line 1
    .line 2
    if-eqz v0, :cond_2

    .line 3
    .line 4
    iget-object v2, p0, LX/06P;->A00:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v2, LX/08G;

    .line 7
    .line 8
    invoke-interface {v2}, LX/08G;->AG4()Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sget-object v0, LX/050;->A0C:Ljava/lang/Integer;

    .line 13
    .line 14
    if-ne v1, v0, :cond_1

    .line 15
    .line 16
    const-string v0, "LacrimaInit.jvmStreamEnabled"

    .line 17
    .line 18
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :try_start_0
    const-string v0, "java.vm.version"

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    const-string v0, "1."

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    const-string v0, "0."

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    const-string v0, "android_aware_dlopen"

    .line 46
    .line 47
    invoke-static {v0}, LX/0B9;->A09(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    const-string v0, "force_dlopen"

    .line 51
    .line 52
    invoke-static {v0}, LX/0B9;->A09(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-interface {v2, p1}, LX/08G;->AH8(LX/08K;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 59
    .line 60
    :catch_0
    move-exception v2

    .line 61
    :try_start_1
    const-string v1, "LacrimaInit"

    .line 62
    .line 63
    const-string v0, "Error enabling jvm stream"

    .line 64
    .line 65
    invoke-static {v1, v0, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 69
    .line 70
    :cond_1
    invoke-interface {v2, p1}, LX/08G;->AH8(LX/08K;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_2
    invoke-static {}, LX/06T;->A00()LX/06T;

    .line 75
    .line 76
    .line 77
    const-string v0, "BreakpadManager.start"

    .line 78
    .line 79
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-wide/16 v8, 0x0

    .line 83
    .line 84
    :try_start_2
    iget-object v7, p0, LX/06P;->A00:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v7, Landroid/app/Application;

    .line 87
    .line 88
    const/4 v5, 0x1

    .line 89
    const-string v4, "breakpad_write_only_crash_thread"

    .line 90
    .line 91
    const/4 v2, 0x1

    .line 92
    sget-object v3, LX/041;->A00:Ljava/util/Map;

    .line 93
    .line 94
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Ljava/lang/Integer;

    .line 99
    .line 100
    if-eqz v0, :cond_3

    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 103
    .line 104
    .line 105
    move-result v2

    .line 106
    goto :goto_3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 107
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v1, "GkBootstrap"

    .line 112
    .line 113
    invoke-static {v0, v1}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-static {v0, v4}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 122
    .line 123
    .line 124
    move-result v6

    .line 125
    if-eqz v6, :cond_4

    .line 126
    .line 127
    invoke-static {v7, v1}, LX/000;->A02(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v0, v4}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    goto :goto_0

    .line 136
    :cond_4
    invoke-static {v7, v4}, LX/000;->A02(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 145
    .line 146
    :try_start_4
    invoke-virtual {v7, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    goto :goto_1

    .line 151
    :goto_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 152
    .line 153
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 154
    .line 155
    .line 156
    :goto_1
    new-instance v1, Ljava/io/DataInputStream;

    .line 157
    .line 158
    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 159
    .line 160
    .line 161
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-nez v6, :cond_5

    .line 166
    .line 167
    invoke-static {v7, v0}, LX/041;->A00(Landroid/content/Context;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 168
    .line 169
    .line 170
    :cond_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 171
    .line 172
    .line 173
    if-nez v6, :cond_6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 174
    .line 175
    :try_start_7
    invoke-virtual {v7, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 176
    .line 177
    .line 178
    :catch_1
    :cond_6
    move v2, v0

    .line 179
    goto :goto_2

    .line 180
    :catchall_0
    move-exception v0

    .line 181
    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 182
    .line 183
    .line 184
    :catchall_1
    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 185
    :catchall_2
    move-exception v0

    .line 186
    if-nez v6, :cond_7

    .line 187
    .line 188
    :try_start_a
    invoke-virtual {v7, v4}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 189
    .line 190
    .line 191
    :catch_2
    :cond_7
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 192
    :catch_3
    :cond_8
    :goto_2
    :try_start_c
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    :goto_3
    if-eq v2, v5, :cond_9

    .line 200
    .line 201
    const-wide/16 v8, 0x1

    .line 202
    .line 203
    :cond_9
    const v10, 0x177000

    .line 204
    .line 205
    .line 206
    const/4 v11, 0x0

    .line 207
    move-object v12, v11

    .line 208
    invoke-static/range {v7 .. v12}, Lcom/facebook/breakpad/BreakpadManager;->start(Landroid/content/Context;JILjava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    sget-object v0, LX/07M;->A4F:LX/05l;

    .line 212
    .line 213
    iget-object v2, v0, LX/07H;->A00:Ljava/lang/String;

    .line 214
    .line 215
    iget-object v0, p1, LX/08K;->A0P:LX/0BP;

    .line 216
    .line 217
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    check-cast v1, Ljava/lang/String;

    .line 222
    .line 223
    const/4 v0, 0x0

    .line 224
    new-array v0, v0, [Ljava/lang/Object;

    .line 225
    .line 226
    invoke-static {v2, v1, v0}, Lcom/facebook/breakpad/BreakpadManager;->setCustomData(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 227
    .line 228
    .line 229
    :goto_4
    invoke-static {}, LX/04s;->A00()V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :catchall_3
    move-exception v0

    .line 234
    invoke-static {}, LX/04s;->A00()V

    .line 235
    .line 236
    .line 237
    throw v0
.end method
