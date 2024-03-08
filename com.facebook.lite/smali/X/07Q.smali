.class public final synthetic LX/07Q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final __redex_internal_original_name:Ljava/lang/String; = "CollectorManager$$ExternalSyntheticLambda0"


# instance fields
.field public final synthetic A00:I

.field public final synthetic A01:LX/02u;

.field public final synthetic A02:LX/07R;

.field public final synthetic A03:LX/08p;


# direct methods
.method public synthetic constructor <init>(LX/02u;LX/07R;LX/08p;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LX/07Q;->A02:LX/07R;

    iput-object p3, p0, LX/07Q;->A03:LX/08p;

    iput-object p1, p0, LX/07Q;->A01:LX/02u;

    iput p4, p0, LX/07Q;->A00:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 0
    iget-object v0, p0, LX/07Q;->A02:LX/07R;

    .line 1
    .line 2
    iget-object v3, p0, LX/07Q;->A03:LX/08p;

    .line 3
    .line 4
    iget-object v1, p0, LX/07Q;->A01:LX/02u;

    .line 5
    .line 6
    iget v5, p0, LX/07Q;->A00:I

    .line 7
    .line 8
    sget-object v8, LX/02m;->A03:LX/02m;

    .line 9
    .line 10
    invoke-virtual {v0, v8, v3}, LX/07R;->A0B(LX/02m;LX/08p;)V

    .line 11
    .line 12
    .line 13
    sget-object v2, LX/02m;->A02:LX/02m;

    .line 14
    .line 15
    invoke-interface {v3}, LX/08p;->ABM()LX/034;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual/range {v0 .. v5}, LX/07R;->A07(LX/02u;LX/02m;LX/08p;LX/034;I)V

    .line 20
    .line 21
    .line 22
    move-object v6, v0

    .line 23
    move-object v7, v1

    .line 24
    move-object v9, v3

    .line 25
    move-object v10, v4

    .line 26
    move v11, v5

    .line 27
    invoke-virtual/range {v6 .. v11}, LX/07R;->A07(LX/02u;LX/02m;LX/08p;LX/034;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v8, v3}, LX/07R;->A0A(LX/02m;LX/08p;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
