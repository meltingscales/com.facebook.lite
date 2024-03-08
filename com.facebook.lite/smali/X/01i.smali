.class public final LX/01i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;
.implements LX/018;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;",
        "Lkotlin/jvm/internal/markers/KMutableMap;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,727:1\n1#2:728\n*E\n"
.end annotation


# static fields
.field public static final A0D:LX/01i;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:LX/04u;

.field public A06:LX/04v;

.field public A07:LX/04y;

.field public A08:Z

.field public A09:[I

.field public A0A:[I

.field public A0B:[Ljava/lang/Object;

.field public A0C:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 0
    const/4 v0, 0x0

    .line 1
    new-instance v1, LX/01i;

    .line 2
    .line 3
    invoke-direct {v1, v0}, LX/01i;-><init>(I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, v1, LX/01i;->A08:Z

    .line 8
    .line 9
    sput-object v1, LX/01i;->A0D:LX/01i;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 268435456
    const/16 v0, 0x8

    .line 268435457
    .line 268435458
    invoke-direct {p0, v0}, LX/01i;-><init>(I)V

    .line 268435459
    .line 268435460
    .line 268435461
    return-void
.end method

.method public constructor <init>(I)V
    .locals 7

    .line 0
    new-array v6, p1, [Ljava/lang/Object;

    .line 1
    .line 2
    new-array v5, p1, [I

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    :cond_0
    mul-int/lit8 v0, p1, 0x3

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 11
    .line 12
    .line 13
    move-result v4

    .line 14
    new-array v3, v4, [I

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v6, p0, LX/01i;->A0B:[Ljava/lang/Object;

    .line 23
    .line 24
    iput-object v2, p0, LX/01i;->A0C:[Ljava/lang/Object;

    .line 25
    .line 26
    iput-object v5, p0, LX/01i;->A0A:[I

    .line 27
    .line 28
    iput-object v3, p0, LX/01i;->A09:[I

    .line 29
    .line 30
    iput v1, p0, LX/01i;->A02:I

    .line 31
    .line 32
    iput v0, p0, LX/01i;->A01:I

    .line 33
    .line 34
    invoke-static {v4}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    iput v0, p0, LX/01i;->A00:I

    .line 41
    .line 42
    return-void
.end method

.method public static final A00(Ljava/lang/Object;LX/01i;)I
    .locals 6

    .line 0
    if-eqz p0, :cond_2

    .line 1
    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 3
    .line 4
    .line 5
    move-result v5

    .line 6
    :goto_0
    const v0, -0x61c88647

    .line 7
    .line 8
    .line 9
    mul-int/2addr v5, v0

    .line 10
    iget v0, p1, LX/01i;->A00:I

    .line 11
    .line 12
    ushr-int/2addr v5, v0

    .line 13
    iget v4, p1, LX/01i;->A02:I

    .line 14
    .line 15
    :goto_1
    iget-object v3, p1, LX/01i;->A09:[I

    .line 16
    .line 17
    aget v1, v3, v5

    .line 18
    .line 19
    const/4 v2, -0x1

    .line 20
    if-eqz v1, :cond_3

    .line 21
    .line 22
    if-lez v1, :cond_0

    .line 23
    .line 24
    iget-object v0, p1, LX/01i;->A0B:[Ljava/lang/Object;

    .line 25
    .line 26
    add-int/lit8 v1, v1, -0x1

    .line 27
    .line 28
    aget-object v0, v0, v1

    .line 29
    .line 30
    invoke-static {v0, p0}, LX/08H;->A09(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    return v1

    .line 37
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 38
    .line 39
    if-ltz v4, :cond_3

    .line 40
    .line 41
    add-int/lit8 v0, v5, -0x1

    .line 42
    .line 43
    if-nez v5, :cond_1

    .line 44
    .line 45
    array-length v0, v3

    .line 46
    add-int/lit8 v5, v0, -0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    move v5, v0

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 v5, 0x0

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    return v2
.end method

.method private final A01(I)V
    .locals 6

    .line 0
    iget-object v5, p0, LX/01i;->A0B:[Ljava/lang/Object;

    .line 1
    .line 2
    array-length v2, v5

    .line 3
    iget v4, p0, LX/01i;->A01:I

    .line 4
    .line 5
    sub-int v3, v2, v4

    .line 6
    .line 7
    invoke-virtual {p0}, LX/01i;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sub-int v1, v4, v0

    .line 12
    .line 13
    if-ge v3, p1, :cond_1

    .line 14
    .line 15
    add-int/2addr v3, v1

    .line 16
    if-lt v3, p1, :cond_1

    .line 17
    .line 18
    div-int/lit8 v0, v2, 0x4

    .line 19
    .line 20
    if-lt v1, v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, LX/01i;->A09:[I

    .line 23
    .line 24
    array-length v1, v0

    .line 25
    :goto_0
    invoke-direct {p0, v1}, LX/01i;->A02(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void

    .line 29
    :cond_1
    add-int/2addr v4, p1

    .line 30
    if-ltz v4, :cond_6

    .line 31
    .line 32
    if-le v4, v2, :cond_0

    .line 33
    .line 34
    shr-int/lit8 v0, v2, 0x1

    .line 35
    .line 36
    add-int/2addr v2, v0

    .line 37
    sub-int v0, v2, v4

    .line 38
    .line 39
    if-gez v0, :cond_2

    .line 40
    .line 41
    move v2, v4

    .line 42
    :cond_2
    const v1, 0x7ffffff7

    .line 43
    .line 44
    .line 45
    sub-int v0, v2, v1

    .line 46
    .line 47
    if-lez v0, :cond_3

    .line 48
    .line 49
    const v2, 0x7ffffff7

    .line 50
    .line 51
    .line 52
    if-le v4, v1, :cond_3

    .line 53
    .line 54
    const v2, 0x7fffffff

    .line 55
    .line 56
    .line 57
    :cond_3
    invoke-static {v5, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, LX/08H;->A01(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    iput-object v0, p0, LX/01i;->A0B:[Ljava/lang/Object;

    .line 65
    .line 66
    iget-object v0, p0, LX/01i;->A0C:[Ljava/lang/Object;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, LX/08H;->A01(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    iput-object v0, p0, LX/01i;->A0C:[Ljava/lang/Object;

    .line 78
    .line 79
    iget-object v0, p0, LX/01i;->A0A:[I

    .line 80
    .line 81
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, LX/08H;->A01(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    iput-object v0, p0, LX/01i;->A0A:[I

    .line 89
    .line 90
    const/4 v0, 0x1

    .line 91
    if-ge v2, v0, :cond_4

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    :cond_4
    mul-int/lit8 v0, v2, 0x3

    .line 95
    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    iget-object v0, p0, LX/01i;->A09:[I

    .line 101
    .line 102
    array-length v0, v0

    .line 103
    if-le v1, v0, :cond_0

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_5
    const/4 v0, 0x0

    .line 107
    goto :goto_1

    .line 108
    :cond_6
    new-instance v0, Ljava/lang/OutOfMemoryError;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    .line 111
    .line 112
    .line 113
    throw v0
.end method

.method private final A02(I)V
    .locals 7

    .line 0
    iget v0, p0, LX/01i;->A03:I

    .line 1
    .line 2
    add-int/lit8 v0, v0, 0x1

    .line 3
    .line 4
    iput v0, p0, LX/01i;->A03:I

    .line 5
    .line 6
    iget v6, p0, LX/01i;->A01:I

    .line 7
    .line 8
    invoke-virtual {p0}, LX/01i;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-le v6, v0, :cond_5

    .line 13
    .line 14
    iget-object v5, p0, LX/01i;->A0C:[Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    :goto_0
    if-ge v2, v6, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, LX/01i;->A0A:[I

    .line 21
    .line 22
    aget v0, v0, v2

    .line 23
    .line 24
    if-ltz v0, :cond_1

    .line 25
    .line 26
    iget-object v1, p0, LX/01i;->A0B:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v0, v1, v2

    .line 29
    .line 30
    aput-object v0, v1, v4

    .line 31
    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    aget-object v0, v5, v2

    .line 35
    .line 36
    aput-object v0, v5, v4

    .line 37
    .line 38
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 39
    .line 40
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v3, p0, LX/01i;->A0B:[Ljava/lang/Object;

    .line 44
    .line 45
    move v2, v4

    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v3, v1}, LX/08H;->A04(Ljava/lang/Object;I)V

    .line 48
    .line 49
    .line 50
    :goto_1
    if-ge v2, v6, :cond_3

    .line 51
    .line 52
    invoke-static {v3, v1}, LX/08H;->A04(Ljava/lang/Object;I)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    aput-object v0, v3, v2

    .line 57
    .line 58
    add-int/lit8 v2, v2, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    if-eqz v5, :cond_4

    .line 62
    .line 63
    iget v2, p0, LX/01i;->A01:I

    .line 64
    .line 65
    move v1, v4

    .line 66
    :goto_2
    if-ge v1, v2, :cond_4

    .line 67
    .line 68
    const/4 v0, 0x0

    .line 69
    aput-object v0, v5, v1

    .line 70
    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_4
    iput v4, p0, LX/01i;->A01:I

    .line 75
    .line 76
    :cond_5
    iget-object v1, p0, LX/01i;->A09:[I

    .line 77
    .line 78
    array-length v0, v1

    .line 79
    const/4 v6, 0x0

    .line 80
    if-eq p1, v0, :cond_a

    .line 81
    .line 82
    new-array v0, p1, [I

    .line 83
    .line 84
    iput-object v0, p0, LX/01i;->A09:[I

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    iput v0, p0, LX/01i;->A00:I

    .line 93
    .line 94
    :goto_3
    iget v0, p0, LX/01i;->A01:I

    .line 95
    .line 96
    if-ge v6, v0, :cond_b

    .line 97
    .line 98
    add-int/lit8 v5, v6, 0x1

    .line 99
    .line 100
    iget-object v0, p0, LX/01i;->A0B:[Ljava/lang/Object;

    .line 101
    .line 102
    aget-object v0, v0, v6

    .line 103
    .line 104
    if-eqz v0, :cond_9

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    :goto_4
    const v0, -0x61c88647

    .line 111
    .line 112
    .line 113
    mul-int/2addr v4, v0

    .line 114
    iget v0, p0, LX/01i;->A00:I

    .line 115
    .line 116
    ushr-int/2addr v4, v0

    .line 117
    iget v3, p0, LX/01i;->A02:I

    .line 118
    .line 119
    :goto_5
    iget-object v2, p0, LX/01i;->A09:[I

    .line 120
    .line 121
    aget v0, v2, v4

    .line 122
    .line 123
    const/4 v1, 0x1

    .line 124
    if-nez v0, :cond_6

    .line 125
    .line 126
    add-int/lit8 v0, v6, 0x1

    .line 127
    .line 128
    aput v0, v2, v4

    .line 129
    .line 130
    iget-object v0, p0, LX/01i;->A0A:[I

    .line 131
    .line 132
    aput v4, v0, v6

    .line 133
    .line 134
    move v6, v5

    .line 135
    goto :goto_3

    .line 136
    :cond_6
    add-int/lit8 v3, v3, -0x1

    .line 137
    .line 138
    if-gez v3, :cond_7

    .line 139
    .line 140
    const-string v1, "This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?"

    .line 141
    .line 142
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 143
    .line 144
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    throw v0

    .line 148
    :cond_7
    add-int/lit8 v0, v4, -0x1

    .line 149
    .line 150
    if-nez v4, :cond_8

    .line 151
    .line 152
    array-length v4, v2

    .line 153
    sub-int/2addr v4, v1

    .line 154
    goto :goto_5

    .line 155
    :cond_8
    move v4, v0

    .line 156
    goto :goto_5

    .line 157
    :cond_9
    const/4 v4, 0x0

    .line 158
    goto :goto_4

    .line 159
    :cond_a
    invoke-static {v1, v6, v0, v6}, Ljava/util/Arrays;->fill([IIII)V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_b
    return-void
.end method

.method public static final A03(LX/01i;I)V
    .locals 14

    .line 0
    iget-object v1, p0, LX/01i;->A0B:[Ljava/lang/Object;

    .line 1
    .line 2
    const/4 v9, 0x0

    .line 3
    invoke-static {v1, v9}, LX/08H;->A04(Ljava/lang/Object;I)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    aput-object v0, v1, p1

    .line 8
    .line 9
    iget-object v8, p0, LX/01i;->A0A:[I

    .line 10
    .line 11
    aget v13, v8, p1

    .line 12
    .line 13
    iget v7, p0, LX/01i;->A02:I

    .line 14
    .line 15
    mul-int/lit8 v6, v7, 0x2

    .line 16
    .line 17
    iget-object v5, p0, LX/01i;->A09:[I

    .line 18
    .line 19
    array-length v4, v5

    .line 20
    div-int/lit8 v0, v4, 0x2

    .line 21
    .line 22
    if-le v6, v0, :cond_0

    .line 23
    .line 24
    move v6, v0

    .line 25
    :cond_0
    const/4 v3, 0x0

    .line 26
    move v12, v13

    .line 27
    :cond_1
    add-int/lit8 v1, v13, -0x1

    .line 28
    .line 29
    move v0, v13

    .line 30
    move v13, v1

    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    add-int/lit8 v13, v4, -0x1

    .line 34
    .line 35
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    if-gt v3, v7, :cond_6

    .line 38
    .line 39
    aget v11, v5, v13

    .line 40
    .line 41
    if-eqz v11, :cond_6

    .line 42
    .line 43
    const/4 v10, -0x1

    .line 44
    if-gez v11, :cond_4

    .line 45
    .line 46
    aput v10, v5, v12

    .line 47
    .line 48
    :goto_0
    move v12, v13

    .line 49
    const/4 v3, 0x0

    .line 50
    :cond_3
    add-int/lit8 v6, v6, -0x1

    .line 51
    .line 52
    if-gez v6, :cond_1

    .line 53
    .line 54
    aput v10, v5, v12

    .line 55
    .line 56
    :goto_1
    const/4 v0, -0x1

    .line 57
    aput v0, v8, p1

    .line 58
    .line 59
    invoke-virtual {p0}, LX/01i;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    add-int/lit8 v0, v0, -0x1

    .line 64
    .line 65
    iput v0, p0, LX/01i;->A04:I

    .line 66
    .line 67
    iget v0, p0, LX/01i;->A03:I

    .line 68
    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    iput v0, p0, LX/01i;->A03:I

    .line 72
    .line 73
    return-void

    .line 74
    :cond_4
    iget-object v0, p0, LX/01i;->A0B:[Ljava/lang/Object;

    .line 75
    .line 76
    add-int/lit8 v2, v11, -0x1

    .line 77
    .line 78
    aget-object v0, v0, v2

    .line 79
    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :goto_2
    const v0, -0x61c88647

    .line 87
    .line 88
    .line 89
    mul-int/2addr v1, v0

    .line 90
    iget v0, p0, LX/01i;->A00:I

    .line 91
    .line 92
    ushr-int/2addr v1, v0

    .line 93
    sub-int/2addr v1, v13

    .line 94
    add-int/lit8 v0, v4, -0x1

    .line 95
    .line 96
    and-int/2addr v1, v0

    .line 97
    if-lt v1, v3, :cond_3

    .line 98
    .line 99
    aput v11, v5, v12

    .line 100
    .line 101
    aput v12, v8, v2

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    const/4 v1, 0x0

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    aput v9, v5, v12

    .line 107
    .line 108
    goto :goto_1
.end method


# virtual methods
.method public final A04(Ljava/lang/Object;)I
    .locals 10

    .line 0
    invoke-virtual {p0}, LX/01i;->A05()V

    .line 1
    .line 2
    .line 3
    :goto_0
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v9

    .line 9
    :goto_1
    const v0, -0x61c88647

    .line 10
    .line 11
    .line 12
    mul-int/2addr v9, v0

    .line 13
    iget v0, p0, LX/01i;->A00:I

    .line 14
    .line 15
    ushr-int/2addr v9, v0

    .line 16
    iget v3, p0, LX/01i;->A02:I

    .line 17
    .line 18
    mul-int/lit8 v8, v3, 0x2

    .line 19
    .line 20
    iget-object v6, p0, LX/01i;->A09:[I

    .line 21
    .line 22
    array-length v5, v6

    .line 23
    div-int/lit8 v0, v5, 0x2

    .line 24
    .line 25
    if-le v8, v0, :cond_0

    .line 26
    .line 27
    move v8, v0

    .line 28
    :cond_0
    const/4 v2, 0x0

    .line 29
    :cond_1
    :goto_2
    aget v4, v6, v9

    .line 30
    .line 31
    const/4 v7, 0x1

    .line 32
    if-gtz v4, :cond_2

    .line 33
    .line 34
    iget v5, p0, LX/01i;->A01:I

    .line 35
    .line 36
    iget-object v4, p0, LX/01i;->A0B:[Ljava/lang/Object;

    .line 37
    .line 38
    array-length v0, v4

    .line 39
    if-lt v5, v0, :cond_6

    .line 40
    .line 41
    invoke-direct {p0, v7}, LX/01i;->A01(I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v1, p0, LX/01i;->A0B:[Ljava/lang/Object;

    .line 46
    .line 47
    add-int/lit8 v0, v4, -0x1

    .line 48
    .line 49
    aget-object v0, v1, v0

    .line 50
    .line 51
    invoke-static {v0, p1}, LX/08H;->A09(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    neg-int v0, v4

    .line 58
    return v0

    .line 59
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    if-le v2, v8, :cond_4

    .line 62
    .line 63
    mul-int/lit8 v0, v5, 0x2

    .line 64
    .line 65
    invoke-direct {p0, v0}, LX/01i;->A02(I)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    add-int/lit8 v1, v9, -0x1

    .line 70
    .line 71
    move v0, v9

    .line 72
    move v9, v1

    .line 73
    if-nez v0, :cond_1

    .line 74
    .line 75
    sub-int v9, v5, v7

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_5
    const/4 v9, 0x0

    .line 79
    goto :goto_1

    .line 80
    :cond_6
    add-int/lit8 v1, v5, 0x1

    .line 81
    .line 82
    iput v1, p0, LX/01i;->A01:I

    .line 83
    .line 84
    aput-object p1, v4, v5

    .line 85
    .line 86
    iget-object v0, p0, LX/01i;->A0A:[I

    .line 87
    .line 88
    aput v9, v0, v5

    .line 89
    .line 90
    aput v1, v6, v9

    .line 91
    .line 92
    invoke-virtual {p0}, LX/01i;->size()I

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    add-int/lit8 v0, v0, 0x1

    .line 97
    .line 98
    iput v0, p0, LX/01i;->A04:I

    .line 99
    .line 100
    iget v0, p0, LX/01i;->A03:I

    .line 101
    .line 102
    add-int/lit8 v0, v0, 0x1

    .line 103
    .line 104
    iput v0, p0, LX/01i;->A03:I

    .line 105
    .line 106
    if-le v2, v3, :cond_7

    .line 107
    .line 108
    iput v2, p0, LX/01i;->A02:I

    .line 109
    .line 110
    :cond_7
    return v5
.end method

.method public final A05()V
    .locals 1

    .line 0
    iget-boolean v0, p0, LX/01i;->A08:Z

    .line 1
    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 8
    .line 9
    .line 10
    throw v0
.end method

.method public final A06(Ljava/util/Collection;)Z
    .locals 5

    .line 0
    const/4 v4, 0x0

    .line 1
    invoke-static {p1, v4}, LX/08H;->A04(Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    :try_start_0
    check-cast v2, Ljava/util/Map$Entry;

    .line 21
    .line 22
    invoke-static {v2, v4}, LX/08H;->A04(Ljava/lang/Object;I)V

    .line 23
    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, p0}, LX/01i;->A00(Ljava/lang/Object;LX/01i;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ltz v1, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, LX/01i;->A0C:[Ljava/lang/Object;

    .line 36
    .line 37
    invoke-static {v0}, LX/08H;->A03(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    aget-object v1, v0, v1

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {v1, v0}, LX/08H;->A09(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    :catch_0
    :cond_1
    return v4

    .line 53
    :cond_2
    const/4 v0, 0x1

    .line 54
    return v0
.end method

.method public final clear()V
    .locals 6

    .line 0
    invoke-virtual {p0}, LX/01i;->A05()V

    .line 1
    .line 2
    .line 3
    iget v0, p0, LX/01i;->A01:I

    .line 4
    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    new-instance v0, LX/01E;

    .line 9
    .line 10
    invoke-direct {v0, v4, v1}, LX/01E;-><init>(II)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, LX/01D;->A00()LX/01L;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    :cond_0
    :goto_0
    invoke-virtual {v5}, LX/01L;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v5}, LX/01L;->A00()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    iget-object v2, p0, LX/01i;->A0A:[I

    .line 28
    .line 29
    aget v1, v2, v3

    .line 30
    .line 31
    if-ltz v1, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, LX/01i;->A09:[I

    .line 34
    .line 35
    aput v4, v0, v1

    .line 36
    .line 37
    const/4 v0, -0x1

    .line 38
    aput v0, v2, v3

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v3, p0, LX/01i;->A0B:[Ljava/lang/Object;

    .line 42
    .line 43
    iget v2, p0, LX/01i;->A01:I

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-static {v3, v4}, LX/08H;->A04(Ljava/lang/Object;I)V

    .line 47
    .line 48
    .line 49
    :goto_1
    if-ge v1, v2, :cond_2

    .line 50
    .line 51
    invoke-static {v3, v4}, LX/08H;->A04(Ljava/lang/Object;I)V

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    aput-object v0, v3, v1

    .line 56
    .line 57
    add-int/lit8 v1, v1, 0x1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object v3, p0, LX/01i;->A0C:[Ljava/lang/Object;

    .line 61
    .line 62
    if-eqz v3, :cond_3

    .line 63
    .line 64
    iget v2, p0, LX/01i;->A01:I

    .line 65
    .line 66
    const/4 v1, 0x0

    .line 67
    :goto_2
    if-ge v1, v2, :cond_3

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    aput-object v0, v3, v1

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    iput v4, p0, LX/01i;->A04:I

    .line 76
    .line 77
    iput v4, p0, LX/01i;->A01:I

    .line 78
    .line 79
    iget v0, p0, LX/01i;->A03:I

    .line 80
    .line 81
    add-int/lit8 v0, v0, 0x1

    .line 82
    .line 83
    iput v0, p0, LX/01i;->A03:I

    .line 84
    .line 85
    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    invoke-static {p1, p0}, LX/01i;->A00(Ljava/lang/Object;LX/01i;)I

    .line 1
    .line 2
    .line 3
    move-result v1

    .line 4
    const/4 v0, 0x0

    .line 5
    if-ltz v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :cond_0
    return v0
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    iget v1, p0, LX/01i;->A01:I

    .line 1
    .line 2
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 3
    .line 4
    if-ltz v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, LX/01i;->A0A:[I

    .line 7
    .line 8
    aget v0, v0, v1

    .line 9
    .line 10
    if-ltz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, LX/01i;->A0C:[Ljava/lang/Object;

    .line 13
    .line 14
    invoke-static {v0}, LX/08H;->A03(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    aget-object v0, v0, v1

    .line 18
    .line 19
    invoke-static {v0, p1}, LX/08H;->A09(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    return v0
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1

    .line 0
    iget-object v0, p0, LX/01i;->A05:LX/04u;

    .line 1
    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    new-instance v0, LX/04u;

    .line 5
    .line 6
    invoke-direct {v0, p0}, LX/04u;-><init>(LX/01i;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LX/01i;->A05:LX/04u;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 0
    if-eq p1, p0, :cond_0

    .line 1
    .line 2
    instance-of v0, p1, Ljava/util/Map;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    check-cast p1, Ljava/util/Map;

    .line 7
    .line 8
    invoke-virtual {p0}, LX/01i;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v1, v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, LX/01i;->A06(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    return v0

    .line 30
    :cond_1
    const/4 v0, 0x0

    .line 31
    return v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    invoke-static {p1, p0}, LX/01i;->A00(Ljava/lang/Object;LX/01i;)I

    .line 1
    .line 2
    .line 3
    move-result v1

    .line 4
    if-gez v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, LX/01i;->A0C:[Ljava/lang/Object;

    .line 9
    .line 10
    invoke-static {v0}, LX/08H;->A03(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    aget-object v0, v0, v1

    .line 14
    .line 15
    return-object v0
.end method

.method public final hashCode()I
    .locals 6

    .line 0
    new-instance v5, LX/079;

    .line 1
    .line 2
    invoke-direct {v5, p0}, LX/079;-><init>(LX/01i;)V

    .line 3
    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    :goto_0
    invoke-virtual {v5}, LX/09C;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    iget v2, v5, LX/09C;->A00:I

    .line 13
    .line 14
    iget-object v1, v5, LX/09C;->A03:LX/01i;

    .line 15
    .line 16
    iget v0, v1, LX/01i;->A01:I

    .line 17
    .line 18
    if-ge v2, v0, :cond_2

    .line 19
    .line 20
    add-int/lit8 v0, v2, 0x1

    .line 21
    .line 22
    iput v0, v5, LX/09C;->A00:I

    .line 23
    .line 24
    iput v2, v5, LX/09C;->A01:I

    .line 25
    .line 26
    iget-object v0, v1, LX/01i;->A0B:[Ljava/lang/Object;

    .line 27
    .line 28
    aget-object v0, v0, v2

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_1
    iget-object v1, v1, LX/01i;->A0C:[Ljava/lang/Object;

    .line 38
    .line 39
    invoke-static {v1}, LX/08H;->A03(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget v0, v5, LX/09C;->A01:I

    .line 43
    .line 44
    aget-object v0, v1, v0

    .line 45
    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    :cond_0
    xor-int/2addr v2, v3

    .line 53
    invoke-virtual {v5}, LX/09C;->A01()V

    .line 54
    .line 55
    .line 56
    add-int/2addr v4, v2

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 v2, 0x0

    .line 59
    goto :goto_1

    .line 60
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 63
    .line 64
    .line 65
    throw v0

    .line 66
    :cond_3
    return v4
.end method

.method public final isEmpty()Z
    .locals 2

    .line 0
    invoke-virtual {p0}, LX/01i;->size()I

    .line 1
    .line 2
    .line 3
    move-result v1

    .line 4
    const/4 v0, 0x0

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :cond_0
    return v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1

    .line 0
    iget-object v0, p0, LX/01i;->A06:LX/04v;

    .line 1
    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    new-instance v0, LX/04v;

    .line 5
    .line 6
    invoke-direct {v0, p0}, LX/04v;-><init>(LX/01i;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LX/01i;->A06:LX/04v;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    invoke-virtual {p0}, LX/01i;->A05()V

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0, p1}, LX/01i;->A04(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    iget-object v0, p0, LX/01i;->A0C:[Ljava/lang/Object;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, LX/01i;->A0B:[Ljava/lang/Object;

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    .line 16
    iput-object v0, p0, LX/01i;->A0C:[Ljava/lang/Object;

    .line 17
    .line 18
    :cond_0
    if-gez v1, :cond_1

    .line 19
    .line 20
    neg-int v1, v1

    .line 21
    add-int/lit8 v2, v1, -0x1

    .line 22
    .line 23
    aget-object v1, v0, v2

    .line 24
    .line 25
    aput-object p2, v0, v2

    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    aput-object p2, v0, v1

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    return-object v1
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 6

    .line 0
    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, LX/08H;->A04(Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, LX/01i;->A05()V

    .line 5
    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_3

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-direct {p0, v0}, LX/01i;->A01(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 33
    .line 34
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    check-cast v4, Ljava/util/Map$Entry;

    .line 39
    .line 40
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, LX/01i;->A04(Ljava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iget-object v0, p0, LX/01i;->A0C:[Ljava/lang/Object;

    .line 49
    .line 50
    if-nez v0, :cond_1

    .line 51
    .line 52
    iget-object v0, p0, LX/01i;->A0B:[Ljava/lang/Object;

    .line 53
    .line 54
    array-length v0, v0

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    .line 56
    .line 57
    iput-object v0, p0, LX/01i;->A0C:[Ljava/lang/Object;

    .line 58
    .line 59
    :cond_1
    const/4 v1, 0x1

    .line 60
    if-gez v3, :cond_2

    .line 61
    .line 62
    neg-int v3, v3

    .line 63
    sub-int/2addr v3, v1

    .line 64
    aget-object v2, v0, v3

    .line 65
    .line 66
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v1, v2}, LX/08H;->A09(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_0

    .line 75
    .line 76
    :cond_2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    aput-object v1, v0, v3

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 0
    invoke-virtual {p0}, LX/01i;->A05()V

    .line 1
    .line 2
    .line 3
    invoke-static {p1, p0}, LX/01i;->A00(Ljava/lang/Object;LX/01i;)I

    .line 4
    .line 5
    .line 6
    move-result v3

    .line 7
    if-gez v3, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    return-object v2

    .line 11
    :cond_0
    invoke-static {p0, v3}, LX/01i;->A03(LX/01i;I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, LX/01i;->A0C:[Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {v1}, LX/08H;->A03(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    aget-object v2, v1, v3

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    aput-object v0, v1, v3

    .line 23
    .line 24
    return-object v2
.end method

.method public final bridge size()I
    .locals 1

    .line 0
    iget v0, p0, LX/01i;->A04:I

    .line 1
    .line 2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    .line 0
    invoke-virtual {p0}, LX/01i;->size()I

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    mul-int/lit8 v0, v0, 0x3

    .line 5
    .line 6
    add-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const-string v0, "{"

    .line 14
    .line 15
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    new-instance v5, LX/079;

    .line 19
    .line 20
    invoke-direct {v5, p0}, LX/079;-><init>(LX/01i;)V

    .line 21
    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    :goto_0
    invoke-virtual {v5}, LX/09C;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    if-lez v6, :cond_0

    .line 31
    .line 32
    const-string v0, ", "

    .line 33
    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_0
    iget v1, v5, LX/09C;->A00:I

    .line 38
    .line 39
    iget-object v3, v5, LX/09C;->A03:LX/01i;

    .line 40
    .line 41
    iget v0, v3, LX/01i;->A01:I

    .line 42
    .line 43
    if-ge v1, v0, :cond_3

    .line 44
    .line 45
    add-int/lit8 v0, v1, 0x1

    .line 46
    .line 47
    iput v0, v5, LX/09C;->A00:I

    .line 48
    .line 49
    iput v1, v5, LX/09C;->A01:I

    .line 50
    .line 51
    iget-object v0, v3, LX/01i;->A0B:[Ljava/lang/Object;

    .line 52
    .line 53
    aget-object v0, v0, v1

    .line 54
    .line 55
    const-string v2, "(this Map)"

    .line 56
    .line 57
    if-ne v0, v3, :cond_2

    .line 58
    .line 59
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    :goto_1
    const/16 v0, 0x3d

    .line 63
    .line 64
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v1, v3, LX/01i;->A0C:[Ljava/lang/Object;

    .line 68
    .line 69
    invoke-static {v1}, LX/08H;->A03(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget v0, v5, LX/09C;->A01:I

    .line 73
    .line 74
    aget-object v0, v1, v0

    .line 75
    .line 76
    if-ne v0, v3, :cond_1

    .line 77
    .line 78
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    :goto_2
    invoke-virtual {v5}, LX/09C;->A01()V

    .line 82
    .line 83
    .line 84
    add-int/lit8 v6, v6, 0x1

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_4
    const-string v0, "}"

    .line 102
    .line 103
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, LX/08H;->A01(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    return-object v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1

    .line 0
    iget-object v0, p0, LX/01i;->A07:LX/04y;

    .line 1
    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    new-instance v0, LX/04y;

    .line 5
    .line 6
    invoke-direct {v0, p0}, LX/04y;-><init>(LX/01i;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LX/01i;->A07:LX/04y;

    .line 10
    .line 11
    :cond_0
    return-object v0
.end method
