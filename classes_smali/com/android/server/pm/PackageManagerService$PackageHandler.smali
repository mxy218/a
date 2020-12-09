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

    .line 1419
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    .line 1420
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1421
    return-void
.end method


# virtual methods
.method doHandleMessage(Landroid/os/Message;)V
    .registers 32

    .line 1432
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/os/Message;->what:I

    const/4 v3, -0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v2, v6, :cond_406

    const/4 v7, 0x5

    const-wide/32 v8, 0x40000

    if-eq v2, v7, :cond_3e7

    const/16 v7, 0x9

    if-eq v2, v7, :cond_322

    const/16 v7, -0x16

    const/16 v10, 0xe

    packed-switch v2, :pswitch_data_4a8

    goto/16 :goto_4a4

    .line 1552
    :pswitch_20  #0x18
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 1553
    if-eqz v1, :cond_2b

    .line 1554
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerService;->access$500(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;)V

    .line 1556
    :cond_2b
    goto/16 :goto_4a4

    .line 1544
    :pswitch_2d  #0x17
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1545
    :try_start_32
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 1546
    if-eqz v0, :cond_3b

    .line 1547
    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->doPostDeleteLI(Z)Z

    .line 1549
    :cond_3b
    monitor-exit v2

    .line 1550
    goto/16 :goto_4a4

    .line 1549
    :catchall_3e
    move-exception v0

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_3e

    throw v0

    .line 1738
    :pswitch_41  #0x16
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1739
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 1740
    if-eqz v2, :cond_4a4

    .line 1741
    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v3

    .line 1742
    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 1744
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enable rollback timed out for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PackageManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1747
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Continuing with installation of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    const-string v3, "enable_rollback"

    invoke-static {v8, v9, v3, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1750
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleRollbackEnabled()V

    .line 1751
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CANCEL_ENABLE_ROLLBACK"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1753
    const-string v3, "android.content.pm.extra.ENABLE_ROLLBACK_TOKEN"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1756
    const/high16 v1, 0x4000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1758
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string v3, "android.permission.PACKAGE_ROLLBACK_AGENT"

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 1760
    goto/16 :goto_4a4

    .line 1713
    :pswitch_b4  #0x15
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1714
    iget v1, v1, Landroid/os/Message;->arg2:I

    .line 1715
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageManagerService$InstallParams;

    .line 1716
    if-nez v3, :cond_e1

    .line 1717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid rollback enabled token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " received"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1719
    goto/16 :goto_4a4

    .line 1722
    :cond_e1
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mPendingEnableRollback:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1724
    if-eq v1, v6, :cond_122

    .line 1725
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    .line 1726
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 1727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to enable rollback for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "PackageManager"

    invoke-static {v4, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Continuing with installation of "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    :cond_122
    const-string v0, "enable_rollback"

    invoke-static {v8, v9, v0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1734
    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleRollbackEnabled()V

    .line 1735
    goto/16 :goto_4a4

    .line 1705
    :pswitch_12c  #0x14
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mInstantAppResolverConnection:Lcom/android/server/pm/InstantAppResolverConnection;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/InstantAppRequest;

    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mInstantAppInstallerActivity:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-static {v2, v3, v1, v4, v0}, Lcom/android/server/pm/InstantAppResolver;->doInstantAppResolutionPhaseTwo(Landroid/content/Context;Lcom/android/server/pm/InstantAppResolverConnection;Landroid/content/pm/InstantAppRequest;Landroid/content/pm/ActivityInfo;Landroid/os/Handler;)V

    .line 1710
    goto/16 :goto_4a4

    .line 1579
    :pswitch_145  #0x13
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1580
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1581
    const/16 v3, 0x13

    :try_start_14f
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1582
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    .line 1583
    monitor-exit v2
    :try_end_15c
    .catchall {:try_start_14f .. :try_end_15c} :catchall_161

    .line 1584
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1585
    goto/16 :goto_4a4

    .line 1583
    :catchall_161
    move-exception v0

    :try_start_162
    monitor-exit v2
    :try_end_163
    .catchall {:try_start_162 .. :try_end_163} :catchall_161

    throw v0

    .line 1662
    :pswitch_164  #0x12
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1664
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mIntentFilterVerificationStates:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/IntentFilterVerificationState;

    .line 1666
    if-nez v3, :cond_18f

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid IntentFilter verification token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " received"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    goto/16 :goto_4a4

    .line 1672
    :cond_18f
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->getUserId()I

    .line 1678
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/IntentFilterVerificationResponse;

    .line 1681
    iget v4, v1, Lcom/android/server/pm/IntentFilterVerificationResponse;->callerUid:I

    iget v5, v1, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/IntentFilterVerificationState;->setVerifierResponse(II)Z

    .line 1689
    iget v1, v1, Lcom/android/server/pm/IntentFilterVerificationResponse;->code:I

    .line 1694
    invoke-virtual {v3}, Lcom/android/server/pm/IntentFilterVerificationState;->isVerificationComplete()Z

    move-result v1

    if-eqz v1, :cond_4a4

    .line 1695
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$1100(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/pm/PackageManagerService$IntentFilterVerifier;->receiveVerificationResponse(I)V

    goto/16 :goto_4a4

    .line 1656
    :pswitch_1b0  #0x11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;

    .line 1657
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v2, v1, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->userId:I

    iget v3, v1, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->verifierUid:I

    iget-boolean v4, v1, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->replacing:Z

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService$IFVerificationParams;->pkg:Landroid/content/pm/PackageParser$Package;

    invoke-static {v0, v2, v3, v4, v1}, Lcom/android/server/pm/PackageManagerService;->access$1000(Lcom/android/server/pm/PackageManagerService;IIZLandroid/content/pm/PackageParser$Package;)V

    .line 1659
    goto/16 :goto_4a4

    .line 1587
    :pswitch_1c3  #0x10
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1588
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageVerificationState;

    .line 1590
    if-eqz v2, :cond_4a4

    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->timeoutExtended()Z

    move-result v4

    if-nez v4, :cond_4a4

    .line 1591
    invoke-virtual {v2}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v4

    .line 1592
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v5

    .line 1593
    iget-object v10, v5, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v10, v10, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v10}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    .line 1595
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Verification timed out for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "PackageManager"

    invoke-static {v12, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v11, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v11, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1598
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 1599
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v11, v5}, Lcom/android/server/pm/PackageManagerService;->access$800(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)I

    move-result v11

    if-ne v11, v6, :cond_234

    .line 1601
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Continuing with installation of "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v7, "PackageManager"

    invoke-static {v7, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v7, 0x2

    invoke-virtual {v2, v3, v7}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1604
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v1, v10, v6, v5}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    goto :goto_23c

    .line 1607
    :cond_234
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v1, v10, v3, v5}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    .line 1609
    invoke-virtual {v4, v7}, Lcom/android/server/pm/PackageManagerService$InstallParams;->setReturnCode(I)V

    .line 1613
    :goto_23c
    const-string/jumbo v0, "verification"

    invoke-static {v8, v9, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1615
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleVerificationFinished()V

    .line 1616
    goto/16 :goto_4a4

    .line 1620
    :pswitch_247  #0xf
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 1622
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageVerificationState;

    .line 1623
    if-nez v3, :cond_272

    .line 1624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid verification token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " received"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    goto/16 :goto_4a4

    .line 1628
    :cond_272
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageVerificationResponse;

    .line 1630
    iget v4, v1, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    iget v5, v1, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PackageVerificationState;->setVerifierResponse(II)Z

    .line 1632
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isVerificationComplete()Z

    move-result v4

    if-eqz v4, :cond_4a4

    .line 1633
    iget-object v4, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mPendingVerification:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1635
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->getInstallParams()Lcom/android/server/pm/PackageManagerService$InstallParams;

    move-result-object v4

    .line 1636
    invoke-static {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->access$700(Lcom/android/server/pm/PackageManagerService$InstallParams;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v5

    .line 1637
    iget-object v6, v5, Lcom/android/server/pm/PackageManagerService$InstallArgs;->origin:Lcom/android/server/pm/PackageManagerService$OriginInfo;

    iget-object v6, v6, Lcom/android/server/pm/PackageManagerService$OriginInfo;->resolvedFile:Ljava/io/File;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    .line 1639
    invoke-virtual {v3}, Lcom/android/server/pm/PackageVerificationState;->isInstallAllowed()Z

    move-result v3

    if-eqz v3, :cond_2ac

    .line 1640
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget v1, v1, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    .line 1641
    invoke-virtual {v5}, Lcom/android/server/pm/PackageManagerService$InstallArgs;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 1640
    invoke-static {v0, v2, v6, v1, v3}, Lcom/android/server/pm/PackageManagerService;->access$900(Lcom/android/server/pm/PackageManagerService;ILandroid/net/Uri;ILandroid/os/UserHandle;)V

    goto :goto_2af

    .line 1643
    :cond_2ac
    invoke-virtual {v4, v7}, Lcom/android/server/pm/PackageManagerService$InstallParams;->setReturnCode(I)V

    .line 1647
    :goto_2af
    const-string/jumbo v0, "verification"

    invoke-static {v8, v9, v0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1650
    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService$InstallParams;->handleVerificationFinished()V

    .line 1651
    goto/16 :goto_4a4

    .line 1568
    :pswitch_2ba  #0xe
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1569
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1570
    :try_start_2c2
    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1571
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v2}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2cf
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1572
    iget-object v5, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v5, v3}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    .line 1573
    goto :goto_2cf

    .line 1574
    :cond_2e7
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1575
    monitor-exit v1
    :try_end_2f1
    .catchall {:try_start_2c2 .. :try_end_2f1} :catchall_2f6

    .line 1576
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1577
    goto/16 :goto_4a4

    .line 1575
    :catchall_2f6
    move-exception v0

    :try_start_2f7
    monitor-exit v1
    :try_end_2f8
    .catchall {:try_start_2f7 .. :try_end_2f8} :catchall_2f6

    throw v0

    .line 1558
    :pswitch_2f9  #0xd
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1559
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1560
    const/16 v1, 0xd

    :try_start_303
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1561
    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->removeMessages(I)V

    .line 1562
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->writeLPr()V

    .line 1563
    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->access$600(Lcom/android/server/pm/PackageManagerService;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1564
    monitor-exit v2
    :try_end_31a
    .catchall {:try_start_303 .. :try_end_31a} :catchall_31f

    .line 1565
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1566
    goto/16 :goto_4a4

    .line 1564
    :catchall_31f
    move-exception v0

    :try_start_320
    monitor-exit v2
    :try_end_321
    .catchall {:try_start_320 .. :try_end_321} :catchall_31f

    throw v0

    .line 1491
    :cond_322
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v3, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;

    .line 1492
    iget v3, v1, Landroid/os/Message;->arg2:I

    if-eqz v3, :cond_335

    move/from16 v17, v6

    goto :goto_337

    :cond_335
    move/from16 v17, v5

    .line 1493
    :goto_337
    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/pm/PackageManagerService;->mRunningInstalls:Landroid/util/SparseArray;

    iget v4, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->delete(I)V

    .line 1495
    if-eqz v2, :cond_34d

    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_34d

    .line 1496
    iget-object v0, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->mPostInstallRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_3dd

    .line 1497
    :cond_34d
    if-eqz v2, :cond_3dd

    .line 1498
    iget-object v3, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->args:Lcom/android/server/pm/PackageManagerService$InstallArgs;

    .line 1499
    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService$PostInstallData;->res:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 1501
    iget v4, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_35b

    move v4, v6

    goto :goto_35c

    :cond_35b
    move v4, v5

    .line 1503
    :goto_35c
    iget v7, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    and-int/lit16 v7, v7, 0x1000

    if-nez v7, :cond_364

    move v7, v6

    goto :goto_365

    :cond_364
    move v7, v5

    .line 1505
    :goto_365
    iget v10, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v11, 0x10000

    and-int/2addr v10, v11

    if-eqz v10, :cond_36d

    goto :goto_36e

    :cond_36d
    move v6, v5

    .line 1507
    :goto_36e
    iget-object v15, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installGrantPermissions:[Ljava/lang/String;

    .line 1508
    iget v10, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installFlags:I

    const/high16 v11, 0x400000

    and-int/2addr v10, v11

    if-eqz v10, :cond_382

    iget-object v10, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v10, :cond_382

    .line 1511
    iget-object v10, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v10, v10, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    move-object/from16 v28, v10

    goto :goto_386

    .line 1512
    :cond_382
    iget-object v10, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->whitelistedRestrictedPermissions:Ljava/util/List;

    move-object/from16 v28, v10

    .line 1515
    :goto_386
    iget-object v10, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v14, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    iget-object v13, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object v11, v2

    move v12, v4

    move-object/from16 v19, v13

    move v13, v7

    move-object/from16 v18, v14

    move v14, v6

    move-object/from16 v29, v15

    move-object/from16 v16, v28

    invoke-static/range {v10 .. v19}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V

    .line 1521
    iget-object v10, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    if-eqz v10, :cond_3a6

    .line 1522
    iget-object v10, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    goto :goto_3a7

    :cond_3a6
    move v10, v5

    .line 1523
    :goto_3a7
    nop

    :goto_3a8
    if-ge v5, v10, :cond_3d2

    .line 1524
    iget-object v11, v2, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;->addedChildPackages:Landroid/util/ArrayMap;

    invoke-virtual {v11, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v19, v11

    check-cast v19, Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    .line 1525
    iget-object v11, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/16 v25, 0x0

    iget-object v12, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->installerPackageName:Ljava/lang/String;

    iget-object v13, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->observer:Landroid/content/pm/IPackageInstallObserver2;

    move-object/from16 v18, v11

    move/from16 v20, v4

    move/from16 v21, v7

    move/from16 v22, v6

    move-object/from16 v23, v29

    move-object/from16 v24, v28

    move-object/from16 v26, v12

    move-object/from16 v27, v13

    invoke-static/range {v18 .. v27}, Lcom/android/server/pm/PackageManagerService;->access$400(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;ZZZ[Ljava/lang/String;Ljava/util/List;ZLjava/lang/String;Landroid/content/pm/IPackageInstallObserver2;)V

    .line 1523
    add-int/lit8 v5, v5, 0x1

    goto :goto_3a8

    .line 1532
    :cond_3d2
    iget-object v0, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    if-eqz v0, :cond_3dd

    .line 1533
    iget-object v0, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceMethod:Ljava/lang/String;

    iget v2, v3, Lcom/android/server/pm/PackageManagerService$InstallArgs;->traceCookie:I

    invoke-static {v8, v9, v0, v2}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1541
    :cond_3dd
    :goto_3dd
    iget v0, v1, Landroid/os/Message;->arg1:I

    const-string/jumbo v1, "postInstall"

    invoke-static {v8, v9, v1, v0}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1542
    goto/16 :goto_4a4

    .line 1434
    :cond_3e7
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/pm/PackageManagerService$HandlerParams;

    .line 1435
    if-eqz v0, :cond_4a4

    .line 1437
    nop

    .line 1438
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 1437
    const-string/jumbo v2, "queueInstall"

    invoke-static {v8, v9, v2, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 1439
    const-string/jumbo v1, "startCopy"

    invoke-static {v8, v9, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1440
    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService$HandlerParams;->startCopy()V

    .line 1441
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    goto/16 :goto_4a4

    .line 1448
    :cond_406
    nop

    .line 1450
    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1451
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mPackages:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 1452
    :try_start_40f
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->size()I

    move-result v2

    .line 1453
    if-gtz v2, :cond_41b

    .line 1455
    monitor-exit v1

    return-void

    .line 1457
    :cond_41b
    new-array v7, v2, [Ljava/lang/String;

    .line 1458
    new-array v8, v2, [Ljava/util/ArrayList;

    .line 1459
    new-array v9, v2, [I

    .line 1460
    nop

    .line 1462
    move v10, v5

    move v11, v10

    :goto_424
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v12}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdCount()I

    move-result v12

    if-ge v10, v12, :cond_486

    .line 1463
    iget-object v12, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v12, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v12, v10}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->userIdAt(I)I

    move-result v12

    .line 1464
    iget-object v13, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v13, v13, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    .line 1465
    invoke-virtual {v13, v12}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->packagesForUserId(I)Landroid/util/ArrayMap;

    move-result-object v13

    .line 1466
    invoke-virtual {v13}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1467
    :goto_446
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_483

    if-ge v11, v2, :cond_483

    .line 1468
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 1469
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    aput-object v15, v7, v11

    .line 1470
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/ArrayList;

    aput-object v15, v8, v11

    .line 1471
    iget-object v15, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v15, v15, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v15, v15, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/PackageSetting;

    .line 1472
    if-eqz v14, :cond_47d

    .line 1473
    iget v14, v14, Lcom/android/server/pm/PackageSetting;->appId:I

    invoke-static {v12, v14}, Landroid/os/UserHandle;->getUid(II)I

    move-result v14

    goto :goto_47e

    .line 1474
    :cond_47d
    move v14, v3

    :goto_47e
    aput v14, v9, v11

    .line 1475
    add-int/lit8 v11, v11, 0x1

    .line 1476
    goto :goto_446

    .line 1462
    :cond_483
    add-int/lit8 v10, v10, 0x1

    goto :goto_424

    .line 1478
    :cond_486
    nop

    .line 1479
    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mPendingBroadcasts:Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService$PendingPackageBroadcasts;->clear()V

    .line 1480
    monitor-exit v1
    :try_end_48f
    .catchall {:try_start_40f .. :try_end_48f} :catchall_4a5

    .line 1482
    nop

    :goto_490
    if-ge v5, v11, :cond_4a0

    .line 1483
    iget-object v1, v0, Lcom/android/server/pm/PackageManagerService$PackageHandler;->this$0:Lcom/android/server/pm/PackageManagerService;

    aget-object v2, v7, v5

    aget-object v3, v8, v5

    aget v10, v9, v5

    invoke-static {v1, v2, v6, v3, v10}, Lcom/android/server/pm/PackageManagerService;->access$300(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ZLjava/util/ArrayList;I)V

    .line 1482
    add-int/lit8 v5, v5, 0x1

    goto :goto_490

    .line 1485
    :cond_4a0
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1486
    nop

    .line 1764
    :cond_4a4
    :goto_4a4
    return-void

    .line 1480
    :catchall_4a5
    move-exception v0

    :try_start_4a6
    monitor-exit v1
    :try_end_4a7
    .catchall {:try_start_4a6 .. :try_end_4a7} :catchall_4a5

    throw v0

    :pswitch_data_4a8
    .packed-switch 0xd
        :pswitch_2f9  #0000000d
        :pswitch_2ba  #0000000e
        :pswitch_247  #0000000f
        :pswitch_1c3  #00000010
        :pswitch_1b0  #00000011
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
    .registers 3

    .line 1425
    const/16 v0, 0xa

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->doHandleMessage(Landroid/os/Message;)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_a

    .line 1427
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1428
    nop

    .line 1429
    return-void

    .line 1427
    :catchall_a
    move-exception p1

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    throw p1
.end method
