.class public Lcom/android/keyguard/KeyguardPatternView;
.super Landroid/widget/LinearLayout;
.source "KeyguardPatternView.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;
.implements Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/LinearLayout;",
        "Lcom/android/keyguard/KeyguardSecurityView;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator<",
        "Lcom/android/internal/widget/LockPatternView$CellState;",
        ">;",
        "Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;"
    }
.end annotation


# instance fields
.field private final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCancelPatternRunnable:Ljava/lang/Runnable;

.field private mContainer:Landroid/view/ViewGroup;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private final mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearYTranslation:I

.field private mEcaView:Landroid/view/View;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastPokeTime:J

.field private final mLockPatternScreenBounds:Landroid/graphics/Rect;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTmpPosition:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 19

    move-object/from16 v0, p0

    .line 119
    invoke-direct/range {p0 .. p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 75
    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mTmpPosition:[I

    .line 76
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 77
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternScreenBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 79
    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    const-wide/16 v1, -0x1b58

    .line 91
    iput-wide v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 96
    new-instance v1, Lcom/android/keyguard/KeyguardPatternView$1;

    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    .line 120
    iget-object v1, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 121
    new-instance v1, Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v3, 0x10c000e

    .line 123
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    const-wide/16 v4, 0xdc

    const/high16 v6, 0x3fc00000  # 1.5f

    const/high16 v7, 0x40000000  # 2.0f

    move-object v2, v1

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 125
    new-instance v1, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v3, 0x10c000f

    .line 127
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v15

    const-wide/16 v11, 0x7d

    const v13, 0x3f99999a  # 1.2f

    const v14, 0x3f19999a  # 0.6f

    move-object v9, v1

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v15}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 129
    new-instance v1, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 131
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    const-wide/16 v6, 0xbb

    const v8, 0x3f99999a  # 1.2f

    const v9, 0x3f19999a  # 0.6f

    move-object v4, v1

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 133
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->disappear_y_translation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearYTranslation:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardPatternView;J)V
    .registers 3

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardPatternView;)V
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardPatternView;Z)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardPatternView;)Ljava/lang/Runnable;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCancelPatternRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardPatternView;)Landroid/os/AsyncTask;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardPatternView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardPatternView;)Landroid/content/Context;
    .registers 1

    .line 49
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private displayDefaultSecurityMessage()V
    .registers 2

    .line 241
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p0, :cond_9

    const-string v0, ""

    .line 242
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method private enableClipping(Z)V
    .registers 3

    .line 518
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 519
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 520
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    return-void
.end method

