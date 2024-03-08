.class public final LX/05G;
.super LX/03y;
.source ""


# static fields
.field public static final __redex_internal_original_name:Ljava/lang/String; = "DirectReportInternal$2"


# instance fields
.field public final synthetic A00:LX/07k;

.field public final synthetic A01:Ljava/lang/String;

.field public final synthetic A02:Ljava/util/Map;


# direct methods
.method public constructor <init>(LX/07k;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/05G;->A00:LX/07k;

    .line 1
    .line 2
    iput-object p2, p0, LX/05G;->A01:Ljava/lang/String;

    .line 3
    .line 4
    iput-object p3, p0, LX/05G;->A02:Ljava/util/Map;

    .line 5
    .line 6
    invoke-direct {p0}, LX/03y;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 0
    const/4 v3, 0x0

    .line 1
    :try_start_0
    iget-object v5, p0, LX/05G;->A00:LX/07k;

    .line 2
    .line 3
    iget-object v0, v5, LX/07k;->A00:LX/03x;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, v5, LX/07k;->A01:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, LX/03r;->A01(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v1, LX/03w;

    .line 14
    .line 15
    invoke-direct {v1}, LX/03w;-><init>()V

    .line 16
    .line 17
    .line 18
    new-instance v0, LX/03x;

    .line 19
    .line 20
    invoke-direct {v0, v2, v1, v3}, LX/03x;-><init>(Landroid/net/Uri;LX/03v;LX/03q;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, v5, LX/07k;->A00:LX/03x;

    .line 24
    .line 25
    :cond_0
    sget-object v0, LX/07k;->A07:Landroid/app/Application;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-static {v0}, LX/02R;->A00(Landroid/content/Context;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v1, p0, LX/05G;->A01:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v0, p0, LX/05G;->A02:Ljava/util/Map;

    .line 39
    .line 40
    new-instance v4, Ljava/util/Properties;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, LX/07M;->A6X:LX/05l;

    .line 49
    .line 50
    iget-object v0, v0, LX/07H;->A00:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v4, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-static {}, LX/07k;->A01()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 56
    .line 57
    .line 58
    :try_start_1
    sget-object v6, LX/07k;->A08:Ljava/io/File;

    .line 59
    .line 60
    const-string v2, "ig.ig_server_rev_hash"

    .line 61
    .line 62
    invoke-static {v2}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v3, ""

    .line 67
    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    sget-object v0, LX/07M;->A5f:LX/05l;

    .line 87
    .line 88
    iget-object v0, v0, LX/07H;->A00:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v4, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :cond_3
    const-string v2, "fb.report_source"

    .line 94
    .line 95
    invoke-static {v2}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-eqz v0, :cond_4

    .line 104
    .line 105
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-eqz v1, :cond_7

    .line 110
    .line 111
    :cond_4
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_7

    .line 116
    .line 117
    sget-object v0, LX/07M;->A8c:LX/05l;

    .line 118
    .line 119
    iget-object v0, v0, LX/07H;->A00:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v4, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    if-eqz v6, :cond_6

    .line 125
    .line 126
    const-string v0, "report_source"

    .line 127
    .line 128
    invoke-static {v6, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    const-string v0, "report_source_ref.txt"

    .line 133
    .line 134
    invoke-static {v1, v0}, LX/000;->A04(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_6

    .line 143
    .line 144
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    new-instance v0, Ljava/io/FileReader;

    .line 149
    .line 150
    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 151
    .line 152
    .line 153
    new-instance v2, Ljava/io/BufferedReader;

    .line 154
    .line 155
    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .line 157
    .line 158
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-eqz v0, :cond_5

    .line 163
    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const/16 v0, 0xa

    .line 168
    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    :try_start_3
    invoke-virtual {v2}, Ljava/io/Reader;->close()V

    .line 178
    .line 179
    .line 180
    if-eqz v1, :cond_6

    .line 181
    .line 182
    goto :goto_1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 183
    :catchall_0
    move-exception v0

    .line 184
    :try_start_4
    invoke-virtual {v2}, Ljava/io/Reader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 185
    .line 186
    .line 187
    :catchall_1
    :try_start_5
    throw v0

    .line 188
    :goto_1
    sget-object v0, LX/07M;->A8e:LX/05l;

    .line 189
    .line 190
    iget-object v0, v0, LX/07H;->A00:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v4, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    :cond_6
    const-string v0, "fb.testing.build_target"

    .line 196
    .line 197
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-nez v0, :cond_7

    .line 206
    .line 207
    const-string v0, "mobile_build_target"

    .line 208
    .line 209
    invoke-virtual {v4, v0, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    goto :goto_2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 213
    :catch_0
    :try_start_6
    move-exception v2

    .line 214
    invoke-static {}, LX/08w;->A00()V

    .line 215
    .line 216
    .line 217
    const-string v1, "lacrima"

    .line 218
    .line 219
    const-string v0, "Failed to read report source ref"

    .line 220
    .line 221
    invoke-static {v1, v0, v2}, LX/06s;->A0C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 222
    .line 223
    .line 224
    :cond_7
    :goto_2
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    iget-object v2, v5, LX/07k;->A00:LX/03x;

    .line 229
    .line 230
    new-instance v1, LX/02O;

    .line 231
    .line 232
    invoke-direct {v1, v4}, LX/02O;-><init>(Ljava/util/Properties;)V

    .line 233
    .line 234
    .line 235
    const/4 v0, 0x1

    .line 236
    invoke-virtual {v2, v1, v3, v0}, LX/03x;->A01(LX/02N;Ljava/util/Map;I)Z

    .line 237
    .line 238
    .line 239
    invoke-virtual {v3}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-eqz v0, :cond_8

    .line 252
    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v0

    .line 257
    check-cast v0, LX/05Y;

    .line 258
    .line 259
    iget-object v0, v0, LX/05Y;->A01:Ljava/io/InputStream;

    .line 260
    .line 261
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 262
    .line 263
    .line 264
    goto :goto_3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 265
    :catch_1
    move-exception v2

    .line 266
    invoke-static {}, LX/08w;->A00()V

    .line 267
    .line 268
    .line 269
    const-string v1, "lacrima"

    .line 270
    .line 271
    const-string v0, "Failed to send direct report"

    .line 272
    .line 273
    invoke-static {v1, v0, v2}, LX/06s;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    .line 275
    .line 276
    :cond_8
    return-void
.end method
