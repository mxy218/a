.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$1xHgBJHqgRxGBubgcN7_TCnLS9M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$1xHgBJHqgRxGBubgcN7_TCnLS9M;->f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    iput-boolean p2, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$1xHgBJHqgRxGBubgcN7_TCnLS9M;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$1xHgBJHqgRxGBubgcN7_TCnLS9M;->f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    iget-boolean p0, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$1xHgBJHqgRxGBubgcN7_TCnLS9M;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->lambda$onScanStateChanged$1$WifiTracker$WifiListenerExecutor(Z)V

    return-void
.end method
