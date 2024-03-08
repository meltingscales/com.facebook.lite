.class public final LX/07Z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08D;


# instance fields
.field public final synthetic A00:LX/04t;

.field public final synthetic A01:LX/08r;

.field public final synthetic A02:LX/08r;


# direct methods
.method public constructor <init>(LX/04t;LX/08r;LX/08r;)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/07Z;->A00:LX/04t;

    .line 1
    .line 2
    iput-object p2, p0, LX/07Z;->A02:LX/08r;

    .line 3
    .line 4
    iput-object p3, p0, LX/07Z;->A01:LX/08r;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final bridge synthetic A4O(LX/08K;)Ljava/lang/Object;
    .locals 6

    .line 0
    iget-object v5, p1, LX/08K;->A01:LX/09B;

    .line 1
    .line 2
    invoke-static {p1, v5}, LX/02h;->A00(LX/08K;Ljava/lang/Object;)LX/07R;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    iget-object v2, p0, LX/07Z;->A00:LX/04t;

    .line 7
    .line 8
    iget-object v3, p0, LX/07Z;->A02:LX/08r;

    .line 9
    .line 10
    iget-object v4, p0, LX/07Z;->A01:LX/08r;

    .line 11
    .line 12
    new-instance v0, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;

    .line 13
    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;-><init>(LX/07R;LX/04t;LX/08r;LX/08r;LX/09B;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
