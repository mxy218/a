.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;
.super Landroid/os/Handler;
.source "UnderglassFingerprintController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 269
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 270
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 271
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"  # Landroid/os/Message;

    .line 275
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_1f

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    .line 277
    :cond_1f
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/biometrics/EnrollClient;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$500(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 278
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$IconHandler;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$400(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/ClientMonitor;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/biometrics/ClientMonitor;->onAcquired(II)Z

    .line 284
    :cond_3c
    :goto_3c
    return-void
.end method
