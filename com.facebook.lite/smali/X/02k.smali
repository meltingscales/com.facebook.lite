.class public final LX/02k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements LX/02j;


# instance fields
.field public final synthetic A00:LX/08K;

.field public final synthetic A01:LX/0BS;


# direct methods
.method public constructor <init>(LX/08K;LX/0BS;)V
    .locals 0

    .line 0
    iput-object p2, p0, LX/02k;->A01:LX/0BS;

    .line 1
    .line 2
    iput-object p1, p0, LX/02k;->A00:LX/08K;

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final AGV(Ljava/lang/Throwable;)V
    .locals 8

    .line 0
    iget-object v1, p0, LX/02k;->A00:LX/08K;

    .line 1
    .line 2
    iget-object v0, v1, LX/08K;->A0R:LX/0BP;

    .line 3
    .line 4
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    check-cast v2, Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, v1, LX/08K;->A0L:LX/0BP;

    .line 11
    .line 12
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, v1, LX/08K;->A0K:LX/0BP;

    .line 19
    .line 20
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, v1, LX/08K;->A0Q:LX/0BP;

    .line 27
    .line 28
    invoke-interface {v0}, LX/0BP;->get()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Ljava/lang/String;

    .line 33
    .line 34
    new-instance v7, Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 37
    .line 38
    .line 39
    move-object v6, p1

    .line 40
    invoke-static/range {v2 .. v7}, LX/07l;->A00(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
