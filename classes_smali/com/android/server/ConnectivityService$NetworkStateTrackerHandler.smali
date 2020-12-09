.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3

    .line 2663
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 2664
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2665
    return-void
.end method

.method private getCaptivePortalMode()I
    .registers 4

    .line 2872
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "captive_portal_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z
    .registers 3

    .line 2668
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2c

    .line 2670
    :pswitch_5  #0x11001, 0x11002
    const/4 p1, 0x0

    return p1

    .line 2681
    :pswitch_7  #0x11004
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$1200(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_29

    .line 2676
    :pswitch_d  #0x11003
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2677
    if-eqz p1, :cond_29

    iget-object p1, p1, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_29

    .line 2672
    :pswitch_23  #0x11000
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$1000(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    .line 2673
    nop

    .line 2685
    :cond_29
    :goto_29
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_2c
    .packed-switch 0x11000
        :pswitch_23  #00011000
        :pswitch_5  #00011001
        :pswitch_5  #00011002
        :pswitch_d  #00011003
        :pswitch_7  #00011004
    .end packed-switch
.end method

.method private maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z
    .registers 4

    .line 2878
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_8

    .line 2880
    const/4 p1, 0x0

    return p1

    .line 2882
    :cond_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2883
    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v0, p1}, Lcom/android/server/ConnectivityService;->access$3100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 2884
    iget-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->access$3200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2889
    :cond_1d
    const/4 p1, 0x1

    return p1
.end method

.method private maybeHandleNetworkAgentMessage(Landroid/os/Message;)V
    .registers 7

    .line 2689
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1100(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 2690
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2c

    .line 2691
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1300()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2692
    new-array v0, v2, [Ljava/lang/Object;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$1400(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s from unknown NetworkAgent"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    .line 2694
    :cond_2b
    return-void

    .line 2697
    :cond_2c
    iget v3, p1, Landroid/os/Message;->what:I

    const v4, 0x81008

    if-eq v3, v4, :cond_96

    const v1, 0x8100d

    if-eq v3, v1, :cond_8c

    packed-switch v3, :pswitch_data_c4

    goto/16 :goto_c3

    .line 2716
    :pswitch_3d  #0x81004
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v0, p1}, Lcom/android/server/ConnectivityService;->access$1800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    .line 2717
    goto/16 :goto_c3

    .line 2707
    :pswitch_46  #0x81003
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/LinkProperties;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/ConnectivityService;->handleUpdateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    .line 2708
    goto/16 :goto_c3

    .line 2699
    :pswitch_51  #0x81002
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkCapabilities;

    .line 2700
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->hasConnectivityManagedCapability()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 2701
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BUG: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " has CS-managed capability."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2703
    :cond_78
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v2

    invoke-static {v1, v2, v0, p1}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2704
    goto :goto_c3

    .line 2711
    :pswitch_82  #0x81001
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/NetworkInfo;

    .line 2712
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0, p1}, Lcom/android/server/ConnectivityService;->access$1700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    .line 2713
    goto :goto_c3

    .line 2736
    :cond_8c
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleEventSocketKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/os/Message;)V

    goto :goto_c3

    .line 2720
    :cond_96
    iget-boolean v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everConnected:Z

    if-eqz v3, :cond_9f

    .line 2721
    const-string v3, "ERROR: cannot call explicitlySelected on already-connected network"

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 2723
    :cond_9f
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_a7

    move v4, v2

    goto :goto_a8

    :cond_a7
    move v4, v1

    :goto_a8
    iput-boolean v4, v3, Landroid/net/NetworkMisc;->explicitlySelected:Z

    .line 2724
    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_b6

    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v2, :cond_b6

    move v4, v2

    goto :goto_b7

    :cond_b6
    move v4, v1

    :goto_b7
    iput-boolean v4, v3, Landroid/net/NetworkMisc;->acceptUnvalidated:Z

    .line 2732
    iget-object v0, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_c0

    move v1, v2

    :cond_c0
    iput-boolean v1, v0, Landroid/net/NetworkMisc;->acceptPartialConnectivity:Z

    .line 2733
    nop

    .line 2740
    :goto_c3
    return-void

    :pswitch_data_c4
    .packed-switch 0x81001
        :pswitch_82  #00081001
        :pswitch_51  #00081002
        :pswitch_46  #00081003
        :pswitch_3d  #00081004
    .end packed-switch
.end method

.method private maybeHandleNetworkFactoryMessage(Landroid/os/Message;)Z
    .registers 5

    .line 2893
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x83004

    if-eq v0, v1, :cond_9

    .line 2895
    const/4 p1, 0x0

    return p1

    .line 2897
    :cond_9
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkRequest;

    iget p1, p1, Landroid/os/Message;->sendingUid:I

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;IZ)V

    .line 2902
    return v2
