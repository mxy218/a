.class final Lcom/android/server/am/ActivityManagerService$MainHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .registers 4

    .line 1670
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1671
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1672
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 22

    .line 1676
    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_398

    const/16 v3, 0x14

    if-eq v2, v3, :cond_37e

    const/16 v3, 0x16

    if-eq v2, v3, :cond_34d

    const/16 v3, 0x21

    if-eq v2, v3, :cond_340

    const/16 v3, 0x29

    if-eq v2, v3, :cond_326

    const/16 v3, 0x3f

    if-eq v2, v3, :cond_30d

    const/16 v3, 0x42

    if-eq v2, v3, :cond_300

    const/16 v3, 0x45

    if-eq v2, v3, :cond_2e8

    const/16 v3, 0x47

    if-eq v2, v3, :cond_2cb

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2be

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-eq v2, v3, :cond_269

    packed-switch v2, :pswitch_data_3b0

    const/4 v3, 0x0

    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_3ba

    packed-switch v2, :pswitch_data_3c4

    goto/16 :goto_3a8

    .line 1892
    :pswitch_3f  #0x3a
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    .line 1893
    goto/16 :goto_3a8

    .line 1721
    :pswitch_46  #0x39
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1722
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_4d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1723
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1724
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_4d .. :try_end_56} :catchall_5b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1725
    goto/16 :goto_3a8

    .line 1724
    :catchall_5b
    move-exception v0

    :try_start_5c
    monitor-exit v2
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5b

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1881
    :pswitch_61  #0x38
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/IUiAutomationConnection;

    .line 1883
    :try_start_65
    invoke-interface {v0}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_68} :catch_69

    .line 1886
    goto :goto_71

    .line 1884
    :catch_69
    move-exception v0

    .line 1885
    const-string v0, "ActivityManager"

    const-string v2, "Error shutting down UiAutomationConnection"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    :goto_71
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v5}, Lcom/android/server/am/ActivityManagerService;->access$702(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 1890
    goto/16 :goto_3a8

    .line 1868
    :pswitch_78  #0x33
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    const/4 v10, 0x3

    .line 1872
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 1868
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1873
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_90
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1874
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    .line 1875
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 1876
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 1877
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput v3, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 1878
    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_90 .. :try_end_a5} :catchall_aa

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1879
    goto/16 :goto_3a8

    .line 1878
    :catchall_aa
    move-exception v0

    :try_start_ab
    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1792
    :pswitch_b0  #0x32
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_b3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1793
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 1794
    const/16 v6, 0x3e8

    if-ne v0, v6, :cond_ca

    .line 1795
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x1040085

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_ce

    .line 1797
    :cond_ca
    iget-object v7, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 1799
    :goto_ce
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8, v7, v0}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 1800
    if-nez v8, :cond_e4

    .line 1801
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v8, v7, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 1803
    :cond_e4
    if-eqz v8, :cond_f3

    .line 1804
    iget-object v3, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 1805
    iget-object v3, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    goto :goto_f6

    .line 1807
    :cond_f3
    const-wide/16 v9, 0x0

    .line 1808
    nop

    .line 1810
    :goto_f6
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v8}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v8

    .line 1811
    monitor-exit v2
    :try_end_fd
    .catchall {:try_start_b3 .. :try_end_fd} :catchall_1e1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1812
    if-nez v7, :cond_103

    .line 1813
    return-void

    .line 1819
    :cond_103
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v11

    .line 1820
    if-nez v11, :cond_10a

    .line 1821
    return-void

    .line 1824
    :cond_10a
    if-eqz v8, :cond_110

    .line 1825
    const v2, 0x104020d

    goto :goto_113

    :cond_110
    const v2, 0x104020b

    .line 1826
    :goto_113
    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-array v13, v4, [Ljava/lang/Object;

    aput-object v7, v13, v5

    invoke-virtual {v12, v2, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1828
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 1829
    const-string v13, "com.android.server.am.DELETE_DUMPHEAP"

    invoke-virtual {v12, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1830
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1831
    const-class v14, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual {v14}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "android"

    invoke-virtual {v13, v15, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1832
    const-string/jumbo v14, "process"

    invoke-virtual {v13, v14, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1833
    const-string/jumbo v7, "size"

    invoke-virtual {v13, v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1834
    const-string v7, "is_user_initiated"

    invoke-virtual {v13, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1835
    if-ne v0, v6, :cond_14e

    move v6, v4

    goto :goto_14f

    :cond_14e
    move v6, v5

    :goto_14f
    const-string v7, "is_system_process"

    invoke-virtual {v13, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1836
    if-eqz v3, :cond_15b

    .line 1837
    const-string v6, "direct_launch"

    invoke-virtual {v13, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1839
    :cond_15b
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1840
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v7, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    invoke-direct {v3, v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x10807e2

    .line 1842
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1843
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1844
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x106001c

    .line 1845
    invoke-virtual {v4, v6}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1847
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104020c

    .line 1849
    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1848
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v15, 0x0

    const/high16 v17, 0x10000000

    const/16 v18, 0x0

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 1850
    move-object/from16 v16, v13

    move-object/from16 v19, v3

    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1853
    invoke-static {v1, v5, v12, v5, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1855
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v16

    .line 1858
    :try_start_1c7
    const-string v12, "android"

    const-string v13, "android"

    const/4 v14, 0x0

    const/16 v15, 0xc

    move/from16 v17, v0

    invoke-interface/range {v11 .. v17}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_1d3
    .catch Ljava/lang/RuntimeException; {:try_start_1c7 .. :try_end_1d3} :catch_1d6
    .catch Landroid/os/RemoteException; {:try_start_1c7 .. :try_end_1d3} :catch_1d4

    goto :goto_1de

    .line 1864
    :catch_1d4
    move-exception v0

    goto :goto_1df

    .line 1861
    :catch_1d6
    move-exception v0

    .line 1862
    const-string v1, "ActivityManager"

    const-string v2, "Error showing notification for dump heap"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1865
    :goto_1de
    nop

    .line 1866
    :goto_1df
    goto/16 :goto_3a8

    .line 1811
    :catchall_1e1
    move-exception v0

    :try_start_1e2
    monitor-exit v2
    :try_end_1e3
    .catchall {:try_start_1e2 .. :try_end_1e3} :catchall_1e1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1770
    :pswitch_1e7  #0x31
    iget v2, v0, Landroid/os/Message;->arg1:I

    .line 1771
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, [B

    .line 1773
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v4

    .line 1774
    nop

    :goto_1f4
    :try_start_1f4
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v0

    if-ge v5, v0, :cond_218

    .line 1775
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 1776
    iget v6, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v6, v2, :cond_215

    iget-object v6, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_20c
    .catchall {:try_start_1f4 .. :try_end_20c} :catchall_21b

    if-eqz v6, :cond_215

    .line 1778
    :try_start_20e
    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v3}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_213
    .catch Landroid/os/RemoteException; {:try_start_20e .. :try_end_213} :catch_214
    .catchall {:try_start_20e .. :try_end_213} :catchall_21b

    .line 1780
    goto :goto_215

    .line 1779
    :catch_214
    move-exception v0

    .line 1774
    :cond_215
    :goto_215
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f4

    .line 1783
    :cond_218
    :try_start_218
    monitor-exit v4

    .line 1784
    goto/16 :goto_3a8

    .line 1783
    :catchall_21b
    move-exception v0

    monitor-exit v4
    :try_end_21d
    .catchall {:try_start_218 .. :try_end_21d} :catchall_21b

    throw v0

    .line 1712
    :pswitch_21e  #0x1d
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->setAllHttpProxy()V

    .line 1713
    goto/16 :goto_3a8

    .line 1707
    :pswitch_227  #0x1c
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_22a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1708
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->clearAllDnsCacheLocked()V

    .line 1709
    monitor-exit v2
    :try_end_235
    .catchall {:try_start_22a .. :try_end_235} :catchall_23a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1710
    goto/16 :goto_3a8

    .line 1709
    :catchall_23a
    move-exception v0

    :try_start_23b
    monitor-exit v2
    :try_end_23c
    .catchall {:try_start_23b .. :try_end_23c} :catchall_23a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1744
    :pswitch_240  #0x1b
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_243
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1745
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked()V

    .line 1746
    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 1747
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1748
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1749
    monitor-exit v2
    :try_end_25e
    .catchall {:try_start_243 .. :try_end_25e} :catchall_263

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1750
    goto/16 :goto_3a8

    .line 1749
    :catchall_263
    move-exception v0

    :try_start_264
    monitor-exit v2
    :try_end_265
    .catchall {:try_start_264 .. :try_end_265} :catchall_263

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1693
    :cond_269
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_26c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1694
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    move v3, v0

    :goto_27b
    if-ltz v3, :cond_2b2

    .line 1695
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1696
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_28c
    .catchall {:try_start_26c .. :try_end_28c} :catchall_2b8

    if-eqz v0, :cond_2af

    .line 1698
    :try_start_28e
    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_293
    .catch Landroid/os/RemoteException; {:try_start_28e .. :try_end_293} :catch_294
    .catchall {:try_start_28e .. :try_end_293} :catchall_2b8

    .line 1701
    goto :goto_2af

    .line 1699
    :catch_294
    move-exception v0

    .line 1700
    :try_start_295
    const-string v0, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to update time zone for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    :cond_2af
    :goto_2af
    add-int/lit8 v3, v3, -0x1

    goto :goto_27b

    .line 1704
    :cond_2b2
    monitor-exit v2
    :try_end_2b3
    .catchall {:try_start_295 .. :try_end_2b3} :catchall_2b8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1705
    goto/16 :goto_3a8

    .line 1704
    :catchall_2b8
    move-exception v0

    :try_start_2b9
    monitor-exit v2
    :try_end_2ba
    .catchall {:try_start_2b9 .. :try_end_2ba} :catchall_2b8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1683
    :cond_2be
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 1684
    goto/16 :goto_3a8

    .line 1738
    :cond_2cb
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_2ce
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1739
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AppZygote;

    .line 1740
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;)V

    .line 1741
    monitor-exit v2
    :try_end_2dd
    .catchall {:try_start_2ce .. :try_end_2dd} :catchall_2e2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1742
    goto/16 :goto_3a8

    .line 1741
    :catchall_2e2
    move-exception v0

    :try_start_2e3
    monitor-exit v2
    :try_end_2e4
    .catchall {:try_start_2e3 .. :try_end_2e4} :catchall_2e2

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1689
    :cond_2e8
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1690
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v3, "servicerecord"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1689
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/ActiveServices;->serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/CharSequence;)V

    .line 1691
    goto/16 :goto_3a8

    .line 1686
    :cond_300
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 1687
    goto/16 :goto_3a8

    .line 1895
    :cond_30d
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_310
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1896
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->handleAllTrustStorageUpdateLocked()V

    .line 1897
    monitor-exit v2
    :try_end_31b
    .catchall {:try_start_310 .. :try_end_31b} :catchall_320

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_3a8

    :catchall_320
    move-exception v0

    :try_start_321
    monitor-exit v2
    :try_end_322
    .catchall {:try_start_321 .. :try_end_322} :catchall_320

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1764
    :cond_326
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_329
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1765
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v0, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessList;->updateAllTimePrefsLocked(I)V

    .line 1766
    monitor-exit v2
    :try_end_336
    .catchall {:try_start_329 .. :try_end_336} :catchall_33a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1767
    goto :goto_3a8

    .line 1766
    :catchall_33a
    move-exception v0

    :try_start_33b
    monitor-exit v2
    :try_end_33c
    .catchall {:try_start_33b .. :try_end_33c} :catchall_33a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1752
    :cond_340
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 1753
    new-instance v2, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    invoke-direct {v2, v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 1758
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1759
    goto :goto_3a8

    .line 1727
    :cond_34d
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_350
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1728
    iget v5, v0, Landroid/os/Message;->arg1:I

    .line 1729
    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 1730
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1731
    const-string/jumbo v3, "pkg"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1732
    const-string/jumbo v3, "reason"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1733
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1735
    monitor-exit v2
    :try_end_374
    .catchall {:try_start_350 .. :try_end_374} :catchall_378

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1736
    goto :goto_3a8

    .line 1735
    :catchall_378
    move-exception v0

    :try_start_379
    monitor-exit v2
    :try_end_37a
    .catchall {:try_start_379 .. :try_end_37a} :catchall_378

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1715
    :cond_37e
    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1716
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_385
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1717
    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v1, v0}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1718
    monitor-exit v2
    :try_end_38e
    .catchall {:try_start_385 .. :try_end_38e} :catchall_392

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1719
    goto :goto_3a8

    .line 1718
    :catchall_392
    move-exception v0

    :try_start_393
    monitor-exit v2
    :try_end_394
    .catchall {:try_start_393 .. :try_end_394} :catchall_392

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1678
    :cond_398
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_39b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1679
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1680
    monitor-exit v2
    :try_end_3a4
    .catchall {:try_start_39b .. :try_end_3a4} :catchall_3a9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1681
    nop

    .line 1900
    :goto_3a8
    return-void

    .line 1680
    :catchall_3a9
    move-exception v0

    :try_start_3aa
    monitor-exit v2
    :try_end_3ab
    .catchall {:try_start_3aa .. :try_end_3ab} :catchall_3a9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    nop

    :pswitch_data_3b0
    .packed-switch 0x1b
        :pswitch_240  #0000001b
        :pswitch_227  #0000001c
        :pswitch_21e  #0000001d
    .end packed-switch

    :pswitch_data_3ba
    .packed-switch 0x31
        :pswitch_1e7  #00000031
        :pswitch_b0  #00000032
        :pswitch_78  #00000033
    .end packed-switch

    :pswitch_data_3c4
    .packed-switch 0x38
        :pswitch_61  #00000038
        :pswitch_46  #00000039
        :pswitch_3f  #0000003a
    .end packed-switch
.end method
