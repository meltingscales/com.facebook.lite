.class public final LX/032;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/07w;


# instance fields
.field public final synthetic A00:LX/0BS;


# direct methods
.method public constructor <init>(LX/0BS;)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/032;->A00:LX/0BS;

    .line 1
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final AOB(Z)V
    .locals 2

    .line 0
    sget-object v0, LX/08n;->A00:Ljava/util/List;

    .line 1
    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, LX/07w;

    .line 17
    .line 18
    invoke-interface {v0, p1}, LX/07w;->AOB(Z)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method
