.class public interface abstract Lcom/android/server/wm/FlymeWindowModeController;
.super Ljava/lang/Object;
.source "FlymeWindowModeController.java"

# interfaces
.implements Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;


# virtual methods
.method public adjustDisplayInfoLock(Landroid/view/DisplayInfo;II)Landroid/view/DisplayInfo;
    .registers 4
    .param p1, "displayInfo"  # Landroid/view/DisplayInfo;
    .param p2, "displayId"  # I
    .param p3, "callingUid"  # I

    .line 123
    return-object p1
.end method

.method public applyAnimation(Lcom/android/server/wm/AppWindowToken;Landroid/view/animation/Animation;Landroid/content/res/Configuration;IZ)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "appWindowToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "anim"  # Landroid/view/animation/Animation;
    .param p3, "config"  # Landroid/content/res/Configuration;
    .param p4, "transit"  # I
    .param p5, "enter"  # Z

    .line 85
    return-object p2
.end method

.method public applyAnimation(Lcom/android/server/wm/WindowState;Landroid/view/animation/Animation;IZI)Landroid/view/animation/Animation;
    .registers 6
    .param p1, "windowState"  # Lcom/android/server/wm/WindowState;
    .param p2, "anim"  # Landroid/view/animation/Animation;
    .param p3, "transit"  # I
    .param p4, "isEntrance"  # Z
    .param p5, "attr"  # I

    .line 89
    return-object p2
.end method

.method public closeWindowMode(Z)V
    .registers 2
    .param p1, "anim"  # Z

    .line 132
    return-void
.end method

.method public computeFrameForWindowMode(Lcom/android/server/wm/WindowState;Z)I
    .registers 4
    .param p1, "windowState"  # Lcom/android/server/wm/WindowState;
    .param p2, "isImeTarget"  # Z

    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public getAppAnimationLayer(Lcom/android/server/wm/AppWindowToken;)Landroid/view/SurfaceControl;
    .registers 3
    .param p1, "windowToken"  # Lcom/android/server/wm/AppWindowToken;

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayFrames(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;
    .registers 3
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 53
    return-object p2
.end method

.method public getWindowModeWindowFrame(I)Lcom/android/server/wm/FlymeWindowModeFrame;
    .registers 3
    .param p1, "rotation"  # I

    .line 14
    const/4 v0, 0x0

    return-object v0
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "wms"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 23
    return-void
.end method

.method public isLaunchInSpaceMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)Z
    .registers 7
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reusedActivity"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "source"  # Lcom/android/server/wm/ActivityRecord;
    .param p4, "options"  # Landroid/app/ActivityOptions;
    .param p5, "result"  # Lcom/android/server/wm/LaunchParamsController$LaunchParams;

    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public isWindowMode(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "token"  # Landroid/os/IBinder;

    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public moveTasksToFullscreen(Lcom/android/server/wm/TaskStack;Z)V
    .registers 3
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "anim"  # Z

    .line 62
    return-void
.end method

.method public moveWindowTaskToBack(Lcom/android/server/wm/TaskStack;ZZI)V
    .registers 5
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "anim"  # Z
    .param p3, "notMovePosition"  # Z
    .param p4, "delay"  # I

    .line 31
    return-void
.end method

.method public onActivityStackMoveToBack(Lcom/android/server/wm/ActivityStack;)V
    .registers 2
    .param p1, "activityStack"  # Lcom/android/server/wm/ActivityStack;

    .line 46
    return-void
.end method

.method public onActivityStackWindowModeChange(Lcom/android/server/wm/ActivityStack;)V
    .registers 2
    .param p1, "activityStack"  # Lcom/android/server/wm/ActivityStack;

    .line 27
    return-void
.end method

.method public onAppWindowTokenAnimationLeashCreated(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "appWindowToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p3, "leash"  # Landroid/view/SurfaceControl;

    .line 106
    return-void
.end method

.method public onAppWindowTokenAnimationLeashLost(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "appWindowToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 102
    return-void
.end method

.method public onConfigurationChanged(Lcom/android/server/wm/DisplayContent;II)V
    .registers 4
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "lastOrientation"  # I
    .param p3, "newOrientation"  # I

    .line 50
    return-void
.end method

.method public onDisplayBeginLayoutLw(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayFrames;I)V
    .registers 4
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;
    .param p3, "uiMode"  # I

    .line 98
    return-void
.end method

.method public onFocusedAppChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .registers 4
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "oldFocus"  # Lcom/android/server/wm/AppWindowToken;
    .param p3, "newFocus"  # Lcom/android/server/wm/AppWindowToken;

    .line 66
    return-void
.end method

.method public onKeyguardState(Z)V
    .registers 2
    .param p1, "showing"  # Z

    .line 117
    return-void
.end method

.method public onPowerKeyDown(Z)V
    .registers 2
    .param p1, "isScreenOn"  # Z

    .line 136
    return-void
.end method

.method public onRecentsAnimationFinish()V
    .registers 1

    .line 43
    return-void
.end method

.method public onScreenTurningState(I)V
    .registers 2
    .param p1, "state"  # I

    .line 120
    return-void
.end method

.method public onTaskStackAnimationLeashCreated(Lcom/android/server/wm/TaskStack;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p3, "leash"  # Landroid/view/SurfaceControl;

    .line 35
    return-void
.end method

.method public onTaskStackAnimationLeashLost(Lcom/android/server/wm/TaskStack;Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 39
    return-void
.end method

.method public onWindowRemove(Lcom/android/server/wm/WindowState;)V
    .registers 2
    .param p1, "win"  # Lcom/android/server/wm/WindowState;

    .line 114
    return-void
.end method

.method public registerWindowModeListener(Lflyme/view/IWindowModeCallback;)V
    .registers 2
    .param p1, "callback"  # Lflyme/view/IWindowModeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public shouldRelaunchOnWindowChange(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "activityRecord"  # Lcom/android/server/wm/ActivityRecord;

    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterWindowModeListener(Lflyme/view/IWindowModeCallback;)V
    .registers 2
    .param p1, "callback"  # Lflyme/view/IWindowModeCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    return-void
.end method

.method public updateWindowModeFrame(Lcom/android/server/wm/ActivityStack;)V
    .registers 2
    .param p1, "activityStack"  # Lcom/android/server/wm/ActivityStack;

    .line 82
    return-void
.end method

.method public updateWindowModeShowState(Z)V
    .registers 2
    .param p1, "show"  # Z

    .line 128
    return-void
.end method
