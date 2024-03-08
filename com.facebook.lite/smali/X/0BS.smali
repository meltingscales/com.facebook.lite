.class public LX/0BS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08D;


# instance fields
.field public final A00:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 0
    iput p1, p0, LX/0BS;->A00:I

    .line 1
    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final A4O(LX/08K;)Ljava/lang/Object;
    .locals 13

    .line 0
    iget v0, p0, LX/0BS;->A00:I

    .line 1
    .line 2
    packed-switch v0, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    :pswitch_0
    iget-object v1, p1, LX/08K;->A01:LX/09B;

    .line 6
    .line 7
    const-string v2, "Did you call earlyInit()?"

    .line 8
    .line 9
    invoke-static {v1, v2}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p1, LX/08K;->A01:LX/09B;

    .line 13
    .line 14
    invoke-static {v0, v2}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, v0, LX/09B;->A08:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, LX/09B;->A01(Ljava/lang/String;)Ljava/io/File;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-nez v1, :cond_6

    .line 24
    .line 25
    :cond_0
    :pswitch_1
    const/4 v4, 0x0

    .line 26
    return-object v4

    .line 27
    :pswitch_2
    iget-object v2, p1, LX/08K;->A01:LX/09B;

    .line 28
    .line 29
    const-string v1, "Did you call earlyInit()?"

    .line 30
    .line 31
    invoke-static {v2, v1}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p1, LX/08K;->A01:LX/09B;

    .line 35
    .line 36
    invoke-static {v0, v1}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, LX/09B;->A08:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v2, v0}, LX/09B;->A01(Ljava/lang/String;)Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    new-instance v4, LX/07B;

    .line 48
    .line 49
    invoke-direct {v4, v0}, LX/07B;-><init>(Ljava/io/File;)V

    .line 50
    .line 51
    .line 52
    return-object v4

    .line 53
    :pswitch_3
    sget-object v4, LX/09V;->A00:LX/07P;

    .line 54
    .line 55
    return-object v4

    .line 56
    :pswitch_4
    iget-object v1, p1, LX/08K;->A01:LX/09B;

    .line 57
    .line 58
    const-string v0, "Did you call earlyInit()?"

    .line 59
    .line 60
    invoke-static {v1, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v1, LX/09B;->A06:Ljava/io/File;

    .line 64
    .line 65
    const-string v0, "Did you call SessionManager.init()?"

    .line 66
    .line 67
    invoke-static {v1, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    const-string v0, "logcat.txt"

    .line 71
    .line 72
    invoke-static {v1, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    new-instance v4, LX/03S;

    .line 77
    .line 78
    invoke-direct {v4, v0}, LX/03S;-><init>(Ljava/io/File;)V

    .line 79
    .line 80
    .line 81
    return-object v4

    .line 82
    :pswitch_5
    invoke-static {}, LX/0AP;->A00()LX/0AP;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    return-object v4

    .line 87
    :pswitch_6
    new-instance v4, LX/03O;

    .line 88
    .line 89
    invoke-direct {v4}, LX/03O;-><init>()V

    .line 90
    .line 91
    .line 92
    return-object v4

    .line 93
    :pswitch_7
    iget-object v0, p1, LX/08K;->A0D:LX/0BP;

    .line 94
    .line 95
    if-nez v0, :cond_1

    .line 96
    .line 97
    new-instance v0, LX/02s;

    .line 98
    .line 99
    invoke-direct {v0, p1}, LX/02s;-><init>(LX/08K;)V

    .line 100
    .line 101
    .line 102
    iput-object v0, p1, LX/08K;->A0D:LX/0BP;

    .line 103
    .line 104
    :cond_1
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    return-object v4

    .line 109
    :pswitch_8
    new-instance v4, LX/03S;

    .line 110
    .line 111
    invoke-direct {v4}, LX/03S;-><init>()V

    .line 112
    .line 113
    .line 114
    return-object v4

    .line 115
    :pswitch_9
    iget-object v0, p1, LX/08K;->A0F:Landroid/app/Application;

    .line 116
    .line 117
    new-instance v4, LX/02r;

    .line 118
    .line 119
    invoke-direct {v4, v0}, LX/02r;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    return-object v4

    .line 123
    :pswitch_a
    iget-object v1, p1, LX/08K;->A01:LX/09B;

    .line 124
    .line 125
    invoke-static {p1, v1}, LX/02h;->A00(LX/08K;Ljava/lang/Object;)LX/07R;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-instance v4, LX/02w;

    .line 130
    .line 131
    invoke-direct {v4, v0, v1}, LX/02w;-><init>(LX/07R;LX/09B;)V

    .line 132
    .line 133
    .line 134
    return-object v4

    .line 135
    :pswitch_b
    iget-object v5, p1, LX/08K;->A0F:Landroid/app/Application;

    .line 136
    .line 137
    iget-object v11, p1, LX/08K;->A01:LX/09B;

    .line 138
    .line 139
    invoke-static {p1, v11}, LX/02h;->A00(LX/08K;Ljava/lang/Object;)LX/07R;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    const-class v1, LX/02z;

    .line 144
    .line 145
    monitor-enter v1

    .line 146
    :try_start_0
    sget-object v6, LX/02z;->A08:LX/02z;

    .line 147
    .line 148
    if-nez v6, :cond_2

    .line 149
    .line 150
    new-instance v6, LX/02z;

    .line 151
    .line 152
    invoke-direct {v6}, LX/02z;-><init>()V

    .line 153
    .line 154
    .line 155
    sput-object v6, LX/02z;->A08:LX/02z;

    .line 156
    .line 157
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-object v1, p1, LX/08K;->A02:LX/0BP;

    .line 159
    .line 160
    if-nez v1, :cond_3

    .line 161
    .line 162
    const/4 v0, 0x1

    .line 163
    new-instance v1, LX/0BR;

    .line 164
    .line 165
    invoke-direct {v1, p1, v0}, LX/0BR;-><init>(LX/08K;I)V

    .line 166
    .line 167
    .line 168
    iput-object v1, p1, LX/08K;->A02:LX/0BP;

    .line 169
    .line 170
    :cond_3
    invoke-interface {v1}, LX/0BP;->get()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    check-cast v7, LX/030;

    .line 175
    .line 176
    new-instance v9, LX/032;

    .line 177
    .line 178
    invoke-direct {v9, p0}, LX/032;-><init>(LX/0BS;)V

    .line 179
    .line 180
    .line 181
    iget-object v1, p1, LX/08K;->A06:LX/0BP;

    .line 182
    .line 183
    if-nez v1, :cond_4

    .line 184
    .line 185
    const/4 v0, 0x2

    .line 186
    new-instance v1, LX/0BR;

    .line 187
    .line 188
    invoke-direct {v1, p1, v0}, LX/0BR;-><init>(LX/08K;I)V

    .line 189
    .line 190
    .line 191
    iput-object v1, p1, LX/08K;->A06:LX/0BP;

    .line 192
    .line 193
    :cond_4
    invoke-interface {v1}, LX/0BP;->get()Ljava/lang/Object;

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    check-cast v12, LX/033;

    .line 198
    .line 199
    new-instance v10, LX/034;

    .line 200
    .line 201
    invoke-direct {v10}, LX/034;-><init>()V

    .line 202
    .line 203
    .line 204
    new-instance v4, LX/035;

    .line 205
    .line 206
    invoke-direct/range {v4 .. v12}, LX/035;-><init>(Landroid/app/Application;LX/02z;LX/030;LX/07R;LX/07w;LX/034;LX/09B;LX/033;)V

    .line 207
    .line 208
    .line 209
    return-object v4

    .line 210
    :catchall_0
    :try_start_1
    move-exception v0

    .line 211
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    throw v0

    .line 213
    :pswitch_c
    const-class v1, LX/02i;

    .line 214
    .line 215
    monitor-enter v1

    .line 216
    :try_start_2
    sget-object v0, LX/02i;->A00:LX/02j;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 217
    .line 218
    monitor-exit v1

    .line 219
    if-nez v0, :cond_5

    .line 220
    .line 221
    new-instance v0, LX/02k;

    .line 222
    .line 223
    invoke-direct {v0, p1, p0}, LX/02k;-><init>(LX/08K;LX/0BS;)V

    .line 224
    .line 225
    .line 226
    monitor-enter v1

    .line 227
    :try_start_3
    sput-object v0, LX/02i;->A00:LX/02j;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 228
    .line 229
    monitor-exit v1

    .line 230
    :cond_5
    iget-object v1, p1, LX/08K;->A01:LX/09B;

    .line 231
    .line 232
    invoke-static {p1, v1}, LX/02h;->A00(LX/08K;Ljava/lang/Object;)LX/07R;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    new-instance v4, LX/02l;

    .line 237
    .line 238
    invoke-direct {v4, v0, v1}, LX/02l;-><init>(LX/07R;LX/09B;)V

    .line 239
    .line 240
    .line 241
    return-object v4

    .line 242
    :catchall_1
    move-exception v0

    .line 243
    monitor-exit v1

    .line 244
    throw v0

    .line 245
    :pswitch_d
    iget-object v0, p1, LX/08K;->A0F:Landroid/app/Application;

    .line 246
    .line 247
    new-instance v4, LX/02q;

    .line 248
    .line 249
    invoke-direct {v4, v0, p1, p0}, LX/02q;-><init>(Landroid/content/Context;LX/08K;LX/0BS;)V

    .line 250
    .line 251
    .line 252
    return-object v4

    .line 253
    :pswitch_e
    iget-object v3, p1, LX/08K;->A01:LX/09B;

    .line 254
    .line 255
    invoke-static {p1, v3}, LX/02h;->A00(LX/08K;Ljava/lang/Object;)LX/07R;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    new-instance v1, Ljava/util/Random;

    .line 260
    .line 261
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 262
    .line 263
    .line 264
    new-instance v0, LX/03g;

    .line 265
    .line 266
    invoke-direct {v0, v1}, LX/03g;-><init>(Ljava/util/Random;)V

    .line 267
    .line 268
    .line 269
    new-instance v4, LX/03h;

    .line 270
    .line 271
    invoke-direct {v4, v2, v0, v3}, LX/03h;-><init>(LX/07R;LX/03g;LX/09B;)V

    .line 272
    .line 273
    .line 274
    return-object v4

    .line 275
    :pswitch_f
    iget-object v2, p1, LX/08K;->A0F:Landroid/app/Application;

    .line 276
    .line 277
    iget-object v1, p1, LX/08K;->A01:LX/09B;

    .line 278
    .line 279
    invoke-static {p1, v1}, LX/02h;->A00(LX/08K;Ljava/lang/Object;)LX/07R;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    new-instance v4, LX/03j;

    .line 284
    .line 285
    invoke-direct {v4, v2, v0, v1}, LX/03j;-><init>(Landroid/app/Application;LX/07R;LX/09B;)V

    .line 286
    .line 287
    .line 288
    return-object v4

    .line 289
    :pswitch_10
    iget-object v0, p1, LX/08K;->A01:LX/09B;

    .line 290
    .line 291
    const-string v2, "Did you call earlyInit()?"

    .line 292
    .line 293
    invoke-static {v0, v2}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 294
    .line 295
    .line 296
    iget-object v1, v0, LX/09B;->A06:Ljava/io/File;

    .line 297
    .line 298
    const-string v0, "Did you call SessionManager.init()?"

    .line 299
    .line 300
    invoke-static {v1, v0}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :cond_6
    iget-object v0, p1, LX/08K;->A01:LX/09B;

    .line 304
    .line 305
    invoke-static {v0, v2}, LX/02h;->A02(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 306
    .line 307
    .line 308
    new-instance v4, LX/03M;

    .line 309
    .line 310
    invoke-direct {v4, v0, v1}, LX/03M;-><init>(LX/09B;Ljava/io/File;)V

    .line 311
    .line 312
    .line 313
    return-object v4

    .line 314
    :pswitch_11
    iget-object v0, p1, LX/08K;->A0F:Landroid/app/Application;

    .line 315
    .line 316
    new-instance v4, LX/03N;

    .line 317
    .line 318
    invoke-direct {v4, v0}, LX/03N;-><init>(Landroid/app/Application;)V

    .line 319
    .line 320
    .line 321
    return-object v4

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_10
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_11
        :pswitch_0
        :pswitch_2
        :pswitch_11
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
