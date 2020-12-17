.class Lcom/android/systemui/settings/BrightnessController$6;
.super Landroid/os/Handler;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .registers 2

    .line 244
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 247
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/settings/BrightnessController;->access$1502(Lcom/android/systemui/settings/BrightnessController;Z)Z

    const/4 v0, 0x0

    .line 249
    :try_start_7
    iget v2, p1, Landroid/os/Message;->what:I

    if-eq v2, v1, :cond_66

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4e

    const/4 v3, 0x3

    if-eq v2, v3, :cond_3a

    const/4 v3, 0x4

    if-eq v2, v3, :cond_27

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1b

    .line 272
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_73

    .line 269
    :cond_1b
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_22

    goto :goto_23

    :cond_22
    move v1, v0

    :goto_23
    invoke-static {v2, v1}, Lcom/android/systemui/settings/BrightnessController;->access$1800(Lcom/android/systemui/settings/BrightnessController;Z)V

    goto :goto_73

    .line 264
    :cond_27
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$1700(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 265
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$1700(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_73

    .line 259
    :cond_3a
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$1700(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object p1

    if-eqz p1, :cond_73

    .line 260
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p1}, Lcom/android/systemui/settings/BrightnessController;->access$1700(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-interface {p1, v1}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_73

    .line 254
    :cond_4e
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$1700(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v2

    if-eqz v2, :cond_73

    .line 255
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v2}, Lcom/android/systemui/settings/BrightnessController;->access$1700(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v2

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_61

    goto :goto_62

    :cond_61
    move v1, v0

    :goto_62
    invoke-interface {v2, v1}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    goto :goto_73

    .line 251
    :cond_66
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_6f

    goto :goto_70

    :cond_6f
    move v1, v0

    :goto_70
    invoke-static {v2, v3, v1}, Lcom/android/systemui/settings/BrightnessController;->access$1600(Lcom/android/systemui/settings/BrightnessController;IZ)V
    :try_end_73
    .catchall {:try_start_7 .. :try_end_73} :catchall_79

    .line 275
    :cond_73
    :goto_73
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->access$1502(Lcom/android/systemui/settings/BrightnessController;Z)Z

    return-void

    :catchall_79
    move-exception p1

    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {p0, v0}, Lcom/android/systemui/settings/BrightnessController;->access$1502(Lcom/android/systemui/settings/BrightnessController;Z)Z

    throw p1
.end method
