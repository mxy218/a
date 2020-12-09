.class final Lcom/android/server/wm/WindowManagerService$LocalService;
.super Lcom/android/server/wm/WindowManagerInternal;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    .line 7152
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerService$1;)V
    .registers 3

    .line 7152
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerService$LocalService;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method

.method static synthetic lambda$addNonHighRefreshRatePackage$0(Ljava/lang/String;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 7544
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object p1

    .line 7545
    invoke-virtual {p1, p0}, Lcom/android/server/wm/RefreshRatePolicy;->addNonHighRefreshRatePackage(Ljava/lang/String;)V

    .line 7544
    return-void
.end method

.method static synthetic lambda$removeNonHighRefreshRatePackage$1(Ljava/lang/String;Lcom/android/server/wm/DisplayContent;)V
    .registers 2

    .line 7552
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayPolicy;->getRefreshRatePolicy()Lcom/android/server/wm/RefreshRatePolicy;

    move-result-object p1

    .line 7553
    invoke-virtual {p1, p0}, Lcom/android/server/wm/RefreshRatePolicy;->removeNonHighRefreshRatePackage(Ljava/lang/String;)V

    .line 7552
    return-void
.end method


# virtual methods
.method public addNonHighRefreshRatePackage(Ljava/lang/String;)V
    .registers 5

    .line 7543
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7544
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$LocalService$_nYJRiVOgbON7mI191FIzNAk4Xs;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$LocalService$_nYJRiVOgbON7mI191FIzNAk4Xs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 7546
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7547
    return-void

    .line 7546
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public addWindowToken(Landroid/os/IBinder;II)V
    .registers 5

    .line 7321
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->addWindowToken(Landroid/os/IBinder;II)V

    .line 7322
    return-void
.end method

.method public clearForcedDisplaySize(I)V
    .registers 3

    .line 7316
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->clearForcedDisplaySize(I)V

    .line 7317
    return-void
.end method

.method public computeWindowsForAccessibility()V
    .registers 3

    .line 7410
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7411
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 7412
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7413
    if-eqz v1, :cond_16

    .line 7414
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/AccessibilityController;->performComputeChangedWindowsNotLocked(Z)V

    .line 7416
    :cond_16
    return-void

    .line 7412
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;
    .registers 7

    .line 7197
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7198
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 7199
    const/4 v1, 0x0

    if-nez p1, :cond_1a

    .line 7200
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 7202
    :cond_1a
    nop

    .line 7203
    :try_start_1b
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_2a

    .line 7204
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/AccessibilityController;->getMagnificationSpecForWindowLocked(Lcom/android/server/wm/WindowState;)Landroid/view/MagnificationSpec;

    move-result-object v2

    goto :goto_2b

    .line 7203
    :cond_2a
    move-object v2, v1

    .line 7206
    :goto_2b
    if-eqz v2, :cond_33

    invoke-virtual {v2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result v3

    if-eqz v3, :cond_40

    :cond_33
    iget v3, p1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    const/high16 v4, 0x3f800000  # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_40

    .line 7207
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_1b .. :try_end_3c} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 7209
    :cond_40
    if-nez v2, :cond_47

    :try_start_42
    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v1

    goto :goto_4b

    :cond_47
    invoke-static {v2}, Landroid/view/MagnificationSpec;->obtain(Landroid/view/MagnificationSpec;)Landroid/view/MagnificationSpec;

    move-result-object v1

    .line 7210
    :goto_4b
    iget v2, v1, Landroid/view/MagnificationSpec;->scale:F

    iget p1, p1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v2, p1

    iput v2, v1, Landroid/view/MagnificationSpec;->scale:F

    .line 7211
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_42 .. :try_end_53} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 7212
    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getDisplayIdForWindow(Landroid/os/IBinder;)I
    .registers 4

    .line 7511
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7512
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 7513
    if-eqz p1, :cond_21

    .line 7514
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 7516
    :cond_21
    const/4 p1, -0x1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 7517
    :catchall_27
    move-exception p1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getFocusedWindowToken()Landroid/os/IBinder;
    .registers 3

    .line 7253
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7254
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v1}, Lcom/android/server/wm/WindowManagerService;->access$2100(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 7255
    if-eqz v1, :cond_1b

    .line 7256
    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v1}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 7258
    :cond_1b
    const/4 v1, 0x0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 7259
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getInputMethodWindowVisibleHeight(I)I
    .registers 4

    .line 7364
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7365
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 7366
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayFrames;->getInputMethodWindowVisibleHeight()I

    move-result p1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 7367
    :catchall_1b
    move-exception p1

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getMagnificationRegion(ILandroid/graphics/Region;)V
    .registers 5

    .line 7185
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7186
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_1a

    .line 7187
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AccessibilityController;->getMagnificationRegionLocked(ILandroid/graphics/Region;)V

    .line 7192
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7193
    return-void

    .line 7190
    :cond_1a
    :try_start_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Magnification callbacks not set!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7192
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getTopFocusedDisplayId()I
    .registers 3

    .line 7522
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7523
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 7524
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .registers 5

    .line 7279
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7280
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 7281
    if-eqz p1, :cond_1c

    .line 7282
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getFrameLw()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1f

    .line 7284
    :cond_1c
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 7286
    :goto_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7287
    return-void

    .line 7286
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public getWindowOwnerUserId(Landroid/os/IBinder;)I
    .registers 4

    .line 7440
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7441
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowState;

    .line 7442
    if-eqz p1, :cond_1f

    .line 7443
    iget p1, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 7445
    :cond_1f
    const/16 p1, -0x2710

    :try_start_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_21 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 7446
    :catchall_26
    move-exception p1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public isHardKeyboardAvailable()Z
    .registers 3

    .line 7388
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7389
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardAvailable:Z

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 7390
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isInputMethodClientFocus(III)Z
    .registers 8

    .line 7465
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p3, v1, :cond_5

    .line 7466
    return v0

    .line 7468
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7469
    iget-object v2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopFocusedDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 7470
    if-eqz v2, :cond_4a

    .line 7471
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v3

    if-ne v3, p3, :cond_4a

    .line 7472
    invoke-virtual {v2, p1}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result p3

    if-nez p3, :cond_24

    goto :goto_4a

    .line 7475
    :cond_24
    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/DisplayContent;->isInputMethodClientFocus(II)Z

    move-result p3

    const/4 v3, 0x1

    if-eqz p3, :cond_30

    .line 7476
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_4f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 7486
    :cond_30
    :try_start_30
    iget-object p3, v2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 7487
    if-eqz p3, :cond_45

    iget-object v2, p3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    if-ne v2, p1, :cond_45

    iget-object p1, p3, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget p1, p1, Lcom/android/server/wm/Session;->mPid:I

    if-ne p1, p2, :cond_45

    .line 7489
    monitor-exit v1
    :try_end_41
    .catchall {:try_start_30 .. :try_end_41} :catchall_4f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 7491
    :cond_45
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_4f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7492
    return v0

    .line 7473
    :cond_4a
    :goto_4a
    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 7491
    :catchall_4f
    move-exception p1

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public isKeyguardLocked()Z
    .registers 2

    .line 7264
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public isKeyguardShowingAndNotOccluded()Z
    .registers 2

    .line 7269
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    return v0
.end method

