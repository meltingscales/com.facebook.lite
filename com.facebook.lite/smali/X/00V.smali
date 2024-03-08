.class public final LX/00V;
.super LX/00U;
.source ""


# static fields
.field public static A07:LX/00V;


# instance fields
.field public A00:J

.field public A01:Z

.field public A02:Z

.field public A03:Z

.field public A04:Z

.field public final A05:LX/00W;

.field public final A06:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LX/00T;I)V
    .locals 3

    .line 0
    invoke-direct {p0, p1}, LX/00U;-><init>(LX/00T;)V

    .line 1
    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, LX/00V;->A02:Z

    .line 5
    .line 6
    new-instance v0, Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, LX/00V;->A06:Ljava/lang/Object;

    .line 12
    .line 13
    iget-object v2, p1, LX/00T;->A01:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v1, p1, LX/00T;->A04:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v0, LX/00W;

    .line 18
    .line 19
    invoke-direct {v0, v2, v1, p2}, LX/00W;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, LX/00V;->A05:LX/00W;

    .line 23
    .line 24
    return-void
.end method
