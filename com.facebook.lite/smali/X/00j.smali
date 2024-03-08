.class public final LX/00j;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:LX/064;

.field public final A01:LX/00g;

.field public final A02:Ljava/util/Set;

.field public final A03:Landroid/content/Context;

.field public final A04:LX/00e;

.field public final A05:LX/00h;

.field public final A06:LX/00f;


# direct methods
.method public constructor <init>(Landroid/content/Context;LX/064;LX/00e;LX/00h;LX/00f;LX/00g;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    new-instance v0, Ljava/util/HashSet;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, LX/00j;->A02:Ljava/util/Set;

    .line 9
    .line 10
    iput-object p1, p0, LX/00j;->A03:Landroid/content/Context;

    .line 11
    .line 12
    iput-object p3, p0, LX/00j;->A04:LX/00e;

    .line 13
    .line 14
    iput-object p5, p0, LX/00j;->A06:LX/00f;

    .line 15
    .line 16
    iput-object p4, p0, LX/00j;->A05:LX/00h;

    .line 17
    .line 18
    iput-object p6, p0, LX/00j;->A01:LX/00g;

    .line 19
    .line 20
    iput-object p2, p0, LX/00j;->A00:LX/064;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final A00(Ljava/lang/String;)V
    .locals 8

    .line 0
    iget-object v6, p0, LX/00j;->A02:Ljava/util/Set;

    .line 1
    .line 2
    invoke-interface {v6, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    iget-object v1, p0, LX/00j;->A06:LX/00f;

    .line 9
    .line 10
    iget-object v0, p0, LX/00j;->A05:LX/00h;

    .line 11
    .line 12
    invoke-interface {v1, v0, p1}, LX/00f;->AY3(LX/00h;Ljava/lang/String;)LX/00l;

    .line 13
    .line 14
    .line 15
    move-result-object v7

    .line 16
    iget-object v1, v7, LX/00l;->A04:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 21
    .line 22
    .line 23
    move-object v5, p0

    .line 24
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, LX/00j;->A00(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 45
    .line 46
    .line 47
    move-result-wide v3

    .line 48
    monitor-enter v5

    .line 49
    :try_start_0
    iget-object v2, v7, LX/00l;->A00:Ljava/io/File;

    .line 50
    .line 51
    if-eqz v2, :cond_1

    .line 52
    .line 53
    iget-object v1, p0, LX/00j;->A00:LX/064;

    .line 54
    .line 55
    iget-object v0, v7, LX/00l;->A02:Ljava/io/File;

    .line 56
    .line 57
    invoke-interface {v1, v2, v0}, LX/064;->A23(Ljava/io/File;Ljava/io/File;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object v0, v7, LX/00l;->A01:Ljava/io/File;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-object v0, p0, LX/00j;->A01:LX/00g;

    .line 65
    .line 66
    invoke-interface {v0, v7}, LX/00g;->AJH(LX/00l;)V

    .line 67
    .line 68
    .line 69
    :cond_2
    iget-object v0, v7, LX/00l;->A03:Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    .line 73
    .line 74
    monitor-exit v5

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v1

    .line 79
    iget-object v0, p0, LX/00j;->A04:LX/00e;

    .line 80
    .line 81
    sub-long/2addr v1, v3

    .line 82
    invoke-interface {v0, p1, v1, v2}, LX/00e;->AKM(Ljava/lang/String;J)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    monitor-exit v5

    .line 88
    throw v0

    .line 89
    :cond_3
    return-void
.end method