.end method

.method private maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z
    .registers 14

    .line 2743
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_1fa

    .line 2745
    return v3

    .line 2825
    :pswitch_9  #0x2b
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 2826
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2700(I)Z

    move-result v0

    .line 2827
    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3, v5}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v7

    .line 2829
    if-eqz v7, :cond_60

    iget-boolean v3, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eq v0, v3, :cond_60

    .line 2830
    invoke-virtual {v7}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v3

    .line 2831
    iput-boolean v0, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    .line 2832
    iget-boolean v4, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    or-int/2addr v4, v0

    iput-boolean v4, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->everCaptivePortalDetected:Z

    .line 2833
    iget-boolean v4, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->lastCaptivePortalDetected:Z

    if-eqz v4, :cond_59

    .line 2834
    invoke-direct {p0}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->getCaptivePortalMode()I

    move-result v4

    if-ne v1, v4, :cond_59

    .line 2835
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Avoiding captive portal network: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    .line 2836
    iget-object p1, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v0, 0x8100f

    invoke-virtual {p1, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 2838
    iget-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1, v7}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2839
    goto/16 :goto_1f9

    .line 2841
    :cond_59
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v4, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v1, v3, v7, v4}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2843
    :cond_60
    if-nez v0, :cond_7a

    .line 2846
    iget-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object p1

    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {p1, v5, v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 2847
    iget-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object p1

    sget-object v0, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NETWORK_SWITCH:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {p1, v5, v0}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    goto/16 :goto_1f9

    .line 2849
    :cond_7a
    if-nez v7, :cond_83

    .line 2850
    const-string p1, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$600(Ljava/lang/String;)V

    .line 2851
    goto/16 :goto_1f9

    .line 2853
    :cond_83
    iget-object v0, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v0, v0, Landroid/net/NetworkMisc;->provisioningNotificationDisabled:Z

    if-nez v0, :cond_1f9

    .line 2854
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v4

    sget-object v6, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->SIGN_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    const/4 v8, 0x0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v9, p1

    check-cast v9, Landroid/app/PendingIntent;

    iget-object p1, v7, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v10, p1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/connectivity/NetworkNotificationManager;->showNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/app/PendingIntent;Z)V

    goto/16 :goto_1f9

    .line 2861
    :pswitch_a0  #0x2a
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2862
    if-nez v0, :cond_ac

    goto/16 :goto_1f9

    .line 2864
    :cond_ac
    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/shared/PrivateDnsConfig;

    invoke-static {v1, v0, p1}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/shared/PrivateDnsConfig;)V

    .line 2865
    goto/16 :goto_1f9

    .line 2747
    :pswitch_b7  #0x29
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v4}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 2748
    if-nez v0, :cond_c3

    goto/16 :goto_1f9

    .line 2750
    :cond_c3
    iget-boolean v4, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    .line 2751
    iget v5, p1, Landroid/os/Message;->arg1:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_cc

    move v5, v2

    goto :goto_cd

    :cond_cc
    move v5, v3

    :goto_cd
    iput-boolean v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    .line 2752
    iget-boolean v5, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    if-eq v4, v5, :cond_d5

    move v5, v2

    goto :goto_d6

    :cond_d5
    move v5, v3

    .line 2755
    :goto_d6
    iget v6, p1, Landroid/os/Message;->arg1:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_dd

    move v6, v2

    goto :goto_de

    :cond_dd
    move v6, v3

    .line 2756
    :goto_de
    iget-boolean v7, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 2757
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v8, v0}, Lcom/android/server/ConnectivityService;->isDefaultNetwork(Lcom/android/server/connectivity/NetworkAgentInfo;)Z

    move-result v8

    .line 2760
    iget-boolean v9, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->captivePortalValidationPending:Z

    if-eqz v9, :cond_f5

    if-eqz v6, :cond_f5

    .line 2762
    iput-boolean v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->captivePortalValidationPending:Z

    .line 2763
    iget-object v9, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    sget-object v10, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOGGED_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-static {v9, v0, v10}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 2766
    :cond_f5
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v9, v9, Ljava/lang/String;

    const-string v10, ""

    if-eqz v9, :cond_102

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_103

    :cond_102
    move-object p1, v10

    .line 2769
    :goto_103
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_11b

    .line 2770
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " with redirect to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_11c

    .line 2771
    :cond_11b
    nop

    .line 2772
    :goto_11c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " validation "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_133

    const-string/jumbo v11, "passed"

    goto :goto_135

    :cond_133
    const-string v11, "failed"

    :goto_135
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/ConnectivityService;->access$000(Ljava/lang/String;)V

    .line 2774
    iget-boolean v9, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eq v6, v9, :cond_1ab

    .line 2775
    if-eqz v8, :cond_159

    .line 2776
    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v5}, Lcom/android/server/ConnectivityService;->metricsLogger()Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/connectivity/IpConnectivityMetrics$Logger;->defaultNetworkMetrics()Lcom/android/server/connectivity/DefaultNetworkMetrics;

    move-result-object v5

    .line 2777
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 2776
    invoke-virtual {v5, v8, v9, v6}, Lcom/android/server/connectivity/DefaultNetworkMetrics;->logDefaultNetworkValidity(JZ)V

    .line 2779
    :cond_159
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v5

    .line 2780
    iput-boolean v6, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    .line 2781
    iget-boolean v8, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    or-int/2addr v8, v6

    iput-boolean v8, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    .line 2782
    iget-object v8, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v9, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v8, v5, v0, v9}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    .line 2784
    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v8

    if-eq v5, v8, :cond_176

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5, v0}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2785
    :cond_176
    if-eqz v6, :cond_1b9

    .line 2786
    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5, v0}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2789
    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v5

    iget-object v8, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v8, Landroid/net/Network;->netId:I

    sget-object v9, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->NO_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v5, v8, v9}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 2791
    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v5

    iget-object v8, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v8, Landroid/net/Network;->netId:I

    sget-object v9, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOST_INTERNET:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v5, v8, v9}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 2793
    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v5

    iget-object v8, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v8, v8, Landroid/net/Network;->netId:I

    sget-object v9, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->PARTIAL_CONNECTIVITY:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v5, v8, v9}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    goto :goto_1b9

    .line 2796
    :cond_1ab
    if-eqz v5, :cond_1b9

    .line 2797
    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/connectivity/NetworkAgentInfo;->getCurrentScore()I

    move-result v8

    iget-object v9, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {v5, v8, v0, v9}, Lcom/android/server/ConnectivityService;->access$1600(Lcom/android/server/ConnectivityService;ILcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto :goto_1ba

    .line 2796
    :cond_1b9
    :goto_1b9
    nop

    .line 2799
    :goto_1ba
    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5, v0}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2801
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2802
    sget-object v8, Landroid/net/NetworkAgent;->REDIRECT_URL_KEY:Ljava/lang/String;

    invoke-virtual {v5, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2804
    iget-object p1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v8, 0x81007

    .line 2806
    if-eqz v6, :cond_1d1

    move v1, v2

    .line 2804
    :cond_1d1
    invoke-virtual {p1, v8, v1, v3, v5}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 2813
    if-nez v4, :cond_1ee

    iget-boolean p1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->partialConnectivity:Z

    if-eqz p1, :cond_1ee

    .line 2815
    iget-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$500(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object p1

    const/16 v1, 0x1d

    iget-object v3, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-virtual {p1, v1, v3}, Lcom/android/server/ConnectivityService$InternalHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2816
    iget-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    invoke-static {p1, v1}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    .line 2819
    :cond_1ee
    if-eqz v7, :cond_1f9

    iget-boolean p1, v0, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-nez p1, :cond_1f9

    .line 2820
    iget-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1, v0}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    .line 2868
    :cond_1f9
    :goto_1f9
    return v2

    :pswitch_data_1fa
    .packed-switch 0x29
        :pswitch_b7  #00000029
        :pswitch_a0  #0000002a
        :pswitch_9  #0000002b
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 2907
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleAsyncChannelMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2908
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkMonitorMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2909
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentInfoMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2910
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkFactoryMessage(Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2911
    invoke-direct {p0, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->maybeHandleNetworkAgentMessage(Landroid/os/Message;)V

    .line 2913
    :cond_1b
    return-void
.end method
