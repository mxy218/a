.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;
.super Landroid/os/Handler;
.source "UnderglassFingerprintController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyHalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"  # Landroid/os/Looper;

    .line 289
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    .line 290
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 291
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"  # Landroid/os/Message;

    .line 295
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$NotifyHalHandler;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;II)I

    .line 296
    return-void
.end method
