.class public Lcom/android/settings/development/PictureColorModePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "PictureColorModePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mPreference:Lcom/android/settings/development/ColorModePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_8

    .line 42
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 58
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/development/PictureColorModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/development/ColorModePreference;

    iput-object p1, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    .line 60
    iget-object p0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    if-eqz p0, :cond_16

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    :cond_16
    return-void
.end method

.method getColorModeDescriptionsSize()I
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/development/ColorModePreference;->getColorModeDescriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "picture_color_mode"

    return-object p0
.end method

.method public isAvailable()Z
    .registers 3

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/development/PictureColorModePreferenceController;->getColorModeDescriptionsSize()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/development/PictureColorModePreferenceController;->isWideColorGamut()Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isWideColorGamut()Z
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 84
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isScreenWideColorGamut()Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .registers 1

    .line 76
    iget-object p0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    if-nez p0, :cond_5

    return-void

    .line 79
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->stopListening()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    if-nez v0, :cond_5

    return-void

    .line 70
    :cond_5
    invoke-virtual {v0}, Lcom/android/settings/development/ColorModePreference;->startListening()V

    .line 71
    iget-object p0, p0, Lcom/android/settings/development/PictureColorModePreferenceController;->mPreference:Lcom/android/settings/development/ColorModePreference;

    invoke-virtual {p0}, Lcom/android/settings/development/ColorModePreference;->updateCurrentAndSupported()V

    return-void
.end method
