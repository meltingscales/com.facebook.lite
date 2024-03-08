.class public final LX/01k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08p;


# instance fields
.field public final A00:LX/07R;

.field public final A01:LX/09B;

.field public final A02:LX/0BP;


# direct methods
.method public constructor <init>(LX/07R;LX/09B;LX/0BP;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p2, p0, LX/01k;->A01:LX/09B;

    .line 4
    .line 5
    iput-object p1, p0, LX/01k;->A00:LX/07R;

    .line 6
    .line 7
    iput-object p3, p0, LX/01k;->A02:LX/0BP;

    .line 8
    .line 9
    return-void
.end method

.method public static A00(Ljava/io/File;)Ljava/util/Properties;
    .locals 4

    .line 0
    new-instance v3, Ljava/util/Properties;

    .line 1
    .line 2
    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 3
    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :try_start_1
    invoke-virtual {v3, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    .line 14
    .line 15
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 16
    .line 17
    .line 18
    return-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 21
    .line 22
    .line 23
    :catchall_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 24
    :catch_0
    move-exception v2

    .line 25
    const-string v1, "lacrima"

    .line 26
    .line 27
    const-string v0, "Error while reading Anr report"

    .line 28
    .line 29
    invoke-static {v1, v0, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, LX/08w;->A00()V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object v3
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
    sget-object v0, LX/08q;->A04:LX/08q;

    .line 1
    .line 2
    return-object v0
.end method

.method public final start()V
    .locals 17

    .line 0
    const/4 v5, 0x1

    .line 1
    new-array v1, v5, [Ljava/lang/Object;

    .line 2
    .line 3
    move-object/from16 v4, p0

    .line 4
    .line 5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/16 v16, 0x0

    .line 14
    .line 15
    aput-object v0, v1, v16

    .line 16
    .line 17
    const-string v13, "lacrima"

    .line 18
    .line 19
    const-string v0, "Start AnrAppDeathDetector... %s"

    .line 20
    .line 21
    invoke-static {v13, v0, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, v4, LX/01k;->A02:LX/0BP;

    .line 25
    .line 26
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    check-cast v6, LX/03f;

    .line 31
    .line 32
    iget-boolean v0, v6, LX/03f;->A07:Z

    .line 33
    .line 34
    if-eqz v0, :cond_8

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iget-object v1, v4, LX/01k;->A01:LX/09B;

    .line 38
    .line 39
    iget-object v0, v1, LX/09B;->A08:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v0}, LX/09B;->A01(Ljava/lang/String;)Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_8

    .line 46
    .line 47
    const-string v12, ""

    .line 48
    .line 49
    new-instance v0, LX/007;

    .line 50
    .line 51
    invoke-direct {v0, v4}, LX/007;-><init>(LX/01k;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    const/4 v9, 0x0

    .line 59
    if-eqz v11, :cond_1

    .line 60
    .line 61
    const/4 v10, -0x1

    .line 62
    array-length v8, v11

    .line 63
    const/4 v7, 0x0

    .line 64
    :goto_0
    if-ge v7, v8, :cond_1

    .line 65
    .line 66
    aget-object v15, v11, v7

    .line 67
    .line 68
    :try_start_0
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v0, "anr_report_"

    .line 73
    .line 74
    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    const-string v0, ".dmp"

    .line 79
    .line 80
    invoke-virtual {v1, v0, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-le v0, v10, :cond_0

    .line 89
    .line 90
    move-object v9, v15

    .line 91
    move v10, v0

    .line 92
    goto :goto_1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :catch_0
    move-exception v14

    .line 94
    const/4 v0, 0x2

    .line 95
    new-array v1, v0, [Ljava/lang/Object;

    .line 96
    .line 97
    invoke-virtual {v15}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    aput-object v0, v1, v16

    .line 102
    .line 103
    aput-object v14, v1, v5

    .line 104
    .line 105
    const-string v0, "Invalid anr report name %s"

    .line 106
    .line 107
    invoke-static {v13, v0, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    invoke-static {}, LX/08w;->A00()V

    .line 111
    .line 112
    .line 113
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_1
    iget-boolean v8, v6, LX/03f;->A06:Z

    .line 117
    .line 118
    if-nez v8, :cond_2

    .line 119
    .line 120
    invoke-static {v9}, LX/01k;->A00(Ljava/io/File;)Ljava/util/Properties;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    sget-object v0, LX/07M;->A01:LX/05n;

    .line 125
    .line 126
    iget-object v0, v0, LX/07H;->A00:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v0, "true"

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_8

    .line 139
    .line 140
    :cond_2
    invoke-virtual {v6}, LX/03f;->A00()Z

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6}, LX/03f;->A00()Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    const-string v0, "anr_state.txt"

    .line 150
    .line 151
    new-instance v1, Ljava/io/File;

    .line 152
    .line 153
    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const/4 v0, 0x0

    .line 157
    new-instance v3, LX/02u;

    .line 158
    .line 159
    invoke-direct {v3, v0}, LX/02u;-><init>(Ljava/lang/Throwable;)V

    .line 160
    .line 161
    .line 162
    sget-object v0, LX/07M;->A10:LX/05m;

    .line 163
    .line 164
    invoke-virtual {v3, v0, v5}, LX/02u;->A02(LX/05m;I)V

    .line 165
    .line 166
    .line 167
    sget-object v5, LX/07M;->A33:LX/05m;

    .line 168
    .line 169
    if-eqz v9, :cond_7

    .line 170
    .line 171
    invoke-virtual {v9}, Ljava/io/File;->lastModified()J

    .line 172
    .line 173
    .line 174
    move-result-wide v0

    .line 175
    :goto_2
    const-wide/16 v6, 0x3e8

    .line 176
    .line 177
    div-long/2addr v0, v6

    .line 178
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v3, v5, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 183
    .line 184
    .line 185
    sget-object v5, LX/07M;->A1O:LX/05m;

    .line 186
    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 188
    .line 189
    .line 190
    move-result-wide v0

    .line 191
    div-long/2addr v0, v6

    .line 192
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v3, v5, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 197
    .line 198
    .line 199
    if-eqz v9, :cond_6

    .line 200
    .line 201
    sget-object v1, LX/07N;->A02:LX/07N;

    .line 202
    .line 203
    sget-object v0, LX/02m;->A02:LX/02m;

    .line 204
    .line 205
    invoke-virtual {v3, v1, v0, v9}, LX/02u;->A05(LX/07N;LX/02m;Ljava/io/File;)V

    .line 206
    .line 207
    .line 208
    sget-object v0, LX/02m;->A03:LX/02m;

    .line 209
    .line 210
    invoke-virtual {v3, v1, v0, v9}, LX/02u;->A05(LX/07N;LX/02m;Ljava/io/File;)V

    .line 211
    .line 212
    .line 213
    if-nez v2, :cond_3

    .line 214
    .line 215
    invoke-static {v9}, LX/01k;->A00(Ljava/io/File;)Ljava/util/Properties;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    :cond_3
    if-eqz v8, :cond_5

    .line 220
    .line 221
    sget-object v0, LX/07M;->A8D:LX/05l;

    .line 222
    .line 223
    iget-object v0, v0, LX/07H;->A00:Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    const-string v0, "true"

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    xor-int/lit8 v2, v0, 0x1

    .line 236
    .line 237
    :cond_4
    :goto_3
    sget-object v0, LX/07M;->A0B:LX/05n;

    .line 238
    .line 239
    invoke-virtual {v3, v0, v2}, LX/02u;->A01(LX/05n;Z)V

    .line 240
    .line 241
    .line 242
    iget-object v1, v4, LX/01k;->A00:LX/07R;

    .line 243
    .line 244
    sget-object v0, LX/02m;->A02:LX/02m;

    .line 245
    .line 246
    invoke-virtual {v1, v3, v0, v4}, LX/07R;->A06(LX/02u;LX/02m;LX/08p;)V

    .line 247
    .line 248
    .line 249
    if-eqz v2, :cond_8

    .line 250
    .line 251
    sget-object v0, LX/02m;->A03:LX/02m;

    .line 252
    .line 253
    invoke-virtual {v1, v3, v0, v4}, LX/07R;->A06(LX/02u;LX/02m;LX/08p;)V

    .line 254
    .line 255
    .line 256
    return-void

    .line 257
    :cond_5
    sget-object v0, LX/07M;->A01:LX/05n;

    .line 258
    .line 259
    iget-object v0, v0, LX/07H;->A00:Ljava/lang/String;

    .line 260
    .line 261
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    const-string v1, "true"

    .line 266
    .line 267
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_6

    .line 272
    .line 273
    sget-object v0, LX/07M;->A8D:LX/05l;

    .line 274
    .line 275
    iget-object v0, v0, LX/07H;->A00:Ljava/lang/String;

    .line 276
    .line 277
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v0

    .line 285
    const/4 v2, 0x1

    .line 286
    if-eqz v0, :cond_4

    .line 287
    .line 288
    :cond_6
    const/4 v2, 0x0

    .line 289
    goto :goto_3

    .line 290
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    .line 291
    .line 292
    .line 293
    move-result-wide v0

    .line 294
    goto :goto_2

    .line 295
    :cond_8
    return-void
.end method
