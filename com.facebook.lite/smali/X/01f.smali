.class public abstract LX/01f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:LX/004;


# direct methods
.method public constructor <init>(LX/004;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    invoke-static {}, LX/01e;->A00()V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, LX/01f;->A00:LX/004;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public A05(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1

    .line 0
    iget-object v0, p0, LX/01f;->A00:LX/004;

    .line 1
    .line 2
    invoke-virtual {v0, p1, p2}, LX/004;->A04(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public abstract A06(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract A07(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract A08(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract A09(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public A0A(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    .line 0
    iget-object v0, p0, LX/01f;->A00:LX/004;

    .line 1
    .line 2
    invoke-virtual {v0, p1, p2, p3}, LX/004;->A03(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public abstract A0B(Landroid/net/Uri;)Ljava/lang/String;
.end method
