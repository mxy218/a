.class final Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;
.super Landroid/app/admin/DevicePolicyManagerInternal;
.source "DevicePolicyManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "LocalService"
.end annotation


# instance fields
.field private mWidgetProviderListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 11211
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManagerInternal;-><init>()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;
    .param p1, "x1"  # I
    .param p2, "x2"  # Ljava/util/List;

    .line 11211
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->notifyCrossProfileProvidersChanged(ILjava/util/List;)V

    return-void
.end method

.method private notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    .registers 7
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11259
    .local p2, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11260
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11261
    .local v1, "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;>;"
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_23

    .line 11262
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 11263
    .local v0, "listenerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v0, :cond_22

    .line 11264
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;

    .line 11265
    .local v3, "listener":Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
    invoke-interface {v3, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;->onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V

    .line 11263
    .end local v3  # "listener":Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 11267
    .end local v2  # "i":I
    :cond_22
    return-void

    .line 11261
    .end local v0  # "listenerCount":I
    .end local v1  # "listeners":Ljava/util/List;, "Ljava/util/List<Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;>;"
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v1
.end method


# virtual methods
.method public addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V
    .registers 4
    .param p1, "listener"  # Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;

    .line 11240
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11241
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    if-nez v1, :cond_12

    .line 11242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    .line 11244
    :cond_12
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 11245
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11247
    :cond_1f
    monitor-exit v0

    .line 11248
    return-void

    .line 11247
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public canSilentlyInstallPackage(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "callerPackage"  # Ljava/lang/String;
    .param p2, "callerUid"  # I

    .line 11351
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 11352
    return v0

    .line 11354
    :cond_4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isUserAffiliatedWithDevice(I)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, -0x1

    .line 11355
    invoke-virtual {p0, p2, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isActiveAdminWithPolicy(II)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 11358
    const/4 v0, 0x1

    return v0

    .line 11360
    :cond_17
    return v0
.end method

.method public canUserHaveUntrustedCredentialReset(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 11382
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3300(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v0

    return v0
.end method

.method public createShowAdminSupportIntent(IZ)Landroid/content/Intent;
    .registers 7
    .param p1, "userId"  # I
    .param p2, "useDefaultIfNoAdmin"  # Z

    .line 11274
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 11275
    .local v0, "profileOwner":Landroid/content/ComponentName;
    if-eqz v0, :cond_11

    .line 11276
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 11277
    invoke-static {v1, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v1

    .line 11276
    return-object v1

    .line 11280
    :cond_11
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 11281
    invoke-virtual {v1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;

    move-result-object v1

    .line 11282
    .local v1, "deviceOwner":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/ComponentName;>;"
    if-eqz v1, :cond_30

    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_30

    .line 11283
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/content/ComponentName;

    .line 11284
    invoke-static {v2, v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v2

    .line 11283
    return-object v2

    .line 11288
    :cond_30
    const/4 v2, 0x0

    if-eqz p2, :cond_3a

    .line 11289
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v2

    return-object v2

    .line 11291
    :cond_3a
    return-object v2
.end method

.method public createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 13
    .param p1, "userId"  # I
    .param p2, "userRestriction"  # Ljava/lang/String;

    .line 11296
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 11298
    .local v0, "ident":J
    :try_start_8
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 11299
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/os/UserManager;->getUserRestrictionSources(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 11300
    .local v2, "sources":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    const/4 v3, 0x0

    if-eqz v2, :cond_a0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    goto/16 :goto_a0

    .line 11303
    :cond_1f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_34

    .line 11308
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v4, v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_a9

    .line 11339
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 11308
    return-object v3

    .line 11311
    :cond_34
    const/4 v4, 0x0

    :try_start_35
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager$EnforcingUser;

    .line 11312
    .local v4, "enforcingUser":Landroid/os/UserManager$EnforcingUser;
    invoke-virtual {v4}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result v6

    .line 11313
    .local v6, "sourceType":I
    invoke-virtual {v4}, Landroid/os/UserManager$EnforcingUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 11314
    .local v7, "enforcingUserId":I
    const/4 v8, 0x4

    if-ne v6, v8, :cond_63

    .line 11316
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v5, v7}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v5

    .line 11318
    .local v5, "profileOwner":Landroid/content/ComponentName;
    if-eqz v5, :cond_62

    .line 11319
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, v5, v7}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v3
    :try_end_5a
    .catchall {:try_start_35 .. :try_end_5a} :catchall_a9

    .line 11339
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v8, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 11319
    return-object v3

    .line 11322
    .end local v5  # "profileOwner":Landroid/content/ComponentName;
    :cond_62
    goto :goto_97

    :cond_63
    const/4 v8, 0x2

    if-ne v6, v8, :cond_8b

    .line 11324
    :try_start_66
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 11325
    invoke-virtual {v5}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;

    move-result-object v5

    .line 11326
    .local v5, "deviceOwner":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/ComponentName;>;"
    if-eqz v5, :cond_8a

    .line 11327
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/content/ComponentName;

    iget-object v9, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    .line 11328
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 11327
    invoke-static {v3, v8, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object v3
    :try_end_82
    .catchall {:try_start_66 .. :try_end_82} :catchall_a9

    .line 11339
    iget-object v8, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v8, v8, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v8, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 11327
    return-object v3

    .line 11326
    .end local v5  # "deviceOwner":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Landroid/content/ComponentName;>;"
    :cond_8a
    goto :goto_96

    .line 11330
    :cond_8b
    if-ne v6, v5, :cond_96

    .line 11336
    nop

    .line 11339
    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v5, v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v5, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 11336
    return-object v3

    .line 11330
    :cond_96
    :goto_96
    nop

    .line 11339
    .end local v2  # "sources":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    .end local v4  # "enforcingUser":Landroid/os/UserManager$EnforcingUser;
    .end local v6  # "sourceType":I
    .end local v7  # "enforcingUserId":I
    :goto_97
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 11340
    nop

    .line 11341
    return-object v3

    .line 11302
    .restart local v2  # "sources":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    :cond_a0
    :goto_a0
    nop

    .line 11339
    iget-object v4, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v4, v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v4, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 11302
    return-object v3

    .line 11339
    .end local v2  # "sources":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserManager$EnforcingUser;>;"
    :catchall_a9
    move-exception v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    throw v2
.end method

.method public getCrossProfileWidgetProviders(I)Ljava/util/List;
    .registers 7
    .param p1, "profileId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11216
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11217
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    if-nez v1, :cond_13

    .line 11218
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 11220
    :cond_13
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 11221
    .local v1, "ownerComponent":Landroid/content/ComponentName;
    if-nez v1, :cond_23

    .line 11222
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 11225
    :cond_23
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object v2

    .line 11226
    .local v2, "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    iget-object v3, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 11228
    .local v3, "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    if-eqz v3, :cond_44

    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v4, :cond_44

    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 11229
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_40

    goto :goto_44

    .line 11233
    :cond_40
    iget-object v4, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    monitor-exit v0

    return-object v4

    .line 11230
    :cond_44
    :goto_44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    monitor-exit v0

    return-object v4

    .line 11234
    .end local v1  # "ownerComponent":Landroid/content/ComponentName;
    .end local v2  # "policy":Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;
    .end local v3  # "admin":Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;
    :catchall_4a
    move-exception v1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method protected getDevicePolicyCache()Landroid/app/admin/DevicePolicyCache;
    .registers 2

    .line 11426
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    move-result-object v0

    return-object v0
.end method

.method public getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;
    .registers 12
    .param p1, "userId"  # I

    .line 11387
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11388
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_printing"

    .line 11389
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 11388
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_23

    .line 11390
    const-string v1, "DevicePolicyManager"

    const-string/jumbo v3, "printing is enabled"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11391
    monitor-exit v0

    return-object v2

    .line 11393
    :cond_23
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object v1

    .line 11394
    .local v1, "ownerPackage":Ljava/lang/String;
    if-nez v1, :cond_36

    .line 11395
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 11397
    :cond_36
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_90

    .line 11400
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    :try_start_3f
    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5
    :try_end_43
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3f .. :try_end_43} :catch_86
    .catchall {:try_start_3f .. :try_end_43} :catchall_90

    .line 11404
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 11405
    if-nez v5, :cond_50

    .line 11406
    :try_start_46
    const-string v4, "DevicePolicyManager"

    const-string/jumbo v6, "packageInfo is inexplicably null"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11407
    monitor-exit v0

    return-object v2

    .line 11409
    :cond_50
    iget-object v6, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 11410
    .local v6, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_5d

    .line 11411
    const-string v4, "DevicePolicyManager"

    const-string v7, "appInfo is inexplicably null"

    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11412
    monitor-exit v0

    return-object v2

    .line 11414
    :cond_5d
    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 11415
    .local v7, "appLabel":Ljava/lang/CharSequence;
    if-nez v7, :cond_6c

    .line 11416
    const-string v4, "DevicePolicyManager"

    const-string v8, "appLabel is inexplicably null"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11417
    monitor-exit v0

    return-object v2

    .line 11419
    :cond_6c
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v2

    .line 11420
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x10405fb

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v4

    invoke-virtual {v2, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    monitor-exit v0

    .line 11419
    return-object v2

    .line 11401
    .end local v5  # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6  # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v7  # "appLabel":Ljava/lang/CharSequence;
    :catch_86
    move-exception v4

    .line 11402
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "DevicePolicyManager"

    const-string v6, "getPackageInfo error"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11403
    monitor-exit v0

    return-object v2

    .line 11421
    .end local v1  # "ownerPackage":Ljava/lang/String;
    .end local v3  # "pm":Landroid/content/pm/PackageManager;
    .end local v4  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_90
    move-exception v1

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_46 .. :try_end_92} :catchall_90

    throw v1
.end method

.method public isActiveAdminWithPolicy(II)Z
    .registers 6
    .param p1, "uid"  # I
    .param p2, "reqPolicy"  # I

    .line 11252
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11253
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    monitor-exit v0

    return v1

    .line 11254
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isUserAffiliatedWithDevice(I)Z
    .registers 3
    .param p1, "userId"  # I

    .line 11346
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v0

    return v0
.end method

.method public reportSeparateProfileChallengeChanged(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 11365
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 11367
    .local v0, "ident":J
    :try_start_8
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_39

    .line 11368
    :try_start_f
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 11369
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 11370
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_36

    .line 11372
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 11373
    nop

    .line 11374
    const/16 v2, 0x6e

    .line 11375
    invoke-static {v2}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 11376
    invoke-static {v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v2

    .line 11377
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 11378
    return-void

    .line 11370
    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;
    .end local p1  # "userId":I
    :try_start_38
    throw v3
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 11372
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;
    .restart local p1  # "userId":I
    :catchall_39
    move-exception v2

    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v3, v3, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v3, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    throw v2
.end method
