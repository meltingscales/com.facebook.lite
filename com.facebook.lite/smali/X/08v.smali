.class public final LX/08v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/09p;


# static fields
.field public static A06:Z

.field public static final A07:Ljava/util/Map;

.field public static final A08:Ljava/util/concurrent/atomic/AtomicBoolean;


# instance fields
.field public A00:Landroid/content/Context;

.field public final A01:LX/09k;

.field public final A02:LX/09t;

.field public final A03:Ljava/io/File;

.field public final A04:Ljava/io/File;

.field public final A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    sput-object v0, LX/08v;->A07:Ljava/util/Map;

    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 9
    .line 10
    .line 11
    sput-object v0, LX/08v;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LX/09k;LX/09t;Ljava/io/File;)V
    .locals 9

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/08v;->A00:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p2, p0, LX/08v;->A01:LX/09k;

    .line 6
    .line 7
    iput-object p3, p0, LX/08v;->A02:LX/09t;

    .line 8
    .line 9
    iput-object p4, p0, LX/08v;->A03:Ljava/io/File;

    .line 10
    .line 11
    iget-object v2, p3, LX/09t;->A01:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v7, 0x1

    .line 18
    if-ne v0, v7, :cond_0

    .line 19
    .line 20
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    .line 22
    const/16 v0, 0x1e

    .line 23
    .line 24
    if-lt v1, v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, LX/09s;

    .line 32
    .line 33
    invoke-static {v0}, LX/09v;->A02(LX/09s;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-static {p4, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, LX/08v;->A04:Ljava/io/File;

    .line 42
    .line 43
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    const/16 v0, 0x1d

    .line 47
    .line 48
    if-ne v1, v0, :cond_3

    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_0
    const/16 v0, 0x2e

    .line 52
    .line 53
    new-instance v6, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    .line 57
    .line 58
    const-string v0, "z-"

    .line 59
    .line 60
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, LX/08v;->A00:Landroid/content/Context;

    .line 64
    .line 65
    :try_start_0
    const-string v0, "SHA"

    .line 66
    .line 67
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 68
    .line 69
    .line 70
    move-result-object v2
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2

    .line 71
    invoke-static {v1}, LX/08v;->A01(Landroid/content/Context;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, LX/08v;->A02:LX/09t;

    .line 83
    .line 84
    iget-object v0, v0, LX/09t;->A01:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    check-cast v0, LX/09s;

    .line 101
    .line 102
    iget-object v0, v0, LX/09s;->A01:Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    .line 113
    .line 114
    .line 115
    move-result-object v8

    .line 116
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    const-string v0, "0123456789abcdef"

    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    array-length v3, v8

    .line 127
    const/4 v2, 0x0

    .line 128
    :goto_2
    if-ge v2, v3, :cond_2

    .line 129
    .line 130
    aget-byte v1, v8, v2

    .line 131
    .line 132
    shr-int/lit8 v0, v1, 0x4

    .line 133
    .line 134
    and-int/lit8 v0, v0, 0xf

    .line 135
    .line 136
    aget-char v0, v4, v0

    .line 137
    .line 138
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    and-int/lit8 v0, v1, 0xf

    .line 142
    .line 143
    aget-char v0, v4, v0

    .line 144
    .line 145
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    add-int/lit8 v2, v2, 0x1

    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_2
    invoke-static {v5, v6}, LX/000;->A0K(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 152
    .line 153
    .line 154
    const-string v0, ".zip"

    .line 155
    .line 156
    invoke-static {v0, v6}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    goto :goto_0

    .line 161
    :goto_3
    :try_start_1
    invoke-static {}, LX/08v;->A04()V

    .line 162
    .line 163
    .line 164
    const-string v0, "android.content.pm.IPackageManager"

    .line 165
    .line 166
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    const-string v4, "notifyDexLoadWithStatus"

    .line 171
    .line 172
    const/4 v0, 0x5

    .line 173
    new-array v3, v0, [Ljava/lang/Class;

    .line 174
    .line 175
    const-class v2, Ljava/lang/String;

    .line 176
    .line 177
    aput-object v2, v3, v5

    .line 178
    .line 179
    const-class v1, Ljava/util/List;

    .line 180
    .line 181
    aput-object v1, v3, v7

    .line 182
    .line 183
    const/4 v0, 0x2

    .line 184
    aput-object v1, v3, v0

    .line 185
    .line 186
    const/4 v0, 0x3

    .line 187
    aput-object v2, v3, v0

    .line 188
    .line 189
    const/4 v1, 0x4

    .line 190
    const-class v0, [I

    .line 191
    .line 192
    aput-object v0, v3, v1

    .line 193
    .line 194
    invoke-virtual {v6, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 195
    .line 196
    .line 197
    move-result-object v0

    .line 198
    if-eqz v0, :cond_3

    .line 199
    .line 200
    goto :goto_4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    :catch_0
    move-exception v2

    .line 202
    const-string v1, "MegazipDexStorage"

    .line 203
    .line 204
    const-string v0, "Failed to detect if device has notifyDexLoadWithStatus:"

    .line 205
    .line 206
    invoke-static {v1, v0, v2}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 207
    .line 208
    .line 209
    goto :goto_5

    .line 210
    :goto_4
    const/4 v5, 0x1

    .line 211
    :catch_1
    :cond_3
    :goto_5
    iput-boolean v5, p0, LX/08v;->A05:Z

    .line 212
    .line 213
    return-void

    .line 214
    :catch_2
    move-exception v1

    .line 215
    new-instance v0, Ljava/lang/RuntimeException;

    .line 216
    .line 217
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 218
    .line 219
    .line 220
    throw v0
.end method

.method private A00()Ljava/lang/String;
    .locals 8

    .line 0
    iget-object v4, p0, LX/08v;->A00:Landroid/content/Context;

    .line 1
    .line 2
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 7
    .line 8
    const-string v3, "dex"

    .line 9
    .line 10
    new-instance v2, Ljava/io/File;

    .line 11
    .line 12
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v0, "p-"

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {v4}, LX/08v;->A01(Landroid/content/Context;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v0, ".zip"

    .line 32
    .line 33
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v2, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v1, Ljava/io/File;

    .line 54
    .line 55
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "tmp_decoyzip.zip"

    .line 59
    .line 60
    invoke-static {v1, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-virtual {v6}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const/16 v0, 0x1a4

    .line 76
    .line 77
    invoke-static {v1, v0}, Lcom/facebook/common/dextricks/storer/Storer;->open(Ljava/lang/String;I)J

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    const-string v1, "classes.dex"

    .line 82
    .line 83
    const/4 v0, 0x4

    .line 84
    invoke-static {v2, v3, v1, v0}, Lcom/facebook/common/dextricks/storer/Storer;->start(JLjava/lang/String;I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v5, Ljava/util/zip/ZipFile;

    .line 94
    .line 95
    invoke-direct {v5, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipEntry;

    .line 99
    .line 100
    invoke-direct {v0, v1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    const v0, 0x8000
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 108
    .line 109
    .line 110
    :try_start_1
    new-array v1, v0, [B

    .line 111
    .line 112
    :goto_0
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-ltz v0, :cond_0

    .line 117
    .line 118
    invoke-static {v2, v3, v1, v0}, Lcom/facebook/common/dextricks/storer/Storer;->write(J[BI)V

    .line 119
    .line 120
    .line 121
    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 122
    :cond_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 123
    .line 124
    .line 125
    goto :goto_1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 126
    :catchall_0
    move-exception v0

    .line 127
    if-eqz v4, :cond_1

    .line 128
    .line 129
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 130
    .line 131
    .line 132
    :catchall_1
    :cond_1
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 133
    :catchall_2
    move-exception v0

    .line 134
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 135
    .line 136
    .line 137
    :catchall_3
    throw v0

    .line 138
    :goto_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 139
    .line 140
    .line 141
    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/storer/Storer;->finish(J)V

    .line 142
    .line 143
    .line 144
    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/storer/Storer;->cleanup(J)V

    .line 145
    .line 146
    .line 147
    invoke-static {v6, v7}, LX/09w;->A03(Ljava/io/File;Ljava/io/File;)V

    .line 148
    .line 149
    .line 150
    :cond_2
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    return-object v0
.end method

.method public static A01(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 5
    .line 6
    new-instance p0, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, LX/06F;->A01()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/4 v0, 0x1

    .line 16
    if-le v2, v0, :cond_0

    .line 17
    .line 18
    const-string v1, "MegazipDexStorage"

    .line 19
    .line 20
    const-string v0, "Build id used for apk identification"

    .line 21
    .line 22
    invoke-static {v1, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    int-to-long v0, v2

    .line 26
    :goto_0
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    return-object v0

    .line 31
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    .line 32
    .line 33
    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    :try_start_1
    const-string v0, "classes.dex"

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    const-string v1, "MegazipDexStorage"

    .line 45
    .line 46
    const-string v0, "CRC used for apk identification"

    .line 47
    .line 48
    invoke-static {v1, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getCrc()J

    .line 52
    .line 53
    .line 54
    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 60
    .line 61
    .line 62
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v0, "No usable identifier for apk "

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw v0

    .line 85
    :catchall_0
    move-exception v0

    .line 86
    :try_start_3
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    .line 88
    .line 89
    :catchall_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    new-instance v0, Ljava/lang/RuntimeException;

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw v0
.end method

.method public static A02(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 0
    if-eqz p0, :cond_1

    .line 1
    .line 2
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ljava/io/BufferedReader;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v0, 0xa

    .line 32
    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    :cond_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 38
    .line 39
    .line 40
    goto :goto_1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 43
    .line 44
    .line 45
    :catchall_1
    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 46
    :catch_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    return-object v0

    .line 51
    :cond_1
    const-string v0, ""

    .line 52
    .line 53
    return-object v0
.end method

.method private A03()V
    .locals 10

    .line 0
    iget-object v9, p0, LX/08v;->A04:Ljava/io/File;

    .line 1
    .line 2
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v8, p0, LX/08v;->A02:LX/09t;

    .line 9
    .line 10
    iget-object v1, v8, LX/09t;->A00:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "dex"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    sput-boolean v0, LX/0A4;->A04:Z

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v0, ".zip"

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object v3, v8, LX/09t;->A01:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    const/4 v0, 0x1

    .line 42
    if-ne v1, v0, :cond_2

    .line 43
    .line 44
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    .line 46
    const/16 v0, 0x1e

    .line 47
    .line 48
    if-lt v1, v0, :cond_2

    .line 49
    .line 50
    iget-object v2, p0, LX/08v;->A01:LX/09k;

    .line 51
    .line 52
    iget-object v1, p0, LX/08v;->A03:Ljava/io/File;

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, LX/09s;

    .line 60
    .line 61
    invoke-static {v2, v0, v8, v1, v9}, LX/09v;->A05(LX/09k;LX/09s;LX/09t;Ljava/io/File;Ljava/io/File;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void

    .line 65
    :cond_2
    iget-object v0, p0, LX/08v;->A03:Ljava/io/File;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v0, "tmp_megazip.zip"

    .line 72
    .line 73
    new-instance v7, Ljava/io/File;

    .line 74
    .line 75
    invoke-direct {v7, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 83
    .line 84
    .line 85
    iget-object v6, v8, LX/09t;->A01:Ljava/util/List;

    .line 86
    .line 87
    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const/16 v0, 0x1a4

    .line 92
    .line 93
    invoke-static {v1, v0}, Lcom/facebook/common/dextricks/storer/Storer;->open(Ljava/lang/String;I)J

    .line 94
    .line 95
    .line 96
    move-result-wide v1

    .line 97
    const/4 v5, 0x0

    .line 98
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-ge v5, v0, :cond_5

    .line 103
    .line 104
    const/4 v4, 0x4

    .line 105
    if-nez v5, :cond_4

    .line 106
    .line 107
    const-string v0, "classes.dex"

    .line 108
    .line 109
    :goto_1
    invoke-static {v1, v2, v0, v4}, Lcom/facebook/common/dextricks/storer/Storer;->start(JLjava/lang/String;I)V

    .line 110
    .line 111
    .line 112
    iget-object v3, p0, LX/08v;->A01:LX/09k;

    .line 113
    .line 114
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, LX/09s;

    .line 119
    .line 120
    invoke-static {v0, v8}, LX/09v;->A03(LX/09s;LX/09t;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v3, v0}, LX/09v;->A01(LX/09k;Ljava/lang/String;)Ljava/io/InputStream;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    :try_start_0
    const v0, 0x8000

    .line 129
    .line 130
    .line 131
    new-array v3, v0, [B

    .line 132
    .line 133
    :goto_2
    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-ltz v0, :cond_3

    .line 138
    .line 139
    invoke-static {v1, v2, v3, v0}, Lcom/facebook/common/dextricks/storer/Storer;->write(J[BI)V

    .line 140
    .line 141
    .line 142
    goto :goto_2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    :cond_3
    invoke-static {v4}, LX/09w;->A01(Ljava/io/Closeable;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/storer/Storer;->finish(J)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 v5, v5, 0x1

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_4
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    const-string v0, "classes"

    .line 157
    .line 158
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    add-int/lit8 v0, v5, 0x1

    .line 162
    .line 163
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v0, ".dex"

    .line 167
    .line 168
    invoke-static {v0, v3}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    goto :goto_1

    .line 173
    :catchall_0
    move-exception v0

    .line 174
    invoke-static {v4}, LX/09w;->A01(Ljava/io/Closeable;)V

    .line 175
    .line 176
    .line 177
    throw v0

    .line 178
    :cond_5
    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/storer/Storer;->cleanup(J)V

    .line 179
    .line 180
    .line 181
    invoke-static {v7, v9}, LX/09w;->A03(Ljava/io/File;Ljava/io/File;)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method public static A04()V
    .locals 9

    .line 0
    sget-boolean v0, LX/08v;->A06:Z

    .line 1
    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    const/4 v7, 0x1

    .line 5
    sput-boolean v7, LX/08v;->A06:Z

    .line 6
    .line 7
    const-class v5, Ljava/lang/Class;

    .line 8
    .line 9
    new-array v1, v7, [Ljava/lang/Class;

    .line 10
    .line 11
    const-class v4, Ljava/lang/String;

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    aput-object v4, v1, v6

    .line 15
    .line 16
    const-string v0, "forName"

    .line 17
    .line 18
    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const/4 v2, 0x2

    .line 23
    new-array v1, v2, [Ljava/lang/Class;

    .line 24
    .line 25
    aput-object v4, v1, v6

    .line 26
    .line 27
    const-class v0, [Ljava/lang/Class;

    .line 28
    .line 29
    aput-object v0, v1, v7

    .line 30
    .line 31
    const-string v0, "getDeclaredMethod"

    .line 32
    .line 33
    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    new-array v1, v7, [Ljava/lang/Object;

    .line 38
    .line 39
    const-string v0, "dalvik.system.VMRuntime"

    .line 40
    .line 41
    aput-object v0, v1, v6

    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    invoke-virtual {v3, v5, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    new-array v1, v2, [Ljava/lang/Object;

    .line 49
    .line 50
    const-string v0, "getRuntime"

    .line 51
    .line 52
    aput-object v0, v1, v6

    .line 53
    .line 54
    aput-object v5, v1, v7

    .line 55
    .line 56
    invoke-virtual {v8, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/reflect/Method;

    .line 61
    .line 62
    new-array v2, v2, [Ljava/lang/Object;

    .line 63
    .line 64
    const-string v0, "setHiddenApiExemptions"

    .line 65
    .line 66
    aput-object v0, v2, v6

    .line 67
    .line 68
    new-array v1, v7, [Ljava/lang/Class;

    .line 69
    .line 70
    const-class v0, [Ljava/lang/String;

    .line 71
    .line 72
    aput-object v0, v1, v6

    .line 73
    .line 74
    aput-object v1, v2, v7

    .line 75
    .line 76
    invoke-virtual {v8, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Ljava/lang/reflect/Method;

    .line 81
    .line 82
    if-eqz v3, :cond_1

    .line 83
    .line 84
    if-eqz v4, :cond_1

    .line 85
    .line 86
    new-array v0, v6, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {v3, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    new-array v2, v7, [[Ljava/lang/String;

    .line 93
    .line 94
    new-array v1, v7, [Ljava/lang/String;

    .line 95
    .line 96
    const-string v0, "L"

    .line 97
    .line 98
    aput-object v0, v1, v6

    .line 99
    .line 100
    aput-object v1, v2, v6

    .line 101
    .line 102
    invoke-virtual {v4, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    :cond_0
    return-void

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/NoSuchMethodException;

    .line 107
    .line 108
    invoke-direct {v0}, Ljava/lang/NoSuchMethodException;-><init>()V

    .line 109
    .line 110
    .line 111
    throw v0
.end method

.method public static A05(Ljava/lang/Object;)V
    .locals 6

    .line 0
    :try_start_0
    invoke-static {}, LX/08v;->A04()V

    .line 1
    .line 2
    .line 3
    const-class v5, Ldalvik/system/BaseDexClassLoader;

    .line 4
    .line 5
    const-string v2, "setReporter"

    .line 6
    .line 7
    const/4 v4, 0x1

    .line 8
    new-array v1, v4, [Ljava/lang/Class;

    .line 9
    .line 10
    const-string v0, "dalvik.system.BaseDexClassLoader$Reporter"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v0, v1, v3

    .line 18
    .line 19
    invoke-virtual {v5, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/4 v1, 0x0

    .line 24
    new-array v0, v4, [Ljava/lang/Object;

    .line 25
    .line 26
    aput-object p0, v0, v3

    .line 27
    .line 28
    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :catch_0
    move-exception v2

    .line 33
    const-string v1, "MegazipDexStorage"

    .line 34
    .line 35
    const-string v0, "Failed to set reporter object: "

    .line 36
    .line 37
    invoke-static {v1, v0, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public static A06(Landroid/content/Context;)Z
    .locals 8

    .line 0
    const/4 v7, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v1, Ldalvik/system/DexFile;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "com.facebook.lite.splitdex.MegazipDexStorage$PerformSecondaryDexOptHackR$PerformSecondaryDexOptHackRInternal"

    .line 13
    .line 14
    invoke-virtual {v1, v0, v7}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-exception v2

    .line 20
    const-string v1, "MegazipDexStorage"

    .line 21
    .line 22
    const-string v0, "Failed to load perform secondary dexopt class"

    .line 23
    .line 24
    invoke-static {v1, v0, v2}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    .line 26
    .line 27
    move-object v6, v7

    .line 28
    :goto_0
    const/4 v5, 0x0

    .line 29
    if-nez v6, :cond_1

    .line 30
    .line 31
    const-string v1, "MegazipDexStorage"

    .line 32
    .line 33
    const-string v0, "Failed to find perform secondary dexopt class"

    .line 34
    .line 35
    invoke-static {v1, v0}, LX/06s;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return v5

    .line 39
    :cond_1
    const/4 v4, 0x2

    .line 40
    const/4 v3, 0x1

    .line 41
    :try_start_1
    const-string v2, "apply"

    .line 42
    .line 43
    new-array v1, v4, [Ljava/lang/Class;

    .line 44
    .line 45
    const-class v0, Landroid/content/Context;

    .line 46
    .line 47
    aput-object v0, v1, v5

    .line 48
    .line 49
    const-class v0, Landroid/content/pm/PackageManager;

    .line 50
    .line 51
    aput-object v0, v1, v3

    .line 52
    .line 53
    invoke-virtual {v6, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    if-eqz v2, :cond_0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 60
    .line 61
    .line 62
    :try_start_2
    new-array v1, v4, [Ljava/lang/Object;

    .line 63
    .line 64
    aput-object p0, v1, v5

    .line 65
    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    aput-object v0, v1, v3

    .line 71
    .line 72
    invoke-virtual {v2, v7, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/lang/Boolean;

    .line 77
    .line 78
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    return v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 83
    :catch_1
    move-exception v2

    .line 84
    const-string v1, "MegazipDexStorage"

    .line 85
    .line 86
    const-string v0, "Failed to invoke perform secondary dexopt method "

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_2
    move-exception v2

    .line 90
    const-string v1, "MegazipDexStorage"

    .line 91
    .line 92
    const-string v0, "Failed to perform secondary dexopt method"

    .line 93
    .line 94
    :goto_1
    invoke-static {v1, v0, v2}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    return v5
.end method

.method public static A07(Landroid/content/Context;LX/08v;Z)Z
    .locals 13

    .line 0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 1
    .line 2
    .line 3
    move-result-object v3

    .line 4
    const-string v2, "speed"

    .line 5
    .line 6
    const/16 v9, 0x8

    .line 7
    .line 8
    new-array v8, v9, [Ljava/lang/String;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v0, "cmd"

    .line 12
    .line 13
    aput-object v0, v8, v1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v0, "package"

    .line 17
    .line 18
    aput-object v0, v8, v1

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    const-string v0, "compile"

    .line 22
    .line 23
    aput-object v0, v8, v1

    .line 24
    .line 25
    const/4 v1, 0x3

    .line 26
    const-string v0, "-m"

    .line 27
    .line 28
    aput-object v0, v8, v1

    .line 29
    .line 30
    const/4 v0, 0x4

    .line 31
    aput-object v2, v8, v0

    .line 32
    .line 33
    const/4 v1, 0x5

    .line 34
    const-string v0, "-f"

    .line 35
    .line 36
    aput-object v0, v8, v1

    .line 37
    .line 38
    const/4 v1, 0x6

    .line 39
    const-string v0, "--secondary-dex"

    .line 40
    .line 41
    aput-object v0, v8, v1

    .line 42
    .line 43
    const/4 v0, 0x7

    .line 44
    aput-object v3, v8, v0

    .line 45
    .line 46
    new-instance v2, Ljava/lang/ProcessBuilder;

    .line 47
    .line 48
    invoke-direct {v2, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p1, LX/08v;->A04:Ljava/io/File;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v0, "oat/opt_log.txt"

    .line 58
    .line 59
    new-instance v7, Ljava/io/File;

    .line 60
    .line 61
    invoke-direct {v7, v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :try_start_0
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v7}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, v7}, Ljava/lang/ProcessBuilder;->redirectError(Ljava/io/File;)Ljava/lang/ProcessBuilder;

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :catch_0
    const/4 v7, 0x0

    .line 83
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    const/4 v6, 0x0

    .line 92
    goto :goto_1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 93
    :catch_1
    move-exception v6

    .line 94
    const/4 v5, -0x1

    .line 95
    :goto_1
    const/4 v3, 0x1

    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-static {v5}, LX/000;->A0Q(I)Z

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    if-eqz p2, :cond_0

    .line 102
    .line 103
    const/16 v0, 0xff

    .line 104
    .line 105
    if-ne v5, v0, :cond_0

    .line 106
    .line 107
    invoke-static {v7}, LX/08v;->A02(Ljava/io/File;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const-string v0, "UPDATE_DEVICE_STATS"

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_0

    .line 118
    .line 119
    invoke-static {p0, p1, v1}, LX/08v;->A07(Landroid/content/Context;LX/08v;Z)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    return v0

    .line 124
    :cond_0
    if-eqz v12, :cond_4

    .line 125
    .line 126
    invoke-static {p0}, LX/08v;->A06(Landroid/content/Context;)Z

    .line 127
    .line 128
    .line 129
    move-result v0

    .line 130
    xor-int/lit8 v12, v0, 0x1

    .line 131
    .line 132
    if-eqz v12, :cond_4

    .line 133
    .line 134
    if-eqz p2, :cond_1

    .line 135
    .line 136
    invoke-static {p0}, LX/08v;->A06(Landroid/content/Context;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    xor-int/lit8 v12, v0, 0x1

    .line 141
    .line 142
    if-eqz v12, :cond_4

    .line 143
    .line 144
    :cond_1
    invoke-static {}, LX/0A2;->A02()V

    .line 145
    .line 146
    .line 147
    const/16 v2, 0x32

    .line 148
    .line 149
    const/16 v0, 0x64

    .line 150
    .line 151
    invoke-static {p0, v2, v0}, LX/0A2;->A00(Landroid/content/Context;II)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_2

    .line 156
    .line 157
    new-instance v0, Ljava/util/Random;

    .line 158
    .line 159
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-nez v0, :cond_4

    .line 167
    .line 168
    :cond_2
    invoke-static {v7}, LX/08v;->A02(Ljava/io/File;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v4

    .line 172
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v2

    .line 176
    const/16 v0, 0x800

    .line 177
    .line 178
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v11

    .line 186
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    move-result-object v10

    .line 190
    const-string v0, "eagerDexOpt (ret="

    .line 191
    .line 192
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v0, ") failed to execCmdInProcess "

    .line 199
    .line 200
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    const-string v4, " "

    .line 204
    .line 205
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    aget-object v0, v8, v1

    .line 210
    .line 211
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const/4 v1, 0x1

    .line 215
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    aget-object v0, v8, v1

    .line 219
    .line 220
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    add-int/lit8 v1, v1, 0x1

    .line 224
    .line 225
    if-lt v1, v9, :cond_3

    .line 226
    .line 227
    invoke-static {v2, v10}, LX/000;->A0K(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 228
    .line 229
    .line 230
    invoke-static {v4, v11, v10}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-static {v0, v6}, LX/0AD;->A01(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    .line 236
    .line 237
    invoke-static {v0, v6}, LX/0AD;->A02(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    :cond_4
    if-eqz v7, :cond_5

    .line 241
    .line 242
    :try_start_2
    invoke-virtual {v7}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z

    .line 247
    .line 248
    .line 249
    goto :goto_2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 250
    :catch_2
    move-exception v2

    .line 251
    const-string v1, "MegazipDexStorage"

    .line 252
    .line 253
    const-string v0, "Failed to delete log file"

    .line 254
    .line 255
    invoke-static {v1, v0, v2}, LX/06s;->A0C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    :cond_5
    :goto_2
    if-eqz v12, :cond_6

    .line 259
    .line 260
    if-ne v5, v3, :cond_7

    .line 261
    .line 262
    invoke-static {}, LX/0A2;->A02()V

    .line 263
    .line 264
    .line 265
    iget-object v0, p1, LX/08v;->A00:Landroid/content/Context;

    .line 266
    .line 267
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 268
    .line 269
    .line 270
    move-result-object v1

    .line 271
    const/16 v0, 0x31

    .line 272
    .line 273
    invoke-static {v1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    if-eqz v0, :cond_7

    .line 278
    .line 279
    :cond_6
    return v3

    .line 280
    :cond_7
    const/4 v3, 0x0

    .line 281
    return v3
.end method


# virtual methods
.method public final A3o()V
    .locals 3

    .line 0
    iget-object v1, p0, LX/08v;->A04:Ljava/io/File;

    .line 1
    .line 2
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, LX/09v;->A04(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v0, "p-"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, LX/08v;->A00:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v0}, LX/08v;->A01(Landroid/content/Context;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ".zip"

    .line 44
    .line 45
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, LX/09v;->A04(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, LX/08v;->A03:Ljava/io/File;

    .line 57
    .line 58
    invoke-static {v0, v2}, LX/09v;->A06(Ljava/io/File;Ljava/util/List;)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-void
.end method

.method public final AHP(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)V
    .locals 21

    .line 0
    move-object/from16 v14, p0

    .line 1
    .line 2
    invoke-direct {v14}, LX/08v;->A03()V

    .line 3
    .line 4
    .line 5
    const-class v20, LX/08v;

    .line 6
    .line 7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    :goto_0
    if-eqz v2, :cond_1

    .line 20
    .line 21
    if-eq v2, v1, :cond_1

    .line 22
    .line 23
    instance-of v0, v2, LX/07Y;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    :goto_1
    const/4 v13, 0x0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    iget-object v0, v14, LX/08v;->A04:Ljava/io/File;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    iget-object v9, v14, LX/08v;->A00:Landroid/content/Context;

    .line 38
    .line 39
    invoke-static {v9}, LX/07Y;->A00(Landroid/content/Context;)LX/07Y;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v2, Ldalvik/system/PathClassLoader;

    .line 48
    .line 49
    invoke-direct {v2, v7, v0}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_0
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    goto :goto_1

    .line 60
    :goto_2
    :try_start_0
    const-string v0, "dalvik.system.BaseDexClassLoader"

    .line 61
    .line 62
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v0, "pathList"

    .line 67
    .line 68
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v8, 0x1

    .line 73
    invoke-virtual {v0, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 74
    .line 75
    .line 76
    invoke-static {v2, v0}, LX/000;->A0S(Ljava/lang/Object;Ljava/lang/reflect/Field;)[Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    const-string v0, "dalvik.system.DexPathList$Element"

    .line 81
    .line 82
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    const-string v0, "dexFile"

    .line 87
    .line 88
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    invoke-virtual {v5, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 93
    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    array-length v3, v6

    .line 97
    const/4 v2, 0x0

    .line 98
    :goto_3
    if-ge v2, v3, :cond_12

    .line 99
    .line 100
    aget-object v0, v6, v2

    .line 101
    .line 102
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Ldalvik/system/DexFile;

    .line 107
    .line 108
    if-eqz v1, :cond_2

    .line 109
    .line 110
    invoke-virtual {v1}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    move-object v4, v1

    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    goto/16 :goto_b

    .line 122
    .line 123
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 124
    .line 125
    goto :goto_3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :catch_0
    move-exception v1

    .line 127
    new-instance v0, Ljava/lang/RuntimeException;

    .line 128
    .line 129
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    throw v0

    .line 133
    :cond_3
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    instance-of v0, v2, Ldalvik/system/BaseDexClassLoader;

    .line 138
    .line 139
    if-eqz v0, :cond_11

    .line 140
    .line 141
    :try_start_1
    iget-boolean v0, v14, LX/08v;->A05:Z

    .line 142
    .line 143
    move/from16 v19, v0

    .line 144
    .line 145
    const/16 v18, 0x0

    .line 146
    .line 147
    if-eqz v0, :cond_5
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 148
    .line 149
    :try_start_2
    invoke-static {}, LX/08v;->A04()V

    .line 150
    .line 151
    .line 152
    const-string v0, "dalvik.system.BaseDexClassLoader"

    .line 153
    .line 154
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    const-string v0, "reporter"

    .line 159
    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const/4 v0, 0x1

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 166
    .line 167
    .line 168
    move-object/from16 v0, v18

    .line 169
    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    if-nez v0, :cond_4

    .line 175
    .line 176
    const-string v1, "MegazipDexStorage"

    .line 177
    .line 178
    const-string v0, "Reporter object wasn\'t found"

    .line 179
    .line 180
    invoke-static {v1, v0}, LX/06s;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    goto :goto_4
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 184
    :cond_4
    :try_start_3
    invoke-static/range {v18 .. v18}, LX/08v;->A05(Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    goto :goto_5

    .line 188
    :catch_1
    move-exception v3

    .line 189
    const-string v1, "MegazipDexStorage"

    .line 190
    .line 191
    const-string v0, "Failed to get reporter object: "

    .line 192
    .line 193
    invoke-static {v1, v0, v3}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 194
    .line 195
    .line 196
    const/4 v0, 0x0

    .line 197
    goto :goto_5

    .line 198
    :goto_4
    move-object/from16 v0, v18

    .line 199
    .line 200
    :goto_5
    move-object/from16 v18, v0

    .line 201
    .line 202
    :cond_5
    iget-object v5, v14, LX/08v;->A04:Ljava/io/File;

    .line 203
    .line 204
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 205
    .line 206
    const/16 v0, 0x21

    .line 207
    .line 208
    if-lt v1, v0, :cond_6

    .line 209
    .line 210
    invoke-virtual {v5, v13}, Ljava/io/File;->setWritable(Z)Z

    .line 211
    .line 212
    .line 213
    :cond_6
    const-string v0, "dalvik.system.DexPathList"

    .line 214
    .line 215
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    const-string v0, "dalvik.system.DexPathList$Element"

    .line 220
    .line 221
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 222
    .line 223
    .line 224
    move-result-object v15

    .line 225
    const-class v4, Ldalvik/system/BaseDexClassLoader;

    .line 226
    .line 227
    const/4 v1, 0x4

    .line 228
    new-array v3, v1, [Ljava/lang/Class;

    .line 229
    .line 230
    const-class v6, Ljava/util/List;

    .line 231
    .line 232
    aput-object v6, v3, v13

    .line 233
    .line 234
    const-class v0, Ljava/io/File;

    .line 235
    .line 236
    const/4 v11, 0x1

    .line 237
    aput-object v0, v3, v11

    .line 238
    .line 239
    const/4 v7, 0x2

    .line 240
    aput-object v6, v3, v7

    .line 241
    .line 242
    const-class v0, Ljava/lang/ClassLoader;

    .line 243
    .line 244
    const/4 v6, 0x3

    .line 245
    aput-object v0, v3, v6

    .line 246
    .line 247
    const-string v0, "makeDexElements"

    .line 248
    .line 249
    invoke-virtual {v12, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v3, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 254
    .line 255
    .line 256
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 257
    .line 258
    .line 259
    move-result-object v10

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    .line 261
    .line 262
    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v0, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    new-array v1, v1, [Ljava/lang/Object;

    .line 269
    .line 270
    aput-object v0, v1, v13

    .line 271
    .line 272
    const/4 v0, 0x0

    .line 273
    aput-object v0, v1, v11

    .line 274
    .line 275
    aput-object v10, v1, v7

    .line 276
    .line 277
    aput-object v2, v1, v6

    .line 278
    .line 279
    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v9

    .line 283
    check-cast v9, [Ljava/lang/Object;

    .line 284
    .line 285
    if-eqz v9, :cond_10

    .line 286
    .line 287
    array-length v8, v9

    .line 288
    if-ne v8, v11, :cond_10

    .line 289
    .line 290
    aget-object v3, v9, v13

    .line 291
    .line 292
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v1

    .line 296
    sget-object v0, LX/08v;->A07:Ljava/util/Map;

    .line 297
    .line 298
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    const-string v0, "pathList"

    .line 303
    .line 304
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    invoke-virtual {v0, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 309
    .line 310
    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v6

    .line 315
    const-string v0, "dexElements"

    .line 316
    .line 317
    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 318
    .line 319
    .line 320
    move-result-object v5

    .line 321
    invoke-virtual {v5, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    check-cast v4, [Ljava/lang/Object;

    .line 329
    .line 330
    if-eqz v4, :cond_b

    .line 331
    .line 332
    array-length v3, v4

    .line 333
    if-lez v3, :cond_a

    .line 334
    .line 335
    if-eqz v7, :cond_a

    .line 336
    .line 337
    const/4 v2, 0x0

    .line 338
    const/4 v0, 0x0

    .line 339
    :goto_6
    aget-object v1, v4, v0

    .line 340
    .line 341
    if-ne v7, v1, :cond_9

    .line 342
    .line 343
    sub-int v0, v3, v11

    .line 344
    .line 345
    invoke-static {v15, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v1

    .line 349
    check-cast v1, [Ljava/lang/Object;

    .line 350
    .line 351
    const/16 v17, 0x0

    .line 352
    .line 353
    :cond_7
    aget-object v0, v4, v2

    .line 354
    .line 355
    if-eq v7, v0, :cond_8

    .line 356
    .line 357
    add-int/lit8 v16, v17, 0x1

    .line 358
    .line 359
    aput-object v0, v1, v17

    .line 360
    .line 361
    move/from16 v17, v16

    .line 362
    .line 363
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 364
    .line 365
    if-lt v2, v3, :cond_7

    .line 366
    .line 367
    move-object v4, v1

    .line 368
    if-eqz v1, :cond_b

    .line 369
    .line 370
    goto :goto_7

    .line 371
    :cond_9
    add-int/lit8 v0, v0, 0x1

    .line 372
    .line 373
    if-ge v0, v3, :cond_a

    .line 374
    .line 375
    goto :goto_6

    .line 376
    :cond_a
    :goto_7
    array-length v1, v4

    .line 377
    if-lez v1, :cond_b

    .line 378
    .line 379
    add-int/lit8 v0, v1, 0x1

    .line 380
    .line 381
    invoke-static {v15, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-static {v4, v13, v0, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    .line 387
    .line 388
    invoke-static {v9, v13, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    .line 390
    .line 391
    move-object v9, v0

    .line 392
    :cond_b
    invoke-virtual {v5, v6, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 393
    .line 394
    .line 395
    const-string v0, "dexElementsSuppressedExceptions"

    .line 396
    .line 397
    invoke-virtual {v12, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 398
    .line 399
    .line 400
    move-result-object v5

    .line 401
    invoke-virtual {v5, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 402
    .line 403
    .line 404
    invoke-virtual {v10}, Ljava/util/AbstractCollection;->size()I

    .line 405
    .line 406
    .line 407
    move-result v3

    .line 408
    if-lez v3, :cond_d

    .line 409
    .line 410
    new-array v0, v3, [Ljava/io/IOException;

    .line 411
    .line 412
    invoke-virtual {v10, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v4

    .line 416
    check-cast v4, [Ljava/io/IOException;

    .line 417
    .line 418
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    check-cast v2, [Ljava/io/IOException;

    .line 423
    .line 424
    if-eqz v2, :cond_c

    .line 425
    .line 426
    array-length v1, v2

    .line 427
    if-lez v1, :cond_c

    .line 428
    .line 429
    add-int v0, v1, v3

    .line 430
    .line 431
    new-array v0, v0, [Ljava/io/IOException;

    .line 432
    .line 433
    invoke-static {v2, v13, v0, v13, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    .line 435
    .line 436
    invoke-static {v4, v13, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 437
    .line 438
    .line 439
    move-object v4, v0

    .line 440
    :cond_c
    invoke-virtual {v5, v6, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    goto :goto_8

    .line 444
    :cond_d
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    move-result-object v4

    .line 448
    check-cast v4, [Ljava/io/IOException;

    .line 449
    .line 450
    :goto_8
    if-eqz v19, :cond_e

    .line 451
    .line 452
    if-eqz v18, :cond_e

    .line 453
    .line 454
    invoke-static/range {v18 .. v18}, LX/08v;->A05(Ljava/lang/Object;)V

    .line 455
    .line 456
    .line 457
    :cond_e
    if-eqz v4, :cond_13

    .line 458
    .line 459
    array-length v3, v4

    .line 460
    if-lez v3, :cond_13

    .line 461
    .line 462
    :goto_9
    aget-object v2, v4, v13

    .line 463
    .line 464
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    if-eqz v1, :cond_f

    .line 469
    .line 470
    const-string v0, "/split_"

    .line 471
    .line 472
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 473
    .line 474
    .line 475
    move-result v0

    .line 476
    if-nez v0, :cond_f

    .line 477
    .line 478
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    const-string v0, "Failed to add dex path ("

    .line 483
    .line 484
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    const-string v0, " errors)"

    .line 491
    .line 492
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    invoke-static {v0, v2}, LX/0AD;->A01(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 497
    .line 498
    .line 499
    invoke-static {v0, v2}, LX/0AD;->A02(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 500
    .line 501
    .line 502
    goto :goto_a

    .line 503
    :cond_f
    add-int/lit8 v13, v13, 0x1

    .line 504
    .line 505
    if-ge v13, v3, :cond_13

    .line 506
    .line 507
    goto :goto_9

    .line 508
    :cond_10
    const-string v0, "got null or too large array"

    .line 509
    .line 510
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 511
    .line 512
    .line 513
    move-result-object v0

    .line 514
    throw v0
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 515
    :catch_2
    move-exception v1

    .line 516
    const-string v0, "Failed to merge dex elements"

    .line 517
    .line 518
    invoke-static {v0, v1}, LX/0AD;->A01(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 519
    .line 520
    .line 521
    invoke-static {v0, v1}, LX/0AD;->A02(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 522
    .line 523
    .line 524
    goto :goto_a

    .line 525
    :cond_11
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    move-result-object v1

    .line 529
    const-string v0, "Unknown Application ClassLoader: "

    .line 530
    .line 531
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 543
    .line 544
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 545
    .line 546
    .line 547
    invoke-static {v1, v0}, LX/0AD;->A01(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 548
    .line 549
    .line 550
    invoke-static {v1, v0}, LX/0AD;->A02(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 551
    .line 552
    .line 553
    goto :goto_a

    .line 554
    :cond_12
    if-nez v4, :cond_16

    .line 555
    .line 556
    const-string v2, "MegazipDexStorage"

    .line 557
    .line 558
    new-array v1, v8, [Ljava/lang/Object;

    .line 559
    .line 560
    aput-object v7, v1, v13

    .line 561
    .line 562
    const-string v0, "Unable to load DexFile for: %s"

    .line 563
    .line 564
    invoke-static {v2, v0, v1}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    .line 566
    .line 567
    :cond_13
    :goto_a
    iget-object v2, v14, LX/08v;->A03:Ljava/io/File;

    .line 568
    .line 569
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v3

    .line 573
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    move-result-object v1

    .line 577
    iget-object v4, v14, LX/08v;->A04:Ljava/io/File;

    .line 578
    .line 579
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v0

    .line 583
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    .line 585
    .line 586
    const-string v0, "_compiled"

    .line 587
    .line 588
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    new-instance v0, Ljava/io/File;

    .line 593
    .line 594
    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 598
    .line 599
    .line 600
    move-result v16

    .line 601
    iget-object v0, v14, LX/08v;->A02:LX/09t;

    .line 602
    .line 603
    iget-object v1, v0, LX/09t;->A00:Ljava/lang/String;

    .line 604
    .line 605
    const-string v0, "dex"

    .line 606
    .line 607
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 608
    .line 609
    .line 610
    move-result v0

    .line 611
    if-eqz v0, :cond_15

    .line 612
    .line 613
    if-nez v16, :cond_14

    .line 614
    .line 615
    const/4 v0, 0x1

    .line 616
    sput-boolean v0, LX/0A5;->A0A:Z

    .line 617
    .line 618
    :cond_14
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    const-string v0, "oat/"

    .line 623
    .line 624
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    .line 632
    .line 633
    .line 634
    move-result-object v0

    .line 635
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 636
    .line 637
    .line 638
    move-result-object v0

    .line 639
    invoke-static {v2, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 640
    .line 641
    .line 642
    move-result-object v2

    .line 643
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object v0

    .line 647
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 648
    .line 649
    .line 650
    move-result-object v1

    .line 651
    invoke-static {v0}, LX/09v;->A04(Ljava/lang/String;)Ljava/lang/String;

    .line 652
    .line 653
    .line 654
    move-result-object v0

    .line 655
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    .line 657
    .line 658
    const-string v0, ".odex"

    .line 659
    .line 660
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    invoke-static {v2, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 669
    .line 670
    .line 671
    move-result-wide v0

    .line 672
    sput-wide v0, LX/0A5;->A00:J

    .line 673
    .line 674
    :cond_15
    invoke-static {}, LX/0A2;->A02()V

    .line 675
    .line 676
    .line 677
    move-object/from16 v3, p1

    .line 678
    .line 679
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 680
    .line 681
    .line 682
    move-result-object v1

    .line 683
    const/16 v0, 0x30

    .line 684
    .line 685
    const/4 v15, 0x0

    .line 686
    invoke-static {v1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 687
    .line 688
    .line 689
    move-result v0

    .line 690
    if-eqz v0, :cond_21

    .line 691
    .line 692
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 693
    .line 694
    const/16 v0, 0x1d

    .line 695
    .line 696
    if-ne v6, v0, :cond_1a

    .line 697
    .line 698
    goto :goto_c

    .line 699
    :cond_16
    :goto_b
    invoke-static {v9}, LX/07Y;->A00(Landroid/content/Context;)LX/07Y;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    invoke-virtual {v0, v4}, LX/07Y;->A04(Ldalvik/system/DexFile;)V

    .line 704
    .line 705
    .line 706
    goto/16 :goto_a

    .line 707
    .line 708
    :goto_c
    :try_start_4
    invoke-direct {v14}, LX/08v;->A00()Ljava/lang/String;

    .line 709
    .line 710
    .line 711
    move-result-object v0

    .line 712
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 713
    .line 714
    .line 715
    move-result-object v9

    .line 716
    new-instance v1, Ljava/lang/StringBuilder;

    .line 717
    .line 718
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 719
    .line 720
    .line 721
    sget-object v0, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 722
    .line 723
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .line 725
    .line 726
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 727
    .line 728
    .line 729
    move-result-object v0

    .line 730
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 731
    .line 732
    .line 733
    move-result-object v8

    .line 734
    invoke-static {}, LX/08v;->A04()V

    .line 735
    .line 736
    .line 737
    iget-boolean v0, v14, LX/08v;->A05:Z

    .line 738
    .line 739
    if-eqz v0, :cond_17

    .line 740
    .line 741
    const-string v0, "android.app.ApplicationPackageManager"

    .line 742
    .line 743
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 744
    .line 745
    .line 746
    move-result-object v1

    .line 747
    const-string v0, "mPM"

    .line 748
    .line 749
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    const/4 v11, 0x1

    .line 754
    invoke-virtual {v1, v11}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 755
    .line 756
    .line 757
    iget-object v12, v14, LX/08v;->A00:Landroid/content/Context;

    .line 758
    .line 759
    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .line 765
    .line 766
    move-result-object v7

    .line 767
    if-nez v7, :cond_19

    .line 768
    .line 769
    const-string v1, "MegazipDexStorage"

    .line 770
    .line 771
    const-string v0, "Wasn\'t able to get the IPackageManager object"

    .line 772
    .line 773
    :goto_d
    invoke-static {v1, v0}, LX/06s;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    goto/16 :goto_16

    .line 777
    .line 778
    :cond_17
    const-string v0, "dalvik.system.BaseDexClassLoader"

    .line 779
    .line 780
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    const-string v0, "reporter"

    .line 785
    .line 786
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 787
    .line 788
    .line 789
    move-result-object v1

    .line 790
    const/4 v5, 0x1

    .line 791
    invoke-virtual {v1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 792
    .line 793
    .line 794
    const/4 v0, 0x0

    .line 795
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .line 797
    .line 798
    move-result-object v7

    .line 799
    if-nez v7, :cond_18

    .line 800
    .line 801
    const-string v1, "MegazipDexStorage"

    .line 802
    .line 803
    const-string v0, "Reporter object wasn\'t found"

    .line 804
    .line 805
    goto :goto_d

    .line 806
    :cond_18
    const-string v0, "android.app.DexLoadReporter"

    .line 807
    .line 808
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 809
    .line 810
    .line 811
    move-result-object v4

    .line 812
    const/4 v2, 0x2

    .line 813
    new-array v1, v2, [Ljava/lang/Class;

    .line 814
    .line 815
    const-class v0, Ljava/util/List;

    .line 816
    .line 817
    aput-object v0, v1, v15

    .line 818
    .line 819
    aput-object v0, v1, v5

    .line 820
    .line 821
    const-string v0, "report"

    .line 822
    .line 823
    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 824
    .line 825
    .line 826
    move-result-object v4

    .line 827
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    invoke-virtual {v0, v9}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 832
    .line 833
    .line 834
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 835
    .line 836
    .line 837
    move-result-object v1

    .line 838
    invoke-virtual {v1, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 839
    .line 840
    .line 841
    new-array v2, v2, [Ljava/lang/Object;

    .line 842
    .line 843
    aput-object v0, v2, v15

    .line 844
    .line 845
    goto :goto_e

    .line 846
    :cond_19
    const-string v0, "android.content.pm.IPackageManager"

    .line 847
    .line 848
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 849
    .line 850
    .line 851
    move-result-object v4

    .line 852
    const/4 v2, 0x4

    .line 853
    new-array v1, v2, [Ljava/lang/Class;

    .line 854
    .line 855
    const-class v10, Ljava/lang/String;

    .line 856
    .line 857
    aput-object v10, v1, v15

    .line 858
    .line 859
    const-class v0, Ljava/util/List;

    .line 860
    .line 861
    aput-object v0, v1, v11

    .line 862
    .line 863
    const/4 v13, 0x2

    .line 864
    aput-object v0, v1, v13

    .line 865
    .line 866
    const/4 v5, 0x3

    .line 867
    aput-object v10, v1, v5

    .line 868
    .line 869
    const-string v0, "notifyDexLoad"

    .line 870
    .line 871
    invoke-virtual {v4, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 872
    .line 873
    .line 874
    move-result-object v4

    .line 875
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 876
    .line 877
    .line 878
    move-result-object v10

    .line 879
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    invoke-virtual {v10, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 888
    .line 889
    .line 890
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 891
    .line 892
    .line 893
    move-result-object v1

    .line 894
    invoke-virtual {v1, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 895
    .line 896
    .line 897
    new-array v2, v2, [Ljava/lang/Object;

    .line 898
    .line 899
    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 900
    .line 901
    .line 902
    move-result-object v0

    .line 903
    aput-object v0, v2, v15

    .line 904
    .line 905
    aput-object v10, v2, v11

    .line 906
    .line 907
    aput-object v1, v2, v13

    .line 908
    .line 909
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    .line 910
    .line 911
    .line 912
    move-result-object v0

    .line 913
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    .line 914
    .line 915
    .line 916
    move-result-object v1

    .line 917
    :goto_e
    aput-object v1, v2, v5

    .line 918
    .line 919
    invoke-virtual {v4, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 920
    .line 921
    .line 922
    goto/16 :goto_16
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_b

    .line 923
    .line 924
    :catch_3
    move-exception v2

    .line 925
    const-string v1, "MegazipDexStorage"

    .line 926
    .line 927
    const-string v0, "Failed creating the MegaZipFile:"

    .line 928
    .line 929
    goto/16 :goto_14

    .line 930
    .line 931
    :cond_1a
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 940
    .line 941
    .line 942
    move-result-object v1

    .line 943
    :goto_f
    if-eqz v2, :cond_1c

    .line 944
    .line 945
    if-eq v2, v1, :cond_1c

    .line 946
    .line 947
    instance-of v0, v2, LX/07Y;

    .line 948
    .line 949
    if-eqz v0, :cond_1b

    .line 950
    .line 951
    const/4 v0, 0x1

    .line 952
    :goto_10
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 953
    .line 954
    .line 955
    move-result-object v12

    .line 956
    iget-object v8, v14, LX/08v;->A00:Landroid/content/Context;

    .line 957
    .line 958
    if-eqz v0, :cond_1d

    .line 959
    .line 960
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 961
    .line 962
    .line 963
    move-result-object v9

    .line 964
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 965
    .line 966
    .line 967
    move-result-object v0

    .line 968
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 969
    .line 970
    new-instance v0, Ljava/io/File;

    .line 971
    .line 972
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 973
    .line 974
    .line 975
    goto :goto_11

    .line 976
    :cond_1b
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    goto :goto_f

    .line 981
    :cond_1c
    const/4 v0, 0x0

    .line 982
    goto :goto_10

    .line 983
    :goto_11
    :try_start_5
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 984
    .line 985
    .line 986
    move-result-object v1

    .line 987
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 988
    .line 989
    .line 990
    move-result-object v0

    .line 991
    invoke-virtual {v9, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 992
    .line 993
    .line 994
    move-result-object v9

    .line 995
    goto :goto_12
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 996
    :catch_4
    move-exception v2

    .line 997
    const-string v1, "ClassLoaderUtils"

    .line 998
    .line 999
    const-string v0, "Failed to replace secondary dex path"

    .line 1000
    .line 1001
    invoke-static {v1, v0, v2}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1002
    .line 1003
    .line 1004
    :goto_12
    const/4 v7, 0x0

    .line 1005
    :try_start_6
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 1006
    .line 1007
    .line 1008
    move-result-object v0

    .line 1009
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1010
    .line 1011
    new-instance v1, Ldalvik/system/DexFile;

    .line 1012
    .line 1013
    invoke-direct {v1, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 1014
    .line 1015
    .line 1016
    const-string v0, "com.facebook.lite.splitdex.ClassLoaderUtils$NotifyDexLoadInnerAPIHackAndroidRInternal"

    .line 1017
    .line 1018
    invoke-virtual {v1, v0, v7}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v11

    .line 1022
    if-eqz v11, :cond_1f

    .line 1023
    .line 1024
    const/4 v10, 0x2

    .line 1025
    const/4 v5, 0x3

    .line 1026
    const/4 v4, 0x1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_a

    .line 1027
    :try_start_7
    const-string v2, "apply"

    .line 1028
    .line 1029
    new-array v1, v5, [Ljava/lang/Class;

    .line 1030
    .line 1031
    const-class v0, Landroid/content/Context;

    .line 1032
    .line 1033
    aput-object v0, v1, v15

    .line 1034
    .line 1035
    const-class v0, Ljava/lang/ClassLoader;

    .line 1036
    .line 1037
    aput-object v0, v1, v4

    .line 1038
    .line 1039
    const-class v0, Ljava/lang/String;

    .line 1040
    .line 1041
    aput-object v0, v1, v10

    .line 1042
    .line 1043
    invoke-virtual {v11, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v1

    .line 1047
    if-eqz v1, :cond_20
    :try_end_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1048
    .line 1049
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1050
    .line 1051
    .line 1052
    :try_start_8
    new-array v0, v5, [Ljava/lang/Object;

    .line 1053
    .line 1054
    aput-object v8, v0, v15

    .line 1055
    .line 1056
    aput-object v12, v0, v4

    .line 1057
    .line 1058
    aput-object v9, v0, v10

    .line 1059
    .line 1060
    invoke-virtual {v1, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    .line 1062
    .line 1063
    goto :goto_15
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 1064
    :catch_5
    move-exception v2

    .line 1065
    const-string v1, "ClassLoaderUtils"

    .line 1066
    .line 1067
    const-string v0, "Failed to invoke notify dex method "

    .line 1068
    .line 1069
    goto :goto_14

    .line 1070
    :catch_6
    move-exception v2

    .line 1071
    const-string v1, "ClassLoaderUtils"

    .line 1072
    .line 1073
    const-string v0, "Failed to load notify dex method"

    .line 1074
    .line 1075
    goto :goto_14

    .line 1076
    :cond_1d
    const/4 v7, 0x0

    .line 1077
    :try_start_9
    invoke-virtual {v8}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v0

    .line 1081
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 1082
    .line 1083
    new-instance v1, Ldalvik/system/DexFile;

    .line 1084
    .line 1085
    invoke-direct {v1, v0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V

    .line 1086
    .line 1087
    .line 1088
    const-string v0, "com.facebook.lite.splitdex.MegazipDexStorage$NotifyDexLoadHackAndroidR$NotifyDexLoadHackAndroidRInternal"

    .line 1089
    .line 1090
    invoke-virtual {v1, v0, v7}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v5

    .line 1094
    if-eqz v5, :cond_1e

    .line 1095
    .line 1096
    const/4 v4, 0x1
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1097
    :try_start_a
    const-string v2, "apply"

    .line 1098
    .line 1099
    new-array v1, v4, [Ljava/lang/Class;

    .line 1100
    .line 1101
    const-class v0, Ljava/lang/ClassLoader;

    .line 1102
    .line 1103
    aput-object v0, v1, v15

    .line 1104
    .line 1105
    invoke-virtual {v5, v2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 1106
    .line 1107
    .line 1108
    move-result-object v1

    .line 1109
    if-eqz v1, :cond_20
    :try_end_a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_a} :catch_8

    .line 1110
    .line 1111
    invoke-virtual {v1, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 1112
    .line 1113
    .line 1114
    :try_start_b
    new-array v0, v4, [Ljava/lang/Object;

    .line 1115
    .line 1116
    aput-object v12, v0, v15

    .line 1117
    .line 1118
    invoke-virtual {v1, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    goto :goto_15
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 1122
    :catch_7
    move-exception v2

    .line 1123
    const-string v1, "MegazipDexStorage"

    .line 1124
    .line 1125
    const-string v0, "Failed to invoke notify dex method "

    .line 1126
    .line 1127
    goto :goto_14

    .line 1128
    :catch_8
    move-exception v2

    .line 1129
    const-string v1, "MegazipDexStorage"

    .line 1130
    .line 1131
    const-string v0, "Failed to load notify dex method"

    .line 1132
    .line 1133
    goto :goto_14

    .line 1134
    :catch_9
    move-exception v2

    .line 1135
    const-string v1, "MegazipDexStorage"

    .line 1136
    .line 1137
    const-string v0, "Failed to load notify dex class"

    .line 1138
    .line 1139
    invoke-static {v1, v0, v2}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1140
    .line 1141
    .line 1142
    :cond_1e
    const-string v1, "MegazipDexStorage"

    .line 1143
    .line 1144
    goto :goto_13

    .line 1145
    :catch_a
    move-exception v2

    .line 1146
    const-string v1, "ClassLoaderUtils"

    .line 1147
    .line 1148
    const-string v0, "Failed to load notify dex class"

    .line 1149
    .line 1150
    invoke-static {v1, v0, v2}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1151
    .line 1152
    .line 1153
    :cond_1f
    const-string v1, "ClassLoaderUtils"

    .line 1154
    .line 1155
    :goto_13
    const-string v0, "Failed to find notify dex class"

    .line 1156
    .line 1157
    invoke-static {v1, v0}, LX/06s;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    .line 1159
    .line 1160
    goto :goto_15

    .line 1161
    :catch_b
    move-exception v2

    .line 1162
    const-string v1, "MegazipDexStorage"

    .line 1163
    .line 1164
    const-string v0, "Failed notifying on secondary dexes load:"

    .line 1165
    .line 1166
    :goto_14
    invoke-static {v1, v0, v2}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1167
    .line 1168
    .line 1169
    :cond_20
    :goto_15
    const/16 v0, 0x1f

    .line 1170
    .line 1171
    if-eq v6, v0, :cond_21

    .line 1172
    .line 1173
    :goto_16
    if-eqz p3, :cond_21

    .line 1174
    .line 1175
    invoke-static {}, LX/0A2;->A02()V

    .line 1176
    .line 1177
    .line 1178
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v1

    .line 1182
    const/16 v0, 0x28

    .line 1183
    .line 1184
    invoke-static {v1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 1185
    .line 1186
    .line 1187
    move-result v0

    .line 1188
    if-eqz v0, :cond_21

    .line 1189
    .line 1190
    if-nez v16, :cond_21

    .line 1191
    .line 1192
    sget-object v1, LX/08v;->A08:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1193
    .line 1194
    const/4 v0, 0x1

    .line 1195
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1196
    .line 1197
    .line 1198
    new-instance v0, LX/09x;

    .line 1199
    .line 1200
    invoke-direct {v0, v3, v14}, LX/09x;-><init>(Landroid/content/Context;LX/08v;)V

    .line 1201
    .line 1202
    .line 1203
    move-object/from16 v1, p2

    .line 1204
    .line 1205
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1206
    .line 1207
    .line 1208
    :cond_21
    invoke-static {}, LX/0A2;->A02()V

    .line 1209
    .line 1210
    .line 1211
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v1

    .line 1215
    const/16 v0, 0x35

    .line 1216
    .line 1217
    invoke-static {v1, v0}, LX/0A2;->A05(Landroid/content/Context;I)Z

    .line 1218
    .line 1219
    .line 1220
    move-result v0

    .line 1221
    if-eqz v0, :cond_22

    .line 1222
    .line 1223
    const-class v1, LX/07Y;

    .line 1224
    .line 1225
    monitor-enter v1

    .line 1226
    const/4 v0, 0x1

    .line 1227
    :try_start_c
    invoke-static {v3, v0}, LX/07Y;->A03(Landroid/content/Context;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 1228
    .line 1229
    .line 1230
    monitor-exit v1

    .line 1231
    return-void

    .line 1232
    :catchall_0
    move-exception v0

    .line 1233
    monitor-exit v1

    .line 1234
    throw v0

    .line 1235
    :cond_22
    return-void
.end method
