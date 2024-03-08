.class public abstract LX/09P;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static A00(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2

    .line 0
    invoke-static {p0}, LX/09g;->A01(Landroid/content/Context;)LX/099;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object p0, v0, LX/099;->A00:Landroid/net/NetworkInfo;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v0, 0x1

    .line 19
    if-ne v1, v0, :cond_0

    .line 20
    .line 21
    sget-object v0, LX/050;->A0c:Ljava/lang/Integer;

    .line 22
    .line 23
    return-object v0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    packed-switch v0, :pswitch_data_0

    .line 35
    .line 36
    .line 37
    :cond_1
    sget-object v0, LX/050;->A01:Ljava/lang/Integer;

    .line 38
    .line 39
    return-object v0

    .line 40
    :pswitch_0
    sget-object v0, LX/050;->A0C:Ljava/lang/Integer;

    .line 41
    .line 42
    return-object v0

    .line 43
    :pswitch_1
    sget-object v0, LX/050;->A0N:Ljava/lang/Integer;

    .line 44
    .line 45
    return-object v0

    .line 46
    :pswitch_2
    sget-object v0, LX/050;->A0V:Ljava/lang/Integer;

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    sget-object v0, LX/050;->A00:Ljava/lang/Integer;

    .line 50
    .line 51
    return-object v0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static A01(Landroid/content/Context;)Z
    .locals 5

    .line 0
    const/4 v4, 0x0

    .line 1
    invoke-static {p0}, LX/09g;->A00(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_6

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    const/4 v1, 0x1

    .line 13
    invoke-static {p0}, LX/09g;->A00(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-nez v0, :cond_5

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    :goto_1
    const/4 v1, 0x6

    .line 25
    invoke-static {p0}, LX/09g;->A00(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_4

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_2
    if-eqz v3, :cond_0

    .line 37
    .line 38
    iget-object v0, v3, LX/099;->A00:Landroid/net/NetworkInfo;

    .line 39
    .line 40
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    :cond_0
    if-eqz v2, :cond_1

    .line 47
    .line 48
    iget-object v0, v2, LX/099;->A00:Landroid/net/NetworkInfo;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    :cond_1
    if-eqz v1, :cond_3

    .line 57
    .line 58
    iget-object v0, v1, LX/099;->A00:Landroid/net/NetworkInfo;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_3

    .line 65
    .line 66
    :cond_2
    const/4 v4, 0x1

    .line 67
    :cond_3
    return v4

    .line 68
    :cond_4
    new-instance v1, LX/099;

    .line 69
    .line 70
    invoke-direct {v1, v0}, LX/099;-><init>(Landroid/net/NetworkInfo;)V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_5
    new-instance v2, LX/099;

    .line 75
    .line 76
    invoke-direct {v2, v0}, LX/099;-><init>(Landroid/net/NetworkInfo;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_6
    new-instance v3, LX/099;

    .line 81
    .line 82
    invoke-direct {v3, v0}, LX/099;-><init>(Landroid/net/NetworkInfo;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0
.end method

.method public static A02(Landroid/content/Context;)Z
    .locals 3

    .line 0
    invoke-static {p0}, LX/09P;->A01(Landroid/content/Context;)Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p0}, LX/09g;->A00(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance v0, LX/099;

    .line 19
    .line 20
    invoke-direct {v0, v1}, LX/099;-><init>(Landroid/net/NetworkInfo;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, v0, LX/099;->A00:Landroid/net/NetworkInfo;

    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    :cond_0
    return v2
.end method
