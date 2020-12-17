.class public Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;
.super Ljava/lang/Object;
.source "MzDisplayDirectCurrentLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;,
        Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateAlphaZeroRunnable;,
        Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateBrightnessRunnable;,
        Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$BrightnessChangedCallback;,
        Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_BRIGHTNESS_CHANGED:I = 0x2

.field private static final MSG_BRIGHTNESS_UDPATE_CALLBACK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MzDisplayDirectCurrentLight"

.field private static final TOLERANCE:F = 1.0E-9f

.field private static mBrightnessChangedCallbackRegister:Z

.field private static mDisplayDirectCurrentLightSurfaceControl:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;

.field private static mMzDisplayDirectCurrentLight:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;


# instance fields
.field private final DISPLAY_DC_LIGHT_ENABLE_URI:Landroid/net/Uri;

.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaMap:[I

.field private final mBacklight:Lcom/android/server/lights/Light;

.field private mBrightnessAnimator:Landroid/animation/ValueAnimator;

.field private mBrightnessChangedCallback:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$BrightnessChangedCallback;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mContext:Landroid/content/Context;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerCallback:Landroid/os/Handler$Callback;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mLock:Ljava/lang/Object;

.field private mScreenBrightness:I

.field private final mScreenDCBrightnessThresholds:I

.field private mSettingsObserver:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$SettingsObserver;

.field private mUpdateAlphaZeroCallback:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateAlphaZeroRunnable;

.field private mUpdateBrightnessThresholdsCallback:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateBrightnessRunnable;

.field private mzDisplayDcLightEnable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mBrightnessChangedCallbackRegister:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"  # Landroid/content/Context;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string/jumbo v0, "mz_display_dc_light_enable"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->DISPLAY_DC_LIGHT_ENABLE_URI:Landroid/net/Uri;

    .line 71
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mzDisplayDcLightEnable:Z

    .line 73
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mLock:Ljava/lang/Object;

    .line 78
    new-instance v2, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;

    invoke-direct {v2, p0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;-><init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)V

    iput-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mHandlerCallback:Landroid/os/Handler$Callback;

    .line 143
    new-instance v2, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateBrightnessRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateBrightnessRunnable;-><init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;)V

    iput-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mUpdateBrightnessThresholdsCallback:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateBrightnessRunnable;

    .line 157
    new-instance v2, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateAlphaZeroRunnable;

    invoke-direct {v2, p0, v3}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateAlphaZeroRunnable;-><init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;)V

    iput-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mUpdateAlphaZeroCallback:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateAlphaZeroRunnable;

    .line 161
    iput-object p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mContext:Landroid/content/Context;

    .line 162
    const-class v2, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManagerInternal;

    iput-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 163
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v2, v1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    .line 165
    .local v2, "displayInfo":Landroid/view/DisplayInfo;
    new-instance v10, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;

    .line 166
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v6

    .line 167
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v7

    iget v8, v2, Landroid/view/DisplayInfo;->layerStack:I

    const v9, 0x40000007  # 2.0000017f

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;-><init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;IIII)V

    sput-object v10, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayDirectCurrentLightSurfaceControl:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;

    .line 170
    sget-object v4, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayDirectCurrentLightSurfaceControl:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;

    invoke-virtual {v4}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->prepare()Z

    .line 172
    iget-object v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xa030031

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mAlphaMap:[I

    .line 174
    iget-object v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0xa0b0009

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenDCBrightnessThresholds:I

    .line 176
    iget v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenDCBrightnessThresholds:I

    iput v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenBrightness:I

    .line 178
    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "displayBrightnessdc"

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mHandlerThread:Landroid/os/HandlerThread;

    .line 179
    iget-object v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    .line 180
    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v4, v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mHandler:Landroid/os/Handler;

    .line 181
    iget-object v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mContext:Landroid/content/Context;

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    iput-object v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 182
    new-instance v4, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$BrightnessChangedCallback;

    invoke-direct {v4, p0, v3}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$BrightnessChangedCallback;-><init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$1;)V

    iput-object v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mBrightnessChangedCallback:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$BrightnessChangedCallback;

    .line 184
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mChoreographer:Landroid/view/Choreographer;

    .line 186
    iget-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 187
    .local v3, "resolver":Landroid/content/ContentResolver;
    new-instance v4, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$SettingsObserver;

    iget-object v5, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p0, v5}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$SettingsObserver;-><init>(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mSettingsObserver:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$SettingsObserver;

    .line 188
    iget-object v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->DISPLAY_DC_LIGHT_ENABLE_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mSettingsObserver:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$SettingsObserver;

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v1, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 192
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_d1

    goto :goto_d2

    :cond_d1
    move v4, v1

    :goto_d2
    iput-boolean v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mzDisplayDcLightEnable:Z

    .line 194
    iget-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mzDisplayDcLightEnable:Z

    if-eqz v0, :cond_db

    .line 195
    invoke-direct {p0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->handleSettingsChangedLocked()V

    .line 198
    :cond_db
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    .line 199
    .local v0, "lights":Lcom/android/server/lights/LightsManager;
    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mBacklight:Lcom/android/server/lights/Light;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 45
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 45
    iget-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mzDisplayDcLightEnable:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Landroid/net/Uri;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 45
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->DISPLAY_DC_LIGHT_ENABLE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;Z)Z
    .registers 2
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;
    .param p1, "x1"  # Z

    .line 45
    iput-boolean p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mzDisplayDcLightEnable:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 45
    invoke-direct {p0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->handleSettingsChangedLocked()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 45
    iget v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenDCBrightnessThresholds:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;F)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;
    .param p1, "x1"  # F

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->changeDisplayAngularArcLayerAlpha(F)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Landroid/hardware/display/DisplayManagerInternal;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 45
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 45
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 45
    invoke-direct {p0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->registerBrightnessChangedCallback()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)V
    .registers 1
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 45
    invoke-direct {p0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->unRegisterBrightnessChangedCallback()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)I
    .registers 2
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 45
    iget v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenBrightness:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Lcom/android/server/lights/Light;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 45
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mBacklight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;)Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateAlphaZeroRunnable;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 45
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mUpdateAlphaZeroCallback:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateAlphaZeroRunnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;Ljava/lang/Runnable;J)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;
    .param p1, "x1"  # Ljava/lang/Runnable;
    .param p2, "x2"  # J

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->postAnimationCallback(Ljava/lang/Runnable;J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;I)V
    .registers 2
    .param p0, "x0"  # Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;
    .param p1, "x1"  # I

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->applyLayerAlpha(I)V

    return-void
