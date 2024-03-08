.class public final LX/05r;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Ljava/lang/reflect/Method;

.field public final A01:Ljava/lang/reflect/Method;

.field public final A02:Ljava/lang/reflect/Method;

.field public final A03:Ljava/lang/reflect/Method;

.field public final A04:Ljava/lang/reflect/Method;

.field public final A05:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/05r;->A00:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    iput-object p2, p0, LX/05r;->A02:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    iput-object p3, p0, LX/05r;->A01:Ljava/lang/reflect/Method;

    .line 8
    .line 9
    iput-object p4, p0, LX/05r;->A03:Ljava/lang/reflect/Method;

    .line 10
    .line 11
    iput-object p5, p0, LX/05r;->A04:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iput-object p6, p0, LX/05r;->A05:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    return-void
.end method

.method public static A00()LX/05r;
    .locals 16

    .line 0
    const/4 v8, 0x0

    .line 1
    :try_start_0
    const-string v0, "android.os.SystemProperties"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v3

    .line 7
    const-string v1, "get"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    new-array v0, v4, [Ljava/lang/Class;

    .line 11
    .line 12
    const-class v7, Ljava/lang/String;

    .line 13
    .line 14
    const/4 v6, 0x0

    .line 15
    aput-object v7, v0, v6

    .line 16
    .line 17
    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    .line 19
    .line 20
    move-result-object v11

    .line 21
    const-string v2, "getBoolean"

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    new-array v1, v5, [Ljava/lang/Class;

    .line 25
    .line 26
    aput-object v7, v1, v6

    .line 27
    .line 28
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 29
    .line 30
    aput-object v0, v1, v4

    .line 31
    .line 32
    invoke-virtual {v3, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v12

    .line 36
    const-string v2, "getInt"

    .line 37
    .line 38
    new-array v1, v5, [Ljava/lang/Class;

    .line 39
    .line 40
    aput-object v7, v1, v6

    .line 41
    .line 42
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 43
    .line 44
    aput-object v0, v1, v4

    .line 45
    .line 46
    invoke-virtual {v3, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v13

    .line 50
    const-string v2, "getLong"

    .line 51
    .line 52
    new-array v1, v5, [Ljava/lang/Class;

    .line 53
    .line 54
    aput-object v7, v1, v6

    .line 55
    .line 56
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 57
    .line 58
    aput-object v0, v1, v4

    .line 59
    .line 60
    invoke-virtual {v3, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 61
    .line 62
    .line 63
    move-result-object v14

    .line 64
    const-string v1, "set"

    .line 65
    .line 66
    new-array v0, v5, [Ljava/lang/Class;

    .line 67
    .line 68
    aput-object v7, v0, v6

    .line 69
    .line 70
    aput-object v7, v0, v4

    .line 71
    .line 72
    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    .line 74
    .line 75
    move-result-object v15

    .line 76
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 77
    .line 78
    const/16 v0, 0x10

    .line 79
    .line 80
    if-lt v1, v0, :cond_0

    .line 81
    .line 82
    const-string v2, "addChangeCallback"

    .line 83
    .line 84
    new-array v1, v4, [Ljava/lang/Class;

    .line 85
    .line 86
    const-class v0, Ljava/lang/Runnable;

    .line 87
    .line 88
    aput-object v0, v1, v6

    .line 89
    .line 90
    invoke-virtual {v3, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 91
    .line 92
    .line 93
    move-result-object v10

    .line 94
    :goto_0
    new-instance v9, LX/05r;

    .line 95
    .line 96
    invoke-direct/range {v9 .. v15}, LX/05r;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_0
    move-object v10, v8

    .line 101
    goto :goto_0

    .line 102
    :goto_1
    return-object v9
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :catch_0
    return-object v8
.end method
