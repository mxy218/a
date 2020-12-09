.class Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;
.super Landroid/content/pm/PackageManagerInternal;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2

    .line 24441
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Landroid/content/pm/PackageManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$1;)V
    .registers 3

    .line 24441
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method

.method private getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 4

    .line 24514
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24515
    :try_start_5
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 24516
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object p1

    .line 24517
    if-eqz p1, :cond_2b

    .line 24518
    instance-of v1, p1, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v1, :cond_1f

    .line 24519
    check-cast p1, Lcom/android/server/pm/SharedUserSetting;

    iget-object p1, p1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    monitor-exit v0

    return-object p1

    .line 24520
    :cond_1f
    instance-of v1, p1, Lcom/android/server/pm/PackageSetting;

    if-eqz v1, :cond_2b

    .line 24521
    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 24522
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object p1, p1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    monitor-exit v0

    return-object p1

    .line 24525
    :cond_2b
    sget-object p1, Landroid/content/pm/PackageParser$SigningDetails;->UNKNOWN:Landroid/content/pm/PackageParser$SigningDetails;

    monitor-exit v0

    return-object p1

    .line 24526
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_2f

    throw p1
.end method

.method private getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;
    .registers 4

    .line 24504
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24505
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    .line 24506
    if-nez p1, :cond_14

    .line 24507
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 24509
    :cond_14
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    monitor-exit v0

    return-object p1

    .line 24510
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw p1
.end method


# virtual methods
.method public addIsolatedUid(II)V
    .registers 5

    .line 25030
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25031
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25032
    monitor-exit v0

    .line 25033
    return-void

    .line 25032
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public canAccessComponent(ILandroid/content/ComponentName;I)Z
    .registers 12

    .line 25063
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25064
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 25065
    if-eqz v3, :cond_26

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v6, 0x0

    move v4, p1

    move-object v5, p2

    move v7, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->access$8100(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;ILandroid/content/ComponentName;II)Z

    move-result p1

    if-nez p1, :cond_26

    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    monitor-exit v0

    return p1

    .line 25067
    :catchall_29
    move-exception p1

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public canAccessInstantApps(II)Z
    .registers 4

    .line 25058
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$8000(Lcom/android/server/pm/PackageManagerService;II)Z

    move-result p1

    return p1
.end method

.method public compileLayouts(Ljava/lang/String;)Z
    .registers 4

    .line 25186
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25187
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    .line 25188
    if-nez p1, :cond_14

    .line 25189
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 25191
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1e

    .line 25192
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mArtManagerService:Lcom/android/server/pm/dex/ArtManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/dex/ArtManagerService;->compileLayouts(Landroid/content/pm/PackageParser$Package;)Z

    move-result p1

    return p1

    .line 25191
    :catchall_1e
    move-exception p1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public filterAppAccess(Landroid/content/pm/PackageParser$Package;II)Z
    .registers 6

    .line 24546
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24547
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$5900(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;II)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 24549
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public finishPackageInstall(IZ)V
    .registers 4

    .line 25197
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->finishPackageInstall(IZ)V

    .line 25198
    return-void
.end method

.method public forEachInstalledPackage(Ljava/util/function/Consumer;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;I)V"
        }
    .end annotation

    .line 25138
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->forEachInstalledPackage(Ljava/util/function/Consumer;I)V

    .line 25139
    return-void
.end method

