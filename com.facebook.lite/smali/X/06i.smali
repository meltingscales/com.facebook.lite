.class public abstract LX/06i;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    const/4 v0, 0x6

    .line 1
    new-array v0, v0, [C

    .line 2
    .line 3
    fill-array-data v0, :array_0

    .line 4
    .line 5
    .line 6
    sput-object v0, LX/06i;->A00:[C

    .line 7
    .line 8
    return-void

    .line 9
    nop

    .line 10
    :array_0
    .array-data 2
        0x20s
        0x9s
        0xas
        0xbs
        0xcs
        0xds
    .end array-data
.end method

.method public static A00([BI)J
    .locals 15

    .line 0
    move/from16 v10, p1

    .line 1
    .line 2
    move-object v11, p0

    .line 3
    array-length v9, p0

    .line 4
    const-wide/16 v4, 0x0

    .line 5
    .line 6
    if-lt v10, v9, :cond_1

    .line 7
    .line 8
    :cond_0
    return-wide v4

    .line 9
    :cond_1
    aget-byte v12, p0, v10

    .line 10
    .line 11
    add-int/lit8 v10, v10, 0x1

    .line 12
    .line 13
    if-ge v10, v9, :cond_2

    .line 14
    .line 15
    int-to-char v3, v12

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    sget-object v1, LX/06i;->A00:[C

    .line 18
    .line 19
    const/4 v0, 0x6

    .line 20
    if-ge v2, v0, :cond_2

    .line 21
    .line 22
    aget-char v0, v1, v2

    .line 23
    .line 24
    if-eq v0, v3, :cond_1

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/16 v0, 0x2d

    .line 30
    .line 31
    if-ne v12, v0, :cond_8

    .line 32
    .line 33
    aget-byte v12, p0, v10

    .line 34
    .line 35
    add-int/lit8 v10, v10, 0x1

    .line 36
    .line 37
    const/16 p1, 0x1

    .line 38
    .line 39
    :goto_1
    const/16 v8, 0x30

    .line 40
    .line 41
    const/16 v7, 0xa

    .line 42
    .line 43
    if-ge v10, v9, :cond_0

    .line 44
    .line 45
    int-to-long v5, v7

    .line 46
    const-wide v14, 0x7fffffffffffffffL

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    rem-long v0, v14, v5

    .line 52
    .line 53
    long-to-int v4, v0

    .line 54
    div-long/2addr v14, v5

    .line 55
    const-wide/16 v2, 0x0

    .line 56
    .line 57
    const/4 v13, 0x0

    .line 58
    :goto_2
    if-gt v10, v9, :cond_a

    .line 59
    .line 60
    int-to-char v1, v12

    .line 61
    if-gt v8, v1, :cond_a

    .line 62
    .line 63
    const/16 v0, 0x39

    .line 64
    .line 65
    if-gt v1, v0, :cond_6

    .line 66
    .line 67
    add-int/lit8 v12, v12, -0x30

    .line 68
    .line 69
    :goto_3
    int-to-byte v1, v12

    .line 70
    if-ge v1, v7, :cond_a

    .line 71
    .line 72
    if-ltz v13, :cond_3

    .line 73
    .line 74
    cmp-long v0, v2, v14

    .line 75
    .line 76
    if-gtz v0, :cond_3

    .line 77
    .line 78
    cmp-long v0, v2, v14

    .line 79
    .line 80
    if-nez v0, :cond_5

    .line 81
    .line 82
    if-le v1, v4, :cond_5

    .line 83
    .line 84
    :cond_3
    const/4 v13, -0x1

    .line 85
    :goto_4
    if-ge v10, v9, :cond_4

    .line 86
    .line 87
    aget-byte v12, v11, v10

    .line 88
    .line 89
    :goto_5
    add-int/lit8 v10, v10, 0x1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    const/4 v12, 0x0

    .line 93
    goto :goto_5

    .line 94
    :cond_5
    mul-long/2addr v2, v5

    .line 95
    int-to-long v0, v1

    .line 96
    add-long/2addr v2, v0

    .line 97
    const/4 v13, 0x1

    .line 98
    goto :goto_4

    .line 99
    :cond_6
    const/16 v0, 0x61

    .line 100
    .line 101
    if-gt v0, v1, :cond_7

    .line 102
    .line 103
    const/16 v0, 0x7a

    .line 104
    .line 105
    if-gt v1, v0, :cond_a

    .line 106
    .line 107
    const/16 v0, 0x57

    .line 108
    .line 109
    :goto_6
    sub-int/2addr v12, v0

    .line 110
    goto :goto_3

    .line 111
    :cond_7
    const/16 v0, 0x41

    .line 112
    .line 113
    if-gt v0, v1, :cond_a

    .line 114
    .line 115
    const/16 v0, 0x5a

    .line 116
    .line 117
    if-gt v1, v0, :cond_a

    .line 118
    .line 119
    const/16 v0, 0x37

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_8
    const/16 v0, 0x2b

    .line 123
    .line 124
    if-ne v12, v0, :cond_9

    .line 125
    .line 126
    aget-byte v12, p0, v10

    .line 127
    .line 128
    add-int/lit8 v10, v10, 0x1

    .line 129
    .line 130
    :cond_9
    const/16 p1, 0x0

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_a
    if-gez v13, :cond_c

    .line 134
    .line 135
    if-eqz p1, :cond_d

    .line 136
    .line 137
    const-wide/high16 v2, -0x8000000000000000L

    .line 138
    .line 139
    :cond_b
    return-wide v2

    .line 140
    :cond_c
    if-eqz p1, :cond_b

    .line 141
    .line 142
    neg-long v2, v2

    .line 143
    return-wide v2

    .line 144
    :cond_d
    const-wide v2, 0x7fffffffffffffffL

    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    return-wide v2
.end method
