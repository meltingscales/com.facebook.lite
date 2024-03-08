.class public abstract LX/00m;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ldalvik/system/DexFile;
    .locals 8

    .line 0
    const/4 v5, 0x0

    .line 1
    const/4 v4, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    :try_start_0
    const-class v0, Ldalvik/system/DexFile;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    .line 7
    .line 8
    .line 9
    move-result-object v7

    .line 10
    array-length v3, v7

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v3, :cond_1

    .line 13
    .line 14
    aget-object v6, v7, v2

    .line 15
    .line 16
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v0, "loadDex"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    array-length v1, v0

    .line 33
    const/4 v0, 0x5

    .line 34
    if-lt v1, v0, :cond_0

    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    invoke-virtual {v6, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v6, 0x0

    .line 45
    :goto_1
    const/4 v3, 0x1

    .line 46
    if-eqz v6, :cond_2

    .line 47
    .line 48
    const/4 v0, 0x5

    .line 49
    new-array v2, v0, [Ljava/lang/Object;

    .line 50
    .line 51
    aput-object p1, v2, v4

    .line 52
    .line 53
    aput-object p2, v2, v3

    .line 54
    .line 55
    const/4 v1, 0x2

    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    aput-object v0, v2, v1

    .line 61
    .line 62
    const/4 v0, 0x3

    .line 63
    aput-object p0, v2, v0

    .line 64
    .line 65
    const/4 v0, 0x4

    .line 66
    aput-object v5, v2, v0

    .line 67
    .line 68
    invoke-virtual {v6, v5, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ldalvik/system/DexFile;

    .line 73
    .line 74
    move-object v5, v0

    .line 75
    goto :goto_2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :catch_0
    :cond_2
    const/4 v3, 0x0

    .line 77
    :goto_2
    if-nez v3, :cond_3

    .line 78
    .line 79
    invoke-static {p1, p2, v4}, Ldalvik/system/DexFile;->loadDex(Ljava/lang/String;Ljava/lang/String;I)Ldalvik/system/DexFile;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    :cond_3
    return-object v5
.end method
