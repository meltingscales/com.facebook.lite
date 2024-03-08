.class public final LX/05E;
.super LX/05T;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 0
    const-string v0, "lib-main"

    .line 1
    .line 2
    invoke-direct {p0, p1, v0}, LX/05T;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final A05()Ljava/lang/String;
    .locals 1

    const-string v0, "ExoSoSource"

    return-object v0
.end method

.method public final A08()LX/0BK;
    .locals 1

    .line 0
    new-instance v0, LX/08T;

    .line 1
    .line 2
    invoke-direct {v0, p0, p0}, LX/08T;-><init>(LX/05E;LX/05T;)V

    .line 3
    .line 4
    .line 5
    return-object v0
.end method
