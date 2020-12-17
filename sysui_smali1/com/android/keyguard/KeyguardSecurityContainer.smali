.class public Lcom/android/keyguard/KeyguardSecurityContainer;
.super Landroid/widget/FrameLayout;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;,
        Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mCurrentSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

.field private mFingerVerifyResult:I

.field private mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

.field private mIsDragging:Z

.field private mLastTouchY:F

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private mSaveMargin:I

.field private mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

.field private mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field private mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field private final mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mStartTouchY:F

.field private mSwipeUpToRetry:Z

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 98
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 102
    const-class p2, Lcom/android/internal/logging/MetricsLogger;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/internal/logging/MetricsLogger;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/high16 p2, -0x40800000  # -1.0f

    .line 103
    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLastTouchY:F

    const/4 p3, -0x1

    .line 104
    iput p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    .line 106
    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStartTouchY:F

    .line 667
    new-instance p2, Lcom/android/keyguard/KeyguardSecurityContainer$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 728
    new-instance p2, Lcom/android/keyguard/KeyguardSecurityContainer$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 956
    iput p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFingerVerifyResult:I

    const/4 p2, 0x0

    .line 958
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    .line 134
    new-instance p2, Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-direct {p2, p1}, Lcom/android/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 135
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 136
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 137
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p3, Landroidx/dynamicanimation/animation/DynamicAnimation;->Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {p2, p0, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSpringAnimation:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 138
    new-instance p2, Lcom/android/systemui/util/InjectionInflationController;

    .line 139
    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/systemui/SystemUIFactory;->getRootComponent()Lcom/android/systemui/SystemUIRootComponent;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/systemui/util/InjectionInflationController;-><init>(Lcom/android/systemui/SystemUIRootComponent;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    .line 140
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 141
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 143
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->save_tips_easy_margin_to_top:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSaveMargin:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeConfirmDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;
    .registers 1

    .line 58
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSecurityContainer;II)V
    .registers 3

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer;->reportFailedUnlockAttempt(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/internal/logging/MetricsLogger;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/keyguard/KeyguardSecurityContainer;I)I
    .registers 2

    .line 58
    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFingerVerifyResult:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;
    .registers 1

    .line 58
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSecurityContainer;)Landroid/content/Context;
    .registers 1

    .line 58
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private canIgnoreBouncerForSmartLock(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .registers 2

    .line 942
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSmartLock()Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 943
    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p1

    if-nez p1, :cond_26

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 944
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFindPhoneLocked()Z

    move-result p0

    if-nez p0, :cond_26

    const/4 p0, 0x1

    goto :goto_27

    :cond_26
    const/4 p0, 0x0

    :goto_27
    return p0
.end method

.method private getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;
    .registers 7

    .line 297
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v0

    .line 299
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_26

    .line 301
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v4, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    if-ne v4, v0, :cond_23

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    goto :goto_27

    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_26
    const/4 v0, 0x0

    .line 306
    :goto_27
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result p1

    if-nez v0, :cond_65

    if-eqz p1, :cond_65

    .line 308
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inflating id = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeyguardSecurityView"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 311
    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 312
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;)V

    .line 313
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateSecurityView(Landroid/view/View;)V

    .line 314
    move-object v0, p1

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityView;

    .line 315
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->reset()V

    :cond_65
    return-object v0
.end method

.method private getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .registers 2

    .line 747
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityContainer$4;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2c

    const/4 p1, 0x2

    if-eq p0, p1, :cond_29

    const/4 p1, 0x3

    if-eq p0, p1, :cond_26

    const/4 p1, 0x6

    if-eq p0, p1, :cond_23

    const/4 p1, 0x7

    if-eq p0, p1, :cond_20

    const/16 p1, 0x8

    if-eq p0, p1, :cond_1d

    const/4 p0, 0x0

    return p0

    .line 759
    :cond_1d
    sget p0, Lcom/android/systemui/R$id;->keyguard_find_phone_view:I

    return p0

    .line 757
    :cond_20
    sget p0, Lcom/android/systemui/R$id;->mz_keyguard_sim_puk_view:I

    return p0

    .line 756
    :cond_23
    sget p0, Lcom/android/systemui/R$id;->mz_keyguard_sim_pin_view:I

    return p0

    .line 755
    :cond_26
    sget p0, Lcom/android/systemui/R$id;->mz_keyguard_password_view:I

    return p0

    .line 754
    :cond_29
    sget p0, Lcom/android/systemui/R$id;->mz_keyguard_pin_view:I

    return p0

    .line 748
    :cond_2c
    sget p0, Lcom/android/systemui/R$id;->keyguard_pattern_view:I

    return p0
