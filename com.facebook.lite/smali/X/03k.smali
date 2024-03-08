.class public final LX/03k;
.super LX/05K;
.source ""


# instance fields
.field public final synthetic A00:LX/08K;


# direct methods
.method public constructor <init>(LX/08K;)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/03k;->A00:LX/08K;

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
    .locals 12

    .line 0
    const-string v0, "ReportSender"

    .line 1
    .line 2
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    iget-object v1, p0, LX/03k;->A00:LX/08K;

    .line 6
    .line 7
    iget-object v2, v1, LX/08K;->A0F:Landroid/app/Application;

    .line 8
    .line 9
    iget-object v6, v1, LX/08K;->A0R:LX/0BP;

    .line 10
    .line 11
    iget-object v7, v1, LX/08K;->A0L:LX/0BP;

    .line 12
    .line 13
    iget-object v8, v1, LX/08K;->A0K:LX/0BP;

    .line 14
    .line 15
    iget-object v9, v1, LX/08K;->A0Q:LX/0BP;

    .line 16
    .line 17
    iget-object v10, v1, LX/08K;->A04:LX/0BP;

    .line 18
    .line 19
    if-nez v10, :cond_0

    .line 20
    .line 21
    new-instance v10, LX/03l;

    .line 22
    .line 23
    invoke-direct {v10, v1}, LX/03l;-><init>(LX/08K;)V

    .line 24
    .line 25
    .line 26
    iput-object v10, v1, LX/08K;->A04:LX/0BP;

    .line 27
    .line 28
    :cond_0
    iget-object v11, v1, LX/08K;->A08:LX/0BP;

    .line 29
    .line 30
    if-nez v11, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x5

    .line 33
    new-instance v11, LX/0BR;

    .line 34
    .line 35
    invoke-direct {v11, v1, v0}, LX/0BR;-><init>(LX/08K;I)V

    .line 36
    .line 37
    .line 38
    iput-object v11, v1, LX/08K;->A08:LX/0BP;

    .line 39
    .line 40
    :cond_1
    iget-object v0, v1, LX/08K;->A03:LX/0BP;

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    new-instance v0, LX/05X;

    .line 45
    .line 46
    invoke-direct {v0, v1}, LX/05X;-><init>(LX/08K;)V

    .line 47
    .line 48
    .line 49
    iput-object v0, v1, LX/08K;->A03:LX/0BP;

    .line 50
    .line 51
    :cond_2
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, LX/07q;

    .line 56
    .line 57
    iget-object v0, v1, LX/08K;->A0A:LX/0BP;

    .line 58
    .line 59
    if-nez v0, :cond_3

    .line 60
    .line 61
    new-instance v0, LX/03m;

    .line 62
    .line 63
    invoke-direct {v0, v1}, LX/03m;-><init>(LX/08K;)V

    .line 64
    .line 65
    .line 66
    iput-object v0, v1, LX/08K;->A0A:LX/0BP;

    .line 67
    .line 68
    :cond_3
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 73
    .line 74
    new-instance v4, LX/03n;

    .line 75
    .line 76
    invoke-direct {v4}, LX/03n;-><init>()V

    .line 77
    .line 78
    .line 79
    new-instance v1, LX/090;

    .line 80
    .line 81
    invoke-direct/range {v1 .. v11}, LX/090;-><init>(Landroid/content/Context;LX/07q;Ljava/lang/Runnable;Ljava/util/concurrent/Executor;LX/0BP;LX/0BP;LX/0BP;LX/0BP;LX/0BP;LX/0BP;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    .line 83
    .line 84
    invoke-static {}, LX/04s;->A00()V

    .line 85
    .line 86
    .line 87
    return-object v1

    .line 88
    :catchall_0
    move-exception v0

    .line 89
    invoke-static {}, LX/04s;->A00()V

    .line 90
    .line 91
    .line 92
    throw v0
.end method
