.class public final LX/02t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/07P;


# instance fields
.field public final synthetic A00:LX/02s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 268435456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268435457
    .line 268435458
    .line 268435459
    return-void
.end method

.method public constructor <init>(LX/02s;)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/02t;->A00:LX/02s;

    .line 1
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final ACC()Ljava/lang/Integer;
    .locals 1

    .line 0
    sget-object v0, LX/050;->A0Y:Ljava/lang/Integer;

    .line 1
    .line 2
    return-object v0
.end method

.method public final AV8(LX/02u;LX/02m;)V
    .locals 3

    .line 0
    sget-object v1, LX/07M;->A9Q:LX/05l;

    .line 1
    .line 2
    iget-object v0, p0, LX/02t;->A00:LX/02s;

    .line 3
    .line 4
    iget-object v2, v0, LX/02s;->A00:LX/08K;

    .line 5
    .line 6
    iget-object v0, v2, LX/08K;->A0R:LX/0BP;

    .line 7
    .line 8
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object v1, LX/07M;->A0I:LX/05n;

    .line 18
    .line 19
    iget-object v0, v2, LX/08K;->A0O:LX/0BP;

    .line 20
    .line 21
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1, v1, v0}, LX/02u;->A01(LX/05n;Z)V

    .line 32
    .line 33
    .line 34
    sget-object v1, LX/07M;->A3N:LX/05l;

    .line 35
    .line 36
    iget-object v0, v2, LX/08K;->A0L:LX/0BP;

    .line 37
    .line 38
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v1, LX/07M;->A3K:LX/05l;

    .line 48
    .line 49
    iget-object v0, v2, LX/08K;->A0K:LX/0BP;

    .line 50
    .line 51
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
