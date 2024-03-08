.class public abstract LX/07l;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V
    .locals 3

    .line 0
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 1
    .line 2
    .line 3
    move-result-object v2

    .line 4
    invoke-virtual {v2, p5}, Ljava/util/AbstractMap;->putAll(Ljava/util/Map;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1, p2, p3, v2}, LX/07k;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, LX/07M;->A4A:LX/05l;

    .line 11
    .line 12
    const-string v0, "j"

    .line 13
    .line 14
    invoke-static {v1, v0, v2}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 15
    .line 16
    .line 17
    if-eqz p4, :cond_0

    .line 18
    .line 19
    invoke-static {p4}, LX/07F;->A01(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v0, LX/07M;->A5x:LX/05l;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, LX/07k;->A00()LX/07k;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v0, "android_critical_java"

    .line 33
    .line 34
    invoke-virtual {v1, v0, v2}, LX/07k;->A06(Ljava/lang/String;Ljava/util/Map;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v2}, LX/07k;->A05(Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, LX/07k;->A00()LX/07k;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-string v0, "android_large_java"

    .line 45
    .line 46
    invoke-virtual {v1, v0, v2}, LX/07k;->A06(Ljava/lang/String;Ljava/util/Map;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
