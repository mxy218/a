.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
.super Landroid/widget/FrameLayout;
.source "StatusBarWindowView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;,
        Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;
    }
.end annotation


# instance fields
.field private final DEMO_MODE_ENABLE:Z

.field private mBrightnessMirror:Landroid/view/View;

.field private mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mDoubleTapEnabled:Z

.field private mDownTime:I

.field private mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field private mExpandAnimationPending:Z

.field private mExpandAnimationRunning:Z

.field private mExpandingBelowNotch:Z

.field private mFakeWindow:Landroid/view/Window;

.field private mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private mFloatingActionMode:Landroid/view/ActionMode;

.field private mFloatingActionModeOriginatingView:Landroid/view/View;

.field private mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mLastDownTime:I

.field private mLastVolumnTime:J

.field private mLeftInset:I

.field private mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

.field private mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mPalmRejection:Lcom/meizu/keyguard/PalmRejection;

.field private mRightInset:I

.field private mScreenOnNoTouch:Z

.field private mService:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mSingleTapEnabled:Z

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private mSuppressingWakeUpGesture:Z

.field private mTouchActive:Z

.field private mTouchCancelled:Z

.field private final mTransparentSrcPaint:Landroid/graphics/Paint;

.field private final mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

.field private mUpTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 162
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 102
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    .line 103
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    .line 106
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 143
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowView$pvQm7Ibp9l08TX9BBh0oKl-Se-E;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBarWindowView$pvQm7Ibp9l08TX9BBh0oKl-Se-E;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    .line 741
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$3;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$3;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFakeWindow:Landroid/view/Window;

    .line 1011
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->DEMO_MODE_ENABLE:Z

    const-wide/16 v0, 0x0

    .line 1015
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastVolumnTime:J

    .line 1016
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScreenOnNoTouch:Z

    .line 1017
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    .line 1018
    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    .line 163
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setMotionEventSplittingEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTransparentSrcPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 166
    const-class p2, Lcom/android/systemui/plugins/FalsingManager;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/FalsingManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 167
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 168
    const-class p2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 169
    const-class p2, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/tuner/TunerService;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTunable:Lcom/android/systemui/tuner/TunerService$Tunable;

    const-string v1, "doze_pulse_on_double_tap"

    const-string v2, "doze_tap_gesture"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 173
    new-instance p2, Lcom/meizu/keyguard/PalmRejection;

    invoke-direct {p2, p1, p0}, Lcom/meizu/keyguard/PalmRejection;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/meizu/keyguard/PalmRejection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mSingleTapEnabled:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mSuppressingWakeUpGesture:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDoubleTapEnabled:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)Landroid/view/ActionMode;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;)V
    .registers 1

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cleanupFloatingActionModeViews()V

    return-void
.end method

.method private applyMargins()V
    .registers 7

    .line 226
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_37

    .line 228
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 229
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v3, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    if-eqz v3, :cond_34

    .line 230
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    .line 231
    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;->ignoreRightInset:Z

    if-nez v4, :cond_34

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-ne v4, v5, :cond_29

    iget v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eq v4, v5, :cond_34

    .line 233
    :cond_29
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 234
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 235
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_37
    return-void
.end method

.method private cleanupFloatingActionModeViews()V
    .registers 4

    .line 673
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 674
    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 675
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 677
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    if-eqz v0, :cond_1f

    .line 678
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    if-eqz v2, :cond_1d

    .line 679
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 680
    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 681
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 683
    :cond_1d
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    :cond_1f
    return-void
.end method

.method private createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;
    .registers 6

    .line 646
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_7

    .line 647
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 649
    :cond_7
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->cleanupFloatingActionModeViews()V

    .line 650
    new-instance v0, Lcom/android/internal/widget/FloatingToolbar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFakeWindow:Landroid/view/Window;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/FloatingToolbar;-><init>(Landroid/view/Window;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 651
    new-instance v0, Lcom/android/internal/view/FloatingActionMode;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-direct {v0, v1, p2, p1, v2}, Lcom/android/internal/view/FloatingActionMode;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback2;Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar;)V

    .line 653
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    .line 654
    new-instance p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$2;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Lcom/android/internal/view/FloatingActionMode;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    return-object v0
