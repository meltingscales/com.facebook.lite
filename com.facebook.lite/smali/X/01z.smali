.class public abstract LX/01z;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Landroid/content/Intent;)Landroid/content/ClipData;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 1
    .line 2
    .line 3
    move-result-object p0

    .line 4
    return-object p0
.end method

.method public static A01(Landroid/content/ClipData;Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setClipData(Landroid/content/ClipData;)V

    .line 1
    .line 2
    .line 3
    return-void
.end method
