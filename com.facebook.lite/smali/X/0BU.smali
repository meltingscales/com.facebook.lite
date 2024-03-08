.class public LX/0BU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08D;


# instance fields
.field public A00:Ljava/lang/Object;

.field public final A01:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 0
    iput p2, p0, LX/0BU;->A01:I

    .line 1
    .line 2
    iput-object p1, p0, LX/0BU;->A00:Ljava/lang/Object;

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final bridge synthetic A4O(LX/08K;)Ljava/lang/Object;
    .locals 16

    .line 0
    move-object/from16 v3, p0

    .line 1
    .line 2
    iget v0, v3, LX/0BU;->A01:I

    .line 3
    .line 4
    move-object/from16 v13, p1

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    iget-object v0, v3, LX/0BU;->A00:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, LX/06z;

    .line 12
    .line 13
    new-instance v4, LX/03P;

    .line 14
    .line 15
    invoke-direct {v4, v0}, LX/03P;-><init>(LX/06z;)V

    .line 16
    .line 17
    .line 18
    return-object v4

    .line 19
    :pswitch_0
    iget-object v2, v13, LX/08K;->A01:LX/09B;

    .line 20
    .line 21
    invoke-static {v13, v2}, LX/02h;->A00(LX/08K;Ljava/lang/Object;)LX/07R;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iget-object v0, v3, LX/0BU;->A00:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v0, LX/0BP;

    .line 28
    .line 29
    new-instance v4, LX/01k;

    .line 30
    .line 31
    invoke-direct {v4, v1, v2, v0}, LX/01k;-><init>(LX/07R;LX/09B;LX/0BP;)V

    .line 32
    .line 33
    .line 34
    return-object v4

    .line 35
    :pswitch_1
    iget-object v8, v13, LX/08K;->A01:LX/09B;

    .line 36
    .line 37
    invoke-static {v13, v8}, LX/02h;->A00(LX/08K;Ljava/lang/Object;)LX/07R;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iget-object v0, v3, LX/0BU;->A00:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Landroid/app/Application;

    .line 44
    .line 45
    new-instance v7, LX/00N;

    .line 46
    .line 47
    invoke-direct {v7, v0}, LX/00N;-><init>(Landroid/app/Application;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, v13, LX/08K;->A0N:LX/0BP;

    .line 51
    .line 52
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    check-cast v9, Ljava/lang/String;

    .line 57
    .line 58
    iget-object v10, v13, LX/08K;->A0R:LX/0BP;

    .line 59
    .line 60
    iget-object v11, v13, LX/08K;->A0L:LX/0BP;

    .line 61
    .line 62
    iget-object v12, v13, LX/08K;->A0K:LX/0BP;

    .line 63
    .line 64
    const/4 v0, 0x1

    .line 65
    new-instance v5, LX/03L;

    .line 66
    .line 67
    invoke-direct {v5, v13, v0}, LX/03L;-><init>(LX/08K;Z)V

    .line 68
    .line 69
    .line 70
    new-instance v4, LX/00O;

    .line 71
    .line 72
    invoke-direct/range {v4 .. v12}, LX/00O;-><init>(LX/03K;LX/07R;LX/00N;LX/09B;Ljava/lang/String;LX/0BP;LX/0BP;LX/0BP;)V

    .line 73
    .line 74
    .line 75
    return-object v4

    .line 76
    :pswitch_2
    iget-object v11, v3, LX/0BU;->A00:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v11, Landroid/app/Application;

    .line 79
    .line 80
    iget-object v2, v13, LX/08K;->A01:LX/09B;

    .line 81
    .line 82
    const-string v0, "Did you call earlyInit()?"

    .line 83
    .line 84
    invoke-static {v2, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v13, LX/08K;->A0C:LX/0BP;

    .line 88
    .line 89
    if-nez v1, :cond_0

    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    new-instance v1, LX/0BR;

    .line 93
    .line 94
    invoke-direct {v1, v13, v0}, LX/0BR;-><init>(LX/08K;I)V

    .line 95
    .line 96
    .line 97
    iput-object v1, v13, LX/08K;->A0C:LX/0BP;

    .line 98
    .line 99
    :cond_0
    invoke-interface {v1}, LX/0BP;->get()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v12

    .line 103
    check-cast v12, LX/06n;

    .line 104
    .line 105
    new-instance v4, LX/02o;

    .line 106
    .line 107
    move-object v10, v4

    .line 108
    move-object v14, v2

    .line 109
    move-object v15, v3

    .line 110
    invoke-direct/range {v10 .. v15}, LX/02o;-><init>(Landroid/app/Application;LX/06n;LX/08K;LX/09B;LX/0BU;)V

    .line 111
    .line 112
    .line 113
    return-object v4

    .line 114
    :pswitch_3
    const-string v0, "Missing ConfigFactory<Detector> implementation"

    .line 115
    .line 116
    invoke-static {v0}, LX/000;->A07(Ljava/lang/String;)Ljava/lang/IllegalStateException;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    throw v0

    .line 121
    nop

    .line 122
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
