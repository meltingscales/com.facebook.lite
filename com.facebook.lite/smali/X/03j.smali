.class public final LX/03j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08p;


# instance fields
.field public final A00:Landroid/app/Application;

.field public final A01:LX/07R;

.field public final A02:LX/09B;


# direct methods
.method public constructor <init>(Landroid/app/Application;LX/07R;LX/09B;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/03j;->A00:Landroid/app/Application;

    .line 4
    .line 5
    iput-object p3, p0, LX/03j;->A02:LX/09B;

    .line 6
    .line 7
    iput-object p2, p0, LX/03j;->A01:LX/07R;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
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
    sget-object v0, LX/08q;->A0C:LX/08q;

    .line 1
    .line 2
    return-object v0
.end method

.method public final start()V
    .locals 7

    .line 0
    const-string v2, "fb.report_source"

    .line 1
    .line 2
    invoke-static {v2}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const-string v5, ""

    .line 7
    .line 8
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    new-instance v4, LX/02u;

    .line 20
    .line 21
    invoke-direct {v4, v0}, LX/02u;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    sget-object v0, LX/07M;->A8c:LX/05l;

    .line 31
    .line 32
    invoke-virtual {v4, v0, v1}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "fb.test_name"

    .line 36
    .line 37
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const-string v0, "fb.test_execution_uuid"

    .line 42
    .line 43
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_6

    .line 52
    .line 53
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_6

    .line 58
    .line 59
    iget-object v0, p0, LX/03j;->A02:LX/09B;

    .line 60
    .line 61
    iget-object v1, v0, LX/09B;->A07:Ljava/io/File;

    .line 62
    .line 63
    const-string v0, "report_source"

    .line 64
    .line 65
    new-instance v3, Ljava/io/File;

    .line 66
    .line 67
    invoke-direct {v3, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/io/File;->mkdir()Z

    .line 71
    .line 72
    .line 73
    sget-object v2, LX/07N;->A0E:LX/07N;

    .line 74
    .line 75
    const-string v0, "report_source_ref.txt"

    .line 76
    .line 77
    new-instance v1, Ljava/io/File;

    .line 78
    .line 79
    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    sget-object v0, LX/02m;->A02:LX/02m;

    .line 83
    .line 84
    invoke-virtual {v4, v2, v0, v1}, LX/02u;->A05(LX/07N;LX/02m;Ljava/io/File;)V

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_0
    const-string v0, "fb.testing.build_target"

    .line 88
    .line 89
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_2

    .line 98
    .line 99
    sget-object v0, LX/07M;->A6r:LX/05l;

    .line 100
    .line 101
    invoke-virtual {v4, v0, v1}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    const-string v0, "fb.fury_stacktraces_filename"

    .line 105
    .line 106
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_3

    .line 115
    .line 116
    iget-object v0, p0, LX/03j;->A00:Landroid/app/Application;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    sget-object v2, LX/07N;->A09:LX/07N;

    .line 123
    .line 124
    new-instance v1, Ljava/io/File;

    .line 125
    .line 126
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    sget-object v0, LX/02m;->A02:LX/02m;

    .line 130
    .line 131
    invoke-virtual {v4, v2, v0, v1}, LX/02u;->A05(LX/07N;LX/02m;Ljava/io/File;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    const-string v2, "ig.ig_server_rev_hash"

    .line 135
    .line 136
    invoke-static {v2}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_4

    .line 145
    .line 146
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    if-eqz v1, :cond_5

    .line 151
    .line 152
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-nez v0, :cond_5

    .line 157
    .line 158
    sget-object v0, LX/07M;->A5f:LX/05l;

    .line 159
    .line 160
    invoke-virtual {v4, v0, v1}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_5
    iget-object v1, p0, LX/03j;->A01:LX/07R;

    .line 164
    .line 165
    sget-object v0, LX/02m;->A02:LX/02m;

    .line 166
    .line 167
    invoke-virtual {v1, v4, v0, p0}, LX/07R;->A06(LX/02u;LX/02m;LX/08p;)V

    .line 168
    .line 169
    .line 170
    sget-object v0, LX/02m;->A03:LX/02m;

    .line 171
    .line 172
    invoke-virtual {v1, v4, v0, p0}, LX/07R;->A06(LX/02u;LX/02m;LX/08p;)V

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const/16 v0, 0x7b

    .line 182
    .line 183
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v0, "\"test_name\":"

    .line 187
    .line 188
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const/16 v1, 0x22

    .line 192
    .line 193
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v0, "\","

    .line 200
    .line 201
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v0, "\"test_execution_uuid\":"

    .line 205
    .line 206
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    const/16 v0, 0x7d

    .line 219
    .line 220
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    sget-object v1, LX/07M;->A8e:LX/05l;

    .line 224
    .line 225
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    invoke-virtual {v4, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_0
.end method
