.class public final LX/01E;
.super LX/01D;
.source ""


# static fields
.field public static final A00:LX/01E;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 0
    const/4 v2, 0x1

    .line 1
    const/4 v1, 0x0

    .line 2
    new-instance v0, LX/01E;

    .line 3
    .line 4
    invoke-direct {v0, v2, v1}, LX/01E;-><init>(II)V

    .line 5
    .line 6
    .line 7
    sput-object v0, LX/01E;->A00:LX/01E;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, LX/01D;-><init>(II)V

    .line 1
    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 0
    instance-of v0, p1, LX/01E;

    .line 1
    .line 2
    if-eqz v0, :cond_1

    .line 3
    .line 4
    iget v3, p0, LX/01D;->A00:I

    .line 5
    .line 6
    iget v2, p0, LX/01D;->A01:I

    .line 7
    .line 8
    if-le v3, v2, :cond_0

    .line 9
    .line 10
    move-object v0, p1

    .line 11
    check-cast v0, LX/01D;

    .line 12
    .line 13
    iget v1, v0, LX/01D;->A00:I

    .line 14
    .line 15
    iget v0, v0, LX/01D;->A01:I

    .line 16
    .line 17
    if-le v1, v0, :cond_0

    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    check-cast p1, LX/01D;

    .line 22
    .line 23
    iget v0, p1, LX/01D;->A00:I

    .line 24
    .line 25
    if-ne v3, v0, :cond_1

    .line 26
    .line 27
    iget v0, p1, LX/01D;->A01:I

    .line 28
    .line 29
    if-ne v2, v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v0, 0x0

    .line 33
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 0
    iget v0, p0, LX/01D;->A00:I

    .line 1
    .line 2
    iget v1, p0, LX/01D;->A01:I

    .line 3
    .line 4
    if-le v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, -0x1

    .line 7
    return v0

    .line 8
    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    add-int/2addr v0, v1

    .line 11
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1
    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    .line 4
    .line 5
    iget v0, p0, LX/01D;->A00:I

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    const-string v0, ".."

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget v0, p0, LX/01D;->A01:I

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
