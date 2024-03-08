.class public final LX/03O;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/07P;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final ACC()Ljava/lang/Integer;
    .locals 1

    .line 0
    sget-object v0, LX/050;->A08:Ljava/lang/Integer;

    .line 1
    .line 2
    return-object v0
.end method

.method public final AV8(LX/02u;LX/02m;)V
    .locals 3

    .line 0
    sget-object v2, LX/07M;->A1b:LX/05m;

    .line 1
    .line 2
    invoke-static {}, LX/07b;->A00()J

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 11
    .line 12
    .line 13
    sget-object v2, LX/07M;->A3A:LX/05m;

    .line 14
    .line 15
    invoke-static {}, LX/07b;->A01()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
