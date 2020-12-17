.class Lcom/android/settingslib/wifi/WifiTracker$3;
.super Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub;
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

    .line 1379
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$3;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoginCallBack(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1382
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$3;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1600(Lcom/android/settingslib/wifi/WifiTracker;I)V

    return-void
.end method

.method public onQueryCallback(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1390
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$3;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->access$1700(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/FreeWifiManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/FreeWifiManager;->isFreeWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 1395
    :cond_d
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$3;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1800(Lcom/android/settingslib/wifi/WifiTracker;Ljava/util/List;)V

    return-void
.end method
