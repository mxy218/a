.class public Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.super Ljava/lang/Object;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field private mAllowGesture:Z

.field private final mContext:Landroid/content/Context;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mDownPoint:Landroid/graphics/PointF;

.field private mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

.field private mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

.field private mEdgeWidth:I

.field private final mExcludeRegion:Landroid/graphics/Region;

.field private final mFingerOffset:I

.field private mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private mGestureReceiver:Lcom/android/systemui/recents/OverviewProxyService$GestureReceiver;

.field private final mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

.field private mImeHeight:I

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsAttached:Z

.field private mIsEnabled:Z

.field private mIsGesturalModeEnabled:Z

.field private mIsOnLeftEdge:Z

.field private mLeftInset:I

.field private final mLongPressTimeout:I

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mMinArrowPosition:I

.field private mMode:I

.field private final mNavBarHeight:I

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

.field private mRightInset:I

.field private final mSamplingRect:Landroid/graphics/Rect;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mThresholdCrossed:Z

.field private final mTouchSlop:F

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;)V
    .registers 5

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

    .line 125
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    .line 139
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 144
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    .line 160
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    .line 161
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 162
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 165
    iput v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mImeHeight:I

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    .line 559
    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureReceiver:Lcom/android/systemui/recents/OverviewProxyService$GestureReceiver;

    .line 188
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 189
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    .line 192
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    .line 193
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 198
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f400000  # 0.75f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTouchSlop:F

    .line 200
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    const/16 p2, 0xfa

    .line 199
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLongPressTimeout:I

    .line 202
    sget p1, Lcom/android/systemui/R$dimen;->navigation_bar_frame_height:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mNavBarHeight:I

    .line 203
    sget p1, Lcom/android/systemui/R$dimen;->navigation_edge_arrow_min_y:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMinArrowPosition:I

    .line 204
    sget p1, Lcom/android/systemui/R$dimen;->navigation_edge_finger_offset:I

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mFingerOffset:I

    .line 205
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateCurrentUserResources(Landroid/content/res/Resources;)V

    .line 208
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureReceiver:Lcom/android/systemui/recents/OverviewProxyService$GestureReceiver;

    invoke-virtual {p1, p0}, Lcom/android/systemui/recents/OverviewProxyService;->registerGestureReceiver(Lcom/android/systemui/recents/OverviewProxyService$GestureReceiver;)V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;I)I
    .registers 2

    .line 81
    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mImeHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I
    .registers 1

    .line 81
    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Ljava/util/concurrent/Executor;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Region;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Lcom/flyme/systemui/fullscreen/views/EdgeBackView;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Rect;
    .registers 1

    .line 81
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z
    .registers 1

    .line 81
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/view/MotionEvent;)V
    .registers 2

    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->onMotionEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private cancelGesture(Landroid/view/MotionEvent;)V
    .registers 3

    const/4 v0, 0x0

    .line 375
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 376
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    .line 377
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 378
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->handleTouch(Landroid/view/MotionEvent;)V

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private disposeInputChannel()V
    .registers 3

    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 252
    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 253
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 255
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_13

    .line 256
    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    .line 257
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_13
    return-void
.end method

