.class public final LX/07N;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A02:LX/07N;

.field public static final A03:LX/07N;

.field public static final A04:LX/07N;

.field public static final A05:LX/07N;

.field public static final A06:LX/07N;

.field public static final A07:LX/07N;

.field public static final A08:LX/07N;

.field public static final A09:LX/07N;

.field public static final A0A:LX/07N;

.field public static final A0B:LX/07N;

.field public static final A0C:LX/07N;

.field public static final A0D:LX/07N;

.field public static final A0E:LX/07N;

.field public static final A0F:LX/07N;

.field public static final A0G:Ljava/util/Set;


# instance fields
.field public final A00:Ljava/lang/String;

.field public final A01:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 0
    new-instance v0, Ljava/util/HashSet;

    .line 1
    .line 2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, LX/07N;->A0G:Ljava/util/Set;

    .line 6
    .line 7
    const-string v3, "anr_report_file"

    .line 8
    .line 9
    const-string v1, "__"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    new-instance v0, LX/07N;

    .line 13
    .line 14
    invoke-direct {v0, v3, v2, v1}, LX/07N;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, LX/07N;->A02:LX/07N;

    .line 18
    .line 19
    const-string v1, "minidump_file"

    .line 20
    .line 21
    const-string v3, ""

    .line 22
    .line 23
    new-instance v0, LX/07N;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2, v3}, LX/07N;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sput-object v0, LX/07N;->A0B:LX/07N;

    .line 29
    .line 30
    const-string v1, "APP_PROCESS_FILE"

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    new-instance v0, LX/07N;

    .line 34
    .line 35
    invoke-direct {v0, v1, v2, v3}, LX/07N;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sput-object v0, LX/07N;->A03:LX/07N;

    .line 39
    .line 40
    const-string v1, "black_box_trace_file"

    .line 41
    .line 42
    const-string v4, "_r_"

    .line 43
    .line 44
    new-instance v0, LX/07N;

    .line 45
    .line 46
    invoke-direct {v0, v1, v2, v4}, LX/07N;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, LX/07N;->A04:LX/07N;

    .line 50
    .line 51
    const-string v1, "bluetooth_secure_traffic_file"

    .line 52
    .line 53
    new-instance v0, LX/07N;

    .line 54
    .line 55
    invoke-direct {v0, v1, v2, v3}, LX/07N;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sput-object v0, LX/07N;->A06:LX/07N;

    .line 59
    .line 60
    const-string v1, "bluetooth_insecure_traffic_file"

    .line 61
    .line 62
    new-instance v0, LX/07N;

    .line 63
    .line 64
    invoke-direct {v0, v1, v2, v3}, LX/07N;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    sput-object v0, LX/07N;->A05:LX/07N;

    .line 68
    .line 69
    const-string v1, "CORE_DUMP"

    .line 70
    .line 71
    new-instance v0, LX/07N;

    .line 72
    .line 73
    invoke-direct {v0, v1, v2, v3}, LX/07N;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sput-object v0, LX/07N;->A07:LX/07N;

    .line 77
    .line 78
    const-string v1, "FAT_MINIDUMP"

    .line 79
    .line 80
    new-instance v0, LX/07N;

    .line 81
    .line 82
    invoke-direct {v0, v1, v2, v3}, LX/07N;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sput-object v0, LX/07N;->A08:LX/07N;

    .line 86
    .line 87
    const-string v1, "fury_traces_file"

    .line 88
    .line 89
    new-instance v0, LX/07N;

    .line 90
    .line 91
    invoke-direct {v0, v1, v2, v4}, LX/07N;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v0, LX/07N;->A09:LX/07N;

    .line 95
    .line 96
    const-string v1, "logcat_file"

    .line 97
    .line 98
    new-instance v0, LX/07N;

    .line 99
    .line 100
    invoke-direct {v0, v1, v2, v3}, LX/07N;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 101
    .line 102
    .line 103
    sput-object v0, LX/07N;->A0A:LX/07N;

    .line 104
    .line 105
    const-string v1, "msys_crash_reporter_file"

    .line 106
    .line 107
    new-instance v0, LX/07N;

    .line 108
    .line 109
    invoke-direct {v0, v1, v2, v3}, LX/07N;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sput-object v0, LX/07N;->A0C:LX/07N;

    .line 113
    .line 114
    const-string v1, "properties_file"

    .line 115
    .line 116
    new-instance v0, LX/07N;

    .line 117
    .line 118
    invoke-direct {v0, v1, v2, v3}, LX/07N;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, LX/07N;->A0D:LX/07N;

    .line 122
    .line 123
    const-string v1, "report_source_file"

    .line 124
    .line 125
    new-instance v0, LX/07N;

    .line 126
    .line 127
    invoke-direct {v0, v1, v2, v3}, LX/07N;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sput-object v0, LX/07N;->A0E:LX/07N;

    .line 131
    .line 132
    const-string v1, "system_health_file"

    .line 133
    .line 134
    new-instance v0, LX/07N;

    .line 135
    .line 136
    invoke-direct {v0, v1, v2, v3}, LX/07N;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sput-object v0, LX/07N;->A0F:LX/07N;

    .line 140
    .line 141
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/07N;->A00:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, LX/07N;->A01:Ljava/lang/String;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    sget-object v0, LX/07N;->A0G:Ljava/util/Set;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, LX/07N;->A00:Ljava/lang/String;

    .line 1
    .line 2
    return-object v0
.end method
