.class public final synthetic LX/05j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/084;


# instance fields
.field public final synthetic A00:LX/07H;

.field public final synthetic A01:LX/02m;

.field public final synthetic A02:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(LX/07H;LX/02m;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/05j;->A00:LX/07H;

    iput-object p3, p0, LX/05j;->A02:Ljava/lang/String;

    iput-object p2, p0, LX/05j;->A01:LX/02m;

    return-void
.end method


# virtual methods
.method public final ASC(LX/081;)V
    .locals 4

    .line 0
    iget-object v3, p0, LX/05j;->A00:LX/07H;

    .line 1
    .line 2
    iget-object v2, p0, LX/05j;->A02:Ljava/lang/String;

    .line 3
    .line 4
    iget-object v1, p0, LX/05j;->A01:LX/02m;

    .line 5
    .line 6
    new-instance v0, LX/05j;

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, LX/05j;-><init>(LX/07H;LX/02m;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, LX/085;->A00(LX/084;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
