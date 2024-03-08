.class public final LX/05V;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/07P;


# static fields
.field public static final A01:[Ljava/lang/String;


# instance fields
.field public final A00:Landroid/app/Application;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 0
    const/16 v0, 0x9

    .line 1
    .line 2
    new-array v2, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-string v0, "android.permission.READ_CALENDAR"

    .line 6
    .line 7
    aput-object v0, v2, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const-string v0, "android.permission.CAMERA"

    .line 11
    .line 12
    aput-object v0, v2, v1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const-string v0, "android.permission.READ_CONTACTS"

    .line 16
    .line 17
    aput-object v0, v2, v1

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 21
    .line 22
    aput-object v0, v2, v1

    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 26
    .line 27
    aput-object v0, v2, v1

    .line 28
    .line 29
    const/4 v1, 0x5

    .line 30
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 31
    .line 32
    aput-object v0, v2, v1

    .line 33
    .line 34
    const/4 v1, 0x6

    .line 35
    const-string v0, "android.permission.BODY_SENSORS"

    .line 36
    .line 37
    aput-object v0, v2, v1

    .line 38
    .line 39
    const/4 v1, 0x7

    .line 40
    const-string v0, "android.permission.SEND_SMS"

    .line 41
    .line 42
    aput-object v0, v2, v1

    .line 43
    .line 44
    const/16 v1, 0x8

    .line 45
    .line 46
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 47
    .line 48
    aput-object v0, v2, v1

    .line 49
    .line 50
    sput-object v2, LX/05V;->A01:[Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/05V;->A00:Landroid/app/Application;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final ACC()Ljava/lang/Integer;
    .locals 1

    .line 0
    sget-object v0, LX/050;->A0U:Ljava/lang/Integer;

    .line 1
    .line 2
    return-object v0
.end method

.method public final AV8(LX/02u;LX/02m;)V
    .locals 7

    .line 0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1
    .line 2
    const/16 v0, 0x17

    .line 3
    .line 4
    if-lt v1, v0, :cond_4

    .line 5
    .line 6
    sget-object v2, LX/07M;->A8m:LX/05l;

    .line 7
    .line 8
    new-instance v3, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    sget-object v5, LX/05V;->A01:[Ljava/lang/String;

    .line 15
    .line 16
    const/16 v0, 0x9

    .line 17
    .line 18
    if-ge v1, v0, :cond_3

    .line 19
    .line 20
    aget-object v4, v5, v1

    .line 21
    .line 22
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    sparse-switch v0, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    :cond_0
    const-string v6, ""

    .line 30
    .line 31
    :goto_1
    const/16 v0, 0x2e

    .line 32
    .line 33
    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-ltz v0, :cond_1

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    :cond_1
    aget-object v5, v5, v1

    .line 46
    .line 47
    const/4 v4, 0x0

    .line 48
    :try_start_0
    iget-object v0, p0, LX/05V;->A00:Landroid/app/Application;

    .line 49
    .line 50
    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    const/4 v4, 0x1

    .line 57
    goto :goto_2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :catch_0
    invoke-static {}, LX/08w;->A00()V

    .line 59
    .line 60
    .line 61
    :cond_2
    :goto_2
    :try_start_1
    invoke-virtual {v3, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    goto :goto_3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    :catch_1
    move-exception v5

    .line 66
    const-string v4, "lacrima"

    .line 67
    .line 68
    const-string v0, "Caught JSONException"

    .line 69
    .line 70
    invoke-static {v4, v0, v5}, LX/06s;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, LX/08w;->A00()V

    .line 74
    .line 75
    .line 76
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :sswitch_0
    const-string v0, "android.permission.READ_SMS"

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :sswitch_1
    const-string v0, "android.permission.READ_CALENDAR"

    .line 83
    .line 84
    goto :goto_6

    .line 85
    :sswitch_2
    const-string v0, "android.permission.READ_CALL_LOG"

    .line 86
    .line 87
    goto/16 :goto_9

    .line 88
    .line 89
    :sswitch_3
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :sswitch_4
    const-string v0, "android.permission.RECEIVE_WAP_PUSH"

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :sswitch_5
    const-string v0, "android.permission.BODY_SENSORS"

    .line 96
    .line 97
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    .line 103
    const-string v6, "android.permission-group.SENSORS"

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :sswitch_6
    const-string v0, "android.permission.RECEIVE_SMS"

    .line 107
    .line 108
    goto :goto_5

    .line 109
    :sswitch_7
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 110
    .line 111
    goto :goto_7

    .line 112
    :sswitch_8
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 113
    .line 114
    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    .line 120
    const-string v6, "android.permission-group.LOCATION"

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :sswitch_9
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 124
    .line 125
    goto :goto_9

    .line 126
    :sswitch_a
    const-string v0, "android.permission.SEND_SMS"

    .line 127
    .line 128
    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    .line 134
    const-string v6, "android.permission-group.SMS"

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :sswitch_b
    const-string v0, "android.permission.CALL_PHONE"

    .line 138
    .line 139
    goto :goto_9

    .line 140
    :sswitch_c
    const-string v0, "android.permission.WRITE_CONTACTS"

    .line 141
    .line 142
    goto :goto_8

    .line 143
    :sswitch_d
    const-string v0, "android.permission.CAMERA"

    .line 144
    .line 145
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_0

    .line 150
    .line 151
    const-string v6, "android.permission-group.CAMERA"

    .line 152
    .line 153
    goto :goto_1

    .line 154
    :sswitch_e
    const-string v0, "android.permission.WRITE_CALENDAR"

    .line 155
    .line 156
    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    .line 162
    const-string v6, "android.permission-group.CALENDAR"

    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :sswitch_f
    const-string v0, "android.permission.WRITE_CALL_LOG"

    .line 167
    .line 168
    goto :goto_9

    .line 169
    :sswitch_10
    const-string v0, "android.permission.USE_SIP"

    .line 170
    .line 171
    goto :goto_9

    .line 172
    :sswitch_11
    const-string v0, "android.permission.PROCESS_OUTGOING_CALLS"

    .line 173
    .line 174
    goto :goto_9

    .line 175
    :sswitch_12
    const-string v0, "android.permission.GET_ACCOUNTS"

    .line 176
    .line 177
    goto :goto_8

    .line 178
    :sswitch_13
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 179
    .line 180
    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_0

    .line 185
    .line 186
    const-string v6, "android.permission-group.STORAGE"

    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :sswitch_14
    const-string v0, "android.permission.RECORD_AUDIO"

    .line 191
    .line 192
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v0

    .line 196
    if-eqz v0, :cond_0

    .line 197
    .line 198
    const-string v6, "android.permission-group.MICROPHONE"

    .line 199
    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :sswitch_15
    const-string v0, "android.permission.READ_CONTACTS"

    .line 203
    .line 204
    :goto_8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    .line 210
    const-string v6, "android.permission-group.CONTACTS"

    .line 211
    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :sswitch_16
    const-string v0, "com.android.voicemail.permission.ADD_VOICEMAIL"

    .line 215
    .line 216
    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    .line 222
    const-string v6, "android.permission-group.PHONE"

    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :cond_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {p1, v2, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    :cond_4
    return-void

    .line 234
    :sswitch_data_0
    .sparse-switch
        -0x7aed85b0 -> :sswitch_0
        -0x72f13779 -> :sswitch_1
        -0x7286b8f4 -> :sswitch_2
        -0x70918bc1 -> :sswitch_3
        -0x583351d1 -> :sswitch_4
        -0x49cb6684 -> :sswitch_5
        -0x3562e583 -> :sswitch_6
        -0x1833add0 -> :sswitch_7
        -0x3c1ac56 -> :sswitch_8
        -0x550ba9 -> :sswitch_9
        0x322a742 -> :sswitch_a
        0x6afff6d -> :sswitch_b
        0xcc96c13 -> :sswitch_c
        0x1b9efa65 -> :sswitch_d
        0x23fb06fe -> :sswitch_e
        0x24658583 -> :sswitch_f
        0x2ec2d2a2 -> :sswitch_10
        0x38cade52 -> :sswitch_11
        0x4bcdda0f -> :sswitch_12
        0x516a29a7 -> :sswitch_13
        0x6d24f988 -> :sswitch_14
        0x75dd2d9c -> :sswitch_15
        0x7f2f307d -> :sswitch_16
    .end sparse-switch
.end method
