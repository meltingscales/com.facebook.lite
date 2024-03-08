.class public final enum LX/06c;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final synthetic A00:[LX/06c;

.field public static final enum A01:LX/06c;

.field public static final enum A02:LX/06c;

.field public static final enum A03:LX/06c;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 0
    const-string v0, "RUNNING_CRITICAL"

    .line 1
    .line 2
    const/4 v15, 0x0

    .line 3
    new-instance v14, LX/06c;

    .line 4
    .line 5
    invoke-direct {v14, v0, v15}, LX/06c;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    const-string v0, "RUNNING_MODERATE"

    .line 9
    .line 10
    const/4 v13, 0x1

    .line 11
    new-instance v12, LX/06c;

    .line 12
    .line 13
    invoke-direct {v12, v0, v13}, LX/06c;-><init>(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    const-string v0, "RUNNING_LOW"

    .line 17
    .line 18
    const/4 v11, 0x2

    .line 19
    new-instance v10, LX/06c;

    .line 20
    .line 21
    invoke-direct {v10, v0, v11}, LX/06c;-><init>(Ljava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    const-string v0, "BACKGROUND"

    .line 25
    .line 26
    const/4 v9, 0x3

    .line 27
    new-instance v8, LX/06c;

    .line 28
    .line 29
    invoke-direct {v8, v0, v9}, LX/06c;-><init>(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    const-string v0, "MODERATE"

    .line 33
    .line 34
    const/4 v7, 0x4

    .line 35
    new-instance v6, LX/06c;

    .line 36
    .line 37
    invoke-direct {v6, v0, v7}, LX/06c;-><init>(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    const-string v1, "COMPLETE"

    .line 41
    .line 42
    const/4 v5, 0x5

    .line 43
    new-instance v0, LX/06c;

    .line 44
    .line 45
    invoke-direct {v0, v1, v5}, LX/06c;-><init>(Ljava/lang/String;I)V

    .line 46
    .line 47
    .line 48
    sput-object v0, LX/06c;->A01:LX/06c;

    .line 49
    .line 50
    const-string v2, "UI_HIDDEN"

    .line 51
    .line 52
    const/4 v1, 0x6

    .line 53
    new-instance v4, LX/06c;

    .line 54
    .line 55
    invoke-direct {v4, v2, v1}, LX/06c;-><init>(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    sput-object v4, LX/06c;->A03:LX/06c;

    .line 59
    .line 60
    const-string v1, "JAVA_HEAP_ALMOST_FULL"

    .line 61
    .line 62
    const/4 v3, 0x7

    .line 63
    new-instance v2, LX/06c;

    .line 64
    .line 65
    invoke-direct {v2, v1, v3}, LX/06c;-><init>(Ljava/lang/String;I)V

    .line 66
    .line 67
    .line 68
    sput-object v2, LX/06c;->A02:LX/06c;

    .line 69
    .line 70
    const/16 v1, 0x8

    .line 71
    .line 72
    new-array v1, v1, [LX/06c;

    .line 73
    .line 74
    aput-object v14, v1, v15

    .line 75
    .line 76
    aput-object v12, v1, v13

    .line 77
    .line 78
    aput-object v10, v1, v11

    .line 79
    .line 80
    aput-object v8, v1, v9

    .line 81
    .line 82
    aput-object v6, v1, v7

    .line 83
    .line 84
    aput-object v0, v1, v5

    .line 85
    .line 86
    const/4 v0, 0x6

    .line 87
    aput-object v4, v1, v0

    .line 88
    .line 89
    aput-object v2, v1, v3

    .line 90
    .line 91
    sput-object v1, LX/06c;->A00:[LX/06c;

    .line 92
    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1
    .line 2
    .line 3
    return-void
.end method

.method public static values()[LX/06c;
    .locals 1

    .line 0
    sget-object v0, LX/06c;->A00:[LX/06c;

    .line 1
    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, [LX/06c;

    .line 7
    .line 8
    return-object v0
.end method
