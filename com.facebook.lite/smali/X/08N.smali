.class public final LX/08N;
.super LX/0BC;
.source ""

# interfaces
.implements LX/0As;
.implements LX/0B4;


# instance fields
.field public final A00:LX/0BC;


# direct methods
.method public constructor <init>(LX/0BC;)V
    .locals 0

    .line 0
    invoke-direct {p0}, LX/0BC;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/08N;->A00:LX/0BC;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final A04(Landroid/os/StrictMode$ThreadPolicy;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final A05()Ljava/lang/String;
    .locals 1

    const-string v0, "NoLoadSoSourceWrapper"

    return-object v0
.end method

.method public final A07(I)V
    .locals 1

    .line 0
    iget-object v0, p0, LX/08N;->A00:LX/0BC;

    .line 1
    .line 2
    invoke-virtual {v0, p1}, LX/0BC;->A07(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final AWY(Landroid/content/Context;)LX/0BC;
    .locals 2

    .line 0
    iget-object v1, p0, LX/08N;->A00:LX/0BC;

    .line 1
    .line 2
    instance-of v0, v1, LX/0B4;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast v1, LX/0B4;

    .line 7
    .line 8
    invoke-interface {v1, p1}, LX/0B4;->AWY(Landroid/content/Context;)LX/0BC;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v0, LX/08N;

    .line 13
    .line 14
    invoke-direct {v0, v1}, LX/08N;-><init>(LX/0BC;)V

    .line 15
    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    return-object p0
.end method

.method public final AdP()V
    .locals 2

    .line 0
    iget-object v1, p0, LX/08N;->A00:LX/0BC;

    .line 1
    .line 2
    instance-of v0, v1, LX/0As;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast v1, LX/0As;

    .line 7
    .line 8
    invoke-interface {v1}, LX/0As;->AdP()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 0
    const-string v0, "NoLoadSoSourceWrapper"

    .line 1
    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 3
    .line 4
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "["

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, LX/08N;->A00:LX/0BC;

    .line 13
    .line 14
    invoke-static {v0, v1}, LX/000;->A0K(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "]"

    .line 18
    .line 19
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method
