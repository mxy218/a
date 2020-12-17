.class public Lcom/android/settings/gestures/TapScreenGesturePreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "TapScreenGesturePreferenceController.java"


# static fields
.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_tap_screen_video"


# instance fields
.field private mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->mUserId:I

    return-void
.end method

.method private getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_d

    .line 84
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 86
    :cond_d
    iget-object p0, p0, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 1

    .line 49
    invoke-direct {p0}, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapSensorAvailable()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x3

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 1

    .line 68
    invoke-super {p0}, Lcom/android/settings/gestures/GesturePreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .registers 1

    const-string p0, "gesture_tap_screen_video"

    return-object p0
.end method

.method public isChecked()Z
    .registers 2

    .line 73
    invoke-direct {p0}, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->tapGestureEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public setChecked(Z)Z
    .registers 3

    .line 78
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "doze_tap_gesture"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/TapScreenGesturePreferenceController;
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/android/settings/gestures/TapScreenGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method
