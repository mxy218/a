.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$2;
.super Ljava/lang/Object;
.source "UnderglassFingerprintController.java"

# interfaces
.implements Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 372
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$2;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startCaptureFingerprint(Z)V
    .registers 6
    .param p1, "success"  # Z

    .line 375
    if-eqz p1, :cond_28

    .line 376
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$2;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$2;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 377
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$2;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$2;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$2;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1300(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2e

    .line 379
    :cond_28
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$2;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->setAuthenticated(ZZ)V

    .line 381
    :goto_2e
    return-void
.end method
