.class public final LX/03P;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/07P;


# instance fields
.field public final A00:I

.field public final A01:LX/06z;


# direct methods
.method public constructor <init>(LX/06z;)V
    .locals 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    sget-object v4, LX/02g;->A03:LX/02g;

    .line 4
    .line 5
    if-eqz v4, :cond_4

    .line 6
    .line 7
    iget-boolean v0, v4, LX/02g;->A02:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget v5, v4, LX/02g;->A00:I

    .line 12
    .line 13
    :goto_0
    iput v5, p0, LX/03P;->A00:I

    .line 14
    .line 15
    iput-object p1, p0, LX/03P;->A01:LX/06z;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    monitor-enter v4

    .line 19
    :try_start_0
    iget-boolean v0, v4, LX/02g;->A02:Z

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget v5, v4, LX/02g;->A00:I

    .line 24
    .line 25
    :goto_1
    monitor-exit v4

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, v4, LX/02g;->A02:Z

    .line 29
    .line 30
    iget-object v1, v4, LX/02g;->A01:LX/09B;

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    iget-object v0, v1, LX/09B;->A08:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, LX/09B;->A01(Ljava/lang/String;)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "lacrima"

    .line 42
    .line 43
    if-eqz v2, :cond_3

    .line 44
    .line 45
    const-string v0, "critical_suppl_startup_prop.txt"

    .line 46
    .line 47
    new-instance v1, Ljava/io/File;

    .line 48
    .line 49
    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v2, Ljava/util/Properties;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 55
    .line 56
    .line 57
    :try_start_1
    new-instance v0, Ljava/io/FileInputStream;

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 65
    .line 66
    .line 67
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "pid"

    .line 71
    .line 72
    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    if-eqz v0, :cond_2

    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 79
    .line 80
    .line 81
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 83
    .line 84
    .line 85
    goto :goto_2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 86
    :catchall_0
    move-exception v0

    .line 87
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 88
    .line 89
    .line 90
    :catchall_1
    :try_start_5
    throw v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 91
    :catch_0
    :try_start_6
    move-exception v1

    .line 92
    invoke-static {}, LX/08w;->A00()V

    .line 93
    .line 94
    .line 95
    const-string v0, "Error getting previous process id"

    .line 96
    .line 97
    invoke-static {v3, v0, v1}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    :cond_3
    :goto_2
    iput v5, v4, LX/02g;->A00:I

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :catchall_2
    move-exception v1

    .line 104
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 105
    throw v1

    .line 106
    :cond_4
    const-string v0, "Did you call PreviousSessionHelper.init?"

    .line 107
    .line 108
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 109
    .line 110
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v1
.end method


# virtual methods
.method public final ACC()Ljava/lang/Integer;
    .locals 1

    .line 0
    sget-object v0, LX/050;->A0q:Ljava/lang/Integer;

    .line 1
    .line 2
    return-object v0
.end method

.method public final AV8(LX/02u;LX/02m;)V
    .locals 4

    .line 0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1
    .line 2
    const/16 v0, 0x1e

    .line 3
    .line 4
    if-lt v1, v0, :cond_0

    .line 5
    .line 6
    iget v1, p0, LX/03P;->A00:I

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, LX/03P;->A01:LX/06z;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, LX/06z;->A00(I)LX/06y;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    sget-object v1, LX/07M;->A1R:LX/05m;

    .line 19
    .line 20
    invoke-virtual {v3}, LX/06y;->A03()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v1, v0}, LX/02u;->A02(LX/05m;I)V

    .line 25
    .line 26
    .line 27
    sget-object v1, LX/07M;->A1Q:LX/05m;

    .line 28
    .line 29
    invoke-virtual {v3}, LX/06y;->A02()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v1, v0}, LX/02u;->A02(LX/05m;I)V

    .line 34
    .line 35
    .line 36
    sget-object v1, LX/07M;->A5H:LX/05l;

    .line 37
    .line 38
    invoke-virtual {v3}, LX/06y;->A09()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v1, LX/07M;->A1T:LX/05m;

    .line 46
    .line 47
    invoke-virtual {v3}, LX/06y;->A04()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-virtual {p1, v1, v0}, LX/02u;->A02(LX/05m;I)V

    .line 52
    .line 53
    .line 54
    sget-object v1, LX/07M;->A1V:LX/05m;

    .line 55
    .line 56
    invoke-virtual {v3}, LX/06y;->A05()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p1, v1, v0}, LX/02u;->A02(LX/05m;I)V

    .line 61
    .line 62
    .line 63
    sget-object v2, LX/07M;->A1W:LX/05m;

    .line 64
    .line 65
    invoke-virtual {v3}, LX/06y;->A08()J

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 74
    .line 75
    .line 76
    sget-object v1, LX/07M;->A5J:LX/05l;

    .line 77
    .line 78
    invoke-static {}, LX/06y;->A01()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sget-object v1, LX/07M;->A0S:LX/05n;

    .line 86
    .line 87
    invoke-virtual {v3}, LX/06y;->A0B()Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p1, v1, v0}, LX/02u;->A01(LX/05n;Z)V

    .line 92
    .line 93
    .line 94
    sget-object v1, LX/07M;->A5I:LX/05l;

    .line 95
    .line 96
    invoke-virtual {v3}, LX/06y;->A0A()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sget-object v2, LX/07M;->A1S:LX/05m;

    .line 104
    .line 105
    invoke-virtual {v3}, LX/06y;->A06()J

    .line 106
    .line 107
    .line 108
    move-result-wide v0

    .line 109
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {p1, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 114
    .line 115
    .line 116
    sget-object v2, LX/07M;->A1U:LX/05m;

    .line 117
    .line 118
    invoke-virtual {v3}, LX/06y;->A07()J

    .line 119
    .line 120
    .line 121
    move-result-wide v0

    .line 122
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {p1, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 127
    .line 128
    .line 129
    :cond_0
    return-void
.end method
