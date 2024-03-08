.class public final synthetic LX/040;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final __redex_internal_original_name:Ljava/lang/String; = "ReportSender$$ExternalSyntheticLambda4"


# instance fields
.field public final synthetic A00:LX/090;

.field public final synthetic A01:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(LX/090;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/040;->A00:LX/090;

    iput-object p2, p0, LX/040;->A01:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 0
    iget-object v7, p0, LX/040;->A00:LX/090;

    .line 1
    .line 2
    iget-object v6, p0, LX/040;->A01:Ljava/util/concurrent/CountDownLatch;

    .line 3
    .line 4
    iget-object v1, v7, LX/090;->A04:LX/03o;

    .line 5
    .line 6
    const-string v0, "cleanup"

    .line 7
    .line 8
    invoke-virtual {v1, v0}, LX/03o;->A00(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_8

    .line 13
    .line 14
    iget-object v0, v7, LX/090;->A0C:LX/0BP;

    .line 15
    .line 16
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, LX/03H;

    .line 21
    .line 22
    iget-object v1, v0, LX/03H;->A01:Ljava/io/File;

    .line 23
    .line 24
    :try_start_0
    iget-object v0, v7, LX/090;->A03:LX/07q;

    .line 25
    .line 26
    invoke-virtual {v0}, LX/07q;->A02()V

    .line 27
    .line 28
    .line 29
    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :catch_0
    invoke-static {}, LX/08w;->A00()V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    if-eqz v5, :cond_8

    .line 38
    .line 39
    array-length v4, v5

    .line 40
    const/4 v3, 0x0

    .line 41
    :goto_1
    if-ge v3, v4, :cond_7

    .line 42
    .line 43
    aget-object v9, v5, v3

    .line 44
    .line 45
    :try_start_1
    new-instance v0, LX/02S;

    .line 46
    .line 47
    invoke-direct {v0}, LX/02S;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v9, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_0

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    goto :goto_2

    .line 58
    :cond_0
    array-length v1, v0

    .line 59
    :goto_2
    iget-object v10, v7, LX/090;->A03:LX/07q;

    .line 60
    .line 61
    const/4 v0, 0x3

    .line 62
    const/4 v11, 0x1

    .line 63
    const/4 v8, 0x0

    .line 64
    const/4 v2, 0x0

    .line 65
    if-lt v1, v0, :cond_1

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    iget-object v0, v7, LX/090;->A05:Ljava/lang/Runnable;

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 71
    .line 72
    .line 73
    :cond_1
    const-string v1, "_sent"

    .line 74
    .line 75
    new-instance v0, Ljava/io/File;

    .line 76
    .line 77
    invoke-direct {v0, v9, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_2

    .line 85
    .line 86
    if-eqz v2, :cond_6

    .line 87
    .line 88
    :cond_2
    sget-boolean v0, LX/090;->A0F:Z

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    new-array v2, v11, [Ljava/lang/Object;

    .line 93
    .line 94
    invoke-virtual {v9}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    aput-object v0, v2, v8

    .line 99
    .line 100
    const-string v1, "lacrima"

    .line 101
    .line 102
    const-string v0, "Would have deleted: %s"

    .line 103
    .line 104
    invoke-static {v1, v0, v2}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_3
    new-instance v0, Ljava/io/File;

    .line 109
    .line 110
    invoke-direct {v0, v9, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    const-string v8, "reports"

    .line 118
    .line 119
    if-eqz v0, :cond_5

    .line 120
    .line 121
    const-class v2, LX/07q;

    .line 122
    .line 123
    monitor-enter v2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    :try_start_2
    sget-object v0, LX/07q;->A05:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    const-string v1, "onDeleteSentReport"

    .line 140
    .line 141
    new-instance v0, Ljava/lang/NullPointerException;

    .line 142
    .line 143
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_4
    invoke-virtual {v10, v9, v8}, LX/07q;->A04(Ljava/io/File;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    monitor-exit v2

    .line 151
    goto :goto_3

    .line 152
    :catchall_0
    move-exception v0

    .line 153
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 154
    :try_start_3
    throw v0

    .line 155
    :cond_5
    if-eqz v2, :cond_6

    .line 156
    .line 157
    invoke-virtual {v10, v9}, LX/07q;->A03(Ljava/io/File;)V

    .line 158
    .line 159
    .line 160
    goto :goto_3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 161
    :catch_1
    move-exception v2

    .line 162
    const-string v1, "lacrima"

    .line 163
    .line 164
    const-string v0, "Error while deleting report directory"

    .line 165
    .line 166
    invoke-static {v1, v0, v2}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .line 168
    .line 169
    invoke-static {}, LX/08w;->A00()V

    .line 170
    .line 171
    .line 172
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 173
    .line 174
    goto/16 :goto_1

    .line 175
    .line 176
    :cond_7
    invoke-virtual {v6}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 177
    .line 178
    .line 179
    :cond_8
    return-void
.end method
