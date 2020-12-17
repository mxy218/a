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

    .line 5768
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Lcom/android/server/net/NetworkPolicyManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/net/NetworkPolicyManagerService$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p2, "x1"  # Lcom/android/server/net/NetworkPolicyManagerService$1;

    .line 5768
    invoke-direct {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;-><init>(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method


# virtual methods
.method public getSubscriptionOpportunisticQuota(Landroid/net/Network;I)J
    .registers 9
    .param p1, "network"  # Landroid/net/Network;
    .param p2, "quotaType"  # I

    .line 5857
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5858
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mSubscriptionOpportunisticQuota:Landroid/util/SparseLongArray;

    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I

    move-result v2

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v1

    .line 5860
    .local v1, "quotaBytes":J
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_4e

    .line 5861
    cmp-long v0, v1, v3

    if-nez v0, :cond_1b

    .line 5862
    return-wide v3

    .line 5865
    :cond_1b
    const/4 v0, 0x1

    const/high16 v5, 0x3f000000  # 0.5f

    if-ne p2, v0, :cond_35

    .line 5866
    long-to-float v0, v1

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "netpolicy_quota_frac_jobs"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    mul-float/2addr v0, v3

    float-to-long v3, v0

    return-wide v3

    .line 5868
    :cond_35
    const/4 v0, 0x2

    if-ne p2, v0, :cond_4d

    .line 5869
    long-to-float v0, v1

    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "netpolicy_quota_frac_multipath"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v3

    mul-float/2addr v0, v3

    float-to-long v3, v0

    return-wide v3

    .line 5872
    :cond_4d
    return-wide v3

    .line 5860
    .end local v1  # "quotaBytes":J
    :catchall_4e
    move-exception v1

    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v1
.end method

.method public getSubscriptionPlan(Landroid/net/Network;)Landroid/telephony/SubscriptionPlan;
    .registers 5
    .param p1, "network"  # Landroid/net/Network;

    .line 5840
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5841
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3600(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/Network;)I

    move-result v1

    .line 5842
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3700(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 5843
    .end local v1  # "subId":I
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getSubscriptionPlan(Landroid/net/NetworkTemplate;)Landroid/telephony/SubscriptionPlan;
    .registers 5
    .param p1, "template"  # Landroid/net/NetworkTemplate;

    .line 5848
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5849
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3800(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/net/NetworkTemplate;)I

    move-result v1

    .line 5850
    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2, v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3700(Lcom/android/server/net/NetworkPolicyManagerService;I)Landroid/telephony/SubscriptionPlan;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 5851
    .end local v1  # "subId":I
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public isUidNetworkingBlocked(ILjava/lang/String;)Z
    .registers 11
    .param p1, "uid"  # I
    .param p2, "ifname"  # Ljava/lang/String;

    .line 5805
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 5809
    .local v0, "startTime":J
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5810
    :try_start_d
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    .line 5811
    .local v3, "uidRules":I
    iget-object v4, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v4, v4, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 5812
    .local v4, "isBackgroundRestricted":Z
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_41

    .line 5814
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v5

    .line 5815
    :try_start_20
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2200(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 5816
    .local v2, "isNetworkMetered":Z
    monitor-exit v5
    :try_end_2b
    .catchall {:try_start_20 .. :try_end_2b} :catchall_3e

    .line 5817
    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 5818
    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object v5

    .line 5817
    invoke-static {p1, v3, v2, v4, v5}, Lcom/android/server/net/NetworkPolicyManagerService;->isUidNetworkingBlockedInternal(IIZZLcom/android/server/net/NetworkPolicyLogger;)Z

    move-result v5

    .line 5820
    .local v5, "ret":Z
    iget-object v6, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v6, v6, Lcom/android/server/net/NetworkPolicyManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v7, 0x1

    invoke-virtual {v6, v7, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 5822
    return v5

    .line 5816
    .end local v2  # "isNetworkMetered":Z
    .end local v5  # "ret":Z
    :catchall_3e
    move-exception v2

    :try_start_3f
    monitor-exit v5
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v2

    .line 5812
    .end local v3  # "uidRules":I
    .end local v4  # "isBackgroundRestricted":Z
    :catchall_41
    move-exception v3

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v3
.end method

.method public isUidRestrictedOnMeteredNetworks(I)Z
    .registers 6
    .param p1, "uid"  # I

    .line 5790
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5791
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRules:Landroid/util/SparseIntArray;

    const/16 v2, 0x20

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 5792
    .local v1, "uidRules":I
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-boolean v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRestrictBackground:Z

    .line 5793
    .local v2, "isBackgroundRestricted":Z
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_27

    .line 5794
    const/4 v0, 0x1

    if-eqz v2, :cond_25

    .line 5795
    invoke-static {v1, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3300(II)Z

    move-result v3

    if-nez v3, :cond_25

    const/4 v3, 0x2

    .line 5796
    invoke-static {v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3300(II)Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 5794
    :goto_26
    return v0

    .line 5793
    .end local v1  # "uidRules":I
    .end local v2  # "isBackgroundRestricted":Z
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method public onAdminDataAvailable()V
    .registers 2

    .line 5878
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3900(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 5879
    return-void
.end method

.method public onTempPowerSaveWhitelistChange(IZ)V
    .registers 6
    .param p1, "appId"  # I
    .param p2, "added"  # Z

    .line 5827
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5828
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/net/NetworkPolicyLogger;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/net/NetworkPolicyLogger;->tempPowerSaveWlChanged(IZ)V

    .line 5829
    if-eqz p2, :cond_1b

    .line 5830
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_24

    .line 5832
    :cond_1b
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 5834
    :goto_24
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3500(Lcom/android/server/net/NetworkPolicyManagerService;I)V

    .line 5835
    monitor-exit v0

    .line 5836
    return-void

    .line 5835
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public resetUserState(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 5772
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    .line 5773
    :try_start_5
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->removeUserStateUL(IZ)Z

    move-result v1

    .line 5774
    .local v1, "changed":Z
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$700(Lcom/android/server/net/NetworkPolicyManagerService;I)Z

    move-result v3

    if-nez v3, :cond_16

    if-eqz v1, :cond_17

    :cond_16
    const/4 v2, 0x1

    :cond_17
    move v1, v2

    .line 5775
    if-eqz v1, :cond_29

    .line 5776
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkPoliciesSecondLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_5 .. :try_end_1f} :catchall_2b

    .line 5777
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->writePolicyAL()V

    .line 5778
    monitor-exit v2

    goto :goto_29

    :catchall_26
    move-exception v3

    monitor-exit v2
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_26

    .end local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
    .end local p1  # "userId":I
    :try_start_28
    throw v3

    .line 5780
    .end local v1  # "changed":Z
    .restart local p0  # "this":Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;
    .restart local p1  # "userId":I
    :cond_29
    :goto_29
    monitor-exit v0

    .line 5781
    return-void

    .line 5780
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public setAppIdleWhitelist(IZ)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "shouldWhitelist"  # Z

    .line 5883
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->setAppIdleWhitelist(IZ)V

    .line 5884
    return-void
.end method

.method public setMeteredRestrictedPackages(Ljava/util/Set;I)V
    .registers 4
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 5888
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$3100(Lcom/android/server/net/NetworkPolicyManagerService;Ljava/util/Set;I)V

    .line 5889
    return-void
.end method

.method public setMeteredRestrictedPackagesAsync(Ljava/util/Set;I)V
    .registers 6
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 5893
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$NetworkPolicyManagerInternalImpl;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5894
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5895
    return-void
.end method
