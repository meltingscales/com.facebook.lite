.class public abstract LX/09Q;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(LX/0Au;)LX/09i;
    .locals 8

    .line 0
    iget-object v7, p0, LX/0Au;->A00:Landroid/content/Context;

    .line 1
    .line 2
    iget-object v6, p0, LX/0Au;->A01:Ljava/lang/String;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-virtual {v7, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v0, "early_connection_default_timeout_mills"

    .line 10
    .line 11
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    const/4 v4, 0x0

    .line 16
    if-eqz v5, :cond_0

    .line 17
    .line 18
    if-ltz v5, :cond_0

    .line 19
    .line 20
    invoke-virtual {v7, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v0, "early_socket_connection_host"

    .line 25
    .line 26
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    if-eqz v3, :cond_0

    .line 31
    .line 32
    invoke-virtual {v7, v6, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v1, "early_socket_connection_port"

    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    invoke-interface {v2, v1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eq v1, v0, :cond_0

    .line 44
    .line 45
    new-instance v0, LX/09j;

    .line 46
    .line 47
    invoke-direct {v0, v3, v1}, LX/09j;-><init>(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    new-instance v4, LX/09i;

    .line 51
    .line 52
    invoke-direct {v4, v0, v5}, LX/09i;-><init>(LX/09j;I)V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-object v4
.end method
