.class Lcom/android/server/wm/PinnedStackController;
.super Ljava/lang/Object;
.source "PinnedStackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;,
        Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;
    }
.end annotation


# static fields
.field public static final INVALID_SNAP_FRACTION:F = -1.0f

.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field private mAspectRatio:F

.field private final mCallbacks:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

.field private mCurrentMinSize:I

.field private mDefaultAspectRatio:F

.field private mDefaultMinSize:I

.field private mDefaultStackGravity:I

.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mHandler:Landroid/os/Handler;

.field private mImeHeight:I

.field private mIsImeShowing:Z

.field private mIsMinimized:Z

.field private mIsShelfShowing:Z

.field private mLastPipActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxAspectRatio:F

.field private mMinAspectRatio:F

.field private mPinnedStackListener:Landroid/view/IPinnedStackListener;

.field private final mPinnedStackListenerDeathHandler:Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

.field private mReentrySnapFraction:F

.field private mScreenEdgeInsets:Landroid/graphics/Point;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mShelfHeight:I

.field private final mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

.field private final mStableInsets:Landroid/graphics/Rect;

.field private final mTmpAnimatingBoundsRect:Landroid/graphics/Rect;

.field private final mTmpDisplaySize:Landroid/graphics/Point;

.field private final mTmpInsets:Landroid/graphics/Rect;

.field private final mTmpMetrics:Landroid/util/DisplayMetrics;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 6

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;-><init>(Lcom/android/server/wm/PinnedStackController;Lcom/android/server/wm/PinnedStackController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListenerDeathHandler:Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

    .line 86
    new-instance v0, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;-><init>(Lcom/android/server/wm/PinnedStackController;Lcom/android/server/wm/PinnedStackController$1;)V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mCallbacks:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    .line 98
    const/high16 v0, -0x40800000  # -1.0f

    iput v0, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    .line 101
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    .line 102
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mStableInsets:Landroid/graphics/Rect;

    .line 110
    iput v0, p0, Lcom/android/server/wm/PinnedStackController;->mReentrySnapFraction:F

    .line 111
    iput-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mLastPipActivity:Ljava/lang/ref/WeakReference;

    .line 118
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mTmpMetrics:Landroid/util/DisplayMetrics;

    .line 119
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mTmpInsets:Landroid/graphics/Rect;

    .line 120
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mTmpRect:Landroid/graphics/Rect;

    .line 121
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mTmpAnimatingBoundsRect:Landroid/graphics/Rect;

    .line 122
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mTmpDisplaySize:Landroid/graphics/Point;

    .line 169
    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 170
    iput-object p2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 171
    new-instance p2, Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1}, Lcom/android/internal/policy/PipSnapAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    .line 172
    iget-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object p2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 173
    invoke-direct {p0}, Lcom/android/server/wm/PinnedStackController;->reloadResources()V

    .line 177
    iget p1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultAspectRatio:F

    iput p1, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    .line 178
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/wm/PinnedStackController;)Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListenerDeathHandler:Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/wm/PinnedStackController;)Landroid/os/Handler;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/server/wm/PinnedStackController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/PinnedStackController;)Lcom/android/server/wm/WindowManagerService;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/server/wm/PinnedStackController;)Landroid/view/DisplayInfo;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/server/wm/PinnedStackController;I)I
    .registers 2

    .line 73
    iput p1, p0, Lcom/android/server/wm/PinnedStackController;->mCurrentMinSize:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/wm/PinnedStackController;)I
    .registers 1

    .line 73
    iget p0, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultMinSize:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/server/wm/PinnedStackController;Z)Z
    .registers 2

    .line 73
    iput-boolean p1, p0, Lcom/android/server/wm/PinnedStackController;->mIsMinimized:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/wm/PinnedStackController;)Lcom/android/internal/policy/PipSnapAlgorithm;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/wm/PinnedStackController;)Landroid/view/IPinnedStackListener;
    .registers 1

    .line 73
    iget-object p0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/server/wm/PinnedStackController;Landroid/view/IPinnedStackListener;)Landroid/view/IPinnedStackListener;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    return-object p1
.end method

