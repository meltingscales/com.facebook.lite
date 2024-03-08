.class public abstract LX/02I;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Ljava/util/Set;

.field public static final A01:Ljava/util/Set;

.field public static final A02:Ljava/util/Set;

.field public static final A03:Ljava/util/Set;

.field public static final A04:Ljava/util/Set;

.field public static final A05:Ljava/util/Set;


# direct methods
.method public static constructor <clinit>()V
    .locals 75

    .line 2968
    const/16 v0, 0x37

    new-array v1, v0, [Ljava/lang/String;

    const-string v74, "com.facebook.adsmanager"

    const/16 v73, 0x0

    aput-object v74, v1, v73

    const-string v72, "com.facebook.akira"

    const/16 v71, 0x1

    aput-object v72, v1, v71

    const-string v70, "com.facebook.appmanager"

    const/16 v69, 0x2

    aput-object v70, v1, v69

    const-string v68, "com.facebook.appmanager.dev"

    const/4 v3, 0x3

    aput-object v68, v1, v3

    const-string v67, "com.facebook.arstudio.player"

    const/16 v66, 0x4

    aput-object v67, v1, v66

    const-string v65, "com.facebook.assistantplayground"

    const/4 v2, 0x5

    aput-object v65, v1, v2

    const/16 v64, 0x6

    const-string v63, "com.instagram.barcelona"

    aput-object v63, v1, v64

    const-string v62, "com.facebook.bishop"

    const/16 v61, 0x7

    aput-object v62, v1, v61

    const-string v60, "com.facebook.pages.app"

    const/16 v59, 0x8

    aput-object v60, v1, v59

    const-string v58, "com.facebook.creatorstudio"

    const/16 v57, 0x9

    aput-object v58, v1, v57

    const-string v56, "com.facebook.daykira"

    const/16 v55, 0xa

    aput-object v56, v1, v55

    const/16 v0, 0xb

    const-string v54, "com.instagram.direct"

    aput-object v54, v1, v0

    const-string v53, "com.facebook.lite"

    const/16 v52, 0xc

    aput-object v53, v1, v52

    const-string v51, "com.facebook.games"

    const/16 v50, 0xd

    aput-object v51, v1, v50

    const-string v49, "com.facebook.phone"

    const/16 v48, 0xe

    aput-object v49, v1, v48

    const-string v47, "com.facebook.home"

    const/16 v46, 0xf

    aput-object v47, v1, v46

    const-string v45, "com.facebook.home.dev"

    const/16 v44, 0x10

    aput-object v45, v1, v44

    const/16 v4, 0x11

    const-string v43, "com.instagram.android"

    aput-object v43, v1, v4

    const/16 v0, 0x12

    const-string v42, "com.instagram.lite"

    aput-object v42, v1, v0

    const/16 v0, 0x13

    aput-object v42, v1, v0

    const/16 v0, 0x14

    const-string v41, "com.facebook.katana"

    aput-object v41, v1, v0

    const/16 v0, 0x15

    const-string v40, "com.facebook.orca"

    aput-object v40, v1, v0

    const/16 v0, 0x16

    const-string v39, "com.facebook.talk"

    aput-object v39, v1, v0

    const/16 v0, 0x17

    const-string v38, "com.facebook.mk"

    aput-object v38, v1, v0

    const/16 v0, 0x18

    const-string v37, "com.facebook.mlite"

    aput-object v37, v1, v0

    const/16 v0, 0x19

    const-string v36, "com.facebook.wearable.system.data"

    aput-object v36, v1, v0

    const/16 v0, 0x1a

    const-string v35, "com.facebook.wearable.apps.mwear"

    aput-object v35, v1, v0

    const/16 v0, 0x1b

    const-string v34, "com.facebook.wearable.system.notification"

    aput-object v34, v1, v0

    const/16 v0, 0x1c

    const-string v33, "com.facebook.wearable.monza"

    aput-object v33, v1, v0

    const/16 v0, 0x1d

    const-string v32, "com.oculus.assistant"

    aput-object v32, v1, v0

    const/16 v0, 0x1e

    const-string v31, "com.oculus.vrshell"

    aput-object v31, v1, v0

    const/16 v0, 0x1f

    const-string v30, "com.oculus.firsttimenux"

    aput-object v30, v1, v0

    const/16 v0, 0x20

    const-string v29, "com.oculus.horizon"

    aput-object v29, v1, v0

    const/16 v0, 0x21

    const-string v28, "com.oculus.horizon.dev"

    aput-object v28, v1, v0

    const/16 v0, 0x22

    const-string v27, "com.oculus.gemini.upload"

    aput-object v27, v1, v0

    const/16 v0, 0x23

    const-string v26, "com.oculus.vrshell.home"

    aput-object v26, v1, v0

    const/16 v0, 0x24

    const-string v25, "com.oculus.ocms"

    aput-object v25, v1, v0

    const/16 v0, 0x25

    const-string v24, "com.oculus.q4bservice"

    aput-object v24, v1, v0

    const/16 v0, 0x26

    const-string v23, "com.oculus.systemutilities"

    aput-object v23, v1, v0

    const/16 v0, 0x27

    const-string v22, "com.oculus.twilight"

    aput-object v22, v1, v0

    const/16 v0, 0x28

    const-string v21, "com.oculus.userserver2"

    aput-object v21, v1, v0

    const/16 v0, 0x29

    const-string v20, "com.oculus.updater"

    aput-object v20, v1, v0

    const/16 v0, 0x2a

    const-string v19, "com.oculus.systemux"

    aput-object v19, v1, v0

    const/16 v0, 0x2b

    const-string v18, "com.oculus.companion.server"

    aput-object v18, v1, v0

    const/16 v0, 0x2c

    const-string v17, "com.facebook.bonfire"

    aput-object v17, v1, v0

    const/16 v0, 0x2d

    const-string v16, "com.facebook.stella"

    aput-object v16, v1, v0

    const/16 v0, 0x2e

    const-string v15, "com.facebook.stella_debug"

    aput-object v15, v1, v0

    const/16 v0, 0x2f

    const-string v14, "com.facebook.study"

    aput-object v14, v1, v0

    const/16 v0, 0x30

    const-string v13, "com.facebook.wakizashi"

    aput-object v13, v1, v0

    const/16 v0, 0x31

    const-string v12, "com.facebook.wearable.system.launcher"

    aput-object v12, v1, v0

    const/16 v0, 0x32

    const-string v11, "com.whatsapp"

    aput-object v11, v1, v0

    const/16 v0, 0x33

    const-string v10, "com.whatsapp.w4b"

    aput-object v10, v1, v0

    const/16 v0, 0x34

    const-string v9, "com.facebook.work"

    aput-object v9, v1, v0

    const/16 v0, 0x35

    const-string v8, "com.facebook.workdev"

    aput-object v8, v1, v0

    const/16 v0, 0x36

    const-string v7, "com.facebook.workchat"

    aput-object v7, v1, v0

    .line 2969
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2970
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LX/02I;->A00:Ljava/util/Set;

    .line 2971
    const/16 v0, 0x2e

    new-array v1, v0, [Ljava/lang/String;

    aput-object v74, v1, v73

    aput-object v72, v1, v71

    aput-object v70, v1, v69

    aput-object v68, v1, v3

    aput-object v67, v1, v66

    aput-object v65, v1, v2

    aput-object v63, v1, v64

    aput-object v62, v1, v61

    aput-object v60, v1, v59

    aput-object v58, v1, v57

    aput-object v56, v1, v55

    const/16 v6, 0xb

    aput-object v54, v1, v6

    aput-object v53, v1, v52

    aput-object v51, v1, v50

    aput-object v49, v1, v48

    aput-object v47, v1, v46

    aput-object v45, v1, v44

    aput-object v43, v1, v4

    const/16 v0, 0x12

    aput-object v42, v1, v0

    const/16 v0, 0x13

    aput-object v42, v1, v0

    const/16 v0, 0x14

    aput-object v41, v1, v0

    const/16 v0, 0x15

    aput-object v40, v1, v0

    const/16 v0, 0x16

    aput-object v39, v1, v0

    const/16 v0, 0x17

    aput-object v38, v1, v0

    const/16 v0, 0x18

    aput-object v37, v1, v0

    const/16 v0, 0x19

    aput-object v33, v1, v0

    const/16 v0, 0x1a

    aput-object v32, v1, v0

    const/16 v0, 0x1b

    aput-object v31, v1, v0

    const/16 v0, 0x1c

    aput-object v30, v1, v0

    const/16 v0, 0x1d

    aput-object v29, v1, v0

    const/16 v0, 0x1e

    aput-object v28, v1, v0

    const/16 v0, 0x1f

    aput-object v27, v1, v0

    const/16 v0, 0x20

    aput-object v26, v1, v0

    const/16 v0, 0x21

    aput-object v25, v1, v0

    const/16 v0, 0x22

    aput-object v23, v1, v0

    const/16 v0, 0x23

    aput-object v22, v1, v0

    const/16 v0, 0x24

    aput-object v21, v1, v0

    const/16 v0, 0x25

    aput-object v20, v1, v0

    const/16 v0, 0x26

    aput-object v19, v1, v0

    const/16 v0, 0x27

    aput-object v17, v1, v0

    const/16 v0, 0x28

    aput-object v16, v1, v0

    const/16 v0, 0x29

    aput-object v15, v1, v0

    const/16 v0, 0x2a

    aput-object v14, v1, v0

    const/16 v0, 0x2b

    aput-object v13, v1, v0

    const/16 v0, 0x2c

    aput-object v11, v1, v0

    const/16 v5, 0x2d

    aput-object v10, v1, v5

    .line 2972
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2973
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LX/02I;->A02:Ljava/util/Set;

    .line 2974
    const/16 v0, 0x34

    new-array v1, v0, [Ljava/lang/String;

    aput-object v74, v1, v73

    aput-object v72, v1, v71

    aput-object v70, v1, v69

    aput-object v68, v1, v3

    aput-object v67, v1, v66

    aput-object v65, v1, v2

    aput-object v63, v1, v64

    aput-object v62, v1, v61

    aput-object v60, v1, v59

    aput-object v58, v1, v57

    aput-object v56, v1, v55

    aput-object v54, v1, v6

    aput-object v53, v1, v52

    aput-object v51, v1, v50

    aput-object v49, v1, v48

    aput-object v47, v1, v46

    aput-object v45, v1, v44

    aput-object v43, v1, v4

    const/16 v0, 0x12

    aput-object v42, v1, v0

    const/16 v0, 0x13

    aput-object v42, v1, v0

    const/16 v0, 0x14

    aput-object v41, v1, v0

    const/16 v0, 0x15

    aput-object v40, v1, v0

    const/16 v0, 0x16

    aput-object v39, v1, v0

    const/16 v0, 0x17

    aput-object v38, v1, v0

    const/16 v0, 0x18

    aput-object v37, v1, v0

    const/16 v0, 0x19

    aput-object v36, v1, v0

    const/16 v0, 0x1a

    aput-object v35, v1, v0

    const/16 v0, 0x1b

    aput-object v34, v1, v0

    const/16 v0, 0x1c

    aput-object v33, v1, v0

    const/16 v0, 0x1d

    aput-object v32, v1, v0

    const/16 v0, 0x1e

    aput-object v31, v1, v0

    const/16 v0, 0x1f

    aput-object v30, v1, v0

    const/16 v0, 0x20

    aput-object v29, v1, v0

    const/16 v0, 0x21

    aput-object v28, v1, v0

    const/16 v0, 0x22

    aput-object v27, v1, v0

    const/16 v0, 0x23

    aput-object v26, v1, v0

    const/16 v0, 0x24

    aput-object v25, v1, v0

    const/16 v0, 0x25

    aput-object v24, v1, v0

    const/16 v0, 0x26

    aput-object v23, v1, v0

    const/16 v0, 0x27

    aput-object v22, v1, v0

    const/16 v0, 0x28

    aput-object v21, v1, v0

    const/16 v0, 0x29

    aput-object v20, v1, v0

    const/16 v0, 0x2a

    aput-object v19, v1, v0

    const/16 v0, 0x2b

    aput-object v18, v1, v0

    const/16 v0, 0x2c

    aput-object v17, v1, v0

    aput-object v16, v1, v5

    const/16 v0, 0x2e

    aput-object v15, v1, v0

    const/16 v0, 0x2f

    aput-object v14, v1, v0

    const/16 v0, 0x30

    aput-object v13, v1, v0

    const/16 v0, 0x31

    aput-object v12, v1, v0

    const/16 v0, 0x32

    aput-object v11, v1, v0

    const/16 v0, 0x33

    aput-object v10, v1, v0

    .line 2975
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2976
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LX/02I;->A01:Ljava/util/Set;

    .line 2977
    new-array v0, v3, [Ljava/lang/String;

    aput-object v9, v0, v73

    aput-object v8, v0, v71

    aput-object v7, v0, v69

    .line 2978
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LX/02I;->A05:Ljava/util/Set;

    .line 2979
    new-array v0, v2, [Ljava/lang/String;

    aput-object v54, v0, v73

    aput-object v43, v0, v71

    aput-object v42, v0, v69

    aput-object v42, v0, v3

    aput-object v63, v0, v66

    .line 2980
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2981
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LX/02I;->A03:Ljava/util/Set;

    .line 2982
    new-array v1, v4, [Ljava/lang/String;

    aput-object v32, v1, v73

    const-string v0, "com.oculus.browser"

    aput-object v0, v1, v71

    aput-object v18, v1, v69

    const-string v0, "com.oculus.explore"

    aput-object v0, v1, v3

    aput-object v30, v1, v66

    aput-object v26, v1, v2

    aput-object v29, v1, v64

    aput-object v28, v1, v61

    const-string v0, "com.oculus.nux.ota"

    aput-object v0, v1, v59

    aput-object v25, v1, v57

    aput-object v20, v1, v55

    aput-object v24, v1, v6

    const-string v0, "com.oculus.store"

    aput-object v0, v1, v52

    aput-object v19, v1, v50

    aput-object v23, v1, v48

    aput-object v22, v1, v46

    aput-object v21, v1, v44

    .line 2983
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 2984
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, LX/02I;->A04:Ljava/util/Set;

    return-void
.end method
