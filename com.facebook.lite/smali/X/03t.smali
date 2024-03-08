.class public final LX/03t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/03s;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final AYQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 14

    .line 0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1
    .line 2
    .line 3
    move-result v0

    .line 4
    if-nez v0, :cond_9

    .line 5
    .line 6
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    .line 7
    .line 8
    .line 9
    move-result-object v7

    .line 10
    const/16 v0, 0x3a

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 13
    .line 14
    .line 15
    move-result v9

    .line 16
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v0, 0x3

    .line 21
    new-array v3, v0, [I

    .line 22
    .line 23
    const/16 v0, 0x2f

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    aput v0, v3, v4

    .line 31
    .line 32
    const/16 v0, 0x3f

    .line 33
    .line 34
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    const/4 v0, 0x1

    .line 39
    aput v1, v3, v0

    .line 40
    .line 41
    const/4 v1, 0x2

    .line 42
    const/16 v0, 0x23

    .line 43
    .line 44
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    aput v0, v3, v1

    .line 49
    .line 50
    invoke-static {v3, v2}, LX/0Ao;->A00([II)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-ltz v9, :cond_7

    .line 55
    .line 56
    if-gt v9, v0, :cond_7

    .line 57
    .line 58
    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v10
    :try_end_0
    .catch LX/03u; {:try_start_0 .. :try_end_0} :catch_1

    .line 62
    :try_start_1
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_6

    .line 67
    .line 68
    invoke-virtual {v7, v10}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 72
    .line 73
    .line 74
    move-result v8

    .line 75
    invoke-virtual {v7}, Ljava/text/BreakIterator;->current()I

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    invoke-virtual {v10, v5}, Ljava/lang/String;->codePointAt(I)I

    .line 80
    .line 81
    .line 82
    move-result v6

    .line 83
    const/16 v0, 0x41

    .line 84
    .line 85
    if-lt v6, v0, :cond_1

    .line 86
    .line 87
    const/16 v0, 0x5a

    .line 88
    .line 89
    if-le v6, v0, :cond_0

    .line 90
    .line 91
    const/16 v0, 0x61

    .line 92
    .line 93
    if-lt v6, v0, :cond_1

    .line 94
    .line 95
    const/16 v0, 0x7a

    .line 96
    .line 97
    if-gt v6, v0, :cond_1

    .line 98
    .line 99
    :cond_0
    const/4 v0, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    const/4 v0, 0x0

    .line 102
    :goto_0
    const-string v1, "Scheme contains illegal character "

    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    if-nez v0, :cond_2

    .line 106
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    new-array v1, v3, [I

    .line 116
    .line 117
    aput v6, v1, v4

    .line 118
    .line 119
    new-instance v0, Ljava/lang/String;

    .line 120
    .line 121
    invoke-direct {v0, v1, v4, v3}, Ljava/lang/String;-><init>([III)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v0, " at string index "

    .line 128
    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 140
    .line 141
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_2
    :goto_1
    invoke-virtual {v7}, Ljava/text/BreakIterator;->next()I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    const/4 v0, -0x1

    .line 150
    if-eq v6, v0, :cond_8

    .line 151
    .line 152
    if-ge v6, v8, :cond_8

    .line 153
    .line 154
    invoke-virtual {v10, v6}, Ljava/lang/String;->codePointAt(I)I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    const/16 v0, 0x41

    .line 159
    .line 160
    if-lt v5, v0, :cond_3

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_3
    const/16 v0, 0x30

    .line 164
    .line 165
    if-lt v5, v0, :cond_4

    .line 166
    .line 167
    const/16 v0, 0x39

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :goto_2
    const/16 v0, 0x5a

    .line 171
    .line 172
    if-le v5, v0, :cond_2

    .line 173
    .line 174
    const/16 v0, 0x61

    .line 175
    .line 176
    if-lt v5, v0, :cond_5

    .line 177
    .line 178
    const/16 v0, 0x7a

    .line 179
    .line 180
    :goto_3
    if-gt v5, v0, :cond_5

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_4
    const/16 v0, 0x2b

    .line 184
    .line 185
    if-eq v5, v0, :cond_2

    .line 186
    .line 187
    const/16 v0, 0x2d

    .line 188
    .line 189
    if-eq v5, v0, :cond_2

    .line 190
    .line 191
    const/16 v0, 0x2e

    .line 192
    .line 193
    if-ne v5, v0, :cond_5

    .line 194
    .line 195
    goto :goto_1

    .line 196
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    new-array v1, v3, [I

    .line 205
    .line 206
    aput v5, v1, v4

    .line 207
    .line 208
    new-instance v0, Ljava/lang/String;

    .line 209
    .line 210
    invoke-direct {v0, v1, v4, v3}, Ljava/lang/String;-><init>([III)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v0, " at code point offset "

    .line 217
    .line 218
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    sub-int/2addr v6, v3

    .line 222
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 230
    .line 231
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_6
    const-string v0, "Scheme cannot be empty"

    .line 236
    .line 237
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 238
    .line 239
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    :goto_4
    throw v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch LX/03u; {:try_start_1 .. :try_end_1} :catch_1

    .line 243
    :cond_7
    :try_start_2
    const/4 v0, 0x0

    .line 244
    invoke-static {p1, v0, v7, v4, v2}, LX/0Ao;->A01(Ljava/lang/String;Ljava/lang/String;Ljava/text/BreakIterator;II)LX/0Ao;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    goto :goto_5

    .line 249
    :cond_8
    add-int/lit8 v0, v9, 0x1

    .line 250
    .line 251
    invoke-static {p1, v10, v7, v0, v2}, LX/0Ao;->A01(Ljava/lang/String;Ljava/lang/String;Ljava/text/BreakIterator;II)LX/0Ao;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    :goto_5
    invoke-virtual {v0}, LX/0Ao;->A03()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    return-object v0

    .line 260
    :cond_9
    const/4 v2, 0x0

    .line 261
    new-instance v1, LX/0Ao;

    .line 262
    .line 263
    move-object v3, v2

    .line 264
    move-object v4, v2

    .line 265
    move-object v5, v2

    .line 266
    move-object v6, v2

    .line 267
    invoke-direct/range {v1 .. v6}, LX/0Ao;-><init>(LX/0Ap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    new-instance v0, LX/03u;

    .line 271
    .line 272
    invoke-direct {v0, v1}, LX/03u;-><init>(LX/0Ao;)V

    .line 273
    .line 274
    .line 275
    goto :goto_6

    .line 276
    :catch_0
    move-exception v2

    .line 277
    const/4 v9, 0x0

    .line 278
    new-instance v8, LX/0Ao;

    .line 279
    .line 280
    move-object v11, v9

    .line 281
    move-object v12, v9

    .line 282
    move-object v13, v9

    .line 283
    invoke-direct/range {v8 .. v13}, LX/0Ao;-><init>(LX/0Ap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    const-string v1, "Uri contained an invalid scheme"

    .line 287
    .line 288
    new-instance v0, LX/03u;

    .line 289
    .line 290
    invoke-direct {v0, v8, v1, v2}, LX/03u;-><init>(LX/0Ao;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .line 292
    .line 293
    :goto_6
    throw v0
    :try_end_2
    .catch LX/03u; {:try_start_2 .. :try_end_2} :catch_1

    .line 294
    :catch_1
    move-exception v0

    .line 295
    iget-object v0, v0, LX/03u;->A00:LX/0Ao;

    .line 296
    .line 297
    invoke-virtual {v0}, LX/0Ao;->A03()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    return-object v0
.end method
