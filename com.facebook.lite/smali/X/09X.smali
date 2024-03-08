.class public final LX/09X;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public A03:Landroid/content/Context;

.field public A04:LX/0A1;

.field public A05:LX/09b;

.field public A06:Ljava/util/Map;

.field public A07:Z

.field public A08:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, LX/09X;->A06:Ljava/util/Map;

    .line 8
    .line 9
    sget-object v0, LX/09b;->A02:LX/09b;

    .line 10
    .line 11
    iput-object v0, p0, LX/09X;->A05:LX/09b;

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    iput v0, p0, LX/09X;->A00:I

    .line 15
    .line 16
    const/4 v0, -0x1

    .line 17
    iput v0, p0, LX/09X;->A02:I

    .line 18
    .line 19
    return-void
.end method

.method public static A00(LX/09X;Ljava/lang/Exception;Ljava/lang/Integer;Ljava/lang/String;Ljava/net/Socket;)LX/02A;
    .locals 3

    .line 0
    :try_start_0
    const-string v0, "EarlySocket"

    .line 1
    .line 2
    invoke-static {v0, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3
    .line 4
    .line 5
    invoke-virtual {p4}, Ljava/net/Socket;->close()V

    .line 6
    .line 7
    .line 8
    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    :catch_0
    move-exception v2

    .line 10
    :try_start_1
    const-string v1, "EarlySocket"

    .line 11
    .line 12
    const-string v0, "Unable to close EarlySocket."

    .line 13
    .line 14
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    .line 16
    .line 17
    :goto_0
    iget-object v1, p0, LX/09X;->A06:Ljava/util/Map;

    .line 18
    .line 19
    new-instance v0, LX/02A;

    .line 20
    .line 21
    invoke-direct {v0, p2, v1}, LX/02A;-><init>(Ljava/lang/Integer;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :catchall_0
    iget-object v1, p0, LX/09X;->A06:Ljava/util/Map;

    .line 26
    .line 27
    new-instance v0, LX/02A;

    .line 28
    .line 29
    invoke-direct {v0, p2, v1}, LX/02A;-><init>(Ljava/lang/Integer;Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method
