.class public final LX/03R;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/03K;


# instance fields
.field public A00:Z

.field public final A01:LX/03K;


# direct methods
.method public constructor <init>(LX/03K;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/03R;->A01:LX/03K;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final APi(LX/02m;LX/08p;)V
    .locals 1

    .line 0
    iget-boolean v0, p0, LX/03R;->A00:Z

    .line 1
    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, LX/03R;->A00:Z

    .line 6
    .line 7
    iget-object v0, p0, LX/03R;->A01:LX/03K;

    .line 8
    .line 9
    invoke-interface {v0, p1, p2}, LX/03K;->APi(LX/02m;LX/08p;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
