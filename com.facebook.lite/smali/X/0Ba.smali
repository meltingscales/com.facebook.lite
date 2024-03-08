.class public LX/0Ba;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08G;


# instance fields
.field public final A00:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 0
    iput p1, p0, LX/0Ba;->A00:I

    .line 1
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final AG4()Ljava/lang/Integer;
    .locals 1

    .line 0
    iget v0, p0, LX/0Ba;->A00:I

    .line 1
    .line 2
    packed-switch v0, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    sget-object v0, LX/050;->A01:Ljava/lang/Integer;

    .line 6
    .line 7
    return-object v0

    .line 8
    :pswitch_0
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 9
    .line 10
    return-object v0

    .line 11
    :pswitch_1
    sget-object v0, LX/050;->A0C:Ljava/lang/Integer;

    .line 12
    .line 13
    return-object v0

    .line 14
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final AH8(LX/08K;)V
    .locals 5

    .line 0
    iget v0, p0, LX/0Ba;->A00:I

    .line 1
    .line 2
    packed-switch v0, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    const-class v0, LX/05o;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    monitor-exit v0

    .line 9
    iget-object v2, p1, LX/08K;->A00:LX/07R;

    .line 10
    .line 11
    const-string v0, "Did you call earlyInit()?"

    .line 12
    .line 13
    invoke-static {v2, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, LX/0AP;->A00()LX/0AP;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sget-object v3, LX/02m;->A03:LX/02m;

    .line 21
    .line 22
    const-class v0, LX/01m;

    .line 23
    .line 24
    invoke-virtual {v2, v0}, LX/07R;->A03(Ljava/lang/Class;)LX/08p;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sget-object v0, LX/050;->A06:Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-static {v0}, LX/02x;->A00(Ljava/lang/Integer;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v0, "CollectorName"

    .line 41
    .line 42
    invoke-virtual {v2, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    iget-object v1, v3, LX/02m;->A00:Ljava/lang/String;

    .line 46
    .line 47
    :goto_0
    const-string v0, "ReportCategory"

    .line 48
    .line 49
    invoke-virtual {v2, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    invoke-static {}, LX/08w;->A00()V

    .line 53
    .line 54
    .line 55
    const-string v1, "lacrima"

    .line 56
    .line 57
    const-string v0, "Cannot find registered detector"

    .line 58
    .line 59
    invoke-static {v1, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_0
    const-class v0, LX/05o;

    .line 64
    .line 65
    monitor-enter v0

    .line 66
    monitor-exit v0

    .line 67
    iget-object v2, p1, LX/08K;->A00:LX/07R;

    .line 68
    .line 69
    const-string v4, "Did you call earlyInit()?"

    .line 70
    .line 71
    invoke-static {v2, v4}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    invoke-static {}, LX/0AP;->A00()LX/0AP;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    sget-object v3, LX/02m;->A03:LX/02m;

    .line 79
    .line 80
    const-class v0, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;

    .line 81
    .line 82
    invoke-virtual {v2, v0}, LX/07R;->A03(Ljava/lang/Class;)LX/08p;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    if-nez v0, :cond_0

    .line 87
    .line 88
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    sget-object v0, LX/050;->A06:Ljava/lang/Integer;

    .line 93
    .line 94
    invoke-static {v0}, LX/02x;->A00(Ljava/lang/Integer;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const-string v0, "CollectorName"

    .line 99
    .line 100
    invoke-virtual {v2, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    iget-object v1, v3, LX/02m;->A00:Ljava/lang/String;

    .line 104
    .line 105
    const-string v0, "ReportCategory"

    .line 106
    .line 107
    invoke-virtual {v2, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    invoke-static {}, LX/08w;->A00()V

    .line 111
    .line 112
    .line 113
    const-string v1, "lacrima"

    .line 114
    .line 115
    const-string v0, "Cannot find registered detector"

    .line 116
    .line 117
    invoke-static {v1, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    iget-object v2, p1, LX/08K;->A00:LX/07R;

    .line 121
    .line 122
    invoke-static {v2, v4}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-static {}, LX/0AP;->A00()LX/0AP;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    const-class v0, LX/03h;

    .line 130
    .line 131
    invoke-virtual {v2, v0}, LX/07R;->A03(Ljava/lang/Class;)LX/08p;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    if-nez v0, :cond_1

    .line 136
    .line 137
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    sget-object v0, LX/050;->A06:Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-static {v0}, LX/02x;->A00(Ljava/lang/Integer;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const-string v0, "CollectorName"

    .line 148
    .line 149
    invoke-virtual {v2, v0, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    iget-object v1, v3, LX/02m;->A00:Ljava/lang/String;

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_0
    invoke-virtual {v2, v1, v3, v0}, LX/07R;->A04(LX/07P;LX/02m;LX/08p;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :pswitch_1
    const-string v0, "NativeJvmStreamConfig.jvmStreamEnabled"

    .line 160
    .line 161
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    const/4 v0, 0x1

    .line 165
    :try_start_0
    invoke-static {v0}, Lcom/facebook/breakpad/BreakpadManager;->setJvmStreamEnabled(Z)V

    .line 166
    .line 167
    .line 168
    goto :goto_2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :catch_0
    move-exception v2

    .line 170
    :try_start_1
    const-string v1, "lacrima"

    .line 171
    .line 172
    const-string v0, "Error enabling jvm stream"

    .line 173
    .line 174
    invoke-static {v1, v0, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    invoke-static {}, LX/08w;->A00()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 178
    .line 179
    .line 180
    :goto_2
    invoke-static {}, LX/04s;->A00()V

    .line 181
    .line 182
    .line 183
    return-void

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    invoke-static {}, LX/04s;->A00()V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_1
    invoke-virtual {v2, v1, v3, v0}, LX/07R;->A04(LX/07P;LX/02m;LX/08p;)V

    .line 190
    .line 191
    .line 192
    return-void

    .line 193
    nop

    .line 194
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