.method private applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 7

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 570
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mTmpDisplaySize:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 571
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->getStableInsetsLocked(ILandroid/graphics/Rect;)V

    .line 572
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mTmpDisplaySize:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/android/internal/policy/PipSnapAlgorithm;->applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 574
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_5 .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 575
    return-void

    .line 574
    :catchall_30
    move-exception p1

    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private dpToPx(FLandroid/util/DisplayMetrics;)I
    .registers 4

    .line 589
    const/4 v0, 0x1

    invoke-static {v0, p1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private getInsetBounds(Landroid/graphics/Rect;)V
    .registers 10

    .line 527
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 528
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v1, Landroid/view/DisplayInfo;->rotation:I

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v6, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v7, p0, Lcom/android/server/wm/PinnedStackController;->mTmpInsets:Landroid/graphics/Rect;

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayPolicy;->getStableInsetsLw(IIILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 531
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mTmpInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mTmpInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v4, p0, Lcom/android/server/wm/PinnedStackController;->mTmpInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/PinnedStackController;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v5, p0, Lcom/android/server/wm/PinnedStackController;->mTmpInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/wm/PinnedStackController;->mScreenEdgeInsets:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 534
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_5 .. :try_end_55} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 535
    return-void

    .line 534
    :catchall_59
    move-exception p1

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 4

    .line 542
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 543
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1, v1}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;ZZ)Landroid/graphics/Rect;

    move-result-object p1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object p1

    .line 545
    :catchall_12
    move-exception p1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private getMovementBounds(Landroid/graphics/Rect;ZZ)Landroid/graphics/Rect;
    .registers 8

    .line 553
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 554
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 555
    invoke-direct {p0, v1}, Lcom/android/server/wm/PinnedStackController;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 558
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    .line 559
    const/4 v3, 0x0

    if-eqz p2, :cond_1c

    iget-boolean p2, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    if-eqz p2, :cond_1c

    iget p2, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    goto :goto_1d

    :cond_1c
    move p2, v3

    .line 560
    :goto_1d
    if-eqz p3, :cond_25

    iget-boolean p3, p0, Lcom/android/server/wm/PinnedStackController;->mIsShelfShowing:Z

    if-eqz p3, :cond_25

    iget v3, p0, Lcom/android/server/wm/PinnedStackController;->mShelfHeight:I

    .line 559
    :cond_25
    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 558
    invoke-virtual {v2, p1, v1, v1, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 561
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_5 .. :try_end_2d} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 562
    :catchall_31
    move-exception p1

    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private getSnapFraction(Landroid/graphics/Rect;)F
    .registers 4

    .line 582
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p1

    return p1
.end method

.method private isSameDimensionAndRotation(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)Z
    .registers 5

    .line 434
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iget v1, p2, Landroid/view/DisplayInfo;->rotation:I

    if-ne v0, v1, :cond_1a

    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v1, p2, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v0, v1, :cond_1a

    iget p1, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget p2, p2, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne p1, p2, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    return p1
.end method

.method private notifyActionsChanged(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 481
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-eqz v0, :cond_15

    .line 483
    :try_start_4
    new-instance v1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v1, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Landroid/view/IPinnedStackListener;->onActionsChanged(Landroid/content/pm/ParceledListSlice;)V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_c} :catch_d

    .line 486
    goto :goto_15

    .line 484
    :catch_d
    move-exception p1

    .line 485
    const-string v0, "WindowManager"

    const-string v1, "Error delivering actions changed event."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 488
    :cond_15
    :goto_15
    return-void
.end method