.method public isStackVisibleLw(I)Z
    .registers 3

    .line 7403
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7404
    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->isStackVisible(I)Z

    move-result p1

    return p1
.end method

.method public isUidAllowedOnDisplay(II)Z
    .registers 7

    .line 7497
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 7498
    return v0

    .line 7500
    :cond_4
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_9

    .line 7501
    return v2

    .line 7503
    :cond_9
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7504
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 7505
    if-eqz p1, :cond_22

    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->hasAccess(I)Z

    move-result p1

    if-eqz p1, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_e .. :try_end_24} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 7506
    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public isUidFocused(I)Z
    .registers 7

    .line 7451
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7452
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_12
    if-ltz v1, :cond_32

    .line 7453
    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    .line 7454
    iget-object v4, v3, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz v4, :cond_2f

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    .line 7455
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v3

    if-ne p1, v3, :cond_2f

    .line 7456
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_5 .. :try_end_2b} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 7452
    :cond_2f
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 7459
    :cond_32
    const/4 p1, 0x0

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 7460
    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public lockNow()V
    .registers 3

    .line 7435
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->lockNow(Landroid/os/Bundle;)V

    .line 7436
    return-void
.end method

.method public registerAppTransitionListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V
    .registers 4

    .line 7352
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7353
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 7354
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7355
    return-void

    .line 7354
    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public registerDragDropControllerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V
    .registers 3

    .line 7430
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDragDropController:Lcom/android/server/wm/DragDropController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DragDropController;->registerCallback(Lcom/android/server/wm/WindowManagerInternal$IDragDropCallback;)V

    .line 7431
    return-void
