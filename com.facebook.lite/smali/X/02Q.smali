.class public final LX/02Q;
.super LX/02P;
.source ""


# instance fields
.field public final synthetic A00:LX/090;


# direct methods
.method public constructor <init>(LX/02N;LX/090;)V
    .locals 0

    .line 0
    iput-object p2, p0, LX/02Q;->A00:LX/090;

    .line 1
    .line 2
    invoke-direct {p0, p1}, LX/02P;-><init>(LX/02N;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final A00(LX/02U;)Z
    .locals 3

    .line 0
    iget-object v1, p1, LX/02U;->A00:Ljava/lang/String;

    .line 1
    .line 2
    const/4 v2, 0x0

    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, LX/07H;->A02:Ljava/util/Set;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    iget-object v0, p1, LX/02U;->A00:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0, v2}, LX/08H;->A04(Ljava/lang/Object;I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p1, LX/02U;->A00:Ljava/lang/String;

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    return v2
.end method
