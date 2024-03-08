.class public final synthetic LX/03L;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/03K;


# instance fields
.field public final synthetic A00:LX/08K;

.field public final synthetic A01:Z


# direct methods
.method public synthetic constructor <init>(LX/08K;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/03L;->A00:LX/08K;

    iput-boolean p2, p0, LX/03L;->A01:Z

    return-void
.end method


# virtual methods
.method public final APi(LX/02m;LX/08p;)V
    .locals 7

    .line 0
    iget-object v5, p0, LX/03L;->A00:LX/08K;

    .line 1
    .line 2
    iget-boolean v6, p0, LX/03L;->A01:Z

    .line 3
    .line 4
    iget-object v1, v5, LX/08K;->A08:LX/0BP;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x5

    .line 9
    new-instance v1, LX/0BR;

    .line 10
    .line 11
    invoke-direct {v1, v5, v0}, LX/0BR;-><init>(LX/08K;I)V

    .line 12
    .line 13
    .line 14
    iput-object v1, v5, LX/08K;->A08:LX/0BP;

    .line 15
    .line 16
    :cond_0
    invoke-interface {v1}, LX/0BP;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    check-cast v4, LX/03H;

    .line 21
    .line 22
    iget-object v1, v5, LX/08K;->A01:LX/09B;

    .line 23
    .line 24
    const-string v0, "Did you call earlyInit()?"

    .line 25
    .line 26
    invoke-static {v1, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v1, LX/09B;->A08:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v0, "processCurrentSession."

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v0, "."

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, LX/06A;->A01(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :try_start_0
    sget-object v3, LX/03H;->A05:Ljava/lang/Object;

    .line 64
    .line 65
    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 66
    :try_start_1
    iget-object v0, v4, LX/03H;->A00:LX/09B;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, LX/09B;->A03(Ljava/lang/String;)[Ljava/io/File;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    array-length v0, v2

    .line 73
    add-int/lit8 v0, v0, -0x1

    .line 74
    .line 75
    if-ltz v0, :cond_1

    .line 76
    .line 77
    aget-object v1, v2, v0

    .line 78
    .line 79
    if-lez v0, :cond_2

    .line 80
    .line 81
    add-int/lit8 v0, v0, -0x1

    .line 82
    .line 83
    aget-object v0, v2, v0

    .line 84
    .line 85
    :goto_0
    invoke-static {p1, v4, v1, v0}, LX/03H;->A00(LX/02m;LX/03H;Ljava/io/File;Ljava/io/File;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    monitor-exit v3

    .line 89
    goto :goto_1

    .line 90
    :cond_2
    const/4 v0, 0x0

    .line 91
    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :goto_1
    invoke-static {}, LX/06A;->A00()V

    .line 93
    .line 94
    .line 95
    if-eqz v6, :cond_4

    .line 96
    .line 97
    iget-object v0, v5, LX/08K;->A0B:LX/0BP;

    .line 98
    .line 99
    if-nez v0, :cond_3

    .line 100
    .line 101
    new-instance v0, LX/03k;

    .line 102
    .line 103
    invoke-direct {v0, v5}, LX/03k;-><init>(LX/08K;)V

    .line 104
    .line 105
    .line 106
    iput-object v0, v5, LX/08K;->A0B:LX/0BP;

    .line 107
    .line 108
    :cond_3
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, LX/090;

    .line 113
    .line 114
    invoke-virtual {v0, p1}, LX/090;->A03(LX/02m;)V

    .line 115
    .line 116
    .line 117
    :cond_4
    return-void

    .line 118
    :catchall_0
    move-exception v0

    .line 119
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 121
    :catchall_1
    move-exception v0

    .line 122
    invoke-static {}, LX/06A;->A00()V

    .line 123
    .line 124
    .line 125
    throw v0
.end method
