.class Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
.super Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermissionManagerServiceInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 2

    .line 3070
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/pm/permission/PermissionManagerService;
    .param p2, "x1"  # Lcom/android/server/pm/permission/PermissionManagerService$1;

    .line 3070
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    return-void
.end method


# virtual methods
.method public addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 4
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"  # Z

    .line 3094
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V

    .line 3095
    return-void
.end method

.method public addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 4
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"  # Z

    .line 3090
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V

    .line 3091
    return-void
.end method

.method public addDynamicPermission(Landroid/content/pm/PermissionInfo;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .registers 6
    .param p1, "info"  # Landroid/content/pm/PermissionInfo;
    .param p2, "async"  # Z
    .param p3, "callingUid"  # I
    .param p4, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 3103
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$700(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method public addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 3289
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    .line 3291
    return-void
.end method

.method public backupRuntimePermissions(Landroid/os/UserHandle;)[B
    .registers 3
    .param p1, "user"  # Landroid/os/UserHandle;

    .line 3272
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)[B

    move-result-object v0

    return-object v0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "callingUid"  # I
    .param p4, "userId"  # I

    .line 3205
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .registers 6
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p3, "uid"  # I
    .param p4, "callingUid"  # I

    .line 3211
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I

    move-result v0

    return v0
.end method

.method public enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .registers 13
    .param p1, "callingUid"  # I
    .param p2, "userId"  # I
    .param p3, "requireFullPermission"  # Z
    .param p4, "checkShell"  # Z
    .param p5, "message"  # Ljava/lang/String;

    .line 3188
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V

    .line 3190
    return-void
.end method

.method public enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .registers 14
    .param p1, "callingUid"  # I
    .param p2, "userId"  # I
    .param p3, "requireFullPermission"  # Z
    .param p4, "checkShell"  # Z
    .param p5, "requirePermissionWhenSameUser"  # Z
    .param p6, "message"  # Ljava/lang/String;

    .line 3195
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V

    .line 3197
    return-void
.end method

.method public enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"  # Ljava/lang/String;

    .line 3200
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V

    .line 3201
    return-void
.end method

.method public getAllPermissionGroups(II)Ljava/util/List;
    .registers 4
    .param p1, "flags"  # I
    .param p2, "callingUid"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 3221
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2600(Lcom/android/server/pm/permission/PermissionManagerService;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllPermissionWithProtectionLevel(I)Ljava/util/ArrayList;
    .registers 8
    .param p1, "protectionLevel"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 3252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3254
    .local v0, "matchingPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3100(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3255
    :try_start_c
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3257
    .local v2, "numTotalPermissions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    if-ge v3, v2, :cond_41

    .line 3258
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 3260
    .local v4, "bp":Lcom/android/server/pm/permission/BasePermission;
    iget-object v5, v4, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v5, :cond_3e

    iget-object v5, v4, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v5, :cond_3e

    iget v5, v4, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    if-ne v5, p1, :cond_3e

    .line 3262
    iget-object v5, v4, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3257
    .end local v4  # "bp":Lcom/android/server/pm/permission/BasePermission;
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 3265
    .end local v2  # "numTotalPermissions":I
    .end local v3  # "i":I
    :cond_41
    monitor-exit v1

    .line 3267
    return-object v0

    .line 3265
    :catchall_43
    move-exception v2

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_c .. :try_end_45} :catchall_43

    throw v2
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "permName"  # Ljava/lang/String;

    .line 3163
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPermissionGrantPolicy()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .registers 2

    .line 3240
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3000(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "callingUid"  # I
    .param p4, "userId"  # I

    .line 3168
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .registers 5
    .param p1, "groupName"  # Ljava/lang/String;
    .param p2, "flags"  # I
    .param p3, "callingUid"  # I

    .line 3216
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .registers 6
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p4, "callingUid"  # I

    .line 3226
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;
    .registers 5
    .param p1, "group"  # Ljava/lang/String;
    .param p2, "flags"  # I
    .param p3, "callingUid"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 3232
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionSettings()Lcom/android/server/pm/permission/PermissionSettings;
    .registers 2

    .line 3236
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .registers 4
    .param p1, "permName"  # Ljava/lang/String;

    .line 3244
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3100(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3245
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 3246
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;
    .registers 5
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "whitelistFlags"  # I
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3126
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 12
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "userIds"  # [I
    .param p3, "grantedPermissions"  # [Ljava/lang/String;
    .param p4, "callingUid"  # I
    .param p5, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 3120
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3122
    return-void
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 14
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "overridePolicy"  # Z
    .param p4, "callingUid"  # I
    .param p5, "userId"  # I
    .param p6, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 3114
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3116
    return-void
.end method

.method public grantRuntimePermissionsGrantedToDisabledPackage(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 5
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "callingUid"  # I
    .param p3, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 3140
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3142
    return-void
.end method

.method public isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z
    .registers 4
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "userId"  # I

    .line 3077
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;I)Z

    move-result v0

    return v0
.end method

.method public removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 4
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "chatty"  # Z

    .line 3098
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V

    .line 3099
    return-void
.end method

.method public removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 5
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "callingUid"  # I
    .param p3, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 3108
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3109
    return-void
.end method

.method public removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;

    .line 3296
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    .line 3298
    return-void
.end method

.method public restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "user"  # Landroid/os/UserHandle;

    .line 3283
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 3284
    return-void
.end method

.method public restoreRuntimePermissions([BLandroid/os/UserHandle;)V
    .registers 4
    .param p1, "backup"  # [B
    .param p2, "user"  # Landroid/os/UserHandle;

    .line 3277
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;[BLandroid/os/UserHandle;)V

    .line 3278
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 12
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "overridePolicy"  # Z
    .param p4, "userId"  # I
    .param p5, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 3146
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3148
    return-void
.end method

.method public revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 6
    .param p1, "newPackage"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "oldPackage"  # Landroid/content/pm/PackageParser$Package;
    .param p4, "permissionCallback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "Landroid/content/pm/PackageParser$Package;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 3085
    .local p3, "allPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3087
    return-void
.end method

.method public setWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 14
    .param p1, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p2, "userIds"  # [I
    .param p4, "callingUid"  # I
    .param p5, "whitelistFlags"  # I
    .param p6, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Package;",
            "[I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 3134
    .local p3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3136
    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 3073
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)V

    .line 3074
    return-void
.end method

.method public updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 6
    .param p1, "volumeUuid"  # Ljava/lang/String;
    .param p2, "sdkUpdated"  # Z
    .param p4, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 3158
    .local p3, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3160
    return-void
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 19
    .param p1, "permName"  # Ljava/lang/String;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "flagMask"  # I
    .param p4, "flagValues"  # I
    .param p5, "callingUid"  # I
    .param p6, "userId"  # I
    .param p7, "overridePolicy"  # Z
    .param p8, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;

    .line 3175
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v1 .. v9}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3178
    return-void
.end method

.method public updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .registers 14
    .param p1, "flagMask"  # I
    .param p2, "flagValues"  # I
    .param p3, "callingUid"  # I
    .param p4, "userId"  # I
    .param p6, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")Z"
        }
    .end annotation

    .line 3182
    .local p5, "packages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2000(Lcom/android/server/pm/permission/PermissionManagerService;IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result v0

    return v0
.end method

.method public updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "pkg"  # Landroid/content/pm/PackageParser$Package;
    .param p3, "replaceGrant"  # Z
    .param p5, "callback"  # Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            "Z",
            "Ljava/util/Collection<",
            "Landroid/content/pm/PackageParser$Package;",
            ">;",
            "Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;",
            ")V"
        }
    .end annotation

    .line 3152
    .local p4, "allPackages":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/pm/PackageParser$Package;>;"
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3154
    return-void
.end method
