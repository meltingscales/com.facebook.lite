.class public abstract LX/01R;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:J

.field public static final A01:Ljava/lang/reflect/Method;

.field public static final A02:Ljava/lang/reflect/Method;

.field public static volatile A03:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1
    .line 2
    const/4 v2, 0x1

    .line 3
    const/16 v0, 0x12

    .line 4
    .line 5
    if-lt v1, v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, LX/05t;->A00()LX/05t;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, v1, LX/05t;->A01:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    sput-object v0, LX/01R;->A01:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    iget-object v0, v1, LX/05t;->A02:Ljava/lang/reflect/Method;

    .line 18
    .line 19
    sput-object v0, LX/01R;->A02:Ljava/lang/reflect/Method;

    .line 20
    .line 21
    iget-wide v0, v1, LX/05t;->A00:J

    .line 22
    .line 23
    sput-wide v0, LX/01R;->A00:J

    .line 24
    .line 25
    sput-boolean v2, LX/01R;->A03:Z

    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public static varargs A00(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v2

    .line 5
    return-object v2
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v0, v1, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    instance-of v0, v1, Ljava/lang/Error;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-object v2

    .line 20
    :cond_0
    throw v1

    .line 21
    :catch_1
    const/4 v0, 0x0

    .line 22
    sput-boolean v0, LX/01R;->A03:Z

    .line 23
    .line 24
    return-object v2
.end method
