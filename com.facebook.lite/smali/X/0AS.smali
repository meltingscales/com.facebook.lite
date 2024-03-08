.class public final LX/0AS;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Landroid/content/ContentResolver;

.field public final A01:Landroid/content/IntentFilter;

.field public final A02:Ljava/lang/String;

.field public final A03:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 268435456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268435457
    .line 268435458
    .line 268435459
    const/4 v1, 0x0

    .line 268435460
    iput-object v1, p0, LX/0AS;->A00:Landroid/content/ContentResolver;

    .line 268435461
    .line 268435462
    const-string v0, ""

    .line 268435463
    .line 268435464
    iput-object v0, p0, LX/0AS;->A02:Ljava/lang/String;

    .line 268435465
    .line 268435466
    const/4 v0, 0x0

    .line 268435467
    iput-boolean v0, p0, LX/0AS;->A03:Z

    .line 268435468
    .line 268435469
    iput-object v1, p0, LX/0AS;->A01:Landroid/content/IntentFilter;

    .line 268435470
    .line 268435471
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;Landroid/content/IntentFilter;Ljava/lang/String;Z)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/0AS;->A00:Landroid/content/ContentResolver;

    .line 4
    .line 5
    iput-object p3, p0, LX/0AS;->A02:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz p3, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-nez p4, :cond_1

    .line 11
    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :cond_1
    iput-boolean v0, p0, LX/0AS;->A03:Z

    .line 14
    .line 15
    iput-object p2, p0, LX/0AS;->A01:Landroid/content/IntentFilter;

    .line 16
    .line 17
    return-void
.end method
