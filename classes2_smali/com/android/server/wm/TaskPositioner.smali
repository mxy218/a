.class Lcom/android/server/wm/TaskPositioner;
.super Ljava/lang/Object;
.source "TaskPositioner.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskPositioner$Factory;,
        Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;,
        Lcom/android/server/wm/TaskPositioner$CtrlType;
    }
.end annotation


# static fields
.field private static final CTRL_BOTTOM:I = 0x8

.field private static final CTRL_LEFT:I = 0x1

.field private static final CTRL_NONE:I = 0x0

.field private static final CTRL_RIGHT:I = 0x2

.field private static final CTRL_TOP:I = 0x4

.field private static final DEBUG_ORIENTATION_VIOLATIONS:Z = false

.field static final MIN_ASPECT:F = 1.2f
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final RESIZING_HINT_ALPHA:F = 0.5f

.field public static final RESIZING_HINT_DURATION_MS:I = 0x0

.field static final SIDE_MARGIN_DIP:I = 0x64

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_LOCAL:Ljava/lang/String; = "TaskPositioner"

.field private static sFactory:Lcom/android/server/wm/TaskPositioner$Factory;


# instance fields
.field private final mActivityManager:Landroid/app/IActivityTaskManager;

.field mClientCallback:Landroid/os/IBinder;

.field mClientChannel:Landroid/view/InputChannel;

.field private mCtrlType:I

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDragApplicationHandle:Landroid/view/InputApplicationHandle;

.field mDragEnded:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mDragWindowHandle:Landroid/view/InputWindowHandle;

.field private mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

.field private final mMaxVisibleSize:Landroid/graphics/Point;

.field private mMinVisibleHeight:I

.field private mMinVisibleWidth:I

.field private mPreserveOrientation:Z

.field private mResizing:Z

.field mServerChannel:Landroid/view/InputChannel;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mSideMargin:I

.field private mStartDragX:F

.field private mStartDragY:F

.field private mStartOrientationWasLandscape:Z

.field mTask:Lcom/android/server/wm/Task;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mTmpRect:Landroid/graphics/Rect;

.field private final mWindowDragBounds:Landroid/graphics/Rect;

.field private final mWindowOriginalBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3

    .line 235
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskPositioner;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/app/IActivityTaskManager;)V

    .line 236
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/app/IActivityTaskManager;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    .line 114
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    .line 115
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    .line 116
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 229
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 230
    iput-object p2, p0, Lcom/android/server/wm/TaskPositioner;->mActivityManager:Landroid/app/IActivityTaskManager;

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskPositioner;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/server/wm/TaskPositioner;FF)Z
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/TaskPositioner;)Landroid/graphics/Rect;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/TaskPositioner;)Landroid/app/IActivityTaskManager;
    .registers 1

    .line 61
    iget-object p0, p0, Lcom/android/server/wm/TaskPositioner;->mActivityManager:Landroid/app/IActivityTaskManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/server/wm/TaskPositioner;)Z
    .registers 1

    .line 61
    iget-boolean p0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/wm/TaskPositioner;)V
    .registers 1

    .line 61
    invoke-direct {p0}, Lcom/android/server/wm/TaskPositioner;->endDragLocked()V

    return-void
.end method

.method private checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V
    .registers 2

    .line 634
    return-void
.end method

.method static create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;
    .registers 2

    .line 666
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    if-nez v0, :cond_b

    .line 667
    new-instance v0, Lcom/android/server/wm/TaskPositioner$1;

    invoke-direct {v0}, Lcom/android/server/wm/TaskPositioner$1;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    .line 670
    :cond_b
    sget-object v0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    invoke-interface {v0, p0}, Lcom/android/server/wm/TaskPositioner$Factory;->create(Lcom/android/server/wm/WindowManagerService;)Lcom/android/server/wm/TaskPositioner;

    move-result-object p0

    return-object p0
.end method

.method private endDragLocked()V
    .registers 3

    .line 437
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 438
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v1, v0, v0}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 439
    return-void
.end method

