.class Lcom/android/server/display/WifiDisplayController$22;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2

    .line 1144
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1147
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1148
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1151
    const/4 p1, 0x1

    const-string/jumbo v0, "wifi_p2p_state"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    .line 1159
    :goto_19
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p2, p1}, Lcom/android/server/display/WifiDisplayController;->access$3900(Lcom/android/server/display/WifiDisplayController;Z)V

    .line 1160
    goto :goto_5c

    :cond_1f
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1165
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p1}, Lcom/android/server/display/WifiDisplayController;->access$4000(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_5c

    .line 1166
    :cond_2d
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1167
    const-string/jumbo p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 1174
    iget-object p2, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p2, p1}, Lcom/android/server/display/WifiDisplayController;->access$3600(Lcom/android/server/display/WifiDisplayController;Landroid/net/NetworkInfo;)V

    goto :goto_5b

    .line 1175
    :cond_44
    const-string v0, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5b

    .line 1176
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$22;->this$0:Lcom/android/server/display/WifiDisplayController;

    const-string/jumbo v0, "wifiP2pDevice"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {p1, p2}, Lcom/android/server/display/WifiDisplayController;->access$2902(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_5c

    .line 1175
    :cond_5b
    :goto_5b
    nop

    .line 1183
    :goto_5c
    return-void
.end method
