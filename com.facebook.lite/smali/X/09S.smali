.class public final LX/09S;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic A00:LX/09U;

.field public final synthetic A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(LX/09U;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/09S;->A00:LX/09U;

    .line 1
    .line 2
    iput-object p2, p0, LX/09S;->A01:Ljava/lang/String;

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, LX/09S;->A01:Ljava/lang/String;

    .line 1
    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    const-string v0, "unknown"

    .line 5
    .line 6
    :cond_0
    return-object v0
.end method
