.class public final LX/0BI;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final __redex_internal_original_name:Ljava/lang/String; = "UnpackingSoSource$2"


# instance fields
.field public final synthetic A00:LX/0Aw;

.field public final synthetic A01:LX/05T;

.field public final synthetic A02:Ljava/io/File;

.field public final synthetic A03:Z


# direct methods
.method public constructor <init>(LX/0Aw;LX/05T;Ljava/io/File;Z)V
    .locals 0

    .line 0
    iput-object p2, p0, LX/0BI;->A01:LX/05T;

    .line 1
    .line 2
    iput-boolean p4, p0, LX/0BI;->A03:Z

    .line 3
    .line 4
    iput-object p3, p0, LX/0BI;->A02:Ljava/io/File;

    .line 5
    .line 6
    iput-object p1, p0, LX/0BI;->A00:LX/0Aw;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 0
    const-string v3, "fb-UnpackingSoSource"

    .line 1
    .line 2
    invoke-static {v3}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    :try_start_0
    iget-boolean v2, p0, LX/0BI;->A03:Z

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, LX/0BI;->A01:LX/05T;

    .line 10
    .line 11
    iget-object v0, v0, LX/08V;->A01:Ljava/io/File;

    .line 12
    .line 13
    invoke-static {v0}, LX/0BF;->A06(Ljava/io/File;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, LX/0BI;->A02:Ljava/io/File;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    invoke-static {v1, v0, v2}, LX/05T;->A00(Ljava/io/File;BZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-static {v3}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, LX/0BI;->A00:LX/0Aw;

    .line 26
    .line 27
    invoke-virtual {v0}, LX/0Aw;->close()V

    .line 28
    .line 29
    .line 30
    return-void
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    :try_start_2
    invoke-static {v3}, LX/0Ax;->A00(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, LX/0BI;->A00:LX/0Aw;

    .line 36
    .line 37
    invoke-virtual {v0}, LX/0Aw;->close()V

    .line 38
    .line 39
    .line 40
    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 41
    :catch_0
    move-exception v1

    .line 42
    new-instance v0, Ljava/lang/RuntimeException;

    .line 43
    .line 44
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    throw v0
.end method
