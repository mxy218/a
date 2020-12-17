.class public Lcom/android/settings/notification/VibrationPreferenceController;
.super Lcom/android/settings/notification/NotificationPreferenceController;
.source "VibrationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/NotificationPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;)V

    const-string/jumbo p2, "vibrator"

    .line 36
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/notification/VibrationPreferenceController;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "vibrate"

    return-object p0
.end method

.method public isAvailable()Z
    .registers 3

    .line 46
    invoke-super {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_c

    goto :goto_24

    :cond_c
    const/4 v0, 0x3

    .line 49
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationPreferenceController;->checkCanBeVisible(I)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->isDefaultChannel()Z

    move-result v0

    if-nez v0, :cond_24

    iget-object p0, p0, Lcom/android/settings/notification/VibrationPreferenceController;->mVibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_24

    .line 52
    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_24

    const/4 v1, 0x1

    :cond_24
    :goto_24
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 66
    iget-object p1, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz p1, :cond_12

    .line 67
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 68
    iget-object p2, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationPreferenceController;->saveChannel()V

    :cond_12
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    if-eqz v0, :cond_1d

    .line 57
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 58
    iget-object v0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 59
    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 60
    iget-object p0, p0, Lcom/android/settings/notification/NotificationPreferenceController;->mChannel:Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->shouldVibrate()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1d
    return-void
.end method
