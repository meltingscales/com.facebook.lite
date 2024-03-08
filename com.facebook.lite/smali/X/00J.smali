.class public final enum LX/00J;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final A02:LX/00J;

.field public static final synthetic A03:[LX/00J;

.field public static final enum A04:LX/00J;

.field public static final enum A05:LX/00J;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 0
    const-string v2, "MINI"

    .line 1
    .line 2
    const/4 v10, 0x0

    .line 3
    const-string v1, "192.0.2.1"

    .line 4
    .line 5
    const-string v0, "edge-fblite-dev-mini"

    .line 6
    .line 7
    new-instance v9, LX/00J;

    .line 8
    .line 9
    invoke-direct {v9, v2, v10, v1, v0}, LX/00J;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v9, LX/00J;->A04:LX/00J;

    .line 13
    .line 14
    const-string v2, "POOL1"

    .line 15
    .line 16
    const/4 v8, 0x1

    .line 17
    const-string v1, "203.0.113.2"

    .line 18
    .line 19
    const-string v0, "edge-fblite-dev-p1"

    .line 20
    .line 21
    new-instance v7, LX/00J;

    .line 22
    .line 23
    invoke-direct {v7, v2, v8, v1, v0}, LX/00J;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v7, LX/00J;->A05:LX/00J;

    .line 27
    .line 28
    const-string v2, "INSTAGRAM_P42"

    .line 29
    .line 30
    const/4 v6, 0x2

    .line 31
    const-string v1, "192.0.2.5"

    .line 32
    .line 33
    const-string v0, "edge-iglite-dev-p42"

    .line 34
    .line 35
    new-instance v5, LX/00J;

    .line 36
    .line 37
    invoke-direct {v5, v2, v6, v1, v0}, LX/00J;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v4, "INSTAGRAM_P3"

    .line 41
    .line 42
    const/4 v3, 0x3

    .line 43
    const-string v2, "203.0.113.5"

    .line 44
    .line 45
    const-string v0, "edge-iglite-dev-p3"

    .line 46
    .line 47
    new-instance v1, LX/00J;

    .line 48
    .line 49
    invoke-direct {v1, v4, v3, v2, v0}, LX/00J;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x4

    .line 53
    new-array v0, v0, [LX/00J;

    .line 54
    .line 55
    aput-object v9, v0, v10

    .line 56
    .line 57
    aput-object v7, v0, v8

    .line 58
    .line 59
    aput-object v5, v0, v6

    .line 60
    .line 61
    aput-object v1, v0, v3

    .line 62
    .line 63
    sput-object v0, LX/00J;->A03:[LX/00J;

    .line 64
    .line 65
    sput-object v7, LX/00J;->A02:LX/00J;

    .line 66
    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1
    .line 2
    .line 3
    iput-object p3, p0, LX/00J;->A01:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p4, p0, LX/00J;->A00:Ljava/lang/String;

    .line 6
    .line 7
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LX/00J;
    .locals 1

    .line 0
    const-class v0, LX/00J;

    .line 1
    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, LX/00J;

    .line 7
    .line 8
    return-object v0
.end method

.method public static values()[LX/00J;
    .locals 1

    .line 0
    sget-object v0, LX/00J;->A03:[LX/00J;

    .line 1
    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, [LX/00J;

    .line 7
    .line 8
    return-object v0
.end method
