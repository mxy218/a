.class public final synthetic Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$wzqnIns2PlQEArbQWGLUuyMHlqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$wzqnIns2PlQEArbQWGLUuyMHlqE;->f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    iput p2, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$wzqnIns2PlQEArbQWGLUuyMHlqE;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$wzqnIns2PlQEArbQWGLUuyMHlqE;->f$0:Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;

    iget p0, p0, Lcom/android/settingslib/wifi/-$$Lambda$WifiTracker$WifiListenerExecutor$wzqnIns2PlQEArbQWGLUuyMHlqE;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/settingslib/wifi/WifiTracker$WifiListenerExecutor;->lambda$onPasswordError$2$WifiTracker$WifiListenerExecutor(I)V

    return-void
.end method
