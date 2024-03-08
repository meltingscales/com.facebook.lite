.class public final LX/08E;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:LX/08D;

.field public A01:LX/08D;

.field public A02:Ljava/lang/Integer;

.field public A03:Z

.field public final A04:LX/08C;

.field public final A05:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-instance v0, LX/0BU;

    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, LX/0BU;-><init>(Ljava/lang/Object;I)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LX/08E;->A00:LX/08D;

    .line 10
    .line 11
    new-instance v0, LX/08C;

    .line 12
    .line 13
    invoke-direct {v0}, LX/08C;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, LX/08E;->A04:LX/08C;

    .line 17
    .line 18
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 19
    .line 20
    iput-object v0, p0, LX/08E;->A02:Ljava/lang/Integer;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, LX/08E;->A03:Z

    .line 24
    .line 25
    iput-object p1, p0, LX/08E;->A05:Ljava/lang/Integer;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final A00()LX/06Q;
    .locals 7

    .line 0
    iget-object v2, p0, LX/08E;->A00:LX/08D;

    .line 1
    .line 2
    iget-object v4, p0, LX/08E;->A02:Ljava/lang/Integer;

    .line 3
    .line 4
    iget-object v5, p0, LX/08E;->A05:Ljava/lang/Integer;

    .line 5
    .line 6
    iget-boolean v6, p0, LX/08E;->A03:Z

    .line 7
    .line 8
    iget-object v3, p0, LX/08E;->A01:LX/08D;

    .line 9
    .line 10
    iget-object v1, p0, LX/08E;->A04:LX/08C;

    .line 11
    .line 12
    new-instance v0, LX/06Q;

    .line 13
    .line 14
    invoke-direct/range {v0 .. v6}, LX/06Q;-><init>(LX/08C;LX/08D;LX/08D;Ljava/lang/Integer;Ljava/lang/Integer;Z)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
