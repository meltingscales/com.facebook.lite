.class public abstract LX/09g;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile A00:Landroid/net/ConnectivityManager;

.field public static volatile A01:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Ljava/lang/Object;

    .line 1
    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, LX/09g;->A01:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method

.method public static A00(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 2

    .line 0
    sget-object v0, LX/09g;->A00:Landroid/net/ConnectivityManager;

    .line 1
    .line 2
    if-nez v0, :cond_1

    .line 3
    .line 4
    sget-object v1, LX/09g;->A01:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    sget-object v0, LX/09g;->A00:Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string v0, "connectivity"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 18
    .line 19
    sput-object v0, LX/09g;->A00:Landroid/net/ConnectivityManager;

    .line 20
    .line 21
    :cond_0
    monitor-exit v1

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_0
    sget-object v0, LX/09g;->A00:Landroid/net/ConnectivityManager;

    .line 27
    .line 28
    return-object v0
.end method

.method public static A01(Landroid/content/Context;)LX/099;
    .locals 1

    .line 0
    invoke-static {p0}, LX/09g;->A00(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, LX/099;

    .line 13
    .line 14
    invoke-direct {v0, p0}, LX/099;-><init>(Landroid/net/NetworkInfo;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
