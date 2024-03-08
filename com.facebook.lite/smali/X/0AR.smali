.class public final LX/0AR;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:LX/0AV;

.field public static final A01:LX/0AV;

.field public static final A02:LX/0AV;

.field public static final A03:LX/0AW;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, LX/08i;

    .line 1
    .line 2
    invoke-direct {v0}, LX/08i;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, LX/0AR;->A02:LX/0AV;

    .line 6
    .line 7
    new-instance v1, LX/08h;

    .line 8
    .line 9
    invoke-direct {v1}, LX/08h;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v1, LX/0AR;->A01:LX/0AV;

    .line 13
    .line 14
    new-instance v0, LX/08f;

    .line 15
    .line 16
    invoke-direct {v0, v1}, LX/08f;-><init>(LX/0AV;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, LX/0AR;->A03:LX/0AW;

    .line 20
    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    return-void
.end method

.method public static declared-synchronized A00()LX/0AV;
    .locals 2

    .line 0
    const-class v1, LX/0AR;

    .line 1
    .line 2
    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, LX/0AR;->A00:LX/0AV;

    .line 4
    .line 5
    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    monitor-exit v1

    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 12
    .line 13
    .line 14
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    monitor-exit v1

    .line 17
    throw v0
.end method

.method public static declared-synchronized A01()LX/0AW;
    .locals 2

    .line 0
    const-class v1, LX/0AR;

    .line 1
    .line 2
    monitor-enter v1

    .line 3
    :try_start_0
    sget-object v0, LX/0AR;->A03:LX/0AW;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    monitor-exit v1

    .line 6
    return-object v0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit v1

    .line 9
    throw v0
.end method

.method public static declared-synchronized A02(Landroid/content/Context;)V
    .locals 17

    .line 0
    const-class v16, LX/0AR;

    .line 1
    .line 2
    monitor-enter v16

    .line 3
    :try_start_0
    sget-object v0, LX/0AR;->A00:LX/0AV;

    .line 4
    .line 5
    if-nez v0, :cond_c

    .line 6
    .line 7
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskWrites()Landroid/os/StrictMode$ThreadPolicy;

    .line 8
    .line 9
    .line 10
    move-result-object v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 11
    :try_start_1
    const-string v3, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    .line 13
    :try_start_2
    const-string v0, "com.facebook.secure.switchoff"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    move-object/from16 v4, p0

    .line 17
    .line 18
    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-string v0, "last_criteria"

    .line 23
    .line 24
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v0, "last_custom_config"

    .line 29
    .line 30
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v14

    .line 34
    const-string v0, "last_deeplink_config"

    .line 35
    .line 36
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    :try_start_3
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 41
    .line 42
    .line 43
    move-result-object v12

    .line 44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    const/4 v11, 0x0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    new-array v10, v5, [LX/0AS;

    .line 52
    .line 53
    goto/16 :goto_7

    .line 54
    .line 55
    :cond_0
    const-string v0, "\\^\\^\\^"

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    array-length v8, v9

    .line 62
    new-array v10, v8, [LX/0AS;

    .line 63
    .line 64
    :goto_0
    if-ge v11, v8, :cond_7

    .line 65
    .line 66
    aget-object v4, v9, v11

    .line 67
    .line 68
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    new-instance v0, LX/0AS;

    .line 75
    .line 76
    invoke-direct {v0}, LX/0AS;-><init>()V

    .line 77
    .line 78
    .line 79
    :goto_1
    aput-object v0, v10, v11

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_1
    const/4 v7, 0x0

    .line 83
    invoke-virtual {v4, v5}, Ljava/lang/String;->codePointAt(I)I

    .line 84
    .line 85
    .line 86
    move-result v13

    .line 87
    const-string v6, "Criteria specification is not valid"

    .line 88
    .line 89
    const/16 v2, 0x21

    .line 90
    .line 91
    const/4 v1, 0x1

    .line 92
    if-eq v13, v2, :cond_2

    .line 93
    .line 94
    const/16 v0, 0x2a

    .line 95
    .line 96
    if-eq v13, v0, :cond_3

    .line 97
    .line 98
    const/16 v0, 0x3a

    .line 99
    .line 100
    if-eq v13, v0, :cond_2

    .line 101
    .line 102
    goto :goto_5

    .line 103
    :cond_2
    invoke-virtual {v4, v13, v1}, Ljava/lang/String;->indexOf(II)I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-ltz v0, :cond_6

    .line 108
    .line 109
    invoke-virtual {v4, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    add-int/lit8 v0, v0, 0x1

    .line 114
    .line 115
    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    if-ne v13, v2, :cond_4

    .line 120
    .line 121
    const/4 v7, 0x1

    .line 122
    goto :goto_2

    .line 123
    :cond_3
    const/4 v6, 0x0

    .line 124
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    :cond_4
    :goto_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    const/4 v2, 0x0

    .line 135
    goto :goto_3

    .line 136
    :cond_5
    new-instance v2, Landroid/content/IntentFilter;

    .line 137
    .line 138
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 139
    .line 140
    .line 141
    :try_start_4
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-virtual {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    new-instance v0, Ljava/io/StringReader;

    .line 153
    .line 154
    invoke-direct {v0, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    .line 162
    .line 163
    :goto_3
    :try_start_5
    new-instance v0, LX/0AS;

    .line 164
    .line 165
    invoke-direct {v0, v12, v2, v6, v7}, LX/0AS;-><init>(Landroid/content/ContentResolver;Landroid/content/IntentFilter;Ljava/lang/String;Z)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :goto_4
    add-int/lit8 v11, v11, 0x1

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :goto_5
    invoke-static {v6}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    goto :goto_6

    .line 177
    :cond_6
    invoke-static {v6}, LX/000;->A06(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    goto :goto_6

    .line 182
    :catch_0
    move-exception v2

    .line 183
    const-string v1, "Something went wrong with the parser"

    .line 184
    .line 185
    new-instance v0, Ljava/io/IOException;

    .line 186
    .line 187
    invoke-direct {v0, v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    :goto_6
    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 191
    :catch_1
    :try_start_6
    move-exception v2

    .line 192
    const-string v1, "IntentCriteria"

    .line 193
    .line 194
    const-string v0, "Error parsing switch-off criteria."

    .line 195
    .line 196
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 197
    .line 198
    .line 199
    new-array v10, v5, [LX/0AS;

    .line 200
    .line 201
    :cond_7
    :goto_7
    invoke-static {v14}, LX/0AU;->A01(Ljava/lang/String;)[LX/0AU;

    .line 202
    .line 203
    .line 204
    move-result-object v9

    .line 205
    const-string v11, "enforce_scheme_and_authority"

    .line 206
    .line 207
    const-string v8, "enforce_scheme"

    .line 208
    .line 209
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 210
    .line 211
    .line 212
    move-result-object v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 213
    :try_start_7
    new-instance v6, Lorg/json/JSONObject;

    .line 214
    .line 215
    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v12

    .line 222
    :goto_8
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_b

    .line 227
    .line 228
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    check-cast v5, Ljava/lang/String;

    .line 233
    .line 234
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-eqz v0, :cond_8

    .line 243
    .line 244
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 245
    .line 246
    .line 247
    :cond_8
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_9

    .line 252
    .line 253
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 254
    .line 255
    .line 256
    :cond_9
    const-string v0, "whitelist"

    .line 257
    .line 258
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 271
    .line 272
    .line 273
    move-result v0

    .line 274
    if-eqz v0, :cond_a

    .line 275
    .line 276
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    check-cast v1, Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v0

    .line 286
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    invoke-virtual {v2, v1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    goto :goto_9

    .line 294
    :cond_a
    new-instance v0, LX/0AQ;

    .line 295
    .line 296
    invoke-direct {v0, v2}, LX/0AQ;-><init>(Ljava/util/Map;)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v7, v5, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    goto :goto_8
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 303
    :catch_2
    :cond_b
    :try_start_8
    new-instance v0, LX/08g;

    .line 304
    .line 305
    invoke-direct {v0, v7, v10, v9}, LX/08g;-><init>(Ljava/util/Map;[LX/0AS;[LX/0AU;)V

    .line 306
    .line 307
    .line 308
    sput-object v0, LX/0AR;->A00:LX/0AV;

    .line 309
    .line 310
    goto :goto_a
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 311
    :catchall_0
    :try_start_9
    move-exception v2

    .line 312
    const-string v1, "DefaultSwitchOffs"

    .line 313
    .line 314
    const-string v0, "Error loading last config"

    .line 315
    .line 316
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 317
    .line 318
    .line 319
    :goto_a
    :try_start_a
    invoke-static {v15}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 320
    .line 321
    .line 322
    sget-object v0, LX/0AR;->A00:LX/0AV;

    .line 323
    .line 324
    if-nez v0, :cond_c

    .line 325
    .line 326
    sget-object v0, LX/0AR;->A02:LX/0AV;

    .line 327
    .line 328
    sput-object v0, LX/0AR;->A00:LX/0AV;

    .line 329
    .line 330
    goto :goto_b

    .line 331
    :catchall_1
    move-exception v0

    .line 332
    invoke-static {v15}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 333
    .line 334
    .line 335
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 336
    :cond_c
    :goto_b
    monitor-exit v16

    .line 337
    return-void

    .line 338
    :catchall_2
    move-exception v0

    .line 339
    monitor-exit v16

    .line 340
    throw v0
.end method
