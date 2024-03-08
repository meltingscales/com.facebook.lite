.class public final synthetic LX/08z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final __redex_internal_original_name:Ljava/lang/String; = "ReportSender$$ExternalSyntheticLambda3"


# instance fields
.field public final synthetic A00:LX/02N;

.field public final synthetic A01:LX/090;

.field public final synthetic A02:LX/04A;

.field public final synthetic A03:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(LX/02N;LX/090;LX/04A;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LX/08z;->A01:LX/090;

    iput-object p4, p0, LX/08z;->A03:Ljava/io/File;

    iput-object p1, p0, LX/08z;->A00:LX/02N;

    iput-object p3, p0, LX/08z;->A02:LX/04A;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v4, p0, LX/08z;->A01:LX/090;

    .line 1
    .line 2
    iget-object v3, p0, LX/08z;->A03:Ljava/io/File;

    .line 3
    .line 4
    iget-object v2, p0, LX/08z;->A00:LX/02N;

    .line 5
    .line 6
    iget-object v1, p0, LX/08z;->A02:LX/04A;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :try_start_0
    invoke-static {v2, v4, v1, v3}, LX/090;->A01(LX/02N;LX/090;LX/04A;Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, v4, LX/090;->A01:Ljava/util/concurrent/ScheduledExecutorService;

    .line 13
    .line 14
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-static {}, LX/08w;->A00()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    throw v0
.end method
