.class Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;
.super Landroid/content/BroadcastReceiver;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)V
    .registers 2

    .line 1925
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1928
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object p1, p1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$900(Lcom/android/server/connectivity/Vpn;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 1930
    :cond_b
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 1931
    const/4 p1, -0x1

    const-string/jumbo v0, "networkType"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    .line 1932
    invoke-static {v0}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$1000(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-ne p1, v0, :cond_50

    .line 1933
    const-string/jumbo p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkInfo;

    .line 1935
    if-eqz p1, :cond_50

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result p1

    if-nez p1, :cond_50

    .line 1937
    :try_start_3c
    iget-object p1, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    iget-object p1, p1, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {p1}, Lcom/android/server/connectivity/Vpn;->access$1200(Lcom/android/server/connectivity/Vpn;)Landroid/net/INetworkManagementEventObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner$1;->this$1:Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;

    invoke-static {p2}, Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;->access$1100(Lcom/android/server/connectivity/Vpn$LegacyVpnRunner;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/net/INetworkManagementEventObserver;->interfaceStatusChanged(Ljava/lang/String;Z)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_4e} :catch_4f

    goto :goto_50

    .line 1938
    :catch_4f
    move-exception p1

    .line 1942
    :cond_50
    :goto_50
    return-void
.end method
