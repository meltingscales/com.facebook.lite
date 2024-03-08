.class public final LX/09K;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final __redex_internal_original_name:Ljava/lang/String; = "LiteClassPreloader$1"


# instance fields
.field public final synthetic A00:Landroid/content/Context;

.field public final synthetic A01:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 0
    iput-object p1, p0, LX/09K;->A00:Landroid/content/Context;

    .line 1
    .line 2
    iput-boolean p2, p0, LX/09K;->A01:Z

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v1, p0, LX/09K;->A00:Landroid/content/Context;

    .line 1
    .line 2
    iget-boolean v0, p0, LX/09K;->A01:Z

    .line 3
    .line 4
    invoke-static {v1, v0}, LX/02d;->A00(Landroid/content/Context;Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
