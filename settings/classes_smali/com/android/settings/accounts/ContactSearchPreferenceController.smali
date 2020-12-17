.class public Lcom/android/settings/accounts/ContactSearchPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ContactSearchPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mManagedUser:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private isChecked()Z
    .registers 4

    .line 64
    iget-object v0, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 67
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    .line 68
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    const-string v2, "managed_profile_contact_remote_search"

    .line 67
    invoke-static {v0, v2, v1, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1b

    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method private setChecked(Z)Z
    .registers 4

    .line 72
    iget-object v0, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_15

    .line 74
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    .line 75
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    const-string v1, "managed_profile_contact_remote_search"

    .line 74
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_15
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    if-eqz p0, :cond_6

    const/4 p0, 0x0

    goto :goto_7

    :cond_6
    const/4 p0, 0x4

    :goto_7
    return p0
.end method

.method public getSliceType()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 3

    .line 82
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ContactSearchPreferenceController;->setChecked(Z)Z

    move-result p0

    return p0
.end method

.method public setManagedUser(Landroid/os/UserHandle;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 3

    .line 50
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 51
    instance-of v0, p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v0, :cond_21

    .line 52
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 53
    invoke-direct {p0}, Lcom/android/settings/accounts/ContactSearchPreferenceController;->isChecked()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/accounts/ContactSearchPreferenceController;->mManagedUser:Landroid/os/UserHandle;

    if-eqz v0, :cond_21

    .line 55
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 57
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 56
    invoke-static {p0, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRemoteContactSearchDisallowed(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 58
    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_21
    return-void
.end method