.method private notifyImeVisibilityChanged(ZI)V
    .registers 4

    .line 445
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-eqz v0, :cond_10

    .line 447
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/view/IPinnedStackListener;->onImeVisibilityChanged(ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 450
    goto :goto_10

    .line 448
    :catch_8
    move-exception p1

    .line 449
    const-string p2, "WindowManager"

    const-string v0, "Error delivering bounds changed event."

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    :cond_10
    :goto_10
    return-void
.end method

.method private notifyMinimizeChanged(Z)V
    .registers 4

    .line 468
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-eqz v0, :cond_10

    .line 470
    :try_start_4
    invoke-interface {v0, p1}, Landroid/view/IPinnedStackListener;->onMinimizedStateChanged(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 473
    goto :goto_10

    .line 471
    :catch_8
    move-exception p1

    .line 472
    const-string v0, "WindowManager"

    const-string v1, "Error delivering minimize changed event."

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 475
    :cond_10
    :goto_10
    return-void
.end method

.method private notifyMovementBoundsChanged(ZZ)V
    .registers 11

    .line 495
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 496
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-nez v1, :cond_11

    .line 497
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 500
    :cond_11
    :try_start_11
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 501
    invoke-direct {p0, v2}, Lcom/android/server/wm/PinnedStackController;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 502
    const/high16 v1, -0x40800000  # -1.0f

    invoke-virtual {p0, v1}, Lcom/android/server/wm/PinnedStackController;->getDefaultBounds(F)Landroid/graphics/Rect;

    move-result-object v3

    .line 503
    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    invoke-virtual {p0, v1}, Lcom/android/server/wm/PinnedStackController;->isValidPictureInPictureAspectRatio(F)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 504
    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v4}, Lcom/android/server/wm/PinnedStackController;->transformBoundsToAspectRatio(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;

    .line 507
    :cond_2d
    iget-object v4, p0, Lcom/android/server/wm/PinnedStackController;->mTmpAnimatingBoundsRect:Landroid/graphics/Rect;

    .line 508
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getPinnedStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 509
    if-eqz v1, :cond_3b

    .line 510
    invoke-virtual {v1, v4}, Lcom/android/server/wm/TaskStack;->getAnimationOrCurrentBounds(Landroid/graphics/Rect;)V

    goto :goto_3e

    .line 512
    :cond_3b
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 514
    :goto_3e
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    iget-object v5, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v7, v5, Landroid/view/DisplayInfo;->rotation:I

    move v5, p1

    move v6, p2

    invoke-interface/range {v1 .. v7}, Landroid/view/IPinnedStackListener;->onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_49} :catch_4a
    .catchall {:try_start_11 .. :try_end_49} :catchall_57

    .line 519
    goto :goto_52

    .line 517
    :catch_4a
    move-exception p1

    .line 518
    :try_start_4b
    const-string p2, "WindowManager"

    const-string v1, "Error delivering actions changed event."

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    :goto_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_4b .. :try_end_53} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 521
    return-void

    .line 520
    :catchall_57
    move-exception p1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method private notifyShelfVisibilityChanged(ZI)V
    .registers 4

    .line 455
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    if-eqz v0, :cond_10

    .line 457
    :try_start_4
    invoke-interface {v0, p1, p2}, Landroid/view/IPinnedStackListener;->onShelfVisibilityChanged(ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    .line 460
    goto :goto_10

    .line 458
    :catch_8
    move-exception p1

    .line 459
    const-string p2, "WindowManager"

    const-string v0, "Error delivering bounds changed event."

    invoke-static {p2, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 462
    :cond_10
    :goto_10
    return-void
.end method

.method private reloadResources()V
    .registers 6

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 189
    const v1, 0x10500e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultMinSize:I

    .line 191
    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultMinSize:I

    iput v1, p0, Lcom/android/server/wm/PinnedStackController;->mCurrentMinSize:I

    .line 192
    const v1, 0x10500ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultAspectRatio:F

    .line 194
    const v1, 0x1040163

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_30

    .line 197
    invoke-static {v1}, Landroid/util/Size;->parseSize(Ljava/lang/String;)Landroid/util/Size;

    move-result-object v1

    goto :goto_31

    .line 198
    :cond_30
    const/4 v1, 0x0

    .line 199
    :goto_31
    const v2, 0x10e003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultStackGravity:I

    .line 201
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mTmpMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 202
    if-nez v1, :cond_4d

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    goto :goto_69

    .line 203
    :cond_4d
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/wm/PinnedStackController;->mTmpMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {p0, v3, v4}, Lcom/android/server/wm/PinnedStackController;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result v3

    .line 204
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/android/server/wm/PinnedStackController;->mTmpMetrics:Landroid/util/DisplayMetrics;

    invoke-direct {p0, v1, v4}, Lcom/android/server/wm/PinnedStackController;->dpToPx(FLandroid/util/DisplayMetrics;)I

    move-result v1

    invoke-direct {v2, v3, v1}, Landroid/graphics/Point;-><init>(II)V

    move-object v1, v2

    :goto_69
    iput-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mScreenEdgeInsets:Landroid/graphics/Point;

    .line 205
    const v1, 0x10500ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    iput v1, p0, Lcom/android/server/wm/PinnedStackController;->mMinAspectRatio:F

    .line 207
    const v1, 0x10500ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/PinnedStackController;->mMaxAspectRatio:F

    .line 209
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 7

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PinnedStackController"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  defaultBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 595
    const/high16 v0, -0x40800000  # -1.0f

    invoke-virtual {p0, v0}, Lcom/android/server/wm/PinnedStackController;->getDefaultBounds(F)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 596
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDefaultMinSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultMinSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDefaultStackGravity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultStackGravity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mDefaultAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  movementBounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 602
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mIsImeShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mImeHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 605
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mIsShelfShowing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/PinnedStackController;->mIsShelfShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mShelfHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mShelfHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mReentrySnapFraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mReentrySnapFraction:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mIsMinimized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/PinnedStackController;->mIsMinimized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mMinAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mMinAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mMaxAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mMaxAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 612
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a6

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mActions=[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_203

    .line 615
    :cond_1a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mActions=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    const/4 v0, 0x0

    :goto_1bb
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1ef

    .line 617
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/RemoteAction;

    .line 618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "    Action["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 619
    const-string v2, ""

    invoke-virtual {v1, v2, p2}, Landroid/app/RemoteAction;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 616
    add-int/lit8 v0, v0, 0x1

    goto :goto_1bb

    .line 621
    :cond_1ef
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    :goto_203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  mDisplayInfo="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 624
    return-void
.end method

.method getAspectRatio()F
    .registers 2

    .line 418
    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    return v0
.end method

.method getDefaultBounds(F)Landroid/graphics/Rect;
    .registers 11

    .line 293
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 294
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 295
    invoke-direct {p0, v4}, Lcom/android/server/wm/PinnedStackController;->getInsetBounds(Landroid/graphics/Rect;)V

    .line 297
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 298
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget v2, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultAspectRatio:F

    iget v3, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultMinSize:I

    int-to-float v3, v3

    iget-object v5, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v5, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v6, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v6, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSizeForAspectRatio(FFII)Landroid/util/Size;

    move-result-object v1

    .line 300
    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v2, p1, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_44

    .line 301
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v8, v3, v3, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 302
    invoke-direct {p0, v8}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 303
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v2, v8, v1, p1}, Lcom/android/internal/policy/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 304
    goto :goto_69

    .line 305
    :cond_44
    iget p1, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultStackGravity:I

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    .line 306
    iget-boolean v1, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    if-eqz v1, :cond_56

    iget v1, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    goto :goto_57

    :cond_56
    move v1, v3

    .line 307
    :goto_57
    iget-boolean v7, p0, Lcom/android/server/wm/PinnedStackController;->mIsShelfShowing:Z

    if-eqz v7, :cond_5d

    iget v3, p0, Lcom/android/server/wm/PinnedStackController;->mShelfHeight:I

    .line 306
    :cond_5d
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 305
    move v1, p1

    move v3, v5

    move v5, v6

    move v6, v7

    move-object v7, v8

    invoke-static/range {v1 .. v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 310
    :goto_69
    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_5 .. :try_end_6a} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v8

    .line 311
    :catchall_6e
    move-exception p1

    :try_start_6f
    monitor-exit v0
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method getDefaultOrLastSavedBounds()Landroid/graphics/Rect;
    .registers 2

    .line 285
    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mReentrySnapFraction:F

    invoke-virtual {p0, v0}, Lcom/android/server/wm/PinnedStackController;->getDefaultBounds(F)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public isValidPictureInPictureAspectRatio(F)Z
    .registers 3

    .line 236
    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mMinAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-gtz v0, :cond_12

    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mMaxAspectRatio:F

    .line 237
    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-gtz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    .line 236
    :goto_13
    return p1
.end method

.method onConfigurationChanged()V
    .registers 1

    .line 181
    invoke-direct {p0}, Lcom/android/server/wm/PinnedStackController;->reloadResources()V

    .line 182
    return-void
.end method

.method declared-synchronized onDisplayInfoChanged(Landroid/view/DisplayInfo;)V
    .registers 3

    monitor-enter p0

    .line 320
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 321
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(ZZ)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 322
    monitor-exit p0

    return-void

    .line 319
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onTaskStackBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 8

    .line 329
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 330
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 331
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/PinnedStackController;->isSameDimensionAndRotation(Landroid/view/DisplayInfo;Landroid/view/DisplayInfo;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1f

    .line 333
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 334
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 335
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 338
    iget-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p1, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 339
    invoke-virtual {p2}, Landroid/graphics/Rect;->setEmpty()V

    .line 340
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_1f .. :try_end_2e} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 343
    :cond_32
    :try_start_32
    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 344
    iget-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mTmpRect:Landroid/graphics/Rect;

    .line 347
    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController;->getSnapFraction(Landroid/graphics/Rect;)F

    move-result v2

    .line 348
    iget-object v4, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v4, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    .line 352
    invoke-direct {p0, p1, v3, v3}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;ZZ)Landroid/graphics/Rect;

    move-result-object v1

    .line 354
    iget-object v4, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v4, p1, v1, v2}, Lcom/android/internal/policy/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 356
    iget-boolean v2, p0, Lcom/android/server/wm/PinnedStackController;->mIsMinimized:Z

    if-eqz v2, :cond_52

    .line 357
    invoke-direct {p0, p1, v1}, Lcom/android/server/wm/PinnedStackController;->applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 360
    :cond_52
    invoke-direct {p0, v3, v3}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(ZZ)V

    .line 363
    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 364
    const/4 p1, 0x1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_32 .. :try_end_5a} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return p1

    .line 365
    :catchall_5e
    move-exception p1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
