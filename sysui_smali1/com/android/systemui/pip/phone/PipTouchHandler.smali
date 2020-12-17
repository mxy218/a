.class public Lcom/android/systemui/pip/phone/PipTouchHandler;
.super Ljava/lang/Object;
.source "PipTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;
    }
.end annotation


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActivityManager:Landroid/app/IActivityManager;

.field private final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private final mContext:Landroid/content/Context;

.field private mDefaultMovementGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

.field private mDeferResizeToNormalBoundsUntilRotation:I

.field private final mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

.field private mDisplayRotation:I

.field private final mEnableDimissDragToEdge:Z

.field private mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedMovementBounds:Landroid/graphics/Rect;

.field private mExpandedShortestEdgeSize:I

.field private final mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private final mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

.field private mHandler:Landroid/os/Handler;

.field private mImeHeight:I

.field private mImeOffset:I

.field private mInsetBounds:Landroid/graphics/Rect;

.field private mIsImeShowing:Z

.field private mIsMinimized:Z

.field private mIsShelfShowing:Z

.field private final mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private final mMenuListener:Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

.field private mMenuState:I

.field private final mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

.field private mMovementBounds:Landroid/graphics/Rect;

.field private mMovementBoundsExtraOffsets:I

.field private mMovementWithinDismiss:Z

.field private mMovementWithinMinimize:Z

.field private mNormalBounds:Landroid/graphics/Rect;

.field private mNormalMovementBounds:Landroid/graphics/Rect;

.field private mPinnedStackController:Landroid/view/IPinnedStackController;

.field private mSavedSnapFraction:F

.field private mSendingHoverAccessibilityEvents:Z

.field private mShelfHeight:I

.field private mShowDismissAffordance:Ljava/lang/Runnable;

.field private mShowPipMenuOnAnimationEnd:Z

.field private final mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

