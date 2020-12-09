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

    .line 1767
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onGidsChanged$0$PackageManagerService$1(II)V
    .registers 5

    .line 1770
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "permission grant or revoke changed gids"

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V

    return-void
.end method

.method public onGidsChanged(II)V
    .registers 5

    .line 1770
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v1, Lcom/android/server/pm/-$$Lambda$PackageManagerService$1$7o99DenVu604GN9uaO7x0s_Ispw;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$1$7o99DenVu604GN9uaO7x0s_Ispw;-><init>(Lcom/android/server/pm/PackageManagerService$1;II)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    .line 1771
    return-void
.end method

.method public onInstallPermissionGranted()V
    .registers 3

    .line 1783
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1784
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1785
    monitor-exit v0

    .line 1786
    return-void

    .line 1785
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onInstallPermissionRevoked()V
    .registers 3

    .line 1801
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1802
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1803
    monitor-exit v0

    .line 1804
    return-void

    .line 1803
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onInstallPermissionUpdated()V
    .registers 3

    .line 1815
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1816
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->scheduleWriteSettingsLocked()V

    .line 1817
    monitor-exit v0

    .line 1818
    return-void

    .line 1817
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method

.method public onPermissionGranted(II)V
    .registers 5

    .line 1774
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1777
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 1778
    :try_start_e
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 1779
    monitor-exit p1

    .line 1780
    return-void

    .line 1779
    :catchall_18
    move-exception p2

    monitor-exit p1
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_18

    throw p2
.end method

.method public onPermissionRemoved()V
    .registers 3

    .line 1821
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1822
    :try_start_5
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1823
    monitor-exit v0

    .line 1824
    return-void

    .line 1823
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public onPermissionRevoked(II)V
    .registers 6

    .line 1789
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService$OnPermissionChangeListeners;->onPermissionsChanged(I)V

    .line 1791
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1793
    :try_start_e
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 1794
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_24

    .line 1796
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    .line 1797
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    const-string/jumbo v1, "permissions revoked"

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;IILjava/lang/String;)V

    .line 1798
    return-void

    .line 1794
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public onPermissionUpdated([IZ)V
    .registers 8

    .line 1807
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1808
    :try_start_5
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_15

    aget v3, p1, v2

    .line 1809
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$1;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v4, v3, p2}, Lcom/android/server/pm/Settings;->writeRuntimePermissionsForUserLPr(IZ)V

    .line 1808
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1811
    :cond_15
    monitor-exit v0

    .line 1812
    return-void

    .line 1811
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw p1
.end method
