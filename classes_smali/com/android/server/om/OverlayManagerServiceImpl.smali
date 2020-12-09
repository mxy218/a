.class final Lcom/android/server/om/OverlayManagerServiceImpl;
.super Ljava/lang/Object;
.source "OverlayManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;,
        Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;
    }
.end annotation


# static fields
.field private static final FLAG_OVERLAY_IS_BEING_REPLACED:I = 0x2

.field private static final FLAG_TARGET_IS_BEING_REPLACED:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mDefaultOverlays:[Ljava/lang/String;

.field private final mIdmapManager:Lcom/android/server/om/IdmapManager;

.field private final mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

.field private final mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

.field private final mSettings:Lcom/android/server/om/OverlayManagerSettings;


# direct methods
.method constructor <init>(Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;Lcom/android/server/om/IdmapManager;Lcom/android/server/om/OverlayManagerSettings;[Ljava/lang/String;Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;)V
    .registers 6

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    .line 116
    iput-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    .line 117
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 118
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    .line 119
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    .line 120
    return-void
.end method

.method private calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;II)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 714
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6

    .line 715
    const/4 p1, 0x4

    return p1

    .line 718
    :cond_6
    const/4 v0, 0x2

    and-int/2addr p4, v0

    if-eqz p4, :cond_c

    .line 719
    const/4 p1, 0x5

    return p1

    .line 727
    :cond_c
    if-nez p1, :cond_10

    .line 728
    const/4 p1, 0x0

    return p1

    .line 731
    :cond_10
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/pm/PackageInfo;I)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 732
    const/4 p1, 0x1

    return p1

    .line 735
    :cond_1a
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result p1

    if-eqz p1, :cond_22

    .line 736
    const/4 p1, 0x6

    return p1

    .line 739
    :cond_22
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object p2, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Ljava/lang/String;I)Z

    move-result p1

    .line 740
    if-eqz p1, :cond_2d

    const/4 v0, 0x3

    :cond_2d
    return v0
.end method

.method private isPackageUpdatableOverlay(Ljava/lang/String;I)Z
    .registers 4

    .line 574
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 575
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    .line 578
    :cond_f
    const/4 p1, 0x1

    return p1

    .line 576
    :cond_11
    :goto_11
    const/4 p1, 0x0

    return p1
.end method

.method private static mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z
    .registers 5

    .line 88
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 89
    return v0

    .line 91
    :cond_4
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 92
    return v0

    .line 94
    :cond_f
    iget-object v1, p0, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/om/OverlayInfo;->targetOverlayableName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 95
    return v0

    .line 97
    :cond_1a
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v1

    iget-boolean v2, p1, Landroid/content/om/OverlayInfo;->isStatic:Z

    if-eq v1, v2, :cond_23

    .line 98
    return v0

    .line 103
    :cond_23
    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v1

    if-eqz v1, :cond_30

    iget p0, p0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget p1, p1, Landroid/content/om/OverlayInfo;->priority:I

    if-eq p0, p1, :cond_30

    .line 105
    return v0

    .line 107
    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method private removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .registers 8

    .line 762
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p1}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/om/OverlayInfo;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 763
    return-void

    .line 765
    :cond_9
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0}, Lcom/android/server/om/OverlayManagerSettings;->getUsers()[I

    move-result-object v0

    .line 766
    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2b

    aget v3, v0, v2

    .line 768
    :try_start_15
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v3

    .line 769
    if-eqz v3, :cond_26

    invoke-virtual {v3}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v3
    :try_end_23
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_15 .. :try_end_23} :catch_27

    if-eqz v3, :cond_26

    .line 771
    return-void

    .line 775
    :cond_26
    goto :goto_28

    .line 773
    :catch_27
    move-exception v3

    .line 766
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 777
    :cond_2b
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget v1, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    .line 778
    return-void
.end method

