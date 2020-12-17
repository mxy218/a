.class public Lcom/android/settings/notification/PulseNotificationPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "PulseNotificationPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1


# instance fields
.field private mSettingObserver:Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 52
    new-instance v0, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;-><init>(Lcom/android/settings/notification/PulseNotificationPreferenceController;Landroidx/preference/Preference;)V

    iput-object v0, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;

    :cond_14
    return-void
.end method

.method public getAvailabilityStatus()I
    .registers 2

    .line 72
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x111008d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_11

    const/4 p0, 0x0

    goto :goto_12

    :cond_11
    const/4 p0, 0x3

    :goto_12
    return p0
.end method

.method public isChecked()Z
    .registers 3

    .line 79
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "notification_light_pulse"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_11

    move v0, v1

    :cond_11
    return v0
.end method

.method public onPause()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;

    if-eqz v0, :cond_e

    .line 66
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_e
    return-void
.end method

.method public onResume()V
    .registers 3

    .line 58
    iget-object v0, p0, Lcom/android/settings/notification/PulseNotificationPreferenceController;->mSettingObserver:Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;

    if-eqz v0, :cond_e

    .line 59
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/notification/PulseNotificationPreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;Z)V

    :cond_e
    return-void
.end method

.method public setChecked(Z)Z
    .registers 3

    .line 85
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "notification_light_pulse"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method
