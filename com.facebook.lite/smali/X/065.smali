.class public final LX/065;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A07:[Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:J

.field public final A02:J

.field public final A03:J

.field public final A04:J

.field public final A05:J

.field public final A06:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 0
    const/4 v0, 0x7

    .line 1
    new-array v2, v0, [Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v0, "rchar:"

    .line 5
    .line 6
    aput-object v0, v2, v1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v0, "wchar:"

    .line 10
    .line 11
    aput-object v0, v2, v1

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    const-string v0, "syscr:"

    .line 15
    .line 16
    aput-object v0, v2, v1

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    const-string v0, "syscw:"

    .line 20
    .line 21
    aput-object v0, v2, v1

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    const-string v0, "read_bytes:"

    .line 25
    .line 26
    aput-object v0, v2, v1

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    const-string v0, "write_bytes:"

    .line 30
    .line 31
    aput-object v0, v2, v1

    .line 32
    .line 33
    const/4 v1, 0x6

    .line 34
    const-string v0, "cancelled_write_bytes:"

    .line 35
    .line 36
    aput-object v0, v2, v1

    .line 37
    .line 38
    sput-object v2, LX/065;->A07:[Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(JJJJJJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-wide p1, p0, LX/065;->A02:J

    .line 4
    .line 5
    iput-wide p3, p0, LX/065;->A05:J

    .line 6
    .line 7
    iput-wide p5, p0, LX/065;->A03:J

    .line 8
    .line 9
    iput-wide p7, p0, LX/065;->A06:J

    .line 10
    .line 11
    iput-wide p9, p0, LX/065;->A01:J

    .line 12
    .line 13
    iput-wide p11, p0, LX/065;->A04:J

    .line 14
    .line 15
    iput-wide p13, p0, LX/065;->A00:J

    .line 16
    .line 17
    return-void
.end method

.method public static A00()LX/065;
    .locals 16

    .line 0
    sget-object v3, LX/065;->A07:[Ljava/lang/String;

    .line 1
    .line 2
    const/4 v0, 0x7

    .line 3
    new-array v1, v0, [J

    .line 4
    .line 5
    const-string v2, "/proc/self/io"

    .line 6
    .line 7
    sget-object v0, LX/06k;->A00:LX/06j;

    .line 8
    .line 9
    invoke-interface {v0, v2, v1, v3}, LX/06j;->AWR(Ljava/lang/String;[J[Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    aget-wide v2, v1, v0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    aget-wide v4, v1, v0

    .line 20
    .line 21
    const/4 v0, 0x2

    .line 22
    aget-wide v6, v1, v0

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    aget-wide v8, v1, v0

    .line 26
    .line 27
    const/4 v0, 0x4

    .line 28
    aget-wide v10, v1, v0

    .line 29
    .line 30
    const/4 v0, 0x5

    .line 31
    aget-wide v12, v1, v0

    .line 32
    .line 33
    const/4 v0, 0x6

    .line 34
    aget-wide v14, v1, v0

    .line 35
    .line 36
    new-instance v1, LX/065;

    .line 37
    .line 38
    invoke-direct/range {v1 .. v15}, LX/065;-><init>(JJJJJJJ)V

    .line 39
    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_0
    const/4 v1, 0x0

    .line 43
    return-object v1
.end method
