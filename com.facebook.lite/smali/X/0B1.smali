.class public final LX/0B1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Ljava/util/List;

.field public static A01:Ljava/util/Map;

.field public static A02:[B

.field public static final A03:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public static volatile A04:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 1
    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, LX/0B1;->A03:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    .line 7
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

.method public static A00(LX/046;Ljava/nio/ByteBuffer;J)J
    .locals 1

    .line 0
    const/4 v0, 0x4

    .line 1
    invoke-static {p0, p1, v0, p2, p3}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    int-to-long p1, v0

    .line 9
    const-wide v0, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    and-long/2addr p1, v0

    .line 15
    return-wide p1
.end method

.method public static A01(I)Ljava/lang/String;
    .locals 8

    .line 0
    sget-object v0, LX/0B1;->A00:Ljava/util/List;

    .line 1
    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-lt p0, v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    return-object v0

    .line 10
    :cond_0
    sget-object v0, LX/0B1;->A00:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Number;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    move v2, p0

    .line 23
    :goto_0
    sget-object v7, LX/0B1;->A02:[B

    .line 24
    .line 25
    array-length v0, v7

    .line 26
    if-ge v2, v0, :cond_1

    .line 27
    .line 28
    aget-byte v1, v7, v2

    .line 29
    .line 30
    const/16 v0, 0x20

    .line 31
    .line 32
    if-le v1, v0, :cond_1

    .line 33
    .line 34
    add-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    sub-int/2addr v2, p0

    .line 38
    const/4 v6, 0x6

    .line 39
    add-int/lit8 v4, v2, 0x6

    .line 40
    .line 41
    new-array v3, v4, [C

    .line 42
    .line 43
    const/16 v0, 0x6c

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    aput-char v0, v3, v5

    .line 47
    .line 48
    const/16 v0, 0x69

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    aput-char v0, v3, v2

    .line 52
    .line 53
    const/16 v1, 0x62

    .line 54
    .line 55
    const/4 v0, 0x2

    .line 56
    aput-char v1, v3, v0

    .line 57
    .line 58
    :goto_1
    sub-int v0, v4, v6

    .line 59
    .line 60
    if-ge v5, v0, :cond_2

    .line 61
    .line 62
    add-int/lit8 v1, v5, 0x3

    .line 63
    .line 64
    add-int v0, p0, v5

    .line 65
    .line 66
    aget-byte v0, v7, v0

    .line 67
    .line 68
    int-to-char v0, v0

    .line 69
    aput-char v0, v3, v1

    .line 70
    .line 71
    add-int/lit8 v5, v5, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    add-int/lit8 v1, v4, -0x3

    .line 75
    .line 76
    const/16 v0, 0x2e

    .line 77
    .line 78
    aput-char v0, v3, v1

    .line 79
    .line 80
    add-int/lit8 v1, v4, -0x2

    .line 81
    .line 82
    const/16 v0, 0x73

    .line 83
    .line 84
    aput-char v0, v3, v1

    .line 85
    .line 86
    sub-int/2addr v4, v2

    .line 87
    const/16 v0, 0x6f

    .line 88
    .line 89
    aput-char v0, v3, v4

    .line 90
    .line 91
    new-instance v0, Ljava/lang/String;

    .line 92
    .line 93
    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    .line 94
    .line 95
    .line 96
    return-object v0
.end method

.method public static A02(II)V
    .locals 2

    .line 0
    sget-object v0, LX/0B1;->A00:Ljava/util/List;

    .line 1
    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    sget-object v0, LX/0B1;->A01:Ljava/util/Map;

    .line 10
    .line 11
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/util/List;

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v0, LX/0B1;->A01:Ljava/util/Map;

    .line 28
    .line 29
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static A03(LX/046;Ljava/nio/ByteBuffer;IJ)V
    .locals 3

    .line 0
    const/4 v2, 0x0

    .line 1
    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, p2}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 5
    .line 6
    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p0, p1, p3, p4}, LX/046;->AWF(Ljava/nio/ByteBuffer;J)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v0, -0x1

    .line 18
    if-eq v1, v0, :cond_0

    .line 19
    .line 20
    int-to-long v0, v1

    .line 21
    add-long/2addr p3, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-gtz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const-string v1, "ELF file truncated"

    .line 34
    .line 35
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0
.end method

.method public static A04(Ljava/io/File;B)V
    .locals 2

    .line 0
    const-string v0, "state"

    .line 1
    .line 2
    invoke-static {p0, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v0, "rw"

    .line 7
    .line 8
    new-instance p0, Ljava/io/RandomAccessFile;

    .line 9
    .line 10
    invoke-direct {p0, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    :try_start_1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    .line 42
    .line 43
    :catchall_1
    throw v0
.end method

.method public static A05(Landroid/content/Context;)Z
    .locals 9

    .line 0
    sget-boolean v0, LX/0B1;->A04:Z

    .line 1
    .line 2
    if-eqz v0, :cond_1

    .line 3
    .line 4
    const-class v1, LX/0B1;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    sget-boolean v0, LX/0B1;->A04:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    monitor-exit v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "Trying to initialize NativeDeps but it was already initialized"

    .line 14
    .line 15
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    throw v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0

    .line 23
    :cond_1
    :goto_0
    invoke-static {p0}, LX/000;->A01(Landroid/content/Context;)Ljava/io/File;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {p0, v0}, LX/0BF;->A0A(Landroid/content/Context;Ljava/io/File;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 36
    .line 37
    const-string v0, "native_deps"

    .line 38
    .line 39
    new-instance v1, Ljava/io/File;

    .line 40
    .line 41
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const-string v0, "deps"

    .line 45
    .line 46
    invoke-static {v1, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v3, Ljava/io/FileInputStream;

    .line 51
    .line 52
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 53
    .line 54
    .line 55
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 56
    .line 57
    .line 58
    move-result-wide v1

    .line 59
    long-to-int v0, v1

    .line 60
    invoke-static {v3, v0}, LX/0B1;->A06(Ljava/io/InputStream;I)[B

    .line 61
    .line 62
    .line 63
    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 65
    .line 66
    .line 67
    if-eqz v5, :cond_4

    .line 68
    .line 69
    array-length v4, v5

    .line 70
    if-eqz v4, :cond_3

    .line 71
    .line 72
    array-length v1, v6

    .line 73
    const/4 v0, 0x4

    .line 74
    add-int/lit8 v3, v4, 0x4

    .line 75
    .line 76
    if-lt v1, v3, :cond_3

    .line 77
    .line 78
    invoke-static {v6, v4, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    add-int/2addr v0, v3

    .line 87
    if-ne v1, v0, :cond_3

    .line 88
    .line 89
    const/4 v2, 0x0

    .line 90
    :cond_2
    aget-byte v1, v5, v2

    .line 91
    .line 92
    aget-byte v0, v6, v2

    .line 93
    .line 94
    if-ne v1, v0, :cond_3

    .line 95
    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    if-lt v2, v4, :cond_2

    .line 99
    .line 100
    const/4 v0, -0x1

    .line 101
    if-ne v3, v0, :cond_5

    .line 102
    .line 103
    :catch_0
    :cond_3
    const/4 v0, 0x0

    .line 104
    return v0

    .line 105
    :cond_4
    const/4 v3, 0x0

    .line 106
    :cond_5
    move v8, v3

    .line 107
    :goto_1
    array-length v7, v6

    .line 108
    if-ge v8, v7, :cond_6

    .line 109
    .line 110
    aget-byte v1, v6, v8

    .line 111
    .line 112
    const/16 v0, 0xa

    .line 113
    .line 114
    if-eq v1, v0, :cond_6

    .line 115
    .line 116
    add-int/lit8 v8, v8, 0x1

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :cond_6
    if-ge v8, v7, :cond_7

    .line 120
    .line 121
    add-int/lit8 v8, v8, 0x1

    .line 122
    .line 123
    :cond_7
    if-ge v8, v7, :cond_3

    .line 124
    .line 125
    sub-int v1, v8, v3

    .line 126
    .line 127
    const/4 p0, 0x1

    .line 128
    sub-int/2addr v1, p0

    .line 129
    :try_start_2
    new-instance v0, Ljava/lang/String;

    .line 130
    .line 131
    invoke-direct {v0, v6, v3, v1}, Ljava/lang/String;-><init>([BII)V

    .line 132
    .line 133
    .line 134
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-lez v5, :cond_3
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    .line 140
    int-to-float v0, v5

    .line 141
    const/high16 v2, 0x3f800000    # 1.0f

    .line 142
    .line 143
    div-float/2addr v0, v2

    .line 144
    float-to-int v0, v0

    .line 145
    add-int/lit8 v1, v0, 0x1

    .line 146
    .line 147
    new-instance v0, Ljava/util/HashMap;

    .line 148
    .line 149
    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    .line 150
    .line 151
    .line 152
    sput-object v0, LX/0B1;->A01:Ljava/util/Map;

    .line 153
    .line 154
    new-instance v0, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 157
    .line 158
    .line 159
    sput-object v0, LX/0B1;->A00:Ljava/util/List;

    .line 160
    .line 161
    :goto_2
    const/16 v4, 0x1505

    .line 162
    .line 163
    move v3, v8

    .line 164
    :goto_3
    :try_start_3
    aget-byte v2, v6, v3

    .line 165
    .line 166
    const/16 v1, 0x20

    .line 167
    .line 168
    if-le v2, v1, :cond_8

    .line 169
    .line 170
    shl-int/lit8 v0, v4, 0x5

    .line 171
    .line 172
    add-int/2addr v0, v4

    .line 173
    add-int v4, v0, v2

    .line 174
    .line 175
    add-int/lit8 v3, v3, 0x1

    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_8
    invoke-static {v4, v8}, LX/0B1;->A02(II)V

    .line 179
    .line 180
    .line 181
    const/4 v0, 0x0

    .line 182
    if-eq v2, v1, :cond_9

    .line 183
    .line 184
    const/4 v0, 0x1

    .line 185
    :cond_9
    :goto_4
    add-int/lit8 v8, v3, 0x1

    .line 186
    .line 187
    if-eqz v0, :cond_a

    .line 188
    .line 189
    goto :goto_2
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    .line 190
    :cond_a
    :goto_5
    :try_start_4
    aget-byte v1, v6, v8

    .line 191
    .line 192
    const/16 v0, 0xa

    .line 193
    .line 194
    if-eq v1, v0, :cond_b

    .line 195
    .line 196
    add-int/lit8 v8, v8, 0x1

    .line 197
    .line 198
    goto :goto_5

    .line 199
    :cond_b
    const/4 v0, 0x1

    .line 200
    move v3, v8

    .line 201
    goto :goto_4
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_2

    .line 202
    :catch_1
    if-eq v8, v7, :cond_c

    .line 203
    .line 204
    invoke-static {v4, v8}, LX/0B1;->A02(II)V

    .line 205
    .line 206
    .line 207
    :catch_2
    :cond_c
    sget-object v0, LX/0B1;->A00:Ljava/util/List;

    .line 208
    .line 209
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-ne v0, v5, :cond_3

    .line 214
    .line 215
    sput-object v6, LX/0B1;->A02:[B

    .line 216
    .line 217
    sput-boolean p0, LX/0B1;->A04:Z

    .line 218
    .line 219
    const/4 v0, 0x1

    .line 220
    return v0

    .line 221
    :catchall_1
    move-exception v0

    .line 222
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 223
    .line 224
    .line 225
    :catchall_2
    throw v0
.end method

.method public static A06(Ljava/io/InputStream;I)[B
    .locals 4

    .line 0
    new-array v3, p1, [B

    .line 1
    .line 2
    const/4 v2, 0x0

    .line 3
    :cond_0
    if-ge v2, p1, :cond_2

    .line 4
    .line 5
    sub-int v0, p1, v2

    .line 6
    .line 7
    invoke-virtual {p0, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v0, -0x1

    .line 12
    if-eq v1, v0, :cond_1

    .line 13
    .line 14
    add-int/2addr v2, v1

    .line 15
    if-le v2, p1, :cond_0

    .line 16
    .line 17
    const-string v0, "Read more bytes than expected"

    .line 18
    .line 19
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    throw v1

    .line 24
    :cond_1
    const-string v0, "EOF found unexpectedly"

    .line 25
    .line 26
    new-instance v1, Ljava/io/EOFException;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw v1

    .line 32
    :cond_2
    return-object v3
.end method

.method public static A07(LX/046;)[Ljava/lang/String;
    .locals 30

    .line 0
    const/16 v13, 0x8

    .line 1
    .line 2
    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 3
    .line 4
    .line 5
    move-result-object v8

    .line 6
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 7
    .line 8
    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 9
    .line 10
    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    move-object/from16 v9, p0

    .line 14
    .line 15
    invoke-static {v9, v8, v0, v1}, LX/0B1;->A00(LX/046;Ljava/nio/ByteBuffer;J)J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    const-wide/32 v2, 0x464c457f

    .line 20
    .line 21
    .line 22
    cmp-long v0, v4, v2

    .line 23
    .line 24
    if-nez v0, :cond_1c

    .line 25
    .line 26
    const-wide/16 v0, 0x4

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-static {v9, v8, v2, v0, v1}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    and-int/lit16 v0, v0, 0xff

    .line 37
    .line 38
    int-to-short v0, v0

    .line 39
    const/16 p0, 0x1

    .line 40
    .line 41
    if-eq v0, v2, :cond_0

    .line 42
    .line 43
    const/16 p0, 0x0

    .line 44
    .line 45
    :cond_0
    const-wide/16 v0, 0x5

    .line 46
    .line 47
    invoke-static {v9, v8, v2, v0, v1}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    and-int/lit16 v0, v0, 0xff

    .line 55
    .line 56
    int-to-short v0, v0

    .line 57
    const/4 v12, 0x2

    .line 58
    if-ne v0, v12, :cond_1

    .line 59
    .line 60
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 61
    .line 62
    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 63
    .line 64
    .line 65
    :cond_1
    const-wide/16 v10, 0x1c

    .line 66
    .line 67
    const-wide/16 v2, 0x20

    .line 68
    .line 69
    if-eqz p0, :cond_15

    .line 70
    .line 71
    invoke-static {v9, v8, v10, v11}, LX/0B1;->A00(LX/046;Ljava/nio/ByteBuffer;J)J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    const-wide/16 v0, 0x2c

    .line 76
    .line 77
    invoke-static {v9, v8, v12, v0, v1}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getShort()S

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    const v14, 0xffff

    .line 85
    .line 86
    .line 87
    and-int/2addr v0, v14

    .line 88
    int-to-long v4, v0

    .line 89
    const-wide/16 v0, 0x2a

    .line 90
    .line 91
    :goto_0
    invoke-static {v9, v8, v12, v0, v1}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getShort()S

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    and-int/2addr v12, v14

    .line 99
    const-wide/32 v14, 0xffff

    .line 100
    .line 101
    .line 102
    cmp-long v0, v4, v14

    .line 103
    .line 104
    if-nez v0, :cond_2

    .line 105
    .line 106
    if-eqz p0, :cond_14

    .line 107
    .line 108
    invoke-static {v9, v8, v2, v3}, LX/0B1;->A00(LX/046;Ljava/nio/ByteBuffer;J)J

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    add-long/2addr v0, v10

    .line 113
    :goto_1
    invoke-static {v9, v8, v0, v1}, LX/0B1;->A00(LX/046;Ljava/nio/ByteBuffer;J)J

    .line 114
    .line 115
    .line 116
    move-result-wide v4

    .line 117
    :cond_2
    move-wide v2, v6

    .line 118
    const-wide/16 v16, 0x0

    .line 119
    .line 120
    :goto_2
    const-wide/16 v28, 0x1

    .line 121
    .line 122
    const-wide/16 v26, 0x8

    .line 123
    .line 124
    cmp-long v0, v16, v4

    .line 125
    .line 126
    if-gez v0, :cond_1b

    .line 127
    .line 128
    const-wide/16 v24, 0x0

    .line 129
    .line 130
    add-long v0, v2, v24

    .line 131
    .line 132
    invoke-static {v9, v8, v0, v1}, LX/0B1;->A00(LX/046;Ljava/nio/ByteBuffer;J)J

    .line 133
    .line 134
    .line 135
    move-result-wide v14

    .line 136
    const-wide/16 v10, 0x2

    .line 137
    .line 138
    cmp-long v0, v14, v10

    .line 139
    .line 140
    if-nez v0, :cond_13

    .line 141
    .line 142
    if-eqz p0, :cond_12

    .line 143
    .line 144
    const-wide/16 v0, 0x4

    .line 145
    .line 146
    add-long/2addr v2, v0

    .line 147
    invoke-static {v9, v8, v2, v3}, LX/0B1;->A00(LX/046;Ljava/nio/ByteBuffer;J)J

    .line 148
    .line 149
    .line 150
    move-result-wide v22

    .line 151
    :goto_3
    cmp-long v0, v22, v24

    .line 152
    .line 153
    if-eqz v0, :cond_1b

    .line 154
    .line 155
    move-wide/from16 v18, v22

    .line 156
    .line 157
    const-wide/16 v20, 0x0

    .line 158
    .line 159
    const/4 v2, 0x0

    .line 160
    :cond_3
    add-long v0, v18, v24

    .line 161
    .line 162
    if-eqz p0, :cond_11

    .line 163
    .line 164
    invoke-static {v9, v8, v0, v1}, LX/0B1;->A00(LX/046;Ljava/nio/ByteBuffer;J)J

    .line 165
    .line 166
    .line 167
    move-result-wide v14

    .line 168
    :goto_4
    const-string v10, "malformed DT_NEEDED section"

    .line 169
    .line 170
    cmp-long v0, v14, v28

    .line 171
    .line 172
    if-nez v0, :cond_f

    .line 173
    .line 174
    const v0, 0x7fffffff

    .line 175
    .line 176
    .line 177
    if-eq v2, v0, :cond_1a

    .line 178
    .line 179
    add-int/lit8 v2, v2, 0x1

    .line 180
    .line 181
    :cond_4
    :goto_5
    const-wide/16 v16, 0x10

    .line 182
    .line 183
    if-eqz p0, :cond_e

    .line 184
    .line 185
    const-wide/16 v0, 0x8

    .line 186
    .line 187
    :goto_6
    add-long v18, v18, v0

    .line 188
    .line 189
    cmp-long v0, v14, v24

    .line 190
    .line 191
    if-nez v0, :cond_3

    .line 192
    .line 193
    cmp-long v0, v20, v24

    .line 194
    .line 195
    if-eqz v0, :cond_19

    .line 196
    .line 197
    const/4 v3, 0x0

    .line 198
    :goto_7
    int-to-long v0, v3

    .line 199
    cmp-long v11, v0, v4

    .line 200
    .line 201
    if-gez v11, :cond_18

    .line 202
    .line 203
    add-long v0, v6, v24

    .line 204
    .line 205
    invoke-static {v9, v8, v0, v1}, LX/0B1;->A00(LX/046;Ljava/nio/ByteBuffer;J)J

    .line 206
    .line 207
    .line 208
    move-result-wide v14

    .line 209
    cmp-long v0, v14, v28

    .line 210
    .line 211
    if-nez v0, :cond_d

    .line 212
    .line 213
    if-eqz p0, :cond_c

    .line 214
    .line 215
    add-long v0, v6, v26

    .line 216
    .line 217
    invoke-static {v9, v8, v0, v1}, LX/0B1;->A00(LX/046;Ljava/nio/ByteBuffer;J)J

    .line 218
    .line 219
    .line 220
    move-result-wide v16

    .line 221
    const-wide/16 v14, 0x14

    .line 222
    .line 223
    add-long v0, v6, v14

    .line 224
    .line 225
    invoke-static {v9, v8, v0, v1}, LX/0B1;->A00(LX/046;Ljava/nio/ByteBuffer;J)J

    .line 226
    .line 227
    .line 228
    move-result-wide v14

    .line 229
    :goto_8
    cmp-long v0, v16, v20

    .line 230
    .line 231
    if-gtz v0, :cond_d

    .line 232
    .line 233
    add-long v14, v14, v16

    .line 234
    .line 235
    cmp-long v0, v20, v14

    .line 236
    .line 237
    if-gez v0, :cond_d

    .line 238
    .line 239
    if-eqz p0, :cond_b

    .line 240
    .line 241
    const-wide/16 v0, 0x4

    .line 242
    .line 243
    add-long/2addr v6, v0

    .line 244
    invoke-static {v9, v8, v6, v7}, LX/0B1;->A00(LX/046;Ljava/nio/ByteBuffer;J)J

    .line 245
    .line 246
    .line 247
    move-result-wide v18

    .line 248
    :goto_9
    sub-long v20, v20, v16

    .line 249
    .line 250
    add-long v18, v18, v20

    .line 251
    .line 252
    cmp-long v0, v18, v24

    .line 253
    .line 254
    if-eqz v0, :cond_18

    .line 255
    .line 256
    new-array v4, v2, [Ljava/lang/String;

    .line 257
    .line 258
    const/4 v3, 0x0

    .line 259
    :cond_5
    add-long v0, v22, v24

    .line 260
    .line 261
    if-eqz p0, :cond_a

    .line 262
    .line 263
    invoke-static {v9, v8, v0, v1}, LX/0B1;->A00(LX/046;Ljava/nio/ByteBuffer;J)J

    .line 264
    .line 265
    .line 266
    move-result-wide v5

    .line 267
    :goto_a
    cmp-long v0, v5, v28

    .line 268
    .line 269
    if-nez v0, :cond_8

    .line 270
    .line 271
    const-wide/16 v11, 0x4

    .line 272
    .line 273
    if-eqz p0, :cond_6

    .line 274
    .line 275
    add-long v0, v22, v11

    .line 276
    .line 277
    invoke-static {v9, v8, v0, v1}, LX/0B1;->A00(LX/046;Ljava/nio/ByteBuffer;J)J

    .line 278
    .line 279
    .line 280
    move-result-wide v0

    .line 281
    :goto_b
    add-long v0, v0, v18

    .line 282
    .line 283
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    :goto_c
    add-long v14, v28, v0

    .line 288
    .line 289
    const/4 v11, 0x1

    .line 290
    invoke-static {v9, v8, v11, v0, v1}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->get()B

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    and-int/lit16 v0, v0, 0xff

    .line 298
    .line 299
    int-to-short v0, v0

    .line 300
    if-eqz v0, :cond_7

    .line 301
    .line 302
    int-to-char v0, v0

    .line 303
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    move-wide v0, v14

    .line 307
    goto :goto_c

    .line 308
    :cond_6
    add-long v0, v22, v26

    .line 309
    .line 310
    invoke-static {v9, v8, v13, v0, v1}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    .line 314
    .line 315
    .line 316
    move-result-wide v0

    .line 317
    goto :goto_b

    .line 318
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    aput-object v0, v4, v3

    .line 323
    .line 324
    const v0, 0x7fffffff

    .line 325
    .line 326
    .line 327
    if-eq v3, v0, :cond_17

    .line 328
    .line 329
    add-int/lit8 v3, v3, 0x1

    .line 330
    .line 331
    :cond_8
    if-eqz p0, :cond_9

    .line 332
    .line 333
    const-wide/16 v0, 0x8

    .line 334
    .line 335
    :goto_d
    add-long v22, v22, v0

    .line 336
    .line 337
    cmp-long v0, v5, v24

    .line 338
    .line 339
    if-nez v0, :cond_5

    .line 340
    .line 341
    if-ne v3, v2, :cond_16

    .line 342
    .line 343
    return-object v4

    .line 344
    :cond_9
    const-wide/16 v0, 0x10

    .line 345
    .line 346
    goto :goto_d

    .line 347
    :cond_a
    invoke-static {v9, v8, v13, v0, v1}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    .line 351
    .line 352
    .line 353
    move-result-wide v5

    .line 354
    goto :goto_a

    .line 355
    :cond_b
    add-long v6, v6, v26

    .line 356
    .line 357
    invoke-static {v9, v8, v13, v6, v7}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    .line 361
    .line 362
    .line 363
    move-result-wide v18

    .line 364
    goto :goto_9

    .line 365
    :cond_c
    add-long v0, v6, v16

    .line 366
    .line 367
    invoke-static {v9, v8, v13, v0, v1}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    .line 371
    .line 372
    .line 373
    move-result-wide v16

    .line 374
    const-wide/16 v14, 0x28

    .line 375
    .line 376
    add-long v0, v6, v14

    .line 377
    .line 378
    invoke-static {v9, v8, v13, v0, v1}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    .line 382
    .line 383
    .line 384
    move-result-wide v14

    .line 385
    goto/16 :goto_8

    .line 386
    .line 387
    :cond_d
    int-to-long v0, v12

    .line 388
    add-long/2addr v6, v0

    .line 389
    add-int/lit8 v3, v3, 0x1

    .line 390
    .line 391
    const-wide/16 v16, 0x10

    .line 392
    .line 393
    goto/16 :goto_7

    .line 394
    .line 395
    :cond_e
    const-wide/16 v0, 0x10

    .line 396
    .line 397
    goto/16 :goto_6

    .line 398
    .line 399
    :cond_f
    const-wide/16 v16, 0x5

    .line 400
    .line 401
    cmp-long v0, v14, v16

    .line 402
    .line 403
    if-nez v0, :cond_4

    .line 404
    .line 405
    if-eqz p0, :cond_10

    .line 406
    .line 407
    const-wide/16 v16, 0x4

    .line 408
    .line 409
    add-long v0, v18, v16

    .line 410
    .line 411
    invoke-static {v9, v8, v0, v1}, LX/0B1;->A00(LX/046;Ljava/nio/ByteBuffer;J)J

    .line 412
    .line 413
    .line 414
    move-result-wide v20

    .line 415
    goto/16 :goto_5

    .line 416
    .line 417
    :cond_10
    add-long v0, v18, v26

    .line 418
    .line 419
    invoke-static {v9, v8, v13, v0, v1}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    .line 423
    .line 424
    .line 425
    move-result-wide v20

    .line 426
    goto/16 :goto_5

    .line 427
    .line 428
    :cond_11
    invoke-static {v9, v8, v13, v0, v1}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 429
    .line 430
    .line 431
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    .line 432
    .line 433
    .line 434
    move-result-wide v14

    .line 435
    goto/16 :goto_4

    .line 436
    .line 437
    :cond_12
    add-long v2, v2, v26

    .line 438
    .line 439
    invoke-static {v9, v8, v13, v2, v3}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    .line 443
    .line 444
    .line 445
    move-result-wide v22

    .line 446
    goto/16 :goto_3

    .line 447
    .line 448
    :cond_13
    int-to-long v0, v12

    .line 449
    add-long/2addr v2, v0

    .line 450
    add-long v16, v16, v28

    .line 451
    .line 452
    goto/16 :goto_2

    .line 453
    .line 454
    :cond_14
    const-wide/16 v0, 0x28

    .line 455
    .line 456
    invoke-static {v9, v8, v13, v0, v1}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    .line 460
    .line 461
    .line 462
    move-result-wide v0

    .line 463
    const-wide/16 v2, 0x2c

    .line 464
    .line 465
    add-long/2addr v0, v2

    .line 466
    goto/16 :goto_1

    .line 467
    .line 468
    :cond_15
    invoke-static {v9, v8, v13, v2, v3}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    .line 472
    .line 473
    .line 474
    move-result-wide v6

    .line 475
    const-wide/16 v0, 0x38

    .line 476
    .line 477
    invoke-static {v9, v8, v12, v0, v1}, LX/0B1;->A03(LX/046;Ljava/nio/ByteBuffer;IJ)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getShort()S

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    const v14, 0xffff

    .line 485
    .line 486
    .line 487
    and-int/2addr v0, v14

    .line 488
    int-to-long v4, v0

    .line 489
    const-wide/16 v0, 0x36

    .line 490
    .line 491
    goto/16 :goto_0

    .line 492
    .line 493
    :cond_16
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    .line 494
    .line 495
    invoke-direct {v0, v10}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    throw v0

    .line 499
    :cond_17
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    .line 500
    .line 501
    invoke-direct {v0, v10}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw v0

    .line 505
    :cond_18
    const-string v1, "did not find file offset of DT_STRTAB table"

    .line 506
    .line 507
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    .line 508
    .line 509
    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    throw v0

    .line 513
    :cond_19
    const-string v1, "Dynamic section string-table not found"

    .line 514
    .line 515
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    .line 516
    .line 517
    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    throw v0

    .line 521
    :cond_1a
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    .line 522
    .line 523
    invoke-direct {v0, v10}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    throw v0

    .line 527
    :cond_1b
    const-string v1, "ELF file does not contain dynamic linking information"

    .line 528
    .line 529
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    .line 530
    .line 531
    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    .line 532
    .line 533
    .line 534
    throw v0

    .line 535
    :cond_1c
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    move-result-object v1

    .line 539
    const-string v0, "file is not ELF: magic is 0x"

    .line 540
    .line 541
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    const-string v0, ", it should be "

    .line 552
    .line 553
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v1

    .line 564
    new-instance v0, Lcom/facebook/soloader/MinElf$ElfError;

    .line 565
    .line 566
    invoke-direct {v0, v1}, Lcom/facebook/soloader/MinElf$ElfError;-><init>(Ljava/lang/String;)V

    .line 567
    .line 568
    .line 569
    throw v0
.end method

.method public static A08(LX/046;Ljava/lang/String;)[Ljava/lang/String;
    .locals 12

    .line 0
    sget-boolean v11, LX/0B9;->A09:Z

    .line 1
    .line 2
    if-eqz v11, :cond_0

    .line 3
    .line 4
    const-string v1, "soloader.NativeDeps.getDependencies["

    .line 5
    .line 6
    const-string v0, "]"

    .line 7
    .line 8
    invoke-static {v1, p1, v0}, LX/0Ar;->A01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    sget-object v10, LX/044;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    .line 12
    .line 13
    invoke-static {v10}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    array-length v1, v0

    .line 20
    const/4 v0, 0x0

    .line 21
    if-ge v0, v1, :cond_1

    .line 22
    .line 23
    const-string v0, "onGetDependenciesStart"

    .line 24
    .line 25
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    throw v0

    .line 30
    :cond_1
    :try_start_0
    sget-boolean v0, LX/0B1;->A04:Z

    .line 31
    .line 32
    if-eqz v0, :cond_9

    .line 33
    .line 34
    sget-boolean v0, LX/0B1;->A04:Z

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    if-eqz v0, :cond_a

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    const/4 v5, 0x6

    .line 44
    if-le v7, v5, :cond_a

    .line 45
    .line 46
    const/4 v3, 0x3

    .line 47
    const/16 v0, 0x1505

    .line 48
    .line 49
    :goto_0
    const/4 v1, 0x3

    .line 50
    sub-int v8, v7, v1

    .line 51
    .line 52
    if-ge v3, v8, :cond_2

    .line 53
    .line 54
    shl-int/lit8 v1, v0, 0x5

    .line 55
    .line 56
    add-int/2addr v1, v0

    .line 57
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    add-int/2addr v0, v1

    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    sget-object v1, LX/0B1;->A01:Ljava/util/Map;

    .line 66
    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Ljava/util/List;

    .line 76
    .line 77
    if-eqz v0, :cond_a

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object v9

    .line 83
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_a

    .line 88
    .line 89
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Ljava/lang/Integer;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    move v4, v6

    .line 100
    const/4 v3, 0x3

    .line 101
    :goto_1
    if-ge v3, v8, :cond_4

    .line 102
    .line 103
    sget-object v0, LX/0B1;->A02:[B

    .line 104
    .line 105
    array-length v0, v0

    .line 106
    if-ge v4, v0, :cond_4

    .line 107
    .line 108
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    and-int/lit16 v1, v0, 0xff

    .line 113
    .line 114
    sget-object v0, LX/0B1;->A02:[B

    .line 115
    .line 116
    aget-byte v0, v0, v4

    .line 117
    .line 118
    if-ne v1, v0, :cond_4

    .line 119
    .line 120
    add-int/lit8 v3, v3, 0x1

    .line 121
    .line 122
    add-int/lit8 v4, v4, 0x1

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_4
    if-ne v3, v8, :cond_3

    .line 126
    .line 127
    const/4 v0, -0x1

    .line 128
    if-eq v6, v0, :cond_a

    .line 129
    .line 130
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    add-int/2addr v6, v7

    .line 135
    sub-int/2addr v6, v5

    .line 136
    const/4 v1, 0x0

    .line 137
    const/4 v5, 0x0

    .line 138
    :goto_2
    sget-object v3, LX/0B1;->A02:[B

    .line 139
    .line 140
    array-length v0, v3

    .line 141
    if-ge v6, v0, :cond_7

    .line 142
    .line 143
    aget-byte v3, v3, v6

    .line 144
    .line 145
    const/16 v0, 0xa

    .line 146
    .line 147
    if-eq v3, v0, :cond_7

    .line 148
    .line 149
    const/16 v0, 0x20

    .line 150
    .line 151
    if-ne v3, v0, :cond_5

    .line 152
    .line 153
    if-eqz v5, :cond_6

    .line 154
    .line 155
    invoke-static {v1}, LX/0B1;->A01(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_a

    .line 160
    .line 161
    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_3

    .line 165
    :cond_5
    const/16 v0, 0x30

    .line 166
    .line 167
    if-lt v3, v0, :cond_a

    .line 168
    .line 169
    const/16 v0, 0x39

    .line 170
    .line 171
    if-gt v3, v0, :cond_a

    .line 172
    .line 173
    mul-int/lit8 v1, v1, 0xa

    .line 174
    .line 175
    add-int/lit8 v0, v3, -0x30

    .line 176
    .line 177
    add-int/2addr v1, v0

    .line 178
    const/4 v5, 0x1

    .line 179
    goto :goto_4

    .line 180
    :goto_3
    const/4 v1, 0x0

    .line 181
    const/4 v5, 0x0

    .line 182
    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_7
    if-eqz v5, :cond_8

    .line 186
    .line 187
    invoke-static {v1}, LX/0B1;->A01(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    if-eqz v0, :cond_a

    .line 192
    .line 193
    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    :cond_8
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    if-nez v0, :cond_a

    .line 201
    .line 202
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    new-array v0, v0, [Ljava/lang/String;

    .line 207
    .line 208
    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, [Ljava/lang/String;

    .line 213
    .line 214
    goto :goto_5

    .line 215
    :cond_9
    const/4 v2, 0x0

    .line 216
    :cond_a
    :goto_5
    if-nez v2, :cond_d

    .line 217
    .line 218
    instance-of v0, p0, LX/047;

    .line 219
    .line 220
    if-eqz v0, :cond_c

    .line 221
    .line 222
    check-cast p0, LX/047;

    .line 223
    .line 224
    const/4 v3, 0x0
    :try_end_0
    .catch Lcom/facebook/soloader/MinElf$ElfError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :goto_6
    :try_start_1
    invoke-static {p0}, LX/0B1;->A07(LX/046;)[Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    goto :goto_7
    :try_end_1
    .catch Ljava/nio/channels/ClosedByInterruptException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/soloader/MinElf$ElfError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    :catch_0
    move-exception v2

    .line 231
    add-int/lit8 v3, v3, 0x1

    .line 232
    .line 233
    const/4 v0, 0x4

    .line 234
    if-gt v3, v0, :cond_b

    .line 235
    .line 236
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 237
    .line 238
    .line 239
    const-string v1, "MinElf"

    .line 240
    .line 241
    const-string v0, "retrying extract_DT_NEEDED due to ClosedByInterruptException"

    .line 242
    .line 243
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    .line 245
    .line 246
    iget-object v1, p0, LX/047;->A00:Ljava/io/File;

    .line 247
    .line 248
    new-instance v0, Ljava/io/FileInputStream;

    .line 249
    .line 250
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 251
    .line 252
    .line 253
    iput-object v0, p0, LX/047;->A01:Ljava/io/FileInputStream;

    .line 254
    .line 255
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    iput-object v0, p0, LX/047;->A02:Ljava/nio/channels/FileChannel;

    .line 260
    .line 261
    goto :goto_6

    .line 262
    :cond_b
    throw v2

    .line 263
    :cond_c
    invoke-static {p0}, LX/0B1;->A07(LX/046;)[Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v2
    :try_end_2
    .catch Lcom/facebook/soloader/MinElf$ElfError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    :cond_d
    :goto_7
    invoke-static {v10}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    if-eqz v0, :cond_e

    .line 272
    .line 273
    array-length v1, v0

    .line 274
    const/4 v0, 0x0

    .line 275
    if-ge v0, v1, :cond_e

    .line 276
    .line 277
    const-string v0, "onGetDependenciesEnd"

    .line 278
    .line 279
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    throw v0

    .line 284
    :cond_e
    if-eqz v11, :cond_f

    .line 285
    .line 286
    invoke-static {}, LX/0Ar;->A00()V

    .line 287
    .line 288
    .line 289
    :cond_f
    return-object v2

    .line 290
    :catch_1
    move-exception v0

    .line 291
    goto :goto_8

    .line 292
    :catch_2
    :try_start_3
    move-exception v0

    .line 293
    invoke-static {p1, v0}, Lcom/facebook/soloader/SoLoaderULErrorFactory;->create(Ljava/lang/String;Ljava/lang/UnsatisfiedLinkError;)Lcom/facebook/soloader/SoLoaderULError;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    :goto_8
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 298
    :catchall_0
    move-exception v2

    .line 299
    invoke-static {v10}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    if-eqz v0, :cond_10

    .line 304
    .line 305
    array-length v1, v0

    .line 306
    const/4 v0, 0x0

    .line 307
    if-ge v0, v1, :cond_10

    .line 308
    .line 309
    const-string v0, "onGetDependenciesEnd"

    .line 310
    .line 311
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    throw v0

    .line 316
    :cond_10
    if-eqz v11, :cond_11

    .line 317
    .line 318
    invoke-static {}, LX/0Ar;->A00()V

    .line 319
    .line 320
    .line 321
    :cond_11
    throw v2
.end method
