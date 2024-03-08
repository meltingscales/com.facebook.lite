.class public Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08p;


# static fields
.field public static final A05:LX/08r;


# instance fields
.field public A00:LX/04t;

.field public A01:LX/08r;

.field public final A02:LX/07R;

.field public final A03:LX/08r;

.field public final A04:LX/09B;

.field public mOomReservation:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, LX/05f;

    .line 1
    .line 2
    invoke-direct {v0}, LX/05f;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->A05:LX/08r;

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(LX/07R;LX/04t;LX/08r;LX/08r;LX/09B;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p5, p0, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->A04:LX/09B;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->A02:LX/07R;

    .line 6
    .line 7
    iput-object p2, p0, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->A00:LX/04t;

    .line 8
    .line 9
    iput-object p3, p0, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->A01:LX/08r;

    .line 10
    .line 11
    iput-object p4, p0, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->A03:LX/08r;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final A00(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 11

    .line 0
    const/4 v2, 0x0

    .line 1
    iput-object v2, p0, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->mOomReservation:[B

    .line 2
    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    .line 5
    .line 6
    move-result-wide v9

    .line 7
    const-wide/16 v0, 0x3e8

    .line 8
    .line 9
    div-long/2addr v9, v0

    .line 10
    iget-object v8, p0, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->A04:LX/09B;

    .line 11
    .line 12
    iget-object v1, v8, LX/09B;->A04:LX/05J;

    .line 13
    .line 14
    const-string v0, "Did you call SessionManager.init()?"

    .line 15
    .line 16
    invoke-static {v1, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    instance-of v0, p2, LX/04k;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget-object v0, LX/07i;->A08:LX/07i;

    .line 24
    .line 25
    :goto_0
    invoke-virtual {v1, v0}, LX/05J;->A02(LX/07i;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, v1, LX/05J;->A01:LX/07W;

    .line 29
    .line 30
    iget-object v1, v0, LX/07W;->A01:Ljava/io/File;

    .line 31
    .line 32
    new-instance v0, LX/03c;

    .line 33
    .line 34
    invoke-direct {v0, v1}, LX/03c;-><init>(Ljava/io/File;)V

    .line 35
    .line 36
    .line 37
    const/4 v6, 0x1

    .line 38
    const/4 v5, 0x0

    .line 39
    invoke-virtual {v0}, LX/03c;->A02()C

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->A03:LX/08r;

    .line 43
    .line 44
    invoke-interface {v0, p1, p2}, LX/08r;->A1j(Ljava/lang/Thread;Ljava/lang/Throwable;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_8

    .line 49
    .line 50
    new-instance v4, LX/02u;

    .line 51
    .line 52
    invoke-direct {v4, p2}, LX/02u;-><init>(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    sget-object v0, LX/07i;->A07:LX/07i;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    :try_start_0
    sget-object v0, LX/07M;->A10:LX/05m;

    .line 60
    .line 61
    invoke-virtual {v4, v0, v6}, LX/02u;->A02(LX/05m;I)V

    .line 62
    .line 63
    .line 64
    sget-object v0, LX/07M;->A33:LX/05m;

    .line 65
    .line 66
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v4, v0, v3}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V

    .line 71
    .line 72
    .line 73
    sget-object v1, LX/07M;->A4g:LX/05l;

    .line 74
    .line 75
    const-string v0, "exception"

    .line 76
    .line 77
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    sget-object v0, LX/07M;->A1O:LX/05m;

    .line 81
    .line 82
    invoke-virtual {v4, v0, v3}, LX/02u;->A03(LX/05m;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 83
    .line 84
    .line 85
    :try_start_1
    const-class v1, LX/07F;

    .line 86
    .line 87
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    sget-object v0, LX/07F;->A01:Ljava/io/StringWriter;

    .line 89
    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    sget-object v0, LX/07F;->A00:Ljava/io/PrintWriter;

    .line 93
    .line 94
    if-eqz v0, :cond_1

    .line 95
    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 97
    .line 98
    .line 99
    sget-object v0, LX/07F;->A00:Ljava/io/PrintWriter;

    .line 100
    .line 101
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 102
    .line 103
    .line 104
    sget-object v0, LX/07F;->A01:Ljava/io/StringWriter;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    sput-object v2, LX/07F;->A00:Ljava/io/PrintWriter;

    .line 111
    .line 112
    sput-object v2, LX/07F;->A01:Ljava/io/StringWriter;

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_1
    invoke-static {p2}, LX/07F;->A01(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    :goto_2
    :try_start_3
    monitor-exit v1

    .line 120
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 121
    .line 122
    .line 123
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    :try_start_4
    const/16 v0, 0xa

    .line 125
    .line 126
    const-string v1, "No stack trace"

    .line 127
    .line 128
    if-ge v2, v0, :cond_2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 129
    .line 130
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-eqz v0, :cond_2

    .line 139
    .line 140
    const-string v0, "lacrima"

    .line 141
    .line 142
    invoke-static {v0, v1}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_2
    const/16 v0, 0x4e20

    .line 147
    .line 148
    invoke-static {v3, v0}, LX/07F;->A00(Ljava/lang/String;I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    goto :goto_3

    .line 153
    :catchall_0
    move-exception v0

    .line 154
    monitor-exit v1

    .line 155
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 156
    :catchall_1
    :try_start_6
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-static {p2, v1}, LX/000;->A0K(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 161
    .line 162
    .line 163
    const-string v0, ": truncated trace"

    .line 164
    .line 165
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    invoke-static {}, LX/08w;->A00()V

    .line 170
    .line 171
    .line 172
    :goto_3
    sget-object v0, LX/07M;->A5x:LX/05l;

    .line 173
    .line 174
    invoke-virtual {v4, v0, v1}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    sget-object v1, LX/07M;->A5z:LX/05l;

    .line 178
    .line 179
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    sget-object v1, LX/07M;->A60:LX/05l;

    .line 191
    .line 192
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    if-nez p1, :cond_3

    .line 200
    .line 201
    const-string v1, "unknown"

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    :goto_4
    sget-object v0, LX/07M;->A61:LX/05l;

    .line 213
    .line 214
    invoke-virtual {v4, v0, v1}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    move-object v2, p2

    .line 218
    :goto_5
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    if-eqz v0, :cond_4

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    goto :goto_5

    .line 229
    :cond_4
    sget-object v1, LX/07M;->A5s:LX/05l;

    .line 230
    .line 231
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v0

    .line 239
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    sget-object v1, LX/07M;->A5u:LX/05l;

    .line 243
    .line 244
    invoke-static {v2}, LX/07F;->A01(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    sget-object v1, LX/07M;->A5t:LX/05l;

    .line 252
    .line 253
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    sget-object v7, LX/07M;->A2S:LX/05m;

    .line 261
    .line 262
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 263
    .line 264
    .line 265
    move-result-wide v2

    .line 266
    iget-wide v0, v8, LX/09B;->A01:J

    .line 267
    .line 268
    sub-long/2addr v2, v0

    .line 269
    invoke-static {v7, v4, v2, v3}, LX/02u;->A00(LX/05m;LX/02u;J)V

    .line 270
    .line 271
    .line 272
    :goto_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    if-eqz v0, :cond_5

    .line 277
    .line 278
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 279
    .line 280
    .line 281
    move-result-object p2

    .line 282
    goto :goto_6

    .line 283
    :cond_5
    instance-of v5, p2, Ljava/lang/OutOfMemoryError;

    .line 284
    .line 285
    goto :goto_7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 286
    :catchall_2
    move-exception v0

    .line 287
    invoke-static {}, LX/08w;->A00()V

    .line 288
    .line 289
    .line 290
    sget-object v1, LX/07M;->A5k:LX/05l;

    .line 291
    .line 292
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    :goto_7
    iget-object v2, p0, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->A02:LX/07R;

    .line 300
    .line 301
    sget-object v1, LX/02m;->A02:LX/02m;

    .line 302
    .line 303
    invoke-virtual {v2, v1, p0}, LX/07R;->A0B(LX/02m;LX/08p;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v2, v4, v1, p0}, LX/07R;->A05(LX/02u;LX/02m;LX/08p;)V

    .line 307
    .line 308
    .line 309
    iput-boolean v6, v2, LX/07R;->A0B:Z

    .line 310
    .line 311
    if-nez v5, :cond_6

    .line 312
    .line 313
    invoke-virtual {v2, v1, p0}, LX/07R;->A0A(LX/02m;LX/08p;)V

    .line 314
    .line 315
    .line 316
    :cond_6
    sget-object v0, LX/02m;->A03:LX/02m;

    .line 317
    .line 318
    invoke-virtual {v2, v0, p0}, LX/07R;->A0B(LX/02m;LX/08p;)V

    .line 319
    .line 320
    .line 321
    invoke-virtual {v2, v4, v0, p0}, LX/07R;->A05(LX/02u;LX/02m;LX/08p;)V

    .line 322
    .line 323
    .line 324
    iput-boolean v6, v2, LX/07R;->A0C:Z

    .line 325
    .line 326
    if-eqz v5, :cond_7

    .line 327
    .line 328
    invoke-virtual {v2, v1, p0}, LX/07R;->A0A(LX/02m;LX/08p;)V

    .line 329
    .line 330
    .line 331
    :cond_7
    invoke-virtual {v2, v0, p0}, LX/07R;->A0A(LX/02m;LX/08p;)V

    .line 332
    .line 333
    .line 334
    :cond_8
    return-void
.end method

.method public final synthetic ABM()LX/034;
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 1
    return-object v0
.end method

.method public final ACB()LX/08q;
    .locals 1

    .line 0
    sget-object v0, LX/08q;->A07:LX/08q;

    .line 1
    .line 2
    return-object v0
.end method

.method public final start()V
    .locals 3

    .line 0
    invoke-static {}, LX/06T;->A01()LX/06T;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    new-instance v1, LX/03U;

    .line 7
    .line 8
    invoke-direct {v1, p0}, LX/03U;-><init>(Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;)V

    .line 9
    .line 10
    .line 11
    const/16 v0, 0x64

    .line 12
    .line 13
    invoke-static {v1, v0}, LX/06T;->A03(LX/03T;I)V

    .line 14
    .line 15
    .line 16
    :goto_0
    const/high16 v0, 0x10000

    .line 17
    .line 18
    new-array v0, v0, [B

    .line 19
    .line 20
    iput-object v0, p0, Lcom/facebook/errorreporting/lacrima/detector/javacrash/JavaCrashDetector;->mOomReservation:[B

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v1, 0x0

    .line 28
    new-instance v0, LX/0BX;

    .line 29
    .line 30
    invoke-direct {v0, v1, p0, v2}, LX/0BX;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0
.end method
