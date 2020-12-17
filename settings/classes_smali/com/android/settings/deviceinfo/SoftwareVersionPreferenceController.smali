.class public Lcom/android/settings/deviceinfo/SoftwareVersionPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SoftwareVersionPreferenceController.java"


# static fields
.field private static final PREF_KEY:Ljava/lang/String; = "software_version"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string/jumbo v0, "software_version"

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "software_version"

    .line 49
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/SoftwareVersionPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    .line 51
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/Utils;->isSupportCTPA(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x0

    goto :goto_b

    :cond_a
    const/4 p0, 0x3

    :goto_b
    return p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "software_version"

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1206d0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "ext_meta_software_version"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->getString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1a

    .line 58
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_1b

    :cond_1a
    move-object p0, v0

    :goto_1b
    return-object p0
.end method
