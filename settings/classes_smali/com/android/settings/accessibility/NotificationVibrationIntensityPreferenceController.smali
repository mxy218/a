.class public Lcom/android/settings/accessibility/NotificationVibrationIntensityPreferenceController;
.super Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;
.source "NotificationVibrationIntensityPreferenceController.java"


# static fields
.field static final PREF_KEY:Ljava/lang/String; = "notification_vibration_preference_screen"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string v0, "notification_vibration_preference_screen"

    const-string v1, "notification_vibration_intensity"

    const-string v2, ""

    .line 31
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method protected getDefaultIntensity()I
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {p0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result p0

    return p0
.end method
