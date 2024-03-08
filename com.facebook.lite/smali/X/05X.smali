.class public final LX/05X;
.super LX/05K;
.source ""


# instance fields
.field public final synthetic A00:LX/08K;


# direct methods
.method public constructor <init>(LX/08K;)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/05X;->A00:LX/08K;

    .line 1
    .line 2
    invoke-direct {p0}, LX/05K;-><init>()V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final bridge synthetic A00()Ljava/lang/Object;
    .locals 4

    .line 0
    const-string v0, "GlobalCleanup"

    .line 1
    .line 2
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    iget-object v0, p0, LX/05X;->A00:LX/08K;

    .line 6
    .line 7
    iget-object v3, v0, LX/08K;->A0F:Landroid/app/Application;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v0, "errorreporting"

    .line 11
    .line 12
    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    new-instance v1, LX/054;

    .line 17
    .line 18
    invoke-direct {v1}, LX/054;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v0, LX/07q;

    .line 22
    .line 23
    invoke-direct {v0, v3, v1, v2}, LX/07q;-><init>(Landroid/content/Context;LX/054;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    invoke-static {}, LX/04s;->A00()V

    .line 27
    .line 28
    .line 29
    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    invoke-static {}, LX/04s;->A00()V

    .line 32
    .line 33
    .line 34
    throw v0
.end method
