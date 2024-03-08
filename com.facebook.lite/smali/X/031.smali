.class public abstract LX/031;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Landroid/content/pm/PackageManager;LX/02u;)V
    .locals 2

    .line 0
    sget-object v1, LX/07M;->A0F:LX/05n;

    .line 1
    .line 2
    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->isDeviceUpgrading()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    invoke-virtual {p1, v1, v0}, LX/02u;->A01(LX/05n;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
