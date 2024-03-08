.class public final LX/03f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:C

.field public final A01:C

.field public final A02:C

.field public final A03:C

.field public final A04:C

.field public final A05:Ljava/io/File;

.field public final A06:Z

.field public final A07:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 268435456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268435457
    .line 268435458
    .line 268435459
    const/4 v1, 0x0

    .line 268435460
    iput-boolean v1, p0, LX/03f;->A07:Z

    .line 268435461
    .line 268435462
    const/4 v0, 0x0

    .line 268435463
    iput-object v0, p0, LX/03f;->A05:Ljava/io/File;

    .line 268435464
    .line 268435465
    iput-char v1, p0, LX/03f;->A03:C

    .line 268435466
    .line 268435467
    iput-char v1, p0, LX/03f;->A04:C

    .line 268435468
    .line 268435469
    iput-char v1, p0, LX/03f;->A00:C

    .line 268435470
    .line 268435471
    iput-char v1, p0, LX/03f;->A01:C

    .line 268435472
    .line 268435473
    iput-char v1, p0, LX/03f;->A02:C

    .line 268435474
    .line 268435475
    iput-boolean v1, p0, LX/03f;->A06:Z

    .line 268435476
    .line 268435477
    return-void
.end method

.method public constructor <init>(Ljava/io/File;CCCCZ)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, LX/03f;->A07:Z

    .line 5
    .line 6
    iput-object p1, p0, LX/03f;->A05:Ljava/io/File;

    .line 7
    .line 8
    iput-char p2, p0, LX/03f;->A03:C

    .line 9
    .line 10
    iput-char p3, p0, LX/03f;->A04:C

    .line 11
    .line 12
    iput-char p4, p0, LX/03f;->A00:C

    .line 13
    .line 14
    const/16 v0, 0x30

    .line 15
    .line 16
    const/16 v1, 0x30

    .line 17
    .line 18
    if-eq p3, v0, :cond_3

    .line 19
    .line 20
    const/16 v0, 0x69

    .line 21
    .line 22
    if-eq p3, v0, :cond_3

    .line 23
    .line 24
    const/16 v0, 0x39

    .line 25
    .line 26
    if-ne p3, v0, :cond_1

    .line 27
    .line 28
    const/16 v0, 0x6a

    .line 29
    .line 30
    if-ne p2, v0, :cond_1

    .line 31
    .line 32
    :cond_0
    :goto_0
    iput-char p2, p0, LX/03f;->A01:C

    .line 33
    .line 34
    iput-char p5, p0, LX/03f;->A02:C

    .line 35
    .line 36
    iput-boolean p6, p0, LX/03f;->A06:Z

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    const/16 v0, 0x52

    .line 40
    .line 41
    if-eq p2, v0, :cond_2

    .line 42
    .line 43
    const/16 v0, 0x55

    .line 44
    .line 45
    if-eq p2, v0, :cond_2

    .line 46
    .line 47
    const/16 v0, 0x72

    .line 48
    .line 49
    if-eq p2, v0, :cond_2

    .line 50
    .line 51
    const/16 v0, 0x63

    .line 52
    .line 53
    if-eq p2, v0, :cond_2

    .line 54
    .line 55
    const/16 v0, 0x75

    .line 56
    .line 57
    if-eq p2, v0, :cond_2

    .line 58
    .line 59
    const/16 v0, 0x71

    .line 60
    .line 61
    if-eq p2, v0, :cond_2

    .line 62
    .line 63
    const/16 v0, 0x6d

    .line 64
    .line 65
    if-eq p2, v0, :cond_2

    .line 66
    .line 67
    const/16 v0, 0x6a

    .line 68
    .line 69
    if-ne p2, v0, :cond_4

    .line 70
    .line 71
    :cond_2
    const/16 v0, 0x51

    .line 72
    .line 73
    if-ne p3, v0, :cond_4

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_3
    move p3, p4

    .line 77
    if-eq p4, v1, :cond_0

    .line 78
    .line 79
    const/16 v0, 0x69

    .line 80
    .line 81
    if-eq p4, v0, :cond_0

    .line 82
    .line 83
    :cond_4
    move p2, p3

    .line 84
    goto :goto_0
.end method


# virtual methods
.method public final A00()Z
    .locals 3

    .line 0
    iget-char v0, p0, LX/03f;->A03:C

    .line 1
    .line 2
    sget-object v2, LX/050;->A0N:Ljava/lang/Integer;

    .line 3
    .line 4
    invoke-static {v2, v0}, LX/03e;->A01(Ljava/lang/Integer;C)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-char v1, p0, LX/03f;->A04:C

    .line 11
    .line 12
    sget-object v0, LX/050;->A0C:Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-static {v0, v1}, LX/03e;->A01(Ljava/lang/Integer;C)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :cond_0
    iget-char v0, p0, LX/03f;->A00:C

    .line 21
    .line 22
    invoke-static {v2, v0}, LX/03e;->A01(Ljava/lang/Integer;C)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v0, 0x0

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    :cond_1
    const/4 v0, 0x1

    .line 30
    :cond_2
    return v0
.end method

.method public final A01()Z
    .locals 3

    .line 0
    iget-char v1, p0, LX/03f;->A03:C

    .line 1
    .line 2
    sget-object v0, LX/050;->A01:Ljava/lang/Integer;

    .line 3
    .line 4
    invoke-static {v0, v1}, LX/03e;->A01(Ljava/lang/Integer;C)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v2, LX/050;->A0N:Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-static {v2, v1}, LX/03e;->A01(Ljava/lang/Integer;C)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-char v1, p0, LX/03f;->A04:C

    .line 19
    .line 20
    sget-object v0, LX/050;->A0C:Ljava/lang/Integer;

    .line 21
    .line 22
    invoke-static {v0, v1}, LX/03e;->A01(Ljava/lang/Integer;C)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    iget-char v0, p0, LX/03f;->A00:C

    .line 29
    .line 30
    invoke-static {v2, v0}, LX/03e;->A01(Ljava/lang/Integer;C)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v0, 0x1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    :cond_0
    const/4 v0, 0x0

    .line 38
    :cond_1
    return v0
.end method
