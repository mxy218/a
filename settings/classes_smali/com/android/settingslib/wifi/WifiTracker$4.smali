.class Lcom/android/settingslib/wifi/WifiTracker$4;
.super Ljava/lang/Object;
.source "WifiTracker.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/wifi/WifiTracker;->registerFreeWifiService()V
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

    .line 1416
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$4;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    const-string p1, "WifiTracker"

    const-string v0, "Free wifi service connected."

    .line 1419
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$4;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1902(Lcom/android/settingslib/wifi/WifiTracker;Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;)Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    .line 1424
    :try_start_10
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$4;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {v0}, Lcom/android/settingslib/wifi/WifiTracker;->access$2000(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 1426
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$4;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$1700(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/FreeWifiManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/FreeWifiManager;->isFreeWifiEnabled()Z

    move-result p2

    if-nez p2, :cond_2c

    const-string p0, "Free wifi is not enabled when service connected."

    .line 1427
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1431
    :cond_2c
    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$4;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$900(Lcom/android/settingslib/wifi/WifiTracker;)Z

    move-result p2

    if-eqz p2, :cond_3a

    const-string p0, "ServiceConnection vice wifi not support free wifi"

    .line 1432
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1437
    :cond_3a
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$4;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1900(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$4;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p2}, Lcom/android/settingslib/wifi/WifiTracker;->access$2100(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->registerCallback(Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerCallback;)V

    .line 1438
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$4;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$300(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p1

    if-eqz p1, :cond_63

    .line 1440
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$4;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$1900(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;

    move-result-object p0

    invoke-interface {p0}, Lcom/meizu/wifiadmin/sdk/IFreeWifiManagerService;->remoteQuery()V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p0

    .line 1443
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_63
    :goto_63
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    return-void
.end method