.method private updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V
    .registers 12

    .line 299
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 303
    nop

    .line 304
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 305
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v6, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 307
    if-nez v5, :cond_32

    .line 308
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v7, v4, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v5

    or-int/2addr v3, v5

    .line 309
    invoke-direct {p0, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    goto :goto_4b

    .line 312
    :cond_32
    :try_start_32
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v5, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4
    :try_end_38
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_32 .. :try_end_38} :catch_3a

    or-int/2addr v3, v4

    .line 316
    goto :goto_4b

    .line 313
    :catch_3a
    move-exception v5

    .line 314
    const-string v6, "OverlayManager"

    const-string v7, "failed to update settings"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v4

    or-int/2addr v3, v4

    .line 318
    :goto_4b
    goto :goto_d

    .line 320
    :cond_4c
    const/4 p3, 0x1

    if-nez v3, :cond_cc

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 325
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const-string v5, "android"

    invoke-virtual {v4, v5, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_64
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    .line 326
    invoke-virtual {v5}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_7b

    .line 327
    iget-object v5, v5, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    :cond_7b
    goto :goto_64

    .line 331
    :cond_7c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_80
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 332
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_97

    .line 333
    iget-object v4, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :cond_97
    goto :goto_80

    .line 339
    :cond_98
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 340
    const/4 v4, 0x0

    if-nez v0, :cond_a3

    move-object v0, v4

    goto :goto_a5

    :cond_a3
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 341
    :goto_a5
    if-nez v0, :cond_a8

    goto :goto_aa

    :cond_a8
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 344
    :goto_aa
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-eq v0, v5, :cond_b5

    .line 345
    goto :goto_cd

    .line 346
    :cond_b5
    if-eqz v4, :cond_cc

    .line 348
    nop

    :goto_b8
    array-length v0, v4

    if-ge v2, v0, :cond_cc

    .line 349
    aget-object v0, v4, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c9

    .line 350
    nop

    .line 351
    goto :goto_cd

    .line 348
    :cond_c9
    add-int/lit8 v2, v2, 0x1

    goto :goto_b8

    .line 357
    :cond_cc
    move p3, v3

    :goto_cd
    if-eqz p3, :cond_d4

    .line 358
    iget-object p3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {p3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 360
    :cond_d4
    return-void
.end method

.method private updateState(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 681
    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    .line 682
    const-string v2, "android"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 683
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result p1

    if-nez p1, :cond_23

    .line 684
    :cond_1e
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {p1, v0, v1, p3}, Lcom/android/server/om/IdmapManager;->createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    .line 687
    :cond_23
    const/4 p1, 0x0

    .line 688
    if-eqz v1, :cond_3c

    .line 689
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 690
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v3

    .line 689
    invoke-virtual {v2, p2, p3, v3}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    or-int/2addr p1, v2

    .line 691
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    invoke-virtual {v2, p2, p3, v3}, Lcom/android/server/om/OverlayManagerSettings;->setCategory(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v2

    or-int/2addr p1, v2

    .line 695
    :cond_3c
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->getState(Ljava/lang/String;I)I

    move-result v2

    .line 696
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;II)I

    move-result p4

    .line 698
    if-eq v2, p4, :cond_4f

    .line 705
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/om/OverlayManagerSettings;->setState(Ljava/lang/String;II)Z

    move-result p2

    or-int/2addr p1, p2

    .line 707
    :cond_4f
    return p1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .registers 5

    .line 644
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 645
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_27

    .line 646
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Default overlays: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    const-string v1, ";"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    :cond_27
    return-void
.end method

.method getDefaultOverlayPackages()[Ljava/lang/String;
    .registers 2

    .line 651
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    return-object v0
.end method

.method getEnabledOverlayPackageNames(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 656
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 658
    new-instance p2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 659
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 660
    const/4 v1, 0x0

    :goto_14
    if-ge v1, v0, :cond_2a

    .line 661
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayInfo;

    .line 662
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_27

    .line 663
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 666
    :cond_2a
    return-object p2
.end method

.method getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 4

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object p1
    :try_end_6
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    .line 469
    :catch_7
    move-exception p1

    .line 470
    const/4 p1, 0x0

    return-object p1
.end method

.method getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 476
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method getOverlaysForUser(I)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;>;"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object p1

    return-object p1
.end method

.method onOverlayPackageAdded(Ljava/lang/String;I)V
    .registers 14

    .line 367
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 368
    const-string v1, "OverlayManager"

    if-nez v0, :cond_28

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "overlay package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was added, but couldn\'t be found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    .line 371
    return-void

    .line 374
    :cond_28
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 376
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    .line 377
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v8

    iget v9, v0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 374
    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 380
    :try_start_41
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 381
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v2, v0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_51
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_41 .. :try_end_51} :catch_52

    .line 386
    :cond_51
    goto :goto_5d

    .line 383
    :catch_52
    move-exception v0

    .line 384
    const-string v2, "failed to update settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 387
    :goto_5d
    return-void
.end method

.method onOverlayPackageChanged(Ljava/lang/String;I)V
    .registers 6

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 396
    iget-object v1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 397
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_16
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_16} :catch_17

    .line 401
    :cond_16
    goto :goto_1f

    .line 399
    :catch_17
    move-exception p1

    .line 400
    const-string p2, "OverlayManager"

    const-string v0, "failed to update settings"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    :goto_1f
    return-void
.end method

.method onOverlayPackageRemoved(Ljava/lang/String;I)V
    .registers 5

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 457
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_18

    .line 458
    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 459
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_18
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_18} :catch_19

    .line 463
    :cond_18
    goto :goto_21

    .line 461
    :catch_19
    move-exception p1

    .line 462
    const-string p2, "OverlayManager"

    const-string v0, "failed to remove overlay"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    :goto_21
    return-void
.end method

.method onOverlayPackageReplaced(Ljava/lang/String;I)V
    .registers 14

    .line 428
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 429
    const-string v1, "OverlayManager"

    if-nez v0, :cond_28

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "overlay package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was replaced, but couldn\'t be found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    .line 432
    return-void

    .line 436
    :cond_28
    :try_start_28
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    .line 437
    invoke-static {v0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 438
    if-eqz v2, :cond_47

    iget-object v2, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 439
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 441
    :cond_47
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 442
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v8

    iget v9, v0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget-object v10, v0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 441
    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 446
    :cond_60
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 447
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_70
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_28 .. :try_end_70} :catch_71

    .line 451
    :cond_70
    goto :goto_77

    .line 449
    :catch_71
    move-exception p1

    .line 450
    const-string p2, "failed to update settings"

    invoke-static {v1, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    :goto_77
    return-void
.end method

.method onOverlayPackageReplacing(Ljava/lang/String;I)V
    .registers 6

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 412
    iget-object v1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 414
    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 415
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_19
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 419
    :cond_19
    goto :goto_22

    .line 417
    :catch_1a
    move-exception p1

    .line 418
    const-string p2, "OverlayManager"

    const-string v0, "failed to update settings"

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    :goto_22
    return-void
.end method

.method onTargetPackageAdded(Ljava/lang/String;I)V
    .registers 4

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 259
    return-void
.end method

.method onTargetPackageChanged(Ljava/lang/String;I)V
    .registers 4

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 267
    return-void
.end method

.method onTargetPackageRemoved(Ljava/lang/String;I)V
    .registers 4

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 292
    return-void
.end method

.method onTargetPackageReplaced(Ljava/lang/String;I)V
    .registers 4

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 284
    return-void
.end method

.method onTargetPackageReplacing(Ljava/lang/String;I)V
    .registers 4

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 276
    return-void
.end method

.method onUserRemoved(I)V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z

    .line 251
    return-void
.end method

.method setEnabled(Ljava/lang/String;ZI)Z
    .registers 7

    .line 490
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 491
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 492
    return v1

    .line 496
    :cond_a
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 497
    return v1

    .line 501
    :cond_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 502
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p3, p2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result p1

    .line 503
    iget-object p2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p2, v2, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p2

    or-int/2addr p1, p2

    .line 505
    if-eqz p1, :cond_2f

    .line 506
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object p2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_2f
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_11 .. :try_end_2f} :catch_31

    .line 508
    :cond_2f
    const/4 p1, 0x1

    return p1

    .line 509
    :catch_31
    move-exception p1

    .line 510
    return v1
.end method

.method setEnabledExclusive(Ljava/lang/String;ZI)Z
    .registers 13

    .line 521
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 522
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 523
    return v1

    .line 527
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 528
    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 530
    invoke-virtual {p0, v2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 532
    nop

    .line 535
    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 536
    move v4, v1

    move v5, v4

    :goto_1c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_5d

    .line 537
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/om/OverlayInfo;

    iget-object v6, v6, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 538
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v7, v6, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 540
    if-nez v7, :cond_3a

    .line 541
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v7, v6, p3}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v6

    or-int/2addr v5, v6

    .line 542
    goto :goto_5a

    .line 545
    :cond_3a
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v8

    if-eqz v8, :cond_41

    .line 547
    goto :goto_5a

    .line 549
    :cond_41
    if-eqz p2, :cond_4e

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    iget-object v8, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4e

    .line 552
    goto :goto_5a

    .line 556
    :cond_4e
    iget-object v7, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v7, v6, p3, v1}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v7

    or-int/2addr v5, v7

    .line 557
    invoke-direct {p0, v2, v6, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v6

    or-int/2addr v5, v6

    .line 536
    :goto_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 561
    :cond_5d
    iget-object p2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result p2

    or-int/2addr p2, v5

    .line 562
    invoke-direct {p0, v2, p1, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result p1

    or-int/2addr p1, p2

    .line 564
    if-eqz p1, :cond_71

    .line 565
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {p1, v2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_71
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_a .. :try_end_71} :catch_72

    .line 567
    :cond_71
    return v0

    .line 568
    :catch_72
    move-exception p1

    .line 569
    return v1
.end method

.method setHighestPriority(Ljava/lang/String;I)Z
    .registers 5

    .line 608
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 609
    return v1

    .line 612
    :cond_8
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 613
    if-nez v0, :cond_11

    .line 614
    return v1

    .line 617
    :cond_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 618
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 620
    :cond_20
    const/4 p1, 0x1

    return p1
.end method

.method setLowestPriority(Ljava/lang/String;I)Z
    .registers 5

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 629
    return v1

    .line 632
    :cond_8
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 633
    if-nez v0, :cond_11

    .line 634
    return v1

    .line 637
    :cond_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setLowestPriority(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 638
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 640
    :cond_20
    const/4 p1, 0x1

    return p1
.end method

.method setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 6

    .line 588
    invoke-direct {p0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->isPackageUpdatableOverlay(Ljava/lang/String;I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 589
    return v1

    .line 592
    :cond_8
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 593
    if-nez v0, :cond_11

    .line 594
    return v1

    .line 597
    :cond_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 598
    iget-object p1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object p2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 600
    :cond_20
    const/4 p1, 0x1

    return p1
.end method

.method updateOverlaysForUser(I)Ljava/util/ArrayList;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 133
    move-object/from16 v1, p0

    move/from16 v11, p1

    const-string v12, "\' for user "

    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 134
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v11}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 136
    new-instance v14, Landroid/util/ArrayMap;

    invoke-direct {v14, v2}, Landroid/util/ArrayMap;-><init>(I)V

    .line 137
    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v2, :cond_3b

    .line 138
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 139
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 140
    const/4 v6, 0x0

    :goto_28
    if-ge v6, v5, :cond_38

    .line 141
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/om/OverlayInfo;

    .line 142
    iget-object v8, v7, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v8, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 137
    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 148
    :cond_3b
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, v11}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getOverlayPackages(I)Ljava/util/List;

    move-result-object v10

    .line 149
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v9

    .line 150
    const/4 v0, 0x0

    :goto_46
    if-ge v0, v9, :cond_a2

    .line 151
    invoke-interface {v10, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/content/pm/PackageInfo;

    .line 152
    iget-object v2, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayInfo;

    .line 154
    invoke-static {v8, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 157
    if-eqz v2, :cond_64

    .line 158
    iget-object v2, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_64
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v8, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v6, v8, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v4, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 164
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    .line 165
    invoke-virtual {v8}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v16

    iget v4, v8, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget-object v15, v8, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 161
    move/from16 v17, v4

    move/from16 v4, p1

    move-object/from16 v18, v12

    move-object v12, v8

    move/from16 v8, v16

    move v11, v9

    move/from16 v9, v17

    move-object/from16 v19, v10

    move-object v10, v15

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    goto :goto_93

    .line 154
    :cond_8d
    move v11, v9

    move-object/from16 v19, v10

    move-object/from16 v18, v12

    move-object v12, v8

    .line 170
    :goto_93
    iget-object v2, v12, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    add-int/lit8 v0, v0, 0x1

    move v9, v11

    move-object/from16 v12, v18

    move-object/from16 v10, v19

    move/from16 v11, p1

    goto :goto_46

    .line 175
    :cond_a2
    move v11, v9

    move-object/from16 v19, v10

    move-object/from16 v18, v12

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 176
    const/4 v2, 0x0

    :goto_ac
    if-ge v2, v0, :cond_c8

    .line 177
    invoke-virtual {v14, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    .line 178
    iget-object v4, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v6, v3, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 179
    invoke-direct {v1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 180
    iget-object v3, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_ac

    .line 187
    :cond_c8
    const/4 v2, 0x0

    :goto_c9
    const-string v3, "OverlayManager"

    if-ge v2, v11, :cond_ff

    .line 188
    move-object/from16 v4, v19

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/pm/PackageInfo;

    .line 190
    :try_start_d6
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v6, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_da
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_d6 .. :try_end_da} :catch_e4

    move/from16 v7, p1

    move v8, v11

    const/4 v9, 0x0

    :try_start_de
    invoke-direct {v1, v0, v6, v7, v9}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_e1
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_de .. :try_end_e1} :catch_e2

    .line 195
    goto :goto_f4

    .line 192
    :catch_e2
    move-exception v0

    goto :goto_e8

    :catch_e4
    move-exception v0

    move/from16 v7, p1

    move v8, v11

    .line 193
    :goto_e8
    const-string v6, "failed to update settings"

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v7}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 196
    :goto_f4
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v19, v4

    move v11, v8

    goto :goto_c9

    .line 200
    :cond_ff
    move/from16 v7, p1

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 201
    :goto_105
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11d

    .line 202
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 203
    iget-object v4, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v4, v2, v7}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-nez v2, :cond_11c

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 206
    :cond_11c
    goto :goto_105

    .line 209
    :cond_11d
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 210
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 211
    invoke-virtual {v0, v7}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 213
    const/4 v5, 0x0

    :goto_12d
    if-ge v5, v4, :cond_157

    .line 214
    invoke-virtual {v0, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 215
    if-eqz v6, :cond_13c

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    goto :goto_13d

    :cond_13c
    const/4 v15, 0x0

    .line 216
    :goto_13d
    const/4 v8, 0x0

    :goto_13e
    if-ge v8, v15, :cond_154

    .line 217
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/om/OverlayInfo;

    .line 218
    invoke-virtual {v9}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_151

    .line 219
    iget-object v9, v9, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_151
    add-int/lit8 v8, v8, 0x1

    goto :goto_13e

    .line 213
    :cond_154
    add-int/lit8 v5, v5, 0x1

    goto :goto_12d

    .line 225
    :cond_157
    iget-object v4, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_15b
    if-ge v6, v5, :cond_1e2

    aget-object v8, v4, v6

    .line 227
    :try_start_15f
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v8, v7}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 228
    iget-object v9, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v2, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1ba

    .line 229
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Enabling default overlay \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' for target \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\' in category \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_18e
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_15f .. :try_end_18e} :catch_1be

    move-object/from16 v10, v18

    :try_start_190
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v9, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v11, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v9, v11, v7, v12}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    .line 233
    iget-object v9, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v11, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;
    :try_end_1a9
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_190 .. :try_end_1a9} :catch_1b8

    const/4 v12, 0x0

    :try_start_1aa
    invoke-direct {v1, v9, v11, v7, v12}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v9

    if-eqz v9, :cond_1bd

    .line 234
    iget-object v0, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1b5
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1aa .. :try_end_1b5} :catch_1b6

    goto :goto_1bd

    .line 237
    :catch_1b6
    move-exception v0

    goto :goto_1c2

    :catch_1b8
    move-exception v0

    goto :goto_1c1

    .line 228
    :cond_1ba
    move-object/from16 v10, v18

    const/4 v12, 0x0

    .line 240
    :cond_1bd
    :goto_1bd
    goto :goto_1dc

    .line 237
    :catch_1be
    move-exception v0

    move-object/from16 v10, v18

    :goto_1c1
    const/4 v12, 0x0

    .line 238
    :goto_1c2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to set default overlay \'"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    :goto_1dc
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v18, v10

    goto/16 :goto_15b

    .line 243
    :cond_1e2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
