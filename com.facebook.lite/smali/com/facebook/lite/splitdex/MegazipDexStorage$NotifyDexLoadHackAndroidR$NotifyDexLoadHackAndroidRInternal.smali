.class public Lcom/facebook/lite/splitdex/MegazipDexStorage$NotifyDexLoadHackAndroidR$NotifyDexLoadHackAndroidRInternal;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    .line 2
    .line 3
    return-void
.end method

.method public static apply(Ljava/lang/ClassLoader;)V
    .locals 4

    .line 0
    :try_start_0
    const-class v3, Ldalvik/system/BaseDexClassLoader;

    .line 1
    .line 2
    const-string v1, "reportClassLoaderChain"

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    new-array v0, v2, [Ljava/lang/Class;

    .line 6
    .line 7
    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {v1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 13
    .line 14
    .line 15
    new-array v0, v2, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    move-exception v2

    .line 22
    const-string v1, "NotifyDexLoad"

    .line 23
    .line 24
    const-string v0, "Failed to get method"

    .line 25
    .line 26
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    .line 28
    .line 29
    return-void
.end method
