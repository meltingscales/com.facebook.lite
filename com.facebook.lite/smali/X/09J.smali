.class public final LX/09J;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A01:Ljava/lang/Object;

.field public static volatile A02:LX/09J;


# instance fields
.field public A00:Ljava/lang/Integer;


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
    sput-object v0, LX/09J;->A01:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, LX/09J;->A00:Ljava/lang/Integer;

    .line 5
    .line 6
    return-void
.end method

.method public static A00()LX/09J;
    .locals 2

    .line 0
    sget-object v0, LX/09J;->A02:LX/09J;

    .line 1
    .line 2
    if-nez v0, :cond_1

    .line 3
    .line 4
    sget-object v1, LX/09J;->A01:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v1

    .line 7
    :try_start_0
    sget-object v0, LX/09J;->A02:LX/09J;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    new-instance v0, LX/09J;

    .line 12
    .line 13
    invoke-direct {v0}, LX/09J;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, LX/09J;->A02:LX/09J;

    .line 17
    .line 18
    :cond_0
    monitor-exit v1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v0

    .line 23
    :cond_1
    :goto_0
    sget-object v0, LX/09J;->A02:LX/09J;

    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public final A01()Ljava/lang/Integer;
    .locals 15

    .line 0
    iget-object v10, p0, LX/09J;->A00:Ljava/lang/Integer;

    .line 1
    .line 2
    if-nez v10, :cond_c

    .line 3
    .line 4
    :try_start_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 5
    .line 6
    const/16 v0, 0x17

    .line 7
    .line 8
    if-lt v9, v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :goto_0
    const-class v1, Landroid/os/MessageQueue;

    .line 19
    .line 20
    const-string v0, "mMessages"

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/4 v8, 0x1

    .line 27
    invoke-virtual {v0, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    check-cast v7, Landroid/os/Message;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const-class v1, Landroid/os/Looper;

    .line 38
    .line 39
    const-string v0, "mQueue"

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v0, 0x1

    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    goto :goto_0

    .line 58
    :goto_1
    const/16 v6, 0x1c

    .line 59
    .line 60
    const/16 v5, 0x9f

    .line 61
    .line 62
    if-ge v9, v6, :cond_1

    .line 63
    .line 64
    const/16 v5, 0x64

    .line 65
    .line 66
    :cond_1
    const/4 v11, 0x0

    .line 67
    :goto_2
    if-eqz v7, :cond_b
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 68
    .line 69
    iget v0, v7, Landroid/os/Message;->what:I

    .line 70
    .line 71
    if-ne v0, v5, :cond_9

    .line 72
    .line 73
    if-ge v9, v6, :cond_2

    .line 74
    .line 75
    sget-object v10, LX/050;->A00:Ljava/lang/Integer;

    .line 76
    .line 77
    :goto_3
    iput-object v10, p0, LX/09J;->A00:Ljava/lang/Integer;

    .line 78
    .line 79
    return-object v10

    .line 80
    :cond_2
    const/4 v10, 0x0

    .line 81
    :try_start_1
    const-string v0, "android.app.servertransaction.ClientTransaction"

    .line 82
    .line 83
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-string v2, "getCallbacks"

    .line 88
    .line 89
    const/4 v13, 0x0

    .line 90
    new-array v0, v13, [Ljava/lang/Class;

    .line 91
    .line 92
    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 93
    .line 94
    .line 95
    move-result-object v12

    .line 96
    invoke-virtual {v12, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 97
    .line 98
    .line 99
    const-string v0, "android.app.servertransaction.LaunchActivityItem"

    .line 100
    .line 101
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    const-string v0, "mInfo"

    .line 106
    .line 107
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 112
    .line 113
    .line 114
    const-string v0, "mIntent"

    .line 115
    .line 116
    invoke-virtual {v4, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3

    .line 121
    .line 122
    .line 123
    iget-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_4

    .line 130
    .line 131
    sget-object v10, LX/050;->A0C:Ljava/lang/Integer;

    .line 132
    .line 133
    :cond_3
    :goto_4
    if-eqz v10, :cond_9

    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_4
    :try_start_2
    iget-object v1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    .line 138
    new-array v0, v13, [Ljava/lang/Object;

    .line 139
    .line 140
    invoke-virtual {v12, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    check-cast v0, Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 145
    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 147
    .line 148
    .line 149
    move-result-object v14

    .line 150
    :cond_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-eqz v0, :cond_3

    .line 155
    .line 156
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v13

    .line 160
    invoke-virtual {v4, v13}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_5

    .line 165
    .line 166
    :try_start_3
    invoke-virtual {v2, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    check-cast v12, Landroid/content/Intent;

    .line 171
    .line 172
    if-eqz v12, :cond_6

    .line 173
    .line 174
    invoke-virtual {v12}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    const-string v0, "android.intent.action.MAIN"

    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    if-eqz v0, :cond_6

    .line 185
    .line 186
    invoke-virtual {v12}, Landroid/content/Intent;->getType()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const/4 v12, 0x1

    .line 191
    if-eqz v0, :cond_7

    .line 192
    .line 193
    :cond_6
    const/4 v12, 0x0

    .line 194
    goto :goto_5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 195
    :catch_0
    move-exception v12

    .line 196
    const-string v1, "LeanBackgroundStartDetector"

    .line 197
    .line 198
    const-string v0, "Failed to find intent through reflection"

    .line 199
    .line 200
    invoke-static {v1, v0, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 201
    .line 202
    .line 203
    const/4 v12, 0x0

    .line 204
    :cond_7
    :goto_5
    :try_start_4
    invoke-virtual {v3, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    check-cast v0, Landroid/content/pm/ActivityInfo;

    .line 209
    .line 210
    if-eqz v0, :cond_5
    :try_end_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1

    .line 211
    .line 212
    iget v1, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 213
    .line 214
    const/4 v0, 0x2

    .line 215
    if-ne v1, v0, :cond_5

    .line 216
    .line 217
    if-eqz v12, :cond_8

    .line 218
    .line 219
    sget-object v10, LX/050;->A01:Ljava/lang/Integer;

    .line 220
    .line 221
    goto :goto_4

    .line 222
    :cond_8
    sget-object v10, LX/050;->A00:Ljava/lang/Integer;

    .line 223
    .line 224
    goto :goto_4

    .line 225
    :cond_9
    if-nez v11, :cond_a

    .line 226
    .line 227
    :try_start_5
    const-class v1, Landroid/os/Message;

    .line 228
    .line 229
    const-string v0, "next"

    .line 230
    .line 231
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 232
    .line 233
    .line 234
    move-result-object v11
    :try_end_5
    .catch Ljava/lang/NoSuchFieldException; {:try_start_5 .. :try_end_5} :catch_4

    .line 235
    invoke-virtual {v11, v8}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 236
    .line 237
    .line 238
    :cond_a
    :try_start_6
    invoke-virtual {v11, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v7

    .line 242
    check-cast v7, Landroid/os/Message;

    .line 243
    .line 244
    goto/16 :goto_2
    :try_end_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_6} :catch_5

    .line 245
    .line 246
    :cond_b
    sget-object v10, LX/050;->A0C:Ljava/lang/Integer;

    .line 247
    .line 248
    goto/16 :goto_3

    .line 249
    .line 250
    :catch_1
    move-exception v2

    .line 251
    const-string v1, "get_mInfo"

    .line 252
    .line 253
    new-instance v0, LX/09M;

    .line 254
    .line 255
    invoke-direct {v0, v2, v1}, LX/09M;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v0

    .line 259
    :catch_2
    move-exception v2

    .line 260
    const-string v1, "get_callbacks"

    .line 261
    .line 262
    new-instance v0, LX/09M;

    .line 263
    .line 264
    invoke-direct {v0, v2, v1}, LX/09M;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw v0

    .line 268
    :catch_3
    move-exception v2

    .line 269
    const-string v1, "init_reflection"

    .line 270
    .line 271
    new-instance v0, LX/09M;

    .line 272
    .line 273
    invoke-direct {v0, v2, v1}, LX/09M;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    throw v0

    .line 277
    :catch_4
    move-exception v2

    .line 278
    const-string v1, "get_next_field"

    .line 279
    .line 280
    new-instance v0, LX/09M;

    .line 281
    .line 282
    invoke-direct {v0, v2, v1}, LX/09M;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw v0

    .line 286
    :catch_5
    move-exception v2

    .line 287
    const-string v1, "get_next"

    .line 288
    .line 289
    new-instance v0, LX/09M;

    .line 290
    .line 291
    invoke-direct {v0, v2, v1}, LX/09M;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    throw v0

    .line 295
    :catch_6
    move-exception v2

    .line 296
    const-string v1, "get_ui_message"

    .line 297
    .line 298
    new-instance v0, LX/09M;

    .line 299
    .line 300
    invoke-direct {v0, v2, v1}, LX/09M;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 301
    .line 302
    .line 303
    throw v0

    .line 304
    :cond_c
    return-object v10
.end method
