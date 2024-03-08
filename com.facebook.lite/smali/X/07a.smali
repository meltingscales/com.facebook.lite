.class public abstract LX/07a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Landroid/os/StatFs;)J
    .locals 1

    .line 0
    invoke-virtual {p0}, Landroid/os/StatFs;->getAvailableBytes()J

    .line 1
    .line 2
    .line 3
    move-result-wide v0

    .line 4
    return-wide v0
.end method

.method public static A01(Landroid/os/StatFs;)J
    .locals 1

    .line 0
    invoke-virtual {p0}, Landroid/os/StatFs;->getTotalBytes()J

    .line 1
    .line 2
    .line 3
    move-result-wide v0

    .line 4
    return-wide v0
.end method
