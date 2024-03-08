.class public abstract LX/066;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    const/16 v0, 0x2d

    .line 1
    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    fill-array-data v0, :array_0

    .line 5
    .line 6
    .line 7
    sput-object v0, LX/066;->A00:[I

    .line 8
    .line 9
    return-void

    .line 10
    :array_0
    .array-data 4
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x2020
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x20
        0x20
    .end array-data
.end method

.method public static final A00(Ljava/lang/String;)[J
    .locals 5

    .line 0
    const/4 v0, 0x6

    .line 1
    new-array v4, v0, [J

    .line 2
    .line 3
    fill-array-data v4, :array_0

    .line 4
    .line 5
    .line 6
    sget-object v3, LX/066;->A00:[I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    sget-object v0, LX/06k;->A00:LX/06j;

    .line 10
    .line 11
    move-object v1, p0

    .line 12
    move-object p0, v2

    .line 13
    invoke-interface/range {v0 .. v5}, LX/06j;->AWQ(Ljava/lang/String;[F[I[J[Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-object v4

    .line 17
    nop

    .line 18
    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method
