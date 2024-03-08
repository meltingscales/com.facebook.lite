.class public abstract LX/04s;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static A00:Ljava/lang/reflect/Method;

.field public static A01:Ljava/lang/reflect/Method;

.field public static A02:Ljava/lang/reflect/Method;

.field public static A03:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1
    .line 2
    const/16 v0, 0x12

    .line 3
    .line 4
    if-lt v1, v0, :cond_0

    .line 5
    .line 6
    const/16 v0, 0x1d

    .line 7
    .line 8
    if-ge v1, v0, :cond_0

    .line 9
    .line 10
    :try_start_0
    const-class v8, Landroid/os/Trace;

    .line 11
    .line 12
    const-string v0, "TRACE_TAG_APP"

    .line 13
    .line 14
    invoke-virtual {v8, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 20
    .line 21
    .line 22
    const-string v1, "isTagEnabled"

    .line 23
    .line 24
    const/4 v7, 0x1

    .line 25
    new-array v0, v7, [Ljava/lang/Class;

    .line 26
    .line 27
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    aput-object v3, v0, v9

    .line 31
    .line 32
    invoke-virtual {v8, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, LX/04s;->A02:Ljava/lang/reflect/Method;

    .line 37
    .line 38
    const-string v2, "asyncTraceBegin"

    .line 39
    .line 40
    const/4 v6, 0x3

    .line 41
    new-array v1, v6, [Ljava/lang/Class;

    .line 42
    .line 43
    aput-object v3, v1, v9

    .line 44
    .line 45
    const-class v5, Ljava/lang/String;

    .line 46
    .line 47
    aput-object v5, v1, v7

    .line 48
    .line 49
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 50
    .line 51
    const/4 v4, 0x2

    .line 52
    aput-object v0, v1, v4

    .line 53
    .line 54
    invoke-virtual {v8, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sput-object v0, LX/04s;->A00:Ljava/lang/reflect/Method;

    .line 59
    .line 60
    const-string v2, "asyncTraceEnd"

    .line 61
    .line 62
    new-array v1, v6, [Ljava/lang/Class;

    .line 63
    .line 64
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 65
    .line 66
    aput-object v3, v1, v9

    .line 67
    .line 68
    aput-object v5, v1, v7

    .line 69
    .line 70
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 71
    .line 72
    aput-object v3, v1, v4

    .line 73
    .line 74
    invoke-virtual {v8, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, LX/04s;->A01:Ljava/lang/reflect/Method;

    .line 79
    .line 80
    const-string v2, "traceCounter"

    .line 81
    .line 82
    new-array v1, v6, [Ljava/lang/Class;

    .line 83
    .line 84
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 85
    .line 86
    aput-object v0, v1, v9

    .line 87
    .line 88
    aput-object v5, v1, v7

    .line 89
    .line 90
    aput-object v3, v1, v4

    .line 91
    .line 92
    invoke-virtual {v8, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    sput-object v0, LX/04s;->A03:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    :catch_0
    :cond_0
    return-void
.end method

.method public static A00()V
    .locals 2

    .line 0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1
    .line 2
    const/16 v0, 0x12

    .line 3
    .line 4
    if-lt v1, v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, LX/04r;->A00()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public static A01(Ljava/lang/String;)V
    .locals 2

    .line 0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1
    .line 2
    const/16 v0, 0x12

    .line 3
    .line 4
    if-lt v1, v0, :cond_0

    .line 5
    .line 6
    invoke-static {p0}, LX/04r;->A01(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
