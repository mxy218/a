.class public Lcom/android/systemui/tuner/TunerFragment;
.super Landroidx/preference/PreferenceFragment;
.source "TunerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;
    }
.end annotation


# static fields
.field private static final DEBUG_ONLY:[Ljava/lang/String;

.field private static final KEY_DOZE:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "doze"

    .line 44
    sput-object v0, Lcom/android/systemui/tuner/TunerFragment;->KEY_DOZE:Ljava/lang/CharSequence;

    const-string v0, "nav_bar"

    const-string v1, "lockscreen"

    const-string v2, "picture_in_picture"

    .line 49
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/tuner/TunerFragment;->DEBUG_ONLY:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment;-><init>()V

    return-void
.end method

.method private alwaysOnAvailable()Z
    .registers 2

    .line 95
    new-instance v0, Landroid/hardware/display/AmbientDisplayConfiguration;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/hardware/display/AmbientDisplayConfiguration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnAvailable()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 66
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 61
    invoke-virtual {p0, p1}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    .line 115
    sget p0, Lcom/android/systemui/R$string;->remove_from_settings:I

    const/4 p2, 0x0

    const/4 v0, 0x2

    invoke-interface {p1, p2, v0, p2, p0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 5

    .line 72
    sget p1, Lcom/android/systemui/R$xml;->tuner_prefs:I

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/shared/plugins/PluginPrefs;->hasPlugins(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 74
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    const-string p2, "plugins"

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 76
    :cond_1c
    invoke-direct {p0}, Lcom/android/systemui/tuner/TunerFragment;->alwaysOnAvailable()Z

    move-result p1

    if-nez p1, :cond_2f

    .line 77
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/tuner/TunerFragment;->KEY_DOZE:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 79
    :cond_2f
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 p2, 0x0

    if-nez p1, :cond_4c

    move p1, p2

    .line 80
    :goto_35
    sget-object v0, Lcom/android/systemui/tuner/TunerFragment;->DEBUG_ONLY:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_4c

    .line 81
    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_49

    .line 82
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_49
    add-int/lit8 p1, p1, 0x1

    goto :goto_35

    .line 86
    :cond_4c
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "seen_tuner_warning"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_75

    .line 88
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string/jumbo p2, "tuner_warning"

    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_75

    .line 89
    new-instance p1, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;

    invoke-direct {p1}, Lcom/android/systemui/tuner/TunerFragment$TunerWarningFragment;-><init>()V

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_75
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5

    .line 120
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1a

    const v1, 0x102002c

    if-eq v0, v1, :cond_12

    .line 135
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 122
    :cond_12
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v2

    .line 125
    :cond_1a
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/tuner/TunerFragment$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunerFragment$1;-><init>(Lcom/android/systemui/tuner/TunerFragment;)V

    invoke-static {p1, v0}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V

    return v2
.end method

.method public onPause()V
    .registers 3

    .line 108
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 110
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0xe3

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 100
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 101
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->system_ui_tuner:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0xe3

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    return-void
.end method
