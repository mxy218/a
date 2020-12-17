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
    .param p1, "packageManager"  # Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;
    .param p2, "idmapManager"  # Lcom/android/server/om/IdmapManager;
    .param p3, "settings"  # Lcom/android/server/om/OverlayManagerSettings;
    .param p4, "defaultOverlays"  # [Ljava/lang/String;
    .param p5, "listener"  # Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

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
    .registers 7
    .param p1, "targetPackage"  # Landroid/content/pm/PackageInfo;
    .param p2, "overlayPackage"  # Landroid/content/pm/PackageInfo;
    .param p3, "userId"  # I
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
        }
    .end annotation

    .line 714
    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_6

    .line 715
    const/4 v0, 0x4

    return v0

    .line 718
    :cond_6
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_c

    .line 719
    const/4 v0, 0x5

    return v0

    .line 727
    :cond_c
    if-nez p1, :cond_10

    .line 728
    const/4 v0, 0x0

    return v0

    .line 731
    :cond_10
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v0, p2, p3}, Lcom/android/server/om/IdmapManager;->idmapExists(Landroid/content/pm/PackageInfo;I)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 732
    const/4 v0, 0x1

    return v0

    .line 735
    :cond_1a
    invoke-virtual {p2}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 736
    const/4 v0, 0x6

    return v0

    .line 739
    :cond_22
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v1, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getEnabled(Ljava/lang/String;I)Z

    move-result v0

    .line 740
    .local v0, "enabled":Z
    if-eqz v0, :cond_2e

    const/4 v1, 0x3

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x2

    :goto_2f
    return v1
.end method

.method private isPackageUpdatableOverlay(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 574
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 575
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_11

    .line 578
    :cond_f
    const/4 v1, 0x1

    return v1

    .line 576
    :cond_11
    :goto_11
    const/4 v1, 0x0

    return v1
.end method

.method private static mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z
    .registers 5
    .param p0, "theTruth"  # Landroid/content/pm/PackageInfo;
    .param p1, "oldSettings"  # Landroid/content/om/OverlayInfo;

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

    iget v1, p0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget v2, p1, Landroid/content/om/OverlayInfo;->priority:I

    if-eq v1, v2, :cond_30

    .line 105
    return v0

    .line 107
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method private removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V
    .registers 8
    .param p1, "oi"  # Landroid/content/om/OverlayInfo;

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
    .local v0, "userIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_2b

    aget v3, v0, v2

    .line 768
    .local v3, "userId":I
    :try_start_15
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, p1, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v4

    .line 769
    .local v4, "tmp":Landroid/content/om/OverlayInfo;
    if-eqz v4, :cond_26

    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5
    :try_end_23
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_15 .. :try_end_23} :catch_27

    if-eqz v5, :cond_26

    .line 771
    return-void

    .line 775
    .end local v4  # "tmp":Landroid/content/om/OverlayInfo;
    :cond_26
    goto :goto_28

    .line 773
    :catch_27
    move-exception v4

    .line 766
    .end local v3  # "userId":I
    :goto_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 777
    :cond_2b
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    iget v2, p1, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v1, p1, v2}, Lcom/android/server/om/IdmapManager;->removeIdmap(Landroid/content/om/OverlayInfo;I)Z

    .line 778
    return-void
.end method

