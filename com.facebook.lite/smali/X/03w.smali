.class public final LX/03w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/03v;


# instance fields
.field public A00:LX/02V;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final A8u(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 5

    .line 0
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 1
    .line 2
    .line 3
    move-result-object v4

    .line 4
    check-cast v4, Ljava/net/HttpURLConnection;

    .line 5
    .line 6
    instance-of v0, v4, Ljavax/net/ssl/HttpsURLConnection;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    move-object v3, v4

    .line 11
    check-cast v3, Ljavax/net/ssl/HttpsURLConnection;

    .line 12
    .line 13
    iget-object v1, p0, LX/03w;->A00:LX/02V;

    .line 14
    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v1, LX/02V;

    .line 18
    .line 19
    invoke-direct {v1}, LX/02V;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object v1, p0, LX/03w;->A00:LX/02V;

    .line 23
    .line 24
    :cond_0
    :try_start_0
    const-string v0, "TLS"

    .line 25
    .line 26
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v1, v1, LX/02V;->A00:[Ljavax/net/ssl/X509TrustManager;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {v2, v0, v1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v3, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0
    :try_end_0
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :catch_0
    move-exception v2

    .line 45
    const-string v1, "lacrima"

    .line 46
    .line 47
    const-string v0, "Pinning failed"

    .line 48
    .line 49
    invoke-static {v1, v0, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    .line 51
    .line 52
    invoke-static {}, LX/08w;->A00()V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    const/16 v0, 0x7530

    .line 56
    .line 57
    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 61
    .line 62
    .line 63
    return-object v4
.end method
