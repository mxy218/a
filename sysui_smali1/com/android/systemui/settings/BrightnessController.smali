.class public Lcom/android/systemui/settings/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/settings/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessController$BrightnessChangedCallback;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;,
        Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# instance fields
.field private volatile mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private final mBackgroundHandler:Landroid/os/Handler;

.field private mBrightnessChangedCallback:Lcom/android/systemui/settings/BrightnessController$BrightnessChangedCallback;

.field private final mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mControl:Lcom/android/systemui/settings/ToggleSlider;

.field private mControlValueInitialized:Z

.field private final mDefaultBacklight:I

.field private final mDefaultBacklightForVr:I

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mExternalChange:Z

.field private final mHandler:Landroid/os/Handler;

.field private volatile mIsVrModeEnabled:Z

.field private mListening:Z

.field private final mMaximumBacklight:I

.field private final mMaximumBacklightForVr:I

.field private final mMinimumBacklight:I

.field private final mMinimumBacklightForVr:I

.field private mSliderAnimator:Landroid/animation/ValueAnimator;

.field private final mStartListeningRunnable:Ljava/lang/Runnable;

.field private final mStopListeningRunnable:Ljava/lang/Runnable;

.field private final mUpdateModeRunnable:Ljava/lang/Runnable;

.field private final mUpdateSliderRunnable:Ljava/lang/Runnable;

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

.field private final mVrManager:Landroid/service/vr/IVrManager;

.field private final mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/ToggleSlider;)V
    .registers 4

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 155
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$1;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    .line 174
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$2;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    .line 192
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$3;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    .line 212
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$4;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    .line 236
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$5;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    .line 244
    new-instance v0, Lcom/android/systemui/settings/BrightnessController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessController$6;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 281
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    .line 282
    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    .line 284
    new-instance p2, Landroid/os/Handler;

    sget-object v0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    .line 285
    new-instance p2, Lcom/android/systemui/settings/BrightnessController$7;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/settings/BrightnessController$7;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 292
    new-instance p2, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {p2, p0, v0}, Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/settings/BrightnessController;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    .line 294
    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/PowerManager;

    .line 295
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    .line 296
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    .line 297
    invoke-virtual {p2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklight:I

    .line 298
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    .line 299
    invoke-virtual {p2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    .line 300
    invoke-virtual {p2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessForVrSetting()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklightForVr:I

    .line 302
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1110027

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    .line 304
    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-string/jumbo p1, "vrmanager"

    .line 305
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    .line 309
    new-instance p1, Lcom/android/systemui/settings/BrightnessController$BrightnessChangedCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/settings/BrightnessController$BrightnessChangedCallback;-><init>(Lcom/android/systemui/settings/BrightnessController;Lcom/android/systemui/settings/BrightnessController$1;)V

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessChangedCallback:Lcom/android/systemui/settings/BrightnessController$BrightnessChangedCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateModeRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/settings/BrightnessController;)Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomaticAvailable:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/BrightnessController;)Z
    .registers 1

    .line 52
    iget-boolean p0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/BrightnessController;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklightForVr:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/settings/BrightnessController;)I
    .registers 1

    .line 52
    iget p0, p0, Lcom/android/systemui/settings/BrightnessController;->mDefaultBacklight:I

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/settings/BrightnessController;Z)Z
    .registers 2

    .line 52
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/settings/BrightnessController;IZ)V
    .registers 3

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/settings/BrightnessController;->updateSlider(IZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/settings/BrightnessController;Z)V
    .registers 2

    .line 52
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/BrightnessController;->updateVrMode(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/BrightnessController;)Ljava/util/ArrayList;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/BrightnessController;)Landroid/content/Context;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/settings/BrightnessController$BrightnessObserver;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/CurrentUserTracker;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController$BrightnessChangedCallback;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mBrightnessChangedCallback:Lcom/android/systemui/settings/BrightnessController$BrightnessChangedCallback;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/BrightnessController;)Landroid/hardware/display/DisplayManager;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/BrightnessController;)Ljava/lang/Runnable;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/settings/BrightnessController;)Landroid/os/Handler;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private clampScreenBrightness(III)I
    .registers 4

    .line 532
    invoke-static {p1, p2, p3}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method

