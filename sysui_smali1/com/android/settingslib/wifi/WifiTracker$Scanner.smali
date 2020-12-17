.class Lcom/android/settingslib/wifi/WifiTracker$Scanner;
.super Landroid/os/Handler;
.source "WifiTracker.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/WifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Scanner"
.end annotation


# instance fields
.field private mRetry:I

.field final synthetic this$0:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settingslib/wifi/WifiTracker;)V
    .registers 2

    .line 1194
    iput-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 1197
    iput p1, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 1230
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_5

    return-void

    .line 1231
    :cond_5
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$300(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/net/wifi/WifiManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1f

    .line 1232
    iput v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    .line 1234
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$800(Lcom/android/settingslib/wifi/WifiTracker;)Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->onScanStateChanged(Z)V

    goto :goto_41

    .line 1236
    :cond_1f
    iget p1, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    const/4 v2, 0x3

    if-lt p1, v2, :cond_41

    .line 1237
    iput v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    .line 1238
    iget-object p1, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiTracker;->access$1500(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 1239
    iget-object p0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->this$0:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-static {p0}, Lcom/android/settingslib/wifi/WifiTracker;->access$1500(Lcom/android/settingslib/wifi/WifiTracker;)Landroid/content/Context;

    move-result-object p0

    sget p1, Lcom/android/settingslib/R$string;->wifi_fail_to_scan:I

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_40
    return-void

    :cond_41
    :goto_41
    const-wide/16 v1, 0x2710

    .line 1243
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method isScanning()Z
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    .line 1225
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    return p0
.end method

.method pause()V
    .registers 3

    .line 1216
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "WifiTracker"

    const-string v1, "Scanner pause"

    .line 1217
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v0, 0x0

    .line 1219
    iput v0, p0, Lcom/android/settingslib/wifi/WifiTracker$Scanner;->mRetry:I

    .line 1220
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method resume()V
    .registers 3

    .line 1200
    invoke-static {}, Lcom/android/settingslib/wifi/WifiTracker;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "WifiTracker"

    const-string v1, "Scanner resume"

    .line 1201
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v0, 0x0

    .line 1203
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1204
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_17
    return-void
.end method
