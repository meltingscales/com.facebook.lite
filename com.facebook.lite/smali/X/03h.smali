.class public final LX/03h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/08p;


# static fields
.field public static A07:LX/03h;


# instance fields
.field public A00:I

.field public A01:Ljava/util/Set;

.field public final A02:LX/07R;

.field public final A03:LX/03g;

.field public final A04:LX/09B;

.field public final A05:Ljava/lang/Object;

.field public final A06:Ljava/util/Random;


# direct methods
.method public constructor <init>(LX/07R;LX/03g;LX/09B;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    new-instance v0, Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, LX/03h;->A05:Ljava/lang/Object;

    .line 9
    .line 10
    new-instance v0, Ljava/util/Random;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, LX/03h;->A06:Ljava/util/Random;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput v0, p0, LX/03h;->A00:I

    .line 19
    .line 20
    iput-object p3, p0, LX/03h;->A04:LX/09B;

    .line 21
    .line 22
    iput-object p1, p0, LX/03h;->A02:LX/07R;

    .line 23
    .line 24
    iput-object p2, p0, LX/03h;->A03:LX/03g;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public final synthetic ABM()LX/034;
    .locals 1

    .line 0
    const/4 v0, 0x0

    .line 1
    return-object v0
.end method

.method public final ACB()LX/08q;
    .locals 1

    .line 0
    sget-object v0, LX/08q;->A0D:LX/08q;

    .line 1
    .line 2
    return-object v0
.end method

.method public final start()V
    .locals 0

    .line 0
    sput-object p0, LX/03h;->A07:LX/03h;

    .line 1
    .line 2
    return-void
.end method
