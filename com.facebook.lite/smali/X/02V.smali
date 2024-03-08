.class public LX/02V;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:[Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 268435456
    const-wide/16 v2, 0x0

    .line 268435457
    .line 268435458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268435459
    .line 268435460
    .line 268435461
    const/4 v0, 0x1

    .line 268435462
    new-array v4, v0, [Ljavax/net/ssl/X509TrustManager;

    .line 268435463
    .line 268435464
    iput-object v4, p0, LX/02V;->A00:[Ljavax/net/ssl/X509TrustManager;

    .line 268435465
    .line 268435466
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 268435467
    .line 268435468
    const/16 v0, 0x18

    .line 268435469
    .line 268435470
    if-lt v1, v0, :cond_0

    .line 268435471
    .line 268435472
    new-instance v1, LX/02Y;

    .line 268435473
    .line 268435474
    invoke-direct {v1}, LX/02Y;-><init>()V

    .line 268435475
    .line 268435476
    .line 268435477
    :goto_0
    const/4 v0, 0x0

    .line 268435478
    aput-object v1, v4, v0

    .line 268435479
    .line 268435480
    return-void

    .line 268435481
    :cond_0
    new-instance v1, LX/04O;

    .line 268435482
    .line 268435483
    invoke-direct {v1, v2, v3}, LX/04O;-><init>(J)V

    .line 268435484
    .line 268435485
    .line 268435486
    goto :goto_0
.end method

.method public constructor <init>(J)V
    .locals 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v2, v0, [Ljavax/net/ssl/X509TrustManager;

    .line 5
    .line 6
    iput-object v2, p0, LX/02V;->A00:[Ljavax/net/ssl/X509TrustManager;

    .line 7
    .line 8
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    .line 10
    const/16 v0, 0x11

    .line 11
    .line 12
    if-lt v1, v0, :cond_0

    .line 13
    .line 14
    new-instance v1, LX/04P;

    .line 15
    .line 16
    invoke-direct {v1, p1, p2}, LX/04P;-><init>(J)V

    .line 17
    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    aput-object v1, v2, v0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v1, LX/04O;

    .line 24
    .line 25
    invoke-direct {v1, p1, p2}, LX/04O;-><init>(J)V

    .line 26
    .line 27
    .line 28
    goto :goto_0
.end method
