.class public final LX/05t;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:J

.field public final A01:Ljava/lang/reflect/Method;

.field public final A02:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/05t;->A01:Ljava/lang/reflect/Method;

    .line 4
    .line 5
    iput-object p2, p0, LX/05t;->A02:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    iput-wide p3, p0, LX/05t;->A00:J

    .line 8
    .line 9
    return-void
.end method

.method public static A00()LX/05t;
    .locals 8

    .line 0
    const/4 v5, 0x0

    .line 1
    :try_start_0
    const-class v7, Landroid/os/Trace;

    .line 2
    .line 3
    const-string v2, "isTagEnabled"

    .line 4
    .line 5
    const/4 v6, 0x1

    .line 6
    new-array v1, v6, [Ljava/lang/Class;

    .line 7
    .line 8
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v0, v1, v3

    .line 12
    .line 13
    invoke-virtual {v7, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    const-string v2, "setAppTracingAllowed"

    .line 18
    .line 19
    new-array v1, v6, [Ljava/lang/Class;

    .line 20
    .line 21
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 22
    .line 23
    aput-object v0, v1, v3

    .line 24
    .line 25
    invoke-virtual {v7, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string v0, "TRACE_TAG_APP"

    .line 30
    .line 31
    invoke-virtual {v7, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 40
    .line 41
    if-eq v1, v0, :cond_0

    .line 42
    .line 43
    return-object v5

    .line 44
    :cond_0
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    .line 45
    .line 46
    .line 47
    move-result-wide v1

    .line 48
    new-instance v0, LX/05t;

    .line 49
    .line 50
    invoke-direct {v0, v4, v3, v1, v2}, LX/05t;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;J)V

    .line 51
    .line 52
    .line 53
    return-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :catch_0
    return-object v5
.end method