.method public forEachPackage(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .line 25132
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 25133
    return-void
.end method

.method public freeStorage(Ljava/lang/String;JI)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25127
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V

    .line 25128
    return-void
.end method

.method public getActivityInfo(Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;
    .registers 6

    .line 24774
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 24775
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->access$6700(Lcom/android/server/pm/PackageManagerService;Landroid/content/ComponentName;III)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    .line 24774
    return-object p1
.end method

.method public getApplicationEnabledState(Ljava/lang/String;I)I
    .registers 5

    .line 25166
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25167
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    .line 25168
    if-nez p1, :cond_12

    .line 25169
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 25171
    :cond_12
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 25172
    :catchall_18
    move-exception p1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_18

    throw p1
.end method

.method public getApplicationInfo(Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;
    .registers 6

    .line 24767
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 24768
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->access$6600(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;III)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 24767
    return-object p1
.end method

.method public getAppsWithSharedUserIds()Landroid/util/SparseArray;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25100
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25101
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$8300(Lcom/android/server/pm/PackageManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 25102
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getCheckPermissionDelegate()Landroid/content/pm/PackageManagerInternal$CheckPermissionDelegate;
    .registers 3

    .line 25086
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25087
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->getCheckPermissionDelegateLocked()Landroid/content/pm/PackageManagerInternal$CheckPermissionDelegate;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 25088
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw v1
.end method

.method public getDefaultHomeActivity(I)Landroid/content/ComponentName;
    .registers 3

    .line 24804
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$7000(Lcom/android/server/pm/PackageManagerService;I)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public getDisabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25154
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25155
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    .line 25156
    if-nez p1, :cond_16

    .line 25157
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    monitor-exit v0

    return-object p1

    .line 25159
    :cond_16
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Landroid/util/ArraySet;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 25160
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 4

    .line 24586
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24587
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    .line 24588
    if-eqz p1, :cond_12

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    monitor-exit v0

    return-object p1

    .line 24589
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public getDisabledSystemPackageName(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 24594
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getDisabledSystemPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    .line 24595
    if-nez p1, :cond_8

    const/4 p1, 0x0

    goto :goto_a

    :cond_8
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    :goto_a
    return-object p1
.end method

.method public getDistractingPackageRestrictions(Ljava/lang/String;I)I
    .registers 5

    .line 24752
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24753
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 24754
    if-eqz p1, :cond_18

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getDistractionFlags(I)I

    move-result p1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    monitor-exit v0

    return p1

    .line 24755
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public getEnabledComponents(Ljava/lang/String;I)Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 25143
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25144
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p1

    .line 25145
    if-nez p1, :cond_16

    .line 25146
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    monitor-exit v0

    return-object p1

    .line 25148
    :cond_16
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Landroid/util/ArraySet;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 25149
    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    .line 24799
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->getHomeActivitiesAsUser(Ljava/util/List;I)Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public getInstalledApplications(III)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .line 24452
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$5700(Lcom/android/server/pm/PackageManagerService;III)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getInstantAppPackageName(I)Ljava/lang/String;
    .registers 3

    .line 24541
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$5800(Lcom/android/server/pm/PackageManagerService;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getKnownPackageName(II)Ljava/lang/String;
    .registers 3

    .line 24600
    packed-switch p1, :pswitch_data_42

    .line 24626
    const/4 p1, 0x0

    return-object p1

    .line 24624
    :pswitch_5  #0xb
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mAppPredictionServicePackage:Ljava/lang/String;

    return-object p1

    .line 24622
    :pswitch_a  #0xa
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mIncidentReportApproverPackage:Ljava/lang/String;

    return-object p1

    .line 24620
    :pswitch_f  #0x9
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mConfiguratorPackage:Ljava/lang/String;

    return-object p1

    .line 24618
    :pswitch_14  #0x8
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mDocumenterPackage:Ljava/lang/String;

    return-object p1

    .line 24616
    :pswitch_19  #0x7
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mWellbeingPackage:Ljava/lang/String;

    return-object p1

    .line 24614
    :pswitch_1e  #0x6
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mRequiredPermissionControllerPackage:Ljava/lang/String;

    return-object p1

    .line 24612
    :pswitch_23  #0x5
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mSystemTextClassifierPackage:Ljava/lang/String;

    return-object p1

    .line 24602
    :pswitch_28  #0x4
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageManagerService;->getDefaultBrowserPackageName(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 24610
    :pswitch_2f  #0x3
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mRequiredVerifierPackage:Ljava/lang/String;

    return-object p1

    .line 24604
    :pswitch_34  #0x2
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mRequiredInstallerPackage:Ljava/lang/String;

    return-object p1

    .line 24606
    :pswitch_39  #0x1
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    return-object p1

    .line 24608
    :pswitch_3e  #0x0
    const-string p1, "android"

    return-object p1

    nop

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3e  #00000000
        :pswitch_39  #00000001
        :pswitch_34  #00000002
        :pswitch_2f  #00000003
        :pswitch_28  #00000004
        :pswitch_23  #00000005
        :pswitch_1e  #00000006
        :pswitch_19  #00000007
        :pswitch_14  #00000008
        :pswitch_f  #00000009
        :pswitch_a  #0000000a
        :pswitch_5  #0000000b
    .end packed-switch
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .registers 3

    .line 24884
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOverlayPackages(I)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 24953
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24954
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 24955
    :try_start_a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 24956
    iget-object v4, v3, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-eqz v4, :cond_36

    .line 24957
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, p1}, Lcom/android/server/pm/PackageManagerService;->access$7400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 24958
    if-eqz v3, :cond_36

    .line 24959
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24962
    :cond_36
    goto :goto_16

    .line 24963
    :cond_37
    monitor-exit v1

    .line 24964
    return-object v0

    .line 24963
    :catchall_39
    move-exception p1

    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_a .. :try_end_3b} :catchall_39

    throw p1
.end method

.method public getPackage(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;
    .registers 6

    .line 24554
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24555
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-wide/16 v2, -0x1

    invoke-static {v1, p1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->access$6000(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p1

    .line 24557
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    monitor-exit v0

    return-object p1

    .line 24558
    :catchall_19
    move-exception p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_19

    throw p1
.end method

.method public getPackageInfo(Ljava/lang/String;III)Landroid/content/pm/PackageInfo;
    .registers 12

    .line 24709
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 24710
    const-wide/16 v2, -0x1

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$6500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;JIII)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 24709
    return-object p1
.end method

.method public getPackageList(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)Landroid/content/pm/PackageList;
    .registers 7

    .line 24563
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24564
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 24565
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24566
    const/4 v3, 0x0

    :goto_13
    if-ge v3, v1, :cond_25

    .line 24567
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24566
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 24569
    :cond_25
    new-instance v1, Landroid/content/pm/PackageList;

    invoke-direct {v1, v2, p1}, Landroid/content/pm/PackageList;-><init>(Ljava/util/List;Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V

    .line 24570
    if-eqz p1, :cond_35

    .line 24571
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerService;->access$6100(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 24573
    :cond_35
    monitor-exit v0

    return-object v1

    .line 24574
    :catchall_37
    move-exception p1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_5 .. :try_end_39} :catchall_37

    throw p1
.end method

.method public getPackageTargetSdkVersion(Ljava/lang/String;)I
    .registers 4

    .line 25051
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25052
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$7900(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)I

    move-result p1

    monitor-exit v0

    return p1

    .line 25053
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getPackageUid(Ljava/lang/String;II)I
    .registers 5

    .line 24760
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 24761
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result p1

    .line 24760
    return p1
.end method

.method public getPackagesForSharedUserId(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 5

    .line 25114
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25115
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$8500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 25116
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getPermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5

    .line 24531
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getSetupWizardPackageName()Ljava/lang/String;
    .registers 2

    .line 24920
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSetupWizardPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getSharedUserIdForPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 25107
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25108
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$8400(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 25109
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public getSuspendedDialogInfo(Ljava/lang/String;I)Landroid/content/pm/SuspendDialogInfo;
    .registers 5

    .line 24744
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24745
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 24746
    if-eqz p1, :cond_1a

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageUserState;->dialogInfo:Landroid/content/pm/SuspendDialogInfo;

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    monitor-exit v0

    return-object p1

    .line 24747
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public getSuspendedPackageLauncherExtras(Ljava/lang/String;I)Landroid/os/Bundle;
    .registers 5

    .line 24716
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24717
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 24718
    nop

    .line 24719
    const/4 v1, 0x0

    if-eqz p1, :cond_1c

    .line 24720
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageUserState;->suspendedLauncherExtras:Landroid/os/PersistableBundle;

    goto :goto_1d

    .line 24719
    :cond_1c
    move-object p1, v1

    .line 24722
    :goto_1d
    if-eqz p1, :cond_28

    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/PersistableBundle;->deepCopy()Landroid/os/PersistableBundle;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    :cond_28
    monitor-exit v0

    return-object v1

    .line 24723
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public getSuspendingPackage(Ljava/lang/String;I)Ljava/lang/String;
    .registers 5

    .line 24736
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24737
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 24738
    if-eqz p1, :cond_1a

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageUserState;->suspendingPackage:Ljava/lang/String;

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    monitor-exit v0

    return-object p1

    .line 24739
    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public getTargetPackageNames(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24969
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24970
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24971
    :try_start_a
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Package;

    .line 24972
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mOverlayTarget:Ljava/lang/String;

    if-nez v3, :cond_2b

    .line 24973
    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24975
    :cond_2b
    goto :goto_16

    .line 24976
    :cond_2c
    monitor-exit v0

    .line 24977
    return-object p1

    .line 24976
    :catchall_2e
    move-exception p1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_a .. :try_end_30} :catchall_2e

    throw p1
.end method

.method public getUidTargetSdkVersion(I)I
    .registers 4

    .line 25044
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25045
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$7800(Lcom/android/server/pm/PackageManagerService;I)I

    move-result p1

    monitor-exit v0

    return p1

    .line 25046
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V
    .registers 4

    .line 24662
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantDefaultPermissionsToDefaultUseOpenWifiApp(Ljava/lang/String;I)V

    .line 24664
    return-void
.end method

.method public grantEphemeralAccess(ILandroid/content/Intent;II)V
    .registers 7

    .line 24899
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24900
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/pm/InstantAppRegistry;->grantInstantAccessLPw(ILandroid/content/Intent;II)V

    .line 24902
    monitor-exit v0

    .line 24903
    return-void

    .line 24902
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 13

    .line 24869
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$6400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v1

    .line 24870
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 24871
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v7

    .line 24869
    move-object v2, p2

    move-object v3, p1

    move v4, p4

    move v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 24872
    return-void
.end method

.method public hasInstantApplicationMetadata(Ljava/lang/String;I)Z
    .registers 5

    .line 25072
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25073
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/InstantAppRegistry;->hasInstantApplicationMetadataLPr(Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 25074
    :catchall_11
    move-exception p1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public hasSignatureCapability(III)Z
    .registers 4
    .param p3  # I
        .annotation build Landroid/content/pm/PackageParser$SigningDetails$CertCapabilities;
        .end annotation
    .end param

    .line 24496
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p1

    .line 24497
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getSigningDetails(I)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p2

    .line 24498
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result p3

    if-nez p3, :cond_17

    .line 24499
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_17

    :cond_15
    const/4 p1, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p1, 0x1

    .line 24498
    :goto_18
    return p1
.end method

.method public isApexPackage(Ljava/lang/String;)Z
    .registers 3

    .line 25231
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$9000(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ApexManager;->isApexPackage(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isDataRestoreSafe(Landroid/content/pm/Signature;Ljava/lang/String;)Z
    .registers 4

    .line 24485
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p2

    .line 24486
    if-nez p2, :cond_8

    .line 24487
    const/4 p1, 0x0

    return p1

    .line 24489
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageParser$SigningDetails;->hasCertificate(Landroid/content/pm/Signature;I)Z

    move-result p1

    return p1
.end method

.method public isDataRestoreSafe([BLjava/lang/String;)Z
    .registers 4

    .line 24475
    invoke-direct {p0, p2}, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->getSigningDetails(Ljava/lang/String;)Landroid/content/pm/PackageParser$SigningDetails;

    move-result-object p2

    .line 24476
    if-nez p2, :cond_8

    .line 24477
    const/4 p1, 0x0

    return p1

    .line 24479
    :cond_8
    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageParser$SigningDetails;->hasSha256Certificate([BI)Z

    move-result p1

    return p1
.end method

.method public isEnabledAndMatches(Landroid/content/pm/ComponentInfo;II)Z
    .registers 6

    .line 24854
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24855
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/pm/Settings;->isEnabledAndMatchLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 24856
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public isInstantApp(Ljava/lang/String;I)Z
    .registers 4

    .line 24536
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->isInstantApp(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public isInstantAppInstallerComponent(Landroid/content/ComponentName;)Z
    .registers 4

    .line 24907
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24908
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    .line 24909
    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 p1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 p1, 0x0

    :goto_1c
    monitor-exit v0

    .line 24908
    return p1

    .line 24910
    :catchall_1e
    move-exception p1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw p1
.end method

.method public isLegacySystemApp(Landroid/content/pm/PackageParser$Package;)Z
    .registers 4

    .line 24943
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24944
    :try_start_5
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 24945
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v1, v1, Lcom/android/server/pm/PackageManagerService;->mPromoteSystemApps:Z

    if-eqz v1, :cond_25

    .line 24946
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 24947
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$7300(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v1

    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x1

    goto :goto_26

    :cond_25
    const/4 p1, 0x0

    :goto_26
    monitor-exit v0

    .line 24945
    return p1

    .line 24948
    :catchall_28
    move-exception p1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_5 .. :try_end_2a} :catchall_28

    throw p1
.end method

.method public isOnlyCoreApps()Z
    .registers 2

    .line 25121
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isOnlyCoreApps()Z

    move-result v0

    return v0
.end method

.method public isPackageDataProtected(ILjava/lang/String;)Z
    .registers 4

    .line 24829
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/ProtectedPackages;->isPackageDataProtected(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isPackageEphemeral(ILjava/lang/String;)Z
    .registers 5

    .line 24839
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24840
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    .line 24841
    if-eqz p2, :cond_18

    invoke-virtual {p2, p1}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result p1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    monitor-exit v0

    return p1

    .line 24842
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public isPackagePersistent(Ljava/lang/String;)Z
    .registers 5

    .line 24931
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24932
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    .line 24933
    const/4 v1, 0x0

    if-eqz p1, :cond_1d

    .line 24934
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v2, 0x9

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_1e

    const/4 v1, 0x1

    goto :goto_1e

    .line 24937
    :cond_1d
    nop

    :cond_1e
    :goto_1e
    monitor-exit v0

    .line 24933
    return v1

    .line 24938
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public isPackageStateProtected(Ljava/lang/String;I)Z
    .registers 4

    .line 24834
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/ProtectedPackages;->isPackageStateProtected(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isPackageSuspended(Ljava/lang/String;I)Z
    .registers 5

    .line 24728
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24729
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v1, v1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 24730
    if-eqz p1, :cond_18

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getSuspended(I)Z

    move-result p1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    monitor-exit v0

    return p1

    .line 24731
    :catchall_1b
    move-exception p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_1b

    throw p1
.end method

.method public isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .registers 5

    .line 24696
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24697
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageParser$Package;

    .line 24698
    if-nez p1, :cond_14

    .line 24699
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    .line 24702
    :cond_14
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$6400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 24703
    :catchall_20
    move-exception p1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_20

    throw p1
.end method

.method public isPlatformSigned(Ljava/lang/String;)Z
    .registers 5

    .line 24459
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v0, v0, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 24460
    const/4 v0, 0x0

    if-nez p1, :cond_10

    .line 24461
    return v0

    .line 24463
    :cond_10
    iget-object p1, p1, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    .line 24464
    if-nez p1, :cond_15

    .line 24466
    return v0

    .line 24468
    :cond_15
    iget-object v1, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageParser$SigningDetails;->hasAncestorOrSelf(Landroid/content/pm/PackageParser$SigningDetails;)Z

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPlatformPackage:Landroid/content/pm/PackageParser$Package;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    const/4 v2, 0x4

    .line 24469
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageParser$SigningDetails;->checkCapability(Landroid/content/pm/PackageParser$SigningDetails;I)Z

    move-result p1

    if-eqz p1, :cond_33

    :cond_32
    const/4 v0, 0x1

    .line 24468
    :cond_33
    return v0
.end method

.method public isResolveActivityComponent(Landroid/content/pm/ComponentInfo;)Z
    .registers 4

    .line 24631
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mResolveActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    .line 24632
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    .line 24631
    :goto_1f
    return p1
.end method

.method public migrateLegacyObbData()V
    .registers 3

    .line 25292
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    invoke-virtual {v0}, Lcom/android/server/pm/Installer;->migrateLegacyObbData()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 25295
    goto :goto_e

    .line 25293
    :catch_8
    move-exception v0

    .line 25294
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 25296
    :goto_e
    return-void
.end method

.method public notifyPackageUse(Ljava/lang/String;I)V
    .registers 5

    .line 25079
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25080
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$8200(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V

    .line 25081
    monitor-exit v0

    .line 25082
    return-void

    .line 25081
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public notifyingOnNextUserRemovalForTest()V
    .registers 2

    .line 25300
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$9100(Lcom/android/server/pm/PackageManagerService;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 25301
    return-void
.end method

.method public pruneInstantApps()V
    .registers 2

    .line 24915
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/InstantAppRegistry;->pruneInstantApps()V

    .line 24916
    return-void
.end method

.method public queryIntentActivities(Landroid/content/Intent;III)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 24781
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 24782
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 24783
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v2, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-static/range {v1 .. v8}, Lcom/android/server/pm/PackageManagerService;->access$6800(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIIZZ)Ljava/util/List;

    move-result-object p1

    .line 24782
    return-object p1
.end method

.method public queryIntentServices(Landroid/content/Intent;III)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "III)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 24790
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    .line 24791
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 24792
    const/4 v7, 0x0

    move-object v2, p1

    move v4, p2

    move v5, p4

    move v6, p3

    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService;->access$6900(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIIZ)Ljava/util/List;

    move-result-object p1

    .line 24791
    return-object p1
.end method

.method public removeIsolatedUid(I)V
    .registers 4

    .line 25037
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25038
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mIsolatedOwners:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 25039
    monitor-exit v0

    .line 25040
    return-void

    .line 25039
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public removeLegacyDefaultBrowserPackageName(I)Ljava/lang/String;
    .registers 4

    .line 25203
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25204
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/Settings;->removeDefaultBrowserPackageNameLPw(I)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 25205
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public removePackageListObserver(Landroid/content/pm/PackageManagerInternal$PackageListObserver;)V
    .registers 4

    .line 24579
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24580
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$6100(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 24581
    monitor-exit v0

    .line 24582
    return-void

    .line 24581
    :catchall_10
    move-exception p1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_10

    throw p1
.end method

.method public requestInstantAppResolutionPhaseTwo(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .registers 14

    .line 24891
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$7200(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 24894
    return-void
.end method

.method public resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .registers 5

    .line 25024
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$7700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;
    .registers 14

    .line 25012
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->access$7500(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;IIZI)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public resolveService(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .registers 12

    .line 25019
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->access$7600(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;IZ)V
    .registers 12

    .line 24877
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$6400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 24879
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v6

    .line 24877
    move-object v2, p2

    move-object v3, p1

    move v4, p4

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 24880
    return-void
.end method

.method public setCheckPermissionDelegate(Landroid/content/pm/PackageManagerInternal$CheckPermissionDelegate;)V
    .registers 4

    .line 25093
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25094
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->setCheckPermissionDelegateLocked(Landroid/content/pm/PackageManagerInternal$CheckPermissionDelegate;)V

    .line 25095
    monitor-exit v0

    .line 25096
    return-void

    .line 25095
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public setDefaultBrowserProvider(Landroid/content/pm/PackageManagerInternal$DefaultBrowserProvider;)V
    .registers 4

    .line 25210
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25211
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$8702(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageManagerInternal$DefaultBrowserProvider;)Landroid/content/pm/PackageManagerInternal$DefaultBrowserProvider;

    .line 25212
    monitor-exit v0

    .line 25213
    return-void

    .line 25212
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public setDefaultDialerProvider(Landroid/content/pm/PackageManagerInternal$DefaultDialerProvider;)V
    .registers 4

    .line 25217
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25218
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$8802(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageManagerInternal$DefaultDialerProvider;)Landroid/content/pm/PackageManagerInternal$DefaultDialerProvider;

    .line 25219
    monitor-exit v0

    .line 25220
    return-void

    .line 25219
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public setDefaultHomeProvider(Landroid/content/pm/PackageManagerInternal$DefaultHomeProvider;)V
    .registers 4

    .line 25224
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25225
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$8902(Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/PackageManagerInternal$DefaultHomeProvider;)Landroid/content/pm/PackageManagerInternal$DefaultHomeProvider;

    .line 25226
    monitor-exit v0

    .line 25227
    return-void

    .line 25226
    :catchall_c
    move-exception p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24811
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/pm/ProtectedPackages;->setDeviceAndProfileOwnerPackages(ILjava/lang/String;Landroid/util/SparseArray;)V

    .line 24814
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 24815
    if-eqz p2, :cond_15

    .line 24816
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 24818
    :cond_15
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 24819
    const/4 p2, 0x0

    :goto_1a
    if-ge p2, p1, :cond_30

    .line 24820
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 24821
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 24819
    :cond_2d
    add-int/lit8 p2, p2, 0x1

    goto :goto_1a

    .line 24824
    :cond_30
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageManagerService;->unsuspendForNonSystemSuspendingPackages(Landroid/util/ArraySet;)V

    .line 24825
    return-void
.end method

.method public setEnableRollbackCode(II)V
    .registers 4

    .line 25177
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/PackageManagerService;->access$8600(Lcom/android/server/pm/PackageManagerService;II)V

    .line 25178
    return-void
.end method

.method public setEnabledOverlayPackages(ILjava/lang/String;Ljava/util/List;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 24983
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24984
    const/4 v1, 0x0

    if-eqz p2, :cond_6d

    :try_start_8
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_6d

    .line 24988
    :cond_13
    const/4 v2, 0x0

    .line 24989
    if-eqz p3, :cond_5b

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5b

    .line 24990
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    .line 24991
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 24992
    move v4, v1

    :goto_26
    if-ge v4, v2, :cond_5a

    .line 24993
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 24994
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageParser$Package;

    .line 24995
    if-nez v6, :cond_52

    .line 24996
    const-string p1, "PackageManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "failed to find package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24997
    monitor-exit v0

    return v1

    .line 24999
    :cond_52
    iget-object v5, v6, Landroid/content/pm/PackageParser$Package;->baseCodePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24992
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    :cond_5a
    move-object v2, v3

    .line 25003
    :cond_5b
    iget-object p3, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p3, p3, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    .line 25004
    invoke-virtual {p2, v2, p1}, Lcom/android/server/pm/PackageSetting;->setOverlayPaths(Ljava/util/List;I)V

    .line 25005
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 24985
    :cond_6d
    :goto_6d
    const-string p1, "PackageManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to find package "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24986
    monitor-exit v0

    return v1

    .line 25006
    :catchall_85
    move-exception p1

    monitor-exit v0
    :try_end_87
    .catchall {:try_start_8 .. :try_end_87} :catchall_85

    throw p1
.end method

.method public setExternalSourcesPolicy(Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;)V
    .registers 3

    .line 24924
    if-eqz p1, :cond_6

    .line 24925
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p1, v0, Lcom/android/server/pm/PackageManagerService;->mExternalSourcesPolicy:Landroid/content/pm/PackageManagerInternal$ExternalSourcesPolicy;

    .line 24927
    :cond_6
    return-void
.end method

.method public setKeepUninstalledPackages(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24668
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24669
    nop

    .line 24670
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24671
    :try_start_9
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$6200(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_44

    .line 24672
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->access$6200(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 24673
    move-object v4, v3

    move v3, v2

    :goto_1f
    if-ge v3, v1, :cond_43

    .line 24674
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService;->access$6200(Lcom/android/server/pm/PackageManagerService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 24675
    if-eqz p1, :cond_36

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_36

    .line 24676
    goto :goto_40

    .line 24678
    :cond_36
    if-nez v4, :cond_3d

    .line 24679
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 24681
    :cond_3d
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24673
    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_43
    move-object v3, v4

    .line 24684
    :cond_44
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerService;->access$6202(Lcom/android/server/pm/PackageManagerService;Ljava/util/List;)Ljava/util/List;

    .line 24685
    if-eqz v3, :cond_65

    .line 24686
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    .line 24687
    nop

    :goto_55
    if-ge v2, p1, :cond_65

    .line 24688
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerService;->access$6300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 24687
    add-int/lit8 v2, v2, 0x1

    goto :goto_55

    .line 24691
    :cond_65
    monitor-exit v0

    .line 24692
    return-void

    .line 24691
    :catchall_67
    move-exception p1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_9 .. :try_end_69} :catchall_67

    throw p1
.end method

.method public setLocationExtraPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 3

    .line 24642
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setLocationExtraPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 24643
    return-void
.end method

.method public setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 3

    .line 24637
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setLocationPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 24638
    return-void
.end method

.method public setRuntimePermissionsFingerPrint(Ljava/lang/String;I)V
    .registers 5

    .line 25284
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25285
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Settings;->setRuntimePermissionsFingerPrintLPr(Ljava/lang/String;I)V

    .line 25286
    monitor-exit v0

    .line 25287
    return-void

    .line 25286
    :catchall_e
    move-exception p1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw p1
.end method

.method public setSyncAdapterPackagesprovider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V
    .registers 3

    .line 24657
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setSyncAdapterPackagesProvider(Landroid/content/pm/PackageManagerInternal$SyncAdapterPackagesProvider;)V

    .line 24658
    return-void
.end method

.method public setUseOpenWifiAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 3

    .line 24652
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setUseOpenWifiAppPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 24653
    return-void
.end method

.method public setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V
    .registers 3

    .line 24647
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->setVoiceInteractionPackagesProvider(Landroid/content/pm/PackageManagerInternal$PackagesProvider;)V

    .line 24648
    return-void
.end method

.method public uninstallApex(Ljava/lang/String;JILandroid/content/IntentSender;)V
    .registers 13

    .line 25237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 25238
    if-eqz v0, :cond_13

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_b

    goto :goto_13

    .line 25239
    :cond_b
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Not allowed to uninstall apexes"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25241
    :cond_13
    :goto_13
    new-instance v6, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v2, p5

    move-object v3, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;-><init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V

    .line 25245
    const/4 p5, -0x1

    const/4 v0, -0x5

    if-eq p4, p5, :cond_2b

    .line 25246
    const-string p2, "Can\'t uninstall an apex for a single user"

    invoke-virtual {v6, p1, v0, p2}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 25248
    return-void

    .line 25250
    :cond_2b
    iget-object p4, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {p4}, Lcom/android/server/pm/PackageManagerService;->access$9000(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/ApexManager;

    move-result-object p4

    .line 25251
    const/4 p5, 0x1

    invoke-virtual {p4, p1, p5}, Lcom/android/server/pm/ApexManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 25253
    if-nez v1, :cond_4d

    .line 25254
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " is not an apex package"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, v0, p2}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 25256
    return-void

    .line 25258
    :cond_4d
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_81

    .line 25259
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_81

    .line 25260
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Active version "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25261
    invoke-virtual {v1}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {p4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, " is not equal to "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 25260
    invoke-virtual {v6, p1, v0, p2}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 25263
    return-void

    .line 25265
    :cond_81
    iget-object p2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p4, p2}, Lcom/android/server/pm/ApexManager;->uninstallApex(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a0

    .line 25266
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to uninstall apex "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p1, v0, p2}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_a4

    .line 25269
    :cond_a0
    const/4 p2, 0x0

    invoke-virtual {v6, p1, p5, p2}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V

    .line 25272
    :goto_a4
    return-void
.end method

.method public updatePermissionFlagsTEMP(Ljava/lang/String;Ljava/lang/String;III)V
    .registers 13

    .line 24445
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/PackageManagerService;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIZI)V

    .line 24447
    return-void
.end method

.method public userNeedsBadging(I)Z
    .registers 4

    .line 24861
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24862
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v1, p1}, Lcom/android/server/pm/PackageManagerService;->access$7100(Lcom/android/server/pm/PackageManagerService;I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 24863
    :catchall_d
    move-exception p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_d

    throw p1
.end method

.method public userRemovedForTest()V
    .registers 2

    .line 25305
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$9100(Lcom/android/server/pm/PackageManagerService;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 25306
    return-void
.end method

.method public wasPackageEverLaunched(Ljava/lang/String;I)Z
    .registers 5

    .line 24847
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 24848
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/pm/Settings;->wasPackageEverLaunchedLPr(Ljava/lang/String;I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 24849
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method

.method public wereDefaultPermissionsGrantedSinceBoot(I)Z
    .registers 4

    .line 25276
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 25277
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mDefaultPermissionPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->wereDefaultPermissionsGrantedSinceBoot(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 25278
    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_f

    throw p1
.end method
