.class public final LX/01J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/029;


# instance fields
.field public final A00:LX/04I;

.field public final A01:Ljava/net/Socket;


# direct methods
.method public constructor <init>(LX/04I;Ljava/net/Socket;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    iput-object p2, p0, LX/01J;->A01:Ljava/net/Socket;

    .line 4
    .line 5
    iput-object p1, p0, LX/01J;->A00:LX/04I;

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final ADk()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final AFZ()LX/09j;
    .locals 1

    .line 0
    iget-object v0, p0, LX/01J;->A00:LX/04I;

    .line 1
    .line 2
    iget-object v0, v0, LX/04I;->A00:LX/09i;

    .line 3
    .line 4
    iget-object v0, v0, LX/09i;->A01:LX/09j;

    .line 5
    .line 6
    return-object v0
.end method

.method public final close()V
    .locals 1

    .line 0
    iget-object v0, p0, LX/01J;->A01:Ljava/net/Socket;

    .line 1
    .line 2
    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final getEarlyDataType()Ljava/lang/String;
    .locals 1

    const-string v0, "NOT_FIZZ_SOCKET"

    return-object v0
.end method

.method public final getInputStream()Ljava/io/InputStream;
    .locals 1

    .line 0
    iget-object v0, p0, LX/01J;->A01:Ljava/net/Socket;

    .line 1
    .line 2
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public final getOutputStream()Ljava/io/OutputStream;
    .locals 1

    .line 0
    iget-object v0, p0, LX/01J;->A01:Ljava/net/Socket;

    .line 1
    .line 2
    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public final getTransportType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isClosed()Z
    .locals 1

    .line 0
    iget-object v0, p0, LX/01J;->A01:Ljava/net/Socket;

    .line 1
    .line 2
    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public final isConnected()Z
    .locals 1

    .line 0
    iget-object v0, p0, LX/01J;->A01:Ljava/net/Socket;

    .line 1
    .line 2
    invoke-virtual {v0}, Ljava/net/Socket;->isConnected()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public final setKeepAlive(Z)V
    .locals 1

    return-void
.end method

.method public final setTcpNoDelay(Z)V
    .locals 1

    return-void
.end method
