.class public Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final buildId:[B

.field public final fileOffset:J

.field public final mappingSize:J

.field public final name:Ljava/lang/String;

.field public final startAddress:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BJJJ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;->name:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;->buildId:[B

    .line 6
    .line 7
    iput-wide p3, p0, Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;->startAddress:J

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;->mappingSize:J

    .line 10
    .line 11
    iput-wide p7, p0, Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;->fileOffset:J

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic access$000(Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;->name:Ljava/lang/String;

    .line 1
    .line 2
    return-object p0
.end method

.method public static synthetic access$100(Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;)[B
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;->buildId:[B

    .line 1
    .line 2
    return-object p0
.end method

.method public static synthetic access$200(Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;)J
    .locals 1

    .line 0
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;->startAddress:J

    .line 1
    .line 2
    return-wide v0
.end method

.method public static synthetic access$300(Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;)J
    .locals 1

    .line 0
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;->mappingSize:J

    .line 1
    .line 2
    return-wide v0
.end method

.method public static synthetic access$400(Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;)J
    .locals 1

    .line 0
    iget-wide v0, p0, Lcom/facebook/superpack/SuperpackFileLoader$MappingInfo;->fileOffset:J

    .line 1
    .line 2
    return-wide v0
.end method
