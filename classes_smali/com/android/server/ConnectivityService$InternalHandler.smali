.class Lcom/android/server/ConnectivityService$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 3888
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 3889
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3890
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"  # Landroid/os/Message;

    .line 3894
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_16e

    const/16 v1, 0x9

    if-eq v0, v1, :cond_166

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_158

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_142

    const/16 v1, 0xa0

    if-eq v0, v1, :cond_13c

    const/16 v1, 0xa1

    if-eq v0, v1, :cond_134

    packed-switch v0, :pswitch_data_178

    packed-switch v0, :pswitch_data_19c

    packed-switch v0, :pswitch_data_1ac

    goto/16 :goto_176

    .line 3976
    :pswitch_25  #0x8100c
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3977
    .local v0, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 3978
    .local v1, "slot":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 3979
    .local v2, "reason":I
    iget-object v3, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 3980
    goto/16 :goto_176

    .line 3971
    .end local v0  # "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    .end local v1  # "slot":I
    .end local v2  # "reason":I
    :pswitch_3e  #0x8100b
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    .line 3972
    goto/16 :goto_176

    .line 4002
    :pswitch_49  #0x28
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2800(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->handleRestrictBackgroundChanged(Z)V

    .line 4003
    goto/16 :goto_176

    .line 3999
    :pswitch_56  #0x27
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ConnectivityService;->handleUidRulesChanged(II)V

    .line 4000
    goto/16 :goto_176

    .line 3995
    :pswitch_61  #0x26
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    .line 3997
    goto/16 :goto_176

    .line 3992
    :pswitch_6c  #0x25
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5300(Lcom/android/server/ConnectivityService;)V

    .line 3993
    goto/16 :goto_176

    .line 3988
    :pswitch_73  #0x24
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2800(I)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$5200(Lcom/android/server/ConnectivityService;Landroid/net/Network;IZ)V

    .line 3989
    goto/16 :goto_176

    .line 3958
    :pswitch_86  #0x23
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    .line 3959
    goto/16 :goto_176

    .line 3966
    :pswitch_91  #0x1e
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;)V

    .line 3967
    goto/16 :goto_176

    .line 3962
    :pswitch_98  #0x1d
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    .line 3963
    goto/16 :goto_176

    .line 3947
    :pswitch_a3  #0x1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    .line 3948
    .local v0, "network":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2800(I)Z

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2800(I)Z

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    .line 3949
    goto/16 :goto_176

    .line 3938
    .end local v0  # "network":Landroid/net/Network;
    :pswitch_ba  #0x1b
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    .line 3939
    goto/16 :goto_176

    .line 3929
    :pswitch_c7  #0x1a, 0x1f
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    .line 3930
    goto/16 :goto_176

    .line 3983
    :pswitch_ce  #0x19
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/MultipathPolicyTracker;->start()V

    .line 3984
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/NetPluginDelegate;->registerHandler(Landroid/os/Handler;)V

    .line 3985
    goto/16 :goto_176

    .line 3913
    :pswitch_e0  #0x17
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    .line 3914
    goto/16 :goto_176

    .line 3942
    :pswitch_eb  #0x16
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkRequest;

    iget v2, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;IZ)V

    .line 3944
    goto/16 :goto_176

    .line 3933
    :pswitch_f9  #0x14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3934
    .local v0, "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3935
    goto/16 :goto_176

    .line 3924
    .end local v0  # "nri":Lcom/android/server/ConnectivityService$NetworkRequestInfo;
    :pswitch_104  #0x13, 0x15
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3925
    goto :goto_176

    .line 3917
    :pswitch_10e  #0x12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 3919
    .local v0, "arg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;>;"
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/net/INetworkMonitor;

    invoke-static {v1, v2, v3}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V

    .line 3920
    goto :goto_176

    .line 3909
    .end local v0  # "arg":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;>;"
    :pswitch_120  #0x11
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    .line 3910
    goto :goto_176

    .line 3905
    :pswitch_12a  #0x10
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ProxyInfo;

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    .line 3906
    goto :goto_176

    .line 4011
    :cond_134
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$5600(Lcom/android/server/ConnectivityService;I)V

    goto :goto_176

    .line 4008
    :cond_13c
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$5500(Lcom/android/server/ConnectivityService;)V

    .line 4009
    goto :goto_176

    .line 3952
    :cond_142
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    .line 3953
    .local v0, "network":Landroid/net/Network;
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2800(I)Z

    move-result v2

    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 3954
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$2800(I)Z

    move-result v3

    .line 3953
    invoke-static {v1, v0, v2, v3}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    .line 3955
    goto :goto_176

    .line 4005
    .end local v0  # "network":Landroid/net/Network;
    :cond_158
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    sget-object v2, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOGGED_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    .line 4006
    goto :goto_176

    .line 3901
    :cond_166
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v0, v0, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Lcom/android/server/connectivity/ProxyTracker;->loadDeprecatedGlobalHttpProxy()V

    .line 3902
    goto :goto_176

    .line 3897
    :cond_16e
    :pswitch_16e  #0x18
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;I)V

    .line 3898
    nop

    .line 4014
    :goto_176
    return-void

    nop

    :pswitch_data_178
    .packed-switch 0x10
        :pswitch_12a  #00000010
        :pswitch_120  #00000011
        :pswitch_10e  #00000012
        :pswitch_104  #00000013
        :pswitch_f9  #00000014
        :pswitch_104  #00000015
        :pswitch_eb  #00000016
        :pswitch_e0  #00000017
        :pswitch_16e  #00000018
        :pswitch_ce  #00000019
        :pswitch_c7  #0000001a
        :pswitch_ba  #0000001b
        :pswitch_a3  #0000001c
        :pswitch_98  #0000001d
        :pswitch_91  #0000001e
        :pswitch_c7  #0000001f
    .end packed-switch

    :pswitch_data_19c
    .packed-switch 0x23
        :pswitch_86  #00000023
        :pswitch_73  #00000024
        :pswitch_6c  #00000025
        :pswitch_61  #00000026
        :pswitch_56  #00000027
        :pswitch_49  #00000028
    .end packed-switch

    :pswitch_data_1ac
    .packed-switch 0x8100b
        :pswitch_3e  #0008100b
        :pswitch_25  #0008100c
    .end packed-switch
.end method
