.class public final LX/08Y;
.super LX/0BK;
.source ""


# instance fields
.field public final synthetic A00:LX/05F;


# direct methods
.method public constructor <init>(LX/05F;)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/08Y;->A00:LX/05F;

    .line 1
    .line 2
    invoke-direct {p0}, LX/0BK;-><init>()V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final A01(Ljava/io/File;)V
    .locals 3

    .line 0
    iget-object v0, p0, LX/08Y;->A00:LX/05F;

    .line 1
    .line 2
    iget-object v0, v0, LX/05F;->A01:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, LX/05D;

    .line 19
    .line 20
    new-instance v1, LX/08Q;

    .line 21
    .line 22
    invoke-direct {v1, v0, v0}, LX/08Q;-><init>(LX/05D;LX/05T;)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    invoke-virtual {v1, p1}, LX/0BK;->A01(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, LX/0BK;->close()V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    :try_start_1
    invoke-virtual {v1}, LX/0BK;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 34
    .line 35
    .line 36
    :catchall_1
    throw v0

    .line 37
    :cond_0
    return-void
.end method

.method public final A02()[LX/0BJ;
    .locals 4

    .line 0
    invoke-static {}, LX/000;->A0E()Ljava/util/ArrayList;

    .line 1
    .line 2
    .line 3
    move-result-object v3

    .line 4
    iget-object v0, p0, LX/08Y;->A00:LX/05F;

    .line 5
    .line 6
    iget-object v0, v0, LX/05F;->A01:Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, LX/05D;

    .line 23
    .line 24
    new-instance v1, LX/08Q;

    .line 25
    .line 26
    invoke-direct {v1, v0, v0}, LX/08Q;-><init>(LX/05D;LX/05T;)V

    .line 27
    .line 28
    .line 29
    :try_start_0
    invoke-virtual {v1}, LX/0BK;->A02()[LX/0BJ;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, LX/0BK;->close()V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    :try_start_1
    invoke-virtual {v1}, LX/0BK;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    .line 47
    .line 48
    :catchall_1
    throw v0

    .line 49
    :cond_0
    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    new-array v0, v0, [LX/0BJ;

    .line 54
    .line 55
    invoke-virtual {v3, v0}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, [LX/0BJ;

    .line 60
    .line 61
    return-object v0
.end method
