.class Lcom/android/server/pm/PackageManagerService$4;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$filterApp:Z

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/lang/String;ILandroid/content/pm/IPackageDataObserver;)V
    .registers 6
    .param p1, "this$0"  # Lcom/android/server/pm/PackageManagerService;

    .line 20667
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$4;->val$filterApp:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$4;->val$userId:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$4;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 20669
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20671
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$4;->val$filterApp:Z

    if-nez v0, :cond_78

    .line 20672
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$4;->val$packageName:Ljava/lang/String;

    const-string v2, "clearApplicationUserData"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    move-result-object v0

    .line 20674
    .local v0, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :try_start_15
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_6a

    .line 20675
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$4;->val$userId:I

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->access$4900(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v2

    .line 20676
    .local v2, "succeeded":Z
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_67

    .line 20677
    :try_start_25
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_6a

    .line 20678
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$5000(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$4;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$4;->val$userId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/InstantAppRegistry;->deleteInstantApplicationMetadataLPw(Ljava/lang/String;I)V

    .line 20680
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_64

    .line 20681
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    .line 20682
    .end local v0  # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :cond_3d
    if-eqz v2, :cond_79

    .line 20684
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 20685
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 20686
    .local v0, "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    if-eqz v0, :cond_4c

    .line 20687
    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    .line 20689
    :cond_4c
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$4;->val$userId:I

    const-string v5, "android.permission.SUSPEND_APPS"

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_63

    .line 20691
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$4;->val$userId:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Ljava/lang/String;I)V

    .line 20693
    .end local v0  # "dsm":Lcom/android/server/storage/DeviceStorageMonitorInternal;
    :cond_63
    goto :goto_79

    .line 20680
    .local v0, "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :catchall_64
    move-exception v3

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    .end local v0  # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local p0  # "this":Lcom/android/server/pm/PackageManagerService$4;
    :try_start_66
    throw v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_6a

    .line 20676
    .end local v2  # "succeeded":Z
    .restart local v0  # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local p0  # "this":Lcom/android/server/pm/PackageManagerService$4;
    :catchall_67
    move-exception v2

    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    .end local v0  # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local p0  # "this":Lcom/android/server/pm/PackageManagerService$4;
    :try_start_69
    throw v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 20672
    .restart local v0  # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local p0  # "this":Lcom/android/server/pm/PackageManagerService$4;
    :catchall_6a
    move-exception v1

    .end local v0  # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .end local p0  # "this":Lcom/android/server/pm/PackageManagerService$4;
    :try_start_6b
    throw v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    .line 20681
    .restart local v0  # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    .restart local p0  # "this":Lcom/android/server/pm/PackageManagerService$4;
    :catchall_6c
    move-exception v2

    if-eqz v0, :cond_77

    :try_start_6f
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    :catchall_73
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_77
    :goto_77
    throw v2

    .line 20695
    .end local v0  # "freezer":Lcom/android/server/pm/PackageManagerService$PackageFreezer;
    :cond_78
    const/4 v2, 0x0

    .line 20697
    .restart local v2  # "succeeded":Z
    :cond_79
    :goto_79
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$4;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v0, :cond_8b

    .line 20699
    :try_start_7d
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$4;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_82} :catch_83

    .line 20702
    goto :goto_8b

    .line 20700
    :catch_83
    move-exception v0

    .line 20701
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "PackageManager"

    const-string v3, "Observer no longer exists."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20704
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_8b
    :goto_8b
    return-void
.end method
