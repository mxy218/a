.class public Lcom/android/settings/accessibility/NotificationVibrationPreferenceFragment;
.super Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.source "NotificationVibrationPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultVibrationIntensity()I
    .registers 2

    .line 59
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 60
    invoke-virtual {p0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result p0

    return p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x50d

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .registers 1

    const p0, 0x7f160005

    return p0
.end method

.method protected getPreviewVibrationAudioAttributesUsage()I
    .registers 1

    const/4 p0, 0x5

    return p0
.end method

.method protected getVibrationEnabledSetting()Ljava/lang/String;
    .registers 1

    const-string p0, ""

    return-object p0
.end method

.method protected getVibrationIntensitySetting()Ljava/lang/String;
    .registers 1

    const-string p0, "notification_vibration_intensity"

    return-object p0
.end method