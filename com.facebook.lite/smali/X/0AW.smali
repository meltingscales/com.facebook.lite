.class public abstract LX/0AW;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:LX/0AV;


# direct methods
.method public constructor <init>(LX/0AV;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/0AW;->A00:LX/0AV;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public A00(Landroid/content/Context;Landroid/content/Intent;LX/0AH;Ljava/lang/Object;)Z
    .locals 12

    .line 0
    iget-object v7, p0, LX/0AW;->A00:LX/0AV;

    .line 1
    .line 2
    invoke-interface {v7}, LX/0AV;->Ab3()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_c

    .line 7
    .line 8
    invoke-interface {v7}, LX/0AV;->A9K()[LX/0AU;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    const/4 v11, 0x0

    .line 13
    if-eqz v6, :cond_5

    .line 14
    .line 15
    array-length v5, v6

    .line 16
    if-lez v5, :cond_5

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    aget-object v8, v6, v4

    .line 20
    .line 21
    iget-object v1, v8, LX/0AU;->A03:Ljava/util/regex/Pattern;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_b

    .line 42
    .line 43
    :cond_0
    const/4 v9, 0x0

    .line 44
    :try_start_0
    const v0, 0xea60

    .line 45
    .line 46
    .line 47
    invoke-static {p1, p2, v9, v0}, LX/022;->A00(Landroid/content/Context;Landroid/content/Intent;LX/005;I)LX/02J;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    iget-object v3, v8, LX/0AU;->A00:LX/0AT;

    .line 52
    .line 53
    if-eqz v3, :cond_4

    .line 54
    .line 55
    if-eqz v10, :cond_b

    .line 56
    .line 57
    new-instance v2, Lorg/json/JSONObject;

    .line 58
    .line 59
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .line 61
    .line 62
    iget v1, v10, LX/02J;->A00:I

    .line 63
    .line 64
    const-string v0, "caller_uid"

    .line 65
    .line 66
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v10}, LX/02J;->A05()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    const-string v0, "caller_package_name"

    .line 76
    .line 77
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    :cond_1
    iget-object v1, v10, LX/02J;->A02:Ljava/lang/String;

    .line 81
    .line 82
    if-eqz v1, :cond_2

    .line 83
    .line 84
    const-string v0, "caller_version_name"

    .line 85
    .line 86
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    .line 88
    .line 89
    :cond_2
    iget-object v1, v10, LX/02J;->A01:Ljava/lang/String;

    .line 90
    .line 91
    if-eqz v1, :cond_3

    .line 92
    .line 93
    const-string v0, "caller_domain"

    .line 94
    .line 95
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    :cond_3
    invoke-virtual {v3, v9, v2}, LX/0AT;->A01(Landroid/content/Intent;Lorg/json/JSONObject;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-nez v0, :cond_4

    .line 103
    .line 104
    goto :goto_2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :cond_4
    invoke-virtual {v8, p2}, LX/0AU;->A02(Landroid/content/Intent;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_b

    .line 110
    .line 111
    const/4 v11, 0x1

    .line 112
    :cond_5
    const/4 v5, 0x0

    .line 113
    if-nez v11, :cond_8

    .line 114
    .line 115
    invoke-interface {v7}, LX/0AV;->AAw()[LX/0AS;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    array-length v4, v6

    .line 120
    const/4 v3, 0x0

    .line 121
    :goto_1
    if-ge v3, v4, :cond_c

    .line 122
    .line 123
    aget-object v7, v6, v3

    .line 124
    .line 125
    iget-object v1, v7, LX/0AS;->A02:Ljava/lang/String;

    .line 126
    .line 127
    if-eqz v1, :cond_6

    .line 128
    .line 129
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-eqz v0, :cond_a

    .line 142
    .line 143
    :cond_6
    iget-object v2, v7, LX/0AS;->A01:Landroid/content/IntentFilter;

    .line 144
    .line 145
    if-eqz v2, :cond_8

    .line 146
    .line 147
    iget-object v1, v7, LX/0AS;->A00:Landroid/content/ContentResolver;

    .line 148
    .line 149
    const-string v0, "TAG"

    .line 150
    .line 151
    invoke-virtual {v2, v1, p2, v5, v0}, Landroid/content/IntentFilter;->match(Landroid/content/ContentResolver;Landroid/content/Intent;ZLjava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    const/4 v1, 0x0

    .line 156
    if-lez v0, :cond_7

    .line 157
    .line 158
    const/4 v1, 0x1

    .line 159
    :cond_7
    iget-boolean v0, v7, LX/0AS;->A03:Z

    .line 160
    .line 161
    if-eqz v0, :cond_9

    .line 162
    .line 163
    if-nez v1, :cond_a

    .line 164
    .line 165
    :cond_8
    return v5

    .line 166
    :cond_9
    if-eqz v1, :cond_a

    .line 167
    .line 168
    return v5

    .line 169
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :catch_0
    :cond_b
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 173
    .line 174
    if-ge v4, v5, :cond_5

    .line 175
    .line 176
    goto/16 :goto_0

    .line 177
    .line 178
    :cond_c
    const/4 v5, 0x1

    .line 179
    return v5
.end method

.method public abstract A01(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;)Z
.end method
