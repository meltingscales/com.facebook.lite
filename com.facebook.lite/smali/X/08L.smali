.class public final LX/08L;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:LX/0BP;

.field public A03:LX/0BP;

.field public A04:LX/0BP;

.field public A05:LX/0BP;

.field public A06:LX/0BP;

.field public A07:LX/0BP;

.field public A08:LX/0BP;

.field public A09:LX/0BP;

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Landroid/app/Application;

.field public final A0D:Ljava/util/List;

.field public final A0E:Ljava/util/List;

.field public final A0F:Ljava/util/List;

.field public final A0G:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, LX/08L;->A0A:Z

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, LX/08L;->A01:I

    .line 8
    .line 9
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, LX/08L;->A0D:Ljava/util/List;

    .line 14
    .line 15
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, LX/08L;->A0E:Ljava/util/List;

    .line 20
    .line 21
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, LX/08L;->A0F:Ljava/util/List;

    .line 26
    .line 27
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, LX/08L;->A0G:Ljava/util/List;

    .line 32
    .line 33
    iput-object p1, p0, LX/08L;->A0C:Landroid/app/Application;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final A00(LX/08G;)V
    .locals 2

    .line 0
    invoke-interface {p1}, LX/08G;->AG4()Ljava/lang/Integer;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v0, 0x0

    .line 9
    if-eq v1, v0, :cond_3

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    if-eq v1, v0, :cond_2

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    if-eq v1, v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    if-ne v1, v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, LX/08L;->A0G:Ljava/util/List;

    .line 21
    .line 22
    :goto_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, LX/08L;->A0F:Ljava/util/List;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v0, p0, LX/08L;->A0E:Ljava/util/List;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_3
    iget-object v0, p0, LX/08L;->A0D:Ljava/util/List;

    .line 33
    .line 34
    goto :goto_0
.end method
