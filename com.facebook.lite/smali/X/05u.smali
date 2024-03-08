.class public final LX/05u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/06a;


# static fields
.field public static final A01:LX/05u;


# instance fields
.field public A00:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, LX/05u;

    .line 1
    .line 2
    invoke-direct {v0}, LX/05u;-><init>()V

    .line 3
    .line 4
    .line 5
    sput-object v0, LX/05u;->A01:LX/05u;

    .line 6
    .line 7
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


# virtual methods
.method public final A65(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    .line 2
    .line 3
    return-void
.end method

.method public final A66(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1
    .line 2
    .line 3
    return-void
.end method

.method public final AC3()I
    .locals 1

    .line 0
    iget v0, p0, LX/05u;->A00:I

    .line 1
    .line 2
    return v0
.end method

.method public final AIP(I)Z
    .locals 2

    .line 0
    iget v1, p0, LX/05u;->A00:I

    .line 1
    .line 2
    const/4 v0, 0x0

    .line 3
    if-gt v1, p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :cond_0
    return v0
.end method

.method public final AJO(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 0
    const-string v0, "msys"

    .line 1
    .line 2
    invoke-static {p1, v0, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final AZi(I)V
    .locals 1

    .line 0
    const/4 v0, 0x5

    .line 1
    iput v0, p0, LX/05u;->A00:I

    .line 2
    .line 3
    return-void
.end method

.method public final AdL(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    .line 2
    .line 3
    return-void
.end method

.method public final AdM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1
    .line 2
    .line 3
    return-void
.end method

.method public final Adk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1
    .line 2
    .line 3
    return-void
.end method

.method public final Adl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1
    .line 2
    .line 3
    return-void
.end method
