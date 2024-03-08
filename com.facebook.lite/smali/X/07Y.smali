.class public final LX/07Y;
.super Ljava/lang/ClassLoader;
.source ""

# interfaces
.implements LX/064;


# static fields
.field public static A0A:LX/07Y;

.field public static A0B:B

.field public static final A0C:Ljava/lang/ClassLoader;

.field public static final A0D:Ljava/lang/ClassLoader;

.field public static final A0E:Ljava/lang/reflect/Field;


# instance fields
.field public A00:Ljava/util/ArrayList;

.field public A01:Z

.field public A02:Z

.field public A03:[Ldalvik/system/DexFile;

.field public A04:[Ldalvik/system/DexFile;

.field public final A05:Ljava/lang/ClassLoader;

.field public final A06:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final A07:[Ldalvik/system/DexFile;

.field public final A08:[Ldalvik/system/DexFile;

.field public volatile A09:LX/00p;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 0
    :try_start_0
    const-class v0, LX/07Y;

    .line 1
    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 3
    .line 4
    .line 5
    move-result-object v2

    .line 6
    sput-object v2, LX/07Y;->A0C:Ljava/lang/ClassLoader;

    .line 7
    .line 8
    const-class v1, Ljava/lang/ClassLoader;

    .line 9
    .line 10
    const-string v0, "parent"

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, LX/07Y;->A0E:Ljava/lang/reflect/Field;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/ClassLoader;

    .line 27
    .line 28
    sput-object v0, LX/07Y;->A0D:Ljava/lang/ClassLoader;

    .line 29
    .line 30
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    move-exception v1

    .line 32
    new-instance v0, Ljava/lang/RuntimeException;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 9

    .line 0
    sget-object v0, LX/07Y;->A0D:Ljava/lang/ClassLoader;

    .line 1
    .line 2
    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 3
    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, LX/07Y;->A01:Z

    .line 7
    .line 8
    iput-boolean v1, p0, LX/07Y;->A02:Z

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, LX/07Y;->A09:LX/00p;

    .line 12
    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, LX/07Y;->A06:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 19
    .line 20
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, LX/07Y;->A00:Ljava/util/ArrayList;

    .line 25
    .line 26
    new-array v0, v1, [Ldalvik/system/DexFile;

    .line 27
    .line 28
    iput-object v0, p0, LX/07Y;->A04:[Ldalvik/system/DexFile;

    .line 29
    .line 30
    sget-object v0, LX/07Y;->A0C:Ljava/lang/ClassLoader;

    .line 31
    .line 32
    iput-object v0, p0, LX/07Y;->A05:Ljava/lang/ClassLoader;

    .line 33
    .line 34
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    :try_start_0
    const-string v0, "dalvik.system.BaseDexClassLoader"

    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v0, "pathList"

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const/4 v2, 0x1

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, LX/07Y;->A05:Ljava/lang/ClassLoader;

    .line 59
    .line 60
    invoke-static {v0, v1}, LX/000;->A0S(Ljava/lang/Object;Ljava/lang/reflect/Field;)[Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const-string v0, "dalvik.system.DexPathList$Element"

    .line 65
    .line 66
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const-string v0, "dexFile"

    .line 71
    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    invoke-virtual {v7, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 84
    .line 85
    array-length v5, v8

    .line 86
    const/4 v2, 0x0

    .line 87
    :goto_0
    if-ge v2, v5, :cond_2

    .line 88
    .line 89
    aget-object v0, v8, v2

    .line 90
    .line 91
    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    check-cast v1, Ldalvik/system/DexFile;

    .line 96
    .line 97
    if-eqz p2, :cond_0

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    invoke-virtual {v1}, Ldalvik/system/DexFile;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    .line 110
    invoke-virtual {v4, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    goto :goto_2

    .line 114
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_2

    .line 118
    :goto_1
    if-nez v1, :cond_0

    .line 119
    .line 120
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    :catch_0
    :try_start_1
    move-exception v1

    .line 124
    new-instance v0, Ljava/lang/RuntimeException;

    .line 125
    .line 126
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 130
    :catch_1
    move-exception v2

    .line 131
    const-string v1, "ClassLoaderWithDexPromotion"

    .line 132
    .line 133
    const-string v0, "Failed to locate primary/auxiliary dex files, expect a perf loss: "

    .line 134
    .line 135
    invoke-static {v1, v0, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 136
    .line 137
    .line 138
    :cond_2
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    new-array v0, v0, [Ldalvik/system/DexFile;

    .line 143
    .line 144
    invoke-virtual {v4, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, [Ldalvik/system/DexFile;

    .line 149
    .line 150
    iput-object v0, p0, LX/07Y;->A08:[Ldalvik/system/DexFile;

    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    new-array v0, v0, [Ldalvik/system/DexFile;

    .line 157
    .line 158
    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, [Ldalvik/system/DexFile;

    .line 163
    .line 164
    iput-object v0, p0, LX/07Y;->A07:[Ldalvik/system/DexFile;

    .line 165
    .line 166
    invoke-direct {p0}, LX/07Y;->A02()V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public static declared-synchronized A00(Landroid/content/Context;)LX/07Y;
    .locals 2

    .line 0
    const-class v1, LX/07Y;

    .line 1
    .line 2
    monitor-enter v1

    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {p0, v0}, LX/07Y;->A03(Landroid/content/Context;Z)V

    .line 5
    .line 6
    .line 7
    sget-object v0, LX/07Y;->A0A:LX/07Y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    .line 9
    monitor-exit v1

    .line 10
    return-object v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit v1

    .line 13
    throw v0
.end method

.method public static A01(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;
    .locals 4

    .line 0
    sget-byte v0, LX/07Y;->A0B:B

    .line 1
    .line 2
    const/4 v3, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0, p2, p1}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/facebook/common/dextricks/DexFileLoadOld;->A00(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/facebook/common/dextricks/DexFileLoadNew;->A00(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_2
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/facebook/common/dextricks/DexFileLoadNew;->A00(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-byte v1, LX/07Y;->A0B:B

    .line 31
    .line 32
    return-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/facebook/common/dextricks/DexFileLoadOld;->A00(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-byte v2, LX/07Y;->A0B:B

    .line 38
    .line 39
    return-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    :catch_1
    invoke-virtual {p0, p2, p1}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-byte v3, LX/07Y;->A0B:B

    .line 45
    .line 46
    return-object v0
.end method

.method private declared-synchronized A02()V
    .locals 11

    .line 0
    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v10, p0, LX/07Y;->A08:[Ldalvik/system/DexFile;

    .line 2
    .line 3
    array-length v9, v10

    .line 4
    iget-object v8, p0, LX/07Y;->A04:[Ldalvik/system/DexFile;

    .line 5
    .line 6
    array-length v7, v8

    .line 7
    add-int v0, v9, v7

    .line 8
    .line 9
    iget-object v6, p0, LX/07Y;->A07:[Ldalvik/system/DexFile;

    .line 10
    .line 11
    array-length v5, v6

    .line 12
    add-int/2addr v0, v5

    .line 13
    const/4 v4, 0x1

    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    new-array v3, v0, [Ldalvik/system/DexFile;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object v0, v3, v2

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v9, :cond_0

    .line 24
    .line 25
    aget-object v0, v10, v1

    .line 26
    .line 27
    aput-object v0, v3, v4

    .line 28
    .line 29
    add-int/lit8 v1, v1, 0x1

    .line 30
    .line 31
    add-int/lit8 v4, v4, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_1
    if-ge v1, v5, :cond_1

    .line 36
    .line 37
    aget-object v0, v6, v1

    .line 38
    .line 39
    aput-object v0, v3, v4

    .line 40
    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 42
    .line 43
    add-int/lit8 v4, v4, 0x1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    :goto_2
    if-ge v2, v7, :cond_2

    .line 47
    .line 48
    aget-object v0, v8, v2

    .line 49
    .line 50
    aput-object v0, v3, v4

    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    add-int/lit8 v4, v4, 0x1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iput-object v3, p0, LX/07Y;->A03:[Ldalvik/system/DexFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    monitor-exit p0

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    monitor-exit p0

    .line 63
    throw v0
.end method

.method public static declared-synchronized A03(Landroid/content/Context;Z)V
    .locals 4

    .line 0
    const-class v3, LX/07Y;

    .line 1
    .line 2
    monitor-enter v3

    .line 3
    :try_start_0
    sget-object v0, LX/07Y;->A0A:LX/07Y;

    .line 4
    .line 5
    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    :try_start_1
    const-string v0, "com.facebook.common.dextricks.DexFileLoadOld"

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    const-string v0, "com.facebook.common.dextricks.DexFileLoadNew"

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    :try_start_2
    new-instance v2, LX/07Y;

    .line 18
    .line 19
    invoke-direct {v2, p0, p1}, LX/07Y;-><init>(Landroid/content/Context;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_3
    sget-object v1, LX/07Y;->A0E:Ljava/lang/reflect/Field;

    .line 23
    .line 24
    iget-object v0, v2, LX/07Y;->A05:Ljava/lang/ClassLoader;

    .line 25
    .line 26
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sput-object v2, LX/07Y;->A0A:LX/07Y;

    .line 30
    .line 31
    goto :goto_2
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    goto :goto_0

    .line 34
    :catch_1
    :try_start_4
    move-exception v0

    .line 35
    new-instance v1, Ljava/lang/RuntimeException;

    .line 36
    .line 37
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :goto_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 47
    :cond_0
    :goto_2
    monitor-exit v3

    .line 48
    return-void

    .line 49
    :catchall_0
    move-exception v0

    .line 50
    monitor-exit v3

    .line 51
    throw v0
.end method


# virtual methods
.method public final A04(Ldalvik/system/DexFile;)V
    .locals 5

    .line 0
    iget-object v4, p0, LX/07Y;->A04:[Ldalvik/system/DexFile;

    .line 1
    .line 2
    array-length v3, v4

    .line 3
    add-int/lit8 v0, v3, 0x1

    .line 4
    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v3, :cond_0

    .line 12
    .line 13
    aget-object v0, v4, v1

    .line 14
    .line 15
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    new-array v0, v0, [Ldalvik/system/DexFile;

    .line 29
    .line 30
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, [Ldalvik/system/DexFile;

    .line 35
    .line 36
    iput-object v0, p0, LX/07Y;->A04:[Ldalvik/system/DexFile;

    .line 37
    .line 38
    invoke-direct {p0}, LX/07Y;->A02()V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public final A23(Ljava/io/File;Ljava/io/File;)V
    .locals 5

    .line 0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1
    .line 2
    const/4 v1, 0x0

    .line 3
    const/16 v0, 0x22

    .line 4
    .line 5
    if-lt v2, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v4, 0x0

    .line 11
    iget-boolean v0, p0, LX/07Y;->A01:Z

    .line 12
    .line 13
    const-string v1, "app_modules"

    .line 14
    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    :cond_1
    const-class v0, Ldalvik/system/DexFile;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v4, v1, v0}, LX/00m;->A00(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, LX/07Y;->A04(Ldalvik/system/DexFile;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    iget-boolean v0, p0, LX/07Y;->A02:Z

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    :goto_0
    iget-object v1, p0, LX/07Y;->A00:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    if-ge v2, v0, :cond_2

    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Ljava/lang/CharSequence;

    .line 77
    .line 78
    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_1

    .line 83
    .line 84
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_0
.end method

.method public final findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 9

    .line 0
    iget-object v2, p0, LX/07Y;->A03:[Ldalvik/system/DexFile;

    .line 1
    .line 2
    iget-object v4, p0, LX/07Y;->A06:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    .line 4
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, LX/055;

    .line 19
    .line 20
    invoke-interface {v0, p1}, LX/055;->A3l(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v8, 0x0

    .line 25
    aget-object v1, v2, v8

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, LX/07Y;->A05:Ljava/lang/ClassLoader;

    .line 30
    .line 31
    invoke-static {v1, v0, p1}, LX/07Y;->A01(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    :cond_1
    :goto_1
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_d

    .line 46
    .line 47
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, LX/055;

    .line 52
    .line 53
    invoke-interface {v1, v0}, LX/055;->A3j(Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const/4 v7, 0x1

    .line 58
    const/4 v6, 0x1

    .line 59
    :goto_3
    array-length v0, v2

    .line 60
    if-ge v6, v0, :cond_6

    .line 61
    .line 62
    aget-object v5, v2, v6

    .line 63
    .line 64
    iget-object v0, p0, LX/07Y;->A05:Ljava/lang/ClassLoader;

    .line 65
    .line 66
    invoke-static {v5, v0, p1}, LX/07Y;->A01(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    if-le v6, v7, :cond_1

    .line 73
    .line 74
    move-object v3, p0

    .line 75
    monitor-enter v3

    .line 76
    goto :goto_4

    .line 77
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :goto_4
    :try_start_0
    iget-object v2, p0, LX/07Y;->A03:[Ldalvik/system/DexFile;

    .line 81
    .line 82
    aget-object v1, v2, v6

    .line 83
    .line 84
    if-ne v1, v5, :cond_5

    .line 85
    .line 86
    aput-object v5, v2, v8

    .line 87
    .line 88
    :goto_5
    if-lt v6, v7, :cond_4

    .line 89
    .line 90
    add-int/lit8 v1, v6, -0x1

    .line 91
    .line 92
    aget-object v1, v2, v1

    .line 93
    .line 94
    aput-object v1, v2, v6

    .line 95
    .line 96
    add-int/lit8 v6, v6, -0x1

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_4
    const/4 v1, 0x0

    .line 100
    aput-object v1, v2, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    :cond_5
    monitor-exit v3

    .line 103
    goto :goto_1

    .line 104
    :cond_6
    iget-object v3, p0, LX/07Y;->A08:[Ldalvik/system/DexFile;

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    :goto_6
    array-length v0, v3

    .line 108
    if-ge v2, v0, :cond_7

    .line 109
    .line 110
    aget-object v1, v3, v2

    .line 111
    .line 112
    iget-object v0, p0, LX/07Y;->A05:Ljava/lang/ClassLoader;

    .line 113
    .line 114
    invoke-static {v1, v0, p1}, LX/07Y;->A01(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-nez v0, :cond_8

    .line 119
    .line 120
    add-int/lit8 v2, v2, 0x1

    .line 121
    .line 122
    goto :goto_6

    .line 123
    :cond_7
    const/4 v0, 0x0

    .line 124
    :cond_8
    if-nez v0, :cond_1

    .line 125
    .line 126
    iget-object v3, p0, LX/07Y;->A07:[Ldalvik/system/DexFile;

    .line 127
    .line 128
    const/4 v2, 0x0

    .line 129
    :goto_7
    array-length v0, v3

    .line 130
    if-ge v2, v0, :cond_9

    .line 131
    .line 132
    aget-object v1, v3, v2

    .line 133
    .line 134
    iget-object v0, p0, LX/07Y;->A05:Ljava/lang/ClassLoader;

    .line 135
    .line 136
    invoke-static {v1, v0, p1}, LX/07Y;->A01(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-nez v0, :cond_a

    .line 141
    .line 142
    add-int/lit8 v2, v2, 0x1

    .line 143
    .line 144
    goto :goto_7

    .line 145
    :cond_9
    const/4 v0, 0x0

    .line 146
    :cond_a
    if-nez v0, :cond_1

    .line 147
    .line 148
    iget-object v3, p0, LX/07Y;->A04:[Ldalvik/system/DexFile;

    .line 149
    .line 150
    const/4 v2, 0x0

    .line 151
    :goto_8
    array-length v0, v3

    .line 152
    if-ge v2, v0, :cond_b

    .line 153
    .line 154
    aget-object v1, v3, v2

    .line 155
    .line 156
    iget-object v0, p0, LX/07Y;->A05:Ljava/lang/ClassLoader;

    .line 157
    .line 158
    invoke-static {v1, v0, p1}, LX/07Y;->A01(Ldalvik/system/DexFile;Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Class;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-nez v0, :cond_c

    .line 163
    .line 164
    add-int/lit8 v2, v2, 0x1

    .line 165
    .line 166
    goto :goto_8

    .line 167
    :cond_b
    const/4 v0, 0x0

    .line 168
    :cond_c
    if-nez v0, :cond_1

    .line 169
    .line 170
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_e

    .line 179
    .line 180
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    check-cast v0, LX/055;

    .line 185
    .line 186
    invoke-interface {v0}, LX/055;->A3k()V

    .line 187
    .line 188
    .line 189
    goto :goto_9

    .line 190
    :cond_d
    return-object v0

    .line 191
    :catchall_0
    move-exception v0

    .line 192
    monitor-exit v3

    .line 193
    throw v0

    .line 194
    :cond_e
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    const-string v0, "ClassLoaderWithDexPromotion didn\'t find "

    .line 199
    .line 200
    invoke-static {v0, p1, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    new-instance v0, Ljava/lang/ClassNotFoundException;

    .line 205
    .line 206
    invoke-direct {v0, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    throw v0
.end method

.method public final loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 12

    .line 0
    const/4 v3, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v8

    .line 5
    const/4 v9, 0x6

    .line 6
    if-le v8, v9, :cond_2

    .line 7
    .line 8
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v11

    .line 12
    const/16 v10, 0x75

    .line 13
    .line 14
    const/16 v7, 0x8

    .line 15
    .line 16
    const/16 v6, 0x73

    .line 17
    .line 18
    const/16 v2, 0x2e

    .line 19
    .line 20
    const/16 v5, 0x61

    .line 21
    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v11, v5, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/16 v1, 0x10

    .line 27
    .line 28
    if-lt v8, v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ne v0, v6, :cond_1

    .line 35
    .line 36
    const/16 v0, 0x9

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-ne v0, v10, :cond_1

    .line 43
    .line 44
    const/16 v0, 0xf

    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-ne v0, v2, :cond_1

    .line 51
    .line 52
    const/4 v0, 0x7

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-ne v0, v2, :cond_1

    .line 58
    .line 59
    const-string v0, "ndroid.support"

    .line 60
    .line 61
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    const-string v0, "test."

    .line 68
    .line 69
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :goto_0
    const/16 v0, 0x6a

    .line 77
    .line 78
    if-eq v11, v0, :cond_8

    .line 79
    .line 80
    const/16 v1, 0x6c

    .line 81
    .line 82
    if-eq v11, v1, :cond_1

    .line 83
    .line 84
    const/16 v10, 0x6f

    .line 85
    .line 86
    const/4 v1, 0x4

    .line 87
    const/4 v4, 0x5

    .line 88
    if-eq v11, v10, :cond_5

    .line 89
    .line 90
    if-eq v11, v6, :cond_4

    .line 91
    .line 92
    const/16 v0, 0x63

    .line 93
    .line 94
    if-eq v11, v0, :cond_3

    .line 95
    .line 96
    const/16 v0, 0x64

    .line 97
    .line 98
    if-ne v11, v0, :cond_2

    .line 99
    .line 100
    if-lt v8, v7, :cond_2

    .line 101
    .line 102
    :cond_1
    :goto_1
    const/4 v3, 0x1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :catch_0
    :cond_2
    :goto_2
    const/4 v2, 0x0

    .line 104
    if-eqz v3, :cond_a

    .line 105
    .line 106
    const/4 v2, 0x1

    .line 107
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_9

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_3
    :try_start_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-ne v0, v5, :cond_2

    .line 119
    .line 120
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    const/16 v0, 0x6e

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_4
    const/4 v0, 0x3

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-ne v0, v2, :cond_2

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eq v1, v5, :cond_7

    .line 140
    .line 141
    if-eq v1, v0, :cond_1

    .line 142
    .line 143
    const/16 v0, 0x77

    .line 144
    .line 145
    if-eq v1, v0, :cond_6

    .line 146
    .line 147
    const/16 v0, 0x78

    .line 148
    .line 149
    if-eq v1, v0, :cond_1

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_6
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    const/16 v0, 0x33

    .line 157
    .line 158
    :goto_3
    if-ne v1, v0, :cond_2

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_7
    const/16 v0, 0xc

    .line 162
    .line 163
    if-lt v8, v0, :cond_2

    .line 164
    .line 165
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    const/16 v0, 0x70

    .line 170
    .line 171
    if-ne v1, v0, :cond_2

    .line 172
    .line 173
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    if-ne v0, v5, :cond_2

    .line 178
    .line 179
    const/16 v0, 0xa

    .line 180
    .line 181
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    if-ne v0, v2, :cond_2

    .line 186
    .line 187
    goto :goto_1

    .line 188
    :cond_8
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eq v0, v5, :cond_1

    .line 193
    .line 194
    if-eq v0, v10, :cond_1

    .line 195
    .line 196
    goto :goto_2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 197
    :goto_4
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    goto :goto_5
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 206
    :catch_1
    :cond_9
    const/4 v0, 0x0

    .line 207
    :goto_5
    if-eqz v0, :cond_a

    .line 208
    .line 209
    return-object v0

    .line 210
    :cond_a
    :try_start_3
    invoke-virtual {p0, p1}, LX/07Y;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    return-object v0
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    .line 215
    :catch_2
    move-exception v1

    .line 216
    if-nez v2, :cond_c

    .line 217
    .line 218
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    if-eqz v0, :cond_b

    .line 223
    .line 224
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    goto :goto_6
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    .line 233
    :catch_3
    :cond_b
    const/4 v0, 0x0

    .line 234
    :goto_6
    if-eqz v0, :cond_c

    .line 235
    .line 236
    return-object v0

    .line 237
    :cond_c
    :try_start_5
    iget-object v0, p0, LX/07Y;->A09:LX/00p;

    .line 238
    .line 239
    if-nez v0, :cond_d

    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_d
    invoke-interface {v0, p1, v1}, LX/00p;->AM3(Ljava/lang/String;Ljava/lang/Throwable;)Z

    .line 243
    .line 244
    .line 245
    move-result v0

    .line 246
    goto :goto_8

    .line 247
    :goto_7
    const/4 v0, 0x0

    .line 248
    :goto_8
    if-eqz v0, :cond_e
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 249
    .line 250
    :try_start_6
    invoke-virtual {p0, p1}, LX/07Y;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    return-object v0
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 255
    :catch_4
    move-exception v1

    .line 256
    throw v1

    .line 257
    :catch_5
    move-exception v2

    .line 258
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    const-string v0, "Fallback dex load failed for "

    .line 263
    .line 264
    invoke-static {v0, p1, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    new-instance v1, Ljava/lang/ClassNotFoundException;

    .line 269
    .line 270
    invoke-direct {v1, v0, v2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    .line 272
    .line 273
    :cond_e
    throw v1
.end method
