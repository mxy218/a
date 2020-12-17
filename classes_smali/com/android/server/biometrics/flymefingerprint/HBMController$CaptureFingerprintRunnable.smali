.class Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;
.super Ljava/lang/Object;
.source "HBMController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/flymefingerprint/HBMController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureFingerprintRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/flymefingerprint/HBMController;)V
    .registers 2

    .line 189
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/flymefingerprint/HBMController;Lcom/android/server/biometrics/flymefingerprint/HBMController$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/biometrics/flymefingerprint/HBMController;
    .param p2, "x1"  # Lcom/android/server/biometrics/flymefingerprint/HBMController$1;

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;-><init>(Lcom/android/server/biometrics/flymefingerprint/HBMController;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 193
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->access$400(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->access$500(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->access$600(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Z

    move-result v0

    if-eqz v0, :cond_2b

    :cond_19
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->access$700(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 194
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->access$700(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;->startCaptureFingerprint(Z)V

    .line 195
    return-void

    .line 198
    :cond_2b
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->access$800(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->access$900(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :cond_3d
    :goto_3d
    move v0, v1

    .line 199
    .local v0, "isM1971OrM1973":Z
    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    if-eqz v0, :cond_45

    .line 200
    const-string v2, "/sys/class/meizu/lcm/display/aod2hbm"

    goto :goto_47

    :cond_45
    const-string v2, "/sys/class/meizu/lcm/display/wait_for_capture_fp"

    .line 199
    :goto_47
    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->access$200(Lcom/android/server/biometrics/flymefingerprint/HBMController;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 202
    .local v1, "result":Z
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->access$700(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;

    move-result-object v2

    if-eqz v2, :cond_5e

    .line 203
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->access$700(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/server/biometrics/flymefingerprint/HBMController$CaptureFingerprintListener;->startCaptureFingerprint(Z)V

    .line 205
    :cond_5e
    return-void
.end method
