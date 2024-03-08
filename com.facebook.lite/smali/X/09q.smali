.class public abstract LX/09q;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Landroid/content/Context;LX/09k;Ljava/io/File;)LX/09p;
    .locals 16

    .line 0
    const-string v1, "DexStore"

    .line 1
    .line 2
    move-object/from16 v3, p2

    .line 3
    .line 4
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v0, "cannot mkdir: "

    .line 21
    .line 22
    invoke-static {v3, v0, v1}, LX/000;->A05(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/io/IOException;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    throw v0

    .line 27
    :cond_0
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    const-string v0, "metadata.txt"

    .line 32
    .line 33
    move-object/from16 v4, p1

    .line 34
    .line 35
    invoke-interface {v4, v0}, LX/09k;->AUk(Ljava/lang/String;)Ljava/io/InputStream;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    const/4 v7, 0x0

    .line 40
    :try_start_0
    const-string v2, "UTF-8"

    .line 41
    .line 42
    new-instance v0, Ljava/io/InputStreamReader;

    .line 43
    .line 44
    invoke-direct {v0, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Ljava/io/BufferedReader;

    .line 48
    .line 49
    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 50
    .line 51
    .line 52
    const/4 v15, 0x0

    .line 53
    move-object v6, v7

    .line 54
    const/4 v14, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v10

    .line 59
    if-eqz v10, :cond_a

    .line 60
    .line 61
    const-string v0, "."

    .line 62
    .line 63
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 67
    const-string v13, "Illegal line in manifest file: "

    .line 68
    .line 69
    const-string v9, " "

    .line 70
    .line 71
    const/4 v12, 0x1

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    :try_start_2
    const-string v0, "superpack_extension"

    .line 75
    .line 76
    invoke-virtual {v10, v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    .line 82
    const/16 v7, 0x15

    .line 83
    .line 84
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-ge v7, v0, :cond_9

    .line 89
    .line 90
    invoke-virtual {v10, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    goto :goto_0

    .line 95
    :cond_1
    const-string v0, "id"

    .line 96
    .line 97
    invoke-virtual {v10, v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_2

    .line 102
    .line 103
    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    aget-object v6, v0, v12

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_2
    const-string v11, "DexStoreUtils"

    .line 111
    .line 112
    const-string v9, "Ignoring dex metadata pragma: %s"

    .line 113
    .line 114
    new-array v0, v12, [Ljava/lang/Object;

    .line 115
    .line 116
    aput-object v10, v0, v15

    .line 117
    .line 118
    invoke-static {v11, v9, v0}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_3
    invoke-virtual {v10, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v11

    .line 126
    array-length v9, v11

    .line 127
    const/4 v0, 0x3

    .line 128
    if-ne v9, v0, :cond_8

    .line 129
    .line 130
    aget-object v10, v11, v15

    .line 131
    .line 132
    aget-object v0, v11, v12

    .line 133
    .line 134
    new-instance v9, LX/09s;

    .line 135
    .line 136
    invoke-direct {v9, v10, v0, v7}, LX/09s;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v10, v9, LX/09s;->A00:Ljava/lang/String;

    .line 140
    .line 141
    const-string v0, ".dex"

    .line 142
    .line 143
    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-eqz v0, :cond_4

    .line 148
    .line 149
    iget-object v0, v9, LX/09s;->A02:Ljava/lang/String;

    .line 150
    .line 151
    if-nez v0, :cond_4

    .line 152
    .line 153
    const-string v0, "java.vm.version"

    .line 154
    .line 155
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v10

    .line 159
    if-eqz v10, :cond_5

    .line 160
    .line 161
    const-string v0, "1."

    .line 162
    .line 163
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_5

    .line 168
    .line 169
    const-string v0, "0."

    .line 170
    .line 171
    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-nez v0, :cond_5

    .line 176
    .line 177
    goto :goto_0

    .line 178
    :cond_4
    const-string v0, ".jar"

    .line 179
    .line 180
    invoke-virtual {v10, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_6

    .line 185
    .line 186
    iget-object v0, v9, LX/09s;->A02:Ljava/lang/String;

    .line 187
    .line 188
    if-nez v0, :cond_6

    .line 189
    .line 190
    :cond_5
    :goto_1
    invoke-virtual {v8, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_6
    if-nez v14, :cond_7

    .line 196
    .line 197
    const/4 v14, 0x1

    .line 198
    goto :goto_1

    .line 199
    :cond_7
    const-string v0, "More then one compressed dex isn\'t supported!"

    .line 200
    .line 201
    new-instance v1, LX/09u;

    .line 202
    .line 203
    invoke-direct {v1, v0}, LX/09u;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    goto :goto_2

    .line 207
    :cond_8
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v13, v10, v0}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    new-instance v1, LX/09u;

    .line 216
    .line 217
    invoke-direct {v1, v0}, LX/09u;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    goto :goto_2

    .line 221
    :cond_9
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    invoke-static {v13, v10, v0}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    new-instance v1, LX/09u;

    .line 230
    .line 231
    invoke-direct {v1, v0}, LX/09u;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    :goto_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    :cond_a
    invoke-static {v5}, LX/09w;->A01(Ljava/io/Closeable;)V

    .line 236
    .line 237
    .line 238
    invoke-static {v2}, LX/09w;->A01(Ljava/io/Closeable;)V

    .line 239
    .line 240
    .line 241
    new-instance v2, LX/09t;

    .line 242
    .line 243
    invoke-direct {v2, v6, v8}, LX/09t;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 244
    .line 245
    .line 246
    iget-object v0, v2, LX/09t;->A01:Ljava/util/List;

    .line 247
    .line 248
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    if-eqz v0, :cond_b

    .line 253
    .line 254
    const-string v0, "No secondary dex file, trying to start anyway"

    .line 255
    .line 256
    invoke-static {v1, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    const/4 v0, 0x0

    .line 260
    return-object v0

    .line 261
    :cond_b
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 262
    .line 263
    const/16 v0, 0x1d

    .line 264
    .line 265
    if-lt v1, v0, :cond_c

    .line 266
    .line 267
    const/16 v0, 0x21

    .line 268
    .line 269
    if-gt v1, v0, :cond_c

    .line 270
    .line 271
    invoke-static {}, LX/0A2;->A02()V

    .line 272
    .line 273
    .line 274
    move-object/from16 v5, p0

    .line 275
    .line 276
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    const/16 v0, 0x2f

    .line 281
    .line 282
    invoke-static {v1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 283
    .line 284
    .line 285
    move-result v0

    .line 286
    if-eqz v0, :cond_c

    .line 287
    .line 288
    new-instance v0, LX/08v;

    .line 289
    .line 290
    invoke-direct {v0, v5, v4, v2, v3}, LX/08v;-><init>(Landroid/content/Context;LX/09k;LX/09t;Ljava/io/File;)V

    .line 291
    .line 292
    .line 293
    return-object v0

    .line 294
    :cond_c
    new-instance v0, LX/08u;

    .line 295
    .line 296
    invoke-direct {v0, v4, v2, v3}, LX/08u;-><init>(LX/09k;LX/09t;Ljava/io/File;)V

    .line 297
    .line 298
    .line 299
    return-object v0

    .line 300
    :catchall_0
    move-exception v0

    .line 301
    goto :goto_3

    .line 302
    :catchall_1
    move-exception v0

    .line 303
    move-object v7, v2

    .line 304
    :goto_3
    invoke-static {v5}, LX/09w;->A01(Ljava/io/Closeable;)V

    .line 305
    .line 306
    .line 307
    if-eqz v7, :cond_d

    .line 308
    .line 309
    invoke-static {v7}, LX/09w;->A01(Ljava/io/Closeable;)V

    .line 310
    .line 311
    .line 312
    :cond_d
    throw v0
.end method
