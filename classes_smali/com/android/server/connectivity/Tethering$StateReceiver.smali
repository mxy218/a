.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .registers 2

    .line 748
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/connectivity/Tethering;
    .param p2, "x1"  # Lcom/android/server/connectivity/Tethering$1;

    .line 748
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method

.method private handleConnectivityAction(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"  # Landroid/content/Intent;

    .line 771
    nop

    .line 772
    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 773
    .local v0, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_3e

    .line 774
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_15

    goto :goto_3e

    .line 778
    :cond_15
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tethering got CONNECTIVITY_ACTION: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v1

    const v2, 0x50003

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 780
    return-void

    .line 775
    :cond_3e
    :goto_3e
    return-void
.end method

.method private handleUsbAction(Landroid/content/Intent;)V
    .registers 11
    .param p1, "intent"  # Landroid/content/Intent;

    .line 783
    const/4 v0, 0x0

    const-string v1, "connected"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 784
    .local v1, "usbConnected":Z
    const-string v2, "configured"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 785
    .local v2, "usbConfigured":Z
    const-string/jumbo v3, "rndis"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 787
    .local v3, "rndisEnabled":Z
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 788
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v8, 0x2

    aput-object v6, v5, v8

    .line 787
    const-string v6, "USB bcast connected:%s configured:%s rndis:%s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 805
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 806
    if-nez v1, :cond_5c

    :try_start_43
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 808
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v5, v7, v7}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;II)V

    .line 809
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v5}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/server/connectivity/tethering/EntitlementManager;->stopProvisioningIfNeeded(I)V

    goto :goto_65

    .line 815
    :catchall_5a
    move-exception v0

    goto :goto_71

    .line 810
    :cond_5c
    if-eqz v2, :cond_65

    if-eqz v3, :cond_65

    .line 812
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v5, v8, v7}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;II)V

    .line 814
    :cond_65
    :goto_65
    iget-object v5, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    if-eqz v2, :cond_6c

    if-eqz v3, :cond_6c

    move v0, v7

    :cond_6c
    invoke-static {v5, v0}, Lcom/android/server/connectivity/Tethering;->access$802(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 815
    monitor-exit v4

    .line 816
    return-void

    .line 815
    :goto_71
    monitor-exit v4
    :try_end_72
    .catchall {:try_start_43 .. :try_end_72} :catchall_5a

    throw v0
.end method

.method private handleWifiApAction(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"  # Landroid/content/Intent;

    .line 819
    const-string/jumbo v0, "wifi_state"

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 820
    .local v0, "curState":I
    const-string/jumbo v1, "wifi_ap_interface_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 821
    .local v1, "ifname":Ljava/lang/String;
    const-string/jumbo v2, "wifi_ap_mode"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 823
    .local v2, "ipmode":I
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 824
    const/16 v4, 0xc

    if-eq v0, v4, :cond_3f

    const/16 v4, 0xd

    if-eq v0, v4, :cond_39

    .line 835
    :try_start_27
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4, v1, v0}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V

    .line 836
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/connectivity/tethering/EntitlementManager;->stopProvisioningIfNeeded(I)V

    goto :goto_40

    .line 839
    :catchall_37
    move-exception v4

    goto :goto_42

    .line 829
    :cond_39
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v4, v1, v2}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V

    .line 830
    goto :goto_40

    .line 827
    :cond_3f
    nop

    .line 839
    :goto_40
    monitor-exit v3

    .line 840
    return-void

    .line 839
    :goto_42
    monitor-exit v3
    :try_end_43
    .catchall {:try_start_27 .. :try_end_43} :catchall_37

    throw v4
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "content"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 751
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    return-void

    .line 754
    :cond_7
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 755
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering$StateReceiver;->handleUsbAction(Landroid/content/Intent;)V

    goto :goto_43

    .line 756
    :cond_13
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 757
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering$StateReceiver;->handleConnectivityAction(Landroid/content/Intent;)V

    goto :goto_43

    .line 758
    :cond_1f
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 759
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering$StateReceiver;->handleWifiApAction(Landroid/content/Intent;)V

    goto :goto_43

    .line 760
    :cond_2b
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 761
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v1

    const-string v2, "OBSERVED configuration changed"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)V

    .line 766
    :cond_43
    :goto_43
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1, v0, p2}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/content/Intent;)V

    .line 768
    return-void
.end method
