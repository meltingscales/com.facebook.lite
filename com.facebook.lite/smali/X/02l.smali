.class public final LX/02l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08p;


# instance fields
.field public final A00:LX/07R;

.field public final A01:LX/09B;


# direct methods
.method public constructor <init>(LX/07R;LX/09B;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p2, p0, LX/02l;->A01:LX/09B;

    .line 4
    .line 5
    iput-object p1, p0, LX/02l;->A00:LX/07R;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final synthetic ABM()LX/034;
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 1
    return-object v0
.end method

.method public final ACB()LX/08q;
    .locals 1

    .line 0
    sget-object v0, LX/08q;->A0E:LX/08q;

    .line 1
    .line 2
    return-object v0
.end method

.method public final start()V
    .locals 3

    .line 0
    const/4 v0, 0x0

    .line 1
    new-instance v2, LX/02u;

    .line 2
    .line 3
    invoke-direct {v2, v0}, LX/02u;-><init>(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, LX/07M;->A4F:LX/05l;

    .line 7
    .line 8
    iget-object v0, p0, LX/02l;->A01:LX/09B;

    .line 9
    .line 10
    iget-object v0, v0, LX/09B;->A09:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, LX/02l;->A00:LX/07R;

    .line 16
    .line 17
    sget-object v0, LX/02m;->A02:LX/02m;

    .line 18
    .line 19
    invoke-virtual {v1, v2, v0, p0}, LX/07R;->A06(LX/02u;LX/02m;LX/08p;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, LX/02m;->A03:LX/02m;

    .line 23
    .line 24
    invoke-virtual {v1, v2, v0, p0}, LX/07R;->A06(LX/02u;LX/02m;LX/08p;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