.method private handleAttemptLockout(J)V
    .registers 10

    .line 374
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 375
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 376
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-double p1, p1

    const-wide v0, 0x408f400000000000L  # 1000.0

    div-double/2addr p1, v0

    .line 377
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-long p1, p1

    .line 379
    new-instance v6, Lcom/android/keyguard/KeyguardPatternView$2;

    const-wide/16 v0, 0x3e8

    mul-long v2, p1, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardPatternView$2;-><init>(Lcom/android/keyguard/KeyguardPatternView;JJ)V

    .line 395
    invoke-virtual {v6}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 25

    move-object v0, p0

    .line 528
    iget-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    if-eqz p7, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v3

    :goto_b
    if-eqz p7, :cond_10

    move/from16 v5, p6

    goto :goto_11

    :cond_10
    move v5, v3

    :goto_11
    if-eqz p7, :cond_15

    move v6, v3

    goto :goto_17

    :cond_15
    move/from16 v6, p6

    :goto_17
    if-eqz p7, :cond_1b

    move v7, v3

    goto :goto_1c

    :cond_1b
    move v7, v2

    :goto_1c
    const/high16 v8, 0x3f800000  # 1.0f

    const/high16 v3, 0x3f800000  # 1.0f

    move-object/from16 v2, p1

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-virtual/range {v1 .. v14}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    if-eqz p9, :cond_43

    .line 535
    iget-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    const/4 v9, 0x0

    move-object v0, v1

    move-object v1, v2

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :cond_43
    return-void
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .registers 10

    .line 49
    check-cast p1, Lcom/android/internal/widget/LockPatternView$CellState;

    invoke-virtual/range {p0 .. p9}, Lcom/android/keyguard/KeyguardPatternView;->createAnimation(Lcom/android/internal/widget/LockPatternView$CellState;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public disallowInterceptTouch(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternScreenBounds:Landroid/graphics/Rect;

    .line 253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 2

    .line 547
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x1040329

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardPatternView(Landroid/view/View;)V
    .registers 2

    .line 173
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    .line 174
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->onCancelClicked()V

    return-void
.end method

.method public synthetic lambda$startDisappearAnimation$1$KeyguardPatternView(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x1

    .line 501
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    if-eqz p1, :cond_9

    .line 503
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method

.method public needsInput()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 181
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 182
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    return-void
.end method

.method public onEmergencyButtonClickedWhenInCall()V
    .registers 1

    .line 187
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->reset()V

    return-void
.end method

.method protected onFinishInflate()V
    .registers 4

    .line 149
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_e

    .line 151
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :cond_e
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 153
    sget v0, Lcom/android/systemui/R$id;->lockPatternView:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setSaveEnabled(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    new-instance v1, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardPatternView$UnlockPatternListener;-><init>(Lcom/android/keyguard/KeyguardPatternView;Lcom/android/keyguard/KeyguardPatternView$1;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 156
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 157
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 156
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 160
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 162
    sget v0, Lcom/android/systemui/R$id;->keyguard_selector_fade_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 163
    sget v0, Lcom/android/systemui/R$id;->container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mContainer:Landroid/view/ViewGroup;

    .line 165
    sget v0, Lcom/android/systemui/R$id;->emergency_call_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    if-eqz v0, :cond_66

    .line 167
    invoke-virtual {v0, p0}, Lcom/android/keyguard/EmergencyButton;->setCallback(Lcom/android/keyguard/EmergencyButton$EmergencyButtonCallback;)V

    .line 170
    :cond_66
    sget v0, Lcom/android/systemui/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 172
    new-instance v1, Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$N-2kmt4uZ3ZvQBB4SmVDuZJ_Wqw;

    invoke-direct {v1, p0}, Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$N-2kmt4uZ3ZvQBB4SmVDuZJ_Wqw;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_76
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 7

    .line 209
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 210
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPatternView;->mTmpPosition:[I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternView;->getLocationOnScreen([I)V

    .line 211
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternScreenBounds:Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardPatternView;->mTmpPosition:[I

    const/4 p3, 0x0

    aget p4, p2, p3

    add-int/lit8 p4, p4, -0x28

    const/4 p5, 0x1

    aget v0, p2, p5

    add-int/lit8 v0, v0, -0x28

    aget p2, p2, p3

    iget-object p3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 213
    invoke-virtual {p3}, Lcom/android/internal/widget/LockPatternView;->getWidth()I

    move-result p3

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x28

    iget-object p3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTmpPosition:[I

    aget p3, p3, p5

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getHeight()I

    move-result p0

    add-int/2addr p3, p0

    add-int/lit8 p3, p3, 0x28

    .line 211
    invoke-virtual {p1, p4, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onPause()V
    .registers 4

    .line 405
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 406
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 407
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 409
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_14

    const/4 v2, 0x0

    .line 410
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 411
    iput-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 413
    :cond_14
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    return-void
.end method

.method public onResume(I)V
    .registers 2

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7

    .line 192
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 195
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    sub-long/2addr v1, v3

    if-eqz v0, :cond_19

    const-wide/16 v3, 0x1af4

    cmp-long v1, v1, v3

    if-lez v1, :cond_19

    .line 197
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 199
    :cond_19
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 200
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, v3}, Landroid/widget/LinearLayout;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 201
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v3, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 202
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_3b

    if-eqz v0, :cond_3c

    :cond_3b
    const/4 v2, 0x1

    .line 203
    :cond_3c
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    iget v0, p0, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    int-to-float v0, v0

    iget p0, p0, Landroid/graphics/Rect;->top:I

    neg-int p0, p0

    int-to-float p0, p0

    invoke-virtual {p1, v0, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v2
.end method

.method public reset()V
    .registers 5

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 221
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    .line 220
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 222
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 223
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 226
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_25

    return-void

    .line 231
    :cond_25
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 232
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_39

    .line 234
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V

    goto :goto_3c

    .line 236
    :cond_39
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V

    :goto_3c
    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2

    .line 139
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .registers 4

    if-eqz p2, :cond_7

    .line 451
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardMessageArea;->setNextMessageColor(Landroid/content/res/ColorStateList;)V

    .line 453
    :cond_7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showPromptReason(I)V
    .registers 3

    if-eqz p1, :cond_35

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_26

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x4

    if-eq p1, v0, :cond_16

    .line 443
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p1, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pattern:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_35

    .line 438
    :cond_16
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p1, Lcom/android/systemui/R$string;->kg_prompt_reason_user_request:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_35

    .line 435
    :cond_1e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p1, Lcom/android/systemui/R$string;->kg_prompt_reason_device_admin:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_35

    .line 432
    :cond_26
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p1, Lcom/android/systemui/R$string;->kg_prompt_reason_timeout_pattern:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    goto :goto_35

    .line 429
    :cond_2e
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget p1, Lcom/android/systemui/R$string;->kg_prompt_reason_restart_pattern:I

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    :cond_35
    :goto_35
    return-void
.end method

.method public startAppearAnimation()V
    .registers 12

    const/4 v0, 0x0

    .line 458
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    const/high16 v0, 0x3f800000  # 1.0f

    .line 459
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 460
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 461
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 462
    invoke-virtual {v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v7

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x0

    move-object v1, p0

    .line 461
    invoke-static/range {v1 .. v7}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    .line 463
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 464
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardPatternView$3;-><init>(Lcom/android/keyguard/KeyguardPatternView;)V

    .line 463
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 472
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    .line 473
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xdc

    .line 475
    invoke-virtual {v1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v7

    const/4 v8, 0x1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 477
    invoke-virtual {p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v9

    const/4 v10, 0x0

    .line 473
    invoke-virtual/range {v1 .. v10}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :cond_54
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .registers 13

    .line 484
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v0

    if-eqz v0, :cond_b

    const/high16 v0, 0x3fc00000  # 1.5f

    goto :goto_d

    :cond_b
    const/high16 v0, 0x3f800000  # 1.0f

    .line 487
    :goto_d
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    const/4 v1, 0x0

    .line 488
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardPatternView;->enableClipping(Z)V

    const/4 v1, 0x0

    .line 489
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    const-wide/16 v3, 0x0

    const/high16 v1, 0x43960000  # 300.0f

    mul-float/2addr v1, v0

    float-to-long v5, v1

    .line 490
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 492
    invoke-virtual {v1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result v1

    neg-float v7, v1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 493
    invoke-virtual {v1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v8

    move-object v2, p0

    .line 490
    invoke-static/range {v2 .. v8}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    .line 496
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 497
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    goto :goto_3e

    .line 498
    :cond_3c
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 499
    :goto_3e
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v2

    new-instance v3, Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$i51b4f44m8j5rvWUlLMM4eRNauI;

    invoke-direct {v3, p0, p1}, Lcom/android/keyguard/-$$Lambda$KeyguardPatternView$i51b4f44m8j5rvWUlLMM4eRNauI;-><init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 506
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_76

    .line 507
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    const-wide/16 v3, 0x0

    const/high16 p1, 0x43480000  # 200.0f

    mul-float/2addr v0, p1

    float-to-long v5, v0

    .line 509
    invoke-virtual {v1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getStartTranslation()F

    move-result p1

    neg-float p1, p1

    const/high16 v0, 0x40400000  # 3.0f

    mul-float v7, p1, v0

    const/4 v8, 0x0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 511
    invoke-virtual {p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v9

    const/4 v10, 0x0

    .line 507
    invoke-virtual/range {v1 .. v10}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    :cond_76
    const/4 p0, 0x1

    return p0
.end method
