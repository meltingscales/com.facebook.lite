.class public abstract LX/01D;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Iterable;
.implements LX/018;


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 0
    const/4 v1, 0x1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LX/01D;->A00:I

    .line 5
    .line 6
    if-ge p1, p2, :cond_3

    .line 7
    .line 8
    rem-int v0, p2, v1

    .line 9
    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    :cond_0
    rem-int/2addr p1, v1

    .line 15
    if-gez p1, :cond_1

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x1

    .line 18
    .line 19
    :cond_1
    sub-int/2addr v0, p1

    .line 20
    rem-int/2addr v0, v1

    .line 21
    if-gez v0, :cond_2

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    :cond_2
    sub-int/2addr p2, v0

    .line 26
    :cond_3
    iput p2, p0, LX/01D;->A01:I

    .line 27
    .line 28
    iput v1, p0, LX/01D;->A02:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public final A00()LX/01L;
    .locals 3

    .line 0
    iget v2, p0, LX/01D;->A00:I

    .line 1
    .line 2
    iget v1, p0, LX/01D;->A01:I

    .line 3
    .line 4
    new-instance v0, LX/01L;

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LX/01L;-><init>(II)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 0
    invoke-virtual {p0}, LX/01D;->A00()LX/01L;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    return-object v0
.end method
