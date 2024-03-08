.class public LX/0BT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08D;


# instance fields
.field public A00:Ljava/lang/Object;

.field public A01:Ljava/lang/Object;

.field public final A02:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 0
    iput p1, p0, LX/0BT;->A02:I

    .line 1
    .line 2
    iput-object p2, p0, LX/0BT;->A00:Ljava/lang/Object;

    .line 3
    .line 4
    iput-object p3, p0, LX/0BT;->A01:Ljava/lang/Object;

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
    .locals 8

    .line 0
    iget v0, p0, LX/0BT;->A02:I

    .line 1
    .line 2
    packed-switch v0, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    iget-object v7, p1, LX/08K;->A01:LX/09B;

    .line 6
    .line 7
    invoke-static {p1, v7}, LX/02h;->A00(LX/08K;Ljava/lang/Object;)LX/07R;

    .line 8
    .line 9
    .line 10
    move-result-object v6

    .line 11
    iget-object p1, p0, LX/0BT;->A01:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, LX/0BP;

    .line 14
    .line 15
    iget-object v5, p0, LX/0BT;->A00:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v5, LX/06z;

    .line 18
    .line 19
    new-instance v4, LX/03W;

    .line 20
    .line 21
    invoke-direct/range {v4 .. v9}, LX/03W;-><init>(LX/06z;LX/07R;LX/09B;LX/0BT;LX/0BP;)V

    .line 22
    .line 23
    .line 24
    return-object v4

    .line 25
    :pswitch_0
    iget-object v2, p0, LX/0BT;->A00:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Landroid/app/Application;

    .line 28
    .line 29
    iget-object v1, p0, LX/0BT;->A01:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, LX/0B6;

    .line 32
    .line 33
    invoke-static {p1}, LX/000;->A00(LX/08K;)LX/03H;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v4, LX/01l;

    .line 38
    .line 39
    invoke-direct {v4, v2, v1, v0}, LX/01l;-><init>(Landroid/app/Application;LX/0B6;LX/03H;)V

    .line 40
    .line 41
    .line 42
    return-object v4

    .line 43
    :pswitch_1
    iget-object v2, p0, LX/0BT;->A00:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Landroid/app/Application;

    .line 46
    .line 47
    iget-object v1, p0, LX/0BT;->A01:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, LX/0B6;

    .line 50
    .line 51
    invoke-static {p1}, LX/000;->A00(LX/08K;)LX/03H;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v4, LX/03J;

    .line 56
    .line 57
    invoke-direct {v4, v2, v1, v0}, LX/03J;-><init>(Landroid/app/Application;LX/0B6;LX/03H;)V

    .line 58
    .line 59
    .line 60
    return-object v4

    .line 61
    :pswitch_2
    iget-object v2, p0, LX/0BT;->A00:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Landroid/app/Application;

    .line 64
    .line 65
    iget-object v1, p0, LX/0BT;->A01:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, LX/0B6;

    .line 68
    .line 69
    invoke-static {p1}, LX/000;->A00(LX/08K;)LX/03H;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v4, LX/00Q;

    .line 74
    .line 75
    invoke-direct {v4, v2, v1, v0}, LX/00Q;-><init>(Landroid/app/Application;LX/0B6;LX/03H;)V

    .line 76
    .line 77
    .line 78
    return-object v4

    .line 79
    :pswitch_3
    iget-object v2, p0, LX/0BT;->A00:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v2, Landroid/app/Application;

    .line 82
    .line 83
    iget-object v1, p0, LX/0BT;->A01:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v1, LX/0B6;

    .line 86
    .line 87
    invoke-static {p1}, LX/000;->A00(LX/08K;)LX/03H;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    new-instance v4, LX/03i;

    .line 92
    .line 93
    invoke-direct {v4, v2, v1, v0}, LX/03i;-><init>(Landroid/app/Application;LX/0B6;LX/03H;)V

    .line 94
    .line 95
    .line 96
    return-object v4

    .line 97
    :pswitch_4
    iget-object v2, p0, LX/0BT;->A00:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v2, Landroid/app/Application;

    .line 100
    .line 101
    iget-object v1, p0, LX/0BT;->A01:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v1, LX/0B6;

    .line 104
    .line 105
    invoke-static {p1}, LX/000;->A00(LX/08K;)LX/03H;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    new-instance v4, LX/00L;

    .line 110
    .line 111
    invoke-direct {v4, v2, v1, v0}, LX/00L;-><init>(Landroid/app/Application;LX/0B6;LX/03H;)V

    .line 112
    .line 113
    .line 114
    return-object v4

    .line 115
    :pswitch_5
    iget-object v3, p0, LX/0BT;->A01:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v3, Landroid/app/Application;

    .line 118
    .line 119
    iget-object v2, p1, LX/08K;->A01:LX/09B;

    .line 120
    .line 121
    invoke-static {p1, v2}, LX/02h;->A00(LX/08K;Ljava/lang/Object;)LX/07R;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iget-object v0, p0, LX/0BT;->A00:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v0, LX/0BP;

    .line 128
    .line 129
    new-instance v4, LX/01m;

    .line 130
    .line 131
    invoke-direct {v4, v3, v1, v2, v0}, LX/01m;-><init>(Landroid/app/Application;LX/07R;LX/09B;LX/0BP;)V

    .line 132
    .line 133
    .line 134
    return-object v4

    .line 135
    :pswitch_6
    iget-object v2, p0, LX/0BT;->A00:Ljava/lang/Object;

    .line 136
    .line 137
    check-cast v2, Landroid/app/Application;

    .line 138
    .line 139
    iget-object v1, p0, LX/0BT;->A01:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast v1, LX/0B6;

    .line 142
    .line 143
    invoke-static {p1}, LX/000;->A00(LX/08K;)LX/03H;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    new-instance v4, LX/03X;

    .line 148
    .line 149
    invoke-direct {v4, v2, v1, v0}, LX/03X;-><init>(Landroid/app/Application;LX/0B6;LX/03H;)V

    .line 150
    .line 151
    .line 152
    return-object v4

    .line 153
    nop

    .line 154
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
