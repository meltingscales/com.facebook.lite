.class public LX/0BQ;
.super LX/05K;
.source ""


# instance fields
.field public final A00:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 0
    iput p1, p0, LX/0BQ;->A00:I

    .line 1
    .line 2
    invoke-direct {p0}, LX/05K;-><init>()V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final bridge synthetic A00()Ljava/lang/Object;
    .locals 15

    .line 0
    iget v0, p0, LX/0BQ;->A00:I

    .line 1
    .line 2
    if-eqz v0, :cond_2

    .line 3
    .line 4
    sget-object v1, LX/09B;->A0A:LX/09B;

    .line 5
    .line 6
    const/4 v14, 0x0

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    iget-object v0, v1, LX/09B;->A08:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, LX/09B;->A01(Ljava/lang/String;)Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v9

    .line 15
    if-eqz v9, :cond_1

    .line 16
    .line 17
    const-string v0, "state.txt"

    .line 18
    .line 19
    invoke-static {v9, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v2, LX/03c;

    .line 24
    .line 25
    invoke-direct {v2, v0}, LX/03c;-><init>(Ljava/io/File;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "native_state.txt"

    .line 29
    .line 30
    invoke-static {v9, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    const-string v0, "anr_state.txt"

    .line 35
    .line 36
    invoke-static {v9, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v7

    .line 40
    invoke-virtual {v2}, LX/03c;->A03()C

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    invoke-static {v8}, LX/03d;->A00(Ljava/io/File;)C

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    invoke-static {v7}, LX/03d;->A00(Ljava/io/File;)C

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    invoke-virtual {v2}, LX/03c;->A02()C

    .line 53
    .line 54
    .line 55
    move-result v13

    .line 56
    invoke-static {v13}, LX/03e;->A00(C)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    sget-object v0, LX/050;->A01:Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-static {v0, v6}, LX/03e;->A01(Ljava/lang/Integer;C)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_0

    .line 67
    .line 68
    sget-object v1, LX/050;->A0N:Ljava/lang/Integer;

    .line 69
    .line 70
    invoke-static {v1, v6}, LX/03e;->A01(Ljava/lang/Integer;C)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    .line 76
    sget-object v0, LX/050;->A0C:Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-static {v0, v5}, LX/03e;->A01(Ljava/lang/Integer;C)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_0

    .line 83
    .line 84
    invoke-static {v1, v4}, LX/03e;->A01(Ljava/lang/Integer;C)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_0

    .line 89
    .line 90
    const/16 v0, 0x66

    .line 91
    .line 92
    if-ne v13, v0, :cond_0

    .line 93
    .line 94
    invoke-virtual {v2}, LX/03c;->A05()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    sget-object v0, LX/03F;->A01:Ljava/lang/Object;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    if-eqz v0, :cond_0

    .line 113
    .line 114
    :goto_0
    invoke-virtual {v2}, LX/03c;->A03()C

    .line 115
    .line 116
    .line 117
    move-result v10

    .line 118
    invoke-static {v8}, LX/03d;->A00(Ljava/io/File;)C

    .line 119
    .line 120
    .line 121
    move-result v11

    .line 122
    invoke-static {v7}, LX/03d;->A00(Ljava/io/File;)C

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    new-instance v8, LX/03f;

    .line 127
    .line 128
    invoke-direct/range {v8 .. v14}, LX/03f;-><init>(Ljava/io/File;CCCCZ)V

    .line 129
    .line 130
    .line 131
    return-object v8

    .line 132
    :cond_0
    move v14, v3

    .line 133
    goto :goto_0

    .line 134
    :cond_1
    new-instance v8, LX/03f;

    .line 135
    .line 136
    invoke-direct {v8}, LX/03f;-><init>()V

    .line 137
    .line 138
    .line 139
    return-object v8

    .line 140
    :cond_2
    const-string v5, "lacrima"

    .line 141
    .line 142
    const/4 v6, 0x0

    .line 143
    :try_start_0
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    const-string v0, "logcat"

    .line 148
    .line 149
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 150
    .line 151
    .line 152
    const-string v0, "-d"

    .line 153
    .line 154
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    const-string v0, "-t"

    .line 158
    .line 159
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    const/16 v0, 0xc8

    .line 163
    .line 164
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    new-array v0, v0, [Ljava/lang/String;

    .line 180
    .line 181
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, [Ljava/lang/String;

    .line 186
    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    if-eqz v1, :cond_5

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-eqz v0, :cond_5

    .line 198
    .line 199
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    new-instance v0, Ljava/io/InputStreamReader;

    .line 204
    .line 205
    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 206
    .line 207
    .line 208
    new-instance v2, Ljava/io/BufferedReader;

    .line 209
    .line 210
    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 211
    .line 212
    .line 213
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    const/4 v3, 0x0

    .line 218
    const/4 v1, 0x0

    .line 219
    :goto_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    if-eqz v0, :cond_3

    .line 224
    .line 225
    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    add-int/2addr v1, v0

    .line 233
    add-int/lit8 v1, v1, 0x1

    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 237
    .line 238
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .line 240
    .line 241
    :goto_2
    :try_start_1
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-ge v3, v0, :cond_4

    .line 246
    .line 247
    invoke-virtual {v4, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    check-cast v0, Ljava/lang/String;

    .line 252
    .line 253
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v0, "\n"

    .line 257
    .line 258
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    add-int/lit8 v3, v3, 0x1

    .line 262
    .line 263
    goto :goto_2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 264
    :catch_0
    move-exception v1

    .line 265
    move-object v2, v6

    .line 266
    goto :goto_3

    .line 267
    :catch_1
    move-exception v1

    .line 268
    :goto_3
    invoke-static {}, LX/08w;->A00()V

    .line 269
    .line 270
    .line 271
    const-string v0, "ErrorReportingCheck.collectLogcat could not retrieve data."

    .line 272
    .line 273
    invoke-static {v5, v0, v1}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    .line 275
    .line 276
    :cond_4
    move-object v6, v2

    .line 277
    :cond_5
    if-nez v6, :cond_6

    .line 278
    .line 279
    const-string v8, ""

    .line 280
    .line 281
    return-object v8

    .line 282
    :cond_6
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v8

    .line 286
    return-object v8
.end method
