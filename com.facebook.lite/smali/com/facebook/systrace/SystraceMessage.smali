.class public abstract Lcom/facebook/systrace/SystraceMessage;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:LX/04Z;

.field public static final A01:Ljava/lang/ThreadLocal;

.field public static final A02:LX/04c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, LX/04a;

    .line 1
    .line 2
    invoke-direct {v0}, LX/04a;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, Lcom/facebook/systrace/SystraceMessage;->A00:LX/04Z;

    .line 6
    .line 7
    new-instance v0, LX/04b;

    .line 8
    .line 9
    invoke-direct {v0}, LX/04b;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/facebook/systrace/SystraceMessage;->A01:Ljava/lang/ThreadLocal;

    .line 13
    .line 14
    new-instance v0, LX/04c;

    .line 15
    .line 16
    invoke-direct {v0}, LX/04c;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/facebook/systrace/SystraceMessage;->A02:LX/04c;

    .line 20
    .line 21
    return-void
.end method

.method public static A00(Ljava/lang/String;)LX/04Z;
    .locals 6

    .line 0
    const-wide/high16 v2, 0x1000000000000L

    .line 1
    .line 2
    sget-object v1, Lcom/facebook/systrace/SystraceMessage;->A02:LX/04c;

    .line 3
    .line 4
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->A0G(J)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v5, Lcom/facebook/systrace/SystraceMessage;->A00:LX/04Z;

    .line 11
    .line 12
    return-object v5

    .line 13
    :cond_0
    sget-object v0, Lcom/facebook/systrace/SystraceMessage;->A01:Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    check-cast v5, LX/07d;

    .line 20
    .line 21
    iput-wide v2, v5, LX/07d;->A00:J

    .line 22
    .line 23
    iput-object v1, v5, LX/07d;->A02:LX/04c;

    .line 24
    .line 25
    iput-object p0, v5, LX/07d;->A03:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v4, v5, LX/07d;->A01:LX/08m;

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v2, 0x0

    .line 31
    :goto_0
    iget v0, v4, LX/08m;->A00:I

    .line 32
    .line 33
    if-ge v2, v0, :cond_1

    .line 34
    .line 35
    iget-object v1, v4, LX/08m;->A01:[Ljava/lang/String;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    aput-object v0, v1, v2

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    iput v3, v4, LX/08m;->A00:I

    .line 44
    .line 45
    return-object v5
.end method
