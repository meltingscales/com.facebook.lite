.class public final LX/03z;
.super LX/03y;
.source ""


# static fields
.field public static final __redex_internal_original_name:Ljava/lang/String; = "ReportSender$2"


# instance fields
.field public final synthetic A00:LX/02m;

.field public final synthetic A01:LX/090;

.field public final synthetic A02:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(LX/02m;LX/090;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    iput-object p2, p0, LX/03z;->A01:LX/090;

    .line 1
    .line 2
    iput-object p1, p0, LX/03z;->A00:LX/02m;

    .line 3
    .line 4
    iput-object p3, p0, LX/03z;->A02:Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    invoke-direct {p0}, LX/03y;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 0
    iget-object v10, p0, LX/03z;->A01:LX/090;

    .line 1
    .line 2
    iget-object v4, p0, LX/03z;->A00:LX/02m;

    .line 3
    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v0, "sendPendingReportsInternal."

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, LX/06A;->A01(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :try_start_0
    iget-object v2, v10, LX/090;->A04:LX/03o;

    .line 29
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v0, "send_"

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, LX/03o;->A00(Ljava/lang/String;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_3

    .line 52
    .line 53
    iget-object v1, v2, LX/03o;->A00:Ljava/lang/Object;

    .line 54
    .line 55
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    .line 56
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 57
    :try_start_2
    iget-object v0, v10, LX/090;->A0C:LX/0BP;

    .line 58
    .line 59
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, LX/03H;

    .line 64
    .line 65
    iget-object v1, v0, LX/03H;->A01:Ljava/io/File;

    .line 66
    .line 67
    new-instance v0, LX/048;

    .line 68
    .line 69
    invoke-direct {v0, v4}, LX/048;-><init>(LX/02m;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    if-eqz v9, :cond_3

    .line 77
    .line 78
    new-instance v0, LX/049;

    .line 79
    .line 80
    invoke-direct {v0}, LX/049;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v9, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, v10, LX/090;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 89
    .line 90
    .line 91
    array-length v8, v9

    .line 92
    new-instance v7, LX/04A;

    .line 93
    .line 94
    invoke-direct {v7}, LX/04A;-><init>()V

    .line 95
    .line 96
    .line 97
    const/4 v6, 0x0

    .line 98
    :goto_0
    if-ge v6, v8, :cond_3

    .line 99
    .line 100
    aget-object v5, v9, v6

    .line 101
    .line 102
    const-string v1, "_report.txt"

    .line 103
    .line 104
    new-instance v0, LX/04U;

    .line 105
    .line 106
    invoke-direct {v0, v1}, LX/04U;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    array-length v0, v2

    .line 116
    const/4 v1, 0x1

    .line 117
    if-ne v0, v1, :cond_2

    .line 118
    .line 119
    const/4 v11, 0x0

    .line 120
    aget-object v3, v2, v11

    .line 121
    .line 122
    if-eqz v3, :cond_2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 123
    .line 124
    :try_start_3
    new-instance v0, Ljava/util/Properties;

    .line 125
    .line 126
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v2, Ljava/io/FileReader;

    .line 130
    .line 131
    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    .line 132
    .line 133
    .line 134
    :try_start_4
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    .line 136
    .line 137
    :try_start_5
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 138
    .line 139
    .line 140
    new-instance v2, LX/02O;

    .line 141
    .line 142
    invoke-direct {v2, v0}, LX/02O;-><init>(Ljava/util/Properties;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    .line 143
    .line 144
    .line 145
    :try_start_6
    sget v0, LX/090;->A0E:I

    .line 146
    .line 147
    add-int/lit8 v0, v0, 0x1

    .line 148
    .line 149
    sput v0, LX/090;->A0E:I

    .line 150
    .line 151
    const-string v4, "lacrima"

    .line 152
    .line 153
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-nez v0, :cond_0

    .line 161
    .line 162
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    goto :goto_2

    .line 166
    :cond_0
    const-string v0, "ReportSender.sendInternal"

    .line 167
    .line 168
    invoke-static {v0}, LX/06A;->A01(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 169
    .line 170
    .line 171
    :try_start_7
    iget-object v3, v10, LX/090;->A06:Ljava/util/Set;

    .line 172
    .line 173
    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 174
    :try_start_8
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_1

    .line 179
    .line 180
    const-string v2, "Report sender attempt already in progress: %s"

    .line 181
    .line 182
    new-array v1, v1, [Ljava/lang/Object;

    .line 183
    .line 184
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    aput-object v0, v1, v11

    .line 189
    .line 190
    invoke-static {v4, v2, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    monitor-exit v3

    .line 194
    goto :goto_1

    .line 195
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 199
    :try_start_9
    invoke-static {v2, v10, v7, v5}, LX/090;->A01(LX/02N;LX/090;LX/04A;Ljava/io/File;)V

    .line 200
    .line 201
    .line 202
    monitor-enter v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 203
    :try_start_a
    invoke-interface {v3, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 207
    :goto_1
    :try_start_b
    invoke-static {}, LX/06A;->A00()V

    .line 208
    .line 209
    .line 210
    goto :goto_2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 211
    :catchall_0
    move-exception v0

    .line 212
    :try_start_c
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 213
    .line 214
    .line 215
    :catchall_1
    :try_start_d
    throw v0
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    .line 216
    :catch_0
    :try_start_e
    invoke-static {}, LX/08w;->A00()V

    .line 217
    .line 218
    .line 219
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 220
    .line 221
    goto :goto_0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 222
    :catchall_2
    move-exception v0

    .line 223
    :try_start_f
    monitor-exit v3

    .line 224
    goto :goto_3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 225
    :catchall_3
    move-exception v0

    .line 226
    :try_start_10
    monitor-exit v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 227
    :goto_3
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 228
    :catchall_4
    move-exception v0

    .line 229
    :try_start_12
    invoke-static {}, LX/08w;->A00()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 236
    :catchall_5
    :try_start_13
    move-exception v0

    .line 237
    monitor-exit v1

    .line 238
    goto :goto_4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    .line 239
    :catchall_6
    :try_start_14
    move-exception v0

    .line 240
    invoke-static {}, LX/06A;->A00()V

    .line 241
    .line 242
    .line 243
    :goto_4
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    .line 244
    :cond_3
    invoke-static {}, LX/06A;->A00()V

    .line 245
    .line 246
    .line 247
    iget-object v0, p0, LX/03z;->A02:Ljava/util/concurrent/CountDownLatch;

    .line 248
    .line 249
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :catchall_7
    move-exception v0

    .line 254
    :try_start_15
    invoke-static {}, LX/08w;->A00()V

    .line 255
    .line 256
    .line 257
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 258
    :catchall_8
    move-exception v0

    .line 259
    invoke-static {}, LX/06A;->A00()V

    .line 260
    .line 261
    .line 262
    throw v0
.end method