.field private mUpdateScrimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/app/IActivityTaskManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/systemui/shared/system/InputConsumerController;)V
    .registers 14

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;Lcom/android/systemui/pip/phone/PipTouchHandler$1;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuListener:Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    .line 87
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 90
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    .line 92
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    .line 93
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 94
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    .line 95
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    const/4 v1, -0x1

    .line 100
    iput v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    .line 103
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    .line 104
    new-instance v1, Lcom/android/systemui/pip/phone/PipTouchHandler$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$1;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowDismissAffordance:Ljava/lang/Runnable;

    .line 112
    new-instance v1, Lcom/android/systemui/pip/phone/PipTouchHandler$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$2;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mUpdateScrimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 121
    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    const/high16 v1, -0x40800000  # -1.0f

    .line 129
    iput v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 141
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    .line 584
    new-instance v1, Lcom/android/systemui/pip/phone/PipTouchHandler$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/PipTouchHandler$3;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDefaultMovementGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

    .line 184
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    .line 185
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mActivityManager:Landroid/app/IActivityManager;

    .line 186
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    .line 187
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 188
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 189
    iput-object p4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 190
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuListener:Lcom/android/systemui/pip/phone/PipTouchHandler$PipMenuListener;

    invoke-virtual {p2, p3}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->addListener(Lcom/android/systemui/pip/phone/PipMenuActivityController$Listener;)V

    .line 191
    new-instance p2, Lcom/android/systemui/pip/phone/PipDismissViewController;

    invoke-direct {p2, p1}, Lcom/android/systemui/pip/phone/PipDismissViewController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

    .line 192
    new-instance p2, Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Lcom/android/internal/policy/PipSnapAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    .line 193
    new-instance p2, Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const/high16 p3, 0x40200000  # 2.5f

    invoke-direct {p2, p1, p3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;-><init>(Landroid/content/Context;F)V

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    const/4 p2, 0x1

    new-array p2, p2, [Lcom/android/systemui/pip/phone/PipTouchGesture;

    .line 194
    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDefaultMovementGesture:Lcom/android/systemui/pip/phone/PipTouchGesture;

    aput-object p3, p2, v0

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    .line 197
    new-instance p2, Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    move-object v1, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/pip/phone/PipMotionHelper;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/app/IActivityTaskManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/internal/policy/PipSnapAlgorithm;Lcom/android/systemui/statusbar/FlingAnimationUtils;)V

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    .line 199
    new-instance p2, Lcom/android/systemui/pip/phone/PipTouchState;

    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mViewConfig:Landroid/view/ViewConfiguration;

    iget-object p4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$Uq5M9Md512Sfgd22VAeFpot25E0;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$Uq5M9Md512Sfgd22VAeFpot25E0;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    invoke-direct {p2, p3, p4, v0}, Lcom/android/systemui/pip/phone/PipTouchState;-><init>(Landroid/view/ViewConfiguration;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    .line 203
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 204
    sget p2, Lcom/android/systemui/R$dimen;->pip_expanded_shortest_edge_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    .line 206
    sget p2, Lcom/android/systemui/R$dimen;->pip_ime_offset:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeOffset:I

    .line 208
    sget p2, Lcom/android/systemui/R$bool;->config_pipEnableDismissDragToEdge:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mEnableDimissDragToEdge:Z

    .line 211
    new-instance p1, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$A78OVgVs8H_2SG6WUxzMSclOdX0;

    invoke-direct {p1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$A78OVgVs8H_2SG6WUxzMSclOdX0;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    invoke-virtual {p5, p1}, Lcom/android/systemui/shared/system/InputConsumerController;->setInputListener(Lcom/android/systemui/shared/system/InputConsumerController$InputListener;)V

    .line 212
    new-instance p1, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$NVpciZTELe-GnxXPZeY5rYMmqJQ;

    invoke-direct {p1, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$NVpciZTELe-GnxXPZeY5rYMmqJQ;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    invoke-virtual {p5, p1}, Lcom/android/systemui/shared/system/InputConsumerController;->setRegistrationListener(Lcom/android/systemui/shared/system/InputConsumerController$RegistrationListener;)V

    .line 213
    invoke-virtual {p5}, Lcom/android/systemui/shared/system/InputConsumerController;->isRegistered()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mEnableDimissDragToEdge:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/app/IActivityManager;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mActivityManager:Landroid/app/IActivityManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinMinimize:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinMinimize:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)Z
    .registers 2

    .line 60
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementWithinDismiss:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/pip/phone/PipTouchHandler;)I
    .registers 1

    .line 60
    iget p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Ljava/lang/Runnable;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowDismissAffordance:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/os/Handler;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/pip/phone/PipTouchHandler;F)F
    .registers 2

    .line 60
    iput p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTmpBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipDismissViewController;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUpDismissTarget()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/statusbar/FlingAnimationUtils;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mUpdateScrimListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipTouchState;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateDismissFraction()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/pip/phone/PipTouchHandler;IZ)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setMenuState(IZ)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/pip/phone/PipTouchHandler;)Z
    .registers 1

    .line 60
    iget-boolean p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/pip/phone/PipTouchHandler;)Lcom/android/systemui/pip/phone/PipMotionHelper;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V
    .registers 2

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setMinimizedStateInternal(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/graphics/Rect;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/pip/phone/PipTouchHandler;)Landroid/content/Context;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private cleanUp()V
    .registers 2

    .line 812
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 813
    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setMinimizedStateInternal(Z)V

    .line 815
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUpDismissTarget()V

    return-void
.end method

.method private cleanUpDismissTarget()V
    .registers 3

    .line 804
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowDismissAffordance:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 805
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDismissViewController:Lcom/android/systemui/pip/phone/PipDismissViewController;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipDismissViewController;->destroyDismissTarget()V

    return-void
.end method

