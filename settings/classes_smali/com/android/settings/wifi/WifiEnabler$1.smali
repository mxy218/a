.class Lcom/android/settings/wifi/WifiEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiEnabler;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 64
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p0}, Lcom/android/settings/wifi/WifiEnabler;->access$000(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->access$100(Lcom/android/settings/wifi/WifiEnabler;I)V

    goto :goto_66

    :cond_1a
    const-string v0, "android.net.wifi.supplicant.STATE_CHANGE"

    .line 65
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 66
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiEnabler;->access$200(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_66

    .line 67
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    const-string p1, "newState"

    .line 68
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/SupplicantState;

    .line 67
    invoke-static {p1}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->access$300(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_66

    :cond_40
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 70
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    const-string p1, "networkInfo"

    .line 71
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 73
    iget-object p2, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-static {p2}, Lcom/android/settings/wifi/WifiEnabler;->access$200(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler$1;->this$0:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->access$300(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V

    :cond_66
    :goto_66
    return-void
.end method