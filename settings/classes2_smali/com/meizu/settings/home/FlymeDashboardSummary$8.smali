.class Lcom/meizu/settings/home/FlymeDashboardSummary$8;
.super Landroid/content/BroadcastReceiver;
.source "FlymeDashboardSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/home/FlymeDashboardSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;


# direct methods
.method constructor <init>(Lcom/meizu/settings/home/FlymeDashboardSummary;)V
    .registers 2

    .line 465
    iput-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$8;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 468
    iget-object p1, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$8;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$800(Lcom/meizu/settings/home/FlymeDashboardSummary;)Lcom/meizu/settings/home/FlymeDashboardSummaryAdapter;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    .line 471
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "wifi_state"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_2a

    const/4 p1, 0x4

    .line 473
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 475
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$8;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    if-ne p1, v2, :cond_25

    move v4, v5

    :cond_25
    invoke-static {p0, v4, v1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1200(Lcom/meizu/settings/home/FlymeDashboardSummary;ZLjava/lang/String;)V

    goto/16 :goto_c4

    :cond_2a
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 476
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const-string p1, "networkInfo"

    .line 477
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 479
    iget-object p2, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$8;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p2}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1300(Lcom/meizu/settings/home/FlymeDashboardSummary;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p2

    if-eqz p1, :cond_77

    .line 481
    iget-object v0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$8;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    .line 482
    invoke-static {v0}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1300(Lcom/meizu/settings/home/FlymeDashboardSummary;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v0, v2, :cond_53

    goto :goto_77

    .line 485
    :cond_53
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v0, v2, :cond_61

    .line 486
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$8;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-static {p0, v5, v1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1200(Lcom/meizu/settings/home/FlymeDashboardSummary;ZLjava/lang/String;)V

    goto :goto_c4

    .line 487
    :cond_61
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p1

    if-eqz p1, :cond_c4

    if-eqz p2, :cond_c4

    .line 488
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$8;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v5, p1}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1200(Lcom/meizu/settings/home/FlymeDashboardSummary;ZLjava/lang/String;)V

    goto :goto_c4

    :cond_77
    :goto_77
    return-void

    :cond_78
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 491
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    const/16 p1, 0xe

    .line 492
    invoke-virtual {p2, v3, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 494
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$8;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    const/16 p2, 0xd

    if-ne p1, p2, :cond_8d

    move v4, v5

    :cond_8d
    invoke-static {p0, v4}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1400(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)V

    goto :goto_c4

    :cond_91
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 495
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 496
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 498
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$8;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    const/16 p2, 0xc

    if-ne p1, p2, :cond_a8

    move v4, v5

    :cond_a8
    invoke-static {p0, v4}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1500(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)V

    goto :goto_c4

    :cond_ac
    const-string v0, "android.nfc.action.NFC_AND_EMULATION_STATE_CHANGED"

    .line 499
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c4

    const-string p1, "android.nfc.extra.NFC_P2P_STATE"

    .line 500
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 501
    iget-object p0, p0, Lcom/meizu/settings/home/FlymeDashboardSummary$8;->this$0:Lcom/meizu/settings/home/FlymeDashboardSummary;

    const/16 p2, 0x67

    if-ne p1, p2, :cond_c1

    move v4, v5

    :cond_c1
    invoke-static {p0, v4}, Lcom/meizu/settings/home/FlymeDashboardSummary;->access$1600(Lcom/meizu/settings/home/FlymeDashboardSummary;Z)V

    :cond_c4
    :goto_c4
    return-void
.end method
