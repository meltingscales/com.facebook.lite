.class public final LX/03U;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/03T;


# instance fields
.field public final synthetic A00:Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;


# direct methods
.method public constructor <init>(Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/03U;->A00:Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;

    .line 1
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final AGf(LX/04m;Ljava/lang/Thread;Ljava/lang/Throwable;)I
    .locals 2

    .line 0
    iget-object v1, p0, LX/03U;->A00:Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;

    .line 1
    .line 2
    iget-object v0, v1, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->A01:LX/08r;

    .line 3
    .line 4
    invoke-interface {v0, p2, p3}, LX/08r;->A1j(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v1, p2, p3}, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->A00(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method
