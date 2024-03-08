.class public final enum LX/04X;
.super Ljava/lang/Enum;
.source ""


# static fields
.field public static final enum A01:LX/04X;

.field public static final enum A02:LX/04X;

.field public static final enum A03:LX/04X;


# instance fields
.field public final A00:C


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 0
    const-string v3, "THREAD"

    .line 1
    .line 2
    const/4 v2, 0x0

    .line 3
    const/16 v1, 0x74

    .line 4
    .line 5
    new-instance v0, LX/04X;

    .line 6
    .line 7
    invoke-direct {v0, v3, v1, v2}, LX/04X;-><init>(Ljava/lang/String;CI)V

    .line 8
    .line 9
    .line 10
    sput-object v0, LX/04X;->A03:LX/04X;

    .line 11
    .line 12
    const-string v3, "PROCESS"

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/16 v1, 0x70

    .line 16
    .line 17
    new-instance v0, LX/04X;

    .line 18
    .line 19
    invoke-direct {v0, v3, v1, v2}, LX/04X;-><init>(Ljava/lang/String;CI)V

    .line 20
    .line 21
    .line 22
    sput-object v0, LX/04X;->A02:LX/04X;

    .line 23
    .line 24
    const-string v3, "GLOBAL"

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    const/16 v1, 0x67

    .line 28
    .line 29
    new-instance v0, LX/04X;

    .line 30
    .line 31
    invoke-direct {v0, v3, v1, v2}, LX/04X;-><init>(Ljava/lang/String;CI)V

    .line 32
    .line 33
    .line 34
    sput-object v0, LX/04X;->A01:LX/04X;

    .line 35
    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;CI)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1
    .line 2
    .line 3
    iput-char p2, p0, LX/04X;->A00:C

    .line 4
    .line 5
    return-void
.end method
