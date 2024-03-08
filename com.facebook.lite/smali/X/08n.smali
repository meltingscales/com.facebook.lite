.class public abstract LX/08n;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Ljava/util/List;

.field public static final A01:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    sput-object v0, LX/08n;->A01:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, LX/08n;->A00:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method
