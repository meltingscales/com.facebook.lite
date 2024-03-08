.class public final LX/03W;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08p;


# instance fields
.field public final A00:LX/06z;

.field public final A01:LX/07R;

.field public final A02:LX/09B;

.field public final A03:LX/0BP;

.field public final synthetic A04:LX/0BT;


# direct methods
.method public constructor <init>(LX/06z;LX/07R;LX/09B;LX/0BT;LX/0BP;)V
    .locals 0

    .line 0
    iput-object p4, p0, LX/03W;->A04:LX/0BT;

    .line 1
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    iput-object p3, p0, LX/03W;->A02:LX/09B;

    .line 6
    .line 7
    iput-object p2, p0, LX/03W;->A01:LX/07R;

    .line 8
    .line 9
    iput-object p5, p0, LX/03W;->A03:LX/0BP;

    .line 10
    .line 11
    iput-object p1, p0, LX/03W;->A00:LX/06z;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final synthetic ABM()LX/034;
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 1
    return-object v0
.end method

.method public final ACB()LX/08q;
    .locals 1

    .line 0
    sget-object v0, LX/08q;->A0F:LX/08q;

    .line 1
    .line 2
    return-object v0
.end method

.method public final start()V
    .locals 10

    .line 0
    const-string v3, "lacrima"

    .line 1
    .line 2
    iget-object v0, p0, LX/03W;->A03:LX/0BP;

    .line 3
    .line 4
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v7

    .line 8
    check-cast v7, LX/03f;

    .line 9
    .line 10
    iget-boolean v0, v7, LX/03f;->A07:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, LX/03W;->A02:LX/09B;

    .line 15
    .line 16
    iget-object v0, v1, LX/09B;->A08:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v0}, LX/09B;->A01(Ljava/lang/String;)Ljava/io/File;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    const-string v1, "state.txt"

    .line 23
    .line 24
    new-instance v0, Ljava/io/File;

    .line 25
    .line 26
    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 30
    .line 31
    .line 32
    move-result-wide v8

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 34
    .line 35
    .line 36
    const-string v0, "fb.report_source"

    .line 37
    .line 38
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v0, "jest_e2e"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    const-string v0, "Ignore ufads on jest test runs."

    .line 51
    .line 52
    :goto_0
    invoke-static {v3, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void

    .line 56
    :cond_1
    const-string v0, "sapienz"

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    iget-char v1, v7, LX/03f;->A02:C

    .line 65
    .line 66
    const/16 v0, 0x66

    .line 67
    .line 68
    if-ne v1, v0, :cond_2

    .line 69
    .line 70
    const-string v0, "Ignore f states on sapienz runs."

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-boolean v6, v7, LX/03f;->A06:Z

    .line 74
    .line 75
    if-eqz v6, :cond_0

    .line 76
    .line 77
    const/4 v2, 0x1

    .line 78
    invoke-virtual {v7}, LX/03f;->A01()Z

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, LX/03f;->A01()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    iget-char v1, v7, LX/03f;->A01:C

    .line 86
    .line 87
    sget-object v0, LX/050;->A01:Ljava/lang/Integer;

    .line 88
    .line 89
    invoke-static {v0, v1}, LX/03e;->A01(Ljava/lang/Integer;C)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_3

    .line 94
    .line 95
    const-string v1, "critical_suppl_java_detect_prop.txt"

    .line 96
    .line 97
    new-instance v0, Ljava/io/File;

    .line 98
    .line 99
    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_3

    .line 107
    .line 108
    const-string v1, "critical_java_prop.txt"

    .line 109
    .line 110
    new-instance v0, Ljava/io/File;

    .line 111
    .line 112
    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_3

    .line 120
    .line 121
    const-string v1, "critical_java_detect_prop.txt"

    .line 122
    .line 123
    new-instance v0, Ljava/io/File;

    .line 124
    .line 125
    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_3

    .line 133
    .line 134
    const-string v0, "Java state with no java report, reporting as fad"

    .line 135
    .line 136
    invoke-static {v3, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    const/4 v0, 0x0

    .line 140
    new-instance v5, LX/02u;

    .line 141
    .line 142
    invoke-direct {v5, v0}, LX/02u;-><init>(Ljava/lang/Throwable;)V

    .line 143
    .line 144
    .line 145
    sget-object v0, LX/07M;->A10:LX/05m;

    .line 146
    .line 147
    invoke-virtual {v5, v0, v2}, LX/02u;->A02(LX/05m;I)V

    .line 148
    .line 149
    .line 150
    sget-object v1, LX/07M;->A33:LX/05m;

    .line 151
    .line 152
    const-wide/16 v3, 0x3e8

    .line 153
    .line 154
    div-long/2addr v8, v3

    .line 155
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v5, v1, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 160
    .line 161
    .line 162
    sget-object v2, LX/07M;->A1O:LX/05m;

    .line 163
    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 165
    .line 166
    .line 167
    move-result-wide v0

    .line 168
    div-long/2addr v0, v3

    .line 169
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v5, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 174
    .line 175
    .line 176
    sget-object v1, LX/07M;->A4g:LX/05l;

    .line 177
    .line 178
    const-string v0, "unexplained"

    .line 179
    .line 180
    invoke-virtual {v5, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, LX/03W;->A01:LX/07R;

    .line 184
    .line 185
    sget-object v0, LX/02m;->A02:LX/02m;

    .line 186
    .line 187
    invoke-virtual {v1, v5, v0, p0}, LX/07R;->A06(LX/02u;LX/02m;LX/08p;)V

    .line 188
    .line 189
    .line 190
    if-eqz v6, :cond_0

    .line 191
    .line 192
    sget-object v0, LX/02m;->A03:LX/02m;

    .line 193
    .line 194
    invoke-virtual {v1, v5, v0, p0}, LX/07R;->A06(LX/02u;LX/02m;LX/08p;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_3
    if-eqz v5, :cond_0

    .line 199
    .line 200
    goto :goto_1
.end method
