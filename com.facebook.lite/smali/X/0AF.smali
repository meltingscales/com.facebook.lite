.class public final LX/0AF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/055;


# static fields
.field public static A00:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    sput-boolean v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLoggerFbLite;->sEnabled:Z

    .line 5
    .line 6
    sput-boolean v0, LX/0AF;->A00:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final A3j(Ljava/lang/Class;)V
    .locals 1

    .line 0
    sget-boolean v0, LX/0AF;->A00:Z

    .line 1
    .line 2
    if-eqz v0, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLoggerFbLite;->classLoaded(Ljava/lang/Class;)V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final A3k()V
    .locals 1

    .line 0
    sget-boolean v0, LX/0AF;->A00:Z

    .line 1
    .line 2
    if-eqz v0, :cond_0

    .line 3
    .line 4
    invoke-static {}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLoggerFbLite;->classNotFound()V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final A3l(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method
