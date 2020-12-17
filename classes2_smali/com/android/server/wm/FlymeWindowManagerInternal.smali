.class public abstract Lcom/android/server/wm/FlymeWindowManagerInternal;
.super Ljava/lang/Object;
.source "FlymeWindowManagerInternal.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract adjustDisplayInfoLock(Landroid/view/DisplayInfo;II)Landroid/view/DisplayInfo;
.end method

.method public abstract adjustInterceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
.end method

.method public abstract applyAnimation(Lcom/android/server/wm/AppWindowToken;Landroid/view/animation/Animation;Landroid/content/res/Configuration;IZ)Landroid/view/animation/Animation;
.end method

.method public abstract applyAnimation(Lcom/android/server/wm/WindowState;Landroid/view/animation/Animation;IZI)Landroid/view/animation/Animation;
.end method

.method public abstract computeWindowStatePosition(Lcom/android/server/wm/WindowState;Z)I
.end method

.method public abstract getAppAnimationLayer(Lcom/android/server/wm/AppWindowToken;)Landroid/view/SurfaceControl;
.end method

.method public abstract getDisplayFrames(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;
.end method

.method public abstract getWindowModeTouchOffset(Lcom/android/server/wm/WindowState;Z)Landroid/graphics/PointF;
.end method

.method public abstract getWindowModeWindowFrame()Lcom/android/server/wm/FlymeWindowModeFrame;
.end method

.method public abstract isColorFadeShow()Z
.end method

.method public abstract isFeatureOpen(I)Z
    .param p1  # I
        .annotation build Lcom/android/server/wm/FlymeFeatureConfig$Feature;
        .end annotation
    .end param
.end method

.method public abstract isFingerprintAuthenticatingInAodMode()Z
.end method

.method public abstract isKeyguardShowing()Z
.end method

.method public abstract isLockOrientationForSensor()Z
.end method

.method public abstract isWindowMode(Landroid/os/IBinder;)Z
.end method

.method public abstract moveWindowTaskToBack(Lcom/android/server/wm/TaskStack;Z)V
.end method

.method public abstract onActivityStackConfigurationChanged(Lcom/android/server/wm/ActivityStack;Z)V
.end method

.method public abstract onActivityStackCreate(Lcom/android/server/wm/ActivityStack;)V
.end method

.method public abstract onActivityStackMoveToBack(Lcom/android/server/wm/ActivityStack;)V
.end method

.method public abstract onActivityStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V
.end method

.method public abstract onAppWindowTokenAnimationLeashCreated(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
.end method

.method public abstract onAppWindowTokenAnimationLeashLost(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onConfigurationChanged(Lcom/android/server/wm/DisplayContent;II)V
.end method

.method public abstract onDisplayBeginLayoutLw(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayFrames;I)V
.end method

.method public abstract onDisplayContentCreate(Lcom/android/server/wm/DisplayContent;)V
.end method

.method public abstract onFinishActivityWithKeyguard(ILcom/android/server/wm/ActivityRecord;)V
.end method

.method public abstract onFocusedAppChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
.end method

.method public abstract onKeyguardState(Z)V
.end method

.method public abstract onLaunchParamsControllerInit(Lcom/android/server/wm/LaunchParamsController;)V
.end method

.method public abstract onPowerKeyDown(IZ)V
.end method

.method public abstract onRecentsAnimationFinish()V
.end method

.method public abstract onScreenTurningState(I)V
.end method

.method public abstract onTaskStackAnimationLeashCreated(Lcom/android/server/wm/TaskStack;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
.end method

.method public abstract onTaskStackAnimationLeashLost(Lcom/android/server/wm/TaskStack;Landroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract onWindowRemove(Lcom/android/server/wm/WindowState;)V
.end method

.method public abstract sendResultToActivity(Landroid/content/pm/ActivityInfo;Landroid/app/ResultInfo;)V
.end method

.method public abstract setColorFadeShow(Z)V
.end method

.method public abstract setFingerprintAuthenticatingInAodMode(Z)V
.end method

.method public abstract shouldFinishWithAccessControl(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Z)Z
.end method

.method public abstract shouldRelaunchOnWindowChange(Lcom/android/server/wm/ActivityRecord;)Z
.end method

.method public abstract systemReady()V
.end method
