.class public final Lcom/android/server/wm/FlymeWindowManagerService$LocalService;
.super Lcom/android/server/wm/FlymeWindowManagerInternal;
.source "FlymeWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FlymeWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/FlymeWindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FlymeWindowManagerService;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/wm/FlymeWindowManagerService;

    .line 358
    iput-object p1, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/FlymeWindowManagerInternal;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/FlymeWindowManagerService$LocalService;I)Lcom/android/server/wm/FlymeMoveWindowController;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowManagerService$LocalService;
    .param p1, "x1"  # I

    .line 358
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getMoveWindowController(I)Lcom/android/server/wm/FlymeMoveWindowController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/FlymeWindowManagerService$LocalService;I)Lcom/android/server/wm/FlymeWindowModeController;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/wm/FlymeWindowManagerService$LocalService;
    .param p1, "x1"  # I

    .line 358
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    return-object v0
.end method

.method private getInterceptWindowController(I)Lcom/android/server/wm/FlymeInterceptWindowController;
    .registers 3
    .param p1, "displayId"  # I

    .line 499
    invoke-static {p1}, Lcom/android/server/wm/FlymeFeatureFactory;->getInterceptWindowController(I)Lcom/android/server/wm/FlymeInterceptWindowController;

    move-result-object v0

    return-object v0
.end method

.method private getMoveWindowController(I)Lcom/android/server/wm/FlymeMoveWindowController;
    .registers 3
    .param p1, "displayId"  # I

    .line 495
    invoke-static {p1}, Lcom/android/server/wm/FlymeFeatureFactory;->getMoveWindowController(I)Lcom/android/server/wm/FlymeMoveWindowController;

    move-result-object v0

    return-object v0
.end method

.method private getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;
    .registers 3
    .param p1, "displayId"  # I

    .line 503
    invoke-static {p1}, Lcom/android/server/wm/FlymeFeatureFactory;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public adjustDisplayInfoLock(Landroid/view/DisplayInfo;II)Landroid/view/DisplayInfo;
    .registers 6
    .param p1, "displayInfo"  # Landroid/view/DisplayInfo;
    .param p2, "displayId"  # I
    .param p3, "callingUid"  # I

    .line 403
    if-nez p2, :cond_b

    .line 404
    invoke-direct {p0, p2}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    .line 405
    .local v0, "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/FlymeWindowModeController;->adjustDisplayInfoLock(Landroid/view/DisplayInfo;II)Landroid/view/DisplayInfo;

    move-result-object v1

    return-object v1

    .line 407
    .end local v0  # "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    :cond_b
    return-object p1
.end method

.method public adjustInterceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I
    .registers 5
    .param p1, "win"  # Lcom/android/server/policy/WindowManagerPolicy$WindowState;
    .param p2, "event"  # Landroid/view/KeyEvent;
    .param p3, "policyFlags"  # I

    .line 451
    if-eqz p1, :cond_f

    .line 452
    invoke-interface {p1}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getMoveWindowController(I)Lcom/android/server/wm/FlymeMoveWindowController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/FlymeMoveWindowController;->adjustInterceptKeyBeforeDispatching(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Landroid/view/KeyEvent;I)I

    move-result v0

    .line 453
    .local v0, "res":I
    return v0

    .line 455
    .end local v0  # "res":I
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public applyAnimation(Lcom/android/server/wm/AppWindowToken;Landroid/view/animation/Animation;Landroid/content/res/Configuration;IZ)Landroid/view/animation/Animation;
    .registers 13
    .param p1, "appWindowToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "anim"  # Landroid/view/animation/Animation;
    .param p3, "config"  # Landroid/content/res/Configuration;
    .param p4, "transit"  # I
    .param p5, "enter"  # Z

    .line 525
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    .line 526
    .local v0, "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/wm/FlymeWindowModeController;->applyAnimation(Lcom/android/server/wm/AppWindowToken;Landroid/view/animation/Animation;Landroid/content/res/Configuration;IZ)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method public applyAnimation(Lcom/android/server/wm/WindowState;Landroid/view/animation/Animation;IZI)Landroid/view/animation/Animation;
    .registers 13
    .param p1, "windowState"  # Lcom/android/server/wm/WindowState;
    .param p2, "anim"  # Landroid/view/animation/Animation;
    .param p3, "transit"  # I
    .param p4, "isEntrance"  # Z
    .param p5, "attr"  # I

    .line 531
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    .line 532
    .local v0, "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/server/wm/FlymeWindowModeController;->applyAnimation(Lcom/android/server/wm/WindowState;Landroid/view/animation/Animation;IZI)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method public computeWindowStatePosition(Lcom/android/server/wm/WindowState;Z)I
    .registers 5
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "isImeTarget"  # Z

    .line 484
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    .line 485
    .local v0, "displayId":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/FlymeWindowModeController;->computeFrameForWindowMode(Lcom/android/server/wm/WindowState;Z)I

    move-result v1

    return v1
