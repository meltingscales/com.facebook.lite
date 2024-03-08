.class public final LX/02Y;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source ""

# interfaces
.implements LX/02X;


# instance fields
.field public final A00:LX/04P;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 0
    const-wide/16 v3, 0x0

    .line 1
    .line 2
    const-class v2, LX/02Z;

    .line 3
    .line 4
    monitor-enter v2

    .line 5
    :try_start_0
    sget-object v1, LX/02Z;->A02:LX/02Z;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    new-instance v1, LX/02Z;

    .line 10
    .line 11
    invoke-direct {v1}, LX/02Z;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v1, LX/02Z;->A02:LX/02Z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    :cond_0
    monitor-exit v2

    .line 17
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance v0, LX/04P;

    .line 21
    .line 22
    invoke-direct {v0, v1, v3, v4}, LX/04P;-><init>(LX/02Z;J)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, LX/02Y;->A00:LX/04P;

    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    monitor-exit v2

    .line 30
    throw v0
.end method


# virtual methods
.method public final A3h(Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V
    .locals 2

    .line 0
    const-string v1, "ECDHE_ECDSA"

    .line 1
    .line 2
    iget-object v0, p0, LX/02Y;->A00:LX/04P;

    .line 3
    .line 4
    invoke-virtual {v0, v1, p2, p3}, LX/04P;->A3h(Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final A3i(Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/X509Certificate;Z)V
    .locals 2

    .line 0
    const-string v1, "ECDHE_ECDSA"

    .line 1
    .line 2
    iget-object v0, p0, LX/02Y;->A00:LX/04P;

    .line 3
    .line 4
    invoke-virtual {v0, v1, p2, p3, p4}, LX/04P;->A3i(Ljava/lang/String;Ljava/lang/String;[Ljava/security/cert/X509Certificate;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 2

    .line 0
    const-string v1, "Client certificates not supported!"

    .line 1
    .line 2
    new-instance v0, Ljava/security/cert/CertificateException;

    .line 3
    .line 4
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    throw v0
.end method

.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 2

    .line 268435456
    const-string v1, "Client certificates not supported!"

    .line 268435457
    .line 268435458
    new-instance v0, Ljava/security/cert/CertificateException;

    .line 268435459
    .line 268435460
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 268435461
    .line 268435462
    .line 268435463
    throw v0
.end method

.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 2

    .line 536870912
    const-string v1, "Client certificates not supported!"

    .line 536870913
    .line 536870914
    new-instance v0, Ljava/security/cert/CertificateException;

    .line 536870915
    .line 536870916
    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    .line 536870917
    .line 536870918
    .line 536870919
    throw v0
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 1

    .line 0
    iget-object v0, p0, LX/02Y;->A00:LX/04P;

    .line 1
    .line 2
    invoke-virtual {v0, p1, p2}, LX/04O;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 2

    .line 268435456
    iget-object v1, p0, LX/02Y;->A00:LX/04P;

    .line 268435457
    .line 268435458
    iget-object v0, v1, LX/04O;->A02:Ljavax/net/ssl/X509TrustManager;

    .line 268435459
    .line 268435460
    check-cast v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 268435461
    .line 268435462
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V

    .line 268435463
    .line 268435464
    .line 268435465
    invoke-virtual {v1, p1}, LX/04O;->A01([Ljava/security/cert/X509Certificate;)V

    .line 268435466
    .line 268435467
    .line 268435468
    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 2

    .line 536870912
    iget-object v1, p0, LX/02Y;->A00:LX/04P;

    .line 536870913
    .line 536870914
    iget-object v0, v1, LX/04O;->A02:Ljavax/net/ssl/X509TrustManager;

    .line 536870915
    .line 536870916
    check-cast v0, Ljavax/net/ssl/X509ExtendedTrustManager;

    .line 536870917
    .line 536870918
    invoke-virtual {v0, p1, p2, p3}, Ljavax/net/ssl/X509ExtendedTrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V

    .line 536870919
    .line 536870920
    .line 536870921
    invoke-virtual {v1, p1}, LX/04O;->A01([Ljava/security/cert/X509Certificate;)V

    .line 536870922
    .line 536870923
    .line 536870924
    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .line 0
    iget-object v0, p0, LX/02Y;->A00:LX/04P;

    .line 1
    .line 2
    invoke-virtual {v0}, LX/04O;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method
