.class public final LX/053;
.super LX/05D;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 0
    const-string v2, "lib-assets"

    .line 1
    .line 2
    invoke-static {p1}, LX/000;->A01(Landroid/content/Context;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v0, "^assets/lib/([^/]+)/([^/]+\\.so)$"

    .line 7
    .line 8
    invoke-direct {p0, p1, v1, v2, v0}, LX/05D;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 268435456
    invoke-direct {p0, p1, p2, p3, p4}, LX/05D;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V

    .line 268435457
    .line 268435458
    .line 268435459
    return-void
.end method


# virtual methods
.method public final A05()Ljava/lang/String;
    .locals 1

    const-string v0, "PlainAssetSoSource"

    return-object v0
.end method

.method public final A09()[B
    .locals 2

    .line 0
    iget-object v1, p0, LX/05D;->A00:Ljava/io/File;

    .line 1
    .line 2
    iget-object v0, p0, LX/05T;->A01:Landroid/content/Context;

    .line 3
    .line 4
    invoke-static {v0, v1}, LX/0BF;->A0A(Landroid/content/Context;Ljava/io/File;)[B

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method
