.class public final LX/03Z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/03K;


# instance fields
.field public final synthetic A00:LX/07R;

.field public final synthetic A01:LX/08C;

.field public final synthetic A02:LX/08D;

.field public final synthetic A03:LX/08K;


# direct methods
.method public constructor <init>(LX/07R;LX/08C;LX/08D;LX/08K;)V
    .locals 0

    .line 0
    iput-object p2, p0, LX/03Z;->A01:LX/08C;

    .line 1
    .line 2
    iput-object p3, p0, LX/03Z;->A02:LX/08D;

    .line 3
    .line 4
    iput-object p4, p0, LX/03Z;->A03:LX/08K;

    .line 5
    .line 6
    iput-object p1, p0, LX/03Z;->A00:LX/07R;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final APi(LX/02m;LX/08p;)V
    .locals 3

    .line 0
    iget-object v1, p0, LX/03Z;->A02:LX/08D;

    .line 1
    .line 2
    iget-object v0, p0, LX/03Z;->A03:LX/08K;

    .line 3
    .line 4
    invoke-interface {v1, v0}, LX/08D;->A4O(LX/08K;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    check-cast v2, LX/07P;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, LX/03Z;->A00:LX/07R;

    .line 13
    .line 14
    sget-object v0, LX/02m;->A03:LX/02m;

    .line 15
    .line 16
    invoke-virtual {v1, v2, v0, p2}, LX/07R;->A04(LX/07P;LX/02m;LX/08p;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