.end method

.method registerPinnedStackListener(Landroid/view/IPinnedStackListener;)V
    .registers 5

    .line 216
    :try_start_0
    invoke-interface {p1}, Landroid/view/IPinnedStackListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListenerDeathHandler:Lcom/android/server/wm/PinnedStackController$PinnedStackListenerDeathHandler;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mCallbacks:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

    invoke-interface {p1, v0}, Landroid/view/IPinnedStackListener;->onListenerRegistered(Landroid/view/IPinnedStackController;)V

    .line 218
    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mPinnedStackListener:Landroid/view/IPinnedStackListener;

    .line 219
    iget-boolean p1, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/PinnedStackController;->notifyImeVisibilityChanged(ZI)V

    .line 220
    iget-boolean p1, p0, Lcom/android/server/wm/PinnedStackController;->mIsShelfShowing:Z

    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mShelfHeight:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/PinnedStackController;->notifyShelfVisibilityChanged(ZI)V

    .line 223
    invoke-direct {p0, v2, v2}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(ZZ)V

    .line 225
    iget-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController;->notifyActionsChanged(Ljava/util/List;)V

    .line 226
    iget-boolean p1, p0, Lcom/android/server/wm/PinnedStackController;->mIsMinimized:Z

    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController;->notifyMinimizeChanged(Z)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 229
    goto :goto_35

    .line 227
    :catch_2d
    move-exception p1

    .line 228
    const-string v0, "WindowManager"

    const-string v1, "Failed to register pinned stack listener"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    :goto_35
    return-void
