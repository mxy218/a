.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$apKEaoLrDk1H-4u7EDV97Op8y_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

.field private final synthetic f$1:Landroid/net/NetworkInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Landroid/net/NetworkInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$apKEaoLrDk1H-4u7EDV97Op8y_8;->f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    iput-object p2, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$apKEaoLrDk1H-4u7EDV97Op8y_8;->f$1:Landroid/net/NetworkInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$apKEaoLrDk1H-4u7EDV97Op8y_8;->f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    iget-object p0, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$apKEaoLrDk1H-4u7EDV97Op8y_8;->f$1:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->lambda$onOtherWifiConnectionChanged$3$WifiTracker$WifiListenerExecutor(Landroid/net/NetworkInfo;)V

    return-void
.end method
