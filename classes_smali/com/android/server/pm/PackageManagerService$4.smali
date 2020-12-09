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

    .line 19887
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

    .line 19889
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v0, p0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 19891
    iget-boolean v0, p0, Lcom/android/server/pm/PackageManagerService$4;->val$filterApp:Z

    if-nez v0, :cond_78

    .line 19892
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$4;->val$packageName:Ljava/lang/String;

    const-string v2, "clearApplicationUserData"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->freezePackage(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$PackageFreezer;

    move-result-object v0

    .line 19894
    :try_start_15
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_6a

    .line 19895
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$packageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/pm/PackageManagerService$4;->val$userId:I

    invoke-static {v2, v3, v4}, Lcom/android/server/pm/PackageManagerService;->access$4500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)Z

    move-result v2

    .line 19896
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_67

    .line 19897
    :try_start_25
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_6a

    .line 19898
    :try_start_2a
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$4600(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/InstantAppRegistry;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$4;->val$packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/PackageManagerService$4;->val$userId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/InstantAppRegistry;->deleteInstantApplicationMetadataLPw(Ljava/lang/String;I)V

    .line 19900
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_2a .. :try_end_38} :catchall_64

    .line 19901
    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V

    .line 19902
    :cond_3d
    if-eqz v2, :cond_79

    .line 19904
    const-class v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 19905
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    .line 19906
    if-eqz v0, :cond_4c

    .line 19907
    invoke-interface {v0}, Lcom/android/server/storage/DeviceStorageMonitorInternal;->checkMemory()V

    .line 19909
    :cond_4c
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$4;->val$packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$userId:I

    const-string v4, "android.permission.SUSPEND_APPS"

    invoke-virtual {v0, v4, v1, v3}, Lcom/android/server/pm/PackageManagerService;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_63

    .line 19911
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$4;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$4;->val$packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/pm/PackageManagerService$4;->val$userId:I

    invoke-virtual {v0, v1, v3}, Lcom/android/server/pm/PackageManagerService;->unsuspendForSuspendingPackage(Ljava/lang/String;I)V

    .line 19913
    :cond_63
    goto :goto_79

    .line 19900
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    :try_start_66
    throw v2
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_6a

    .line 19896
    :catchall_67
    move-exception v2

    :try_start_68
    monitor-exit v1
    :try_end_69
    .catchall {:try_start_68 .. :try_end_69} :catchall_67

    :try_start_69
    throw v2
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_6a

    .line 19892
    :catchall_6a
    move-exception v1

    :try_start_6b
    throw v1
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6c

    .line 19901
    :catchall_6c
    move-exception v2

    if-eqz v0, :cond_77

    :try_start_6f
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PackageFreezer;->close()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_73

    goto :goto_77

    :catchall_73
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_77
    :goto_77
    throw v2

    .line 19915
    :cond_78
    const/4 v2, 0x0

    .line 19917
    :cond_79
    :goto_79
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$4;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v0, :cond_8b

    .line 19919
    :try_start_7d
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$4;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_82
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_82} :catch_83

    .line 19922
    goto :goto_8b

    .line 19920
    :catch_83
    move-exception v0

    .line 19921
    const-string v0, "PackageManager"

    const-string v1, "Observer no longer exists."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19924
    :cond_8b
    :goto_8b
    return-void
.end method
