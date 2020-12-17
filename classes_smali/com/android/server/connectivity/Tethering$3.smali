.class Lcom/android/server/connectivity/Tethering$3;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/connectivity/Tethering;

    .line 2190
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumClientsChanged(I)V
    .registers 2
    .param p1, "numClients"  # I

    .line 2212
    return-void
.end method

.method public onStaConnected(Ljava/lang/String;I)V
    .registers 6
    .param p1, "Macaddr"  # Ljava/lang/String;
    .param p2, "numClients"  # I

    .line 2203
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_16

    .line 2204
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$500()Ljava/lang/String;

    move-result-object v0

    const-string v1, "The softap is not enabled. Do not update the notification."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2205
    return-void

    .line 2207
    :cond_16
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    const v1, 0xa0802ba

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;IZ)V

    .line 2208
    return-void
.end method

.method public onStaDisconnected(Ljava/lang/String;I)V
    .registers 6
    .param p1, "Macaddr"  # Ljava/lang/String;
    .param p2, "numClients"  # I

    .line 2198
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$3;->this$0:Lcom/android/server/connectivity/Tethering;

    const v1, 0xa0802ba

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/connectivity/Tethering;->access$1300(Lcom/android/server/connectivity/Tethering;IZ)V

    .line 2199
    return-void
.end method

.method public onStateChanged(II)V
    .registers 3
    .param p1, "state"  # I
    .param p2, "failureReason"  # I

    .line 2194
    return-void
.end method
