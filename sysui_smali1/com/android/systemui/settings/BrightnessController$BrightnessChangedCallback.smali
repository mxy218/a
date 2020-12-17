.class final Lcom/android/systemui/settings/BrightnessController$BrightnessChangedCallback;
.super Landroid/os/IBrightnessChangedCallback$Stub;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrightnessChangedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .registers 2

    .line 536
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessChangedCallback;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Landroid/os/IBrightnessChangedCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/settings/BrightnessController;Lcom/android/systemui/settings/BrightnessController$1;)V
    .registers 3

    .line 536
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController$BrightnessChangedCallback;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    return-void
.end method


# virtual methods
.method public onBrightnessChanged(I)V
    .registers 4

    .line 540
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessChangedCallback;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1700(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessChangedCallback;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$1700(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/settings/ToggleSlider;->getTracking()Z

    move-result v0

    if-nez v0, :cond_28

    .line 541
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessChangedCallback;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v0}, Lcom/android/systemui/settings/BrightnessController;->access$900(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    .line 542
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController$BrightnessChangedCallback;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p0}, Lcom/android/systemui/settings/BrightnessController;->access$1200(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result p0

    .line 541
    invoke-virtual {v0, v1, p1, p0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 542
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_28
    return-void
.end method
