.class public final LX/086;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Landroid/content/Context;

.field public final A01:LX/0BN;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/086;->A00:Landroid/content/Context;

    .line 4
    .line 5
    new-instance v1, LX/0BN;

    .line 6
    .line 7
    invoke-direct {v1}, LX/0BN;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, LX/086;->A01:LX/0BN;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, LX/0BN;->A01(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