.end method

.method public getAppAnimationLayer(Lcom/android/server/wm/AppWindowToken;)Landroid/view/SurfaceControl;
    .registers 4
    .param p1, "windowToken"  # Lcom/android/server/wm/AppWindowToken;

    .line 412
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    .line 413
    .local v0, "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->getAppAnimationLayer(Lcom/android/server/wm/AppWindowToken;)Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method public getDisplayFrames(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;
    .registers 5
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;

    .line 394
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMzWindowMode()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 395
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    .line 396
    .local v0, "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/FlymeWindowModeController;->getDisplayFrames(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)Lcom/android/server/wm/DisplayFrames;

    move-result-object v1

    return-object v1

    .line 398
    .end local v0  # "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    :cond_17
    return-object p2
.end method

.method public getWindowModeTouchOffset(Lcom/android/server/wm/WindowState;Z)Landroid/graphics/PointF;
    .registers 11
    .param p1, "win"  # Lcom/android/server/wm/WindowState;
    .param p2, "includeScale"  # Z

    .line 632
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 633
    .local v0, "point":Landroid/graphics/PointF;
    sget-boolean v1, Lcom/android/server/wm/FlymeFeatureConfig;->FLYME_FEATURE_WINDOW_MODE_TOUCH_OFFSET_DEBUG:Z

    if-eqz v1, :cond_80

    .line 634
    if-eqz p1, :cond_80

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isMzWindowMode()Z

    move-result v1

    if-eqz v1, :cond_80

    .line 635
    :goto_12
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 636
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getParentWindow()Lcom/android/server/wm/WindowState;

    move-result-object p1

    goto :goto_12

    .line 638
    :cond_1d
    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    .line 639
    .local v1, "region":Landroid/graphics/Region;
    invoke-virtual {p1, v1}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 640
    invoke-virtual {v1}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 641
    .local v2, "rect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskStack;->getWindowModeFrame()Lcom/android/server/wm/FlymeWindowModeFrame;

    move-result-object v3

    .line 642
    .local v3, "displayInfo":Lcom/android/server/wm/FlymeWindowModeFrame;
    invoke-virtual {v3}, Lcom/android/server/wm/FlymeWindowModeFrame;->getScale()F

    move-result v4

    .line 643
    .local v4, "scale":F
    invoke-virtual {v3}, Lcom/android/server/wm/FlymeWindowModeFrame;->getDisplayBound()Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    invoke-virtual {v3}, Lcom/android/server/wm/FlymeWindowModeFrame;->getDisplayBound()Landroid/graphics/Rect;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Rect;->top:I

    int-to-float v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 644
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget v7, v2, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 645
    if-eqz p2, :cond_62

    .line 646
    iget v5, v0, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v4

    iget v6, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v4

    invoke-virtual {v0, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 648
    :cond_62
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWindowModeTouchOffset win="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",Offset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "WindowManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    .end local v1  # "region":Landroid/graphics/Region;
    .end local v2  # "rect":Landroid/graphics/Rect;
    .end local v3  # "displayInfo":Lcom/android/server/wm/FlymeWindowModeFrame;
    .end local v4  # "scale":F
    :cond_80
    return-object v0
.end method

.method public getWindowModeWindowFrame()Lcom/android/server/wm/FlymeWindowModeFrame;
    .registers 4

    .line 537
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    .line 538
    .local v0, "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    iget-object v1, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/FlymeWindowManagerService;->access$200(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 539
    .local v1, "rotation":I
    invoke-interface {v0, v1}, Lcom/android/server/wm/FlymeWindowModeController;->getWindowModeWindowFrame(I)Lcom/android/server/wm/FlymeWindowModeFrame;

    move-result-object v2

    return-object v2
.end method

.method public isColorFadeShow()Z
    .registers 2

    .line 617
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowManagerService;->access$400(Lcom/android/server/wm/FlymeWindowManagerService;)Z

    move-result v0

    return v0
.end method

.method public isFeatureOpen(I)Z
    .registers 3
    .param p1, "feature"  # I
        .annotation build Lcom/android/server/wm/FlymeFeatureConfig$Feature;
        .end annotation
    .end param

    .line 508
    invoke-static {p1}, Lcom/android/server/wm/FlymeFeatureConfig;->isFeatureOpen(I)Z

    move-result v0

    return v0
.end method

.method public isFingerprintAuthenticatingInAodMode()Z
    .registers 2

    .line 627
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowManagerService;->access$500(Lcom/android/server/wm/FlymeWindowManagerService;)Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowing()Z
    .registers 2

    .line 586
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowManagerService;->access$200(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardShowingOrOccluded()Z

    move-result v0

    return v0
.end method

.method public isLockOrientationForSensor()Z
    .registers 2

    .line 656
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowManagerService;->access$600(Lcom/android/server/wm/FlymeWindowManagerService;)Z

    move-result v0

    return v0
.end method

.method public isWindowMode(Landroid/os/IBinder;)Z
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 544
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    .line 545
    .local v0, "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->isWindowMode(Landroid/os/IBinder;)Z

    move-result v1

    return v1
.end method

.method public moveWindowTaskToBack(Lcom/android/server/wm/TaskStack;Z)V
    .registers 6
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "anim"  # Z

    .line 562
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->isMzWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 563
    iget-object v0, p1, Lcom/android/server/wm/TaskStack;->mActivityStack:Lcom/android/server/wm/ActivityStack;

    iget v0, v0, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    .line 564
    .local v0, "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/server/wm/FlymeWindowModeController;->moveWindowTaskToBack(Lcom/android/server/wm/TaskStack;ZZI)V

    .line 566
    .end local v0  # "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    :cond_1b
    return-void
.end method

.method public onActivityStackConfigurationChanged(Lcom/android/server/wm/ActivityStack;Z)V
    .registers 4
    .param p1, "activityStack"  # Lcom/android/server/wm/ActivityStack;
    .param p2, "changeFrame"  # Z

    .line 386
    if-eqz p2, :cond_b

    .line 387
    iget v0, p1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    .line 388
    .local v0, "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->updateWindowModeFrame(Lcom/android/server/wm/ActivityStack;)V

    .line 390
    .end local v0  # "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    :cond_b
    return-void
.end method

.method public onActivityStackCreate(Lcom/android/server/wm/ActivityStack;)V
    .registers 3
    .param p1, "activityStack"  # Lcom/android/server/wm/ActivityStack;

    .line 379
    iget v0, p1, Lcom/android/server/wm/ActivityStack;->mDisplayId:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    .line 380
    .local v0, "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->updateWindowModeFrame(Lcom/android/server/wm/ActivityStack;)V

    .line 381
    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->onActivityStackWindowModeChange(Lcom/android/server/wm/ActivityStack;)V

    .line 382
    return-void
.end method

.method public onActivityStackMoveToBack(Lcom/android/server/wm/ActivityStack;)V
    .registers 3
    .param p1, "activityStack"  # Lcom/android/server/wm/ActivityStack;

    .line 425
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    .line 426
    .local v0, "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->onActivityStackMoveToBack(Lcom/android/server/wm/ActivityStack;)V

    .line 427
    return-void
.end method

.method public onActivityStackWindowingModeChanged(Lcom/android/server/wm/ActivityStack;)V
    .registers 3
    .param p1, "activityStack"  # Lcom/android/server/wm/ActivityStack;

    .line 418
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityStack;->getDisplay()Lcom/android/server/wm/ActivityDisplay;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/ActivityDisplay;->mDisplayId:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    .line 419
    .local v0, "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->onActivityStackWindowModeChange(Lcom/android/server/wm/ActivityStack;)V

    .line 420
    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->updateWindowModeFrame(Lcom/android/server/wm/ActivityStack;)V

    .line 421
    return-void
.end method

.method public onAppWindowTokenAnimationLeashCreated(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "appWindowToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p3, "leash"  # Landroid/view/SurfaceControl;

    .line 479
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/FlymeWindowModeController;->onAppWindowTokenAnimationLeashCreated(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 480
    return-void
.end method

.method public onAppWindowTokenAnimationLeashLost(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "appWindowToken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 474
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/FlymeWindowModeController;->onAppWindowTokenAnimationLeashLost(Lcom/android/server/wm/AppWindowToken;Landroid/view/SurfaceControl$Transaction;)V

    .line 475
    return-void
.end method

.method public onConfigurationChanged(Lcom/android/server/wm/DisplayContent;II)V
    .registers 5
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "lastOrientation"  # I
    .param p3, "newOrientation"  # I

    .line 443
    if-eq p2, p3, :cond_d

    .line 444
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getMoveWindowController(I)Lcom/android/server/wm/FlymeMoveWindowController;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/android/server/wm/FlymeMoveWindowController;->adjustOnOrientationChanged(II)V

    .line 446
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/FlymeWindowModeController;->onConfigurationChanged(Lcom/android/server/wm/DisplayContent;II)V

    .line 447
    return-void
.end method

.method public onDisplayBeginLayoutLw(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayFrames;I)V
    .registers 5
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "displayFrames"  # Lcom/android/server/wm/DisplayFrames;
    .param p3, "uiMode"  # I

    .line 490
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getMoveWindowController(I)Lcom/android/server/wm/FlymeMoveWindowController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/wm/FlymeMoveWindowController;->adjustInputWindow(Lcom/android/server/wm/DisplayFrames;)V

    .line 491
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/FlymeWindowModeController;->onDisplayBeginLayoutLw(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayFrames;I)V

    .line 492
    return-void
.end method

.method public onDisplayContentCreate(Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 372
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 373
    .local v0, "displayId":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getMoveWindowController(I)Lcom/android/server/wm/FlymeMoveWindowController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/FlymeWindowManagerService;->access$200(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/server/wm/FlymeMoveWindowController;->init(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    .line 374
    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/FlymeWindowManagerService;->access$200(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/android/server/wm/FlymeWindowModeController;->init(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V

    .line 375
    return-void
.end method

.method public onFinishActivityWithKeyguard(ILcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "finishTask"  # I
    .param p2, "record"  # Lcom/android/server/wm/ActivityRecord;

    .line 519
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getInterceptWindowController(I)Lcom/android/server/wm/FlymeInterceptWindowController;

    move-result-object v0

    .line 520
    .local v0, "interceptWindowController":Lcom/android/server/wm/FlymeInterceptWindowController;
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/FlymeInterceptWindowController;->onFinishActivityWithKeyguard(ILcom/android/server/wm/ActivityRecord;)V

    .line 521
    return-void
.end method

.method public onFocusedAppChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V
    .registers 5
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;
    .param p2, "oldFocus"  # Lcom/android/server/wm/AppWindowToken;
    .param p3, "newFocus"  # Lcom/android/server/wm/AppWindowToken;

    .line 437
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getMoveWindowController(I)Lcom/android/server/wm/FlymeMoveWindowController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/FlymeMoveWindowController;->onFocusedAppChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 438
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/FlymeWindowModeController;->onFocusedAppChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/AppWindowToken;)V

    .line 439
    return-void
.end method

.method public onKeyguardState(Z)V
    .registers 3
    .param p1, "showing"  # Z

    .line 591
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowManagerService;->access$300(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->onKeyguardState(Z)V

    .line 592
    return-void
.end method

.method public onLaunchParamsControllerInit(Lcom/android/server/wm/LaunchParamsController;)V
    .registers 3
    .param p1, "launchParamsController"  # Lcom/android/server/wm/LaunchParamsController;

    .line 367
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/LaunchParamsController;->registerModifier(Lcom/android/server/wm/LaunchParamsController$LaunchParamsModifier;)V

    .line 368
    return-void
.end method

.method public onPowerKeyDown(IZ)V
    .registers 4
    .param p1, "displayId"  # I
    .param p2, "isScreenOn"  # Z

    .line 431
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getMoveWindowController(I)Lcom/android/server/wm/FlymeMoveWindowController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/wm/FlymeMoveWindowController;->onPowerKeyDown(Z)V

    .line 432
    invoke-direct {p0, p1}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/server/wm/FlymeWindowModeController;->onPowerKeyDown(Z)V

    .line 433
    return-void
.end method

.method public onRecentsAnimationFinish()V
    .registers 2

    .line 599
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowManagerService;->access$300(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/FlymeWindowModeController;->onRecentsAnimationFinish()V

    .line 600
    return-void
.end method

.method public onScreenTurningState(I)V
    .registers 3
    .param p1, "state"  # I

    .line 595
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowManagerService;->access$300(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->onScreenTurningState(I)V

    .line 596
    return-void
.end method

.method public onTaskStackAnimationLeashCreated(Lcom/android/server/wm/TaskStack;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 6
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p3, "leash"  # Landroid/view/SurfaceControl;

    .line 460
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 461
    .local v0, "displayId":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getMoveWindowController(I)Lcom/android/server/wm/FlymeMoveWindowController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/wm/FlymeMoveWindowController;->onAnimationBegin(Lcom/android/server/wm/TaskStack;)V

    .line 462
    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/server/wm/FlymeWindowModeController;->onTaskStackAnimationLeashCreated(Lcom/android/server/wm/TaskStack;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 463
    return-void
.end method

.method public onTaskStackAnimationLeashLost(Lcom/android/server/wm/TaskStack;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5
    .param p1, "taskStack"  # Lcom/android/server/wm/TaskStack;
    .param p2, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 467
    invoke-virtual {p1}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 468
    .local v0, "displayId":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getMoveWindowController(I)Lcom/android/server/wm/FlymeMoveWindowController;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/server/wm/FlymeMoveWindowController;->onAnimationDone(Lcom/android/server/wm/TaskStack;)V

    .line 469
    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/server/wm/FlymeWindowModeController;->onTaskStackAnimationLeashLost(Lcom/android/server/wm/TaskStack;Landroid/view/SurfaceControl$Transaction;)V

    .line 470
    return-void
.end method

.method public onWindowRemove(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p1, "win"  # Lcom/android/server/wm/WindowState;

    .line 556
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    .line 557
    .local v0, "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->onWindowRemove(Lcom/android/server/wm/WindowState;)V

    .line 558
    return-void
.end method

.method public sendResultToActivity(Landroid/content/pm/ActivityInfo;Landroid/app/ResultInfo;)V
    .registers 13
    .param p1, "info"  # Landroid/content/pm/ActivityInfo;
    .param p2, "result"  # Landroid/app/ResultInfo;

    .line 570
    if-eqz p1, :cond_67

    if-eqz p2, :cond_67

    .line 571
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowManagerService;->access$200(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 572
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 573
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/FlymeWindowManagerService;->access$200(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    .line 574
    invoke-virtual {v2}, Lcom/android/server/wm/RootActivityContainer;->getTopDisplayFocusedStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, p1, v3}, Lcom/android/server/wm/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 575
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_5c

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v3, :cond_5c

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_5c

    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    if-eqz v3, :cond_5c

    .line 576
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 577
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iget-object v6, p2, Landroid/app/ResultInfo;->mResultWho:Ljava/lang/String;

    iget v7, p2, Landroid/app/ResultInfo;->mRequestCode:I

    iget v8, p2, Landroid/app/ResultInfo;->mResultCode:I

    iget-object v9, p2, Landroid/app/ResultInfo;->mData:Landroid/content/Intent;

    move-object v5, v2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/ActivityStack;->sendActivityResultLocked(ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 580
    .end local v1  # "intent":Landroid/content/Intent;
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_5c
    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_d .. :try_end_5d} :catchall_61

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_67

    :catchall_61
    move-exception v1

    :try_start_62
    monitor-exit v0
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 582
    :cond_67
    :goto_67
    return-void
.end method

.method public setColorFadeShow(Z)V
    .registers 4
    .param p1, "colorFadeShow"  # Z

    .line 604
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v0, p1}, Lcom/android/server/wm/FlymeWindowManagerService;->access$402(Lcom/android/server/wm/FlymeWindowManagerService;Z)Z

    .line 605
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/FlymeWindowManagerService;->access$200(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/FlymeWindowManagerService$LocalService$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService$1;-><init>(Lcom/android/server/wm/FlymeWindowManagerService$LocalService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 613
    return-void
.end method

.method public setFingerprintAuthenticatingInAodMode(Z)V
    .registers 3
    .param p1, "authenticating"  # Z

    .line 622
    iget-object v0, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v0, p1}, Lcom/android/server/wm/FlymeWindowManagerService;->access$502(Lcom/android/server/wm/FlymeWindowManagerService;Z)Z

    .line 623
    return-void
.end method

.method public shouldFinishWithAccessControl(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Z)Z
    .registers 6
    .param p1, "wtoken"  # Lcom/android/server/wm/AppWindowToken;
    .param p2, "win"  # Lcom/android/server/wm/WindowState;
    .param p3, "finishActivity"  # Z

    .line 513
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getInterceptWindowController(I)Lcom/android/server/wm/FlymeInterceptWindowController;

    move-result-object v0

    .line 514
    .local v0, "interceptWindowController":Lcom/android/server/wm/FlymeInterceptWindowController;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/wm/FlymeInterceptWindowController;->shouldFinishWithAccessControl(Lcom/android/server/wm/AppWindowToken;Lcom/android/server/wm/WindowState;Z)Z

    move-result v1

    return v1
.end method

.method public shouldRelaunchOnWindowChange(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "activityRecord"  # Lcom/android/server/wm/ActivityRecord;

    .line 550
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getWindowModeController(I)Lcom/android/server/wm/FlymeWindowModeController;

    move-result-object v0

    .line 551
    .local v0, "windowModeController":Lcom/android/server/wm/FlymeWindowModeController;
    invoke-interface {v0, p1}, Lcom/android/server/wm/FlymeWindowModeController;->shouldRelaunchOnWindowChange(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    return v1
.end method

.method public systemReady()V
    .registers 4

    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getInterceptWindowController(I)Lcom/android/server/wm/FlymeInterceptWindowController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->this$0:Lcom/android/server/wm/FlymeWindowManagerService;

    invoke-static {v2}, Lcom/android/server/wm/FlymeWindowManagerService;->access$200(Lcom/android/server/wm/FlymeWindowManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/server/wm/FlymeInterceptWindowController;->init(Lcom/android/server/wm/WindowManagerService;)V

    .line 362
    invoke-direct {p0, v0}, Lcom/android/server/wm/FlymeWindowManagerService$LocalService;->getMoveWindowController(I)Lcom/android/server/wm/FlymeMoveWindowController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/FlymeMoveWindowController;->systemReady()V

    .line 363
    return-void
.end method
