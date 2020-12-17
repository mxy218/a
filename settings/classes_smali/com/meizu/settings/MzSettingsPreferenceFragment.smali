.class public Lcom/meizu/settings/MzSettingsPreferenceFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "MzSettingsPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public startFragment(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)Z
    .registers 16

    .line 16
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    .line 17
    instance-of v0, p0, Lcom/android/settings/SettingsActivity;

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    .line 18
    move-object v2, p0

    check-cast v2, Lcom/android/settings/SettingsActivity;

    const/4 v6, -0x1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p5

    move-object v7, p3

    move-object v8, p1

    move v9, p4

    .line 19
    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Landroid/app/Fragment;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v1

    .line 21
    :cond_17
    instance-of v0, p0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_28

    .line 22
    move-object v2, p0

    check-cast v2, Landroid/preference/PreferenceActivity;

    const/4 v5, -0x1

    move-object v3, p2

    move-object v4, p5

    move-object v6, p3

    move-object v7, p1

    move v8, p4

    .line 23
    invoke-virtual/range {v2 .. v8}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    return v1

    :cond_28
    const/4 p0, 0x0

    return p0
.end method
