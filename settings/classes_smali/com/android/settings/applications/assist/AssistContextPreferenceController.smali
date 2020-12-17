.class public Lcom/android/settings/applications/assist/AssistContextPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AssistContextPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private mPreference:Landroidx/preference/Preference;

.field private mScreen:Landroidx/preference/PreferenceScreen;

.field private final mSettingObserver:Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .registers 4

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Lcom/android/internal/app/AssistUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 54
    new-instance p1, Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;-><init>(Lcom/android/settings/applications/assist/AssistContextPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;

    if-eqz p2, :cond_16

    .line 57
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_16
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/assist/AssistContextPreferenceController;)V
    .registers 1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->updatePreference()V

    return-void
.end method

.method static isChecked(Landroid/content/Context;)Z
    .registers 3

    .line 120
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "assist_structure_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private updatePreference()V
    .registers 3

    .line 96
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_37

    instance-of v0, v0, Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_9

    goto :goto_37

    .line 99
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 102
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2a

    .line 105
    :cond_23
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 108
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->isChecked(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 73
    iput-object p1, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 75
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string p0, "context"

    return-object p0
.end method

.method public isAvailable()Z
    .registers 2

    .line 63
    iget-object p0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public onPause()V
    .registers 3

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/applications/assist/AssistSettingObserver;->register(Landroid/content/ContentResolver;Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 113
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 115
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "assist_structure_enabled"

    .line 113
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->mSettingObserver:Lcom/android/settings/applications/assist/AssistContextPreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/assist/AssistSettingObserver;->register(Landroid/content/ContentResolver;Z)V

    .line 81
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->updatePreference()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 2

    .line 86
    invoke-direct {p0}, Lcom/android/settings/applications/assist/AssistContextPreferenceController;->updatePreference()V

    return-void
.end method
