.class public Lcom/android/systemui/settings/BrightnessDialog;
.super Landroid/app/Activity;
.source "BrightnessDialog.java"


# instance fields
.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 39
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x30

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    const/4 v0, 0x2

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/Window;->requestFeature(I)Z

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 50
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$layout;->mz_quick_settings_brightness_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 54
    sget p1, Lcom/android/systemui/R$id;->brightness_slider:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/ToggleSliderView;

    .line 55
    new-instance v0, Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/settings/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/16 v0, 0x19

    if-eq p1, v0, :cond_c

    const/16 v0, 0x18

    if-eq p1, v0, :cond_c

    const/16 v0, 0xa4

    if-ne p1, v0, :cond_f

    .line 77
    :cond_c
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 80
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStart()V
    .registers 2

    .line 60
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/settings/BrightnessController;->registerCallbacks()V

    const/16 v0, 0xdc

    .line 62
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    return-void
.end method

.method protected onStop()V
    .registers 2

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const/16 v0, 0xdc

    .line 68
    invoke-static {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 69
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessDialog;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/settings/BrightnessController;->unregisterCallbacks()V

    return-void
.end method