.end method

.method public removeNonHighRefreshRatePackage(Ljava/lang/String;)V
    .registers 5

    .line 7551
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7552
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    new-instance v2, Lcom/android/server/wm/-$$Lambda$WindowManagerService$LocalService$rEGrcIRCgYp-4kzr5xA12LKQX0E;

    invoke-direct {v2, p1}, Lcom/android/server/wm/-$$Lambda$WindowManagerService$LocalService$rEGrcIRCgYp-4kzr5xA12LKQX0E;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 7554
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7555
    return-void

    .line 7554
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public removeWindowToken(Landroid/os/IBinder;ZI)V
    .registers 7

    .line 7326
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7327
    if-eqz p2, :cond_5b

    .line 7328
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p2, p3}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p2

    .line 7329
    if-nez p2, :cond_37

    .line 7330
    const-string p2, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeWindowToken: Attempted to remove token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for non-exiting displayId="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7332
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7335
    :cond_37
    :try_start_37
    invoke-virtual {p2, p1}, Lcom/android/server/wm/DisplayContent;->removeWindowToken(Landroid/os/IBinder;)Lcom/android/server/wm/WindowToken;

    move-result-object p2

    .line 7336
    if-nez p2, :cond_58

    .line 7337
    const-string p2, "WindowManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeWindowToken: Attempted to remove non-existing token: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7339
    monitor-exit v0
    :try_end_54
    .catchall {:try_start_37 .. :try_end_54} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 7342
    :cond_58
    :try_start_58
    invoke-virtual {p2}, Lcom/android/server/wm/WindowToken;->removeAllWindowsIfPossible()V

    .line 7344
    :cond_5b
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2, p1, p3}, Lcom/android/server/wm/WindowManagerService;->removeWindowToken(Landroid/os/IBinder;I)V

    .line 7345
    monitor-exit v0
    :try_end_61
    .catchall {:try_start_58 .. :try_end_61} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7346
    return-void

    .line 7345
    :catchall_65
    move-exception p1

    :try_start_66
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public reportPasswordChanged(I)V
    .registers 3

    .line 7359
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-static {v0}, Lcom/android/server/wm/WindowManagerService;->access$000(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/KeyguardDisableHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/KeyguardDisableHandler;->updateKeyguardEnabled(I)V

    .line 7360
    return-void
.end method

.method public requestTraversalFromDisplayManager()V
    .registers 2

    .line 7155
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .line 7156
    return-void
.end method

.method public setForceShowMagnifiableBounds(IZ)V
    .registers 5

    .line 7174
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7175
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_1a

    .line 7176
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AccessibilityController;->setForceShowMagnifiableBoundsLocked(IZ)V

    .line 7180
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7181
    return-void

    .line 7178
    :cond_1a
    :try_start_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Magnification callbacks not set!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7180
    :catchall_22
    move-exception p1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setForcedDisplaySize(III)V
    .registers 5

    .line 7311
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/wm/WindowManagerService;->setForcedDisplaySize(III)V

    .line 7312
    return-void
.end method

.method public setInputFilter(Landroid/view/IInputFilter;)V
    .registers 3

    .line 7248
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/input/InputManagerService;->setInputFilter(Landroid/view/IInputFilter;)V

    .line 7249
    return-void
.end method

.method public setMagnificationCallbacks(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z
    .registers 7

    .line 7218
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7219
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-nez v1, :cond_19

    .line 7220
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/wm/AccessibilityController;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/wm/AccessibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 7223
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AccessibilityController;->setMagnificationCallbacksLocked(ILcom/android/server/wm/WindowManagerInternal$MagnificationCallbacks;)Z

    move-result p1

    .line 7225
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p2}, Lcom/android/server/wm/AccessibilityController;->hasCallbacksLocked()Z

    move-result p2

    if-nez p2, :cond_30

    .line 7226
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, p2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 7228
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 7229
    :catchall_35
    move-exception p1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setMagnificationSpec(ILandroid/view/MagnificationSpec;)V
    .registers 5

    .line 7160
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7161
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v1, :cond_27

    .line 7162
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/AccessibilityController;->setMagnificationSpecLocked(ILandroid/view/MagnificationSpec;)V

    .line 7166
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7167
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-eq p1, v0, :cond_26

    .line 7168
    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->recycle()V

    .line 7170
    :cond_26
    return-void

    .line 7164
    :cond_27
    :try_start_27
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Magnification callbacks not set!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7166
    :catchall_2f
    move-exception p1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;)V
    .registers 4

    .line 7396
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7397
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, v1, Lcom/android/server/wm/WindowManagerService;->mHardKeyboardStatusChangeListener:Lcom/android/server/wm/WindowManagerInternal$OnHardKeyboardStatusChangeListener;

    .line 7398
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7399
    return-void

    .line 7398
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setVr2dDisplayId(I)V
    .registers 4

    .line 7423
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7424
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput p1, v1, Lcom/android/server/wm/WindowManagerService;->mVr2dDisplayId:I

    .line 7425
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7426
    return-void

    .line 7425
    :catchall_11
    move-exception p1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public setWindowsForAccessibilityCallback(Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .registers 6

    .line 7234
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7235
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-nez v1, :cond_19

    .line 7236
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    new-instance v2, Lcom/android/server/wm/AccessibilityController;

    iget-object v3, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {v2, v3}, Lcom/android/server/wm/AccessibilityController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    iput-object v2, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 7239
    :cond_19
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/AccessibilityController;->setWindowsForAccessibilityCallback(Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    .line 7240
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacksLocked()Z

    move-result p1

    if-nez p1, :cond_2f

    .line 7241
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 7243
    :cond_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_5 .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7244
    return-void

    .line 7243
    :catchall_34
    move-exception p1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public shouldShowIme(I)Z
    .registers 4

    .line 7536
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7537
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->shouldShowIme(I)Z

    move-result p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 7538
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public shouldShowSystemDecorOnDisplay(I)Z
    .registers 4

    .line 7529
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7530
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->shouldShowSystemDecors(I)Z

    move-result p1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 7531
    :catchall_13
    move-exception p1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method public showGlobalActions()V
    .registers 2

    .line 7274
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->showGlobalActions()V

    .line 7275
    return-void
.end method

.method public updateInputMethodTargetWindow(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .registers 3

    .line 7384
    return-void
.end method

.method public updateInputMethodWindowStatus(Landroid/os/IBinder;ZZ)V
    .registers 4

    .line 7373
    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {p1, p3}, Lcom/android/server/policy/WindowManagerPolicy;->setDismissImeOnBackKeyPressed(Z)V

    .line 7374
    return-void
.end method

.method public waitForAllWindowsDrawn(Ljava/lang/Runnable;J)V
    .registers 7

    .line 7291
    nop

    .line 7292
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7293
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iput-object p1, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawnCallback:Ljava/lang/Runnable;

    .line 7294
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->waitForAllWindowsDrawn()V

    .line 7295
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 7296
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 7297
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mWaitingForDrawn:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 7298
    const/4 p2, 0x1

    goto :goto_3f

    .line 7300
    :cond_32
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/server/wm/WindowManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 7301
    iget-object p2, p0, Lcom/android/server/wm/WindowManagerService$LocalService;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowManagerService;->checkDrawnWindowsLocked()V

    const/4 p2, 0x0

    .line 7303
    :goto_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_6 .. :try_end_40} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7304
    if-eqz p2, :cond_48

    .line 7305
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 7307
    :cond_48
    return-void

    .line 7303
    :catchall_49
    move-exception p1

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method
