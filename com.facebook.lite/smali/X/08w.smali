.class public abstract LX/08w;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:LX/0B7;


# direct methods
.method public static A00()V
    .locals 1

    .line 0
    sget-object v0, LX/08w;->A00:LX/0B7;

    .line 1
    .line 2
    if-nez v0, :cond_0

    .line 3
    .line 4
    new-instance v0, LX/0B7;

    .line 5
    .line 6
    invoke-direct {v0}, LX/0B7;-><init>()V

    .line 7
    .line 8
    .line 9
    sput-object v0, LX/08w;->A00:LX/0B7;

    .line 10
    .line 11
    :cond_0
    return-void
.end method
