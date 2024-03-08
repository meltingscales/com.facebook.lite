.class public final LX/00l;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Ljava/io/File;

.field public final A01:Ljava/io/File;

.field public final A02:Ljava/io/File;

.field public final A03:Ljava/lang/String;

.field public final A04:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, LX/00l;->A04:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, LX/00l;->A03:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, p0, LX/00l;->A00:Ljava/io/File;

    .line 13
    .line 14
    iput-object p2, p0, LX/00l;->A02:Ljava/io/File;

    .line 15
    .line 16
    iput-object p3, p0, LX/00l;->A01:Ljava/io/File;

    .line 17
    .line 18
    invoke-virtual {v0, p5}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method
