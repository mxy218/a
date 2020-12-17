.class final Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$GestureCallback;
.super Landroid/view/IGestureCallback$Stub;
.source "UnderglassFingerprintController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GestureCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V
    .registers 2

    .line 256
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$GestureCallback;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-direct {p0}, Landroid/view/IGestureCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p2, "x1"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$1;

    .line 256
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$GestureCallback;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    return-void
.end method


# virtual methods
.method public onGestureTrigger(I)V
    .registers 4
    .param p1, "data"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    const/16 v0, 0xa1

    if-ne p1, v0, :cond_b

    .line 261
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$GestureCallback;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$300(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V

    goto :goto_15

    .line 262
    :cond_b
    const/16 v0, 0xa2

    if-ne p1, v0, :cond_15

    .line 263
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$GestureCallback;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$300(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Z)V

    .line 265
    :cond_15
    :goto_15
    return-void
.end method
