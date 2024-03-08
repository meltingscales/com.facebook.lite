.class public final LX/01p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/16 v0, 0x2b

    .line 8
    .line 9
    if-ne v1, v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, LX/01p;->A01:Ljava/lang/String;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-string v1, "Invalid SHA256 key hash - should be 256-bit."

    .line 15
    .line 16
    new-instance v0, Ljava/lang/SecurityException;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 268435456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268435457
    .line 268435458
    .line 268435459
    iput-object p1, p0, LX/01p;->A00:Ljava/lang/String;

    .line 268435460
    .line 268435461
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 268435462
    .line 268435463
    .line 268435464
    move-result v1

    .line 268435465
    const/16 v0, 0x2b

    .line 268435466
    .line 268435467
    if-ne v1, v0, :cond_0

    .line 268435468
    .line 268435469
    iput-object p2, p0, LX/01p;->A01:Ljava/lang/String;

    .line 268435470
    .line 268435471
    return-void

    .line 268435472
    :cond_0
    const-string v1, "Invalid SHA256 key hash - should be 256-bit."

    .line 268435473
    .line 268435474
    new-instance v0, Ljava/lang/SecurityException;

    .line 268435475
    .line 268435476
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 268435477
    .line 268435478
    .line 268435479
    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    instance-of v0, p1, LX/01p;

    .line 1
    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return v0

    .line 6
    :cond_0
    check-cast p1, LX/01p;

    .line 7
    .line 8
    iget-object v1, p0, LX/01p;->A01:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p1, LX/01p;->A01:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final hashCode()I
    .locals 3

    .line 0
    const/4 v0, 0x1

    .line 1
    new-array v2, v0, [Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, LX/01p;->A01:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    aput-object v1, v2, v0

    .line 7
    .line 8
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method
