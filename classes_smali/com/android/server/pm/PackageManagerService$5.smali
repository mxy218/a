.class Lcom/android/server/pm/PackageManagerService$5;
.super Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->resetUserChangesToRuntimePermissionsAndFlagsLPw(Lcom/android/server/pm/PackageSetting;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$permissionRemoved:[Z

.field final synthetic val$revokedPermissions:Landroid/util/ArraySet;

.field final synthetic val$updatedUsers:Landroid/util/SparseBooleanArray;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/util/ArraySet;Landroid/util/SparseBooleanArray;[Z)V
    .registers 5

    .line 20023
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$5;->val$revokedPermissions:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$5;->val$updatedUsers:Landroid/util/SparseBooleanArray;

    iput-object p4, p0, Lcom/android/server/pm/PackageManagerService$5;->val$permissionRemoved:[Z

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .registers 4

    .line 20025
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onGidsChanged(II)V

    .line 20026
    return-void
.end method

.method public onInstallPermissionGranted()V
    .registers 2

    .line 20037
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionGranted()V

    .line 20038
    return-void
.end method

.method public onInstallPermissionRevoked()V
    .registers 2

    .line 20047
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionRevoked()V

    .line 20048
    return-void
.end method

.method public onInstallPermissionUpdated()V
    .registers 2

    .line 20068
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionUpdated()V

    .line 20069
    return-void
.end method

.method public onPermissionChanged()V
    .registers 2

    .line 20029
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionChanged()V

    .line 20030
    return-void
.end method

.method public onPermissionGranted(II)V
    .registers 4

    .line 20033
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionGranted(II)V

    .line 20034
    return-void
.end method

.method public onPermissionRemoved()V
    .registers 4

    .line 20064
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->val$permissionRemoved:[Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 20065
    return-void
.end method

.method public onPermissionRevoked(II)V
    .registers 6

    .line 20041
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$5;->val$revokedPermissions:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Lcom/android/internal/util/IntPair;->of(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 20043
    iget-object p1, p0, Lcom/android/server/pm/PackageManagerService$5;->val$updatedUsers:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 20044
    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .registers 9

    .line 20051
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_20

    aget v3, p1, v2

    .line 20052
    if-eqz p2, :cond_10

    .line 20053
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$5;->val$updatedUsers:Landroid/util/SparseBooleanArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1d

    .line 20056
    :cond_10
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$5;->val$updatedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 20057
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$5;->val$updatedUsers:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 20051
    :cond_1d
    :goto_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 20061
    :cond_20
    return-void
.end method
