.class public final LX/02A;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Landroid/os/ParcelFileDescriptor;

.field public final A01:LX/09b;

.field public final A02:LX/04I;

.field public final A03:Ljava/lang/Integer;

.field public final A04:Ljava/lang/Integer;

.field public final A05:Ljava/lang/String;

.field public final A06:Ljava/net/Socket;

.field public final A07:Landroid/os/ParcelFileDescriptor;

.field public final A08:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;LX/09b;LX/04I;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/net/Socket;Ljava/util/Map;)V
    .locals 0

    .line 268455757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268455758
    iput-object p5, p0, LX/02A;->A04:Ljava/lang/Integer;

    .line 268455759
    iput-object p6, p0, LX/02A;->A03:Ljava/lang/Integer;

    .line 268455760
    iput-object p4, p0, LX/02A;->A02:LX/04I;

    .line 268455761
    iput-object p8, p0, LX/02A;->A06:Ljava/net/Socket;

    .line 268455762
    iput-object p9, p0, LX/02A;->A08:Ljava/util/Map;

    .line 268455763
    iput-object p1, p0, LX/02A;->A00:Landroid/os/ParcelFileDescriptor;

    .line 268455764
    iput-object p2, p0, LX/02A;->A07:Landroid/os/ParcelFileDescriptor;

    .line 268455765
    iput-object p7, p0, LX/02A;->A05:Ljava/lang/String;

    .line 268455766
    iput-object p3, p0, LX/02A;->A01:LX/09b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/util/Map;)V
    .locals 10

    .line 0
    sget-object v3, LX/09b;->A02:LX/09b;

    .line 1
    .line 2
    const-string v7, ""

    .line 3
    .line 4
    sget-object v5, LX/050;->A01:Ljava/lang/Integer;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v6, p1

    .line 9
    move-object v9, p2

    .line 10
    move-object v2, v1

    .line 11
    move-object v4, v1

    .line 12
    move-object v8, v1

    .line 13
    invoke-direct/range {v0 .. v9}, LX/02A;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;LX/09b;LX/04I;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/net/Socket;Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final A00(LX/09a;)J
    .locals 2

    .line 0
    iget-object v0, p0, LX/02A;->A08:Ljava/util/Map;

    .line 1
    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, Ljava/lang/Number;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    return-wide v0

    .line 15
    :cond_0
    const-wide/16 v0, -0x1

    .line 16
    .line 17
    return-wide v0
.end method

.method public final A01()V
    .locals 3

    .line 0
    :try_start_0
    iget-object v0, p0, LX/02A;->A07:Landroid/os/ParcelFileDescriptor;

    .line 1
    .line 2
    if-eqz v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 5
    .line 6
    .line 7
    return-void
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    move-exception v2

    .line 9
    const-string v1, "EarlySocket"

    .line 10
    .line 11
    const-string v0, "Unable to close dupped fd."

    .line 12
    .line 13
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