.method private handleTouchEvent(Landroid/view/InputEvent;)Z
    .registers 11

    .line 354
    instance-of v0, p1, Landroid/view/MotionEvent;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 358
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    if-nez v0, :cond_b

    return v1

    .line 361
    :cond_b
    check-cast p1, Landroid/view/MotionEvent;

    .line 364
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 366
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    const/4 v2, 0x0

    if-eqz v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    .line 368
    :goto_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_cf

    if-eq v3, v1, :cond_9d

    const/4 v5, 0x2

    if-eq v3, v5, :cond_82

    if-eq v3, v4, :cond_b6

    const/4 v5, 0x7

    const/4 v6, -0x3

    if-eq v3, v5, :cond_5c

    const/16 v5, 0x9

    if-eq v3, v5, :cond_5c

    const/16 v5, 0xa

    if-eq v3, v5, :cond_36

    goto/16 :goto_e3

    .line 420
    :cond_36
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_e3

    iget-boolean v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    if-eqz v3, :cond_e3

    const/16 v3, 0x100

    .line 421
    invoke-static {v3}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    .line 423
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityEvent;->setImportantForAccessibility(Z)V

    .line 424
    sget-wide v7, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    invoke-virtual {v3, v7, v8}, Landroid/view/accessibility/AccessibilityEvent;->setSourceNodeId(J)V

    .line 425
    invoke-virtual {v3, v6}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 427
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 428
    iput-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    goto/16 :goto_e3

    .line 407
    :cond_5c
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_e3

    iget-boolean v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    if-nez v2, :cond_e3

    const/16 v2, 0x80

    .line 408
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 410
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityEvent;->setImportantForAccessibility(Z)V

    .line 411
    sget-wide v7, Landroid/view/accessibility/AccessibilityNodeInfo;->ROOT_NODE_ID:J

    invoke-virtual {v2, v7, v8}, Landroid/view/accessibility/AccessibilityEvent;->setSourceNodeId(J)V

    .line 412
    invoke-virtual {v2, v6}, Landroid/view/accessibility/AccessibilityEvent;->setWindowId(I)V

    .line 414
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 415
    iput-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSendingHoverAccessibilityEvents:Z

    goto/16 :goto_e3

    .line 378
    :cond_82
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    array-length v3, v0

    :goto_85
    if-ge v2, v3, :cond_95

    aget-object v5, v0, v2

    .line 379
    iget-object v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v5, v6}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onMove(Lcom/android/systemui/pip/phone/PipTouchState;)Z

    move-result v5

    if-eqz v5, :cond_92

    goto :goto_95

    :cond_92
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    .line 384
    :cond_95
    :goto_95
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result v0

    xor-int/2addr v0, v1

    goto :goto_e3

    .line 390
    :cond_9d
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds(I)V

    .line 392
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    array-length v3, v0

    move v5, v2

    :goto_a6
    if-ge v5, v3, :cond_b6

    aget-object v6, v0, v5

    .line 393
    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v6, v7}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onUp(Lcom/android/systemui/pip/phone/PipTouchState;)Z

    move-result v6

    if-eqz v6, :cond_b3

    goto :goto_b6

    :cond_b3
    add-int/lit8 v5, v5, 0x1

    goto :goto_a6

    .line 401
    :cond_b6
    :goto_b6
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->startedDragging()Z

    move-result v0

    if-nez v0, :cond_c8

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isDragging()Z

    move-result v0

    if-nez v0, :cond_c8

    move v0, v1

    goto :goto_c9

    :cond_c8
    move v0, v2

    .line 402
    :goto_c9
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v2}, Lcom/android/systemui/pip/phone/PipTouchState;->reset()V

    goto :goto_e3

    .line 370
    :cond_cf
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 372
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mGestures:[Lcom/android/systemui/pip/phone/PipTouchGesture;

    array-length v5, v3

    :goto_d7
    if-ge v2, v5, :cond_e3

    aget-object v6, v3, v2

    .line 373
    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v6, v7}, Lcom/android/systemui/pip/phone/PipTouchGesture;->onDown(Lcom/android/systemui/pip/phone/PipTouchState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_d7

    :cond_e3
    :goto_e3
    if-eqz v0, :cond_fe

    .line 436
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    .line 438
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->startedDragging()Z

    move-result v0

    if-eqz v0, :cond_f9

    .line 439
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 440
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->pokeMenu()V

    .line 443
    :cond_f9
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->handleTouchEvent(Landroid/view/MotionEvent;)V

    :cond_fe
    return v1
.end method

.method public static synthetic lambda$1nY3kLe318Fm3UtIAbDmSK80h7w(Lcom/android/systemui/pip/phone/PipTouchHandler;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onAccessibilityShowMenu()V

    return-void
.end method

.method public static synthetic lambda$A78OVgVs8H_2SG6WUxzMSclOdX0(Lcom/android/systemui/pip/phone/PipTouchHandler;Landroid/view/InputEvent;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->handleTouchEvent(Landroid/view/InputEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$NVpciZTELe-GnxXPZeY5rYMmqJQ(Lcom/android/systemui/pip/phone/PipTouchHandler;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->onRegistrationChanged(Z)V

    return-void
.end method

.method private onAccessibilityShowMenu()V
    .registers 7

    .line 348
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 349
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v5

    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 348
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method private onRegistrationChanged(Z)V
    .registers 7

    .line 336
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_13

    .line 337
    new-instance v1, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    new-instance v3, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$1nY3kLe318Fm3UtIAbDmSK80h7w;

    invoke-direct {v3, p0}, Lcom/android/systemui/pip/phone/-$$Lambda$PipTouchHandler$1nY3kLe318Fm3UtIAbDmSK80h7w;-><init>(Lcom/android/systemui/pip/phone/PipTouchHandler;)V

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;Lcom/android/systemui/pip/phone/PipAccessibilityInteractionConnection$AccessibilityCallbacks;Landroid/os/Handler;)V

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 336
    :goto_14
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->setPictureInPictureActionReplacingConnection(Landroid/view/accessibility/IAccessibilityInteractionConnection;)V

    if-nez p1, :cond_24

    .line 340
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {p1}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result p1

    if-eqz p1, :cond_24

    .line 343
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUpDismissTarget()V

    :cond_24
    return-void
.end method

.method private setMenuState(IZ)V
    .registers 14

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1e

    .line 521
    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    if-eq v2, v1, :cond_1e

    .line 525
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_62

    .line 527
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v2, v3, v4}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToExpandedState(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p2

    iput p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    goto :goto_62

    :cond_1e
    if-nez p1, :cond_62

    .line 530
    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    if-ne v2, v1, :cond_62

    const/high16 v2, -0x40800000  # -1.0f

    if-eqz p2, :cond_5d

    .line 534
    iget p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    const/4 v3, -0x1

    if-ne p2, v3, :cond_41

    .line 544
    :try_start_2d
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    invoke-interface {p2}, Landroid/view/IPinnedStackController;->getDisplayRotation()I

    move-result p2

    .line 545
    iget v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDisplayRotation:I

    if-eq v4, p2, :cond_41

    .line 546
    iput p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_39} :catch_3a

    goto :goto_41

    :catch_3a
    const-string p2, "PipTouchHandler"

    const-string v4, "Could not get display rotation from controller"

    .line 549
    invoke-static {p2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_41
    :goto_41
    iget p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    if-ne p2, v3, :cond_62

    .line 554
    new-instance v5, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-direct {v5, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 555
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget-boolean v9, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 558
    iput v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    goto :goto_62

    .line 563
    :cond_5d
    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->setTouchEnabled(Z)V

    .line 564
    iput v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    .line 567
    :cond_62
    :goto_62
    iput p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    .line 568
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds(I)V

    const/4 p2, 0x1

    if-eq p1, p2, :cond_73

    .line 570
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    if-ne p1, v1, :cond_6f

    goto :goto_70

    :cond_6f
    move p2, v0

    :goto_70
    invoke-static {p0, p2}, Lcom/android/internal/os/logging/MetricsLoggerWrapper;->logPictureInPictureMenuVisible(Landroid/content/Context;Z)V

    :cond_73
    return-void
.end method

.method private setMinimizedStateInternal(Z)V
    .registers 2

    return-void
.end method

.method private updateDismissFraction()V
    .registers 6

    .line 456
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-nez v0, :cond_3e

    .line 457
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 458
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    .line 460
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v2

    cmpl-float v3, v3, v1

    const/4 v4, 0x0

    if-lez v3, :cond_2a

    int-to-float v2, v2

    sub-float/2addr v2, v1

    .line 462
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_2b

    :cond_2a
    move v0, v4

    .line 464
    :goto_2b
    invoke-static {v0, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->isMenuActivityVisible()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 466
    :cond_39
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->setDismissFraction(F)V

    :cond_3e
    return-void
.end method

.method private updateMovementBounds(I)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    move p1, v0

    :goto_7
    if-eqz p1, :cond_c

    .line 788
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    goto :goto_e

    .line 789
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    :goto_e
    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 791
    :try_start_10
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    if-eqz v1, :cond_26

    .line 792
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    if-eqz p1, :cond_1a

    .line 793
    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    .line 792
    :cond_1a
    invoke-interface {v1, v0}, Landroid/view/IPinnedStackController;->setMinEdgeSize(I)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1d} :catch_1e

    goto :goto_26

    :catch_1e
    move-exception p0

    const-string p1, "PipTouchHandler"

    const-string v0, "Could not set minimized state"

    .line 796
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_26
    :goto_26
    return-void
.end method

.method private willResizeMenu()Z
    .registers 3

    .line 822
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    .line 823
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eq v0, p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "PipTouchHandler"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMovementBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mNormalBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mNormalMovementBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mExpandedBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mExpandedMovementBounds="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mMenuState="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 835
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsMinimized="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsImeShowing="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mImeHeight="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mIsShelfShowing="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsShelfShowing:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mShelfHeight="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShelfHeight:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mSavedSnapFraction="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mEnableDragToEdgeDismiss="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mEnableDimissDragToEdge:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mEnableMinimize="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 844
    iget-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {p2, p1, v0}, Lcom/android/systemui/pip/phone/PipTouchState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 845
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getMotionHelper()Lcom/android/systemui/pip/phone/PipMotionHelper;
    .registers 1

    .line 578
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    return-object p0
.end method

.method public synthetic lambda$new$0$PipTouchHandler()V
    .registers 7

    .line 200
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    .line 201
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v5

    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 200
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    return-void
.end method

.method public onActivityPinned()V
    .registers 2

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUp()V

    const/4 v0, 0x1

    .line 230
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    return-void
.end method

.method public onActivityUnpinned(Landroid/content/ComponentName;)V
    .registers 2

    if-nez p1, :cond_5

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->cleanUp()V

    :cond_5
    return-void
.end method

.method public onConfigurationChanged()V
    .registers 2

    .line 252
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->onConfigurationChanged()V

    .line 253
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    return-void
.end method

.method public onImeVisibilityChanged(ZI)V
    .registers 3

    .line 257
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    .line 258
    iput p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    return-void
.end method

.method public onMovementBoundsChanged(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZI)V
    .registers 15

    .line 268
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeHeight:I

    goto :goto_9

    :cond_8
    move v0, v1

    .line 271
    :goto_9
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    .line 272
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 273
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, p1, v2, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 277
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 278
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 279
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 280
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget v6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedShortestEdgeSize:I

    int-to-float v6, v6

    iget v7, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v5, v3, v6, v7, v4}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSizeForAspectRatio(FFII)Landroid/util/Size;

    move-result-object v3

    .line 282
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v4, v1, v1, v5, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 283
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 284
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5, p1, v3, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 290
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v0, :cond_5d

    iget v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mImeOffset:I

    goto :goto_5e

    :cond_5d
    move v0, v1

    .line 291
    :goto_5e
    iget-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-nez v4, :cond_68

    iget-boolean v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsShelfShowing:Z

    if-eqz v4, :cond_68

    iget v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShelfHeight:I

    .line 289
    :cond_68
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-nez p4, :cond_70

    if-eqz p5, :cond_c7

    .line 296
    :cond_70
    iget-object p4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {p4}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result p4

    if-eqz p4, :cond_79

    goto :goto_c7

    :cond_79
    const/high16 p4, 0x3f800000  # 1.0f

    .line 300
    iget-object p5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    .line 301
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    invoke-virtual {p5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p5

    iget p5, p5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p5, p4

    .line 302
    iget p4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    const/4 v1, 0x2

    if-ne p4, v1, :cond_93

    .line 303
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto :goto_98

    .line 304
    :cond_93
    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 305
    :goto_98
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBoundsExtraOffsets:I

    sub-int/2addr v1, v4

    .line 306
    iget v4, p4, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/graphics/Rect;->top:I

    if-ge v4, p4, :cond_a6

    goto :goto_a7

    :cond_a6
    sub-int/2addr v4, v0

    .line 309
    :goto_a7
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result p4

    int-to-float p4, p4

    sub-float/2addr p4, p5

    iget v5, p3, Landroid/graphics/Rect;->top:I

    int-to-float v6, v5

    cmpg-float p4, p4, v6

    if-gtz p4, :cond_c7

    int-to-float p4, v5

    .line 310
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p5

    cmpg-float p4, p4, v1

    if-gtz p4, :cond_c7

    .line 311
    iget-object p4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget p5, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, p5

    invoke-virtual {p4, p3, v4}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToOffset(Landroid/graphics/Rect;I)V

    .line 318
    :cond_c7
    :goto_c7
    iput-object v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    .line 319
    iput-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mExpandedMovementBounds:Landroid/graphics/Rect;

    .line 320
    iput p6, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDisplayRotation:I

    .line 321
    iget-object p3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {p3, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 322
    iget p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuState:I

    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchHandler;->updateMovementBounds(I)V

    .line 323
    iput v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBoundsExtraOffsets:I

    .line 326
    iget p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    if-ne p1, p6, :cond_f3

    .line 327
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    iget v2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mNormalMovementBounds:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    iget-boolean v5, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsMinimized:Z

    const/4 v6, 0x1

    move-object v1, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/pip/phone/PipMotionHelper;->animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    const/high16 p1, -0x40800000  # -1.0f

    .line 330
    iput p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    const/4 p1, -0x1

    .line 331
    iput p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    :cond_f3
    return-void
.end method

.method public onPinnedStackAnimationEnded()V
    .registers 8

    .line 242
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    .line 244
    iget-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    if-eqz v0, :cond_1c

    .line 245
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    const/4 v0, 0x0

    .line 247
    iput-boolean v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShowPipMenuOnAnimationEnd:Z

    :cond_1c
    return-void
.end method

.method public onShelfVisibilityChanged(ZI)V
    .registers 3

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mIsShelfShowing:Z

    .line 263
    iput p2, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mShelfHeight:I

    return-void
.end method

.method setMinimizedState(ZZ)V
    .registers 3

    return-void
.end method

.method setPinnedStackController(Landroid/view/IPinnedStackController;)V
    .registers 2

    .line 475
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mPinnedStackController:Landroid/view/IPinnedStackController;

    return-void
.end method

.method public setTouchEnabled(Z)V
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipTouchState;->setAllowTouches(Z)V

    return-void
.end method

.method public showPictureInPictureMenu()V
    .registers 8

    .line 222
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/systemui/pip/phone/PipTouchState;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipTouchState;->isUserInteracting()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 223
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/systemui/pip/phone/PipMotionHelper;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipTouchHandler;->mMovementBounds:Landroid/graphics/Rect;

    const/4 v5, 0x0

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/pip/phone/PipTouchHandler;->willResizeMenu()Z

    move-result v6

    .line 223
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->showMenu(ILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    :cond_1b
    return-void
.end method