.end method

.method private applyLayerAlpha(I)V
    .registers 7
    .param p1, "brightness"  # I

    .line 227
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 228
    :try_start_3
    iput p1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenBrightness:I

    .line 229
    iget-boolean v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mzDisplayDcLightEnable:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_63

    .line 230
    const-string v1, "MzDisplayDirectCurrentLight"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "brightness:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenBrightness:I

    if-lez v1, :cond_4c

    iget v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenBrightness:I

    iget-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mAlphaMap:[I

    array-length v3, v3

    if-gt v1, v3, :cond_4c

    iget v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenBrightness:I

    iget v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenDCBrightnessThresholds:I

    if-ge v1, v3, :cond_4c

    .line 232
    const/high16 v1, 0x3f800000  # 1.0f

    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mAlphaMap:[I

    add-int/lit8 v3, p1, -0x1

    aget v2, v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenDCBrightnessThresholds:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    .line 233
    .local v1, "alpha":F
    invoke-direct {p0, v1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->changeDisplayAngularArcLayerAlpha(F)V

    .line 237
    iget-object v2, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mUpdateBrightnessThresholdsCallback:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$UpdateBrightnessRunnable;

    const-wide/16 v3, 0x10

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->postAnimationCallback(Ljava/lang/Runnable;J)V

    .end local v1  # "alpha":F
    goto :goto_57

    .line 238
    :cond_4c
    iget v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenBrightness:I

    if-eqz v1, :cond_58

    iget v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenBrightness:I

    iget v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenDCBrightnessThresholds:I

    if-lt v1, v3, :cond_57

    goto :goto_58

    :cond_57
    :goto_57
    goto :goto_6d

    .line 239
    :cond_58
    :goto_58
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mBacklight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenBrightness:I

    invoke-virtual {v1, v3}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 240
    invoke-direct {p0, v2}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->changeDisplayAngularArcLayerAlpha(F)V

    goto :goto_6d

    .line 243
    :cond_63
    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mBacklight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mScreenBrightness:I

    invoke-virtual {v1, v3}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 244
    invoke-direct {p0, v2}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->changeDisplayAngularArcLayerAlpha(F)V

    .line 246
    :goto_6d
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method private changeDisplayAngularArcLayerAlpha(F)V
    .registers 3
    .param p1, "alpha"  # F

    .line 221
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayDirectCurrentLightSurfaceControl:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;

    if-eqz v0, :cond_7

    .line 222
    invoke-virtual {v0, p1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->setAlpha(F)Z

    .line 224
    :cond_7
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;
    .registers 2
    .param p0, "context"  # Landroid/content/Context;

    .line 204
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mMzDisplayDirectCurrentLight:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    if-nez v0, :cond_b

    .line 205
    new-instance v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    invoke-direct {v0, p0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mMzDisplayDirectCurrentLight:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    .line 208
    :cond_b
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mMzDisplayDirectCurrentLight:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;

    return-object v0
.end method

.method private handleSettingsChangedLocked()V
    .registers 5

    .line 216
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 218
    return-void
.end method

.method private nearlyEqual(FF)Z
    .registers 5
    .param p1, "a"  # F
    .param p2, "b"  # F

    .line 212
    sub-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3089705f  # 1.0E-9f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method private postAnimationCallback(Ljava/lang/Runnable;J)V
    .registers 13
    .param p1, "r"  # Ljava/lang/Runnable;
    .param p2, "delayMillis"  # J

    .line 250
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mChoreographer:Landroid/view/Choreographer;

    if-eqz v0, :cond_12

    .line 251
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 253
    iget-object v3, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mChoreographer:Landroid/view/Choreographer;

    const/4 v4, 0x1

    const/4 v6, 0x0

    move-object v5, p1

    move-wide v7, p2

    invoke-virtual/range {v3 .. v8}, Landroid/view/Choreographer;->postCallbackDelayed(ILjava/lang/Runnable;Ljava/lang/Object;J)V

    .line 255
    :cond_12
    return-void
.end method

.method private registerBrightnessChangedCallback()V
    .registers 4

    .line 258
    sget-boolean v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mBrightnessChangedCallbackRegister:Z

    if-nez v0, :cond_10

    .line 259
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mBrightnessChangedCallbackRegister:Z

    .line 260
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mBrightnessChangedCallback:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$BrightnessChangedCallback;

    const-string v2, "MzDisplayDirectCurrentLight"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V

    .line 262
    :cond_10
    return-void
.end method

.method public static setSkipInScreenshotAndScreenrecord(Z)V
    .registers 2
    .param p0, "skip"  # Z

    .line 299
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayDirectCurrentLightSurfaceControl:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;

    if-eqz v0, :cond_7

    .line 300
    invoke-virtual {v0, p0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->setSkipInScreenshotAndScreenrecord(Z)V

    .line 302
    :cond_7
    return-void
.end method

.method private unRegisterBrightnessChangedCallback()V
    .registers 4

    .line 265
    sget-boolean v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mBrightnessChangedCallbackRegister:Z

    if-eqz v0, :cond_10

    .line 266
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mBrightnessChangedCallbackRegister:Z

    .line 267
    iget-object v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mBrightnessChangedCallback:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$BrightnessChangedCallback;

    const-string v2, "MzDisplayDirectCurrentLight"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->unRegisterBrightnessCallback(Landroid/os/IBrightnessChangedCallback;Ljava/lang/String;)V

    .line 269
    :cond_10
    return-void
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 283
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayDirectCurrentLightSurfaceControl:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;

    if-eqz v0, :cond_7

    .line 284
    invoke-virtual {v0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->dismiss()V

    .line 286
    :cond_7
    invoke-direct {p0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->unRegisterBrightnessChangedCallback()V

    .line 287
    return-void
.end method

.method public hideDisplayDirectCurrentLightSurface()V
    .registers 2

    .line 291
    iget-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mzDisplayDcLightEnable:Z

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayDirectCurrentLightSurfaceControl:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;

    if-eqz v0, :cond_b

    .line 292
    invoke-virtual {v0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->hide()V

    .line 295
    :cond_b
    return-void
.end method

.method public setRelativeLayerSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "relativeLayer"  # Landroid/view/SurfaceControl;

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRelativeLayerSurfaceControl relativeLayer:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", surfaceControl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayDirectCurrentLightSurfaceControl:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MzDisplayDirectCurrentLight"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayDirectCurrentLightSurfaceControl:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;

    if-eqz v0, :cond_28

    .line 308
    invoke-virtual {v0, p1}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->setRelativeLayerSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 310
    :cond_28
    return-void
.end method

.method public showDisplayDirectCurrentLightSurface()V
    .registers 2

    .line 273
    iget-boolean v0, p0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mzDisplayDcLightEnable:Z

    if-eqz v0, :cond_b

    .line 275
    sget-object v0, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight;->mDisplayDirectCurrentLightSurfaceControl:Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;

    if-eqz v0, :cond_b

    .line 276
    invoke-virtual {v0}, Lcom/android/server/displayangulararc/MzDisplayDirectCurrentLight$DisplayDirectCurrentLightSurfaceControl;->show()V

    .line 279
    :cond_b
    return-void
.end method
