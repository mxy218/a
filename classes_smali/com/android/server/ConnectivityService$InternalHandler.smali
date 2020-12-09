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

    .line 3898
    iput-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    .line 3899
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3900
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 3904
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_14e

    const/16 v1, 0x9

    if-eq v0, v1, :cond_146

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_138

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_122

    packed-switch v0, :pswitch_data_158

    packed-switch v0, :pswitch_data_17c

    packed-switch v0, :pswitch_data_18c

    goto/16 :goto_156

    .line 3986
    :pswitch_1d  #0x8100c
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService;->getNetworkAgentInfoForNetwork(Landroid/net/Network;)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v0

    .line 3987
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 3988
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 3989
    iget-object v2, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStopKeepalive(Lcom/android/server/connectivity/NetworkAgentInfo;II)V

    .line 3990
    goto/16 :goto_156

    .line 3981
    :pswitch_36  #0x8100b
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/KeepaliveTracker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/KeepaliveTracker;->handleStartKeepalive(Landroid/os/Message;)V

    .line 3982
    goto/16 :goto_156

    .line 4011
    :pswitch_41  #0x28
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$2700(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/server/ConnectivityService;->handleRestrictBackgroundChanged(Z)V

    .line 4012
    goto/16 :goto_156

    .line 4008
    :pswitch_4e  #0x27
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ConnectivityService;->handleUidRulesChanged(II)V

    .line 4009
    goto/16 :goto_156

    .line 4004
    :pswitch_59  #0x26
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$5200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;)V

    .line 4006
    goto/16 :goto_156

    .line 4001
    :pswitch_64  #0x25
    iget-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$5100(Lcom/android/server/ConnectivityService;)V

    .line 4002
    goto/16 :goto_156

    .line 3997
    :pswitch_6b  #0x24
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/Network;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$2700(I)Z

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/ConnectivityService;->access$5000(Lcom/android/server/ConnectivityService;Landroid/net/Network;IZ)V

    .line 3998
    goto/16 :goto_156

    .line 3968
    :pswitch_7e  #0x23
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Network;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$4800(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    .line 3969
    goto/16 :goto_156

    .line 3976
    :pswitch_89  #0x1e
    iget-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$4900(Lcom/android/server/ConnectivityService;)V

    .line 3977
    goto/16 :goto_156

    .line 3972
    :pswitch_90  #0x1d
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/Network;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;Landroid/net/Network;)V

    .line 3973
    goto/16 :goto_156

    .line 3957
    :pswitch_9b  #0x1c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    .line 3958
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2700(I)Z

    move-result v2

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$2700(I)Z

    move-result p1

    invoke-static {v1, v0, v2, p1}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    .line 3959
    goto/16 :goto_156

    .line 3948
    :pswitch_b2  #0x1b
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/PendingIntent;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, p1}, Lcom/android/server/ConnectivityService;->access$4500(Lcom/android/server/ConnectivityService;Landroid/app/PendingIntent;I)V

    .line 3949
    goto/16 :goto_156

    .line 3939
    :pswitch_bf  #0x1a, 0x1f
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    .line 3940
    goto/16 :goto_156

    .line 3993
    :pswitch_c6  #0x19
    iget-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object p1, p1, Lcom/android/server/ConnectivityService;->mMultipathPolicyTracker:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-virtual {p1}, Lcom/android/server/connectivity/MultipathPolicyTracker;->start()V

    .line 3994
    goto/16 :goto_156

    .line 3923
    :pswitch_cf  #0x17
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Messenger;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$4000(Lcom/android/server/ConnectivityService;Landroid/os/Messenger;)V

    .line 3924
    goto/16 :goto_156

    .line 3952
    :pswitch_da  #0x16
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkRequest;

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;Landroid/net/NetworkRequest;IZ)V

    .line 3954
    goto/16 :goto_156

    .line 3943
    :pswitch_e8  #0x14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    .line 3944
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3945
    goto :goto_156

    .line 3934
    :pswitch_f2  #0x13, 0x15
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/ConnectivityService$NetworkRequestInfo;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkRequestInfo;)V

    .line 3935
    goto :goto_156

    .line 3927
    :pswitch_fc  #0x12
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 3929
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/connectivity/NetworkAgentInfo;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Landroid/net/INetworkMonitor;

    invoke-static {v0, v1, p1}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/INetworkMonitor;)V

    .line 3930
    goto :goto_156

    .line 3919
    :pswitch_10e  #0x11
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$3900(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$NetworkFactoryInfo;)V

    .line 3920
    goto :goto_156

    .line 3915
    :pswitch_118  #0x10
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/ProxyInfo;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;Landroid/net/ProxyInfo;)V

    .line 3916
    goto :goto_156

    .line 3962
    :cond_122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Network;

    .line 3963
    iget-object v1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2}, Lcom/android/server/ConnectivityService;->access$2700(I)Z

    move-result v2

    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 3964
    invoke-static {p1}, Lcom/android/server/ConnectivityService;->access$2700(I)Z

    move-result p1

    .line 3963
    invoke-static {v1, v0, v2, p1}, Lcom/android/server/ConnectivityService;->access$4700(Lcom/android/server/ConnectivityService;Landroid/net/Network;ZZ)V

    .line 3965
    goto :goto_156

    .line 4014
    :cond_138
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)Lcom/android/server/connectivity/NetworkNotificationManager;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    sget-object v1, Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;->LOGGED_IN:Lcom/android/server/connectivity/NetworkNotificationManager$NotificationType;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/connectivity/NetworkNotificationManager;->clearNotification(ILcom/android/server/connectivity/NetworkNotificationManager$NotificationType;)V

    goto :goto_156

    .line 3911
    :cond_146
    iget-object p1, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget-object p1, p1, Lcom/android/server/ConnectivityService;->mProxyTracker:Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {p1}, Lcom/android/server/connectivity/ProxyTracker;->loadDeprecatedGlobalHttpProxy()V

    .line 3912
    goto :goto_156

    .line 3907
    :cond_14e
    :pswitch_14e  #0x18
    iget-object v0, p0, Lcom/android/server/ConnectivityService$InternalHandler;->this$0:Lcom/android/server/ConnectivityService;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;I)V

    .line 3908
    nop

    .line 4017
    :goto_156
    return-void

    nop

    :pswitch_data_158
    .packed-switch 0x10
        :pswitch_118  #00000010
        :pswitch_10e  #00000011
        :pswitch_fc  #00000012
        :pswitch_f2  #00000013
        :pswitch_e8  #00000014
        :pswitch_f2  #00000015
        :pswitch_da  #00000016
        :pswitch_cf  #00000017
        :pswitch_14e  #00000018
        :pswitch_c6  #00000019
        :pswitch_bf  #0000001a
        :pswitch_b2  #0000001b
        :pswitch_9b  #0000001c
        :pswitch_90  #0000001d
        :pswitch_89  #0000001e
        :pswitch_bf  #0000001f
    .end packed-switch

    :pswitch_data_17c
    .packed-switch 0x23
        :pswitch_7e  #00000023
        :pswitch_6b  #00000024
        :pswitch_64  #00000025
        :pswitch_59  #00000026
        :pswitch_4e  #00000027
        :pswitch_41  #00000028
    .end packed-switch

    :pswitch_data_18c
    .packed-switch 0x8100b
        :pswitch_36  #0008100b
        :pswitch_1d  #0008100c
    .end packed-switch
.end method
