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

    .line 3028
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$1;)V
    .registers 3

    .line 3028
    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    return-void
.end method


# virtual methods
.method public addAllPermissionGroups(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 4

    .line 3052
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V

    .line 3053
    return-void
.end method

.method public addAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 4

    .line 3048
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$400(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V

    .line 3049
    return-void
.end method

.method public addDynamicPermission(Landroid/content/pm/PermissionInfo;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .registers 5

    .line 3061
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p2, p1, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$700(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PermissionInfo;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result p1

    return p1
.end method

.method public addOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 3

    .line 3247
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3500(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    .line 3249
    return-void
.end method

.method public backupRuntimePermissions(Landroid/os/UserHandle;)[B
    .registers 3

    .line 3230
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/os/UserHandle;)[B

    move-result-object p1

    return-object p1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6

    .line 3163
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2300(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public checkUidPermission(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I
    .registers 6

    .line 3169
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;II)I

    move-result p1

    return p1
.end method

.method public enforceCrossUserPermission(IIZZLjava/lang/String;)V
    .registers 13

    .line 3146
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    const/4 v5, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V

    .line 3148
    return-void
.end method

.method public enforceCrossUserPermission(IIZZZLjava/lang/String;)V
    .registers 14

    .line 3153
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2100(Lcom/android/server/pm/permission/PermissionManagerService;IIZZZLjava/lang/String;)V

    .line 3155
    return-void
.end method

.method public enforceGrantRevokeRuntimePermissionPermissions(Ljava/lang/String;)V
    .registers 3

    .line 3158
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2200(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)V

    .line 3159
    return-void
.end method

.method public getAllPermissionGroups(II)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    .line 3179
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2600(Lcom/android/server/pm/permission/PermissionManagerService;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllPermissionWithProtectionLevel(I)Ljava/util/ArrayList;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 3210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3212
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3100(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3213
    :try_start_c
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 3215
    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_41

    .line 3216
    iget-object v4, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/permission/PermissionSettings;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/permission/BasePermission;

    .line 3218
    iget-object v5, v4, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    if-eqz v5, :cond_3e

    iget-object v5, v4, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v5, v5, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    if-eqz v5, :cond_3e

    iget v5, v4, Lcom/android/server/pm/permission/BasePermission;->protectionLevel:I

    if-ne v5, p1, :cond_3e

    .line 3220
    iget-object v4, v4, Lcom/android/server/pm/permission/BasePermission;->perm:Landroid/content/pm/PackageParser$Permission;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Permission;->info:Landroid/content/pm/PermissionInfo;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3215
    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 3223
    :cond_41
    monitor-exit v1

    .line 3225
    return-object v0

    .line 3223
    :catchall_43
    move-exception p1

    monitor-exit v1
    :try_end_45
    .catchall {:try_start_c .. :try_end_45} :catchall_43

    throw p1
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    .line 3121
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultPermissionGrantPolicy()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
    .registers 2

    .line 3198
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3000(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;II)I
    .registers 6

    .line 3126
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)I

    move-result p1

    return p1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;
    .registers 5

    .line 3174
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPermissionInfo(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;
    .registers 6

    .line 3184
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2700(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    return-object p1
.end method

.method public getPermissionInfoByGroup(Ljava/lang/String;II)Ljava/util/List;
    .registers 5
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

    .line 3190
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getPermissionSettings()Lcom/android/server/pm/permission/PermissionSettings;
    .registers 2

    .line 3194
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;
    .registers 4

    .line 3202
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3100(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 3203
    :try_start_7
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2900(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/pm/permission/PermissionSettings;->getPermissionLocked(Ljava/lang/String;)Lcom/android/server/pm/permission/BasePermission;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 3204
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public getWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;
    .registers 5
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

    .line 3084
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1100(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public grantRequestedRuntimePermissions(Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 12

    .line 3078
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1000(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[I[Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3080
    return-void
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 14

    .line 3072
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZIILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3074
    return-void
.end method

.method public grantRuntimePermissionsGrantedToDisabledPackage(Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 5

    .line 3098
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3100
    return-void
.end method

.method public isPermissionsReviewRequired(Landroid/content/pm/PackageParser$Package;I)Z
    .registers 4

    .line 3035
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;I)Z

    move-result p1

    return p1
.end method

.method public removeAllPermissions(Landroid/content/pm/PackageParser$Package;Z)V
    .registers 4

    .line 3056
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Z)V

    .line 3057
    return-void
.end method

.method public removeDynamicPermission(Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 5

    .line 3066
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->access$800(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3067
    return-void
.end method

.method public removeOnRuntimePermissionStateChangedListener(Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 3

    .line 3254
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3600(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/permission/PermissionManagerInternal$OnRuntimePermissionStateChangedListener;)V

    .line 3256
    return-void
.end method

.method public restoreDelayedRuntimePermissions(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    .line 3241
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 3242
    return-void
.end method

.method public restoreRuntimePermissions([BLandroid/os/UserHandle;)V
    .registers 4

    .line 3235
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->access$3300(Lcom/android/server/pm/permission/PermissionManagerService;[BLandroid/os/UserHandle;)V

    .line 3236
    return-void
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 12

    .line 3104
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1400(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;ZILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3106
    return-void
.end method

.method public revokeRuntimePermissionsIfGroupChanged(Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 6
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

    .line 3043
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$300(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;Landroid/content/pm/PackageParser$Package;Ljava/util/ArrayList;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3045
    return-void
.end method

.method public setWhitelistedRestrictedPermissions(Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 14
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

    .line 3092
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1200(Lcom/android/server/pm/permission/PermissionManagerService;Landroid/content/pm/PackageParser$Package;[ILjava/util/List;IILcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3094
    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 3031
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0}, Lcom/android/server/pm/permission/PermissionManagerService;->access$100(Lcom/android/server/pm/permission/PermissionManagerService;)V

    .line 3032
    return-void
.end method

.method public updateAllPermissions(Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 6
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

    .line 3116
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1600(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3118
    return-void
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 18

    .line 3133
    move-object v0, p0

    iget-object v0, v0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v0 .. v8}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1900(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;IIIIZLcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3136
    return-void
.end method

.method public updatePermissionFlagsForAllApps(IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z
    .registers 14
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

    .line 3140
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/android/server/pm/permission/PermissionManagerService;->access$2000(Lcom/android/server/pm/permission/PermissionManagerService;IIIILjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)Z

    move-result p1

    return p1
.end method

.method public updatePermissions(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V
    .registers 12
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

    .line 3110
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerService;->access$1500(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZLjava/util/Collection;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;)V

    .line 3112
    return-void
.end method
