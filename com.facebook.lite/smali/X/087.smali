.class public final LX/087;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/0BO;


# instance fields
.field public A00:I

.field public final A01:[LX/0BO;


# direct methods
.method public varargs constructor <init>([LX/0BO;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/087;->A01:[LX/0BO;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput v0, p0, LX/087;->A00:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final AWZ(Ljava/lang/UnsatisfiedLinkError;[LX/0BC;)Z
    .locals 3

    .line 0
    :cond_0
    iget v2, p0, LX/087;->A00:I

    .line 1
    .line 2
    iget-object v1, p0, LX/087;->A01:[LX/0BO;

    .line 3
    .line 4
    const/4 v0, 0x6

    .line 5
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    add-int/lit8 v0, v2, 0x1

    .line 8
    .line 9
    iput v0, p0, LX/087;->A00:I

    .line 10
    .line 11
    aget-object v0, v1, v2

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, LX/0BO;->AWZ(Ljava/lang/UnsatisfiedLinkError;[LX/0BC;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return v0
.end method
