.class public LX/05D;
.super LX/05T;
.source ""


# instance fields
.field public final A00:Ljava/io/File;

.field public final A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, LX/05T;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 1
    .line 2
    .line 3
    iput-object p3, p0, LX/05D;->A00:Ljava/io/File;

    .line 4
    .line 5
    iput-object p4, p0, LX/05D;->A01:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 268435456
    invoke-direct {p0, p1, p3}, LX/05T;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 268435457
    .line 268435458
    .line 268435459
    iput-object p2, p0, LX/05D;->A00:Ljava/io/File;

    .line 268435460
    .line 268435461
    iput-object p4, p0, LX/05D;->A01:Ljava/lang/String;

    .line 268435462
    .line 268435463
    return-void
.end method


# virtual methods
.method public A05()Ljava/lang/String;
    .locals 1

    const-string v0, "ExtractFromZipSoSource"

    return-object v0
.end method

.method public final A08()LX/0BK;
    .locals 1

    .line 0
    new-instance v0, LX/08Q;

    .line 1
    .line 2
    invoke-direct {v0, p0, p0}, LX/08Q;-><init>(LX/05D;LX/05T;)V

    .line 3
    .line 4
    .line 5
    return-object v0
.end method
