.class public final LX/03X;
.super LX/03I;
.source ""


# direct methods
.method public constructor <init>(Landroid/app/Application;LX/0B6;LX/03H;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, LX/03I;-><init>(Landroid/app/Application;LX/0B6;LX/03H;)V

    .line 1
    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final A00(LX/02m;)LX/02u;
    .locals 4

    .line 0
    const/4 v0, 0x0

    .line 1
    new-instance v3, LX/02u;

    .line 2
    .line 3
    invoke-direct {v3, v0}, LX/02u;-><init>(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    sget-object v2, LX/07M;->A6X:LX/05l;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v0, "android_"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, LX/02m;->A00:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v0, "unexplained"

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v3, v2, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v3
.end method

.method public final A01()LX/08q;
    .locals 1

    .line 0
    sget-object v0, LX/08q;->A0F:LX/08q;

    .line 1
    .line 2
    return-object v0
.end method

.method public final A02()Ljava/lang/Integer;
    .locals 1

    .line 0
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 1
    .line 2
    return-object v0
.end method
