.class public Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "InputMethodAndSubtypePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mFragment:Landroidx/preference/MzPreferenceFragmentCompat;

.field private mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

.field private mTargetImi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 4

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/MzPreferenceFragmentCompat;

    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mTargetImi:Ljava/lang/String;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->init(Landroidx/preference/MzPreferenceFragmentCompat;Ljava/lang/String;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public initialize(Landroidx/preference/MzPreferenceFragmentCompat;Ljava/lang/String;)V
    .registers 3

    .line 42
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/MzPreferenceFragmentCompat;

    .line 43
    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mTargetImi:Ljava/lang/String;

    .line 44
    new-instance p1, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    iget-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/MzPreferenceFragmentCompat;

    invoke-direct {p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;-><init>(Landroidx/preference/MzPreferenceFragmentCompat;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/MzPreferenceFragmentCompat;

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->refresh(Landroid/content/Context;Landroidx/preference/MzPreferenceFragmentCompat;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/MzPreferenceFragmentCompat;

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->save(Landroid/content/Context;Landroidx/preference/MzPreferenceFragmentCompat;)V

    return-void
.end method
