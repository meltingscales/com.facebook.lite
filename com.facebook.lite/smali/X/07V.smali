.class public final synthetic LX/07V;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic A00:Ljava/lang/String;

.field public final synthetic A01:Ljava/lang/Throwable;

.field public final synthetic A02:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, LX/07V;->A02:Ljava/util/Map$Entry;

    iput-object p2, p0, LX/07V;->A01:Ljava/lang/Throwable;

    iput-object p1, p0, LX/07V;->A00:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 0
    iget-object v0, p0, LX/07V;->A02:Ljava/util/Map$Entry;

    .line 1
    .line 2
    iget-object v1, p0, LX/07V;->A00:Ljava/lang/String;

    .line 3
    .line 4
    :try_start_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    const-string v0, "getCustomData"

    .line 8
    .line 9
    invoke-static {v0}, LX/000;->A08(Ljava/lang/String;)Ljava/lang/NullPointerException;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :catchall_0
    move-exception v3

    .line 15
    const/4 v0, 0x1

    .line 16
    new-array v2, v0, [Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    aput-object v1, v2, v0

    .line 20
    .line 21
    const-string v1, "lacrima"

    .line 22
    .line 23
    const-string v0, "Failed to apply lazy supplier: %s"

    .line 24
    .line 25
    invoke-static {v1, v0, v3, v2}, LX/06s;->A0G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, LX/08w;->A00()V

    .line 29
    .line 30
    .line 31
    const-string v0, ""

    .line 32
    .line 33
    return-object v0
.end method
