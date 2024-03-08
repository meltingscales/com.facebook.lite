.class public abstract LX/022;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1
    .line 2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    .line 4
    .line 5
    const-string v0, "Null metadata in caller identity, API="

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, LX/022;->A00:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public static A00(Landroid/content/Context;Landroid/content/Intent;LX/005;I)LX/02J;
    .locals 18

    .line 0
    const-string v13, "r"

    .line 1
    .line 2
    const-string v12, "t"

    .line 3
    .line 4
    const-string v11, "v"

    .line 5
    .line 6
    const-string v10, "d"

    .line 7
    .line 8
    const/4 v5, 0x0

    .line 9
    move-object/from16 v3, p1

    .line 10
    .line 11
    move-object/from16 v8, p2

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    const-string v0, "Null launching intent."

    .line 16
    .line 17
    invoke-static {v8, v0, v5}, LX/022;->A03(LX/005;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-object v5

    .line 21
    :cond_0
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    .line 23
    const/16 v2, 0x11

    .line 24
    .line 25
    if-ge v9, v2, :cond_1

    .line 26
    .line 27
    const-string v0, "Skipping caller identity metadata check on API <= 17."

    .line 28
    .line 29
    invoke-static {v8, v0, v5}, LX/022;->A03(LX/005;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    const/16 v16, 0x0

    .line 33
    .line 34
    const/16 v17, 0x0

    .line 35
    .line 36
    const-string v1, "_ci_"

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    const-string v0, "Missing caller identity intent extra."

    .line 45
    .line 46
    invoke-static {v8, v0, v5}, LX/022;->A03(LX/005;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    return-object v5

    .line 50
    :cond_2
    invoke-virtual {v3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    check-cast v7, Landroid/app/PendingIntent;

    .line 55
    .line 56
    if-nez v7, :cond_4

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    const-string v0, "Null caller identity intent extra."

    .line 71
    .line 72
    invoke-static {v8, v0, v5}, LX/022;->A03(LX/005;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    .line 74
    .line 75
    return-object v5

    .line 76
    :cond_3
    const-string v0, "Caller identity extra is not a PendingIntent."

    .line 77
    .line 78
    invoke-static {v8, v0, v5}, LX/022;->A03(LX/005;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    return-object v5

    .line 82
    :cond_4
    move-object/from16 v1, p0

    .line 83
    .line 84
    if-lt v9, v2, :cond_5

    .line 85
    .line 86
    invoke-static {v7}, LX/0Ab;->A01(Landroid/app/PendingIntent;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    invoke-static {v7}, LX/0Ab;->A00(Landroid/app/PendingIntent;)I

    .line 91
    .line 92
    .line 93
    move-result v14

    .line 94
    :goto_0
    if-nez v6, :cond_6

    .line 95
    .line 96
    return-object v5

    .line 97
    :cond_5
    invoke-virtual {v7}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v6

    .line 101
    invoke-static {v1, v6}, LX/023;->A01(Landroid/content/Context;Ljava/lang/String;)LX/024;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v0, v0, LX/024;->A00:Landroid/content/pm/ApplicationInfo;

    .line 106
    .line 107
    iget v14, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    :try_start_0
    invoke-static {v1, v6}, LX/023;->A02(Landroid/content/Context;Ljava/lang/String;)LX/01p;

    .line 111
    .line 112
    .line 113
    move-result-object v15

    .line 114
    const/4 v4, 0x0

    .line 115
    const/16 v0, 0x18

    .line 116
    .line 117
    if-lt v9, v0, :cond_7
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6

    .line 118
    .line 119
    :try_start_1
    const-class v3, Landroid/app/PendingIntent;

    .line 120
    .line 121
    const/4 v2, 0x1

    .line 122
    new-array v1, v2, [Ljava/lang/Class;

    .line 123
    .line 124
    const-class v0, Ljava/lang/String;

    .line 125
    .line 126
    aput-object v0, v1, v4

    .line 127
    .line 128
    const-string v0, "getTag"

    .line 129
    .line 130
    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    new-array v2, v2, [Ljava/lang/Object;

    .line 135
    .line 136
    const-string v0, ""

    .line 137
    .line 138
    aput-object v0, v2, v4

    .line 139
    .line 140
    invoke-virtual {v1, v7, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Ljava/lang/String;

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_7
    const/16 v0, 0x12

    .line 148
    .line 149
    if-lt v9, v0, :cond_d

    .line 150
    .line 151
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    new-array v0, v4, [Ljava/lang/Class;

    .line 156
    .line 157
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    check-cast v2, [Ljava/lang/Class;

    .line 162
    .line 163
    const-class v1, Landroid/app/PendingIntent;

    .line 164
    .line 165
    const-string v0, "getIntent"

    .line 166
    .line 167
    invoke-virtual {v1, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    new-array v0, v4, [Ljava/lang/Object;

    .line 172
    .line 173
    invoke-virtual {v1, v7, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Landroid/content/Intent;

    .line 178
    .line 179
    if-eqz v0, :cond_d

    .line 180
    .line 181
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    :goto_1
    if-eqz v1, :cond_d

    .line 186
    .line 187
    const/16 v0, 0xb
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    .line 188
    .line 189
    :try_start_2
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    const-string v1, "UTF-8"

    .line 194
    .line 195
    new-instance v0, Ljava/lang/String;

    .line 196
    .line 197
    invoke-direct {v0, v2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 198
    .line 199
    .line 200
    new-instance v3, Lorg/json/JSONObject;

    .line 201
    .line 202
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_8

    .line 210
    .line 211
    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v17

    .line 215
    :cond_8
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_9

    .line 220
    .line 221
    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v16

    .line 225
    :cond_9
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    const-wide/16 v9, -0x1

    .line 230
    .line 231
    if-eqz v0, :cond_b

    .line 232
    .line 233
    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 238
    .line 239
    .line 240
    move-result-wide v1

    .line 241
    :goto_2
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_a

    .line 246
    .line 247
    invoke-virtual {v3, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 252
    .line 253
    .line 254
    move-result-wide v9

    .line 255
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 256
    .line 257
    .line 258
    move-result-wide v3

    .line 259
    goto :goto_3

    .line 260
    :cond_b
    const-wide/16 v1, -0x1

    .line 261
    .line 262
    goto :goto_2

    .line 263
    :goto_3
    sub-long/2addr v3, v1

    .line 264
    move/from16 v0, p3

    .line 265
    .line 266
    int-to-long v0, v0

    .line 267
    cmp-long v2, v3, v0

    .line 268
    .line 269
    if-ltz v2, :cond_c

    .line 270
    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 272
    .line 273
    .line 274
    move-result-wide v3

    .line 275
    sub-long/2addr v3, v9

    .line 276
    cmp-long v2, v3, v0

    .line 277
    .line 278
    if-ltz v2, :cond_c

    .line 279
    .line 280
    const-string v0, "Caller identity has expired."

    .line 281
    .line 282
    invoke-static {v8, v0, v5}, LX/022;->A03(LX/005;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .line 284
    .line 285
    return-object v5

    .line 286
    :cond_c
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    new-instance v15, LX/02J;

    .line 295
    .line 296
    move/from16 p2, v14

    .line 297
    .line 298
    invoke-direct/range {v15 .. v20}, LX/02J;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 299
    .line 300
    .line 301
    return-object v15
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 302
    :catch_0
    move-exception v1

    .line 303
    goto :goto_4

    .line 304
    :catch_1
    move-exception v1

    .line 305
    goto :goto_4

    .line 306
    :catch_2
    move-exception v1

    .line 307
    :goto_4
    const-string v0, "Error parsing metadata from caller identity."

    .line 308
    .line 309
    invoke-static {v8, v0, v1}, LX/022;->A03(LX/005;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    .line 311
    .line 312
    return-object v5

    .line 313
    :catch_3
    move-exception v1

    .line 314
    goto :goto_5

    .line 315
    :catch_4
    move-exception v1

    .line 316
    goto :goto_5

    .line 317
    :catch_5
    move-exception v1

    .line 318
    :goto_5
    const-string v0, "Error extracting metadata from caller identity."

    .line 319
    .line 320
    invoke-static {v8, v0, v1}, LX/022;->A03(LX/005;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 321
    .line 322
    .line 323
    :cond_d
    sget-object v0, LX/022;->A00:Ljava/lang/String;

    .line 324
    .line 325
    invoke-static {v8, v0, v5}, LX/022;->A03(LX/005;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    .line 327
    .line 328
    const/16 v0, 0x11

    .line 329
    .line 330
    if-lt v9, v0, :cond_e

    .line 331
    .line 332
    return-object v5

    .line 333
    :cond_e
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-static {v15}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object v4

    .line 341
    new-instance v0, LX/02J;

    .line 342
    .line 343
    move-object v1, v5

    .line 344
    move-object v2, v5

    .line 345
    move v5, v14

    .line 346
    invoke-direct/range {v0 .. v5}, LX/02J;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)V

    .line 347
    .line 348
    .line 349
    return-object v0

    .line 350
    :catch_6
    move-exception v1

    .line 351
    const-string v0, "Failed to get signature."

    .line 352
    .line 353
    invoke-static {v8, v0, v1}, LX/022;->A03(LX/005;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 354
    .line 355
    .line 356
    return-object v5
.end method

.method public static A01(Landroid/content/Context;Landroid/content/Intent;LX/005;Ljava/lang/String;)V
    .locals 1

    .line 0
    :try_start_0
    invoke-static {p0, p1, p3}, LX/022;->A02(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 1
    .line 2
    .line 3
    goto :goto_0
    :try_end_0
    .catch LX/00t; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    move-exception p1

    .line 5
    const-string p0, "CallerInfoHelper"

    .line 6
    .line 7
    const-string v0, "Error attaching caller info to Intent."

    .line 8
    .line 9
    invoke-interface {p2, p0, v0, p1}, LX/005;->AXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :goto_0
    return-void
.end method

.method public static A02(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 12

    .line 0
    const/4 v5, 0x0

    .line 1
    const/high16 v4, 0x44000000    # 512.0f

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    new-instance v3, Landroid/os/Bundle;

    .line 17
    .line 18
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 26
    .line 27
    .line 28
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p0, v0, v5}, LX/01C;->A01(Landroid/content/Context;Ljava/lang/String;I)LX/024;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v7, v0, LX/024;->A02:Ljava/lang/String;

    .line 37
    .line 38
    goto :goto_0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 39
    :catch_0
    const/4 v7, 0x0

    .line 40
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    .line 42
    .line 43
    move-result-wide v10

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 45
    .line 46
    .line 47
    move-result-wide v8

    .line 48
    new-instance v2, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .line 52
    .line 53
    const/4 v6, 0x0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 54
    :try_start_3
    const-string v1, "t"

    .line 55
    .line 56
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    const-string v1, "r"

    .line 64
    .line 65
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    if-eqz p2, :cond_1

    .line 73
    .line 74
    const-string v0, "d"

    .line 75
    .line 76
    invoke-virtual {v2, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    :cond_1
    if-eqz v7, :cond_2

    .line 80
    .line 81
    const-string v0, "v"

    .line 82
    .line 83
    invoke-virtual {v2, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 84
    .line 85
    .line 86
    :cond_2
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v0, "UTF-8"

    .line 91
    .line 92
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    const/16 v0, 0xb

    .line 97
    .line 98
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 102
    :catch_1
    :try_start_5
    new-instance v2, LX/00r;

    .line 103
    .line 104
    invoke-direct {v2}, LX/00r;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v6, v2, LX/00r;->A08:Ljava/lang/String;

    .line 108
    .line 109
    const-string v1, "com.facebook.invalid_class.f4c3b00c"

    .line 110
    .line 111
    new-instance v0, Landroid/content/ComponentName;

    .line 112
    .line 113
    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iput-object v0, v2, LX/00r;->A03:Landroid/content/ComponentName;

    .line 117
    .line 118
    invoke-virtual {v2, p0, v5, v4}, LX/00r;->A01(Landroid/content/Context;II)Landroid/app/PendingIntent;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    if-eqz v1, :cond_3

    .line 123
    .line 124
    const-string v0, "_ci_"

    .line 125
    .line 126
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_3
    const-string v1, "Failed to generate CallerInfo metadata."

    .line 134
    .line 135
    new-instance v0, LX/00t;

    .line 136
    .line 137
    invoke-direct {v0, v1}, LX/00t;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 141
    :catch_2
    move-exception v1

    .line 142
    new-instance v0, LX/00t;

    .line 143
    .line 144
    invoke-direct {v0, v1}, LX/00t;-><init>(Ljava/lang/Exception;)V

    .line 145
    .line 146
    .line 147
    throw v0
.end method

.method public static A03(LX/005;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 0
    if-eqz p0, :cond_0

    .line 1
    .line 2
    const-string v0, "CallerInfoHelper"

    .line 3
    .line 4
    invoke-interface {p0, v0, p1, p2}, LX/005;->AXX(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    .line 6
    .line 7
    :cond_0
    return-void
.end method