.method private updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V
    .registers 13
    .param p1, "targetPackageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .param p3, "flags"  # I

    .line 299
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 303
    .local v0, "targetOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    const/4 v1, 0x0

    .line 304
    .local v1, "modified":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    .line 305
    .local v3, "oi":Landroid/content/om/OverlayInfo;
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    iget-object v5, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v4, v5, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 307
    .local v4, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v4, :cond_30

    .line 308
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v7, v3, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v5, v6, v7}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v5

    or-int/2addr v1, v5

    .line 309
    invoke-direct {p0, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    goto :goto_49

    .line 312
    :cond_30
    :try_start_30
    iget-object v5, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v5, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v5
    :try_end_36
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_30 .. :try_end_36} :catch_38

    or-int/2addr v1, v5

    .line 316
    goto :goto_49

    .line 313
    :catch_38
    move-exception v5

    .line 314
    .local v5, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v6, "OverlayManager"

    const-string v7, "failed to update settings"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v7, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v6

    or-int/2addr v1, v6

    .line 318
    .end local v3  # "oi":Landroid/content/om/OverlayInfo;
    .end local v4  # "overlayPackage":Landroid/content/pm/PackageInfo;
    .end local v5  # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_49
    goto :goto_b

    .line 320
    :cond_4a
    if-nez v1, :cond_ca

    .line 322
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 325
    .local v2, "enabledOverlayPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const-string v4, "android"

    invoke-virtual {v3, v4, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_61
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_79

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 326
    .local v4, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_78

    .line 327
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    .end local v4  # "oi":Landroid/content/om/OverlayInfo;
    :cond_78
    goto :goto_61

    .line 331
    :cond_79
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_95

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 332
    .restart local v4  # "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_94

    .line 333
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->baseCodePath:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    .end local v4  # "oi":Landroid/content/om/OverlayInfo;
    :cond_94
    goto :goto_7d

    .line 339
    :cond_95
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v3, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 340
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v4, 0x0

    if-nez v3, :cond_a0

    move-object v5, v4

    goto :goto_a2

    :cond_a0
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 341
    .local v5, "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_a2
    if-nez v5, :cond_a5

    goto :goto_a7

    :cond_a5
    iget-object v4, v5, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 344
    .local v4, "resourceDirs":[Ljava/lang/String;
    :goto_a7
    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_b3

    .line 345
    const/4 v1, 0x1

    goto :goto_ca

    .line 346
    :cond_b3
    if-eqz v4, :cond_ca

    .line 348
    const/4 v6, 0x0

    .local v6, "index":I
    :goto_b6
    array-length v7, v4

    if-ge v6, v7, :cond_ca

    .line 349
    aget-object v7, v4, v6

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c7

    .line 350
    const/4 v1, 0x1

    .line 351
    goto :goto_ca

    .line 348
    :cond_c7
    add-int/lit8 v6, v6, 0x1

    goto :goto_b6

    .line 357
    .end local v2  # "enabledOverlayPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3  # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4  # "resourceDirs":[Ljava/lang/String;
    .end local v5  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6  # "index":I
    :cond_ca
    :goto_ca
    if-eqz v1, :cond_d1

    .line 358
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v2, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 360
    :cond_d1
    return-void
.end method

.method private updateState(Ljava/lang/String;Ljava/lang/String;II)Z
    .registers 11
    .param p1, "targetPackageName"  # Ljava/lang/String;
    .param p2, "overlayPackageName"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "flags"  # I
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
    .local v0, "targetPackage":Landroid/content/pm/PackageInfo;
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v1, p2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 681
    .local v1, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_23

    if-eqz v1, :cond_23

    .line 682
    const-string v2, "android"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 683
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v2

    if-nez v2, :cond_23

    .line 684
    :cond_1e
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mIdmapManager:Lcom/android/server/om/IdmapManager;

    invoke-virtual {v2, v0, v1, p3}, Lcom/android/server/om/IdmapManager;->createIdmap(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;I)Z

    .line 687
    :cond_23
    const/4 v2, 0x0

    .line 688
    .local v2, "modified":Z
    if-eqz v1, :cond_3c

    .line 689
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 690
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v4

    .line 689
    invoke-virtual {v3, p2, p3, v4}, Lcom/android/server/om/OverlayManagerSettings;->setBaseCodePath(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 691
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    invoke-virtual {v3, p2, p3, v4}, Lcom/android/server/om/OverlayManagerSettings;->setCategory(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 695
    :cond_3c
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->getState(Ljava/lang/String;I)I

    move-result v3

    .line 696
    .local v3, "currentState":I
    invoke-direct {p0, v0, v1, p3, p4}, Lcom/android/server/om/OverlayManagerServiceImpl;->calculateNewState(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;II)I

    move-result v4

    .line 698
    .local v4, "newState":I
    if-eq v3, v4, :cond_4f

    .line 705
    iget-object v5, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v5, p2, p3, v4}, Lcom/android/server/om/OverlayManagerSettings;->setState(Ljava/lang/String;II)Z

    move-result v5

    or-int/2addr v2, v5

    .line 707
    :cond_4f
    return v2
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpState"  # Lcom/android/server/om/DumpState;

    .line 644
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->dump(Ljava/io/PrintWriter;Lcom/android/server/om/DumpState;)V

    .line 645
    invoke-virtual {p2}, Lcom/android/server/om/DumpState;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_27

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default overlays: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    const-string v2, ";"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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
    .registers 9
    .param p1, "targetPackageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    move-result-object v0

    .line 658
    .local v0, "overlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 659
    .local v1, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 660
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_14
    if-ge v3, v2, :cond_2a

    .line 661
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 662
    .local v4, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_27

    .line 663
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 660
    .end local v4  # "oi":Landroid/content/om/OverlayInfo;
    :cond_27
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 666
    .end local v3  # "i":I
    :cond_2a
    return-object v1
.end method

.method getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0
    :try_end_6
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    .line 469
    :catch_7
    move-exception v0

    .line 470
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const/4 v1, 0x0

    return-object v1
.end method

.method getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;
    .registers 4
    .param p1, "targetPackageName"  # Ljava/lang/String;
    .param p2, "userId"  # I
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

    move-result-object v0

    return-object v0
.end method

.method getOverlaysForUser(I)Ljava/util/Map;
    .registers 3
    .param p1, "userId"  # I
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

    move-result-object v0

    return-object v0
.end method

.method onOverlayPackageAdded(Ljava/lang/String;I)V
    .registers 15
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 367
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 368
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    const-string v1, "OverlayManager"

    if-nez v0, :cond_28

    .line 369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "overlay package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was added, but couldn\'t be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {p0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl;->onOverlayPackageRemoved(Ljava/lang/String;I)V

    .line 371
    return-void

    .line 374
    :cond_28
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 376
    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    .line 377
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v9

    iget v10, v0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 374
    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 380
    :try_start_41
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {p0, v2, p1, p2, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_51

    .line 381
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v2, v3, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_51
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_41 .. :try_end_51} :catch_52

    .line 386
    :cond_51
    goto :goto_5d

    .line 383
    :catch_52
    move-exception v2

    .line 384
    .local v2, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v3, "failed to update settings"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 385
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 387
    .end local v2  # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_5d
    return-void
.end method

.method onOverlayPackageChanged(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 395
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 396
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-object v1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 397
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_16
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_16} :catch_17

    .line 401
    .end local v0  # "oi":Landroid/content/om/OverlayInfo;
    :cond_16
    goto :goto_1f

    .line 399
    :catch_17
    move-exception v0

    .line 400
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v1, "OverlayManager"

    const-string v2, "failed to update settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    .end local v0  # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_1f
    return-void
.end method

.method onOverlayPackageRemoved(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 456
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 457
    .local v0, "overlayInfo":Landroid/content/om/OverlayInfo;
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 458
    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 459
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_18
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_18} :catch_19

    .line 463
    .end local v0  # "overlayInfo":Landroid/content/om/OverlayInfo;
    :cond_18
    goto :goto_21

    .line 461
    :catch_19
    move-exception v0

    .line 462
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v1, "OverlayManager"

    const-string v2, "failed to remove overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 464
    .end local v0  # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_21
    return-void
.end method

.method onOverlayPackageReplaced(Ljava/lang/String;I)V
    .registers 15
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 428
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 429
    .local v0, "pkg":Landroid/content/pm/PackageInfo;
    const-string v1, "OverlayManager"

    if-nez v0, :cond_28

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "overlay package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " was replaced, but couldn\'t be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

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
    .local v2, "oldOi":Landroid/content/om/OverlayInfo;
    invoke-static {v0, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v3

    if-eqz v3, :cond_60

    .line 438
    if-eqz v2, :cond_47

    iget-object v3, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    .line 439
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v3, v4, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 441
    :cond_47
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 442
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v9

    iget v10, v0, Landroid/content/pm/PackageInfo;->overlayPriority:I

    iget-object v11, v0, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 441
    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    .line 446
    :cond_60
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, p2, v4}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 447
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v3, v4, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_70
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_28 .. :try_end_70} :catch_71

    .line 451
    .end local v2  # "oldOi":Landroid/content/om/OverlayInfo;
    :cond_70
    goto :goto_77

    .line 449
    :catch_71
    move-exception v2

    .line 450
    .local v2, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v3, "failed to update settings"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    .end local v2  # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_77
    return-void
.end method

.method onOverlayPackageReplacing(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 411
    :try_start_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 412
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-object v1, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v1, p1, p2, v2}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 414
    invoke-direct {p0, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 415
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_19
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 419
    .end local v0  # "oi":Landroid/content/om/OverlayInfo;
    :cond_19
    goto :goto_22

    .line 417
    :catch_1a
    move-exception v0

    .line 418
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    const-string v1, "OverlayManager"

    const-string v2, "failed to update settings"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    .end local v0  # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_22
    return-void
.end method

.method onTargetPackageAdded(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 259
    return-void
.end method

.method onTargetPackageChanged(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 267
    return-void
.end method

.method onTargetPackageRemoved(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 291
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 292
    return-void
.end method

.method onTargetPackageReplaced(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 283
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 284
    return-void
.end method

.method onTargetPackageReplacing(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 275
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateAndRefreshOverlaysForTarget(Ljava/lang/String;II)V

    .line 276
    return-void
.end method

.method onUserRemoved(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 250
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/om/OverlayManagerSettings;->removeUser(I)Z

    .line 251
    return-void
.end method

.method setEnabled(Ljava/lang/String;ZI)Z
    .registers 10
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "enable"  # Z
    .param p3, "userId"  # I

    .line 490
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 491
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 492
    return v1

    .line 496
    :cond_a
    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 497
    return v1

    .line 501
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    .line 502
    .local v2, "oi":Landroid/content/om/OverlayInfo;
    iget-object v3, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v3, p1, p3, p2}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v3

    .line 503
    .local v3, "modified":Z
    iget-object v4, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4, v5, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v4

    or-int/2addr v3, v4

    .line 505
    if-eqz v3, :cond_2f

    .line 506
    iget-object v4, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v5, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v4, v5, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_2f
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_11 .. :try_end_2f} :catch_31

    .line 508
    :cond_2f
    const/4 v1, 0x1

    return v1

    .line 509
    .end local v2  # "oi":Landroid/content/om/OverlayInfo;
    .end local v3  # "modified":Z
    :catch_31
    move-exception v2

    .line 510
    .local v2, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    return v1
.end method

.method setEnabledExclusive(Ljava/lang/String;ZI)Z
    .registers 15
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "withinCategory"  # Z
    .param p3, "userId"  # I

    .line 521
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, p1, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 522
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 523
    return v1

    .line 527
    :cond_a
    :try_start_a
    iget-object v2, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v2, p1, p3}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v2

    .line 528
    .local v2, "oi":Landroid/content/om/OverlayInfo;
    iget-object v3, v2, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 530
    .local v3, "targetPackageName":Ljava/lang/String;
    invoke-virtual {p0, v3, p3}, Lcom/android/server/om/OverlayManagerServiceImpl;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 532
    .local v4, "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    const/4 v5, 0x0

    .line 535
    .local v5, "modified":Z
    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 536
    move v6, v1

    .local v6, "i":I
    :goto_1b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_5c

    .line 537
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/om/OverlayInfo;

    iget-object v7, v7, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    .line 538
    .local v7, "disabledOverlayPackageName":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v8, v7, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 540
    .local v8, "disabledOverlayPackageInfo":Landroid/content/pm/PackageInfo;
    if-nez v8, :cond_39

    .line 541
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v9, v7, p3}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    move-result v9

    or-int/2addr v5, v9

    .line 542
    goto :goto_59

    .line 545
    :cond_39
    invoke-virtual {v8}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v9

    if-eqz v9, :cond_40

    .line 547
    goto :goto_59

    .line 549
    :cond_40
    if-eqz p2, :cond_4d

    iget-object v9, v8, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    iget-object v10, v2, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4d

    .line 552
    goto :goto_59

    .line 556
    :cond_4d
    iget-object v9, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v9, v7, p3, v1}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v9

    or-int/2addr v5, v9

    .line 557
    invoke-direct {p0, v3, v7, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v9

    or-int/2addr v5, v9

    .line 536
    .end local v7  # "disabledOverlayPackageName":Ljava/lang/String;
    .end local v8  # "disabledOverlayPackageInfo":Landroid/content/pm/PackageInfo;
    :goto_59
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 561
    .end local v6  # "i":I
    :cond_5c
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    const/4 v7, 0x1

    invoke-virtual {v6, p1, p3, v7}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    move-result v6

    or-int/2addr v5, v6

    .line 562
    invoke-direct {p0, v3, p1, p3, v1}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v6

    or-int/2addr v5, v6

    .line 564
    if-eqz v5, :cond_70

    .line 565
    iget-object v6, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    invoke-interface {v6, v3, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V
    :try_end_70
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_a .. :try_end_70} :catch_71

    .line 567
    :cond_70
    return v7

    .line 568
    .end local v2  # "oi":Landroid/content/om/OverlayInfo;
    .end local v3  # "targetPackageName":Ljava/lang/String;
    .end local v4  # "allOverlays":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v5  # "modified":Z
    :catch_71
    move-exception v2

    .line 569
    .local v2, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    return v1
.end method

.method setHighestPriority(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

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
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_11

    .line 614
    return v1

    .line 617
    :cond_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 618
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 620
    :cond_20
    const/4 v1, 0x1

    return v1
.end method

.method setLowestPriority(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "userId"  # I

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
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_11

    .line 634
    return v1

    .line 637
    :cond_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/om/OverlayManagerSettings;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 638
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p2}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 640
    :cond_20
    const/4 v1, 0x1

    return v1
.end method

.method setPriority(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "newParentPackageName"  # Ljava/lang/String;
    .param p3, "userId"  # I

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
    .local v0, "overlayPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_11

    .line 594
    return v1

    .line 597
    :cond_11
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/om/OverlayManagerSettings;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 598
    iget-object v1, p0, Lcom/android/server/om/OverlayManagerServiceImpl;->mListener:Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v1, v2, p3}, Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;I)V

    .line 600
    :cond_20
    const/4 v1, 0x1

    return v1
.end method

.method updateOverlaysForUser(I)Ljava/util/ArrayList;
    .registers 26
    .param p1, "newUserId"  # I
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

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v13, v0

    .line 134
    .local v13, "packagesToUpdateAssets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v11}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v14

    .line 135
    .local v14, "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v15

    .line 136
    .local v15, "tmpSize":I
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, v15}, Landroid/util/ArrayMap;-><init>(I)V

    move-object v10, v0

    .line 137
    .local v10, "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    if-ge v0, v15, :cond_3d

    .line 138
    invoke-virtual {v14, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 139
    .local v2, "chunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 140
    .local v3, "chunkSize":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2a
    if-ge v4, v3, :cond_3a

    .line 141
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/om/OverlayInfo;

    .line 142
    .local v5, "oi":Landroid/content/om/OverlayInfo;
    iget-object v6, v5, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .end local v5  # "oi":Landroid/content/om/OverlayInfo;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 137
    .end local v2  # "chunk":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v3  # "chunkSize":I
    .end local v4  # "j":I
    :cond_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 148
    .end local v0  # "i":I
    :cond_3d
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v0, v11}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getOverlayPackages(I)Ljava/util/List;

    move-result-object v9

    .line 149
    .local v9, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v8

    .line 150
    .local v8, "overlayPackagesSize":I
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_48
    if-ge v0, v8, :cond_bd

    .line 151
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/content/pm/PackageInfo;

    .line 152
    .local v7, "overlayPackage":Landroid/content/pm/PackageInfo;
    iget-object v2, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/content/om/OverlayInfo;

    .line 154
    .local v6, "oi":Landroid/content/om/OverlayInfo;
    invoke-static {v7, v6}, Lcom/android/server/om/OverlayManagerServiceImpl;->mustReinitializeOverlay(Landroid/content/pm/PackageInfo;Landroid/content/om/OverlayInfo;)Z

    move-result v2

    if-eqz v2, :cond_9e

    .line 157
    if-eqz v6, :cond_67

    .line 158
    iget-object v2, v6, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_67
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v3, v7, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v7, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v4, v7, Landroid/content/pm/PackageInfo;->targetOverlayableName:Ljava/lang/String;

    move-object/from16 v16, v4

    iget-object v4, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 164
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v17

    .line 165
    invoke-virtual {v7}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v18

    iget v4, v7, Landroid/content/pm/PackageInfo;->overlayPriority:I

    move-object/from16 v19, v10

    .end local v10  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .local v19, "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    iget-object v10, v7, Landroid/content/pm/PackageInfo;->overlayCategory:Ljava/lang/String;

    .line 161
    move/from16 v20, v4

    move/from16 v4, p1

    move-object/from16 v21, v6

    .end local v6  # "oi":Landroid/content/om/OverlayInfo;
    .local v21, "oi":Landroid/content/om/OverlayInfo;
    move-object/from16 v6, v16

    move-object/from16 v16, v14

    move-object v14, v7

    .end local v7  # "overlayPackage":Landroid/content/pm/PackageInfo;
    .local v14, "overlayPackage":Landroid/content/pm/PackageInfo;
    .local v16, "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    move-object/from16 v7, v17

    move/from16 v17, v15

    move v15, v8

    .end local v8  # "overlayPackagesSize":I
    .local v15, "overlayPackagesSize":I
    .local v17, "tmpSize":I
    move/from16 v8, v18

    move-object/from16 v18, v12

    move-object v12, v9

    .end local v9  # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v12, "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move/from16 v9, v20

    move-object/from16 v11, v19

    .end local v19  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .local v11, "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    invoke-virtual/range {v2 .. v10}, Lcom/android/server/om/OverlayManagerSettings;->init(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V

    goto :goto_aa

    .line 154
    .end local v11  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .end local v12  # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v16  # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .end local v17  # "tmpSize":I
    .end local v21  # "oi":Landroid/content/om/OverlayInfo;
    .restart local v6  # "oi":Landroid/content/om/OverlayInfo;
    .restart local v7  # "overlayPackage":Landroid/content/pm/PackageInfo;
    .restart local v8  # "overlayPackagesSize":I
    .restart local v9  # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v10  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .local v14, "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .local v15, "tmpSize":I
    :cond_9e
    move-object/from16 v21, v6

    move-object v11, v10

    move-object/from16 v18, v12

    move-object/from16 v16, v14

    move/from16 v17, v15

    move-object v14, v7

    move v15, v8

    move-object v12, v9

    .line 170
    .end local v6  # "oi":Landroid/content/om/OverlayInfo;
    .end local v7  # "overlayPackage":Landroid/content/pm/PackageInfo;
    .end local v8  # "overlayPackagesSize":I
    .end local v9  # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v10  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v11  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v12  # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v14, "overlayPackage":Landroid/content/pm/PackageInfo;
    .local v15, "overlayPackagesSize":I
    .restart local v16  # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v17  # "tmpSize":I
    .restart local v21  # "oi":Landroid/content/om/OverlayInfo;
    :goto_aa
    iget-object v2, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .end local v14  # "overlayPackage":Landroid/content/pm/PackageInfo;
    .end local v21  # "oi":Landroid/content/om/OverlayInfo;
    add-int/lit8 v0, v0, 0x1

    move-object v10, v11

    move-object v9, v12

    move v8, v15

    move-object/from16 v14, v16

    move/from16 v15, v17

    move-object/from16 v12, v18

    move/from16 v11, p1

    goto :goto_48

    .end local v11  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .end local v12  # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v16  # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .end local v17  # "tmpSize":I
    .restart local v8  # "overlayPackagesSize":I
    .restart local v9  # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v10  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .local v14, "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .local v15, "tmpSize":I
    :cond_bd
    move-object v11, v10

    move-object/from16 v18, v12

    move-object/from16 v16, v14

    move/from16 v17, v15

    move v15, v8

    move-object v12, v9

    .line 175
    .end local v0  # "i":I
    .end local v8  # "overlayPackagesSize":I
    .end local v9  # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v10  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .end local v14  # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v11  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v12  # "overlayPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .local v15, "overlayPackagesSize":I
    .restart local v16  # "tmp":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    .restart local v17  # "tmpSize":I
    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 176
    .local v2, "storedOverlayInfosSize":I
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_cb
    if-ge v0, v2, :cond_e7

    .line 177
    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/om/OverlayInfo;

    .line 178
    .local v3, "oi":Landroid/content/om/OverlayInfo;
    iget-object v4, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v3, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    iget v6, v3, Landroid/content/om/OverlayInfo;->userId:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 179
    invoke-direct {v1, v3}, Lcom/android/server/om/OverlayManagerServiceImpl;->removeIdmapIfPossible(Landroid/content/om/OverlayInfo;)V

    .line 180
    iget-object v4, v3, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v13, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v3  # "oi":Landroid/content/om/OverlayInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_cb

    .line 187
    .end local v0  # "i":I
    :cond_e7
    const/4 v0, 0x0

    move v3, v0

    .local v3, "i":I
    :goto_e9
    const-string v4, "OverlayManager"

    const/4 v5, 0x0

    if-ge v3, v15, :cond_11b

    .line 188
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 190
    .local v6, "overlayPackage":Landroid/content/pm/PackageInfo;
    :try_start_f5
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_f9
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_f5 .. :try_end_f9} :catch_102

    move/from16 v8, p1

    move-object v9, v11

    .end local v11  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .local v9, "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :try_start_fc
    invoke-direct {v1, v0, v7, v8, v5}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_ff
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_fc .. :try_end_ff} :catch_100

    .line 195
    goto :goto_112

    .line 192
    :catch_100
    move-exception v0

    goto :goto_106

    .end local v9  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v11  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :catch_102
    move-exception v0

    move/from16 v8, p1

    move-object v9, v11

    .line 193
    .end local v11  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .restart local v9  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :goto_106
    const-string v5, "failed to update settings"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    iget-object v4, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v8}, Lcom/android/server/om/OverlayManagerSettings;->remove(Ljava/lang/String;I)Z

    .line 196
    .end local v0  # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    :goto_112
    iget-object v0, v6, Landroid/content/pm/PackageInfo;->overlayTarget:Ljava/lang/String;

    invoke-interface {v13, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    .end local v6  # "overlayPackage":Landroid/content/pm/PackageInfo;
    add-int/lit8 v3, v3, 0x1

    move-object v11, v9

    goto :goto_e9

    .end local v9  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v11  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    :cond_11b
    move/from16 v8, p1

    move-object v9, v11

    .line 200
    .end local v3  # "i":I
    .end local v11  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    .restart local v9  # "storedOverlayInfos":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/om/OverlayInfo;>;"
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 201
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_122
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13a

    .line 202
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 203
    .local v0, "targetPackageName":Ljava/lang/String;
    iget-object v6, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mPackageManager:Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;

    invoke-interface {v6, v0, v8}, Lcom/android/server/om/OverlayManagerServiceImpl$PackageManagerHelper;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-nez v6, :cond_139

    .line 204
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 206
    .end local v0  # "targetPackageName":Ljava/lang/String;
    :cond_139
    goto :goto_122

    .line 209
    :cond_13a
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v6, v0

    .line 210
    .local v6, "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    .line 211
    invoke-virtual {v0, v8}, Lcom/android/server/om/OverlayManagerSettings;->getOverlaysForUser(I)Landroid/util/ArrayMap;

    move-result-object v7

    .line 212
    .local v7, "userOverlays":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/util/List<Landroid/content/om/OverlayInfo;>;>;"
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 213
    .local v10, "userOverlayTargetCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14b
    if-ge v0, v10, :cond_18a

    .line 214
    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 215
    .local v11, "overlayList":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    if-eqz v11, :cond_15a

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v14

    goto :goto_15b

    :cond_15a
    move v14, v5

    .line 216
    .local v14, "overlayCount":I
    :goto_15b
    const/16 v19, 0x0

    move/from16 v5, v19

    .local v5, "j":I
    :goto_15f
    if-ge v5, v14, :cond_182

    .line 217
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move/from16 v21, v2

    .end local v2  # "storedOverlayInfosSize":I
    .local v21, "storedOverlayInfosSize":I
    move-object/from16 v2, v19

    check-cast v2, Landroid/content/om/OverlayInfo;

    .line 218
    .local v2, "oi":Landroid/content/om/OverlayInfo;
    invoke-virtual {v2}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v19

    if-eqz v19, :cond_179

    .line 219
    move-object/from16 v19, v3

    .end local v3  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v19, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v3, v2, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_17b

    .line 218
    .end local v19  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_179
    move-object/from16 v19, v3

    .line 216
    .end local v2  # "oi":Landroid/content/om/OverlayInfo;
    .end local v3  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v19  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_17b
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v3, v19

    move/from16 v2, v21

    goto :goto_15f

    .end local v19  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v21  # "storedOverlayInfosSize":I
    .local v2, "storedOverlayInfosSize":I
    .restart local v3  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_182
    move/from16 v21, v2

    move-object/from16 v19, v3

    .line 213
    .end local v2  # "storedOverlayInfosSize":I
    .end local v3  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5  # "j":I
    .end local v11  # "overlayList":Ljava/util/List;, "Ljava/util/List<Landroid/content/om/OverlayInfo;>;"
    .end local v14  # "overlayCount":I
    .restart local v19  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v21  # "storedOverlayInfosSize":I
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x0

    goto :goto_14b

    .end local v19  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v21  # "storedOverlayInfosSize":I
    .restart local v2  # "storedOverlayInfosSize":I
    .restart local v3  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_18a
    move/from16 v21, v2

    move-object/from16 v19, v3

    .line 225
    .end local v0  # "i":I
    .end local v2  # "storedOverlayInfosSize":I
    .end local v3  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v19  # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v21  # "storedOverlayInfosSize":I
    iget-object v2, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mDefaultOverlays:[Ljava/lang/String;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_192
    if-ge v5, v3, :cond_23d

    aget-object v11, v2, v5

    .line 227
    .local v11, "defaultOverlay":Ljava/lang/String;
    :try_start_196
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;

    invoke-virtual {v0, v11, v8}, Lcom/android/server/om/OverlayManagerSettings;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v0

    .line 228
    .local v0, "oi":Landroid/content/om/OverlayInfo;
    iget-object v14, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v6, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_203

    .line 229
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1a9
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_196 .. :try_end_1a9} :catch_20d

    move-object/from16 v22, v2

    :try_start_1ab
    const-string v2, "Enabling default overlay \'"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' for target \'"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' in category \'"

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1c7
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1ab .. :try_end_1c7} :catch_201

    move-object/from16 v2, v18

    :try_start_1c9
    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v14, v1, Lcom/android/server/om/OverlayManagerServiceImpl;->mSettings:Lcom/android/server/om/OverlayManagerSettings;
    :try_end_1d8
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1c9 .. :try_end_1d8} :catch_1fa

    move/from16 v18, v3

    :try_start_1da
    iget-object v3, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;
    :try_end_1dc
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1da .. :try_end_1dc} :catch_1f8

    move-object/from16 v23, v6

    .end local v6  # "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v23, "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v6, 0x1

    :try_start_1df
    invoke-virtual {v14, v3, v8, v6}, Lcom/android/server/om/OverlayManagerSettings;->setEnabled(Ljava/lang/String;IZ)Z

    .line 233
    iget-object v3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v6, v0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;
    :try_end_1e6
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1df .. :try_end_1e6} :catch_1f5

    const/4 v14, 0x0

    :try_start_1e7
    invoke-direct {v1, v3, v6, v8, v14}, Lcom/android/server/om/OverlayManagerServiceImpl;->updateState(Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_20c

    .line 234
    iget-object v3, v0, Landroid/content/om/OverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-interface {v13, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1f2
    .catch Lcom/android/server/om/OverlayManagerSettings$BadKeyException; {:try_start_1e7 .. :try_end_1f2} :catch_1f3

    goto :goto_20c

    .line 237
    .end local v0  # "oi":Landroid/content/om/OverlayInfo;
    :catch_1f3
    move-exception v0

    goto :goto_217

    :catch_1f5
    move-exception v0

    const/4 v14, 0x0

    goto :goto_217

    .end local v23  # "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6  # "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catch_1f8
    move-exception v0

    goto :goto_1fd

    :catch_1fa
    move-exception v0

    move/from16 v18, v3

    :goto_1fd
    move-object/from16 v23, v6

    const/4 v14, 0x0

    goto :goto_217

    :catch_201
    move-exception v0

    goto :goto_210

    .line 228
    .restart local v0  # "oi":Landroid/content/om/OverlayInfo;
    :cond_203
    move-object/from16 v22, v2

    move-object/from16 v23, v6

    move-object/from16 v2, v18

    const/4 v14, 0x0

    move/from16 v18, v3

    .line 240
    .end local v0  # "oi":Landroid/content/om/OverlayInfo;
    .end local v6  # "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v23  # "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_20c
    :goto_20c
    goto :goto_231

    .line 237
    .end local v23  # "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6  # "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :catch_20d
    move-exception v0

    move-object/from16 v22, v2

    :goto_210
    move-object/from16 v23, v6

    move-object/from16 v2, v18

    const/4 v14, 0x0

    move/from16 v18, v3

    .line 238
    .end local v6  # "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local v0, "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .restart local v23  # "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :goto_217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to set default overlay \'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    .end local v0  # "e":Lcom/android/server/om/OverlayManagerSettings$BadKeyException;
    .end local v11  # "defaultOverlay":Ljava/lang/String;
    :goto_231
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v18

    move-object/from16 v6, v23

    move-object/from16 v18, v2

    move-object/from16 v2, v22

    goto/16 :goto_192

    .line 243
    .end local v23  # "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .restart local v6  # "enabledCategories":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    :cond_23d
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
