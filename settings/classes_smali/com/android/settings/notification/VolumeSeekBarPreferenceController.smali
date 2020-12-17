.class public abstract Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.super Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;
.source "VolumeSeekBarPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field protected mHelper:Lcom/android/settings/notification/AudioHelper;

.field protected mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

.field protected mVolumePreferenceCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/AdjustVolumeRestrictedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    new-instance p2, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {p2, p1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->setAudioHelper(Lcom/android/settings/notification/AudioHelper;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/VolumeSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    .line 58
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mVolumePreferenceCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setStream(I)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getMuteIcon()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setMuteIcon(I)V

    :cond_2e
    return-void
.end method

.method protected abstract getAudioStream()I
.end method

.method public getMax()I
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_9

    .line 97
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getMax()I

    move-result p0

    return p0

    .line 99
    :cond_9
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/AudioHelper;->getMaxVolume(I)I

    move-result p0

    return p0
.end method

.method public getMin()I
    .registers 2

    .line 104
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_9

    .line 105
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getMin()I

    move-result p0

    return p0

    .line 107
    :cond_9
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/AudioHelper;->getMinVolume(I)I

    move-result p0

    return p0
.end method

.method protected abstract getMuteIcon()I
.end method

.method public getSliderPosition()I
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_9

    .line 81
    invoke-virtual {v0}, Lcom/android/settings/widget/SeekBarPreference;->getProgress()I

    move-result p0

    return p0

    .line 83
    :cond_9
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result p0

    return p0
.end method

.method public onPause()V
    .registers 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 73
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz p0, :cond_7

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityPause()V

    :cond_7
    return-void
.end method

.method public onResume()V
    .registers 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 66
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz p0, :cond_7

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->onActivityResume()V

    :cond_7
    return-void
.end method

.method setAudioHelper(Lcom/android/settings/notification/AudioHelper;)V
    .registers 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    return-void
.end method

.method public setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mVolumePreferenceCallback:Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;

    return-void
.end method

.method public setSliderPosition(I)Z
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_7

    .line 89
    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 91
    :cond_7
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->getAudioStream()I

    move-result p0

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/notification/AudioHelper;->setStreamVolume(II)Z

    move-result p0

    return p0
.end method
