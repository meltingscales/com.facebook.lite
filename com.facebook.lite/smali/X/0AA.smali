.class public final LX/0AA;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final __redex_internal_original_name:Ljava/lang/String; = "EarlyErrorReporting$7"


# instance fields
.field public final synthetic A00:Landroid/app/Application;

.field public final synthetic A01:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Application;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p2, p0, LX/0AA;->A01:Ljava/lang/String;

    .line 1
    .line 2
    iput-object p1, p0, LX/0AA;->A00:Landroid/app/Application;

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
    .locals 5

    .line 0
    :try_start_0
    invoke-static {}, LX/09V;->A01()V

    .line 1
    .line 2
    .line 3
    const-string v4, "EarlyErrorReporting"

    .line 4
    .line 5
    const-string v3, "Lacrima init executor done in EarlyErrorReporting for: %s"

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    new-array v2, v0, [Ljava/lang/Object;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iget-object v0, p0, LX/0AA;->A01:Ljava/lang/String;

    .line 12
    .line 13
    aput-object v0, v2, v1

    .line 14
    .line 15
    invoke-static {v4, v3, v2}, LX/06s;->A0J(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :catch_0
    move-exception v2

    .line 20
    iget-object v1, p0, LX/0AA;->A00:Landroid/app/Application;

    .line 21
    .line 22
    const-string v0, "Failed earlyJavaInit"

    .line 23
    .line 24
    invoke-static {v1, v2, v0}, LX/0AB;->A02(Landroid/app/Application;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
