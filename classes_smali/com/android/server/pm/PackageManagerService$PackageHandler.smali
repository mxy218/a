.class Lcom/android/server/pm/PackageManagerService$PackageHandler;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/pm/PackageManagerService;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 1488
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1489
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1490
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 30
    .param p1, "msg"  # Landroid/os/Message;

    .line 1501
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v6, :cond_54b

    const/4 v7, 0x5

    const-wide/32 v8, 0x40000

    if-eq v0, v7, :cond_4e4

    const/16 v7, 0x9

    if-eq v0, v7, :cond_3b2

    const/16 v7, -0x16

    const/16 v10, 0xe

    packed-switch v0, :pswitch_data_5f0

    goto/16 :goto_5eb

    .line 1651
    :pswitch_20  #0x18
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1652
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_2b

    .line 1653
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->access$700(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 1655
    .end local v0  # "packageName":Ljava/lang/String;
    :cond_2b
    goto/16 :goto_5eb

    .line 1643
    :pswitch_2d  #0x17
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1644
    :try_start_32
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 1645
    .local v0, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    if-eqz v0, :cond_3b

    .line 1646
    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 1648
    .end local v0  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    :cond_3b
    monitor-exit v3

    .line 1649
    goto/16 :goto_5eb

    .line 1648
    :catchall_3e
    move-exception v0

    monitor-exit v3
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_3e

    throw v0

    .line 1837
    :pswitch_41  #0x16
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1838
    .local v0, "enableRollbackToken":I
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 1839
    .local v3, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    if-eqz v3, :cond_5eb

    .line 1840
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$900(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v4

    .line 1841
    .local v4, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 1843
    .local v5, "originUri":Landroid/net/Uri;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Enable rollback timed out for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1846
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Continuing with installation of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    const-string v6, "enable_rollback"

    invoke-static {v8, v9, v6, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1849
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleRollbackEnabled()V

    .line 1850
    new-instance v6, Landroid/content/Intent;

    const-string v7, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1852
    .local v6, "rollbackTimeoutIntent":Landroid/content/Intent;
    const-string v7, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v6, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1855
    const/high16 v7, 0x4000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1857
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v8, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v9, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v7, v6, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1859
    .end local v4  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v5  # "originUri":Landroid/net/Uri;
    .end local v6  # "rollbackTimeoutIntent":Landroid/content/Intent;
    goto/16 :goto_5eb

    .line 1812
    .end local v0  # "enableRollbackToken":I
    .end local v3  # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    :pswitch_b4  #0x15
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1813
    .restart local v0  # "enableRollbackToken":I
    iget v3, v2, Landroid/os/Message;->arg2:I

    .line 1814
    .local v3, "enableRollbackCode":I
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 1815
    .local v4, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    if-nez v4, :cond_e1

    .line 1816
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid rollback enabled token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " received"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PackageManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    goto/16 :goto_5eb

    .line 1821
    :cond_e1
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1823
    if-eq v3, v6, :cond_122

    .line 1824
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$900(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v5

    .line 1825
    .local v5, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 1826
    .local v6, "originUri":Landroid/net/Uri;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to enable rollback for "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "PackageManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Continuing with installation of "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v10, "PackageManager"

    invoke-static {v10, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    .end local v5  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v6  # "originUri":Landroid/net/Uri;
    :cond_122
    const-string v5, "enable_rollback"

    invoke-static {v8, v9, v5, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1833
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleRollbackEnabled()V

    .line 1834
    goto/16 :goto_5eb

    .line 1804
    .end local v0  # "enableRollbackToken":I
    .end local v3  # "enableRollbackCode":I
    .end local v4  # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    :pswitch_12c  #0x14
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/content/pm/InstantAppRequest;

    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V

    .line 1809
    goto/16 :goto_5eb

    .line 1678
    :pswitch_145  #0x13
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1679
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v5

    .line 1680
    const/16 v0, 0x13

    :try_start_14f
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1681
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 1682
    monitor-exit v5
    :try_end_15c
    .catchall {:try_start_14f .. :try_end_15c} :catchall_161

    .line 1683
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1684
    goto/16 :goto_5eb

    .line 1682
    :catchall_161
    move-exception v0

    :try_start_162
    monitor-exit v5
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_161

    throw v0

    .line 1761
    :pswitch_164  #0x12
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1763
    .local v0, "verificationId":I
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1765
    .local v4, "state":Lcom/android/server/pm/IntentFilterVerificationState;
    if-nez v4, :cond_18f

    .line 1766
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid IntentFilter verification token "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " received"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "PackageManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    goto/16 :goto_5eb

    .line 1771
    :cond_18f
    invoke-virtual {v4}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    move-result v5

    .line 1773
    .local v5, "userId":I
    sget-boolean v6, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v6, :cond_1b5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Processing IntentFilter verification with token:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " and userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PackageManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_1b5
    iget-object v6, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/server/pm/IntentFilterVerificationResponse;

    .line 1780
    .local v6, "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    iget v7, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    iget v8, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    invoke-virtual {v4, v7, v8}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    .line 1782
    sget-boolean v7, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v7, :cond_1ec

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IntentFilter verification with token:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " and userId:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is settings verifier response with response code:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :cond_1ec
    iget v7, v6, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    if-ne v7, v3, :cond_20e

    .line 1789
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v3, :cond_20e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Domains failing verification: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    invoke-virtual {v6}, Lcom/android/server/pm/IntentFilterVerificationResponse;->getFailedDomainsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1789
    const-string v7, "PackageManager"

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_20e
    invoke-virtual {v4}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    move-result v3

    if-eqz v3, :cond_21f

    .line 1794
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$1300(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    goto/16 :goto_5eb

    .line 1796
    :cond_21f
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    if-eqz v3, :cond_5eb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IntentFilter verification with token:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " was not said to be complete"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "PackageManager"

    invoke-static {v7, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5eb

    .line 1755
    .end local v0  # "verificationId":I
    .end local v4  # "state":Lcom/android/server/pm/IntentFilterVerificationState;
    .end local v5  # "userId":I
    .end local v6  # "response":Lcom/android/server/pm/IntentFilterVerificationResponse;
    :pswitch_240  #0x11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    .line 1756
    .local v0, "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v4, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    iget v5, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    iget-boolean v6, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->access$1200(Lcom/android/server/pm/PackageManagerService;IIZLandroid/content/pm/PackageParser$Package;)V

    .line 1758
    goto/16 :goto_5eb

    .line 1686
    .end local v0  # "params":Lcom/android/server/pm/PackageManagerService$IFVerificationParams;
    :pswitch_253  #0x10
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1687
    .local v0, "verificationId":I
    iget-object v4, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageVerificationState;

    .line 1689
    .local v4, "state":Lcom/android/server/pm/PackageVerificationState;
    if-eqz v4, :cond_5eb

    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v5

    if-nez v5, :cond_5eb

    .line 1690
    invoke-virtual {v4}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v5

    .line 1691
    .local v5, "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$900(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v10

    .line 1692
    .local v10, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v11, v10, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v11}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 1694
    .local v11, "originUri":Landroid/net/Uri;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Verification timed out for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "PackageManager"

    invoke-static {v13, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1697
    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    .line 1698
    .local v12, "user":Landroid/os/UserHandle;
    iget-object v13, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v13, v12}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)I

    move-result v13

    if-ne v13, v6, :cond_2c4

    .line 1700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Continuing with installation of "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "PackageManager"

    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v7, 0x2

    invoke-virtual {v4, v3, v7}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1703
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v3, v0, v11, v6, v12}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    goto :goto_2cc

    .line 1706
    :cond_2c4
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v0, v11, v3, v12}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1708
    invoke-virtual {v5, v7}, Lcom/android/server/pm/PackageManagerService$InstallParams;->setReturnCode(I)V

    .line 1712
    :goto_2cc
    const-string/jumbo v3, "verification"

    invoke-static {v8, v9, v3, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1714
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleVerificationFinished()V

    .line 1715
    .end local v5  # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    .end local v10  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v11  # "originUri":Landroid/net/Uri;
    .end local v12  # "user":Landroid/os/UserHandle;
    goto/16 :goto_5eb

    .line 1719
    .end local v0  # "verificationId":I
    .end local v4  # "state":Lcom/android/server/pm/PackageVerificationState;
    :pswitch_2d7  #0xf
    iget v0, v2, Landroid/os/Message;->arg1:I

    .line 1721
    .restart local v0  # "verificationId":I
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 1722
    .local v3, "state":Lcom/android/server/pm/PackageVerificationState;
    if-nez v3, :cond_302

    .line 1723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid verification token "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " received"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    goto/16 :goto_5eb

    .line 1727
    :cond_302
    iget-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1729
    .local v4, "response":Lcom/android/server/pm/PackageVerificationResponse;
    iget v5, v4, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v6, v4, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1731
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v5

    if-eqz v5, :cond_5eb

    .line 1732
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 1734
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v5

    .line 1735
    .restart local v5  # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    invoke-static {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$900(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v6

    .line 1736
    .local v6, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v10, v6, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 1738
    .local v10, "originUri":Landroid/net/Uri;
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v11

    if-eqz v11, :cond_33c

    .line 1739
    iget-object v7, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v11, v4, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    .line 1740
    invoke-virtual {v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v12

    .line 1739
    invoke-static {v7, v0, v10, v11, v12}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    goto :goto_33f

    .line 1742
    :cond_33c
    invoke-virtual {v5, v7}, Lcom/android/server/pm/PackageManagerService$InstallParams;->setReturnCode(I)V

    .line 1746
    :goto_33f
    const-string/jumbo v7, "verification"

    invoke-static {v8, v9, v7, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1749
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleVerificationFinished()V

    .line 1750
    .end local v5  # "params":Lcom/android/server/pm/PackageManagerService$InstallParams;
    .end local v6  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v10  # "originUri":Landroid/net/Uri;
    goto/16 :goto_5eb

    .line 1667
    .end local v0  # "verificationId":I
    .end local v3  # "state":Lcom/android/server/pm/PackageVerificationState;
    .end local v4  # "response":Lcom/android/server/pm/PackageVerificationResponse;
    :pswitch_34a  #0xe
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1668
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1669
    :try_start_352
    invoke-virtual {v1, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1670
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_377

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1671
    .local v5, "userId":I
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v6, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1672
    .end local v5  # "userId":I
    goto :goto_35f

    .line 1673
    :cond_377
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1674
    monitor-exit v3
    :try_end_381
    .catchall {:try_start_352 .. :try_end_381} :catchall_386

    .line 1675
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1676
    goto/16 :goto_5eb

    .line 1674
    :catchall_386
    move-exception v0

    :try_start_387
    monitor-exit v3
    :try_end_388
    .catchall {:try_start_387 .. :try_end_388} :catchall_386

    throw v0

    .line 1657
    :pswitch_389  #0xd
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1658
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 1659
    const/16 v0, 0xd

    :try_start_393
    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1660
    invoke-virtual {v1, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1661
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1662
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1663
    monitor-exit v3
    :try_end_3aa
    .catchall {:try_start_393 .. :try_end_3aa} :catchall_3af

    .line 1664
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1665
    goto/16 :goto_5eb

    .line 1663
    :catchall_3af
    move-exception v0

    :try_start_3b0
    monitor-exit v3
    :try_end_3b1
    .catchall {:try_start_3b0 .. :try_end_3b1} :catchall_3af

    throw v0

    .line 1578
    :cond_3b2
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_3ce

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling post-install for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "PackageManager"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    :cond_3ce
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 1581
    .local v0, "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    iget v3, v2, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_3e1

    move/from16 v17, v6

    goto :goto_3e3

    :cond_3e1
    move/from16 v17, v5

    .line 1582
    .local v17, "didRestore":Z
    :goto_3e3
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 1584
    if-eqz v0, :cond_3f9

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_3f9

    .line 1585
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_4d7

    .line 1586
    :cond_3f9
    if-eqz v0, :cond_4b9

    .line 1587
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 1588
    .local v3, "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 1590
    .local v4, "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v7, v7, 0x100

    if-eqz v7, :cond_407

    move v12, v6

    goto :goto_408

    :cond_407
    move v12, v5

    .line 1592
    .local v12, "grantPermissions":Z
    :goto_408
    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v7, v7, 0x1000

    if-nez v7, :cond_410

    move v13, v6

    goto :goto_411

    :cond_410
    move v13, v5

    .line 1594
    .local v13, "killApp":Z
    :goto_411
    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v10, 0x10000

    and-int/2addr v7, v10

    if-eqz v7, :cond_41a

    move v14, v6

    goto :goto_41b

    :cond_41a
    move v14, v5

    .line 1596
    .local v14, "virtualPreload":Z
    :goto_41b
    iget-object v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    .line 1597
    .local v7, "grantedPermissions":[Ljava/lang/String;
    iget v10, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v11, 0x400000

    and-int/2addr v10, v11

    if-eqz v10, :cond_42f

    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v10, :cond_42f

    .line 1600
    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v16, v10

    goto :goto_433

    .line 1601
    :cond_42f
    iget-object v10, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->whitelistedRestrictedPermissions:Ljava/util/List;

    move-object/from16 v16, v10

    :goto_433
    nop

    .line 1604
    .local v16, "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    iget-object v11, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v19, v11

    move-object v11, v4

    move-object/from16 v18, v15

    move-object v15, v7

    invoke-static/range {v10 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V

    .line 1610
    iget-object v10, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v10, :cond_44e

    .line 1611
    iget-object v5, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    goto :goto_44f

    :cond_44e
    nop

    .line 1612
    .local v5, "childCount":I
    :goto_44f
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_450
    if-ge v10, v5, :cond_47e

    .line 1613
    iget-object v11, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v11, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 1614
    .local v11, "childRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    iget-object v15, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v25, 0x0

    iget-object v6, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v18, v15

    move-object/from16 v19, v11

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v22, v14

    move-object/from16 v23, v7

    move-object/from16 v24, v16

    move-object/from16 v26, v6

    move-object/from16 v27, v8

    invoke-static/range {v18 .. v27}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V

    .line 1612
    .end local v11  # "childRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    const-wide/32 v8, 0x40000

    goto :goto_450

    .line 1621
    .end local v10  # "i":I
    :cond_47e
    iget-object v6, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    if-eqz v6, :cond_48c

    .line 1622
    iget-object v6, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    iget v8, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    const-wide/32 v9, 0x40000

    invoke-static {v9, v10, v6, v8}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1626
    :cond_48c
    iget v6, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->returnCode:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_4d6

    .line 1627
    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.google.android.installpackageswhitelist.gts"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a4

    .line 1628
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v8}, Lcom/android/server/pm/PackageManagerService;->access$502(Lcom/android/server/pm/PackageManagerService;Z)Z

    .line 1630
    :cond_4a4
    iget-object v6, v4, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v8, "com.google.android.permission.gts"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4d6

    .line 1631
    iget-object v6, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v8, 0x1

    invoke-static {v6, v8}, Lcom/android/server/pm/PackageManagerService;->access$602(Lcom/android/server/pm/PackageManagerService;Z)Z

    goto :goto_4d6

    .line 1635
    .end local v3  # "args":Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .end local v4  # "parentRes":Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;
    .end local v5  # "childCount":I
    .end local v7  # "grantedPermissions":[Ljava/lang/String;
    .end local v12  # "grantPermissions":Z
    .end local v13  # "killApp":Z
    .end local v14  # "virtualPreload":Z
    .end local v16  # "whitelistedRestrictedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4b9
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v3, :cond_4d6

    .line 1637
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nothing to do for post-install token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d7

    .line 1635
    :cond_4d6
    :goto_4d6
    nop

    .line 1640
    :goto_4d7
    iget v3, v2, Landroid/os/Message;->arg1:I

    const-string/jumbo v4, "postInstall"

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6, v4, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1641
    .end local v0  # "data":Lcom/android/server/pm/PackageManagerService$PostInstallData;
    .end local v17  # "didRestore":Z
    goto/16 :goto_5eb

    .line 1503
    :cond_4e4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1506
    .local v0, "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    if-eqz v0, :cond_512

    instance-of v3, v0, Lcom/android/server/pm/PackageManagerService$InstallParams;

    if-eqz v3, :cond_512

    .line 1507
    move-object v3, v0

    check-cast v3, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 1508
    .local v3, "installParams":Lcom/android/server/pm/PackageManagerService$InstallParams;
    const/4 v4, 0x0

    .line 1509
    .local v4, "stagedDir":Ljava/io/File;
    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    if-eqz v5, :cond_4fa

    .line 1510
    iget-object v5, v3, Lcom/android/server/pm/PackageManagerService$InstallParams;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v4, v5, Lcom/android/server/pm/PackageManagerService$OriginInfo;->file:Ljava/io/File;

    .line 1512
    :cond_4fa
    const/4 v5, 0x0

    .line 1513
    .local v5, "intercepted":Z
    iget-object v6, v3, Lcom/android/server/pm/PackageManagerService$InstallParams;->verificationInfo:Lcom/android/server/pm/PackageManagerService$VerificationInfo;

    .line 1514
    .local v6, "verificationInfo":Lcom/android/server/pm/PackageManagerService$VerificationInfo;
    if-eqz v6, :cond_50f

    iget v7, v6, Lcom/android/server/pm/PackageManagerService$VerificationInfo;->installerUid:I

    if-eqz v7, :cond_50f

    .line 1515
    invoke-static {}, Lcom/android/server/hips/intercept/UsbInstallInterception;->getInstance()Lcom/android/server/hips/intercept/UsbInstallInterception;

    move-result-object v7

    iget-object v8, v3, Lcom/android/server/pm/PackageManagerService$InstallParams;->observer:Landroid/content/pm/IPackageInstallObserver2;

    iget v9, v3, Lcom/android/server/pm/PackageManagerService$InstallParams;->installFlags:I

    invoke-virtual {v7, v4, v8, v9}, Lcom/android/server/hips/intercept/UsbInstallInterception;->interceptForUsbInstall(Ljava/io/File;Landroid/content/pm/IPackageInstallObserver2;I)Z

    move-result v5

    .line 1518
    :cond_50f
    if-eqz v5, :cond_512

    .line 1519
    return-void

    .line 1524
    .end local v3  # "installParams":Lcom/android/server/pm/PackageManagerService$InstallParams;
    .end local v4  # "stagedDir":Ljava/io/File;
    .end local v5  # "intercepted":Z
    .end local v6  # "verificationInfo":Lcom/android/server/pm/PackageManagerService$VerificationInfo;
    :cond_512
    if-eqz v0, :cond_5eb

    .line 1525
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v3, :cond_52f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init_copy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_52f
    nop

    .line 1527
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    .line 1526
    const-string/jumbo v4, "queueInstall"

    const-wide/32 v5, 0x40000

    invoke-static {v5, v6, v4, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1528
    const-string/jumbo v3, "startCopy"

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1529
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()V

    .line 1530
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_5eb

    .line 1537
    .end local v0  # "params":Lcom/android/server/pm/PackageManagerService$HandlerParams;
    :cond_54b
    const/4 v6, 0x0

    .line 1539
    .local v6, "size":I
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1540
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v0, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v7

    .line 1541
    :try_start_554
    iget-object v0, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I

    move-result v0

    move v6, v0

    .line 1542
    if-gtz v6, :cond_561

    .line 1544
    monitor-exit v7

    return-void

    .line 1546
    :cond_561
    new-array v0, v6, [Ljava/lang/String;

    .line 1547
    .local v0, "packages":[Ljava/lang/String;
    new-array v8, v6, [Ljava/util/ArrayList;

    .line 1548
    .local v8, "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-array v9, v6, [I

    .line 1549
    .local v9, "uids":[I
    const/4 v10, 0x0

    .line 1551
    .restart local v10  # "i":I
    nop

    .local v5, "n":I
    :goto_569
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v11}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v11

    if-ge v5, v11, :cond_5cc

    .line 1552
    iget-object v11, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v11, v5}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v11

    .line 1553
    .local v11, "packageUserId":I
    iget-object v12, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    .line 1554
    invoke-virtual {v12, v11}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    move-result-object v12

    .line 1555
    invoke-virtual {v12}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1556
    .local v12, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :goto_58b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5c9

    if-ge v10, v6, :cond_5c9

    .line 1557
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 1558
    .local v13, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    aput-object v14, v0, v10

    .line 1559
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    aput-object v14, v8, v10

    .line 1560
    iget-object v14, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v14, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v14, v14, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 1561
    .local v14, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v14, :cond_5c2

    .line 1562
    iget v15, v14, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v11, v15}, Landroid/os/UserHandle;->getUid(II)I

    move-result v15

    goto :goto_5c3

    .line 1563
    :cond_5c2
    move v15, v3

    :goto_5c3
    aput v15, v9, v10

    .line 1564
    nop

    .end local v13  # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v14  # "ps":Lcom/android/server/pm/PackageSetting;
    add-int/lit8 v10, v10, 0x1

    .line 1565
    goto :goto_58b

    .line 1551
    .end local v11  # "packageUserId":I
    .end local v12  # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    :cond_5c9
    add-int/lit8 v5, v5, 0x1

    goto :goto_569

    .line 1567
    .end local v5  # "n":I
    :cond_5cc
    move v6, v10

    .line 1568
    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V

    .line 1569
    .end local v10  # "i":I
    monitor-exit v7
    :try_end_5d5
    .catchall {:try_start_554 .. :try_end_5d5} :catchall_5ec

    .line 1571
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5d6
    if-ge v3, v6, :cond_5e7

    .line 1572
    iget-object v5, v1, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v7, v0, v3

    aget-object v10, v8, v3

    aget v11, v9, v3

    const/4 v12, 0x1

    invoke-static {v5, v7, v12, v10, v11}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 1571
    add-int/lit8 v3, v3, 0x1

    goto :goto_5d6

    .line 1574
    .end local v3  # "i":I
    :cond_5e7
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1575
    nop

    .line 1863
    .end local v0  # "packages":[Ljava/lang/String;
    .end local v6  # "size":I
    .end local v8  # "components":[Ljava/util/ArrayList;, "[Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9  # "uids":[I
    :cond_5eb
    :goto_5eb
    return-void

    .line 1569
    .restart local v6  # "size":I
    :catchall_5ec
    move-exception v0

    :try_start_5ed
    monitor-exit v7
    :try_end_5ee
    .catchall {:try_start_5ed .. :try_end_5ee} :catchall_5ec

    throw v0

    nop

    :pswitch_data_5f0
    .packed-switch 0xd
        :pswitch_389  #0000000d
        :pswitch_34a  #0000000e
        :pswitch_2d7  #0000000f
        :pswitch_253  #00000010
        :pswitch_240  #00000011
        :pswitch_164  #00000012
        :pswitch_145  #00000013
        :pswitch_12c  #00000014
        :pswitch_b4  #00000015
        :pswitch_41  #00000016
        :pswitch_2d  #00000017
        :pswitch_20  #00000018
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 1494
    const/16 v0, 0xa

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_a

    .line 1496
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1497
    nop

    .line 1498
    return-void

    .line 1496
    :catchall_a
    move-exception v1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw v1
.end method
