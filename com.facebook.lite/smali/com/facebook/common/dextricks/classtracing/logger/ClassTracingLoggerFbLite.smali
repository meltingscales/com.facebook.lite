.class public Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLoggerFbLite;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ENCODED_CLASS_NAMES_LENGTH:I = 0x4

.field public static final ENCODED_CLASS_NAMES_TAG:I = 0x63aad298

.field public static final ENCODED_LONG_CLASS_NAMES_TAG:I = 0x24b98d7d

.field public static final sClassIds:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public static volatile sEnabled:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1
    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLoggerFbLite;->sClassIds:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    return-void
.end method

.method public static beginClassLoad(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static classLoaded(Ljava/lang/Class;)V
    .locals 1

    .line 0
    sget-boolean v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLoggerFbLite;->sEnabled:Z

    .line 1
    .line 2
    if-eqz v0, :cond_0

    .line 3
    .line 4
    invoke-static {p0}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLoggerFbLite;->logClassNameInTrace(Ljava/lang/Class;)V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public static classNotFound()V
    .locals 3

    .line 0
    sget-boolean v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLoggerFbLite;->sEnabled:Z

    .line 1
    .line 2
    if-eqz v0, :cond_0

    .line 3
    .line 4
    sget-object v2, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLoggerFbLite;->sClassIds:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public static getFauxClassId(II)J
    .locals 4

    int-to-long v3, p0

    const-wide v0, 0xffffffffL

    and-long/2addr v3, v0

    int-to-long v1, p1

    const/16 v0, 0x20

    shl-long/2addr v1, v0

    or-long/2addr v1, v3

    return-wide v1
.end method

.method public static getLoadedClassIds()[J
    .locals 6

    .line 0
    sget-object v1, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLoggerFbLite;->sClassIds:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1
    .line 2
    const/4 v5, 0x0

    .line 3
    new-array v0, v5, [Ljava/lang/Long;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    check-cast v4, [Ljava/lang/Long;

    .line 10
    .line 11
    array-length v3, v4

    .line 12
    new-array v2, v3, [J

    .line 13
    .line 14
    :goto_0
    if-ge v5, v3, :cond_0

    .line 15
    .line 16
    aget-object v0, v4, v5

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    aput-wide v0, v2, v5

    .line 23
    .line 24
    add-int/lit8 v5, v5, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-object v2
.end method

.method public static initialize()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    .line 1
    sput-boolean v0, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLoggerFbLite;->sEnabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public static logClassNameInTrace(Ljava/lang/Class;)V
    .locals 5

    .line 0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1
    .line 2
    .line 3
    move-result-object v4

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    const-string v0, "X."

    .line 21
    .line 22
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v3, 0x4

    .line 31
    if-gt v0, v3, :cond_0

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    const p0, 0x63aad298

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :goto_0
    array-length v4, v0

    .line 43
    const/4 v3, 0x0

    .line 44
    const/4 v2, 0x0

    .line 45
    :goto_1
    if-ge v3, v4, :cond_1

    .line 46
    .line 47
    aget-byte v1, v0, v3

    .line 48
    .line 49
    shl-int/lit8 v2, v2, 0x8

    .line 50
    .line 51
    and-int/lit16 v1, v1, 0xff

    .line 52
    .line 53
    add-int/2addr v2, v1

    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    :try_start_0
    const-string v0, "MD5"

    .line 58
    .line 59
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    array-length v1, v2

    .line 75
    sub-int v0, v1, v3

    .line 76
    .line 77
    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const p0, 0x24b98d7d

    .line 82
    .line 83
    .line 84
    goto :goto_0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_1
    invoke-static {p0, v2}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLoggerFbLite;->logNonClassLoad(II)V

    .line 86
    .line 87
    .line 88
    :catch_0
    :cond_2
    return-void
.end method

.method public static logNonClassLoad(II)V
    .locals 2

    .line 0
    invoke-static {p0, p1}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLoggerFbLite;->getFauxClassId(II)J

    .line 1
    .line 2
    .line 3
    move-result-wide p0

    .line 4
    sget-object v1, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLoggerFbLite;->sClassIds:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 5
    .line 6
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method
