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

    .line 720
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .registers 3

    .line 720
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method

.method private handleConnectivityAction(Landroid/content/Intent;)V
    .registers 3

    .line 739
    nop

    .line 740
    const-string/jumbo v0, "networkInfo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 741
    if-eqz p1, :cond_22

    .line 742
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_15

    goto :goto_22

    .line 747
    :cond_15
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object p1

    const v0, 0x50003

    invoke-virtual {p1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 748
    return-void

    .line 743
    :cond_22
    :goto_22
    return-void
.end method

.method private handleUsbAction(Landroid/content/Intent;)V
    .registers 10

    .line 751
    const/4 v0, 0x0

    const-string v1, "connected"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 752
    const-string v2, "configured"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 753
    const-string/jumbo v3, "rndis"

    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 755
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 756
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v4, v7

    .line 755
    const-string v5, "USB bcast connected:%s configured:%s rndis:%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 773
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v3}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 774
    if-nez v1, :cond_5c

    :try_start_43
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 776
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1, v6, v6}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;II)V

    .line 777
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/connectivity/tethering/EntitlementManager;->stopProvisioningIfNeeded(I)V

    goto :goto_65

    .line 783
    :catchall_5a
    move-exception p1

    goto :goto_71

    .line 778
    :cond_5c
    if-eqz v2, :cond_65

    if-eqz p1, :cond_65

    .line 780
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1, v7, v6}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;II)V

    .line 782
    :cond_65
    :goto_65
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    if-eqz v2, :cond_6c

    if-eqz p1, :cond_6c

    move v0, v6

    :cond_6c
    invoke-static {v1, v0}, Lcom/android/server/connectivity/Tethering;->access$902(Lcom/android/server/connectivity/Tethering;Z)Z

    .line 783
    monitor-exit v3

    .line 784
    return-void

    .line 783
    :goto_71
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_43 .. :try_end_72} :catchall_5a

    throw p1
.end method

.method private handleWifiApAction(Landroid/content/Intent;)V
    .registers 6

    .line 787
    const-string/jumbo v0, "wifi_state"

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 788
    const-string/jumbo v1, "wifi_ap_interface_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 789
    const-string/jumbo v2, "wifi_ap_mode"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 791
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v2}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 792
    const/16 v3, 0xc

    if-eq v0, v3, :cond_35

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2f

    .line 803
    :try_start_27
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p1, v1, v0}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V

    goto :goto_36

    .line 806
    :catchall_2d
    move-exception p1

    goto :goto_38

    .line 797
    :cond_2f
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0, v1, p1}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V

    .line 798
    goto :goto_36

    .line 795
    :cond_35
    nop

    .line 806
    :goto_36
    monitor-exit v2

    .line 807
    return-void

    .line 806
    :goto_38
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_27 .. :try_end_39} :catchall_2d

    throw p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 723
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 724
    if-nez p1, :cond_7

    return-void

    .line 726
    :cond_7
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 727
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering$StateReceiver;->handleUsbAction(Landroid/content/Intent;)V

    goto :goto_43

    .line 728
    :cond_13
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 729
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering$StateReceiver;->handleConnectivityAction(Landroid/content/Intent;)V

    goto :goto_43

    .line 730
    :cond_1f
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 731
    invoke-direct {p0, p2}, Lcom/android/server/connectivity/Tethering$StateReceiver;->handleWifiApAction(Landroid/content/Intent;)V

    goto :goto_43

    .line 732
    :cond_2b
    const-string p2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    .line 733
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;

    move-result-object p1

    const-string p2, "OBSERVED configuration changed"

    invoke-virtual {p1, p2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 734
    iget-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {p1}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)V

    .line 736
    :cond_43
    :goto_43
    return-void
.end method
