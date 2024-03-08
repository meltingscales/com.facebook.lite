.class public final LX/09F;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field public final synthetic A00:Lcom/facebook/lite/ClientApplicationSplittedShell;


# direct methods
.method public constructor <init>(Lcom/facebook/lite/ClientApplicationSplittedShell;)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/09F;->A00:Lcom/facebook/lite/ClientApplicationSplittedShell;

    .line 1
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 0
    sget-object v0, LX/0A5;->A0C:Ljava/util/List;

    .line 1
    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    return-void
.end method
