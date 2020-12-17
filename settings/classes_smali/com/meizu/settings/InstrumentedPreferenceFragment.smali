.class public abstract Lcom/meizu/settings/InstrumentedPreferenceFragment;
.super Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;
.source "InstrumentedPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getMetricsCategory()I
.end method

.method public onPause()V
    .registers 2

    .line 52
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onPause()V

    .line 53
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 46
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onResume()V

    .line 47
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    return-void
.end method
