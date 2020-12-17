.class Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;
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
    name = "DimLayerRunnable"
.end annotation


# instance fields
.field mAlpha:F

.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;


# direct methods
.method constructor <init>(Lcom/android/server/biometrics/flymefingerprint/HBMController;F)V
    .registers 3
    .param p2, "alpha"  # F

    .line 211
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput p2, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;->mAlpha:F

    .line 213
    return-void
.end method


# virtual methods
.method public getAlpha()F
    .registers 2

    .line 230
    iget v0, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;->mAlpha:F

    return v0
.end method

.method public run()V
    .registers 5

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawDimLayer alpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;->mAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HBMController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-wide/16 v0, 0x8

    const-string v2, "drawDimLayer"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 221
    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;->this$0:Lcom/android/server/biometrics/flymefingerprint/HBMController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->access$1000(Lcom/android/server/biometrics/flymefingerprint/HBMController;)Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;

    move-result-object v2

    iget v3, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;->mAlpha:F

    invoke-virtual {v2, v3}, Lcom/android/server/biometrics/flymefingerprint/FingerprintDimLayer;->draw(F)V

    .line 222
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 223
    return-void
.end method

.method public setAlpha(F)V
    .registers 2
    .param p1, "alpha"  # F

    .line 226
    iput p1, p0, Lcom/android/server/biometrics/flymefingerprint/HBMController$DimLayerRunnable;->mAlpha:F

    .line 227
    return-void
.end method
