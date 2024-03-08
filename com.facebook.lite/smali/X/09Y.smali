.class public final enum LX/09Y;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final synthetic A03:[LX/09Y;


# instance fields
.field public final A00:Z

.field public final A01:Z

.field public final A02:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    .line 0
    const-string v2, "CREATE"

    .line 1
    .line 2
    const/4 v3, 0x0

    .line 3
    const/4 v4, 0x1

    .line 4
    new-instance v1, LX/09Y;

    .line 5
    .line 6
    move v5, v4

    .line 7
    move v6, v4

    .line 8
    invoke-direct/range {v1 .. v6}, LX/09Y;-><init>(Ljava/lang/String;IZZZ)V

    .line 9
    .line 10
    .line 11
    const-string v6, "DO_NOT_CREATE_NOT_MAIN_NOT_FOREGROUND"

    .line 12
    .line 13
    new-instance v5, LX/09Y;

    .line 14
    .line 15
    move v7, v4

    .line 16
    move v8, v3

    .line 17
    move v9, v3

    .line 18
    move v10, v3

    .line 19
    invoke-direct/range {v5 .. v10}, LX/09Y;-><init>(Ljava/lang/String;IZZZ)V

    .line 20
    .line 21
    .line 22
    const-string v7, "DO_NOT_CREATE_BACKGROUND_STARTUP"

    .line 23
    .line 24
    const/4 v8, 0x2

    .line 25
    new-instance v6, LX/09Y;

    .line 26
    .line 27
    move v10, v4

    .line 28
    move v11, v3

    .line 29
    invoke-direct/range {v6 .. v11}, LX/09Y;-><init>(Ljava/lang/String;IZZZ)V

    .line 30
    .line 31
    .line 32
    const-string v10, "DO_NOT_CREATE_NOT_MAIN"

    .line 33
    .line 34
    const/4 v11, 0x3

    .line 35
    new-instance v9, LX/09Y;

    .line 36
    .line 37
    move v12, v3

    .line 38
    move v13, v3

    .line 39
    move v14, v4

    .line 40
    invoke-direct/range {v9 .. v14}, LX/09Y;-><init>(Ljava/lang/String;IZZZ)V

    .line 41
    .line 42
    .line 43
    const/4 v0, 0x4

    .line 44
    new-array v0, v0, [LX/09Y;

    .line 45
    .line 46
    aput-object v1, v0, v3

    .line 47
    .line 48
    aput-object v5, v0, v4

    .line 49
    .line 50
    aput-object v6, v0, v8

    .line 51
    .line 52
    aput-object v9, v0, v11

    .line 53
    .line 54
    sput-object v0, LX/09Y;->A03:[LX/09Y;

    .line 55
    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZZZ)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1
    .line 2
    .line 3
    iput-boolean p3, p0, LX/09Y;->A02:Z

    .line 4
    .line 5
    iput-boolean p4, p0, LX/09Y;->A01:Z

    .line 6
    .line 7
    iput-boolean p5, p0, LX/09Y;->A00:Z

    .line 8
    .line 9
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)LX/09Y;
    .locals 1

    .line 0
    const-class v0, LX/09Y;

    .line 1
    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, LX/09Y;

    .line 7
    .line 8
    return-object v0
.end method

.method public static values()[LX/09Y;
    .locals 1

    .line 0
    sget-object v0, LX/09Y;->A03:[LX/09Y;

    .line 1
    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, [LX/09Y;

    .line 7
    .line 8
    return-object v0
.end method
