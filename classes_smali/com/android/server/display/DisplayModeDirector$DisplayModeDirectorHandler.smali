.class final Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
.super Landroid/os/Handler;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayModeDirector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayModeDirectorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayModeDirector;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/Looper;)V
    .registers 4

    .line 416
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    .line 417
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 418
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 422
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_29

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x4

    if-eq v0, v1, :cond_f

    goto :goto_54

    .line 446
    :cond_f
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 447
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDeviceConfigRefreshRateInZoneChanged(I)V

    goto :goto_54

    .line 440
    :cond_1b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    .line 441
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->onDeviceConfigDefaultPeakRefreshRateChanged(Ljava/lang/Float;)V

    .line 443
    goto :goto_54

    .line 429
    :cond_29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/util/Pair;

    .line 431
    if-eqz p1, :cond_41

    .line 432
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/DisplayModeDirector;->access$000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [I

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDeviceConfigThresholdsChanged([I[I)V

    goto :goto_54

    .line 435
    :cond_41
    iget-object p1, p0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->this$0:Lcom/android/server/display/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/DisplayModeDirector;->access$000(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->onDeviceConfigThresholdsChanged([I[I)V

    .line 437
    goto :goto_54

    .line 424
    :cond_4c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/display/DisplayModeDirector$Listener;

    .line 425
    invoke-interface {p1}, Lcom/android/server/display/DisplayModeDirector$Listener;->onAllowedDisplayModesChanged()V

    .line 426
    nop

    .line 451
    :goto_54
    return-void
.end method
