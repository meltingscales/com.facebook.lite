.class public Lcom/facebook/lite/LiteClassPreloaderDelegate;
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

.method public static isClassPreloadingActivityEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 0
    const-string v0, "pref_key_class_preloading_activity"

    .line 1
    .line 2
    invoke-static {p0, v0}, LX/000;->A02(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 11
    .line 12
    .line 13
    return v0
.end method

.method public static isClassPreloadingAppEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 0
    const-string v0, "pref_key_class_preloading_app"

    .line 1
    .line 2
    invoke-static {p0, v0}, LX/000;->A02(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 11
    .line 12
    .line 13
    return v0
.end method

.method public static isClassPreloadingEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-static {p0, p1}, LX/000;->A02(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 1
    .line 2
    .line 3
    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 5
    .line 6
    .line 7
    move-result p0

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 9
    .line 10
    .line 11
    return p0
.end method

.method public static preloadClasses(Landroid/content/Context;ZZ)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, LX/02d;->A01(Landroid/content/Context;ZZ)V

    .line 1
    .line 2
    .line 3
    return-void
.end method

.method public static setClassPreloadingActivityEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 0
    const-string v0, "pref_key_class_preloading_activity"

    .line 1
    .line 2
    invoke-static {p0, v0}, LX/000;->A02(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void
.end method

.method public static setClassPreloadingAppEnabled(Landroid/content/Context;Z)V
    .locals 1

    .line 0
    const-string v0, "pref_key_class_preloading_app"

    .line 1
    .line 2
    invoke-static {p0, v0}, LX/000;->A02(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void
.end method

.method public static setClassPreloadingEnabled(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, LX/000;->A02(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 1
    .line 2
    .line 3
    move-result-object p0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    return-void
.end method
