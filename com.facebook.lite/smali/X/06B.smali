.class public final LX/06B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/03T;


# static fields
.field public static final A07:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field public static final A08:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final A09:Ljava/util/regex/Pattern;


# instance fields
.field public final A00:Landroid/text/format/Time;

.field public final A01:LX/05a;

.field public final A02:Ljava/util/ArrayList;

.field public final A03:Ljava/util/Map;

.field public final A04:Ljava/util/Set;

.field public final A05:Ljava/util/concurrent/atomic/AtomicReference;

.field public final A06:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, LX/06B;->A08:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    .line 7
    const-string v1, "^Cmd line: (.*)"

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, LX/06B;->A09:Ljava/util/regex/Pattern;

    .line 16
    .line 17
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v0, LX/06B;->A07:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 23
    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, LX/06B;->A02:Ljava/util/ArrayList;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, LX/06B;->A04:Ljava/util/Set;

    .line 15
    .line 16
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, LX/06B;->A03:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v0, LX/05a;

    .line 23
    .line 24
    invoke-direct {v0}, LX/05a;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, LX/06B;->A01:LX/05a;

    .line 28
    .line 29
    new-instance v0, Landroid/text/format/Time;

    .line 30
    .line 31
    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, LX/06B;->A00:Landroid/text/format/Time;

    .line 35
    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, LX/06B;->A06:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    .line 43
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, LX/06B;->A05:Ljava/util/concurrent/atomic/AtomicReference;

    .line 49
    .line 50
    sget-object v0, LX/078;->A00:LX/077;

    .line 51
    .line 52
    const-string v1, "ErrorReporter"

    .line 53
    .line 54
    if-eqz v0, :cond_0

    .line 55
    .line 56
    const-string v0, "ErrorReportingDiagnosticData.setInstance already set."

    .line 57
    .line 58
    invoke-static {v1, v0}, LX/06s;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :cond_0
    new-instance v0, LX/06l;

    .line 63
    .line 64
    invoke-direct {v0}, LX/06l;-><init>()V

    .line 65
    .line 66
    .line 67
    sput-object v0, LX/078;->A00:LX/077;

    .line 68
    .line 69
    new-instance v0, LX/06b;

    .line 70
    .line 71
    invoke-direct {v0}, LX/06b;-><init>()V

    .line 72
    .line 73
    .line 74
    const-class v1, LX/02i;

    .line 75
    .line 76
    monitor-enter v1

    .line 77
    :try_start_0
    sput-object v0, LX/02i;->A00:LX/02j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    monitor-exit v1

    .line 80
    return-void

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    monitor-exit v1

    .line 83
    throw v0
.end method


# virtual methods
.method public final AGf(LX/04m;Ljava/lang/Thread;Ljava/lang/Throwable;)I
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 1
    throw v0
.end method