.method private isWithinTouchRegion(II)Z
    .registers 9

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mImeHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mNavBarHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-le p2, v0, :cond_11

    return v1

    .line 362
    :cond_11
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v2, v0

    if-le p1, v2, :cond_23

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_23

    return v1

    .line 365
    :cond_23
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 367
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    xor-int/lit8 v5, p0, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    :cond_38
    xor-int/lit8 p0, p1, 0x1

    return p0
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .registers 12

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_83

    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getSystemUiStateFlags()I

    move-result v0

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidth:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_1e

    move v3, v2

    goto :goto_1f

    :cond_1e
    move v3, v1

    :goto_1f
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    .line 389
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result v0

    if-nez v0, :cond_38

    .line 390
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {p0, v0, v3}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->isWithinTouchRegion(II)Z

    move-result v0

    if-eqz v0, :cond_38

    goto :goto_39

    :cond_38
    move v2, v1

    :goto_39
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 392
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->reJudgeGesture()V

    .line 395
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v0, :cond_122

    .line 396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-eqz v2, :cond_4b

    const/16 v2, 0x33

    goto :goto_4d

    :cond_4b
    const/16 v2, 0x35

    .line 398
    :goto_4d
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    invoke-virtual {v0, v2}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->setIsLeftPanel(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->handleTouch(Landroid/view/MotionEvent;)V

    .line 401
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateEdgePanelPosition(F)V

    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    .line 405
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 406
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    goto/16 :goto_122

    .line 408
    :cond_83
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    if-eqz v3, :cond_122

    .line 409
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    if-nez v3, :cond_e1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_92

    .line 412
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    return-void

    :cond_92
    const/4 v3, 0x2

    if-ne v0, v3, :cond_e1

    .line 415
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLongPressTimeout:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_a9

    .line 416
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->cancelGesture(Landroid/view/MotionEvent;)V

    return-void

    .line 419
    :cond_a9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 420
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v5, v4, v3

    if-lez v5, :cond_ce

    .line 421
    iget v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v5, v4, v5

    if-lez v5, :cond_ce

    goto :goto_e1

    :cond_ce
    cmpl-float v4, v3, v4

    if-lez v4, :cond_e1

    .line 427
    iget v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mTouchSlop:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_e1

    .line 428
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mThresholdCrossed:Z

    .line 433
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v3, :cond_e1

    .line 434
    invoke-virtual {v3}, Landroid/view/InputMonitor;->pilferPointers()V

    .line 443
    :cond_e1
    :goto_e1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    invoke-virtual {v3, p1}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->handleTouch(Landroid/view/MotionEvent;)V

    if-ne v0, v2, :cond_ea

    move p1, v2

    goto :goto_eb

    :cond_ea
    move p1, v1

    :goto_eb
    if-eqz p1, :cond_10e

    .line 447
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    invoke-virtual {v3}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->shouldTriggerBack()Z

    move-result v5

    if-eqz v5, :cond_fc

    const/4 v3, 0x4

    .line 450
    invoke-direct {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sendEvent(II)V

    .line 451
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->sendEvent(II)V

    .line 453
    :cond_fc
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDownPoint:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    float-to-int v6, v3

    iget v1, v1, Landroid/graphics/PointF;->y:F

    float-to-int v7, v1

    const/4 v8, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    xor-int/lit8 v9, v1, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    :cond_10e
    if-nez p1, :cond_11d

    const/4 p1, 0x3

    if-ne v0, p1, :cond_114

    goto :goto_11d

    .line 459
    :cond_114
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateSamplingRect()V

    .line 460
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingRect()V

    goto :goto_122

    .line 457
    :cond_11d
    :goto_11d
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    :cond_122
    :goto_122
    return-void
.end method

.method private reJudgeGesture()V
    .registers 4

    .line 573
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_10

    .line 574
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 577
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplay:Landroid/view/Display;

    if-nez v0, :cond_25

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplay:Landroid/view/Display;

    .line 582
    :cond_25
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isQsEditShowing()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 583
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 586
    :cond_32
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isSwipeUpMode(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 588
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "mback_side_slip_gesture"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_4b

    .line 590
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 592
    :cond_4b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-ne v0, v1, :cond_5a

    .line 594
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-nez v1, :cond_5a

    .line 595
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    goto :goto_63

    :cond_5a
    const/4 v1, 0x3

    if-ne v0, v1, :cond_63

    .line 596
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-eqz v0, :cond_63

    .line 597
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    :cond_63
    :goto_63
    return-void
.end method

.method private sendEvent(II)V
    .registers 17

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 515
    new-instance v13, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 521
    const-class v0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController;

    move-object v1, p0

    .line 522
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->getExpandedDisplayId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    move/from16 v2, p2

    if-ne v2, v1, :cond_30

    const/4 v1, -0x1

    if-eq v0, v1, :cond_30

    .line 524
    invoke-virtual {v13, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    .line 526
    :cond_30
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private updateDisplaySize()V
    .registers 3

    .line 508
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 509
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    .line 510
    invoke-virtual {v0, p0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    return-void
.end method

.method private updateEdgePanelPosition(F)V
    .registers 3

    .line 466
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mFingerOffset:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 467
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMinArrowPosition:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 468
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 473
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 474
    iget p0, p0, Landroid/graphics/Point;->y:I

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    return-void
.end method

.method private updateIsEnabled()V
    .registers 12

    .line 262
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    if-eqz v0, :cond_c

    move v0, v1

    goto :goto_d

    :cond_c
    move v0, v2

    .line 263
    :goto_d
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    if-ne v0, v3, :cond_12

    return-void

    .line 266
    :cond_12
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    .line 267
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->disposeInputChannel()V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    if-eqz v0, :cond_2a

    .line 270
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    invoke-interface {v3, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 271
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    .line 272
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    .line 273
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    .line 276
    :cond_2a
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    const-string v3, "EdgeBackGestureHandler"

    if-nez v0, :cond_5b

    .line 277
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->removePinnedStackListener(Landroid/view/IPinnedStackListener;)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 281
    :try_start_46
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 282
    invoke-interface {v0, v1, p0}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_46 .. :try_end_51} :catch_53

    goto/16 :goto_105

    :catch_53
    move-exception p0

    const-string v0, "Failed to unregister window manager callbacks"

    .line 285
    invoke-static {v3, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_105

    .line 289
    :cond_5b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisplaySize()V

    .line 290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 291
    invoke-virtual {v4}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v4

    .line 290
    invoke-virtual {v0, p0, v4}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 294
    :try_start_71
    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

    invoke-virtual {v0, v4}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->addPinnedStackListener(Landroid/view/IPinnedStackListener;)V

    .line 295
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    .line 296
    invoke-interface {v0, v4, v5}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_85
    .catch Landroid/os/RemoteException; {:try_start_71 .. :try_end_85} :catch_86

    goto :goto_8c

    :catch_86
    move-exception v0

    const-string v4, "Failed to register window manager callbacks"

    .line 299
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    :goto_8c
    new-instance v0, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    .line 315
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 316
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->navigation_edge_panel_width:I

    .line 317
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    .line 318
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->navigation_edge_panel_height:I

    .line 319
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/16 v8, 0x7e8

    const v9, 0x800138

    const/4 v10, -0x3

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 331
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 333
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->nav_bar_edge_panel:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 335
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 336
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mWm:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    :goto_105
    return-void
.end method

.method private updateSamplingRect()V
    .registers 6

    .line 480
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 481
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsOnLeftEdge:Z

    if-eqz v2, :cond_b

    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    goto :goto_16

    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v0, v2, v0

    .line 482
    :goto_16
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v2, v0

    .line 483
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v3, v1

    .line 484
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->adjustRectToBoundingBox(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "EdgeBackGestureHandler:"

    .line 535
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 537
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExcludeRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mImeHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mImeHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 540
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEdgeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidth:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public onDisplayChanged(I)V
    .registers 3

    .line 496
    iget v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mDisplayId:I

    if-ne p1, v0, :cond_19

    .line 497
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateDisplaySize()V

    .line 499
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_19

    const/4 p1, 0x0

    .line 500
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mAllowGesture:Z

    .line 501
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgePanel:Lcom/flyme/systemui/fullscreen/views/EdgeBackView;

    invoke-virtual {p0}, Lcom/flyme/systemui/fullscreen/views/EdgeBackView;->dismiss()V

    :cond_19
    return-void
.end method

.method public onDisplayRemoved(I)V
    .registers 2

    return-void
.end method

.method public onNavBarAttached()V
    .registers 2

    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onNavBarDetached()V
    .registers 2

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsAttached:Z

    .line 235
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    return-void
.end method

.method public onNavigationModeChanged(ILandroid/content/Context;)V
    .registers 4

    .line 242
    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mMode:I

    .line 243
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isSwipeUpMode(I)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mIsGesturalModeEnabled:Z

    .line 246
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateIsEnabled()V

    .line 247
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->updateCurrentUserResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method public setInsets(II)V
    .registers 3

    .line 530
    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mLeftInset:I

    .line 531
    iput p2, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mRightInset:I

    return-void
.end method

.method public updateCurrentUserResources(Landroid/content/res/Resources;)V
    .registers 3

    .line 217
    sget v0, Lcom/android/systemui/R$dimen;->mz_config_backGestureInset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->mEdgeWidth:I

    return-void
.end method
