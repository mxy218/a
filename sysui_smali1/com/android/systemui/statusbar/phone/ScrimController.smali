.class public Lcom/android/systemui/statusbar/phone/ScrimController;
.super Ljava/lang/Object;
.source "ScrimController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;,
        Lcom/android/systemui/statusbar/phone/ScrimController$Callback;,
        Lcom/android/systemui/statusbar/phone/ScrimController$ScrimVisibility;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG_END_ALPHA:I

.field static final TAG_KEY_ANIM:I

.field private static final TAG_START_ALPHA:I


# instance fields
.field protected mAnimateChange:Z

.field private mAnimationDelay:J

.field protected mAnimationDuration:J

.field private mBlankScreen:Z

.field private mBlankingTransitionRunnable:Ljava/lang/Runnable;

.field private mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field private final mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field private mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field private final mContext:Landroid/content/Context;

.field private mCurrentBehindAlpha:F

.field private mCurrentBehindTint:I

.field private mCurrentInFrontAlpha:F

.field private mCurrentInFrontTint:I

.field private mDarkenWhileDragging:Z

.field private mDeferFinishedListener:Z

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mExpansionAffectsAlpha:Z

.field private mExpansionFraction:F

.field private final mHandler:Landroid/os/Handler;

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsBlurEnabled:Z

.field private mIsBlurOpened:Z

.field private mKeyguardOccluded:Z

.field private mKeyguardShowing:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

.field private mNeedsDrawableColorUpdate:Z

.field private mOnAnimationFinished:Ljava/lang/Runnable;

.field private mPendingFrameCallback:Ljava/lang/Runnable;

.field private mScreenBlankingCallbackCalled:Z

.field private mScreenOn:Z

.field protected final mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

.field protected mScrimBehindAlpha:F

.field protected mScrimBehindAlphaKeyguard:F

.field protected mScrimBehindAlphaResValue:F

.field protected final mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

.field private final mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/systemui/statusbar/phone/ScrimState;",
            "Ljava/lang/Float;",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrimVisibleListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mScrimsVisibility:I

.field private mState:Lcom/android/systemui/statusbar/phone/ScrimState;

.field private final mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

.field private mTracking:Z

.field private final mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

.field private mUpdatePending:Z

.field private final mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

.field private mWakeLockHeld:Z

.field private mWallpaperSupportsAmbientMode:Z