.end method

.method private reportFailedUnlockAttempt(II)V
    .registers 14

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reportFailedPatternAttempt: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardSecurityView"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    .line 442
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    .line 444
    invoke-virtual {v4, v5, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v5

    if-lez v5, :cond_33

    sub-int/2addr v5, v0

    goto :goto_36

    :cond_33
    const v5, 0x7fffffff

    .line 451
    :goto_36
    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v7, 0x0

    if-ne v2, v6, :cond_3d

    move v6, v1

    goto :goto_3e

    :cond_3d
    move v6, v7

    .line 452
    :goto_3e
    sget-object v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v8, :cond_44

    move v8, v1

    goto :goto_45

    :cond_44
    move v8, v7

    .line 453
    :goto_45
    sget-object v9, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v9, :cond_4b

    move v2, v1

    goto :goto_4c

    :cond_4b
    move v2, v7

    .line 454
    :goto_4c
    iget-object v9, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/systemui/R$integer;->config_max_unlock_countdown_times:I

    .line 455
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    if-lez v9, :cond_61

    if-nez v6, :cond_60

    if-nez v8, :cond_60

    if-eqz v2, :cond_61

    :cond_60
    move v7, v1

    :cond_61
    if-eqz v7, :cond_69

    if-lt v0, v9, :cond_69

    .line 460
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showCountdownWipeDialog(I)V

    goto :goto_9d

    :cond_69
    const/4 v2, 0x5

    if-ge v5, v2, :cond_9d

    .line 468
    invoke-virtual {v4, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v2

    if-ne v2, p1, :cond_76

    if-eqz v2, :cond_7b

    const/4 v1, 0x3

    goto :goto_7b

    :cond_76
    const/16 v4, -0x2710

    if-eq v2, v4, :cond_7b

    const/4 v1, 0x2

    :cond_7b
    :goto_7b
    if-lez v5, :cond_81

    .line 479
    invoke-direct {p0, v0, v5, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(III)V

    goto :goto_9d

    .line 482
    :cond_81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many unlock attempts; user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " will be wiped!"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeDialog(II)V

    .line 486
    :cond_9d
    :goto_9d
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    if-lez p2, :cond_a9

    .line 488
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordLockout(II)V

    :cond_a9
    return-void
.end method

.method private showAlmostAtWipeDialog(III)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p3, v3, :cond_3b

    if-eq p3, v2, :cond_24

    const/4 v4, 0x3

    if-eq p3, v4, :cond_d

    move-object p1, v0

    goto :goto_51

    .line 405
    :cond_d
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->kg_failed_attempts_almost_at_erase_user:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 406
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 405
    invoke-virtual {p3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_51

    .line 409
    :cond_24
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->kg_failed_attempts_almost_at_erase_profile:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 409
    invoke-virtual {p3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_51

    .line 401
    :cond_3b
    iget-object p3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$string;->kg_failed_attempts_almost_at_wipe:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 402
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 401
    invoke-virtual {p3, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 413
    :goto_51
    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showCountdownWipeDialog(I)V
    .registers 7

    .line 868
    sget v0, Lcom/android/systemui/R$string;->kg_failed_attempts_now_wiping:I

    .line 869
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityContainer$4;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_24

    const/4 v3, 0x2

    if-eq v1, v3, :cond_21

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1e

    goto :goto_26

    .line 874
    :cond_1e
    sget v0, Lcom/android/systemui/R$string;->kg_failed_password_attempts_now_wiping:I

    goto :goto_26

    .line 871
    :cond_21
    sget v0, Lcom/android/systemui/R$string;->kg_failed_pin_attempts_now_wiping:I

    goto :goto_26

    .line 877
    :cond_24
    sget v0, Lcom/android/systemui/R$string;->kg_failed_pattern_attempts_now_wiping:I

    .line 880
    :goto_26
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    if-nez v1, :cond_32

    .line 881
    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityContainer$1;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    .line 883
    :cond_32
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    new-array v2, v2, [Ljava/lang/Object;

    .line 884
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x10402cb

    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainer$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$3;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    .line 885
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x10402ca

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    .line 891
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 892
    invoke-virtual {p1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 893
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 894
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_78

    .line 895
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x7d9

    invoke-virtual {p0, v0}, Landroid/view/Window;->setType(I)V

    .line 897
    :cond_78
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showDialog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 351
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 352
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 355
    :cond_7
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 357
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 358
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->ok:I

    const/4 v0, 0x0

    .line 359
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 360
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 361
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_39

    .line 362
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d9

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    .line 364
    :cond_39
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .registers 8

    .line 616
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showSecurityScreen("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecurityView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_21

    return-void

    .line 622
    :cond_21
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    .line 623
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->getInstance(Landroid/content/Context;)Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/flyme/systemui/fingerprint/UnderScreenFingerprintManager;->setKeyguardFingerprintIconVisible(Z)V

    .line 627
    :cond_37
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    .line 628
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v2

    if-eqz v0, :cond_4b

    .line 632
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    .line 633
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mNullCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v3}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 635
    :cond_4b
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_58

    const/4 v0, 0x2

    .line 636
    invoke-interface {v2, v0}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 637
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v2, v0}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 641
    :cond_58
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    .line 643
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityViewIdForMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I

    move-result v3

    move v4, v1

    :goto_63
    if-ge v4, v0, :cond_7a

    .line 645
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v5, v4}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v5, v3, :cond_77

    .line 646
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0, v4}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_7a

    :cond_77
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 651
    :cond_7a
    :goto_7a
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 652
    iput-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    .line 653
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_8b

    .line 654
    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_8b

    const/4 v1, 0x1

    .line 653
    :cond_8b
    invoke-interface {p0, p1, v1}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    return-void
.end method

.method private showWipeConfirmDialog()V
    .registers 4

    .line 901
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/systemui/R$string;->kg_failed_attempts_now_wiping_confirm:I

    .line 902
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    const v2, 0x10402cb

    .line 903
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWipeConfirmListener:Lcom/android/keyguard/KeyguardSecurityContainer$WipeConfirmListener;

    const v2, 0x10402ca

    .line 904
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 905
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 906
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 907
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    instance-of p0, p0, Landroid/app/Activity;

    if-nez p0, :cond_37

    .line 908
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v1, 0x7d9

    invoke-virtual {p0, v1}, Landroid/view/Window;->setType(I)V

    .line 910
    :cond_37
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showWipeDialog(II)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_2f

    const/4 v3, 0x2

    if-eq p2, v3, :cond_1e

    const/4 v3, 0x3

    if-eq p2, v3, :cond_d

    move-object p1, v0

    goto :goto_3f

    .line 424
    :cond_d
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->kg_failed_attempts_now_erasing_user:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 425
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 424
    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3f

    .line 428
    :cond_1e
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->kg_failed_attempts_now_erasing_profile:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 429
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 428
    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3f

    .line 420
    :cond_2f
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->kg_failed_attempts_now_wiping:I

    new-array v2, v2, [Ljava/lang/Object;

    .line 421
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    .line 420
    invoke-virtual {p2, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 432
    :goto_3f
    invoke-direct {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateBiometricRetry()V
    .registers 3

    .line 284
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 286
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_12

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_12

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSwipeUpToRetry:Z

    return-void
.end method

.method private updateSecurityView(Landroid/view/View;)V
    .registers 3

    .line 322
    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityView;

    if-eqz v0, :cond_11

    .line 323
    check-cast p1, Lcom/android/keyguard/KeyguardSecurityView;

    .line 324
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p1, v0}, Lcom/android/keyguard/KeyguardSecurityView;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    .line 325
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-interface {p1, p0}, Lcom/android/keyguard/KeyguardSecurityView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    goto :goto_2c

    .line 327
    :cond_11
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "View "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a KeyguardSecurityView"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardSecurityView"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2c
    return-void
.end method


# virtual methods
.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 6

    .line 345
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 346
    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    return v3
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 1

    .line 790
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method public getCurrentSecurityModeContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .line 934
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_f

    .line 936
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_f
    const-string p0, ""

    return-object p0
.end method

.method public getCurrentSecurityView()Lcom/android/keyguard/KeyguardSecurityView;
    .registers 1

    .line 794
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    return-object p0
.end method

.method public getLayoutIdFor(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)I
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 767
    sget-object p0, Lcom/android/keyguard/KeyguardSecurityContainer$4;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x1

    if-eq p0, p1, :cond_2c

    const/4 p1, 0x2

    if-eq p0, p1, :cond_29

    const/4 p1, 0x3

    if-eq p0, p1, :cond_26

    const/4 p1, 0x6

    if-eq p0, p1, :cond_23

    const/4 p1, 0x7

    if-eq p0, p1, :cond_20

    const/16 p1, 0x8

    if-eq p0, p1, :cond_1d

    const/4 p0, 0x0

    return p0

    .line 778
    :cond_1d
    sget p0, Lcom/android/systemui/R$layout;->keyguard_screen_findphone_portrait:I

    return p0

    .line 777
    :cond_20
    sget p0, Lcom/android/systemui/R$layout;->mz_keyguard_sim_puk_view:I

    return p0

    .line 776
    :cond_23
    sget p0, Lcom/android/systemui/R$layout;->mz_keyguard_sim_pin_view:I

    return p0

    .line 775
    :cond_26
    sget p0, Lcom/android/systemui/R$layout;->mz_keyguard_password_view:I

    return p0

    .line 774
    :cond_29
    sget p0, Lcom/android/systemui/R$layout;->mz_keyguard_easy_password_view:I

    return p0

    .line 768
    :cond_2c
    sget p0, Lcom/android/systemui/R$layout;->keyguard_pattern_view:I

    return p0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .registers 2

    .line 786
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .registers 1

    .line 293
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public needsInput()Z
    .registers 1

    .line 811
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->needsInput()Z

    move-result p0

    return p0
.end method

.method protected onFinishInflate()V
    .registers 2

    .line 332
    sget v0, Lcom/android/systemui/R$id;->view_flipper:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 333
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_11

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2f

    goto :goto_47

    .line 185
    :cond_11
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsDragging:Z

    if-eqz v0, :cond_16

    return v2

    .line 188
    :cond_16
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSwipeUpToRetry:Z

    if-nez v0, :cond_1b

    return v1

    .line 192
    :cond_1b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecurityView:Lcom/android/keyguard/KeyguardSecurityView;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->disallowInterceptTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_24

    return v1

    .line 195
    :cond_24
    iget v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 196
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    goto :goto_47

    .line 205
    :cond_2f
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsDragging:Z

    goto :goto_47

    .line 179
    :cond_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 180
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStartTouchY:F

    .line 181
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    .line 182
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    :goto_47
    return v1
.end method

.method public onPause()V
    .registers 3

    .line 161
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 162
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 165
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_17

    .line 166
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->onPause()V

    :cond_17
    return-void
.end method

.method public onResume(I)V
    .registers 4

    .line 153
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_d

    .line 154
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 156
    :cond_d
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateBiometricRetry()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, -0x40800000  # -1.0f

    const/4 v3, 0x1

    if-eq v0, v3, :cond_46

    const/4 v4, 0x2

    if-eq v0, v4, :cond_30

    const/4 v4, 0x3

    if-eq v0, v4, :cond_46

    const/4 v2, 0x6

    if-eq v0, v2, :cond_14

    goto :goto_4d

    .line 237
    :cond_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v2

    .line 238
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    .line 239
    iget v5, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    if-ne v4, v5, :cond_4d

    if-nez v2, :cond_23

    move v1, v3

    .line 243
    :cond_23
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLastTouchY:F

    .line 244
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    goto :goto_4d

    .line 216
    :cond_30
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 217
    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 218
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 219
    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLastTouchY:F

    cmpl-float v1, v1, v2

    .line 225
    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLastTouchY:F

    goto :goto_4d

    :cond_46
    const/4 p1, -0x1

    .line 229
    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    .line 230
    iput v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLastTouchY:F

    .line 231
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsDragging:Z

    :cond_4d
    :goto_4d
    if-ne v0, v3, :cond_7c

    .line 249
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result p1

    neg-float p1, p1

    const/high16 v0, 0x41200000  # 10.0f

    .line 250
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 249
    invoke-static {v3, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7c

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 251
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p1

    if-nez p1, :cond_7c

    .line 252
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth()V

    .line 253
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    const/4 p1, 0x0

    .line 254
    invoke-virtual {p0, p1, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    :cond_7c
    return v3
.end method

.method public relayoutPassWordView()V
    .registers 5

    .line 925
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSaveMode()Z

    move-result v0

    .line 926
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 927
    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 928
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFindPhoneLocked()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v0, :cond_24

    if-nez v2, :cond_24

    .line 929
    iget v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSaveMargin:I

    goto :goto_25

    :cond_24
    move v0, v3

    :goto_25
    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 930
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public reset()V
    .registers 1

    .line 821
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->reset()V

    return-void
.end method

.method public setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V
    .registers 2

    .line 816
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setKeyguardCallback(Lcom/android/keyguard/KeyguardSecurityCallback;)V

    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 3

    .line 337
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 338
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityModel;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 339
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    return-void
.end method

.method public setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V
    .registers 5

    .line 840
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_d

    .line 841
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityView;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;)V

    :cond_d
    return-void
.end method

.method showNextSecurityScreenOrFinish(ZI)Z
    .registers 14

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showNextSecurityScreenOrFinish("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecurityView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceRecognitionSucceeded()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_36

    .line 521
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v4, :cond_34

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v4, :cond_36

    :cond_34
    move v0, v3

    goto :goto_37

    :cond_36
    move v0, v2

    .line 525
    :goto_37
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, -0x1

    if-eqz v4, :cond_47

    move p1, v3

    move p2, v7

    goto/16 :goto_dd

    .line 528
    :cond_47
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v4

    if-nez v4, :cond_db

    if-eqz v0, :cond_53

    goto/16 :goto_db

    .line 534
    :cond_53
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v4, :cond_6c

    .line 535
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    .line 536
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p2, p1, :cond_67

    move p2, v2

    move p1, v3

    goto/16 :goto_dd

    .line 540
    :cond_67
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_d8

    .line 544
    :cond_6c
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v4, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v4

    if-ne v0, v4, :cond_7c

    .line 545
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, p2, :cond_d8

    move p1, v3

    goto :goto_d9

    :cond_7c
    if-eqz p1, :cond_d8

    .line 550
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$4;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    if-eq p1, v3, :cond_d4

    if-eq p1, v6, :cond_d4

    if-eq p1, v7, :cond_d4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_b7

    const/4 v0, 0x7

    if-eq p1, v0, :cond_b7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_b7

    .line 576
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bad security screen "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", fail safe"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    goto :goto_d8

    .line 565
    :cond_b7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    .line 566
    sget-object p2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p2, :cond_d0

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 567
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 566
    invoke-virtual {p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p2

    if-eqz p2, :cond_d0

    move p1, v3

    move p2, v5

    goto :goto_dd

    .line 571
    :cond_d0
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_d8

    :cond_d4
    move p1, v3

    move p2, p1

    move v2, p2

    goto :goto_dd

    :cond_d8
    :goto_d8
    move p1, v2

    :goto_d9
    move p2, v8

    goto :goto_dd

    :cond_db
    :goto_db
    move p1, v3

    move p2, v6

    :goto_dd
    const/4 v0, 0x5

    if-eq p2, v8, :cond_f4

    .line 582
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v9, Landroid/metrics/LogMaker;

    const/16 v10, 0xc5

    invoke-direct {v9, v10}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 583
    invoke-virtual {v9, v0}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p2

    .line 582
    invoke-virtual {v4, p2}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_f4
    if-eqz p1, :cond_150

    .line 586
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityCallback:Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-interface {p2, v2, v4}, Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;->finish(ZI)V

    const-string p2, "finish "

    .line 587
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentSystemMode()I

    move-result p2

    .line 590
    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFingerVerifyResult:I

    if-nez v1, :cond_115

    .line 591
    iput v8, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mFingerVerifyResult:I

    goto :goto_150

    .line 593
    :cond_115
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_121

    .line 594
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, v7}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectUnlockMode(Landroid/content/Context;II)V

    goto :goto_150

    .line 595
    :cond_121
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->canIgnoreBouncerForSmartLock(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v1

    if-eqz v1, :cond_12d

    .line 596
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, v5}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectUnlockMode(Landroid/content/Context;II)V

    goto :goto_150

    .line 597
    :cond_12d
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_139

    .line 598
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, v3}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectUnlockMode(Landroid/content/Context;II)V

    goto :goto_150

    .line 599
    :cond_139
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_143

    .line 600
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, v6}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectUnlockMode(Landroid/content/Context;II)V

    goto :goto_150

    .line 601
    :cond_143
    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe1:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v2, :cond_14b

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPinPukMe2:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v2, :cond_150

    .line 602
    :cond_14b
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0, p2, v0}, Lcom/meizu/keyguard/KeyguardMobEventUtils;->collectUnlockMode(Landroid/content/Context;II)V

    :cond_150
    :goto_150
    return p1
.end method

.method showPrimarySecurityScreen(Z)V
    .registers 5

    .line 501
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 502
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 501
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 503
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showPrimarySecurityScreen(turningOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardSecurityView"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public showPromptReason(I)V
    .registers 4

    .line 831
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_27

    if-eqz p1, :cond_1e

    .line 833
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Strong auth required, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecurityView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    :cond_1e
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->showPromptReason(I)V

    :cond_27
    return-void
.end method

.method public startAppearAnimation()V
    .registers 3

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_d

    .line 268
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityView;->startAppearAnimation()V

    :cond_d
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .registers 4

    .line 273
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentSecuritySelection:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_f

    .line 274
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/keyguard/KeyguardSecurityView;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityView;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method
