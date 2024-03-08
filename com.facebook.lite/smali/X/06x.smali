.class public final LX/06x;
.super LX/09C;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements LX/018;


# direct methods
.method public constructor <init>(LX/01i;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, LX/09C;-><init>(LX/01i;)V

    .line 1
    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    .line 0
    invoke-virtual {p0}, LX/09C;->A00()V

    .line 1
    .line 2
    .line 3
    iget v2, p0, LX/09C;->A00:I

    .line 4
    .line 5
    iget-object v1, p0, LX/09C;->A03:LX/01i;

    .line 6
    .line 7
    iget v0, v1, LX/01i;->A01:I

    .line 8
    .line 9
    if-ge v2, v0, :cond_0

    .line 10
    .line 11
    add-int/lit8 v0, v2, 0x1

    .line 12
    .line 13
    iput v0, p0, LX/09C;->A00:I

    .line 14
    .line 15
    iput v2, p0, LX/09C;->A01:I

    .line 16
    .line 17
    iget-object v1, v1, LX/01i;->A0C:[Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v1}, LX/08H;->A03(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget v0, p0, LX/09C;->A01:I

    .line 23
    .line 24
    aget-object v0, v1, v0

    .line 25
    .line 26
    invoke-virtual {p0}, LX/09C;->A01()V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw v0
.end method
