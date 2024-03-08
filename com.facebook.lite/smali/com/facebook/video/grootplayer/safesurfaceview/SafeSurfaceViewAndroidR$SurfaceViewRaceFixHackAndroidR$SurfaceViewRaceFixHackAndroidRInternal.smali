.class public Lcom/facebook/video/grootplayer/safesurfaceview/SafeSurfaceViewAndroidR$SurfaceViewRaceFixHackAndroidR$SurfaceViewRaceFixHackAndroidRInternal;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static field_mBackgroundControl:Ljava/lang/reflect/Field;

.field public static field_mBlastSurfaceControl:Ljava/lang/reflect/Field;

.field public static reflectionAttempted:Z


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

.method public static apply(Landroid/view/SurfaceView;)Ljava/util/List;
    .locals 5

    .line 0
    sget-boolean v0, Lcom/facebook/video/grootplayer/safesurfaceview/SafeSurfaceViewAndroidR$SurfaceViewRaceFixHackAndroidR$SurfaceViewRaceFixHackAndroidRInternal;->reflectionAttempted:Z

    .line 1
    .line 2
    const-string v3, "Failed to get inner field"

    .line 3
    .line 4
    const-string v2, "FBLiteSurfaceView"

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    :try_start_0
    sput-boolean v4, Lcom/facebook/video/grootplayer/safesurfaceview/SafeSurfaceViewAndroidR$SurfaceViewRaceFixHackAndroidR$SurfaceViewRaceFixHackAndroidRInternal;->reflectionAttempted:Z

    .line 10
    .line 11
    const-class v1, Landroid/view/SurfaceView;

    .line 12
    .line 13
    const-string v0, "mBackgroundControl"

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/facebook/video/grootplayer/safesurfaceview/SafeSurfaceViewAndroidR$SurfaceViewRaceFixHackAndroidR$SurfaceViewRaceFixHackAndroidRInternal;->field_mBackgroundControl:Ljava/lang/reflect/Field;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 24
    .line 25
    .line 26
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    .line 28
    const/16 v0, 0x1f

    .line 29
    .line 30
    if-ne v1, v0, :cond_1

    .line 31
    .line 32
    const-class v1, Landroid/view/SurfaceView;

    .line 33
    .line 34
    const-string v0, "mBlastSurfaceControl"

    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/facebook/video/grootplayer/safesurfaceview/SafeSurfaceViewAndroidR$SurfaceViewRaceFixHackAndroidR$SurfaceViewRaceFixHackAndroidRInternal;->field_mBlastSurfaceControl:Ljava/lang/reflect/Field;

    .line 41
    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, v4}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 45
    .line 46
    .line 47
    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    sget-object v0, Lcom/facebook/video/grootplayer/safesurfaceview/SafeSurfaceViewAndroidR$SurfaceViewRaceFixHackAndroidR$SurfaceViewRaceFixHackAndroidRInternal;->field_mBackgroundControl:Ljava/lang/reflect/Field;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Landroid/view/SurfaceControl;

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_1
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 73
    :catch_1
    move-exception v0

    .line 74
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 75
    .line 76
    .line 77
    :cond_2
    :goto_1
    sget-object v0, Lcom/facebook/video/grootplayer/safesurfaceview/SafeSurfaceViewAndroidR$SurfaceViewRaceFixHackAndroidR$SurfaceViewRaceFixHackAndroidRInternal;->field_mBlastSurfaceControl:Ljava/lang/reflect/Field;

    .line 78
    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    :try_start_2
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/view/SurfaceControl;

    .line 86
    .line 87
    if-eqz v0, :cond_3

    .line 88
    .line 89
    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    return-object v1
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2

    .line 93
    :catch_2
    move-exception v0

    .line 94
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 95
    .line 96
    .line 97
    :cond_3
    return-object v1
.end method
