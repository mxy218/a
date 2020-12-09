.class Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PackageRemovedInfo"
.end annotation


# instance fields
.field appearedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;",
            ">;"
        }
    .end annotation
.end field

.field args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

.field broadcastUsers:[I

.field dataRemoved:Z

.field installReasons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field installerPackageName:Ljava/lang/String;

.field instantUserIds:[I

.field isRemovedPackageSystemUpdate:Z

.field isStaticSharedLib:Z

.field isUpdate:Z

.field origUsers:[I

.field final packageSender:Lcom/android/server/pm/PackageSender;

.field removedAppId:I

.field removedChildPackages:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;",
            ">;"
        }
    .end annotation
.end field

.field removedForAllUsers:Z

.field removedPackage:Ljava/lang/String;

.field removedUsers:[I

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageSender;)V
    .registers 4

    .line 18903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18886
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    .line 18887
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    .line 18889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    .line 18890
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    .line 18891
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    .line 18893
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    .line 18899
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 18904
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    .line 18905
    return-void
.end method

.method private sendPackageRemovedBroadcastInternal(Z)V
    .registers 14

    .line 18965
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isStaticSharedLib:Z

    if-eqz v0, :cond_5

    .line 18966
    return-void

    .line 18968
    :cond_5
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 18969
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v1, :cond_10

    goto :goto_12

    :cond_10
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    :goto_12
    move v10, v1

    .line 18970
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {v0, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18971
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    const-string v2, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18972
    const/4 v1, 0x1

    xor-int/2addr p1, v1

    const-string v2, "android.intent.extra.DONT_KILL_APP"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18973
    iget-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isUpdate:Z

    const-string v11, "android.intent.extra.REPLACING"

    if-nez p1, :cond_30

    iget-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz p1, :cond_33

    .line 18974
    :cond_30
    invoke-virtual {v0, v11, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18976
    :cond_33
    iget-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedForAllUsers:Z

    const-string v1, "android.intent.extra.REMOVED_FOR_ALL_USERS"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18977
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    if-eqz v3, :cond_82

    .line 18978
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    move-object v4, v0

    invoke-interface/range {v1 .. v9}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 18981
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    if-eqz v6, :cond_61

    .line 18982
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    move-object v4, v0

    invoke-interface/range {v1 .. v9}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 18986
    :cond_61
    iget-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->dataRemoved:Z

    if-eqz p1, :cond_82

    iget-boolean p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-nez p1, :cond_82

    .line 18987
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/high16 v5, 0x1000000

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    move-object v4, v0

    invoke-interface/range {v1 .. v9}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 18991
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    invoke-interface {p1, v1, v10}, Lcom/android/server/pm/PackageSender;->notifyPackageRemoved(Ljava/lang/String;I)V

    .line 18994
    :cond_82
    iget p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz p1, :cond_a5

    .line 18997
    const/4 p1, 0x0

    invoke-virtual {v0, v11, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_94

    .line 18998
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19001
    :cond_94
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const/4 v3, 0x0

    const/high16 v5, 0x1000000

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    iget-object v9, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    const-string v2, "android.intent.action.UID_REMOVED"

    move-object v4, v0

    invoke-interface/range {v1 .. v9}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 19005
    :cond_a5
    return-void
.end method

.method private sendSystemPackageUpdatedBroadcastsInternal()V
    .registers 21

    .line 18942
    move-object/from16 v0, p0

    new-instance v10, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v10, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 18943
    iget v1, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedAppId:I

    if-ltz v1, :cond_d

    goto :goto_f

    :cond_d
    iget v1, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->uid:I

    :goto_f
    const-string v2, "android.intent.extra.UID"

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 18944
    const/4 v1, 0x1

    const-string v2, "android.intent.extra.REPLACING"

    invoke-virtual {v10, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18945
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    move-object v4, v10

    invoke-interface/range {v1 .. v9}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 18947
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const-string v2, "android.intent.action.PACKAGE_REPLACED"

    invoke-interface/range {v1 .. v9}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 18949
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v12, "android.intent.action.MY_PACKAGE_REPLACED"

    move-object/from16 v16, v1

    invoke-interface/range {v11 .. v19}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 18951
    iget-object v6, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    if-eqz v6, :cond_68

    .line 18952
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    move-object v4, v10

    invoke-interface/range {v1 .. v9}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 18955
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedPackage:Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->installerPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    move-object v0, v1

    move-object v1, v3

    move-object v3, v10

    invoke-interface/range {v0 .. v8}, Lcom/android/server/pm/PackageSender;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[I)V

    .line 18959
    :cond_68
    return-void
.end method


# virtual methods
.method populateUsers([ILcom/android/server/pm/PackageSetting;)V
    .registers 6

    .line 19008
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    .line 19009
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedUsers:[I

    if-nez v0, :cond_a

    .line 19010
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    .line 19011
    return-void

    .line 19014
    :cond_a
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$4200()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    .line 19015
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$4200()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    .line 19016
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_19
    if-ltz v0, :cond_37

    .line 19017
    aget v1, p1, v0

    .line 19018
    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageSetting;->getInstantApp(I)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 19019
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->instantUserIds:[I

    goto :goto_34

    .line 19021
    :cond_2c
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    invoke-static {v2, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->broadcastUsers:[I

    .line 19016
    :goto_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_19

    .line 19024
    :cond_37
    return-void
.end method

.method sendPackageRemovedBroadcasts(Z)V
    .registers 5

    .line 18908
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    .line 18909
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_e

    :cond_d
    move v0, v1

    .line 18910
    :goto_e
    nop

    :goto_f
    if-ge v1, v0, :cond_1f

    .line 18911
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 18912
    invoke-direct {v2, p1}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendPackageRemovedBroadcastInternal(Z)V

    .line 18910
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 18914
    :cond_1f
    return-void
.end method

.method sendSystemPackageAppearedBroadcasts()V
    .registers 11

    .line 18931
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 18932
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    .line 18933
    :goto_b
    nop

    :goto_c
    if-ge v1, v0, :cond_2b

    .line 18934
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->appearedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 18935
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->packageSender:Lcom/android/server/pm/PackageSender;

    iget-object v4, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->name:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget v7, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->uid:I

    .line 18937
    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    iget-object v8, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->newUsers:[I

    const/4 v9, 0x0

    .line 18935
    invoke-interface/range {v3 .. v9}, Lcom/android/server/pm/PackageSender;->sendPackageAddedForNewUsers(Ljava/lang/String;ZZI[I[I)V

    .line 18933
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 18939
    :cond_2b
    return-void
.end method

.method sendSystemPackageUpdatedBroadcasts()V
    .registers 5

    .line 18917
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v0, :cond_27

    .line 18918
    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    .line 18919
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 18920
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_12

    :cond_11
    move v0, v1

    .line 18921
    :goto_12
    nop

    :goto_13
    if-ge v1, v0, :cond_27

    .line 18922
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->removedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;

    .line 18923
    iget-boolean v3, v2, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->isRemovedPackageSystemUpdate:Z

    if-eqz v3, :cond_24

    .line 18924
    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerService$PackageRemovedInfo;->sendSystemPackageUpdatedBroadcastsInternal()V

    .line 18921
    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 18928
    :cond_27
    return-void
.end method
