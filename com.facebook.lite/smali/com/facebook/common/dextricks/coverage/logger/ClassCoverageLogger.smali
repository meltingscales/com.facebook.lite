.class public Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static volatile ENABLED:Z = false

.field public static final ENABLE_CLASS_COVERAGE:Ljava/lang/String; = "fb.enable_class_coverage"

.field public static final LOADED_CLASSES:Ljava/util/Queue;

.field public static final TAG:Ljava/lang/Class; = Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;

.field public static final THROW_ON_CLASS_LOAD:Ljava/lang/String; = "fb.throw_on_class_load"

.field public static volatile THROW_ON_LOADED:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 1
    .line 2
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->LOADED_CLASSES:Ljava/util/Queue;

    .line 6
    .line 7
    const-string v0, "fb.enable_class_coverage"

    .line 8
    .line 9
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v0, "true"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sput-boolean v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->ENABLED:Z

    .line 20
    .line 21
    const-string v0, "fb.throw_on_class_load"

    .line 22
    .line 23
    invoke-static {v0}, LX/05s;->A02(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->THROW_ON_LOADED:Ljava/lang/String;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    return-void
.end method

.method public static checkThrowOnLoad(Ljava/lang/String;)V
    .locals 2

    .line 0
    sget-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->THROW_ON_LOADED:Ljava/lang/String;

    .line 1
    .line 2
    if-eqz v0, :cond_0

    .line 3
    .line 4
    sget-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->THROW_ON_LOADED:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->THROW_ON_LOADED:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v0, "Class load disallowed: "

    .line 25
    .line 26
    invoke-static {v0, p0, v1}, LX/000;->A09(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 31
    .line 32
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_0
    return-void
.end method

.method public static classLoaded(Ljava/lang/Class;)V
    .locals 0

    .line 268435456
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 268435457
    .line 268435458
    .line 268435459
    move-result-object p0

    .line 268435460
    invoke-static {p0}, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->classLoaded(Ljava/lang/String;)V

    .line 268435461
    .line 268435462
    .line 268435463
    return-void
.end method

.method public static classLoaded(Ljava/lang/String;)V
    .locals 1

    .line 0
    invoke-static {p0}, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->checkThrowOnLoad(Ljava/lang/String;)V

    .line 1
    .line 2
    .line 3
    sget-boolean v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->ENABLED:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->LOADED_CLASSES:Ljava/util/Queue;

    .line 8
    .line 9
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static getCoverage()Ljava/util/List;
    .locals 3

    .line 0
    new-instance v2, Ljava/util/LinkedList;

    .line 1
    .line 2
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 3
    .line 4
    .line 5
    sget-object v0, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->LOADED_CLASSES:Ljava/util/Queue;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v2, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-object v2
.end method
