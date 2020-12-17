.class public Lcom/android/settings/gestures/PickupGesturePreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "PickupGesturePreferenceController.java"


# static fields
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_pick_up_video"


# instance fields
.field private final SECURE_KEY:Ljava/lang/String;

.field private mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

.field private final mPickUpPrefKey:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "doze_pulse_on_pick_up"

    .line 37
    iput-object p1, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->SECURE_KEY:Ljava/lang/String;

    .line 45
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mUserId:I

    .line 46
    iput-object p2, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mPickUpPrefKey:Ljava/lang/String;

    return-void
.end method

.method private getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;
    .registers 3

    .line 97
    iget-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    if-nez v0, :cond_d

    .line 98
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 101
    :cond_d
    iget-object p0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method

.method public static isSuggestionComplete(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .registers 4

    .line 55
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-direct {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    const-string/jumbo v1, "pref_pickup_gesture_suggestion_complete"

    .line 56
    invoke-interface {p1, v1, p0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_15

    .line 57
    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->dozePickupSensorAvailable()Z

    move-result p1

    if-nez p1, :cond_16

    :cond_15
    const/4 p0, 0x1

    :cond_16
    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 1

    .line 63
    invoke-direct {p0}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->dozePickupSensorAvailable()Z

    move-result p0

    if-nez p0, :cond_c

    const/4 p0, 0x3

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mPickUpPrefKey:Ljava/lang/String;

    return-object p0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .registers 1

    const-string p0, "gesture_pick_up_video"

    return-object p0
.end method

.method public isChecked()Z
    .registers 2

    .line 82
    invoke-direct {p0}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->getAmbientConfig()Landroid/hardware/display/AmbientDisplayConfiguration;

    move-result-object v0

    iget p0, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;->pickupGestureEnabled(I)Z

    move-result p0

    return p0
.end method

.method public isSliceable()Z
    .registers 2

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/gestures/PickupGesturePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v0, "gesture_pick_up"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .registers 3

    .line 92
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "doze_pulse_on_pick_up"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public setConfig(Landroid/hardware/display/AmbientDisplayConfiguration;)Lcom/android/settings/gestures/PickupGesturePreferenceController;
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/android/settings/gestures/PickupGesturePreferenceController;->mAmbientConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    return-object p0
.end method
