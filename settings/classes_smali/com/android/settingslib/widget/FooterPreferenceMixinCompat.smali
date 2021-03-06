.class public Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;
.super Ljava/lang/Object;
.source "FooterPreferenceMixinCompat.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;


# instance fields
.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

.field private final mFragment:Landroidx/preference/MzPreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/MzPreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->mFragment:Landroidx/preference/MzPreferenceFragmentCompat;

    .line 36
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private getPrefContext()Landroid/content/Context;
    .registers 1

    .line 66
    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->mFragment:Landroidx/preference/MzPreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->mFragment:Landroidx/preference/MzPreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/MzPreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v1, :cond_f

    if-eqz v0, :cond_f

    .line 52
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 54
    :cond_f
    new-instance v1, Lcom/android/settingslib/widget/FooterPreference;

    invoke-direct {p0}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v0, :cond_21

    .line 57
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 59
    :cond_21
    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    return-object p0
.end method

.method public hasFooter()Z
    .registers 1

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .registers 2

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz p0, :cond_7

    .line 42
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_7
    return-void
.end method
