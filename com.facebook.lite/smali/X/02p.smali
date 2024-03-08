.class public abstract LX/02p;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/07P;


# instance fields
.field public final A00:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/02p;->A00:Landroid/content/Context;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final ACC()Ljava/lang/Integer;
    .locals 1

    .line 0
    sget-object v0, LX/050;->A07:Ljava/lang/Integer;

    .line 1
    .line 2
    return-object v0
.end method

.method public final AV8(LX/02u;LX/02m;)V
    .locals 5

    .line 0
    sget-object v1, LX/07M;->A52:LX/05l;

    .line 1
    .line 2
    move-object v0, p0

    .line 3
    check-cast v0, LX/02q;

    .line 4
    .line 5
    iget-object v0, v0, LX/02q;->A01:LX/08K;

    .line 6
    .line 7
    iget-object v0, v0, LX/08K;->A0M:LX/0BP;

    .line 8
    .line 9
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v1, LX/07M;->A54:LX/05l;

    .line 19
    .line 20
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v1, LX/07M;->A55:LX/05l;

    .line 26
    .line 27
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, LX/07M;->A50:LX/05l;

    .line 33
    .line 34
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, LX/07M;->A57:LX/05l;

    .line 40
    .line 41
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-object v1, LX/07M;->A56:LX/05l;

    .line 47
    .line 48
    const-string v0, "Android"

    .line 49
    .line 50
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sget-object v4, LX/07M;->A3S:LX/05l;

    .line 54
    .line 55
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    .line 57
    const-string v3, "DALVIK"

    .line 58
    .line 59
    const/16 v0, 0x13

    .line 60
    .line 61
    if-lt v2, v0, :cond_0

    .line 62
    .line 63
    const-string v0, "java.boot.class.path"

    .line 64
    .line 65
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_7

    .line 70
    .line 71
    const-string v0, "/system/framework/core-libart.jar"

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    const-string v3, "ART"

    .line 80
    .line 81
    :cond_0
    :goto_0
    invoke-virtual {p1, v4, v3}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v1, LX/07M;->A3T:LX/05l;

    .line 85
    .line 86
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    sget-object v4, LX/07M;->A8v:LX/05l;

    .line 92
    .line 93
    new-instance v3, LX/03a;

    .line 94
    .line 95
    invoke-direct {v3}, LX/03a;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    iget-object v0, v3, LX/03a;->A00:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, ":"

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v0, v3, LX/03a;->A01:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {p1, v4, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    sget-object v3, LX/07M;->A08:LX/05n;

    .line 126
    .line 127
    const-string v1, "/apex/com.android.art/lib64/libart.so"

    .line 128
    .line 129
    new-instance v0, Ljava/io/File;

    .line 130
    .line 131
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    if-nez v0, :cond_1

    .line 139
    .line 140
    const-string v1, "/apex/com.android.art/lib/libart.so"

    .line 141
    .line 142
    new-instance v0, Ljava/io/File;

    .line 143
    .line 144
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-nez v0, :cond_5

    .line 152
    .line 153
    const-string v1, "/system/lib64/libc.so"

    .line 154
    .line 155
    new-instance v0, Ljava/io/File;

    .line 156
    .line 157
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    if-eqz v0, :cond_5

    .line 165
    .line 166
    :cond_1
    const/4 v0, 0x1

    .line 167
    :goto_1
    invoke-virtual {p1, v3, v0}, LX/02u;->A01(LX/05n;Z)V

    .line 168
    .line 169
    .line 170
    const/16 v0, 0x1e

    .line 171
    .line 172
    if-lt v2, v0, :cond_4

    .line 173
    .line 174
    invoke-static {}, LX/07f;->A00()Lorg/json/JSONObject;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-lez v0, :cond_2

    .line 183
    .line 184
    sget-object v1, LX/07M;->A8o:LX/05l;

    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-virtual {p1, v1, v0}, LX/02u;->A04(LX/05l;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_2
    :goto_2
    invoke-static {p1}, LX/04T;->A00(LX/02u;)V

    .line 194
    .line 195
    .line 196
    const/16 v0, 0x1b

    .line 197
    .line 198
    if-lt v2, v0, :cond_3

    .line 199
    .line 200
    iget-object v0, p0, LX/02p;->A00:Landroid/content/Context;

    .line 201
    .line 202
    invoke-static {v0, p1}, LX/03b;->A00(Landroid/content/Context;LX/02u;)V

    .line 203
    .line 204
    .line 205
    :cond_3
    return-void

    .line 206
    :cond_4
    const/16 v0, 0x17

    .line 207
    .line 208
    if-lt v2, v0, :cond_3

    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_5
    const/4 v0, 0x0

    .line 212
    goto :goto_1

    .line 213
    :cond_6
    const-string v0, "/system/framework/core.jar"

    .line 214
    .line 215
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    if-eqz v0, :cond_7

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_7
    const-string v3, "UNKNOWN"

    .line 224
    .line 225
    goto/16 :goto_0
.end method