.method private mzCalculateBrightnessUpdateValue(III)I
    .registers 7

    int-to-float v0, p3

    const/high16 v1, 0x41800000  # 16.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 518
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v1, v0, 0x14

    sub-int/2addr v1, p2

    .line 520
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v2, :cond_14

    .line 521
    invoke-interface {v2, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 523
    :cond_14
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/settings/BrightnessController;->clampScreenBrightness(III)I

    move-result p0

    add-int p1, v0, p2

    if-gt p0, p1, :cond_22

    mul-int/lit8 p0, p0, 0x5

    mul-int/lit8 p2, p2, 0x5

    sub-int/2addr p0, p2

    return p0

    :cond_22
    mul-int/lit8 p1, v0, 0x5

    sub-int/2addr p0, v0

    add-int/2addr p1, p0

    sub-int/2addr p1, p2

    return p1
.end method

.method private mzCalculateBrightnessValue(III)I
    .registers 7

    int-to-float v0, p3

    const/high16 v1, 0x41800000  # 16.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    .line 502
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v1, v0, 0x14

    sub-int/2addr v1, p2

    .line 504
    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v2, :cond_14

    .line 505
    invoke-interface {v2, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    :cond_14
    mul-int/lit8 v1, v0, 0x5

    if-gt p1, v1, :cond_1b

    .line 508
    div-int/lit8 p1, p1, 0x5

    goto :goto_1d

    :cond_1b
    sub-int/2addr p1, v1

    add-int/2addr p1, v0

    :goto_1d
    add-int/2addr p1, p2

    .line 513
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/settings/BrightnessController;->clampScreenBrightness(III)I

    move-result p0

    return p0
.end method

.method private setBrightness(I)V
    .registers 2

    .line 436
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    return-void
.end method

.method private updateSlider(IZ)V
    .registers 5

    if-eqz p2, :cond_7

    .line 450
    iget p2, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    .line 451
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    goto :goto_b

    .line 453
    :cond_7
    iget p2, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    .line 454
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    .line 470
    :goto_b
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    if-eqz v1, :cond_18

    .line 471
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/settings/BrightnessController;->mzCalculateBrightnessUpdateValue(III)I

    move-result p1

    .line 472
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    invoke-interface {p0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    :cond_18
    return-void
.end method

.method private updateVrMode(Z)V
    .registers 3

    .line 440
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eq v0, p1, :cond_d

    .line 441
    iput-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    .line 442
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mUpdateSliderRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_d
    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetEnabled()V
    .registers 3

    .line 416
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/settings/BrightnessController$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/settings/BrightnessController$9;-><init>(Lcom/android/systemui/settings/BrightnessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onChanged(Lcom/android/systemui/settings/ToggleSlider;ZZIZ)V
    .registers 8

    .line 366
    iget-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mExternalChange:Z

    if-eqz p1, :cond_5

    return-void

    .line 368
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/settings/BrightnessController;->mSliderAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_c

    .line 369
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 377
    :cond_c
    iget-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z

    if-eqz p1, :cond_19

    const/16 p1, 0x1f2

    .line 379
    iget p3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklightForVr:I

    .line 380
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklightForVr:I

    const-string v1, "screen_brightness_for_vr"

    goto :goto_28

    .line 383
    :cond_19
    iget-boolean p1, p0, Lcom/android/systemui/settings/BrightnessController;->mAutomatic:Z

    if-eqz p1, :cond_20

    const/16 p1, 0xdb

    goto :goto_22

    :cond_20
    const/16 p1, 0xda

    .line 386
    :goto_22
    iget p3, p0, Lcom/android/systemui/settings/BrightnessController;->mMinimumBacklight:I

    .line 387
    iget v0, p0, Lcom/android/systemui/settings/BrightnessController;->mMaximumBacklight:I

    const-string v1, "screen_brightness"

    .line 393
    :goto_28
    invoke-direct {p0, p4, p3, v0}, Lcom/android/systemui/settings/BrightnessController;->mzCalculateBrightnessValue(III)I

    move-result p3

    if-eqz p5, :cond_33

    .line 397
    iget-object p4, p0, Lcom/android/systemui/settings/BrightnessController;->mContext:Landroid/content/Context;

    invoke-static {p4, p1, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 400
    :cond_33
    invoke-direct {p0, p3}, Lcom/android/systemui/settings/BrightnessController;->setBrightness(I)V

    if-nez p2, :cond_40

    .line 402
    new-instance p1, Lcom/android/systemui/settings/BrightnessController$8;

    invoke-direct {p1, p0, v1, p3}, Lcom/android/systemui/settings/BrightnessController$8;-><init>(Lcom/android/systemui/settings/BrightnessController;Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 410
    :cond_40
    iget-object p0, p0, Lcom/android/systemui/settings/BrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_46
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_56

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;

    .line 411
    invoke-interface {p1}, Lcom/android/systemui/settings/BrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_46

    :cond_56
    return-void
.end method

.method public onInit(Lcom/android/systemui/settings/ToggleSlider;)V
    .registers 2

    return-void
.end method

.method public registerCallbacks()V
    .registers 4

    .line 327
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-eqz v0, :cond_5

    return-void

    .line 331
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_1f

    .line 333
    :try_start_9
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->registerListener(Landroid/service/vr/IVrStateCallbacks;)V

    .line 334
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mIsVrModeEnabled:Z
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    goto :goto_1f

    :catch_17
    move-exception v0

    const-string v1, "StatusBar.BrightnessController"

    const-string v2, "Failed to register VR mode state listener: "

    .line 336
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    :cond_1f
    :goto_1f
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStartListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 341
    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    return-void
.end method

.method public releaseBirghtnessCallback()V
    .registers 2

    const/4 v0, 0x0

    .line 548
    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControl:Lcom/android/systemui/settings/ToggleSlider;

    return-void
.end method

.method public unregisterCallbacks()V
    .registers 4

    .line 346
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    if-nez v0, :cond_5

    return-void

    .line 350
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mVrManager:Landroid/service/vr/IVrManager;

    if-eqz v0, :cond_17

    .line 352
    :try_start_9
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mVrStateCallbacks:Landroid/service/vr/IVrStateCallbacks;

    invoke-interface {v0, v1}, Landroid/service/vr/IVrManager;->unregisterListener(Landroid/service/vr/IVrStateCallbacks;)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception v0

    const-string v1, "StatusBar.BrightnessController"

    const-string v2, "Failed to unregister VR mode state listener: "

    .line 354
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 358
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessController;->mBackgroundHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController;->mStopListeningRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mListening:Z

    .line 360
    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessController;->mControlValueInitialized:Z

    return-void
.end method
