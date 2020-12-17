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

    .line 99
    const/16 v0, 0x10

    new-array v1, v0, [F

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 102
    sget-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 125
    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;-><init>(Lcom/android/server/display/color/ColorDisplayService$1;)V

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    .line 140
    new-array v1, v0, [F

    fill-array-data v1, :array_24

    sput-object v1, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_GRAYSCALE:[F

    .line 153
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
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 175
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 127
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$1;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 130
    new-instance v0, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-direct {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    .line 134
    new-instance v0, Lcom/android/server/display/color/GlobalSaturationTintController;

    invoke-direct {v0}, Lcom/android/server/display/color/GlobalSaturationTintController;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    .line 162
    new-instance v0, Lcom/android/server/display/color/AppSaturationController;

    invoke-direct {v0}, Lcom/android/server/display/color/AppSaturationController;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    .line 164
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 176
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$TintHandler;

    invoke-static {}, Lcom/android/server/DisplayThread;->get()Lcom/android/server/DisplayThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/DisplayThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/display/color/ColorDisplayService$TintHandler;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Looper;Lcom/android/server/display/color/ColorDisplayService$1;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 177
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/color/ColorDisplayService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # I

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayAutoModeChanged(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayCustomStartTimeInternal()Landroid/hardware/display/Time;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # Ljava/time/LocalTime;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayCustomStartTimeChanged(Ljava/time/LocalTime;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/color/ColorDisplayService;)Landroid/hardware/display/Time;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayCustomEndTimeInternal()Landroid/hardware/display/Time;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/color/ColorDisplayService;Ljava/time/LocalTime;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # Ljava/time/LocalTime;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayCustomEndTimeChanged(Ljava/time/LocalTime;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/display/color/ColorDisplayService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # I

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityInversionChanged()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityActivated()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityDaltonizerChanged()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/color/ColorDisplayService;)Ljava/time/LocalDateTime;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayLastActivatedTimeSetting()Ljava/time/LocalDateTime;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # Ljava/lang/Class;

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/display/color/ColorDisplayService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;)Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    .line 92
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceListener:Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/display/color/ColorDisplayService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDisplayWhiteBalanceSettingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/AppSaturationController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/display/color/ColorDisplayService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # I

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->onUserChanged(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/TintController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/TintController;Z)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # Lcom/android/server/display/color/TintController;
    .param p2, "x2"  # Z

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->applyTint(Lcom/android/server/display/color/TintController;Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/display/color/ColorDisplayService;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # I

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setColorModeInternal(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/display/color/ColorDisplayService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDeviceColorManagedInternal()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/display/color/ColorDisplayService;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # Ljava/lang/String;
    .param p2, "x2"  # I

    .line 92
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/color/ColorDisplayService;->setAppSaturationLevelInternal(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getTransformCapabilitiesInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/display/color/ColorDisplayService;I)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # I

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayAutoModeInternal(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeRawInternal()I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # Landroid/hardware/display/Time;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayCustomStartTimeInternal(Landroid/hardware/display/Time;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/display/color/ColorDisplayService;Landroid/hardware/display/Time;)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # Landroid/hardware/display/Time;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setNightDisplayCustomEndTimeInternal(Landroid/hardware/display/Time;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/content/ContentResolver;I)Z
    .registers 3
    .param p0, "x0"  # Landroid/content/ContentResolver;
    .param p1, "x1"  # I

    .line 92
    invoke-static {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/color/ColorDisplayService;Z)Z
    .registers 3
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # Z

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->setDisplayWhiteBalanceSettingEnabled(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/display/color/ColorDisplayService;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # Ljava/io/PrintWriter;

    .line 92
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/server/display/color/ColorDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;
    .param p1, "x1"  # Landroid/database/ContentObserver;

    .line 92
    iput-object p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/display/color/ColorDisplayService;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    iget-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/color/ColorDisplayService;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->setUp()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/color/ColorDisplayService;)Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/color/ColorDisplayService;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/display/color/ColorDisplayService;

    .line 92
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    move-result v0

    return v0
.end method

.method private applyTint(Lcom/android/server/display/color/TintController;Z)V
    .registers 10
    .param p1, "tintController"  # Lcom/android/server/display/color/TintController;
    .param p2, "immediate"  # Z

    .line 537
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->cancelAnimator()V

    .line 539
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 540
    .local v0, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/DisplayTransformManager;->getColorMatrix(I)[F

    move-result-object v1

    .line 541
    .local v1, "from":[F
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getMatrix()[F

    move-result-object v2

    .line 543
    .local v2, "to":[F
    if-eqz p2, :cond_21

    .line 544
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    goto :goto_73

    .line 546
    :cond_21
    sget-object v3, Lcom/android/server/display/color/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/color/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 547
    if-nez v1, :cond_2c

    sget-object v6, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_IDENTITY:[F

    goto :goto_2d

    :cond_2c
    move-object v6, v1

    :goto_2d
    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    .line 546
    invoke-static {v3, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/server/display/color/TintController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 548
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 549
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 550
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000d

    .line 549
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 551
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$3e7BuPerYILI5JPZm17hU11tDtY;

    invoke-direct {v4, v0, p1}, Lcom/android/server/display/color/-$$Lambda$ColorDisplayService$3e7BuPerYILI5JPZm17hU11tDtY;-><init>(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 555
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/server/display/color/ColorDisplayService$3;

    invoke-direct {v4, p0, v0, p1, v2}, Lcom/android/server/display/color/ColorDisplayService$3;-><init>(Lcom/android/server/display/color/ColorDisplayService;Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;[F)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 575
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 577
    :goto_73
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 851
    const-string v0, "COLOR DISPLAY MANAGER dumpsys (color_display)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 853
    const-string v0, "Night display:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 854
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "    Activated: "

    const-string v2, "    Not available"

    if-eqz v0, :cond_4d

    .line 855
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

    .line 856
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

    .line 858
    :cond_4d
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    :goto_50
    const-string v0, "Global saturation:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/color/TintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 863
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

    .line 865
    :cond_7a
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 868
    :goto_7d
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/AppSaturationController;->dump(Ljava/io/PrintWriter;)V

    .line 870
    const-string v0, "Display white balance:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 871
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b1

    .line 872
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

    .line 873
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0, p1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->dump(Ljava/io/PrintWriter;)V

    goto :goto_b4

    .line 875
    :cond_b1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
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

    .line 879
    return-void
.end method

.method private getColorModeInternal()I
    .registers 6

    .line 779
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 780
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 782
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 784
    .local v1, "a11yColorMode":I
    if-ltz v1, :cond_20

    .line 785
    return v1

    .line 789
    .end local v1  # "a11yColorMode":I
    :cond_20
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v2, -0x1

    const-string v3, "display_color_mode"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 790
    .local v1, "colorMode":I
    if-ne v1, v2, :cond_2f

    .line 793
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getCurrentColorModeFromSystemProperties()I

    move-result v1

    .line 798
    :cond_2f
    invoke-direct {p0, v1}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v2

    if-nez v2, :cond_58

    .line 799
    const/4 v2, 0x1

    if-ne v1, v2, :cond_41

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 800
    const/4 v1, 0x0

    goto :goto_58

    .line 801
    :cond_41
    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4d

    .line 802
    invoke-direct {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 803
    const/4 v1, 0x3

    goto :goto_58

    .line 804
    :cond_4d
    if-ne v1, v2, :cond_57

    .line 805
    invoke-direct {p0, v3}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 806
    const/4 v1, 0x2

    goto :goto_58

    .line 808
    :cond_57
    const/4 v1, -0x1

    .line 812
    :cond_58
    :goto_58
    return v1
.end method

.method private getCurrentColorModeFromSystemProperties()I
    .registers 6

    .line 821
    const/4 v0, 0x0

    const-string/jumbo v1, "persist.sys.sf.native_mode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 822
    .local v1, "displayColorSetting":I
    const/4 v2, 0x1

    if-nez v1, :cond_1d

    .line 823
    const-string/jumbo v3, "persist.sys.sf.color_saturation"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 824
    goto :goto_1c

    :cond_1b
    move v0, v2

    .line 823
    :goto_1c
    return v0

    .line 825
    :cond_1d
    const/4 v0, 0x2

    if-ne v1, v2, :cond_21

    .line 826
    return v0

    .line 827
    :cond_21
    if-ne v1, v0, :cond_25

    .line 828
    const/4 v0, 0x3

    return v0

    .line 829
    :cond_25
    const/16 v0, 0x100

    if-lt v1, v0, :cond_2e

    const/16 v0, 0x1ff

    if-gt v1, v0, :cond_2e

    .line 831
    return v1

    .line 833
    :cond_2e
    const/4 v0, -0x1

    return v0
.end method

.method static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 7
    .param p0, "localTime"  # Ljava/time/LocalTime;
    .param p1, "compareTime"  # Ljava/time/LocalDateTime;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 604
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 605
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 604
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 608
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_26

    :cond_25
    move-object v1, v0

    :goto_26
    return-object v1
.end method

.method static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .registers 7
    .param p0, "localTime"  # Ljava/time/LocalTime;
    .param p1, "compareTime"  # Ljava/time/LocalDateTime;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 588
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 589
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 588
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 592
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_25

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_26

    :cond_25
    move-object v1, v0

    :goto_26
    return-object v1
.end method

.method private getNightDisplayAutoModeInternal()I
    .registers 4

    .line 684
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeRawInternal()I

    move-result v0

    .line 685
    .local v0, "autoMode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_16

    .line 686
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 689
    :cond_16
    if-eqz v0, :cond_35

    const/4 v1, 0x1

    if-eq v0, v1, :cond_35

    const/4 v1, 0x2

    if-eq v0, v1, :cond_35

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid autoMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorDisplayService"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/4 v0, 0x0

    .line 695
    :cond_35
    return v0
.end method

.method private getNightDisplayAutoModeRawInternal()I
    .registers 5

    .line 699
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v1, -0x1

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_8

    .line 700
    return v1

    .line 702
    :cond_8
    nop

    .line 703
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v3, "night_display_auto_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 702
    return v0
.end method

.method private getNightDisplayCustomEndTimeInternal()Landroid/hardware/display/Time;
    .registers 5

    .line 725
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v2, -0x1

    const-string/jumbo v3, "night_display_custom_end_time"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 727
    .local v0, "endTimeValue":I
    if-ne v0, v2, :cond_23

    .line 728
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 731
    :cond_23
    new-instance v1, Landroid/hardware/display/Time;

    div-int/lit16 v2, v0, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    return-object v1
.end method

.method private getNightDisplayCustomStartTimeInternal()Landroid/hardware/display/Time;
    .registers 5

    .line 708
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v2, -0x1

    const-string/jumbo v3, "night_display_custom_start_time"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 710
    .local v0, "startTimeValue":I
    if-ne v0, v2, :cond_23

    .line 711
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 714
    :cond_23
    new-instance v1, Landroid/hardware/display/Time;

    div-int/lit16 v2, v0, 0x3e8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/LocalTime;->ofSecondOfDay(J)Ljava/time/LocalTime;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/hardware/display/Time;-><init>(Ljava/time/LocalTime;)V

    return-object v1
.end method

.method private getNightDisplayLastActivatedTimeSetting()Ljava/time/LocalDateTime;
    .registers 5

    .line 745
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 746
    .local v0, "cr":Landroid/content/ContentResolver;
    nop

    .line 747
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 746
    const-string/jumbo v2, "night_display_last_activated_time"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, "lastActivatedTime":Ljava/lang/String;
    if-eqz v1, :cond_33

    .line 750
    :try_start_1a
    invoke-static {v1}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDateTime;

    move-result-object v2
    :try_end_1e
    .catch Ljava/time/format/DateTimeParseException; {:try_start_1a .. :try_end_1e} :catch_1f

    return-object v2

    .line 751
    :catch_1f
    move-exception v2

    .line 755
    nop

    .line 756
    :try_start_21
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    .line 757
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v3

    .line 755
    invoke-static {v2, v3}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v2
    :try_end_31
    .catch Ljava/time/DateTimeException; {:try_start_21 .. :try_end_31} :catch_32
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_31} :catch_32

    return-object v2

    .line 758
    :catch_32
    move-exception v2

    .line 761
    :cond_33
    sget-object v2, Ljava/time/LocalDateTime;->MIN:Ljava/time/LocalDateTime;

    return-object v2
.end method

.method private getTransformCapabilitiesInternal()I
    .registers 4

    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, "availabilityFlags":I
    invoke-static {}, Landroid/view/SurfaceControl;->getProtectedContentSupport()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 660
    or-int/lit8 v0, v0, 0x1

    .line 662
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 663
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x11100b5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 664
    or-int/lit8 v0, v0, 0x2

    .line 666
    :cond_1c
    const v2, 0x11100b6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 667
    or-int/lit8 v0, v0, 0x4

    .line 669
    :cond_27
    return v0
.end method

.method private isAccessibilityEnabled()Z
    .registers 2

    .line 491
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

    .line 481
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

    .line 486
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
    .param p1, "colorMode"  # I

    .line 838
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 840
    .local v0, "availableColorModes":[I
    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    .line 841
    array-length v2, v0

    move v3, v1

    :goto_14
    if-ge v3, v2, :cond_1f

    aget v4, v0, v3

    .line 842
    .local v4, "mode":I
    if-ne v4, p1, :cond_1c

    .line 843
    const/4 v1, 0x1

    return v1

    .line 841
    .end local v4  # "mode":I
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 847
    :cond_1f
    return v1
.end method

.method private isDeviceColorManagedInternal()Z
    .registers 3

    .line 653
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 654
    .local v0, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayTransformManager;->isDeviceColorManaged()Z

    move-result v1

    return v1
.end method

.method private isDisplayWhiteBalanceSettingEnabled()Z
    .registers 7

    .line 641
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-ne v0, v2, :cond_8

    .line 642
    return v1

    .line 644
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 647
    nop

    .line 646
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110055

    .line 647
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_25

    move v2, v3

    goto :goto_26

    .line 648
    :cond_25
    move v2, v1

    :goto_26
    iget v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 644
    const-string v5, "display_white_balance_enabled"

    invoke-static {v0, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_31

    move v1, v3

    :cond_31
    return v1
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .registers 5
    .param p0, "cr"  # Landroid/content/ContentResolver;
    .param p1, "userHandle"  # I

    .line 267
    const/4 v0, 0x0

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    move v0, v2

    :cond_c
    return v0
.end method

.method static synthetic lambda$applyTint$0(Lcom/android/server/display/color/DisplayTransformManager;Lcom/android/server/display/color/TintController;Landroid/animation/ValueAnimator;)V
    .registers 5
    .param p0, "dtm"  # Lcom/android/server/display/color/DisplayTransformManager;
    .param p1, "tintController"  # Lcom/android/server/display/color/TintController;
    .param p2, "animator"  # Landroid/animation/ValueAnimator;

    .line 552
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 553
    .local v0, "value":[F
    invoke-virtual {p1}, Lcom/android/server/display/color/TintController;->getLevel()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 554
    return-void
.end method

.method private onAccessibilityActivated()V
    .registers 2

    .line 477
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 478
    return-void
.end method

.method private onAccessibilityDaltonizerChanged()V
    .registers 6

    .line 498
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_7

    .line 499
    return-void

    .line 501
    :cond_7
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityDaltonizerEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_21

    .line 502
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

    .line 505
    :cond_21
    move v0, v1

    :goto_22
    nop

    .line 507
    .local v0, "daltonizerMode":I
    const-class v2, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v2}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/color/DisplayTransformManager;

    .line 508
    .local v2, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    const/16 v3, 0xc8

    if-nez v0, :cond_38

    .line 510
    sget-object v4, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_GRAYSCALE:[F

    invoke-virtual {v2, v3, v4}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 512
    invoke-virtual {v2, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    goto :goto_3f

    .line 514
    :cond_38
    const/4 v1, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 515
    invoke-virtual {v2, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    .line 517
    :goto_3f
    return-void
.end method

.method private onAccessibilityInversionChanged()V
    .registers 4

    .line 523
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_7

    .line 524
    return-void

    .line 526
    :cond_7
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 527
    .local v0, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    const/16 v1, 0x12c

    .line 528
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessiblityInversionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1a

    sget-object v2, Lcom/android/server/display/color/ColorDisplayService;->MATRIX_INVERT_COLOR:[F

    goto :goto_1b

    :cond_1a
    const/4 v2, 0x0

    .line 527
    :goto_1b
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    .line 529
    return-void
.end method

.method private onDisplayColorModeChanged(I)V
    .registers 5
    .param p1, "mode"  # I

    .line 454
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 455
    return-void

    .line 458
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->cancelAnimator()V

    .line 459
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->cancelAnimator()V

    .line 461
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 462
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 463
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setUp(Landroid/content/Context;Z)V

    .line 464
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 465
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 468
    :cond_30
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 469
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 472
    :cond_3f
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/color/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/color/DisplayTransformManager;

    .line 473
    .local v0, "dtm":Lcom/android/server/display/color/DisplayTransformManager;
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getMatrix()[F

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMode(I[F)Z

    .line 474
    return-void
.end method

.method private onNightDisplayAutoModeChanged(I)V
    .registers 4
    .param p1, "autoMode"  # I

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayAutoModeChanged: autoMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_21

    .line 422
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStop()V

    .line 423
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 426
    :cond_21
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2c

    .line 427
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$CustomNightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    goto :goto_36

    .line 428
    :cond_2c
    const/4 v0, 0x2

    if-ne p1, v0, :cond_36

    .line 429
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$TwilightNightDisplayAutoMode;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 432
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_3d

    .line 433
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStart()V

    .line 435
    :cond_3d
    return-void
.end method

.method private onNightDisplayCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .registers 4
    .param p1, "endTime"  # Ljava/time/LocalTime;

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayCustomEndTimeChanged: endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_1e

    .line 449
    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 451
    :cond_1e
    return-void
.end method

.method private onNightDisplayCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .registers 4
    .param p1, "startTime"  # Ljava/time/LocalTime;

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNightDisplayCustomStartTimeChanged: startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_1e

    .line 441
    invoke-virtual {v0, p1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 443
    :cond_1e
    return-void
.end method

.method private onUserChanged(I)V
    .registers 7
    .param p1, "userHandle"  # I

    .line 230
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_20

    .line 233
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_19

    .line 234
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 235
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    goto :goto_20

    .line 236
    :cond_19
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_20

    .line 237
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->tearDown()V

    .line 241
    :cond_20
    :goto_20
    iput p1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 243
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    if-eq v1, v2, :cond_4c

    .line 244
    invoke-static {v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_45

    .line 245
    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$1;

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/display/color/ColorDisplayService$1;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 258
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_4c

    .line 260
    :cond_45
    iget-boolean v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_4c

    .line 261
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->setUp()V

    .line 264
    :cond_4c
    :goto_4c
    return-void
.end method

.method private setAppSaturationLevelInternal(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "saturationLevel"  # I

    .line 765
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mAppSaturationController:Lcom/android/server/display/color/AppSaturationController;

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 766
    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/display/color/AppSaturationController;->setSaturationLevel(Ljava/lang/String;II)Z

    move-result v0

    .line 765
    return v0
.end method

.method private setColorModeInternal(I)V
    .registers 5
    .param p1, "colorMode"  # I

    .line 770
    invoke-direct {p0, p1}, Lcom/android/server/display/color/ColorDisplayService;->isColorModeAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 773
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string v2, "display_color_mode"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 776
    return-void

    .line 771
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid colorMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setDisplayWhiteBalanceSettingEnabled(Z)Z
    .registers 5
    .param p1, "enabled"  # Z

    .line 632
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_8

    .line 633
    const/4 v0, 0x0

    return v0

    .line 635
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 637
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 635
    const-string v2, "display_white_balance_enabled"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private setNightDisplayAutoModeInternal(I)Z
    .registers 6
    .param p1, "autoMode"  # I

    .line 673
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    move-result v0

    if-eq v0, p1, :cond_17

    .line 674
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v3, "night_display_last_activated_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 679
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const-string/jumbo v2, "night_display_auto_mode"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private setNightDisplayCustomEndTimeInternal(Landroid/hardware/display/Time;)Z
    .registers 6
    .param p1, "endTime"  # Landroid/hardware/display/Time;

    .line 735
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 736
    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 735
    const-string/jumbo v3, "night_display_custom_end_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private setNightDisplayCustomStartTimeInternal(Landroid/hardware/display/Time;)Z
    .registers 6
    .param p1, "startTime"  # Landroid/hardware/display/Time;

    .line 718
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 720
    invoke-virtual {p1}, Landroid/hardware/display/Time;->getLocalTime()Ljava/time/LocalTime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/LocalTime;->toSecondOfDay()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iget v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 718
    const-string/jumbo v3, "night_display_custom_start_time"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method private setUp()V
    .registers 6

    .line 271
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

    .line 274
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_26

    .line 275
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$2;

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/color/ColorDisplayService$2;-><init>(Lcom/android/server/display/color/ColorDisplayService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    .line 333
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 334
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "night_display_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 336
    const-string/jumbo v1, "night_display_color_temperature"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 338
    const-string/jumbo v1, "night_display_auto_mode"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 340
    const-string/jumbo v1, "night_display_custom_start_time"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 342
    const-string/jumbo v1, "night_display_custom_end_time"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 344
    const-string v1, "display_color_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 346
    nop

    .line 347
    const-string v1, "accessibility_display_inversion_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 346
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 349
    nop

    .line 350
    const-string v1, "accessibility_display_daltonizer_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 349
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 352
    nop

    .line 353
    const-string v1, "accessibility_display_daltonizer"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    .line 352
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 355
    const-string v1, "display_white_balance_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 359
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityInversionChanged()V

    .line 360
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->onAccessibilityDaltonizerChanged()V

    .line 364
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getColorModeInternal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/color/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 366
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 368
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 371
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 372
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setUp(Landroid/content/Context;Z)V

    .line 373
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 374
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->getColorTemperatureSetting()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setMatrix(I)V

    .line 377
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->getNightDisplayAutoModeInternal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/display/color/ColorDisplayService;->onNightDisplayAutoModeChanged(I)V

    .line 380
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedStateNotSet()Z

    move-result v1

    if-eqz v1, :cond_10a

    .line 381
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 382
    invoke-virtual {v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivatedSetting()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 386
    :cond_10a
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_123

    .line 388
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setUp(Landroid/content/Context;Z)V

    .line 390
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->updateDisplayWhiteBalanceStatus()V

    .line 392
    :cond_123
    return-void
.end method

.method private tearDown()V
    .registers 4

    .line 395
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

    .line 397
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2a

    .line 398
    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 401
    :cond_2a
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_45

    .line 402
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    if-eqz v0, :cond_40

    .line 403
    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;->onStop()V

    .line 404
    iput-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayAutoMode:Lcom/android/server/display/color/ColorDisplayService$NightDisplayAutoMode;

    .line 406
    :cond_40
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->endAnimator()V

    .line 409
    :cond_45
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_56

    .line 410
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->endAnimator()V

    .line 413
    :cond_56
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {p0}, Lcom/android/server/display/color/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/display/color/TintController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 414
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mGlobalSaturationTintController:Lcom/android/server/display/color/TintController;

    invoke-virtual {v0, v1}, Lcom/android/server/display/color/TintController;->setActivated(Ljava/lang/Boolean;)V

    .line 416
    :cond_67
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"  # I

    .line 188
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_16

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mBootCompleted:Z

    .line 192
    iget v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_16

    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_16

    .line 193
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 196
    :cond_16
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 181
    new-instance v0, Lcom/android/server/display/color/ColorDisplayService$BinderService;

    invoke-direct {v0, p0}, Lcom/android/server/display/color/ColorDisplayService$BinderService;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    const-string v1, "color_display"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/color/ColorDisplayService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 182
    const-class v0, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    new-instance v1, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;

    invoke-direct {v1, p0}, Lcom/android/server/display/color/ColorDisplayService$ColorDisplayServiceInternal;-><init>(Lcom/android/server/display/color/ColorDisplayService;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 183
    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    new-instance v1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-direct {v1}, Lcom/android/server/display/color/DisplayTransformManager;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/color/ColorDisplayService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 184
    return-void
.end method

.method public onStartUser(I)V
    .registers 4
    .param p1, "userHandle"  # I

    .line 200
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 202
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_17

    .line 203
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 204
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 205
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    .end local v0  # "message":Landroid/os/Message;
    :cond_17
    return-void
.end method

.method public onStopUser(I)V
    .registers 4
    .param p1, "userHandle"  # I

    .line 220
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 222
    iget v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mCurrentUser:I

    if-ne v0, p1, :cond_17

    .line 223
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 224
    .local v0, "message":Landroid/os/Message;
    const/16 v1, -0x2710

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 225
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 227
    .end local v0  # "message":Landroid/os/Message;
    :cond_17
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 4
    .param p1, "userHandle"  # I

    .line 211
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 213
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 214
    .local v0, "message":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 215
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 216
    return-void
.end method

.method updateDisplayWhiteBalanceStatus()V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 613
    iget-object v0, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v0}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v0

    .line 614
    .local v0, "oldActivated":Z
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isDisplayWhiteBalanceSettingEnabled()Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mNightDisplayTintController:Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;

    .line 615
    invoke-virtual {v2}, Lcom/android/server/display/color/ColorDisplayService$NightDisplayTintController;->isActivated()Z

    move-result v2

    if-nez v2, :cond_24

    .line 616
    invoke-direct {p0}, Lcom/android/server/display/color/ColorDisplayService;->isAccessibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_24

    .line 617
    invoke-static {}, Lcom/android/server/display/color/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v2

    if-eqz v2, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 614
    :goto_25
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->setActivated(Ljava/lang/Boolean;)V

    .line 618
    iget-object v1, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceTintController:Lcom/android/server/display/color/DisplayWhiteBalanceTintController;

    invoke-virtual {v1}, Lcom/android/server/display/color/DisplayWhiteBalanceTintController;->isActivated()Z

    move-result v1

    .line 620
    .local v1, "activated":Z
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mDisplayWhiteBalanceListener:Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;

    if-eqz v2, :cond_3b

    if-eq v0, v1, :cond_3b

    .line 621
    invoke-interface {v2, v1}, Lcom/android/server/display/color/ColorDisplayService$DisplayWhiteBalanceListener;->onDisplayWhiteBalanceStatusChanged(Z)V

    .line 626
    :cond_3b
    if-nez v1, :cond_43

    .line 627
    iget-object v2, p0, Lcom/android/server/display/color/ColorDisplayService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 629
    :cond_43
    return-void
.end method