.field private mWallpaperVisibilityTimedOut:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "ScrimController"

    const/4 v1, 0x3

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    .line 119
    sget v0, Lcom/android/systemui/R$id;->scrim:I

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    .line 120
    sget v0, Lcom/android/systemui/R$id;->scrim_alpha_start:I

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    .line 121
    sget v0, Lcom/android/systemui/R$id;->scrim_alpha_end:I

    sput v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/internal/util/function/TriConsumer;Ljava/util/function/Consumer;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/ScrimView;",
            "Lcom/android/systemui/statusbar/ScrimView;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/systemui/statusbar/phone/ScrimState;",
            "Ljava/lang/Float;",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Landroid/app/AlarmManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardMonitor;",
            ")V"
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    const v0, 0x3e4ccccd  # 0.2f

    .line 141
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    const/high16 v0, 0x3f800000  # 1.0f

    .line 144
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    const-wide/16 v1, -0x1

    .line 151
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 155
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v1, -0x40800000  # -1.0f

    .line 156
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    .line 157
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 182
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 183
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    .line 184
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;

    .line 185
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimVisibleListener:Ljava/util/function/Consumer;

    .line 186
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    .line 187
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    .line 188
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    .line 189
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 190
    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/ScrimController$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    .line 191
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardVisibilityCallback:Lcom/android/systemui/statusbar/phone/ScrimController$KeyguardVisibilityCallback;

    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 192
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->scrim_behind_alpha:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaResValue:F

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    .line 194
    new-instance p1, Lcom/android/systemui/util/AlarmTimeout;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$ZxOK9HbkOUnaEI0FKoidLb2saOY;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ZxOK9HbkOUnaEI0FKoidLb2saOY;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    const-string p4, "hide_aod_wallpaper"

    invoke-direct {p1, p6, p2, p4, p3}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->createWakeLock()Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    .line 199
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaResValue:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlpha:F

    .line 200
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 201
    new-instance p1, Lcom/android/systemui/statusbar/phone/ScrimController$1;

    invoke-direct {p1, p0, p7}, Lcom/android/systemui/statusbar/phone/ScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/policy/KeyguardMonitor;)V

    invoke-interface {p7, p1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 209
    const-class p1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    .line 210
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p1, p0}, Lcom/android/internal/colorextraction/ColorExtractor;->addOnColorsChangedListener(Lcom/android/internal/colorextraction/ColorExtractor$OnColorsChangedListener;)V

    .line 211
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 212
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 214
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p1

    const/4 p2, 0x0

    move p3, p2

    .line 215
    :goto_b1
    array-length p4, p1

    if-ge p3, p4, :cond_c9

    .line 216
    aget-object p4, p1, p3

    iget-object p5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object p6, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-object p7, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p4, p5, p6, p7}, Lcom/android/systemui/statusbar/phone/ScrimState;->init(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    .line 217
    aget-object p4, p1, p3

    iget p5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaKeyguard:F

    invoke-virtual {p4, p5}, Lcom/android/systemui/statusbar/phone/ScrimState;->setScrimBehindAlphaKeyguard(F)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_b1

    .line 220
    :cond_c9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setDefaultFocusHighlightEnabled(Z)V

    .line 221
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceView;->setDefaultFocusHighlightEnabled(Z)V

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/ScrimController;ZJ)V
    .registers 4

    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setKeyguardFadingAway(ZJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/ScrimController;)Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/ScrimController;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V
    .registers 2

    .line 65
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .registers 1

    .line 65
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/ScrimController;)Z
    .registers 1

    .line 65
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDeferFinishedListener:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/ScrimController;)Ljava/lang/Runnable;
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/ScrimController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/ScrimController;Z)Z
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    return p1
.end method

