.class public final LX/07I;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/04G;


# instance fields
.field public final A00:I

.field public final A01:Landroid/content/Intent;

.field public final synthetic A02:LX/04D;


# direct methods
.method public constructor <init>(Landroid/content/Intent;LX/04D;I)V
    .locals 0

    .line 0
    iput-object p2, p0, LX/07I;->A02:LX/04D;

    .line 1
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, LX/07I;->A01:Landroid/content/Intent;

    .line 6
    .line 7
    iput p3, p0, LX/07I;->A00:I

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final A3w()V
    .locals 2

    .line 0
    iget-object v1, p0, LX/07I;->A02:LX/04D;

    .line 1
    .line 2
    iget v0, p0, LX/07I;->A00:I

    .line 3
    .line 4
    invoke-virtual {v1, v0}, Landroid/app/Service;->stopSelf(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final AAv()Landroid/content/Intent;
    .locals 1

    .line 0
    iget-object v0, p0, LX/07I;->A01:Landroid/content/Intent;

    .line 1
    .line 2
    return-object v0
.end method
