.class public final LX/08K;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A0U:LX/08K;

.field public static final A0V:Ljava/lang/String;


# instance fields
.field public A00:LX/07R;

.field public A01:LX/09B;

.field public A02:LX/0BP;

.field public A03:LX/0BP;

.field public A04:LX/0BP;

.field public A05:LX/0BP;

.field public A06:LX/0BP;

.field public A07:LX/0BP;

.field public A08:LX/0BP;

.field public A09:LX/0BP;

.field public A0A:LX/0BP;

.field public A0B:LX/0BP;

.field public A0C:LX/0BP;

.field public A0D:LX/0BP;

.field public final A0E:I

.field public final A0F:Landroid/app/Application;

.field public final A0G:Ljava/util/List;

.field public final A0H:Ljava/util/List;

.field public final A0I:Ljava/util/List;

.field public final A0J:Ljava/util/List;

.field public final A0K:LX/0BP;

.field public final A0L:LX/0BP;

.field public final A0M:LX/0BP;

.field public final A0N:LX/0BP;

.field public final A0O:LX/0BP;

.field public final A0P:LX/0BP;

.field public final A0Q:LX/0BP;

.field public final A0R:LX/0BP;

.field public final A0S:Z

.field public final A0T:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 0
    const/4 v0, 0x2

    .line 1
    new-array v2, v0, [Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v0, "mobile"

    .line 5
    .line 6
    aput-object v0, v2, v1

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const-string v0, "reliability_event_log_upload"

    .line 10
    .line 11
    aput-object v0, v2, v1

    .line 12
    .line 13
    invoke-static {v2}, LX/098;->A00([Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, LX/08K;->A0V:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;LX/0BP;LX/0BP;LX/0BP;LX/0BP;LX/0BP;LX/0BP;LX/0BP;LX/0BP;IZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 13325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13326
    iput-object p1, p0, LX/08K;->A0F:Landroid/app/Application;

    .line 13327
    iput-object p7, p0, LX/08K;->A0M:LX/0BP;

    .line 13328
    iput-object p8, p0, LX/08K;->A0R:LX/0BP;

    .line 13329
    iput-object p9, p0, LX/08K;->A0L:LX/0BP;

    .line 13330
    iput-object p10, p0, LX/08K;->A0K:LX/0BP;

    .line 13331
    iput-object p11, p0, LX/08K;->A0O:LX/0BP;

    .line 13332
    iput-object p2, p0, LX/08K;->A0G:Ljava/util/List;

    .line 13333
    iput-object p3, p0, LX/08K;->A0H:Ljava/util/List;

    .line 13334
    iput-object p4, p0, LX/08K;->A0I:Ljava/util/List;

    .line 13335
    iput-object p5, p0, LX/08K;->A0J:Ljava/util/List;

    .line 13336
    iput-object p12, p0, LX/08K;->A0Q:LX/0BP;

    .line 13337
    iput-object p13, p0, LX/08K;->A0N:LX/0BP;

    .line 13338
    iput-object v0, p0, LX/08K;->A0C:LX/0BP;

    .line 13339
    iput-object v0, p0, LX/08K;->A0B:LX/0BP;

    .line 13340
    iput-object v0, p0, LX/08K;->A04:LX/0BP;

    .line 13341
    iput-object v0, p0, LX/08K;->A09:LX/0BP;

    .line 13342
    iput-object p6, p0, LX/08K;->A0P:LX/0BP;

    .line 13343
    iput-object v0, p0, LX/08K;->A0A:LX/0BP;

    .line 13344
    iput-object v0, p0, LX/08K;->A05:LX/0BP;

    .line 13345
    move/from16 v0, p15

    iput-boolean v0, p0, LX/08K;->A0S:Z

    .line 13346
    iput p14, p0, LX/08K;->A0E:I

    .line 13347
    move/from16 v0, p16

    iput-boolean v0, p0, LX/08K;->A0T:Z

    .line 13348
    sput-object p0, LX/08K;->A0U:LX/08K;

    .line 13349
    invoke-static {}, LX/08w;->A00()V

    invoke-interface {p6}, LX/0BP;->get()Ljava/lang/Object;

    return-void
.end method

.method public static A00(LX/08K;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .line 0
    const-string v0, "maybeReportSoftError"

    .line 1
    .line 2
    invoke-static {v0}, LX/04s;->A01(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    cmpg-double v0, v3, v1

    .line 15
    .line 16
    if-gez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, LX/08K;->A0R:LX/0BP;

    .line 19
    .line 20
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v7

    .line 24
    check-cast v7, Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p0, LX/08K;->A0L:LX/0BP;

    .line 27
    .line 28
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    check-cast v6, Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, p0, LX/08K;->A0K:LX/0BP;

    .line 35
    .line 36
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    check-cast v5, Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, p0, LX/08K;->A0Q:LX/0BP;

    .line 43
    .line 44
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ljava/lang/String;

    .line 49
    .line 50
    const-string v3, "lacrima"

    .line 51
    .line 52
    invoke-static {}, LX/000;->A0F()Ljava/util/HashMap;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    sget-object v1, LX/07M;->A4h:LX/05l;

    .line 57
    .line 58
    invoke-static {p2}, LX/07F;->A01(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v1, v0, v2}, LX/07k;->A02(LX/07H;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    invoke-static {v7, v6, v5, v4, v2}, LX/07k;->A03(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v3, p1, v2}, LX/07k;->A04(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, LX/07k;->A00()LX/07k;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v0, "android_large_soft_error"

    .line 76
    .line 77
    invoke-virtual {v1, v0, v2}, LX/07k;->A06(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    :cond_0
    invoke-static {}, LX/04s;->A00()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    invoke-static {}, LX/04s;->A00()V

    .line 86
    .line 87
    .line 88
    throw v0
.end method
