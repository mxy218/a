.class Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;
.super Ljava/lang/Object;
.source "WifiTracker.java"

# interfaces
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExt;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiListenerExecutor"
.end annotation


# instance fields
.field private final mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;)V
    .registers 3

    .line 1275
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1276
    iput-object p2, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    return-void
.end method

.method private runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V
    .registers 4

    .line 1324
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$XqD8cV42f6onmE3POo0T1gJeAds;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$XqD8cV42f6onmE3POo0T1gJeAds;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onOtherWifiConnectionChanged$3$WifiTracker$WifiListenerExecutor(Landroid/net/NetworkInfo;)V
    .registers 2

    .line 1317
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    check-cast p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExt;

    invoke-interface {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExt;->onOtherWifiConnectionChanged(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method public synthetic lambda$onPasswordError$2$WifiTracker$WifiListenerExecutor(I)V
    .registers 2

    .line 1307
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    check-cast p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExt;

    invoke-interface {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExt;->onPasswordError(I)V

    return-void
.end method

.method public synthetic lambda$onScanStateChanged$1$WifiTracker$WifiListenerExecutor(Z)V
    .registers 2

    .line 1299
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    check-cast p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExt;

    invoke-interface {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExt;->onScanStateChanged(Z)V

    return-void
.end method

.method public synthetic lambda$onWifiStateChanged$0$WifiTracker$WifiListenerExecutor(I)V
    .registers 2

    .line 1281
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    invoke-interface {p0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListener;->onWifiStateChanged(I)V

    return-void
.end method

.method public synthetic lambda$runAndLog$4$WifiTracker$WifiListenerExecutor(Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 1325
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$000(Lcom/android/settingslib/wifi/WifiTracker;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 1326
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->access$1400()Z

    move-result p0

    if-eqz p0, :cond_13

    const-string p0, "WifiTracker"

    .line 1327
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    :cond_13
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    :cond_16
    return-void
.end method

.method public onAccessPointsChanged()V
    .registers 3

    .line 1292
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settingslib/wifi/-$$Lambda$evcvquoPxZkPmBIit31UXvhXEJk;

    invoke-direct {v1, v0}, Lcom/android/settingslib/wifi/-$$Lambda$evcvquoPxZkPmBIit31UXvhXEJk;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListener;)V

    const-string v0, "Invoking onAccessPointsChanged callback"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectedChanged()V
    .registers 3

    .line 1287
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settingslib/wifi/-$$Lambda$6PbPNXCvqbAnKbPWPJrs-dDWQEQ;

    invoke-direct {v1, v0}, Lcom/android/settingslib/wifi/-$$Lambda$6PbPNXCvqbAnKbPWPJrs-dDWQEQ;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListener;)V

    const-string v0, "Invoking onConnectedChanged callback"

    invoke-direct {p0, v1, v0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method

.method public onOtherWifiConnectionChanged(Landroid/net/NetworkInfo;)V
    .registers 4

    .line 1316
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    instance-of v0, v0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExt;

    if-eqz v0, :cond_17

    .line 1317
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$apKEaoLrDk1H-4u7EDV97Op8y_8;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$apKEaoLrDk1H-4u7EDV97Op8y_8;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Landroid/net/NetworkInfo;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "Invoking onOtherWifiConnectionChanged callback"

    .line 1318
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1317
    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public onPasswordError(I)V
    .registers 5

    .line 1306
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    instance-of v0, v0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExt;

    if-eqz v0, :cond_1e

    .line 1307
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$wzqnIns2PlQEArbQWGLUuyMHlqE;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$wzqnIns2PlQEArbQWGLUuyMHlqE;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1308
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Invoking onPasswordError callback with networkId %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1307
    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public onScanStateChanged(Z)V
    .registers 5

    .line 1298
    iget-object v0, p0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->mDelegatee:Lcom/android/settingslib/wifi/WifiTracker$WifiListener;

    instance-of v0, v0, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExt;

    if-eqz v0, :cond_1e

    .line 1299
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$1xHgBJHqgRxGBubgcN7_TCnLS9M;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$1xHgBJHqgRxGBubgcN7_TCnLS9M;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Z)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1300
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Invoking onScanStateChanged callback with isScanning %b"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1299
    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method

.method public onWifiStateChanged(I)V
    .registers 5

    .line 1281
    new-instance v0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$PZBvWEzpVHhaI95PbZNbzEgAH1I;

    invoke-direct {v0, p0, p1}, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$PZBvWEzpVHhaI95PbZNbzEgAH1I;-><init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;I)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1282
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Invoking onWifiStateChanged callback with state %d"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1281
    invoke-direct {p0, v0, p1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->runAndLog(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
