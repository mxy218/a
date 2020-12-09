.class Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
.super Lcom/android/server/net/NetworkPolicyManagerInternal;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkPolicyManagerInternalImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .registers 2

    .line 5198
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V
    .registers 3

    .line 5198
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J
    .registers 9

    .line 5292
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5293
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3900(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I

    move-result p1

    const-wide/16 v2, -0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v4

    .line 5295
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_4e

    .line 5296
    cmp-long p1, v4, v2

    if-nez p1, :cond_1b

    .line 5297
    return-wide v2

    .line 5300
    :cond_1b
    const/4 p1, 0x1

    const/high16 v0, 0x3f000000  # 0.5f

    if-ne p2, p1, :cond_35

    .line 5301
    long-to-float p1, v4

    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "netpolicy_quota_frac_jobs"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p2

    mul-float/2addr p1, p2

    float-to-long p1, p1

    return-wide p1

    .line 5303
    :cond_35
    const/4 p1, 0x2

    if-ne p2, p1, :cond_4d

    .line 5304
    long-to-float p1, v4

    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "netpolicy_quota_frac_multipath"

    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p2

    mul-float/2addr p1, p2

    float-to-long p1, p1

    return-wide p1

    .line 5307
    :cond_4d
    return-wide v2

    .line 5295
    :catchall_4e
    move-exception p1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p1
.end method

.method public getSubscriptionPlan(Landroid/net/Network;)Landroid/telephony/SubscriptionPlan;
    .registers 4

    .line 5275
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5276
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3900(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I

    move-result p1

    .line 5277
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4000(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 5278
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;
    .registers 4

    .line 5283
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5284
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4100(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;)I

    move-result p1

    .line 5285
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4000(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 5286
    :catchall_13
    move-exception p1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw p1
.end method

.method public isNetworkingIsolatedByUidRules(I)Z
    .registers 3

    .line 5257
    const/16 v0, 0x80

    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3600(II)Z

    move-result p1

    return p1
.end method

.method public isUidNetworkingBlocked(ILjava/lang/String;)Z
    .registers 9

    .line 5235
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 5239
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5240
    :try_start_d
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 5241
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 5242
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_41

    .line 5244
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5245
    :try_start_20
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    .line 5246
    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_3e

    .line 5247
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 5248
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object v2

    .line 5247
    invoke-static {p1, v3, p2, v4, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidNetworkingBlockedInternal(IIZZLcom/android/server/net/NetworkPolicyLogger;)Z

    move-result p1

    .line 5250
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p2, p2, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v2, 0x1

    invoke-virtual {p2, v2, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 5252
    return p1

    .line 5246
    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit v5
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1

    .line 5242
    :catchall_41
    move-exception p1

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw p1
.end method

.method public isUidRestrictedOnMeteredNetworks(I)Z
    .registers 5

    .line 5220
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5221
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/16 v2, 0x20

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 5222
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 5223
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_27

    .line 5224
    const/4 v0, 0x1

    if-eqz v1, :cond_25

    .line 5225
    invoke-static {p1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3600(II)Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x2

    .line 5226
    invoke-static {p1, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3600(II)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 5224
    :goto_26
    return v0

    .line 5223
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw p1
.end method

.method public onAdminDataAvailable()V
    .registers 2

    .line 5313
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$4200(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5314
    return-void
.end method

.method public onTempPowerSaveWhitelistChange(IZ)V
    .registers 5

    .line 5262
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5263
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->tempPowerSaveWlChanged(IZ)V

    .line 5264
    if-eqz p2, :cond_1b

    .line 5265
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    const/4 v1, 0x1

    invoke-virtual {p2, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_24

    .line 5267
    :cond_1b
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3700(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5269
    :goto_24
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3800(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 5270
    monitor-exit v0

    .line 5271
    return-void

    .line 5270
    :catchall_2b
    move-exception p1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public resetUserState(I)V
    .registers 6

    .line 5202
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5203
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateUL(IZ)Z

    move-result v1

    .line 5204
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$900(Lcom/android/server/net/NetworkPolicyManagerService;I)Z

    move-result p1

    if-nez p1, :cond_16

    if-eqz v1, :cond_17

    :cond_16
    const/4 v2, 0x1

    .line 5205
    :cond_17
    if-eqz v2, :cond_28

    .line 5206
    iget-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p1, p1, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_2a

    .line 5207
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 5208
    monitor-exit p1

    goto :goto_28

    :catchall_25
    move-exception v1

    monitor-exit p1
    :try_end_27
    .catchall {:try_start_1e .. :try_end_27} :catchall_25

    :try_start_27
    throw v1

    .line 5210
    :cond_28
    :goto_28
    monitor-exit v0

    .line 5211
    return-void

    .line 5210
    :catchall_2a
    move-exception p1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public setAppIdleWhitelist(IZ)V
    .registers 4

    .line 5318
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

    .line 5319
    return-void
.end method

.method public setMeteredRestrictedPackages(Ljava/util/Set;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 5323
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3300(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V

    .line 5324
    return-void
.end method

.method public setMeteredRestrictedPackagesAsync(Ljava/util/Set;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 5328
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5329
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 5330
    return-void
.end method
