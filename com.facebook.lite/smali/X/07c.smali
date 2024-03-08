.class public final LX/07c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/00I;


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
.method public final ATZ()V
    .locals 9

    .line 0
    const-wide/16 v6, 0x40

    .line 1
    .line 2
    sget-wide v3, LX/00E;->A01:J

    .line 3
    .line 4
    and-long v1, v6, v3

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    cmp-long v0, v1, v4

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Process;->myTid()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v0, "thread_name"

    .line 25
    .line 26
    invoke-static {v0, v2, v1}, Lcom/facebook/systrace/Systrace;->A0D(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    const-wide/16 v2, 0x1

    .line 30
    .line 31
    sget-wide v0, LX/00E;->A01:J

    .line 32
    .line 33
    and-long/2addr v2, v0

    .line 34
    cmp-long v0, v2, v4

    .line 35
    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const/16 v0, 0x7f

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 43
    .line 44
    .line 45
    const-string v0, "Android trace tags: "

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v0, "debug.atrace.tags.enableflags"

    .line 51
    .line 52
    invoke-static {v0}, LX/05s;->A00(Ljava/lang/String;)J

    .line 53
    .line 54
    .line 55
    move-result-wide v0

    .line 56
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, ", Facebook trace tags: "

    .line 60
    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    sget-wide v0, LX/00E;->A01:J

    .line 65
    .line 66
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    const/4 v1, 0x0

    .line 74
    const-string v0, "process_labels"

    .line 75
    .line 76
    invoke-static {v0, v1, v2}, Lcom/facebook/systrace/Systrace;->A0D(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_1
    sget-wide v0, LX/00E;->A01:J

    .line 80
    .line 81
    and-long/2addr v6, v0

    .line 82
    cmp-long v0, v6, v4

    .line 83
    .line 84
    if-eqz v0, :cond_2

    .line 85
    .line 86
    invoke-static {}, LX/097;->A00()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v0, "process_name"

    .line 91
    .line 92
    const/4 v7, 0x0

    .line 93
    invoke-static {v0, v7, v1}, Lcom/facebook/systrace/Systrace;->A0D(Ljava/lang/String;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "dalvik.vm.heapgrowthlimit"

    .line 97
    .line 98
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    const-string v0, "dalvik.vm.heapmaxfree"

    .line 103
    .line 104
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    const-string v0, "dalvik.vm.heapminfree"

    .line 109
    .line 110
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    const-string v0, "dalvik.vm.heapstartsize"

    .line 115
    .line 116
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    const-string v0, "dalvik.vm.heaptargetutilization"

    .line 121
    .line 122
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 127
    .line 128
    const/4 v0, 0x6

    .line 129
    new-array v1, v0, [Ljava/lang/Object;

    .line 130
    .line 131
    aput-object v2, v1, v7

    .line 132
    .line 133
    const/4 v0, 0x1

    .line 134
    aput-object v8, v1, v0

    .line 135
    .line 136
    invoke-static {v4, v6, v5, v1}, LX/000;->A0J(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    const/4 v0, 0x5

    .line 140
    aput-object v3, v1, v0

    .line 141
    .line 142
    const-string v0, "device=%s,heapgrowthlimit=%s,heapstartsize=%s,heapminfree=%s,heapmaxfree=%s,heaptargetutilization=%s"

    .line 143
    .line 144
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    const-string v0, "process_labels"

    .line 149
    .line 150
    invoke-static {v0, v7, v1}, Lcom/facebook/systrace/Systrace;->A0D(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :cond_2
    return-void
.end method

.method public final ATb()V
    .locals 0

    .line 0
    return-void
.end method
