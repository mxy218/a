.class public interface abstract Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;
.super Ljava/lang/Object;
.source "WindowManagerPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/WindowManagerPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WindowManagerFuncs"
.end annotation


# static fields
.field public static final CAMERA_LENS_COVERED:I = 0x1

.field public static final CAMERA_LENS_COVER_ABSENT:I = -0x1

.field public static final CAMERA_LENS_UNCOVERED:I = 0x0

.field public static final LID_ABSENT:I = -0x1

.field public static final LID_BEHAVIOR_LOCK:I = 0x2

.field public static final LID_BEHAVIOR_NONE:I = 0x0

.field public static final LID_BEHAVIOR_SLEEP:I = 0x1

.field public static final LID_CLOSED:I = 0x0

.field public static final LID_OPEN:I = 0x1


# direct methods
.method public static cameraLensStateToString(I)Ljava/lang/String;
    .registers 2

    .line 615
    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    .line 623
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 621
    :cond_d
    const-string p0, "CAMERA_LENS_COVERED"

    return-object p0

    .line 619
    :cond_10
    const-string p0, "CAMERA_LENS_UNCOVERED"

    return-object p0

    .line 617
    :cond_13
    const-string p0, "CAMERA_LENS_COVER_ABSENT"

    return-object p0
.end method

.method public static lidStateToString(I)Ljava/lang/String;
    .registers 2

    .line 599
    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    .line 607
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 605
    :cond_d
    const-string p0, "LID_OPEN"

    return-object p0

    .line 603
    :cond_10
    const-string p0, "LID_CLOSED"

    return-object p0

    .line 601
    :cond_13
    const-string p0, "LID_ABSENT"

    return-object p0
.end method


# virtual methods
.method public abstract createInputConsumer(Landroid/os/Looper;Ljava/lang/String;Landroid/view/InputEventReceiver$Factory;I)Lcom/android/server/policy/WindowManagerPolicy$InputConsumer;
.end method

.method public abstract getCameraLensCoverState()I
.end method

.method public abstract getInputMethodWindowLw()Lcom/android/server/policy/WindowManagerPolicy$WindowState;
.end method

.method public abstract getLidState()I
.end method

.method public abstract getStackBounds(IILandroid/graphics/Rect;)V
.end method

.method public abstract getWindowManagerLock()Ljava/lang/Object;
.end method

.method public abstract lockDeviceNow()V
.end method

.method public abstract moveDisplayToTop(I)V
.end method

.method public abstract notifyKeyguardTrustedChanged()V
.end method

.method public abstract onKeyguardShowingAndNotOccludedChanged()V
.end method

.method public abstract onPowerKeyDown(Z)V
.end method

.method public abstract onUserSwitched()V
.end method

.method public abstract reboot(Z)V
.end method

.method public abstract reboot(ZLjava/lang/String;)V
.end method

.method public abstract rebootSafeMode(Z)V
.end method

.method public abstract registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V
.end method

.method public abstract screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
.end method

.method public abstract shutdown(Z)V
.end method

.method public abstract switchKeyboardLayout(II)V
.end method

.method public abstract triggerAnimationFailsafe()V
.end method

.method public abstract unregisterPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;I)V
.end method
