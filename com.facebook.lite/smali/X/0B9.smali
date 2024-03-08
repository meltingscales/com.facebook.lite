.class public final LX/0B9;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Z = true

.field public static A01:I

.field public static A02:I

.field public static A03:Landroid/content/Context;

.field public static A04:LX/0B5;

.field public static A05:LX/086;

.field public static final A06:Ljava/util/HashSet;

.field public static final A07:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public static final A09:Z

.field public static final A0A:Ljava/util/Map;

.field public static final A0B:Ljava/util/Set;

.field public static volatile A0C:[LX/0BC;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 1
    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, LX/0B9;->A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 11
    .line 12
    .line 13
    sput-object v0, LX/0B9;->A07:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, LX/0B9;->A06:Ljava/util/HashSet;

    .line 21
    .line 22
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, LX/0B9;->A0A:Ljava/util/Map;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, LX/0B9;->A0B:Ljava/util/Set;

    .line 38
    .line 39
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    .line 41
    const/16 v0, 0x12

    .line 42
    .line 43
    if-lt v1, v0, :cond_0

    .line 44
    .line 45
    const/4 v2, 0x1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :catch_0
    :cond_0
    sput-boolean v2, LX/0B9;->A09:Z

    .line 47
    .line 48
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

.method public static A00()I
    .locals 4

    .line 0
    sget-object v3, LX/0B9;->A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 1
    .line 2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    sget v2, LX/0B9;->A02:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    and-int/lit8 v0, v2, 0x2

    .line 12
    .line 13
    invoke-static {v0}, LX/000;->A0Q(I)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    and-int/lit16 v0, v2, 0x100

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    or-int/lit8 v1, v1, 0x4

    .line 22
    .line 23
    :cond_0
    and-int/lit16 v0, v2, 0x80

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    or-int/lit8 v1, v1, 0x8

    .line 28
    .line 29
    :cond_1
    invoke-static {v3}, LX/0B9;->A06(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    invoke-static {v3}, LX/0B9;->A06(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public static A01(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 0
    sget-object v3, LX/0B9;->A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 1
    .line 2
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-nez v2, :cond_0

    .line 16
    .line 17
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 18
    .line 19
    array-length v0, v0

    .line 20
    if-ge v1, v0, :cond_0

    .line 21
    .line 22
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 23
    .line 24
    aget-object v0, v0, v1

    .line 25
    .line 26
    invoke-virtual {v0, p0}, LX/0BC;->A06(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_0
    invoke-static {v3}, LX/000;->A0O(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 34
    .line 35
    .line 36
    return-object v2

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    invoke-static {v3}, LX/000;->A0O(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 39
    .line 40
    .line 41
    throw v0
.end method

.method public static A02(Landroid/content/Context;I)V
    .locals 9

    .line 0
    const/4 v4, 0x0

    .line 1
    invoke-static {}, LX/0B9;->A07()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v6, "SoLoader"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "SoLoader already initialized"

    .line 10
    .line 11
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v0, "Initializing SoLoader: "

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, LX/000;->A0B(Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 29
    .line 30
    .line 31
    move-result-object v8

    .line 32
    :try_start_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    const/16 v0, 0x17

    .line 36
    .line 37
    if-lt v5, v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 38
    .line 39
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/16 v0, 0x80

    .line 48
    .line 49
    invoke-virtual {v1, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 54
    .line 55
    if-eqz v1, :cond_1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 56
    .line 57
    :try_start_2
    const-string v0, "com.facebook.soloader.enabled"

    .line 58
    .line 59
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    goto :goto_0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 67
    :catch_0
    move-exception v2

    .line 68
    :try_start_3
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-string v0, "Unexpected issue with package manager ("

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, ")"

    .line 81
    .line 82
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v6, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    sput-boolean v3, LX/0B9;->A00:Z

    .line 90
    .line 91
    if-eqz v3, :cond_15

    .line 92
    .line 93
    sget v2, LX/0B9;->A01:I

    .line 94
    .line 95
    if-nez v2, :cond_3

    .line 96
    .line 97
    const/4 v2, 0x1

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 103
    .line 104
    and-int/lit8 v0, v1, 0x1

    .line 105
    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    and-int/lit16 v0, v1, 0x80

    .line 109
    .line 110
    const/4 v2, 0x2

    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    const/4 v2, 0x3

    .line 114
    :cond_2
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    sput v2, LX/0B9;->A01:I

    .line 118
    .line 119
    and-int/lit16 v0, p1, 0x80

    .line 120
    .line 121
    if-nez v0, :cond_4

    .line 122
    .line 123
    invoke-static {p0, v2}, LX/0BF;->A09(Landroid/content/Context;I)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    or-int/lit8 p1, p1, 0x8

    .line 130
    .line 131
    :cond_4
    move-object v3, p0

    .line 132
    const-class v2, LX/0B9;

    .line 133
    .line 134
    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 135
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    if-nez v0, :cond_5

    .line 140
    .line 141
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v0, "context.getApplicationContext returned null, holding reference to original context.ApplicationSoSource fallbacks to: "

    .line 146
    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    :goto_1
    sput-object v3, LX/0B9;->A03:Landroid/content/Context;

    .line 164
    .line 165
    new-instance v0, LX/086;

    .line 166
    .line 167
    invoke-direct {v0, v3}, LX/086;-><init>(Landroid/content/Context;)V

    .line 168
    .line 169
    .line 170
    sput-object v0, LX/0B9;->A05:LX/086;

    .line 171
    .line 172
    sget-object v0, LX/0B9;->A04:LX/0B5;

    .line 173
    .line 174
    if-nez v0, :cond_6

    .line 175
    .line 176
    new-instance v1, LX/08J;

    .line 177
    .line 178
    invoke-direct {v1}, LX/08J;-><init>()V

    .line 179
    .line 180
    .line 181
    new-instance v0, LX/08P;

    .line 182
    .line 183
    invoke-direct {v0, v1}, LX/08P;-><init>(LX/0B5;)V

    .line 184
    .line 185
    .line 186
    sput-object v0, LX/0B9;->A04:LX/0B5;

    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_5
    move-object v3, v0

    .line 190
    goto :goto_1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 191
    :cond_6
    :goto_2
    :try_start_5
    monitor-exit v2

    .line 192
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 193
    .line 194
    if-nez v0, :cond_19

    .line 195
    .line 196
    sget-object v7, LX/0B9;->A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 197
    .line 198
    invoke-virtual {v7}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 203
    .line 204
    .line 205
    :try_start_6
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 206
    .line 207
    if-nez v0, :cond_18

    .line 208
    .line 209
    sput p1, LX/0B9;->A02:I

    .line 210
    .line 211
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 212
    .line 213
    .line 214
    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 215
    and-int/lit16 v0, p1, 0x200

    .line 216
    .line 217
    const/4 v4, 0x0

    .line 218
    invoke-static {v0}, LX/000;->A0Q(I)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    and-int/lit16 v0, p1, 0x400

    .line 223
    .line 224
    invoke-static {v0}, LX/000;->A0Q(I)Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-eqz v1, :cond_7

    .line 229
    .line 230
    :try_start_7
    new-instance v1, LX/08A;

    .line 231
    .line 232
    invoke-direct {v1}, LX/08A;-><init>()V

    .line 233
    .line 234
    .line 235
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto/16 :goto_5

    .line 239
    .line 240
    :cond_7
    if-eqz v0, :cond_8

    .line 241
    .line 242
    goto/16 :goto_4

    .line 243
    .line 244
    :cond_8
    invoke-static {v3}, LX/0B9;->A05(Ljava/util/ArrayList;)V

    .line 245
    .line 246
    .line 247
    and-int/lit8 v0, p1, 0x1

    .line 248
    .line 249
    if-eqz v0, :cond_c

    .line 250
    .line 251
    sget v1, LX/0B9;->A01:I

    .line 252
    .line 253
    const/4 v2, 0x1

    .line 254
    if-eq v1, v2, :cond_9

    .line 255
    .line 256
    const/4 v0, 0x2

    .line 257
    if-eq v1, v0, :cond_a

    .line 258
    .line 259
    const/4 v0, 0x3

    .line 260
    if-eq v1, v0, :cond_a

    .line 261
    .line 262
    const-string v0, "Unsupported app type, we should not reach here"

    .line 263
    .line 264
    new-instance v1, Ljava/lang/RuntimeException;

    .line 265
    .line 266
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_9
    const/4 v2, 0x0

    .line 271
    :cond_a
    const/16 v0, 0x11

    .line 272
    .line 273
    if-gt v5, v0, :cond_b

    .line 274
    .line 275
    or-int/lit8 v2, v2, 0x1

    .line 276
    .line 277
    :cond_b
    sget-object v1, LX/0B9;->A03:Landroid/content/Context;

    .line 278
    .line 279
    new-instance v0, LX/08Z;

    .line 280
    .line 281
    invoke-direct {v0, v1, v2}, LX/08Z;-><init>(Landroid/content/Context;I)V

    .line 282
    .line 283
    .line 284
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v3, v4, v0}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    new-instance v1, LX/05E;

    .line 294
    .line 295
    invoke-direct {v1, p0}, LX/05E;-><init>(Landroid/content/Context;)V

    .line 296
    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_c
    sget v0, LX/0B9;->A01:I

    .line 300
    .line 301
    invoke-static {p0, v0}, LX/0BF;->A09(Landroid/content/Context;I)Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    if-eqz v0, :cond_d

    .line 306
    .line 307
    new-instance v1, LX/08X;

    .line 308
    .line 309
    invoke-direct {v1, p0}, LX/08X;-><init>(Landroid/content/Context;)V

    .line 310
    .line 311
    .line 312
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    iget-object v0, v1, LX/08X;->A02:Ljava/util/Set;

    .line 316
    .line 317
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    xor-int/lit8 v0, v0, 0x1

    .line 322
    .line 323
    if-eqz v0, :cond_d

    .line 324
    .line 325
    invoke-virtual {v3, v4, v1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    :cond_d
    sget v1, LX/0B9;->A01:I

    .line 329
    .line 330
    const/4 v2, 0x1

    .line 331
    if-eq v1, v2, :cond_e

    .line 332
    .line 333
    const/4 v0, 0x2

    .line 334
    if-eq v1, v0, :cond_f

    .line 335
    .line 336
    const/4 v0, 0x3

    .line 337
    if-eq v1, v0, :cond_f

    .line 338
    .line 339
    const-string v0, "Unsupported app type, we should not reach here"

    .line 340
    .line 341
    new-instance v1, Ljava/lang/RuntimeException;

    .line 342
    .line 343
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    :goto_3
    throw v1

    .line 347
    :cond_e
    const/4 v2, 0x0

    .line 348
    :cond_f
    const/16 v0, 0x11

    .line 349
    .line 350
    if-gt v5, v0, :cond_10

    .line 351
    .line 352
    or-int/lit8 v2, v2, 0x1

    .line 353
    .line 354
    :cond_10
    sget-object v1, LX/0B9;->A03:Landroid/content/Context;

    .line 355
    .line 356
    new-instance v0, LX/08Z;

    .line 357
    .line 358
    invoke-direct {v0, v1, v2}, LX/08Z;-><init>(Landroid/content/Context;I)V

    .line 359
    .line 360
    .line 361
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v3, v4, v0}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 365
    .line 366
    .line 367
    sget v0, LX/0B9;->A02:I

    .line 368
    .line 369
    and-int/lit8 v0, v0, 0x8

    .line 370
    .line 371
    if-nez v0, :cond_11

    .line 372
    .line 373
    const-string v0, "lib-main"

    .line 374
    .line 375
    new-instance v1, LX/05F;

    .line 376
    .line 377
    invoke-direct {v1, p0, v0}, LX/05F;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 378
    .line 379
    .line 380
    goto :goto_5

    .line 381
    :goto_4
    invoke-static {v3}, LX/0B9;->A05(Ljava/util/ArrayList;)V

    .line 382
    .line 383
    .line 384
    new-instance v1, LX/08W;

    .line 385
    .line 386
    invoke-direct {v1}, LX/08W;-><init>()V

    .line 387
    .line 388
    .line 389
    :goto_5
    invoke-virtual {v3, v4, v1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 390
    .line 391
    .line 392
    :cond_11
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 393
    .line 394
    .line 395
    move-result v0

    .line 396
    new-array v0, v0, [LX/0BC;

    .line 397
    .line 398
    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object v5

    .line 402
    check-cast v5, [LX/0BC;

    .line 403
    .line 404
    invoke-static {}, LX/0B9;->A00()I

    .line 405
    .line 406
    .line 407
    move-result v4

    .line 408
    array-length v0, v5

    .line 409
    :goto_6
    add-int/lit8 v3, v0, -0x1

    .line 410
    .line 411
    if-lez v0, :cond_14

    .line 412
    .line 413
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    sget-boolean v2, LX/0B9;->A09:Z

    .line 417
    .line 418
    if-eqz v2, :cond_12

    .line 419
    .line 420
    const-string v1, "_"

    .line 421
    .line 422
    aget-object v0, v5, v3

    .line 423
    .line 424
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    invoke-static {v6, v1, v0}, LX/0Ar;->A01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    :cond_12
    aget-object v0, v5, v3

    .line 436
    .line 437
    invoke-virtual {v0, v4}, LX/0BC;->A07(I)V

    .line 438
    .line 439
    .line 440
    if-eqz v2, :cond_13

    .line 441
    .line 442
    invoke-static {}, LX/0Ar;->A00()V

    .line 443
    .line 444
    .line 445
    :cond_13
    move v0, v3

    .line 446
    goto :goto_6

    .line 447
    :cond_14
    sput-object v5, LX/0B9;->A0C:[LX/0BC;

    .line 448
    .line 449
    sget-object v0, LX/0B9;->A07:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 452
    .line 453
    .line 454
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 455
    .line 456
    .line 457
    goto :goto_9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 458
    :catchall_0
    :try_start_8
    move-exception v0

    .line 459
    invoke-static {v7}, LX/0B9;->A06(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 460
    .line 461
    .line 462
    goto :goto_7

    .line 463
    :cond_15
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 464
    .line 465
    if-nez v0, :cond_17

    .line 466
    .line 467
    sget-object v1, LX/0B9;->A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 468
    .line 469
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 474
    .line 475
    .line 476
    :try_start_9
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 477
    .line 478
    if-nez v0, :cond_16

    .line 479
    .line 480
    const/4 v0, 0x0

    .line 481
    new-array v0, v0, [LX/0BC;

    .line 482
    .line 483
    sput-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 484
    .line 485
    goto :goto_8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 486
    :catchall_1
    :try_start_a
    move-exception v0

    .line 487
    invoke-static {v1}, LX/0B9;->A06(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 488
    .line 489
    .line 490
    goto :goto_7

    .line 491
    :catchall_2
    move-exception v0

    .line 492
    monitor-exit v2

    .line 493
    :goto_7
    throw v0

    .line 494
    :cond_16
    :goto_8
    invoke-static {v1}, LX/0B9;->A06(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 495
    .line 496
    .line 497
    :cond_17
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 498
    .line 499
    .line 500
    new-instance v1, LX/089;

    .line 501
    .line 502
    invoke-direct {v1}, LX/089;-><init>()V

    .line 503
    .line 504
    .line 505
    goto :goto_a

    .line 506
    :cond_18
    :goto_9
    invoke-static {v7}, LX/0B9;->A06(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 507
    .line 508
    .line 509
    :cond_19
    invoke-static {v6}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 510
    .line 511
    .line 512
    new-instance v1, LX/08O;

    .line 513
    .line 514
    invoke-direct {v1}, LX/08O;-><init>()V

    .line 515
    .line 516
    .line 517
    :goto_a
    invoke-static {}, LX/0BL;->A01()Z

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    if-nez v0, :cond_1a

    .line 522
    .line 523
    invoke-static {v1}, LX/0BL;->A00(LX/0BM;)V

    .line 524
    .line 525
    .line 526
    :cond_1a
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    const-string v0, "SoLoader initialized: "

    .line 531
    .line 532
    invoke-static {v0, v1, p1}, LX/000;->A0B(Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v0

    .line 536
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 537
    .line 538
    .line 539
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 540
    .line 541
    .line 542
    return-void

    .line 543
    :catchall_3
    move-exception v0

    .line 544
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 545
    .line 546
    .line 547
    throw v0
.end method

.method public static A03(Landroid/os/StrictMode$ThreadPolicy;Ljava/lang/String;I)V
    .locals 4

    .line 0
    sget-object v3, LX/044;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    .line 2
    invoke-static {v3}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    array-length v1, v0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-ge v0, v1, :cond_0

    .line 11
    .line 12
    const-string v0, "onLoadDependencyStart"

    .line 13
    .line 14
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    throw v0

    .line 19
    :cond_0
    or-int/lit8 v1, p2, 0x1

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    :try_start_0
    invoke-static {p0, p1, v0, v0, v1}, LX/0B9;->A08(Landroid/os/StrictMode$ThreadPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    invoke-static {v3}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    array-length v1, v0

    .line 32
    const/4 v0, 0x0

    .line 33
    if-ge v0, v1, :cond_1

    .line 34
    .line 35
    const-string v0, "onLoadDependencyEnd"

    .line 36
    .line 37
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    throw v0

    .line 42
    :cond_1
    return-void

    .line 43
    :catchall_0
    move-exception v0

    .line 44
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :catchall_1
    move-exception v2

    .line 46
    invoke-static {v3}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    array-length v1, v0

    .line 53
    const/4 v0, 0x0

    .line 54
    if-ge v0, v1, :cond_2

    .line 55
    .line 56
    const-string v0, "onLoadDependencyEnd"

    .line 57
    .line 58
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    throw v0

    .line 63
    :cond_2
    throw v2
.end method

.method public static A04(LX/0BC;)V
    .locals 6

    .line 0
    sget-object v5, LX/0B9;->A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 1
    .line 2
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 7
    .line 8
    .line 9
    :try_start_0
    invoke-static {}, LX/0B9;->A07()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, LX/0B9;->A00()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-virtual {p0, v0}, LX/0BC;->A07(I)V

    .line 20
    .line 21
    .line 22
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 23
    .line 24
    array-length v0, v0

    .line 25
    const/4 v4, 0x1

    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    new-array v3, v0, [LX/0BC;

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    aput-object p0, v3, v2

    .line 32
    .line 33
    sget-object v1, LX/0B9;->A0C:[LX/0BC;

    .line 34
    .line 35
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 36
    .line 37
    array-length v0, v0

    .line 38
    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    .line 40
    .line 41
    sput-object v3, LX/0B9;->A0C:[LX/0BC;

    .line 42
    .line 43
    sget-object v0, LX/0B9;->A07:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 46
    .line 47
    .line 48
    const-string v0, "SoLoader"

    .line 49
    .line 50
    invoke-static {v0}, LX/0Ax;->A00(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    invoke-static {v5}, LX/0B9;->A06(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    :try_start_1
    const-string v0, "SoLoader.init() not yet called"

    .line 58
    .line 59
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    :catchall_0
    move-exception v0

    .line 65
    invoke-static {v5}, LX/0B9;->A06(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 66
    .line 67
    .line 68
    throw v0
.end method

.method public static A05(Ljava/util/ArrayList;)V
    .locals 4

    .line 0
    invoke-static {}, LX/0BF;->A08()Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const-string v3, "/system/lib64:/vendor/lib64"

    .line 7
    .line 8
    :goto_0
    const-string v0, "LD_LIBRARY_PATH"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v1, ":"

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-static {v2}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v3, v0}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    :cond_0
    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v0, Ljava/util/HashSet;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    const-string v0, "SoLoader"

    .line 64
    .line 65
    invoke-static {v0}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v2, Ljava/io/File;

    .line 69
    .line 70
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    const/4 v1, 0x2

    .line 74
    new-instance v0, LX/08V;

    .line 75
    .line 76
    invoke-direct {v0, v2, v1}, LX/08V;-><init>(Ljava/io/File;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_1
    const-string v3, "/system/lib:/vendor/lib"

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    return-void
.end method

.method public static A06(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 1
    .line 2
    .line 3
    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static A07()Z
    .locals 3

    .line 0
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 1
    .line 2
    const/4 v2, 0x1

    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v1, LX/0B9;->A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    const/4 v2, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_0
    invoke-static {v1}, LX/000;->A0O(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 20
    .line 21
    .line 22
    return v2

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    invoke-static {v1}, LX/000;->A0O(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 25
    .line 26
    .line 27
    throw v0

    .line 28
    :cond_1
    return v2
.end method

.method public static A08(Landroid/os/StrictMode$ThreadPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 18

    .line 18804
    move-object/from16 v7, p0

    const-class p0, LX/0B9;

    move-object/from16 v5, p2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    sget-object v0, LX/0B9;->A0B:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 18805
    :cond_0
    monitor-enter p0

    .line 18806
    :try_start_0
    sget-object v12, LX/0B9;->A06:Ljava/util/HashSet;

    move-object/from16 v4, p1

    invoke-virtual {v12, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p3, :cond_1

    .line 18807
    monitor-exit p0

    return v2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 18808
    :goto_0
    sget-object v6, LX/0B9;->A0A:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18809
    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 18810
    :goto_1
    monitor-exit p0

    goto :goto_2

    .line 18811
    :cond_3
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 18812
    invoke-interface {v6, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 18813
    :goto_2
    sget-object v6, LX/0B9;->A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 18814
    :try_start_1
    monitor-enter v3

    move/from16 v13, p4

    if-nez v1, :cond_15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 18815
    :try_start_2
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    .line 18816
    :try_start_3
    invoke-virtual {v12, v4}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_4

    .line 18817
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    .line 18818
    invoke-static {v6}, LX/000;->A0O(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 18819
    return v2

    :cond_4
    const/4 v1, 0x1

    .line 18820
    :cond_5
    :try_start_5
    monitor-exit p0

    if-nez v1, :cond_15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    const-string v10, "SoLoader"

    .line 18821
    invoke-static {v10}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 18822
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_6
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_8

    .line 18823
    :try_start_7
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    if-eqz v0, :cond_13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 18824
    :try_start_8
    invoke-static {v6}, LX/000;->A0O(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 18825
    const/4 v11, 0x0

    if-nez v7, :cond_6

    goto :goto_3

    .line 18826
    :cond_6
    const/16 v17, 0x0

    goto :goto_4

    :goto_3
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    const/16 v17, 0x1

    .line 18827
    :goto_4
    sget-boolean v16, LX/0B9;->A09:Z

    if-eqz v16, :cond_8

    const-string v8, "]"

    const-string v0, "SoLoader.loadLibrary["

    if-eqz p2, :cond_7

    .line 18828
    invoke-static {v0, v5, v8}, LX/0Ar;->A01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18829
    :cond_7
    invoke-static {v0, v4, v8}, LX/0Ar;->A01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    .line 18830
    :cond_8
    :try_start_9
    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 18831
    :try_start_a
    sget-object v9, LX/0B9;->A0C:[LX/0BC;

    array-length v8, v9

    :goto_5
    if-ge v11, v8, :cond_9

    goto :goto_6

    .line 18832
    :cond_9
    sget-object v1, LX/0B9;->A03:Landroid/content/Context;

    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    invoke-static {v4, v1, v0}, Lcom/facebook/soloader/SoLoaderDSONotFoundError;->create(Ljava/lang/String;Landroid/content/Context;[LX/0BC;)Lcom/facebook/soloader/SoLoaderDSONotFoundError;

    move-result-object v1

    goto :goto_7

    .line 18833
    :goto_6
    aget-object v14, v9, v11

    .line 18834
    sget-object v15, LX/044;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    .line 18835
    invoke-static {v15}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    move-result-object v0

    .line 18836
    if-eqz v0, :cond_b

    .line 18837
    array-length v0, v0

    if-ge v2, v0, :cond_b

    .line 18838
    const-string v0, "onSoSourceLoadLibraryStart"

    .line 18839
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object v1

    .line 18840
    :cond_a
    :goto_7
    throw v1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 18841
    :cond_b
    :try_start_b
    invoke-virtual {v14, v7, v4, v13}, LX/0BC;->A04(Landroid/os/StrictMode$ThreadPolicy;Ljava/lang/String;I)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result v0

    .line 18842
    invoke-static {v0}, LX/000;->A0Q(I)Z

    move-result v14

    .line 18843
    :try_start_c
    invoke-static {v15}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    move-result-object v0

    .line 18844
    if-eqz v0, :cond_c

    .line 18845
    array-length v0, v0

    if-ge v2, v0, :cond_c

    .line 18846
    const-string v0, "onSoSourceLoadLibraryEnd"

    .line 18847
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object v1

    .line 18848
    goto :goto_7
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 18849
    :catchall_0
    move-exception v0

    .line 18850
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    :try_start_e
    move-exception v1

    .line 18851
    invoke-static {v15}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    move-result-object v0

    .line 18852
    if-eqz v0, :cond_a

    .line 18853
    array-length v0, v0

    if-ge v2, v0, :cond_a

    .line 18854
    const-string v0, "onSoSourceLoadLibraryEnd"

    .line 18855
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    move-result-object v1

    .line 18856
    goto :goto_7

    .line 18857
    :cond_c
    if-eqz v14, :cond_d

    goto :goto_8

    .line 18858
    :cond_d
    add-int/lit8 v11, v11, 0x1

    goto :goto_5
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 18859
    :goto_8
    :try_start_f
    invoke-static {v6}, LX/000;->A0O(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 18860
    if-eqz v16, :cond_f

    if-eqz p2, :cond_e
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 18861
    :try_start_10
    invoke-static {}, LX/0Ar;->A00()V

    .line 18862
    :cond_e
    invoke-static {}, LX/0Ar;->A00()V

    :cond_f
    if-eqz v17, :cond_10

    .line 18863
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V
    :try_end_10
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    .line 18864
    :cond_10
    :try_start_11
    invoke-static {v10}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 18865
    monitor-enter p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    .line 18866
    :try_start_12
    invoke-virtual {v12, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 18867
    monitor-exit p0

    goto :goto_b

    :catchall_2
    move-exception v4

    monitor-exit p0

    goto/16 :goto_f
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 18868
    :catch_0
    move-exception v2

    .line 18869
    :try_start_13
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/soloader/SoLoaderULError;

    invoke-direct {v0, v4, v1}, Lcom/facebook/soloader/SoLoaderULError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18870
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 18871
    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 18872
    :catchall_3
    move-exception v0

    .line 18873
    :try_start_14
    invoke-static {v6}, LX/000;->A0O(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 18874
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :catchall_4
    move-exception v0

    .line 18875
    if-eqz v16, :cond_12

    if-eqz p2, :cond_11

    .line 18876
    :try_start_15
    invoke-static {}, LX/0Ar;->A00()V

    .line 18877
    :cond_11
    invoke-static {}, LX/0Ar;->A00()V

    :cond_12
    if-eqz v17, :cond_14

    goto :goto_9
    :try_end_15
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    .line 18878
    :cond_13
    :try_start_16
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18879
    const-string v0, "Could not load: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " because SoLoader is not initialized"

    .line 18880
    invoke-static {v0, v10, v1}, LX/000;->A0N(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 18881
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18882
    const-string v0, "SoLoader not initialized, couldn\'t find DSO to load: "

    .line 18883
    invoke-static {v0, v4, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 18884
    new-instance v0, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v0, v1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :catchall_5
    :try_start_17
    move-exception v0

    .line 18885
    invoke-static {v6}, LX/000;->A0O(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    goto :goto_a

    .line 18886
    :goto_9
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 18887
    :cond_14
    :goto_a
    throw v0
    :try_end_17
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_17 .. :try_end_17} :catch_1
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    .line 18888
    :catch_1
    :try_start_18
    move-exception v4

    .line 18889
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1a

    const-string v1, "unexpected e_machine:"

    .line 18890
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 18891
    invoke-virtual {v2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 18892
    new-instance v0, LX/0B8;

    invoke-direct {v0, v1, v4}, LX/0B8;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    .line 18893
    :catchall_6
    move-exception v4

    .line 18894
    :try_start_19
    monitor-exit p0

    goto/16 :goto_f

    :cond_15
    :goto_b
    and-int/lit8 v0, p4, 0x10

    if-nez v0, :cond_1b
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    .line 18895
    :try_start_1a
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, LX/0B9;->A0B:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v2, 0x1

    :cond_16
    if-eqz p3, :cond_1b

    if-nez v2, :cond_1b

    .line 18896
    sget-boolean v7, LX/0B9;->A09:Z

    if-eqz v7, :cond_17

    const-string v2, "MergedSoMapping.invokeJniOnload["

    const-string v0, "]"

    .line 18897
    invoke-static {v2, v5, v0}, LX/0Ar;->A01(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    :cond_17
    :try_start_1b
    const-string v0, "SoLoader"

    .line 18898
    invoke-static {v0}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 18899
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 18900
    :cond_18
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 18901
    const-string v0, "Unknown library: "

    .line 18902
    invoke-static {v0, v5, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 18903
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object v1

    .line 18904
    :goto_c
    throw v1

    .line 18905
    :sswitch_0
    const-string v0, "simplejni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18906
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libsimplejni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18907
    :sswitch_1
    const-string v0, "rsyspollsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18908
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsyspollsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18909
    :sswitch_2
    const-string v0, "fb_sqlite_3370200"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18910
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libfb_sqlite_3370200_so()I

    move-result v0

    goto/16 :goto_d

    .line 18911
    :sswitch_3
    const-string v0, "FBLiteDatabaseRedactor-jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18912
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libFBLiteDatabaseRedactor_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18913
    :sswitch_4
    const-string v0, "litersysjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18914
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->liblitersysjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18915
    :sswitch_5
    const-string v0, "tls13_socket"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18916
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libtls13_socket_so()I

    move-result v0

    goto/16 :goto_d

    .line 18917
    :sswitch_6
    const-string v0, "sdkthreadidentifierjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18918
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libsdkthreadidentifierjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18919
    :sswitch_7
    const-string v0, "fbsystrace"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18920
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libfbsystrace_so()I

    move-result v0

    goto/16 :goto_d

    .line 18921
    :sswitch_8
    const-string v0, "roi-align-ops-xplat"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18922
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libroi_align_ops_xplat_so()I

    move-result v0

    goto/16 :goto_d

    .line 18923
    :sswitch_9
    const-string v0, "museumutils"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18924
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmuseumutils_so()I

    move-result v0

    goto/16 :goto_d

    .line 18925
    :sswitch_a
    const-string v0, "plthooks"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18926
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libplthooks_so()I

    move-result v0

    goto/16 :goto_d

    .line 18927
    :sswitch_b
    const-string v0, "livestreaming-rtmp-fblite"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18928
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->liblivestreaming_rtmp_fblite_so()I

    move-result v0

    goto/16 :goto_d

    .line 18929
    :sswitch_c
    const-string v0, "distract-common-funcs"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18930
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libdistract_common_funcs_so()I

    move-result v0

    goto/16 :goto_d

    .line 18931
    :sswitch_d
    const-string v0, "comfacebookmillmsystestcommondirectsqlnativeopsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18932
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libcomfacebookmillmsystestcommondirectsqlnativeopsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18933
    :sswitch_e
    const-string v0, "jniperflogger"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18934
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libjniperflogger_so()I

    move-result v0

    goto/16 :goto_d

    .line 18935
    :sswitch_f
    const-string v0, "rsdevxcallagentjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18936
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsdevxcallagentjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18937
    :sswitch_10
    const-string v0, "msysjniinfranosqlite"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18938
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmsysjniinfranosqlite_so()I

    move-result v0

    goto/16 :goto_d

    .line 18939
    :sswitch_11
    const-string v0, "rsyscallcontextjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18940
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsyscallcontextjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18941
    :sswitch_12
    const-string v0, "hprofsanitizercommon"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18942
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libhprofsanitizercommon_so()I

    move-result v0

    goto/16 :goto_d

    .line 18943
    :sswitch_13
    const-string v0, "rstransportproxies"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18944
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librstransportproxies_so()I

    move-result v0

    goto/16 :goto_d

    .line 18945
    :sswitch_14
    const-string v0, "rsysaudiojni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18946
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysaudiojni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18947
    :sswitch_15
    const-string v0, "profilo_mmapbuf"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18948
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_mmapbuf_so()I

    move-result v0

    goto/16 :goto_d

    .line 18949
    :sswitch_16
    const-string v0, "rsysmediastatsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18950
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysmediastatsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18951
    :sswitch_17
    const-string v0, "rsysgroupexpansionjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18952
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysgroupexpansionjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18953
    :sswitch_18
    const-string v0, "c++_streams"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18954
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libc___streams_so()I

    move-result v0

    goto/16 :goto_d

    .line 18955
    :sswitch_19
    const-string v0, "rsysoverlayconfigmanagerjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18956
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysoverlayconfigmanagerjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18957
    :sswitch_1a
    const-string v0, "rsysturnallocationjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18958
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysturnallocationjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18959
    :sswitch_1b
    const-string v0, "mailboxtracehandlerjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18960
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxtracehandlerjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18961
    :sswitch_1c
    const-string v0, "rsyscallinfojni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18962
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsyscallinfojni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18963
    :sswitch_1d
    const-string v0, "LiteReceiveMetricIntegrationPluginjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18964
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libLiteReceiveMetricIntegrationPluginjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18965
    :sswitch_1e
    const-string v0, "breakpad-fatal-java-exception-description-handler-jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18966
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libbreakpad_fatal_java_exception_description_handler_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18967
    :sswitch_1f
    const-string v0, "rsysaudiomixerholderjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18968
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysaudiomixerholderjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18969
    :sswitch_20
    const-string v0, "rsysvideojni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18970
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysvideojni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18971
    :sswitch_21
    const-string v0, "mailboxclientnotificationsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18972
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxclientnotificationsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18973
    :sswitch_22
    const-string v0, "pytorch_jni_lite"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18974
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libpytorch_jni_lite_so()I

    move-result v0

    goto/16 :goto_d

    .line 18975
    :sswitch_23
    const-string v0, "LiteMsysDatabaseSchemaDeployer-jninovt"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18976
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libLiteMsysDatabaseSchemaDeployer_jninovt_so()I

    move-result v0

    goto/16 :goto_d

    .line 18977
    :sswitch_24
    const-string v0, "comfacebookmillmsyscommondirectsqlnativeopsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18978
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libcomfacebookmillmsyscommondirectsqlnativeopsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18979
    :sswitch_25
    const-string v0, "rsysdominantspeakerjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18980
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysdominantspeakerjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18981
    :sswitch_26
    const-string v0, "mailboxencryptedbackupsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18982
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxencryptedbackupsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18983
    :sswitch_27
    const-string v0, "jni-mcpintegration-fblite_integrationPluginRegistry"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18984
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libjni_mcpintegration_fblite_integrationPluginRegistry_so()I

    move-result v0

    goto/16 :goto_d

    .line 18985
    :sswitch_28
    const-string v0, "mailboxlitecommonjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18986
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxlitecommonjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18987
    :sswitch_29
    const-string v0, "mailboxmarkinboxseenjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18988
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxmarkinboxseenjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18989
    :sswitch_2a
    const-string v0, "rsysstatejni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18990
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysstatejni_so()I

    move-result v0

    goto/16 :goto_d

    .line 18991
    :sswitch_2b
    const-string v0, "proxygen_lib_utils_logging"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18992
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libproxygen_lib_utils_logging_so()I

    move-result v0

    goto/16 :goto_d

    .line 18993
    :sswitch_2c
    const-string v0, "msysjniinfra"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18994
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmsysjniinfra_so()I

    move-result v0

    goto/16 :goto_d

    .line 18995
    :sswitch_2d
    const-string v0, "msysjniutils"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18996
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmsysjniutils_so()I

    move-result v0

    goto/16 :goto_d

    .line 18997
    :sswitch_2e
    const-string v0, "native_bridge"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18998
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libnative_bridge_so()I

    move-result v0

    goto/16 :goto_d

    .line 18999
    :sswitch_2f
    const-string v0, "mailboxsdktransportjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19000
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxsdktransportjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19001
    :sswitch_30
    const-string v0, "fbjitdalvikutils"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19002
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libfbjitdalvikutils_so()I

    move-result v0

    goto/16 :goto_d

    .line 19003
    :sswitch_31
    const-string v0, "rsyscamerajni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19004
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsyscamerajni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19005
    :sswitch_32
    const-string v0, "rsysstreamjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19006
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysstreamjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19007
    :sswitch_33
    const-string v0, "rsysbasejni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19008
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysbasejni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19009
    :sswitch_34
    const-string v0, "rsysfileloggingjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19010
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysfileloggingjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19011
    :sswitch_35
    const-string v0, "dalvikdistract"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19012
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libdalvikdistract_so()I

    move-result v0

    goto/16 :goto_d

    .line 19013
    :sswitch_36
    const-string v0, "rsysroomtypecallingjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19014
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysroomtypecallingjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19015
    :sswitch_37
    const-string v0, "msssim"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19016
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmsssim_so()I

    move-result v0

    goto/16 :goto_d

    .line 19017
    :sswitch_38
    const-string v0, "mediastreaming-sessionlog"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19018
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmediastreaming_sessionlog_so()I

    move-result v0

    goto/16 :goto_d

    .line 19019
    :sswitch_39
    const-string v0, "mailboxtypingindicatorjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19020
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxtypingindicatorjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19021
    :sswitch_3a
    const-string v0, "mnscertificateverifier"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19022
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmnscertificateverifier_so()I

    move-result v0

    goto/16 :goto_d

    .line 19023
    :sswitch_3b
    const-string v0, "mailboxrtccalleventsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19024
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxrtccalleventsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19025
    :sswitch_3c
    const-string v0, "phaser"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19026
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libphaser_so()I

    move-result v0

    goto/16 :goto_d

    .line 19027
    :sswitch_3d
    const-string v0, "profilo_mapping_logger"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19028
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_mapping_logger_so()I

    move-result v0

    goto/16 :goto_d

    .line 19029
    :sswitch_3e
    const-string v0, "profilo_atrace"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19030
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_atrace_so()I

    move-result v0

    goto/16 :goto_d

    .line 19031
    :sswitch_3f
    const-string v0, "mailboxsearchjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19032
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxsearchjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19033
    :sswitch_40
    const-string v0, "rsysendedjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19034
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysendedjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19035
    :sswitch_41
    const-string v0, "rsysvideorenderjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19036
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysvideorenderjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19037
    :sswitch_42
    const-string v0, "third-party_libvpx_vpx_asm"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19038
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libthird_party_libvpx_vpx_asm_so()I

    move-result v0

    goto/16 :goto_d

    .line 19039
    :sswitch_43
    const-string v0, "openh264v211libdecoderAndroid"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19040
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libopenh264v211libdecoderAndroid_so()I

    move-result v0

    goto/16 :goto_d

    .line 19041
    :sswitch_44
    const-string v0, "storer"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19042
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libstorer_so()I

    move-result v0

    goto/16 :goto_d

    .line 19043
    :sswitch_45
    const-string v0, "profilo_config"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19044
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_config_so()I

    move-result v0

    goto/16 :goto_d

    .line 19045
    :sswitch_46
    const-string v0, "profilo_configjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19046
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_configjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19047
    :sswitch_47
    const-string v0, "mem_alloc_marker"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19048
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmem_alloc_marker_so()I

    move-result v0

    goto/16 :goto_d

    .line 19049
    :sswitch_48
    const-string v0, "hiddenapis2"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19050
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libhiddenapis2_so()I

    move-result v0

    goto/16 :goto_d

    .line 19051
    :sswitch_49
    const-string v0, "profilo_mmapbuf_buffer_jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19052
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_mmapbuf_buffer_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19053
    :sswitch_4a
    const-string v0, "rsysdatachanneljni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19054
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysdatachanneljni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19055
    :sswitch_4b
    const-string v0, "rsysturnallocationmsysjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19056
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysturnallocationmsysjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19057
    :sswitch_4c
    const-string v0, "webrtc"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19058
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libwebrtc_so()I

    move-result v0

    goto/16 :goto_d

    .line 19059
    :sswitch_4d
    const-string v0, "MessengerEchoQueriesCQLTestHelpers"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19060
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libMessengerEchoQueriesCQLTestHelpers_so()I

    move-result v0

    goto/16 :goto_d

    .line 19061
    :sswitch_4e
    const-string v0, "mailboxcutoverinternaljni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19062
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxcutoverinternaljni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19063
    :sswitch_4f
    const-string v0, "xxhash"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19064
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libxxhash_so()I

    move-result v0

    goto/16 :goto_d

    .line 19065
    :sswitch_50
    const-string v0, "rsyscallmanagercallclientjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19066
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsyscallmanagercallclientjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19067
    :sswitch_51
    const-string v0, "profilo_stack_unwinder"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19068
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_stack_unwinder_so()I

    move-result v0

    goto/16 :goto_d

    .line 19069
    :sswitch_52
    const-string v0, "LiteMsysTableToCqlProcRegistration-jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19070
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libLiteMsysTableToCqlProcRegistration_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19071
    :sswitch_53
    const-string v0, "mediastreaming"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19072
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmediastreaming_so()I

    move-result v0

    goto/16 :goto_d

    .line 19073
    :sswitch_54
    const-string v0, "profilo_signal_handler"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19074
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_signal_handler_so()I

    move-result v0

    goto/16 :goto_d

    .line 19075
    :sswitch_55
    const-string v0, "threadutils-jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19076
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libthreadutils_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19077
    :sswitch_56
    const-string v0, "mailboxanalyticsloggingjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19078
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxanalyticsloggingjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19079
    :sswitch_57
    const-string v0, "hprofsanitizer"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19080
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libhprofsanitizer_so()I

    move-result v0

    goto/16 :goto_d

    .line 19081
    :sswitch_58
    const-string v0, "profilo_logger"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19082
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_logger_so()I

    move-result v0

    goto/16 :goto_d

    .line 19083
    :sswitch_59
    const-string v0, "messengermcppluginregistryintegrationjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19084
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmessengermcppluginregistryintegrationjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19085
    :sswitch_5a
    const-string v0, "profilo_jmulti_buffer_logger"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19086
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_jmulti_buffer_logger_so()I

    move-result v0

    goto/16 :goto_d

    .line 19087
    :sswitch_5b
    const-string v0, "image_quality_utils_lite"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19088
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libimage_quality_utils_lite_so()I

    move-result v0

    goto/16 :goto_d

    .line 19089
    :sswitch_5c
    const-string v0, "profilo_stacktrace"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19090
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_stacktrace_so()I

    move-result v0

    goto/16 :goto_d

    .line 19091
    :sswitch_5d
    const-string v0, "messengerqpfilterdispatcherjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19092
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmessengerqpfilterdispatcherjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19093
    :sswitch_5e
    const-string v0, "mediastreaming-transport"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19094
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmediastreaming_transport_so()I

    move-result v0

    goto/16 :goto_d

    .line 19095
    :sswitch_5f
    const-string v0, "messengerplatformloggertamlistenerjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19096
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmessengerplatformloggertamlistenerjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19097
    :sswitch_60
    const-string v0, "LiteAdvancedCryptoTransportReinstallDataProviderPluginjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19098
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libLiteAdvancedCryptoTransportReinstallDataProviderPluginjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19099
    :sswitch_61
    const-string v0, "mailboxpresencejni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19100
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxpresencejni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19101
    :sswitch_62
    const-string v0, "audiograph-native"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19102
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libaudiograph_native_so()I

    move-result v0

    goto/16 :goto_d

    .line 19103
    :sswitch_63
    const-string v0, "rsyscryptocontextfactoryjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19104
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsyscryptocontextfactoryjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19105
    :sswitch_64
    const-string v0, "mailboxgifjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19106
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxgifjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19107
    :sswitch_65
    const-string v0, "mailboxreactionjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19108
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxreactionjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19109
    :sswitch_66
    const-string v0, "fbacore-jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19110
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libfbacore_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19111
    :sswitch_67
    const-string v0, "LiteMsysDatabaseSchemaDeployer-acg"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19112
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libLiteMsysDatabaseSchemaDeployer_acg_so()I

    move-result v0

    goto/16 :goto_d

    .line 19113
    :sswitch_68
    const-string v0, "LiteMsysDatabaseSchemaDeployer-jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19114
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libLiteMsysDatabaseSchemaDeployer_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19115
    :sswitch_69
    const-string v0, "LiteMsysDatabaseSchemaDeployernovt"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19116
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libLiteMsysDatabaseSchemaDeployernovt_so()I

    move-result v0

    goto/16 :goto_d

    .line 19117
    :sswitch_6a
    const-string v0, "rsyscalljni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19118
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsyscalljni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19119
    :sswitch_6b
    const-string v0, "rsdevxagentjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19120
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsdevxagentjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19121
    :sswitch_6c
    const-string v0, "messengerplatformloggermplsyncmonitorjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19122
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmessengerplatformloggermplsyncmonitorjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19123
    :sswitch_6d
    const-string v0, "profilo"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19124
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_so()I

    move-result v0

    goto/16 :goto_d

    .line 19125
    :sswitch_6e
    const-string v0, "rsysvideoescalationjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19126
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysvideoescalationjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19127
    :sswitch_6f
    const-string v0, "fb_mozjpeg"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19128
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libfb_mozjpeg_so()I

    move-result v0

    goto/16 :goto_d

    .line 19129
    :sswitch_70
    const-string v0, "millruntimejni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19130
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmillruntimejni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19131
    :sswitch_71
    const-string v0, "classid800"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19132
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libclassid800_so()I

    move-result v0

    goto/16 :goto_d

    .line 19133
    :sswitch_72
    const-string v0, "classid810"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19134
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libclassid810_so()I

    move-result v0

    goto/16 :goto_d

    .line 19135
    :sswitch_73
    const-string v0, "classid900"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19136
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libclassid900_so()I

    move-result v0

    goto/16 :goto_d

    .line 19137
    :sswitch_74
    const-string v0, "profiloextapi"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19138
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofiloextapi_so()I

    move-result v0

    goto/16 :goto_d

    .line 19139
    :sswitch_75
    const-string v0, "domaininfoutils_jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19140
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libdomaininfoutils_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19141
    :sswitch_76
    const-string v0, "profilo_jni_helpers"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19142
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_jni_helpers_so()I

    move-result v0

    goto/16 :goto_d

    .line 19143
    :sswitch_77
    const-string v0, "comfacebookmillmsyscorequeriescqlexportsdirectsqlnativeopsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19144
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libcomfacebookmillmsyscorequeriescqlexportsdirectsqlnativeopsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19145
    :sswitch_78
    const-string v0, "messengerplatformloggerjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19146
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmessengerplatformloggerjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19147
    :sswitch_79
    const-string v0, "rsystslogjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19148
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsystslogjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19149
    :sswitch_7a
    const-string v0, "fbgloginit"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19150
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libfbgloginit_so()I

    move-result v0

    goto/16 :goto_d

    .line 19151
    :sswitch_7b
    const-string v0, "mailboxqpjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19152
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxqpjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19153
    :sswitch_7c
    const-string v0, "classid1000"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19154
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libclassid1000_so()I

    move-result v0

    goto/16 :goto_d

    .line 19155
    :sswitch_7d
    const-string v0, "classid1100"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19156
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libclassid1100_so()I

    move-result v0

    goto/16 :goto_d

    .line 19157
    :sswitch_7e
    const-string v0, "rsysdevicestatsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19158
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysdevicestatsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19159
    :sswitch_7f
    const-string v0, "profilo_local_symbols"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19160
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_local_symbols_so()I

    move-result v0

    goto/16 :goto_d

    .line 19161
    :sswitch_80
    const-string v0, "mailboxglobaldeletejni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19162
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxglobaldeletejni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19163
    :sswitch_81
    const-string v0, "rsysaudiomodulejni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19164
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysaudiomodulejni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19165
    :sswitch_82
    const-string v0, "profilo_block_logger"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19166
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_block_logger_so()I

    move-result v0

    goto/16 :goto_d

    .line 19167
    :sswitch_83
    const-string v0, "comfacebookmillshimaddressabletransportsbasedirectsqlnativeopsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19168
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libcomfacebookmillshimaddressabletransportsbasedirectsqlnativeopsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19169
    :sswitch_84
    const-string v0, "mailboxadvancedcryptotransportdiskmanagerjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19170
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxadvancedcryptotransportdiskmanagerjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19171
    :sswitch_85
    const-string v0, "mailboxsdkjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19172
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxsdkjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19173
    :sswitch_86
    const-string v0, "MsysTTRCPluginjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19174
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libMsysTTRCPluginjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19175
    :sswitch_87
    const-string v0, "asyncexecutor"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19176
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libasyncexecutor_so()I

    move-result v0

    goto/16 :goto_d

    .line 19177
    :sswitch_88
    const-string v0, "distract-common-museum-funcs-500"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19178
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libdistract_common_museum_funcs_500_so()I

    move-result v0

    goto/16 :goto_d

    .line 19179
    :sswitch_89
    const-string v0, "distract-common-museum-funcs-511"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19180
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libdistract_common_museum_funcs_511_so()I

    move-result v0

    goto/16 :goto_d

    .line 19181
    :sswitch_8a
    const-string v0, "distract-common-museum-funcs-601"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19182
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libdistract_common_museum_funcs_601_so()I

    move-result v0

    goto/16 :goto_d

    .line 19183
    :sswitch_8b
    const-string v0, "distract-common-museum-funcs-700"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19184
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libdistract_common_museum_funcs_700_so()I

    move-result v0

    goto/16 :goto_d

    .line 19185
    :sswitch_8c
    const-string v0, "distract-common-museum-funcs-712"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19186
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libdistract_common_museum_funcs_712_so()I

    move-result v0

    goto/16 :goto_d

    .line 19187
    :sswitch_8d
    const-string v0, "distract-common-museum-funcs-800"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19188
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libdistract_common_museum_funcs_800_so()I

    move-result v0

    goto/16 :goto_d

    .line 19189
    :sswitch_8e
    const-string v0, "distract-common-museum-funcs-810"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19190
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libdistract_common_museum_funcs_810_so()I

    move-result v0

    goto/16 :goto_d

    .line 19191
    :sswitch_8f
    const-string v0, "mailboxtamjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19192
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxtamjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19193
    :sswitch_90
    const-string v0, "rsysoutgoingcallconfigjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19194
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysoutgoingcallconfigjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19195
    :sswitch_91
    const-string v0, "MEMMobileConfigPlatformFbLitePluginjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19196
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libMEMMobileConfigPlatformFbLitePluginjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19197
    :sswitch_92
    const-string v0, "rsyslogjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19198
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsyslogjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19199
    :sswitch_93
    const-string v0, "mediastreaming-config"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19200
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmediastreaming_config_so()I

    move-result v0

    goto/16 :goto_d

    .line 19201
    :sswitch_94
    const-string v0, "fmt"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19202
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libfmt_so()I

    move-result v0

    goto/16 :goto_d

    .line 19203
    :sswitch_95
    const-string v0, "MsysExperimentCachePluginjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19204
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libMsysExperimentCachePluginjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19205
    :sswitch_96
    const-string v0, "glog"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19206
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libglog_so()I

    move-result v0

    goto/16 :goto_d

    .line 19207
    :sswitch_97
    const-string v0, "opus"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19208
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libopus_so()I

    move-result v0

    goto/16 :goto_d

    .line 19209
    :sswitch_98
    const-string v0, "ssim"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19210
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libssim_so()I

    move-result v0

    goto/16 :goto_d

    .line 19211
    :sswitch_99
    const-string v0, "sslx"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19212
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libsslx_so()I

    move-result v0

    goto/16 :goto_d

    .line 19213
    :sswitch_9a
    const-string v0, "LiteMsysDatabaseSchemaDeployer"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19214
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libLiteMsysDatabaseSchemaDeployer_so()I

    move-result v0

    goto/16 :goto_d

    .line 19215
    :sswitch_9b
    const-string v0, "MCIAppExperimentsPluginjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19216
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libMCIAppExperimentsPluginjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19217
    :sswitch_9c
    const-string v0, "MsysIsDialtoneProviderPluginjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19218
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libMsysIsDialtoneProviderPluginjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19219
    :sswitch_9d
    const-string v0, "actoverunity"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19220
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libactoverunity_so()I

    move-result v0

    goto/16 :goto_d

    .line 19221
    :sswitch_9e
    const-string v0, "maskrcnn-ops-xplat"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19222
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmaskrcnn_ops_xplat_so()I

    move-result v0

    goto/16 :goto_d

    .line 19223
    :sswitch_9f
    const-string v0, "rsysvideoeffectjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19224
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysvideoeffectjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19225
    :sswitch_a0
    const-string v0, "millimmutablecursorjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19226
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmillimmutablecursorjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19227
    :sswitch_a1
    const-string v0, "pytorch_vision_jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19228
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libpytorch_vision_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19229
    :sswitch_a2
    const-string v0, "mailboxcommunityjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19230
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxcommunityjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19231
    :sswitch_a3
    const-string v0, "messengerplatformloggerttrclistenerjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19232
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmessengerplatformloggerttrclistenerjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19233
    :sswitch_a4
    const-string v0, "fizzwrapper"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19234
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libfizzwrapper_so()I

    move-result v0

    goto/16 :goto_d

    .line 19235
    :sswitch_a5
    const-string v0, "openh264v211libencoderAndroid"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19236
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libopenh264v211libencoderAndroid_so()I

    move-result v0

    goto/16 :goto_d

    .line 19237
    :sswitch_a6
    const-string v0, "distract"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19238
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libdistract_so()I

    move-result v0

    goto/16 :goto_d

    .line 19239
    :sswitch_a7
    const-string v0, "mailboxproactivewarningsnoncorejni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19240
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxproactivewarningsnoncorejni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19241
    :sswitch_a8
    const-string v0, "comfacebookmillinstagramsecuremessagesharedfragmentutilsdirectsqlnativeopsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19242
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libcomfacebookmillinstagramsecuremessagesharedfragmentutilsdirectsqlnativeopsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19243
    :sswitch_a9
    const-string v0, "mailboxmsyslitejni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19244
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxmsyslitejni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19245
    :sswitch_aa
    const-string v0, "mailboxfblitesdkjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19246
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxfblitesdkjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19247
    :sswitch_ab
    const-string v0, "jniexecutors"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19248
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libjniexecutors_so()I

    move-result v0

    goto/16 :goto_d

    .line 19249
    :sswitch_ac
    const-string v0, "mailboxreportingsdkjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19250
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxreportingsdkjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19251
    :sswitch_ad
    const-string v0, "profiloprofilerunwindc500"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19252
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofiloprofilerunwindc500_so()I

    move-result v0

    goto/16 :goto_d

    .line 19253
    :sswitch_ae
    const-string v0, "profiloprofilerunwindc510"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19254
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofiloprofilerunwindc510_so()I

    move-result v0

    goto/16 :goto_d

    .line 19255
    :sswitch_af
    const-string v0, "profiloprofilerunwindc600"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19256
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofiloprofilerunwindc600_so()I

    move-result v0

    goto/16 :goto_d

    .line 19257
    :sswitch_b0
    const-string v0, "profiloprofilerunwindc700"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19258
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofiloprofilerunwindc700_so()I

    move-result v0

    goto/16 :goto_d

    .line 19259
    :sswitch_b1
    const-string v0, "profiloprofilerunwindc710"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19260
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofiloprofilerunwindc710_so()I

    move-result v0

    goto/16 :goto_d

    .line 19261
    :sswitch_b2
    const-string v0, "profiloprofilerunwindc711"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19262
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofiloprofilerunwindc711_so()I

    move-result v0

    goto/16 :goto_d

    .line 19263
    :sswitch_b3
    const-string v0, "profiloprofilerunwindc712"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19264
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofiloprofilerunwindc712_so()I

    move-result v0

    goto/16 :goto_d

    .line 19265
    :sswitch_b4
    const-string v0, "profiloprofilerunwindc800"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19266
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofiloprofilerunwindc800_so()I

    move-result v0

    goto/16 :goto_d

    .line 19267
    :sswitch_b5
    const-string v0, "profiloprofilerunwindc810"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19268
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofiloprofilerunwindc810_so()I

    move-result v0

    goto/16 :goto_d

    .line 19269
    :sswitch_b6
    const-string v0, "profiloprofilerunwindc900"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19270
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofiloprofilerunwindc900_so()I

    move-result v0

    goto/16 :goto_d

    .line 19271
    :sswitch_b7
    const-string v0, "rsyscallmanagerjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19272
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsyscallmanagerjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19273
    :sswitch_b8
    const-string v0, "rsysvideosubscriptionsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19274
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysvideosubscriptionsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19275
    :sswitch_b9
    const-string v0, "mailboxmessagingprivacysettingsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19276
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxmessagingprivacysettingsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19277
    :sswitch_ba
    const-string v0, "minscompiler-jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19278
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libminscompiler_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19279
    :sswitch_bb
    const-string v0, "android-reachability-announcer"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19280
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libandroid_reachability_announcer_so()I

    move-result v0

    goto/16 :goto_d

    .line 19281
    :sswitch_bc
    const-string v0, "mailboxsyncstatesjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19282
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxsyncstatesjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19283
    :sswitch_bd
    const-string v0, "mailboxmplwaisyncmonitorjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19284
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxmplwaisyncmonitorjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19285
    :sswitch_be
    const-string v0, "mailboxchannelhealthjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19286
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxchannelhealthjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19287
    :sswitch_bf
    const-string v0, "mailboxfbtransportjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19288
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxfbtransportjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19289
    :sswitch_c0
    const-string v0, "double-conversion"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19290
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libdouble_conversion_so()I

    move-result v0

    goto/16 :goto_d

    .line 19291
    :sswitch_c1
    const-string v0, "rsyscryptojni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19292
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsyscryptojni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19293
    :sswitch_c2
    const-string v0, "profilo_apiimpl"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19294
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_apiimpl_so()I

    move-result v0

    goto/16 :goto_d

    .line 19295
    :sswitch_c3
    const-string v0, "fbbacktrace"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19296
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libfbbacktrace_so()I

    move-result v0

    goto/16 :goto_d

    .line 19297
    :sswitch_c4
    const-string v0, "profilo_multi_buffer_logger"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19298
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_multi_buffer_logger_so()I

    move-result v0

    goto/16 :goto_d

    .line 19299
    :sswitch_c5
    const-string v0, "mailboxstickerpackjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19300
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxstickerpackjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19301
    :sswitch_c6
    const-string v0, "artsmartgc"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19302
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libartsmartgc_so()I

    move-result v0

    goto/16 :goto_d

    .line 19303
    :sswitch_c7
    const-string v0, "LiteExperimentsMobileConfigPluginjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19304
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libLiteExperimentsMobileConfigPluginjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19305
    :sswitch_c8
    const-string v0, "rsysmediajni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19306
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysmediajni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19307
    :sswitch_c9
    const-string v0, "mailboxreachabilitysettingsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19308
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxreachabilitysettingsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19309
    :sswitch_ca
    const-string v0, "mailboxmemmediautilsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19310
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxmemmediautilsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19311
    :sswitch_cb
    const-string v0, "LiteMsysDasmConfigCreator-jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19312
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libLiteMsysDasmConfigCreator_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19313
    :sswitch_cc
    const-string v0, "classid"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19314
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libclassid_so()I

    move-result v0

    goto/16 :goto_d

    .line 19315
    :sswitch_cd
    const-string v0, "fbandroid_libraries_profilo_cpp_providers"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19316
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libfbandroid_libraries_profilo_cpp_providers_so()I

    move-result v0

    goto/16 :goto_d

    .line 19317
    :sswitch_ce
    const-string v0, "mailboxe2eexmareceiverfetchjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19318
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxe2eexmareceiverfetchjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19319
    :sswitch_cf
    const-string v0, "comfacebookmillmessengerencryptedmessagingmobileconfigcqlutilsdirectsqlnativeopsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19320
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libcomfacebookmillmessengerencryptedmessagingmobileconfigcqlutilsdirectsqlnativeopsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19321
    :sswitch_d0
    const-string v0, "imagepipeline"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19322
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libimagepipeline_so()I

    move-result v0

    goto/16 :goto_d

    .line 19323
    :sswitch_d1
    const-string v0, "reliablemedia"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19324
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libreliablemedia_so()I

    move-result v0

    goto/16 :goto_d

    .line 19325
    :sswitch_d2
    const-string v0, "storer-jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19326
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libstorer_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19327
    :sswitch_d3
    const-string v0, "mailboxcorejni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19328
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxcorejni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19329
    :sswitch_d4
    const-string v0, "c++_demangle"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19330
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libc___demangle_so()I

    move-result v0

    goto/16 :goto_d

    .line 19331
    :sswitch_d5
    const-string v0, "millcommonjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19332
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmillcommonjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19333
    :sswitch_d6
    const-string v0, "mcpdynamic-mcpdynamic"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19334
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmcpdynamic_mcpdynamic_so()I

    move-result v0

    goto/16 :goto_d

    .line 19335
    :sswitch_d7
    const-string v0, "dalviksmartgc"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19336
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libdalviksmartgc_so()I

    move-result v0

    goto/16 :goto_d

    .line 19337
    :sswitch_d8
    const-string v0, "cryptox"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19338
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libcryptox_so()I

    move-result v0

    goto/16 :goto_d

    .line 19339
    :sswitch_d9
    const-string v0, "rsysmessagequeuejni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19340
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysmessagequeuejni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19341
    :sswitch_da
    const-string v0, "mediastreaming_jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19342
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmediastreaming_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19343
    :sswitch_db
    const-string v0, "mailboxmessagerequestjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19344
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxmessagerequestjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19345
    :sswitch_dc
    const-string v0, "VideoJni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19346
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libVideoJni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19347
    :sswitch_dd
    const-string v0, "msystracemetadataproviderjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19348
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmsystracemetadataproviderjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19349
    :sswitch_de
    const-string v0, "mailboxsecureauthplatformvestajni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19350
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxsecureauthplatformvestajni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19351
    :sswitch_df
    const-string v0, "msysjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19352
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmsysjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19353
    :sswitch_e0
    const-string v0, "mqttnonbridgednetworksessionplugin"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19354
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmqttnonbridgednetworksessionplugin_so()I

    move-result v0

    goto/16 :goto_d

    .line 19355
    :sswitch_e1
    const-string v0, "rsyscallintentjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19356
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsyscallintentjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19357
    :sswitch_e2
    const-string v0, "mailboxstickerstorejni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19358
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxstickerstorejni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19359
    :sswitch_e3
    const-string v0, "profilo_dalvik_tracer"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19360
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_dalvik_tracer_so()I

    move-result v0

    goto/16 :goto_d

    .line 19361
    :sswitch_e4
    const-string v0, "mailboxmediareceiverfetchjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19362
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxmediareceiverfetchjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19363
    :sswitch_e5
    const-string v0, "rsysaudioeventsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19364
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysaudioeventsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19365
    :sswitch_e6
    const-string v0, "rsystransportjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19366
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsystransportjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19367
    :sswitch_e7
    const-string v0, "profilo_util"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19368
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_util_so()I

    move-result v0

    goto/16 :goto_d

    .line 19369
    :sswitch_e8
    const-string v0, "ctaudioprocessor-native"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19370
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libctaudioprocessor_native_so()I

    move-result v0

    goto/16 :goto_d

    .line 19371
    :sswitch_e9
    const-string v0, "profilo_stacktrace_artcompat"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19372
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_stacktrace_artcompat_so()I

    move-result v0

    goto/16 :goto_d

    .line 19373
    :sswitch_ea
    const-string v0, "xanalyticsadapter-jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19374
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libxanalyticsadapter_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19375
    :sswitch_eb
    const-string v0, "jniuserflow"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19376
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libjniuserflow_so()I

    move-result v0

    goto/16 :goto_d

    .line 19377
    :sswitch_ec
    const-string v0, "mailboxthreadmembersjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19378
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxthreadmembersjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19379
    :sswitch_ed
    const-string v0, "mobilenetwork_jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19380
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmobilenetwork_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19381
    :sswitch_ee
    const-string v0, "advancedcryptotransport_jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19382
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libadvancedcryptotransport_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19383
    :sswitch_ef
    const-string v0, "batch-box-cox-ops-xplat"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19384
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libbatch_box_cox_ops_xplat_so()I

    move-result v0

    goto/16 :goto_d

    .line 19385
    :sswitch_f0
    const-string v0, "flexlayout"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19386
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libflexlayout_so()I

    move-result v0

    goto/16 :goto_d

    .line 19387
    :sswitch_f1
    const-string v0, "profilo_mmapbuf_buffer"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19388
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_mmapbuf_buffer_so()I

    move-result v0

    goto/16 :goto_d

    .line 19389
    :sswitch_f2
    const-string v0, "comfacebookmillthreadmetadatadataclassdatabasefunctionsdirectsqlnativeopsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19390
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libcomfacebookmillthreadmetadatadataclassdatabasefunctionsdirectsqlnativeopsjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19391
    :sswitch_f3
    const-string v0, "mailboxadvancedcryptotransportjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19392
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxadvancedcryptotransportjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19393
    :sswitch_f4
    const-string v0, "mailboxmessagerequestssdkjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19394
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxmessagerequestssdkjni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19395
    :sswitch_f5
    const-string v0, "musiceffect-native"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19396
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmusiceffect_native_so()I

    move-result v0

    goto/16 :goto_d

    .line 19397
    :sswitch_f6
    const-string v0, "msysohai-jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19398
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmsysohai_jni_so()I

    move-result v0

    goto/16 :goto_d

    .line 19399
    :sswitch_f7
    const-string v0, "profilo_threadmetadata"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19400
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libprofilo_threadmetadata_so()I

    move-result v0

    goto/16 :goto_d

    .line 19401
    :sswitch_f8
    const-string v0, "rsysexecutionjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19402
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->librsysexecutionjni_so()I

    move-result v0

    goto :goto_d

    .line 19403
    :sswitch_f9
    const-string v0, "evloopmanager_jni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19404
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libevloopmanager_jni_so()I

    move-result v0

    goto :goto_d

    .line 19405
    :sswitch_fa
    const-string v0, "mailboxcutoverjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19406
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxcutoverjni_so()I

    move-result v0

    goto :goto_d

    .line 19407
    :sswitch_fb
    const-string v0, "mailboxproactivewarningsjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19408
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxproactivewarningsjni_so()I

    move-result v0

    goto :goto_d

    .line 19409
    :sswitch_fc
    const-string v0, "xplat_caffe2_android_pytorch_jni_common"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19410
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libxplat_caffe2_android_pytorch_jni_common_so()I

    move-result v0

    goto :goto_d

    .line 19411
    :sswitch_fd
    const-string v0, "jnilwqpl"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19412
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libjnilwqpl_so()I

    move-result v0

    goto :goto_d

    .line 19413
    :sswitch_fe
    const-string v0, "mailboxadvancedcryptostagingjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19414
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxadvancedcryptostagingjni_so()I

    move-result v0

    goto :goto_d

    .line 19415
    :sswitch_ff
    const-string v0, "mailboxexperimentjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19416
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxexperimentjni_so()I

    move-result v0

    goto :goto_d

    .line 19417
    :sswitch_100
    const-string v0, "FBLiteFileManagerExceptionLoggerPluginjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19418
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libFBLiteFileManagerExceptionLoggerPluginjni_so()I

    move-result v0

    goto :goto_d

    .line 19419
    :sswitch_101
    const-string v0, "mailboxshimjni"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 19420
    invoke-static {}, Lcom/facebook/soloader/MergedSoMapping$Invoke_JNI_OnLoad;->libmailboxshimjni_so()I

    move-result v0

    .line 19421
    :goto_d
    if-nez v0, :cond_19

    goto :goto_e

    .line 19422
    :cond_19
    const-string v0, "Failed to invoke native library JNI_OnLoad"

    new-instance v1, Ljava/lang/UnsatisfiedLinkError;

    invoke-direct {v1, v0}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 19423
    :goto_e
    sget-object v0, LX/0B9;->A0B:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v7, :cond_1b

    goto :goto_10
    :try_end_1b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1b .. :try_end_1b} :catch_2
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    .line 19424
    :catch_2
    move-exception v2

    .line 19425
    :try_start_1c
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 19426
    const-string v0, "Failed to call JNI_OnLoad from \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', which has been merged into \'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'.  See comment for details."

    .line 19427
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 19428
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    .line 19429
    :catchall_7
    move-exception v4

    .line 19430
    if-eqz v7, :cond_1a

    .line 19431
    :try_start_1d
    invoke-static {}, LX/0Ar;->A00()V

    .line 19432
    :cond_1a
    :goto_f
    throw v4

    .line 19433
    :goto_10
    invoke-static {}, LX/0Ar;->A00()V

    .line 19434
    :cond_1b
    monitor-exit v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    .line 19435
    invoke-static {v6}, LX/000;->A0O(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 19436
    xor-int/lit8 v0, v1, 0x1

    return v0

    :catchall_8
    move-exception v0

    .line 19437
    :try_start_1e
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :try_start_1f
    throw v0
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    :catchall_9
    move-exception v0

    .line 19438
    invoke-static {v6}, LX/000;->A0O(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 19439
    throw v0

    :catchall_a
    move-exception v0

    .line 19440
    :try_start_20
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e9f4b4d -> :sswitch_0
        -0x7de93754 -> :sswitch_1
        -0x79fe5d77 -> :sswitch_2
        -0x79216ddf -> :sswitch_3
        -0x78e97fc4 -> :sswitch_4
        -0x771a8a6b -> :sswitch_5
        -0x7622d5e8 -> :sswitch_6
        -0x72bc04ac -> :sswitch_7
        -0x724021fd -> :sswitch_8
        -0x709a3e21 -> :sswitch_9
        -0x707b8748 -> :sswitch_a
        -0x7049d385 -> :sswitch_b
        -0x6e7c2f4c -> :sswitch_c
        -0x6a5d6a91 -> :sswitch_d
        -0x69e218e2 -> :sswitch_e
        -0x68c2065e -> :sswitch_f
        -0x67944168 -> :sswitch_10
        -0x670e89b1 -> :sswitch_11
        -0x663c7d8d -> :sswitch_12
        -0x64ca837c -> :sswitch_13
        -0x648851d6 -> :sswitch_14
        -0x630e6c48 -> :sswitch_15
        -0x61a1c2b1 -> :sswitch_16
        -0x5ffa4536 -> :sswitch_17
        -0x5f55f249 -> :sswitch_18
        -0x5f165191 -> :sswitch_19
        -0x5df68653 -> :sswitch_1a
        -0x5db12014 -> :sswitch_1b
        -0x5cd62fe2 -> :sswitch_1c
        -0x5bae83fd -> :sswitch_1d
        -0x5b480f36 -> :sswitch_1e
        -0x5aef9b15 -> :sswitch_1f
        -0x5a12c89b -> :sswitch_20
        -0x59d2bac4 -> :sswitch_21
        -0x589e4fcc -> :sswitch_22
        -0x578e13ab -> :sswitch_23
        -0x5736543f -> :sswitch_24
        -0x56b1cdbf -> :sswitch_25
        -0x55c2515c -> :sswitch_26
        -0x53ea3fc6 -> :sswitch_27
        -0x53e9eb48 -> :sswitch_28
        -0x535111fb -> :sswitch_29
        -0x50217871 -> :sswitch_2a
        -0x4de1ab46 -> :sswitch_2b
        -0x4dd9df75 -> :sswitch_2c
        -0x4d2e0094 -> :sswitch_2d
        -0x4d1ea74f -> :sswitch_2e
        -0x4ca76a1e -> :sswitch_2f
        -0x4c51ba51 -> :sswitch_30
        -0x4c25b85b -> :sswitch_31
        -0x4a936696 -> :sswitch_32
        -0x4a7e1e47 -> :sswitch_33
        -0x49a18fc3 -> :sswitch_34
        -0x4968bd51 -> :sswitch_35
        -0x492a8eef -> :sswitch_36
        -0x3f7531d6 -> :sswitch_37
        -0x3f0fb6e3 -> :sswitch_38
        -0x3ecd821f -> :sswitch_39
        -0x3e96e6c5 -> :sswitch_3a
        -0x3b92acbf -> :sswitch_3b
        -0x3af9d9a9 -> :sswitch_3c
        -0x3a2421d3 -> :sswitch_3d
        -0x384a4670 -> :sswitch_3e
        -0x37ed8937 -> :sswitch_3f
        -0x378c9b3a -> :sswitch_40
        -0x362149f1 -> :sswitch_41
        -0x35dd5f0d -> :sswitch_42
        -0x35d409de -> :sswitch_43
        -0x352bdc4f -> :sswitch_44
        -0x3528c8b2 -> :sswitch_45
        -0x35118669 -> :sswitch_46
        -0x32c18152 -> :sswitch_47
        -0x323139b1 -> :sswitch_48
        -0x316a01f3 -> :sswitch_49
        -0x30debb39 -> :sswitch_4a
        -0x2f82dd93 -> :sswitch_4b
        -0x2f31c173 -> :sswitch_4c
        -0x2d6662dd -> :sswitch_4d
        -0x2d33145a -> :sswitch_4e
        -0x2c6eaff2 -> :sswitch_4f
        -0x2c40bfb8 -> :sswitch_50
        -0x2b6b7d8f -> :sswitch_51
        -0x2af17976 -> :sswitch_52
        -0x2aa9b702 -> :sswitch_53
        -0x2a7bd341 -> :sswitch_54
        -0x293f8241 -> :sswitch_55
        -0x27654148 -> :sswitch_56
        -0x274ca178 -> :sswitch_57
        -0x25d05664 -> :sswitch_58
        -0x24802518 -> :sswitch_59
        -0x2457e7b5 -> :sswitch_5a
        -0x24305fe0 -> :sswitch_5b
        -0x242fae37 -> :sswitch_5c
        -0x2320168c -> :sswitch_5d
        -0x214e82e6 -> :sswitch_5e
        -0x2126be19 -> :sswitch_5f
        -0x1f9258b9 -> :sswitch_60
        -0x1d0da86a -> :sswitch_61
        -0x1a30efb4 -> :sswitch_62
        -0x18a398d2 -> :sswitch_63
        -0x18a208eb -> :sswitch_64
        -0x18811c58 -> :sswitch_65
        -0x16bf9164 -> :sswitch_66
        -0x16446c0a -> :sswitch_67
        -0x164448ea -> :sswitch_68
        -0x1626a903 -> :sswitch_69
        -0x15f758f4 -> :sswitch_6a
        -0x154140bc -> :sswitch_6b
        -0x1458d287 -> :sswitch_6c
        -0x1271764d -> :sswitch_6d
        -0x124fe750 -> :sswitch_6e
        -0x11a08d03 -> :sswitch_6f
        -0x10fab217 -> :sswitch_70
        -0x10c88d3b -> :sswitch_71
        -0x10c88d1c -> :sswitch_72
        -0x10c8897a -> :sswitch_73
        -0xf161834 -> :sswitch_74
        -0xdb8dc1b -> :sswitch_75
        -0xd8358a1 -> :sswitch_76
        -0xd61feb6 -> :sswitch_77
        -0xd252db1 -> :sswitch_78
        -0xaa6c4c5 -> :sswitch_79
        -0x8899b37 -> :sswitch_7a
        -0x87d530e -> :sswitch_7b
        -0x84c488e -> :sswitch_7c
        -0x84c44cd -> :sswitch_7d
        -0x734f329 -> :sswitch_7e
        -0x645f085 -> :sswitch_7f
        -0x60c715d -> :sswitch_80
        -0x5c55782 -> :sswitch_81
        -0x5431f72 -> :sswitch_82
        -0x4ae1b7e -> :sswitch_83
        -0x4a44559 -> :sswitch_84
        -0x46c1121 -> :sswitch_85
        -0x3ef657f -> :sswitch_86
        -0x3a940b1 -> :sswitch_87
        -0x3a46949 -> :sswitch_88
        -0x3a46929 -> :sswitch_89
        -0x3a46587 -> :sswitch_8a
        -0x3a461c7 -> :sswitch_8b
        -0x3a461a6 -> :sswitch_8c
        -0x3a45e06 -> :sswitch_8d
        -0x3a45de7 -> :sswitch_8e
        -0x2e09647 -> :sswitch_8f
        -0x197fda2 -> :sswitch_90
        -0x11da2e4 -> :sswitch_91
        -0x11aed44 -> :sswitch_92
        -0x54d50f -> :sswitch_93
        0x18c8d -> :sswitch_94
        0x8eb0d -> :sswitch_95
        0x30757d -> :sswitch_96
        0x34283f -> :sswitch_97
        0x360384 -> :sswitch_98
        0x3603ec -> :sswitch_99
        0x192b5be -> :sswitch_9a
        0x22dc0ea -> :sswitch_9b
        0x2bc7a55 -> :sswitch_9c
        0x3810acf -> :sswitch_9d
        0x3de8b9c -> :sswitch_9e
        0x4adf834 -> :sswitch_9f
        0x7720e69 -> :sswitch_a0
        0x8f73afa -> :sswitch_a1
        0xa8011d0 -> :sswitch_a2
        0xb620cca -> :sswitch_a3
        0xe446bf0 -> :sswitch_a4
        0xea4fa4a -> :sswitch_a5
        0x11391586 -> :sswitch_a6
        0x15e147cf -> :sswitch_a7
        0x185c5e94 -> :sswitch_a8
        0x18994fc3 -> :sswitch_a9
        0x18cc1fc9 -> :sswitch_aa
        0x1aebcffb -> :sswitch_ab
        0x1c1b21a5 -> :sswitch_ac
        0x1c46deef -> :sswitch_ad
        0x1c46df0e -> :sswitch_ae
        0x1c46e2b0 -> :sswitch_af
        0x1c46e671 -> :sswitch_b0
        0x1c46e690 -> :sswitch_b1
        0x1c46e691 -> :sswitch_b2
        0x1c46e692 -> :sswitch_b3
        0x1c46ea32 -> :sswitch_b4
        0x1c46ea51 -> :sswitch_b5
        0x1c46edf3 -> :sswitch_b6
        0x1d587391 -> :sswitch_b7
        0x20afe12f -> :sswitch_b8
        0x20f1c4ea -> :sswitch_b9
        0x21873058 -> :sswitch_ba
        0x21ec6c51 -> :sswitch_bb
        0x231fd5f4 -> :sswitch_bc
        0x23f2ec30 -> :sswitch_bd
        0x241442da -> :sswitch_be
        0x26e0f84c -> :sswitch_bf
        0x27225892 -> :sswitch_c0
        0x2780e489 -> :sswitch_c1
        0x27b30cae -> :sswitch_c2
        0x27f86b82 -> :sswitch_c3
        0x2841e55d -> :sswitch_c4
        0x2a2c1cc3 -> :sswitch_c5
        0x2b4ef4a2 -> :sswitch_c6
        0x2b5257e6 -> :sswitch_c7
        0x2b9bb75c -> :sswitch_c8
        0x2bf904b7 -> :sswitch_c9
        0x2ed72a37 -> :sswitch_ca
        0x2fd23e7d -> :sswitch_cb
        0x32e13893 -> :sswitch_cc
        0x33427c48 -> :sswitch_cd
        0x34ac6b85 -> :sswitch_ce
        0x35fb3648 -> :sswitch_cf
        0x3767c8fd -> :sswitch_d0
        0x37d515da -> :sswitch_d1
        0x37def389 -> :sswitch_d2
        0x3babd872 -> :sswitch_d3
        0x3c2dc803 -> :sswitch_d4
        0x3c8e613e -> :sswitch_d5
        0x3d500acd -> :sswitch_d6
        0x3dfc5e1c -> :sswitch_d7
        0x3e6f27d7 -> :sswitch_d8
        0x3e9a5b80 -> :sswitch_d9
        0x3f1a64e4 -> :sswitch_da
        0x47aec3c9 -> :sswitch_db
        0x487add4a -> :sswitch_dc
        0x4b22c760 -> :sswitch_dd
        0x4dd5d5ba -> :sswitch_de
        0x51238865 -> :sswitch_df
        0x5381758d -> :sswitch_e0
        0x53b831b0 -> :sswitch_e1
        0x54ebe02d -> :sswitch_e2
        0x577d2517 -> :sswitch_e3
        0x5899c54a -> :sswitch_e4
        0x58aad2b1 -> :sswitch_e5
        0x598fa877 -> :sswitch_e6
        0x5a04370e -> :sswitch_e7
        0x5a9789b7 -> :sswitch_e8
        0x5af67caf -> :sswitch_e9
        0x5bcc9d59 -> :sswitch_ea
        0x5e78361e -> :sswitch_eb
        0x625bba2a -> :sswitch_ec
        0x653f7432 -> :sswitch_ed
        0x6778270c -> :sswitch_ee
        0x678b5576 -> :sswitch_ef
        0x67bf5c63 -> :sswitch_f0
        0x67d6dea7 -> :sswitch_f1
        0x68797401 -> :sswitch_f2
        0x6a147273 -> :sswitch_f3
        0x6c31d182 -> :sswitch_f4
        0x6cd641ce -> :sswitch_f5
        0x6e625ad9 -> :sswitch_f6
        0x6ea5c745 -> :sswitch_f7
        0x6ea95a28 -> :sswitch_f8
        0x6ee0821e -> :sswitch_f9
        0x71354583 -> :sswitch_fa
        0x71f5e8cf -> :sswitch_fb
        0x72ad335d -> :sswitch_fc
        0x77809c3d -> :sswitch_fd
        0x779999e1 -> :sswitch_fe
        0x79601e54 -> :sswitch_ff
        0x798af35a -> :sswitch_100
        0x7da26f98 -> :sswitch_101
    .end sparse-switch
.end method

.method public static A09(Ljava/lang/String;)Z
    .locals 1

    .line 0
    sget-boolean v0, LX/0B9;->A00:Z

    .line 1
    .line 2
    if-eqz v0, :cond_0

    .line 3
    .line 4
    invoke-static {p0}, LX/0B9;->A0A(Ljava/lang/String;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {p0}, LX/0BL;->A02(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public static A0A(Ljava/lang/String;)Z
    .locals 14

    .line 0
    const/4 v2, 0x0

    .line 1
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    sget-object v4, LX/0B9;->A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    .line 7
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 15
    .line 16
    if-nez v0, :cond_2

    .line 17
    .line 18
    const-string v1, "http://www.android.com/"

    .line 19
    .line 20
    const-string v0, "java.vendor.url"

    .line 21
    .line 22
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-static {}, LX/0B9;->A07()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    const-string v0, "SoLoader.init() not yet called"

    .line 39
    .line 40
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    throw v0

    .line 45
    :cond_0
    const-class v3, LX/0B9;

    .line 46
    .line 47
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 48
    :try_start_1
    sget-object v0, LX/0B9;->A06:Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    xor-int/lit8 v1, v0, 0x1

    .line 55
    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    monitor-exit v3

    .line 66
    goto/16 :goto_8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    .line 68
    :catchall_0
    move-exception v0

    .line 69
    :try_start_2
    monitor-exit v3

    .line 70
    goto :goto_0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    :catchall_1
    move-exception v0

    .line 72
    invoke-static {v4}, LX/000;->A0O(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_2
    invoke-static {v4}, LX/000;->A0O(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 77
    .line 78
    .line 79
    :cond_3
    sget-boolean v0, LX/0B9;->A00:Z

    .line 80
    .line 81
    if-nez v0, :cond_4

    .line 82
    .line 83
    invoke-static {p0}, LX/0BL;->A02(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    return v1

    .line 88
    :cond_4
    :try_start_3
    invoke-static {p0}, LX/043;->A00(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    move-object v1, p0

    .line 93
    if-eqz v8, :cond_5

    .line 94
    .line 95
    move-object v1, v8

    .line 96
    :cond_5
    sget-object v13, LX/044;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    .line 97
    .line 98
    invoke-static {v13}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    array-length v0, v0

    .line 105
    if-ge v2, v0, :cond_6

    .line 106
    .line 107
    const-string v0, "onLoadLibraryStart"

    .line 108
    .line 109
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    :goto_1
    throw v0

    .line 114
    :cond_6
    invoke-static {v1}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    const/4 v6, 0x0

    .line 119
    const/4 v5, 0x0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 120
    :goto_2
    :try_start_4
    invoke-static {v6, v7, p0, v8, v2}, LX/0B9;->A08(Landroid/os/StrictMode$ThreadPolicy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    goto/16 :goto_7
    :try_end_4
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 125
    .line 126
    :catch_0
    :try_start_5
    move-exception v4

    .line 127
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v0, "Starting recovery for "

    .line 132
    .line 133
    invoke-static {v0, v7, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v3, "SoLoader"

    .line 138
    .line 139
    invoke-static {v3, v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .line 141
    .line 142
    sget-object v12, LX/0B9;->A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 143
    .line 144
    invoke-virtual {v12}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 149
    .line 150
    .line 151
    if-nez v5, :cond_8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 152
    .line 153
    :try_start_6
    const-class v11, LX/0B9;

    .line 154
    .line 155
    monitor-enter v11
    :try_end_6
    .catch LX/0B3; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 156
    :try_start_7
    sget-object v1, LX/0B9;->A05:LX/086;

    .line 157
    .line 158
    if-nez v1, :cond_7

    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    goto :goto_3

    .line 162
    :cond_7
    const/4 v0, 0x6

    .line 163
    new-array v9, v0, [LX/0BO;

    .line 164
    .line 165
    iget-object v10, v1, LX/086;->A00:Landroid/content/Context;

    .line 166
    .line 167
    iget-object v5, v1, LX/086;->A01:LX/0BN;

    .line 168
    .line 169
    new-instance v0, LX/083;

    .line 170
    .line 171
    invoke-direct {v0, v10, v5}, LX/083;-><init>(Landroid/content/Context;LX/0BN;)V

    .line 172
    .line 173
    .line 174
    aput-object v0, v9, v2

    .line 175
    .line 176
    new-instance v1, LX/088;

    .line 177
    .line 178
    invoke-direct {v1, v10, v5}, LX/088;-><init>(Landroid/content/Context;LX/0BN;)V

    .line 179
    .line 180
    .line 181
    const/4 v0, 0x1

    .line 182
    aput-object v1, v9, v0

    .line 183
    .line 184
    new-instance v1, LX/07x;

    .line 185
    .line 186
    invoke-direct {v1}, LX/07x;-><init>()V

    .line 187
    .line 188
    .line 189
    const/4 v0, 0x2

    .line 190
    aput-object v1, v9, v0

    .line 191
    .line 192
    new-instance v1, LX/080;

    .line 193
    .line 194
    invoke-direct {v1}, LX/080;-><init>()V

    .line 195
    .line 196
    .line 197
    const/4 v0, 0x3

    .line 198
    aput-object v1, v9, v0

    .line 199
    .line 200
    new-instance v1, LX/07z;

    .line 201
    .line 202
    invoke-direct {v1}, LX/07z;-><init>()V

    .line 203
    .line 204
    .line 205
    const/4 v0, 0x4

    .line 206
    aput-object v1, v9, v0

    .line 207
    .line 208
    new-instance v1, LX/07x;

    .line 209
    .line 210
    invoke-direct {v1}, LX/07x;-><init>()V

    .line 211
    .line 212
    .line 213
    const/4 v0, 0x5

    .line 214
    aput-object v1, v9, v0

    .line 215
    .line 216
    new-instance v5, LX/087;

    .line 217
    .line 218
    invoke-direct {v5, v9}, LX/087;-><init>([LX/0BO;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 219
    .line 220
    .line 221
    :goto_3
    :try_start_8
    monitor-exit v11

    .line 222
    if-nez v5, :cond_8

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_8
    invoke-static {v13}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-eqz v0, :cond_9

    .line 230
    .line 231
    array-length v0, v0

    .line 232
    if-ge v2, v0, :cond_9

    .line 233
    .line 234
    const-string v0, "onRecoveryStart"

    .line 235
    .line 236
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    goto :goto_5
    :try_end_8
    .catch LX/0B3; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 241
    :cond_9
    :try_start_9
    sget-object v0, LX/0B9;->A0C:[LX/0BC;

    .line 242
    .line 243
    invoke-virtual {v5, v4, v0}, LX/087;->AWZ(Ljava/lang/UnsatisfiedLinkError;[LX/0BC;)Z

    .line 244
    .line 245
    .line 246
    move-result v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 247
    :try_start_a
    invoke-static {v13}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    if-eqz v0, :cond_a

    .line 252
    .line 253
    array-length v0, v0

    .line 254
    if-ge v2, v0, :cond_a

    .line 255
    .line 256
    const-string v0, "onRecoveryEnd"

    .line 257
    .line 258
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    goto :goto_5

    .line 263
    :cond_a
    if-eqz v1, :cond_d

    .line 264
    .line 265
    sget-object v0, LX/0B9;->A07:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 266
    .line 267
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I
    :try_end_a
    .catch LX/0B3; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 268
    .line 269
    .line 270
    :try_start_b
    invoke-static {v12}, LX/0B9;->A06(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 274
    .line 275
    :goto_4
    :try_start_c
    const-string v0, "No recovery strategy"

    .line 276
    .line 277
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    throw v4
    :try_end_c
    .catch LX/0B3; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 281
    :catchall_2
    move-exception v0

    .line 282
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 283
    :catchall_3
    :try_start_e
    move-exception v1

    .line 284
    invoke-static {v13}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    if-eqz v0, :cond_b

    .line 289
    .line 290
    array-length v0, v0

    .line 291
    if-ge v2, v0, :cond_b

    .line 292
    .line 293
    const-string v0, "onRecoveryEnd"

    .line 294
    .line 295
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    goto :goto_5

    .line 300
    :catchall_4
    move-exception v1

    .line 301
    monitor-exit v11

    .line 302
    :cond_b
    :goto_5
    throw v1
    :try_end_e
    .catch LX/0B3; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 303
    :catch_1
    move-exception v1

    .line 304
    :try_start_f
    const-string v0, "Got an exception during recovery, will throw the initial error instead"

    .line 305
    .line 306
    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 307
    .line 308
    .line 309
    goto :goto_6

    .line 310
    :catch_2
    move-exception v4

    .line 311
    const-string v0, "Base APK not found during recovery"

    .line 312
    .line 313
    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    .line 315
    .line 316
    :goto_6
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 317
    :catchall_5
    :try_start_10
    move-exception v0

    .line 318
    invoke-static {v12}, LX/0B9;->A06(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 319
    .line 320
    .line 321
    goto/16 :goto_1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 322
    .line 323
    :goto_7
    invoke-static {v13}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    if-eqz v0, :cond_c

    .line 328
    .line 329
    array-length v0, v0

    .line 330
    if-ge v2, v0, :cond_c

    .line 331
    .line 332
    const-string v0, "onLoadLibraryEnd"

    .line 333
    .line 334
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 335
    .line 336
    .line 337
    move-result-object v0

    .line 338
    throw v0

    .line 339
    :goto_8
    invoke-static {v4}, LX/000;->A0O(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 340
    .line 341
    .line 342
    if-eqz v0, :cond_3

    .line 343
    .line 344
    :cond_c
    return v1

    .line 345
    :cond_d
    :try_start_11
    invoke-static {v12}, LX/0B9;->A06(Ljava/util/concurrent/locks/ReentrantReadWriteLock;)V

    .line 346
    .line 347
    .line 348
    const-string v0, "Failed to recover"

    .line 349
    .line 350
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .line 352
    .line 353
    throw v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 354
    :catchall_6
    move-exception v0

    .line 355
    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 356
    :catchall_7
    move-exception v1

    .line 357
    sget-object v0, LX/044;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    .line 358
    .line 359
    invoke-static {v0}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    if-eqz v0, :cond_e

    .line 364
    .line 365
    array-length v0, v0

    .line 366
    if-ge v2, v0, :cond_e

    .line 367
    .line 368
    const-string v0, "onLoadLibraryEnd"

    .line 369
    .line 370
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    throw v0

    .line 375
    :cond_e
    throw v1
.end method