.method private applyExpansionToAlpha()V
    .registers 7

    .line 440
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-nez v0, :cond_5

    return-void

    .line 444
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v2, 0x0

    const v3, 0x3f333333  # 0.7f

    if-ne v0, v1, :cond_24

    .line 446
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    float-to-double v0, v0

    const-wide v4, 0x3fe99999a0000000L  # 0.800000011920929

    .line 447
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v0, v3

    .line 448
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 449
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_69

    .line 450
    :cond_24
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_2c

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_69

    .line 453
    :cond_2c
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getInterpolatedFraction()F

    move-result v0

    .line 454
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result v1

    .line 455
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    if-eqz v4, :cond_49

    .line 456
    invoke-static {v3, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 458
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    goto :goto_57

    .line 460
    :cond_49
    invoke-static {v2, v1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 462
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    .line 464
    :goto_57
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 465
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result v2

    .line 464
    invoke-static {v1, v2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindTint:I

    :cond_69
    :goto_69
    return-void
.end method

.method private blankDisplay()V
    .registers 4

    .line 823
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v1, 0x3f800000  # 1.0f

    const/high16 v2, -0x1000000

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 827
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$kDQtFE2BFSUNax7wJ8UgLaBZyEo;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$kDQtFE2BFSUNax7wJ8UgLaBZyEo;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    .line 849
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->doOnTheNextFrame(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dispatchScrimState(F)V
    .registers 4

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimStateListener:Lcom/android/internal/util/function/TriConsumer;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p0

    invoke-interface {v0, v1, p1, p0}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private dispatchScrimsVisible()V
    .registers 3

    .line 582
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_17

    goto :goto_30

    .line 584
    :cond_17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2e

    const/4 v0, 0x0

    goto :goto_31

    :cond_2e
    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    :goto_30
    const/4 v0, 0x2

    .line 590
    :goto_31
    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    if-eq v1, v0, :cond_40

    .line 591
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimsVisibility:I

    .line 592
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimVisibleListener:Ljava/util/function/Consumer;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_40
    return-void
.end method

.method private getCurrentScrimAlpha(Landroid/view/View;)F
    .registers 3

    .line 692
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_7

    .line 693
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    return p0

    .line 694
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_e

    .line 695
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    return p0

    .line 697
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown scrim view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getCurrentScrimTint(Landroid/view/View;)I
    .registers 3

    .line 702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_7

    .line 703
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontTint:I

    return p0

    .line 704
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v0, :cond_e

    .line 705
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindTint:I

    return p0

    .line 707
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unknown scrim view"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getInterpolatedFraction()F
    .registers 9

    .line 597
    iget p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    const v0, 0x3f99999a  # 1.2f

    mul-float/2addr p0, v0

    const v0, 0x3e4ccccd  # 0.2f

    sub-float/2addr p0, v0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gtz v1, :cond_10

    return v0

    :cond_10
    const-wide/high16 v0, 0x3fe0000000000000L  # 0.5

    const-wide v2, 0x400921fa00000000L  # 3.141590118408203

    const/high16 v4, 0x3f800000  # 1.0f

    sub-float/2addr v4, p0

    float-to-double v4, v4

    const-wide/high16 v6, 0x4000000000000000L  # 2.0

    .line 604
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L  # 1.0

    sub-double v2, v4, v2

    mul-double/2addr v2, v0

    sub-double/2addr v4, v2

    double-to-float p0, v4

    return p0
.end method

.method private holdWakeLock()V
    .registers 4

    .line 374
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    if-nez v0, :cond_16

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v1, "ScrimController"

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    .line 376
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    .line 377
    invoke-interface {v0, v1}, Lcom/android/systemui/util/wakelock/WakeLock;->acquire(Ljava/lang/String;)V

    goto :goto_16

    :cond_11
    const-string p0, "Cannot hold wake lock, it has not been set yet"

    .line 379
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    :goto_16
    return-void
.end method

.method private isAnimating(Landroid/view/View;)Z
    .registers 2

    .line 754
    sget p0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private onFinished()V
    .registers 2

    .line 728
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    return-void
.end method

.method private onFinished(Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V
    .registers 5

    .line 732
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 733
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLock:Lcom/android/systemui/util/wakelock/WakeLock;

    const-string v2, "ScrimController"

    invoke-interface {v0, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    .line 734
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWakeLockHeld:Z

    :cond_e
    if-eqz p1, :cond_1a

    .line 738
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-ne p1, v0, :cond_1a

    const/4 p1, 0x0

    .line 741
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 747
    :cond_1a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_24

    .line 748
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontTint:I

    .line 749
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindTint:I

    :cond_24
    return-void
.end method

.method private setKeyguardFadingAway(ZJ)V
    .registers 7

    .line 961
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 962
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/ScrimState;->setKeyguardFadingAway(ZJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method private setOrAdaptCurrentAnimation(Landroid/view/View;)V
    .registers 5

    .line 424
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 425
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    goto :goto_52

    .line 427
    :cond_12
    sget v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 428
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result p0

    .line 429
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 430
    sget v2, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float v1, p0, v1

    add-float/2addr v2, v1

    .line 433
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 434
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 435
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    :goto_52
    return-void
.end method

.method private setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V
    .registers 6

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 618
    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setClickable(Z)V

    goto :goto_14

    .line 621
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v2, :cond_11

    const/4 v1, 0x1

    :cond_11
    invoke-virtual {p1, v1}, Landroid/view/SurfaceView;->setClickable(Z)V

    .line 623
    :goto_14
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrim(Lcom/android/systemui/statusbar/ScrimView;F)V

    return-void
.end method

.method private setScrimBehindAlpha(F)V
    .registers 3

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V

    return-void
.end method

.method private setScrimInFrontAlpha(F)V
    .registers 3

    .line 613
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimAlpha(Lcom/android/systemui/statusbar/ScrimView;F)V

    return-void
.end method

.method private shouldFadeAwayWallpaper()Z
    .registers 5

    .line 322
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperSupportsAmbientMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 326
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_16

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_16

    return v3

    .line 330
    :cond_16
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v2, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v2, :cond_27

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz p0, :cond_27

    .line 331
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->shouldTimeoutWallpaper()Z

    move-result p0

    if-eqz p0, :cond_27

    return v3

    :cond_27
    return v1
.end method

.method private startScrimAnimation(Landroid/view/View;F)V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 648
    fill-array-data v0, :array_56

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 649
    instance-of v1, p1, Lcom/android/systemui/statusbar/ScrimView;

    if-eqz v1, :cond_16

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 651
    :goto_17
    new-instance v2, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$RfJJyPt1cPl4hraLjBCUJgqPhOM;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$RfJJyPt1cPl4hraLjBCUJgqPhOM;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 662
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 663
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 664
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 665
    new-instance v1, Lcom/android/systemui/statusbar/phone/ScrimController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 684
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 685
    sget p2, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_END_ALPHA:I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 687
    sget p0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 688
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_56
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private updateScrim(Lcom/android/systemui/statusbar/ScrimView;F)V
    .registers 9

    .line 763
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    .line 765
    sget v1, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_KEY_ANIM:I

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1b

    .line 767
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    if-eqz v4, :cond_16

    .line 769
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDeferFinishedListener:Z

    .line 775
    :cond_16
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->cancelAnimator(Landroid/animation/ValueAnimator;)V

    .line 776
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDeferFinishedListener:Z

    .line 779
    :cond_1b
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    if-eqz v1, :cond_20

    return-void

    .line 782
    :cond_20
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-eqz v1, :cond_28

    .line 784
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->blankDisplay()V

    return-void

    .line 786
    :cond_28
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    if-nez v1, :cond_35

    .line 789
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v1, :cond_35

    .line 790
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    .line 791
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    .line 795
    :cond_35
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v1, :cond_3c

    .line 796
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    :cond_3c
    cmpl-float v1, p2, v0

    if-eqz v1, :cond_42

    move v1, v3

    goto :goto_43

    :cond_42
    move v1, v2

    .line 800
    :goto_43
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result v4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v5

    if-eq v4, v5, :cond_4e

    move v2, v3

    :cond_4e
    if-nez v1, :cond_57

    if-eqz v2, :cond_53

    goto :goto_57

    .line 811
    :cond_53
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished()V

    goto :goto_69

    .line 803
    :cond_57
    :goto_57
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    if-eqz v1, :cond_5f

    .line 804
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->startScrimAnimation(Landroid/view/View;F)V

    goto :goto_69

    .line 807
    :cond_5f
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 808
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onFinished()V

    :goto_69
    return-void
.end method

.method private updateScrimColor(Landroid/view/View;FI)V
    .registers 9

    const/high16 v0, 0x3f800000  # 1.0f

    .line 627
    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/4 v0, 0x0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 628
    instance-of v0, p1, Lcom/android/systemui/statusbar/ScrimView;

    if-eqz v0, :cond_3b

    .line 629
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ScrimView;

    .line 632
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v1, :cond_19

    const-string v1, "front_scrim_alpha"

    goto :goto_1b

    :cond_19
    const-string v1, "back_scrim_alpha"

    :goto_1b
    const/high16 v2, 0x437f0000  # 255.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    const-wide/16 v3, 0x1000

    .line 631
    invoke-static {v3, v4, v1, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 636
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    if-ne p1, v1, :cond_2b

    const-string p1, "front_scrim_tint"

    goto :goto_2d

    :cond_2b
    const-string p1, "back_scrim_tint"

    .line 637
    :goto_2d
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 635
    invoke-static {v3, v4, p1, v1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 639
    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/ScrimView;->setTint(I)V

    .line 640
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/ScrimView;->setViewAlpha(F)V

    goto :goto_3e

    .line 642
    :cond_3b
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    .line 644
    :goto_3e
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method


# virtual methods
.method protected cancelAnimator(Landroid/animation/ValueAnimator;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-eqz p1, :cond_5

    .line 818
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    return-void
.end method

.method public closeBlur()V
    .registers 4

    const/4 v0, 0x0

    .line 1021
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsBlurOpened:Z

    .line 1022
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez v1, :cond_18

    .line 1023
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsBlurEnabled:Z

    .line 1024
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 1025
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isActivatedStaticBlur()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->blurUnderMeRectLowerLayer(ZZ)V

    .line 1029
    :cond_18
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/16 v0, 0x8

    .line 1030
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected createWakeLock()Lcom/android/systemui/util/wakelock/WakeLock;
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 891
    new-instance v0, Lcom/android/systemui/util/wakelock/DelayedWakeLock;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mContext:Landroid/content/Context;

    const-string v2, "Scrims"

    invoke-static {p0, v2}, Lcom/android/systemui/util/wakelock/WakeLock;->createPartial(Landroid/content/Context;Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/util/wakelock/DelayedWakeLock;-><init>(Landroid/os/Handler;Lcom/android/systemui/util/wakelock/WakeLock;)V

    return-object v0
.end method

.method protected doOnTheNextFrame(Ljava/lang/Runnable;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 860
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    const-wide/16 v0, 0x20

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/SurfaceView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    const-string p1, " ScrimController: "

    .line 896
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  state: "

    .line 897
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  frontScrim:"

    .line 898
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, " viewAlpha="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(F)V

    const-string p3, " alpha="

    .line 899
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string v0, " tint=0x"

    .line 900
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  backScrim:"

    .line 902
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(F)V

    .line 903
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(F)V

    .line 904
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getTint()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "   mTracking="

    .line 906
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method protected getHandler()Landroid/os/Handler;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 865
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-object p0
.end method

.method public getState()Lcom/android/systemui/statusbar/phone/ScrimState;
    .registers 1

    .line 339
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    return-object p0
.end method

.method public isActivatedStaticBlur()Z
    .registers 1

    .line 1048
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->useStaticBlurDrawable()Z

    move-result p0

    return p0
.end method

.method public isForceStaticBlur()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public synthetic lambda$blankDisplay$1$ScrimController()V
    .registers 2

    const/4 v0, 0x0

    .line 834
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 835
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 836
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    .line 838
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    return-void
.end method

.method public synthetic lambda$blankDisplay$2$ScrimController()V
    .registers 5

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v0, :cond_a

    .line 829
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    const/4 v0, 0x1

    .line 830
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    .line 833
    :cond_a
    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$xRo1WgiULtMHpaX-VTe04p0hBHI;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$ScrimController$xRo1WgiULtMHpaX-VTe04p0hBHI;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 843
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    if-eqz v0, :cond_18

    const/16 v0, 0x20

    goto :goto_1a

    :cond_18
    const/16 v0, 0x1f4

    .line 844
    :goto_1a
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v1, :cond_34

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fading out scrims with delay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScrimController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_34
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public synthetic lambda$startScrimAnimation$0$ScrimController(Landroid/view/View;ILandroid/animation/ValueAnimator;)V
    .registers 8

    .line 652
    sget v0, Lcom/android/systemui/statusbar/phone/ScrimController;->TAG_START_ALPHA:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 653
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    .line 654
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimTint(Landroid/view/View;)I

    move-result v1

    .line 655
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->getCurrentScrimAlpha(Landroid/view/View;)F

    move-result v2

    .line 656
    invoke-static {v0, v2, p3}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    .line 657
    invoke-static {v0, v2, v3}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    .line 658
    invoke-static {p2, v1, p3}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result p2

    .line 659
    invoke-direct {p0, p1, v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrimColor(Landroid/view/View;FI)V

    .line 660
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method

.method public onColorsChanged(Lcom/android/internal/colorextraction/ColorExtractor;I)V
    .registers 3

    .line 884
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    invoke-virtual {p1}, Lcom/android/systemui/colorextraction/SysuiColorExtractor;->getNeutralColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    const/4 p1, 0x1

    .line 885
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 886
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public onExpandingFinished()V
    .registers 2

    const/4 v0, 0x0

    .line 357
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    return-void
.end method

.method protected onHideWallpaperTimeout()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_b

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v1, :cond_b

    return-void

    .line 366
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->holdWakeLock()V

    const/4 v0, 0x1

    .line 367
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    .line 368
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperFadeOutDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 370
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public onPreDraw()Z
    .registers 2

    .line 713
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x0

    .line 714
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    .line 715
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v0, :cond_13

    .line 716
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onStart()V

    .line 718
    :cond_13
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 719
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    .line 720
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isAnimating(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 721
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 722
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method public onScreenTurnedOff()V
    .registers 2

    const/4 v0, 0x0

    .line 932
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 3

    const/4 v0, 0x1

    .line 921
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenOn:Z

    .line 922
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 923
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string v0, "ScrimController"

    const-string v1, "Shorter blanking because screen turned on. All good."

    .line 924
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 927
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_24
    return-void
.end method

.method public onTrackingStarted()V
    .registers 3

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTracking:Z

    .line 353
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->canSkipBouncer()Z

    move-result v1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDarkenWhileDragging:Z

    return-void
.end method

.method public openBlur()V
    .registers 4

    const/4 v0, 0x1

    .line 1005
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsBlurOpened:Z

    .line 1006
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez v1, :cond_25

    .line 1007
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsBlurEnabled:Z

    .line 1008
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setAlpha(F)V

    .line 1010
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->isForceStaticBlur()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/flyme/systemui/statusbar/GLStaticBlurView;->blurUnderMeRectLowerLayer(ZZ)V

    .line 1014
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    const/4 v0, 0x0

    .line 1015
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_25
    return-void
.end method

.method public prepareForGentleWakeUp()V
    .registers 3

    .line 503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_25

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_25

    const/high16 v0, 0x3f800000  # 1.0f

    .line 504
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    const/high16 v0, -0x1000000

    .line 505
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontTint:I

    .line 506
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindTint:I

    const/4 v0, 0x0

    .line 507
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 508
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    const/4 v0, 0x1

    .line 509
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    const-wide/16 v0, 0x3e8

    .line 510
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    :cond_25
    return-void
.end method

.method protected scheduleUpdate()V
    .registers 2

    .line 532
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz v0, :cond_5

    return-void

    .line 535
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->invalidate()V

    .line 536
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    const/4 v0, 0x1

    .line 537
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    return-void
.end method

.method public setAodFrontScrimAlpha(F)V
    .registers 4

    .line 488
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v1, :cond_1f

    :cond_14
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1f

    .line 490
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    .line 494
    :cond_1f
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setAodFrontScrimAlpha(F)V

    .line 495
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setAodFrontScrimAlpha(F)V

    return-void
.end method

.method public setBlurAlpha(F)V
    .registers 2

    .line 1056
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setPanelViewAlpha(F)V

    return-void
.end method

.method public setCurrentUser(I)V
    .registers 2

    return-void
.end method

.method public setExpansionAffectsAlpha(Z)V
    .registers 2

    .line 936
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    return-void
.end method

.method public setHasBackdrop(Z)V
    .registers 6

    .line 945
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 946
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setHasBackdrop(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 951
    :cond_10
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1a

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_2b

    .line 952
    :cond_1a
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result p1

    .line 953
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_2b

    .line 954
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 955
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    :cond_2b
    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .registers 2

    .line 940
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardOccluded:Z

    .line 941
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .registers 2

    .line 1035
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    .line 1037
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsBlurEnabled:Z

    if-eqz p1, :cond_11

    .line 1038
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->closeBlur()V

    const/4 p1, 0x0

    .line 1039
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsBlurEnabled:Z

    goto :goto_1c

    .line 1040
    :cond_11
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mIsBlurOpened:Z

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardShowing:Z

    if-nez p1, :cond_1c

    .line 1041
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->openBlur()V

    .line 1044
    :cond_1c
    :goto_1c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    return-void
.end method

.method public setLaunchingAffordanceWithPreview(Z)V
    .registers 5

    .line 967
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    .line 968
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setLaunchingAffordanceWithPreview(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_10
    return-void
.end method

.method setOnAnimationFinished(Ljava/lang/Runnable;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 759
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mOnAnimationFinished:Ljava/lang/Runnable;

    return-void
.end method

.method public setPanelExpansion(F)V
    .registers 5

    .line 393
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_50

    .line 394
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionFraction:F

    .line 396
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->KEYGUARD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_1b

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_19

    goto :goto_1b

    :cond_19
    move p1, v1

    goto :goto_1c

    :cond_1b
    :goto_1b
    move p1, v2

    :goto_1c
    if-eqz p1, :cond_50

    .line 398
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mExpansionAffectsAlpha:Z

    if-nez p1, :cond_23

    goto :goto_50

    .line 402
    :cond_23
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyExpansionToAlpha()V

    .line 404
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mUpdatePending:Z

    if-eqz p1, :cond_2b

    return-void

    .line 408
    :cond_2b
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    .line 409
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setOrAdaptCurrentAnimation(Landroid/view/View;)V

    .line 411
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    .line 415
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    if-eqz p1, :cond_50

    .line 416
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    .line 417
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperAodDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    nop

    :cond_50
    :goto_50
    return-void
.end method

.method public setScrimBehindChangeRunnable(Ljava/lang/Runnable;)V
    .registers 2

    .line 875
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ScrimView;->setChangeRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setWakeLockScreenSensorActive(Z)V
    .registers 6

    .line 518
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_10

    aget-object v3, v0, v2

    .line 519
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setWakeLockScreenSensorActive(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 522
    :cond_10
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_25

    .line 523
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result p1

    .line 524
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_25

    .line 525
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 526
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->updateScrims()V

    :cond_25
    return-void
.end method

.method public setWallpaperSupportsAmbientMode(Z)V
    .registers 4

    .line 910
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperSupportsAmbientMode:Z

    .line 911
    invoke-static {}, Lcom/android/systemui/statusbar/phone/ScrimState;->values()[Lcom/android/systemui/statusbar/phone/ScrimState;

    move-result-object p0

    const/4 v0, 0x0

    .line 912
    :goto_7
    array-length v1, p0

    if-ge v0, v1, :cond_12

    .line 913
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->setWallpaperSupportsAmbientMode(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_12
    return-void
.end method

.method public transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .registers 3

    const/4 v0, 0x0

    .line 227
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V

    return-void
.end method

.method public transitionTo(Lcom/android/systemui/statusbar/phone/ScrimState;Lcom/android/systemui/statusbar/phone/ScrimController$Callback;)V
    .registers 8

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_e

    if-eqz p2, :cond_d

    .line 233
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eq p0, p2, :cond_d

    .line 234
    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    :cond_d
    return-void

    .line 237
    :cond_e
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/ScrimController;->DEBUG:Z

    if-eqz v0, :cond_28

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State changed to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScrimController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_28
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->UNINITIALIZED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_128

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    .line 246
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    const-wide/16 v1, 0x1000

    .line 247
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ScrimState;->getIndex()I

    move-result v3

    const-string v4, "scrim_state"

    invoke-static {v1, v2, v4, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    if-eqz v1, :cond_44

    .line 250
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onCancelled()V

    .line 252
    :cond_44
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    .line 254
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;->prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V

    const/4 p2, 0x0

    .line 255
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScreenBlankingCallbackCalled:Z

    const-wide/16 v1, 0x0

    .line 256
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    .line 257
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBlanksScreen()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    .line 258
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimateChange()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimateChange:Z

    .line 259
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getAnimationDuration()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDuration:J

    .line 260
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontTint()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontTint:I

    .line 261
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindTint()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindTint:I

    .line 262
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getFrontAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    .line 263
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->applyExpansionToAlpha()V

    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 269
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result v2

    xor-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setFocusable(Z)V

    .line 272
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    const/4 v2, 0x0

    if-eqz v1, :cond_9e

    .line 273
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v4, v1}, Landroid/view/SurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 274
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mPendingFrameCallback:Ljava/lang/Runnable;

    .line 276
    :cond_9e
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 278
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankingTransitionRunnable:Ljava/lang/Runnable;

    .line 283
    :cond_b1
    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->BRIGHTNESS_MIRROR:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v1, :cond_b7

    move p1, v3

    goto :goto_b8

    :cond_b7
    move p1, p2

    :goto_b8
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 289
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ScrimState;->isLowPowerState()Z

    move-result p1

    if-eqz p1, :cond_c5

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->holdWakeLock()V

    .line 295
    :cond_c5
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    .line 296
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->shouldFadeAwayWallpaper()Z

    move-result p1

    if-eqz p1, :cond_d9

    .line 297
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getWallpaperAodDuration()J

    move-result-wide v1

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    goto :goto_de

    .line 300
    :cond_d9
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mTimeTicker:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {p1}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    .line 303
    :goto_de
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->needsSlowUnlockTransition()Z

    move-result p1

    if-eqz p1, :cond_fd

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object p2, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, p2, :cond_fd

    .line 306
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    new-instance p2, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DY8P9cXHTvbVZZOVB_VSCJUZk0;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$5DY8P9cXHTvbVZZOVB_VSCJUZk0;-><init>(Lcom/android/systemui/statusbar/phone/ScrimController;)V

    const-wide/16 v0, 0x10

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/SurfaceView;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    const-wide/16 p1, 0x64

    .line 307
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mAnimationDelay:J

    goto :goto_11e

    .line 308
    :cond_fd
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p1

    if-nez p1, :cond_109

    sget-object p1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, p1, :cond_117

    :cond_109
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object p2, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, p2, :cond_11b

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 309
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    if-nez p1, :cond_11b

    .line 313
    :cond_117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->onPreDraw()Z

    goto :goto_11e

    .line 315
    :cond_11b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->scheduleUpdate()V

    .line 318
    :goto_11e
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    return-void

    .line 242
    :cond_128
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot change to UNINITIALIZED."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected updateScrims()V
    .registers 7

    .line 542
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_66

    .line 543
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mNeedsDrawableColorUpdate:Z

    .line 545
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-nez v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    .line 546
    :goto_1a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v4

    cmpl-float v3, v4, v3

    if-eqz v3, :cond_2a

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mBlankScreen:Z

    if-nez v3, :cond_2a

    move v3, v1

    goto :goto_2b

    :cond_2a
    move v3, v2

    .line 547
    :goto_2b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/statusbar/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 548
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/statusbar/ScrimView;->setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result v0

    if-eqz v0, :cond_44

    const/high16 v0, -0x1000000

    goto :goto_45

    :cond_44
    const/4 v0, -0x1

    .line 552
    :goto_45
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v3

    const/high16 v4, 0x40900000  # 4.5f

    .line 553
    invoke-static {v0, v3, v4}, Lcom/android/internal/graphics/ColorUtils;->calculateMinimumBackgroundAlpha(IIF)I

    move-result v0

    int-to-float v0, v0

    const/high16 v3, 0x437f0000  # 255.0f

    div-float/2addr v0, v3

    .line 555
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlphaResValue:F

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehindAlpha:F

    .line 556
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ScrimView;->getViewAlpha()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimState(F)V

    .line 561
    :cond_66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v0, v3, :cond_70

    sget-object v3, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v0, v3, :cond_76

    :cond_70
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mWallpaperVisibilityTimedOut:Z

    if-eqz v0, :cond_76

    move v0, v1

    goto :goto_77

    :cond_76
    move v0, v2

    .line 564
    :goto_77
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v4, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v3, v4, :cond_81

    sget-object v4, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne v3, v4, :cond_86

    :cond_81
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mKeyguardOccluded:Z

    if-eqz v3, :cond_86

    goto :goto_87

    :cond_86
    move v1, v2

    :goto_87
    if-nez v0, :cond_8b

    if-eqz v1, :cond_8f

    :cond_8b
    const/high16 v0, 0x3f800000  # 1.0f

    .line 567
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    .line 570
    :cond_8f
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentInFrontAlpha:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimInFrontAlpha(F)V

    .line 571
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimController;->mCurrentBehindAlpha:F

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimBehindAlpha(F)V

    .line 573
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ScrimController;->dispatchScrimsVisible()V

    return-void
.end method
