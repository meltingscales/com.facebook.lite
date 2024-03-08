.class public final LX/05A;
.super LX/01A;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "LX/01A<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:LX/01A;


# direct methods
.method public constructor <init>(LX/01A;II)V
    .locals 3

    .line 0
    invoke-direct {p0}, LX/01A;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/05A;->A02:LX/01A;

    .line 4
    .line 5
    iput p2, p0, LX/05A;->A01:I

    .line 6
    .line 7
    invoke-virtual {p1}, LX/019;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const-string v0, "fromIndex: "

    .line 12
    .line 13
    if-ltz p2, :cond_1

    .line 14
    .line 15
    if-gt p3, v2, :cond_1

    .line 16
    .line 17
    if-gt p2, p3, :cond_0

    .line 18
    .line 19
    sub-int/2addr p3, p2

    .line 20
    iput p3, p0, LX/05A;->A00:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {v0}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, " > toIndex: "

    .line 31
    .line 32
    invoke-static {v0, v1, p3}, LX/000;->A0B(Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    throw v1

    .line 41
    :cond_1
    invoke-static {v0}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, ", toIndex: "

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, ", size: "

    .line 57
    .line 58
    invoke-static {v0, v1, v2}, LX/000;->A0B(Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v1
.end method


# virtual methods
.method public final A00()I
    .locals 1

    .line 0
    iget v0, p0, LX/05A;->A00:I

    .line 1
    .line 2
    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    .line 0
    iget v2, p0, LX/05A;->A00:I

    .line 1
    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    if-ge p1, v2, :cond_0

    .line 5
    .line 6
    iget-object v1, p0, LX/05A;->A02:LX/01A;

    .line 7
    .line 8
    iget v0, p0, LX/05A;->A01:I

    .line 9
    .line 10
    add-int/2addr v0, p1

    .line 11
    invoke-virtual {v1, v0}, LX/01A;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v0, "index: "

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", size: "

    .line 29
    .line 30
    invoke-static {v0, v1, v2}, LX/000;->A0B(Ljava/lang/String;Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 35
    .line 36
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method
