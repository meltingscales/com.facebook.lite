.class public final LX/07p;
.super LX/0BK;
.source ""


# instance fields
.field public final A00:Ljava/util/zip/ZipEntry;

.field public final A01:Ljava/util/zip/ZipFile;

.field public final A02:[LX/07r;

.field public final synthetic A03:LX/05C;


# direct methods
.method public constructor <init>(LX/05C;)V
    .locals 4

    .line 0
    iput-object p1, p0, LX/07p;->A03:LX/05C;

    .line 1
    .line 2
    invoke-direct {p0}, LX/0BK;-><init>()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p1, LX/05C;->A04:Ljava/io/File;

    .line 6
    .line 7
    new-instance v3, Ljava/util/zip/ZipFile;

    .line 8
    .line 9
    invoke-direct {v3, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p1, LX/05C;->A05:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iget-object v0, p1, LX/05C;->A06:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v0, 0x0

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    iput-object v1, p0, LX/07p;->A00:Ljava/util/zip/ZipEntry;

    .line 30
    .line 31
    iput-boolean v0, p1, LX/05C;->A01:Z

    .line 32
    .line 33
    iput-object v3, p0, LX/07p;->A01:Ljava/util/zip/ZipFile;

    .line 34
    .line 35
    new-array v0, v0, [LX/07r;

    .line 36
    .line 37
    iput-object v0, p0, LX/07p;->A02:[LX/07r;

    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    new-array v0, v0, [LX/07r;

    .line 41
    .line 42
    iput-object v0, p0, LX/07p;->A02:[LX/07r;

    .line 43
    .line 44
    iput-object v3, p0, LX/07p;->A01:Ljava/util/zip/ZipFile;

    .line 45
    .line 46
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 49
    .line 50
    .line 51
    throw v0
.end method


# virtual methods
.method public final A01(Ljava/io/File;)V
    .locals 11

    .line 0
    iget-object v2, p0, LX/07p;->A00:Ljava/util/zip/ZipEntry;

    .line 1
    .line 2
    if-eqz v2, :cond_7

    .line 3
    .line 4
    iget-object v1, p0, LX/07p;->A03:LX/05C;

    .line 5
    .line 6
    iget-boolean v0, v1, LX/05C;->A01:Z

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    :try_start_0
    iget-object v0, v1, LX/05C;->A00:LX/0B0;

    .line 11
    .line 12
    iget-object v1, v0, LX/0B0;->A01:Ljava/lang/String;

    .line 13
    .line 14
    const/16 v0, 0x2e

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v0, "superpack-jni"

    .line 27
    .line 28
    invoke-static {v0}, LX/0B9;->A09(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, LX/07p;->A01:Ljava/util/zip/ZipFile;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v4
    :try_end_0
    .catch Lcom/facebook/superpack/AssetDecompressionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v4, v1, v0}, Lcom/facebook/superpack/AssetDecompressor;->decompress_legacy(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v2, "SoLoader"

    .line 46
    .line 47
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v0, "Extracted "

    .line 52
    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    array-length v0, v3

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, " libs using Superpack"

    .line 61
    .line 62
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    if-eqz v4, :cond_7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 72
    .line 73
    .line 74
    return-void
    :try_end_2
    .catch Lcom/facebook/superpack/AssetDecompressionException; {:try_start_2 .. :try_end_2} :catch_0

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    if-eqz v4, :cond_0

    .line 77
    .line 78
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    .line 80
    .line 81
    :catchall_1
    :cond_0
    :try_start_4
    throw v0
    :try_end_4
    .catch Lcom/facebook/superpack/AssetDecompressionException; {:try_start_4 .. :try_end_4} :catch_0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    new-instance v0, Ljava/io/IOException;

    .line 84
    .line 85
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 86
    .line 87
    .line 88
    throw v0

    .line 89
    :cond_1
    const/4 v9, 0x0

    .line 90
    iget-object v0, p0, LX/07p;->A01:Ljava/util/zip/ZipFile;

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    :try_start_5
    iget-object v6, v1, LX/05C;->A00:LX/0B0;

    .line 97
    .line 98
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/4 v7, 0x0

    .line 103
    const/4 v8, 0x1

    .line 104
    packed-switch v0, :pswitch_data_0

    .line 105
    .line 106
    .line 107
    const-string v0, "Unknown compression algorithm"

    .line 108
    .line 109
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    :goto_0
    throw v1

    .line 114
    :pswitch_0
    sget-object v0, LX/0B0;->A05:LX/0B0;

    .line 115
    .line 116
    if-ne v6, v0, :cond_2

    .line 117
    .line 118
    const-string v10, "spo"

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    sget-object v0, LX/0B0;->A06:LX/0B0;

    .line 122
    .line 123
    if-ne v6, v0, :cond_3

    .line 124
    .line 125
    const-string v10, "xz"

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_3
    sget-object v0, LX/0B0;->A04:LX/0B0;

    .line 129
    .line 130
    if-ne v6, v0, :cond_4

    .line 131
    .line 132
    const-string v10, "br"

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    const-string v10, "zst"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 136
    .line 137
    :goto_1
    :try_start_6
    const-string v0, "com.facebook.superpack.SuperpackFileInputStream"

    .line 138
    .line 139
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    const-string v3, "createFromSingletonArchiveInputStream"

    .line 144
    .line 145
    const/4 v2, 0x2

    .line 146
    new-array v1, v2, [Ljava/lang/Class;

    .line 147
    .line 148
    const-class v0, Ljava/io/InputStream;

    .line 149
    .line 150
    aput-object v0, v1, v7

    .line 151
    .line 152
    const-class v0, Ljava/lang/String;

    .line 153
    .line 154
    aput-object v0, v1, v8

    .line 155
    .line 156
    invoke-virtual {v4, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    new-array v0, v2, [Ljava/lang/Object;

    .line 161
    .line 162
    aput-object v5, v0, v7

    .line 163
    .line 164
    aput-object v10, v0, v8

    .line 165
    .line 166
    invoke-virtual {v1, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    check-cast v1, Ljava/io/InputStream;

    .line 171
    .line 172
    goto :goto_2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 173
    :catch_1
    :try_start_7
    move-exception v2

    .line 174
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const-string v0, "Error during Superpack decompression for archive from "

    .line 179
    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object v0, v6, LX/0B0;->A00:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    new-instance v1, LX/0AJ;

    .line 190
    .line 191
    invoke-direct {v1, v0, v2}, LX/0AJ;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 192
    .line 193
    .line 194
    goto :goto_0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 195
    :pswitch_1
    :try_start_8
    const-string v0, "com.facebook.zstd.ZstdInputStream"

    .line 196
    .line 197
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    new-array v1, v8, [Ljava/lang/Class;

    .line 202
    .line 203
    const-class v0, Ljava/io/InputStream;

    .line 204
    .line 205
    aput-object v0, v1, v7

    .line 206
    .line 207
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    new-array v0, v8, [Ljava/lang/Object;

    .line 212
    .line 213
    aput-object v5, v0, v7

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    check-cast v1, Ljava/io/InputStream;

    .line 220
    .line 221
    goto :goto_2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 222
    :catch_2
    :try_start_9
    move-exception v2

    .line 223
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    const-string v0, "Error during Zstd decompression for archive from "

    .line 228
    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    iget-object v0, v6, LX/0B0;->A00:Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    new-instance v1, LX/0AJ;

    .line 239
    .line 240
    invoke-direct {v1, v0, v2}, LX/0AJ;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :pswitch_2
    new-instance v1, Lcom/facebook/xzdecoder/XzInputStream;

    .line 246
    .line 247
    invoke-direct {v1, v5}, Lcom/facebook/xzdecoder/XzInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 248
    .line 249
    .line 250
    :goto_2
    iget-object v0, p0, LX/07p;->A02:[LX/07r;

    .line 251
    .line 252
    array-length v0, v0

    .line 253
    if-ge v7, v0, :cond_5

    .line 254
    .line 255
    const-string v0, "shouldExtract"

    .line 256
    .line 257
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    throw v0

    .line 262
    :cond_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :catchall_2
    move-exception v0

    .line 270
    if-eqz v5, :cond_6

    .line 271
    .line 272
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 273
    .line 274
    .line 275
    :cond_6
    throw v0

    .line 276
    :cond_7
    return-void

    .line 277
    nop

    .line 278
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final A02()[LX/0BJ;
    .locals 1

    .line 0
    iget-object v0, p0, LX/07p;->A02:[LX/07r;

    .line 1
    .line 2
    return-object v0
.end method

.method public final close()V
    .locals 1

    .line 0
    iget-object v0, p0, LX/07p;->A01:Ljava/util/zip/ZipFile;

    .line 1
    .line 2
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 3
    .line 4
    .line 5
    return-void
.end method
