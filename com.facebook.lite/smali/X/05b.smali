.class public final LX/05b;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A02:[B

.field public static final A03:[C


# instance fields
.field public final A00:LX/057;

.field public final A01:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    const/16 v0, 0x64

    .line 1
    .line 2
    new-array v0, v0, [B

    .line 3
    .line 4
    sput-object v0, LX/05b;->A02:[B

    .line 5
    .line 6
    const/16 v0, 0x10

    .line 7
    .line 8
    new-array v0, v0, [C

    .line 9
    .line 10
    fill-array-data v0, :array_0

    .line 11
    .line 12
    .line 13
    sput-object v0, LX/05b;->A03:[C

    .line 14
    .line 15
    return-void

    .line 16
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 268435456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268435457
    .line 268435458
    .line 268435459
    return-void
.end method

.method public constructor <init>(LX/057;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, LX/05b;->A01:Ljava/util/Map;

    .line 9
    .line 10
    iput-object p1, p0, LX/05b;->A00:LX/057;

    .line 11
    .line 12
    return-void
.end method

.method public static A00(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .line 0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 1
    .line 2
    .line 3
    move-result v4

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/16 v1, 0x20

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    if-lez v4, :cond_5

    .line 15
    .line 16
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    const-string v0, "\\ "

    .line 23
    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    :cond_0
    :goto_0
    if-ge v2, v4, :cond_5

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    packed-switch v5, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    :pswitch_0
    const/16 v6, 0x5c

    .line 38
    .line 39
    if-eqz p1, :cond_2

    .line 40
    .line 41
    if-eq v5, v1, :cond_4

    .line 42
    .line 43
    :cond_2
    if-eq v5, v6, :cond_4

    .line 44
    .line 45
    const/16 v0, 0x23

    .line 46
    .line 47
    if-eq v5, v0, :cond_4

    .line 48
    .line 49
    const/16 v0, 0x21

    .line 50
    .line 51
    if-eq v5, v0, :cond_4

    .line 52
    .line 53
    const/16 v0, 0x3a

    .line 54
    .line 55
    if-eq v5, v0, :cond_4

    .line 56
    .line 57
    const/16 v0, 0x3d

    .line 58
    .line 59
    if-eq v5, v0, :cond_4

    .line 60
    .line 61
    if-lt v5, v1, :cond_3

    .line 62
    .line 63
    const/16 v0, 0x7e

    .line 64
    .line 65
    if-gt v5, v0, :cond_3

    .line 66
    .line 67
    :goto_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    const-string v0, "\\u"

    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    sget-object v6, LX/05b;->A03:[C

    .line 79
    .line 80
    ushr-int/lit8 v0, v5, 0xc

    .line 81
    .line 82
    and-int/lit8 v0, v0, 0xf

    .line 83
    .line 84
    aget-char v0, v6, v0

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    ushr-int/lit8 v0, v5, 0x8

    .line 90
    .line 91
    and-int/lit8 v0, v0, 0xf

    .line 92
    .line 93
    aget-char v0, v6, v0

    .line 94
    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    ushr-int/lit8 v0, v5, 0x4

    .line 99
    .line 100
    and-int/lit8 v0, v0, 0xf

    .line 101
    .line 102
    aget-char v0, v6, v0

    .line 103
    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    ushr-int/lit8 v0, v5, 0x0

    .line 108
    .line 109
    and-int/lit8 v0, v0, 0xf

    .line 110
    .line 111
    aget-char v5, v6, v0

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :pswitch_1
    const-string v0, "\\t"

    .line 119
    .line 120
    goto :goto_3

    .line 121
    :pswitch_2
    const-string v0, "\\n"

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :pswitch_3
    const-string v0, "\\f"

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :pswitch_4
    const-string v0, "\\r"

    .line 128
    .line 129
    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    return-object v0

    .line 138
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static A01(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 2

    .line 0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 1
    .line 2
    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p2, p1, v0}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p3, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    .line 23
    .line 24
    :catchall_1
    throw v0
.end method


# virtual methods
.method public final A02(Ljava/io/File;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 18

    .line 0
    move-object/from16 v4, p2

    .line 1
    .line 2
    const-string v0, "perf"

    .line 3
    .line 4
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    move-object/from16 v5, p1

    .line 9
    .line 10
    move-object/from16 v3, p3

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    :try_start_0
    move-object/from16 v6, p0

    .line 15
    .line 16
    iget-object v2, v6, LX/05b;->A01:Ljava/util/Map;

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, LX/07W;

    .line 27
    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    iget-object v0, v6, LX/05b;->A00:LX/057;

    .line 31
    .line 32
    invoke-virtual {v0, v5}, LX/057;->A00(Ljava/io/File;)LX/07W;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, LX/02y;->A00(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object v2, v1, LX/07W;->A00:Ljava/nio/MappedByteBuffer;

    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/nio/Buffer;->clear()Ljava/nio/Buffer;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/util/Map$Entry;

    .line 70
    .line 71
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    const/4 v0, 0x1

    .line 88
    invoke-static {v1, v0}, LX/05b;->A00(Ljava/lang/String;Z)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "Ascii"

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 99
    .line 100
    .line 101
    const-string v0, "="

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 108
    .line 109
    .line 110
    const/4 v0, 0x0

    .line 111
    invoke-static {v6, v0}, LX/05b;->A00(Ljava/lang/String;Z)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 120
    .line 121
    .line 122
    const-string v0, "\n"

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    const-string v1, "#"

    .line 133
    .line 134
    const-string v0, "Ascii"

    .line 135
    .line 136
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 141
    .line 142
    .line 143
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :catchall_0
    invoke-static {}, LX/08w;->A00()V

    .line 145
    .line 146
    .line 147
    new-instance v2, Ljava/io/FileOutputStream;

    .line 148
    .line 149
    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 150
    .line 151
    .line 152
    :try_start_1
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const-string v0, "fallover "

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    if-nez p2, :cond_2

    .line 162
    .line 163
    const-string v4, ""

    .line 164
    .line 165
    :cond_2
    invoke-static {v4, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v3, v2, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto/16 :goto_6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 173
    .line 174
    :catchall_1
    move-exception v0

    .line 175
    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 176
    .line 177
    .line 178
    throw v0

    .line 179
    :cond_3
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    const-string v0, "_tmp"

    .line 191
    .line 192
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    new-instance v8, Ljava/io/File;

    .line 197
    .line 198
    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    if-eqz p2, :cond_b

    .line 202
    .line 203
    invoke-static {v4}, LX/07v;->A00(Ljava/lang/String;)LX/07v;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    iget-object v7, v2, LX/07v;->A03:Ljava/lang/Object;

    .line 208
    .line 209
    monitor-enter v7

    .line 210
    :try_start_3
    iget-object v6, v2, LX/07v;->A02:Ljava/io/File;

    .line 211
    .line 212
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    const-string v0, "Did you call FixedLengthFiles.init()? - pool: "

    .line 217
    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v0, v2, LX/07v;->A04:Ljava/lang/String;

    .line 222
    .line 223
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-static {v6, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    const/4 v10, 0x0

    .line 243
    const/4 v1, 0x0

    .line 244
    if-nez v0, :cond_4

    .line 245
    .line 246
    const/4 v1, 0x1

    .line 247
    :cond_4
    const-string v0, "Destination file cannot be in the pool directory"

    .line 248
    .line 249
    invoke-static {v0, v1}, LX/02h;->A03(Ljava/lang/Object;Z)V

    .line 250
    .line 251
    .line 252
    iget-object v0, v2, LX/07v;->A02:Ljava/io/File;

    .line 253
    .line 254
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 255
    .line 256
    .line 257
    move-result-object v1

    .line 258
    const/4 v6, 0x0

    .line 259
    if-eqz v1, :cond_9

    .line 260
    .line 261
    array-length v0, v1

    .line 262
    if-lez v0, :cond_9

    .line 263
    .line 264
    aget-object v0, v1, v10

    .line 265
    .line 266
    invoke-virtual {v0, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 271
    .line 272
    :try_start_4
    const-string v0, "rw"

    .line 273
    .line 274
    new-instance v9, Ljava/io/RandomAccessFile;

    .line 275
    .line 276
    invoke-direct {v9, v8, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 277
    .line 278
    .line 279
    :try_start_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 280
    :try_start_6
    const-string v7, "# "

    .line 281
    .line 282
    const-string v6, "Ascii"

    .line 283
    .line 284
    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 296
    .line 297
    .line 298
    const-string v2, "\n"

    .line 299
    .line 300
    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 301
    .line 302
    .line 303
    move-result-object v0

    .line 304
    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v3}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 312
    .line 313
    .line 314
    move-result-object v17

    .line 315
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_6

    .line 320
    .line 321
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    move-result-object v1

    .line 325
    check-cast v1, Ljava/util/Map$Entry;

    .line 326
    .line 327
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v11

    .line 335
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    const/4 v0, 0x1

    .line 344
    invoke-static {v11, v0}, LX/05b;->A00(Ljava/lang/String;Z)Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 349
    .line 350
    .line 351
    move-result-object v12

    .line 352
    invoke-static {v1, v10}, LX/05b;->A00(Ljava/lang/String;Z)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 357
    .line 358
    .line 359
    move-result-object v11

    .line 360
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 361
    .line 362
    .line 363
    move-result-wide v15

    .line 364
    array-length v0, v12

    .line 365
    int-to-long v0, v0

    .line 366
    add-long/2addr v15, v0

    .line 367
    array-length v0, v11

    .line 368
    int-to-long v0, v0

    .line 369
    add-long/2addr v15, v0

    .line 370
    const-wide/16 v0, 0x19

    .line 371
    .line 372
    add-long/2addr v15, v0

    .line 373
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    .line 374
    .line 375
    .line 376
    move-result-wide v13

    .line 377
    cmp-long v0, v15, v13

    .line 378
    .line 379
    if-lez v0, :cond_5

    .line 380
    .line 381
    const-string v0, "trimmed_report=true\n#"

    .line 382
    .line 383
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 384
    .line 385
    .line 386
    move-result-object v0

    .line 387
    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 391
    .line 392
    .line 393
    const-string v0, " store (too large) "

    .line 394
    .line 395
    invoke-static {v8, v4, v0, v3}, LX/05b;->A01(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 396
    .line 397
    .line 398
    goto :goto_4

    .line 399
    :cond_5
    invoke-virtual {v9, v12}, Ljava/io/RandomAccessFile;->write([B)V

    .line 400
    .line 401
    .line 402
    const-string v0, "="

    .line 403
    .line 404
    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 405
    .line 406
    .line 407
    move-result-object v0

    .line 408
    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v9, v11}, Ljava/io/RandomAccessFile;->write([B)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-virtual {v9, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 419
    .line 420
    .line 421
    goto :goto_1

    .line 422
    :cond_6
    invoke-virtual {v7, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 423
    .line 424
    .line 425
    move-result-object v11

    .line 426
    :goto_2
    invoke-virtual {v9, v11}, Ljava/io/RandomAccessFile;->write([B)V

    .line 427
    .line 428
    .line 429
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 430
    .line 431
    .line 432
    move-result-wide v3

    .line 433
    sget-object v11, LX/05b;->A02:[B

    .line 434
    .line 435
    const/16 v0, 0x64

    .line 436
    .line 437
    int-to-long v6, v0

    .line 438
    add-long/2addr v3, v6

    .line 439
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    .line 440
    .line 441
    .line 442
    move-result-wide v1

    .line 443
    cmp-long v0, v3, v1

    .line 444
    .line 445
    if-gez v0, :cond_7

    .line 446
    .line 447
    goto :goto_2

    .line 448
    :cond_7
    :goto_3
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 449
    .line 450
    .line 451
    move-result-wide v3

    .line 452
    add-long/2addr v3, v6

    .line 453
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->length()J

    .line 454
    .line 455
    .line 456
    move-result-wide v1

    .line 457
    cmp-long v0, v3, v1

    .line 458
    .line 459
    if-gez v0, :cond_8

    .line 460
    .line 461
    invoke-virtual {v9, v10}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 462
    .line 463
    .line 464
    goto :goto_3

    .line 465
    :cond_8
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 466
    .line 467
    .line 468
    :goto_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    .line 469
    .line 470
    .line 471
    goto :goto_5

    .line 472
    :catch_0
    :try_start_7
    move-exception v2

    .line 473
    invoke-static {}, LX/08w;->A00()V

    .line 474
    .line 475
    .line 476
    const-string v1, "lacrima"

    .line 477
    .line 478
    const-string v0, "Cannot reserve file"

    .line 479
    .line 480
    invoke-static {v1, v0, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 481
    .line 482
    .line 483
    :cond_9
    monitor-exit v7

    .line 484
    move-object v9, v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 485
    :try_start_8
    const-string v0, " store (reserve)"

    .line 486
    .line 487
    invoke-static {v8, v4, v0, v3}, LX/05b;->A01(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 488
    .line 489
    .line 490
    goto :goto_5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 491
    :catchall_2
    move-exception v0

    .line 492
    if-eqz v9, :cond_a

    .line 493
    .line 494
    :try_start_9
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 495
    .line 496
    .line 497
    :catchall_3
    :cond_a
    throw v0

    .line 498
    :catchall_4
    :try_start_a
    move-exception v1

    .line 499
    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 500
    throw v1

    .line 501
    :cond_b
    const-string v1, ""

    .line 502
    .line 503
    const-string v0, "no pool"

    .line 504
    .line 505
    invoke-static {v8, v1, v0, v3}, LX/05b;->A01(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;)V

    .line 506
    .line 507
    .line 508
    :goto_5
    invoke-virtual {v8, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 509
    .line 510
    .line 511
    move-result v0

    .line 512
    if-nez v0, :cond_c

    .line 513
    .line 514
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    const-string v0, "Could not rename file: "

    .line 519
    .line 520
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    new-instance v1, Ljava/io/IOException;

    .line 532
    .line 533
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    throw v1

    .line 537
    :goto_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 538
    .line 539
    .line 540
    :cond_c
    return-void
.end method
