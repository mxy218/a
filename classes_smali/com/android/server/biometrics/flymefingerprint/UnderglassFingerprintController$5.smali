.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$5;
.super Ljava/lang/Object;
.source "UnderglassFingerprintController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->closeHBM()V
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

    .line 695
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$5;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "close hbm by keyguard, mClient:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$5;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$5;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1900(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 700
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$5;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1700(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;IZ)V

    .line 701
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$5;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$402(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Lcom/android/server/biometrics/ClientMonitor;)Lcom/android/server/biometrics/ClientMonitor;

    .line 702
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$5;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2000(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 703
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$5;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/HBMController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->setHBM(Z)V

    .line 706
    :cond_42
    return-void
.end method
