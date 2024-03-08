.class public final LX/07d;
.super LX/04Z;
.source ""


# instance fields
.field public A00:J

.field public A01:LX/08m;

.field public A02:LX/04c;

.field public A03:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, LX/04Z;-><init>()V

    .line 1
    .line 2
    .line 3
    new-instance v0, LX/08m;

    .line 4
    .line 5
    invoke-direct {v0}, LX/08m;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, LX/07d;->A01:LX/08m;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final A00(Ljava/lang/Object;Ljava/lang/String;)LX/04Z;
    .locals 2

    .line 0
    iget-object v1, p0, LX/07d;->A01:LX/08m;

    .line 1
    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v1, p2, v0}, LX/08m;->A00(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final A01(Ljava/lang/String;I)LX/04Z;
    .locals 2

    .line 0
    iget-object v1, p0, LX/07d;->A01:LX/08m;

    .line 1
    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v1, p1, v0}, LX/08m;->A00(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public final A02()V
    .locals 6

    .line 0
    iget-wide v2, p0, LX/07d;->A00:J

    .line 1
    .line 2
    iget-object v5, p0, LX/07d;->A03:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v4, p0, LX/07d;->A01:LX/08m;

    .line 5
    .line 6
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->A0G(J)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, v4, LX/08m;->A01:[Ljava/lang/String;

    .line 13
    .line 14
    iget v0, v4, LX/08m;->A00:I

    .line 15
    .line 16
    invoke-static {v5, v1, v0, v2, v3}, Lcom/facebook/systrace/Systrace;->A0F(Ljava/lang/String;[Ljava/lang/String;IJ)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
