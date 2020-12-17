.class public interface abstract Lcom/android/server/wm/FlymeMoveWindowController;
.super Ljava/lang/Object;
.source "FlymeMoveWindowController.java"


# virtual methods
.method public adjustInputWindow(Lcom/android/server/wm/DisplayFrames;)V
    .registers 2
    .param p1, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 21
    return-void
.end method

.method public adjustInterceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .registers 5
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public adjustOnOrientationChanged(II)V
    .registers 3
    .param p1, "lastOrientation"  # I
    .param p2, "newOrientation"  # I

    .line 44
    return-void
.end method

.method public getMovedWinPoint()Landroid/graphics/Point;
    .registers 3

    .line 51
    new-instance v0, Landroid/graphics/Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 3
    .param p1, "wms"  # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 17
    return-void
.end method

.method public moveWindow(II)Z
    .registers 4
    .param p1, "command"  # I
    .param p2, "duration"  # I

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public onAnimationBegin(Lcom/android/server/wm/TaskStack;)V
    .registers 2
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;

    .line 28
    return-void
.end method

.method public onAnimationDone(Lcom/android/server/wm/TaskStack;)V
    .registers 2
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;

    .line 36
    return-void
.end method

.method public onFocusedAppChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .registers 4
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "oldFocus"  # Lcom/android/server/wm/AppWindowToken;
    .param p3, "newFocus"  # Lcom/android/server/wm/AppWindowToken;

    .line 24
    return-void
.end method

.method public onPowerKeyDown(Z)V
    .registers 2
    .param p1, "isScreenOn"  # Z

    .line 32
    return-void
.end method

.method public registerMoveWinListener(Lflyme/view/IMoveWinCallback;)V
    .registers 2
    .param p1, "callback"  # Lflyme/view/IMoveWinCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    return-void
.end method

.method public setMoveWinListener(Lflyme/view/IMoveWinCallback;)V
    .registers 2
    .param p1, "callback"  # Lflyme/view/IMoveWinCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    return-void
.end method

.method public systemReady()V
    .registers 1

    .line 13
    return-void
.end method

.method public toggleMoveWindow()V
    .registers 1

    .line 40
    return-void
.end method

.method public unregisterMoveWinListener(Lflyme/view/IMoveWinCallback;)V
    .registers 2
    .param p1, "callback"  # Lflyme/view/IMoveWinCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    return-void
.end method
