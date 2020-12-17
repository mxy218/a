.class public Lcom/android/settings/widget/VideoPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "VideoPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private mVideoPaused:Z

.field private mVideoPreference:Lcom/android/settings/widget/VideoPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/VideoPreference;

    iput-object v0, p0, Lcom/android/settings/widget/VideoPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    .line 48
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPreference;->isPreferenceVisible()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 49
    iget-object p0, p0, Lcom/android/settings/widget/VideoPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1c
    return-void
.end method

.method public getAvailabilityStatus()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onPause()V
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_f

    .line 57
    invoke-virtual {v0}, Lcom/android/settings/widget/VideoPreference;->isVideoPaused()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/widget/VideoPreferenceController;->mVideoPaused:Z

    .line 58
    iget-object p0, p0, Lcom/android/settings/widget/VideoPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/VideoPreference;->onViewInvisible()V

    :cond_f
    return-void
.end method

.method public onResume()V
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/settings/widget/VideoPreferenceController;->mVideoPreference:Lcom/android/settings/widget/VideoPreference;

    if-eqz v0, :cond_9

    .line 65
    iget-boolean p0, p0, Lcom/android/settings/widget/VideoPreferenceController;->mVideoPaused:Z

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/VideoPreference;->onViewVisible(Z)V

    :cond_9
    return-void
.end method
