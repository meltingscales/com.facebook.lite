.class public Lcom/facebook/xzdecoder/XzInputStream;
.super Ljava/io/InputStream;
.source ""


# instance fields
.field public clientOutPos:I

.field public inBuf:[B

.field public inFile:Ljava/io/InputStream;

.field public inPos:I

.field public inSize:I

.field public outBuf:[B

.field public outPos:I

.field public state:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    const-string v0, "fb_xzdecoder"

    .line 1
    .line 2
    invoke-static {v0}, LX/0BL;->A02(Ljava/lang/String;)Z

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/facebook/xzdecoder/XzInputStream;->initializeLibrary()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, Lcom/facebook/xzdecoder/XzInputStream;->inFile:Ljava/io/InputStream;

    .line 4
    .line 5
    const v1, 0x8000

    .line 6
    .line 7
    .line 8
    new-array v0, v1, [B

    .line 9
    .line 10
    iput-object v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->inBuf:[B

    .line 11
    .line 12
    new-array v0, v1, [B

    .line 13
    .line 14
    iput-object v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->outBuf:[B

    .line 15
    .line 16
    invoke-static {}, Lcom/facebook/xzdecoder/XzInputStream;->initializeState()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->state:J

    .line 21
    .line 22
    return-void
.end method

.method private decodeMoreBytes()V
    .locals 8

    .line 0
    iget-wide v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->state:J

    .line 1
    .line 2
    iget-object v2, p0, Lcom/facebook/xzdecoder/XzInputStream;->inBuf:[B

    .line 3
    .line 4
    iget v3, p0, Lcom/facebook/xzdecoder/XzInputStream;->inPos:I

    .line 5
    .line 6
    iget v4, p0, Lcom/facebook/xzdecoder/XzInputStream;->inSize:I

    .line 7
    .line 8
    iget-object v5, p0, Lcom/facebook/xzdecoder/XzInputStream;->outBuf:[B

    .line 9
    .line 10
    array-length v7, v5

    .line 11
    const/4 v6, 0x0

    .line 12
    invoke-static/range {v0 .. v7}, Lcom/facebook/xzdecoder/XzInputStream;->decompressStream(J[BII[BII)J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    const/16 v0, 0x20

    .line 17
    .line 18
    ushr-long v1, v3, v0

    .line 19
    .line 20
    long-to-int v0, v1

    .line 21
    iput v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->inPos:I

    .line 22
    .line 23
    long-to-int v0, v3

    .line 24
    iput v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->outPos:I

    .line 25
    .line 26
    iput v6, p0, Lcom/facebook/xzdecoder/XzInputStream;->clientOutPos:I

    .line 27
    .line 28
    return-void
.end method

.method public static native decompressStream(J[BII[BII)J
.end method

.method public static native end(J)V
.end method

.method public static native initializeLibrary()V
.end method

.method public static native initializeState()J
.end method

.method private readMoreInput()Z
    .locals 5

    .line 0
    const/4 v4, 0x0

    .line 1
    iput v4, p0, Lcom/facebook/xzdecoder/XzInputStream;->inSize:I

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    iput v4, p0, Lcom/facebook/xzdecoder/XzInputStream;->inPos:I

    .line 5
    .line 6
    :cond_0
    iget-object v3, p0, Lcom/facebook/xzdecoder/XzInputStream;->inFile:Ljava/io/InputStream;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/facebook/xzdecoder/XzInputStream;->inBuf:[B

    .line 9
    .line 10
    array-length v0, v1

    .line 11
    sub-int/2addr v0, v2

    .line 12
    invoke-virtual {v3, v1, v2, v0}, Ljava/io/InputStream;->read([BII)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v0, -0x1

    .line 17
    if-ne v1, v0, :cond_2

    .line 18
    .line 19
    iget v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->inSize:I

    .line 20
    .line 21
    if-lez v0, :cond_1

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    :cond_1
    return v4

    .line 25
    :cond_2
    iget v2, p0, Lcom/facebook/xzdecoder/XzInputStream;->inSize:I

    .line 26
    .line 27
    add-int/2addr v2, v1

    .line 28
    iput v2, p0, Lcom/facebook/xzdecoder/XzInputStream;->inSize:I

    .line 29
    .line 30
    const v1, 0x8000

    .line 31
    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    if-lt v2, v1, :cond_0

    .line 35
    .line 36
    return v0
.end method


# virtual methods
.method public close()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->inFile:Ljava/io/InputStream;

    .line 1
    .line 2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 3
    .line 4
    .line 5
    iget-wide v3, p0, Lcom/facebook/xzdecoder/XzInputStream;->state:J

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    cmp-long v0, v3, v1

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-static {v3, v4}, Lcom/facebook/xzdecoder/XzInputStream;->end(J)V

    .line 14
    .line 15
    .line 16
    iput-wide v1, p0, Lcom/facebook/xzdecoder/XzInputStream;->state:J

    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method public read()I
    .locals 5

    .line 268455901
    iget-wide v3, p0, Lcom/facebook/xzdecoder/XzInputStream;->state:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 268455902
    iget v1, p0, Lcom/facebook/xzdecoder/XzInputStream;->clientOutPos:I

    iget v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->outPos:I

    if-ne v1, v0, :cond_1

    .line 268455903
    iget v1, p0, Lcom/facebook/xzdecoder/XzInputStream;->inPos:I

    iget v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->inSize:I

    if-ne v1, v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/xzdecoder/XzInputStream;->readMoreInput()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 268455904
    :cond_0
    invoke-direct {p0}, Lcom/facebook/xzdecoder/XzInputStream;->decodeMoreBytes()V

    .line 268455905
    :cond_1
    iget-object v2, p0, Lcom/facebook/xzdecoder/XzInputStream;->outBuf:[B

    iget v1, p0, Lcom/facebook/xzdecoder/XzInputStream;->clientOutPos:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->clientOutPos:I

    aget-byte v0, v2, v1

    return v0

    .line 268455906
    :cond_2
    const-string v1, "Stream closed"

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 6

    .line 0
    const/4 v3, 0x0

    .line 1
    if-ltz p3, :cond_4

    .line 2
    .line 3
    if-ltz p2, :cond_4

    .line 4
    .line 5
    add-int v1, p2, p3

    .line 6
    .line 7
    array-length v0, p1

    .line 8
    if-gt v1, v0, :cond_4

    .line 9
    .line 10
    iget-wide v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->state:J

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v2, v0, v4

    .line 15
    .line 16
    if-eqz v2, :cond_3

    .line 17
    .line 18
    move v4, p3

    .line 19
    :goto_0
    if-ge v3, p3, :cond_1

    .line 20
    .line 21
    iget v2, p0, Lcom/facebook/xzdecoder/XzInputStream;->clientOutPos:I

    .line 22
    .line 23
    iget v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->outPos:I

    .line 24
    .line 25
    if-ge v2, v0, :cond_0

    .line 26
    .line 27
    sub-int/2addr v0, v2

    .line 28
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    iget-object v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->outBuf:[B

    .line 33
    .line 34
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    .line 36
    .line 37
    iget v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->clientOutPos:I

    .line 38
    .line 39
    add-int/2addr v0, v1

    .line 40
    iput v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->clientOutPos:I

    .line 41
    .line 42
    sub-int/2addr v4, v1

    .line 43
    add-int/2addr p2, v1

    .line 44
    add-int/2addr v3, v1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget v1, p0, Lcom/facebook/xzdecoder/XzInputStream;->inPos:I

    .line 47
    .line 48
    iget v0, p0, Lcom/facebook/xzdecoder/XzInputStream;->inSize:I

    .line 49
    .line 50
    if-ne v1, v0, :cond_2

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/facebook/xzdecoder/XzInputStream;->readMoreInput()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    if-nez v3, :cond_1

    .line 59
    .line 60
    const/4 v3, -0x1

    .line 61
    :cond_1
    return v3

    .line 62
    :cond_2
    invoke-direct {p0}, Lcom/facebook/xzdecoder/XzInputStream;->decodeMoreBytes()V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    const-string v0, "Stream closed"

    .line 67
    .line 68
    new-instance v1, Ljava/io/IOException;

    .line 69
    .line 70
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw v1

    .line 74
    :cond_4
    const/4 v0, 0x3

    .line 75
    new-array v2, v0, [Ljava/lang/Object;

    .line 76
    .line 77
    array-length v0, p1

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    aput-object v0, v2, v3

    .line 83
    .line 84
    const/4 v1, 0x1

    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    aput-object v0, v2, v1

    .line 90
    .line 91
    const/4 v1, 0x2

    .line 92
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    aput-object v0, v2, v1

    .line 97
    .line 98
    const-string v0, "buf.length = %d, off = %d, len = %d"

    .line 99
    .line 100
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    .line 105
    .line 106
    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    throw v1
.end method
