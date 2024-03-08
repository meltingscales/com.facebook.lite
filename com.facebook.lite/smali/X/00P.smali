.class public final LX/00P;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:I

.field public A01:I

.field public A02:J

.field public A03:J

.field public A04:J

.field public A05:J

.field public A06:J

.field public A07:J

.field public A08:J

.field public A09:Ljava/io/File;

.field public A0A:Ljava/lang/String;

.field public A0B:Ljava/lang/String;

.field public A0C:Ljava/lang/String;

.field public A0D:Ljava/lang/String;

.field public A0E:Ljava/lang/String;

.field public A0F:Ljava/lang/String;

.field public A0G:Ljava/lang/String;

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public final A0L:LX/09B;

.field public final A0M:Ljava/util/List;

.field public final A0N:LX/0BP;

.field public final A0O:LX/0BP;

.field public final A0P:LX/0BP;


# direct methods
.method public constructor <init>(LX/09B;LX/0BP;LX/0BP;LX/0BP;)V
    .locals 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, LX/00P;->A0M:Ljava/util/List;

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    iput v3, p0, LX/00P;->A01:I

    .line 12
    .line 13
    iput-object p1, p0, LX/00P;->A0L:LX/09B;

    .line 14
    .line 15
    iput-object p2, p0, LX/00P;->A0P:LX/0BP;

    .line 16
    .line 17
    iput-object p3, p0, LX/00P;->A0O:LX/0BP;

    .line 18
    .line 19
    iput-object p4, p0, LX/00P;->A0N:LX/0BP;

    .line 20
    .line 21
    iget-object v2, p1, LX/09B;->A06:Ljava/io/File;

    .line 22
    .line 23
    const-string v0, "Did you call SessionManager.init()?"

    .line 24
    .line 25
    invoke-static {v2, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v0, "anr_report_"

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v0, ".dmp"

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    new-instance v0, Ljava/io/File;

    .line 51
    .line 52
    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, LX/00P;->A09:Ljava/io/File;

    .line 56
    .line 57
    return-void
.end method

.method public static A00(LX/00P;)V
    .locals 9

    .line 0
    const/4 v5, 0x0

    .line 1
    new-instance v4, LX/02u;

    .line 2
    .line 3
    invoke-direct {v4, v5}, LX/02u;-><init>(Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v2, p0, LX/00P;->A0F:Ljava/lang/String;

    .line 7
    .line 8
    if-nez v2, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, LX/00P;->A0C:Ljava/lang/String;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iput-object v0, p0, LX/00P;->A0F:Ljava/lang/String;

    .line 15
    .line 16
    move-object v2, v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-boolean v0, p0, LX/00P;->A0H:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-object v5, p0, LX/00P;->A09:Ljava/io/File;

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    :goto_0
    iget-object v8, p0, LX/00P;->A0L:LX/09B;

    .line 26
    .line 27
    iget-object v3, v8, LX/09B;->A06:Ljava/io/File;

    .line 28
    .line 29
    const-string v0, "Did you call SessionManager.init()?"

    .line 30
    .line 31
    invoke-static {v3, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v0, "anr_report_"

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget v0, p0, LX/00P;->A01:I

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v0, ".dmp"

    .line 50
    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    new-instance v0, Ljava/io/File;

    .line 59
    .line 60
    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, LX/00P;->A09:Ljava/io/File;

    .line 64
    .line 65
    iget-boolean v0, p0, LX/00P;->A0H:Z

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    sget-object v1, LX/07M;->A8D:LX/05l;

    .line 70
    .line 71
    const-string v0, "true"

    .line 72
    .line 73
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_2
    if-eqz v2, :cond_4

    .line 77
    .line 78
    sget-object v6, LX/07M;->A8t:LX/05l;

    .line 79
    .line 80
    const/4 v3, 0x0

    .line 81
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    .line 87
    :try_start_1
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 88
    .line 89
    invoke-static {v0}, LX/08H;->A02(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2}, LX/08H;->A01(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 102
    .line 103
    .line 104
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const/4 v0, 0x2

    .line 120
    invoke-static {v1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    goto :goto_1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    :catch_0
    :try_start_2
    move-exception v2

    .line 126
    const-string v1, "ReportFieldHelper"

    .line 127
    .line 128
    const-string v0, "Failed to compress string"

    .line 129
    .line 130
    invoke-static {v1, v0, v2}, LX/06s;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    :cond_3
    :goto_1
    invoke-virtual {v4, v6, v3}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    :cond_4
    sget-object v1, LX/07M;->A3s:LX/05l;

    .line 137
    .line 138
    const-string v0, "0"

    .line 139
    .line 140
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-wide v6, p0, LX/00P;->A03:J

    .line 144
    .line 145
    iget-wide v0, v8, LX/09B;->A01:J

    .line 146
    .line 147
    sub-long v2, v6, v0

    .line 148
    .line 149
    sget-object v1, LX/07M;->A0f:LX/05m;

    .line 150
    .line 151
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v4, v1, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 156
    .line 157
    .line 158
    sget-object v1, LX/07M;->A0k:LX/05m;

    .line 159
    .line 160
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-virtual {v4, v1, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 165
    .line 166
    .line 167
    sget-object v1, LX/07M;->A3V:LX/05l;

    .line 168
    .line 169
    iget-boolean v0, p0, LX/00P;->A0K:Z

    .line 170
    .line 171
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    sget-object v1, LX/07M;->A0h:LX/05m;

    .line 179
    .line 180
    iget v0, p0, LX/00P;->A00:I

    .line 181
    .line 182
    invoke-virtual {v4, v1, v0}, LX/02u;->A02(LX/05m;I)V

    .line 183
    .line 184
    .line 185
    sget-object v2, LX/07M;->A0i:LX/05m;

    .line 186
    .line 187
    const-wide/16 v0, 0x0

    .line 188
    .line 189
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 190
    .line 191
    .line 192
    move-result-object v3

    .line 193
    invoke-virtual {v4, v2, v3}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 194
    .line 195
    .line 196
    sget-object v1, LX/07M;->A00:LX/05n;

    .line 197
    .line 198
    iget-boolean v0, p0, LX/00P;->A0I:Z

    .line 199
    .line 200
    invoke-virtual {v4, v1, v0}, LX/02u;->A01(LX/05n;Z)V

    .line 201
    .line 202
    .line 203
    sget-object v1, LX/07M;->A01:LX/05n;

    .line 204
    .line 205
    iget-boolean v0, p0, LX/00P;->A0J:Z

    .line 206
    .line 207
    invoke-virtual {v4, v1, v0}, LX/02u;->A01(LX/05n;Z)V

    .line 208
    .line 209
    .line 210
    sget-object v0, LX/07M;->A0n:LX/05m;

    .line 211
    .line 212
    iget-object v1, v4, LX/02u;->A08:Ljava/util/Map;

    .line 213
    .line 214
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    sget-object v0, LX/07M;->A0m:LX/05m;

    .line 218
    .line 219
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    sget-object v0, LX/07M;->A0v:LX/05m;

    .line 223
    .line 224
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    sget-object v0, LX/07M;->A0u:LX/05m;

    .line 228
    .line 229
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    sget-object v1, LX/07M;->A3l:LX/05l;

    .line 233
    .line 234
    iget-object v0, p0, LX/00P;->A0E:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    sget-object v1, LX/07M;->A3k:LX/05l;

    .line 240
    .line 241
    iget-object v0, p0, LX/00P;->A0D:Ljava/lang/String;

    .line 242
    .line 243
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    sget-object v2, LX/07M;->A0c:LX/05m;

    .line 247
    .line 248
    iget-wide v0, p0, LX/00P;->A02:J

    .line 249
    .line 250
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-virtual {v4, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 255
    .line 256
    .line 257
    sget-object v2, LX/07M;->A0r:LX/05m;

    .line 258
    .line 259
    iget-wide v0, p0, LX/00P;->A07:J

    .line 260
    .line 261
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v4, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 266
    .line 267
    .line 268
    sget-object v2, LX/07M;->A0q:LX/05m;

    .line 269
    .line 270
    const/4 v0, 0x0

    .line 271
    int-to-long v0, v0

    .line 272
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {v4, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 277
    .line 278
    .line 279
    sget-object v0, LX/07M;->A0s:LX/05m;

    .line 280
    .line 281
    invoke-virtual {v4, v0, v3}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 282
    .line 283
    .line 284
    sget-object v2, LX/07M;->A0l:LX/05m;

    .line 285
    .line 286
    iget-wide v0, p0, LX/00P;->A04:J

    .line 287
    .line 288
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v4, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 293
    .line 294
    .line 295
    sget-object v2, LX/07M;->A0p:LX/05m;

    .line 296
    .line 297
    iget-wide v0, p0, LX/00P;->A06:J

    .line 298
    .line 299
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v4, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 304
    .line 305
    .line 306
    sget-object v2, LX/07M;->A0o:LX/05m;

    .line 307
    .line 308
    iget-wide v0, p0, LX/00P;->A05:J

    .line 309
    .line 310
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 311
    .line 312
    .line 313
    move-result-object v0

    .line 314
    invoke-virtual {v4, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 315
    .line 316
    .line 317
    sget-object v1, LX/07M;->A9Q:LX/05l;

    .line 318
    .line 319
    iget-object v0, p0, LX/00P;->A0G:Ljava/lang/String;

    .line 320
    .line 321
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    sget-object v1, LX/07M;->A3N:LX/05l;

    .line 325
    .line 326
    iget-object v0, p0, LX/00P;->A0B:Ljava/lang/String;

    .line 327
    .line 328
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    sget-object v1, LX/07M;->A3K:LX/05l;

    .line 332
    .line 333
    iget-object v0, p0, LX/00P;->A0A:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    sget-object v0, LX/07M;->A4Q:LX/05l;

    .line 339
    .line 340
    invoke-virtual {v4, v0, v5}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    sget-object v0, LX/07M;->A6Y:LX/05l;

    .line 344
    .line 345
    invoke-virtual {v4, v0, v5}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    sget-object v2, LX/07M;->A0t:LX/05m;

    .line 349
    .line 350
    iget-wide v0, p0, LX/00P;->A08:J

    .line 351
    .line 352
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v4, v2, v0}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 357
    .line 358
    .line 359
    const/4 v6, 0x0

    .line 360
    iget-object v0, p0, LX/00P;->A0M:Ljava/util/List;

    .line 361
    .line 362
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 363
    .line 364
    .line 365
    move-result-object v5

    .line 366
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    if-eqz v0, :cond_5

    .line 371
    .line 372
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 373
    .line 374
    .line 375
    move-result-object v3

    .line 376
    check-cast v3, Ljava/lang/String;

    .line 377
    .line 378
    new-instance v2, Ljava/lang/StringBuilder;

    .line 379
    .line 380
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    .line 382
    .line 383
    sget-object v0, LX/07M;->A3b:LX/05l;

    .line 384
    .line 385
    iget-object v0, v0, LX/07H;->A00:Ljava/lang/String;

    .line 386
    .line 387
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    add-int/lit8 v1, v6, 0x1

    .line 391
    .line 392
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v4, v0, v3}, LX/02u;->A06(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    move v6, v1

    .line 403
    goto :goto_2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 404
    :catchall_0
    move-exception v0

    .line 405
    invoke-static {}, LX/08w;->A00()V

    .line 406
    .line 407
    .line 408
    sget-object v1, LX/07M;->A5k:LX/05l;

    .line 409
    .line 410
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v0

    .line 414
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    :cond_5
    iget-object v0, p0, LX/00P;->A09:Ljava/io/File;

    .line 418
    .line 419
    if-eqz v0, :cond_6

    .line 420
    .line 421
    :try_start_3
    new-instance v2, Ljava/util/Properties;

    .line 422
    .line 423
    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4, v2}, LX/02u;->A07(Ljava/util/Properties;)V

    .line 427
    .line 428
    .line 429
    iget-object v0, p0, LX/00P;->A09:Ljava/io/File;

    .line 430
    .line 431
    new-instance v1, Ljava/io/FileOutputStream;

    .line 432
    .line 433
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 434
    .line 435
    .line 436
    :try_start_4
    const-string v0, "no pool"

    .line 437
    .line 438
    invoke-virtual {v2, v1, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 439
    .line 440
    .line 441
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 442
    .line 443
    .line 444
    return-void
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 445
    :catchall_1
    move-exception v0

    .line 446
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 447
    .line 448
    .line 449
    :catchall_2
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 450
    :catch_1
    move-exception v2

    .line 451
    const-string v1, "lacrima"

    .line 452
    .line 453
    const-string v0, "Could not save ANR report file"

    .line 454
    .line 455
    invoke-static {v1, v0, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    .line 457
    .line 458
    invoke-static {}, LX/08w;->A00()V

    .line 459
    .line 460
    .line 461
    :cond_6
    return-void
.end method
