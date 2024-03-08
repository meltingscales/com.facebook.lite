.class public abstract LX/06k;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:LX/06j;

.field public static final A01:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 0
    const/4 v0, 0x1

    .line 1
    new-array v2, v0, [I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v0, 0x1000

    .line 5
    .line 6
    aput v0, v2, v1

    .line 7
    .line 8
    sput-object v2, LX/06k;->A01:[I

    .line 9
    .line 10
    invoke-static {}, LX/0AI;->A00()LX/0AI;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, LX/0AM;->A01()LX/0AM;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_0
    sput-object v0, LX/06k;->A00:LX/06j;

    .line 21
    .line 22
    return-void
.end method

.method public static A00()Landroid/util/Pair;
    .locals 8

    .line 0
    const-string v3, "/proc/self/cmdline"

    .line 1
    .line 2
    const/4 v0, 0x1

    .line 3
    new-array v7, v0, [Ljava/lang/String;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    aput-object v4, v7, v1

    .line 8
    .line 9
    sget-object v5, LX/06k;->A01:[I

    .line 10
    .line 11
    sget-object v2, LX/06k;->A00:LX/06j;

    .line 12
    .line 13
    move-object v6, v4

    .line 14
    invoke-interface/range {v2 .. v7}, LX/06j;->AWQ(Ljava/lang/String;[F[I[J[Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    aget-object v2, v7, v1

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v0, Landroid/util/Pair;

    .line 25
    .line 26
    invoke-direct {v0, v2, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v0
.end method