.method private notifyMoveLocked(FF)Z
    .registers 6

    .line 447
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 448
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskPositioner;->resizeDrag(FF)V

    .line 449
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v1}, Lcom/android/server/wm/Task;->setDragResizing(ZI)V

    .line 450
    return v1

    .line 454
    :cond_f
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskStack;->getDimBounds(Landroid/graphics/Rect;)V

    .line 457
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 458
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/DisplayContent;->getStableRect(Landroid/graphics/Rect;)V

    .line 459
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 461
    float-to-int p1, p1

    .line 462
    float-to-int p2, p2

    .line 463
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_51

    .line 466
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 467
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 470
    :cond_51
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/TaskPositioner;->updateWindowDragBounds(IILandroid/graphics/Rect;)V

    .line 471
    return v1
.end method

.method static setFactory(Lcom/android/server/wm/TaskPositioner$Factory;)V
    .registers 1

    .line 662
    sput-object p0, Lcom/android/server/wm/TaskPositioner;->sFactory:Lcom/android/server/wm/TaskPositioner$Factory;

    .line 663
    return-void
.end method

.method private updateWindowDragBounds(IILandroid/graphics/Rect;)V
    .registers 9

    .line 637
    int-to-float p1, p1

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 638
    int-to-float p2, p2

    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 639
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 641
    iget v0, p3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int/2addr v0, v1

    .line 642
    iget v1, p3, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    .line 646
    iget v2, p3, Landroid/graphics/Rect;->top:I

    .line 647
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int/2addr p3, v3

    .line 649
    iget-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, p1

    .line 650
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    .line 651
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 649
    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 655
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 675
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    .line 676
    return-void
.end method

.method getWindowDragBounds()Landroid/graphics/Rect;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method public synthetic lambda$startDrag$0$TaskPositioner(Landroid/graphics/Rect;)V
    .registers 5

    .line 424
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mActivityManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-interface {v0, v1, p1, v2}, Landroid/app/IActivityTaskManager;->resizeTask(ILandroid/graphics/Rect;I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    .line 427
    goto :goto_c

    .line 426
    :catch_b
    move-exception p1

    .line 428
    :goto_c
    return-void
.end method

.method register(Lcom/android/server/wm/DisplayContent;)V
    .registers 11

    .line 247
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    const-string v2, "WindowManager"

    if-eqz v1, :cond_10

    .line 254
    const-string p1, "Task positioner already registered"

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    return-void

    .line 258
    :cond_10
    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 259
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 260
    invoke-static {v2}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object p1

    .line 261
    const/4 v1, 0x0

    aget-object v3, p1, v1

    iput-object v3, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 262
    const/4 v3, 0x1

    aget-object p1, p1, v3

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 263
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Landroid/os/IBinder;)V

    .line 265
    new-instance p1, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    iget-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mAnimationHandler:Landroid/os/Handler;

    .line 266
    invoke-virtual {v6}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    .line 267
    invoke-virtual {v7}, Lcom/android/server/wm/WindowAnimator;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v7

    invoke-direct {p1, p0, v4, v6, v7}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 269
    new-instance p1, Landroid/view/InputApplicationHandle;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-direct {p1, v4}, Landroid/view/InputApplicationHandle;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 270
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    iput-object v2, p1, Landroid/view/InputApplicationHandle;->name:Ljava/lang/String;

    .line 271
    const-wide v6, 0x12a05f200L

    iput-wide v6, p1, Landroid/view/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 274
    new-instance v4, Landroid/view/InputWindowHandle;

    .line 275
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    invoke-direct {v4, p1, v5, v8}, Landroid/view/InputWindowHandle;-><init>(Landroid/view/InputApplicationHandle;Landroid/view/IWindow;I)V

    iput-object v4, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 276
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput-object v2, p1, Landroid/view/InputWindowHandle;->name:Ljava/lang/String;

    .line 277
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v2}, Landroid/view/InputChannel;->getToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, p1, Landroid/view/InputWindowHandle;->token:Landroid/os/IBinder;

    .line 278
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDragLayerLocked()I

    move-result v2

    iput v2, p1, Landroid/view/InputWindowHandle;->layer:I

    .line 279
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v1, p1, Landroid/view/InputWindowHandle;->layoutParamsFlags:I

    .line 280
    const/16 v2, 0x7e0

    iput v2, p1, Landroid/view/InputWindowHandle;->layoutParamsType:I

    .line 281
    iput-wide v6, p1, Landroid/view/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 283
    iput-boolean v3, p1, Landroid/view/InputWindowHandle;->visible:Z

    .line 284
    iput-boolean v1, p1, Landroid/view/InputWindowHandle;->canReceiveKeys:Z

    .line 285
    iput-boolean v3, p1, Landroid/view/InputWindowHandle;->hasFocus:Z

    .line 286
    iput-boolean v1, p1, Landroid/view/InputWindowHandle;->hasWallpaper:Z

    .line 287
    iput-boolean v1, p1, Landroid/view/InputWindowHandle;->paused:Z

    .line 288
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    iput v2, p1, Landroid/view/InputWindowHandle;->ownerPid:I

    .line 289
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iput v2, p1, Landroid/view/InputWindowHandle;->ownerUid:I

    .line 290
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v1, p1, Landroid/view/InputWindowHandle;->inputFeatures:I

    .line 291
    const/high16 v2, 0x3f800000  # 1.0f

    iput v2, p1, Landroid/view/InputWindowHandle;->scaleFactor:F

    .line 294
    iget-object p1, p1, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {p1}, Landroid/graphics/Region;->setEmpty()V

    .line 297
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iput v1, p1, Landroid/view/InputWindowHandle;->frameLeft:I

    .line 298
    iput v1, p1, Landroid/view/InputWindowHandle;->frameTop:I

    .line 299
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 300
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 301
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget v3, p1, Landroid/graphics/Point;->x:I

    iput v3, v2, Landroid/view/InputWindowHandle;->frameRight:I

    .line 302
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    iget p1, p1, Landroid/graphics/Point;->y:I

    iput p1, v2, Landroid/view/InputWindowHandle;->frameBottom:I

    .line 308
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->pauseRotationLocked()V

    .line 311
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsImmediately()V

    .line 312
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->syncInputWindows()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 314
    const/16 p1, 0x64

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mSideMargin:I

    .line 315
    const/16 p1, 0x30

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    .line 316
    const/16 p1, 0x20

    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-static {p1, v2}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    .line 317
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 319
    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 320
    return-void
