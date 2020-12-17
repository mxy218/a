.class public abstract Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;
.super Landroid/preference/PreferenceFragment;
.source "ObservablePreferenceFragment.java"


# instance fields
.field private final mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 31
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 33
    new-instance v0, Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-direct {v0}, Lcom/meizu/settings/core/lifecycle/Lifecycle;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method protected getLifecycle()Lcom/meizu/settings/core/lifecycle/Lifecycle;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    return-object p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 43
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 49
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, ""

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end method

.method public onDestroy()V
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onDestroy()V

    .line 102
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 122
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 124
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_d
    return v0
.end method

.method public onPause()V
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onPause()V

    .line 95
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 116
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onResume()V

    .line 88
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    .line 66
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 67
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onStart()V

    .line 74
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onStop()V

    .line 81
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    return-void
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 60
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    return-void
.end method
