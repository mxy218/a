.class public Lcom/android/systemui/statusbar/phone/DozeParameters;
.super Ljava/lang/Object;
.source "DozeParameters.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/plugins/statusbar/DozeParameters;


# static fields
.field public static final FORCE_BLANKING:Z

.field public static final FORCE_NO_BLANKING:Z

.field private static sInstance:Lcom/android/systemui/statusbar/phone/DozeParameters;


# instance fields
.field private final mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

.field private final mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mContext:Landroid/content/Context;

.field private mControlScreenOffAnimation:Z

.field private mDozeAlwaysOn:Z

.field private final mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    const-string v1, "debug.force_no_blanking"

    .line 43
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_NO_BLANKING:Z

    const-string v1, "debug.force_blanking"

    .line 45
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_BLANKING:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    .line 68
    new-instance p1, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 69
    new-instance p1, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    .line 72
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    .line 73
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/PowerManager;->setDozeAfterScreenOff(Z)V

    .line 75
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "doze_always_on"

    const-string v1, "accessibility_display_inversion_enabled"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private getBoolean(Ljava/lang/String;I)Z
    .registers 3

    .line 202
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .registers 2

    .line 59
    sget-object v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->sInstance:Lcom/android/systemui/statusbar/phone/DozeParameters;

    if-nez v0, :cond_b

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->sInstance:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 62
    :cond_b
    sget-object p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->sInstance:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method private getInt(Ljava/lang/String;I)I
    .registers 3

    .line 206
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x0

    const p2, 0xea60

    .line 207
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->constrain(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method public doubleTapReportsTouchCoordinates()Z
    .registers 2

    .line 219
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$bool;->doze_double_tap_reports_touch_coordinates:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getAlwaysOn()Z
    .registers 1

    .line 166
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mDozeAlwaysOn:Z

    return p0
.end method

.method public getDisplayNeedsBlanking()Z
    .registers 2

    .line 176
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_BLANKING:Z

    if-nez v0, :cond_1a

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeParameters;->FORCE_NO_BLANKING:Z

    if-nez v0, :cond_18

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110052

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 p0, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    const/4 p0, 0x1

    :goto_1b
    return p0
.end method

.method public getDisplayStateSupported()Z
    .registers 3

    .line 94
    sget v0, Lcom/android/systemui/R$bool;->doze_display_state_supported:I

    const-string v1, "doze.display.supported"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getDozeSuspendDisplayStateSupported()Z
    .registers 2

    .line 98
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$bool;->doze_suspend_display_state_supported:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public getPickupVibrationThreshold()I
    .registers 3

    .line 139
    sget v0, Lcom/android/systemui/R$integer;->doze_pickup_vibration_threshold:I

    const-string v1, "doze.pickup.vibration.threshold"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPolicy()Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;
    .registers 1

    .line 228
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    return-object p0
.end method

.method protected getPowerManager()Landroid/os/PowerManager;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 198
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method public getProxCheckBeforePulse()Z
    .registers 3

    .line 135
    sget v0, Lcom/android/systemui/R$bool;->doze_proximity_check_before_pulse:I

    const-string v1, "doze.pulse.proxcheck"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getPulseOnSigMotion()Z
    .registers 3

    .line 123
    sget v0, Lcom/android/systemui/R$bool;->doze_pulse_on_significant_motion:I

    const-string v1, "doze.pulse.sigmotion"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getBoolean(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public getPulseVisibleDuration()I
    .registers 3

    .line 115
    sget v0, Lcom/android/systemui/R$integer;->doze_pulse_duration_visible:I

    const-string v1, "doze.pulse.duration.visible"

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getPulseVisibleDurationExtended()I
    .registers 1

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration()I

    move-result p0

    mul-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getScreenBrightnessDoze()F
    .registers 2

    .line 106
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00a2

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-float p0, p0

    const/high16 v0, 0x437f0000  # 255.0f

    div-float/2addr p0, v0

    return p0
.end method

.method public getWallpaperAodDuration()J
    .registers 3

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result v0

    if-eqz v0, :cond_9

    const-wide/16 v0, 0x9c4

    return-wide v0

    .line 150
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperVisibilityDuration:J

    return-wide v0
.end method

.method public getWallpaperFadeOutDuration()J
    .registers 3

    .line 158
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAlwaysOnPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v0, p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->wallpaperFadeOutDuration:J

    return-wide v0
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 224
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mAmbientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    const/4 p2, -0x2

    invoke-virtual {p1, p2}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mDozeAlwaysOn:Z

    return-void
.end method

.method public setControlScreenOffAnimation(Z)V
    .registers 4

    .line 185
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 188
    :cond_5
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    const/4 v0, 0x0

    const-string/jumbo v1, "vendor.meizu.sys.cts_state"

    .line 190
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 192
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPowerManager()Landroid/os/PowerManager;

    move-result-object p0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/PowerManager;->setDozeAfterScreenOff(Z)V

    :cond_1a
    return-void
.end method

.method public shouldControlScreenOff()Z
    .registers 1

    .line 181
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/DozeParameters;->mControlScreenOffAnimation:Z

    return p0
.end method
