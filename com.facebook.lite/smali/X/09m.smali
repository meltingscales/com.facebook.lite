.class public final LX/09m;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public A00:LX/076;

.field public A01:Ljava/lang/String;

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public final A04:Ljava/lang/StringBuilder;

.field public final A05:LX/0A3;

.field public final A06:Ljava/util/Set;

.field public volatile A07:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 0
    const/4 v3, 0x0

    .line 1
    const-wide/16 v1, 0x0

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "unknown"

    .line 7
    .line 8
    iput-object v0, p0, LX/09m;->A01:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, LX/09m;->A06:Ljava/util/Set;

    .line 16
    .line 17
    invoke-static {}, LX/000;->A0C()Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, LX/09m;->A04:Ljava/lang/StringBuilder;

    .line 22
    .line 23
    new-instance v0, LX/0A3;

    .line 24
    .line 25
    invoke-direct {v0}, LX/0A3;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, LX/09m;->A05:LX/0A3;

    .line 29
    .line 30
    new-instance v0, LX/076;

    .line 31
    .line 32
    invoke-direct {v0, v1, v2}, LX/076;-><init>(J)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, LX/09m;->A00:LX/076;

    .line 36
    .line 37
    iput-boolean v3, p0, LX/09m;->A03:Z

    .line 38
    .line 39
    return-void
.end method
