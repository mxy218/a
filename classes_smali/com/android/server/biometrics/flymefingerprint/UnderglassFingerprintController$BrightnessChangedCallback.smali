.class final Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$BrightnessChangedCallback;
.super Landroid/os/IBrightnessChangedCallback$Stub;
.source "UnderglassFingerprintController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrightnessChangedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;


# direct methods
.method private constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V
    .registers 2

    .line 248
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$BrightnessChangedCallback;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-direct {p0}, Landroid/os/IBrightnessChangedCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$1;)V
    .registers 3
    .param p1, "x0"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;
    .param p2, "x1"  # Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$1;

    .line 248
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$BrightnessChangedCallback;-><init>(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)V

    return-void
.end method


# virtual methods
.method public onBrightnessChanged(I)V
    .registers 3
    .param p1, "brightness"  # I

    .line 252
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$BrightnessChangedCallback;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;I)V

    .line 253
    return-void
.end method
