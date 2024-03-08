.class public final LX/08P;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/0B5;


# instance fields
.field public final A00:LX/0B5;


# direct methods
.method public constructor <init>(LX/0B5;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p1, p0, LX/08P;->A00:LX/0B5;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final load(Ljava/lang/String;I)V
    .locals 4

    .line 0
    iget-object v2, p0, LX/08P;->A00:LX/0B5;

    .line 1
    .line 2
    sget-object v3, LX/044;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    .line 3
    .line 4
    invoke-static {v3}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    array-length v1, v0

    .line 11
    const/4 v0, 0x0

    .line 12
    if-ge v0, v1, :cond_0

    .line 13
    .line 14
    const-string v0, "onSoFileLoaderLoadStart"

    .line 15
    .line 16
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    throw v0

    .line 21
    :cond_0
    :try_start_0
    invoke-interface {v2, p1, p2}, LX/0B5;->load(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    invoke-static {v3}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    array-length v1, v0

    .line 31
    const/4 v0, 0x0

    .line 32
    if-ge v0, v1, :cond_1

    .line 33
    .line 34
    const-string v0, "onSoFileLoaderLoadEnd"

    .line 35
    .line 36
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    throw v0

    .line 41
    :cond_1
    return-void

    .line 42
    :catchall_0
    move-exception v0

    .line 43
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 44
    :catchall_1
    move-exception v2

    .line 45
    invoke-static {v3}, LX/000;->A0R(Ljava/util/concurrent/atomic/AtomicReference;)[LX/045;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    array-length v1, v0

    .line 52
    const/4 v0, 0x0

    .line 53
    if-ge v0, v1, :cond_2

    .line 54
    .line 55
    const-string v0, "onSoFileLoaderLoadEnd"

    .line 56
    .line 57
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    throw v0

    .line 62
    :cond_2
    throw v2
.end method
