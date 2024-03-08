.class public final LX/03N;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/07P;


# instance fields
.field public A00:Landroid/app/Application;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/03N;->A00:Landroid/app/Application;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final ACC()Ljava/lang/Integer;
    .locals 1

    .line 0
    sget-object v0, LX/050;->A0W:Ljava/lang/Integer;

    .line 1
    .line 2
    return-object v0
.end method

.method public final AV8(LX/02u;LX/02m;)V
    .locals 6

    .line 0
    iget-object v2, p0, LX/03N;->A00:Landroid/app/Application;

    .line 1
    .line 2
    sget-object v0, LX/06n;->A01:LX/06n;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    const-class v1, LX/06n;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    sget-object v0, LX/06n;->A01:LX/06n;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, LX/06n;

    .line 14
    .line 15
    invoke-direct {v0, v2}, LX/06n;-><init>(Landroid/app/Application;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, LX/06n;->A01:LX/06n;

    .line 19
    .line 20
    :cond_0
    monitor-exit v1

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v0

    .line 25
    :cond_1
    :goto_0
    sget-object v5, LX/06n;->A01:LX/06n;

    .line 26
    .line 27
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v2

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    sub-long/2addr v2, v0

    .line 40
    const-wide/16 v0, 0x3e8

    .line 41
    .line 42
    div-long/2addr v2, v0

    .line 43
    sget-object v1, LX/07M;->A1k:LX/05m;

    .line 44
    .line 45
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v1, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 50
    .line 51
    .line 52
    sget-object v4, LX/07M;->A1j:LX/05m;

    .line 53
    .line 54
    iget-object v1, v4, LX/07H;->A00:Ljava/lang/String;

    .line 55
    .line 56
    const-string v3, "0"

    .line 57
    .line 58
    move-object v2, v3

    .line 59
    :try_start_1
    iget-object v0, v5, LX/06n;->A00:Landroid/content/SharedPreferences;

    .line 60
    .line 61
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    if-eqz v2, :cond_2

    .line 66
    .line 67
    goto :goto_1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    :catch_0
    const-string v1, "lacrima"

    .line 69
    .line 70
    const-string v0, "Failed to read from SharedPreferences"

    .line 71
    .line 72
    invoke-static {v1, v0}, LX/06s;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, LX/08w;->A00()V

    .line 76
    .line 77
    .line 78
    :goto_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1, v4, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    sget-object v2, LX/07M;->A1l:LX/05m;

    .line 90
    .line 91
    iget-object v1, v2, LX/07H;->A00:Ljava/lang/String;

    .line 92
    .line 93
    :try_start_2
    iget-object v0, v5, LX/06n;->A00:Landroid/content/SharedPreferences;

    .line 94
    .line 95
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    if-eqz v3, :cond_3

    .line 100
    .line 101
    goto :goto_2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 102
    :catch_1
    const-string v1, "lacrima"

    .line 103
    .line 104
    const-string v0, "Failed to read from SharedPreferences"

    .line 105
    .line 106
    invoke-static {v1, v0}, LX/06s;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, LX/08w;->A00()V

    .line 110
    .line 111
    .line 112
    :goto_2
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v0

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 121
    .line 122
    .line 123
    :cond_3
    return-void
.end method
