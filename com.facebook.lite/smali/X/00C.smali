.class public final enum LX/00C;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final synthetic A00:[LX/00C;

.field public static final enum A01:LX/00C;

.field public static final enum A02:LX/00C;

.field public static final enum A03:LX/00C;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 0
    const-string v0, "YES"

    .line 1
    .line 2
    const/4 v6, 0x0

    .line 3
    new-instance v5, LX/00C;

    .line 4
    .line 5
    invoke-direct {v5, v0, v6}, LX/00C;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    sput-object v5, LX/00C;->A03:LX/00C;

    .line 9
    .line 10
    const-string v0, "NO"

    .line 11
    .line 12
    const/4 v4, 0x1

    .line 13
    new-instance v3, LX/00C;

    .line 14
    .line 15
    invoke-direct {v3, v0, v4}, LX/00C;-><init>(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    sput-object v3, LX/00C;->A01:LX/00C;

    .line 19
    .line 20
    const-string v0, "UNSET"

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    new-instance v1, LX/00C;

    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, LX/00C;-><init>(Ljava/lang/String;I)V

    .line 26
    .line 27
    .line 28
    sput-object v1, LX/00C;->A02:LX/00C;

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [LX/00C;

    .line 32
    .line 33
    aput-object v5, v0, v6

    .line 34
    .line 35
    aput-object v3, v0, v4

    .line 36
    .line 37
    aput-object v1, v0, v2

    .line 38
    .line 39
    sput-object v0, LX/00C;->A00:[LX/00C;

    .line 40
    .line 41
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

.method public static valueOf(Ljava/lang/String;)LX/00C;
    .locals 1

    .line 0
    const-class v0, LX/00C;

    .line 1
    .line 2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, LX/00C;

    .line 7
    .line 8
    return-object v0
.end method

.method public static values()[LX/00C;
    .locals 1

    .line 0
    sget-object v0, LX/00C;->A00:[LX/00C;

    .line 1
    .line 2
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    check-cast v0, [LX/00C;

    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public final A00()Z
    .locals 3

    .line 0
    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 2
    .line 3
    .line 4
    move-result v1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq v1, v2, :cond_1

    .line 7
    .line 8
    if-eq v1, v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq v1, v0, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "Unrecognized TriState value: "

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_0
    return v2

    .line 37
    :cond_1
    return v0
.end method
