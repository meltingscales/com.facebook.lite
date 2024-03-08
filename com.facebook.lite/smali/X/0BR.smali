.class public LX/0BR;
.super LX/05K;
.source ""


# instance fields
.field public A00:Ljava/lang/Object;

.field public final A01:I


# direct methods
.method public constructor <init>(LX/08K;I)V
    .locals 0

    .line 0
    iput p2, p0, LX/0BR;->A01:I

    .line 1
    .line 2
    iput-object p1, p0, LX/0BR;->A00:Ljava/lang/Object;

    .line 3
    .line 4
    invoke-direct {p0}, LX/05K;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final bridge synthetic A00()Ljava/lang/Object;
    .locals 4

    .line 0
    iget v0, p0, LX/0BR;->A01:I

    .line 1
    .line 2
    packed-switch v0, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    const-string v0, "ReportAssembler"

    .line 6
    .line 7
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    iget-object v2, p0, LX/0BR;->A00:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast v2, LX/08K;

    .line 13
    .line 14
    iget-object v3, v2, LX/08K;->A01:LX/09B;

    .line 15
    .line 16
    const-string v0, "Did you call earlyInit()?"

    .line 17
    .line 18
    invoke-static {v3, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v2, LX/08K;->A07:LX/0BP;

    .line 22
    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x3

    .line 26
    new-instance v1, LX/0BR;

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, LX/0BR;-><init>(LX/08K;I)V

    .line 29
    .line 30
    .line 31
    iput-object v1, v2, LX/08K;->A07:LX/0BP;

    .line 32
    .line 33
    :cond_0
    invoke-interface {v1}, LX/0BP;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, LX/05b;

    .line 38
    .line 39
    new-instance v2, LX/03H;

    .line 40
    .line 41
    invoke-direct {v2, v0, v3}, LX/03H;-><init>(LX/05b;LX/09B;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    invoke-static {}, LX/04s;->A00()V

    .line 45
    .line 46
    .line 47
    return-object v2

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    invoke-static {}, LX/04s;->A00()V

    .line 50
    .line 51
    .line 52
    throw v0

    .line 53
    :pswitch_0
    iget-object v0, p0, LX/0BR;->A00:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, LX/08K;

    .line 56
    .line 57
    iget-object v0, v0, LX/08K;->A0F:Landroid/app/Application;

    .line 58
    .line 59
    new-instance v2, LX/06n;

    .line 60
    .line 61
    invoke-direct {v2, v0}, LX/06n;-><init>(Landroid/app/Application;)V

    .line 62
    .line 63
    .line 64
    return-object v2

    .line 65
    :pswitch_1
    iget-object v0, p0, LX/0BR;->A00:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v0, LX/08K;

    .line 68
    .line 69
    iget-object v1, v0, LX/08K;->A01:LX/09B;

    .line 70
    .line 71
    const-string v0, "Did you call earlyInit()?"

    .line 72
    .line 73
    invoke-static {v1, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v1, v1, LX/09B;->A04:LX/05J;

    .line 77
    .line 78
    const-string v0, "Did you call SessionManager.init()?"

    .line 79
    .line 80
    invoke-static {v1, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, v1, LX/05J;->A01:LX/07W;

    .line 84
    .line 85
    iget-object v0, v0, LX/07W;->A01:Ljava/io/File;

    .line 86
    .line 87
    new-instance v2, LX/030;

    .line 88
    .line 89
    invoke-direct {v2, v0}, LX/030;-><init>(Ljava/io/File;)V

    .line 90
    .line 91
    .line 92
    return-object v2

    .line 93
    :pswitch_2
    iget-object v0, p0, LX/0BR;->A00:Ljava/lang/Object;

    .line 94
    .line 95
    check-cast v0, LX/08K;

    .line 96
    .line 97
    iget-object v1, v0, LX/08K;->A0F:Landroid/app/Application;

    .line 98
    .line 99
    iget-object v0, v0, LX/08K;->A0N:LX/0BP;

    .line 100
    .line 101
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Ljava/lang/String;

    .line 106
    .line 107
    new-instance v2, LX/033;

    .line 108
    .line 109
    invoke-direct {v2, v1, v0}, LX/033;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    return-object v2

    .line 113
    :pswitch_3
    iget-object v2, p0, LX/0BR;->A00:Ljava/lang/Object;

    .line 114
    .line 115
    check-cast v2, LX/08K;

    .line 116
    .line 117
    iget-object v1, v2, LX/08K;->A05:LX/0BP;

    .line 118
    .line 119
    if-nez v1, :cond_1

    .line 120
    .line 121
    const/4 v0, 0x4

    .line 122
    new-instance v1, LX/0BR;

    .line 123
    .line 124
    invoke-direct {v1, v2, v0}, LX/0BR;-><init>(LX/08K;I)V

    .line 125
    .line 126
    .line 127
    iput-object v1, v2, LX/08K;->A05:LX/0BP;

    .line 128
    .line 129
    :cond_1
    invoke-interface {v1}, LX/0BP;->get()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, LX/057;

    .line 134
    .line 135
    new-instance v2, LX/05b;

    .line 136
    .line 137
    invoke-direct {v2, v0}, LX/05b;-><init>(LX/057;)V

    .line 138
    .line 139
    .line 140
    return-object v2

    .line 141
    :pswitch_4
    new-instance v2, LX/057;

    .line 142
    .line 143
    invoke-direct {v2, p0}, LX/057;-><init>(LX/0BR;)V

    .line 144
    .line 145
    .line 146
    return-object v2

    .line 147
    nop

    .line 148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
