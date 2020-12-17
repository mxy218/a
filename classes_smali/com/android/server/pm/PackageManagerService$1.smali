.class Lcom/android/server/pm/PackageManagerService$1;
.super Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/pm/PackageManagerService;

    .line 1866
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onGidsChanged$0$PackageManagerService$1(II)V
    .registers 5
    .param p1, "appId"  # I
    .param p2, "userId"  # I

    .line 1869
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "permission grant or revoke changed gids"

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onPermissionRevoked$1$PackageManagerService$1(II)V
    .registers 5
    .param p1, "appId"  # I
    .param p2, "userId"  # I

    .line 1899
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "permissions revoked"

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/pm/PackageManagerService;->access$1500(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V

    return-void
.end method

.method public onGidsChanged(II)V
    .registers 5
    .param p1, "appId"  # I
    .param p2, "userId"  # I

    .line 1869
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$PackageManagerService$1$7o99DenVu604GN9uaO7x0s_Ispw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$1$7o99DenVu604GN9uaO7x0s_Ispw;-><init>(Lcom/android/server/pm/PackageManagerService$1;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1870
    return-void
.end method

.method public onInstallPermissionGranted()V
    .registers 3

    .line 1882
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1883
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1884
    monitor-exit v0

    .line 1885
    return-void

    .line 1884
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onInstallPermissionRevoked()V
    .registers 3

    .line 1904
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1905
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1906
    monitor-exit v0

    .line 1907
    return-void

    .line 1906
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onInstallPermissionUpdated()V
    .registers 3

    .line 1918
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1919
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1920
    monitor-exit v0

    .line 1921
    return-void

    .line 1920
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onPermissionGranted(II)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "userId"  # I

    .line 1873
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1876
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1877
    :try_start_e
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 1878
    monitor-exit v0

    .line 1879
    return-void

    .line 1878
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw v1
.end method

.method public onPermissionRemoved()V
    .registers 3

    .line 1924
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1925
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1926
    monitor-exit v0

    .line 1927
    return-void

    .line 1926
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onPermissionRevoked(II)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "userId"  # I

    .line 1888
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1400(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1890
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1892
    :try_start_e
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 1893
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_28

    .line 1895
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1899
    .local v0, "appId":I
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v2, Lcom/android/server/pm/-$$Lambda$PackageManagerService$1$UqkVA9qTDjOrKboRoZUSVel9Qek;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$1$UqkVA9qTDjOrKboRoZUSVel9Qek;-><init>(Lcom/android/server/pm/PackageManagerService$1;II)V

    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1901
    return-void

    .line 1893
    .end local v0  # "appId":I
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public onPermissionUpdated([IZ)V
    .registers 8
    .param p1, "updatedUserIds"  # [I
    .param p2, "sync"  # Z

    .line 1910
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1911
    :try_start_5
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget v3, p1, v2

    .line 1912
    .local v3, "userId":I
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 1911
    .end local v3  # "userId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1914
    :cond_15
    monitor-exit v0

    .line 1915
    return-void

    .line 1914
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v1
.end method
