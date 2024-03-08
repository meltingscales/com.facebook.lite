.class public abstract LX/03F;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:LX/03E;

.field public static final A01:Ljava/lang/Object;

.field public static final A02:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Ljava/lang/Object;

    .line 1
    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, LX/03F;->A02:Ljava/lang/Object;

    .line 6
    .line 7
    new-instance v0, Lcom/facebook/analytics/appstatelogger/foregroundstate/EntityAppState$ForegroundInit;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/facebook/analytics/appstatelogger/foregroundstate/EntityAppState$ForegroundInit;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, LX/03F;->A01:Ljava/lang/Object;

    .line 13
    .line 14
    return-void
.end method
