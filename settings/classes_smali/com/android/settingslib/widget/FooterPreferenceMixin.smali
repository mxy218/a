.class public Lcom/android/settingslib/widget/FooterPreferenceMixin;
.super Ljava/lang/Object;
.source "FooterPreferenceMixin.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/SetPreferenceScreen;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;


# virtual methods
.method public setPreferenceScreen(Landroidx/preference/PreferenceScreen;)V
    .registers 2

    .line 46
    iget-object p0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixin;->mFooterPreference:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz p0, :cond_7

    .line 47
    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :cond_7
    return-void
.end method
