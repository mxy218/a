.class public final Lcom/android/server/display/color/ColorDisplayService;
.super Lcom/android/server/SystemService;
.source "ColorDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/color/ColorDisplayService$BinderService;,
        Lcom/android/server/display/color/ColorDisplayService$ColorTransformController;,
        Lcom/android/server/display/color/ColorDisplayService$TintHandler;,
        Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;,
        Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;,
        Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;,
        Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;,
        Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;,
        Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;,
        Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;,
        Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
    }
.end annotation


# static fields
.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

.field private static final MATRIX_GRAYSCALE:[F

.field static final MATRIX_IDENTITY:[F

.field private static final MATRIX_INVERT_COLOR:[F

.field private static final MSG_APPLY_DISPLAY_WHITE_BALANCE:I = 0x5

.field private static final MSG_APPLY_GLOBAL_SATURATION:I = 0x4

.field private static final MSG_APPLY_NIGHT_DISPLAY_ANIMATED:I = 0x3

.field private static final MSG_APPLY_NIGHT_DISPLAY_IMMEDIATE:I = 0x2

.field private static final MSG_SET_UP:I = 0x1

.field private static final MSG_USER_CHANGED:I = 0x0

.field private static final NOT_SET:I = -0x1

.field static final TAG:Ljava/lang/String; = "ColorDisplayService"

.field private static final TRANSITION_DURATION:J = 0xbb8L


# instance fields
.field private final mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

.field private mBootCompleted:Z

.field private mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mCurrentUser:I

.field private mDisplayWhiteBalanceListener:Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

.field final mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

.field private final mHandler:Landroid/os/Handler;

.field private mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

.field private final mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

.field private mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 101
    const/16 v0, 0x10

    new-array v1, v0, [F

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 104
    sget-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 127
    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;-><init>(Lcom/android/server/display/color/ColorDisplayService$1;)V

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    .line 142
    new-array v1, v0, [F

    fill-array-data v1, :array_24

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_GRAYSCALE:[F

    .line 155
    new-array v0, v0, [F

    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_INVERT_COLOR:[F

    return-void

    nop

    :array_24
    .array-data 4
        0x3e59b3d0  # 0.2126f
        0x3e59b3d0  # 0.2126f
        0x3e59b3d0  # 0.2126f
        0x0
        0x3f371759  # 0.7152f
        0x3f371759  # 0.7152f
        0x3f371759  # 0.7152f
        0x0
        0x3d93dd98  # 0.0722f
        0x3d93dd98  # 0.0722f
        0x3d93dd98  # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_48
    .array-data 4
        0x3ecdd2f2  # 0.402f
        -0x40e6e979  # -0.598f
        -0x40e6a7f0  # -0.599f
        0x0
        -0x4069ba5e  # -1.174f
        -0x41cdd2f2  # -0.174f
        -0x4069999a  # -1.175f
        0x0
        -0x4196872b  # -0.228f
        -0x4196872b  # -0.228f
        0x3f45a1cb  # 0.772f
        0x0
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 129
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$1;)V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 132
    new-instance p1, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-direct {p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 136
    new-instance p1, Lcom/android/server/display/color/GlobalSaturationTintController;

    invoke-direct {p1}, Lcom/android/server/display/color/GlobalSaturationTintController;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    .line 164
    new-instance p1, Lcom/android/server/display/color/AppSaturationController;

    invoke-direct {p1}, Lcom/android/server/display/color/AppSaturationController;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    .line 166
    const/16 p1, -0x2710

    iput p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 179
    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 183
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$TintHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/display/color/ColorDisplayService$TintHandler;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;Lcom/android/server/display/color/ColorDisplayService$1;)V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 184
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/color/ColorDisplayService;I)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayAutoModeChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayCustomStartTimeInternal()Landroid/hardware/display/Time;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayCustomStartTimeChanged(Ljava/time/LocalTime;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayCustomEndTimeInternal()Landroid/hardware/display/Time;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayCustomEndTimeChanged(Ljava/time/LocalTime;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result p0

    return p0
.end method

.method static synthetic access$1600(Lcom/android/server/display/color/ColorDisplayService;I)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityInversionChanged()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityActivated()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityDaltonizerChanged()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayLastActivatedTimeSetting()Ljava/time/LocalDateTime;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    return-object p0
.end method

.method static synthetic access$2602(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;)Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceListener:Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/display/color/ColorDisplayService;)Z
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDisplayWhiteBalanceSettingEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/AppSaturationController;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    return p0
.end method

.method static synthetic access$3000(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V
    .registers 3

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->applyTint(Lcom/android/server/display/color/TintController;Z)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/display/color/ColorDisplayService;I)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setColorModeInternal(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/display/color/ColorDisplayService;)Z
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDeviceColorManagedInternal()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3300(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;I)Z
    .registers 3

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->setAppSaturationLevelInternal(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getTransformCapabilitiesInternal()I

    move-result p0

    return p0
.end method

.method static synthetic access$3500(Lcom/android/server/display/color/ColorDisplayService;I)Z
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayAutoModeInternal(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3600(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeRawInternal()I

    move-result p0

    return p0
.end method

.method static synthetic access$3700(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayCustomStartTimeInternal(Landroid/hardware/display/Time;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3800(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayCustomEndTimeInternal(Landroid/hardware/display/Time;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lcom/android/server/display/color/ColorDisplayService;Z)Z
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setDisplayWhiteBalanceSettingEnabled(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Landroid/content/ContentResolver;I)Z
    .registers 2

    .line 94
    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$4000(Lcom/android/server/display/color/ColorDisplayService;Ljava/io/PrintWriter;)V
    .registers 2

    .line 94
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/display/color/ColorDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .registers 2

    .line 94
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/display/color/ColorDisplayService;)Z
    .registers 1

    .line 94
    iget-boolean p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->setUp()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 1

    .line 94
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    move-result p0

    return p0
.end method

.method private applyTint(Lcom/android/server/display/color/TintController;Z)V
    .registers 8

    .line 583
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 585
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 586
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->getColorMatrix(I)[F

    move-result-object v1

    .line 587
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getMatrix()[F

    move-result-object v2

    .line 589
    if-eqz p2, :cond_21

    .line 590
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result p1

    invoke-virtual {v0, p1, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    goto :goto_5e

    .line 592
    :cond_21
    sget-object p2, Lcom/android/server/display/color/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 593
    if-nez v1, :cond_2b

    sget-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    :cond_2b
    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    .line 592
    invoke-static {p2, v3}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->ofMatrix(Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;[Ljava/lang/Object;)Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    move-result-object p2

    .line 594
    invoke-virtual {p1, p2}, Lcom/android/server/display/color/TintController;->setAnimator(Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;)V

    .line 595
    const-wide/16 v3, 0xbb8

    invoke-virtual {p2, v3, v4}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 596
    nop

    .line 597
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x10c000d

    .line 596
    invoke-static {v1, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 598
    new-instance v1, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$3e7BuPerYILI5JPZm17hU11tDtY;

    invoke-direct {v1, v0, p1}, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$3e7BuPerYILI5JPZm17hU11tDtY;-><init>(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;)V

    invoke-virtual {p2, v1}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 603
    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$3;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/android/server/display/color/ColorDisplayService$3;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;[FLcom/android/server/display/color/DisplayTransformManager;)V

    invoke-virtual {p2, v1}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 631
    invoke-virtual {p2}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->start()V

    .line 633
    :goto_5e
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 6

    .line 907
    const-string v0, "COLOR DISPLAY MANAGER dumpsys (color_display)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    const-string v0, "Night display:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "    Activated: "

    const-string v2, "    Not available"

    if-eqz v0, :cond_4d

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    Color temp: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperature()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_50

    .line 914
    :cond_4d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    :goto_50
    const-string v0, "Global saturation:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 918
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/color/TintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 919
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {v3}, Lcom/android/server/display/color/TintController;->isActivated()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7d

    .line 921
    :cond_7a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 924
    :goto_7d
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/AppSaturationController;->dump(Ljava/io/PrintWriter;)V

    .line 926
    const-string v0, "Display white balance:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 927
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 929
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->dump(Ljava/io/PrintWriter;)V

    goto :goto_b4

    .line 931
    :cond_b1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 934
    :goto_b4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Color mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 935
    return-void
.end method

.method private getColorModeInternal()I
    .registers 7

    .line 835
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 836
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 838
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 840
    if-ltz v1, :cond_20

    .line 841
    return v1

    .line 845
    :cond_20
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v2, -0x1

    const-string v3, "display_color_mode"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 846
    if-ne v0, v2, :cond_2f

    .line 849
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getCurrentColorModeFromSystemProperties()I

    move-result v0

    .line 854
    :cond_2f
    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-nez v1, :cond_58

    .line 855
    const/4 v1, 0x1

    if-ne v0, v1, :cond_43

    invoke-direct {p0, v3}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 856
    move v0, v3

    goto :goto_58

    .line 857
    :cond_43
    if-ne v0, v5, :cond_4d

    .line 858
    invoke-direct {p0, v4}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 859
    move v0, v4

    goto :goto_58

    .line 860
    :cond_4d
    if-ne v0, v4, :cond_57

    .line 861
    invoke-direct {p0, v5}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 862
    move v0, v5

    goto :goto_58

    .line 864
    :cond_57
    move v0, v2

    .line 868
    :cond_58
    :goto_58
    return v0
.end method

.method private getCompositionColorSpace(I)I
    .registers 4

    .line 487
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    .line 488
    return v1

    .line 491
    :cond_6
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    return p1
.end method

.method private getCurrentColorModeFromSystemProperties()I
    .registers 5

    .line 877
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.sf.native_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 878
    const/4 v2, 0x1

    if-nez v1, :cond_1d

    .line 879
    const-string/jumbo v1, "persist.sys.sf.color_saturation"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1.0"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 880
    goto :goto_1c

    :cond_1b
    move v0, v2

    .line 879
    :goto_1c
    return v0

    .line 881
    :cond_1d
    const/4 v0, 0x2

    if-ne v1, v2, :cond_21

    .line 882
    return v0

    .line 883
    :cond_21
    if-ne v1, v0, :cond_25

    .line 884
    const/4 v0, 0x3

    return v0

    .line 885
    :cond_25
    const/16 v0, 0x100

    if-lt v1, v0, :cond_2e

    const/16 v0, 0x1ff

    if-gt v1, v0, :cond_2e

    .line 887
    return v1

    .line 889
    :cond_2e
    const/4 v0, -0x1

    return v0
.end method

.method static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 660
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 661
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result p0

    .line 660
    invoke-static {v0, v1, v2, v3, p0}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 664
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    if-eqz p1, :cond_24

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    :cond_24
    return-object p0
.end method

.method static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 644
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 645
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result p0

    .line 644
    invoke-static {v0, v1, v2, v3, p0}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object p0

    .line 648
    invoke-virtual {p0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result p1

    if-eqz p1, :cond_24

    const-wide/16 v0, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object p0

    :cond_24
    return-object p0
.end method

.method private getNightDisplayAutoModeInternal()I
    .registers 4

    .line 740
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeRawInternal()I

    move-result v0

    .line 741
    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 742
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 745
    :cond_16
    if-eqz v0, :cond_35

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    const/4 v1, 0x2

    if-eq v0, v1, :cond_35

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid autoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    const/4 v0, 0x0

    .line 751
    :cond_35
    return v0
.end method

.method private getNightDisplayAutoModeRawInternal()I
    .registers 5

    .line 755
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v1, -0x1

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_8

    .line 756
    return v1

    .line 758
    :cond_8
    nop

    .line 759
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v3, "night_display_auto_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 758
    return v0
.end method

.method private getNightDisplayCustomEndTimeInternal()Landroid/hardware/display/Time;
    .registers 5

    .line 781
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v2, -0x1

    const-string/jumbo v3, "night_display_custom_end_time"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 783
    if-ne v0, v2, :cond_23

    .line 784
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 787
    :cond_23
    new-instance v1, Landroid/hardware/display/Time;

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    return-object v1
.end method

.method private getNightDisplayCustomStartTimeInternal()Landroid/hardware/display/Time;
    .registers 5

    .line 764
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v2, -0x1

    const-string/jumbo v3, "night_display_custom_start_time"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 766
    if-ne v0, v2, :cond_23

    .line 767
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 770
    :cond_23
    new-instance v1, Landroid/hardware/display/Time;

    div-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    return-object v1
.end method

.method private getNightDisplayLastActivatedTimeSetting()Ljava/time/LocalDateTime;
    .registers 4

    .line 801
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 802
    nop

    .line 803
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 802
    const-string/jumbo v2, "night_display_last_activated_time"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 804
    if-eqz v0, :cond_33

    .line 806
    :try_start_1a
    invoke-static {v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v0
    :try_end_1e
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object v0

    .line 807
    :catch_1f
    move-exception v1

    .line 811
    nop

    .line 812
    :try_start_21
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    .line 813
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v1

    .line 811
    invoke-static {v0, v1}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v0
    :try_end_31
    .catch Ljava/time/DateTimeException; {:try_start_21 .. :try_end_31} :catch_32
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_31} :catch_32

    return-object v0

    .line 814
    :catch_32
    move-exception v0

    .line 817
    :cond_33
    sget-object v0, Ljava/time/LocalDateTime;->MIN:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method private getTransformCapabilitiesInternal()I
    .registers 4

    .line 714
    nop

    .line 715
    invoke-static {}, Landroid/view/SurfaceControl;->getProtectedContentSupport()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 716
    const/4 v0, 0x1

    goto :goto_a

    .line 715
    :cond_9
    const/4 v0, 0x0

    .line 718
    :goto_a
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 719
    const v2, 0x11100ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 720
    or-int/lit8 v0, v0, 0x2

    .line 722
    :cond_1d
    const v2, 0x11100bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 723
    or-int/lit8 v0, v0, 0x4

    .line 725
    :cond_28
    return v0
.end method

.method private isAccessibilityEnabled()Z
    .registers 2

    .line 537
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityDaltonizerEnabled()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityInversionEnabled()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private isAccessiblityDaltonizerEnabled()Z
    .registers 5

    .line 527
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v2, 0x0

    const-string v3, "accessibility_display_daltonizer_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v2, 0x1

    :cond_14
    return v2
.end method

.method private isAccessiblityInversionEnabled()Z
    .registers 5

    .line 532
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v2, 0x0

    const-string v3, "accessibility_display_inversion_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_14

    const/4 v2, 0x1

    :cond_14
    return v2
.end method

.method private isColorModeAvailable(I)Z
    .registers 7

    .line 894
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 896
    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 897
    array-length v2, v0

    move v3, v1

    :goto_14
    if-ge v3, v2, :cond_1f

    aget v4, v0, v3

    .line 898
    if-ne v4, p1, :cond_1c

    .line 899
    const/4 p1, 0x1

    return p1

    .line 897
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 903
    :cond_1f
    return v1
.end method

.method private isDeviceColorManagedInternal()Z
    .registers 2

    .line 709
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 710
    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayTransformManager;->isDeviceColorManaged()Z

    move-result v0

    return v0
.end method

.method private isDisplayWhiteBalanceSettingEnabled()Z
    .registers 7

    .line 697
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_8

    .line 698
    return v1

    .line 700
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 703
    nop

    .line 702
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111005a

    .line 703
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_25

    move v2, v3

    goto :goto_26

    .line 704
    :cond_25
    move v2, v1

    :goto_26
    iget v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 700
    const-string v5, "display_white_balance_enabled"

    invoke-static {v0, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_31

    move v1, v3

    :cond_31
    return v1
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .registers 4

    .line 274
    const/4 v0, 0x0

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_c

    goto :goto_d

    :cond_c
    move p1, v0

    :goto_d
    return p1
.end method

.method static synthetic lambda$applyTint$0(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;Landroid/animation/ValueAnimator;)V
    .registers 4

    .line 599
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 600
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 601
    check-cast p2, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;

    invoke-virtual {p2}, Lcom/android/server/display/color/ColorDisplayService$TintValueAnimator;->updateMinMaxComponents()V

    .line 602
    return-void
.end method

.method private onAccessibilityActivated()V
    .registers 2

    .line 523
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 524
    return-void
.end method

.method private onAccessibilityDaltonizerChanged()V
    .registers 6

    .line 544
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_7

    .line 545
    return-void

    .line 547
    :cond_7
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityDaltonizerEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_21

    .line 548
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0xc

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v4, "accessibility_display_daltonizer"

    invoke-static {v0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    goto :goto_22

    .line 551
    :cond_21
    move v0, v1

    .line 553
    :goto_22
    const-class v2, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/color/DisplayTransformManager;

    .line 554
    const/16 v3, 0xc8

    if-nez v0, :cond_37

    .line 556
    sget-object v0, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_GRAYSCALE:[F

    invoke-virtual {v2, v3, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 558
    invoke-virtual {v2, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    goto :goto_3e

    .line 560
    :cond_37
    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 561
    invoke-virtual {v2, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    .line 563
    :goto_3e
    return-void
.end method

.method private onAccessibilityInversionChanged()V
    .registers 4

    .line 569
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_7

    .line 570
    return-void

    .line 572
    :cond_7
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 573
    const/16 v1, 0x12c

    .line 574
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityInversionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_INVERT_COLOR:[F

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 573
    :goto_1b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 575
    return-void
.end method

.method private onDisplayColorModeChanged(I)V
    .registers 5

    .line 495
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 496
    return-void

    .line 499
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->cancelAnimator()V

    .line 500
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->cancelAnimator()V

    .line 502
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 503
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 504
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setUp(Landroid/content/Context;Z)V

    .line 505
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 506
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 513
    :cond_30
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 514
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getMatrix()[F

    move-result-object v1

    .line 515
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->getCompositionColorSpace(I)I

    move-result v2

    .line 514
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMode(I[FI)Z

    .line 517
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 518
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 520
    :cond_54
    return-void
.end method

.method private onNightDisplayAutoModeChanged(I)V
    .registers 4

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayAutoModeChanged: autoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_21

    .line 455
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStop()V

    .line 456
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 459
    :cond_21
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2c

    .line 460
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

    invoke-direct {p1, p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    goto :goto_36

    .line 461
    :cond_2c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_36

    .line 462
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;

    invoke-direct {p1, p0}, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 465
    :cond_36
    :goto_36
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz p1, :cond_3d

    .line 466
    invoke-virtual {p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStart()V

    .line 468
    :cond_3d
    return-void
.end method

.method private onNightDisplayCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .registers 4

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayCustomEndTimeChanged: endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_1e

    .line 482
    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 484
    :cond_1e
    return-void
.end method

.method private onNightDisplayCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .registers 4

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayCustomStartTimeChanged: startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_1e

    .line 474
    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 476
    :cond_1e
    return-void
.end method

.method private setAppSaturationLevelInternal(Ljava/lang/String;I)Z
    .registers 5

    .line 821
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 822
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/display/color/AppSaturationController;->setSaturationLevel(Ljava/lang/String;II)Z

    move-result p1

    .line 821
    return p1
.end method

.method private setColorModeInternal(I)V
    .registers 5

    .line 826
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 829
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v2, "display_color_mode"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 832
    return-void

    .line 827
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid colorMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setDisplayWhiteBalanceSettingEnabled(Z)Z
    .registers 5

    .line 688
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_8

    .line 689
    const/4 p1, 0x0

    return p1

    .line 691
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 693
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 691
    const-string v2, "display_white_balance_enabled"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method private setNightDisplayAutoModeInternal(I)Z
    .registers 6

    .line 729
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    move-result v0

    if-eq v0, p1, :cond_17

    .line 730
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v3, "night_display_last_activated_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 735
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "night_display_auto_mode"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method private setNightDisplayCustomEndTimeInternal(Landroid/hardware/display/Time;)Z
    .registers 5

    .line 791
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 792
    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 791
    const-string/jumbo v2, "night_display_custom_end_time"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method private setNightDisplayCustomStartTimeInternal(Landroid/hardware/display/Time;)Z
    .registers 5

    .line 774
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 776
    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 774
    const-string/jumbo v2, "night_display_custom_start_time"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method private setUp()V
    .registers 6

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setUp: currentUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_26

    .line 306
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$2;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/color/ColorDisplayService$2;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    .line 364
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 365
    const-string/jumbo v1, "night_display_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 367
    const-string/jumbo v1, "night_display_color_temperature"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 369
    const-string/jumbo v1, "night_display_auto_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 371
    const-string/jumbo v1, "night_display_custom_start_time"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 373
    const-string/jumbo v1, "night_display_custom_end_time"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 375
    const-string v1, "display_color_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 377
    nop

    .line 378
    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 377
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 380
    nop

    .line 381
    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 380
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 383
    nop

    .line 384
    const-string v1, "accessibility_display_daltonizer"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 383
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 386
    const-string v1, "display_white_balance_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 390
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityInversionChanged()V

    .line 391
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityDaltonizerChanged()V

    .line 393
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->setUpDisplayCompositionColorSpaces(Landroid/content/res/Resources;)V

    .line 397
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 399
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_115

    .line 401
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 404
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 405
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setUp(Landroid/content/Context;Z)V

    .line 406
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 407
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 410
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayAutoModeChanged(I)V

    .line 413
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedStateNotSet()Z

    move-result v0

    if-eqz v0, :cond_115

    .line 414
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 415
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 419
    :cond_115
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12e

    .line 421
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setUp(Landroid/content/Context;Z)V

    .line 423
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 425
    :cond_12e
    return-void
.end method

.method private setUpDisplayCompositionColorSpaces(Landroid/content/res/Resources;)V
    .registers 7

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 280
    const v0, 0x107002e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 281
    if-nez v0, :cond_d

    .line 282
    return-void

    .line 285
    :cond_d
    const v1, 0x107002f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p1

    .line 286
    if-nez p1, :cond_17

    .line 287
    return-void

    .line 290
    :cond_17
    array-length v1, v0

    array-length v2, p1

    if-eq v1, v2, :cond_23

    .line 291
    const-string p1, "ColorDisplayService"

    const-string v0, "Number of composition color spaces doesn\'t match specified color modes"

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void

    .line 295
    :cond_23
    new-instance v1, Landroid/util/SparseIntArray;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    .line 296
    const/4 v1, 0x0

    :goto_2c
    array-length v2, v0

    if-ge v1, v2, :cond_3b

    .line 297
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mColorModeCompositionColorSpaces:Landroid/util/SparseIntArray;

    aget v3, v0, v1

    aget v4, p1, v1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 299
    :cond_3b
    return-void
.end method

.method private tearDown()V
    .registers 4

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "tearDown: currentUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2a

    .line 431
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 434
    :cond_2a
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 435
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_40

    .line 436
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStop()V

    .line 437
    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 439
    :cond_40
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->endAnimator()V

    .line 442
    :cond_45
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 443
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->endAnimator()V

    .line 446
    :cond_56
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/color/TintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 447
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    .line 449
    :cond_67
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 4

    .line 195
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_16

    .line 196
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    .line 199
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_16

    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_16

    .line 200
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 203
    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 188
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$BinderService;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    const-string v1, "color_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/color/ColorDisplayService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 189
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-direct {v1, p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 190
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    new-instance v1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-direct {v1}, Lcom/android/server/display/color/DisplayTransformManager;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 191
    return-void
.end method

.method public onStartUser(I)V
    .registers 4

    .line 207
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 209
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_17

    .line 210
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 211
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 212
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 214
    :cond_17
    return-void
.end method

.method public onStopUser(I)V
    .registers 3

    .line 227
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 229
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    if-ne v0, p1, :cond_17

    .line 230
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 231
    const/16 v0, -0x2710

    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 232
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 234
    :cond_17
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 4

    .line 218
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 220
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 221
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 222
    iget-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 223
    return-void
.end method

.method onUserChanged(I)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 237
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 239
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_20

    .line 240
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_19

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 242
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    goto :goto_20

    .line 243
    :cond_19
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_20

    .line 244
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->tearDown()V

    .line 248
    :cond_20
    :goto_20
    iput p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 250
    iget p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    if-eq p1, v2, :cond_4c

    .line 251
    invoke-static {v0, p1}, Lcom/android/server/display/color/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result p1

    if-nez p1, :cond_45

    .line 252
    new-instance p1, Lcom/android/server/display/color/ColorDisplayService$1;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/display/color/ColorDisplayService$1;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 265
    const-string/jumbo p1, "user_setup_complete"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_4c

    .line 267
    :cond_45
    iget-boolean p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    if-eqz p1, :cond_4c

    .line 268
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->setUp()V

    .line 271
    :cond_4c
    :goto_4c
    return-void
.end method

.method updateDisplayWhiteBalanceStatus()V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 669
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v0

    .line 670
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDisplayWhiteBalanceSettingEnabled()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 671
    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v2

    if-nez v2, :cond_24

    .line 672
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_24

    .line 673
    invoke-static {}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 670
    :goto_25
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 674
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v1

    .line 676
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceListener:Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    if-eqz v2, :cond_3b

    if-eq v0, v1, :cond_3b

    .line 677
    invoke-interface {v2, v1}, Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;->onDisplayWhiteBalanceStatusChanged(Z)V

    .line 682
    :cond_3b
    if-nez v1, :cond_43

    .line 683
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 685
    :cond_43
    return-void
.end method
