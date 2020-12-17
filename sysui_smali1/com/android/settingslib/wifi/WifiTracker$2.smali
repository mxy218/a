.class Lcom/android/settingslib/wifi/WifiTracker$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .registers 2

    .line 1056
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1059
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1060
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->access$300(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getVerboseLoggingLevel()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_14

    move v0, v1

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    sput-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 1061
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_138

    const-string v0, "android.net.vicewifi.WIFI_STATE_CHANGED"

    .line 1063
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    goto/16 :goto_138

    :cond_29
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 1067
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const-string p1, "resultsUpdated"

    .line 1071
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 1073
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isScanSucc "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WifiTracker"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_54

    .line 1075
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1, v2}, Lcom/android/settingslib/wifi/WifiTracker;->access$502(Lcom/android/settingslib/wifi/WifiTracker;Z)Z

    .line 1078
    :cond_54
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$600(Lcom/android/settingslib/wifi/WifiTracker;)V

    .line 1080
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$700(Lcom/android/settingslib/wifi/WifiTracker;)V

    .line 1083
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$800(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onScanStateChanged(Z)V

    goto/16 :goto_145

    :cond_69
    const-string v0, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    .line 1085
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 1086
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_132

    const-string v0, "android.net.vicewifi.LINK_CONFIGURATION_CHANGED"

    .line 1088
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    goto/16 :goto_132

    :cond_83
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 1090
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "networkInfo"

    if-eqz v0, :cond_ae

    .line 1093
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 1099
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$900(Lcom/android/settingslib/wifi/WifiTracker;)Z

    move-result p2

    if-nez p2, :cond_a7

    .line 1100
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1000(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    .line 1101
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$600(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto/16 :goto_145

    .line 1103
    :cond_a7
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1100(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    goto/16 :goto_145

    :cond_ae
    const-string v0, "android.net.vicewifi.STATE_CHANGE"

    .line 1107
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d5

    .line 1108
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 1109
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$900(Lcom/android/settingslib/wifi/WifiTracker;)Z

    move-result p2

    if-eqz p2, :cond_ca

    .line 1110
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1000(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    goto :goto_cf

    .line 1112
    :cond_ca
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1200(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    .line 1114
    :goto_cf
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$600(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto :goto_145

    :cond_d5
    const-string v0, "android.net.wifi.RSSI_CHANGED"

    .line 1116
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f7

    .line 1117
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 1118
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1300(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$300(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 1119
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1000(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    goto :goto_145

    :cond_f7
    const-string v0, "android.net.vicewifi.RSSI_CHANGED"

    .line 1121
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_119

    .line 1122
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    .line 1123
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1300(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$300(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getViceCurrentNetwork()Landroid/net/Network;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 1124
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1000(Lcom/android/settingslib/wifi/WifiTracker;Landroid/net/NetworkInfo;)V

    goto :goto_145

    :cond_119
    const-string v0, "android.intent.action.AUTH_PASSWORD_WRONG"

    .line 1127
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_145

    const/4 p1, -0x1

    const-string v0, "network_id"

    .line 1129
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1130
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$800(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onPasswordError(I)V

    goto :goto_145

    .line 1089
    :cond_132
    :goto_132
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$600(Lcom/android/settingslib/wifi/WifiTracker;)V

    goto :goto_145

    .line 1064
    :cond_138
    :goto_138
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$2;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    const/4 p1, 0x4

    const-string/jumbo v0, "wifi_state"

    .line 1065
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1064
    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$400(Lcom/android/settingslib/wifi/WifiTracker;I)V

    :cond_145
    :goto_145
    return-void
.end method
