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
    .registers 5
    .param p1, "this$0"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 1756
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 1757
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1758
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 26
    .param p1, "msg"  # Landroid/os/Message;

    .line 1762
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3ec

    const/16 v3, 0x14

    if-eq v0, v3, :cond_3d1

    const/16 v3, 0x16

    if-eq v0, v3, :cond_39f

    const/16 v3, 0x21

    if-eq v0, v3, :cond_392

    const/16 v3, 0x29

    if-eq v0, v3, :cond_378

    const/16 v3, 0x3f

    if-eq v0, v3, :cond_35f

    const/16 v3, 0x42

    if-eq v0, v3, :cond_352

    const/16 v3, 0x45

    if-eq v0, v3, :cond_33a

    const/16 v3, 0x47

    if-eq v0, v3, :cond_31d

    const/16 v3, 0xc

    if-eq v0, v3, :cond_310

    const/16 v3, 0xd

    const/4 v4, 0x1

    if-eq v0, v3, :cond_2ba

    packed-switch v0, :pswitch_data_404

    const/4 v3, 0x0

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_40e

    packed-switch v0, :pswitch_data_418

    goto/16 :goto_3fc

    .line 1978
    :pswitch_3f  #0x3a
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->idleUids()V

    .line 1979
    goto/16 :goto_3fc

    .line 1807
    :pswitch_46  #0x39
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1808
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_4e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1809
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1810
    monitor-exit v4
    :try_end_57
    .catchall {:try_start_4e .. :try_end_57} :catchall_5c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1811
    .end local v3  # "app":Lcom/android/server/am/ProcessRecord;
    goto/16 :goto_3fc

    .line 1810
    .restart local v3  # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_5c
    move-exception v0

    :try_start_5d
    monitor-exit v4
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1967
    .end local v3  # "app":Lcom/android/server/am/ProcessRecord;
    :pswitch_62  #0x38
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/app/IUiAutomationConnection;

    .line 1969
    .local v3, "connection":Landroid/app/IUiAutomationConnection;
    :try_start_67
    invoke-interface {v3}, Landroid/app/IUiAutomationConnection;->shutdown()V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 1972
    goto :goto_75

    .line 1970
    :catch_6b
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 1971
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "ActivityManager"

    const-string v6, "Error shutting down UiAutomationConnection"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1975
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_75
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v5}, Lcom/android/server/am/ActivityManagerService;->access$702(Lcom/android/server/am/ActivityManagerService;Z)Z

    .line 1976
    .end local v3  # "connection":Landroid/app/IUiAutomationConnection;
    goto/16 :goto_3fc

    .line 1954
    :pswitch_7c  #0x33
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplicationThread()Landroid/app/ActivityThread$ApplicationThread;

    move-result-object v7

    const/4 v8, 0x0

    sget-object v9, Lcom/android/internal/app/DumpHeapActivity;->JAVA_URI:Landroid/net/Uri;

    const/4 v10, 0x3

    .line 1958
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v11

    .line 1954
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->revokeUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;II)V

    .line 1959
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_94
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1960
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpFile:Ljava/lang/String;

    .line 1961
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 1962
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpPid:I

    .line 1963
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput v3, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    .line 1964
    monitor-exit v6
    :try_end_a9
    .catchall {:try_start_94 .. :try_end_a9} :catchall_ae

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1965
    goto/16 :goto_3fc

    .line 1964
    :catchall_ae
    move-exception v0

    :try_start_af
    monitor-exit v6
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1878
    :pswitch_b4  #0x32
    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_b7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1879
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpUid:I

    move v7, v0

    .line 1880
    .local v7, "uid":I
    const/16 v0, 0x3e8

    if-ne v7, v0, :cond_cf

    .line 1881
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1040082

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "procName":Ljava/lang/String;
    goto :goto_d3

    .line 1883
    .end local v8  # "procName":Ljava/lang/String;
    :cond_cf
    iget-object v8, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mMemWatchDumpProcName:Ljava/lang/String;

    .line 1885
    .restart local v8  # "procName":Ljava/lang/String;
    :goto_d3
    iget-object v9, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v9, v8, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 1886
    .local v9, "val":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/String;>;"
    if-nez v9, :cond_ea

    .line 1887
    iget-object v10, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mMemWatchProcesses:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v10, v8, v5}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/Pair;

    move-object v9, v10

    .line 1889
    :cond_ea
    if-eqz v9, :cond_f9

    .line 1890
    iget-object v3, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 1891
    .local v10, "memLimit":J
    iget-object v3, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    .local v3, "reportPackage":Ljava/lang/String;
    goto :goto_fc

    .line 1893
    .end local v3  # "reportPackage":Ljava/lang/String;
    .end local v10  # "memLimit":J
    :cond_f9
    const-wide/16 v10, 0x0

    .line 1894
    .restart local v10  # "memLimit":J
    nop

    .line 1896
    .restart local v3  # "reportPackage":Ljava/lang/String;
    :goto_fc
    iget-object v12, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v12}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v12

    move v9, v12

    .line 1897
    .local v9, "isUserInitiated":Z
    monitor-exit v6
    :try_end_104
    .catchall {:try_start_b7 .. :try_end_104} :catchall_22f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1898
    if-nez v8, :cond_10a

    .line 1899
    return-void

    .line 1902
    :cond_10a
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v6, :cond_12c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Showing dump heap notification from "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "/"

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "ActivityManager"

    invoke-static {v12, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    :cond_12c
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v6

    .line 1906
    .local v6, "inm":Landroid/app/INotificationManager;
    if-nez v6, :cond_133

    .line 1907
    return-void

    .line 1910
    :cond_133
    if-eqz v9, :cond_139

    .line 1911
    const v12, 0x1040209

    goto :goto_13c

    :cond_139
    const v12, 0x1040207

    .line 1912
    .local v12, "titleId":I
    :goto_13c
    iget-object v13, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-array v14, v4, [Ljava/lang/Object;

    aput-object v8, v14, v5

    invoke-virtual {v13, v12, v14}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1914
    .local v15, "text":Ljava/lang/String;
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    move-object v14, v13

    .line 1915
    .local v14, "deleteIntent":Landroid/content/Intent;
    const-string v13, "com.android.server.am.DELETE_DUMPHEAP"

    invoke-virtual {v14, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1916
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1917
    .local v13, "intent":Landroid/content/Intent;
    const-class v16, Lcom/android/internal/app/DumpHeapActivity;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v4, "android"

    invoke-virtual {v13, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1918
    const-string/jumbo v4, "process"

    invoke-virtual {v13, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1919
    const-string/jumbo v4, "size"

    invoke-virtual {v13, v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1920
    const-string/jumbo v4, "is_user_initiated"

    invoke-virtual {v13, v4, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1921
    if-ne v7, v0, :cond_179

    const/4 v0, 0x1

    goto :goto_17a

    :cond_179
    const/4 v0, 0x0

    :goto_17a
    const-string/jumbo v4, "is_system_process"

    invoke-virtual {v13, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1922
    if-eqz v3, :cond_187

    .line 1923
    const-string v0, "direct_launch"

    invoke-virtual {v13, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1925
    :cond_187
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1926
    .local v4, "userId":I
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v5, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v23, v3

    .end local v3  # "reportPackage":Ljava/lang/String;
    .local v23, "reportPackage":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->DEVELOPER:Ljava/lang/String;

    invoke-direct {v0, v5, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x10807ef

    .line 1928
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1929
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1930
    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x106001c

    .line 1931
    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1933
    invoke-virtual {v0, v15}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040208

    .line 1935
    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1934
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/16 v17, 0x0

    const/high16 v19, 0x10000000

    const/16 v20, 0x0

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 1936
    move-object/from16 v16, v3

    move-object/from16 v18, v13

    move-object/from16 v21, v5

    invoke-static/range {v16 .. v21}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1939
    move/from16 v20, v7

    const/4 v7, 0x0

    .end local v7  # "uid":I
    .local v20, "uid":I
    invoke-static {v3, v7, v14, v7, v5}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1941
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    .line 1944
    .local v3, "notification":Landroid/app/Notification;
    :try_start_1fc
    const-string v0, "android"

    const-string v5, "android"
    :try_end_200
    .catch Ljava/lang/RuntimeException; {:try_start_1fc .. :try_end_200} :catch_21f
    .catch Landroid/os/RemoteException; {:try_start_1fc .. :try_end_200} :catch_218

    const/16 v16, 0x0

    const/16 v17, 0xc

    move-object v7, v13

    .end local v13  # "intent":Landroid/content/Intent;
    .local v7, "intent":Landroid/content/Intent;
    move-object v13, v6

    move-object/from16 v21, v14

    .end local v14  # "deleteIntent":Landroid/content/Intent;
    .local v21, "deleteIntent":Landroid/content/Intent;
    move-object v14, v0

    move-object/from16 v22, v15

    .end local v15  # "text":Ljava/lang/String;
    .local v22, "text":Ljava/lang/String;
    move-object v15, v5

    move-object/from16 v18, v3

    move/from16 v19, v4

    :try_start_210
    invoke-interface/range {v13 .. v19}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_213
    .catch Ljava/lang/RuntimeException; {:try_start_210 .. :try_end_213} :catch_216
    .catch Landroid/os/RemoteException; {:try_start_210 .. :try_end_213} :catch_214

    goto :goto_22c

    .line 1950
    :catch_214
    move-exception v0

    goto :goto_22d

    .line 1947
    :catch_216
    move-exception v0

    goto :goto_225

    .line 1950
    .end local v7  # "intent":Landroid/content/Intent;
    .end local v21  # "deleteIntent":Landroid/content/Intent;
    .end local v22  # "text":Ljava/lang/String;
    .restart local v13  # "intent":Landroid/content/Intent;
    .restart local v14  # "deleteIntent":Landroid/content/Intent;
    .restart local v15  # "text":Ljava/lang/String;
    :catch_218
    move-exception v0

    move-object v7, v13

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    .end local v13  # "intent":Landroid/content/Intent;
    .end local v14  # "deleteIntent":Landroid/content/Intent;
    .end local v15  # "text":Ljava/lang/String;
    .restart local v7  # "intent":Landroid/content/Intent;
    .restart local v21  # "deleteIntent":Landroid/content/Intent;
    .restart local v22  # "text":Ljava/lang/String;
    goto :goto_22d

    .line 1947
    .end local v7  # "intent":Landroid/content/Intent;
    .end local v21  # "deleteIntent":Landroid/content/Intent;
    .end local v22  # "text":Ljava/lang/String;
    .restart local v13  # "intent":Landroid/content/Intent;
    .restart local v14  # "deleteIntent":Landroid/content/Intent;
    .restart local v15  # "text":Ljava/lang/String;
    :catch_21f
    move-exception v0

    move-object v7, v13

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    .line 1948
    .end local v13  # "intent":Landroid/content/Intent;
    .end local v14  # "deleteIntent":Landroid/content/Intent;
    .end local v15  # "text":Ljava/lang/String;
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v7  # "intent":Landroid/content/Intent;
    .restart local v21  # "deleteIntent":Landroid/content/Intent;
    .restart local v22  # "text":Ljava/lang/String;
    :goto_225
    const-string v5, "ActivityManager"

    const-string v13, "Error showing notification for dump heap"

    invoke-static {v5, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1951
    .end local v0  # "e":Ljava/lang/RuntimeException;
    :goto_22c
    nop

    .line 1952
    .end local v3  # "notification":Landroid/app/Notification;
    .end local v4  # "userId":I
    .end local v6  # "inm":Landroid/app/INotificationManager;
    .end local v7  # "intent":Landroid/content/Intent;
    .end local v8  # "procName":Ljava/lang/String;
    .end local v9  # "isUserInitiated":Z
    .end local v10  # "memLimit":J
    .end local v12  # "titleId":I
    .end local v20  # "uid":I
    .end local v21  # "deleteIntent":Landroid/content/Intent;
    .end local v22  # "text":Ljava/lang/String;
    .end local v23  # "reportPackage":Ljava/lang/String;
    :goto_22d
    goto/16 :goto_3fc

    .line 1897
    :catchall_22f
    move-exception v0

    :try_start_230
    monitor-exit v6
    :try_end_231
    .catchall {:try_start_230 .. :try_end_231} :catchall_22f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1856
    :pswitch_235  #0x31
    iget v3, v2, Landroid/os/Message;->arg1:I

    .line 1857
    .local v3, "uid":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, [B

    .line 1859
    .local v4, "firstPacket":[B
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v5

    .line 1860
    const/4 v6, 0x0

    move v0, v6

    .local v6, "i":I
    :goto_243
    :try_start_243
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$PidMap;->size()I

    move-result v0

    if-ge v6, v0, :cond_268

    .line 1861
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v6}, Lcom/android/server/am/ActivityManagerService$PidMap;->valueAt(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v7, v0

    .line 1862
    .local v7, "p":Lcom/android/server/am/ProcessRecord;
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v3, :cond_265

    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_25c
    .catchall {:try_start_243 .. :try_end_25c} :catchall_26b

    if-eqz v0, :cond_265

    .line 1864
    :try_start_25e
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, v4}, Landroid/app/IApplicationThread;->notifyCleartextNetwork([B)V
    :try_end_263
    .catch Landroid/os/RemoteException; {:try_start_25e .. :try_end_263} :catch_264
    .catchall {:try_start_25e .. :try_end_263} :catchall_26b

    .line 1866
    goto :goto_265

    .line 1865
    :catch_264
    move-exception v0

    .line 1860
    .end local v7  # "p":Lcom/android/server/am/ProcessRecord;
    :cond_265
    :goto_265
    add-int/lit8 v6, v6, 0x1

    goto :goto_243

    .line 1869
    .end local v6  # "i":I
    :cond_268
    :try_start_268
    monitor-exit v5

    .line 1870
    goto/16 :goto_3fc

    .line 1869
    :catchall_26b
    move-exception v0

    monitor-exit v5
    :try_end_26d
    .catchall {:try_start_268 .. :try_end_26d} :catchall_26b

    throw v0

    .line 1798
    .end local v3  # "uid":I
    .end local v4  # "firstPacket":[B
    :pswitch_26e  #0x1d
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->setAllHttpProxy()V

    .line 1799
    goto/16 :goto_3fc

    .line 1793
    :pswitch_277  #0x1c
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_27a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1794
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->clearAllDnsCacheLocked()V

    .line 1795
    monitor-exit v3
    :try_end_285
    .catchall {:try_start_27a .. :try_end_285} :catchall_28a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1796
    goto/16 :goto_3fc

    .line 1795
    :catchall_28a
    move-exception v0

    :try_start_28b
    monitor-exit v3
    :try_end_28c
    .catchall {:try_start_28b .. :try_end_28c} :catchall_28a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1830
    :pswitch_290  #0x1b
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_293
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1831
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked()V

    .line 1832
    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 1833
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1834
    .local v0, "nmsg":Landroid/os/Message;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v4, Lcom/android/server/am/ActivityManagerConstants;->POWER_CHECK_INTERVAL:J

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1835
    nop

    .end local v0  # "nmsg":Landroid/os/Message;
    monitor-exit v3
    :try_end_2af
    .catchall {:try_start_293 .. :try_end_2af} :catchall_2b4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1836
    goto/16 :goto_3fc

    .line 1835
    :catchall_2b4
    move-exception v0

    :try_start_2b5
    monitor-exit v3
    :try_end_2b6
    .catchall {:try_start_2b5 .. :try_end_2b6} :catchall_2b4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1779
    :cond_2ba
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_2bd
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1780
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    move v4, v0

    .local v4, "i":I
    :goto_2cd
    if-ltz v4, :cond_304

    .line 1781
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    .line 1782
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;
    :try_end_2de
    .catchall {:try_start_2bd .. :try_end_2de} :catchall_30a

    if-eqz v0, :cond_301

    .line 1784
    :try_start_2e0
    iget-object v0, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_2e5
    .catch Landroid/os/RemoteException; {:try_start_2e0 .. :try_end_2e5} :catch_2e6
    .catchall {:try_start_2e0 .. :try_end_2e5} :catchall_30a

    .line 1787
    goto :goto_301

    .line 1785
    :catch_2e6
    move-exception v0

    .line 1786
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_2e7
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1780
    .end local v0  # "ex":Landroid/os/RemoteException;
    .end local v5  # "r":Lcom/android/server/am/ProcessRecord;
    :cond_301
    :goto_301
    add-int/lit8 v4, v4, -0x1

    goto :goto_2cd

    .line 1790
    .end local v4  # "i":I
    :cond_304
    monitor-exit v3
    :try_end_305
    .catchall {:try_start_2e7 .. :try_end_305} :catchall_30a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1791
    goto/16 :goto_3fc

    .line 1790
    :catchall_30a
    move-exception v0

    :try_start_30b
    monitor-exit v3
    :try_end_30c
    .catchall {:try_start_30b .. :try_end_30c} :catchall_30a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1769
    :cond_310
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 1770
    goto/16 :goto_3fc

    .line 1824
    :cond_31d
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_320
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1825
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AppZygote;

    .line 1826
    .local v0, "appZygote":Landroid/os/AppZygote;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;)V

    .line 1827
    .end local v0  # "appZygote":Landroid/os/AppZygote;
    monitor-exit v3
    :try_end_32f
    .catchall {:try_start_320 .. :try_end_32f} :catchall_334

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1828
    goto/16 :goto_3fc

    .line 1827
    :catchall_334
    move-exception v0

    :try_start_335
    monitor-exit v3
    :try_end_336
    .catchall {:try_start_335 .. :try_end_336} :catchall_334

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1775
    :cond_33a
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1776
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "servicerecord"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1775
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ActiveServices;->serviceForegroundCrash(Lcom/android/server/am/ProcessRecord;Ljava/lang/CharSequence;)V

    .line 1777
    goto/16 :goto_3fc

    .line 1772
    :cond_352
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/am/ServiceRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActiveServices;->serviceForegroundTimeout(Lcom/android/server/am/ServiceRecord;)V

    .line 1773
    goto/16 :goto_3fc

    .line 1981
    :cond_35f
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_362
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1982
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->handleAllTrustStorageUpdateLocked()V

    .line 1983
    monitor-exit v3
    :try_end_36d
    .catchall {:try_start_362 .. :try_end_36d} :catchall_372

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_3fc

    :catchall_372
    move-exception v0

    :try_start_373
    monitor-exit v3
    :try_end_374
    .catchall {:try_start_373 .. :try_end_374} :catchall_372

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1850
    :cond_378
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_37b
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1851
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Lcom/android/server/am/ProcessList;->updateAllTimePrefsLocked(I)V

    .line 1852
    monitor-exit v3
    :try_end_388
    .catchall {:try_start_37b .. :try_end_388} :catchall_38c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1853
    goto :goto_3fc

    .line 1852
    :catchall_38c
    move-exception v0

    :try_start_38d
    monitor-exit v3
    :try_end_38e
    .catchall {:try_start_38d .. :try_end_38e} :catchall_38c

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1838
    :cond_392
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 1839
    .local v0, "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    new-instance v3, Lcom/android/server/am/ActivityManagerService$MainHandler$1;

    invoke-direct {v3, v1, v0}, Lcom/android/server/am/ActivityManagerService$MainHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$MainHandler;Ljava/util/ArrayList;)V

    .line 1844
    .local v3, "thread":Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 1845
    goto :goto_3fc

    .line 1813
    .end local v0  # "memInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessMemInfo;>;"
    .end local v3  # "thread":Ljava/lang/Thread;
    :cond_39f
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3a2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1814
    iget v6, v2, Landroid/os/Message;->arg1:I

    .line 1815
    .local v6, "appId":I
    iget v12, v2, Landroid/os/Message;->arg2:I

    .line 1816
    .local v12, "userId":I
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1817
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "pkg"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1818
    .local v5, "pkg":Ljava/lang/String;
    const-string/jumbo v4, "reason"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1819
    .local v13, "reason":Ljava/lang/String;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 1821
    nop

    .end local v0  # "bundle":Landroid/os/Bundle;
    .end local v5  # "pkg":Ljava/lang/String;
    .end local v6  # "appId":I
    .end local v12  # "userId":I
    .end local v13  # "reason":Ljava/lang/String;
    monitor-exit v3
    :try_end_3c7
    .catchall {:try_start_3a2 .. :try_end_3c7} :catchall_3cb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1822
    goto :goto_3fc

    .line 1821
    :catchall_3cb
    move-exception v0

    :try_start_3cc
    monitor-exit v3
    :try_end_3cd
    .catchall {:try_start_3cc .. :try_end_3cd} :catchall_3cb

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1801
    :cond_3d1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1802
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_3d9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1803
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1804
    monitor-exit v4
    :try_end_3e2
    .catchall {:try_start_3d9 .. :try_end_3e2} :catchall_3e6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1805
    .end local v3  # "app":Lcom/android/server/am/ProcessRecord;
    goto :goto_3fc

    .line 1804
    .restart local v3  # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_3e6
    move-exception v0

    :try_start_3e7
    monitor-exit v4
    :try_end_3e8
    .catchall {:try_start_3e7 .. :try_end_3e8} :catchall_3e6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1764
    .end local v3  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_3ec
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_3ef
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1765
    iget-object v0, v1, Lcom/android/server/am/ActivityManagerService$MainHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1766
    monitor-exit v3
    :try_end_3f8
    .catchall {:try_start_3ef .. :try_end_3f8} :catchall_3fd

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1767
    nop

    .line 1986
    :goto_3fc
    return-void

    .line 1766
    :catchall_3fd
    move-exception v0

    :try_start_3fe
    monitor-exit v3
    :try_end_3ff
    .catchall {:try_start_3fe .. :try_end_3ff} :catchall_3fd

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    nop

    :pswitch_data_404
    .packed-switch 0x1b
        :pswitch_290  #0000001b
        :pswitch_277  #0000001c
        :pswitch_26e  #0000001d
    .end packed-switch

    :pswitch_data_40e
    .packed-switch 0x31
        :pswitch_235  #00000031
        :pswitch_b4  #00000032
        :pswitch_7c  #00000033
    .end packed-switch

    :pswitch_data_418
    .packed-switch 0x38
        :pswitch_62  #00000038
        :pswitch_46  #00000039
        :pswitch_3f  #0000003a
    .end packed-switch
.end method
