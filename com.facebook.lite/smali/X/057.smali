.class public final synthetic LX/057;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final synthetic A00:LX/0BR;


# direct methods
.method public synthetic constructor <init>(LX/0BR;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/057;->A00:LX/0BR;

    return-void
.end method


# virtual methods
.method public final A00(Ljava/io/File;)LX/07W;
    .locals 4

    .line 0
    iget-object v0, p0, LX/057;->A00:LX/0BR;

    .line 1
    .line 2
    iget-object v0, v0, LX/0BR;->A00:Ljava/lang/Object;

    .line 3
    .line 4
    check-cast v0, LX/08K;

    .line 5
    .line 6
    iget-boolean v0, v0, LX/08K;->A0S:Z

    .line 7
    .line 8
    const-string v3, "lacrima"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    :try_start_0
    new-instance v0, Lcom/facebook/errorreporting/lacrima/common/mappedfile/mlocked/MLockedFile;

    .line 14
    .line 15
    invoke-direct {v0, p1}, Lcom/facebook/errorreporting/lacrima/common/mappedfile/mlocked/MLockedFile;-><init>(Ljava/io/File;)V

    .line 16
    .line 17
    .line 18
    return-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    invoke-static {}, LX/08w;->A00()V

    .line 21
    .line 22
    .line 23
    const-string v0, "Failed to initialize mlocked file, using fallback"

    .line 24
    .line 25
    invoke-static {v3, v0, v1}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    :try_start_1
    new-instance v0, LX/07W;

    .line 29
    .line 30
    invoke-direct {v0, p1}, LX/07W;-><init>(Ljava/io/File;)V

    .line 31
    .line 32
    .line 33
    return-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 34
    :catch_1
    move-exception v1

    .line 35
    invoke-static {}, LX/08w;->A00()V

    .line 36
    .line 37
    .line 38
    const-string v0, "Failed to initialize mapped file"

    .line 39
    .line 40
    invoke-static {v3, v0, v1}, LX/06s;->A0B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    return-object v2
.end method
