.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$ShutdownBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UnderglassFingerprintController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShutdownBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V
    .registers 2

    .line 299
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$ShutdownBroadcastReceiver;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p2, "x1"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$1;

    .line 299
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$ShutdownBroadcastReceiver;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 302
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    if-ne v0, v1, :cond_13

    .line 303
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$ShutdownBroadcastReceiver;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$702(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)Z

    .line 304
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$ShutdownBroadcastReceiver;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$800(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    .line 307
    :cond_13
    return-void
.end method
