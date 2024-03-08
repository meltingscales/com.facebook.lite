.class public final LX/09j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:I

.field public final A01:LX/00J;

.field public final A02:Ljava/lang/String;

.field public final A03:Ljava/lang/String;


# direct methods
.method public constructor <init>(LX/00J;Ljava/lang/String;I)V
    .locals 3

    .line 268435456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268435457
    .line 268435458
    .line 268435459
    const-string v2, "@"

    .line 268435460
    .line 268435461
    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 268435462
    .line 268435463
    .line 268435464
    move-result v1

    .line 268435465
    const/4 v0, -0x1

    .line 268435466
    if-eq v1, v0, :cond_0

    .line 268435467
    .line 268435468
    add-int/lit8 v0, v1, 0x1

    .line 268435469
    .line 268435470
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 268435471
    .line 268435472
    .line 268435473
    move-result-object p2

    .line 268435474
    :cond_0
    iput-object p2, p0, LX/09j;->A03:Ljava/lang/String;

    .line 268435475
    .line 268435476
    iput p3, p0, LX/09j;->A00:I

    .line 268435477
    .line 268435478
    iput-object p1, p0, LX/09j;->A01:LX/00J;

    .line 268435479
    .line 268435480
    if-eqz p1, :cond_2

    .line 268435481
    .line 268435482
    iget-object v0, p1, LX/00J;->A00:Ljava/lang/String;

    .line 268435483
    .line 268435484
    :goto_0
    if-eqz v0, :cond_1

    .line 268435485
    .line 268435486
    invoke-static {v0}, LX/000;->A0D(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268435487
    .line 268435488
    .line 268435489
    move-result-object v0

    .line 268435490
    invoke-static {v2, p2, v0}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 268435491
    .line 268435492
    .line 268435493
    move-result-object p2

    .line 268435494
    :cond_1
    iput-object p2, p0, LX/09j;->A02:Ljava/lang/String;

    .line 268435495
    .line 268435496
    return-void

    .line 268435497
    :cond_2
    const/4 v0, 0x0

    .line 268435498
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 10

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    const/4 v6, 0x1

    .line 4
    move-object v1, p1

    .line 5
    const-string v0, "@"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result v8

    .line 11
    const/4 v9, -0x1

    .line 12
    if-eq v8, v9, :cond_0

    .line 13
    .line 14
    add-int/lit8 v0, v8, 0x1

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :cond_0
    iput-object v1, p0, LX/09j;->A03:Ljava/lang/String;

    .line 21
    .line 22
    iput p2, p0, LX/09j;->A00:I

    .line 23
    .line 24
    if-eq v8, v9, :cond_4

    .line 25
    .line 26
    if-eqz v8, :cond_4

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p1, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    :goto_0
    const/4 v5, 0x0

    .line 34
    if-eqz v7, :cond_1

    .line 35
    .line 36
    invoke-static {}, LX/00J;->values()[LX/00J;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    array-length v3, v4

    .line 41
    const/4 v2, 0x0

    .line 42
    :goto_1
    if-ge v2, v3, :cond_1

    .line 43
    .line 44
    aget-object v1, v4, v2

    .line 45
    .line 46
    iget-object v0, v1, LX/00J;->A00:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    move-object v5, v1

    .line 55
    :cond_1
    iput-object v5, p0, LX/09j;->A01:LX/00J;

    .line 56
    .line 57
    iput-object p1, p0, LX/09j;->A02:Ljava/lang/String;

    .line 58
    .line 59
    if-nez v5, :cond_2

    .line 60
    .line 61
    if-eq v8, v9, :cond_2

    .line 62
    .line 63
    if-eqz v8, :cond_2

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    invoke-virtual {p1, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    const-string v2, "UnresolvedSocketAddress"

    .line 73
    .line 74
    new-array v1, v6, [Ljava/lang/Object;

    .line 75
    .line 76
    aput-object v0, v1, v3

    .line 77
    .line 78
    const-string v0, "Unknown VIP: {}"

    .line 79
    .line 80
    invoke-static {v2, v0, v1}, LX/012;->A01(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    return-void

    .line 84
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    const/4 v7, 0x0

    .line 88
    goto :goto_0
.end method


# virtual methods
.method public final A00(LX/09j;)Z
    .locals 3

    .line 0
    iget-object v1, p0, LX/09j;->A02:Ljava/lang/String;

    .line 1
    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object v0, p1, LX/09j;->A02:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v2, p0, LX/09j;->A00:I

    .line 13
    .line 14
    iget v1, p1, LX/09j;->A00:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-eq v2, v1, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :cond_1
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 0
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 1
    .line 2
    .line 3
    move-result-object v1

    .line 4
    iget-object v0, p0, LX/09j;->A02:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v0, ":"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget v0, p0, LX/09j;->A00:I

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method
