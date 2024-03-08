.class public final LX/08Z;
.super LX/0BC;
.source ""

# interfaces
.implements LX/0B4;


# instance fields
.field public A00:LX/08V;

.field public final A01:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 0
    invoke-direct {p0}, LX/0BC;-><init>()V

    .line 1
    .line 2
    .line 3
    iput p2, p0, LX/08Z;->A01:I

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, LX/08V;

    .line 17
    .line 18
    invoke-direct {v0, v1, p2}, LX/08V;-><init>(Ljava/io/File;I)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, LX/08Z;->A00:LX/08V;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final A02(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 0
    iget-object v0, p0, LX/08Z;->A00:LX/08V;

    .line 1
    .line 2
    invoke-virtual {v0, p1}, LX/08V;->A02(Ljava/lang/String;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public final A03(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, LX/08Z;->A00:LX/08V;

    .line 1
    .line 2
    invoke-virtual {v0, p1}, LX/0BC;->A03(Ljava/lang/String;)[Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public final A04(Landroid/os/StrictMode$ThreadPolicy;Ljava/lang/String;I)I
    .locals 1

    .line 0
    iget-object v0, p0, LX/08Z;->A00:LX/08V;

    .line 1
    .line 2
    invoke-virtual {v0, p1, p2, p3}, LX/0BC;->A04(Landroid/os/StrictMode$ThreadPolicy;Ljava/lang/String;I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public final A05()Ljava/lang/String;
    .locals 1

    const-string v0, "ApplicationSoSource"

    return-object v0
.end method

.method public final A06(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 0
    iget-object v0, p0, LX/08Z;->A00:LX/08V;

    .line 1
    .line 2
    invoke-virtual {v0, p1}, LX/0BC;->A06(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public final A07(I)V
    .locals 1

    .line 0
    iget-object v0, p0, LX/08Z;->A00:LX/08V;

    .line 1
    .line 2
    invoke-virtual {v0, p1}, LX/0BC;->A07(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final AWY(Landroid/content/Context;)LX/0BC;
    .locals 3

    .line 0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 1
    .line 2
    .line 3
    move-result-object v0

    .line 4
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v2, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, LX/08Z;->A01:I

    .line 12
    .line 13
    or-int/lit8 v1, v0, 0x1

    .line 14
    .line 15
    new-instance v0, LX/08V;

    .line 16
    .line 17
    invoke-direct {v0, v2, v1}, LX/08V;-><init>(Ljava/io/File;I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, LX/08Z;->A00:LX/08V;

    .line 21
    .line 22
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 0
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 1
    .line 2
    .line 3
    move-result-object v1

    .line 4
    const-string v0, "ApplicationSoSource"

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string v0, "["

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, LX/08Z;->A00:LX/08V;

    .line 15
    .line 16
    invoke-static {v0, v1}, LX/000;->A0K(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "]"

    .line 20
    .line 21
    invoke-static {v0, v1}, LX/000;->A0A(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
