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

    .line 11233
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Landroid/app/admin/DevicePolicyManagerInternal;-><init>()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;ILjava/util/List;)V
    .registers 3

    .line 11233
    invoke-direct {p0, p1, p2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->notifyCrossProfileProvidersChanged(ILjava/util/List;)V

    return-void
.end method

.method private notifyCrossProfileProvidersChanged(ILjava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 11281
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11282
    :try_start_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 11283
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_23

    .line 11284
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 11285
    const/4 v2, 0x0

    :goto_14
    if-ge v2, v0, :cond_22

    .line 11286
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;

    .line 11287
    invoke-interface {v3, p1, p2}, Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;->onCrossProfileWidgetProvidersChanged(ILjava/util/List;)V

    .line 11285
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 11289
    :cond_22
    return-void

    .line 11283
    :catchall_23
    move-exception p1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw p1
.end method


# virtual methods
.method public addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V
    .registers 4

    .line 11262
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11263
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    if-nez v1, :cond_12

    .line 11264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    .line 11266
    :cond_12
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 11267
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->mWidgetProviderListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11269
    :cond_1f
    monitor-exit v0

    .line 11270
    return-void

    .line 11269
    :catchall_21
    move-exception p1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_7 .. :try_end_23} :catchall_21

    throw p1
.end method

.method public canSilentlyInstallPackage(Ljava/lang/String;I)Z
    .registers 4

    .line 11373
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 11374
    return v0

    .line 11376
    :cond_4
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isUserAffiliatedWithDevice(I)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p1, -0x1

    .line 11377
    invoke-virtual {p0, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->isActiveAdminWithPolicy(II)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 11380
    const/4 p1, 0x1

    return p1

    .line 11382
    :cond_17
    return v0
.end method

.method public canUserHaveUntrustedCredentialReset(I)Z
    .registers 3

    .line 11404
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3300(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result p1

    return p1
.end method

.method public createShowAdminSupportIntent(IZ)Landroid/content/Intent;
    .registers 5

    .line 11296
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v0, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 11297
    if-eqz v0, :cond_11

    .line 11298
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 11299
    invoke-static {p2, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object p1

    .line 11298
    return-object p1

    .line 11302
    :cond_11
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 11303
    invoke-virtual {v0}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;

    move-result-object v0

    .line 11304
    if-eqz v0, :cond_30

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_30

    .line 11305
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    .line 11306
    invoke-static {p2, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object p1

    .line 11305
    return-object p1

    .line 11310
    :cond_30
    const/4 v0, 0x0

    if-eqz p2, :cond_3a

    .line 11311
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p2, v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object p1

    return-object p1

    .line 11313
    :cond_3a
    return-object v0
.end method

.method public createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;
    .registers 8

    .line 11318
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 11320
    :try_start_8
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    .line 11321
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/os/UserManager;->getUserRestrictionSources(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p2

    .line 11322
    const/4 v2, 0x0

    if-eqz p2, :cond_9f

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1f

    goto/16 :goto_9f

    .line 11325
    :cond_1f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_34

    .line 11330
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p2, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_a8

    .line 11361
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 11330
    return-object p1

    .line 11333
    :cond_34
    const/4 p1, 0x0

    :try_start_35
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager$EnforcingUser;

    .line 11334
    invoke-virtual {p1}, Landroid/os/UserManager$EnforcingUser;->getUserRestrictionSource()I

    move-result p2

    .line 11335
    invoke-virtual {p1}, Landroid/os/UserManager$EnforcingUser;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    .line 11336
    const/4 v3, 0x4

    if-ne p2, v3, :cond_63

    .line 11338
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {p2, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object p2

    .line 11340
    if-eqz p2, :cond_62

    .line 11341
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v2, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_5a
    .catchall {:try_start_35 .. :try_end_5a} :catchall_a8

    .line 11361
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 11341
    return-object p1

    .line 11344
    :cond_62
    goto :goto_96

    :cond_63
    const/4 p1, 0x2

    if-ne p2, p1, :cond_8a

    .line 11346
    :try_start_66
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    .line 11347
    invoke-virtual {p1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerUserIdAndComponent()Landroid/util/Pair;

    move-result-object p1

    .line 11348
    if-eqz p1, :cond_95

    .line 11349
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 11350
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 11349
    invoke-static {p2, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2900(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;I)Landroid/content/Intent;

    move-result-object p1
    :try_end_82
    .catchall {:try_start_66 .. :try_end_82} :catchall_a8

    .line 11361
    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 11349
    return-object p1

    .line 11352
    :cond_8a
    if-ne p2, v4, :cond_95

    .line 11358
    nop

    .line 11361
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 11358
    return-object v2

    .line 11352
    :cond_95
    nop

    .line 11361
    :goto_96
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 11362
    nop

    .line 11363
    return-object v2

    .line 11324
    :cond_9f
    :goto_9f
    nop

    .line 11361
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 11324
    return-object v2

    .line 11361
    :catchall_a8
    move-exception p1

    iget-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p2, p2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    throw p1
.end method

.method public getCrossProfileWidgetProviders(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11238
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11239
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    if-nez v1, :cond_13

    .line 11240
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 11242
    :cond_13
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerComponent(I)Landroid/content/ComponentName;

    move-result-object v1

    .line 11243
    if-nez v1, :cond_23

    .line 11244
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 11247
    :cond_23
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserDataUnchecked(I)Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;

    move-result-object p1

    .line 11248
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyData;->mAdminMap:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    .line 11250
    if-eqz p1, :cond_44

    iget-object v1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    if-eqz v1, :cond_44

    iget-object v1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    .line 11251
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_40

    goto :goto_44

    .line 11255
    :cond_40
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;->crossProfileWidgetProviders:Ljava/util/List;

    monitor-exit v0

    return-object p1

    .line 11252
    :cond_44
    :goto_44
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 11256
    :catchall_4a
    move-exception p1

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_7 .. :try_end_4c} :catchall_4a

    throw p1
.end method

.method protected getDevicePolicyCache()Landroid/app/admin/DevicePolicyCache;
    .registers 2

    .line 11448
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3400(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Lcom/android/server/devicepolicy/DevicePolicyCacheImpl;

    move-result-object v0

    return-object v0
.end method

.method public getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;
    .registers 7

    .line 11409
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11410
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo v2, "no_printing"

    .line 11411
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 11410
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_23

    .line 11412
    const-string p1, "DevicePolicyManager"

    const-string/jumbo v1, "printing is enabled"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11413
    monitor-exit v0

    return-object v2

    .line 11415
    :cond_23
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {v1, p1}, Lcom/android/server/devicepolicy/Owners;->getProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object p1

    .line 11416
    if-nez p1, :cond_35

    .line 11417
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mOwners:Lcom/android/server/devicepolicy/Owners;

    invoke-virtual {p1}, Lcom/android/server/devicepolicy/Owners;->getDeviceOwnerPackageName()Ljava/lang/String;

    move-result-object p1

    .line 11419
    :cond_35
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v1, v1, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1
    :try_end_3d
    .catchall {:try_start_7 .. :try_end_3d} :catchall_8f

    .line 11422
    const/4 v3, 0x0

    :try_start_3e
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_42
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_42} :catch_85
    .catchall {:try_start_3e .. :try_end_42} :catchall_8f

    .line 11426
    nop

    .line 11427
    if-nez p1, :cond_4f

    .line 11428
    :try_start_45
    const-string p1, "DevicePolicyManager"

    const-string/jumbo v1, "packageInfo is inexplicably null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11429
    monitor-exit v0

    return-object v2

    .line 11431
    :cond_4f
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 11432
    if-nez p1, :cond_5c

    .line 11433
    const-string p1, "DevicePolicyManager"

    const-string v1, "appInfo is inexplicably null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11434
    monitor-exit v0

    return-object v2

    .line 11436
    :cond_5c
    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 11437
    if-nez p1, :cond_6b

    .line 11438
    const-string p1, "DevicePolicyManager"

    const-string v1, "appLabel is inexplicably null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11439
    monitor-exit v0

    return-object v2

    .line 11441
    :cond_6b
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 11442
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040600

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    .line 11441
    return-object p1

    .line 11423
    :catch_85
    move-exception p1

    .line 11424
    const-string v1, "DevicePolicyManager"

    const-string v3, "getPackageInfo error"

    invoke-static {v1, v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11425
    monitor-exit v0

    return-object v2

    .line 11443
    :catchall_8f
    move-exception p1

    monitor-exit v0
    :try_end_91
    .catchall {:try_start_45 .. :try_end_91} :catchall_8f

    throw p1
.end method

.method public isActiveAdminWithPolicy(II)Z
    .registers 6

    .line 11274
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 11275
    :try_start_7
    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2, p2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$2800(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/ComponentName;II)Lcom/android/server/devicepolicy/DevicePolicyManagerService$ActiveAdmin;

    move-result-object p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    monitor-exit v0

    return p1

    .line 11276
    :catchall_15
    move-exception p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw p1
.end method

.method public isUserAffiliatedWithDevice(I)Z
    .registers 3

    .line 11368
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v0, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$1100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result p1

    return p1
.end method

.method public reportSeparateProfileChallengeChanged(I)V
    .registers 6

    .line 11387
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v0, v0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderClearCallingIdentity()J

    move-result-wide v0

    .line 11389
    :try_start_8
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_39

    .line 11390
    :try_start_f
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3000(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 11391
    iget-object v3, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {v3, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3100(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)V

    .line 11392
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_36

    .line 11394
    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    .line 11395
    nop

    .line 11396
    const/16 v0, 0x6e

    .line 11397
    invoke-static {v0}, Landroid/app/admin/DevicePolicyEventLogger;->createEvent(I)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    .line 11398
    invoke-static {v1, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->access$3200(Lcom/android/server/devicepolicy/DevicePolicyManagerService;I)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyEventLogger;->setBoolean(Z)Landroid/app/admin/DevicePolicyEventLogger;

    move-result-object p1

    .line 11399
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyEventLogger;->write()V

    .line 11400
    return-void

    .line 11392
    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    throw p1
    :try_end_39
    .catchall {:try_start_38 .. :try_end_39} :catchall_39

    .line 11394
    :catchall_39
    move-exception p1

    iget-object v2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$LocalService;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object v2, v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->binderRestoreCallingIdentity(J)V

    throw p1
.end method