.end method

.method resizeDrag(FF)V
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 486
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 487
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 488
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 489
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 490
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->right:I

    .line 491
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    .line 496
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    if-nez v0, :cond_23

    .line 497
    goto :goto_25

    .line 498
    :cond_23
    iget-boolean v0, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    .line 500
    :goto_25
    sub-int v0, v4, v2

    .line 501
    sub-int v1, v5, v3

    .line 502
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v7, v6, 0x1

    if-eqz v7, :cond_38

    .line 503
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    sub-int p1, v0, p1

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_45

    .line 504
    :cond_38
    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_44

    .line 505
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    add-int/2addr p1, v0

    invoke-static {v6, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_45

    .line 504
    :cond_44
    move p1, v0

    .line 507
    :goto_45
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_54

    .line 508
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    sub-int p2, v1, p2

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_61

    .line 509
    :cond_54
    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_60

    .line 510
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    add-int/2addr p2, v1

    invoke-static {v6, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_61

    .line 509
    :cond_60
    move p2, v1

    .line 514
    :goto_61
    int-to-float v6, p1

    int-to-float v7, p2

    div-float/2addr v6, v7

    .line 515
    iget-boolean v7, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    if-eqz v7, :cond_167

    iget-boolean v7, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    const v8, 0x3f99999a  # 1.2f

    if-eqz v7, :cond_73

    cmpg-float v7, v6, v8

    if-ltz v7, :cond_81

    :cond_73
    iget-boolean v7, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-nez v7, :cond_167

    float-to-double v6, v6

    const-wide v9, 0x3feaaaaa98e38e45L  # 0.8333333002196431

    cmpl-double v6, v6, v9

    if-lez v6, :cond_167

    .line 523
    :cond_81
    iget-boolean v6, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    if-eqz v6, :cond_ea

    .line 525
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 526
    int-to-float v7, v6

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {p2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 527
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v7, v9, :cond_b7

    .line 529
    nop

    .line 530
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v10, v9

    mul-float/2addr v10, v8

    .line 531
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 530
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v7, v9

    .line 534
    :cond_b7
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v10, p2}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 535
    int-to-float v10, v9

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {p1, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 536
    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    if-ge v10, v11, :cond_14e

    .line 538
    nop

    .line 539
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v12, v11

    div-float/2addr v12, v8

    .line 540
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 539
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v10, v11

    goto :goto_14e

    .line 544
    :cond_ea
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 545
    int-to-float v7, v6

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {p2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 546
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    if-ge v7, v9, :cond_11c

    .line 548
    nop

    .line 549
    iget v6, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    iget-object v7, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    int-to-float v10, v9

    div-float/2addr v10, v8

    .line 550
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 549
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v7, v9

    .line 553
    :cond_11c
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-static {v10, p2}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 554
    int-to-float v10, v9

    div-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {p1, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 555
    iget v11, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleWidth:I

    if-ge v10, v11, :cond_14e

    .line 557
    nop

    .line 558
    iget v9, p0, Lcom/android/server/wm/TaskPositioner;->mMinVisibleHeight:I

    iget-object v10, p0, Lcom/android/server/wm/TaskPositioner;->mMaxVisibleSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v12, v11

    mul-float/2addr v12, v8

    .line 559
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 558
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v10, v11

    .line 565
    :cond_14e
    :goto_14e
    const/4 v8, 0x0

    const/4 v11, 0x1

    if-gt p1, v0, :cond_157

    if-le p2, v1, :cond_155

    goto :goto_157

    :cond_155
    move p1, v8

    goto :goto_158

    :cond_157
    :goto_157
    move p1, v11

    .line 566
    :goto_158
    mul-int p2, v6, v7

    mul-int v0, v10, v9

    if-le p2, v0, :cond_15f

    move v8, v11

    :cond_15f
    if-ne p1, v8, :cond_163

    .line 567
    nop

    .line 568
    goto :goto_169

    .line 570
    :cond_163
    nop

    .line 571
    move v7, v9

    move v6, v10

    goto :goto_169

    .line 576
    :cond_167
    move v6, p1

    move v7, p2

    :goto_169
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/TaskPositioner;->updateDraggedBounds(IIIIII)V

    .line 577
    return-void
.end method

.method startDrag(Lcom/android/server/wm/WindowState;ZZFF)V
    .registers 13

    .line 365
    :try_start_0
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    .line 366
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_27

    .line 371
    nop

    .line 372
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    .line 376
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mTask:Lcom/android/server/wm/Task;

    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 377
    iget-object v6, p0, Lcom/android/server/wm/TaskPositioner;->mTmpRect:Landroid/graphics/Rect;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/TaskPositioner;->startDrag(ZZFFLandroid/graphics/Rect;)V

    .line 378
    return-void

    .line 367
    :catch_27
    move-exception p1

    .line 369
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mTaskPositioningController:Lcom/android/server/wm/TaskPositioningController;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskPositioningController;->finishTaskPositioning()V

    .line 370
    return-void
.end method

.method protected startDrag(ZZFFLandroid/graphics/Rect;)V
    .registers 8

    .line 382
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 383
    iput p3, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragX:F

    .line 384
    iput p4, p0, Lcom/android/server/wm/TaskPositioner;->mStartDragY:F

    .line 385
    iput-boolean p2, p0, Lcom/android/server/wm/TaskPositioner;->mPreserveOrientation:Z

    .line 387
    const/4 p2, 0x1

    if-eqz p1, :cond_48

    .line 388
    iget p1, p5, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    cmpg-float p1, p3, p1

    if-gez p1, :cond_18

    .line 389
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 391
    :cond_18
    iget p1, p5, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_25

    .line 392
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 394
    :cond_25
    iget p1, p5, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpg-float p1, p4, p1

    if-gez p1, :cond_32

    .line 395
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 397
    :cond_32
    iget p1, p5, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpl-float p1, p4, p1

    if-lez p1, :cond_3f

    .line 398
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    .line 400
    :cond_3f
    iget p1, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    if-eqz p1, :cond_45

    move p1, p2

    goto :goto_46

    :cond_45
    move p1, v0

    :goto_46
    iput-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    .line 407
    :cond_48
    invoke-virtual {p5}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {p5}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lt p1, v1, :cond_53

    goto :goto_54

    :cond_53
    move p2, v0

    :goto_54
    iput-boolean p2, p0, Lcom/android/server/wm/TaskPositioner;->mStartOrientationWasLandscape:Z

    .line 408
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowOriginalBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 413
    iget-boolean p1, p0, Lcom/android/server/wm/TaskPositioner;->mResizing:Z

    if-eqz p1, :cond_81

    .line 414
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_64
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 415
    invoke-direct {p0, p3, p4}, Lcom/android/server/wm/TaskPositioner;->notifyMoveLocked(FF)Z

    .line 416
    monitor-exit p1
    :try_end_6b
    .catchall {:try_start_64 .. :try_end_6b} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 422
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p2, Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;

    invoke-direct {p2, p0, p5}, Lcom/android/server/wm/-$$Lambda$TaskPositioner$TE0EjYzJeOSFARmUlY6wF3y3c2U;-><init>(Lcom/android/server/wm/TaskPositioner;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    goto :goto_81

    .line 416
    :catchall_7b
    move-exception p2

    :try_start_7c
    monitor-exit p1
    :try_end_7d
    .catchall {:try_start_7c .. :try_end_7d} :catchall_7b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p2

    .line 433
    :cond_81
    :goto_81
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 434
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 2

    .line 658
    const-string v0, "WindowManager"

    return-object v0
.end method

.method unregister()V
    .registers 4

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    if-nez v0, :cond_c

    .line 328
    const-string v0, "WindowManager"

    const-string v1, "Task positioner not registered"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    return-void

    .line 332
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 334
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;->dispose()V

    .line 335
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mInputEventReceiver:Lcom/android/server/wm/TaskPositioner$WindowPositionerEventReceiver;

    .line 336
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 337
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v1}, Landroid/view/InputChannel;->dispose()V

    .line 338
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientChannel:Landroid/view/InputChannel;

    .line 339
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mServerChannel:Landroid/view/InputChannel;

    .line 341
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragWindowHandle:Landroid/view/InputWindowHandle;

    .line 342
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDragApplicationHandle:Landroid/view/InputApplicationHandle;

    .line 343
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/TaskPositioner;->mDragEnded:Z

    .line 346
    iget-object v2, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/InputMonitor;->updateInputWindowsLw(Z)V

    .line 352
    iget-object v1, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->resumeRotationLocked()V

    .line 353
    iput-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 354
    iget-object v0, p0, Lcom/android/server/wm/TaskPositioner;->mClientCallback:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 355
    return-void
.end method

.method updateDraggedBounds(IIIIII)V
    .registers 8

    .line 592
    iget v0, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_9

    .line 593
    sub-int p1, p3, p5

    goto :goto_b

    .line 595
    :cond_9
    add-int p3, p1, p5

    .line 597
    :goto_b
    iget p5, p0, Lcom/android/server/wm/TaskPositioner;->mCtrlType:I

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_14

    .line 598
    sub-int p2, p4, p6

    goto :goto_16

    .line 600
    :cond_14
    add-int p4, p2, p6

    .line 603
    :goto_16
    iget-object p5, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 605
    iget-object p1, p0, Lcom/android/server/wm/TaskPositioner;->mWindowDragBounds:Landroid/graphics/Rect;

    invoke-direct {p0, p1}, Lcom/android/server/wm/TaskPositioner;->checkBoundsForOrientationViolations(Landroid/graphics/Rect;)V

    .line 606
    return-void
.end method
