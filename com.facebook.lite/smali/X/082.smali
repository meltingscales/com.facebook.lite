.class public final synthetic LX/082;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final __redex_internal_original_name:Ljava/lang/String; = "GlobalPropertiesCreator$$ExternalSyntheticLambda0"


# instance fields
.field public final synthetic A00:LX/081;

.field public final synthetic A01:LX/084;


# direct methods
.method public synthetic constructor <init>(LX/081;LX/084;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LX/082;->A01:LX/084;

    iput-object p1, p0, LX/082;->A00:LX/081;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v1, p0, LX/082;->A01:LX/084;

    .line 1
    .line 2
    iget-object v0, p0, LX/082;->A00:LX/081;

    .line 3
    .line 4
    invoke-interface {v1, v0}, LX/084;->ASC(LX/081;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
