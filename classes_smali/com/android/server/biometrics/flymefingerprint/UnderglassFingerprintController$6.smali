.class Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$6;
.super Ljava/lang/Object;
.source "UnderglassFingerprintController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->handleDismissIcon()V
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

    .line 734
    iput-object p1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$6;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 738
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$6;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2200(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1602(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;I)I

    .line 739
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$6;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1620(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;I)I

    .line 740
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$6;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/HBMController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$6;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v2}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->setBrightness(I)V

    .line 741
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$6;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1612(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;I)I

    .line 742
    iget-object v0, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$6;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v0}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$2100(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)Lcom/android/server/biometrics/flymefingerprint/HBMController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController$6;->this$0:Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;

    invoke-static {v1}, Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;->access$1600(Lcom/android/server/biometrics/flymefingerprint/UnderglassFingerprintController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/flymefingerprint/HBMController;->setBrightness(I)V

    .line 743
    return-void
.end method
