.class public final synthetic LX/05H;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/084;


# instance fields
.field public final synthetic A00:LX/07H;

.field public final synthetic A01:LX/02m;


# direct methods
.method public synthetic constructor <init>(LX/07H;LX/02m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/05H;->A00:LX/07H;

    iput-object p2, p0, LX/05H;->A01:LX/02m;

    return-void
.end method


# virtual methods
.method public final ASC(LX/081;)V
    .locals 3

    .line 0
    iget-object v2, p0, LX/05H;->A00:LX/07H;

    .line 1
    .line 2
    iget-object v1, p0, LX/05H;->A01:LX/02m;

    .line 3
    .line 4
    new-instance v0, LX/05H;

    .line 5
    .line 6
    invoke-direct {v0, v2, v1}, LX/05H;-><init>(LX/07H;LX/02m;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, LX/085;->A00(LX/084;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
