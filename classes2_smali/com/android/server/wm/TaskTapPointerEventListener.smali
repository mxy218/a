.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mPointerIconType:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    .line 42
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 47
    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 48
    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 49
    return-void
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .registers 9

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_d4

    const/4 v1, 0x7

    const/16 v2, 0x37

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3c

    const/16 v1, 0xa

    if-eq v0, v1, :cond_16

    goto/16 :goto_f2

    .line 104
    :cond_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 106
    iget v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v1, v3, :cond_f2

    .line 107
    iput v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 109
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 110
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_f2

    .line 68
    :cond_3c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 70
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 71
    nop

    .line 72
    if-eqz v1, :cond_aa

    .line 73
    iget-object v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 74
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_aa

    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_aa

    .line 75
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    const/16 v4, 0x3f6

    const/16 v5, 0x3f8

    const/16 v6, 0x3f9

    if-ge v0, v1, :cond_82

    .line 77
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge p1, v1, :cond_78

    move v4, v6

    goto :goto_81

    .line 78
    :cond_78
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le p1, v1, :cond_80

    move v4, v5

    goto :goto_81

    .line 79
    :cond_80
    nop

    :goto_81
    goto :goto_ab

    .line 80
    :cond_82
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-le v0, v1, :cond_9a

    .line 82
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge p1, v1, :cond_90

    move v4, v5

    goto :goto_99

    .line 83
    :cond_90
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le p1, v1, :cond_98

    move v4, v6

    goto :goto_99

    .line 84
    :cond_98
    nop

    :goto_99
    goto :goto_ab

    .line 85
    :cond_9a
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-lt p1, v1, :cond_a6

    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-le p1, v1, :cond_aa

    .line 86
    :cond_a6
    const/16 v1, 0x3f7

    move v4, v1

    goto :goto_ab

    .line 90
    :cond_aa
    move v4, v3

    :goto_ab
    iget v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-eq v1, v4, :cond_d3

    .line 91
    iput v4, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    .line 92
    iget v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    if-ne v1, v3, :cond_ca

    .line 94
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(I)V

    .line 95
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d3

    .line 98
    :cond_ca
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object p1

    iget v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-virtual {p1, v0}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 102
    :cond_d3
    :goto_d3
    goto :goto_f2

    .line 55
    :cond_d4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    .line 58
    monitor-enter p0

    .line 59
    :try_start_df
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Region;->contains(II)Z

    move-result v1

    if-nez v1, :cond_f0

    .line 60
    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    iget-object v2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/server/wm/TaskPositioningController;->handleTapOutsideTask(Lcom/android/server/wm/DisplayContent;II)V

    .line 63
    :cond_f0
    monitor-exit p0

    .line 65
    nop

    .line 116
    :cond_f2
    :goto_f2
    return-void

    .line 63
    :catchall_f3
    move-exception p1

    monitor-exit p0
    :try_end_f5
    .catchall {:try_start_df .. :try_end_f5} :catchall_f3

    throw p1
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;)V
    .registers 3

    .line 119
    monitor-enter p0

    .line 120
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 121
    monitor-exit p0

    .line 122
    return-void

    .line 121
    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method
