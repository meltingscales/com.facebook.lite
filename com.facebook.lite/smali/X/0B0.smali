.class public final enum LX/0B0;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static A02:Ljava/util/Map;

.field public static final synthetic A03:[LX/0B0;

.field public static final enum A04:LX/0B0;

.field public static final enum A05:LX/0B0;

.field public static final enum A06:LX/0B0;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 0
    const-string v1, "XZ"

    .line 1
    .line 2
    const/4 v15, 0x0

    .line 3
    const-string v0, "assets/lib/libs.xzs"

    .line 4
    .line 5
    const-string v13, ".xzs"

    .line 6
    .line 7
    new-instance v12, LX/0B0;

    .line 8
    .line 9
    invoke-direct {v12, v1, v15, v0, v13}, LX/0B0;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "ZSTD"

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    const-string v0, "assets/lib/libs.zstd"

    .line 16
    .line 17
    const-string v11, ".zstd"

    .line 18
    .line 19
    new-instance v10, LX/0B0;

    .line 20
    .line 21
    invoke-direct {v10, v2, v1, v0, v11}, LX/0B0;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v2, "SUPERPACK_XZ"

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    const-string v0, "assets/lib/libs.spk.xz"

    .line 28
    .line 29
    const-string v9, ".spk.xz"

    .line 30
    .line 31
    new-instance v8, LX/0B0;

    .line 32
    .line 33
    invoke-direct {v8, v2, v1, v0, v9}, LX/0B0;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sput-object v8, LX/0B0;->A06:LX/0B0;

    .line 37
    .line 38
    const-string v2, "SUPERPACK_ZSTD"

    .line 39
    .line 40
    const/4 v1, 0x3

    .line 41
    const-string v0, "assets/lib/libs.spk.zst"

    .line 42
    .line 43
    const-string v7, ".spk.zst"

    .line 44
    .line 45
    new-instance v6, LX/0B0;

    .line 46
    .line 47
    invoke-direct {v6, v2, v1, v0, v7}, LX/0B0;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v2, "SUPERPACK_BR"

    .line 51
    .line 52
    const/4 v1, 0x4

    .line 53
    const-string v0, "assets/lib/libs.spk.br"

    .line 54
    .line 55
    const-string v5, ".spk.br"

    .line 56
    .line 57
    new-instance v4, LX/0B0;

    .line 58
    .line 59
    invoke-direct {v4, v2, v1, v0, v5}, LX/0B0;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sput-object v4, LX/0B0;->A04:LX/0B0;

    .line 63
    .line 64
    const-string v1, "SUPERPACK_OB"

    .line 65
    .line 66
    const/4 v14, 0x5

    .line 67
    const-string v0, "assets/lib/libs.spo"

    .line 68
    .line 69
    const-string v3, ".spo"

    .line 70
    .line 71
    new-instance v2, LX/0B0;

    .line 72
    .line 73
    invoke-direct {v2, v1, v14, v0, v3}, LX/0B0;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sput-object v2, LX/0B0;->A05:LX/0B0;

    .line 77
    .line 78
    const/4 v0, 0x6

    .line 79
    new-array v1, v0, [LX/0B0;

    .line 80
    .line 81
    aput-object v12, v1, v15

    .line 82
    .line 83
    const/4 v0, 0x1

    .line 84
    aput-object v10, v1, v0

    .line 85
    .line 86
    invoke-static {v8, v6, v4, v1}, LX/000;->A0J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    aput-object v2, v1, v14

    .line 90
    .line 91
    sput-object v1, LX/0B0;->A03:[LX/0B0;

    .line 92
    .line 93
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sput-object v0, LX/0B0;->A02:Ljava/util/Map;

    .line 98
    .line 99
    invoke-virtual {v0, v13, v12}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    sget-object v0, LX/0B0;->A02:Ljava/util/Map;

    .line 103
    .line 104
    invoke-interface {v0, v11, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    sget-object v0, LX/0B0;->A02:Ljava/util/Map;

    .line 108
    .line 109
    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    sget-object v0, LX/0B0;->A02:Ljava/util/Map;

    .line 113
    .line 114
    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    sget-object v0, LX/0B0;->A02:Ljava/util/Map;

    .line 118
    .line 119
    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    sget-object v0, LX/0B0;->A02:Ljava/util/Map;

    .line 123
    .line 124
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1
    .line 2
    .line 3
    iput-object p3, p0, LX/0B0;->A00:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, LX/0B0;->A01:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LX/0B0;
    .locals 1

    .line 0
    const-class v0, LX/0B0;

    .line 1
    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, LX/0B0;

    .line 7
    .line 8
    return-object v0
.end method

.method public static values()[LX/0B0;
    .locals 1

    .line 0
    sget-object v0, LX/0B0;->A03:[LX/0B0;

    .line 1
    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, [LX/0B0;

    .line 7
    .line 8
    return-object v0
.end method
