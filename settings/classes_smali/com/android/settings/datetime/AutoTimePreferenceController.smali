.class public Lcom/android/settings/datetime/AutoTimePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AutoTimePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V
    .registers 3

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    return-void
.end method

.method private getEnforcedAdminProperty()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfAutoTimeRequired(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string p0, "auto_time"

    return-object p0
.end method

.method public isAvailable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isEnabled()Z
    .registers 3

    .line 73
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "auto_time"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_10

    const/4 v0, 0x1

    :cond_10
    return v0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 65
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 66
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_time"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 68
    iget-object p1, p0, Lcom/android/settings/datetime/AutoTimePreferenceController;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, p0}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 3

    .line 48
    instance-of v0, p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v0, :cond_5

    return-void

    .line 51
    :cond_5
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_14

    .line 53
    invoke-direct {p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->getEnforcedAdminProperty()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 55
    :cond_14
    invoke-virtual {p0}, Lcom/android/settings/datetime/AutoTimePreferenceController;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
