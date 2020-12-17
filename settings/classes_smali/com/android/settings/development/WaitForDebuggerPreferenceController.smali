.class public Lcom/android/settings/development/WaitForDebuggerPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "WaitForDebuggerPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/OnActivityResultListener;


# static fields
.field static final SETTING_VALUE_OFF:I = 0x0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SETTING_VALUE_ON:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private updateState(Landroidx/preference/Preference;Ljava/lang/String;)V
    .registers 6

    .line 82
    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 83
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "wait_for_debugger"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    move v1, v2

    .line 85
    :cond_14
    invoke-direct {p0, p2, v1, v2}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->writeDebuggerAppOptions(Ljava/lang/String;ZZ)V

    .line 86
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 87
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/2addr p0, v2

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private writeDebuggerAppOptions(Ljava/lang/String;ZZ)V
    .registers 4

    .line 106
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Landroid/app/IActivityManager;->setDebugApp(Ljava/lang/String;ZZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_7

    :catch_7
    return-void
.end method


# virtual methods
.method getActivityManagerService()Landroid/app/IActivityManager;
    .registers 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 100
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "wait_for_debugger"

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_11

    const/4 p1, -0x1

    if-eq p2, p1, :cond_7

    goto :goto_11

    .line 77
    :cond_7
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->updateState(Landroidx/preference/Preference;Ljava/lang/String;)V

    return v0

    :cond_11
    :goto_11
    const/4 p0, 0x0

    return p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .registers 3

    .line 92
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-direct {p0, v1, v0, v0}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->writeDebuggerAppOptions(Ljava/lang/String;ZZ)V

    .line 95
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 59
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 60
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "debug_app"

    .line 60
    invoke-static {p2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p2, p1, v0}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->writeDebuggerAppOptions(Ljava/lang/String;ZZ)V

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 4

    .line 68
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "debug_app"

    .line 68
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/development/WaitForDebuggerPreferenceController;->updateState(Landroidx/preference/Preference;Ljava/lang/String;)V

    return-void
.end method