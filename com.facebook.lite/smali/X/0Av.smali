.class public abstract LX/0Av;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile A00:Z


# direct methods
.method public static A00(J)J
    .locals 8

    .line 0
    const-wide/16 v6, 0x1

    .line 1
    .line 2
    sget-wide v0, LX/00E;->A01:J

    .line 3
    .line 4
    and-long v4, v6, v0

    .line 5
    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v0, v4, v2

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-boolean v0, LX/0Av;->A00:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    sput-boolean v0, LX/0Av;->A00:Z

    .line 18
    .line 19
    const-string v0, "fburl.com/fbsystrace"

    .line 20
    .line 21
    invoke-static {v0}, Lcom/facebook/systrace/Systrace;->A03(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "USE fbsystrace"

    .line 25
    .line 26
    invoke-static {v0}, Lcom/facebook/systrace/Systrace;->A03(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string v0, "DO NOT USE systrace"

    .line 30
    .line 31
    invoke-static {v0}, Lcom/facebook/systrace/Systrace;->A03(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    sub-long/2addr p0, v0

    .line 39
    return-wide p0

    .line 40
    :cond_1
    sget-boolean v0, LX/0Av;->A00:Z

    .line 41
    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    sget-wide v0, LX/00E;->A01:J

    .line 45
    .line 46
    and-long/2addr v6, v0

    .line 47
    cmp-long v0, v6, v2

    .line 48
    .line 49
    if-nez v0, :cond_0

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    sput-boolean v0, LX/0Av;->A00:Z

    .line 53
    .line 54
    goto :goto_0
.end method
