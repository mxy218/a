.class public Lcom/meizu/settings/core/lifecycle/ObservableDialogFragment;
.super Landroid/app/DialogFragment;
.source "ObservableDialogFragment.java"


# instance fields
.field protected final mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 29
    new-instance v0, Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-direct {v0}, Lcom/meizu/settings/core/lifecycle/Lifecycle;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .registers 2

    .line 33
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onAttach(Landroid/content/Context;)V

    .line 34
    iget-object p0, p0, Lcom/meizu/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    .line 69
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 70
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onDestroy()V

    .line 64
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 83
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    :cond_d
    return v0
.end method

.method public onPause()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onPause()V

    .line 52
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 3

    .line 75
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0, p1}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 76
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onResume()V

    .line 46
    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onStart()V

    .line 40
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/meizu/settings/core/lifecycle/ObservableDialogFragment;->mLifecycle:Lcom/meizu/settings/core/lifecycle/Lifecycle;

    invoke-virtual {v0}, Lcom/meizu/settings/core/lifecycle/Lifecycle;->onStop()V

    .line 58
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method