.end method

.method resetReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mLastPipActivity:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_11

    .line 276
    const/high16 p1, -0x40800000  # -1.0f

    iput p1, p0, Lcom/android/server/wm/PinnedStackController;->mReentrySnapFraction:F

    .line 277
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mLastPipActivity:Ljava/lang/ref/WeakReference;

    .line 279
    :cond_11
    return-void
.end method

.method saveReentrySnapFraction(Lcom/android/server/wm/AppWindowToken;Landroid/graphics/Rect;)V
    .registers 3

    .line 267
    invoke-direct {p0, p2}, Lcom/android/server/wm/PinnedStackController;->getSnapFraction(Landroid/graphics/Rect;)F

    move-result p2

    iput p2, p0, Lcom/android/server/wm/PinnedStackController;->mReentrySnapFraction:F

    .line 268
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/server/wm/PinnedStackController;->mLastPipActivity:Ljava/lang/ref/WeakReference;

    .line 269
    return-void
.end method

.method setActions(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .line 425
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 426
    if-eqz p1, :cond_c

    .line 427
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 429
    :cond_c
    iget-object p1, p0, Lcom/android/server/wm/PinnedStackController;->mActions:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController;->notifyActionsChanged(Ljava/util/List;)V

    .line 430
    return-void
.end method

.method setAdjustedForIme(ZI)V
    .registers 6

    .line 376
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-lez p2, :cond_8

    move p1, v0

    goto :goto_9

    :cond_8
    move p1, v1

    .line 377
    :goto_9
    if-eqz p1, :cond_c

    goto :goto_d

    :cond_c
    move p2, v1

    .line 378
    :goto_d
    iget-boolean v2, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    if-ne p1, v2, :cond_16

    iget v2, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    if-ne p2, v2, :cond_16

    .line 379
    return-void

    .line 382
    :cond_16
    iput-boolean p1, p0, Lcom/android/server/wm/PinnedStackController;->mIsImeShowing:Z

    .line 383
    iput p2, p0, Lcom/android/server/wm/PinnedStackController;->mImeHeight:I

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PinnedStackController;->notifyImeVisibilityChanged(ZI)V

    .line 385
    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(ZZ)V

    .line 386
    return-void
.end method

.method setAdjustedForShelf(ZI)V
    .registers 6

    .line 392
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    if-lez p2, :cond_8

    move p1, v0

    goto :goto_9

    :cond_8
    move p1, v1

    .line 393
    :goto_9
    iget-boolean v2, p0, Lcom/android/server/wm/PinnedStackController;->mIsShelfShowing:Z

    if-ne p1, v2, :cond_12

    iget v2, p0, Lcom/android/server/wm/PinnedStackController;->mShelfHeight:I

    if-ne p2, v2, :cond_12

    .line 394
    return-void

    .line 397
    :cond_12
    iput-boolean p1, p0, Lcom/android/server/wm/PinnedStackController;->mIsShelfShowing:Z

    .line 398
    iput p2, p0, Lcom/android/server/wm/PinnedStackController;->mShelfHeight:I

    .line 399
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PinnedStackController;->notifyShelfVisibilityChanged(ZI)V

    .line 400
    invoke-direct {p0, v1, v0}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(ZZ)V

    .line 401
    return-void
.end method

.method setAspectRatio(F)V
    .registers 3

    .line 407
    iget v0, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    invoke-static {v0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_e

    .line 408
    iput p1, p0, Lcom/android/server/wm/PinnedStackController;->mAspectRatio:F

    .line 409
    const/4 p1, 0x0

    invoke-direct {p0, p1, p1}, Lcom/android/server/wm/PinnedStackController;->notifyMovementBoundsChanged(ZZ)V

    .line 412
    :cond_e
    return-void
.end method

.method transformBoundsToAspectRatio(Landroid/graphics/Rect;FZ)Landroid/graphics/Rect;
    .registers 8

    .line 247
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    .line 248
    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 247
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    .line 250
    if-eqz p3, :cond_f

    iget p3, p0, Lcom/android/server/wm/PinnedStackController;->mCurrentMinSize:I

    goto :goto_11

    :cond_f
    iget p3, p0, Lcom/android/server/wm/PinnedStackController;->mDefaultMinSize:I

    .line 251
    :goto_11
    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    int-to-float p3, p3

    iget-object v2, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v3, p0, Lcom/android/server/wm/PinnedStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v3, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, p2, p3, v2, v3}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSizeForAspectRatio(FFII)Landroid/util/Size;

    move-result-object p2

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000  # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr p3, v1

    float-to-int p3, p3

    .line 254
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 255
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    add-int/2addr p2, v1

    invoke-virtual {p1, p3, v1, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 256
    iget-object p2, p0, Lcom/android/server/wm/PinnedStackController;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p1, p3, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 257
    iget-boolean p2, p0, Lcom/android/server/wm/PinnedStackController;->mIsMinimized:Z

    if-eqz p2, :cond_5d

    .line 258
    invoke-direct {p0, p1}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PinnedStackController;->applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 260
    :cond_5d
    return-object p1
.end method

.method writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 8

    .line 627
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 628
    const/high16 v0, -0x40800000  # -1.0f

    invoke-virtual {p0, v0}, Lcom/android/server/wm/PinnedStackController;->getDefaultBounds(F)Landroid/graphics/Rect;

    move-result-object v0

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 629
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/PinnedStackController;->mTmpRect:Landroid/graphics/Rect;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/server/wm/WindowManagerService;->getStackBounds(IILandroid/graphics/Rect;)V

    .line 630
    iget-object v0, p0, Lcom/android/server/wm/PinnedStackController;->mTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/server/wm/PinnedStackController;->getMovementBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 631
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 632
    return-void
.end method