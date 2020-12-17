.class public Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;
.super Landroidx/preference/PreferenceFragment;
.source "TunerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/TunerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubSettingsFragment"
.end annotation


# instance fields
.field private mParentScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 124
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4

    .line 130
    invoke-virtual {p0}, Landroid/app/Fragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceFragment;

    .line 131
    invoke-virtual {p1}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroidx/preference/PreferenceScreen;

    .line 133
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p1

    .line 134
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 133
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 135
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V

    .line 137
    :goto_25
    iget-object p2, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {p2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result p2

    if-lez p2, :cond_3d

    .line 138
    iget-object p2, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object p2

    .line 139
    iget-object v0, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 140
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_25

    :cond_3d
    return-void
.end method

.method public onDestroy()V
    .registers 4

    .line 146
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 148
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 149
    :goto_7
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-lez v1, :cond_1b

    const/4 v1, 0x0

    .line 150
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 152
    iget-object v2, p0, Lcom/android/systemui/tuner/TunerActivity$SubSettingsFragment;->mParentScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_7

    :cond_1b
    return-void
.end method