.end method

.method private setHandledFloatingActionMode(Landroid/view/ActionMode;)V
    .registers 2

    .line 666
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    .line 667
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionMode:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 668
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingActionModeOriginatingView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFloatingToolbarPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 669
    invoke-virtual {p1, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method

.method private startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 4

    .line 689
    new-instance p3, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$ActionModeCallback2Wrapper;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/view/ActionMode$Callback;)V

    .line 690
    invoke-direct {p0, p1, p3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->createFloatingActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback2;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 691
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenu()Landroid/view/Menu;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/view/ActionMode$Callback2;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 692
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setHandledFloatingActionMode(Landroid/view/ActionMode;)V

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return-object p1
.end method


# virtual methods
.method public cancelCurrentTouch()V
    .registers 10

    .line 563
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    if-eqz v0, :cond_1f

    .line 564
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 565
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0x1002

    .line 567
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 568
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 569
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    .line 570
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    :cond_1f
    return-void
.end method

.method public cancelExpandHelper()V
    .registers 1

    .line 556
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 558
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelExpandHelper()V

    :cond_9
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 14

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 326
    :cond_a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_11

    return v1

    .line 329
    :cond_11
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    .line 330
    :goto_1b
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_117

    const/16 v5, 0x3e

    if-eq v3, v5, :cond_10d

    const/16 v5, 0x52

    if-eq v3, v5, :cond_104

    const/16 v0, 0x18

    const/4 v5, 0x5

    const-wide/16 v6, 0x3e8

    if-eq v3, v0, :cond_94

    const/16 v0, 0x19

    if-eq v3, v0, :cond_37

    goto/16 :goto_116

    .line 350
    :cond_37
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->DEMO_MODE_ENABLE:Z

    if-eqz v0, :cond_94

    .line 351
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_94

    .line 352
    iget-wide v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastVolumnTime:J

    add-long/2addr v8, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-ltz v0, :cond_50

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    if-ge v0, v4, :cond_54

    .line 354
    :cond_50
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    .line 355
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    .line 357
    :cond_54
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    .line 358
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    if-lt v0, v4, :cond_94

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    if-ne v0, v5, :cond_94

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcast mDownTime = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mUpTime = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "StatusBarWindowView"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.meizu.action.CLEAR_PASSWORD"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000000

    .line 362
    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 363
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 369
    :cond_94
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_f0

    .line 371
    iget-wide v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastVolumnTime:J

    const-wide/16 v10, 0x12c

    add-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v0, v8, v10

    if-lez v0, :cond_ac

    .line 372
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/meizu/keyguard/PalmRejection;

    invoke-virtual {v0}, Lcom/meizu/keyguard/PalmRejection;->removeView()V

    .line 377
    :cond_ac
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->DEMO_MODE_ENABLE:Z

    if-eqz v0, :cond_ea

    .line 378
    iget-wide v8, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastVolumnTime:J

    add-long/2addr v8, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v0, v8, v6

    if-ltz v0, :cond_ca

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    if-lt v0, v4, :cond_ce

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    if-eqz v0, :cond_ce

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastDownTime:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastDownTime:I

    if-eq v0, v3, :cond_ce

    .line 380
    :cond_ca
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    .line 381
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    .line 383
    :cond_ce
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    if-eq v0, v5, :cond_e0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastDownTime:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastDownTime:I

    if-ne v0, v3, :cond_da

    goto :goto_e0

    .line 388
    :cond_da
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    goto :goto_e6

    .line 384
    :cond_e0
    :goto_e0
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mUpTime:I

    .line 385
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    .line 386
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastDownTime:I

    .line 390
    :goto_e6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDownTime:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastDownTime:I

    .line 392
    :cond_ea
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLastVolumnTime:J

    .line 395
    :cond_f0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_116

    .line 396
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object p0

    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/session/MediaSessionLegacyHelper;->sendVolumeKeyEvent(Landroid/view/KeyEvent;IZ)V

    return v1

    :cond_104
    if-nez v0, :cond_10d

    .line 338
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onMenuPressed()Z

    move-result p0

    return p0

    :cond_10d
    if-nez v0, :cond_116

    .line 342
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onSpacePressed()Z

    move-result p0

    return p0

    :cond_116
    :goto_116
    return v2

    :cond_117
    if-nez v0, :cond_11e

    .line 333
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBackPressed()Z

    :cond_11e
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .line 416
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 417
    :goto_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v1, :cond_13

    move v3, v1

    goto :goto_14

    :cond_13
    move v3, v2

    .line 418
    :goto_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1d

    move v4, v1

    goto :goto_1e

    :cond_1d
    move v4, v2

    :goto_1e
    if-eqz v0, :cond_2b

    .line 422
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->clearWakeupState()V

    .line 428
    :cond_2b
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandingBelowNotch:Z

    if-nez v3, :cond_31

    if-eqz v4, :cond_33

    .line 430
    :cond_31
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandingBelowNotch:Z

    :cond_33
    if-nez v4, :cond_3e

    .line 433
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->shouldIgnoreTouch()Z

    move-result v3

    if-eqz v3, :cond_3e

    return v2

    :cond_3e
    if-eqz v0, :cond_4d

    .line 436
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 437
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PanelView;->startExpandLatencyTracking()V

    :cond_4d
    if-eqz v0, :cond_55

    .line 440
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setTouchActive(Z)V

    .line 441
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    goto :goto_64

    .line 442
    :cond_55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v1, :cond_61

    .line 443
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v5, :cond_64

    .line 444
    :cond_61
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setTouchActive(Z)V

    .line 446
    :cond_64
    :goto_64
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    if-nez v3, :cond_cc

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationRunning:Z

    if-nez v3, :cond_cc

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationPending:Z

    if-eqz v3, :cond_71

    goto :goto_cc

    .line 449
    :cond_71
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v5

    invoke-interface {v3, p1, v4, v5}, Lcom/android/systemui/plugins/FalsingManager;->onTouchEvent(Landroid/view/MotionEvent;II)V

    .line 450
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 451
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    if-eqz v3, :cond_95

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_95

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_95

    return v2

    :cond_95
    if-eqz v0, :cond_9e

    .line 460
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->closeControlsIfOutsideTouch(Landroid/view/MotionEvent;)V

    .line 462
    :cond_9e
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v2

    if-eqz v2, :cond_ad

    .line 463
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mDozeScrimController:Lcom/android/systemui/statusbar/phone/DozeScrimController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->extendPulse()V

    :cond_ad
    if-eqz v0, :cond_bd

    .line 469
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v2, p0, Landroid/widget/FrameLayout;->mBottom:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_bd

    .line 470
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandingBelowNotch:Z

    goto :goto_be

    :cond_bd
    move v1, v6

    :goto_be
    if-eqz v1, :cond_c7

    .line 474
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 477
    :cond_c7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_cc
    :goto_cc
    return v2
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, "  mExpandAnimationPending="

    .line 583
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationPending:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mExpandAnimationRunning="

    .line 584
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationRunning:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mTouchCancelled="

    .line 585
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchCancelled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mTouchActive="

    .line 586
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 7

    .line 179
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getFitsSystemWindows()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_56

    .line 180
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    if-ne v0, v3, :cond_1a

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 181
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v3

    if-eq v0, v3, :cond_19

    goto :goto_1a

    :cond_19
    move v1, v2

    .line 185
    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 187
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    .line 188
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v0

    goto :goto_2f

    :cond_2d
    move v0, v2

    move v3, v0

    .line 191
    :goto_2f
    iget v4, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 192
    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 195
    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-ne v0, v4, :cond_43

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eq v3, v4, :cond_4a

    .line 196
    :cond_43
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    .line 197
    iput v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    .line 198
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->applyMargins()V

    :cond_4a
    if-eqz v1, :cond_4f

    .line 202
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 204
    :cond_4f
    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 205
    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 206
    iput v2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_86

    .line 208
    :cond_56
    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    if-nez v0, :cond_5e

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    if-eqz v0, :cond_65

    .line 209
    :cond_5e
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mRightInset:I

    .line 210
    iput v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLeftInset:I

    .line 211
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->applyMargins()V

    .line 213
    :cond_65
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    if-nez v0, :cond_7f

    .line 214
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v0

    if-nez v0, :cond_7f

    .line 215
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v0

    if-nez v0, :cond_7f

    .line 216
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v0

    if-eqz v0, :cond_7e

    goto :goto_7f

    :cond_7e
    move v1, v2

    :cond_7f
    :goto_7f
    if-eqz v1, :cond_84

    .line 218
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 220
    :cond_84
    iput v2, p1, Landroid/graphics/Rect;->top:I

    :goto_86
    return v2
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 1

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .registers 3

    .line 253
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .registers 4

    .line 248
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView$LayoutParams;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 243
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method public synthetic lambda$new$0$StatusBarWindowView(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 144
    new-instance p2, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x18e932e4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_21

    const v1, 0x3ff919a6

    if-eq v0, v1, :cond_17

    goto :goto_2b

    :cond_17
    const-string v0, "doze_pulse_on_double_tap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const/4 p1, 0x0

    goto :goto_2c

    :cond_21
    const-string v0, "doze_tap_gesture"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    move p1, v2

    goto :goto_2c

    :cond_2b
    :goto_2b
    const/4 p1, -0x1

    :goto_2c
    const/4 v0, -0x2

    if-eqz p1, :cond_39

    if-eq p1, v2, :cond_32

    goto :goto_3f

    .line 150
    :cond_32
    invoke-virtual {p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapGestureEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mSingleTapEnabled:Z

    goto :goto_3f

    .line 147
    :cond_39
    invoke-virtual {p2, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->doubleTapGestureEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDoubleTapEnabled:Z

    :goto_3f
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 313
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 314
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 316
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 317
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/meizu/keyguard/PalmRejection;

    invoke-virtual {p0, v0}, Lcom/meizu/keyguard/PalmRejection;->setActivityStarter(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method public onBiometricAuthModeChanged(ZZ)V
    .registers 3

    .line 288
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz p0, :cond_7

    .line 289
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/LockIcon;->onBiometricAuthModeChanged(ZZ)V

    :cond_7
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 545
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 258
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 259
    sget v0, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 260
    sget v0, Lcom/android/systemui/R$id;->notification_panel:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 261
    sget v0, Lcom/android/systemui/R$id;->brightness_mirror:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    .line 262
    sget v0, Lcom/android/systemui/R$id;->lock_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 483
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_11

    .line 484
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/wakeup/RaiseFlipperController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flyme/systemui/wakeup/RaiseFlipperController;->clearWakeupState()V

    .line 487
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v0

    if-nez v0, :cond_26

    return v1

    .line 494
    :cond_26
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScreenOnNoTouch:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2d

    .line 495
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScreenOnNoTouch:Z

    .line 497
    :cond_2d
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/meizu/keyguard/PalmRejection;

    invoke-virtual {v0}, Lcom/meizu/keyguard/PalmRejection;->addView()Z

    move-result v0

    if-eqz v0, :cond_36

    return v1

    .line 500
    :cond_36
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyExpanded()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    .line 501
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/DragDownHelper;->isDragDownEnabled()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 502
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 503
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    .line 509
    :cond_53
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    return v2
.end method

.method public onScreenTurnedOff()V
    .registers 1

    .line 986
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/meizu/keyguard/PalmRejection;

    invoke-virtual {p0}, Lcom/meizu/keyguard/PalmRejection;->onScreenTurnedOff()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 3

    const/4 v0, 0x1

    .line 990
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScreenOnNoTouch:Z

    .line 992
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/meizu/keyguard/PalmRejection;

    invoke-virtual {v1}, Lcom/meizu/keyguard/PalmRejection;->recordScreenOnTime()V

    .line 993
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v1

    if-ne v1, v0, :cond_15

    .line 995
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/meizu/keyguard/PalmRejection;

    invoke-virtual {v1}, Lcom/meizu/keyguard/PalmRejection;->onScreenTurnedOn()V

    .line 997
    :cond_15
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mScreenOnNoTouch:Z

    return-void
.end method

.method public onScrimVisibilityChanged(I)V
    .registers 2

    .line 593
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz p0, :cond_7

    .line 594
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->onScrimVisibilityChanged(I)V

    :cond_7
    return-void
.end method

.method public onShowingLaunchAffordanceChanged(Z)V
    .registers 2

    .line 602
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz p0, :cond_7

    .line 603
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->onShowingLaunchAffordanceChanged(Z)V

    :cond_7
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isDozing()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    .line 525
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isPulsing()Z

    move-result v0

    xor-int/2addr v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    .line 527
    :goto_13
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DragDownHelper;->isDragDownEnabled()Z

    move-result v3

    if-eqz v3, :cond_1d

    if-eqz v0, :cond_22

    :cond_1d
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/DragDownHelper;->isDraggingDown()Z

    :cond_22
    if-nez v0, :cond_28

    .line 534
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 536
    :cond_28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez v0, :cond_38

    if-eq p1, v2, :cond_33

    const/4 v3, 0x3

    if-ne p1, v3, :cond_38

    .line 538
    :cond_33
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setInteracting(IZ)V

    :cond_38
    return v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .registers 4

    .line 267
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onViewAdded(Landroid/view/View;)V

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/systemui/R$id;->brightness_mirror:I

    if-ne v0, v1, :cond_d

    .line 269
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBrightnessMirror:Landroid/view/View;

    :cond_d
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2

    .line 1002
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mPalmRejection:Lcom/meizu/keyguard/PalmRejection;

    invoke-virtual {p0, p1}, Lcom/meizu/keyguard/PalmRejection;->onStatusBarWindowFocusChanged(Z)V

    return-void
.end method

.method public setBouncerShowingScrimmed(Z)V
    .registers 2

    .line 612
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz p0, :cond_7

    .line 613
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setBouncerShowingScrimmed(Z)V

    :cond_7
    return-void
.end method

.method public setBypassController(Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V
    .registers 2

    .line 608
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-void
.end method

.method setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    return-void
.end method

.method public setExpandAnimationPending(Z)V
    .registers 2

    .line 579
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationPending:Z

    return-void
.end method

.method public setExpandAnimationRunning(Z)V
    .registers 2

    .line 575
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mExpandAnimationRunning:Z

    return-void
.end method

.method public setPulsing(Z)V
    .registers 2

    .line 277
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz p0, :cond_7

    .line 278
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setPulsing(Z)V

    :cond_7
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .registers 8

    .line 298
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->getStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p1

    .line 300
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getExpandHelperCallback()Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object v3

    .line 301
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getDragDownCallback()Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;

    move-result-object v4

    .line 302
    new-instance p1, Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object v0, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/DragDownHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;Lcom/android/systemui/plugins/FalsingManager;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V

    return-void
.end method

.method public setStatusBarView(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .registers 2

    .line 294
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-void
.end method

.method public setTouchActive(Z)V
    .registers 2

    .line 407
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mTouchActive:Z

    return-void
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .registers 5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_8

    .line 639
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->startActionMode(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0

    .line 641
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method suppressWakeUpGesture(Z)V
    .registers 2

    .line 411
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->mSuppressingWakeUpGesture:Z

    return-void
.end method
