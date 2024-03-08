.class public LX/0BX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public A00:Ljava/lang/Object;

.field public A01:Ljava/lang/Object;

.field public final A02:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput p1, p0, LX/0BX;->A02:I

    .line 1
    .line 2
    iput-object p2, p0, LX/0BX;->A00:Ljava/lang/Object;

    .line 3
    .line 4
    iput-object p3, p0, LX/0BX;->A01:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 0
    iget v0, p0, LX/0BX;->A02:I

    .line 1
    .line 2
    move-object v4, p2

    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, LX/0BX;->A00:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, LX/09U;

    .line 8
    .line 9
    iget-boolean v0, v1, LX/09U;->A03:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, v1, LX/09U;->A02:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, v1, LX/09U;->A01:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    .line 17
    :try_start_1
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 18
    .line 19
    .line 20
    move-result-object v5

    .line 21
    const/4 v1, 0x0

    .line 22
    move-object v2, v1

    .line 23
    invoke-static/range {v0 .. v5}, LX/07l;->A00(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    :catch_0
    :try_start_2
    move-exception v2

    .line 28
    const-string v1, "EarlyExceptionHandler"

    .line 29
    .line 30
    const-string v0, "Failed sending direct reports"

    .line 31
    .line 32
    invoke-static {v1, v0, v2}, LX/06s;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 36
    :catch_1
    move-exception v2

    .line 37
    const-string v1, "EarlyExceptionHandler"

    .line 38
    .line 39
    const-string v0, "Exception in uncaught handler"

    .line 40
    .line 41
    invoke-static {v1, v0, v2}, LX/06s;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    :goto_0
    iget-object v0, p0, LX/0BX;->A01:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    iget-object v1, p0, LX/0BX;->A00:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;

    .line 54
    .line 55
    iget-object v0, v1, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->A01:LX/08r;

    .line 56
    .line 57
    invoke-interface {v0, p1, p2}, LX/08r;->A1j(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v1, p1, p2}, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->A00(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, LX/0BX;->A01:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v0, Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 69
    .line 70
    :goto_1
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    return-void
.end method
