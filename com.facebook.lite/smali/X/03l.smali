.class public final LX/03l;
.super LX/05K;
.source ""


# instance fields
.field public final synthetic A00:LX/08K;


# direct methods
.method public constructor <init>(LX/08K;)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/03l;->A00:LX/08K;

    .line 1
    .line 2
    invoke-direct {p0}, LX/05K;-><init>()V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final bridge synthetic A00()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v1, p0, LX/03l;->A00:LX/08K;

    .line 1
    .line 2
    iget-object v0, v1, LX/08K;->A09:LX/0BP;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, LX/03p;

    .line 7
    .line 8
    invoke-direct {v0, v1}, LX/03p;-><init>(LX/08K;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, v1, LX/08K;->A09:LX/0BP;

    .line 12
    .line 13
    :cond_0
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, LX/03q;

    .line 18
    .line 19
    sget-object v1, LX/02f;->A00:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v0, LX/08K;->A0V:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, LX/03r;->A01(Ljava/lang/String;)Landroid/net/Uri;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sget-object v0, LX/02f;->A00:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v0, LX/06U;

    .line 44
    .line 45
    invoke-direct {v0}, LX/06U;-><init>()V

    .line 46
    .line 47
    .line 48
    :goto_0
    new-instance v1, LX/03x;

    .line 49
    .line 50
    invoke-direct {v1, v2, v0, v3}, LX/03x;-><init>(Landroid/net/Uri;LX/03v;LX/03q;)V

    .line 51
    .line 52
    .line 53
    return-object v1

    .line 54
    :cond_1
    new-instance v0, LX/03w;

    .line 55
    .line 56
    invoke-direct {v0}, LX/03w;-><init>()V

    .line 57
    .line 58
    .line 59
    goto :goto_0
.end method
